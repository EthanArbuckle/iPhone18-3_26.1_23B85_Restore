uint64_t sub_2556AC1BC()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE560);
  v1 = __swift_project_value_buffer(v0, qword_27F7BE560);
  if (qword_27F7BD5B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void static SyncDataMO.removeStateToken(context:)(void *a1)
{
  v2 = sub_2556AC648(a1);
  if (!v1)
  {
    v3 = v2;
    if (v2)
    {
      [v2 setStatedata:0];
      [v3 setMetadata:0];
    }

    else
    {
      if (qword_27F7BD6F0 != -1)
      {
        swift_once();
      }

      v4 = sub_25574F2C0();
      __swift_project_value_buffer(v4, qword_27F7BE560);
      v3 = sub_25574F2A0();
      v5 = sub_255750770();
      if (os_log_type_enabled(v3, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_255661000, v3, v5, "No sync data", v6, 2u);
        MEMORY[0x259C3F520](v6, -1, -1);
      }
    }
  }
}

void static SyncDataMO.decodedSyncEngineStateData(context:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2556AC648(a1);
  if (!v2)
  {
    if (v4)
    {
      v5 = v4;
      v6 = [v4 statedata];
      if (v6)
      {
        v7 = v6;
        v8 = sub_25574EF90();
        v10 = v9;

        v11 = sub_25574EB00();
        v12 = *(v11 + 48);
        v13 = *(v11 + 52);
        swift_allocObject();
        sub_25574EAF0();
        v14 = sub_25574F2D0();
        sub_2556AC9D4();
        sub_25574EAE0();

        sub_2556755A8(v8, v10);

        (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
        return;
      }
    }

    v15 = sub_25574F2D0();
    (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }
}

id sub_2556AC648(id a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_255750180();
  v5 = [v3 initWithEntityName_];

  type metadata accessor for SyncDataMO();
  v6 = sub_2557508C0();
  if (!v1)
  {
    v7 = v6;
    v8 = v6 >> 62;
    if (v6 >> 62)
    {
      if (sub_255750A30() < 2)
      {
        goto LABEL_12;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_12;
    }

    if (qword_27F7BD6F0 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v9 = sub_25574F2C0();
      __swift_project_value_buffer(v9, qword_27F7BE560);

      v10 = sub_25574F2A0();
      v11 = sub_255750780();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        v13 = v8 ? sub_255750A30() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v12 + 4) = v13;

        _os_log_impl(&dword_255661000, v10, v11, "%ld sync data objects found!", v12, 0xCu);
        MEMORY[0x259C3F520](v12, -1, -1);
      }

      else
      {
      }

LABEL_12:
      if (v8)
      {
        if (!sub_255750A30())
        {
LABEL_19:

          return 0;
        }
      }

      else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(v7 + 32);
LABEL_17:
        a1 = v14;

        return a1;
      }

      __break(1u);
LABEL_25:
      swift_once();
    }

    v14 = MEMORY[0x259C3E830](0, v7);
    goto LABEL_17;
  }

  return a1;
}

void sub_2556AC8A4(void *a1)
{
  v2 = sub_2556AC648(a1);
  if (!v1)
  {
    v3 = v2;
    if (v2)
    {
      [v2 setMetadata:0];
      [v3 setStatedata:0];
      [v3 setUserId:0];
    }

    else
    {
      if (qword_27F7BD6F0 != -1)
      {
        swift_once();
      }

      v4 = sub_25574F2C0();
      __swift_project_value_buffer(v4, qword_27F7BE560);
      v3 = sub_25574F2A0();
      v5 = sub_255750770();
      if (os_log_type_enabled(v3, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_255661000, v3, v5, "No sync data", v6, 2u);
        MEMORY[0x259C3F520](v6, -1, -1);
      }
    }
  }
}

unint64_t sub_2556AC9D4()
{
  result = qword_27F7BE578;
  if (!qword_27F7BE578)
  {
    sub_25574F2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE578);
  }

  return result;
}

uint64_t sub_2556ACA2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEC80, &qword_255757E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BookAssetMetadata.mediaId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BookAssetMetadata.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t BookAssetMetadata.author.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t BookAssetMetadata.timeOfPurchase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BookAssetMetadata() + 28);

  return sub_2556700F4(v3, a1);
}

uint64_t type metadata accessor for BookAssetMetadata()
{
  result = qword_27F7BE5A8;
  if (!qword_27F7BE5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for BookAssetMetadata() + 28);

  return sub_2556719B8(a7, v9);
}

uint64_t sub_2556ACC08()
{
  v1 = 0x6449616964656DLL;
  v2 = 0x726F68747561;
  if (*v0 != 2)
  {
    v2 = 0x7550664F656D6974;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2556ACC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2556AD6FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2556ACCB0(uint64_t a1)
{
  v2 = sub_2556ACF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556ACCEC(uint64_t a1)
{
  v2 = sub_2556ACF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BookAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE580, &qword_255757248);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556ACF64();
  sub_255750FF0();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_255750E00();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v19[14] = 1;
    sub_255750DB0();
    v15 = v3[4];
    v16 = v3[5];
    v19[13] = 2;
    sub_255750DB0();
    v17 = *(type metadata accessor for BookAssetMetadata() + 28);
    v19[12] = 3;
    sub_25574F020();
    sub_2556717C0(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2556ACF64()
{
  result = qword_27F7BE588;
  if (!qword_27F7BE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE588);
  }

  return result;
}

uint64_t BookAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE590, &qword_255757250);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - v10;
  v12 = type metadata accessor for BookAssetMetadata();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556ACF64();
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v12;
  v17 = v7;
  v19 = v27;
  v18 = v28;
  v32 = 0;
  *v15 = sub_255750D50();
  v15[1] = v20;
  v31 = 1;
  v15[2] = sub_255750D00();
  v15[3] = v21;
  v30 = 2;
  v24[1] = 0;
  v15[4] = sub_255750D00();
  v15[5] = v22;
  sub_25574F020();
  v29 = 3;
  sub_2556717C0(&qword_27F7BDC38, MEMORY[0x277CC9578]);
  sub_255750D40();
  (*(v19 + 8))(v11, v18);
  sub_2556719B8(v17, v15 + *(v25 + 28));
  sub_2556AD364(v15, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2556AD3C8(v15);
}

uint64_t sub_2556AD364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookAssetMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556AD3C8(uint64_t a1)
{
  v2 = type metadata accessor for BookAssetMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556AD424(uint64_t a1)
{
  *(a1 + 8) = sub_2556717C0(&qword_27F7BE598, type metadata accessor for BookAssetMetadata);
  result = sub_2556717C0(&qword_27F7BE5A0, type metadata accessor for BookAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

void sub_2556AD500()
{
  sub_2556AD594();
  if (v0 <= 0x3F)
  {
    sub_25566E80C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2556AD594()
{
  if (!qword_27F7BE538)
  {
    v0 = sub_255750950();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BE538);
    }
  }
}

unint64_t sub_2556AD5F8()
{
  result = qword_27F7BE5B8;
  if (!qword_27F7BE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE5B8);
  }

  return result;
}

unint64_t sub_2556AD650()
{
  result = qword_27F7BE5C0;
  if (!qword_27F7BE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE5C0);
  }

  return result;
}

unint64_t sub_2556AD6A8()
{
  result = qword_27F7BE5C8;
  if (!qword_27F7BE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE5C8);
  }

  return result;
}

uint64_t sub_2556AD6FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449616964656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7550664F656D6974 && a2 == 0xEE00657361686372)
  {

    return 3;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2556AD8BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  result = sub_2556E2B44(a1, a2, &v35);
  if (!v7)
  {
    v34 = a1;
    v36 = 0;
    v16 = v35;
    v17 = a3(0);
    v18 = v17;
    if (*(&v16 + 1) >> 60 == 15)
    {
      return (*(*(v17 - 8) + 56))(a6, 1, 1, v17);
    }

    else
    {
      sub_255674F54(v16, *(&v16 + 1));
      sub_2556B0F04(a4, a5);
      v19 = v36;
      sub_25574F4C0();
      if (v19)
      {
        v36 = v16;
        if (qword_27F7BD798 != -1)
        {
          swift_once();
        }

        v20 = sub_25574F2C0();
        __swift_project_value_buffer(v20, qword_27F7BF0B0);
        v21 = v11;

        v22 = v19;
        v23 = sub_25574F2A0();
        v24 = sub_255750780();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *&v35 = v33;
          *v25 = 136315650;
          v26 = sub_255750920();
          v28 = sub_2556E474C(v26, v27, &v35);

          *(v25 + 4) = v28;
          *(v25 + 12) = 2080;
          *(v25 + 14) = sub_2556E474C(v34, a2, &v35);
          *(v25 + 22) = 2112;
          v29 = v19;
          v30 = _swift_stdlib_bridgeErrorToNSError();
          *(v25 + 24) = v30;
          *v32 = v30;
          _os_log_impl(&dword_255661000, v23, v24, "Failed deserializing data from %s.%s. Error: %@", v25, 0x20u);
          sub_255674B20(v32, &qword_27F7BEC80, &qword_255757E90);
          MEMORY[0x259C3F520](v32, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v33, -1, -1);
          MEMORY[0x259C3F520](v25, -1, -1);
        }

        v31 = v36;
        swift_willThrow();
        return sub_2556A15B8(v31, *(&v16 + 1));
      }

      else
      {
        (*(*(v18 - 8) + 56))(a6, 0, 1, v18);
        return sub_2556A15B8(v16, *(&v16 + 1));
      }
    }
  }

  return result;
}

void sub_2556ADC68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25574F500();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MergeableAppStorage(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  v22 = [v2 mergeableAttributes];
  if (v22)
  {
    v32 = v2;
    v23 = v22;
    sub_2556B0DD4(v22 + OBJC_IVAR___WrappedMergeableAppStorage_value, v19, type metadata accessor for MergeableAppStorage);

    sub_2556B0E3C(v19, v21, type metadata accessor for MergeableAppStorage);
    sub_2556B0DD4(a1, v16, type metadata accessor for MergeableAppStorage);
    MergeableAppStorage.merge(_:)(v21, v8);
    v24 = *(v5 + 8);
    v24(v8, v4);
    MergeableAppStorage.merge(_:)(v16, v8);
    v24(v8, v4);
    sub_2556B0DD4(v21, v13, type metadata accessor for MergeableAppStorage);
    v25 = type metadata accessor for WrappedMergeableAppStorage(0);
    v26 = objc_allocWithZone(v25);
    sub_2556B0DD4(v13, v26 + OBJC_IVAR___WrappedMergeableAppStorage_value, type metadata accessor for MergeableAppStorage);
    v34.receiver = v26;
    v34.super_class = v25;
    v27 = objc_msgSendSuper2(&v34, sel_init);
    sub_2556B0EA4(v13, type metadata accessor for MergeableAppStorage);
    [v32 setMergeableAttributes_];

    sub_2556B0EA4(v16, type metadata accessor for MergeableAppStorage);
    sub_2556B0EA4(v21, type metadata accessor for MergeableAppStorage);
  }

  else
  {
    sub_2556B0DD4(a1, v16, type metadata accessor for MergeableAppStorage);
    v28 = type metadata accessor for WrappedMergeableAppStorage(0);
    v29 = objc_allocWithZone(v28);
    sub_2556B0DD4(v16, v29 + OBJC_IVAR___WrappedMergeableAppStorage_value, type metadata accessor for MergeableAppStorage);
    v33.receiver = v29;
    v33.super_class = v28;
    v30 = objc_msgSendSuper2(&v33, sel_init);
    sub_2556B0EA4(v16, type metadata accessor for MergeableAppStorage);
    [v2 setMergeableAttributes_];
  }
}

void sub_2556ADFBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25574F500();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MergeableJournalAttributes(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  v22 = [v2 mergeableAttributes];
  if (v22)
  {
    v32 = v2;
    v23 = v22;
    sub_2556B0DD4(v22 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v19, type metadata accessor for MergeableJournalAttributes);

    sub_2556B0E3C(v19, v21, type metadata accessor for MergeableJournalAttributes);
    sub_2556B0DD4(a1, v16, type metadata accessor for MergeableJournalAttributes);
    MergeableJournalAttributes.merge(_:)(v21, v8);
    v24 = *(v5 + 8);
    v24(v8, v4);
    MergeableJournalAttributes.merge(_:)(v16, v8);
    v24(v8, v4);
    sub_2556B0DD4(v21, v13, type metadata accessor for MergeableJournalAttributes);
    v25 = type metadata accessor for WrappedMergeableJournalAttributes(0);
    v26 = objc_allocWithZone(v25);
    sub_2556B0DD4(v13, v26 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, type metadata accessor for MergeableJournalAttributes);
    v34.receiver = v26;
    v34.super_class = v25;
    v27 = objc_msgSendSuper2(&v34, sel_init);
    sub_2556B0EA4(v13, type metadata accessor for MergeableJournalAttributes);
    [v32 setMergeableAttributes_];

    sub_2556B0EA4(v16, type metadata accessor for MergeableJournalAttributes);
    sub_2556B0EA4(v21, type metadata accessor for MergeableJournalAttributes);
  }

  else
  {
    sub_2556B0DD4(a1, v16, type metadata accessor for MergeableJournalAttributes);
    v28 = type metadata accessor for WrappedMergeableJournalAttributes(0);
    v29 = objc_allocWithZone(v28);
    sub_2556B0DD4(v16, v29 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, type metadata accessor for MergeableJournalAttributes);
    v33.receiver = v29;
    v33.super_class = v28;
    v30 = objc_msgSendSuper2(&v33, sel_init);
    sub_2556B0EA4(v16, type metadata accessor for MergeableJournalAttributes);
    [v2 setMergeableAttributes_];
  }
}

void sub_2556AE310(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25574F500();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MergeableEntryAttributes(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  v22 = [v2 mergeableAttributes];
  if (v22)
  {
    v32 = v2;
    v23 = v22;
    sub_2556B0DD4(v22 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v19, type metadata accessor for MergeableEntryAttributes);

    sub_2556B0E3C(v19, v21, type metadata accessor for MergeableEntryAttributes);
    sub_2556B0DD4(a1, v16, type metadata accessor for MergeableEntryAttributes);
    MergeableEntryAttributes.merge(_:)(v21);
    v24 = *(v5 + 8);
    v24(v8, v4);
    MergeableEntryAttributes.merge(_:)(v16);
    v24(v8, v4);
    sub_2556B0DD4(v21, v13, type metadata accessor for MergeableEntryAttributes);
    v25 = type metadata accessor for WrappedMergeableEntryAttributes(0);
    v26 = objc_allocWithZone(v25);
    sub_2556B0DD4(v13, v26 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, type metadata accessor for MergeableEntryAttributes);
    v34.receiver = v26;
    v34.super_class = v25;
    v27 = objc_msgSendSuper2(&v34, sel_init);
    sub_2556B0EA4(v13, type metadata accessor for MergeableEntryAttributes);
    [v32 setMergeableAttributes_];

    sub_2556B0EA4(v16, type metadata accessor for MergeableEntryAttributes);
    sub_2556B0EA4(v21, type metadata accessor for MergeableEntryAttributes);
  }

  else
  {
    sub_2556B0DD4(a1, v16, type metadata accessor for MergeableEntryAttributes);
    v28 = type metadata accessor for WrappedMergeableEntryAttributes(0);
    v29 = objc_allocWithZone(v28);
    sub_2556B0DD4(v16, v29 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, type metadata accessor for MergeableEntryAttributes);
    v33.receiver = v29;
    v33.super_class = v28;
    v30 = objc_msgSendSuper2(&v33, sel_init);
    sub_2556B0EA4(v16, type metadata accessor for MergeableEntryAttributes);
    [v2 setMergeableAttributes_];
  }
}

uint64_t sub_2556AE664()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE5D0);
  __swift_project_value_buffer(v0, qword_27F7BE5D0);
  return sub_25574F2B0();
}

id static AppStorageMO.newObjectFromRecord(_:context:)(void *a1, uint64_t a2)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v70 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFD0, &unk_255757E80);
  v6 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v80 = &v70 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v8 = *(*(v79 - 1) + 64);
  v9 = MEMORY[0x28223BE20](v79);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v70 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  v17 = sub_25574F0D0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v78 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v77 = &v70 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v70 - v24;
  v82 = a1;
  v26 = [a1 recordID];
  v27 = [v26 recordName];

  sub_2557501B0();
  sub_25574F030();
  v28 = v17;

  v29 = *(v18 + 48);
  if (v29(v16, 1, v28) == 1)
  {
    sub_255674B20(v16, &unk_27F7BED20, &unk_2557551D0);
    sub_25568B1D0();
    swift_allocError();
    *v30 = 5;
    swift_willThrow();
    return v27;
  }

  v31 = *(v18 + 32);
  v72 = v18 + 32;
  v73 = v11;
  v71 = v31;
  v31(v25, v16, v28);
  v32 = *(v18 + 16);
  v75 = v18 + 16;
  v76 = v25;
  v74 = v32;
  v32(v14, v25, v28);
  v86 = v18;
  (*(v18 + 56))(v14, 0, 1, v28);
  if (qword_27F7BD750 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v79, qword_27F7C0558);
  v34 = *(v87 + 48);
  v35 = v80;
  sub_255663294(v14, v80, &unk_27F7BED20, &unk_2557551D0);
  sub_255663294(v33, v35 + v34, &unk_27F7BED20, &unk_2557551D0);
  v36 = v29(v35, 1, v28);
  v87 = v28;
  if (v36 == 1)
  {
    sub_255674B20(v14, &unk_27F7BED20, &unk_2557551D0);
    v37 = v29((v35 + v34), 1, v28);
    v38 = v85;
    if (v37 == 1)
    {
      sub_255674B20(v35, &unk_27F7BED20, &unk_2557551D0);
      v39 = v76;
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v79 = v14;
  v40 = v73;
  sub_255663294(v35, v73, &unk_27F7BED20, &unk_2557551D0);
  v41 = v29((v35 + v34), 1, v28);
  v42 = v86;
  if (v41 == 1)
  {
    sub_255674B20(v79, &unk_27F7BED20, &unk_2557551D0);
    (*(v42 + 8))(v40, v28);
    v38 = v85;
LABEL_10:
    sub_255674B20(v35, &unk_27F7BFFD0, &unk_255757E80);
    v39 = v76;
LABEL_11:
    if (qword_27F7BD6F8 != -1)
    {
      swift_once();
    }

    v43 = sub_25574F2C0();
    __swift_project_value_buffer(v43, qword_27F7BE5D0);
    v44 = v78;
    v74(v78, v39, v28);
    v45 = sub_25574F2A0();
    v46 = sub_255750780();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v88 = v48;
      *v47 = 136315138;
      sub_2556B0F04(&qword_27F7BF200, MEMORY[0x277CC95F0]);
      v49 = sub_255750E60();
      v51 = v50;
      (*(v86 + 8))(v44, v87);
      v52 = sub_2556E474C(v49, v51, &v88);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_255661000, v45, v46, "Received a record with unexpected identifier: %s.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x259C3F520](v48, -1, -1);
      MEMORY[0x259C3F520](v47, -1, -1);
    }

    else
    {

      (*(v86 + 8))(v44, v28);
    }

    goto LABEL_17;
  }

  v53 = v35 + v34;
  v54 = v77;
  v71(v77, v53, v28);
  sub_2556B0F04(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
  v55 = v35;
  v56 = sub_255750100();
  v57 = *(v42 + 8);
  v57(v54, v28);
  sub_255674B20(v79, &unk_27F7BED20, &unk_2557551D0);
  v57(v40, v87);
  v28 = v87;
  sub_255674B20(v55, &unk_27F7BED20, &unk_2557551D0);
  v38 = v85;
  v39 = v76;
  if ((v56 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v58 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v27 = [v58 initWithContext_];
  v59 = sub_25574F050();
  [v27 setId_];

  [v27 setIsUploadedToCloud_];
  v60 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v82 encodeSystemFieldsWithCoder_];
  v61 = [v60 encodedData];
  v62 = sub_25574EF90();
  v64 = v63;

  v65 = sub_25574EF80();
  sub_2556755A8(v62, v64);
  [v27 setRecordSystemFields_];

  v66 = v83;
  v67 = v84;
  sub_2556AD8BC(0xD000000000000013, 0x8000000255752490, type metadata accessor for MergeableAppStorage, &qword_27F7BE5F8, type metadata accessor for MergeableAppStorage, v84);
  if (v66)
  {
    (*(v86 + 8))(v39, v87);
  }

  else
  {
    v68 = sub_2556B0F04(&qword_27F7BE5F0, type metadata accessor for AppStorageMO);
    MergeableProvider.unwrappedMergeableAttributes.setter(v67, v38, v68);
    (*(v86 + 8))(v39, v87);
  }

  return v27;
}

id AppStorageMO.cloudKitRecord.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v41[-1] - v3;
  v5 = type metadata accessor for MergeableAppStorage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41[-1] - v12;
  v14 = sub_2556AF87C(0x61726F7453707041, 0xEA00000000006567, type metadata accessor for AppStorageMO);
  if (v14)
  {
    v15 = [v0 mergeableAttributes];
    if (v15)
    {
      v16 = v15;
      sub_2556B0DD4(v15 + OBJC_IVAR___WrappedMergeableAppStorage_value, v13, type metadata accessor for MergeableAppStorage);

      (*(v6 + 56))(v13, 0, 1, v5);
    }

    else
    {
      (*(v6 + 56))(v13, 1, 1, v5);
    }

    if ((*(v6 + 48))(v13, 1, v5))
    {
      sub_255674B20(v13, &qword_27F7BE5E8, &qword_255757420);
      v26 = 0;
      v27 = 0xF000000000000000;
    }

    else
    {
      sub_2556B0DD4(v13, v9, type metadata accessor for MergeableAppStorage);
      sub_255674B20(v13, &qword_27F7BE5E8, &qword_255757420);
      if (qword_27F7BD768 != -1)
      {
        swift_once();
      }

      if (qword_27F7BD760 != -1)
      {
        swift_once();
      }

      v33 = sub_25574F770();
      __swift_project_value_buffer(v33, qword_27F7C0570);
      sub_2556B0F04(&qword_27F7BE5F8, type metadata accessor for MergeableAppStorage);
      v26 = sub_25574F4B0();
      v27 = v34;
      sub_2556B0EA4(v9, type metadata accessor for MergeableAppStorage);
    }

    v28 = [v14 encryptedValues];
    if (v27 >> 60 == 15)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v41[2] = 0;
    }

    else
    {
      v32 = MEMORY[0x277CBBBE0];
      v31 = MEMORY[0x277CC9318];
      v29 = v26;
      v30 = v27;
    }

    v41[0] = v29;
    v41[1] = v30;
    v41[3] = v31;
    v41[4] = v32;
    swift_getObjectType();
    sub_25567625C(v26, v27);
    sub_2557508E0();
    sub_2556A15B8(v26, v27);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F7BD6F8 != -1)
    {
      swift_once();
    }

    v17 = sub_25574F2C0();
    __swift_project_value_buffer(v17, qword_27F7BE5D0);
    v18 = v0;
    v19 = sub_25574F2A0();
    v20 = sub_255750780();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41[0] = v22;
      *v21 = 136315138;
      v23 = [v18 id];
      if (v23)
      {
        v24 = v23;
        sub_25574F080();

        v25 = sub_25574F0D0();
        (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
      }

      else
      {
        v35 = sub_25574F0D0();
        (*(*(v35 - 8) + 56))(v4, 1, 1, v35);
      }

      v36 = sub_2557501D0();
      v38 = sub_2556E474C(v36, v37, v41);

      *(v21 + 4) = v38;
      _os_log_impl(&dword_255661000, v19, v20, "Failed to create partial CKRecord for AppStorageMO with id: %s.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x259C3F520](v22, -1, -1);
      MEMORY[0x259C3F520](v21, -1, -1);
    }
  }

  return v14;
}

id sub_2556AF87C(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v7 = [v3 recordSystemFields];
  if (!v7 || (v8 = v7, v9 = sub_25574EF90(), v11 = v10, v8, sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0), (result = CKRecord.init(systemFields:)(v9, v11)) == 0))
  {
    sub_2556B060C(a1, a2, a3);
    if (v13)
    {
      sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0);
      if (qword_27F7BD780 != -1)
      {
        swift_once();
      }

      v14 = qword_27F7BED98;
      sub_255669A88(0, &qword_27F7BF0D0, 0x277CBC5D0);
      v15 = [v14 zoneID];
      sub_255750740();
      return sub_255750910();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void static AppStorageMO.resolveDifferences(object:record:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE600, &qword_255757428);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v92 = &v90 - v7;
  v8 = type metadata accessor for MergeableAppStorage(0);
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = *(v95 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v91 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v90 - v13;
  MEMORY[0x28223BE20](v12);
  v94 = &v90 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v90 - v21;
  v97 = a1;
  v23 = [a1 recordSystemFields];
  v93 = v14;
  if (!v23)
  {
    goto LABEL_5;
  }

  v24 = v23;
  v25 = sub_25574EF90();
  v27 = v26;

  sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0);
  v28 = CKRecord.init(systemFields:)(v25, v27);
  if (!v28)
  {
    goto LABEL_5;
  }

  v29 = v28;
  v30 = [v28 recordChangeTag];

  if (v30)
  {
    v31 = sub_2557501B0();
    v33 = v32;
  }

  else
  {
LABEL_5:
    v31 = 0;
    v33 = 0;
  }

  v98 = v2;
  v34 = [a2 recordChangeTag];
  if (!v34)
  {
    if (!v33)
    {
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_25;
  }

  v35 = v34;
  v36 = sub_2557501B0();
  v38 = v37;

  if (!v33)
  {
    if (!v38)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!v38)
  {
    goto LABEL_15;
  }

  if (v31 == v36 && v33 == v38)
  {
  }

  else
  {
    v39 = sub_255750EB0();

    if ((v39 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_17:
  v40 = [v97 recordSystemFields];
  if (v40)
  {
    v41 = v40;
    v42 = sub_25574EF90();
    v44 = v43;

    sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0);
    v45 = CKRecord.init(systemFields:)(v42, v44);
    if (v45)
    {
      v46 = v45;
      v47 = [v45 recordChangeTag];

      if (v47)
      {

        if (qword_27F7BD6F8 != -1)
        {
          swift_once();
        }

        v48 = sub_25574F2C0();
        __swift_project_value_buffer(v48, qword_27F7BE5D0);
        v49 = a2;
        v50 = sub_25574F2A0();
        v51 = sub_255750770();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v99 = v53;
          *v52 = 136315650;
          v54 = sub_255750920();
          v56 = sub_2556E474C(v54, v55, &v99);

          *(v52 + 4) = v56;
          *(v52 + 12) = 2080;
          v57 = [v49 recordID];
          v58 = [v57 recordName];

          v59 = sub_2557501B0();
          v61 = v60;

          v62 = sub_2556E474C(v59, v61, &v99);

          *(v52 + 14) = v62;
          *(v52 + 22) = 2080;
          v63 = sub_255751020();
          v65 = sub_2556E474C(v63, v64, &v99);

          *(v52 + 24) = v65;
          _os_log_impl(&dword_255661000, v50, v51, "Ignoring remote %s record update with ID %s because %s has the most recent server changes", v52, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v53, -1, -1);
          MEMORY[0x259C3F520](v52, -1, -1);
        }

        return;
      }
    }
  }

LABEL_25:
  v66 = v98;
  sub_2556AD8BC(0xD000000000000013, 0x8000000255752490, type metadata accessor for MergeableAppStorage, &qword_27F7BE5F8, type metadata accessor for MergeableAppStorage, v22);
  if (!v66)
  {
    sub_255663294(v22, v20, &qword_27F7BE5E8, &qword_255757420);
    if ((*(v95 + 48))(v20, 1, v96) == 1)
    {
      sub_255674B20(v20, &qword_27F7BE5E8, &qword_255757420);
      sub_25568B1D0();
      swift_allocError();
      *v67 = 3;
      swift_willThrow();
    }

    else
    {
      v68 = v94;
      sub_2556B0E3C(v20, v94, type metadata accessor for MergeableAppStorage);
      v69 = [v97 mergeableAttributes];
      if (v69)
      {
        v70 = v69;
        v71 = v91;
        sub_2556B0DD4(v69 + OBJC_IVAR___WrappedMergeableAppStorage_value, v91, type metadata accessor for MergeableAppStorage);

        v72 = v93;
        sub_2556B0E3C(v71, v93, type metadata accessor for MergeableAppStorage);
        sub_2556B0F04(&qword_27F7BE608, type metadata accessor for MergeableAppStorage);
        v73 = v92;
        sub_25574FD60();
        v74 = type metadata accessor for MergeableAppStorage.ObservableDifference(0);
        v75 = (*(*(v74 - 8) + 48))(v73, 1, v74) == 1;
        sub_255674B20(v73, &qword_27F7BE600, &qword_255757428);
        sub_2556ADC68(v68);
        v76 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
        [a2 encodeSystemFieldsWithCoder_];
        v77 = [v76 encodedData];
        v78 = sub_25574EF90();
        v80 = v79;

        v81 = sub_25574EF80();
        v82 = v80;
        v83 = v97;
        sub_2556755A8(v78, v82);
        [v83 setRecordSystemFields_];

        [v83 setIsUploadedToCloud_];
        v84 = [v83 managedObjectContext];
        if (v84)
        {
          v85 = v84;
          v86 = MEMORY[0x28223BE20](v84);
          *(&v90 - 2) = v83;
          MEMORY[0x28223BE20](v86);
          *(&v90 - 2) = sub_2556B0CBC;
          *(&v90 - 1) = v87;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE280, &qword_255756620);
          sub_255750870();
        }

        sub_2556B0EA4(v72, type metadata accessor for MergeableAppStorage);
        v89 = v68;
      }

      else
      {
        sub_25568B1D0();
        swift_allocError();
        *v88 = 3;
        swift_willThrow();
        v89 = v68;
      }

      sub_2556B0EA4(v89, type metadata accessor for MergeableAppStorage);
    }

    sub_255674B20(v22, &qword_27F7BE5E8, &qword_255757420);
  }
}

id static AppStorageMO.objectsToDeletePredicate.getter()
{
  v0 = [objc_opt_self() predicateWithValue_];

  return v0;
}

id sub_2556B0594()
{
  v0 = [objc_opt_self() predicateWithValue_];

  return v0;
}

uint64_t sub_2556B05D8@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_2556B060C(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = sub_25574F0D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v3 id];
  if (v19)
  {
    v20 = v19;
    sub_25574F080();

    (*(v15 + 56))(v11, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v11, 1, 1, v14);
  }

  sub_2556B0D64(v11, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
    if (qword_27F7BD7E8 != -1)
    {
      swift_once();
    }

    v21 = sub_25574F2C0();
    __swift_project_value_buffer(v21, qword_27F7BFB38);
    v22 = v3;
    v23 = sub_25574F2A0();
    v24 = sub_255750780();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_2556E474C(a1, a2, &v34);
      *(v25 + 12) = 2080;
      v33 = v22;
      a3(0);
      v27 = v22;
      v28 = sub_2557501D0();
      v30 = sub_2556E474C(v28, v29, &v34);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_255661000, v23, v24, "Can't create %s record name because the object doesn't have an id: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v26, -1, -1);
      MEMORY[0x259C3F520](v25, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v32 = sub_25574F040();
    (*(v15 + 8))(v18, v14);
    return v32;
  }
}

id _s13JournalShared12AppStorageMOC22objectsToSavePredicateSo11NSPredicateCvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755070;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_255755060;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  v3 = sub_255666F5C();
  *(v1 + 64) = v3;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x80000002557523D0;
  *(v0 + 32) = sub_255750750();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255755060;
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x8000000255752490;
  *(v0 + 40) = sub_255750750();
  v5 = sub_255750370();

  v6 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v6;
}

void sub_2556B0B6C()
{
  if (qword_27F7BD6F8 != -1)
  {
    swift_once();
  }

  v0 = sub_25574F2C0();
  __swift_project_value_buffer(v0, qword_27F7BE5D0);
  v1 = sub_25574F2A0();
  v2 = sub_255750780();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    v5 = sub_255751020();
    v7 = sub_2556E474C(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_255661000, v1, v2, "%s was marked for deletion.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x259C3F520](v4, -1, -1);
    MEMORY[0x259C3F520](v3, -1, -1);
  }
}

uint64_t sub_2556B0CD8@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_2556B0D0C(uint64_t a1)
{
  result = sub_2556B0F04(&qword_27F7BE610, type metadata accessor for AppStorageMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2556B0D64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556B0DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2556B0E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2556B0EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2556B0F04(unint64_t *a1, void (*a2)(uint64_t))
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

JournalShared::SettingsKey_optional __swiftcall SettingsKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750ED0();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2556B0FB0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SettingsKey.rawValue.getter();
  v4 = v3;
  if (v2 == SettingsKey.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_255750EB0();
  }

  return v7 & 1;
}

uint64_t sub_2556B104C()
{
  v1 = *v0;
  sub_255750F80();
  SettingsKey.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556B10B4()
{
  v2 = *v0;
  SettingsKey.rawValue.getter();
  sub_2557501F0();
}

uint64_t sub_2556B1118()
{
  v1 = *v0;
  sub_255750F80();
  SettingsKey.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

unint64_t sub_2556B1188@<X0>(unint64_t *a1@<X8>)
{
  result = SettingsKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AnalyticsEndpointName.id.getter()
{
  v1 = *v0;
  v2 = 0x69746375646F7250;
  v3 = 1953719636;
  v4 = 0x6D706F6C65766544;
  if (v1 != 3)
  {
    v4 = 0x676E6967617453;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 16721;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

JournalShared::AnalyticsEndpointName_optional __swiftcall AnalyticsEndpointName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2556B12B0()
{
  result = qword_27F7BE618;
  if (!qword_27F7BE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE618);
  }

  return result;
}

unint64_t sub_2556B1314()
{
  result = qword_27F7BE620;
  if (!qword_27F7BE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE620);
  }

  return result;
}

uint64_t sub_2556B1368()
{
  v1 = *v0;
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556B1444()
{
  *v0;
  *v0;
  *v0;
  sub_2557501F0();
}

uint64_t sub_2556B150C()
{
  v1 = *v0;
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

unint64_t sub_2556B15F4()
{
  result = qword_27F7BE628;
  if (!qword_27F7BE628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BE630, &qword_255757590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE628);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsEndpointName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsEndpointName(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2556B17E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t StreakEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StreakEvent() + 20);
  v4 = sub_25574F020();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StreakEvent.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StreakEvent() + 20);
  v4 = sub_25574F020();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StreakEvent.init(entryID:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25574F0D0();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  sub_2556B17E8(a1, a3);
  v7 = *(type metadata accessor for StreakEvent() + 20);
  v8 = sub_25574F020();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_2556B1A88()
{
  if (*v0)
  {
    result = 1702125924;
  }

  else
  {
    result = 0x44497972746E65;
  }

  *v0;
  return result;
}

uint64_t sub_2556B1ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44497972746E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_255750EB0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255750EB0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2556B1B98(uint64_t a1)
{
  v2 = sub_2556B1E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556B1BD4(uint64_t a1)
{
  v2 = sub_2556B1E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StreakEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE638, &qword_2557576B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556B1E10();
  sub_255750FF0();
  v11[15] = 0;
  sub_25574F0D0();
  sub_2556B22B4(&qword_27F7BE648, MEMORY[0x277CC95F0]);
  sub_255750DF0();
  if (!v1)
  {
    v9 = *(type metadata accessor for StreakEvent() + 20);
    v11[14] = 1;
    sub_25574F020();
    sub_2556B22B4(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750E30();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2556B1E10()
{
  result = qword_27F7BE640;
  if (!qword_27F7BE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE640);
  }

  return result;
}

uint64_t StreakEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_25574F020();
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v25 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE650, &qword_2557576B8);
  v29 = *(v31 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v25 - v10;
  v12 = type metadata accessor for StreakEvent();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25574F0D0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556B1E10();
  v18 = v32;
  sub_255750FE0();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2556B224C(v15);
  }

  else
  {
    v32 = v12;
    v19 = v29;
    v34 = 0;
    sub_2556B22B4(&qword_27F7BE658, MEMORY[0x277CC95F0]);
    v20 = v30;
    sub_255750D40();
    sub_2556B17E8(v20, v15);
    v33 = 1;
    sub_2556B22B4(&qword_27F7BDC38, MEMORY[0x277CC9578]);
    v21 = v5;
    v22 = v28;
    v23 = v31;
    sub_255750D80();
    (*(v19 + 8))(v11, v23);
    (*(v26 + 32))(&v15[*(v32 + 20)], v21, v22);
    sub_2556B22FC(v15, v27);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2556B2360(v15);
  }
}

uint64_t sub_2556B224C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556B22B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2556B22FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556B2360(uint64_t a1)
{
  v2 = type metadata accessor for StreakEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2556B2428()
{
  result = qword_27F7BE678;
  if (!qword_27F7BE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE678);
  }

  return result;
}

unint64_t sub_2556B2480()
{
  result = qword_27F7BE680;
  if (!qword_27F7BE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE680);
  }

  return result;
}

unint64_t sub_2556B24D8()
{
  result = qword_27F7BE688;
  if (!qword_27F7BE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE688);
  }

  return result;
}

uint64_t sub_2556B252C()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE690);
  v1 = __swift_project_value_buffer(v0, qword_27F7BE690);
  if (qword_27F7BD5D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C0510);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

ValueMetadata *AssetType.metadataType.getter()
{
  v1 = 0;
  switch(*v0)
  {
    case 0:
    case 1:
    case 2:
      v1 = type metadata accessor for PhotoLibraryAssetMetadata();
      v2 = &unk_27F7BE720;
      v3 = type metadata accessor for PhotoLibraryAssetMetadata;
      goto LABEL_18;
    case 3:
      v1 = type metadata accessor for MusicAssetMetadata();
      v2 = &unk_27F7BE6F0;
      v3 = type metadata accessor for MusicAssetMetadata;
      goto LABEL_18;
    case 4:
      v1 = type metadata accessor for PodcastAssetMetadata();
      v2 = &unk_27F7BE6E0;
      v3 = type metadata accessor for PodcastAssetMetadata;
      goto LABEL_18;
    case 5:
      v1 = type metadata accessor for BookAssetMetadata();
      v2 = &unk_27F7BE6E8;
      v3 = type metadata accessor for BookAssetMetadata;
      goto LABEL_18;
    case 6:
      v1 = type metadata accessor for AudioAssetMetadata(0);
      v2 = &unk_27F7BE6F8;
      v3 = type metadata accessor for AudioAssetMetadata;
      goto LABEL_18;
    case 7:
      v1 = type metadata accessor for VisitAssetMetadata(0);
      v2 = &unk_27F7BE718;
      v3 = type metadata accessor for VisitAssetMetadata;
      goto LABEL_18;
    case 8:
      sub_2556B2A14();
      return &type metadata for MultiPinMapAssetMetadata;
    case 9:
      v1 = type metadata accessor for GenericMapAssetMetadata(0);
      v2 = &unk_27F7BE700;
      v3 = type metadata accessor for GenericMapAssetMetadata;
      goto LABEL_18;
    case 0xA:
      v1 = type metadata accessor for LinkAssetMetadata();
      v2 = &unk_27F7BE6D0;
      v3 = type metadata accessor for LinkAssetMetadata;
      goto LABEL_18;
    case 0xB:
      v1 = type metadata accessor for ContactAssetMetadata();
      v2 = &unk_27F7BE6D8;
      v3 = type metadata accessor for ContactAssetMetadata;
      goto LABEL_18;
    case 0xC:
      v1 = type metadata accessor for WorkoutIconAssetMetadata(0);
      v2 = &unk_27F7BE708;
      v3 = type metadata accessor for WorkoutIconAssetMetadata;
      goto LABEL_18;
    case 0xE:
      sub_2556B29C0();
      return &type metadata for ReflectionAssetMetadata;
    case 0xF:
      v1 = type metadata accessor for StateOfMindAssetMetadata();
      v2 = &unk_27F7BE6B8;
      v3 = type metadata accessor for StateOfMindAssetMetadata;
      goto LABEL_18;
    case 0x10:
      v1 = type metadata accessor for MotionActivityAssetMetadata();
      v2 = &unk_27F7BE6C8;
      v3 = type metadata accessor for MotionActivityAssetMetadata;
      goto LABEL_18;
    case 0x11:
      v1 = type metadata accessor for ThirdPartyMediaAssetMetadata();
      v2 = &unk_27F7BE6B0;
      v3 = type metadata accessor for ThirdPartyMediaAssetMetadata;
      goto LABEL_18;
    case 0x15:
      v1 = type metadata accessor for ConfettiAssetMetadata();
      v2 = &unk_27F7BE6A8;
      v3 = type metadata accessor for ConfettiAssetMetadata;
LABEL_18:
      sub_2556B2A68(v2, v3);
      break;
    default:
      return v1;
  }

  return v1;
}

unint64_t sub_2556B29C0()
{
  result = qword_27F7BE6C0;
  if (!qword_27F7BE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE6C0);
  }

  return result;
}

unint64_t sub_2556B2A14()
{
  result = qword_27F7BE710;
  if (!qword_27F7BE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE710);
  }

  return result;
}

uint64_t sub_2556B2A68(unint64_t *a1, void (*a2)(uint64_t))
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

char JournalEntryAssetMO.metadata.getter@<W0>(uint64_t a1@<X8>)
{
  v3 = [v1 assetType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2557501B0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  LOBYTE(v9) = AssetType.init(rawValue:)(v8);
  if (v28 == 23)
  {
    goto LABEL_10;
  }

  v9 = [v1 assetMetaData];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = sub_25574EF90();
  v13 = v12;

  v27[14] = v28;
  v14 = AssetType.metadataType.getter();
  if (!v14)
  {
    LOBYTE(v9) = sub_2556755A8(v11, v13);
    goto LABEL_10;
  }

  v16 = v14;
  v17 = v15;
  v18 = sub_255750950();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v27[-v21];
  v23 = *(v17 + 8);
  Data.asObject<A>(of:)(v16, &v27[-v21]);
  v24 = *(v16 - 8);
  if ((*(v24 + 48))(v22, 1, v16) == 1)
  {
    sub_2556755A8(v11, v13);
    LOBYTE(v9) = (*(v19 + 8))(v22, v18);
LABEL_10:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return v9;
  }

  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(v24 + 32))(boxed_opaque_existential_1, v22, v16);
  LOBYTE(v9) = sub_2556755A8(v11, v13);
  return v9;
}

uint64_t Encodable.asData.getter(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  v3 = sub_25574EB30();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_25574EB20();
  v6 = sub_25574EB10();

  return v6;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void static TapToRadarUtilities.RadarComponent.journaliOS.getter(void *a1@<X8>)
{
  *a1 = 0x6C616E72756F4ALL;
  a1[1] = 0xE700000000000000;
  a1[2] = 0x37333037383531;
  a1[3] = 0xE700000000000000;
  a1[4] = 5459817;
  a1[5] = 0xE300000000000000;
}

uint64_t TTRInfo.components.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t TTRInfo.alertTitle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TTRInfo.alertMessage.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t TTRInfo.radarTitle.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t TTRInfo.errorDescription.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

JournalShared::TapToRadarUtilities::RadarClassification_optional __swiftcall TapToRadarUtilities.RadarClassification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t TapToRadarUtilities.RadarClassification.rawValue.getter()
{
  if (*v0)
  {
    result = 0x754220726568744FLL;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_2556B330C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x754220726568744FLL;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = 0x8000000255752240;
  }

  else
  {
    v5 = 0xE900000000000067;
  }

  if (*a2)
  {
    v6 = 0x754220726568744FLL;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (*a2)
  {
    v7 = 0xE900000000000067;
  }

  else
  {
    v7 = 0x8000000255752240;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255750EB0();
  }

  return v9 & 1;
}

uint64_t sub_2556B33BC()
{
  v1 = *v0;
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556B3448()
{
  *v0;
  sub_2557501F0();
}

uint64_t sub_2556B34C0()
{
  v1 = *v0;
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556B3548@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255750CD0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2556B35A8(unint64_t *a1@<X8>)
{
  v2 = 0x8000000255752240;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x754220726568744FLL;
    v2 = 0xE900000000000067;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t static TapToRadarUtilities.generateTapToRadarURL(for:title:description:classification:attachments:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a7;
  v40 = a5;
  v31 = a4;
  v37 = a2;
  v38 = a3;
  v43 = a8;
  v33 = sub_25574EBC0();
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v33);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25574EC20();
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  v34 = a1[3];
  v35 = v19;
  v20 = a1[4];
  v21 = a1[5];
  v36 = *a6;
  sub_25574EC10();
  sub_25574EC00();
  MEMORY[0x259C3C8C0](7824750, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0E8, &qword_255755C70);
  v22 = *(v10 + 72);
  v32 = v10;
  v23 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_255757880;
  sub_25574EBB0();
  sub_25574EBB0();
  sub_25574EBB0();
  sub_25574EBB0();
  sub_25574EBB0();

  v44 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
  sub_2556B3A2C();
  sub_2557500C0();
  sub_25574EBB0();

  if (v40)
  {
    v25 = v30;
    sub_25574EBB0();
    v27 = *(v24 + 16);
    v26 = *(v24 + 24);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_255698958(v26 > 1, v27 + 1, 1, v24);
    }

    *(v24 + 16) = v27 + 1;
    (*(v32 + 32))(v24 + v23 + v27 * v22, v25, v33);
  }

  sub_25574EBD0();
  sub_25574EBE0();
  return (*(v41 + 8))(v16, v42);
}

unint64_t sub_2556B3A2C()
{
  result = qword_27F7BE730;
  if (!qword_27F7BE730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BE728, &qword_255757898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE730);
  }

  return result;
}

unint64_t sub_2556B3AAC()
{
  result = qword_27F7BE738;
  if (!qword_27F7BE738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE738);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2556B3B2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2556B3B74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2556B3C44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2556B3C8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

JournalShared::JournalAppVersion_optional __swiftcall JournalAppVersion.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue)
  {
    if (rawValue == 1010)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    if (rawValue == 1001)
    {
      v2 = 1;
    }

    else
    {
      v2 = v3;
    }
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2556B3D60()
{
  v1 = *v0;
  sub_255750F80();
  sub_255750FB0();
  return sub_255750FD0();
}

uint64_t sub_2556B3DF0()
{
  v1 = *v0;
  sub_255750F80();
  sub_255750FB0();
  return sub_255750FD0();
}

BOOL sub_2556B3F28(__int16 a1, __int16 a2)
{
  v2 = (0x3F203E90000uLL >> (16 * a2));
  v3 = (0x3F203E90000uLL >> (16 * a1));
  if (v2 != v3)
  {
    return v2 >= v3;
  }

  if (HIBYTE(a1) > 1u)
  {
    if (HIBYTE(a1) == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (HIBYTE(a1) == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!HIBYTE(a2))
    {
      goto LABEL_25;
    }

LABEL_16:
    if (HIBYTE(a2) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 10;
    }

    if (HIBYTE(a2) == 1)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (HIBYTE(a2) > 2u)
    {
      v7 = v8;
    }

    return v5 >= v7;
  }

  if (!HIBYTE(a1))
  {
    v7 = 0x7FFF;
    v5 = 0x7FFF;
    if (!HIBYTE(a2))
    {
      return v5 >= v7;
    }

    goto LABEL_16;
  }

  v5 = -1;
  if (HIBYTE(a2))
  {
    goto LABEL_16;
  }

LABEL_25:
  v7 = 0x7FFF;
  return v5 >= v7;
}

BOOL sub_2556B4024(__int16 a1, __int16 a2)
{
  v2 = (0x3F203E90000uLL >> (16 * a1));
  v3 = (0x3F203E90000uLL >> (16 * a2));
  if (v2 != v3)
  {
    return v2 >= v3;
  }

  if (HIBYTE(a2) > 1u)
  {
    if (HIBYTE(a2) == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (HIBYTE(a2) == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!HIBYTE(a1))
    {
      goto LABEL_25;
    }

LABEL_16:
    if (HIBYTE(a1) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 10;
    }

    if (HIBYTE(a1) == 1)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (HIBYTE(a1) > 2u)
    {
      v7 = v8;
    }

    return v5 >= v7;
  }

  if (!HIBYTE(a2))
  {
    v7 = 0x7FFF;
    v5 = 0x7FFF;
    if (!HIBYTE(a1))
    {
      return v5 >= v7;
    }

    goto LABEL_16;
  }

  v5 = -1;
  if (HIBYTE(a1))
  {
    goto LABEL_16;
  }

LABEL_25:
  v7 = 0x7FFF;
  return v5 >= v7;
}

BOOL sub_2556B4120(__int16 a1, __int16 a2)
{
  v2 = (0x3F203E90000uLL >> (16 * a2));
  v3 = (0x3F203E90000uLL >> (16 * a1));
  if (v2 != v3)
  {
    return v2 < v3;
  }

  if (HIBYTE(a1) > 1u)
  {
    if (HIBYTE(a1) == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (HIBYTE(a1) == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!HIBYTE(a2))
    {
      goto LABEL_25;
    }

LABEL_16:
    if (HIBYTE(a2) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 10;
    }

    if (HIBYTE(a2) == 1)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (HIBYTE(a2) > 2u)
    {
      v7 = v8;
    }

    return v5 < v7;
  }

  if (!HIBYTE(a1))
  {
    v7 = 0x7FFF;
    v5 = 0x7FFF;
    if (!HIBYTE(a2))
    {
      return v5 < v7;
    }

    goto LABEL_16;
  }

  v5 = -1;
  if (HIBYTE(a2))
  {
    goto LABEL_16;
  }

LABEL_25:
  v7 = 0x7FFF;
  return v5 < v7;
}

uint64_t MinimumSupportedVersion.journalAppVersion.getter@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  result = (*(a1 + 8))();
  if (result == 1010)
  {
    v5 = 2;
  }

  else
  {
    if (result)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (result == 1001)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  *a2 = v5;
  return result;
}

JournalShared::UnsupportedEntryMode_optional __swiftcall UnsupportedEntryMode.init(rawValue:)(Swift::Int16 rawValue)
{
  if ((rawValue + 1) > 0xBu)
  {
    *v1 = 5;
  }

  else
  {
    *v1 = byte_255757E42[(rawValue + 1)];
  }

  return rawValue;
}

uint64_t sub_2556B42B0()
{
  v1 = *v0;
  sub_255750F80();
  v2 = word_255757E5A[v1];
  sub_255750FB0();
  return sub_255750FD0();
}

uint64_t sub_2556B4338()
{
  v1 = *v0;
  sub_255750F80();
  v2 = word_255757E5A[v1];
  sub_255750FB0();
  return sub_255750FD0();
}

BOOL static UnsupportedEntryMode.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 1)
  {
    if (*a1)
    {
      v5 = -1;
      if (!*a2)
      {
LABEL_23:
        v6 = 0x7FFF;
        return v5 < v6;
      }
    }

    else
    {
      v5 = 0x7FFF;
      v6 = 0x7FFF;
      if (!*a2)
      {
        return v5 < v6;
      }
    }
  }

  else
  {
    if (v2 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (v2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!*a2)
    {
      goto LABEL_23;
    }
  }

  if (v3 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 10;
  }

  if (v3 == 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (*a2 > 2u)
  {
    v6 = v7;
  }

  return v5 < v6;
}

uint64_t UnsupportedEntryMode.debugDescription.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x65546E6564646968;
  v4 = 0x7865546E69616C70;
  if (v1 != 3)
  {
    v4 = 0x7475626972747461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C416E6564646968;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

BOOL sub_2556B44F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 1)
  {
    if (*a1)
    {
      v5 = -1;
      if (!*a2)
      {
LABEL_23:
        v6 = 0x7FFF;
        return v5 < v6;
      }
    }

    else
    {
      v6 = 0x7FFF;
      v5 = 0x7FFF;
      if (!*a2)
      {
        return v5 < v6;
      }
    }
  }

  else
  {
    if (v2 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (v2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!*a2)
    {
      goto LABEL_23;
    }
  }

  if (v3 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 10;
  }

  if (v3 == 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (*a2 > 2u)
  {
    v6 = v7;
  }

  return v5 < v6;
}

BOOL sub_2556B4580(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 <= 1)
  {
    if (*a2)
    {
      v5 = -1;
      if (!*a1)
      {
LABEL_23:
        v6 = 0x7FFF;
        return v5 >= v6;
      }
    }

    else
    {
      v6 = 0x7FFF;
      v5 = 0x7FFF;
      if (!*a1)
      {
        return v5 >= v6;
      }
    }
  }

  else
  {
    if (v3 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (v3 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!*a1)
    {
      goto LABEL_23;
    }
  }

  if (v2 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 10;
  }

  if (v2 == 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (*a1 > 2u)
  {
    v6 = v7;
  }

  return v5 >= v6;
}

BOOL sub_2556B4610(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 1)
  {
    if (*a1)
    {
      v5 = -1;
      if (!*a2)
      {
LABEL_23:
        v6 = 0x7FFF;
        return v5 >= v6;
      }
    }

    else
    {
      v6 = 0x7FFF;
      v5 = 0x7FFF;
      if (!*a2)
      {
        return v5 >= v6;
      }
    }
  }

  else
  {
    if (v2 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (v2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!*a2)
    {
      goto LABEL_23;
    }
  }

  if (v3 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 10;
  }

  if (v3 == 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (*a2 > 2u)
  {
    v6 = v7;
  }

  return v5 >= v6;
}

BOOL sub_2556B46A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 <= 1)
  {
    if (*a2)
    {
      v5 = -1;
      if (!*a1)
      {
LABEL_23:
        v6 = 0x7FFF;
        return v5 < v6;
      }
    }

    else
    {
      v6 = 0x7FFF;
      v5 = 0x7FFF;
      if (!*a1)
      {
        return v5 < v6;
      }
    }
  }

  else
  {
    if (v3 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 10;
    }

    if (v3 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (!*a1)
    {
      goto LABEL_23;
    }
  }

  if (v2 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 10;
  }

  if (v2 == 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (*a1 > 2u)
  {
    v6 = v7;
  }

  return v5 < v6;
}

uint64_t sub_2556B4740()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x65546E6564646968;
  v4 = 0x7865546E69616C70;
  if (v1 != 3)
  {
    v4 = 0x7475626972747461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C416E6564646968;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

id JournalEntryMO.unsupportedEntryMode.getter@<X0>(char *a1@<X8>)
{
  result = [v1 minimumSupportedAppVersionMode];
  if ((result + 1) > 0xB)
  {
    v4 = 5;
  }

  else
  {
    v4 = byte_255757E42[(result + 1)];
  }

  *a1 = v4;
  return result;
}

void sub_2556B4870(__int16 a1, __int16 a2)
{
  if ([v2 minimumSupportedAppVersion] > 1010)
  {
    if (qword_27F7BD5B8 != -1)
    {
      swift_once();
    }

    v5 = sub_25574F2C0();
    __swift_project_value_buffer(v5, qword_27F7C04B0);
    oslog = sub_25574F2A0();
    v6 = sub_2557507A0();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Not setting minimum supported version since current app version is newer than the client";
LABEL_6:
    _os_log_impl(&dword_255661000, oslog, v6, v8, v7, 2u);
    MEMORY[0x259C3F520](v7, -1, -1);
LABEL_7:

    return;
  }

  v9 = [v2 minimumSupportedAppVersionMode];
  if ((v9 > 0xA || ((1 << v9) & 0x407) == 0) && v9 != 0xFFFF)
  {
    if (qword_27F7BD5B8 != -1)
    {
      swift_once();
    }

    v12 = sub_25574F2C0();
    __swift_project_value_buffer(v12, qword_27F7C04B0);
    oslog = sub_25574F2A0();
    v6 = sub_2557507A0();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Not setting minimum supported mode since current unsupported mode is not recognized";
    goto LABEL_6;
  }

  [v2 setMinimumSupportedAppVersion_];
  [v2 setMinimumSupportedAppVersionMode_];

  [v2 setIsUploadedToCloud_];
}

void sub_2556B4BDC(__int16 a1)
{
  if ([v1 minimumSupportedAppVersion] <= 1010)
  {
    [v1 setMinimumSupportedAppVersion_];

    [v1 setIsUploadedToCloud_];
  }

  else
  {
    if (qword_27F7BD5B8 != -1)
    {
      swift_once();
    }

    v3 = sub_25574F2C0();
    __swift_project_value_buffer(v3, qword_27F7C04B0);
    oslog = sub_25574F2A0();
    v4 = sub_2557507A0();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_255661000, oslog, v4, "Not setting minimum supported version since current app version is newer than the client", v5, 2u);
      MEMORY[0x259C3F520](v5, -1, -1);
    }
  }
}

uint64_t sub_2556B4D24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE790, &unk_255757E20);
  __swift_allocate_value_buffer(v0, qword_27F7BE740);
  __swift_project_value_buffer(v0, qword_27F7BE740);
  v1 = [objc_opt_self() megabytes];
  sub_2556B6054();
  return sub_25574EB40();
}

uint64_t sub_2556B4DC0@<X0>(unint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE790, &unk_255757E20);
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v3);
  v62 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v11 = *(v10 - 1);
  v12 = *(v11 + 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7A0, &qword_255757E38);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  v65 = v1;
  JournalEntryMO.mergeableAttributedText.getter(&v59 - v20);
  v22 = *(v11 + 6);
  v23 = (v22)(v21, 1, v10);
  v61 = v9;
  if (v23)
  {
    sub_255674B20(v21, &qword_27F7BE7A0, &qword_255757E38);
  }

  else
  {
    (*(v11 + 2))(v14, v21, v10);
    sub_255674B20(v21, &qword_27F7BE7A0, &qword_255757E38);
    CRAttributedString<>.minimumAppVersion.getter(v66);
    (*(v11 + 1))(v14, v10);
    LOBYTE(v25) = v66[0];
    if (LOBYTE(v66[0]))
    {
      v60 = a1;
      v24 = sub_255698980(0, 1, 1, MEMORY[0x277D84F90]);
      a1 = *(v24 + 2);
      v26 = *(v24 + 3);
      v27 = a1 + 1;
      if (a1 >= v26 >> 1)
      {
        goto LABEL_51;
      }

      goto LABEL_6;
    }
  }

  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    JournalEntryMO.mergeableAttributedText.getter(v19);
    if ((v22)(v19, 1, v10))
    {
      sub_255674B20(v19, &qword_27F7BE7A0, &qword_255757E38);
LABEL_54:
      v39 = v63;
      v38 = v64;
      v40 = v62;
      goto LABEL_55;
    }

    (*(v11 + 2))(v14, v19, v10);
    sub_255674B20(v19, &qword_27F7BE7A0, &qword_255757E38);
    v27 = sub_25574F9E0();
    v29 = *(v11 + 1);
    v11 += 8;
    v29(v14, v10);
    if (v27)
    {
      goto LABEL_54;
    }

    v30 = JournalEntryMO.assetsArrayUnsorted.getter();
    v25 = v30;
    if (v30 >> 62)
    {
      v22 = sub_255750A30();
      if (!v22)
      {
LABEL_53:

        goto LABEL_54;
      }
    }

    else
    {
      v22 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_53;
      }
    }

    v14 = 0;
    v59 = v25 & 0xFFFFFFFFFFFFFF8;
    v60 = v25 & 0xC000000000000001;
LABEL_13:
    if (v60)
    {
      v31 = MEMORY[0x259C3E830](v14, v25);
    }

    else
    {
      v26 = *(v59 + 16);
      if (v14 >= v26)
      {
        goto LABEL_50;
      }

      v31 = *(v25 + 8 * v14 + 32);
    }

    v19 = v31;
    v11 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      break;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v24 = sub_255698980((v26 > 1), v27, 1, v24);
LABEL_6:
    *(v24 + 2) = v27;
    v28 = &v24[2 * a1];
    v28[32] = v25;
    v28[33] = 3;
    a1 = v60;
  }

  v32 = [v31 assetType];
  if (v32)
  {
    v10 = v32;
    v33 = sub_2557501B0();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  v36._countAndFlagsBits = v33;
  v36._object = v35;
  AssetType.init(rawValue:)(v36);
  v27 = 0xE500000000000000;
  switch(LOBYTE(v66[0]))
  {
    case 1:
      v27 = 0xE90000000000006FLL;
      goto LABEL_39;
    case 4:
      v27 = 0xE700000000000000;
      goto LABEL_39;
    case 5:
      v27 = 0xE400000000000000;
      goto LABEL_39;
    case 8:
      v27 = 0xEB0000000070614DLL;
      goto LABEL_39;
    case 9:
      v27 = 0xEA00000000007061;
      goto LABEL_39;
    case 0xA:
      v27 = 0xE400000000000000;
      goto LABEL_39;
    case 0xB:
      v27 = 0xE700000000000000;
      goto LABEL_39;
    case 0xC:
      v27 = 0xEB000000006E6F63;
      goto LABEL_39;
    case 0xD:
      v27 = 0xEC0000006574756FLL;
      goto LABEL_39;
    case 0xE:
      v27 = 0xEA00000000006E6FLL;
      goto LABEL_39;
    case 0xF:
      v27 = 0xEB00000000646E69;
      goto LABEL_39;
    case 0x10:
      v27 = 0xEE00797469766974;
      goto LABEL_39;
    case 0x11:
      v27 = 0xEF616964654D7974;
      goto LABEL_39;
    case 0x12:
      v27 = 0xEB00000000726564;
      goto LABEL_39;
    case 0x13:
      v27 = 0xEB00000000746E65;
      goto LABEL_39;
    case 0x14:
      swift_bridgeObjectRelease_n();

      goto LABEL_44;
    case 0x15:
      v27 = 0xE800000000000000;
      goto LABEL_39;
    case 0x16:
      v27 = 0xE700000000000000;
      goto LABEL_39;
    case 0x17:

      goto LABEL_40;
    default:
LABEL_39:
      v37 = sub_255750EB0();

      if ((v37 & 1) == 0)
      {
LABEL_40:
        ++v14;
        if (v11 == v22)
        {
          goto LABEL_53;
        }

        goto LABEL_13;
      }

LABEL_44:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_255698980(0, *(v24 + 2) + 1, 1, v24);
      }

      v39 = v63;
      v38 = v64;
      v40 = v62;
      v42 = *(v24 + 2);
      v41 = *(v24 + 3);
      if (v42 >= v41 >> 1)
      {
        v24 = sub_255698980((v41 > 1), v42 + 1, 1, v24);
      }

      *(v24 + 2) = v42 + 1;
      *&v24[2 * v42 + 32] = 514;
LABEL_55:
      v66[3] = &type metadata for JournalFeatureFlags;
      v66[4] = sub_255663AC0();
      LOBYTE(v66[0]) = 4;
      v43 = sub_25574F1E0();
      __swift_destroy_boxed_opaque_existential_1(v66);
      if (v43)
      {
        v44 = [v65 deletedOnDate];
        if (v44)
        {
          v45 = v61;
          v46 = v44;
          sub_25574EFF0();

          v47 = sub_25574F020();
          (*(*(v47 - 8) + 56))(v45, 0, 1, v47);
          sub_255674B20(v45, &qword_27F7BEB40, &unk_255754E40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_255698980(0, *(v24 + 2) + 1, 1, v24);
          }

          v49 = *(v24 + 2);
          v48 = *(v24 + 3);
          if (v49 >= v48 >> 1)
          {
            v24 = sub_255698980((v48 > 1), v49 + 1, 1, v24);
          }

          *(v24 + 2) = v49 + 1;
          *&v24[2 * v49 + 32] = 258;
        }

        else
        {
          v50 = sub_25574F020();
          v51 = v61;
          (*(*(v50 - 8) + 56))(v61, 1, 1, v50);
          sub_255674B20(v51, &qword_27F7BEB40, &unk_255754E40);
        }
      }

      sub_2557138B4(MEMORY[0x277D84FA0]);
      v52 = [objc_opt_self() bytes];
      sub_2556B6054();
      sub_25574EB40();
      if (qword_27F7BD708 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v38, qword_27F7BE740);
      sub_255669798(&qword_27F7BE7B8, &qword_27F7BE790, &unk_255757E20);
      v53 = sub_2557500D0();
      (*(v39 + 8))(v40, v38);
      if ((v53 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_255698980(0, *(v24 + 2) + 1, 1, v24);
        }

        v55 = *(v24 + 2);
        v54 = *(v24 + 3);
        if (v55 >= v54 >> 1)
        {
          v24 = sub_255698980((v54 > 1), v55 + 1, 1, v24);
        }

        *(v24 + 2) = v55 + 1;
        *&v24[2 * v55 + 32] = 770;
      }

      sub_2556C6980(v24, v66);

      v57 = v66[0];
      v58 = HIBYTE(LOWORD(v66[0]));
      if (LOBYTE(v66[0]) == 3)
      {
        v57 = 0;
        LOBYTE(v58) = 0;
      }

      *a1 = v57;
      *(a1 + 1) = v58;
      return result;
  }
}

id JournalEntryMO.minimumVersionConfiguration.getter@<X0>(__int16 *a1@<X8>)
{
  result = [v1 minimumSupportedAppVersion];
  if (result)
  {
    if (result == 1010)
    {
      v4 = 2;
    }

    else
    {
      if (result != 1001)
      {
        v6 = 3;
        goto LABEL_12;
      }

      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  result = [v1 minimumSupportedAppVersionMode];
  if ((result + 1) > 0xB)
  {
    v5 = 1;
  }

  else
  {
    v5 = byte_255757E4E[(result + 1)];
  }

  v6 = v4 | (v5 << 8);
LABEL_12:
  *a1 = v6;
  return result;
}

Swift::Void __swiftcall JournalEntryMO.computeAndSetAggregateMinimumVersion()()
{
  sub_2556B4DC0(&v2);
  v1 = v2;
  v0 = &v1;
  JournalEntryMO.setMinimumVersionConfiguration(_:)(v0);
}

BOOL _s13JournalShared27MinimumVersionConfigurationV1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = (0x3F203E90000uLL >> (16 * *a1));
  v3 = (0x3F203E90000uLL >> (16 * *a2));
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v4 = a1[1];
  v5 = a2[1];
  if (v5 > 1)
  {
    if (v5 == 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 10;
    }

    if (v5 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (!a1[1])
    {
      goto LABEL_25;
    }

LABEL_16:
    if (v4 == 3)
    {
      v10 = 2;
    }

    else
    {
      v10 = 10;
    }

    if (v4 == 1)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (a1[1] > 2u)
    {
      v9 = v10;
    }

    return v7 < v9;
  }

  if (!a2[1])
  {
    v9 = 0x7FFF;
    v7 = 0x7FFF;
    if (!a1[1])
    {
      return v7 < v9;
    }

    goto LABEL_16;
  }

  v7 = -1;
  if (a1[1])
  {
    goto LABEL_16;
  }

LABEL_25:
  v9 = 0x7FFF;
  return v7 < v9;
}

unint64_t sub_2556B5D48()
{
  result = qword_27F7BE758;
  if (!qword_27F7BE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE758);
  }

  return result;
}

unint64_t sub_2556B5DE0()
{
  result = qword_27F7BE770;
  if (!qword_27F7BE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE770);
  }

  return result;
}

unint64_t sub_2556B5E7C()
{
  result = qword_27F7BE788;
  if (!qword_27F7BE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE788);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MinimumVersionConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for MinimumVersionConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2556B6054()
{
  result = qword_27F7BE7B0;
  if (!qword_27F7BE7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE7B0);
  }

  return result;
}

void sub_2556B60A8(uint64_t a1, uint64_t a2, void *a3)
{
  v94 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v83 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v84 = v79 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v79 - v12;
  MEMORY[0x28223BE20](v11);
  v85 = v79 - v14;
  v88 = a2;
  swift_bridgeObjectRetain_n();
  v15 = [a3 updatedObjects];
  v16 = sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
  v17 = sub_25568B170();
  v18 = sub_255750580();

  v80 = a3;
  v79[1] = v17;
  v86 = v13;
  v82 = v18;
  if ((v18 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    sub_2557505C0();
    v19 = v98;
    v90 = v97;
    v20 = v99;
    v21 = v100;
    v22 = v101;
  }

  else
  {
    v23 = -1 << *(v18 + 32);
    v19 = v18 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v18 + 56);

    v21 = 0;
    v90 = v18;
  }

  v81 = v20;
  v26 = (v20 + 64) >> 6;
  v93 = v16;
  v27 = v90;
  while (v27 < 0)
  {
    v33 = sub_255750A60();
    if (!v33)
    {
      goto LABEL_28;
    }

    v96 = v33;
    swift_dynamicCast();
    v32 = v102;
    v31 = v21;
    v28 = v22;
    if (!v102)
    {
      goto LABEL_28;
    }

LABEL_19:
    v89 = v21;
    type metadata accessor for JournalMO();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = v34;
      v91 = v28;
      v92 = v32;
      v36 = [v35 id];
      v87 = v22;
      if (v36)
      {
        v37 = v86;
        v38 = v36;
        sub_25574F080();

        v39 = 0;
      }

      else
      {
        v39 = 1;
        v37 = v86;
      }

      v40 = sub_25574F0D0();
      v41 = *(v40 - 8);
      (*(v41 + 56))(v37, v39, 1, v40);
      v42 = v85;
      sub_255675060(v37, v85, &unk_27F7BED20, &unk_2557551D0);
      if ((*(v41 + 48))(v42, 1, v40) == 1)
      {
        sub_255674B20(v42, &unk_27F7BED20, &unk_2557551D0);

        v27 = v90;
        v28 = v91;
      }

      else
      {
        v43 = sub_25574F040();
        v44 = v42;
        v45 = v43;
        v47 = v46;
        (*(v41 + 8))(v44, v40);
        if (v45 == v94 && v47 == v88)
        {

LABEL_57:
          sub_25568B1C8();

          swift_bridgeObjectRelease_n();
          return;
        }

        v48 = sub_255750EB0();

        v27 = v90;
        v28 = v91;
        if (v48)
        {
          goto LABEL_57;
        }
      }
    }

    v21 = v31;
    v22 = v28;
  }

  v29 = v21;
  v30 = v22;
  v31 = v21;
  if (v22)
  {
LABEL_15:
    v28 = (v30 - 1) & v30;
    v32 = *(*(v27 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v32)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v31 >= v26)
    {
      break;
    }

    v30 = *(v19 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_15;
    }
  }

LABEL_28:
  sub_25568B1C8();

  v49 = [v80 insertedObjects];
  v50 = sub_255750580();

  v85 = v50;
  if ((v50 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    sub_2557505C0();
    v51 = v103;
    v90 = v102;
    v52 = v104;
    v53 = v105;
    v54 = v106;
  }

  else
  {
    v55 = -1 << *(v50 + 32);
    v51 = v50 + 56;
    v52 = ~v55;
    v56 = -v55;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    else
    {
      v57 = -1;
    }

    v54 = v57 & *(v50 + 56);

    v90 = v50;
    v53 = 0;
  }

  v58 = v83;
  v82 = v52;
  v59 = (v52 + 64) >> 6;
  v60 = v90;
  v86 = v51;
  while (2)
  {
    if (v60 < 0)
    {
      v66 = sub_255750A60();
      if (!v66)
      {
        goto LABEL_57;
      }

      v95 = v66;
      swift_dynamicCast();
      v65 = v96;
      v64 = v53;
      v61 = v54;
      if (!v96)
      {
        goto LABEL_57;
      }

      goto LABEL_46;
    }

    v62 = v53;
    v63 = v54;
    v64 = v53;
    if (v54)
    {
LABEL_42:
      v61 = (v63 - 1) & v63;
      v65 = *(*(v60 + 48) + ((v64 << 9) | (8 * __clz(__rbit64(v63)))));
      if (!v65)
      {
        goto LABEL_57;
      }

LABEL_46:
      v87 = v53;
      v89 = v54;
      type metadata accessor for JournalMO();
      v67 = swift_dynamicCastClass();
      if (v67)
      {
        v68 = v67;
        v91 = v61;
        v92 = v65;
        v69 = [v68 id];
        if (v69)
        {
          v70 = v69;
          sub_25574F080();

          v71 = 0;
        }

        else
        {
          v71 = 1;
        }

        v72 = sub_25574F0D0();
        v73 = *(v72 - 8);
        (*(v73 + 56))(v58, v71, 1, v72);
        v74 = v84;
        sub_255675060(v58, v84, &unk_27F7BED20, &unk_2557551D0);
        if ((*(v73 + 48))(v74, 1, v72) == 1)
        {
          sub_255674B20(v74, &unk_27F7BED20, &unk_2557551D0);

          v60 = v90;
          v61 = v91;
          v51 = v86;
        }

        else
        {
          v75 = sub_25574F040();
          v77 = v76;
          (*(v73 + 8))(v74, v72);
          if (v75 == v94 && v77 == v88)
          {

            goto LABEL_59;
          }

          v78 = sub_255750EB0();

          v58 = v83;
          v60 = v90;
          v61 = v91;
          v51 = v86;
          if (v78)
          {

LABEL_59:
            sub_25568B1C8();

            return;
          }
        }
      }

      v53 = v64;
      v54 = v61;
      continue;
    }

    break;
  }

  while (1)
  {
    v64 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v64 >= v59)
    {
      goto LABEL_57;
    }

    v63 = *(v51 + 8 * v64);
    ++v62;
    if (v63)
    {
      goto LABEL_42;
    }
  }

LABEL_61:
  __break(1u);
}

void sub_2556B69DC(NSObject *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v107 = a1;
  v7 = sub_25574F500();
  v103 = *(v7 - 8);
  v104 = v7;
  v8 = *(v103 + 64);
  MEMORY[0x28223BE20](v7);
  v102 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v95 - v12;
  v14 = type metadata accessor for MergeableJournalAttributes(0);
  v105 = *(v14 - 8);
  v106 = v14;
  v15 = v105[8];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v95 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v95 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v95 - v25;
  v27 = a3;
  v28 = a3;
  v29 = a4;
  v30 = v109;
  sub_2556AD860(v28, a4, v13);
  if (!v30)
  {
    v96 = v21;
    v97 = v24;
    v100 = v26;
    v101 = a2;
    v32 = v107;
    v31 = v108;
    v98 = v18;
    v99 = v27;
    v109 = 0;
    if ((v105[6])(v13, 1, v106) == 1)
    {
      sub_255674B20(v13, &qword_27F7BE7D8, &qword_255757E98);
      if (qword_27F7BD6B8 != -1)
      {
        swift_once();
      }

      v33 = sub_25574F2C0();
      __swift_project_value_buffer(v33, qword_27F7BDD70);
      v34 = v101;

      v35 = sub_25574F2A0();
      v36 = sub_255750760();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v112 = v38;
        *v37 = 136446722;
        v39 = sub_255750920();
        v41 = sub_2556E474C(v39, v40, &v112);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2082;
        *(v37 + 14) = sub_2556E474C(v99, a4, &v112);
        *(v37 + 22) = 2080;
        v42 = [v34 recordID];
        v43 = [v42 recordName];

        v44 = sub_2557501B0();
        v46 = v45;

        v47 = sub_2556E474C(v44, v46, &v112);

        *(v37 + 24) = v47;
        _os_log_impl(&dword_255661000, v35, v36, "%{public}s record does not have a mergeable value for %{public}s. Retaining local values. Record ID: %s", v37, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v38, -1, -1);
        MEMORY[0x259C3F520](v37, -1, -1);
      }
    }

    else
    {
      v48 = v100;
      sub_2556BBC90(v13, v100, type metadata accessor for MergeableJournalAttributes);
      v111 = v31;
      v49 = v31;
      v50 = v32;
      swift_getAtKeyPath();

      v51 = v112;
      if (v112)
      {
        v52 = v29;
        v53 = v96;
        sub_2556BBB3C(v112 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v96);

        v54 = v97;
        sub_2556BBC90(v53, v97, type metadata accessor for MergeableJournalAttributes);
        v55 = v101;
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v56 = sub_25574F2C0();
        __swift_project_value_buffer(v56, qword_27F7BDD70);
        v57 = v55;

        v58 = sub_25574F2A0();
        v59 = sub_255750760();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v108 = v58;
          v61 = v60;
          v62 = swift_slowAlloc();
          v105 = v57;
          v63 = v62;
          v112 = v62;
          *v61 = 136446722;
          v111 = v50;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7F8, &qword_255757FB8);
          v64 = sub_2557501D0();
          LODWORD(v106) = v59;
          v66 = v49;
          v67 = sub_2556E474C(v64, v65, &v112);

          *(v61 + 4) = v67;
          *(v61 + 12) = 2082;
          v68 = sub_255750920();
          v70 = sub_2556E474C(v68, v69, &v112);

          *(v61 + 14) = v70;
          v49 = v66;
          v54 = v97;
          *(v61 + 22) = 2082;
          *(v61 + 24) = sub_2556E474C(v99, v52, &v112);
          v71 = v108;
          _os_log_impl(&dword_255661000, v108, v106, "Merging %{public}s with %{public}s.%{public}s record", v61, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v63, -1, -1);
          MEMORY[0x259C3F520](v61, -1, -1);
        }

        else
        {
        }

        v87 = v98;
        v89 = v103;
        v88 = v104;
        v90 = v102;
        MergeableJournalAttributes.merge(_:)(v54, v102);
        (*(v89 + 8))(v90, v88);
        sub_2556BBCF8(v54, type metadata accessor for MergeableJournalAttributes);
      }

      else
      {
        v72 = v101;
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v73 = sub_25574F2C0();
        __swift_project_value_buffer(v73, qword_27F7BDD70);
        v74 = v72;
        v75 = v29;

        v76 = sub_25574F2A0();
        v77 = sub_255750760();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v112 = v108;
          *v78 = 136446722;
          v111 = v32;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7F8, &qword_255757FB8);
          v79 = sub_2557501D0();
          v81 = v49;
          v82 = sub_2556E474C(v79, v80, &v112);

          *(v78 + 4) = v82;
          *(v78 + 12) = 2082;
          v83 = sub_255750920();
          v85 = sub_2556E474C(v83, v84, &v112);

          *(v78 + 14) = v85;
          v49 = v81;
          *(v78 + 22) = 2082;
          *(v78 + 24) = sub_2556E474C(v99, v75, &v112);
          _os_log_impl(&dword_255661000, v76, v77, "Local %{public}s is nil. Will set to value from %{public}s.%{public}s record (instead of merging)", v78, 0x20u);
          v86 = v108;
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v86, -1, -1);
          MEMORY[0x259C3F520](v78, -1, -1);
        }

        v87 = v98;
        v48 = v100;
      }

      sub_2556BBB3C(v48, v87);
      v91 = type metadata accessor for WrappedMergeableJournalAttributes(0);
      v92 = objc_allocWithZone(v91);
      sub_2556BBB3C(v87, v92 + OBJC_IVAR___WrappedMergeableJournalAttributes_value);
      v110.receiver = v92;
      v110.super_class = v91;
      v93 = v49;
      v94 = [&v110 init];
      sub_2556BBCF8(v87, type metadata accessor for MergeableJournalAttributes);
      v112 = v93;
      v111 = v94;
      swift_setAtReferenceWritableKeyPath();

      sub_2556BBCF8(v48, type metadata accessor for MergeableJournalAttributes);
    }
  }
}

uint64_t sub_2556B736C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE5E8, &qword_255757420);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for MergeableAppStorage(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v5, &qword_27F7BE5E8, &qword_255757420);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_255674B20(v5, &qword_27F7BE5E8, &qword_255757420);
    if (qword_27F7BD5E0 != -1)
    {
      swift_once();
    }

    v11 = sub_25574F2C0();
    __swift_project_value_buffer(v11, qword_27F7C0528);
    v12 = sub_25574F2A0();
    v13 = sub_255750780();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_2556E474C(0x61726F7453707041, 0xEC0000004F4D6567, &v18);
      _os_log_impl(&dword_255661000, v12, v13, "Tried to set nil mergeable attributes on %{public}s.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x259C3F520](v15, -1, -1);
      MEMORY[0x259C3F520](v14, -1, -1);
    }

    return sub_255674B20(a1, &qword_27F7BE5E8, &qword_255757420);
  }

  else
  {
    sub_2556BBC90(v5, v10, type metadata accessor for MergeableAppStorage);
    sub_2556ADC68(v10);
    sub_255674B20(a1, &qword_27F7BE5E8, &qword_255757420);
    return sub_2556BBCF8(v10, type metadata accessor for MergeableAppStorage);
  }
}

uint64_t sub_2556B7644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for MergeableJournalAttributes(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v5, &qword_27F7BE7D8, &qword_255757E98);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_255674B20(v5, &qword_27F7BE7D8, &qword_255757E98);
    if (qword_27F7BD5E0 != -1)
    {
      swift_once();
    }

    v11 = sub_25574F2C0();
    __swift_project_value_buffer(v11, qword_27F7C0528);
    v12 = sub_25574F2A0();
    v13 = sub_255750780();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_2556E474C(0x4D6C616E72756F4ALL, 0xE90000000000004FLL, &v18);
      _os_log_impl(&dword_255661000, v12, v13, "Tried to set nil mergeable attributes on %{public}s.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x259C3F520](v15, -1, -1);
      MEMORY[0x259C3F520](v14, -1, -1);
    }

    return sub_255674B20(a1, &qword_27F7BE7D8, &qword_255757E98);
  }

  else
  {
    sub_2556BBC90(v5, v10, type metadata accessor for MergeableJournalAttributes);
    sub_2556ADFBC(v10);
    sub_255674B20(a1, &qword_27F7BE7D8, &qword_255757E98);
    return sub_2556BBCF8(v10, type metadata accessor for MergeableJournalAttributes);
  }
}

uint64_t sub_2556B7918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for MergeableEntryAttributes(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v5, &qword_27F7BE7E8, &unk_255757F00);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_255674B20(v5, &qword_27F7BE7E8, &unk_255757F00);
    if (qword_27F7BD5E0 != -1)
    {
      swift_once();
    }

    v11 = sub_25574F2C0();
    __swift_project_value_buffer(v11, qword_27F7C0528);
    v12 = sub_25574F2A0();
    v13 = sub_255750780();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_2556E474C(0x456C616E72756F4ALL, 0xEE004F4D7972746ELL, &v18);
      _os_log_impl(&dword_255661000, v12, v13, "Tried to set nil mergeable attributes on %{public}s.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x259C3F520](v15, -1, -1);
      MEMORY[0x259C3F520](v14, -1, -1);
    }

    return sub_255674B20(a1, &qword_27F7BE7E8, &unk_255757F00);
  }

  else
  {
    sub_2556BBC90(v5, v10, type metadata accessor for MergeableEntryAttributes);
    sub_2556AE310(v10);
    sub_255674B20(a1, &qword_27F7BE7E8, &unk_255757F00);
    return sub_2556BBCF8(v10, type metadata accessor for MergeableEntryAttributes);
  }
}

uint64_t sub_2556B7BF4()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE7C0);
  v1 = __swift_project_value_buffer(v0, qword_27F7BE7C0);
  if (qword_27F7BD5C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *static JournalMO.newObjectFromRecord(_:context:)(void *a1, void *a2)
{
  v45 = a2;
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFD0, &unk_255757E80);
  v7 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v44 = a1;
  v22 = [a1 recordID];
  v23 = [v22 recordName];

  sub_2557501B0();
  v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v25 = [v24 initWithContext_];
  sub_25574F030();

  v26 = *(v4 + 48);
  v27 = 0;
  if (v26(v21, 1, v3) != 1)
  {
    v27 = sub_25574F050();
    (*(v4 + 8))(v21, v3);
  }

  [v25 setId_];

  v28 = 1;
  [v25 setIsUploadedToCloud_];
  v29 = [v25 id];
  v45 = v25;
  if (v29)
  {
    v30 = v29;
    sub_25574F080();

    v28 = 0;
  }

  v31 = *(v4 + 56);
  v31(v19, v28, 1, v3);
  if (qword_27F7BD820 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v3, qword_27F7BFF68);
  (*(v4 + 16))(v16, v32, v3);
  v31(v16, 0, 1, v3);
  v33 = *(v43 + 48);
  sub_255663294(v19, v9, &unk_27F7BED20, &unk_2557551D0);
  sub_255663294(v16, &v9[v33], &unk_27F7BED20, &unk_2557551D0);
  if (v26(v9, 1, v3) == 1)
  {
    sub_255674B20(v16, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v19, &unk_27F7BED20, &unk_2557551D0);
    if (v26(&v9[v33], 1, v3) == 1)
    {
      sub_255674B20(v9, &unk_27F7BED20, &unk_2557551D0);
      v34 = v45;
LABEL_14:
      [v34 setSortCategory_];
      [v34 setSortOrder_];
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v35 = v42;
  sub_255663294(v9, v42, &unk_27F7BED20, &unk_2557551D0);
  if (v26(&v9[v33], 1, v3) == 1)
  {
    sub_255674B20(v16, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v19, &unk_27F7BED20, &unk_2557551D0);
    (*(v4 + 8))(v35, v3);
LABEL_12:
    sub_255674B20(v9, &unk_27F7BFFD0, &unk_255757E80);
    v34 = v45;
    goto LABEL_15;
  }

  v36 = v41;
  (*(v4 + 32))(v41, &v9[v33], v3);
  sub_2556BBBA0(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
  v37 = v35;
  v38 = sub_255750100();
  v39 = *(v4 + 8);
  v39(v36, v3);
  sub_255674B20(v16, &unk_27F7BED20, &unk_2557551D0);
  sub_255674B20(v19, &unk_27F7BED20, &unk_2557551D0);
  v39(v37, v3);
  sub_255674B20(v9, &unk_27F7BED20, &unk_2557551D0);
  v34 = v45;
  if (v38)
  {
    goto LABEL_14;
  }

LABEL_15:
  sub_2556B8430(v44);
  return v34;
}

void sub_2556B8430(void *a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  KeyPath = swift_getKeyPath();
  sub_2556DB4F8(KeyPath, a1, 0x4464657461657263, 0xEB00000000657461);

  if (!v1)
  {
    v22 = v10;
    v23 = v4;
    v12 = swift_getKeyPath();
    sub_2556DB4F8(v12, a1, 0x4464657461647075, 0xEB00000000657461);

    sub_2556BA7E4(a1);
    v13 = [0 id];
    if (v13)
    {
      v14 = v13;
      sub_25574F080();

      v15 = v23;
      v16 = v22;
      (*(v23 + 32))(v22, v8, v3);
      if (qword_27F7BD820 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v3, qword_27F7BFF68);
      sub_2556BBBA0(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
      if ((sub_255750100() & 1) == 0)
      {
        v17 = [0 managedObjectContext];
        if (v17)
        {
          v18 = v17;
          type metadata accessor for AppStorageMO();
          v19 = static AppStorageMO.sharedStorage(context:)(v18);
          if (!v19)
          {
            (*(v15 + 8))(v16, v3);

            return;
          }

          v20 = v19;
          [0 setSortOrder_];
        }
      }

      (*(v15 + 8))(v16, v3);
    }
  }
}

id JournalMO.cloudKitRecord.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v71 - v3;
  v75 = type metadata accessor for MergeableJournalAttributes(0);
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v75);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v71 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v71 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v71 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v71 - v24;
  v26 = sub_2556AF81C();
  v77 = v26;
  if (v26)
  {
    v72 = v12;
    [v26 encryptedValues];
    v27 = [v0 updatedDate];
    v73 = v5;
    v74 = v8;
    v76 = v0;
    if (v27)
    {
      v28 = v27;
      sub_25574EFF0();

      v29 = sub_25574F020();
      (*(*(v29 - 8) + 56))(v23, 0, 1, v29);
    }

    else
    {
      v29 = sub_25574F020();
      (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
    }

    sub_255675060(v23, v25, &qword_27F7BEB40, &unk_255754E40);
    sub_25574F020();
    v39 = *(v29 - 8);
    v40 = *(v39 + 48);
    v41 = v40(v25, 1, v29);
    v42 = MEMORY[0x277CBBBE8];
    if (v41 == 1)
    {
      sub_255674B20(v25, &qword_27F7BEB40, &unk_255754E40);
      v78 = 0u;
      v79 = 0u;
      v80 = 0;
    }

    else
    {
      *(&v79 + 1) = v29;
      v80 = MEMORY[0x277CBBBE8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
      (*(v39 + 32))(boxed_opaque_existential_1, v25, v29);
    }

    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v44 = [v77 encryptedValues];
    v45 = [v76 createdDate];
    if (v45)
    {
      v46 = v42;
      v47 = v45;
      sub_25574EFF0();

      v42 = v46;
      v48 = 0;
    }

    else
    {
      v48 = 1;
    }

    v49 = v72;
    (*(v39 + 56))(v17, v48, 1, v29);
    sub_255675060(v17, v20, &qword_27F7BEB40, &unk_255754E40);
    if (v40(v20, 1, v29) == 1)
    {
      sub_255674B20(v20, &qword_27F7BEB40, &unk_255754E40);
      v78 = 0u;
      v79 = 0u;
      v80 = 0;
    }

    else
    {
      *(&v79 + 1) = v29;
      v80 = v42;
      v50 = __swift_allocate_boxed_opaque_existential_1(&v78);
      (*(v39 + 32))(v50, v20, v29);
    }

    v51 = v74;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v52 = [v76 mergeableAttributes];
    if (v52)
    {
      v53 = v52;
      sub_2556BBB3C(v52 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v49);

      v54 = 0;
    }

    else
    {
      v54 = 1;
    }

    v55 = v75;
    v56 = v73;
    (*(v73 + 56))(v49, v54, 1, v75);
    if ((*(v56 + 48))(v49, 1, v55))
    {
      sub_255674B20(v49, &qword_27F7BE7D8, &qword_255757E98);
      v57 = 0;
      v58 = 0xF000000000000000;
    }

    else
    {
      sub_2556BBB3C(v49, v51);
      sub_255674B20(v49, &qword_27F7BE7D8, &qword_255757E98);
      if (qword_27F7BD768 != -1)
      {
        swift_once();
      }

      if (qword_27F7BD760 != -1)
      {
        swift_once();
      }

      v64 = sub_25574F770();
      __swift_project_value_buffer(v64, qword_27F7C0570);
      sub_2556BBBA0(&qword_27F7BDF10, type metadata accessor for MergeableJournalAttributes);
      v57 = sub_25574F4B0();
      v58 = v65;
      sub_2556BBCF8(v51, type metadata accessor for MergeableJournalAttributes);
    }

    v59 = [v77 encryptedValues];
    if (v58 >> 60 == 15)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      *&v79 = 0;
    }

    else
    {
      v63 = MEMORY[0x277CBBBE0];
      v62 = MEMORY[0x277CC9318];
      v60 = v57;
      v61 = v58;
    }

    *&v78 = v60;
    *(&v78 + 1) = v61;
    *(&v79 + 1) = v62;
    v80 = v63;
    swift_getObjectType();
    sub_25567625C(v57, v58);
    sub_2557508E0();
    sub_2556A15B8(v57, v58);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F7BD710 != -1)
    {
      swift_once();
    }

    v30 = sub_25574F2C0();
    __swift_project_value_buffer(v30, qword_27F7BE7C0);
    v31 = v0;
    v32 = sub_25574F2A0();
    v33 = sub_255750780();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v78 = v35;
      *v34 = 136315138;
      v36 = [v31 id];
      if (v36)
      {
        v37 = v36;
        sub_25574F080();

        v38 = sub_25574F0D0();
        (*(*(v38 - 8) + 56))(v4, 0, 1, v38);
      }

      else
      {
        v66 = sub_25574F0D0();
        (*(*(v66 - 8) + 56))(v4, 1, 1, v66);
      }

      v67 = sub_2557501D0();
      v69 = sub_2556E474C(v67, v68, &v78);

      *(v34 + 4) = v69;
      _os_log_impl(&dword_255661000, v32, v33, "Failed to create partial CKRecord for JournalMO with id: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x259C3F520](v35, -1, -1);
      MEMORY[0x259C3F520](v34, -1, -1);
    }
  }

  return v77;
}

void static JournalMO.resolveDifferences(object:record:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E0, "ԧ");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v169 = &v164 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v164 - v13;
  v15 = sub_25574F020();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v177 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v164 - v21;
  MEMORY[0x28223BE20](v20);
  v178 = &v164 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v171 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v170 = &v164 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v174 = &v164 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v173 = &v164 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v181 = &v164 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v164 - v36;
  v38 = type metadata accessor for MergeableJournalAttributes(0);
  v39 = *(v38 - 8);
  v182 = v38;
  v183 = v39;
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v176 = &v164 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v172 = &v164 - v44;
  MEMORY[0x28223BE20](v43);
  v180 = &v164 - v45;
  if ([a1 userDeleted])
  {
    if (qword_27F7BD710 != -1)
    {
      swift_once();
    }

    v46 = sub_25574F2C0();
    __swift_project_value_buffer(v46, qword_27F7BE7C0);
    v47 = a2;
    v48 = sub_25574F2A0();
    v49 = sub_255750780();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v184 = v51;
      *v50 = 136315138;
      v52 = [v47 recordID];
      v53 = [v52 recordName];

      v54 = sub_2557501B0();
      v56 = v55;

      v57 = sub_2556E474C(v54, v56, &v184);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_255661000, v48, v49, "Received an update to a deleted Journal %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x259C3F520](v51, -1, -1);
      MEMORY[0x259C3F520](v50, -1, -1);
    }

LABEL_6:

    return;
  }

  v165 = v16;
  v166 = v15;
  v167 = a1;
  v58 = [a1 recordSystemFields];
  v168 = v2;
  if (!v58)
  {
    goto LABEL_11;
  }

  v59 = v58;
  v60 = sub_25574EF90();
  v62 = v61;

  sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0);
  v63 = CKRecord.init(systemFields:)(v60, v62);
  if (!v63)
  {
    goto LABEL_11;
  }

  v64 = v63;
  v65 = [v63 recordChangeTag];

  if (v65)
  {
    v66 = sub_2557501B0();
    v68 = v67;
  }

  else
  {
LABEL_11:
    v66 = 0;
    v68 = 0;
  }

  v179 = a2;
  v69 = [a2 recordChangeTag];
  if (!v69)
  {
    v74 = v179;
    if (!v68)
    {
      goto LABEL_23;
    }

LABEL_21:

    goto LABEL_31;
  }

  v70 = v69;
  v71 = sub_2557501B0();
  v73 = v72;

  if (!v68)
  {
    v74 = v179;
    if (!v73)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v74 = v179;
  if (!v73)
  {
    goto LABEL_21;
  }

  if (v66 == v71 && v68 == v73)
  {
  }

  else
  {
    v75 = sub_255750EB0();

    if ((v75 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

LABEL_23:
  v76 = [v167 recordSystemFields];
  if (v76)
  {
    v77 = v76;
    v78 = sub_25574EF90();
    v80 = v79;

    sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0);
    v81 = CKRecord.init(systemFields:)(v78, v80);
    if (v81)
    {
      v82 = v81;
      v83 = [v81 recordChangeTag];

      if (v83)
      {

        if (qword_27F7BD710 != -1)
        {
          swift_once();
        }

        v84 = sub_25574F2C0();
        __swift_project_value_buffer(v84, qword_27F7BE7C0);
        v85 = v74;
        v48 = sub_25574F2A0();
        v86 = sub_255750770();

        if (os_log_type_enabled(v48, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v184 = v88;
          *v87 = 136315650;
          v89 = sub_255750920();
          v91 = sub_2556E474C(v89, v90, &v184);

          *(v87 + 4) = v91;
          *(v87 + 12) = 2080;
          v92 = [v85 recordID];
          v93 = [v92 recordName];

          v94 = sub_2557501B0();
          v96 = v95;

          v97 = sub_2556E474C(v94, v96, &v184);

          *(v87 + 14) = v97;
          *(v87 + 22) = 2080;
          v98 = sub_255751020();
          v100 = sub_2556E474C(v98, v99, &v184);

          *(v87 + 24) = v100;
          _os_log_impl(&dword_255661000, v48, v86, "Ignoring remote %s record update with ID %s because %s has the most recent server changes", v87, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v88, -1, -1);
          MEMORY[0x259C3F520](v87, -1, -1);
        }

        goto LABEL_6;
      }
    }
  }

LABEL_31:
  v101 = v168;
  sub_2556AD860(0xD000000000000013, 0x8000000255757E80, v37);
  if (v101)
  {
    return;
  }

  v102 = *(v183 + 48);
  if (v102(v37, 1, v182) == 1)
  {
    sub_255674B20(v37, &qword_27F7BE7D8, &qword_255757E98);
    sub_25568B1D0();
    swift_allocError();
    *v103 = 3;
    swift_willThrow();
    return;
  }

  sub_2556BBC90(v37, v180, type metadata accessor for MergeableJournalAttributes);
  v104 = v167;
  v105 = [v167 mergeableAttributes];
  if (v105)
  {
    v106 = v105;
    v107 = v181;
    sub_2556BBB3C(v105 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v181);

    v104 = v167;
    v108 = 0;
  }

  else
  {
    v108 = 1;
    v107 = v181;
  }

  v109 = *(v183 + 56);
  v183 += 56;
  v175 = v109;
  v109(v107, v108, 1, v182);
  v110 = [v104 updatedDate];
  if (v110)
  {
    v111 = v110;
    sub_25574EFF0();

    v112 = v165;
    v113 = *(v165 + 32);
    v114 = v22;
    v115 = v166;
    v113(v14, v114, v166);
    (*(v112 + 56))(v14, 0, 1, v115);
    v113(v178, v14, v115);
  }

  else
  {
    v117 = v165;
    v116 = v166;
    (*(v165 + 56))(v14, 1, 1, v166);
    sub_25574EFB0();
    if ((*(v117 + 48))(v14, 1, v116) != 1)
    {
      sub_255674B20(v14, &qword_27F7BEB40, &unk_255754E40);
    }
  }

  sub_2556E2EE0(0x4464657461647075, 0xEB00000000657461, v12);
  v119 = v165;
  v118 = v166;
  v120 = *(v165 + 48);
  if (v120(v12, 1, v166) == 1)
  {
    v121 = v177;
    sub_25574EFB0();
    v122 = v120(v12, 1, v118);
    v123 = v167;
    if (v122 != 1)
    {
      sub_255674B20(v12, &qword_27F7BEB40, &unk_255754E40);
    }
  }

  else
  {
    v124 = *(v119 + 32);
    v121 = v177;
    v124(v177, v12, v118);
    v123 = v167;
  }

  v125 = sub_25574EFD0();
  v126 = v176;
  if (v125)
  {
    v127 = v180;
    if (qword_27F7BD710 != -1)
    {
      swift_once();
    }

    v128 = sub_25574F2C0();
    __swift_project_value_buffer(v128, qword_27F7BE7C0);
    v129 = v173;
    sub_255663294(v181, v173, &qword_27F7BE7D8, &qword_255757E98);
    v130 = v172;
    sub_2556BBB3C(v127, v172);
    v131 = sub_25574F2A0();
    v132 = sub_255750770();
    v133 = os_log_type_enabled(v131, v132);
    v134 = v179;
    if (v133)
    {
      v135 = swift_slowAlloc();
      *v135 = 67109120;
      MEMORY[0x28223BE20](v135);
      *(&v164 - 2) = v130;
      v136 = sub_2556BA600(sub_2556BBBE8);
      v137 = v136 != 2 && (v136 & 1) != 0;
      sub_255674B20(v129, &qword_27F7BE7D8, &qword_255757E98);
      sub_2556BBCF8(v130, type metadata accessor for MergeableJournalAttributes);
      *(v135 + 4) = v137;
      _os_log_impl(&dword_255661000, v131, v132, "Remote Journal record changes are newer. Used LWW for non-mergeable fields; has local attributes to merge: %{BOOL}d.", v135, 8u);
      MEMORY[0x259C3F520](v135, -1, -1);
      v123 = v167;
    }

    else
    {
      sub_255674B20(v129, &qword_27F7BE7D8, &qword_255757E98);
      sub_2556BBCF8(v130, type metadata accessor for MergeableJournalAttributes);
    }

    v146 = v134;
    sub_2556B8430(v134);
    v121 = v177;
    v149 = v123;
    v138 = v180;
    goto LABEL_67;
  }

  v138 = v180;
  if (qword_27F7BD710 != -1)
  {
    swift_once();
  }

  v139 = sub_25574F2C0();
  __swift_project_value_buffer(v139, qword_27F7BE7C0);
  v140 = v174;
  sub_255663294(v181, v174, &qword_27F7BE7D8, &qword_255757E98);
  sub_2556BBB3C(v138, v126);
  v141 = sub_25574F2A0();
  v142 = v126;
  v143 = sub_255750770();
  if (os_log_type_enabled(v141, v143))
  {
    v144 = swift_slowAlloc();
    *v144 = 67109120;
    v145 = v170;
    sub_255663294(v140, v170, &qword_27F7BE7D8, &qword_255757E98);
    if (v102(v145, 1, v182) == 1)
    {
      sub_255674B20(v145, &qword_27F7BE7D8, &qword_255757E98);
      v146 = v179;
      v147 = v171;
      v148 = v175;
    }

    else
    {
      sub_2556BBBA0(&qword_27F7BDF18, type metadata accessor for MergeableJournalAttributes);
      v150 = v169;
      sub_25574FD60();
      v151 = type metadata accessor for MergeableJournalAttributes.ObservableDifference(0);
      v152 = v145;
      v153 = 1;
      v154 = (*(*(v151 - 8) + 48))(v150, 1, v151);
      sub_255674B20(v150, &qword_27F7BE7E0, "ԧ");
      sub_2556BBCF8(v152, type metadata accessor for MergeableJournalAttributes);
      v155 = v154 == 1;
      v146 = v179;
      v147 = v171;
      v148 = v175;
      if (!v155)
      {
        goto LABEL_65;
      }
    }

    v153 = 0;
LABEL_65:
    sub_255674B20(v140, &qword_27F7BE7D8, &qword_255757E98);
    sub_2556BBCF8(v176, type metadata accessor for MergeableJournalAttributes);
    *(v144 + 4) = v153;
    _os_log_impl(&dword_255661000, v141, v143, "Local JournalMO changes are newer. Requires merging coherence values with record: %{BOOL}d.", v144, 8u);
    MEMORY[0x259C3F520](v144, -1, -1);
    v121 = v177;
    v138 = v180;
    goto LABEL_66;
  }

  sub_255674B20(v140, &qword_27F7BE7D8, &qword_255757E98);
  sub_2556BBCF8(v142, type metadata accessor for MergeableJournalAttributes);
  v146 = v179;
  v147 = v171;
  v148 = v175;
LABEL_66:

  sub_2556BBB3C(v138, v147);
  v148(v147, 0, 1, v182);
  v149 = v167;
  sub_2556B7644(v147);
LABEL_67:
  v156 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v146 encodeSystemFieldsWithCoder_];
  v157 = [v156 encodedData];
  v158 = sub_25574EF90();
  v160 = v159;

  v161 = sub_25574EF80();
  sub_2556755A8(v158, v160);
  [v149 setRecordSystemFields_];

  v162 = v166;
  v163 = *(v165 + 8);
  v163(v121, v166);
  v163(v178, v162);
  sub_255674B20(v181, &qword_27F7BE7D8, &qword_255757E98);
  sub_2556BBCF8(v138, type metadata accessor for MergeableJournalAttributes);
}

uint64_t sub_2556BA4B0@<X0>(BOOL *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E0, "ԧ");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  type metadata accessor for MergeableJournalAttributes(0);
  sub_2556BBBA0(&qword_27F7BDF18, type metadata accessor for MergeableJournalAttributes);
  sub_25574FD60();
  v6 = type metadata accessor for MergeableJournalAttributes.ObservableDifference(0);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  result = sub_255674B20(v5, &qword_27F7BE7E0, "ԧ");
  *a1 = v7;
  return result;
}

uint64_t sub_2556BA600(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = type metadata accessor for MergeableJournalAttributes(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v13 - v10;
  sub_255663294(v1, &v13 - v10, &qword_27F7BE7D8, &qword_255757E98);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return 2;
  }

  sub_2556BBC90(v11, v7, type metadata accessor for MergeableJournalAttributes);
  v14(&v15, v7);
  if (v2)
  {
    result = sub_2556BBCF8(v7, type metadata accessor for MergeableJournalAttributes);
    __break(1u);
  }

  else
  {
    sub_2556BBCF8(v7, type metadata accessor for MergeableJournalAttributes);
    return v15;
  }

  return result;
}

uint64_t sub_2556BA7E4(void *a1)
{
  KeyPath = swift_getKeyPath();
  sub_2556B69DC(KeyPath, a1, 0xD000000000000013, 0x8000000255757E80);
  if (!v1)
  {
  }

  if (qword_27F7BD710 != -1)
  {
    swift_once();
  }

  v4 = sub_25574F2C0();
  __swift_project_value_buffer(v4, qword_27F7BE7C0);
  v5 = v1;
  v6 = sub_25574F2A0();
  v7 = sub_255750780();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_255661000, v6, v7, "Error updating mergeable attributes: %@", v8, 0xCu);
    sub_255674B20(v9, &qword_27F7BEC80, &qword_255757E90);
    MEMORY[0x259C3F520](v9, -1, -1);
    MEMORY[0x259C3F520](v8, -1, -1);
  }

  return swift_willThrow();
}

uint64_t static JournalMO.deleteObjectForRecordID(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a3;
  v7 = sub_2557508A0();
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = sub_255750490();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v5[8] = v10;
  v5[9] = v12;

  return MEMORY[0x2822009F8](sub_2556BAA94, v10, v12);
}

uint64_t sub_2556BAA94()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = swift_allocObject();
  v0[10] = v7;
  v7[2] = v4;
  v7[3] = v6;
  v7[4] = v5;
  v7[5] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v8 = *(MEMORY[0x277CBE118] + 4);
  v9 = v6;
  v10 = v5;
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_2556BABC8;
  v12 = v0[7];
  v13 = v0[3];
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v11, v12, sub_2556BBC08, v7, v14);
}

uint64_t sub_2556BABC8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 72);
  v10 = *(v2 + 64);
  if (v0)
  {
    v11 = sub_2556BADE8;
  }

  else
  {
    v11 = sub_2556BAD84;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2556BAD84()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2556BADE8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

void sub_2556BAE4C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v55 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = sub_25574F0D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v56 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = (&v51 - v17);
  v57 = a2;
  v19 = [a2 recordName];
  v20 = sub_2557501B0();
  v22 = v21;

  sub_25574F030();
  v58 = *(v13 + 48);
  if (v58(v11, 1, v12) == 1)
  {
    v54 = v13;
    sub_255674B20(v11, &unk_27F7BED20, &unk_2557551D0);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    v44 = v60;
    sub_255727DC8(v18);
    v60 = v44;
    if (v44)
    {
      (*(v13 + 8))(v18, v12);

      return;
    }

    v24 = v45;
    (*(v13 + 8))(v18, v12);
    if (v24)
    {

      goto LABEL_14;
    }

    v54 = v13;
  }

  sub_2556B60A8(v20, v22, a3);
  v24 = v23;

  if (v24)
  {
LABEL_14:
    [v24 setIsUploadedToCloud_];
    [v24 setUserDeleted_];
    [v24 setMergeableAttributes_];
    [v24 setCreatedDate_];
    [v24 setRecordSystemFields_];
    sub_255669A88(0, &qword_27F7BE7F0, 0x277CBEB98);
    v46 = MEMORY[0x259C3E5C0](MEMORY[0x277D84F90]);
    [v24 setEntries_];

    return;
  }

  v52 = a3;
  if (qword_27F7BD710 != -1)
  {
    swift_once();
  }

  v53 = v12;
  v25 = sub_25574F2C0();
  __swift_project_value_buffer(v25, qword_27F7BE7C0);
  v26 = v57;
  v27 = sub_25574F2A0();
  v28 = sub_255750760();

  v29 = &property descriptor for JournalMO.isUploadedToCloud;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v61 = v31;
    *v30 = 136315394;
    v32 = sub_255751020();
    v34 = sub_2556E474C(v32, v33, &v61);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = [v26 recordName];
    v36 = sub_2557501B0();
    v38 = v37;

    v39 = sub_2556E474C(v36, v38, &v61);

    *(v30 + 14) = v39;
    v29 = &property descriptor for JournalMO.isUploadedToCloud;
    _os_log_impl(&dword_255661000, v27, v28, "Could not find %s object to delete for record ID %s. Creating a tombstone.", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C3F520](v31, -1, -1);
    MEMORY[0x259C3F520](v30, -1, -1);
  }

  v40 = v54;
  v41 = [v26 v29[56]];
  sub_2557501B0();

  v42 = v59;
  sub_25574F030();

  v43 = v53;
  if (v58(v42, 1, v53) == 1)
  {
    sub_255674B20(v42, &unk_27F7BED20, &unk_2557551D0);
  }

  else
  {
    v47 = v56;
    (*(v40 + 32))(v56, v42, v43);
    type metadata accessor for JournalMO();
    v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v49 = [v48 initWithContext_];
    v50 = sub_25574F050();
    [v49 setId_];

    [v49 setUserDeleted_];
    [v49 setMergeableAttributes_];
    [v49 setCreatedDate_];

    (*(v40 + 8))(v47, v43);
  }
}

uint64_t sub_2556BB4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_25568AC58;

  return static JournalMO.deleteObjectForRecordID(_:context:)(a1, a2, a3, a4);
}

id _s13JournalShared0A2MOC22objectsToSavePredicateSo11NSPredicateCvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755030;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_255755060;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  v3 = sub_255666F5C();
  *(v1 + 64) = v3;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x80000002557523D0;
  *(v0 + 32) = sub_255750750();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255755060;
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x8000000255757E80;
  *(v0 + 40) = sub_255750750();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255755060;
  *(v5 + 56) = v2;
  *(v5 + 64) = v3;
  *(v5 + 32) = 0x656C654472657375;
  *(v5 + 40) = 0xEB00000000646574;
  *(v0 + 48) = sub_255750750();
  v6 = sub_255750370();

  v7 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v7;
}

id _s13JournalShared0A2MOC24objectsToDeletePredicateSo11NSPredicateCvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755070;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_255755060;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  v3 = sub_255666F5C();
  *(v1 + 64) = v3;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x80000002557523D0;
  *(v0 + 32) = sub_255750750();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255755060;
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x8000000255757E80;
  *(v0 + 40) = sub_255750750();
  v5 = sub_255750370();

  v6 = objc_opt_self();
  v7 = [v6 orPredicateWithSubpredicates_];

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_255755070;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_255755060;
  *(v9 + 56) = v2;
  *(v9 + 64) = v3;
  *(v9 + 32) = 0x656C654472657375;
  *(v9 + 40) = 0xEB00000000646574;
  *(v8 + 32) = sub_255750750();
  *(v8 + 40) = v7;
  v10 = v7;
  v11 = sub_255750370();

  v12 = [v6 andPredicateWithSubpredicates_];

  return v12;
}

void sub_2556BBA68(void *a1)
{
  [a1 setIsUploadedToCloud_];
  [a1 setUserDeleted_];
  [a1 setMergeableAttributes_];
  [a1 setCreatedDate_];
  [a1 setRecordSystemFields_];
  sub_255669A88(0, &qword_27F7BE7F0, 0x277CBEB98);
  v2 = MEMORY[0x259C3E5C0](MEMORY[0x277D84F90]);
  [a1 setEntries_];
}

uint64_t sub_2556BBB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableJournalAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556BBBA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2556BBC28(uint64_t a1)
{
  result = sub_2556BBBA0(&unk_27F7BED80, type metadata accessor for JournalMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2556BBC90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2556BBCF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_2556BBD7C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v43 = sub_25574F0D0();
  v7 = *(v43 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v43);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v34 - v11;
  v39 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    type metadata accessor for JournalMO();
    sub_25567AF9C(&qword_27F7BE0A8, type metadata accessor for JournalMO);
    result = sub_2557505C0();
    a1 = v45;
    v13 = v46;
    v14 = v47;
    v15 = v48;
    v16 = v49;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = a1 + 56;
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

    v16 = v19 & *(a1 + 56);

    v15 = 0;
  }

  v38 = v14;
  v41 = (v7 + 48);
  v42 = (v7 + 56);
  v34 = v7;
  v35 = (v7 + 32);
  v40 = MEMORY[0x277D84F90];
  while (a1 < 0)
  {
    v23 = sub_255750A60();
    if (!v23 || (v44 = v23, type metadata accessor for JournalMO(), swift_dynamicCast(), (v22 = v50) == 0))
    {
LABEL_27:
      sub_25568B1C8();
      return v40;
    }

LABEL_17:
    v24 = [v22 id];
    if (v24)
    {
      v25 = v24;
      sub_25574F080();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v43;
    (*v42)(v6, v26, 1, v43);

    if ((*v41)(v6, 1, v27) == 1)
    {
      result = sub_255674B20(v6, &unk_27F7BED20, &unk_2557551D0);
    }

    else
    {
      v28 = *v35;
      v29 = v43;
      (*v35)(v36, v6, v43);
      v28(v37, v36, v29);
      v30 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_255698A7C(0, v40[2] + 1, 1, v40);
      }

      v32 = v40[2];
      v31 = v40[3];
      if (v32 >= v31 >> 1)
      {
        v40 = sub_255698A7C(v31 > 1, v32 + 1, 1, v40);
      }

      v33 = v40;
      v40[2] = v32 + 1;
      result = (v30)(v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v32, v37, v43);
    }
  }

  v20 = v15;
  v21 = v16;
  if (v16)
  {
LABEL_13:
    v16 = (v21 - 1) & v21;
    v22 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v22)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= ((v14 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v21 = *(v13 + 8 * v15);
    ++v20;
    if (v21)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2556BC1EC()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE800);
  v1 = __swift_project_value_buffer(v0, qword_27F7BE800);
  if (qword_27F7BD5E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C0528);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t JournalEntryMO.mergeableAttributedText.setter(uint64_t a1)
{
  v3 = sub_25574F500();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7A0, &qword_255757E38);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  sub_255663294(a1, v16, &qword_27F7BE7A0, &qword_255757E38);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_255674B20(a1, &qword_27F7BE7A0, &qword_255757E38);
    v22 = v16;
    v23 = &qword_27F7BE7A0;
    v24 = &qword_255757E38;
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v25 = [v1 mergeableAttributes];
    if (v25)
    {
      v26 = v25;
      sub_255678960(v25 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v12, type metadata accessor for MergeableEntryAttributes);

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = type metadata accessor for MergeableEntryAttributes(0);
    v29 = *(v28 - 8);
    (*(v29 + 56))(v12, v27, 1, v28);
    if (!(*(v29 + 48))(v12, 1, v28))
    {
      v31 = &v12[*(v28 + 20)];
      v32 = v34;
      sub_25574FA10();
      (*(v35 + 8))(v32, v36);
      sub_2556B7918(v12);
      sub_255674B20(a1, &qword_27F7BE7A0, &qword_255757E38);
      return (*(v18 + 8))(v21, v17);
    }

    sub_255663294(v12, v10, &qword_27F7BE7E8, &unk_255757F00);
    sub_2556B7918(v10);
    sub_255674B20(a1, &qword_27F7BE7A0, &qword_255757E38);
    (*(v18 + 8))(v21, v17);
    v22 = v12;
    v23 = &qword_27F7BE7E8;
    v24 = &unk_255757F00;
  }

  return sub_255674B20(v22, v23, v24);
}

void (*JournalEntryMO.mergeableAttributedText.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7A0, &qword_255757E38) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  JournalEntryMO.mergeableAttributedText.getter(v4);
  return sub_2556BC7C8;
}

uint64_t JournalEntryMO.mergeableAttributedTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableEntryAttributes(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = [v2 mergeableAttributes];
  if (v13)
  {
    v14 = v13;
    sub_255678960(v13 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v12, type metadata accessor for MergeableEntryAttributes);

    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_255674B20(v12, &qword_27F7BE7E8, &unk_255757F00);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  else
  {
    sub_255678960(v12, v8, type metadata accessor for MergeableEntryAttributes);
    sub_255674B20(v12, &qword_27F7BE7E8, &unk_255757F00);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
    v18 = *(v17 - 8);
    (*(v18 + 16))(a1, v8, v17);
    sub_2556C0F6C(v8, type metadata accessor for MergeableEntryAttributes);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }
}

uint64_t sub_2556BCAC4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - v14;
  sub_255663294(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  return a7(v15);
}

uint64_t JournalEntryMO.mergeableAttributedTitle.setter(uint64_t a1)
{
  v2 = sub_25574F500();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE820, &qword_255757FD8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  sub_255663294(a1, v15, &qword_27F7BE820, &qword_255757FD8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_255674B20(a1, &qword_27F7BE820, &qword_255757FD8);
    v24 = v15;
    v25 = &qword_27F7BE820;
    v26 = &qword_255757FD8;
  }

  else
  {
    v38 = a1;
    (*(v17 + 32))(v23, v15, v16);
    v27 = [v42 mergeableAttributes];
    if (v27)
    {
      v28 = v27;
      sub_255678960(v27 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v11, type metadata accessor for MergeableEntryAttributes);

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = type metadata accessor for MergeableEntryAttributes(0);
    v31 = *(v30 - 8);
    (*(v31 + 56))(v11, v29, 1, v30);
    if (!(*(v31 + 48))(v11, 1, v30))
    {
      (*(v17 + 16))(v21, v23, v16);
      v33 = v39;
      sub_25574FA10();
      v34 = v41;
      v35 = *(v40 + 8);
      v35(v33, v41);
      sub_25574FA10();
      v35(v33, v34);
      v36 = *(v17 + 8);
      v36(v21, v16);
      sub_2556B7918(v11);
      sub_255674B20(v38, &qword_27F7BE820, &qword_255757FD8);
      return (v36)(v23, v16);
    }

    sub_255663294(v11, v9, &qword_27F7BE7E8, &unk_255757F00);
    sub_2556B7918(v9);
    sub_255674B20(v38, &qword_27F7BE820, &qword_255757FD8);
    (*(v17 + 8))(v23, v16);
    v24 = v11;
    v25 = &qword_27F7BE7E8;
    v26 = &unk_255757F00;
  }

  return sub_255674B20(v24, v25, v26);
}

void (*JournalEntryMO.mergeableAttributedTitle.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE820, &qword_255757FD8) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  JournalEntryMO.mergeableAttributedTitle.getter(v4);
  return sub_2556BD114;
}

void sub_2556BD13C(uint64_t *a1, char a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;
  if (a2)
  {
    sub_255663294(v7, v6, a4, a5);
    a3(v6);
    sub_255674B20(v7, a4, a5);
  }

  else
  {
    a3(v7);
  }

  free(v7);

  free(v6);
}

uint64_t JournalEntryMO.mergeableAssetPlacement.setter(uint64_t a1)
{
  v2 = sub_25574F500();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE828, &qword_255757FE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  sub_255663294(a1, v15, &qword_27F7BE828, &qword_255757FE0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_255674B20(a1, &qword_27F7BE828, &qword_255757FE0);
    v24 = v15;
    v25 = &qword_27F7BE828;
    v26 = &qword_255757FE0;
  }

  else
  {
    sub_255678A44(v15, v23);
    v27 = [v41 mergeableAttributes];
    if (v27)
    {
      v28 = v27;
      sub_255678960(v27 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v11, type metadata accessor for MergeableEntryAttributes);

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = type metadata accessor for MergeableEntryAttributes(0);
    v31 = *(v30 - 8);
    (*(v31 + 56))(v11, v29, 1, v30);
    if (!(*(v31 + 48))(v11, 1, v30))
    {
      sub_255678960(v23, v21, type metadata accessor for MergeableEntryAssetsPlacement);
      v37 = a1;
      v33 = v38;
      MergeableEntryAssetsPlacement.merge(_:)(&v11[*(v30 + 24)], v38);
      v34 = v40;
      v35 = *(v39 + 8);
      v35(v33, v40);
      MergeableEntryAssetsPlacement.merge(_:)(v21, v33);
      v35(v33, v34);
      sub_2556C0F6C(v21, type metadata accessor for MergeableEntryAssetsPlacement);
      sub_2556B7918(v11);
      sub_255674B20(v37, &qword_27F7BE828, &qword_255757FE0);
      return sub_2556C0F6C(v23, type metadata accessor for MergeableEntryAssetsPlacement);
    }

    sub_255663294(v11, v9, &qword_27F7BE7E8, &unk_255757F00);
    sub_2556B7918(v9);
    sub_255674B20(a1, &qword_27F7BE828, &qword_255757FE0);
    sub_2556C0F6C(v23, type metadata accessor for MergeableEntryAssetsPlacement);
    v24 = v11;
    v25 = &qword_27F7BE7E8;
    v26 = &unk_255757F00;
  }

  return sub_255674B20(v24, v25, v26);
}

void (*JournalEntryMO.mergeableAssetPlacement.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE828, &qword_255757FE0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  JournalEntryMO.mergeableAssetPlacement.getter(v4);
  return sub_2556BD748;
}

uint64_t sub_2556BD770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = type metadata accessor for MergeableEntryAttributes(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  v16 = [v1 mergeableAttributes];
  if (v16)
  {
    v17 = v16;
    sub_255678960(v16 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v15, type metadata accessor for MergeableEntryAttributes);

    (*(v8 + 56))(v15, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v15, 1, 1, v7);
  }

  if ((*(v8 + 48))(v15, 1, v7))
  {
    sub_255674B20(v15, &qword_27F7BE7E8, &unk_255757F00);
    return 0;
  }

  else
  {
    sub_255678960(v15, v11, type metadata accessor for MergeableEntryAttributes);
    sub_255674B20(v15, &qword_27F7BE7E8, &unk_255757F00);
    (*(v3 + 16))(v6, &v11[*(v7 + 28)], v2);
    v19 = sub_255695518();
    sub_2556C0F6C(v11, type metadata accessor for MergeableEntryAttributes);
    return v19;
  }
}

uint64_t JournalEntryMO.unformattedMergeableText.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7A0, &qword_255757E38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  JournalEntryMO.mergeableAttributedText.getter(&v13 - v7);
  if ((*(v1 + 48))(v8, 1, v0))
  {
    sub_255674B20(v8, &qword_27F7BE7A0, &qword_255757E38);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v4, v8, v0);
    sub_255674B20(v8, &qword_27F7BE7A0, &qword_255757E38);
    v10 = sub_25574F880();
    (*(v1 + 8))(v4, v0);
    v11 = [v10 string];

    v12 = sub_2557501B0();
    return v12;
  }
}

uint64_t JournalEntryMO.unformattedMergeableTitle.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE820, &qword_255757FD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  JournalEntryMO.mergeableAttributedTitle.getter(&v13 - v7);
  if ((*(v1 + 48))(v8, 1, v0))
  {
    sub_255674B20(v8, &qword_27F7BE820, &qword_255757FD8);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v4, v8, v0);
    sub_255674B20(v8, &qword_27F7BE820, &qword_255757FD8);
    v10 = sub_25574F880();
    (*(v1 + 8))(v4, v0);
    v11 = [v10 string];

    v12 = sub_2557501B0();
    return v12;
  }
}

uint64_t sub_2556BDE00()
{
  v1 = v0;
  v2 = sub_25574F0D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = [v0 mergeableAttributes];
  if (!v14)
  {
    if (qword_27F7BD718 != -1)
    {
      swift_once();
    }

    v15 = sub_25574F2C0();
    __swift_project_value_buffer(v15, qword_27F7BE800);
    v14 = sub_25574F2A0();
    v16 = sub_255750780();
    if (os_log_type_enabled(v14, v16))
    {
      v17 = swift_slowAlloc();
      v25 = v2;
      v18 = v17;
      *v17 = 0;
      _os_log_impl(&dword_255661000, v14, v16, "Attempting to add an associated journal but there's no mergeable attributes", v17, 2u);
      v2 = v25;
      MEMORY[0x259C3F520](v18, -1, -1);
    }
  }

  v19 = [v1 mergeableAttributes];
  if (v19)
  {
    v20 = v19;
    sub_255678960(v19 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v13, type metadata accessor for MergeableEntryAttributes);

    v21 = type metadata accessor for MergeableEntryAttributes(0);
    (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
  }

  else
  {
    v21 = type metadata accessor for MergeableEntryAttributes(0);
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  }

  type metadata accessor for MergeableEntryAttributes(0);
  if ((*(*(v21 - 8) + 48))(v13, 1, v21))
  {
    sub_255663294(v13, v11, &qword_27F7BE7E8, &unk_255757F00);
    sub_2556B7918(v11);
    return sub_255674B20(v13, &qword_27F7BE7E8, &unk_255757F00);
  }

  else
  {
    v23 = *(v21 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    sub_25574FC60();
    (*(v3 + 8))(v6, v2);
    return sub_2556B7918(v13);
  }
}

uint64_t sub_2556BE1B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = [v0 mergeableAttributes];
  if (!v13)
  {
    if (qword_27F7BD718 != -1)
    {
      swift_once();
    }

    v14 = sub_25574F2C0();
    __swift_project_value_buffer(v14, qword_27F7BE800);
    v13 = sub_25574F2A0();
    v15 = sub_255750780();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_255661000, v13, v15, "Attempting to remove an associated journal but there's no mergeable attributes", v16, 2u);
      MEMORY[0x259C3F520](v16, -1, -1);
    }
  }

  v17 = [v1 mergeableAttributes];
  if (v17)
  {
    v18 = v17;
    sub_255678960(v17 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v12, type metadata accessor for MergeableEntryAttributes);

    v19 = type metadata accessor for MergeableEntryAttributes(0);
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  }

  else
  {
    v19 = type metadata accessor for MergeableEntryAttributes(0);
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  }

  type metadata accessor for MergeableEntryAttributes(0);
  if ((*(*(v19 - 8) + 48))(v12, 1, v19))
  {
    sub_255663294(v12, v10, &qword_27F7BE7E8, &unk_255757F00);
    sub_2556B7918(v10);
    return sub_255674B20(v12, &qword_27F7BE7E8, &unk_255757F00);
  }

  else
  {
    v21 = *(v19 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    sub_25574FC70();
    sub_255674B20(v5, &unk_27F7BED20, &unk_2557551D0);
    return sub_2556B7918(v12);
  }
}

void JournalEntryMO.add(to:)(void *a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 id];
  if (v8)
  {
    v9 = v8;
    sub_25574F080();

    sub_2556BDE00();
    [v1 addJournalsObject_];
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    if (qword_27F7BD718 != -1)
    {
      swift_once();
    }

    v10 = sub_25574F2C0();
    __swift_project_value_buffer(v10, qword_27F7BE800);
    v11 = a1;
    v18 = sub_25574F2A0();
    v12 = sub_255750780();

    if (os_log_type_enabled(v18, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = v11;
      v15 = v11;
      _os_log_impl(&dword_255661000, v18, v12, "Could not add entry to journal %@ as it's missing an id", v13, 0xCu);
      sub_255674B20(v14, &qword_27F7BEC80, &qword_255757E90);
      MEMORY[0x259C3F520](v14, -1, -1);
      MEMORY[0x259C3F520](v13, -1, -1);
    }

    v16 = v18;
  }
}

id JournalEntryMO.remove(from:)(void *a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  result = [a1 id];
  if (result)
  {
    v12 = result;
    sub_25574F080();

    (*(v4 + 32))(v10, v8, v3);
    sub_2556BE1B0();
    [v1 removeJournalsObject_];
    return (*(v4 + 8))(v10, v3);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JournalEntryMO.cacheJournalRelationships()()
{
  v1 = v0;
  v2 = sub_25574F0D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v153 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v154 = &v134 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v134 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v152 = &v134 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v134 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v160 = &v134 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v155 = &v134 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v134 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v159 = &v134 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v134 - v30;
  v32 = [v1 managedObjectContext];
  if (!v32)
  {
    return;
  }

  v33 = v32;
  v145 = v31;
  v140 = v10;
  v34 = sub_2556BD770();
  if (!v34)
  {

    return;
  }

  v35 = v34;
  v150 = v3;
  v158 = v1;
  v36 = [v1 journals];
  v37 = MEMORY[0x277D84FA0];
  if (v36)
  {
    v38 = v36;
    v169 = 0;
    type metadata accessor for JournalMO();
    sub_25567AF9C(&qword_27F7BE0A8, type metadata accessor for JournalMO);
    sub_255750570();

    if (v169)
    {
      v37 = v169;
    }
  }

  v142 = v35;
  v149 = v27;
  v147 = v20;
  v148 = v15;
  v151 = v2;
  v141 = v33;
  v39 = v161;
  v40 = sub_2556BBD7C(v37);
  v161 = v39;
  v143 = sub_25569B6D0(v40);

  v169 = MEMORY[0x277D84F90];
  v157 = v37;
  if ((v37 & 0xC000000000000001) != 0)
  {

    sub_2557509F0();
    type metadata accessor for JournalMO();
    sub_25567AF9C(&qword_27F7BE0A8, type metadata accessor for JournalMO);
    sub_2557505C0();
    v42 = v164;
    v41 = v165;
    v43 = v166;
    v44 = v167;
    v45 = v168;
  }

  else
  {
    v46 = -1 << *(v37 + 32);
    v41 = v37 + 56;
    v43 = ~v46;
    v47 = -v46;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    else
    {
      v48 = -1;
    }

    v45 = v48 & *(v37 + 56);

    v44 = 0;
    v42 = v37;
  }

  v156 = v43;
  v49 = (v43 + 64) >> 6;
  while ((v42 & 0x8000000000000000) == 0)
  {
    v50 = v44;
    v51 = v45;
    v52 = v44;
    if (!v45)
    {
      while (1)
      {
        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v52 >= v49)
        {
          goto LABEL_28;
        }

        v51 = *(v41 + 8 * v52);
        ++v50;
        if (v51)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

LABEL_22:
    v15 = ((v51 - 1) & v51);
    v53 = *(*(v42 + 48) + ((v52 << 9) | (8 * __clz(__rbit64(v51)))));
    if (!v53)
    {
      goto LABEL_28;
    }

LABEL_26:
    if ([v53 userDeleted])
    {
      sub_255750BB0();
      v55 = *(v169 + 16);
      sub_255750BE0();
      sub_255750BF0();
      sub_255750BC0();
    }

    else
    {
    }

    v44 = v52;
    v45 = v15;
  }

  v54 = sub_255750A60();
  if (v54)
  {
    v162 = v54;
    type metadata accessor for JournalMO();
    swift_dynamicCast();
    v53 = v163;
    v52 = v44;
    v15 = v45;
    if (v163)
    {
      goto LABEL_26;
    }
  }

LABEL_28:
  sub_25568B1C8();
  v49 = v169;
  v45 = v143;
  v42 = v142;
  v56 = sub_2556C0FCC(v143, v142);
  v41 = v161;
  v15 = v141;
  v44 = v151;
  v52 = v158;
  if ((v56 & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((v49 & 0x8000000000000000) == 0 && (v49 & 0x4000000000000000) == 0)
  {
    if (*(v49 + 16))
    {
      goto LABEL_32;
    }

LABEL_108:

    return;
  }

LABEL_107:
  if (!sub_255750A30())
  {
    goto LABEL_108;
  }

LABEL_32:
  if (*(v45 + 16) <= *(v42 + 16) >> 3)
  {
    v169 = v42;

    sub_2556C137C(v45);
    v57 = v169;
  }

  else
  {

    v57 = sub_2556C1C58(v45, v42);
  }

  v58 = sub_2556BFBF4(v57, v15, v52);
  if (v41)
  {

    return;
  }

  v59 = v58;
  v161 = 0;

  v60 = sub_2556C0864(v45, v42, v157, v49);

  if (v59 >> 62)
  {
    v61 = sub_255750A30();
  }

  else
  {
    v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v146 = v61;
  if (v61)
  {
LABEL_42:
    v139 = v59 >> 62;
    if (qword_27F7BD718 != -1)
    {
      swift_once();
    }

    v62 = sub_25574F2C0();
    __swift_project_value_buffer(v62, qword_27F7BE800);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v63 = v158;

    v64 = sub_25574F2A0();
    v65 = sub_2557507A0();

    if (os_log_type_enabled(v64, v65))
    {
      v137 = v64;
      v66 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v169 = v135;
      *v66 = 136447746;
      v138 = v63;
      v67 = [v63 id];
      if (v67)
      {
        v68 = v159;
        v69 = v67;
        sub_25574F080();

        v70 = 0;
      }

      else
      {
        v70 = 1;
        v68 = v159;
      }

      v15 = v160;
      v136 = v65;
      v71 = v150;
      v158 = *(v150 + 56);
      v159 = (v150 + 56);
      (v158)(v68, v70, 1, v44);
      v72 = v145;
      sub_2556B0D64(v68, v145);
      v156 = *(v71 + 48);
      v157 = v71 + 48;
      if (v156(v72, 1, v44))
      {
        sub_255674B20(v72, &unk_27F7BED20, &unk_2557551D0);
        v73 = 0xE300000000000000;
        v74 = 7104878;
      }

      else
      {
        v75 = v140;
        (*(v71 + 16))(v140, v72, v44);
        sub_255674B20(v72, &unk_27F7BED20, &unk_2557551D0);
        v76 = sub_25574F040();
        v77 = v71;
        v73 = v78;
        (*(v77 + 8))(v75, v44);
        v74 = v76;
      }

      v79 = sub_2556E474C(v74, v73, &v169);

      *(v66 + 4) = v79;
      *(v66 + 12) = 2048;
      if (v139)
      {
        v80 = sub_255750A30();
      }

      else
      {
        v80 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v66 + 14) = v80;

      *(v66 + 22) = 2048;
      v140 = (v60 >> 62);
      if (v60 >> 62)
      {
        v81 = sub_255750A30();
      }

      else
      {
        v81 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v66 + 24) = v81;
      v145 = v60;

      v41 = 2080;
      *(v66 + 32) = 2080;
      sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      v52 = v143;
      v82 = sub_255750590();
      v84 = v83;

      v85 = sub_2556E474C(v82, v84, &v169);

      *(v66 + 34) = v85;
      *(v66 + 42) = 2080;
      v86 = sub_255750590();
      v88 = v87;

      v89 = sub_2556E474C(v86, v88, &v169);

      *(v66 + 44) = v89;
      v142 = v66;
      *(v66 + 52) = 2080;
      v144 = v59;
      if (v146)
      {
        v45 = 0;
        v143 = v59 & 0xC000000000000001;
        v49 = v59 & 0xFFFFFFFFFFFFFF8;
        v42 = v150 + 32;
        v90 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v143)
          {
            v91 = MEMORY[0x259C3E830](v45, v144);
            v41 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              goto LABEL_103;
            }
          }

          else
          {
            if (v45 >= *(v49 + 16))
            {
              goto LABEL_104;
            }

            v91 = *(v144 + 8 * v45 + 32);
            v41 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              goto LABEL_103;
            }
          }

          v52 = v91;
          v92 = [v52 id];
          if (v92)
          {
            v93 = v92;
            sub_25574F080();

            v15 = v160;
            v94 = 0;
          }

          else
          {
            v94 = 1;
          }

          (v158)(v15, v94, 1, v44);
          v95 = v155;
          sub_2556B0D64(v15, v155);
          v96 = v95;
          v97 = v149;
          sub_2556B0D64(v96, v149);

          if (v156(v97, 1, v44) == 1)
          {
            sub_255674B20(v97, &unk_27F7BED20, &unk_2557551D0);
          }

          else
          {
            v98 = v44;
            v99 = *v42;
            (*v42)(v154, v97, v98);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v90 = sub_255698A7C(0, *(v90 + 2) + 1, 1, v90);
            }

            v101 = *(v90 + 2);
            v100 = *(v90 + 3);
            if (v101 >= v100 >> 1)
            {
              v90 = sub_255698A7C(v100 > 1, v101 + 1, 1, v90);
            }

            *(v90 + 2) = v101 + 1;
            v52 = v151;
            v99(&v90[((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v101], v154, v151);
            v44 = v52;
            v15 = v160;
          }

          ++v45;
          if (v41 == v146)
          {
            goto LABEL_77;
          }
        }
      }

      v90 = MEMORY[0x277D84F90];
LABEL_77:
      v102 = MEMORY[0x259C3E060](v90, v44);
      v104 = v103;

      v105 = sub_2556E474C(v102, v104, &v169);

      v106 = v142;
      *(v142 + 54) = v105;
      *(v106 + 62) = 2080;
      v107 = v145;
      if (v140)
      {
        v49 = sub_255750A30();
      }

      else
      {
        v49 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v49)
      {
        v45 = 0;
        v160 = (v107 & 0xC000000000000001);
        v155 = v107 & 0xFFFFFFFFFFFFFF8;
        v42 = v150 + 32;
        v108 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v160)
          {
            v109 = MEMORY[0x259C3E830](v45, v145);
            v52 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              goto LABEL_105;
            }
          }

          else
          {
            if (v45 >= *(v155 + 16))
            {
              goto LABEL_106;
            }

            v109 = *(v145 + 8 * v45 + 32);
            v52 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              goto LABEL_105;
            }
          }

          v41 = v109;
          v110 = [v41 id];
          if (v110)
          {
            v111 = v148;
            v112 = v110;
            sub_25574F080();

            v113 = 0;
          }

          else
          {
            v113 = 1;
            v111 = v148;
          }

          (v158)(v111, v113, 1, v44);
          v114 = v111;
          v115 = v152;
          sub_2556B0D64(v114, v152);
          v116 = v115;
          v15 = v147;
          sub_2556B0D64(v116, v147);

          if (v156(v15, 1, v44) == 1)
          {
            sub_255674B20(v15, &unk_27F7BED20, &unk_2557551D0);
          }

          else
          {
            v117 = v44;
            v118 = *v42;
            (*v42)(v153, v15, v117);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v108 = sub_255698A7C(0, *(v108 + 2) + 1, 1, v108);
            }

            v120 = *(v108 + 2);
            v119 = *(v108 + 3);
            if (v120 >= v119 >> 1)
            {
              v108 = sub_255698A7C(v119 > 1, v120 + 1, 1, v108);
            }

            *(v108 + 2) = v120 + 1;
            v41 = v151;
            v118(&v108[((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v120], v153, v151);
            v44 = v41;
          }

          ++v45;
          if (v52 == v49)
          {
            goto LABEL_100;
          }
        }
      }

      v108 = MEMORY[0x277D84F90];
LABEL_100:
      v121 = MEMORY[0x259C3E060](v108, v44);
      v123 = v122;

      v124 = sub_2556E474C(v121, v123, &v169);

      v125 = v142;
      *(v142 + 64) = v124;
      v126 = v137;
      _os_log_impl(&dword_255661000, v137, v136, "Caching journals for entry with id %{public}s\nAdding: %ld\nRemoving: %ld\n---\nCached IDs: %s\nMergeable IDs: %s\nAdding IDs: %s\nRemoving IDs: %s", v125, 0x48u);
      v127 = v135;
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v127, -1, -1);
      MEMORY[0x259C3F520](v125, -1, -1);

      v15 = v141;
      v60 = v145;
      v59 = v144;
      v63 = v138;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    sub_25569B86C(v59);

    type metadata accessor for JournalMO();
    sub_25567AF9C(&qword_27F7BE0A8, type metadata accessor for JournalMO);
    v128 = sub_255750560();

    [v63 addJournals_];

    sub_25569B86C(v60);

    v129 = sub_255750560();

    [v63 removeJournals_];

    return;
  }

  if (v60 >> 62)
  {
    if (!sub_255750A30())
    {
      goto LABEL_112;
    }

    goto LABEL_42;
  }

  if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_42;
  }

LABEL_112:

  if (qword_27F7BD718 != -1)
  {
    swift_once();
  }

  v130 = sub_25574F2C0();
  __swift_project_value_buffer(v130, qword_27F7BE800);
  v131 = sub_25574F2A0();
  v132 = sub_2557507A0();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 0;
    _os_log_impl(&dword_255661000, v131, v132, "Exiting relationship caching early since there are no actual updates", v133, 2u);
    MEMORY[0x259C3F520](v133, -1, -1);
  }
}

uint64_t sub_2556BFB50@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 id];
  if (v3)
  {
    v4 = v3;
    sub_25574F080();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_25574F0D0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_2556BFBF4(void (*a1)(char *, uint64_t, uint64_t), unint64_t a2, void *a3)
{
  v4 = v3;
  v112 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v114 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v117 = (&v107 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v116 = &v107 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v110 = &v107 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v111 = &v107 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v107 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v126 = &v107 - v23;
  MEMORY[0x28223BE20](v22);
  v125 = &v107 - v24;
  v128 = sub_25574F0D0();
  v25 = *(v128 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v128);
  v115 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v109 = &v107 - v30;
  MEMORY[0x28223BE20](v29);
  v124 = &v107 - v31;
  v32 = *(a1 + 2);
  v33 = MEMORY[0x277D84F90];
  v118 = v25;
  v127 = a1;
  if (v32)
  {
    v123 = v3;
    v34 = v21;
    v35 = a2;
    v36 = sub_25574250C(v32, 0);
    v130 = sub_255745468(v129, (v36 + ((*(v25 + 80) + 32) & ~*(v25 + 80))), v32, a1);
    a2 = v129[1];
    a1 = v129[2];
    v37 = v129[3];

    sub_25568B1C8();
    if (v130 != v32)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    a2 = v35;
    a1 = v127;
    v4 = v123;
    v33 = MEMORY[0x277D84F90];
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  sub_2556D09C4(v36, a2);
  v34 = v38;
  v37 = v4;

  if (v4)
  {
    return result;
  }

  v123 = v21;
  v129[0] = v33;
  if (!(v34 >> 62))
  {
    v40 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_8;
  }

LABEL_82:
  v40 = sub_255750A30();
LABEL_8:
  v41 = v114;
  v113 = v37;
  if (v40)
  {
    v107 = a2;
    a2 = 0;
    v130 = v34 & 0xFFFFFFFFFFFFFF8;
    v37 = &property descriptor for JournalMO.isUploadedToCloud;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x259C3E830](a2, v34);
      }

      else
      {
        if (a2 >= *(v130 + 16))
        {
          goto LABEL_76;
        }

        v42 = v34[a2 + 4];
      }

      v43 = v42;
      v44 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      if ([v42 userDeleted])
      {
      }

      else
      {
        sub_255750BB0();
        a1 = *(v129[0] + 16);
        sub_255750BE0();
        sub_255750BF0();
        sub_255750BC0();
      }

      ++a2;
    }

    while (v44 != v40);
    v122 = v34 & 0xC000000000000001;
    a2 = 0;
    v108 = v129[0];
    v119 = (v118 + 56);
    v45 = (v118 + 48);
    v46 = MEMORY[0x277D84F90];
    v120 = v40;
    v121 = (v118 + 32);
    v37 = v128;
    do
    {
      if (v122)
      {
        v47 = MEMORY[0x259C3E830](a2, v34);
        v48 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (a2 >= *(v130 + 16))
        {
          goto LABEL_78;
        }

        v47 = v34[a2 + 4];
        v48 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_77;
        }
      }

      v49 = v34;
      v50 = v47;
      v51 = [v50 id];
      if (v51)
      {
        v52 = v51;
        v53 = v123;
        sub_25574F080();

        v54 = 0;
      }

      else
      {
        v54 = 1;
        v53 = v123;
      }

      (v119->isa)(v53, v54, 1, v37);
      v55 = v53;
      v56 = v126;
      sub_2556B0D64(v55, v126);
      v57 = v56;
      v58 = v125;
      sub_2556B0D64(v57, v125);

      if ((*v45)(v58, 1, v37) == 1)
      {
        sub_255674B20(v58, &unk_27F7BED20, &unk_2557551D0);
        v34 = v49;
      }

      else
      {
        v59 = *v121;
        (*v121)(v124, v58, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_255698A7C(0, v46[2] + 1, 1, v46);
        }

        v34 = v49;
        v61 = v46[2];
        v60 = v46[3];
        if (v61 >= v60 >> 1)
        {
          v46 = sub_255698A7C(v60 > 1, v61 + 1, 1, v46);
        }

        v46[2] = v61 + 1;
        v62 = v46 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v61;
        v37 = v128;
        v59(v62, v124, v128);
      }

      ++a2;
      a1 = v127;
    }

    while (v48 != v120);
    v41 = v114;
    v63 = v108;
    a2 = v107;
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
  }

  v64 = sub_2556C1598(v46, a1);

  v65 = a2;
  v66 = v113;
  v67 = sub_2556C3584(v64, v65);
  v113 = v66;

  if (v67 >> 62)
  {
    v130 = sub_255750A30();
    if (v130)
    {
LABEL_41:
      if (qword_27F7BD718 != -1)
      {
        swift_once();
      }

      v68 = sub_25574F2C0();
      __swift_project_value_buffer(v68, qword_27F7BE800);

      v69 = v112;
      v70 = sub_25574F2A0();
      v71 = sub_2557507A0();

      if (os_log_type_enabled(v70, v71))
      {
        LODWORD(v112) = v71;
        v119 = v70;
        v72 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v129[0] = v107;
        *v72 = 134218498;
        if (v67 >> 62)
        {
          v73 = sub_255750A30();
        }

        else
        {
          v73 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v74 = v111;
        *(v72 + 4) = v73;

        v120 = v72;
        *(v72 + 12) = 2080;
        v75 = [v69 id];
        v76 = v110;
        if (v75)
        {
          v77 = v75;
          sub_25574F080();

          v78 = 0;
        }

        else
        {
          v78 = 1;
        }

        v79 = v118;
        v80 = v128;
        v123 = *(v118 + 56);
        v124 = (v118 + 56);
        (v123)(v76, v78, 1, v128);
        sub_2556B0D64(v76, v74);
        v121 = *(v79 + 48);
        v122 = v79 + 48;
        v81 = (v121)(v74, 1, v80);
        v108 = v63;
        if (v81)
        {
          sub_255674B20(v74, &unk_27F7BED20, &unk_2557551D0);
          v82 = 0xE300000000000000;
          v83 = 7104878;
        }

        else
        {
          v84 = v109;
          (*(v79 + 16))(v109, v74, v80);
          sub_255674B20(v74, &unk_27F7BED20, &unk_2557551D0);
          v85 = sub_25574F040();
          v86 = v80;
          v82 = v87;
          (*(v79 + 8))(v84, v86);
          v83 = v85;
        }

        v88 = v120;
        v89 = sub_2556E474C(v83, v82, v129);

        v37 = 0;
        *(v88 + 14) = v89;
        *(v88 + 22) = 2080;
        v126 = v67 & 0xFFFFFFFFFFFFFF8;
        v127 = v67 & 0xC000000000000001;
        v34 = (v79 + 32);
        v90 = MEMORY[0x277D84F90];
        v125 = v67;
        do
        {
          if (v127)
          {
            v91 = MEMORY[0x259C3E830](v37, v67);
            v92 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (v37 >= *(v126 + 16))
            {
              goto LABEL_80;
            }

            v91 = *(v67 + 8 * v37 + 32);
            v92 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_79;
            }
          }

          a2 = v91;
          v93 = [a2 id];
          if (v93)
          {
            v94 = v93;
            sub_25574F080();

            v95 = 0;
          }

          else
          {
            v95 = 1;
          }

          v96 = v128;
          (v123)(v41, v95, 1, v128);
          a1 = v117;
          sub_2556B0D64(v41, v117);
          v97 = v116;
          sub_2556B0D64(a1, v116);

          if ((v121)(v97, 1, v96) == 1)
          {
            sub_255674B20(v97, &unk_27F7BED20, &unk_2557551D0);
            v67 = v125;
          }

          else
          {
            a1 = *v34;
            (*v34)(v115, v97, v96);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v90 = sub_255698A7C(0, *(v90 + 2) + 1, 1, v90);
            }

            v67 = v125;
            v99 = *(v90 + 2);
            v98 = *(v90 + 3);
            a2 = v99 + 1;
            if (v99 >= v98 >> 1)
            {
              v90 = sub_255698A7C(v98 > 1, v99 + 1, 1, v90);
            }

            *(v90 + 2) = a2;
            a1(&v90[((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v99], v115, v128);
            v41 = v114;
          }

          ++v37;
        }

        while (v92 != v130);
        v100 = MEMORY[0x259C3E060](v90, v128);
        v102 = v101;

        v103 = sub_2556E474C(v100, v102, v129);

        v104 = v120;
        *(v120 + 24) = v103;
        v105 = v119;
        _os_log_impl(&dword_255661000, v119, v112, "Reserved %ld new Journal while caching relationships for entry %s. Reserved journal ids: %s", v104, 0x20u);
        v106 = v107;
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v106, -1, -1);
        MEMORY[0x259C3F520](v104, -1, -1);

        v63 = v108;
      }

      else
      {
      }
    }
  }

  else
  {
    v130 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v130)
    {
      goto LABEL_41;
    }
  }

  v129[0] = v63;
  sub_25574A3D8(v67);
  return v129[0];
}

uint64_t sub_2556C0864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 16) <= *(a1 + 16) >> 3)
  {

    sub_2556C137C(a2);
    v7 = a1;
  }

  else
  {

    v7 = sub_2556C1C58(a2, a1);
  }

  v9 = sub_2556C44C4(v8, v7);

  sub_25574A4C8(v9);
  return a4;
}

uint64_t sub_2556C091C(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    sub_255750F80();
    AssetType.rawValue.getter();
    sub_2557501F0();

    v5 = sub_255750FD0();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = 0xE500000000000000;
        v10 = 0x6F746F6870;
        switch(*(*(a2 + 48) + v7))
        {
          case 1:
            v9 = 0xE90000000000006FLL;
            v10 = 0x746F68506576696CLL;
            break;
          case 2:
            v10 = 0x6F65646976;
            break;
          case 3:
            v10 = 0x636973756DLL;
            break;
          case 4:
            v9 = 0xE700000000000000;
            v10 = 0x74736163646F70;
            break;
          case 5:
            v9 = 0xE400000000000000;
            v10 = 1802465122;
            break;
          case 6:
            v10 = 0x6F69647561;
            break;
          case 7:
            v10 = 0x7469736976;
            break;
          case 8:
            v10 = 0x6E695069746C756DLL;
            v11 = 7364941;
            goto LABEL_27;
          case 9:
            v9 = 0xEA00000000007061;
            v10 = 0x4D636972656E6567;
            break;
          case 0xA:
            v9 = 0xE400000000000000;
            v10 = 1802398060;
            break;
          case 0xB:
            v9 = 0xE700000000000000;
            v10 = 0x746361746E6F63;
            break;
          case 0xC:
            v10 = 0x4974756F6B726F77;
            v11 = 7237475;
            goto LABEL_27;
          case 0xD:
            v10 = 0x5274756F6B726F77;
            v9 = 0xEC0000006574756FLL;
            break;
          case 0xE:
            v10 = 0x697463656C666572;
            v9 = 0xEA00000000006E6FLL;
            break;
          case 0xF:
            v10 = 0x4D664F6574617473;
            v11 = 6581865;
            goto LABEL_27;
          case 0x10:
            v10 = 0x63416E6F69746F6DLL;
            v9 = 0xEE00797469766974;
            break;
          case 0x11:
            v10 = 0x7261506472696874;
            v9 = 0xEF616964654D7974;
            break;
          case 0x12:
            v10 = 0x6C6F686563616C70;
            v11 = 7497060;
            goto LABEL_27;
          case 0x13:
            v10 = 0x76456B6165727473;
            v11 = 7630437;
LABEL_27:
            v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 0x14:
            v9 = 0xE700000000000000;
            v10 = 0x676E6977617264;
            break;
          case 0x15:
            v9 = 0xE800000000000000;
            v10 = 0x69747465666E6F63;
            break;
          case 0x16:
            v9 = 0xE700000000000000;
            v10 = 0x6E776F6E6B6E75;
            break;
          default:
            break;
        }

        v12 = 0xE500000000000000;
        v13 = 0x6F746F6870;
        switch(a1)
        {
          case 1:
            v12 = 0xE90000000000006FLL;
            if (v10 == 0x746F68506576696CLL)
            {
              goto LABEL_67;
            }

            goto LABEL_68;
          case 2:
            v17 = 1701079414;
            goto LABEL_59;
          case 3:
            if (v10 != 0x636973756DLL)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 4:
            v12 = 0xE700000000000000;
            v14 = 0x736163646F70;
            goto LABEL_37;
          case 5:
            v12 = 0xE400000000000000;
            if (v10 != 1802465122)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 6:
            v17 = 1768191329;
LABEL_59:
            if (v10 != (v17 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 7:
            if (v10 != 0x7469736976)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 8:
            v15 = 0x6E695069746C756DLL;
            v16 = 7364941;
            goto LABEL_72;
          case 9:
            v12 = 0xEA00000000007061;
            if (v10 != 0x4D636972656E6567)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 10:
            v12 = 0xE400000000000000;
            if (v10 != 1802398060)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 11:
            v12 = 0xE700000000000000;
            v14 = 0x6361746E6F63;
LABEL_37:
            if (v10 != (v14 & 0xFFFFFFFFFFFFLL | 0x74000000000000))
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 12:
            v15 = 0x4974756F6B726F77;
            v16 = 7237475;
            goto LABEL_72;
          case 13:
            v12 = 0xEC0000006574756FLL;
            if (v10 != 0x5274756F6B726F77)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 14:
            v12 = 0xEA00000000006E6FLL;
            if (v10 != 0x697463656C666572)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 15:
            v15 = 0x4D664F6574617473;
            v16 = 6581865;
            goto LABEL_72;
          case 16:
            v12 = 0xEE00797469766974;
            if (v10 != 0x63416E6F69746F6DLL)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 17:
            v12 = 0xEF616964654D7974;
            if (v10 != 0x7261506472696874)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 18:
            v15 = 0x6C6F686563616C70;
            v16 = 7497060;
            goto LABEL_72;
          case 19:
            v15 = 0x76456B6165727473;
            v16 = 7630437;
LABEL_72:
            v12 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v10 != v15)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 20:
            v12 = 0xE700000000000000;
            if (v10 != 0x676E6977617264)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 21:
            v12 = 0xE800000000000000;
            if (v10 != 0x69747465666E6F63)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 22:
            v12 = 0xE700000000000000;
            v13 = 0x6E776F6E6B6E75;
            goto LABEL_66;
          default:
LABEL_66:
            if (v10 != v13)
            {
              goto LABEL_68;
            }

LABEL_67:
            if (v9 == v12)
            {

              v18 = 1;
              return v18 & 1;
            }

LABEL_68:
            v18 = sub_255750EB0();

            if (v18)
            {
              return v18 & 1;
            }

            v7 = (v7 + 1) & v8;
            if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
            {
              return v18 & 1;
            }

            break;
        }
      }
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_2556C0F6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2556C0FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      v28 = sub_255750090();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
        v33 = sub_255750100();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2556C137C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_25574F0D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_255674B20(v6, &unk_27F7BED20, &unk_2557551D0))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_2556992A0(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2556C1598(uint64_t a1, uint64_t a2)
{
  v66[2] = *MEMORY[0x277D85DE8];
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v60 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v52 - v10;
  MEMORY[0x28223BE20](v9);
  i = v52 - v12;
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_31;
  }

  v66[0] = a1;
  v13 = *(a1 + 16);

  v54 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v56 = a1;
  v57 = a1 + ((v17 + 32) & ~v17);
  v63 = *(v15 + 56);
  v64 = v16;
  v61 = (a2 + 56);
  v62 = a2;
  v65 = v15;
  v18 = (v15 - 8);
  v53 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v58 = v14 + 1;
    v66[1] = v14 + 1;
    v64(i, v57 + v63 * v14, v4);
    v19 = *(a2 + 40);
    v55 = sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
    v20 = sub_255750090();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v58;
    if (v58 == v54)
    {
      goto LABEL_30;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v64(v11, *(v62 + 48) + v22 * v63, v4);
    sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
    v26 = sub_255750100();
    v27 = *v18;
    (*v18)(v11, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) == 0)
    {
      a2 = v62;
      goto LABEL_10;
    }
  }

  v28 = (v27)(i, v4);
  v29 = v62;
  v30 = *(v62 + 32);
  v52[0] = ((1 << v30) + 63) >> 6;
  v31 = 8 * v52[0];
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v52[1] = v52;
    MEMORY[0x28223BE20](v28);
    v33 = v52 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v61, v32);
    v34 = *(v29 + 16);
    *&v33[8 * v23] &= ~v24;
    v53 = v33;
    v54 = (v34 - 1);
    v35 = *(v56 + 16);
    v36 = v58;
    for (i = v35; ; v35 = i)
    {
      if (v36 == v35)
      {
        a2 = sub_2556C2F84(v53, v52[0], v54, v29);
        goto LABEL_30;
      }

      if (v36 >= *(v56 + 16))
      {
        break;
      }

      v58 = v36;
      v64(v60, v57 + v36 * v63, v4);
      v38 = *(v29 + 40);
      v39 = sub_255750090();
      v40 = -1 << *(v29 + 32);
      v22 = v39 & ~v40;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v61[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v64(v11, *(v62 + 48) + v22 * v63, v4);
      v41 = sub_255750100();
      v27(v11, v4);
      if ((v41 & 1) == 0)
      {
        v42 = ~v40;
        while (1)
        {
          v22 = (v22 + 1) & v42;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v61[v22 >> 6]) == 0)
          {
            break;
          }

          v64(v11, *(v62 + 48) + v22 * v63, v4);
          v43 = sub_255750100();
          v27(v11, v4);
          if (v43)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v27(v60, v4);
        v29 = v62;
LABEL_16:
        v37 = v58;
        goto LABEL_17;
      }

LABEL_25:
      v27(v60, v4);
      v44 = v53[v24];
      v53[v24] = v44 & ~v23;
      v29 = v62;
      if ((v44 & v23) == 0)
      {
        goto LABEL_16;
      }

      v45 = v54 - 1;
      v37 = v58;
      if (__OFSUB__(v54, 1))
      {
        goto LABEL_33;
      }

      --v54;
      if (!v45)
      {

        a2 = MEMORY[0x277D84FA0];
        goto LABEL_30;
      }

LABEL_17:
      v36 = v37 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v48 = v31;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v50 = v62;

      v29 = v50;
      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v61, v49);
  a2 = sub_2556C26BC(v51, v52[0], v62, v22, v66);

  MEMORY[0x259C3F520](v51, -1, -1);
LABEL_30:

LABEL_31:
  v46 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_2556C1C58(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v69 - v10);
  v12 = sub_25574F0D0();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v69 - v17);
  MEMORY[0x28223BE20](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_255674B20(v32, &unk_27F7BED20, &unk_2557551D0);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_25567AF9C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
    v35 = sub_255750090();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_25567AF9C(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
    v39 = sub_255750100();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x28223BE20](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_255674B20(v26, &unk_27F7BED20, &unk_2557551D0);
        a2 = sub_2556C2F84(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_255750090();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_255750100();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_255750100();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_2556C2AB0(v68, v69, v84, v26, &v93);

  MEMORY[0x259C3F520](v68, -1, -1);
LABEL_52:
  sub_25568B1C8();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}