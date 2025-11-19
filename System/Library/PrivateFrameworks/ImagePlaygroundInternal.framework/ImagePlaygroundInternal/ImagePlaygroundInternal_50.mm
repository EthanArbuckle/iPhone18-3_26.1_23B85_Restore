unint64_t sub_1D27EA0AC()
{
  result = qword_1EC6E2628;
  if (!qword_1EC6E2628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2618);
    sub_1D22BB9D8(&qword_1EC6E2630, &qword_1EC6E2638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2628);
  }

  return result;
}

uint64_t sub_1D27EA1C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_55Tm()
{
  v1 = type metadata accessor for OBKCarouselView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(*(type metadata accessor for CarouselFace() - 8) + 80);
  v5 = v2 + v3 + v4;
  v6 = v0 + v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E25E0);
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E25E8);

  v8 = v1[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  sub_1D22EE66C(*(v6 + v1[8]), *(v6 + v1[8] + 8));

  v10 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D2874438();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  v12 = v5 & ~v4;
  v13 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1D2875E18();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v6 + v13, 1, v14))
    {
      (*(v15 + 8))(v6 + v13, v14);
    }
  }

  else
  {
  }

  v16 = v0 + v12;

  if (*(v0 + v12 + 32))
  {
  }

  v17 = v16 + *(type metadata accessor for PhotosPersonAsset() + 20);

  v18 = (v17 + *(type metadata accessor for PhotosPersonImage() + 24));

  v19 = type metadata accessor for PlaygroundImage();
  v20 = v19[8];
  v21 = sub_1D2871818();
  (*(*(v21 - 8) + 8))(v18 + v20, v21);
  v22 = (v18 + v19[10]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_1D22D6D60(*v22, v23);
  }

  v24 = v19[11];
  v25 = sub_1D2873AA8();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v18 + v24, 1, v25))
  {
    (*(v26 + 8))(v18 + v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_1D27EA728(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for OBKCarouselView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for CarouselFace() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

uint64_t sub_1D27EA808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D27EA850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D27EA8B0()
{
  v2 = *(type metadata accessor for OBKCarouselView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for CarouselFace() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1D22BC8FC;

  return sub_1D27E8F40(v7, v8, v0 + v3, v0 + v6);
}

unint64_t sub_1D27EAA18()
{
  result = qword_1EC6E2660;
  if (!qword_1EC6E2660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E25F0);
    sub_1D27EAAFC(&qword_1EC6E2668, &qword_1EC6E25B0, &unk_1D28A8268, sub_1D27EAB80);
    sub_1D22BB9D8(&qword_1EC6E2680, &qword_1EC6E2688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2660);
  }

  return result;
}

uint64_t sub_1D27EAAFC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D27EABB0()
{
  result = qword_1EC6E2678;
  if (!qword_1EC6E2678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E25A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2568);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2550);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2548);
    sub_1D2876288();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2538);
    sub_1D22BB9D8(&qword_1EC6E25D0, &qword_1EC6E2538);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D3A0, &qword_1EC6DA6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2678);
  }

  return result;
}

uint64_t sub_1D27EAFE0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_1D2879368();
LABEL_9:
    result = sub_1D28791C8();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

void *sub_1D27EB07C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = swift_allocObject();
    v3[3] = v1;
    v3[4] = 0;
    v3[2] = v2;
    v4 = v2;
  }

  else
  {
    v3 = 0;
  }

  sub_1D2870F68();
  return v3;
}

void *sub_1D27EB114()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 16);
    type metadata accessor for DeleteAssetOperation();
    v3 = swift_allocObject();
    v3[2] = v2;
    v3[3] = v0;
    v3[4] = &off_1EEC2D748;
    v3[5] = v1;
    v4 = v2;
    sub_1D2870F78();
  }

  else
  {
    v3 = 0;
  }

  sub_1D2870F68();
  return v3;
}

uint64_t sub_1D27EB19C()
{
  v1[7] = v0;
  v2 = sub_1D2871818();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_1D2873CB8();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  sub_1D2878568();
  v1[14] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v1[15] = v5;
  v1[16] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D27EB2EC, v5, v4);
}

uint64_t sub_1D27EB2EC()
{
  v1 = *(v0[7] + 24);
  v0[17] = v1;
  if (v1)
  {
    v0[5] = MEMORY[0x1E69E7CC0];
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      v8 = sub_1D2879368();
      sub_1D27EAFE0(v8);
      v3 = sub_1D2879368();
      v0[18] = v3;
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1D27EAFE0(*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v3 = *(v2 + 16);
      v0[18] = v3;
      if (v3)
      {
LABEL_4:
        if (v3 >= 1)
        {
          v0[19] = *(v0[7] + 16);
          v0[20] = 0;
          v4 = v0[17];
          if ((v4 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x1D38A1C30](0);
          }

          else
          {
            v5 = *(v4 + 32);
            sub_1D2870F78();
          }

          v0[21] = v5;
          v6 = swift_task_alloc();
          v0[22] = v6;
          *v6 = v0;
          v6[1] = sub_1D27EB4DC;

          return sub_1D23E2FDC(v5);
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    v3 = v0[5];
    if (!(v3 >> 62))
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_16:

        goto LABEL_17;
      }

LABEL_15:
      *(v0[7] + 32) = v3;
      goto LABEL_16;
    }

LABEL_21:
    v10 = v3;
    v11 = sub_1D2879368();
    v3 = v10;
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D27EB4DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 128);
  v6 = *(v3 + 120);
  if (v1)
  {
    v7 = sub_1D27EB818;
  }

  else
  {
    v7 = sub_1D27EB620;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D27EB620()
{
  v1 = sub_1D2870F78();
  MEMORY[0x1D38A0E30](v1);
  if (*((v0[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();

  v2 = v0[20] + 1;
  if (v2 == v0[18])
  {

    v3 = v0[5];
    if (v3 >> 62)
    {
      v9 = v0[5];
      v10 = sub_1D2879368();
      v3 = v9;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:

      v4 = v0[1];

      return v4();
    }

    *(v0[7] + 32) = v3;
    goto LABEL_7;
  }

  v0[20] = v2;
  v6 = v0[17];
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1D38A1C30]();
  }

  else
  {
    v7 = *(v6 + 8 * v2 + 32);
    sub_1D2870F78();
  }

  v0[21] = v7;
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_1D27EB4DC;

  return sub_1D23E2FDC(v7);
}

uint64_t sub_1D27EB818()
{
  v35 = v0;
  v1 = *(v0 + 192);
  sub_1D2872658();
  sub_1D2870F78();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v30 = *(v0 + 192);
    v5 = *(v0 + 168);
    v31 = *(v0 + 96);
    v6 = *(v0 + 80);
    v32 = *(v0 + 88);
    v33 = *(v0 + 104);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315394;
    (*(v8 + 16))(v6, v5 + *(*v5 + 160), v7);
    sub_1D2407368();
    v11 = sub_1D28795C8();
    v13 = v12;
    (*(v8 + 8))(v6, v7);
    v14 = sub_1D23D7C84(v11, v13, &v34);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v15 = sub_1D2879748();
    v17 = sub_1D23D7C84(v15, v16, &v34);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to duplicate item %s with error: %s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 160) + 1;
  if (v21 == *(v0 + 144))
  {

    v22 = *(v0 + 40);
    if (v22 >> 62)
    {
      v28 = *(v0 + 40);
      v29 = sub_1D2879368();
      v22 = v28;
      if (!v29)
      {
        goto LABEL_8;
      }
    }

    else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:

      v23 = *(v0 + 8);

      return v23();
    }

    *(*(v0 + 56) + 32) = v22;
    goto LABEL_8;
  }

  *(v0 + 160) = v21;
  v25 = *(v0 + 136);
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1D38A1C30]();
  }

  else
  {
    v26 = *(v25 + 8 * v21 + 32);
    sub_1D2870F78();
  }

  *(v0 + 168) = v26;
  v27 = swift_task_alloc();
  *(v0 + 176) = v27;
  *v27 = v0;
  v27[1] = sub_1D27EB4DC;

  return sub_1D23E2FDC(v26);
}

uint64_t sub_1D27EBBF8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D27EBC64()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D27EBDB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BC8FC;

  return sub_1D27EB19C();
}

uint64_t sub_1D27EBE8C()
{
  v47 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v48 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C8);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_actionItem;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v24, v5, &qword_1EC6DA1C0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D22BD238(v5, &qword_1EC6DA1C0);
    return 0;
  }

  else
  {
    sub_1D27ED4F8(v5, v23);
    v46 = v20;
    sub_1D22BD1D0(v23, v20, &qword_1EC6DA1C8);

    sub_1D22BD1D0(v23, v17, &qword_1EC6DA1C8);
    v45 = v17[v6[12]];

    sub_1D22BD1D0(v23, v14, &qword_1EC6DA1C8);
    v44 = *&v14[v6[16]];

    v26 = v49;
    sub_1D22BD1D0(v23, v49, &qword_1EC6DA1C8);

    v43 = *(v26 + v6[20]);

    sub_1D27ED4F8(v23, v9);

    v40 = *&v9[v6[24]];
    v27 = swift_allocObject();
    v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_actionItem;
    v47 = v9;
    v29 = *(v7 + 56);
    v29(v27 + OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_actionItem, 1, 1, v6);
    v29(v27 + OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_undoActionItem, 1, 1, v6);
    *(v27 + OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_supportsUndoing) = 1;
    v41 = v14;
    v42 = v17;
    v30 = v6[12];
    v31 = v6[16];
    v32 = v48;
    v38 = v6[20];
    v39 = v31;
    v33 = v6[24];
    v34 = sub_1D2872438();
    v35 = *(v34 - 8);
    (*(v35 + 32))(v32, v46, v34);
    *(v32 + v30) = v45;
    v36 = v38;
    *(v32 + v39) = v44;
    *(v32 + v36) = v43;
    *(v32 + v33) = v40;
    v29(v32, 0, 1, v6);
    swift_beginAccess();
    sub_1D27ED5C0(v32, v27 + v28);
    swift_endAccess();
    v37 = *(v35 + 8);
    v37(v47, v34);
    v37(v49, v34);
    v37(v41, v34);
    v37(v42, v34);
    return v27;
  }
}

uint64_t sub_1D27EC41C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C8);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_actionItem;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v17, v3, &qword_1EC6DA1C0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1D22BD238(v3, &qword_1EC6DA1C0);
    return 0;
  }

  else
  {
    sub_1D27ED4F8(v3, v16);
    sub_1D22BD1D0(v16, v13, &qword_1EC6DA1C8);
    v19 = v13[v4[12]];

    sub_1D22BD1D0(v16, v10, &qword_1EC6DA1C8);

    v20 = *&v10[v4[20]];

    sub_1D27ED4F8(v16, v7);

    v21 = *&v7[v4[24]];
    type metadata accessor for ResetContextOperation();
    v22 = swift_allocObject();
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 0u;
    v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal21ResetContextOperation_undoRecipe;
    v24 = sub_1D2872438();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v22 + v23, 1, 1, v24);
    *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal21ResetContextOperation_supportsUndoing) = 1;
    v26 = *(v22 + 16);
    v27 = *(v22 + 24);
    *(v22 + 16) = v19;
    *(v22 + 24) = v20;
    *(v22 + 32) = v21;
    sub_1D234019C(v26, v27);
    v28 = *(v25 + 8);
    v28(v7, v24);
    v28(v10, v24);
    v28(v13, v24);
    return v22;
  }
}

uint64_t sub_1D27EC7D0()
{
  v1[15] = v0;
  v2 = sub_1D2872008();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C0);
  v1[19] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C8);
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = sub_1D2878568();
  v1[25] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v1[26] = v5;
  v1[27] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D27EC974, v5, v4);
}

uint64_t sub_1D27EC974()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 120);
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_actionItem;
  swift_beginAccess();
  sub_1D22BD1D0(v4 + v5, v3, &qword_1EC6DA1C0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 152);

    sub_1D22BD238(v6, &qword_1EC6DA1C0);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 184);
    v10 = *(v0 + 176);
    v11 = *(v0 + 160);
    sub_1D27ED4F8(*(v0 + 152), v9);
    *(v0 + 224) = *(v9 + v11[24]);
    *(v0 + 296) = *(v9 + v11[12]);
    *(v0 + 232) = *(v9 + v11[20]);
    sub_1D22BD1D0(v9, v10, &qword_1EC6DA1C8);
    v12 = (v10 + v11[16]);
    *(v0 + 240) = *v12;
    *(v0 + 248) = v12[1];

    *(v0 + 256) = sub_1D2878558();
    v14 = sub_1D28784F8();
    *(v0 + 264) = v14;
    *(v0 + 272) = v13;

    return MEMORY[0x1EEE6DFA0](sub_1D27ECB7C, v14, v13);
  }
}

uint64_t sub_1D27ECB7C()
{
  v1 = *(v0 + 296);
  if ((v1 - 1) >= 4)
  {
    if ((v1 - 5) >= 2)
    {
      if (*(v0 + 296))
      {
        MEMORY[0x1D389AA70]();
      }

      else
      {
        sub_1D2871FD8();
      }
    }

    else
    {
      sub_1D2871FC8();
    }
  }

  else
  {
    sub_1D24DE0C4();
  }

  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  *(v0 + 80) = v4;
  *(v0 + 88) = sub_1D27ED568();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(v3 + 16))(boxed_opaque_existential_1, v2, v4);
  sub_1D267A600(v0 + 56, 1, v0 + 16);
  sub_1D22BD238(v0 + 16, &unk_1EC6E1D30);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  v6 = swift_task_alloc();
  *(v0 + 280) = v6;
  *v6 = v0;
  v6[1] = sub_1D27ECCD8;
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v9 = *(v0 + 232);
  v10 = *(v0 + 184);

  return sub_1D2655328(v10, v9, v7, v8, 0);
}

uint64_t sub_1D27ECCD8()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_1D27ECF98;
  }

  else
  {
    v5 = sub_1D27ECE14;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D27ECE14()
{
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];

  (*(v3 + 8))(v2, v4);

  v5 = sub_1D2872438();
  (*(*(v5 - 8) + 8))(v1, v5);
  v6 = v0[26];
  v7 = v0[27];

  return MEMORY[0x1EEE6DFA0](sub_1D27ECEEC, v6, v7);
}

uint64_t sub_1D27ECEEC()
{
  v1 = *(v0 + 184);

  sub_1D22BD238(v1, &qword_1EC6DA1C8);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D27ECF98()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);
  v4 = v0[26];
  v5 = v0[27];

  return MEMORY[0x1EEE6DFA0](sub_1D27ED024, v4, v5);
}

uint64_t sub_1D27ED024()
{
  v2 = v0[22];
  v1 = v0[23];

  v3 = sub_1D2872438();
  (*(*(v3 - 8) + 8))(v2, v3);
  sub_1D22BD238(v1, &qword_1EC6DA1C8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D27ED11C()
{
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_actionItem, &qword_1EC6DA1C0);
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_undoActionItem, &qword_1EC6DA1C0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LoadRecipeInContextOperation()
{
  result = qword_1EC6E2690;
  if (!qword_1EC6E2690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D27ED214()
{
  sub_1D27ED2B0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D27ED2B0()
{
  if (!qword_1EC6E26A0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA1C8);
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, qword_1EC6E26A0);
    }
  }
}

uint64_t sub_1D27ED314()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D27ED46C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BC8FC;

  return sub_1D27EC7D0();
}

uint64_t sub_1D27ED4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D27ED568()
{
  result = qword_1ED8A6C20;
  if (!qword_1ED8A6C20)
  {
    sub_1D2872008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6C20);
  }

  return result;
}

uint64_t sub_1D27ED5C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27ED680(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_1D2877128();
  *a3 = result;
  return result;
}

void *sub_1D27ED6D8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_1D27ED6E8()
{
  result = qword_1ED8A3C10;
  if (!qword_1ED8A3C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A3C10);
  }

  return result;
}

uint64_t sub_1D27ED790()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D27ED7E8(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27EDD94();
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D27ED8C8()
{
  if (sub_1D27D8C8C())
  {
    v3[3] = &type metadata for NotesFeatures;
    v3[4] = sub_1D22D7288();
    LOBYTE(v3[0]) = 0;
    v1 = sub_1D2871AA8();
    __swift_destroy_boxed_opaque_existential_0(v3);
    if ((v1 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    swift_getKeyPath();
    v3[0] = v0;
    sub_1D27EDD94();
    sub_1D28719E8();

    return *(v0 + 16);
  }

  if (qword_1ED8A4928 == -1)
  {
    if (sub_1D23CCDF0())
    {
      goto LABEL_7;
    }
  }

  else
  {
    swift_once();
    if (sub_1D23CCDF0())
    {
      goto LABEL_7;
    }
  }

  if (sub_1D23CD0E4())
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1D27ED9C4()
{
  swift_getKeyPath();
  sub_1D27EDD94();
  sub_1D28719E8();

  return *(v0 + 17);
}

uint64_t sub_1D27EDA34(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27EDD94();
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D27EDB14()
{
  swift_getKeyPath();
  sub_1D27EDD94();
  sub_1D28719E8();

  return *(v0 + 16);
}

uint64_t sub_1D27EDB8C()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal23PersonalizationFeatures___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonalizationFeatures()
{
  result = qword_1ED8A04E0;
  if (!qword_1ED8A04E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D27EDC7C()
{
  result = sub_1D2871A28();
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

uint64_t sub_1D27EDD18@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  sub_1D2871DF8();
  *(v2 + 16) = sub_1D2871DE8() & 1;
  *(v2 + 17) = 1;
  sub_1D2871A18();

  *a1 = v2;
  return result;
}

unint64_t sub_1D27EDD94()
{
  result = qword_1ED8A04F8;
  if (!qword_1ED8A04F8)
  {
    type metadata accessor for PersonalizationFeatures();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A04F8);
  }

  return result;
}

const char *sub_1D27EDE00()
{
  if (*v0)
  {
    return "MagicPaperRewrite";
  }

  else
  {
    return "MagicPaperPersonalization";
  }
}

unint64_t sub_1D27EDE44()
{
  result = qword_1EC6E2728;
  if (!qword_1EC6E2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2728);
  }

  return result;
}

void *sub_1D27EDE98()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = swift_allocObject();
    v3[4] = 0;
    v3[5] = v1;
    v3[2] = v2;
    v3[3] = 0;
    v4 = v2;
  }

  else
  {
    v3 = 0;
  }

  sub_1D2870F68();
  return v3;
}

uint64_t sub_1D27EDF30()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D27EDFA0()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(v1 + 48))(ObjectType, v1);
}

uint64_t sub_1D27EE00C()
{
  v1[2] = v0;
  sub_1D2878568();
  v1[3] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D27EE0A4, v3, v2);
}

uint64_t sub_1D27EE0A4()
{
  v1 = v0[2];
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1D27EE19C;

    return sub_1D27EE2BC(v2, v3);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D27EE19C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D25F6DE4, v3, v2);
}

uint64_t sub_1D27EE2BC(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v2[10] = a1;
  v6 = sub_1D2873CB8();
  v2[11] = v6;
  v2[12] = *(v6 - 8);
  v2[13] = swift_task_alloc();
  v2[5] = ObjectType;
  v2[6] = &off_1EEC2A978;
  v2[2] = a2;
  sub_1D2878568();
  v7 = a2;
  v2[14] = sub_1D2878558();
  v9 = sub_1D28784F8();
  v2[15] = v9;
  v2[16] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D27EE3E0, v9, v8);
}

uint64_t sub_1D27EE3E0()
{
  v21 = v0;
  v1 = v0[10];
  v20 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_24:
    v3 = sub_1D2879368();
    v4 = v0[10];
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v1;
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v19 = v8;
  v0[17] = v8;
  while (v3 != v5)
  {
    if (v6)
    {
      v9 = MEMORY[0x1D38A1C30](v5, v0[10]);
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_23;
      }

      v9 = *(v7 + 8 * v5);
      sub_1D2870F78();
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    swift_beginAccess();
    v1 = *(v9 + 80);
    v11 = v1;

    ++v5;
    if (v1)
    {
      MEMORY[0x1D38A0E30](v12);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D2878428();
      }

      v1 = &v20;
      sub_1D2878488();
      v8 = v20;
      v5 = v10;
      goto LABEL_4;
    }
  }

  if (v19 >> 62)
  {
    if (sub_1D2879368())
    {
      goto LABEL_19;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    v13 = v0[5];
    v14 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
    v18 = (off_1EEC2A9B8 + *off_1EEC2A9B8);
    v15 = swift_task_alloc();
    v0[18] = v15;
    *v15 = v0;
    v15[1] = sub_1D27EE6F0;

    return v18(v19, v13, v14);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D27EE6F0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1D27EE8BC;
  }

  else
  {
    v5 = sub_1D27EE848;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D27EE848()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D27EE8BC()
{
  v1 = v0[19];

  sub_1D28724F8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to delete assets with error: %@", v6, 0xCu);
    sub_1D22BF6D0(v7);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];

  (*(v11 + 8))(v10, v12);
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  v13 = v0[19];
  sub_1D25428EC(v13);

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D27EEA80()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1D2877E98();
  if (*(v2 + 16))
  {
    sub_1D25D0410(0xD00000000000001BLL, 0x80000001D28C3DA0);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id sub_1D27EECBC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = type metadata accessor for FrameworkViewRepresentable.NativeView();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView_didCallBack] = 0;
  v6 = &v5[OBJC_IVAR____TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView_didMoveToWindowCallback];
  *v6 = sub_1D2758C0C;
  v6[1] = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  sub_1D2870F78();
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 setHidden_];
  return v7;
}

uint64_t sub_1D27EED8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D27EEED4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1D27EEDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D27EEED4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1D27EEE54()
{
  sub_1D27EEED4();
  sub_1D2875A98();
  __break(1u);
}

unint64_t sub_1D27EEE80()
{
  result = qword_1ED89F858;
  if (!qword_1ED89F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89F858);
  }

  return result;
}

unint64_t sub_1D27EEED4()
{
  result = qword_1ED89F860[0];
  if (!qword_1ED89F860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED89F860);
  }

  return result;
}

uint64_t sub_1D27EEF28()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D27EF008@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  type metadata accessor for LRUNode();
  sub_1D2877ED8();
  swift_endAccess();
  if (v9)
  {
    sub_1D27190D8(v9);
    v5 = *(*v9 + 112);
    swift_beginAccess();
    v6 = *(v4 - 8);
    (*(v6 + 16))(a1, &v9[v5], v4);

    v7 = 0;
  }

  else
  {
    v6 = *(v4 - 8);
    v7 = 1;
  }

  return (*(v6 + 56))(a1, v7, 1, v4);
}

uint64_t sub_1D27EF1BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = sub_1D2878F18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(v6 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  (*(v8 + 16))(v10, a1, v7, v13);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    v16 = *(v8 + 8);
    v16(v10, v7);
    sub_1D27EFE48(a2);
    (*(*(*(v5 + 80) - 8) + 8))(a2);
    return (v16)(a1, v7);
  }

  else
  {
    (*(v11 + 32))(v15, v10, v6);
    sub_1D27EF798(a2, v15);
    (*(*(*(v5 + 80) - 8) + 8))(a2);
    (*(v8 + 8))(a1, v7);
    return (*(v11 + 8))(v15, v6);
  }
}

uint64_t *sub_1D27EF4AC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v2 + *(*v2 + 120)) = 0;
  *(v2 + *(*v2 + 128)) = 0;
  (*(*(*(v4 + 80) - 8) + 32))(v2 + *(*v2 + 104), a1);
  (*(*(*(v4 + 88) - 8) + 32))(v2 + *(*v2 + 112), a2);
  return v2;
}

uint64_t *sub_1D27EF5BC()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 112));

  return v0;
}

uint64_t sub_1D27EF6C0()
{
  sub_1D27EF5BC();

  return swift_deallocClassInstance();
}

uint64_t sub_1D27EF798(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v38 - v7;
  v9 = *(v4 + 80);
  v45 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v38 - v11;
  swift_beginAccess();
  v13 = type metadata accessor for LRUNode();
  sub_1D2877ED8();
  v14 = v48;
  if (v48)
  {
    swift_endAccess();
    v15 = *(*v14 + 112);
    swift_beginAccess();
    (*(v6 + 24))(v14 + v15, v46, v5);
    swift_endAccess();
    v16 = v14;
LABEL_3:
    sub_1D27190D8(v16);
  }

  v41 = v8;
  v42 = v12;
  v43 = a1;
  v44 = v6;
  swift_endAccess();
  sub_1D2870F68();
  v17 = sub_1D2877EB8();

  if (v17 >= v2[5])
  {
    v18 = v2[3];
    if (v18)
    {
      v19 = v2[6];
      v20 = v42;
      v21 = v45;
      v39 = v5;
      v38[1] = v13;
      if (v19)
      {
        v38[0] = v2[7];
        v22 = *v18;
        v40 = v18 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
        v23 = v5;
        v24 = *(v22 + 104);
        swift_beginAccess();
        (*(v45 + 16))(v20, v18 + v24, v9);
        v25 = *(*v18 + 112);
        swift_beginAccess();
        v26 = v44;
        v27 = v41;
        (*(v44 + 16))(v41, v18 + v25, v23);
        sub_1D2870F78();
        sub_1D22A58B8(v19);
        v19(v20, v27);
        sub_1D22A576C(v19);
        v21 = v45;
        (*(v26 + 8))(v27, v39);
        (*(v21 + 8))(v20, v9);
      }

      else
      {
        v40 = v18 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
        sub_1D2870F78();
      }

      v34 = *(*v18 + 104);
      swift_beginAccess();
      v41 = *(v21 + 16);
      v41(v20, v18 + v34, v9);
      v47 = 0;
      swift_beginAccess();
      sub_1D2877EC8();
      sub_1D2877EE8();
      v35 = v20;
      v36 = v43;
      v41(v35, v43, v9);
      v47 = v18;
      sub_1D2870F78();
      sub_1D2877EE8();
      swift_endAccess();
      swift_beginAccess();
      (*(v21 + 24))(v18 + v34, v36, v9);
      swift_endAccess();
      v37 = *(*v18 + 112);
      swift_beginAccess();
      (*(v44 + 24))(v18 + v37, v46, v39);
      swift_endAccess();
      v16 = v18;
      goto LABEL_3;
    }
  }

  v28 = *(v45 + 16);
  v30 = v42;
  v29 = v43;
  v28(v42, v43, v9);
  v31 = v41;
  (*(v44 + 16))(v41, v46, v5);
  swift_allocObject();
  v32 = sub_1D27EF4AC(v30, v31);
  v28(v30, v29, v9);
  v48 = v32;
  swift_beginAccess();
  sub_1D2877EC8();
  swift_retain_n();
  sub_1D2877EE8();
  swift_endAccess();
  if (v2[3])
  {
    *(v32 + *(*v32 + 120)) = v2[4];
    sub_1D2870F78();

    *(v2[4] + *(*v2[4] + 128)) = v32;
  }

  else
  {

    v2[3] = v32;
  }

  sub_1D2870F78();

  v2[4] = v32;
}

uint64_t sub_1D27EFE48(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  swift_beginAccess();
  type metadata accessor for LRUNode();
  sub_1D2877ED8();
  v8 = v18;
  result = swift_endAccess();
  if (v8)
  {
    (*(v5 + 16))(v7, a1, v4);
    v18 = 0;
    swift_beginAccess();
    sub_1D2877EC8();
    sub_1D2877EE8();
    swift_endAccess();
    v10 = *v8;
    v11 = *(*v8 + 120);
    v12 = *(v8 + v11);
    if (v12)
    {
      *(v12 + *(*v12 + 128)) = *(v8 + *(*v8 + 128));
      sub_1D2870F78();
      sub_1D2870F78();

      v10 = *v8;
    }

    v13 = *(v10 + 128);
    v14 = *(v8 + v13);
    if (v14)
    {
      *(v14 + *(*v14 + 120)) = *(v8 + v11);
      sub_1D2870F78();
      sub_1D2870F78();
    }

    v15 = *(v2 + 24);
    if (v15 && v15 == v8)
    {
      *(v2 + 24) = *(v8 + v13);
      sub_1D2870F78();
    }

    v16 = *(v2 + 32);
    if (v16)
    {
      if (v16 == v8)
      {
        v17 = *(v8 + v11);
        sub_1D2870F78();

        *(v2 + 32) = v17;
      }
    }
  }

  return result;
}

uint64_t sub_1D27F0148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v8 = *(TupleTypeMetadata2 + 48);
    v9 = *(*v4 + 104);
    swift_beginAccess();
    (*(*(v5 - 8) + 16))(a2, v4 + v9, v5);
    v10 = *(*v4 + 112);
    swift_beginAccess();
    (*(*(v6 - 8) + 16))(a2 + v8, v4 + v10, v6);
    (*(*(TupleTypeMetadata2 - 8) + 56))(a2, 0, 1, TupleTypeMetadata2);
    *v2 = *(v4 + *(*v4 + 128));
    sub_1D2870F78();
  }

  else
  {
    v12 = swift_getTupleTypeMetadata2();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }
}

uint64_t sub_1D27F0344()
{

  sub_1D22A576C(*(v0 + 48));
  return v0;
}

uint64_t sub_1D27F037C()
{
  sub_1D27F0344();

  return swift_deallocClassInstance();
}

uint64_t sub_1D27F03E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D27F0140();

  *a1 = v2;
  return result;
}

uint64_t sub_1D27F0424()
{
  v0 = sub_1D27F048C();

  return v0;
}

uint64_t sub_1D27F0490()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D27F04E8()
{
  v1 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D2878028();
  MEMORY[0x1EEE9AC00](v3 - 8);
  swift_beginAccess();
  sub_1D27F0CC8(v0 + 16, &v9);
  if (v10)
  {

    sub_1D22D79FC(&v9, v11);
    sub_1D2878018();
    sub_1D2878008();
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v5 + 24))(v4, v5);
    sub_1D2877FF8();

    sub_1D2878008();
    sub_1D2878038();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v6 = qword_1ED8B0058;
    sub_1D28718C8();
    v7 = sub_1D28780E8();
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_1D27F0D38(&v9);
    return 0;
  }

  return v7;
}

uint64_t sub_1D27F074C()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1D27F0CC8((v0 + 2), &v12);
  if (v13)
  {
    v2 = v15;
    sub_1D22D79FC(&v12, v16);
    sub_1D22D7044(v16, &v12);
    v3 = v13;
    v4 = v14;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(&v12, v13);
    v6 = MEMORY[0x1EEE9AC00](v5);
    v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v8, v6);
    v10 = sub_1D27F0DA0(v8, v2, v1, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v16);
    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {
    sub_1D27F0D38(&v12);
    return 0;
  }

  return v10;
}

uint64_t sub_1D27F08D8()
{
  swift_beginAccess();
  sub_1D27F0CC8(v0 + 16, &v12);
  if (v13)
  {
    v1 = v15;
    sub_1D22D79FC(&v12, v16);
    v2 = type metadata accessor for AddImageConditioningRepresentationOperation();
    sub_1D22D7044(v16, &v12);
    v3 = v13;
    v4 = v14;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(&v12, v13);
    v6 = MEMORY[0x1EEE9AC00](v5);
    v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v8, v6);
    v10 = sub_1D27FDCE0(v8, v1, 0, v2, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v16);
    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {
    sub_1D27F0D38(&v12);
    return 0;
  }

  return v10;
}

uint64_t sub_1D27F0A4C()
{
  *(v1 + 128) = v0;
  sub_1D2878568();
  *(v1 + 136) = sub_1D2878558();
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D27F0AE4, v3, v2);
}

uint64_t sub_1D27F0AE4()
{
  v1 = *(v0 + 128);

  swift_beginAccess();
  sub_1D27F0CC8(v1 + 16, v0 + 16);
  if (*(v0 + 40))
  {
    v2 = *(v0 + 56);
    sub_1D22D79FC((v0 + 16), v0 + 64);
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 64), v3);
    sub_1D2685CE8(v5, v2, v3, v4);

    __swift_destroy_boxed_opaque_existential_0(v0 + 64);
  }

  else
  {
    sub_1D27F0D38(v0 + 16);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D27F0BC4()
{
  sub_1D27F0D38(v0 + 16);
  sub_1D27F0D38(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1D27F0C3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BC8FC;

  return sub_1D27F0A4C();
}

uint64_t sub_1D27F0CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27F0D38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D27F0DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v9 = swift_allocObject();
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 112) = 1;
  sub_1D22D79FC(&v13, v11);
  v12 = a2;
  swift_beginAccess();
  sub_1D22D3E98(v11, v9 + 16);
  swift_endAccess();
  return v9;
}

uint64_t sub_1D27F11FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v45 = a2;
  v3 = sub_1D28714E8();
  v41 = v3;
  v37 = *(v3 - 8);
  v4 = v37;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - v8;
  v36 = v32 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E27C0);
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = v32 - v10;
  sub_1D27F1A1C(v9);
  v11 = *(v2 + 32);
  v40 = *(v2 + 24);
  v39 = v11;
  v48 = v2;
  v47 = v2;
  v12 = *(v4 + 16);
  v33 = *(v2 + 40);
  v12(v6, v9, v3);
  v13 = sub_1D2876688();
  v15 = v14;
  v17 = v16;
  v32[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E27C8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC628);
  v35 = sub_1D22BB9D8(&qword_1ED89D438, &qword_1EC6E27C8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0);
  v21 = sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  v49 = v20;
  v50 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  LOBYTE(v20) = v33 & 1;
  v22 = v40;
  v23 = v39;
  sub_1D2876AE8();
  sub_1D22ED6E0(v13, v15, v17 & 1);

  (*(v37 + 8))(v36, v41);
  v57 = v22;
  v58 = v23;
  v59 = v20;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  MEMORY[0x1D389FF60](&v56, v24);
  v55 = v56;
  v25 = swift_allocObject();
  v26 = *(v2 + 48);
  v25[3] = *(v2 + 32);
  v25[4] = v26;
  v27 = *(v2 + 80);
  v25[5] = *(v2 + 64);
  v25[6] = v27;
  v28 = *(v2 + 16);
  v25[1] = *v2;
  v25[2] = v28;
  sub_1D27F218C(v2, &v49);
  v49 = v19;
  v50 = v34;
  v51 = MEMORY[0x1E6981148];
  v52 = v35;
  v53 = OpaqueTypeConformance2;
  v54 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  v29 = v43;
  v30 = v46;
  sub_1D2876F48();

  return (*(v44 + 8))(v30, v29);
}

uint64_t sub_1D27F172C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = sub_1D28750A8();
  v3 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D28714E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  sub_1D27F1A1C(v9);
  v14 = swift_allocObject();
  v15 = a1[3];
  v14[3] = a1[2];
  v14[4] = v15;
  v16 = a1[5];
  v14[5] = a1[4];
  v14[6] = v16;
  v17 = a1[1];
  v14[1] = *a1;
  v14[2] = v17;
  v21 = v9;
  sub_1D27F218C(a1, v22);
  sub_1D2877368();
  (*(v7 + 8))(v9, v6);
  sub_1D2875098();
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  sub_1D2876A28();
  (*(v3 + 8))(v5, v20);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1D27F1A1C@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v1 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D28714D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1D2878028();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1D2878018();
  sub_1D2878008();
  sub_1D2877FF8();
  sub_1D2878008();
  sub_1D2878038();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_1ED8B0060);
  (*(v3 + 16))(v5, v8, v2);
  sub_1D28718C8();
  return sub_1D2871508();
}

uint64_t sub_1D27F1C84(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  v2 = sub_1D2877318();
  return (*(a1 + 48))(v2);
}

uint64_t sub_1D27F1CEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D28714E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D27F1D80();
  result = sub_1D2876688();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1D27F1D80()
{
  v1 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D28714D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1D2878028();
  MEMORY[0x1EEE9AC00](v7 - 8);
  if (*(v0 + 16))
  {
    sub_1D2878018();
    sub_1D2878008();
    sub_1D2877FF8();
  }

  else
  {
    sub_1D2878018();
  }

  sub_1D2878008();
  sub_1D2877FF8();
  sub_1D2878008();
  sub_1D2878038();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_1ED8B0060);
  (*(v3 + 16))(v5, v8, v2);
  sub_1D28718C8();
  return sub_1D2871508();
}

_BYTE *sub_1D27F205C(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  if (*result == 1 && (*a2 & 1) == 0)
  {
    v10[5] = v3;
    v10[6] = v4;
    v8 = *(a3 + 80);
    v9 = v8;
    v10[0] = *(&v8 + 1);
    sub_1D27F21C4(v10, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
    sub_1D2877308();
    if (v7[0] == 1)
    {
      v8 = v9;
      v7[0] = 0;
      sub_1D2877318();
      return sub_1D27F2234(&v9);
    }

    else
    {
      v6 = sub_1D27F2234(&v9);
      return (*(a3 + 64))(v6);
    }
  }

  return result;
}

uint64_t sub_1D27F21C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E27D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27F2234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_39()
{

  return swift_deallocObject();
}

uint64_t sub_1D27F2330@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v88 = a2;
  v3 = sub_1D2874D98();
  v86 = *(v3 - 8);
  v87 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v85 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1D2875658();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2800);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v61 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2808);
  v65 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v61 = &v61 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2810);
  v69 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v61 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2818);
  v73 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v71 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2820);
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2828);
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v61 - v15;
  v17 = *(a1 + 8);
  *&v92 = *a1;
  v16 = v92;
  *(&v92 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2830);
  sub_1D2877328();
  v18 = v89;
  v19 = v90;
  swift_getKeyPath();
  v92 = v18;
  v93 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2838);
  sub_1D2877508();

  v66 = v16;
  v20 = v62;
  v64 = v17;
  sub_1D27F38FC();
  v21 = v63;
  v22 = v61;
  sub_1D2877A38();
  v23 = sub_1D2876338();
  v24 = v21 + *(v20 + 36);
  *v24 = v23;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 1;
  v92 = *(a1 + 16);
  LOBYTE(v93) = *(a1 + 32);
  v89 = *(a1 + 16);
  v67 = a1;
  LOBYTE(v90) = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC718);
  sub_1D28742C8();
  v25 = sub_1D27F3A64();
  sub_1D2876EB8();

  sub_1D27F3B1C(v21);
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v26 = qword_1ED8B0058;
  v27 = sub_1D2876668();
  v29 = v28;
  v31 = v30;
  *&v89 = v20;
  *(&v89 + 1) = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v68;
  v34 = v70;
  sub_1D28769F8();
  sub_1D22ED6E0(v27, v29, v31 & 1);

  (*(v65 + 8))(v22, v34);
  v35 = v75;
  v36 = v74;
  v37 = v76;
  (*(v75 + 104))(v74, *MEMORY[0x1E697C438], v76);
  *&v89 = v34;
  *(&v89 + 1) = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v71;
  v40 = v72;
  sub_1D2876D78();
  (*(v35 + 8))(v36, v37);
  v41 = (*(v69 + 8))(v33, v40);
  MEMORY[0x1EEE9AC00](v41);
  v42 = v67;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2858);
  *&v89 = v40;
  *(&v89 + 1) = v38;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_1D22BB9D8(&qword_1EC6E2860, &qword_1EC6E2858);
  v46 = v78;
  v47 = v79;
  sub_1D2876F08();
  (*(v73 + 8))(v39, v47);
  v48 = swift_allocObject();
  v49 = *(v42 + 16);
  *(v48 + 16) = *v42;
  *(v48 + 32) = v49;
  *(v48 + 48) = *(v42 + 32);
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D22BD1D0(&v92, &v89, &qword_1EC6DC718);
  v50 = v85;
  sub_1D2874D88();
  *&v89 = v47;
  *(&v89 + 1) = v43;
  v90 = v44;
  v91 = v45;
  swift_getOpaqueTypeConformance2();
  v51 = v77;
  v52 = v82;
  sub_1D2876F68();

  (*(v86 + 8))(v50, v87);
  (*(v81 + 8))(v46, v52);
  v54 = v83;
  v53 = v84;
  v55 = *(v83 + 16);
  v56 = v80;
  v55(v80, v51, v84);
  v57 = v88;
  v55(v88, v56, v53);
  v58 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2868) + 48)];
  *v58 = 0;
  v58[8] = 1;
  v59 = *(v54 + 8);
  v59(v51, v53);
  return (v59)(v56, v53);
}

uint64_t sub_1D27F2E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2870);
  MEMORY[0x1EEE9AC00](v21);
  v19 = &v17 - v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB5C0);
  v4 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v17 - v5;
  v7 = sub_1D2875C08();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC370);
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v17 - v9;
  sub_1D2875BC8();
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D30);
  sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30);
  sub_1D28745C8();
  sub_1D2875BD8();
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  sub_1D28745C8();
  v11 = *(v21 + 48);
  v13 = v18;
  v12 = v19;
  (*(v8 + 16))(v19, v10, v18);
  v14 = &v12[v11];
  v15 = v20;
  (*(v4 + 16))(v14, v6, v20);
  sub_1D28759C8();
  (*(v4 + 8))(v6, v15);
  return (*(v8 + 8))(v10, v13);
}

uint64_t sub_1D27F31B4(uint64_t a1)
{
  v2 = sub_1D2874288();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D2874268();
  v12 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  sub_1D2870F78();
  sub_1D22BD1D0(&v12, v9, &qword_1EC6E27F0);
  sub_1D22BD1D0(&v10, v9, &qword_1EC6DC718);
  return MEMORY[0x1D389FDF0](v4, sub_1D27F3C04, v5);
}

uint64_t sub_1D27F32E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = sub_1D2874288();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2875798();
  v12 = v11;
  v21 = v13;
  v22 = v14;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED8B0058;
  sub_1D2874278();
  v27 = *(a1 + 8);
  v25 = *(a1 + 16);
  v26 = *(a1 + 32);
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a1 + 32);
  (*(v7 + 16))(v5, v9, v6);
  v18 = (*(v7 + 56))(v5, 0, 1, v6);
  v20[1] = v20;
  MEMORY[0x1EEE9AC00](v18);
  v20[-6] = v10;
  v20[-5] = v12;
  LOBYTE(v20[-4]) = v21 & 1;
  v20[-3] = v22;
  v20[-2] = v15;
  sub_1D2870F78();
  sub_1D22BD1D0(&v27, v24, &qword_1EC6E27F0);
  sub_1D22BD1D0(&v25, v24, &qword_1EC6DC718);
  sub_1D2870F78();
  sub_1D2877358();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D27F35E0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2830);
  sub_1D2877308();
  sub_1D27F8EE0(a2);
}

uint64_t sub_1D27F3644()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E27D8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-v3];
  v5 = v0[1];
  v12 = *v0;
  v13 = v5;
  v14 = *(v0 + 32);
  v10 = &v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E27E0);
  sub_1D22BB9D8(&qword_1EC6E27E8, &qword_1EC6E27E0);
  sub_1D2874F78();
  v15 = *(&v12 + 1);
  v16 = v13;
  v17 = v14;
  v6 = swift_allocObject();
  v7 = v13;
  *(v6 + 16) = v12;
  *(v6 + 32) = v7;
  *(v6 + 48) = v14;
  sub_1D2870F78();
  sub_1D22BD1D0(&v15, v11, &qword_1EC6E27F0);
  sub_1D22BD1D0(&v16, v11, &qword_1EC6DC718);
  sub_1D22BB9D8(&qword_1EC6E27F8, &qword_1EC6E27D8);
  sub_1D2876908();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D27F38FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2830);
  sub_1D2877308();
  swift_getKeyPath();
  sub_1D27F3C24();
  sub_1D28719E8();

  v0 = *(v4 + 32);
  v1 = *(v4 + 40);
  sub_1D2870F68();

  if (!v1)
  {
    sub_1D2875798();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED8B0058;
    return sub_1D2876668();
  }

  return v0;
}

unint64_t sub_1D27F3A64()
{
  result = qword_1EC6E2840;
  if (!qword_1EC6E2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2800);
    sub_1D22BB9D8(&qword_1EC6E2848, &qword_1EC6E2850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2840);
  }

  return result;
}

uint64_t sub_1D27F3B1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_40()
{

  return swift_deallocObject();
}

unint64_t sub_1D27F3C24()
{
  result = qword_1EC6D8008;
  if (!qword_1EC6D8008)
  {
    type metadata accessor for AccessibilityDescriptionEditorViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8008);
  }

  return result;
}

uint64_t sub_1D27F3C80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v132 = a1;
  v3 = sub_1D2873998();
  v129 = *(v3 - 8);
  v130 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v128 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v127 = &v94 - v6;
  v7 = sub_1D2877B28();
  v125 = *(v7 - 8);
  v126 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v121 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2877B08();
  v10 = *(v9 - 8);
  v123 = v9;
  v124 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1D2875718();
  v110 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v105 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D28750E8();
  v101 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2878);
  MEMORY[0x1EEE9AC00](v98);
  v17 = &v94 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2880);
  v104 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v19 = &v94 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2888);
  v100 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v95 = &v94 - v20;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2890) - 8;
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v94 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2898);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v96 = &v94 - v24;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28A0) - 8;
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v94 - v25;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28A8) - 8;
  MEMORY[0x1EEE9AC00](v108);
  v94 = &v94 - v26;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28B0);
  MEMORY[0x1EEE9AC00](v111);
  v116 = &v94 - v27;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28B8);
  MEMORY[0x1EEE9AC00](v113);
  v118 = &v94 - v28;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28C0);
  MEMORY[0x1EEE9AC00](v115);
  v120 = &v94 - v29;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28C8);
  MEMORY[0x1EEE9AC00](v117);
  v114 = &v94 - v30;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28D0);
  MEMORY[0x1EEE9AC00](v122);
  v119 = &v94 - v31;
  *v17 = sub_1D28756A8();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v32 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28D8) + 44)];
  v131 = v2;
  sub_1D27F4B54(v2, v32);
  sub_1D28750D8();
  v33 = sub_1D22BB9D8(&qword_1ED89D108, &qword_1EC6E2878);
  v34 = sub_1D27F6FA4(&qword_1ED89D748, MEMORY[0x1E697C248]);
  v35 = v98;
  sub_1D28767A8();
  (*(v101 + 8))(v15, v13);
  sub_1D22BD238(v17, &qword_1EC6E2878);
  v36 = v105;
  sub_1D2875708();
  v133 = v35;
  v134 = v13;
  v135 = v33;
  v136 = v34;
  v37 = v94;
  swift_getOpaqueTypeConformance2();
  sub_1D27F6FA4(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  v38 = v95;
  v39 = v102;
  v40 = v109;
  sub_1D2876768();
  (*(v110 + 8))(v36, v40);
  (*(v104 + 8))(v19, v39);
  v41 = v97;
  (*(v100 + 32))(v97, v38, v103);
  *(v41 + *(v99 + 44)) = 257;
  v42 = v112;
  sub_1D2877AF8();
  v43 = v121;
  sub_1D2877B18();
  v44 = v96;
  v45 = &v96[*(v23 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28E0);
  sub_1D27F6FA4(&qword_1ED89CFE8, MEMORY[0x1E6982178]);
  v46 = v123;
  sub_1D2875278();
  (*(v125 + 8))(v43, v126);
  (*(v124 + 8))(v42, v46);
  *v45 = swift_getKeyPath();
  sub_1D22EC9BC(v41, v44, &qword_1EC6E2890);
  v47 = sub_1D28763F8();
  v48 = v127;
  (*(*(v47 - 8) + 56))(v127, 1, 1, v47);
  v49 = sub_1D2876448();
  sub_1D22BD238(v48, &qword_1EC6D9D40);
  KeyPath = swift_getKeyPath();
  v51 = v106;
  sub_1D22EC9BC(v44, v106, &qword_1EC6E2898);
  v52 = (v51 + *(v107 + 44));
  *v52 = KeyPath;
  v52[1] = v49;
  LOBYTE(v49) = sub_1D2876328();
  sub_1D2874298();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_1D22EC9BC(v51, v37, &qword_1EC6E28A0);
  v61 = v37 + *(v108 + 44);
  *v61 = v49;
  *(v61 + 8) = v54;
  *(v61 + 16) = v56;
  *(v61 + 24) = v58;
  *(v61 + 32) = v60;
  *(v61 + 40) = 0;
  if (qword_1ED8A6B68 != -1)
  {
    swift_once();
  }

  v62 = v130;
  v63 = __swift_project_value_buffer(v130, qword_1ED8B02B8);
  (*(v129 + 16))(v128, v63, v62);
  v64 = sub_1D2877108();
  v65 = v116;
  v66 = &v116[*(v111 + 36)];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA0F0);
  v68 = *(v67 + 52);
  v69 = *MEMORY[0x1E697F468];
  v70 = sub_1D2875868();
  (*(*(v70 - 8) + 104))(v66 + v68, v69, v70);
  *v66 = v64;
  *(v66 + *(v67 + 56)) = 256;
  sub_1D22EC9BC(v37, v65, &qword_1EC6E28A8);
  LOBYTE(v64) = sub_1D2876348();
  sub_1D2874298();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v118;
  sub_1D22EC9BC(v65, v118, &qword_1EC6E28B0);
  v80 = v79 + *(v113 + 36);
  *v80 = v64;
  *(v80 + 8) = v72;
  *(v80 + 16) = v74;
  *(v80 + 24) = v76;
  *(v80 + 32) = v78;
  *(v80 + 40) = 0;
  if (sub_1D2629BC4())
  {
    v81 = 1.0;
  }

  else
  {
    v81 = 0.0;
  }

  v82 = v79;
  v83 = v120;
  sub_1D22EC9BC(v82, v120, &qword_1EC6E28B8);
  *(v83 + *(v115 + 36)) = v81;
  v84 = sub_1D2629BC4();
  if (v84)
  {
    v85 = 0xD000000000000028;
  }

  else
  {
    v85 = 0xD00000000000001ELL;
  }

  if (v84)
  {
    v86 = "FeedbackSectionView.Identifier";
  }

  else
  {
    v86 = "Enter a description";
  }

  v87 = v86 | 0x8000000000000000;
  v88 = v83;
  v89 = v114;
  sub_1D22EC9BC(v88, v114, &qword_1EC6E28C0);
  v90 = (v89 + *(v117 + 52));
  *v90 = v85;
  v90[1] = v87;
  if (qword_1EC6D8D70 != -1)
  {
    swift_once();
  }

  v91 = qword_1EC6E3FC8;
  v92 = v119;
  sub_1D22EC9BC(v89, v119, &qword_1EC6E28C8);
  *(v92 + *(v122 + 36)) = v91;
  sub_1D22EC9BC(v92, v132, &qword_1EC6E28D0);
  return sub_1D2870F78();
}

uint64_t sub_1D27F4B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28E8);
  v102 = *(v3 - 8);
  v103 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v81 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28F0);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v81 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28F8);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2900);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v101 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v81 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2908);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v81 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2910);
  MEMORY[0x1EEE9AC00](v19);
  v100 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v81 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v81 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v81 - v26;
  v28 = swift_allocObject();
  v29 = *(a1 + 16);
  v28[1] = *a1;
  v28[2] = v29;
  v30 = *(a1 + 48);
  v28[3] = *(a1 + 32);
  v28[4] = v30;
  v107 = a1;
  sub_1D27F6DA4(a1, &v109);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2918);
  v32 = sub_1D27F6DDC();
  v94 = v31;
  v93 = v32;
  sub_1D2877368();
  v92 = sub_1D22BB9D8(&qword_1ED89D168, &qword_1EC6E2908);
  sub_1D2876DA8();
  v33 = *(v16 + 8);
  v97 = v15;
  v96 = v16 + 8;
  v91 = v33;
  v33(v18, v15);
  v109 = *(a1 + 32);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877308();
  v34 = v108;
  v95 = v19;
  v35 = *(v19 + 36);
  v98 = v27;
  v36 = &v27[v35];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D90B0);
  v38 = *(v37 + 36);
  v39 = sub_1D2874518();
  v40 = *(*(v39 - 8) + 56);
  v41 = 1;
  v40(&v36[v38], 1, 1, v39);
  *&v36[*(v37 + 40)] = 0;
  *v36 = (v34 & 1) == 0;
  sub_1D2875798();

  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v42 = swift_allocObject();
  v43 = *(a1 + 16);
  v42[1] = *a1;
  v42[2] = v43;
  v44 = *(a1 + 48);
  v42[3] = *(a1 + 32);
  v42[4] = v44;
  MEMORY[0x1EEE9AC00](v42);
  *(&v81 - 2) = a1;
  sub_1D27F6DA4(a1, &v109);
  sub_1D2877368();
  v45 = v106;
  v46 = v97;
  sub_1D2876DA8();
  v91(v18, v46);
  v109 = *(a1 + 48);
  sub_1D2877308();
  v47 = v108;
  v48 = (v45 + *(v95 + 36));
  v40(&v48[*(v37 + 36)], 1, 1, v39);
  *&v48[*(v37 + 40)] = 0;
  *v48 = (v47 & 1) == 0;
  sub_1D2875798();

  v49 = *a1;
  swift_getKeyPath();
  *&v109 = v49;
  sub_1D27F6FA4(&qword_1ED8A0028, type metadata accessor for FeedbackSectionViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v50 = *(v49 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v50) = (*(v50 + 16))(ObjectType, v50);
    swift_unknownObjectRelease();
    v52 = v105;
    if (v50)
    {
      swift_getKeyPath();
      *&v109 = v49;
      sub_1D28719E8();

      v53 = *(v49 + 32);
      if (v53)
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          sub_1D2870F78();
          v54 = v83;
          sub_1D2877558();
          v55 = sub_1D2876398();
          sub_1D2874298();
          v56 = v54 + *(v82 + 36);
          *v56 = v55;
          *(v56 + 8) = v57;
          *(v56 + 16) = v58;
          *(v56 + 24) = v59;
          *(v56 + 32) = v60;
          *(v56 + 40) = 0;
          *&v109 = sub_1D27F6FEC;
          *(&v109 + 1) = v53;
          sub_1D2870F78();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2930);
          sub_1D22BB9D8(qword_1ED8A34B0, &qword_1EC6E2930);
          v61 = v85;
          sub_1D2876DA8();

          sub_1D2875798();

          v62 = v84;
          sub_1D27F6FF4(v54, v84);
          v63 = v87;
          v64 = *(v87 + 16);
          v65 = v86;
          v66 = v88;
          v64(v86, v61, v88);
          v67 = v89;
          sub_1D27F6FF4(v62, v89);
          v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2938);
          v64((v67 + *(v68 + 48)), v65, v66);

          v69 = *(v63 + 8);
          v69(v61, v66);
          sub_1D22BD238(v54, &qword_1EC6E28F8);
          v70 = v65;
          v52 = v105;
          v69(v70, v66);
          sub_1D22BD238(v62, &qword_1EC6E28F8);
          sub_1D22EC9BC(v67, v52, &qword_1EC6E28E8);
          v41 = 0;
        }
      }
    }
  }

  else
  {
    v52 = v105;
  }

  v71 = v106;
  (*(v102 + 56))(v52, v41, 1, v103);
  v72 = v98;
  v73 = v99;
  sub_1D22BD1D0(v98, v99, &qword_1EC6E2910);
  v74 = v100;
  sub_1D22BD1D0(v71, v100, &qword_1EC6E2910);
  v75 = v52;
  v76 = v52;
  v77 = v101;
  sub_1D22BD1D0(v75, v101, &qword_1EC6E2900);
  v78 = v104;
  sub_1D22BD1D0(v73, v104, &qword_1EC6E2910);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2928);
  sub_1D22BD1D0(v74, v78 + *(v79 + 48), &qword_1EC6E2910);
  sub_1D22BD1D0(v77, v78 + *(v79 + 64), &qword_1EC6E2900);
  sub_1D22BD238(v76, &qword_1EC6E2900);
  sub_1D22BD238(v106, &qword_1EC6E2910);
  sub_1D22BD238(v72, &qword_1EC6E2910);
  sub_1D22BD238(v77, &qword_1EC6E2900);
  sub_1D22BD238(v74, &qword_1EC6E2910);
  return sub_1D22BD238(v73, &qword_1EC6E2910);
}

uint64_t sub_1D27F5750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - v3;
  v5 = *a1;
  swift_getKeyPath();
  *&v15[0] = v5;
  sub_1D27F6FA4(&qword_1ED8A0028, type metadata accessor for FeedbackSectionViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  v15[0] = *(a1 + 32);
  v16 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877318();
  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1D2878568();
  sub_1D27F6DA4(a1, v15);
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v12 = *(a1 + 16);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  v13 = *(a1 + 48);
  *(v10 + 64) = *(a1 + 32);
  *(v10 + 80) = v13;
  sub_1D22AE01C(0, 0, v4, &unk_1D28A9220, v10);
}

uint64_t sub_1D27F596C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1D2879328();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_1D2878568();
  v4[8] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D27F5A60, v7, v6);
}

uint64_t sub_1D27F5A60()
{
  sub_1D2879718();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D27F5B2C;

  return sub_1D233BA38(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D27F5B2C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D27F7464;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D27F5CC0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D27F5CC0()
{
  v1 = *(v0 + 32);

  *(v0 + 16) = *(v1 + 32);
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877318();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D27F5D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1D2871CA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27[-v8];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2920);
  MEMORY[0x1EEE9AC00](v30);
  v11 = &v27[-v10];
  v29 = sub_1D2875798();
  v13 = v12;
  v28 = v14;
  v16 = v15;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED8B0058;
  v35 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  v18 = sub_1D2877308();
  if (v34)
  {
    v19 = 0xE90000000000006BLL;
    v20 = 0x72616D6B63656863;
  }

  else
  {
    sub_1D23C7998();

    sub_1D2877C58();
    (*(v4 + 104))(v6, *MEMORY[0x1E699C1F0], v3);
    v20 = MEMORY[0x1D38A0680](v6, 1);
    v19 = v21;
    v18 = (*(v4 + 8))(v6, v3);
  }

  MEMORY[0x1EEE9AC00](v18);
  *&v27[-64] = v29;
  *&v27[-56] = v13;
  v27[-48] = v28 & 1;
  *&v27[-40] = v16;
  *&v27[-32] = 0;
  *&v27[-24] = 0;
  *&v27[-16] = v17;
  MEMORY[0x1EEE9AC00](v22);
  *&v27[-16] = v20;
  *&v27[-8] = v19;
  sub_1D2877248();

  sub_1D2877848();
  sub_1D28748C8();
  (*(v31 + 32))(v11, v9, v32);
  v23 = &v11[*(v30 + 36)];
  v24 = v36;
  *v23 = v35;
  v23[1] = v24;
  v23[2] = v37;
  v25 = v33;
  sub_1D27F7064(v11, v33);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2918);
  *(v25 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1D27F6168(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - v3;
  v5 = *a1;
  swift_getKeyPath();
  *&v15[0] = v5;
  sub_1D27F6FA4(&qword_1ED8A0028, type metadata accessor for FeedbackSectionViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  v15[0] = *(a1 + 48);
  v16 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877318();
  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1D2878568();
  sub_1D27F6DA4(a1, v15);
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v12 = *(a1 + 16);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  v13 = *(a1 + 48);
  *(v10 + 64) = *(a1 + 32);
  *(v10 + 80) = v13;
  sub_1D22AE01C(0, 0, v4, &unk_1D28A9210, v10);
}

uint64_t sub_1D27F6384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1D2879328();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_1D2878568();
  v4[8] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D27F6478, v7, v6);
}

uint64_t sub_1D27F6478()
{
  sub_1D2879718();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D27F6544;

  return sub_1D233BA38(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D27F6544()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D27F7468;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D27F66D8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D27F66D8()
{
  v1 = *(v0 + 32);

  *(v0 + 16) = *(v1 + 48);
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877318();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D27F6780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1D2871CA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27[-v8];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2920);
  MEMORY[0x1EEE9AC00](v30);
  v11 = &v27[-v10];
  v29 = sub_1D2875798();
  v13 = v12;
  v28 = v14;
  v16 = v15;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED8B0058;
  v35 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  v18 = sub_1D2877308();
  if (v34)
  {
    v19 = 0xE90000000000006BLL;
    v20 = 0x72616D6B63656863;
  }

  else
  {
    sub_1D23C7998();

    sub_1D2877C58();
    (*(v4 + 104))(v6, *MEMORY[0x1E699C1C8], v3);
    v20 = MEMORY[0x1D38A0680](v6, 1);
    v19 = v21;
    v18 = (*(v4 + 8))(v6, v3);
  }

  MEMORY[0x1EEE9AC00](v18);
  *&v27[-64] = v29;
  *&v27[-56] = v13;
  v27[-48] = v28 & 1;
  *&v27[-40] = v16;
  *&v27[-32] = 0;
  *&v27[-24] = 0;
  *&v27[-16] = v17;
  MEMORY[0x1EEE9AC00](v22);
  *&v27[-16] = v20;
  *&v27[-8] = v19;
  sub_1D2877248();

  sub_1D2877848();
  sub_1D28748C8();
  (*(v31 + 32))(v11, v9, v32);
  v23 = &v11[*(v30 + 36)];
  v24 = v36;
  *v23 = v35;
  v23[1] = v24;
  v23[2] = v37;
  v25 = v33;
  sub_1D27F7064(v11, v33);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2918);
  *(v25 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1D27F6B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *a2 = a1;

  return sub_1D2870F78();
}

uint64_t sub_1D27F6C28@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1D28772F8();
  result = sub_1D28772F8();
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = a2 & 1;
  *(a3 + 24) = 0x4018000000000000;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  *(a3 + 48) = v7;
  *(a3 + 56) = v8;
  return result;
}

uint64_t sub_1D27F6CD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D27F6D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D27F6DDC()
{
  result = qword_1ED89D9B8;
  if (!qword_1ED89D9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2918);
    sub_1D27F6E94();
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D9B8);
  }

  return result;
}

unint64_t sub_1D27F6E94()
{
  result = qword_1ED89DBB8;
  if (!qword_1ED89DBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2920);
    sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DBB8);
  }

  return result;
}

uint64_t objectdestroyTm_41()
{

  return swift_deallocObject();
}

uint64_t sub_1D27F6FA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D27F6FF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27F7064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27F70D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D22BC8FC;

  return sub_1D27F6384(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroy_26Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D27F71D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D22BDFF8;

  return sub_1D27F596C(a1, v4, v5, v1 + 32);
}

uint64_t getEnumTagSinglePayload for FeedbackSectionView.Metrics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedbackSectionView.Metrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D27F7328()
{
  result = qword_1EC6E2940;
  if (!qword_1EC6E2940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E28D0);
    sub_1D22BB9D8(&qword_1EC6E2948, &qword_1EC6E28C8);
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2940);
  }

  return result;
}

unint64_t sub_1D27F7410()
{
  result = qword_1EC6E2950;
  if (!qword_1EC6E2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2950);
  }

  return result;
}

uint64_t sub_1D27F746C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  v5[4] = swift_task_alloc();
  v6 = sub_1D2873AA8();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_1D2873CB8();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for PlaygroundImage();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  sub_1D2878568();
  v5[16] = sub_1D2878558();
  v10 = sub_1D28784F8();
  v5[17] = v10;
  v5[18] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D27F7694, v10, v9);
}

uint64_t sub_1D27F7694()
{
  v1 = v0[2];
  v0[19] = [objc_opt_self() generalPasteboard];
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1D27F77AC;
  v3 = v0[12];

  return v5(v3);
}

uint64_t sub_1D27F77AC()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D27F78CC, v3, v2);
}

uint64_t sub_1D27F78CC()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(v0[12], &unk_1EC6DE5A0);
    sub_1D2872658();
    v4 = sub_1D2873CA8();
    v5 = sub_1D2878A18();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[19];
    v8 = v0[11];
    v9 = v0[8];
    v10 = v0[9];
    if (v6)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v4, v5, "Failed to write to pasteboard.", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v10 + 8))(v8, v9);
  }

  else
  {
    v12 = v0[15];
    v13 = v0[13];
    sub_1D23EEBD4(v0[12], v12);
    if (*(v12 + *(v13 + 48)) == 1)
    {
      sub_1D2873A08();
    }

    else
    {
      sub_1D2873A38();
    }

    v14 = v0[6];
    v16 = v0[4];
    v15 = v0[5];
    (*(v14 + 16))(v16, v0[7], v15);
    (*(v14 + 56))(v16, 0, 1, v15);
    v17 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v16);
    v19 = v18;
    sub_1D22BD238(v16, &qword_1EC6DAE70);
    if (v19 >> 60 == 15)
    {
      sub_1D2872658();
      v20 = sub_1D2873CA8();
      v21 = sub_1D2878A18();
      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[19];
      v24 = v0[15];
      v25 = v0[9];
      v26 = v0[10];
      v27 = v0[8];
      v41 = v0[7];
      v28 = v0[5];
      v29 = v0[6];
      if (v22)
      {
        v40 = v0[15];
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1D226E000, v20, v21, "Failed to write to pasteboard.", v30, 2u);
        MEMORY[0x1D38A3520](v30, -1, -1);

        (*(v25 + 8))(v26, v27);
        (*(v29 + 8))(v41, v28);
        v31 = v40;
      }

      else
      {

        (*(v25 + 8))(v26, v27);
        (*(v29 + 8))(v41, v28);
        v31 = v24;
      }
    }

    else
    {
      v32 = v0[19];
      v42 = v0[15];
      v33 = v0[6];
      v34 = v0[7];
      v35 = v0[5];
      v36 = sub_1D28716D8();
      sub_1D28739E8();
      v37 = sub_1D2878068();

      [v32 setData:v36 forPasteboardType:v37];
      sub_1D22D6D4C(v17, v19);

      (*(v33 + 8))(v34, v35);
      v31 = v42;
    }

    sub_1D23D4DFC(v31);
  }

  v38 = v0[1];

  return v38();
}

uint64_t sub_1D27F7CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  sub_1D2878568();
  v5[6] = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D27F7D50, v7, v6);
}

uint64_t sub_1D27F7D50()
{
  receiver = v0[2].receiver;

  if (receiver >> 62)
  {
    v2 = sub_1D2879368();
  }

  else
  {
    v2 = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D27EAFDC(v2);

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    result = sub_1D2879258();
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = receiver & 0xC000000000000001;
    v7 = v0[2].receiver + 32;
    do
    {
      if (v6)
      {
        v8 = MEMORY[0x1D38A1C30](v5, v0[2].receiver);
      }

      else
      {
        v8 = *(v7 + 8 * v5);
        sub_1D2870F78();
      }

      ++v5;
      v9 = type metadata accessor for PhotoAssetItemProviderWriting();
      v10 = objc_allocWithZone(v9);
      *&v10[OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset] = v8;
      v0[1].receiver = v10;
      v0[1].super_class = v9;
      objc_msgSendSuper2(v0 + 1, sel_init);
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
    }

    while (v2 != v5);
    v3 = v14;
  }

  sub_1D2870F68();
  if (v3 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E2960);
    sub_1D28793A8();
  }

  else
  {
    sub_1D2879668();
  }

  super_class = v0[2].super_class;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E2960);
  v12 = sub_1D28783C8();

  [(objc_class *)super_class setObjects:v12];

  v13 = v0->super_class;

  return v13();
}

uint64_t sub_1D27F7FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  v7 = sub_1D2873CB8();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  sub_1D2878568();
  v6[26] = sub_1D2878558();
  v9 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D27F80A0, v9, v8);
}

uint64_t sub_1D27F80A0()
{
  v2 = v0[20];
  v1 = v0[21];

  v3 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  sub_1D22BCFD0(0, &qword_1ED89CD40);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v0[6] = sub_1D27F8994;
  v0[7] = v5;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D27F84BC;
  v0[5] = &block_descriptor_54;
  v6 = _Block_copy(v0 + 2);
  v7 = v2;

  [v3 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v6];
  _Block_release(v6);
  if (v1)
  {
    v8 = v0[21];
    sub_1D22BCFD0(0, &qword_1ED89CC78);
    v9 = swift_getObjCClassFromMetadata();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v0[18] = sub_1D27F8950;
    v0[19] = v10;
    v0[14] = MEMORY[0x1E69E9820];
    v0[15] = 1107296256;
    v0[16] = sub_1D27F84BC;
    v0[17] = &block_descriptor_14_0;
    v11 = _Block_copy(v0 + 14);
    v12 = v8;

    [v3 registerObjectOfClass:v9 visibility:0 loadHandler:v11];
    _Block_release(v11);
  }

  else
  {
    sub_1D2872658();
    v13 = sub_1D2873CA8();
    v14 = sub_1D2878A38();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D226E000, v13, v14, "No Genmoji image for pasteboard.", v19, 2u);
      MEMORY[0x1D38A3520](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
  }

  v20 = v0[22];
  v21 = sub_1D2878068();
  v0[12] = sub_1D27F84E0;
  v0[13] = 0;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1D27F851C;
  v0[11] = &block_descriptor_8_0;
  v22 = _Block_copy(v0 + 8);
  [v3 registerDataRepresentationForTypeIdentifier:v21 visibility:0 loadHandler:v22];
  _Block_release(v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D28809B0;
  *(v23 + 32) = v3;
  sub_1D22BCFD0(0, &qword_1EC6E2970);
  v24 = v3;
  v25 = sub_1D28783C8();

  [v20 setItemProviders_];

  v26 = v0[1];

  return v26();
}

id sub_1D27F8540(uint64_t a1, void *aBlock, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_1D2870F78();
  v8 = v5(a4, v7);

  return v8;
}

void sub_1D27F85E0(void *a1, void *a2)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  if (a1)
  {
    v11 = objc_opt_self();
    v12 = a2;
    v13 = a1;
    v14 = [v11 generalPasteboard];
    v15 = sub_1D28785F8();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    sub_1D2878568();
    v16 = v13;
    v17 = v14;
    v18 = sub_1D2878558();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v16;
    v19[5] = a2;
    v19[6] = v17;
    sub_1D22AE01C(0, 0, v10, &unk_1D28A92E8, v19);
  }

  else
  {
    sub_1D2872658();
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A18();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D226E000, v21, v22, "Failed to fetch Genmoji for pasteboard.", v23, 2u);
      MEMORY[0x1D38A3520](v23, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1D27F8870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D27F7FA8(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

id sub_1D27F89A0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1D27F8A58(0x7D2C327B735CLL, 0xE600000000000000, 0);
  qword_1EC6E2978 = result;
  return result;
}

id sub_1D27F8A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D2878068();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1D28714B8();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1D27F8B34()
{
  swift_getKeyPath();
  sub_1D27F97C0(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
  sub_1D28719E8();

  v1 = *(v0 + 32);
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D27F8BE4()
{
  swift_getKeyPath();
  sub_1D27F97C0(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
  sub_1D28719E8();

  v1 = *(v0 + 16);
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D27F8C94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27F97C0(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
  sub_1D28719E8();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_1D2870F68();
}

uint64_t sub_1D27F8D40(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D27F8D80(v1, v2);
}

uint64_t sub_1D27F8D80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_1D2879618() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27F97C0(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D27F8EE0(char a1)
{
  v2 = v1;
  v4 = sub_1D2871158();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getKeyPath();
    v20 = v2;
    sub_1D27F97C0(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
    sub_1D28719E8();

    v8 = *(v2 + 24);
    v20 = *(v2 + 16);
    v21 = v8;
    sub_1D2870F68();
    sub_1D2871128();
    sub_1D22BD06C();
    v9 = sub_1D2878F88();
    v11 = v10;
    (*(v5 + 8))(v7, v4);

    sub_1D27F8D80(v9, v11);
    swift_getKeyPath();
    v20 = v2;
    sub_1D28719E8();

    v12 = *(v2 + 24);
    if ((v12 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v13 = *(v2 + 16) & 0xFFFFFFFFFFFFLL;
    }

    swift_getKeyPath();
    if (v13)
    {
      v20 = v2;
      sub_1D28719E8();

      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_11;
      }

      swift_getKeyPath();
      v20 = v2;
      sub_1D28719E8();

      v14 = *(v2 + 16);
      v15 = *(v2 + 24);
      sub_1D2870F68();
      sub_1D22D7720(v14, v15);
    }

    else
    {
      v20 = v2;
      sub_1D28719E8();

      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_11;
      }

      sub_1D22D7720(0, 0);
    }

    swift_unknownObjectRelease();
  }

LABEL_11:
  swift_getKeyPath();
  v20 = v2;
  sub_1D27F97C0(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(result + 131) == 1)
    {
      v17 = result;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v19 - 2) = v17;
      *(&v19 - 8) = 0;
      v20 = v17;
      sub_1D27F97C0(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
      sub_1D28719D8();
      swift_unknownObjectRelease();
    }

    else
    {
      *(result + 131) = 0;
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D27F9314(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_1D2879618() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27F97C0(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
    sub_1D28719D8();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1D27F9484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  sub_1D2870F68();
}

uint64_t sub_1D27F94C0()
{
  swift_getKeyPath();
  sub_1D27F97C0(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D27F9568()
{

  sub_1D22729C0(v0 + 48);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal39AccessibilityDescriptionEditorViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessibilityDescriptionEditorViewModel()
{
  result = qword_1ED89E5C8;
  if (!qword_1ED89E5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D27F9670()
{
  result = sub_1D2871A28();
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

uint64_t sub_1D27F9720()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
  sub_1D2870F68();
}

uint64_t sub_1D27F9760()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
  sub_1D2870F68();
}

uint64_t sub_1D27F97C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D27F9808@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2980);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA230);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2988);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = sub_1D28718F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = [objc_opt_self() _deviceLanguage];
  if (v19)
  {
    v26 = v4;
    v27 = a1;
    v20 = v19;
    sub_1D28780A8();

    sub_1D2870F68();
    sub_1D2871828();
    sub_1D28718B8();
    v21 = sub_1D2871898();
    if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
    {
      sub_1D27F9BE8(v11);
      sub_1D2871858();
      v22 = sub_1D2871848();
      (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
      v23 = sub_1D28718A8();
      (*(*(v23 - 8) + 56))(v26, 1, 1, v23);
      sub_1D28718C8();
      sub_1D28718B8();
      v24 = *(v13 + 8);
      v24(v15, v12);
      sub_1D2871868();
      return (v24)(v18, v12);
    }

    else
    {

      sub_1D27F9BE8(v11);
      return (*(v13 + 32))(v27, v18, v12);
    }
  }

  else
  {

    return sub_1D28718C8();
  }
}

uint64_t sub_1D27F9BE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D27F9C50(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_1D2878568();
  v3[6] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D27F9CF0, v5, v4);
}

uint64_t sub_1D27F9CF0()
{
  v1 = *(v0 + 32);
  v8 = *(v0 + 16);
  v2 = sub_1D2878558();
  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1D27F9E0C;
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, v2, v5, 0xD000000000000010, 0x80000001D28C45E0, sub_1D27FAF58, v3, v6);
}

uint64_t sub_1D27F9E0C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D27F9F30;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D2687DEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D27F9F30()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall SessionUndoManager.performUndo()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 undo];
  }
}

uint64_t SessionUndoManager.__allocating_init(undoManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

Swift::Void __swiftcall SessionUndoManager.performRedo()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 redo];
  }
}

uint64_t sub_1D27FA018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D2878568();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  return sub_1D239DDE8(sub_1D27FAF38, v8);
}

uint64_t sub_1D27FA09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    ObjectType = swift_getObjectType();
    if ((*(a3 + 56))(ObjectType, a3))
    {
      v8 = v7;
      v9 = swift_getObjectType();
      v10 = swift_unknownObjectRetain();
      sub_1D27FAC50(v10, v5, v9, v8);
      swift_unknownObjectRelease();
      v11 = swift_unknownObjectRetain();
      sub_1D27FAA0C(v11, 0, sub_1D27FA1B0, 0, v5, v9, v8);

      return swift_unknownObjectRelease_n();
    }

    else
    {
    }
  }

  return result;
}

void sub_1D27FA1B0(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_1D2872628();
    v7 = a1;
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1D226E000, v8, v9, "Cannot perform undo with error: %@", v10, 0xCu);
      sub_1D22BF6D0(v11);
      MEMORY[0x1D38A3520](v11, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);
  }
}

uint64_t sub_1D27FA39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v15;
  *(v8 + 24) = a5;
  *(v8 + 32) = a7;
  *(v8 + 96) = a6;
  *(v8 + 16) = a4;
  *(v8 + 56) = sub_1D2878568();
  *(v8 + 64) = sub_1D2878558();
  ObjectType = swift_getObjectType();
  *(v8 + 72) = ObjectType;
  v13 = (*(a5 + 80) + **(a5 + 80));
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  *v11 = v8;
  v11[1] = sub_1D27FA500;

  return v13(ObjectType, a5);
}

uint64_t sub_1D27FA500()
{
  *(*v1 + 88) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v4 = sub_1D27FA6E8;
  }

  else
  {
    v4 = sub_1D27FA65C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D27FA65C()
{
  v1 = *(v0 + 96);

  if (v1 == 1)
  {
    sub_1D27FAC50(*(v0 + 16), *(v0 + 32), *(v0 + 72), *(v0 + 24));
  }

  (*(v0 + 40))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D27FA6E8()
{
  v1 = v0[11];
  v2 = v0[5];

  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D27FA77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94E0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  (*(v9 + 16))(&v17 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  ObjectType = swift_getObjectType();
  sub_1D27FAA0C(a3, 1, sub_1D27FAF64, v14, a2, ObjectType, a4);
}

uint64_t sub_1D27FA8F0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94E0);
    return sub_1D2878508();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94E0);
    return sub_1D2878518();
  }
}

uint64_t SessionUndoManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D27FAA0C(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v22 - v15;
  if ((*(a7 + 40))(a6, a7))
  {
    (*(a7 + 72))(a6, a7);
    if (a2)
    {
      sub_1D27FAC50(a1, a5, a6, a7);
    }

    return a3(0);
  }

  else
  {
    v17 = sub_1D28785F8();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    sub_1D2878568();
    swift_unknownObjectRetain();
    sub_1D2870F78();
    sub_1D2870F78();
    v18 = sub_1D2878558();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    *(v19 + 16) = v18;
    *(v19 + 24) = v20;
    *(v19 + 32) = a1;
    *(v19 + 40) = a7;
    *(v19 + 48) = a2 & 1;
    *(v19 + 56) = a5;
    *(v19 + 64) = a3;
    *(v19 + 72) = a4;
    sub_1D22AE01C(0, 0, v16, &unk_1D288CB00, v19);
  }
}

void sub_1D27FAC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a4 + 64))(a3, a4))
  {
    v12 = *(a2 + 16);
    if (v12)
    {
      v22 = v12;
      [v22 beginUndoGrouping];
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = a1;
      v14[4] = a4;
      swift_unknownObjectRetain();
      sub_1D28789E8();

      if (([v22 isUndoing] & 1) == 0)
      {
        (*(a4 + 16))(a3, a4);
        if (v15)
        {
          v16 = sub_1D2878068();

          [v22 setActionName_];
        }
      }

      [v22 endUndoGrouping];
      v17 = v22;
    }

    else
    {
      sub_1D2872628();
      v18 = sub_1D2873CA8();
      v19 = sub_1D2878A18();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1D226E000, v18, v19, "UndoManager is nil when trying to register an undo operation", v20, 2u);
        MEMORY[0x1D38A3520](v20, -1, -1);
      }

      (*(v9 + 8))(v11, v8);
    }
  }
}

uint64_t sub_1D27FAF64(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94E0);

  return sub_1D27FA8F0(a1);
}

unint64_t sub_1D27FAFF4()
{
  result = qword_1EC6E2990;
  if (!qword_1EC6E2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2990);
  }

  return result;
}

uint64_t sub_1D27FB070()
{
  v1 = v0[2];
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v0[8];
  v4 = v2[7];
  v6 = v2[4];
  v5 = v2[5];
  v7 = v2[3];
  sub_1D27FB9C4(v1);
  v8 = v1;
  swift_retain_n();

  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0;
  *(v10 + 128) = 1;
  *(v10 + 16) = v1;
  *(v10 + 24) = v7;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  *(v10 + 48) = 0;
  *(v10 + 56) = v4;
  *(v10 + 64) = v3;
  sub_1D2340EEC(0);
  return v10;
}

uint64_t sub_1D27FB1B8()
{
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[3];
    sub_1D27FB9C4(v0[2]);
    v5 = v1;
    sub_1D2870F78();

    type metadata accessor for ResetContextOperation();
    v1 = swift_allocObject();
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal21ResetContextOperation_undoRecipe;
    v7 = sub_1D2872438();
    (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal21ResetContextOperation_supportsUndoing) = 1;
    v8 = *(v1 + 16);
    v9 = *(v1 + 24);
    *(v1 + 16) = v4;
    *(v1 + 24) = v3;
    *(v1 + 32) = v2;
    sub_1D234019C(v8, v9);
  }

  return v1;
}

uint64_t sub_1D27FB2E0()
{
  v1[2] = v0;
  sub_1D2878568();
  v1[3] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D27FB378, v3, v2);
}

uint64_t sub_1D27FB378()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  *(v0 + 48) = v2;
  v3 = v1[3];
  *(v0 + 56) = v3;
  v4 = v1[4];
  *(v0 + 64) = v4;
  v5 = v1[5];
  *(v0 + 72) = v5;
  v6 = v1[6];
  *(v0 + 80) = v6;
  v7 = v1[7];
  *(v0 + 88) = v7;
  *(v0 + 96) = v1[8];
  if (v2)
  {
    *(v0 + 120) = v3;
    swift_retain_n();
    sub_1D2870F78();
    v8 = v2;
    sub_1D2870F78();
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_1D27FB4F0;

    return sub_1D2665738(v8, (v0 + 120), v7, v4, v5, v6 & 1);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1D27FB4F0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1D27FB6B8;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1D27FB60C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D27FB60C()
{
  v1 = *(v0 + 48);

  sub_1D2340EEC(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D27FB6B8()
{
  v1 = *(v0 + 48);

  sub_1D2340EEC(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D27FB76C()
{
  sub_1D2340EEC(*(v0 + 16));
  sub_1D2340EEC(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1D27FB7E8()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D27FB938()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BC8FC;

  return sub_1D27FB2E0();
}

void *sub_1D27FB9C4(void *result)
{
  if (result)
  {
    v1 = result;
    sub_1D2870F78();
    sub_1D2870F78();

    return sub_1D2870F78();
  }

  return result;
}

uint64_t sub_1D27FBA24()
{
  v1 = v0[3];
  if (!v1)
  {
    return 0;
  }

  v2 = v0[4];
  v3 = v0[2];
  sub_1D27FC514(v3, v1);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal21ResetContextOperation_undoRecipe;
  v6 = sub_1D2872438();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal21ResetContextOperation_supportsUndoing) = 1;
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  sub_1D234019C(v7, v8);
  return v4;
}

uint64_t sub_1D27FBB40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_1D2872438();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal21ResetContextOperation_undoRecipe;
  swift_beginAccess();
  sub_1D27FC558(v0 + v14, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D27FC5C8(v6);
  }

  else
  {
    v15 = *(v8 + 32);
    v15(v13, v6, v7);
    v16 = v0[3];
    if (v16)
    {
      v17 = v0[4];
      v18 = v0[2];
      v36 = v18;
      v37 = v17;
      v15(v10, v13, v7);
      sub_1D27FC514(v18, v16);
      type metadata accessor for LoadRecipeInContextOperation();
      v19 = swift_allocObject();
      v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_actionItem;
      v35 = OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_actionItem;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C8);
      v22 = *(v21 - 1);
      v34 = v15;
      v23 = *(v22 + 56);
      v23(v19 + v20, 1, 1, v21);
      v23(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_undoActionItem, 1, 1, v21);
      *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_supportsUndoing) = 1;
      v24 = v21[12];
      v25 = v21[16];
      v33 = v16;
      v26 = &v3[v25];
      v27 = v21[20];
      v31 = v21[24];
      v32 = v27;
      v34(v3, v10, v7);
      v3[v24] = v36;
      *v26 = sub_1D23F83BC;
      v26[1] = 0;
      *&v3[v32] = v33;
      *&v3[v31] = v37;
      v23(v3, 0, 1, v21);
      v28 = v35;
      swift_beginAccess();
      sub_1D22BD298(v3, v19 + v28, &qword_1EC6DA1C0);
      swift_endAccess();
      return v19;
    }

    (*(v8 + 8))(v13, v7);
  }

  return 0;
}

uint64_t sub_1D27FBF14()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  v1[6] = swift_task_alloc();
  sub_1D2878568();
  v1[7] = sub_1D2878558();
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D27FBFE4, v3, v2);
}

uint64_t sub_1D27FBFE4()
{
  v1 = v0[5];

  v2 = *(v1 + 24);
  if (v2)
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = *(v4 + 16);
    sub_1D27FC514(v5, *(v1 + 24));
    type metadata accessor for GenerationRecipeFactory();
    v6 = *(v2 + 40);
    sub_1D2870F78();
    sub_1D2461838(v6, 1, v3);

    v7 = sub_1D2872438();
    (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
    v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal21ResetContextOperation_undoRecipe;
    swift_beginAccess();
    sub_1D22BD298(v3, v4 + v8, &unk_1EC6DDE30);
    swift_endAccess();
    sub_1D26742D0();
    sub_1D267F6F0();
    sub_1D267E8EC();
    sub_1D234019C(v5, v2);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D27FC164()
{
  sub_1D234019C(v0[2], v0[3]);
  sub_1D234019C(v0[5], v0[6]);
  sub_1D27FC5C8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal21ResetContextOperation_undoRecipe);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ResetContextOperation()
{
  result = qword_1EC6E29A0;
  if (!qword_1EC6E29A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D27FC234()
{
  sub_1D27FC2D8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D27FC2D8()
{
  if (!qword_1ED8A6BD8)
  {
    sub_1D2872438();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8A6BD8);
    }
  }
}

uint64_t sub_1D27FC330()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D27FC488()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BC8FC;

  return sub_1D27FBF14();
}

uint64_t sub_1D27FC514(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D2870F78();

    return sub_1D2870F78();
  }

  return result;
}

uint64_t sub_1D27FC558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27FC5C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D27FC630(unsigned __int8 a1)
{
  v1 = a1 >> 5;
  if (v1 <= 3)
  {
    v2 = 5461577;
    v3 = 0x6F6F626154;
    if (v1 != 2)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 >> 5)
    {
      v2 = 0x654E797465666153;
    }

    v4 = (a1 >> 5) <= 1u;
LABEL_7:
    if (v4)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  if ((a1 >> 5) > 5u)
  {
    if (v1 == 6)
    {
      v8 = 0x656C7069746C754DLL;
      if (a1 != 194)
      {
        v8 = 0xD00000000000001CLL;
      }

      v9 = 0xD000000000000018;
      if (a1 == 192)
      {
        v9 = 0xD00000000000001ELL;
      }

      if (a1 <= 0xC1u)
      {
        return v9;
      }

      else
      {
        return v8;
      }
    }

    else
    {
      v10 = 0x42726579614C4955;
      if (a1 == 226)
      {
        v10 = 0xD00000000000001ALL;
      }

      v11 = 0xD000000000000021;
      if (a1 == 224)
      {
        v11 = 0xD00000000000001FLL;
      }

      if (a1 <= 0xE1u)
      {
        return v11;
      }

      else
      {
        return v10;
      }
    }
  }

  else
  {
    if (v1 != 4)
    {
      v2 = 0x6566615374786554;
      v3 = 0xD000000000000016;
      if (a1 != 162)
      {
        v3 = 0xD00000000000001CLL;
      }

      if (a1 != 160)
      {
        v2 = 0x73696C6B636F6C42;
      }

      v4 = a1 <= 0xA1u;
      goto LABEL_7;
    }

    v6 = 0x727265764F534D47;
    v7 = 0xD000000000000011;
    if (a1 != 130)
    {
      v7 = 0x6867697279706F43;
    }

    if (a1 == 128)
    {
      v6 = 0x6669636570736E55;
    }

    if (a1 <= 0x81u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }
}

id sub_1D27FC910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  sub_1D247E07C(a2, &v13 - v5);
  v7 = type metadata accessor for PlaygroundImage();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1D25042E8(v6);
    v8 = 0;
  }

  else
  {
    v8 = sub_1D262AD28();
    sub_1D23D4DFC(v6);
  }

  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_1D262AD28();
  v11 = [v9 initWithBaseImage:v8 sketchImage:v10 sketchMask:0 baseImageRatio:1 sketchComplexityMeasure:0 generateCaptionFromImage:1 sanitizationCategory:1.0 drawOnImageAssignmentOptions:0.0];

  sub_1D25042E8(a2);
  sub_1D23D4DFC(a1);
  return v11;
}

void sub_1D27FCA74(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v48 - v11;
  if (a2 == 1.0)
  {

    sub_1D239A330(v2, a1);
  }

  else
  {
    v50 = v10;
    v13 = v2;
    v14 = sub_1D262B684();
    if (v14)
    {
      v15 = v14;
      v16 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
      [v16 extent];
      v21 = v17;
      v22 = v18;
      v23 = v19;
      v24 = v20;
      if (a2 >= 1.0)
      {
        v30 = CGRectGetWidth(*&v17) / a2;
        v55.origin.x = v21;
        v55.origin.y = v22;
        v55.size.width = v23;
        v55.size.height = v24;
        Height = CGRectGetHeight(v55);
        v56.origin.x = v21;
        v56.origin.y = v22;
        v56.size.width = v23;
        v56.size.height = v30;
        v22 = (Height - CGRectGetHeight(v56)) * 0.5;
        v24 = v30;
        v25 = v23;
      }

      else
      {
        v25 = CGRectGetHeight(*&v17) * a2;
        v53.origin.x = v21;
        v53.origin.y = v22;
        v53.size.width = v23;
        v53.size.height = v24;
        Width = CGRectGetWidth(v53);
        v54.origin.x = v21;
        v54.origin.y = v22;
        v54.size.width = v25;
        v54.size.height = v24;
        v21 = (Width - CGRectGetWidth(v54)) * 0.5;
      }

      v57.origin.x = v21;
      v57.origin.y = v22;
      v57.size.width = v25;
      v57.size.height = v24;
      v32 = -CGRectGetMinX(v57);
      v58.origin.x = v21;
      v58.origin.y = v22;
      v58.size.width = v25;
      v58.size.height = v24;
      MinY = CGRectGetMinY(v58);
      CGAffineTransformMakeTranslation(&v51, v32, -MinY);
      tx = v51.tx;
      ty = v51.ty;
      v48 = *&v51.c;
      v49 = *&v51.a;
      v36 = [v16 imageByCroppingToRect:v21, v22, v25, v24];
      *&v51.a = v49;
      *&v51.c = v48;
      v51.tx = tx;
      v51.ty = ty;
      v37 = [v36 imageByApplyingTransform_];

      if (qword_1EC6D8D90 != -1)
      {
        swift_once();
      }

      v38 = [qword_1EC6E29B0 createCGImage:v37 fromRect:{0.0, 0.0, v25, v24}];
      if (v38)
      {
        v39 = v38;
        v40 = type metadata accessor for PlaygroundImage();
        v41 = (a1 + v40[9]);
        *v41 = 0u;
        v41[1] = 0u;
        *(a1 + v40[10]) = xmmword_1D28809A0;
        v42 = v40[11];
        v43 = sub_1D2873AA8();
        (*(*(v43 - 8) + 56))(a1 + v42, 1, 1, v43);
        *a1 = v39;
        *(a1 + 8) = 0;
        *(a1 + 24) = 1;
        *(a1 + 16) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + v40[12]) = 0;
        sub_1D2871808();

        return;
      }

      sub_1D28724A8();
      v44 = sub_1D2873CA8();
      v45 = sub_1D2878A18();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1D226E000, v44, v45, "Failed to get a cropped cgImage.", v46, 2u);
        MEMORY[0x1D38A3520](v46, -1, -1);
        v47 = v15;
      }

      else
      {
        v47 = v44;
        v44 = v16;
        v16 = v37;
        v37 = v15;
      }

      (*(v6 + 8))(v12, v50);
    }

    else
    {
      sub_1D28724A8();
      v27 = sub_1D2873CA8();
      v28 = sub_1D2878A18();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1D226E000, v27, v28, "PlaygroundImage's cgImage is nil.", v29, 2u);
        MEMORY[0x1D38A3520](v29, -1, -1);
      }

      (*(v6 + 8))(v9, v50);
    }

    sub_1D239A330(v13, a1);
  }
}

id sub_1D27FCFB0()
{
  result = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  qword_1EC6E29B0 = result;
  return result;
}

uint64_t sub_1D27FCFE4(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1D2877B48();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = sub_1D2877B68();
  v14 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0]);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  sub_1D24614C4();
  v19 = sub_1D2878AB8();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = v17;
  *(v20 + 56) = v18;
  aBlock[4] = sub_1D27FD29C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_55;
  v21 = _Block_copy(aBlock);
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2877B58();
  v23[1] = MEMORY[0x1E69E7CC0];
  sub_1D24B0908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D22D5EFC();
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v16, v13, v21);
  _Block_release(v21);

  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v23[0]);
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

id sub_1D27FD310()
{
  type metadata accessor for GenerativePlaygroundPhotoLibrary();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1ED8B0058 = result;
  return result;
}

uint64_t sub_1D27FD368()
{
  v0 = sub_1D28714D8();
  __swift_allocate_value_buffer(v0, qword_1ED8B0060);
  v1 = __swift_project_value_buffer(v0, qword_1ED8B0060);
  *v1 = type metadata accessor for GenerativePlaygroundPhotoLibrary();
  v2 = *MEMORY[0x1E6968E00];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1D27FD404()
{
  v1 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D2878028();
  MEMORY[0x1EEE9AC00](v3 - 8);
  swift_beginAccess();
  sub_1D27F0CC8(v0 + 16, &v9);
  if (v10)
  {

    sub_1D22D79FC(&v9, v11);
    sub_1D2878018();
    sub_1D2878008();
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v5 + 24))(v4, v5);
    sub_1D2877FF8();

    sub_1D2878008();
    sub_1D2878038();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v6 = qword_1ED8B0058;
    sub_1D28718C8();
    v7 = sub_1D28780E8();
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_1D22BD238(&v9, &qword_1EC6D9A18);
    return 0;
  }

  return v7;
}

uint64_t sub_1D27FD674()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1D27F0CC8((v0 + 2), &v12);
  if (v13)
  {
    v2 = v15;
    sub_1D22D79FC(&v12, v16);
    sub_1D22D7044(v16, &v12);
    v3 = v13;
    v4 = v14;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(&v12, v13);
    v6 = MEMORY[0x1EEE9AC00](v5);
    v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v8, v6);
    v10 = sub_1D27FDCE0(v8, v2, 1, v1, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v16);
    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {
    sub_1D22BD238(&v12, &qword_1EC6D9A18);
    return 0;
  }

  return v10;
}

uint64_t sub_1D27FD814()
{
  v1 = v0;
  v2 = (v0 + 2);
  v3 = *v0;
  swift_beginAccess();
  sub_1D27F0CC8(v2, &v25);
  if (v26)
  {
    v4 = v28;
    sub_1D22D79FC(&v25, v29);
    swift_beginAccess();
    sub_1D27F0CC8((v1 + 8), &v25);
    if (v26)
    {
      v5 = v28;
      sub_1D22D79FC(&v25, v24);
      sub_1D22D7044(v24, &v25);
      v6 = v26;
      v7 = v27;
      v8 = __swift_mutable_project_boxed_opaque_existential_1(&v25, v26);
      v9 = MEMORY[0x1EEE9AC00](v8);
      v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v12 + 16))(v11, v9);
      v13 = sub_1D27FDCE0(v11, v5, 1, v3, v6, v7);

      __swift_destroy_boxed_opaque_existential_0(v24);
    }

    else
    {
      sub_1D22BD238(&v25, &qword_1EC6D9A18);
      v14 = type metadata accessor for RemoveImageConditioningRepresentationOperation();
      sub_1D22D7044(v29, &v25);
      v15 = v26;
      v16 = v27;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(&v25, v26);
      v18 = MEMORY[0x1EEE9AC00](v17);
      v20 = &v23[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v21 + 16))(v20, v18);
      v13 = sub_1D27F0DA0(v20, v4, v14, v15, v16);
    }

    __swift_destroy_boxed_opaque_existential_0(v29);
    __swift_destroy_boxed_opaque_existential_0(&v25);
  }

  else
  {
    sub_1D22BD238(&v25, &qword_1EC6D9A18);
    return 0;
  }

  return v13;
}

uint64_t sub_1D27FDB14()
{
  v1 = v0;
  swift_beginAccess();
  sub_1D27F0CC8(v0 + 16, &v6);
  if (v7)
  {
    v2 = v8;
    sub_1D22D79FC(&v6, v9);
    sub_1D267A600(v9, (*(v1 + 113) & 1) == 0, &v6);
    __swift_destroy_boxed_opaque_existential_0(v9);
    if (v7)
    {
      sub_1D22D79FC(&v6, v5);
      sub_1D22D79FC(v5, &v6);
      v8 = v2;
      swift_beginAccess();
      sub_1D22D3E98(&v6, v1 + 64);
      return swift_endAccess();
    }

    v4 = &unk_1EC6E1D30;
  }

  else
  {
    v4 = &qword_1EC6D9A18;
  }

  return sub_1D22BD238(&v6, v4);
}

uint64_t sub_1D27FDC28()
{
  sub_1D22BD238(v0 + 16, &qword_1EC6D9A18);
  sub_1D22BD238(v0 + 64, &qword_1EC6D9A18);

  return swift_deallocClassInstance();
}

uint64_t sub_1D27FDCE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a5;
  v17 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v11 = swift_allocObject();
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 112) = 1;
  *(v11 + 114) = 1;
  sub_1D22D79FC(&v15, v13);
  v14 = a2;
  swift_beginAccess();
  sub_1D22D3E98(v13, v11 + 16);
  swift_endAccess();
  *(v11 + 113) = a3;
  return v11;
}

uint64_t sub_1D27FDDDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2816278(&qword_1ED8A4480, type metadata accessor for ErrorViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D22BD1D0(v3 + 32, a2, &qword_1EC6DA108);
}

uint64_t sub_1D27FDEAC(uint64_t a1)
{
  sub_1D22BD1D0(a1, v2, &qword_1EC6DA108);
  swift_getKeyPath();
  sub_1D2816278(&qword_1ED8A4480, type metadata accessor for ErrorViewModel);
  sub_1D28719D8();

  return sub_1D22BD238(v2, &qword_1EC6DA108);
}

void sub_1D27FDFC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v38 - v5;
  v7 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v38[1] = v9;
  v39 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v38 - v11;
  v13 = sub_1D23C7CA8();
  v14 = sub_1D2878068();
  v42 = sub_1D2878068();
  v15 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v13 + 48))
  {
    sub_1D2870F68();
    v16 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v15;
    sub_1D24E8054(v16, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v15 = v45;
  }

  v18 = sub_1D2878068();
  v19 = sub_1D2418030(v15);

  if (v19)
  {
    type metadata accessor for IAPayloadKey(0);
    v41 = v20;
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D2816278(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v21 = sub_1D2877E78();
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_opt_self();
  v23 = v42;
  [v22 asyncSendSignal:v42 toChannel:v14 withNullableUniqueStringID:v18 withPayload:v21];

  v24 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_previewsStore);
  swift_getKeyPath();
  v45 = v24;
  sub_1D2816278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  if (!*(*(v24 + 16) + 16))
  {
    goto LABEL_9;
  }

  sub_1D280DAE0(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D22BD238(v6, &qword_1EC6D9490);
LABEL_9:
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D233E200();
    v25 = swift_allocError();
    *v26 = 0;
    sub_1D25428EC(v25);

    return;
  }

  sub_1D28159F0(v6, v12, type metadata accessor for ImageGeneration.PreviewImage);
  swift_getKeyPath();
  v44 = v1;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v27 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__previewsSavedInBackground;
  swift_beginAccess();
  if (!*(*(v1 + v27) + 16) || (sub_1D2870F68(), sub_1D25D064C(v12), v29 = v28, , (v29 & 1) == 0))
  {
    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground) == 1)
    {
      *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v38[-2] = v1;
      LOBYTE(v38[-1]) = 1;
      v43 = v1;
      sub_1D28719D8();
    }

    v31 = sub_1D28785F8();
    v32 = v40;
    (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
    v33 = v39;
    sub_1D2815DC8(v12, v39, type metadata accessor for ImageGeneration.PreviewImage);
    sub_1D2878568();
    sub_1D2870F78();
    v34 = sub_1D2878558();
    v35 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E85E0];
    v36[2] = v34;
    v36[3] = v37;
    v36[4] = v1;
    sub_1D28159F0(v33, v36 + v35, type metadata accessor for ImageGeneration.PreviewImage);
    sub_1D22AE01C(0, 0, v32, &unk_1D28A9FA0, v36);
  }

  sub_1D2815E30(v12, type metadata accessor for ImageGeneration.PreviewImage);
}

uint64_t sub_1D27FE72C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2816278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  *a2 = *(v3 + 16);
  return sub_1D2870F68();
}

uint64_t MagicViewModel.load(fromAPIRecipe:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  swift_getKeyPath();
  v15 = v1;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__loadRecipeTask))
  {
    sub_1D2870F78();
    sub_1D28786B8();
  }

  v6 = sub_1D28785F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_1D2878568();
  sub_1D2870F78();
  v8 = a1;
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = v8;

  v12 = sub_1D22AE01C(0, 0, v5, &unk_1D28A9758, v10);
  return sub_1D280B250(v12);
}

Swift::Void __swiftcall MagicViewModel.reset()()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  sub_1D2872658();
  v9 = sub_1D2873CA8();
  v10 = sub_1D28789F8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D226E000, v9, v10, "MagicViewModel - reset()", v11, 2u);
    MEMORY[0x1D38A3520](v11, -1, -1);
  }

  v26 = *(v3 + 8);
  v27 = v2;
  v26(v8, v2);
  sub_1D2803FA4();
  sub_1D26742D0();
  sub_1D267F6F0();
  sub_1D267E8EC();

  v12 = sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel, sub_1D28078D0);
  if (*(v12 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) == 1)
  {
    v13 = v12;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v26 - 2) = v13;
    *(&v26 - 8) = 0;
    v28 = v13;
    sub_1D2816278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v12 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) = 0;
  }

  [*(*(*__swift_project_boxed_opaque_existential_1((v1 + 88) *(v1 + 112)) + 48) + 16)];
  v15 = sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___animatedEffectsViewModel, sub_1D28083D8);
  v16 = sub_1D2673120();
  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_isIdle;
  v18 = (v16 & 1) == 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_isIdle) = v18;
  sub_1D2872658();
  sub_1D2870F78();
  v19 = sub_1D2873CA8();
  v20 = sub_1D28789F8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = *(v15 + v17);

    _os_log_impl(&dword_1D226E000, v19, v20, "MagicEffectViewModel - isIdle: %{BOOL}d", v21, 8u);
    MEMORY[0x1D38A3520](v21, -1, -1);
  }

  else
  {
  }

  v26(v5, v27);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  sub_1D2758420(v15, sub_1D2814ADC, v22);

  v23 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v23);
  *(&v26 - 3) = 0;
  *(&v26 - 2) = 0;
  *(&v26 - 4) = v1;
  *(&v26 - 8) = -4;
  v28 = v1;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719D8();

  v24 = (v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation);
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 16) == 255)
  {
    *v24 = 0;
    v24[1] = 0;
  }

  else
  {
    v25 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v25);
    *(&v26 - 3) = 0;
    *(&v26 - 2) = 0;
    *(&v26 - 4) = v1;
    *(&v26 - 8) = -1;
    v28 = v1;
    sub_1D28719D8();
  }
}

uint64_t sub_1D27FEFE4(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v60 = sub_1D2873CB8();
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v12 = &Height - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &Height - v14;
  sub_1D2802B24(*&a4, *&a5, 0);
  swift_getKeyPath();
  v66.x = v5;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v16 = *&v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state;
  v18 = *(*&v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state);
  v17 = *(*&v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 8);
  v20 = *(*&v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 16);
  v19 = *(*&v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 24);
  if (*(*&v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 32))
  {
    v66.x = *(*&v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state);
    v66.y = v17;
    *&v67 = v20;
    *(&v67 + 1) = v19;
    v68 = 1;
  }

  else
  {
    if (a3)
    {
      swift_getKeyPath();
      v66.x = v5;
      sub_1D28719E8();

      v21 = *(v16 + 32);
      v22 = *(v16 + 16);
      v66 = *v16;
      v67 = v22;
      v68 = v21;
      sub_1D24F62E8(v64);
      v62[0] = v64[0];
      v62[1] = v64[1];
      v63 = v65;
      return sub_1D28027A0(v62);
    }

    v24 = *(*&v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state);
    v25 = *(*&v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 8);
    v26 = *(*&v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 16);
    v27 = *(*&v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 24);
    v59 = a4 / *&a1;
    v58 = a5 / *&a2;
    v69.origin.x = v18;
    v69.origin.y = v17;
    v69.size.width = v20;
    v69.size.height = v27;
    MinX = CGRectGetMinX(v69);
    v70.origin.x = v24;
    v70.origin.y = v25;
    v70.size.width = v26;
    v70.size.height = v27;
    MinY = CGRectGetMinY(v70);
    v71.origin.x = v24;
    v71.origin.y = v25;
    v71.size.width = v26;
    v71.size.height = v27;
    Width = CGRectGetWidth(v71);
    v72.origin.x = v24;
    v72.origin.y = v25;
    v72.size.width = v26;
    v72.size.height = v27;
    Height = CGRectGetHeight(v72);
    sub_1D28724E8();
    v28 = sub_1D2873CA8();
    v29 = sub_1D2878A08();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v66.x = v31;
      *v30 = 136315394;
      v32 = sub_1D2878CB8();
      v34 = sub_1D23D7C84(v32, v33, &v66);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = sub_1D2878CB8();
      v37 = sub_1D23D7C84(v35, v36, &v66);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_1D226E000, v28, v29, "updateEditFrameIfNeeded - previousEffectSize: %s - newEffectSize: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v31, -1, -1);
      MEMORY[0x1D38A3520](v30, -1, -1);
    }

    v38 = *(v61 + 8);
    v39 = v60;
    v38(v15, v60);
    v40 = v59 * MinX;
    v41 = v58 * MinY;
    v42 = v59 * Width;
    v43 = v58 * Height;
    sub_1D28724E8();
    v44 = sub_1D2873CA8();
    v45 = sub_1D2878A08();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v66.x = v47;
      *v46 = 136315394;
      v48 = sub_1D2878CA8();
      v50 = sub_1D23D7C84(v48, v49, &v66);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = sub_1D2878CA8();
      v53 = sub_1D23D7C84(v51, v52, &v66);

      *(v46 + 14) = v53;
      _os_log_impl(&dword_1D226E000, v44, v45, "updateEditFrameIfNeeded - editViewFrame: %s - newFrame: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v47, -1, -1);
      MEMORY[0x1D38A3520](v46, -1, -1);
    }

    v38(v12, v39);
    v66.x = v40;
    v66.y = v41;
    *&v67 = v42;
    *(&v67 + 1) = v43;
    v68 = 0;
  }

  return sub_1D2802914(&v66);
}

uint64_t sub_1D27FF5A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17[-v7];
  swift_getKeyPath();
  v18 = v3;
  v19 = a1;
  v20 = a2;
  *&v25 = v3;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719D8();

  swift_getKeyPath();
  *&v25 = v3;
  sub_1D28719E8();

  v9 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 32);
  v10 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 16);
  v25 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state);
  v26 = v10;
  v27 = v9;
  sub_1D24F62E8(v23);
  v21[0] = v23[0];
  v21[1] = v23[1];
  v22 = v24;
  sub_1D28027A0(v21);
  v11 = sub_1D2803FA4();
  sub_1D2350204(v3, v11);

  sub_1D28719C8();
  v12 = sub_1D28785F8();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  sub_1D2878568();
  sub_1D2870F78();
  v13 = sub_1D2878558();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v3;
  sub_1D22AE01C(0, 0, v8, &unk_1D28A9D78, v14);
}

uint64_t sub_1D27FF854(uint64_t a1)
{
  v72 = a1;
  v1 = sub_1D2873CB8();
  v69 = *(v1 - 8);
  v70 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v68 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v76 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE50);
  v71 = *(v5 - 8);
  v6 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v66 - v8;
  v9 = sub_1D2871CA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  v15 = sub_1D2871CD8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D2811280();
  v74 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x1E699C258], v15);
  v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_featureDomain;
  swift_beginAccess();
  (*(v16 + 40))(v19 + v20, v18, v15);
  v21 = v9;
  swift_endAccess();
  v22 = *(v10 + 16);
  v23 = v72;
  v22(v14);
  v24 = *(v10 + 88);
  v67 = v14;
  v25 = v24(v14, v9);
  if (v25 == *MEMORY[0x1E699C1F0])
  {
    v26 = sub_1D23C7998();
    v27 = v75;
    (*(v10 + 56))(v75, 1, 1, v21);
    v28 = sub_1D28785F8();
    v29 = v76;
    (*(*(v28 - 8) + 56))(v76, 1, 1, v28);
    v31 = v73;
    v30 = v74;
    sub_1D22BD1D0(v27, v73, &unk_1EC6DDE50);
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v32 = sub_1D2878558();
    v33 = (*(v71 + 80) + 48) & ~*(v71 + 80);
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    v34[2] = v32;
    v34[3] = v35;
    v34[4] = v30;
    v34[5] = v26;
    sub_1D22EC9BC(v31, v34 + v33, &unk_1EC6DDE50);
    sub_1D22AE01C(0, 0, v29, &unk_1D2881A70, v34);

    return sub_1D22BD238(v27, &unk_1EC6DDE50);
  }

  v37 = v73;
  v38 = v75;
  v39 = v76;
  if (v25 == *MEMORY[0x1E699C1C8])
  {
    v40 = sub_1D23C7998();
    (*(v10 + 56))(v38, 1, 1, v21);
    v41 = sub_1D28785F8();
    (*(*(v41 - 8) + 56))(v39, 1, 1, v41);
    v42 = v74;
    sub_1D22BD1D0(v38, v37, &unk_1EC6DDE50);
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v43 = sub_1D2878558();
    v44 = (*(v71 + 80) + 48) & ~*(v71 + 80);
    v45 = swift_allocObject();
    v46 = MEMORY[0x1E69E85E0];
    v45[2] = v43;
    v45[3] = v46;
    v45[4] = v42;
    v45[5] = v40;
    sub_1D22EC9BC(v37, v45 + v44, &unk_1EC6DDE50);
    v47 = &unk_1D28A12C0;
LABEL_7:
    sub_1D22AE01C(0, 0, v39, v47, v45);

    return sub_1D22BD238(v38, &unk_1EC6DDE50);
  }

  if (v25 == *MEMORY[0x1E699C1D8])
  {
    v48 = sub_1D23C7998();
    (*(v10 + 56))(v38, 1, 1, v21);
    v49 = sub_1D28785F8();
    (*(*(v49 - 8) + 56))(v39, 1, 1, v49);
    v50 = v74;
    sub_1D22BD1D0(v38, v37, &unk_1EC6DDE50);
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v51 = sub_1D2878558();
    v52 = (*(v71 + 80) + 48) & ~*(v71 + 80);
    v45 = swift_allocObject();
    v53 = MEMORY[0x1E69E85E0];
    v45[2] = v51;
    v45[3] = v53;
    v45[4] = v50;
    v45[5] = v48;
    sub_1D22EC9BC(v37, v45 + v52, &unk_1EC6DDE50);
    v47 = &unk_1D2881A78;
    goto LABEL_7;
  }

  v54 = v68;
  sub_1D28726D8();
  v55 = v66;
  v56 = v21;
  (v22)(v66, v23, v21);
  v57 = sub_1D2873CA8();
  v58 = sub_1D2878A18();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v77[0] = v76;
    *v59 = 136315138;
    sub_1D2816278(&qword_1EC6DA1E8, MEMORY[0x1E699C1F8]);
    LODWORD(v75) = v58;
    v60 = sub_1D28795C8();
    v62 = v61;
    v63 = *(v10 + 8);
    v63(v55, v56);
    v64 = sub_1D23D7C84(v60, v62, v77);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_1D226E000, v57, v75, "feedback action %s not supported for preview image on MagicViewModel", v59, 0xCu);
    v65 = v76;
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x1D38A3520](v65, -1, -1);
    MEMORY[0x1D38A3520](v59, -1, -1);
  }

  else
  {

    v63 = *(v10 + 8);
    v63(v55, v56);
  }

  (*(v69 + 8))(v54, v70);
  return (v63)(v67, v56);
}

uint64_t sub_1D28001C4(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v112 = a4;
  v126 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v99 - v7;
  v131 = sub_1D2871818();
  v9 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v117 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v99 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v120 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v99 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v132 = &v99 - v17;
  v116 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v130 = *(v116 - 8);
  v18 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v110 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v99 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v133 = (&v99 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v114 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v99 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v118 = &v99 - v29;
  v30 = sub_1D2873CB8();
  v119 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v109 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v99 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v99 - v36;
  if (os_variant_has_internal_ui())
  {
    v107 = v8;
    sub_1D28726D8();
    v38 = sub_1D2873CA8();
    v39 = sub_1D2878A08();
    v40 = os_log_type_enabled(v38, v39);
    v103 = a2;
    v102 = v18;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v135 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1D23D7C84(0xD000000000000038, 0x80000001D28C4B60, &v135);
      _os_log_impl(&dword_1D226E000, v38, v39, "%s - will generate recipe", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1D38A3520](v42, -1, -1);
      MEMORY[0x1D38A3520](v41, -1, -1);
    }

    v104 = *(v119 + 8);
    v104(v34, v30);
    sub_1D22BD1D0(v126, v27, &qword_1EC6D9490);
    v43 = v130;
    v44 = *(v130 + 48);
    v45 = v116;
    v106 = v130 + 48;
    v108 = v44;
    if (v44(v27, 1, v116) == 1)
    {
      v46 = *(v129 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_previewsStore);
      swift_getKeyPath();
      v135 = v46;
      sub_1D2816278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
      sub_1D28719E8();

      swift_beginAccess();
      v47 = *(v46 + 16);
      v48 = *(v47 + 16);
      v101 = v27;
      v126 = v48;
      if (v48)
      {
        v99 = v30;
        v100 = a3;
        v124 = v47 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v122 = (v9 + 56);
        v123 = (v9 + 16);
        v49 = (v9 + 48);
        v105 = (v9 + 32);
        v115 = (v9 + 8);
        result = sub_1D2870F68();
        v51 = 0;
        v52 = v121;
        v125 = v47;
        while (1)
        {
          if (v51 >= *(v47 + 16))
          {
            __break(1u);
            return result;
          }

          v55 = v133;
          sub_1D2815DC8(v124 + *(v43 + 72) * v51, v133, type metadata accessor for ImageGeneration.PreviewImage);
          v56 = v131;
          v57 = v132;
          (*v123)(v132, v55, v131);
          (*v122)(v57, 0, 1, v56);
          v58 = sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel, sub_1D28078D0);
          swift_getKeyPath();
          v134 = v58;
          sub_1D2816278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
          sub_1D28719E8();

          v59 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
          swift_beginAccess();
          sub_1D22BD1D0(v58 + v59, v52, &qword_1EC6D8F70);

          v60 = v127;
          v61 = *(v128 + 48);
          sub_1D22BD1D0(v57, v127, &qword_1EC6D8F70);
          sub_1D22BD1D0(v52, v60 + v61, &qword_1EC6D8F70);
          v62 = *v49;
          if ((*v49)(v60, 1, v56) == 1)
          {
            sub_1D22BD238(v52, &qword_1EC6D8F70);
            sub_1D22BD238(v57, &qword_1EC6D8F70);
            v53 = v62(v60 + v61, 1, v56);
            v54 = v60;
            v43 = v130;
            v47 = v125;
            if (v53 == 1)
            {
              sub_1D22BD238(v54, &qword_1EC6D8F70);
LABEL_23:

              v75 = v118;
              sub_1D28159F0(v133, v118, type metadata accessor for ImageGeneration.PreviewImage);
              v78 = 0;
              a3 = v100;
LABEL_24:
              v30 = v99;
              v45 = v116;
              goto LABEL_25;
            }
          }

          else
          {
            v63 = v60;
            v54 = v60;
            v64 = v120;
            sub_1D22BD1D0(v63, v120, &qword_1EC6D8F70);
            if (v62(v54 + v61, 1, v56) != 1)
            {
              v65 = v64;
              v66 = v117;
              v67 = v131;
              (*v105)(v117, v54 + v61, v131);
              sub_1D2816278(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
              v113 = sub_1D2877F98();
              v68 = *v115;
              (*v115)(v66, v67);
              sub_1D22BD238(v121, &qword_1EC6D8F70);
              sub_1D22BD238(v132, &qword_1EC6D8F70);
              v69 = v65;
              v52 = v121;
              v68(v69, v67);
              sub_1D22BD238(v54, &qword_1EC6D8F70);
              v43 = v130;
              v47 = v125;
              if (v113)
              {
                goto LABEL_23;
              }

              goto LABEL_9;
            }

            sub_1D22BD238(v52, &qword_1EC6D8F70);
            sub_1D22BD238(v132, &qword_1EC6D8F70);
            (*v115)(v64, v131);
            v43 = v130;
            v47 = v125;
          }

          sub_1D22BD238(v54, &qword_1EC6D94F0);
LABEL_9:
          ++v51;
          result = sub_1D2815E30(v133, type metadata accessor for ImageGeneration.PreviewImage);
          if (v126 == v51)
          {

            v78 = 1;
            a3 = v100;
            v75 = v118;
            goto LABEL_24;
          }
        }
      }

      v78 = 1;
      v75 = v118;
LABEL_25:
      (*(v43 + 56))(v75, v78, 1, v45);
      v79 = v101;
      v80 = v108(v101, 1, v45);
      v76 = v107;
      v77 = v114;
      if (v80 != 1)
      {
        sub_1D22BD238(v79, &qword_1EC6D9490);
      }
    }

    else
    {
      v74 = v27;
      v75 = v118;
      sub_1D28159F0(v74, v118, type metadata accessor for ImageGeneration.PreviewImage);
      (*(v43 + 56))(v75, 0, 1, v45);
      v76 = v107;
      v77 = v114;
    }

    sub_1D22BD1D0(v75, v77, &qword_1EC6D9490);
    if (v108(v77, 1, v45) == 1)
    {
      sub_1D22BD238(v77, &qword_1EC6D9490);
      v81 = v109;
      sub_1D28726D8();
      v82 = sub_1D2873CA8();
      v83 = sub_1D2878A18();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_1D226E000, v82, v83, "Preview is nil.", v84, 2u);
        MEMORY[0x1D38A3520](v84, -1, -1);
      }

      v104(v81, v30);
      v85 = v75;
    }

    else
    {
      v133 = type metadata accessor for ImageGeneration.PreviewImage;
      v86 = v111;
      sub_1D28159F0(v77, v111, type metadata accessor for ImageGeneration.PreviewImage);
      v87 = sub_1D28785F8();
      (*(*(v87 - 8) + 56))(v76, 1, 1, v87);
      v88 = v110;
      sub_1D2815DC8(v86, v110, type metadata accessor for ImageGeneration.PreviewImage);
      sub_1D2878568();
      v89 = v129;
      sub_1D2870F78();
      v90 = v43;
      v91 = v103;
      sub_1D22D6CF8(v103, a3);
      v92 = sub_1D2878558();
      v93 = (*(v90 + 80) + 56) & ~*(v90 + 80);
      v94 = a3;
      v95 = v93 + v102;
      v96 = v76;
      v97 = swift_allocObject();
      v98 = MEMORY[0x1E69E85E0];
      v97[2] = v92;
      v97[3] = v98;
      v97[4] = v89;
      v97[5] = v91;
      v97[6] = v94;
      sub_1D28159F0(v88, v97 + v93, v133);
      *(v97 + v95) = v112 & 1;
      sub_1D23C8994(0, 0, v96, &unk_1D28A9EA0, v97);

      sub_1D2815E30(v86, type metadata accessor for ImageGeneration.PreviewImage);
      v85 = v118;
    }

    return sub_1D22BD238(v85, &qword_1EC6D9490);
  }

  else
  {
    sub_1D28726D8();
    v70 = sub_1D2873CA8();
    v71 = sub_1D2878A08();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v135 = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_1D23D7C84(0xD000000000000038, 0x80000001D28C4B60, &v135);
      _os_log_impl(&dword_1D226E000, v70, v71, "%s - not valid environment, will skip donation", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x1D38A3520](v73, -1, -1);
      MEMORY[0x1D38A3520](v72, -1, -1);
    }

    return (*(v119 + 8))(v37, v30);
  }
}

uint64_t sub_1D2801194(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation;
  v8 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation);
  v9 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 8);
  v10 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 16);
  if (v10 == 255)
  {
    if (a3 == -1)
    {
      goto LABEL_4;
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
    sub_1D22FD918(a1, a2, a3);
  }

  if (a3 == -1 || (sub_1D23DA32C(*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation), *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 8), *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 16), a1, a2, a3) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;

  return sub_1D22FD918(v8, v9, v10);
}

uint64_t sub_1D2801344(char a1)
{
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__shouldShowPersonalizationSheet;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__shouldShowPersonalizationSheet) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__shouldShowPersonalizationSheet) = a1 & 1;
    swift_getKeyPath();
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719E8();

    if (*(v1 + v2) == 1)
    {
      sub_1D23C7044();
      v5 = sub_1D27ED8C8();

      if ((v5 & 1) == 0)
      {
        return sub_1D2801344(0);
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2801524@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D28015D4()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
  sub_1D28719D8();
}

Swift::Void __swiftcall MagicViewModel.performUpscalingOrCancel()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-v3];
  v5 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_previewsStore);
  swift_getKeyPath();
  v13 = v5;
  sub_1D2816278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  if (*(*(v5 + 16) + 16))
  {
    v6 = sub_1D28785F8();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_1D2878568();
    sub_1D2870F78();
    v7 = sub_1D2878558();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v1;
    sub_1D22AE01C(0, 0, v4, &unk_1D28A9808, v8);
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v0 + 64);
      ObjectType = swift_getObjectType();
      (*(v10 + 24))(v0, ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D28018E4@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v55 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v47[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v47[-v14];
  v52 = v3;
  v16 = *(v3 + 72);
  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(&v16[v17], v57, &qword_1EC6D9A58);
  if (v58)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
    v18 = type metadata accessor for CharacterAsset();
    v19 = swift_dynamicCast();
    (*(*(v18 - 8) + 56))(v15, v19 ^ 1u, 1, v18);
  }

  else
  {
    sub_1D22BD238(v57, &qword_1EC6D9A58);
    v18 = type metadata accessor for CharacterAsset();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  }

  type metadata accessor for CharacterAsset();
  v20 = *(*(v18 - 8) + 48);
  v53 = v15;
  v21 = v20(v15, 1, v18);
  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  sub_1D22BD1D0(&v16[v22], v12, &qword_1EC6DA2C8);
  v23 = type metadata accessor for SceneConditioningImage();
  LODWORD(v22) = (*(*(v23 - 8) + 48))(v12, 1, v23);
  sub_1D22BD238(v12, &qword_1EC6DA2C8);
  v24 = 1;
  if (v22 == 1)
  {
    sub_1D22BD1D0(&v16[v17], v57, &qword_1EC6D9A58);
    if (v58)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      v25 = type metadata accessor for PersonConditioningImage();
      v26 = swift_dynamicCast();
      (*(*(v25 - 8) + 56))(v9, v26 ^ 1u, 1, v25);
    }

    else
    {
      sub_1D22BD238(v57, &qword_1EC6D9A58);
      v25 = type metadata accessor for PersonConditioningImage();
      (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    }

    type metadata accessor for PersonConditioningImage();
    v24 = (*(*(v25 - 8) + 48))(v9, 1, v25) == 0;
    sub_1D22BD238(v9, &qword_1EC6D9A40);
  }

  v50 = v24;
  v51 = v21 == 0;
  sub_1D22BD1D0(&v16[v17], v57, &qword_1EC6D9A58);
  v48 = v58 != 0;
  sub_1D22BD238(v57, &qword_1EC6D9A58);
  v27 = v55;
  v49 = v55 == 0;
  v28 = *(sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel, sub_1D28078D0) + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v57[0] = v28;
  sub_1D2816278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v29 = *(v28 + 16);
  sub_1D2870F68();

  v52 = *(v29 + 16);

  sub_1D23969C0(v16, 0, v57);
  v30 = sub_1D2391C00();
  v32 = v31;
  sub_1D233E6C8(v57);
  v33 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v34 = *&v16[v33];
  v35 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v36 = *(*&v16[v35] + 16);
  v37 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v38 = sub_1D2872008();
  v39 = *(v38 - 8);
  v40 = &v16[v37];
  v41 = v54;
  (*(v39 + 16))(v54, v40, v38);
  (*(v39 + 56))(v41, 0, 1, v38);
  sub_1D2870F68();
  LOBYTE(v38) = sub_1D24198DC(v41);
  v42 = type metadata accessor for Analytics.ImageGenerationEventPayload();
  sub_1D2871808();
  *a3 = 2;
  *(a3 + 1) = v27;
  *(a3 + 2) = v56;
  *(a3 + 8) = 0;
  *(a3 + 16) = v51;
  *(a3 + 17) = v50;
  *(a3 + 18) = v48;
  *(a3 + 19) = 2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  *(a3 + 72) = 0;
  *(a3 + 80) = 1;
  v43 = v52;
  *(a3 + 88) = v49;
  *(a3 + 96) = v43;
  *(a3 + 104) = v30;
  *(a3 + 112) = v32;
  *(a3 + 120) = v34;
  *(a3 + 128) = v36;
  *(a3 + 136) = 0;
  *(a3 + 144) = 5;
  *(a3 + 145) = v38;
  *(a3 + 152) = 0;
  *(a3 + 160) = 1;
  v44 = (a3 + *(v42 + 104));
  *v44 = 0;
  v44[1] = 0;
  v45 = (a3 + *(v42 + 108));
  *v45 = 0;
  v45[1] = 0;
  return sub_1D22BD238(v53, &unk_1EC6DDDA0);
}

uint64_t sub_1D2802110(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1D2873CB8();
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = *(a1 + 32);
  v11 = sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___animatedEffectsViewModel, sub_1D28083D8);
  swift_getKeyPath();
  v38 = v2;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_isInWandState) = *(v2 + 48);

  swift_getKeyPath();
  v38 = v2;
  sub_1D28719E8();

  v12 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__latestEffectViewSize);
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__latestEffectViewSize + 16))
  {
    sub_1D28724E8();
    v13 = sub_1D2873CA8();
    v14 = sub_1D2878A18();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D226E000, v13, v14, "latestEffectViewSize is nil", v15, 2u);
      MEMORY[0x1D38A3520](v15, -1, -1);
    }

    return (*(v4 + 8))(v6, v37);
  }

  else
  {
    v18 = *v12;
    v17 = v12[1];
    swift_getKeyPath();
    v38 = v2;
    sub_1D28719E8();

    if (*(v2 + 48))
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v17;
      v20 = sub_1D2870F78();
      sub_1D2758420(v20, sub_1D2815D34, v19);
    }

    else
    {
      v21 = *(v2 + 16);
      v35 = *(v2 + 32);
      v36 = v21;
      v22 = v10;
      if (v10)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v23 = *(v2 + 64);
          ObjectType = swift_getObjectType();
          (*(v23 + 40))(v2, ObjectType, v23);
          swift_unknownObjectRelease();
        }
      }

      v25 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___animatedEffectsViewModel);
      sub_1D2870F78();
      v26 = sub_1D2673120();
      v27 = OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_isIdle;
      v28 = (v26 & 1) == 0;
      *(v25 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_isIdle) = v28;
      sub_1D2872658();
      sub_1D2870F78();
      v29 = sub_1D2873CA8();
      v30 = sub_1D28789F8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 67109120;
        *(v31 + 4) = *(v25 + v27);

        _os_log_impl(&dword_1D226E000, v29, v30, "MagicEffectViewModel - isIdle: %{BOOL}d", v31, 8u);
        MEMORY[0x1D38A3520](v31, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v9, v37);
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = v22;
      v34 = v35;
      *(v33 + 32) = v36;
      *(v33 + 48) = v34;
      *(v33 + 64) = v18;
      *(v33 + 72) = v17;
      *(v33 + 80) = v28;
      sub_1D2870F78();
      sub_1D2758420(v25, sub_1D2815D18, v33);
    }
  }
}

__n128 sub_1D2802600@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v3 = *(v1 + 48);
  result = *(v1 + 16);
  v5 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_1D28026B0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v4 = *(v3 + 48);
  result = *(v3 + 16);
  v6 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_1D2802760(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  return sub_1D28027A0(v4);
}

uint64_t sub_1D28027A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12.origin = *a1;
  v12.size = v2;
  v13 = *(a1 + 32);
  if (*(v1 + 48))
  {
    if (*(a1 + 32))
    {
      v3 = 1;
LABEL_7:
      v5 = *(v1 + 16);
      v6 = *(v1 + 32);
      v7 = *(a1 + 16);
      *(v1 + 16) = *a1;
      *(v1 + 32) = v7;
      *(v1 + 48) = *(a1 + 32);
      v10[0] = v5;
      v10[1] = v6;
      v11 = v3;
      return sub_1D2802110(v10);
    }
  }

  else if ((v13 & 1) == 0)
  {
    v4 = a1;
    if (CGRectEqualToRect(*(v1 + 16), v12))
    {
      a1 = v4;
      v3 = *(v1 + 48);
      goto LABEL_7;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D2802914(CGPoint *a1)
{
  v2 = a1[1];
  v18.origin = *a1;
  v18.size = v2;
  x_low = LOBYTE(a1[2].x);
  v3 = (*&v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state);
  if ((*(*&v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 32) & 1) == 0)
  {
    if (x_low)
    {
      goto LABEL_7;
    }

    v4 = a1;
    v5 = CGRectEqualToRect(*&v3->x, v18);
    a1 = v4;
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_6:
    v6 = a1[1];
    *v3 = *a1;
    v3[1] = v6;
    LOBYTE(v3[2].x) = LOBYTE(a1[2].x);
    swift_getKeyPath();
    v15.x = v1;
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719E8();

    v7 = LOBYTE(v3[2].x);
    v8 = v3[1];
    v15 = *v3;
    v16 = v8;
    v17 = v7;
    sub_1D24F62E8(v13);
    v11[0] = v13[0];
    v11[1] = v13[1];
    v12 = v14;
    return sub_1D28027A0(v11);
  }

  if (LOBYTE(a1[2].x))
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D2802B24(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__latestEffectViewSize;
  if ((*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__latestEffectViewSize + 16) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *v4 == *&result && *(v4 + 8) == *&a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
    *&result = COERCE_DOUBLE();
    return result;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v4 = *&result;
  *(v4 + 8) = *&a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

__n128 sub_1D2802C80@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 32);
  result = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state);
  v5 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 16);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D2802D3C(uint64_t result)
{
  if (*(v1 + 152) == (result & 1))
  {
    *(v1 + 152) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2802E4C(uint64_t result)
{
  if (*(v1 + 153) == (result & 1))
  {
    *(v1 + 153) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2802F5C(uint64_t result)
{
  if (*(v1 + 154) == (result & 1))
  {
    *(v1 + 154) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D280306C(uint64_t result)
{
  if (*(v1 + 155) == (result & 1))
  {
    *(v1 + 155) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D280317C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__pendingDisclosures;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16) == *(a1 + 16))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D28032B8(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear) = v2;

    return sub_1D2805F60(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D28033F4(char a1)
{
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__isLoadingRecipe;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__isLoadingRecipe) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__isLoadingRecipe) = a1 & 1;
    v5 = sub_1D2803FA4();
    swift_getKeyPath();
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719E8();

    v6 = *(v1 + v2);
    *(v5 + 24) = (v6 & 1) == 0;
    if ((v6 & 1) == 0)
    {
      sub_1D267F6F0();
      sub_1D267F94C();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D28035B0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D28036C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__previewsSavedInBackground;
  swift_beginAccess();
  v4 = sub_1D2870F68();
  v5 = sub_1D25579DC(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }
}

unsigned __int8 *sub_1D2803818(unsigned __int8 *result)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__creationViewStyle) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2803928(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v2[8] = swift_task_alloc();
  sub_1D2878568();
  v2[9] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D28039F8, v4, v3);
}

uint64_t sub_1D28039F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (!Strong)
  {
LABEL_4:

    v3 = v0[6];
    v4 = type metadata accessor for ImageGeneration.GenerationParameters();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

    v5 = v0[1];

    return v5();
  }

  v2 = Strong;
  swift_getKeyPath();
  v0[5] = v2;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__isLoadingRecipe))
  {

    goto LABEL_4;
  }

  v7 = v0[8];
  v8 = *(v2 + 72);
  sub_1D23C7044();
  v9 = sub_1D27ED8C8();

  v10 = sub_1D2871818();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_1D2803C50;
  v12 = v0[8];
  v13 = v0[6];

  return sub_1D238E3AC(v13, v8, v9 & 1, v12);
}

uint64_t sub_1D2803C50()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(*v1 + 112) = v0;

  sub_1D22BD238(v3, &qword_1EC6D8F70);
  v4 = *(v2 + 88);
  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1D2803E78;
  }

  else
  {
    v6 = sub_1D2803DB8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D2803DB8()
{

  v1 = *(v0 + 48);
  v2 = type metadata accessor for ImageGeneration.GenerationParameters();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D2803E78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2803F04(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  return *(v2 + *a2);
}

uint64_t sub_1D2803FA4()
{
  if (v0[17])
  {
    v1 = v0[17];
  }

  else
  {
    v2 = v0[9];
    v3 = v0[10];
    type metadata accessor for ImageConditioningRepresentationsManager();
    v1 = swift_allocObject();
    *(v1 + 24) = 1;
    v4 = MEMORY[0x1E69E7CC0];
    *(v1 + 40) = v2;
    *(v1 + 48) = v4;
    *(v1 + 32) = v4;
    *(v1 + 16) = v3;
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D267E8EC();
    v0[17] = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D280404C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D2873C28();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1D2873C48();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_1D2878568();
  v4[9] = sub_1D2878558();
  v8 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D280419C, v8, v7);
}

uint64_t sub_1D280419C()
{

  sub_1D28720E8();
  sub_1D2873C18();
  v1 = sub_1D2873C38();
  v2 = sub_1D2878BC8();
  if (sub_1D2878EE8())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v1, v2, v4, "MagicViewModel::prewarm", "", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];

  (*(v10 + 8))(v7, v9);
  (*(v6 + 8))(v5, v8);
  sub_1D2804320();
  sub_1D23C719C();
  VisualSummarizationClient.prewarm()();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2804320()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___creationContextFactory;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___creationContextFactory))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___creationContextFactory);
  }

  else
  {
    v3 = *(v0 + 80);
    sub_1D2870F78();
    v4 = sub_1D2803FA4();
    type metadata accessor for CreationContextFactory();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 32) = v4;
    *(v2 + 40) = 0;
    *(v2 + 24) = v3;
    *(v0 + v1) = v2;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v2;
}

uint64_t MagicViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MagicViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D28044EC;
}

void sub_1D28044EC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
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

uint64_t sub_1D2804570()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v2 = *(v0 + 80);
    type metadata accessor for PromptConceptAnalyzer();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = v2;
    *(v0 + 144) = v1;
    sub_1D2870F78();
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D28045E0()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  return *(v0 + 152);
}

uint64_t sub_1D2804688()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  return *(v0 + 153);
}

uint64_t sub_1D2804730()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  return *(v0 + 154);
}

uint64_t sub_1D28047D0()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  return *(v0 + 155);
}

uint64_t sub_1D2804894@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__onBoardingDescription;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v4, a2, &unk_1EC6E1D40);
}

uint64_t sub_1D280496C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D22BD1D0(a1, &v6 - v3, &unk_1EC6E1D40);
  return sub_1D2804A18(v4);
}

uint64_t sub_1D2804A18(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__onBoardingDescription;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &unk_1EC6E1D40);
  v7 = sub_1D2815280(v5, a1);
  sub_1D22BD238(v5, &unk_1EC6E1D40);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D22D7384(a1, v1 + v6, &unk_1EC6E1D40);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &unk_1EC6E1D40);
}

uint64_t sub_1D2804C14(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__onBoardingDescription;
  swift_beginAccess();
  sub_1D22D7384(a2, a1 + v4, &unk_1EC6E1D40);
  return swift_endAccess();
}

uint64_t sub_1D2804C90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  swift_getKeyPath();
  v13 = v0;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__isLoadingRecipe;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__isLoadingRecipe) & 1) == 0 && (sub_1D2675A60())
  {
    if (qword_1EC6D8BF0 != -1)
    {
      swift_once();
    }

    v5 = sub_1D2871318();
    v6 = v5;
    v7 = qword_1EC6E3C80;
LABEL_12:
    v9 = __swift_project_value_buffer(v5, v7);
    v10 = *(v6 - 8);
    (*(v10 + 16))(v3, v9, v6);
    (*(v10 + 56))(v3, 0, 1, v6);
    return sub_1D2804A18(v3);
  }

  swift_getKeyPath();
  v13 = v0;
  sub_1D28719E8();

  if ((*(v0 + v4) & 1) == 0 && (sub_1D2673120() & 1) == 0)
  {
    if (qword_1EC6D8BE8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D2871318();
    v6 = v5;
    v7 = qword_1EC6E3C68;
    goto LABEL_12;
  }

  v8 = sub_1D2871318();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  return sub_1D2804A18(v3);
}

uint64_t sub_1D2804F34(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__representations);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__representations) = result;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    while (v4 < *(v2 + 16))
    {
      sub_1D22D7044(v5, v9);
      sub_1D227268C(v9, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      result = swift_dynamicCast();
      if (result)
      {

        result = __swift_destroy_boxed_opaque_existential_0(v7);
        v6 = 1;
        goto LABEL_8;
      }

      ++v4;
      v5 += 40;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v6 = 0;
LABEL_8:
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_lastRepresentationsDidContainAPerson) = v6;
  }

  return result;
}

uint64_t sub_1D2805058()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  return sub_1D2870F68();
}

uint64_t sub_1D2805104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__representations);
  return sub_1D2870F68();
}

uint64_t sub_1D28051B8()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719D8();
}

id sub_1D2805284@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentLocalizedGenerationUpscalingError);
  v4 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentLocalizedGenerationUpscalingError + 8);
  v5 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentLocalizedGenerationUpscalingError + 16);
  v6 = v3;
  v7 = v4;
  v8 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentLocalizedGenerationUpscalingError + 16);
  if (v5 >= 0xFC)
  {
    v9 = sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel, sub_1D28078D0);
    swift_getKeyPath();
    sub_1D2816278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719E8();

    v6 = *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError);
    v7 = *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError + 8);
    v8 = *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError + 16);
    sub_1D2415B78(v6, v7, v8);
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  return sub_1D2415B78(v3, v4, v5);
}

id sub_1D280543C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v3 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentLocalizedGenerationUpscalingError;
  v4 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentLocalizedGenerationUpscalingError);
  v5 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentLocalizedGenerationUpscalingError + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;
  return sub_1D2415B78(v4, v5, v6);
}

uint64_t sub_1D280551C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v5;
}

uint64_t sub_1D2805584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1D28785F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1D2878568();
  sub_1D2870F78();
  v6 = sub_1D2878558();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1D22AE01C(0, 0, v4, &unk_1D28A9D88, v7);
}

uint64_t sub_1D28056A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a4;
  sub_1D2878568();
  *(v4 + 96) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2805740, v6, v5);
}

uint64_t sub_1D2805740()
{
  v12 = v0;

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = sub_1D280594C();
    sub_1D2805284(&v10);
    v2 = v11;
    if (v11 < 0xFCu)
    {
      v9 = v10;
      v4 = sub_1D233D7E0();
      v5 = v9;
      *(v0 + 32) = v2;
      v3 = &type metadata for ImageGeneration.GenerationError;
    }

    else
    {
      v3 = 0;
      v4 = 0;
      *(v0 + 32) = 0;
      v5 = 0uLL;
    }

    *(v0 + 16) = v5;
    *(v0 + 40) = v3;
    *(v0 + 48) = v4;
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v1;
    *(v6 + 24) = v0 + 16;
    *(v0 + 80) = v1;
    sub_1D2816278(&qword_1ED8A4480, type metadata accessor for ErrorViewModel);
    sub_1D28719D8();

    sub_1D22BD238(v0 + 16, &qword_1EC6DA108);
    sub_1D28719C8();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D280594C()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___errorViewModel;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___errorViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___errorViewModel);
  }

  else
  {
    v3 = *(v0 + 80);
    type metadata accessor for ErrorViewModel();
    v4 = swift_allocObject();
    sub_1D2870F78();
    sub_1D2870F78();
    v2 = sub_1D233C25C(v3, v0, v4);
    *(v0 + v1) = v2;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v2;
}

uint64_t sub_1D28059F8()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D2870F68();
}

uint64_t sub_1D2805AB0()
{
  sub_1D2805284(&v7);
  v1 = v9;
  if (v9 <= 0xFBu)
  {
    v4 = v7;
    v3 = v8;
    sub_1D233E72C(v7, v8, v9);
    sub_1D23C7044();
    v5 = sub_1D27ED8C8();

    v2 = sub_1D23DB1E4(&v7, v5 & 1, 0, 0);
    sub_1D2415B64(v4, v3, v1);
  }

  else
  {
    swift_getKeyPath();
    v7 = v0;
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719E8();

    v2 = *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation];
    sub_1D233EA00(v2, *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 8], v0[OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 16]);
  }

  return v2;
}

uint64_t sub_1D2805C08()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation);
  sub_1D233EA00(v1, *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 8), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 16));
  return v1;
}

uint64_t sub_1D2805CFC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_1D233EA00(*a1, v2, v3);
  return sub_1D2801194(v1, v2, v3);
}

uint64_t sub_1D2805D4C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation;
  v5 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation);
  v6 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 8);
  *v4 = a2;
  *(v4 + 8) = a3;
  v7 = *(v4 + 16);
  *(v4 + 16) = a4;
  sub_1D233EA00(a2, a3, a4);
  return sub_1D22FD918(v5, v6, v7);
}

uint64_t sub_1D2805DB4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v8 = v7 + *a2;
  v9 = *(v8 + 8);
  *a4 = *v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = *(v8 + 16);
  return a3();
}

uint64_t sub_1D2805E80()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D2805F60(char a1)
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear) == 1 && (a1 & 1) == 0)
  {
    return sub_1D28060DC();
  }

  swift_getKeyPath();
  sub_1D28719E8();

  if (*(v1 + v3) & 1) == 0 && (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(v1 + 64);
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(v1, ObjectType, v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D28060DC()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedPrompt();
  v48 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872658();
  swift_retain_n();
  v9 = sub_1D2873CA8();
  v10 = sub_1D28789F8();
  v11 = &qword_1EC6E2000;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109632;
    swift_getKeyPath();
    v53 = v0;
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719E8();

    *(v12 + 4) = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear);

    *(v12 + 8) = 1024;
    *(v12 + 10) = sub_1D2673C1C();

    *(v12 + 14) = 1024;
    *(v12 + 16) = sub_1D2673120() & 1;

    _os_log_impl(&dword_1D226E000, v9, v10, "MagicViewModel - contextDidChange - didAppear: %{BOOL}d - context.isEmpty: %{BOOL}d - context.canGenerate: %{BOOL}d", v12, 0x14u);
    v13 = v12;
    v11 = &qword_1EC6E2000;
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  else
  {
  }

  (*(v6 + 8))(v8, v5);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v44[-3] = 0;
  v44[-2] = 0;
  v44[-4] = v0;
  LOBYTE(v44[-1]) = -4;
  v15 = v11[312];
  v53 = v0;
  v16 = sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719D8();

  v17 = (v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation);
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 16) == 255)
  {
    *v17 = 0;
    v17[1] = 0;
  }

  else
  {
    v18 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v18);
    v44[-3] = 0;
    v44[-2] = 0;
    v44[-4] = v0;
    LOBYTE(v44[-1]) = -1;
    v53 = v0;
    sub_1D28719D8();
  }

  sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel, sub_1D28078D0);
  sub_1D25A4D3C(0);

  v49 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel;
  v19 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel);
  if (*(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode))
  {
    v20 = swift_getKeyPath();
    v50 = v44;
    MEMORY[0x1EEE9AC00](v20);
    v44[-2] = v19;
    LOBYTE(v44[-1]) = 0;
    v53 = v19;
    sub_1D2816278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D2870F78();
    sub_1D28719D8();
  }

  else
  {
    *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) = 0;
  }

  sub_1D2804C90();
  swift_getKeyPath();
  v53 = v0;
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear) == 1)
  {
    v50 = v15;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v0 + 64);
      ObjectType = swift_getObjectType();
      (*(v22 + 8))(v0, ObjectType, v22);
      swift_unknownObjectRelease();
    }

    v24 = *(v0 + 80);
    sub_1D23C7CA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D287F500;
    *(inited + 32) = 0x65727574616546;
    *(inited + 40) = 0xE700000000000000;
    swift_getKeyPath();
    v52 = v0;
    sub_1D28719E8();

    v47 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__creationViewStyle;
    v26 = sub_1D2878068();

    *(inited + 48) = v26;
    v27 = sub_1D25D6F4C(inited);
    swift_setDeallocating();
    sub_1D22BD238(inited + 32, &qword_1EC6DA198);
    sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0x7261657070414955, 0xEA00000000006465, v27, 0);

    v28 = *(v1 + 72);
    if (sub_1D2673120())
    {
      v46 = v16;
      sub_1D2870F78();
      sub_1D25A5800(0);

      sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___descriptionFieldWithSuggestionsViewModel, sub_1D28089F4);
      v29 = sub_1D2740188();

      v30 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
      swift_beginAccess();
      v31 = *(v28 + v30);
      v32 = *(v31 + 16);
      v33 = MEMORY[0x1E69E7CC0];
      if (v32)
      {
        v44[1] = v29;
        v45 = v28;
        v49 = v24;
        v51 = MEMORY[0x1E69E7CC0];
        sub_1D2870F68();
        sub_1D23D81B8(0, v32, 0);
        v33 = v51;
        v34 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v44[0] = v31;
        v35 = v31 + v34;
        v36 = *(v48 + 72);
        do
        {
          sub_1D2815DC8(v35, v4, type metadata accessor for CuratedPrompt);
          v38 = *v4;
          v37 = v4[1];
          sub_1D2870F68();
          sub_1D2815E30(v4, type metadata accessor for CuratedPrompt);
          v51 = v33;
          v40 = *(v33 + 16);
          v39 = *(v33 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_1D23D81B8((v39 > 1), v40 + 1, 1);
            v33 = v51;
          }

          *(v33 + 16) = v40 + 1;
          v41 = v33 + 16 * v40;
          *(v41 + 32) = v38;
          *(v41 + 40) = v37;
          v35 += v36;
          --v32;
        }

        while (v32);

        v28 = v45;
      }

      v42 = sub_1D233C990(v33);

      sub_1D27A10AC(v42);

      sub_1D23C7CA8();
      swift_getKeyPath();
      v51 = v1;
      sub_1D28719E8();

      LOBYTE(v51) = *(v1 + v47);
      sub_1D2416968(v28);
    }

    sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___animatedEffectsViewModel, sub_1D28083D8);
    v43 = sub_1D2673120();
    sub_1D27D555C((v43 & 1) == 0);
  }

  return result;
}

uint64_t sub_1D2806B20(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear);
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear) = a2;
  return sub_1D2805F60(v3);
}

uint64_t sub_1D2806B5C(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__isLoadingRecipe;
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__isLoadingRecipe) = a2;
  v4 = sub_1D2803FA4();
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v5 = *(a1 + v3);
  *(v4 + 24) = v5 ^ 1;
  if ((v5 & 1) == 0)
  {
    sub_1D267F6F0();
    sub_1D267F94C();
  }
}

uint64_t sub_1D2806C58(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__shouldShowPersonalizationSheet;
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__shouldShowPersonalizationSheet) = a2;
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  if (*(a1 + v3) == 1)
  {
    sub_1D23C7044();
    v5 = sub_1D27ED8C8();

    if ((v5 & 1) == 0)
    {
      return sub_1D2801344(0);
    }
  }

  return result;
}

uint64_t sub_1D2806D64@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v7 = *a1;
  swift_beginAccess();
  return sub_1D22BD1D0(v9 + v7, a3, a2);
}

uint64_t sub_1D2806E44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__selectedPerson;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v9, v8, &qword_1EC6D8F80);
  v10 = sub_1D2814AE4(v8, a1);
  sub_1D22BD238(v8, &qword_1EC6D8F80);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v18[-2] = v1;
    v18[-1] = a1;
    v18[2] = v1;
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  else
  {
    sub_1D22BD1D0(a1, v8, &qword_1EC6D8F80);
    swift_beginAccess();
    sub_1D22D7384(v8, v1 + v9, &qword_1EC6D8F80);
    swift_endAccess();
    v12 = sub_1D28785F8();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    sub_1D2878568();
    sub_1D2870F78();
    v13 = v1;
    v14 = sub_1D2878558();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    sub_1D22AE01C(0, 0, v5, &unk_1D28A9BC8, v15);

    sub_1D22BD238(v8, &qword_1EC6D8F80);
  }

  return sub_1D22BD238(a1, &qword_1EC6D8F80);
}

uint64_t sub_1D280715C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  sub_1D22BD1D0(a2, &v16 - v8, &qword_1EC6D8F80);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__selectedPerson;
  swift_beginAccess();
  sub_1D22D7384(v9, a1 + v10, &qword_1EC6D8F80);
  swift_endAccess();
  v11 = sub_1D28785F8();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_1D2878568();
  sub_1D2870F78();
  v12 = sub_1D2878558();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a1;
  sub_1D22AE01C(0, 0, v6, &unk_1D28A9BF8, v13);

  return sub_1D22BD238(v9, &qword_1EC6D8F80);
}

uint64_t sub_1D2807350(void *a1)
{
  v24 = sub_1D2871818();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D2872008();
  v26 = *(v5 - 8);
  v6 = v26;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = a1[10];
  v27 = a1[16];
  v9 = sub_1D2803FA4();
  swift_getKeyPath();
  v32 = a1;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v23 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__creationViewStyle);
  v10 = a1[9];
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v12 = *(v6 + 16);
  v12(v8, v10 + v11, v5);
  type metadata accessor for FloatingBubblesViewModel();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  *(v13 + 24) = 0;
  sub_1D2871808();
  (*(v2 + 32))(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentAnimationID, v4, v24);
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__attractorColors) = sub_1D25D7ED4(v14);
  v15 = (v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID);
  *v15 = 0;
  v15[1] = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldDisableFloatingAnimation[0]) = 0;
  v16 = (v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID);
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageThumbnail;
  v18 = type metadata accessor for PlaygroundImage();
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingPhotoSharingConfirmation) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingStyleSuggestionConfirmation) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldBlockPhotoImport) = 1;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__acceptedSwitchToExternalStyleSuggestion) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D2871A18();
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel_servicesFetcher) = v25;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel_representationsManager) = v9;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel_sessionUndoManager) = v27;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__creationStyle) = v23;
  v12((v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentStyle), v8, v5);
  v19 = (v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldAnimateAddedBubbles);
  *v19 = sub_1D22BE86C;
  v19[1] = 0;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2698E00();
  v20 = sub_1D2870F78();
  sub_1D23501E0(v20, v9);

  (*(v26 + 8))(v8, v5);
  swift_getKeyPath();
  v28 = v13;
  v29 = a1;
  v30 = &off_1F4DD2320;
  v31 = v13;
  sub_1D2816278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719D8();

  return v13;
}

uint64_t sub_1D2807820@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  *a1 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__creationViewStyle);
  return result;
}

uint64_t sub_1D28078D0(uint64_t a1)
{
  v2 = sub_1D2872008();
  v36 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a1 + 80);
  sub_1D22D7044(a1 + 88, v47);
  v38 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_previewsStore);
  swift_getKeyPath();
  v46[0] = a1;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D28719E8();

  v39 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__creationViewStyle);
  v6 = *(a1 + 72);
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v47, v47[3]);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v16 = _s7ManagerCMa();
  v46[3] = v16;
  v46[4] = &off_1F4DC2000;
  v46[0] = v15;
  type metadata accessor for PreviewsViewModel(0);
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v46, v16);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v21;
  v44 = v16;
  v45 = &off_1F4DC2000;
  *&v43 = v23;
  *(v17 + 32) = 0;
  *(v17 + 17) = 0;
  *(v17 + 21) = 0;
  swift_unknownObjectWeakInit();
  v24 = MEMORY[0x1E69E7CD0];
  *(v17 + 40) = MEMORY[0x1E69E7CD0];
  v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
  v26 = sub_1D2871818();
  (*(*(v26 - 8) + 56))(v17 + v25, 1, 1, v26);
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase) = 1;
  v27 = v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError;
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = -4;
  v28 = (v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationPausedID);
  *v28 = 0;
  v28[1] = 0;
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGenerationCancelledFromBackgrounding) = 0;
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested) = 0;
  v29 = MEMORY[0x1E69E7CC0];
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__cancelContinuations) = MEMORY[0x1E69E7CC0];
  v30 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentPreviewGenPriority;
  v31 = sub_1D28785F8();
  (*(*(v31 - 8) + 56))(v17 + v30, 1, 1, v31);
  v32 = v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__animatedEffectsInteractable;
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__animatedEffectsInteractable + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) = 0;
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages) = 0;
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__keyboardIsAnimating) = 0;
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__precomputedGenerationSeeds[0]) = v29;
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__previewIndicesToSavedSeedMap) = sub_1D25D66F4(v29);
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__feedbackPresentedMap) = v24;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2871A18();
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_servicesFetcher) = v37;
  sub_1D227268C(&v43, v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager);
  *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore) = v38;
  sub_1D22729C0(v32);
  *(v32 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D22729C0(v17 + 24);
  *(v17 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 16) = v39;
  (*(v3 + 32))(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle, v5, v36);
  v33 = (v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_canStartPreviewGeneration);
  *v33 = sub_1D2816034;
  v33[1] = v8;
  v34 = (v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_buildRecipe);
  *v34 = sub_1D281603C;
  v34[1] = v9;
  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(v47);

  swift_getKeyPath();
  v40 = v17;
  v41 = a1;
  v42 = &off_1F4DD1FE8;
  v47[0] = v17;
  sub_1D2816278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719D8();

  return v17;
}

uint64_t sub_1D2807FC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v1 = Strong;
  if ((sub_1D2673120() & 1) == 0)
  {

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__isLoadingRecipe);

  v3 = v2 ^ 1;
  return v3 & 1;
}

uint64_t sub_1D28080B8@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for GenerationRecipeFactory();
    v2 = sub_1D2870F78();
    sub_1D2461838(v2, 1, a1);

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1D2872438();
  return (*(*(v4 - 8) + 56))(a1, v3, 1, v4);
}

void *sub_1D2808190()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__effectLoadingState);
  sub_1D233EDE0(v1);
  return v1;
}

void *sub_1D2808250@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__effectLoadingState);
  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__effectLoadingState + 8);
  *a2 = v4;
  a2[1] = v5;
  return sub_1D233EDE0(v4);
}

uint64_t sub_1D2808308()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D28083D8(uint64_t a1)
{
  v2 = sub_1D2878AF8();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D2871DD8();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  swift_getKeyPath();
  v33 = a1;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v25 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__creationViewStyle);
  swift_getKeyPath();
  v33 = a1;
  v29 = a1;
  sub_1D28719E8();

  v9 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__effectLoadingState);
  v10 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__effectLoadingState + 8);
  sub_1D233EDE0(v9);
  v23 = v8;
  sub_1D2871DC8();
  type metadata accessor for MagicEffectViewModel();
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_isInWandState) = 1;
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_isInRectangle) = 0;
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_isIdle) = 1;
  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_debounceTimer;
  sub_1D22BCFD0(0, &unk_1ED89CD20);
  sub_1D22BCFD0(0, &qword_1ED89CD50);
  v12 = sub_1D2878AB8();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1D2816278(&unk_1ED89CD30, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E10E0);
  sub_1D256F450();
  sub_1D2879088();
  v13 = sub_1D2878B08();

  (*(v27 + 8))(v4, v2);
  *(v11 + v22) = v13;
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__showAppleEffectOnNextTransition) = 1;
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__hideRectangleOnNextTransition) = 1;
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__needsTransitionFromWand) = 1;
  sub_1D2871A18();
  v14 = v26;
  v15 = *(v26 + 16);
  v16 = v24;
  v17 = v28;
  v15(v24, v8, v28);
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent) = 0;
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) = 0x3FF0000000000000;
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v18 = (v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  *v18 = 0;
  v18[1] = 0;
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isAnimationPaused) = 0;
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isBlurred) = 0;
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = 0;
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs) = MEMORY[0x1E69E7CC0];
  sub_1D233EDE0(v9);
  sub_1D2871A18();
  *(v11 + 17) = v25;
  v15((v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_defaultAspectRatio), v16, v17);
  *(v11 + 16) = 0;
  v19 = *v18;
  sub_1D233EDE0(v9);
  sub_1D233EE24(v19);
  *v18 = v9;
  v18[1] = v10;
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_shouldUseVFXRenderingDelegate) = 1;
  sub_1D2756CAC();
  sub_1D233EE24(v9);
  v20 = *(v14 + 8);
  v20(v16, v17);
  sub_1D2870F78();
  sub_1D27D4E1C();

  sub_1D233EE24(v9);
  v20(v23, v17);
  swift_getKeyPath();
  v30 = v11;
  v31 = v29;
  v32 = &off_1F4DD2088;
  v33 = v11;
  sub_1D2816278(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
  sub_1D2870F78();
  sub_1D28719D8();

  return v11;
}

uint64_t sub_1D28089F4(void *a1)
{
  v2 = a1[10];
  swift_getKeyPath();
  v29[0] = a1;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v3 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__creationViewStyle);
  v4 = sub_1D2803FA4();
  v5 = a1[16];
  sub_1D22D7044((a1 + 11), v29);
  v6 = a1[9];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v29, v29[3]);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v10, v8);
  v12 = *v10;
  v13 = _s7ManagerCMa();
  v28[3] = v13;
  v28[4] = &off_1F4DC2000;
  v28[0] = v12;
  type metadata accessor for DescriptionFieldWithSuggestionsViewModel();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v28, v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v18, v16);
  v20 = *v18;
  v27[3] = v13;
  v27[4] = &off_1F4DC2000;
  v27[0] = v20;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 112) = MEMORY[0x1E69E7CC0];
  *(v14 + 120) = xmmword_1D287CB60;
  *(v14 + 136) = 0;
  sub_1D2871A18();
  *(v14 + 32) = v2;
  *(v14 + 40) = v3;
  *(v14 + 48) = v4;
  *(v14 + 56) = v5;
  sub_1D22D7044(v27, v14 + 64);
  *(v14 + 104) = v6;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  v21 = sub_1D2870F78();
  sub_1D23501C8(v21, v4);

  sub_1D2740B2C();

  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  swift_getKeyPath();
  v24 = v14;
  v25 = a1;
  v26 = &off_1F4DD80E8;
  v29[0] = v14;
  sub_1D2816278(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
  sub_1D28719D8();

  return v14;
}

void *sub_1D2808DA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v53 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v53 - v8;
  v10 = sub_1D2872008();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v53 - v14;
  if (!*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___stylePickerViewModel))
  {
    v55 = v13;
    v56 = v3;
    v54 = v6;
    v62 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___stylePickerViewModel;
    v61 = *(v0 + 80);
    sub_1D22D7044(v0 + 88, v70);
    v17 = sub_1D2803FA4();
    v64 = v0;
    v57 = *(v0 + 128);
    sub_1D2871FD8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D28838F0;
    MEMORY[0x1D389AA70]();
    sub_1D2871EB8();
    sub_1D2871FD8();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
    v60 = v53;
    v20 = MEMORY[0x1EEE9AC00](v19);
    v22 = (v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = *v22;
    v25 = _s7ManagerCMa();
    v69[3] = v25;
    v69[4] = &off_1F4DC2000;
    v69[0] = v24;
    v53[4] = type metadata accessor for StylePickerViewModel();
    v16 = swift_allocObject();
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v69, v25);
    v59 = v53;
    v27 = MEMORY[0x1EEE9AC00](v26);
    v29 = (v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = *v29;
    v67 = v25;
    v68 = &off_1F4DC2000;
    v66[0] = v31;
    v16[11] = 0;
    swift_unknownObjectWeakInit();
    *(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = 0;
    *(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__isPendingResetToInternalStyle) = 0;
    *(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel_onboardingSheetPresentationDelay) = 0x3FC999999999999ALL;
    *(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation) = 0;
    v32 = *(v11 + 56);
    v53[2] = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
    v32(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding, 1, 1, v10);
    v53[3] = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
    sub_1D2871A18();
    v16[9] = v61;
    sub_1D22D7044(v66, (v16 + 2));
    v33 = v57;
    v16[7] = v17;
    v16[8] = v33;
    v53[0] = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles;
    *(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles) = v18;
    *(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel_shouldSaveStyle) = 0;
    v63 = v11;
    v34 = *(v11 + 16);
    v53[1] = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__previousStyle;
    v58 = v34;
    v34(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__previousStyle, v15, v10);
    sub_1D2870F78();
    v61 = v17;
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D22729C0((v16 + 10));
    v16[11] = 0;
    swift_unknownObjectWeakInit();
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v35 = sub_1D23B5D64();
    sub_1D2871F58();
    v36 = sub_1D2871F38();
    v37 = *(*(v36 - 8) + 48);
    if (v37(v9, 1, v36) == 1)
    {
      v38 = v10;
      v39 = sub_1D22BD238(v9, &qword_1EC6D9D58);
      v57 = v53;
      MEMORY[0x1EEE9AC00](v39);
      v53[-2] = v15;
      v40 = v56;
      sub_1D274B77C(sub_1D234016C, v35, v56);

      v41 = v63;
      v42 = v38;
      if ((*(v63 + 48))(v40, 1, v38) == 1)
      {
        sub_1D22BD238(v40, &qword_1EC6D9A30);
        v10 = v38;
      }

      else
      {
        (*(v41 + 32))(v55, v40, v38);
        v48 = v54;
        sub_1D2871F58();
        v49 = v48;
        v50 = v37(v48, 1, v36);
        v10 = v42;
        if (v50 != 1)
        {
          sub_1D22BD238(v49, &qword_1EC6D9D58);
          v51 = v55;
          v52 = v58;
          v58(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle, v55, v10);
          v52(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem, v51, v10);
          sub_1D2645728();
          (*(v41 + 8))(v51, v10);
          goto LABEL_8;
        }

        (*(v41 + 8))(v55, v42);
        sub_1D22BD238(v49, &qword_1EC6D9D58);
      }
    }

    else
    {

      sub_1D22BD238(v9, &qword_1EC6D9D58);
      v41 = v63;
    }

    v43 = v58;
    v58(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle, v15, v10);
    v43(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem, v15, v10);
LABEL_8:
    v44 = sub_1D2870F78();
    sub_1D23501D4(v44, v61);

    swift_getKeyPath();
    v65 = v16;
    sub_1D2816278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719E8();

    sub_1D2870F78();
    v45 = sub_1D23C6B54();

    v46 = sub_1D2870F78();
    sub_1D233C0E0(v46, v45);

    sub_1D28719C8();

    (*(v41 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_0(v66);
    __swift_destroy_boxed_opaque_existential_0(v69);
    __swift_destroy_boxed_opaque_existential_0(v70);
    *(v64 + v62) = v16;
    sub_1D2870F78();

    goto LABEL_9;
  }

  v16 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___stylePickerViewModel);
LABEL_9:
  sub_1D2870F78();
  return v16;
}

uint64_t sub_1D2809854()
{
  v1[28] = v0;
  type metadata accessor for PlaygroundImage();
  v1[29] = swift_task_alloc();
  v2 = type metadata accessor for ImageGeneration.FinalImageStatus(0);
  v1[30] = v2;
  v1[31] = *(v2 - 8);
  v1[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA10);
  v1[33] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA178);
  v1[34] = v3;
  v1[35] = *(v3 - 8);
  v1[36] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA20);
  v1[37] = v4;
  v1[38] = *(v4 - 8);
  v1[39] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA180);
  v1[40] = v5;
  v1[41] = *(v5 - 8);
  v1[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  v1[43] = swift_task_alloc();
  v6 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v1[44] = v6;
  v1[45] = *(v6 - 8);
  v1[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v1[47] = swift_task_alloc();
  v7 = sub_1D2871818();
  v1[48] = v7;
  v1[49] = *(v7 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = sub_1D2878568();
  v1[52] = sub_1D2878558();
  v9 = sub_1D28784F8();
  v1[53] = v9;
  v1[54] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D2809C10, v9, v8);
}

uint64_t sub_1D2809C10()
{
  v1 = *(v0[28] + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_previewsStore);
  swift_getKeyPath();
  v0[19] = v1;
  sub_1D2816278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  if (!*(*(v1 + 16) + 16))
  {

    goto LABEL_7;
  }

  v2 = v0[49];
  v26 = v0[48];
  v3 = v0[47];
  v4 = sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel, sub_1D28078D0);
  swift_getKeyPath();
  v0[20] = v4;
  v0[55] = sub_1D2816278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
  swift_beginAccess();
  sub_1D22BD1D0(v4 + v5, v3, &qword_1EC6D8F70);

  if ((*(v2 + 48))(v3, 1, v26) == 1)
  {
    v6 = v0[47];

    sub_1D22BD238(v6, &qword_1EC6D8F70);
LABEL_7:
    sub_1D233E200();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }

  v7 = v0[50];
  v8 = v0[44];
  v9 = v0[45];
  v10 = v0[43];
  (*(v0[49] + 32))(v7, v0[47], v0[48]);
  swift_getKeyPath();
  v0[21] = v1;
  sub_1D28719E8();

  v11 = *(v1 + 16);
  *(swift_task_alloc() + 16) = v7;
  sub_1D2870F68();
  sub_1D274B9EC(sub_1D233E9A0, v11, v10);

  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v13 = v0[49];
    v12 = v0[50];
    v14 = v0[48];
    v15 = v0[43];

    sub_1D22BD238(v15, &qword_1EC6D9490);
    (*(v13 + 8))(v12, v14);
    goto LABEL_7;
  }

  v19 = v0[28];
  sub_1D28159F0(v0[43], v0[46], type metadata accessor for ImageGeneration.PreviewImage);
  v20 = sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___animatedEffectsViewModel, sub_1D28083D8);
  v21 = swift_allocObject();
  *(v21 + 16) = 1;
  sub_1D2758420(v20, sub_1D233E978, v21);

  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel;
  v23 = *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel);
  if (*(v23 + 20) == 1)
  {
    *(v23 + 20) = 1;
  }

  else
  {
    swift_getKeyPath();
    v24 = swift_task_alloc();
    *(v24 + 16) = v23;
    *(v24 + 24) = 1;
    v0[22] = v23;
    sub_1D2870F78();
    sub_1D28719D8();
  }

  v0[56] = *(v19 + v22);
  sub_1D2870F78();
  v25 = swift_task_alloc();
  v0[57] = v25;
  *v25 = v0;
  v25[1] = sub_1D280A1F8;

  return sub_1D25A544C();
}

uint64_t sub_1D280A1F8()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1D280A33C, v3, v2);
}