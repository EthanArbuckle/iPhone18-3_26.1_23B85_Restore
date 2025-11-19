id static JournalMO.delete(_:shouldDeleteEntries:)(void *a1, Swift::Bool a2)
{
  v4 = sub_25574F020();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  JournalMO.removeAllEntries(shouldDeleteAllEntries:)(a2);
  [a1 setUserDeleted_];
  [a1 setMergeableAttributes_];
  [a1 setCreatedDate_];
  sub_25574F010();
  v9 = sub_25574EFC0();
  (*(v5 + 8))(v8, v4);
  [a1 setUpdatedDate_];

  return [a1 setIsUploadedToCloud_];
}

Swift::Void __swiftcall JournalMO.removeAllEntries(shouldDeleteAllEntries:)(Swift::Bool shouldDeleteAllEntries)
{
  v32 = sub_25574F020();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v32);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 entries];
  if (v7)
  {
    v8 = v7;
    v35 = 0;
    v9 = type metadata accessor for JournalEntryMO();
    sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO);
    sub_255750570();

    v10 = v35;
    if (v35)
    {
      JournalMO.removeEntries(_:)(v35);
      if (shouldDeleteAllEntries)
      {
        v29 = v10;
        v30 = v9;
        if ((v10 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_2557509F0();
          sub_2557505C0();
          v11 = v35;
          v12 = v36;
          v13 = v37;
          v14 = v38;
          v15 = v39;
        }

        else
        {
          v16 = -1 << *(v10 + 32);
          v12 = v10 + 56;
          v13 = ~v16;
          v17 = -v16;
          if (v17 < 64)
          {
            v18 = ~(-1 << v17);
          }

          else
          {
            v18 = -1;
          }

          v15 = v18 & *(v10 + 56);

          v14 = 0;
          v11 = v10;
        }

        v28 = v13;
        v19 = (v13 + 64) >> 6;
        v20 = (v3 + 8);
        v31 = v11;
        if (v11 < 0)
        {
          goto LABEL_20;
        }

        while (1)
        {
          v21 = v14;
          v22 = v15;
          v23 = v14;
          if (!v15)
          {
            break;
          }

LABEL_18:
          v24 = (v22 - 1) & v22;
          v25 = *(*(v11 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
          if (!v25)
          {
LABEL_24:
            sub_25568B1C8();

            return;
          }

          while (1)
          {
            sub_25574F000();
            v27 = sub_25574EFC0();
            (*v20)(v6, v32);
            [v25 setDeletedOnDate_];

            [v25 setIsUploadedToCloud_];
            v14 = v23;
            v15 = v24;
            v11 = v31;
            if ((v31 & 0x8000000000000000) == 0)
            {
              break;
            }

LABEL_20:
            v26 = sub_255750A60();
            if (v26)
            {
              v33 = v26;
              swift_dynamicCast();
              v25 = v34;
              v23 = v14;
              v24 = v15;
              if (v34)
              {
                continue;
              }
            }

            goto LABEL_24;
          }
        }

        while (1)
        {
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v23 >= v19)
          {
            goto LABEL_24;
          }

          v22 = *(v12 + 8 * v23);
          ++v21;
          if (v22)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
      }
    }
  }
}

id static JournalMO.makeDefaultJournal(context:)(uint64_t a1)
{
  if (qword_27F7BD820 != -1)
  {
    swift_once();
  }

  v2 = sub_25574F0D0();
  v3 = __swift_project_value_buffer(v2, qword_27F7BFF68);
  sub_255727DC8(v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for JournalMO();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v6 = sub_25574F050();
    [v5 setId_];

    [v5 setIsUploadedToCloud_];
    v4 = 0;
  }

  v7 = v4;
  [v5 setSortCategory_];
  [v5 setSortOrder_];

  return v5;
}

uint64_t JournalMO.isDefaultJournal.getter()
{
  v1 = v0;
  v2 = sub_25574F0D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFD0, &unk_255757E80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v30 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v21 = [v1 id];
  if (v21)
  {
    v22 = v21;
    sub_25574F080();

    v23 = *(v3 + 56);
    v23(v20, 0, 1, v2);
  }

  else
  {
    v23 = *(v3 + 56);
    v23(v20, 1, 1, v2);
  }

  if (qword_27F7BD820 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v2, qword_27F7BFF68);
  (*(v3 + 16))(v18, v24, v2);
  v23(v18, 0, 1, v2);
  v25 = *(v7 + 48);
  sub_255663294(v20, v10, &unk_27F7BED20, &unk_2557551D0);
  sub_255663294(v18, &v10[v25], &unk_27F7BED20, &unk_2557551D0);
  v26 = *(v3 + 48);
  if (v26(v10, 1, v2) != 1)
  {
    sub_255663294(v10, v15, &unk_27F7BED20, &unk_2557551D0);
    if (v26(&v10[v25], 1, v2) != 1)
    {
      (*(v3 + 32))(v6, &v10[v25], v2);
      sub_25572D870(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
      v27 = sub_255750100();
      v28 = *(v3 + 8);
      v28(v6, v2);
      sub_255674B20(v18, &unk_27F7BED20, &unk_2557551D0);
      sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
      v28(v15, v2);
      sub_255674B20(v10, &unk_27F7BED20, &unk_2557551D0);
      return v27 & 1;
    }

    sub_255674B20(v18, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
    (*(v3 + 8))(v15, v2);
    goto LABEL_11;
  }

  sub_255674B20(v18, &unk_27F7BED20, &unk_2557551D0);
  sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
  if (v26(&v10[v25], 1, v2) != 1)
  {
LABEL_11:
    sub_255674B20(v10, &unk_27F7BFFD0, &unk_255757E80);
    v27 = 0;
    return v27 & 1;
  }

  sub_255674B20(v10, &unk_27F7BED20, &unk_2557551D0);
  v27 = 1;
  return v27 & 1;
}

uint64_t JournalMO.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = v16 - v11;
  if (a2)
  {
    v13 = [v2 mergeableAttributes];
    if (v13)
    {
      v14 = v13;
      sub_25572D808(v13 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v12, type metadata accessor for MergeableJournalAttributes);

      v15 = type metadata accessor for MergeableJournalAttributes(0);
      (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
    }

    else
    {
      v15 = type metadata accessor for MergeableJournalAttributes(0);
      (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    }

    type metadata accessor for MergeableJournalAttributes(0);
    if ((*(*(v15 - 8) + 48))(v12, 1, v15))
    {

      sub_255663294(v12, v9, &qword_27F7BE7D8, &qword_255757E98);
      sub_2556B7644(v9);
      return sub_255674B20(v12, &qword_27F7BE7D8, &qword_255757E98);
    }

    else
    {
      v16[0] = a1;
      v16[1] = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
      sub_25574F370();
      return sub_2556B7644(v12);
    }
  }

  return result;
}

uint64_t (*JournalMO.title.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = JournalMO.title.getter();
  a1[1] = v3;
  return sub_25572B024;
}

uint64_t sub_25572B024(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return JournalMO.title.setter(*a1, v2);
  }

  v5 = a1[1];

  JournalMO.title.setter(v3, v2);
}

uint64_t JournalMO.color.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v33 - v11;
  v13 = type metadata accessor for MergeableColor(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v33[0] = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v33 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v33 - v21;
  sub_255663294(a1, v12, &qword_27F7BFFE0, &qword_25575BCB0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_255674B20(a1, &qword_27F7BFFE0, &qword_25575BCB0);
    v23 = v12;
    v24 = &qword_27F7BFFE0;
    v25 = &qword_25575BCB0;
  }

  else
  {
    sub_25572D918(v12, v22, type metadata accessor for MergeableColor);
    v26 = [v33[1] mergeableAttributes];
    if (v26)
    {
      v27 = v26;
      sub_25572D808(v26 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v8, type metadata accessor for MergeableJournalAttributes);

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = type metadata accessor for MergeableJournalAttributes(0);
    v30 = *(v29 - 8);
    (*(v30 + 56))(v8, v28, 1, v29);
    if (!(*(v30 + 48))(v8, 1, v29))
    {
      sub_25572D808(v22, v20, type metadata accessor for MergeableColor);
      sub_25572D808(v20, v33[0], type metadata accessor for MergeableColor);
      v32 = *(v29 + 20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
      sub_25574F370();
      sub_25572D8B8(v20, type metadata accessor for MergeableColor);
      sub_2556B7644(v8);
      sub_255674B20(a1, &qword_27F7BFFE0, &qword_25575BCB0);
      return sub_25572D8B8(v22, type metadata accessor for MergeableColor);
    }

    sub_255663294(v8, v6, &qword_27F7BE7D8, &qword_255757E98);
    sub_2556B7644(v6);
    sub_255674B20(a1, &qword_27F7BFFE0, &qword_25575BCB0);
    sub_25572D8B8(v22, type metadata accessor for MergeableColor);
    v23 = v8;
    v24 = &qword_27F7BE7D8;
    v25 = &qword_255757E98;
  }

  return sub_255674B20(v23, v24, v25);
}

void (*JournalMO.color.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0) - 8) + 64);
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
  JournalMO.color.getter(v4);
  return sub_25572B5BC;
}

uint64_t JournalMO.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = [v1 mergeableAttributes];
  if (v7)
  {
    v8 = v7;
    sub_25572D808(v7 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v6, type metadata accessor for MergeableJournalAttributes);

    v9 = type metadata accessor for MergeableJournalAttributes(0);
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  }

  else
  {
    v9 = type metadata accessor for MergeableJournalAttributes(0);
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  type metadata accessor for MergeableJournalAttributes(0);
  v10 = 1;
  if (!(*(*(v9 - 8) + 48))(v6, 1, v9))
  {
    v11 = *(v9 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
    sub_25574F360();
    v10 = 0;
  }

  sub_255674B20(v6, &qword_27F7BE7D8, &qword_255757E98);
  v12 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  return (*(*(v12 - 8) + 56))(a1, v10, 1, v12);
}

uint64_t sub_25572B7E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - v14;
  sub_255663294(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  return a7(v15);
}

uint64_t JournalMO.icon.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE8, &qword_25575E488);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v33 - v11;
  v13 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v33[0] = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v33 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v33 - v21;
  sub_255663294(a1, v12, &qword_27F7BFFE8, &qword_25575E488);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_255674B20(a1, &qword_27F7BFFE8, &qword_25575E488);
    v23 = v12;
    v24 = &qword_27F7BFFE8;
    v25 = &qword_25575E488;
  }

  else
  {
    sub_25572D918(v12, v22, type metadata accessor for MergeableJournalAttributes.Icon);
    v26 = [v33[1] mergeableAttributes];
    if (v26)
    {
      v27 = v26;
      sub_25572D808(v26 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v8, type metadata accessor for MergeableJournalAttributes);

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = type metadata accessor for MergeableJournalAttributes(0);
    v30 = *(v29 - 8);
    (*(v30 + 56))(v8, v28, 1, v29);
    if (!(*(v30 + 48))(v8, 1, v29))
    {
      sub_25572D808(v22, v20, type metadata accessor for MergeableJournalAttributes.Icon);
      sub_25572D808(v20, v33[0], type metadata accessor for MergeableJournalAttributes.Icon);
      v32 = *(v29 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
      sub_25574F370();
      sub_25572D8B8(v20, type metadata accessor for MergeableJournalAttributes.Icon);
      sub_2556B7644(v8);
      sub_255674B20(a1, &qword_27F7BFFE8, &qword_25575E488);
      return sub_25572D8B8(v22, type metadata accessor for MergeableJournalAttributes.Icon);
    }

    sub_255663294(v8, v6, &qword_27F7BE7D8, &qword_255757E98);
    sub_2556B7644(v6);
    sub_255674B20(a1, &qword_27F7BFFE8, &qword_25575E488);
    sub_25572D8B8(v22, type metadata accessor for MergeableJournalAttributes.Icon);
    v23 = v8;
    v24 = &qword_27F7BE7D8;
    v25 = &qword_255757E98;
  }

  return sub_255674B20(v23, v24, v25);
}

void (*JournalMO.icon.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE8, &qword_25575E488) - 8) + 64);
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
  JournalMO.icon.getter(v4);
  return sub_25572BDB0;
}

void sub_25572BDD8(uint64_t *a1, char a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
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

uint64_t JournalMO.symbolName.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE8, &qword_25575E488);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v23 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  JournalMO.icon.getter(v7);
  v13 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v7, 1, v13) == 1)
  {
    sub_255674B20(v7, &qword_27F7BFFE8, &qword_25575E488);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
      v17 = sub_25574F320();
      (*(*(v17 - 8) + 8))(&v7[v16], v17);
      *v10 = 0x672E657261757173;
      v10[1] = 0xEF3378332E646972;
      swift_storeEnumTagMultiPayload();
      (*(v14 + 56))(v10, 0, 1, v13);
      goto LABEL_7;
    }

    sub_25572D8B8(v7, type metadata accessor for MergeableJournalAttributes.Icon);
  }

  JournalMO.icon.getter(v10);
LABEL_7:
  sub_25572D980(v10, v12);
  sub_25572D980(v12, v4);
  if (v15(v4, 1, v13) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      result = *v4;
      v20 = *(v4 + 1);
      return result;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_25572D8B8(v4, type metadata accessor for MergeableJournalAttributes.Icon);
    }

    else
    {
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
      v22 = sub_25574F320();
      (*(*(v22 - 8) + 8))(&v4[v21], v22);
    }
  }

  return 0;
}

uint64_t JournalMO.emoji.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE8, &qword_25575E488);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  JournalMO.icon.getter(&v11 - v2);
  v4 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  result = 0;
  if (v5 != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        result = *v3;
        v8 = *(v3 + 1);
        return result;
      }

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
      v10 = sub_25574F320();
      (*(*(v10 - 8) + 8))(&v3[v9], v10);
    }

    else
    {
      sub_25572D8B8(v3, type metadata accessor for MergeableJournalAttributes.Icon);
    }

    return 0;
  }

  return result;
}

Swift::Void __swiftcall JournalMO.addEntries(_:)(Swift::OpaquePointer a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (v23 - v9);
  v11 = [v1 id];
  if (v11)
  {
    v12 = v11;
    sub_25574F080();

    v13 = (*(v4 + 32))(v10, v8, v3);
    MEMORY[0x28223BE20](v13);
    v23[-2] = v10;
    sub_25572A1F0(sub_25572D9F0, &v23[-4], a1._rawValue);

    sub_25569B8B4(v14);

    type metadata accessor for JournalEntryMO();
    sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO);
    v15 = sub_255750560();

    [v1 addEntries_];

    (*(v4 + 8))(v10, v3);
  }

  else
  {
    if (qword_27F7BD818 != -1)
    {
      swift_once();
    }

    v16 = sub_25574F2C0();
    __swift_project_value_buffer(v16, qword_27F7BFF50);
    v17 = v1;
    v23[0] = sub_25574F2A0();
    v18 = sub_255750780();

    if (os_log_type_enabled(v23[0], v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v17;
      *v20 = v17;
      v21 = v17;
      _os_log_impl(&dword_255661000, v23[0], v18, "No ID for journal: %@", v19, 0xCu);
      sub_255674B20(v20, &qword_27F7BEC80, &qword_255757E90);
      MEMORY[0x259C3F520](v20, -1, -1);
      MEMORY[0x259C3F520](v19, -1, -1);
    }

    v22 = v23[0];
  }
}

Swift::Void __swiftcall JournalMO.removeEntries(_:)(Swift::OpaquePointer a1)
{

  v2 = sub_25569B8B4(v1);

  JournalMO.removeEntries(_:)(v2);
}

void JournalMO.removeEntries(_:)(uint64_t a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (v22 - v9);
  v11 = [v1 id];
  if (v11)
  {
    v12 = v11;
    sub_25574F080();

    v13 = (*(v4 + 32))(v10, v8, v3);
    MEMORY[0x28223BE20](v13);
    v22[-2] = v10;
    sub_255729FC0(sub_25572DA24, &v22[-4], a1);
    type metadata accessor for JournalEntryMO();
    sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO);
    v14 = sub_255750560();
    [v1 removeEntries_];

    (*(v4 + 8))(v10, v3);
  }

  else
  {
    if (qword_27F7BD818 != -1)
    {
      swift_once();
    }

    v15 = sub_25574F2C0();
    __swift_project_value_buffer(v15, qword_27F7BFF50);
    v16 = v1;
    v22[0] = sub_25574F2A0();
    v17 = sub_255750780();

    if (os_log_type_enabled(v22[0], v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v16;
      *v19 = v16;
      v20 = v16;
      _os_log_impl(&dword_255661000, v22[0], v17, "Missing ID for journal: %@", v18, 0xCu);
      sub_255674B20(v19, &qword_27F7BEC80, &qword_255757E90);
      MEMORY[0x259C3F520](v19, -1, -1);
      MEMORY[0x259C3F520](v18, -1, -1);
    }

    v21 = v22[0];
  }
}

uint64_t sub_25572C9CC()
{
  v0 = sub_25574F0D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25575CBA0;
  v6 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v7 = sub_255666F5C();
  *(v5 + 32) = 0x656C654472657375;
  *(v5 + 40) = 0xEB00000000646574;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = 0x656C654472657375;
  *(v5 + 80) = 0xEB00000000646574;
  *(v5 + 136) = v6;
  *(v5 + 144) = v7;
  *(v5 + 112) = 0xD000000000000013;
  *(v5 + 120) = 0x8000000255752490;
  if (qword_27F7BD820 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27F7BFF68);
  (*(v1 + 16))(v4, v8, v0);
  v9 = sub_25574F050();
  (*(v1 + 8))(v4, v0);
  *(v5 + 176) = sub_255669A88(0, &unk_27F7BF1F0, 0x277CCAD78);
  *(v5 + 184) = sub_2556E8720();
  *(v5 + 152) = v9;
  result = sub_255750750();
  qword_27F7BFF80 = result;
  return result;
}

id static JournalMO.visibleNamedJournalsPredicate.getter()
{
  if (qword_27F7BD828 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BFF80;

  return v1;
}

id static JournalMO.visibleNamedJournalsRequest()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF8, &qword_25575E490);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_255750180();
  v10 = [v8 initWithEntityName_];

  if (qword_27F7BD828 != -1)
  {
    swift_once();
  }

  [v10 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0000, qword_25575E498);
  v11 = *(v1 + 72);
  v12 = *(v1 + 80);
  v33 = v10;
  v13 = (v12 + 32) & ~v12;
  v30 = v11;
  v31 = 2 * v11;
  v32 = swift_allocObject();
  v14 = v32 + v13;
  KeyPath = swift_getKeyPath();
  MEMORY[0x259C3C9D0](KeyPath, 0);
  v16 = swift_getKeyPath();
  MEMORY[0x259C3C9E0](v16, 0);
  v17 = swift_getKeyPath();
  v35 = v14;
  MEMORY[0x259C3C9C0](v17, 1);
  v36 = MEMORY[0x277D84F90];
  sub_255750BD0();
  v29 = sub_255669A88(0, &qword_27F7BE228, 0x277CCAC98);
  v18 = *(v1 + 16);
  v18(v7, v14, v0);
  v18(v5, v7, v0);
  v34 = type metadata accessor for JournalMO();
  sub_2557507C0();
  v19 = *(v1 + 8);
  v19(v7, v0);
  v28 = v19;
  sub_255750BB0();
  v20 = v5;
  v21 = *(v36 + 16);
  sub_255750BE0();
  sub_255750BF0();
  sub_255750BC0();
  v18(v7, v35 + v30, v0);
  v18(v20, v7, v0);
  sub_2557507C0();
  v19(v7, v0);
  sub_255750BB0();
  v22 = *(v36 + 16);
  sub_255750BE0();
  sub_255750BF0();
  sub_255750BC0();
  v18(v7, v35 + v31, v0);
  v18(v20, v7, v0);
  sub_2557507C0();
  v28(v7, v0);
  sub_255750BB0();
  v23 = *(v36 + 16);
  sub_255750BE0();
  sub_255750BF0();
  sub_255750BC0();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v24 = sub_255750370();

  v25 = v33;
  [v33 setSortDescriptors_];

  return v25;
}

uint64_t static JournalMO.namedJournalsSortDescriptors()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0000, qword_25575E498);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF8, &qword_25575E490) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2557565E0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x259C3C9D0](KeyPath, 0);
  v5 = swift_getKeyPath();
  MEMORY[0x259C3C9E0](v5, 0);
  v6 = swift_getKeyPath();
  MEMORY[0x259C3C9C0](v6, 1);
  return v3;
}

id sub_25572D1D8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 sortCategory];
  *a2 = result;
  return result;
}

id sub_25572D220@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

uint64_t static JournalMO.entryCountIncludingDraftsForAllEntries(context:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  if (qword_27F7BD658 != -1)
  {
    swift_once();
  }

  [v2 setPredicate_];
  type metadata accessor for JournalEntryMO();
  v3 = sub_2557508B0();

  return v3;
}

void static JournalMO.entryCountIncludingDrafts(for:context:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_255755070;
  if (qword_27F7BD658 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BDCF8;
  *(v3 + 32) = qword_27F7BDCF8;
  v5 = v4;
  *(v3 + 40) = _sSo11NSPredicateC13JournalSharedE09belongsToB02idAB10Foundation4UUIDV_tFZ_0();
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v6 = sub_255750370();

  v7 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v2 setPredicate_];
  MEMORY[0x28223BE20](v8);
  sub_255750870();
}

uint64_t sub_25572D548@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JournalEntryMO();
  result = sub_2557508B0();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id _s13JournalShared0A2MOC6create7context2id19mergeableAttributesACSo22NSManagedObjectContextC_10Foundation4UUIDVAA09MergeableaH0VtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_25574F020();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JournalMO();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v15 = sub_25574F050();
  [v14 setId_];

  sub_25574F010();
  v16 = sub_25574EFC0();
  v17 = *(v10 + 8);
  v17(v13, v9);
  [v14 setCreatedDate_];

  sub_25574F010();
  v18 = sub_25574EFC0();
  v17(v13, v9);
  [v14 setUpdatedDate_];

  sub_25572D808(a3, v8, type metadata accessor for MergeableJournalAttributes);
  v19 = type metadata accessor for MergeableJournalAttributes(0);
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  sub_2556B7644(v8);
  [v14 setIsUploadedToCloud_];
  [v14 setUserDeleted_];
  return v14;
}

uint64_t sub_25572D808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25572D870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25572D8B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25572D918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25572D980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE8, &qword_25575E488);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25572D9F0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_2556BDE00();
}

uint64_t sub_25572DA24(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_2556BE1B0();
}

uint64_t sub_25572DA70@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25572D548(a1);
}

unint64_t sub_25572DA90()
{
  result = qword_27F7C0020;
  if (!qword_27F7C0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0020);
  }

  return result;
}

uint64_t sub_25572DB70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_25574FFD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_25574FA80();
  sub_25574FA80();
  LOBYTE(a4) = sub_25574FFC0();
  v14 = *(v7 + 8);
  v14(v11, v6);
  v14(v13, v6);
  if (a4)
  {
    goto LABEL_5;
  }

  sub_25574FA80();
  sub_25574FA80();
  v15 = sub_25574FFA0();
  v14(v11, v6);
  v14(v13, v6);
  if ((v15 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_25574FA80();
  sub_25574FA80();
  v16 = sub_25574FFA0();
  v14(v11, v6);
  v14(v13, v6);
  if ((v16 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_25574FA80();
  sub_25574FA80();
  v17 = sub_25574FFB0();
  v14(v11, v6);
  v14(v13, v6);
  if ((v17 & 1) == 0)
  {
    sub_25574FA80();
    sub_25574FA80();
    v18 = sub_25574FFB0();
    v14(v11, v6);
    v14(v13, v6);
  }

  else
  {
LABEL_5:
    v18 = 1;
  }

  return v18 & 1;
}

uint64_t MergeableEntryAttributes.merge(text:)()
{
  v0 = sub_25574F500();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for MergeableEntryAttributes(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574FA10();
  return (*(v1 + 8))(v4, v0);
}

uint64_t MergeableEntryAttributes.merge(title:)(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  (*(v8 + 16))(&v14 - v10, a1, v7);
  sub_25574FA10();
  v12 = *(v3 + 8);
  v12(v6, v2);
  sub_25574FA10();
  v12(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t MergeableEntryAttributes.merge(assetPlacement:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25574F500();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255670F14(a1, v12, type metadata accessor for MergeableEntryAssetsPlacement);
  v13 = type metadata accessor for MergeableEntryAttributes(0);
  MergeableEntryAssetsPlacement.merge(_:)(v2 + *(v13 + 24), v8);
  v14 = *(v5 + 8);
  v14(v8, v4);
  MergeableEntryAssetsPlacement.merge(_:)(v12, v8);
  v14(v8, v4);
  return sub_25573439C(v12, type metadata accessor for MergeableEntryAssetsPlacement);
}

uint64_t MergeableEntryAttributes.addAssociatedJournal(id:)()
{
  v0 = sub_25574F0D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for MergeableEntryAttributes(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC60();
  return (*(v1 + 8))(v4, v0);
}

uint64_t MergeableEntryAttributes.removeAssociatedJournal(id:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  v4 = *(type metadata accessor for MergeableEntryAttributes(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC70();
  return sub_255674B20(v3, &unk_27F7BED20, &unk_2557551D0);
}

uint64_t MergeableEntryAttributes.init(title:text:assetPlacement:associatedJournalIDs:unknownProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a4;
  v59 = a5;
  v56 = a2;
  v57 = a3;
  v55 = a1;
  v52 = a6;
  v7 = sub_25574F860();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7);
  v61 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v62 = *(v50 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v50);
  v46 = &v45 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v12 = *(*(v60 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v60);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v48 = &v45 - v19;
  v51 = type metadata accessor for MergeableEntryAttributes(0);
  v21 = a6 + *(v51 + 24);
  v22 = sub_25574F0D0();
  v23 = *(*(v22 - 8) + 56);
  v23(v20, 1, 1, v22);
  v49 = sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  sub_25574F720();
  v24 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v25 = v21 + v24[6];
  sub_25574FD10();
  v26 = v21 + v24[7];
  sub_25574FD10();
  sub_25574F850();
  v27 = v24[5];
  v23(v18, 1, 1, v22);
  sub_255663294(v18, v15, &unk_27F7BED20, &unk_2557551D0);
  v45 = sub_255663D60();
  sub_25574F340();
  sub_255674B20(v18, &unk_27F7BED20, &unk_2557551D0);
  v47 = v24[8];
  sub_25574F850();
  v28 = v46;
  v29 = v50;
  (*(v62 + 16))(v21, v46, v50);
  v30 = v48;
  sub_255663294(v48, v18, &unk_27F7BED20, &unk_2557551D0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  (*(*(v31 - 8) + 8))(v21 + v27, v31);
  sub_255663294(v18, v15, &unk_27F7BED20, &unk_2557551D0);
  sub_25574F340();
  sub_255674B20(v18, &unk_27F7BED20, &unk_2557551D0);
  (*(v62 + 8))(v28, v29);
  sub_255674B20(v30, &unk_27F7BED20, &unk_2557551D0);
  v32 = v54;
  v33 = *(v53 + 40);
  v33(v21 + v47, v61, v54);
  v34 = v51;
  v35 = v52;
  v36 = *(v51 + 28);
  sub_25574FD10();
  v37 = *(v34 + 32);
  sub_25574F850();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  (*(*(v38 - 8) + 32))(v35, v55, v38);
  v39 = *(v34 + 20);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  (*(*(v40 - 8) + 32))(v35 + v39, v56, v40);
  sub_255677F7C(v57, v21);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v42 = *(v41 - 8);
  v43 = v58;
  (*(v42 + 24))(v35 + v36, v58, v41);
  v33(v35 + v37, v59, v32);
  return (*(v42 + 40))(v35 + v36, v43, v41);
}

Swift::Void __swiftcall MergeableEntryAttributes.append(title:)(Swift::String title)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);

  sub_25574FA20();
}

Swift::Void __swiftcall MergeableEntryAttributes.append(text:)(Swift::String text)
{
  v1 = *(type metadata accessor for MergeableEntryAttributes(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574FA20();
}

uint64_t static MergeableEntryAttributes.hasSharedHistory(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_25572DB70(a1, a2, &qword_27F7BE818, &qword_255757FD0))
  {
    v4 = type metadata accessor for MergeableEntryAttributes(0);
    v5 = sub_25572DB70(a1 + *(v4 + 20), a2 + *(v4 + 20), &qword_27F7BE798, &qword_255757E30);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t MergeableEntryAttributes.merge(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25574F500();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25574F4F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574FA10();
  sub_25574F4E0();
  v9 = *(v5 + 8);
  v9(v8, v4);
  v10 = type metadata accessor for MergeableEntryAttributes(0);
  v11 = v10[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574FA10();
  sub_25574F4E0();
  v9(v8, v4);
  MergeableEntryAssetsPlacement.merge(_:)(a1 + v10[6], v8);
  sub_25574F4E0();
  v9(v8, v4);
  v12 = v10[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC50();
  sub_25574F4E0();
  v9(v8, v4);
  v13 = v2 + v10[8];
  sub_25574F810();
  sub_25574F4E0();
  return (v9)(v8, v4);
}

{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeableEntryAttributes.merge(_:)(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t MergeableEntryAttributes.merge(journalIDs:)(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = *(type metadata accessor for MergeableEntryAttributes(0) + 28);
  sub_25574FC50();
  v13 = *(v3 + 8);
  v13(v6, v2);
  sub_25574FC50();
  v13(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t MergeableEntryAttributes.deepCopy(idMap:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v66 = *(v69 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v69);
  v71 = &v54 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = *(*(v74 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v74);
  v65 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v64 = &v54 - v11;
  MEMORY[0x28223BE20](v10);
  v72 = &v54 - v12;
  v70 = sub_25574F860();
  v68 = *(v70 - 8);
  v13 = *(v68 + 64);
  v14 = MEMORY[0x28223BE20](v70);
  v73 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v54 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v67 = *(v62 - 8);
  v17 = *(v67 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v54 - v18;
  v19 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_255669798(&qword_27F7C0028, &qword_27F7BE818, &qword_255757FD0);
  sub_25574FD80();
  v24 = type metadata accessor for MergeableEntryAttributes(0);
  v25 = v24[5];
  v58 = a2;
  v26 = v59;
  sub_25573263C(v59, a2 + v25);
  v27 = v2 + v24[6];
  sub_2557333E0(v26, v23);
  v28 = v24[7];
  v57 = v24;
  sub_255669798(&qword_27F7C0030, &qword_27F7BE0C8, &qword_255755C60);
  sub_25574FD80();
  v29 = v3 + v24[8];
  sub_25574F7F0();
  v30 = a2 + v24[6];
  v31 = sub_25574F0D0();
  v32 = *(*(v31 - 8) + 56);
  v32(v72, 1, 1, v31);
  v59 = sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  v33 = v71;
  sub_25574F720();
  v34 = v30 + v20[8];
  sub_25574FD10();
  v35 = v30 + v20[9];
  sub_25574FD10();
  sub_25574F850();
  v36 = v20[7];
  v37 = v64;
  v32(v64, 1, 1, v31);
  v38 = v37;
  v39 = v65;
  sub_255663294(v37, v65, &unk_27F7BED20, &unk_2557551D0);
  v56 = sub_255663D60();
  sub_25574F340();
  sub_255674B20(v37, &unk_27F7BED20, &unk_2557551D0);
  v55 = v20[10];
  sub_25574F850();
  v40 = v66;
  v41 = v69;
  (*(v66 + 16))(v30, v33, v69);
  v42 = v72;
  sub_255663294(v72, v38, &unk_27F7BED20, &unk_2557551D0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  (*(*(v43 - 8) + 8))(v30 + v36, v43);
  sub_255663294(v38, v39, &unk_27F7BED20, &unk_2557551D0);
  sub_25574F340();
  sub_255674B20(v38, &unk_27F7BED20, &unk_2557551D0);
  (*(v40 + 8))(v71, v41);
  sub_255674B20(v42, &unk_27F7BED20, &unk_2557551D0);
  v44 = *(v68 + 40);
  v45 = v70;
  v44(v30 + v55, v73, v70);
  v47 = v57;
  v46 = v58;
  v48 = v57[7];
  sub_25574FD10();
  v49 = v47[8];
  sub_25574F850();
  sub_255677F7C(v63, v30);
  v50 = v67;
  v52 = v61;
  v51 = v62;
  (*(v67 + 24))(v46 + v48, v61, v62);
  v44(v46 + v49, v60, v45);
  return (*(v50 + 40))(v46 + v48, v52, v51);
}

uint64_t MergeableEntryAttributes.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MergeableEntryAttributes.associatedJournalIDs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MergeableEntryAttributes(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL MergeableEntryAttributes.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v100 = *(v4 - 8);
  v5 = *(v100 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v84 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v93 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v98 = &v84 - v12;
  v13 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  MEMORY[0x28223BE20](v13);
  v90 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v92 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v95 = &v84 - v20;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v99 = *(v94 - 8);
  v21 = *(v99 + 64);
  MEMORY[0x28223BE20](v94);
  v89 = &v84 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v91 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v84 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v88 = &v84 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v84 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v84 - v38;
  v101 = type metadata accessor for MergeableEntryAttributes.Partial(0);
  v40 = *(*(v101 - 1) + 64);
  MEMORY[0x28223BE20](v101);
  v42 = &v84 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255670F14(v2, v42, type metadata accessor for MergeableEntryAttributes.Partial);
  v102 = a1;
  v43 = MergeableEntryAttributes.Partial.canMerge(delta:)(a1);
  sub_25573439C(v42, type metadata accessor for MergeableEntryAttributes.Partial);
  if (v43)
  {
    v86 = v43;
    v85 = v7;
    v87 = v4;
    sub_255663294(v2, v39, &qword_27F7C0060, &qword_25575E650);
    v84 = v30;
    v44 = v2;
    v45 = *(v30 + 48);
    v46 = v45(v39, 1, v29);
    sub_255674B20(v39, &qword_27F7C0060, &qword_25575E650);
    if (v46 == 1)
    {
      sub_25568DF1C(v102, v44, &qword_27F7C0060, &qword_25575E650);
      v47 = v99;
    }

    else
    {
      sub_255663294(v102, v37, &qword_27F7C0060, &qword_25575E650);
      v48 = v45(v37, 1, v29);
      v47 = v99;
      if (v48 == 1)
      {
        sub_255674B20(v37, &qword_27F7C0060, &qword_25575E650);
      }

      else
      {
        v49 = v84;
        v50 = v88;
        (*(v84 + 32))(v88, v37, v29);
        if (!v45(v44, 1, v29))
        {
          sub_25574FA50();
        }

        (*(v49 + 8))(v50, v29);
      }
    }

    v51 = v101;
    v52 = v101[5];
    sub_255663294(v44 + v52, v28, &qword_27F7C0068, &qword_25575E658);
    v53 = *(v47 + 48);
    v54 = v94;
    v55 = v53(v28, 1, v94);
    sub_255674B20(v28, &qword_27F7C0068, &qword_25575E658);
    v56 = v51[5];
    if (v55 == 1)
    {
      sub_25568DF1C(v102 + v56, v44 + v52, &qword_27F7C0068, &qword_25575E658);
    }

    else
    {
      v57 = v91;
      sub_255663294(v102 + v56, v91, &qword_27F7C0068, &qword_25575E658);
      if (v53(v57, 1, v54) == 1)
      {
        sub_255674B20(v57, &qword_27F7C0068, &qword_25575E658);
      }

      else
      {
        v58 = v99;
        v59 = v89;
        (*(v99 + 32))(v89, v57, v54);
        if (!v53((v44 + v52), 1, v54))
        {
          sub_25574FA50();
        }

        (*(v58 + 8))(v59, v54);
      }
    }

    v60 = v97;
    v61 = v101;
    v62 = v101[6];
    v63 = v95;
    sub_255663294(v44 + v62, v95, &qword_27F7C0070, &unk_25575E660);
    v64 = *(v96 + 48);
    v65 = v64(v63, 1, v60);
    sub_255674B20(v63, &qword_27F7C0070, &unk_25575E660);
    v66 = v61[6];
    if (v65 == 1)
    {
      sub_25568DF1C(v102 + v66, v44 + v62, &qword_27F7C0070, &unk_25575E660);
      v67 = v87;
      v68 = v100;
    }

    else
    {
      v69 = v92;
      sub_255663294(v102 + v66, v92, &qword_27F7C0070, &unk_25575E660);
      v70 = v64(v69, 1, v60);
      v68 = v100;
      if (v70 == 1)
      {
        sub_255674B20(v69, &qword_27F7C0070, &unk_25575E660);
      }

      else
      {
        v71 = v69;
        v72 = v90;
        sub_255734A04(v71, v90, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
        if (!v64(v44 + v62, 1, v60))
        {
          MergeableEntryAssetsPlacement.Partial.merge(delta:)(v72);
        }

        sub_25573439C(v72, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
      }

      v67 = v87;
    }

    v73 = v101;
    v74 = v101[7];
    v75 = v98;
    sub_255663294(v44 + v74, v98, &qword_27F7BF500, &unk_25575B3E0);
    v76 = *(v68 + 48);
    v77 = v76(v75, 1, v67);
    sub_255674B20(v75, &qword_27F7BF500, &unk_25575B3E0);
    v78 = v73[7];
    if (v77 == 1)
    {
      sub_25568DF1C(v102 + v78, v44 + v74, &qword_27F7BF500, &unk_25575B3E0);
      LOBYTE(v43) = v86;
    }

    else
    {
      v79 = v93;
      sub_255663294(v102 + v78, v93, &qword_27F7BF500, &unk_25575B3E0);
      v80 = v76(v79, 1, v67);
      LOBYTE(v43) = v86;
      if (v80 == 1)
      {
        sub_255674B20(v79, &qword_27F7BF500, &unk_25575B3E0);
      }

      else
      {
        v81 = v100;
        v82 = v85;
        (*(v100 + 32))(v85, v79, v67);
        if (!v76(v44 + v74, 1, v67))
        {
          sub_25574FCA0();
        }

        (*(v81 + 8))(v82, v67);
      }
    }
  }

  return v43;
}

BOOL MergeableEntryAttributes.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v66 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v71 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v67 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v66 - v14;
  v15 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v75 = *(v15 - 8);
  v76 = v15;
  v16 = *(v75 + 64);
  MEMORY[0x28223BE20](v15);
  v77 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v69 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v66 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v74 = *(v24 - 8);
  v25 = *(v74 + 64);
  MEMORY[0x28223BE20](v24);
  v68 = &v66 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v66 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v66 - v37;
  sub_255663294(a1, v33, &qword_27F7C0060, &qword_25575E650);
  v39 = *(v35 + 48);
  if (v39(v33, 1, v34) == 1)
  {
    v31 = v33;
LABEL_5:
    sub_255674B20(v31, &qword_27F7C0060, &qword_25575E650);
    v40 = v77;
    v41 = v78;
    v42 = a1;
    goto LABEL_6;
  }

  (*(v35 + 32))(v38, v33, v34);
  sub_255663294(v79, v31, &qword_27F7C0060, &qword_25575E650);
  if (v39(v31, 1, v34) == 1)
  {
    (*(v35 + 8))(v38, v34);
    goto LABEL_5;
  }

  v59 = sub_25574FA60();
  v60 = *(v35 + 8);
  v60(v38, v34);
  v60(v31, v34);
  v40 = v77;
  v41 = v78;
  v42 = a1;
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v43 = type metadata accessor for MergeableEntryAttributes.Partial(0);
  sub_255663294(v42 + v43[5], v23, &qword_27F7C0068, &qword_25575E658);
  v44 = v74;
  v45 = *(v74 + 48);
  if (v45(v23, 1, v24) == 1)
  {
    v46 = v23;
LABEL_10:
    v49 = v75;
    sub_255674B20(v46, &qword_27F7C0068, &qword_25575E658);
    v50 = v76;
    goto LABEL_11;
  }

  v47 = v68;
  (*(v44 + 32))(v68, v23, v24);
  v48 = v44;
  v46 = v69;
  sub_255663294(v79 + v43[5], v69, &qword_27F7C0068, &qword_25575E658);
  if (v45(v46, 1, v24) == 1)
  {
    (*(v48 + 8))(v47, v24);
    goto LABEL_10;
  }

  v61 = sub_25574FA60();
  v62 = *(v48 + 8);
  v62(v47, v24);
  v62(v46, v24);
  v49 = v75;
  v50 = v76;
  if ((v61 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v51 = v70;
  sub_255663294(v42 + v43[6], v70, &qword_27F7C0070, &unk_25575E660);
  v52 = *(v49 + 48);
  if (v52(v51, 1, v50) == 1)
  {
    v54 = v72;
    v53 = v73;
    v55 = v71;
  }

  else
  {
    sub_255734A04(v51, v40, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    v51 = v67;
    sub_255663294(v79 + v43[6], v67, &qword_27F7C0070, &unk_25575E660);
    v56 = v52(v51, 1, v50);
    v54 = v72;
    v53 = v73;
    v55 = v71;
    if (v56 != 1)
    {
      v63 = MergeableEntryAssetsPlacement.Partial.canMerge(delta:)(v40);
      sub_25573439C(v40, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
      sub_25573439C(v51, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
      if (!v63)
      {
        return 0;
      }

      goto LABEL_16;
    }

    sub_25573439C(v40, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
  }

  sub_255674B20(v51, &qword_27F7C0070, &unk_25575E660);
LABEL_16:
  sub_255663294(v42 + v43[7], v41, &qword_27F7BF500, &unk_25575B3E0);
  v57 = *(v54 + 48);
  if (v57(v41, 1, v53) == 1)
  {
LABEL_19:
    sub_255674B20(v41, &qword_27F7BF500, &unk_25575B3E0);
    return 1;
  }

  (*(v54 + 32))(v55, v41, v53);
  v41 = v66;
  sub_255663294(v79 + v43[7], v66, &qword_27F7BF500, &unk_25575B3E0);
  if (v57(v41, 1, v53) == 1)
  {
    (*(v54 + 8))(v55, v53);
    goto LABEL_19;
  }

  v64 = sub_25574FCB0();
  v65 = *(v54 + 8);
  v65(v55, v53);
  v65(v41, v53);
  return (v64 & 1) != 0;
}

uint64_t MergeableEntryAttributes.Partial.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  sub_255663294(v1, &v27 - v16, &qword_27F7C0060, &qword_25575E650);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_255674B20(v17, &qword_27F7C0060, &qword_25575E650);
  }

  else
  {
    sub_25574FA30();
    (*(v19 + 8))(v17, v18);
  }

  v20 = type metadata accessor for MergeableEntryAttributes.Partial(0);
  sub_255663294(v1 + v20[5], v13, &qword_27F7C0068, &qword_25575E658);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    sub_255674B20(v13, &qword_27F7C0068, &qword_25575E658);
  }

  else
  {
    sub_25574FA30();
    (*(v22 + 8))(v13, v21);
  }

  sub_255663294(v1 + v20[6], v9, &qword_27F7C0070, &unk_25575E660);
  v23 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  if ((*(*(v23 - 8) + 48))(v9, 1, v23) == 1)
  {
    sub_255674B20(v9, &qword_27F7C0070, &unk_25575E660);
  }

  else
  {
    MergeableEntryAssetsPlacement.Partial.visitReferences(_:)();
    sub_25573439C(v9, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
  }

  sub_255663294(v1 + v20[7], v5, &qword_27F7BF500, &unk_25575B3E0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v5, 1, v24) == 1)
  {
    return sub_255674B20(v5, &qword_27F7BF500, &unk_25575B3E0);
  }

  sub_25574FC80();
  return (*(v25 + 8))(v5, v24);
}

uint64_t MergeableEntryAttributes.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v66 = v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v16 = *(v15 - 8);
  v61 = *(v16 + 56);
  v62 = v15;
  v60 = v16 + 56;
  v61(a2, 1, 1);
  v17 = type metadata accessor for MergeableEntryAttributes.Partial(0);
  v18 = v17[5];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v68 = v18;
  v57 = v20 + 56;
  v58 = v21;
  v21(a2 + v18, 1, 1, v19);
  v22 = v17[6];
  v23 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v24 + 56;
  v63 = v22;
  v64 = v25;
  v25(a2 + v22, 1, 1, v23);
  v27 = v17[7];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v31 = v29 + 56;
  v71 = a2;
  v30(a2 + v27, 1, 1, v28);
  v32 = v70;
  sub_25574FE90();
  if (v32)
  {
    goto LABEL_9;
  }

  v53[2] = v26;
  v54 = v19;
  v70 = 0;
  v53[1] = v31;
  v55 = v27;
  v56 = v30;
  v33 = v67;
  if (sub_25574FED0())
  {
    sub_2556D4CDC();
    v34 = v66;
    v35 = v70;
    sub_25574FA40();
    v36 = v68;
    if (v35)
    {
LABEL_8:

LABEL_9:

      v43 = v71;
      return sub_25573439C(v43, type metadata accessor for MergeableEntryAttributes.Partial);
    }

    v37 = v23;
    v70 = 0;
    (v61)(v34, 0, 1, v62);
    sub_25568CFC8(v34, v71, &qword_27F7C0060, &qword_25575E650);
  }

  else
  {
    v37 = v23;
    v36 = v68;
  }

  v38 = sub_25574FED0();
  v68 = v28;
  v40 = v64;
  v39 = v65;
  if (v38)
  {
    sub_25566464C();
    v41 = v70;
    sub_25574FA40();
    v42 = v56;
    if (v41)
    {
      goto LABEL_8;
    }

    v70 = 0;
    v58(v39, 0, 1, v54);
    sub_25568CFC8(v39, v71 + v36, &qword_27F7C0068, &qword_25575E658);
  }

  else
  {
    v42 = v56;
  }

  v45 = sub_25574FED0();
  v46 = v63;
  if (v45)
  {
    v47 = v70;
    MergeableEntryAssetsPlacement.Partial.init(from:)(v45, v33);
    v70 = v47;
    if (v47)
    {

      v43 = v71;
      return sub_25573439C(v43, type metadata accessor for MergeableEntryAttributes.Partial);
    }

    v40(v33, 0, 1, v37);
    sub_25568CFC8(v33, v71 + v46, &qword_27F7C0070, &unk_25575E660);
  }

  v48 = sub_25574FED0();
  v49 = v59;
  v50 = v55;
  if (v48)
  {
    sub_25574F0D0();
    sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
    v51 = v70;
    sub_25574FC90();

    v43 = v71;
    if (v51)
    {
      return sub_25573439C(v43, type metadata accessor for MergeableEntryAttributes.Partial);
    }

    v52 = v71;
    v42(v49, 0, 1, v68);
    return sub_25568CFC8(v49, v52 + v50, &qword_27F7BF500, &unk_25575B3E0);
  }

  else
  {
  }
}

uint64_t MergeableEntryAttributes.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v51 = &v48 - v2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v55 = *(v52 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  v54 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v48 - v7;
  v53 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v57 = *(v53 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v53);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - v26;
  v28 = v60;
  result = sub_25574FF10();
  if (!v28)
  {
    v49 = v14;
    v50 = v18;
    v48 = v10;
    v60 = 0;
    v30 = v59;
    sub_255663294(v59, v22, &qword_27F7C0060, &qword_25575E650);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      sub_255674B20(v22, &qword_27F7C0060, &qword_25575E650);
      v31 = v50;
    }

    else
    {
      (*(v24 + 32))(v27, v22, v23);
      sub_255669798(&qword_27F7C0090, &qword_27F7C0080, &unk_25575E680);
      v32 = v60;
      sub_25574FF60();
      (*(v24 + 8))(v27, v23);
      v31 = v50;
      if (v32)
      {
      }

      v60 = 0;
    }

    v33 = type metadata accessor for MergeableEntryAttributes.Partial(0);
    v34 = v49;
    sub_255663294(v30 + v33[5], v49, &qword_27F7C0068, &qword_25575E658);
    v35 = v56;
    v36 = (*(v56 + 48))(v34, 1, v15);
    v37 = v57;
    v38 = v58;
    if (v36 == 1)
    {
      sub_255674B20(v34, &qword_27F7C0068, &qword_25575E658);
    }

    else
    {
      (*(v35 + 32))(v31, v34, v15);
      sub_255669798(&qword_27F7C0088, &qword_27F7C0078, &qword_25575E678);
      v39 = v60;
      sub_25574FF60();
      (*(v35 + 8))(v31, v15);
      if (v39)
      {
      }

      v60 = 0;
    }

    sub_255663294(v30 + v33[6], v38, &qword_27F7C0070, &unk_25575E660);
    v40 = (*(v37 + 48))(v38, 1, v53);
    v42 = v54;
    v41 = v55;
    if (v40 == 1)
    {
      sub_255674B20(v38, &qword_27F7C0070, &unk_25575E660);
      goto LABEL_16;
    }

    v43 = v48;
    sub_255734A04(v38, v48, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    sub_255664884(&qword_27F7BF580, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    v44 = v60;
    sub_25574FF60();
    sub_25573439C(v43, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    if (!v44)
    {
      v60 = 0;
LABEL_16:
      v45 = v30 + v33[7];
      v46 = v51;
      v47 = v52;
      sub_255663294(v45, v51, &qword_27F7BF500, &unk_25575B3E0);
      if ((*(v41 + 48))(v46, 1, v47) == 1)
      {

        return sub_255674B20(v46, &qword_27F7BF500, &unk_25575B3E0);
      }

      else
      {
        (*(v41 + 32))(v42, v46, v47);
        sub_255669798(&qword_27F7BF518, &qword_27F7BF508, &qword_25575E670);
        sub_25574FF60();
        (*(v41 + 8))(v42, v47);
      }
    }
  }

  return result;
}

uint64_t sub_25573263C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a1;
  v95 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01A0, &unk_25575EA68);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v99 = &v83 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8D8, &unk_255758230);
  v115 = *(v98 - 8);
  v5 = *(v115 + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v83 - v6;
  v7 = sub_25574F0D0();
  v101 = *(v7 - 8);
  v8 = *(v101 + 64);
  MEMORY[0x28223BE20](v7);
  v109 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for MergeableAssetTextAttachment(0);
  v100 = *(v123 - 8);
  v10 = *(v100 + 64);
  v11 = MEMORY[0x28223BE20](v123);
  v106 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v83 - v14;
  MEMORY[0x28223BE20](v13);
  v110 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA38, &qword_255758A90);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v96 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v113 = &v83 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v83 - v23;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B0, &unk_25575B400);
  v121 = *(v114 - 8);
  v25 = *(v121 + 64);
  MEMORY[0x28223BE20](v114);
  v27 = &v83 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8A8, &unk_255758170);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v83 - v30;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B8, &unk_255758180);
  v94 = *(v122 - 8);
  v32 = *(v94 + 64);
  MEMORY[0x28223BE20](v122);
  v120 = &v83 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v102 = *(v34 - 8);
  v35 = *(v102 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v83 - v36;
  v38 = sub_25574F2C0();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v83 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F7BD5E0 != -1)
  {
LABEL_20:
    swift_once();
  }

  v43 = __swift_project_value_buffer(v38, qword_27F7C0528);
  v92 = v39;
  v44 = *(v39 + 16);
  v108 = v42;
  v93 = v38;
  v44(v42, v43, v38);
  (*(v102 + 16))(v37, v119, v34);
  v45 = v120;
  v104 = v37;
  v105 = v34;
  sub_25574F9C0();
  sub_25574F990();
  v46 = v121;
  v47 = v114;
  v118 = *(v121 + 48);
  v119 = v121 + 48;
  v48 = v118(v31, 1, v114);
  v50 = v46;
  v51 = v45;
  if (v48 != 1)
  {
    v56 = *(v50 + 32);
    v55 = v50 + 32;
    v117 = v56;
    v42 = (v100 + 48);
    v90 = v101 + 16;
    v89 = v101 + 24;
    v88 = (v100 + 56);
    v87 = (v115 + 16);
    v86 = (v115 + 56);
    v85 = (v115 + 8);
    v84 = (v101 + 8);
    v115 = v55 - 24;
    *&v49 = 136315138;
    v91 = v49;
    v111 = v24;
    v121 = v55;
    v116 = v31;
    v103 = v15;
    v107 = v7;
    v56(v27, v31, v47);
    while (1)
    {
      swift_getKeyPath();
      v58 = sub_2556C74E8();
      v59 = v27;
      sub_25574F970();

      v60 = *v42;
      v61 = v42;
      v62 = v123;
      if (v60(v24, 1, v123) == 1)
      {
        (*v115)(v59, v47);
        sub_255674B20(v24, &qword_27F7BEA38, &qword_255758A90);
        v42 = v61;
        v27 = v59;
        v34 = v47;
      }

      else
      {
        sub_255674B20(v24, &qword_27F7BEA38, &qword_255758A90);
        swift_getKeyPath();
        v63 = v113;
        v114 = v58;
        sub_25574F970();

        v64 = v60(v63, 1, v62);
        v42 = v61;
        v34 = v47;
        if (v64 == 1)
        {
          (*v115)(v59, v47);
          sub_255674B20(v63, &qword_27F7BEA38, &qword_255758A90);
          v24 = v111;
          v27 = v59;
        }

        else
        {
          v27 = v59;
          v65 = v110;
          sub_255734A04(v63, v110, type metadata accessor for MergeableAssetTextAttachment);
          v66 = v107;
          v67 = v109;
          if (*(v112 + 16) && (v68 = sub_25567AF04(v65), (v69 & 1) != 0))
          {
            v70 = v101;
            (*(v101 + 16))(v67, *(v112 + 56) + *(v101 + 72) * v68, v66);
            v31 = v103;
            sub_255670F14(v65, v103, type metadata accessor for MergeableAssetTextAttachment);
            (*(v70 + 24))(v31, v67, v66);
            v38 = v66;
            v24 = v97;
            sub_25574F950();
            swift_getKeyPath();
            v39 = v96;
            sub_255670F14(v31, v96, type metadata accessor for MergeableAssetTextAttachment);
            (*v88)(v39, 0, 1, v123);
            v7 = v98;
            sub_25574F8A0();
            v15 = v99;
            (*v87)(v99, v24, v7);
            (*v86)(v15, 0, 1, v7);
            v37 = v27;
            v71 = sub_25574F980();
            if (__OFSUB__(v72, v71))
            {
              __break(1u);
              goto LABEL_20;
            }

            sub_25574F8C0();
            sub_255674B20(v15, &qword_27F7C01A0, &unk_25575EA68);
            (*v85)(v24, v7);
            (*v84)(v109, v38);
            sub_25573439C(v110, type metadata accessor for MergeableAssetTextAttachment);
            (*v115)(v27, v34);
            sub_25573439C(v31, type metadata accessor for MergeableAssetTextAttachment);
            v24 = v111;
          }

          else
          {
            v73 = v106;
            sub_255670F14(v65, v106, type metadata accessor for MergeableAssetTextAttachment);
            v74 = sub_25574F2A0();
            v75 = sub_255750780();
            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              LODWORD(v114) = v75;
              v77 = v76;
              v124 = swift_slowAlloc();
              v78 = v124;
              *v77 = v91;
              sub_255670F14(v73, v103, type metadata accessor for MergeableAssetTextAttachment);
              v100 = sub_2557501D0();
              v80 = v79;
              sub_25573439C(v73, type metadata accessor for MergeableAssetTextAttachment);
              v81 = sub_2556E474C(v100, v80, &v124);

              *(v77 + 4) = v81;
              _os_log_impl(&dword_255661000, v74, v114, "MergeableAttributedString.deepCopy: we should have an id for attachment: %s", v77, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v78);
              MEMORY[0x259C3F520](v78, -1, -1);
              MEMORY[0x259C3F520](v77, -1, -1);

              v82 = v110;
            }

            else
            {

              sub_25573439C(v73, type metadata accessor for MergeableAssetTextAttachment);
              v82 = v65;
            }

            sub_25573439C(v82, type metadata accessor for MergeableAssetTextAttachment);
            (*v115)(v27, v34);
            v24 = v111;
          }
        }
      }

      v57 = v116;
      v51 = v120;
      sub_25574F990();
      v47 = v34;
      if (v118(v57, 1, v34) == 1)
      {
        break;
      }

      v117(v27, v57, v34);
    }
  }

  (*(v94 + 8))(v51, v122);
  sub_255669798(&qword_27F7C01A8, &qword_27F7BE798, &qword_255757E30);
  v53 = v104;
  v52 = v105;
  sub_25574FD80();
  (*(v102 + 8))(v53, v52);
  return (*(v92 + 8))(v108, v93);
}

uint64_t sub_2557333E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF530, &qword_25575B3F8);
  v113 = *(v114 - 8);
  v4 = *(v113 + 64);
  v5 = MEMORY[0x28223BE20](v114);
  v125 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v124 = &v110 - v7;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v118 = *(v137 - 8);
  v8 = *(v118 + 64);
  v9 = MEMORY[0x28223BE20](v137);
  v110 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v111 = &v110 - v11;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v12 = *(v139 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v139);
  v134 = &v110 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v122 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v127 = &v110 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v123 = &v110 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v128 = &v110 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v130 = (&v110 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v129 = (&v110 - v28);
  MEMORY[0x28223BE20](v27);
  v30 = &v110 - v29;
  v31 = sub_25574F0D0();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v121 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v131 = &v110 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v136 = (&v110 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v135 = &v110 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v110 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v110 - v45;
  v47 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_255664884(&qword_27F7BF590, type metadata accessor for MergeableEntryAssetsPlacement);
  sub_25574FD80();
  v117 = v47;
  v48 = *(v47 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  sub_25574F360();
  v132 = *(v32 + 48);
  v133 = v32 + 48;
  v49 = v132(v30, 1, v31);
  v138 = a1;
  v140 = v32;
  if (v49 == 1)
  {
    v50 = sub_255674B20(v30, &unk_27F7BED20, &unk_2557551D0);
  }

  else
  {
    (*(v32 + 32))(v46, v30, v31);
    if (*(a1 + 16) && (v51 = sub_25567AF04(v46), v32 = v140, (v52 & 1) != 0))
    {
      v53 = v140;
      v54 = *(v140 + 16);
      v55 = v44;
      v54(v44, *(a1 + 56) + *(v140 + 72) * v51, v31);
      v56 = v129;
      v54(v129, v55, v31);
      (*(v53 + 56))(v56, 0, 1, v31);
      sub_255663294(v56, v130, &unk_27F7BED20, &unk_2557551D0);
      v57 = &a2[v117[5]];
      sub_25574F370();
      sub_255674B20(v56, &unk_27F7BED20, &unk_2557551D0);
      v58 = *(v53 + 8);
      v58(v55, v31);
      v50 = (v58)(v46, v31);
    }

    else
    {
      v50 = (*(v32 + 8))(v46, v31);
    }
  }

  MEMORY[0x28223BE20](v50);
  v59 = v139;
  *(&v110 - 2) = v138;
  v141 = sub_25574F620();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB38, &qword_25575EA60);
  v61 = sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  v62 = sub_255669798(&qword_27F7C0198, &qword_27F7BEB38, &qword_25575EA60);
  v63 = v134;
  v116 = v61;
  sub_25574F740();
  (*(v12 + 40))(a2, v63, v59);
  v64 = v117[7];
  v65 = sub_255669798(&qword_27F7BF538, &qword_27F7BE0C8, &qword_255755C60);
  v66 = v137;
  v67 = sub_255750680();
  v68 = MEMORY[0x277D84F90];
  v134 = a2;
  v139 = v65;
  v126 = v64;
  v115 = v60;
  v112 = v62;
  if (v67)
  {
    v69 = v67;
    v142 = MEMORY[0x277D84F90];
    sub_2556A9D38(0, v67 & ~(v67 >> 63), 0);
    v68 = v142;
    result = sub_255750650();
    if (v69 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    v130 = (v140 + 16);
    v120 = (v140 + 56);
    v129 = (v140 + 32);
    v119 = (v140 + 8);
    do
    {
      v71 = sub_255750710();
      v72 = *v130;
      v73 = v136;
      (*v130)(v136);
      v71(&v141, 0);
      v74 = v138;
      if (*(v138 + 16))
      {
        v75 = sub_25567AF04(v73);
        v76 = v123;
        if (v77)
        {
          v78 = *(v74 + 56);
          v79 = v140;
          (v72)(v128, v78 + *(v140 + 72) * v75, v31);
          v80 = 0;
        }

        else
        {
          v80 = 1;
          v79 = v140;
        }
      }

      else
      {
        v80 = 1;
        v79 = v140;
        v76 = v123;
      }

      v81 = v128;
      (*v120)(v128, v80, 1, v31);
      sub_255675060(v81, v76, &unk_27F7BED20, &unk_2557551D0);
      if (v132(v76, 1, v31) == 1)
      {
        v82 = v136;
        (v72)(v135, v136, v31);
        sub_255674B20(v76, &unk_27F7BED20, &unk_2557551D0);
      }

      else
      {
        (*v129)(v135, v76, v31);
        v82 = v136;
      }

      (*v119)(v82, v31);
      v142 = v68;
      v84 = *(v68 + 16);
      v83 = *(v68 + 24);
      if (v84 >= v83 >> 1)
      {
        sub_2556A9D38(v83 > 1, v84 + 1, 1);
        v79 = v140;
        v68 = v142;
      }

      *(v68 + 16) = v84 + 1;
      (*(v79 + 32))(v68 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v84, v135, v31);
      a2 = v134;
      v85 = v124;
      v66 = v137;
      sub_2557506C0();
      --v69;
    }

    while (v69);
    (*(v113 + 8))(v85, v114);
    v86 = v118;
  }

  else
  {
    v86 = v118;
  }

  v141 = v68;
  v87 = v111;
  sub_25574FD30();
  v89 = *(v86 + 40);
  v88 = v86 + 40;
  v128 = v89;
  (v89)(&a2[v126], v87, v66);
  v90 = v117[6];
  v91 = sub_255750680();
  v92 = MEMORY[0x277D84F90];
  v135 = v90;
  if (!v91)
  {
LABEL_38:
    v141 = v92;
    v109 = v110;
    sub_25574FD30();
    return (v128)(&v135[a2], v109, v66);
  }

  v93 = v91;
  v142 = MEMORY[0x277D84F90];
  sub_2556A9D38(0, v91 & ~(v91 >> 63), 0);
  v92 = v142;
  result = sub_255750650();
  if ((v93 & 0x8000000000000000) == 0)
  {
    v118 = v88;
    v94 = (v140 + 16);
    v136 = (v140 + 32);
    v129 = (v140 + 8);
    v130 = (v140 + 56);
    do
    {
      v95 = sub_255750710();
      v96 = *v94;
      v97 = v121;
      (*v94)(v121);
      v95(&v141, 0);
      v98 = v138;
      if (*(v138 + 16))
      {
        v99 = sub_25567AF04(v97);
        if (v100)
        {
          (v96)(v127, *(v98 + 56) + *(v140 + 72) * v99, v31);
          v101 = 0;
        }

        else
        {
          v101 = 1;
        }
      }

      else
      {
        v101 = 1;
      }

      v102 = v127;
      (*v130)(v127, v101, 1, v31);
      v103 = v102;
      v104 = v122;
      sub_255675060(v103, v122, &unk_27F7BED20, &unk_2557551D0);
      if (v132(v104, 1, v31) == 1)
      {
        (v96)(v131, v97, v31);
        sub_255674B20(v104, &unk_27F7BED20, &unk_2557551D0);
      }

      else
      {
        (*v136)(v131, v104, v31);
      }

      (*v129)(v97, v31);
      v142 = v92;
      v106 = *(v92 + 16);
      v105 = *(v92 + 24);
      v107 = v140;
      if (v106 >= v105 >> 1)
      {
        sub_2556A9D38(v105 > 1, v106 + 1, 1);
        v107 = v140;
        v92 = v142;
      }

      *(v92 + 16) = v106 + 1;
      (*(v107 + 32))(v92 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v106, v131, v31);
      a2 = v134;
      v108 = v125;
      v66 = v137;
      sub_2557506C0();
      --v93;
    }

    while (v93);
    (*(v113 + 8))(v108, v114);
    goto LABEL_38;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25573439C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CRAttributedString<>.inlineAssetsDebugString.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA38, &qword_255758A90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for MergeableAssetTextAttachment(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B0, &unk_25575B400);
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8A8, &unk_255758170);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B8, &unk_255758180);
  v36 = *(v17 - 8);
  v18 = *(v36 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F9C0();
  v45 = v20;
  v46 = v17;
  sub_25574F990();
  v42 = v9[6];
  v43 = v9 + 6;
  if (v42(v16, 1, v8) == 1)
  {
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v25 = v9[4];
    v24 = v9 + 4;
    v40 = (v5 + 48);
    v41 = v25;
    v21 = MEMORY[0x277D84F90];
    v26 = (v24 - 3);
    v38 = v24;
    v39 = v4;
    v37 = v3;
    v25(v12, v16, v8);
    while (1)
    {
      swift_getKeyPath();
      sub_2556C74E8();
      sub_25574F970();

      if ((*v40)(v3, 1, v4) == 1)
      {
        (*v26)(v12, v8);
        sub_255674B20(v3, &qword_27F7BEA38, &qword_255758A90);
      }

      else
      {
        sub_255734A04(v3, v44, type metadata accessor for MergeableAssetTextAttachment);
        v27 = sub_25574F980();
        v47 = v28;
        v48 = v27;
        v49 = 0;
        v50 = 0xE000000000000000;
        sub_255750C20();
        MEMORY[0x259C3DED0](3943982, 0xE300000000000000);
        sub_255750C20();
        MEMORY[0x259C3DED0](8250, 0xE200000000000000);
        sub_25574F0D0();
        sub_255664884(&qword_27F7BF200, MEMORY[0x277CC95F0]);
        v29 = sub_255750E60();
        MEMORY[0x259C3DED0](v29);

        v30 = v49;
        v31 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_255698E88(0, *(v21 + 2) + 1, 1, v21);
        }

        v33 = *(v21 + 2);
        v32 = *(v21 + 3);
        v3 = v37;
        if (v33 >= v32 >> 1)
        {
          v21 = sub_255698E88((v32 > 1), v33 + 1, 1, v21);
        }

        sub_25573439C(v44, type metadata accessor for MergeableAssetTextAttachment);
        (*v26)(v12, v8);
        *(v21 + 2) = v33 + 1;
        v34 = &v21[16 * v33];
        *(v34 + 4) = v30;
        *(v34 + 5) = v31;
        v4 = v39;
      }

      sub_25574F990();
      if (v42(v16, 1, v8) == 1)
      {
        break;
      }

      v41(v12, v16, v8);
    }
  }

  (*(v36 + 8))(v45, v46);
  v49 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
  sub_255669798(&qword_27F7BE730, &qword_27F7BE728, &qword_255757898);
  v22 = sub_2557500C0();

  return v22;
}

uint64_t sub_255734A04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_255734A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  if (*(a2 + 16) && (v13 = sub_25567AF04(a1), (v14 & 1) != 0))
  {
    v15 = v13;
    v21 = *(a2 + 56);
    v16 = sub_25574F0D0();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v12, v21 + *(v17 + 72) * v15, v16);
    (*(v17 + 56))(v12, 0, 1, v16);
  }

  else
  {
    v16 = sub_25574F0D0();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  sub_255675060(v12, v10, &unk_27F7BED20, &unk_2557551D0);
  sub_25574F0D0();
  v18 = *(v16 - 8);
  if ((*(v18 + 48))(v10, 1, v16) != 1)
  {
    return (*(v18 + 32))(a3, v10, v16);
  }

  (*(v18 + 16))(a3, a1, v16);
  return sub_255674B20(v10, &unk_27F7BED20, &unk_2557551D0);
}

uint64_t MergeableEntryAttributes.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E8, &qword_25575B3C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF558, &qword_25575B4B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0058, &qword_25575E648);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0050, &qword_25575E640);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F930();
  v20 = type metadata accessor for MergeableEntryAttributes(0);
  v21 = v20[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F930();
  MergeableEntryAssetsPlacement.actionUndoingDifference(from:)(a1 + v20[6], v11);
  v22 = v20[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBE0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0098, &qword_25575E6B0);
  if ((*(*(v23 - 8) + 48))(v19, 1, v23) == 1 && (v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C00A0, &qword_25575E6B8), (*(*(v24 - 8) + 48))(v15, 1, v24) == 1) && (v25 = type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction(0), (*(*(v25 - 8) + 48))(v11, 1, v25) == 1) && (v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF550, &qword_25575E6C0), (*(*(v26 - 8) + 48))(v7, 1, v26) == 1))
  {
    sub_255674B20(v19, &qword_27F7C0050, &qword_25575E640);
    v27 = type metadata accessor for MergeableEntryAttributes.MutatingAction(0);
    (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
  }

  else
  {
    sub_255663294(v19, a2, &qword_27F7C0050, &qword_25575E640);
    v28 = type metadata accessor for MergeableEntryAttributes.MutatingAction(0);
    sub_255663294(v15, a2 + v28[5], &qword_27F7C0058, &qword_25575E648);
    sub_255663294(v11, a2 + v28[6], &qword_27F7BF558, &qword_25575B4B0);
    sub_255663294(v7, a2 + v28[7], &qword_27F7BF4E8, &qword_25575B3C8);
    sub_255674B20(v19, &qword_27F7C0050, &qword_25575E640);
    (*(*(v28 - 1) + 56))(a2, 0, 1, v28);
  }

  sub_255674B20(v7, &qword_27F7BF4E8, &qword_25575B3C8);
  sub_255674B20(v11, &qword_27F7BF558, &qword_25575B4B0);
  return sub_255674B20(v15, &qword_27F7C0058, &qword_25575E648);
}

uint64_t MergeableEntryAttributes.apply(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C00A8, &qword_25575E6C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for MergeableEntryAttributes.MutatingAction(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v6, &qword_27F7C00A8, &qword_25575E6C8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_255674B20(v6, &qword_27F7C00A8, &qword_25575E6C8);
  }

  sub_255734A04(v6, v11, type metadata accessor for MergeableEntryAttributes.MutatingAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v13 = v1;
  sub_25574F9D0();
  v14 = v7[5];
  v15 = type metadata accessor for MergeableEntryAttributes(0);
  v16 = v15[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F9D0();
  v17 = v13 + v15[6];
  MergeableEntryAssetsPlacement.apply(_:)(&v11[v7[6]]);
  v18 = v7[7];
  v19 = v15[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC20();
  return sub_25573439C(v11, type metadata accessor for MergeableEntryAttributes.MutatingAction);
}

uint64_t MergeableEntryAttributes.hasDelta(from:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  if (sub_25574FAA0())
  {
    return 1;
  }

  v4 = type metadata accessor for MergeableEntryAttributes(0);
  v5 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  if (sub_25574FAA0())
  {
    return 1;
  }

  if (MergeableEntryAssetsPlacement.hasDelta(from:)(a1 + v4[6]))
  {
    return 1;
  }

  v6 = v4[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if (sub_25574FD00())
  {
    return 1;
  }

  v8 = v2 + v4[8];
  return sub_25574F840() & 1;
}

uint64_t MergeableEntryAttributes.copy(renamingReferences:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25574F860();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = &v34 - v10;
  v11 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  sub_255670F14(v1, a1, type metadata accessor for MergeableEntryAttributes);
  sub_25574F9A0();
  (*(v20 + 40))(a1, v23, v19);
  v24 = type metadata accessor for MergeableEntryAttributes(0);
  v25 = v1 + v24[5];
  sub_25574F9A0();
  (*(v15 + 40))(a1 + v24[5], v18, v14);
  v26 = v2 + v24[6];
  v27 = v35;
  MergeableEntryAssetsPlacement.copy(renamingReferences:)(v35);
  sub_255677F7C(v27, a1 + v24[6]);
  v28 = v2 + v24[7];
  v30 = v36;
  v29 = v37;
  sub_25574FC00();
  (*(v38 + 40))(a1 + v24[7], v30, v29);
  v31 = v2 + v24[8];
  v32 = v39;
  sub_25574F800();
  return (*(v40 + 40))(a1 + v24[8], v32, v41);
}

uint64_t MergeableEntryAttributes.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v3 = *(v2 - 8);
  v74 = v2;
  v75 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v57 = &v56 - v5;
  v6 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  MEMORY[0x28223BE20](v12);
  v72 = &v56 - v14;
  v77 = sub_25574F860();
  v79 = *(v77 - 8);
  v15 = *(v79 + 64);
  v16 = MEMORY[0x28223BE20](v77);
  v56 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v69 = &v56 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v70 = *(v19 - 8);
  v71 = v19;
  v20 = *(v70 + 64);
  MEMORY[0x28223BE20](v19);
  v65 = &v56 - v21;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v22 = *(*(v80 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v80);
  v68 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v56 - v28;
  v67 = &v56 - v28;
  v78 = type metadata accessor for MergeableEntryAttributes(0);
  v30 = a1 + *(v78 + 24);
  v31 = sub_25574F0D0();
  v32 = *(*(v31 - 8) + 56);
  v32(v29, 1, 1, v31);
  v76 = sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  sub_25574F720();
  v33 = v30 + v7[8];
  sub_25574FD10();
  v34 = v30 + v7[9];
  sub_25574FD10();
  sub_25574F850();
  v35 = v7[7];
  v32(v27, 1, 1, v31);
  v36 = v68;
  sub_255663294(v27, v68, &unk_27F7BED20, &unk_2557551D0);
  v64 = sub_255663D60();
  sub_25574F340();
  sub_255674B20(v27, &unk_27F7BED20, &unk_2557551D0);
  v66 = v7[10];
  sub_25574F850();
  v38 = v70;
  v37 = v71;
  v39 = v65;
  (*(v70 + 16))(v30, v65, v71);
  v40 = v67;
  sub_255663294(v67, v27, &unk_27F7BED20, &unk_2557551D0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  (*(*(v41 - 8) + 8))(v30 + v35, v41);
  sub_255663294(v27, v36, &unk_27F7BED20, &unk_2557551D0);
  sub_25574F340();
  sub_255674B20(v27, &unk_27F7BED20, &unk_2557551D0);
  v42 = v78;
  (*(v38 + 8))(v39, v37);
  sub_255674B20(v40, &unk_27F7BED20, &unk_2557551D0);
  v43 = *(v79 + 40);
  v44 = v30;
  v45 = v77;
  v43(v30 + v66, v69, v77);
  v46 = *(v42 + 28);
  sub_25574FD10();
  v80 = *(v42 + 32);
  sub_25574F850();
  sub_2556D4CDC();
  v47 = v73;
  v48 = v72;
  sub_25574F8B0();
  if (v47)
  {
    v49 = v74;
    v50 = v46;
    sub_25573439C(v44, type metadata accessor for MergeableEntryAssetsPlacement);
    v53 = v81;
    (*(v75 + 8))(v81 + v50, v49);
    return (*(v79 + 8))(v53 + v80, v45);
  }

  else
  {
    v73 = v43;
    (*(v62 + 32))(v81, v48, v63);
    sub_25566464C();
    sub_25574F8B0();
    (*(v59 + 32))(v81 + *(v78 + 20), v61, v60);
    v51 = v58;
    MergeableEntryAssetsPlacement.init(defaultState:)(v58);
    sub_255677F7C(v51, v30);
    v52 = v57;
    sub_25574FB80();
    (*(v75 + 40))(v81 + v46, v52, v74);
    v55 = v56;
    sub_25574F780();
    return (v73)(v81 + v80, v55, v77);
  }
}

uint64_t MergeableEntryAttributes.isDefaultState.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - v5;
  v7 = type metadata accessor for MergeableEntryAttributes(0);
  v8 = v0 + v7[8];
  if ((sub_25574F790() & 1) == 0)
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  if ((sub_25574F8D0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = v7[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  if ((sub_25574F8D0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v10 = v1 + v7[6];
  v11 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v12 = v10 + v11[8];
  if ((sub_25574F790() & 1) == 0)
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if ((sub_25574F5B0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = v10 + v11[5];
  sub_25574F390();
  LOBYTE(v13) = sub_25574F380();
  (*(v3 + 8))(v6, v2);
  if (v13 & 1) != 0 && (v14 = v11[6], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FB90()) && (v15 = v10 + v11[7], (sub_25574FB90()))
  {
    v16 = v1 + v7[7];
    v17 = sub_25574FB90();
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t MergeableEntryAttributes.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F8F0();
  v7 = type metadata accessor for MergeableEntryAttributes(0);
  v8 = v7[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F8F0();
  v9 = v1 + v7[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  v10 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v11 = v9 + v10[5];
  sub_25574F390();
  sub_25574F3B0();
  (*(v3 + 8))(v6, v2);
  v12 = v10[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBA0();
  v13 = v9 + v10[7];
  sub_25574FBA0();
  v14 = v9 + v10[8];
  sub_25574F7A0();
  v15 = v1 + v7[7];
  sub_25574FBA0();
  v16 = v1 + v7[8];
  return sub_25574F7A0();
}

uint64_t MergeableEntryAttributes.newRefs(from:)(uint64_t a1)
{
  v2 = v1;
  v14 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v4 = sub_25574FA70();
  sub_255692FAC(v4);
  v5 = type metadata accessor for MergeableEntryAttributes(0);
  v6 = v5[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v7 = sub_25574FA70();
  sub_255692FAC(v7);
  v8 = MergeableEntryAssetsPlacement.newRefs(from:)(a1 + v5[6]);
  sub_255692FAC(v8);
  v9 = v5[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v10 = sub_25574FCD0();
  sub_255692FAC(v10);
  v11 = v2 + v5[8];
  v12 = sub_25574F830();
  sub_255692FAC(v12);
  return v14;
}

Swift::Bool __swiftcall MergeableEntryAttributes.needToFinalizeTimestamps()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  if (sub_25574F940())
  {
    goto LABEL_9;
  }

  v7 = type metadata accessor for MergeableEntryAttributes(0);
  v8 = v7[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  if (sub_25574F940())
  {
    goto LABEL_9;
  }

  v9 = v1 + v7[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F610())
  {
    goto LABEL_9;
  }

  v10 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v11 = v9 + v10[5];
  sub_25574F390();
  LOBYTE(v11) = sub_25574F400();
  (*(v3 + 8))(v6, v2);
  if (v11 & 1) != 0 || (v12 = v10[6], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FBF0()) || (v13 = v9 + v10[7], (sub_25574FBF0()) || (v14 = v9 + v10[8], (sub_25574F7D0()) || (v15 = v1 + v7[7], (sub_25574FBF0()))
  {
LABEL_9:
    v16 = 1;
  }

  else
  {
    v18 = v1 + v7[8];
    v16 = sub_25574F7D0();
  }

  return v16 & 1;
}

uint64_t MergeableEntryAttributes.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F900();
  v12 = type metadata accessor for MergeableEntryAttributes(0);
  v13 = v12[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F900();
  v14 = v2 + v12[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  v15 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v16 = v15[5];
  sub_25574F390();
  sub_25574F3C0();
  (*(v5 + 16))(v9, v11, v4);
  sub_25574F3A0();
  (*(v5 + 8))(v11, v4);
  v17 = v15[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBB0();
  v18 = v14 + v15[7];
  sub_25574FBB0();
  v19 = v15[8];
  MEMORY[0x259C3D480](a1);
  v20 = v23[1] + v12[7];
  sub_25574FBB0();
  v21 = v12[8];
  return MEMORY[0x259C3D480](a1);
}

uint64_t MergeableEntryAttributes.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v2 = sub_25574F770();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v60 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v61 = v59 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v62 = v59 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v63 = v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v64 = v59 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v59 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v59 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v59 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v59 - v24;
  v65 = type metadata accessor for MergeableEntryAttributes(0);
  v26 = v65[8];
  v68 = v1;
  sub_25574F7C0();
  v27 = *(v3 + 104);
  v67 = *MEMORY[0x277CFB5F0];
  v66 = v27;
  v27(v23);
  v28 = sub_25574F760();
  v29 = *(v3 + 8);
  v29(v23, v2);
  if (v28)
  {
    return (*(v3 + 32))(v69, v25, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F910();
  v59[1] = sub_255664884(&qword_27F7BDED8, MEMORY[0x277CFB600]);
  v31 = sub_2557500E0();
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33 = v25;
  }

  else
  {
    v33 = v17;
  }

  if (v32)
  {
    v34 = v25;
  }

  else
  {
    v34 = v17;
  }

  v29(v33, v2);
  v35 = *(v3 + 32);
  v35(v20, v34, v2);
  v35(v25, v20, v2);
  v66(v23, v67, v2);
  v36 = sub_25574F760();
  v29(v23, v2);
  if (v36)
  {
    goto LABEL_24;
  }

  v37 = v65[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v38 = v63;
  sub_25574F910();
  v39 = sub_2557500E0();
  v40 = (v39 & 1) == 0;
  v41 = (v39 & 1) != 0 ? v25 : v38;
  v42 = v40 ? v25 : v38;
  v29(v41, v2);
  v43 = v64;
  v35(v64, v42, v2);
  v35(v25, v43, v2);
  v66(v23, v67, v2);
  v44 = sub_25574F760();
  v29(v23, v2);
  if (v44)
  {
    goto LABEL_24;
  }

  v45 = v68 + v65[6];
  v46 = v61;
  MergeableEntryAssetsPlacement.minEncodingVersion.getter(v61);
  v47 = sub_2557500E0();
  v48 = (v47 & 1) == 0;
  v49 = (v47 & 1) != 0 ? v25 : v46;
  v50 = v48 ? v25 : v46;
  v29(v49, v2);
  v51 = v62;
  v35(v62, v50, v2);
  v35(v25, v51, v2);
  v66(v23, v67, v2);
  v52 = sub_25574F760();
  v29(v23, v2);
  if (v52)
  {
LABEL_24:
    v53 = v69;
  }

  else
  {
    v55 = v65[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    v56 = v60;
    sub_25574FBC0();
    v57 = sub_2557500E0();
    v58 = v69;
    if (v57)
    {
      v29(v25, v2);
      v53 = v58;
      v54 = v56;
      return (v35)(v53, v54, v2);
    }

    v29(v56, v2);
    v53 = v58;
  }

  v54 = v25;
  return (v35)(v53, v54, v2);
}

uint64_t MergeableEntryAttributes.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D0, &qword_25575B3B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0048, &unk_25575E630);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0040, &qword_25575E628);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0038, &qword_25575E620);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F920();
  v20 = type metadata accessor for MergeableEntryAttributes(0);
  v21 = v20[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F920();
  MergeableEntryAssetsPlacement.observableDifference(from:with:)(a1 + v20[6], v11);
  v22 = v20[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBD0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C00B0, &qword_25575E6D0);
  if ((*(*(v23 - 8) + 48))(v19, 1, v23) == 1 && (v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C00B8, &qword_25575E6D8), (*(*(v24 - 8) + 48))(v15, 1, v24) == 1) && (v25 = type metadata accessor for MergeableEntryAssetsPlacement.ObservableDifference(0), (*(*(v25 - 8) + 48))(v11, 1, v25) == 1) && (v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF568, &unk_25575B4C0), (*(*(v26 - 8) + 48))(v7, 1, v26) == 1))
  {
    sub_255674B20(v19, &qword_27F7C0038, &qword_25575E620);
    v27 = type metadata accessor for MergeableEntryAttributes.ObservableDifference(0);
    (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
  }

  else
  {
    sub_255663294(v19, a2, &qword_27F7C0038, &qword_25575E620);
    v28 = type metadata accessor for MergeableEntryAttributes.ObservableDifference(0);
    sub_255663294(v15, a2 + v28[5], &qword_27F7C0040, &qword_25575E628);
    sub_255663294(v11, a2 + v28[6], &qword_27F7C0048, &unk_25575E630);
    sub_255663294(v7, a2 + v28[7], &qword_27F7BF4D0, &qword_25575B3B0);
    sub_255674B20(v19, &qword_27F7C0038, &qword_25575E620);
    (*(*(v28 - 1) + 56))(a2, 0, 1, v28);
  }

  sub_255674B20(v7, &qword_27F7BF4D0, &qword_25575B3B0);
  sub_255674B20(v11, &qword_27F7C0048, &unk_25575E630);
  return sub_255674B20(v15, &qword_27F7C0040, &qword_25575E628);
}

uint64_t MergeableEntryAttributes.encode(to:)()
{
  result = sub_25574FF10();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
    sub_255669798(&qword_27F7C00C0, &qword_27F7BE818, &qword_255757FD0);
    sub_25574FF60();
    v3 = type metadata accessor for MergeableEntryAttributes(0);
    v4 = v3[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
    sub_255669798(&qword_27F7C00C8, &qword_27F7BE798, &qword_255757E30);
    sub_25574FF60();
    v5 = v3[6];
    type metadata accessor for MergeableEntryAssetsPlacement(0);
    sub_255664884(&qword_27F7BF5A8, type metadata accessor for MergeableEntryAssetsPlacement);
    sub_25574FF60();
    v6 = v3[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    sub_255669798(&qword_27F7BF578, &qword_27F7BE0C8, &qword_255755C60);
    sub_25574FF60();
    v7 = v0 + v3[8];
    sub_25574F820();
  }

  return result;
}

uint64_t MergeableEntryAttributes.delta(_:from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v56 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v52 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F9F0();
  v28 = type metadata accessor for MergeableEntryAttributes(0);
  v29 = v28[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F9F0();
  MergeableEntryAssetsPlacement.delta(_:from:)(a1 + v28[6], v14);
  v30 = v28[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v31 = v8;
  v32 = v27;
  sub_25574FC30();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v27, 1, v33) == 1 && (v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678), (*(*(v35 - 8) + 48))(v20, 1, v35) == 1) && (v36 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0), (*(*(v36 - 8) + 48))(v14, 1, v36) == 1) && (v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670), (*(*(v37 - 8) + 48))(v31, 1, v37) == 1))
  {
    sub_255674B20(v27, &qword_27F7C0060, &qword_25575E650);
    v38 = type metadata accessor for MergeableEntryAttributes.Partial(0);
    (*(*(v38 - 8) + 56))(v55, 1, 1, v38);
  }

  else
  {
    sub_255663294(v27, v25, &qword_27F7C0060, &qword_25575E650);
    sub_255663294(v20, v56, &qword_27F7C0068, &qword_25575E658);
    sub_255663294(v14, v57, &qword_27F7C0070, &unk_25575E660);
    v53 = v20;
    v39 = v54;
    sub_255663294(v31, v54, &qword_27F7BF500, &unk_25575B3E0);
    v40 = v55;
    (*(v34 + 56))(v55, 1, 1, v33);
    v41 = type metadata accessor for MergeableEntryAttributes.Partial(0);
    v42 = v41[5];
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
    (*(*(v43 - 8) + 56))(v40 + v42, 1, 1, v43);
    v52 = v32;
    v44 = v31;
    v45 = v41[6];
    v46 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
    (*(*(v46 - 8) + 56))(v40 + v45, 1, 1, v46);
    v47 = v41[7];
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
    (*(*(v48 - 8) + 56))(v40 + v47, 1, 1, v48);
    sub_25568CFC8(v25, v40, &qword_27F7C0060, &qword_25575E650);
    sub_25568CFC8(v56, v40 + v42, &qword_27F7C0068, &qword_25575E658);
    v49 = v40 + v45;
    v31 = v44;
    sub_25568CFC8(v57, v49, &qword_27F7C0070, &unk_25575E660);
    v50 = v39;
    v20 = v53;
    sub_25568CFC8(v50, v40 + v47, &qword_27F7BF500, &unk_25575B3E0);
    sub_255674B20(v52, &qword_27F7C0060, &qword_25575E650);
    (*(*(v41 - 1) + 56))(v40, 0, 1, v41);
  }

  sub_255674B20(v31, &qword_27F7BF500, &unk_25575B3E0);
  sub_255674B20(v14, &qword_27F7C0070, &unk_25575E660);
  return sub_255674B20(v20, &qword_27F7C0068, &qword_25575E658);
}

BOOL MergeableEntryAttributes.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v46 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v53 = *(v49 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v46 - v9;
  v10 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v47 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v54 = *(v17 - 8);
  v18 = *(v54 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v46 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v46 - v28;
  sub_255663294(a1, v24, &qword_27F7C0060, &qword_25575E650);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_255674B20(v24, &qword_27F7C0060, &qword_25575E650);
    v30 = v55;
  }

  else
  {
    (*(v26 + 32))(v29, v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
    v31 = v55;
    v32 = sub_25574FA90();
    (*(v26 + 8))(v29, v25);
    v30 = v31;
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  v33 = type metadata accessor for MergeableEntryAttributes.Partial(0);
  sub_255663294(a1 + v33[5], v16, &qword_27F7C0068, &qword_25575E658);
  v34 = v54;
  if ((*(v54 + 48))(v16, 1, v17) == 1)
  {
    sub_255674B20(v16, &qword_27F7C0068, &qword_25575E658);
  }

  else
  {
    (*(v34 + 32))(v20, v16, v17);
    v35 = *(type metadata accessor for MergeableEntryAttributes(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
    LOBYTE(v35) = sub_25574FA90();
    (*(v34 + 8))(v20, v17);
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  v36 = v52;
  sub_255663294(a1 + v33[6], v52, &qword_27F7C0070, &unk_25575E660);
  if ((*(v50 + 48))(v36, 1, v51) == 1)
  {
    sub_255674B20(v36, &qword_27F7C0070, &unk_25575E660);
    v37 = v53;
  }

  else
  {
    v38 = v47;
    sub_255734A04(v36, v47, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    v39 = v30 + *(type metadata accessor for MergeableEntryAttributes(0) + 24);
    v40 = MergeableEntryAssetsPlacement.canMerge(delta:)(v38);
    sub_25573439C(v38, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    v37 = v53;
    if (!v40)
    {
      return 0;
    }
  }

  v41 = v48;
  sub_255663294(a1 + v33[7], v48, &qword_27F7BF500, &unk_25575B3E0);
  v42 = v49;
  if ((*(v37 + 48))(v41, 1, v49) == 1)
  {
    sub_255674B20(v41, &qword_27F7BF500, &unk_25575B3E0);
    return 1;
  }

  v43 = v46;
  (*(v37 + 32))(v46, v41, v42);
  v44 = *(type metadata accessor for MergeableEntryAttributes(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  LOBYTE(v44) = sub_25574FCE0();
  (*(v37 + 8))(v43, v42);
  return (v44 & 1) != 0;
}

BOOL MergeableEntryAttributes.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v48[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = &v48[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v48[-v11];
  v12 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v51 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v48[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0078, &qword_25575E678);
  v53 = *(v19 - 8);
  v20 = *(v53 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v48[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v48[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0080, &unk_25575E680);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v48[-v30];
  v32 = MergeableEntryAttributes.canMerge(delta:)(a1);
  if (v32)
  {
    v49 = v32;
    v50 = a1;
    sub_255663294(a1, v26, &qword_27F7C0060, &qword_25575E650);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_255674B20(v26, &qword_27F7C0060, &qword_25575E650);
      v33 = v1;
    }

    else
    {
      (*(v28 + 32))(v31, v26, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
      v33 = v1;
      sub_25574FA00();
      (*(v28 + 8))(v31, v27);
    }

    v34 = type metadata accessor for MergeableEntryAttributes.Partial(0);
    v35 = v50;
    sub_255663294(v50 + v34[5], v18, &qword_27F7C0068, &qword_25575E658);
    v36 = v53;
    if ((*(v53 + 48))(v18, 1, v19) == 1)
    {
      sub_255674B20(v18, &qword_27F7C0068, &qword_25575E658);
    }

    else
    {
      (*(v36 + 32))(v22, v18, v19);
      v37 = *(type metadata accessor for MergeableEntryAttributes(0) + 20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
      sub_25574FA00();
      (*(v36 + 8))(v22, v19);
    }

    v38 = v59;
    v39 = v56;
    sub_255663294(v35 + v34[6], v56, &qword_27F7C0070, &unk_25575E660);
    v40 = (*(v54 + 48))(v39, 1, v55);
    v41 = v57;
    if (v40 == 1)
    {
      sub_255674B20(v39, &qword_27F7C0070, &unk_25575E660);
    }

    else
    {
      v42 = v51;
      sub_255734A04(v39, v51, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
      v43 = v33 + *(type metadata accessor for MergeableEntryAttributes(0) + 24);
      MergeableEntryAssetsPlacement.merge(delta:)(v42);
      sub_25573439C(v42, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    }

    sub_255663294(v35 + v34[7], v41, &qword_27F7BF500, &unk_25575B3E0);
    v44 = v58;
    if ((*(v58 + 48))(v41, 1, v38) == 1)
    {
      sub_255674B20(v41, &qword_27F7BF500, &unk_25575B3E0);
    }

    else
    {
      v45 = v52;
      (*(v44 + 32))(v52, v41, v38);
      v46 = *(type metadata accessor for MergeableEntryAttributes(0) + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
      sub_25574FC40();
      (*(v44 + 8))(v45, v38);
    }

    LOBYTE(v32) = v49;
  }

  return v32;
}

uint64_t sub_255738DA4(uint64_t a1)
{
  v2 = sub_255664884(&qword_27F7BF060, type metadata accessor for MergeableEntryAttributes);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_255738E10(uint64_t a1, int *a2)
{
  v4 = v2;
  v15 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v6 = sub_25574FA70();
  sub_255692FAC(v6);
  v7 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v8 = sub_25574FA70();
  sub_255692FAC(v8);
  v9 = MergeableEntryAssetsPlacement.newRefs(from:)(a1 + a2[6]);
  sub_255692FAC(v9);
  v10 = a2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v11 = sub_25574FCD0();
  sub_255692FAC(v11);
  v12 = v4 + a2[8];
  v13 = sub_25574F830();
  sub_255692FAC(v13);
  return v15;
}

uint64_t sub_255738F14(uint64_t a1, int *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C00A8, &qword_25575E6C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for MergeableEntryAttributes.MutatingAction(0);
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v8, &qword_27F7C00A8, &qword_25575E6C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_255674B20(v8, &qword_27F7C00A8, &qword_25575E6C8);
  }

  sub_255734A04(v8, v13, type metadata accessor for MergeableEntryAttributes.MutatingAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v15 = v2;
  sub_25574F9D0();
  v16 = v9[5];
  v17 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F9D0();
  v18 = v15 + a2[6];
  MergeableEntryAssetsPlacement.apply(_:)(&v13[v9[6]]);
  v19 = v9[7];
  v20 = a2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC20();
  return sub_25573439C(v13, type metadata accessor for MergeableEntryAttributes.MutatingAction);
}

uint64_t sub_255739148(uint64_t a1, int *a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  if (sub_25574FAA0())
  {
    return 1;
  }

  v6 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  if (sub_25574FAA0())
  {
    return 1;
  }

  if (MergeableEntryAssetsPlacement.hasDelta(from:)(a1 + a2[6]))
  {
    return 1;
  }

  v7 = a2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if (sub_25574FD00())
  {
    return 1;
  }

  v9 = v4 + a2[8];
  return sub_25574F840() & 1;
}

uint64_t sub_255739238(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F8F0();
  v10 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F8F0();
  v11 = v4 + a2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  v12 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v13 = v11 + v12[5];
  sub_25574F390();
  sub_25574F3B0();
  (*(v6 + 8))(v9, v5);
  v14 = v12[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBA0();
  v15 = v11 + v12[7];
  sub_25574FBA0();
  v16 = v11 + v12[8];
  sub_25574F7A0();
  v17 = v4 + a2[7];
  sub_25574FBA0();
  v18 = v4 + a2[8];
  return sub_25574F7A0();
}

uint64_t sub_255739438(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_25574F900();
  v14 = *(a2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F900();
  v15 = v4 + *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  v16 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v17 = v16[5];
  sub_25574F390();
  sub_25574F3C0();
  (*(v7 + 16))(v11, v13, v6);
  sub_25574F3A0();
  (*(v7 + 8))(v13, v6);
  v18 = v16[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBB0();
  v19 = v15 + v16[7];
  sub_25574FBB0();
  v20 = v16[8];
  MEMORY[0x259C3D480](a1);
  v21 = v26;
  v22 = v4 + *(v26 + 28);
  sub_25574FBB0();
  v23 = *(v21 + 32);
  return MEMORY[0x259C3D480](a1);
}

uint64_t sub_255739698(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeableEntryAttributes.merge(_:)(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t _s13JournalShared24MergeableEntryAttributesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  sub_255669798(&qword_27F7C0188, &qword_27F7BE818, &qword_255757FD0);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MergeableEntryAttributes(0);
  v5 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_255669798(&qword_27F7C0190, &qword_27F7BE798, &qword_255757E30);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  if ((_s13JournalShared29MergeableEntryAssetsPlacementV2eeoiySbAC_ACtFZ_0(a1 + v4[6], a2 + v4[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_255669798(&qword_27F7BF660, &qword_27F7BE0C8, &qword_255755C60);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  v7 = v4[8];

  return sub_25574F7E0();
}

void sub_255739A7C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_25574FAC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_255739B04()
{
  sub_255672600(319, &qword_27F7C0120, &qword_27F7C00B0, &qword_25575E6D0);
  if (v0 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7C0128, &qword_27F7C00B8, &qword_25575E6D8);
    if (v1 <= 0x3F)
    {
      sub_255739E9C(319, &qword_27F7C0130, type metadata accessor for MergeableEntryAssetsPlacement.ObservableDifference);
      if (v2 <= 0x3F)
      {
        sub_255672600(319, &qword_27F7BF5F0, &qword_27F7BF568, &unk_25575B4C0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_255739C44()
{
  sub_255672600(319, &qword_27F7C0148, &qword_27F7C0098, &qword_25575E6B0);
  if (v0 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7C0150, &qword_27F7C00A0, &qword_25575E6B8);
    if (v1 <= 0x3F)
    {
      sub_255739E9C(319, &qword_27F7C0158, type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction);
      if (v2 <= 0x3F)
      {
        sub_255672600(319, &qword_27F7BF618, &qword_27F7BF550, &qword_25575E6C0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_255739D84()
{
  sub_255672600(319, &qword_27F7C0170, &qword_27F7C0080, &unk_25575E680);
  if (v0 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7C0178, &qword_27F7C0078, &qword_25575E678);
    if (v1 <= 0x3F)
    {
      sub_255739E9C(319, &qword_27F7C0180, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
      if (v2 <= 0x3F)
      {
        sub_255672600(319, &qword_27F7BF640, &qword_27F7BF508, &qword_25575E670);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_255739E9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t StateOfMindAssetMetadata.stateOfMindIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StateOfMindAssetMetadata.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StateOfMindAssetMetadata() + 20);

  return sub_2556700F4(v3, a1);
}

uint64_t type metadata accessor for StateOfMindAssetMetadata()
{
  result = qword_27F7C0220;
  if (!qword_27F7C0220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StateOfMindAssetMetadata.reflectiveInterval.getter()
{
  v1 = (v0 + *(type metadata accessor for StateOfMindAssetMetadata() + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t StateOfMindAssetMetadata.labels.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateOfMindAssetMetadata() + 28));
}

uint64_t StateOfMindAssetMetadata.domains.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateOfMindAssetMetadata() + 32));
}

uint64_t StateOfMindAssetMetadata.valenceClassification.getter()
{
  v1 = (v0 + *(type metadata accessor for StateOfMindAssetMetadata() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t StateOfMindAssetMetadata.backgroundColorsLight.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateOfMindAssetMetadata() + 40));
}

uint64_t StateOfMindAssetMetadata.backgroundColorsDark.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateOfMindAssetMetadata() + 44));
}

uint64_t StateOfMindAssetMetadata.init(stateOfMindIdentifier:date:reflectiveInterval:labels:domains:valenceClassification:backgroundColorsLight:backgroundColorsDark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  a9[1] = a2;
  v18 = type metadata accessor for StateOfMindAssetMetadata();
  result = sub_2556719B8(a3, a9 + v18[5]);
  v20 = a9 + v18[6];
  *v20 = a4;
  v20[8] = a5 & 1;
  *(a9 + v18[7]) = a6;
  *(a9 + v18[8]) = a7;
  v21 = a9 + v18[9];
  *v21 = a8;
  v21[8] = a10 & 1;
  *(a9 + v18[10]) = a11;
  *(a9 + v18[11]) = a12;
  return result;
}

unint64_t sub_25573A1C8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000015;
    if (v1 != 6)
    {
      v5 = 0xD000000000000014;
    }

    v6 = 0x736E69616D6F64;
    if (v1 != 4)
    {
      v6 = 0xD000000000000015;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 1702125924;
    v3 = 0xD000000000000012;
    if (v1 != 2)
    {
      v3 = 0x736C6562616CLL;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000015;
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
}

uint64_t sub_25573A2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25573B354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25573A2F4(uint64_t a1)
{
  v2 = sub_25573A71C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25573A330(uint64_t a1)
{
  v2 = sub_25573A71C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StateOfMindAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01B0, &qword_25575EA78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25573A71C();
  sub_255750FF0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v24) = 0;
  sub_255750DB0();
  if (!v2)
  {
    v13 = type metadata accessor for StateOfMindAssetMetadata();
    v14 = v13[5];
    LOBYTE(v24) = 1;
    sub_25574F020();
    sub_255671928(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
    v15 = v3 + v13[6];
    v16 = *v15;
    v17 = v15[8];
    LOBYTE(v24) = 2;
    sub_255750DE0();
    v24 = *(v3 + v13[7]);
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01C0, &qword_25575EA80);
    sub_25573AD5C(&qword_27F7C01C8);
    sub_255750DF0();
    v24 = *(v3 + v13[8]);
    v23 = 4;
    sub_255750DF0();
    v18 = v3 + v13[9];
    v19 = *v18;
    v20 = v18[8];
    LOBYTE(v24) = 5;
    sub_255750DE0();
    v24 = *(v3 + v13[10]);
    v23 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01D0, &qword_25575EA88);
    sub_25573ADC8(&qword_27F7C01D8, sub_25573A770);
    sub_255750E30();
    v24 = *(v3 + v13[11]);
    v23 = 7;
    sub_255750E30();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_25573A71C()
{
  result = qword_27F7C01B8;
  if (!qword_27F7C01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C01B8);
  }

  return result;
}

uint64_t StateOfMindAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01F0, &qword_25575EA98);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for StateOfMindAssetMetadata();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v16 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_25573A71C();
  v18 = v11;
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v19 = v7;
  v21 = v32;
  v20 = v33;
  LOBYTE(v36) = 0;
  *v15 = sub_255750D00();
  v15[1] = v22;
  sub_25574F020();
  LOBYTE(v36) = 1;
  sub_255671928(&qword_27F7BDC38, MEMORY[0x277CC9578]);
  sub_255750D40();
  sub_2556719B8(v19, v15 + v12[5]);
  LOBYTE(v36) = 2;
  v23 = sub_255750D30();
  v24 = v15 + v12[6];
  *v24 = v23;
  v24[8] = v25 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01C0, &qword_25575EA80);
  v35 = 3;
  sub_25573AD5C(&qword_27F7C01F8);
  sub_255750D40();
  *(v15 + v12[7]) = v36;
  v35 = 4;
  sub_255750D40();
  *(v15 + v12[8]) = v36;
  LOBYTE(v36) = 5;
  v26 = sub_255750D30();
  v27 = v15 + v12[9];
  *v27 = v26;
  v27[8] = v28 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C01D0, &qword_25575EA88);
  v35 = 6;
  sub_25573ADC8(&qword_27F7C0200, sub_25573AE40);
  sub_255750D80();
  *(v15 + v12[10]) = v36;
  v35 = 7;
  sub_255750D80();
  (*(v21 + 8))(v18, v20);
  *(v15 + v12[11]) = v36;
  sub_25573AEEC(v15, v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_25573AF50(v15);
}

uint64_t sub_25573AD5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C01C0, &qword_25575EA80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25573ADC8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C01D0, &qword_25575EA88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25573AE74(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C01E8, &qword_25575EA90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25573AEEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindAssetMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25573AF50(uint64_t a1)
{
  v2 = type metadata accessor for StateOfMindAssetMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25573AFAC(uint64_t a1)
{
  *(a1 + 8) = sub_255671928(&qword_27F7C0210, type metadata accessor for StateOfMindAssetMetadata);
  result = sub_255671928(&qword_27F7C0218, type metadata accessor for StateOfMindAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

void sub_25573B088()
{
  sub_25566BFA8(319, &qword_27F7BE538);
  if (v0 <= 0x3F)
  {
    sub_25566E80C();
    if (v1 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BEC00);
      if (v2 <= 0x3F)
      {
        sub_25573B1D8(319, &qword_27F7C0230, &qword_27F7C01C0, &qword_25575EA80, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_25573B1D8(319, &qword_27F7C0238, &qword_27F7C01E8, &qword_25575EA90, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25573B1D8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_25573B250()
{
  result = qword_27F7C0240;
  if (!qword_27F7C0240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0240);
  }

  return result;
}

unint64_t sub_25573B2A8()
{
  result = qword_27F7C0248;
  if (!qword_27F7C0248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0248);
  }

  return result;
}

unint64_t sub_25573B300()
{
  result = qword_27F7C0250;
  if (!qword_27F7C0250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0250);
  }

  return result;
}

uint64_t sub_25573B354(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000255753940 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000255753960 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E69616D6F64 && a2 == 0xE700000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000255753980 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002557539A0 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002557539C0 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_255750EB0();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t VisitAssetMetadata.city.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t VisitAssetMetadata.styleData.getter()
{
  v1 = v0 + *(type metadata accessor for VisitAssetMetadata(0) + 48);
  v2 = *v1;
  sub_25567625C(*v1, *(v1 + 8));
  return v2;
}

uint64_t VisitAssetMetadata.confidenceLevel.getter()
{
  v1 = (v0 + *(type metadata accessor for VisitAssetMetadata(0) + 60));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t VisitAssetMetadata.horizontalAccuracy.getter()
{
  v1 = (v0 + *(type metadata accessor for VisitAssetMetadata(0) + 64));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t VisitAssetMetadata.assetSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisitAssetMetadata(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, char *a24)
{
  v35 = *a24;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v27 = type metadata accessor for VisitAssetMetadata(0);
  sub_255675060(a7, a9 + v27[7], &qword_27F7BEB40, &unk_255754E40);
  sub_255675060(a8, a9 + v27[8], &qword_27F7BEB40, &unk_255754E40);
  result = sub_255675060(a10, a9 + v27[9], &qword_27F7BEB40, &unk_255754E40);
  v29 = a9 + v27[10];
  *v29 = a11;
  v29[8] = a12 & 1;
  v30 = a9 + v27[11];
  *v30 = a13;
  v30[8] = a14 & 1;
  v31 = (a9 + v27[12]);
  *v31 = a15;
  v31[1] = a16;
  v32 = (a9 + v27[13]);
  *v32 = a17;
  v32[1] = a18;
  *(a9 + v27[14]) = a19;
  v33 = a9 + v27[15];
  *v33 = a20;
  v33[8] = a21 & 1;
  v34 = a9 + v27[16];
  *v34 = a22;
  v34[8] = a23 & 1;
  *(a9 + v27[17]) = v35;
  return result;
}

uint64_t VisitAssetMetadata.id.getter()
{
  v1 = sub_25574F0D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VisitAssetMetadata(0);
  v7 = v0 + *(v6 + 40);
  if (v7[8] & 1) != 0 || (v8 = v0 + *(v6 + 44), (v8[8]))
  {
    sub_25574F0C0();
    v9 = sub_25574F040();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v10 = *v7;
    v11 = *v8;
    v12 = v0[1];
    if (v12)
    {
      v13 = *v0;
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_255750530();
      MEMORY[0x259C3DED0](95, 0xE100000000000000);
      sub_255750530();
      MEMORY[0x259C3DED0](95, 0xE100000000000000);
      MEMORY[0x259C3DED0](v13, v12);
    }

    else
    {
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_255750530();
      MEMORY[0x259C3DED0](95, 0xE100000000000000);
      sub_255750530();
    }

    return v15;
  }

  return v9;
}

uint64_t sub_25573BB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25573EB58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25573BBCC(uint64_t a1)
{
  v2 = sub_255674878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25573BC08(uint64_t a1)
{
  v2 = sub_255674878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisitAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0258, &qword_25575EC88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255674878();
  sub_255750FF0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v39) = 0;
  sub_255750DB0();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v39) = 1;
    sub_255750DB0();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v39) = 2;
    sub_255750DB0();
    v17 = type metadata accessor for VisitAssetMetadata(0);
    v18 = v17[7];
    LOBYTE(v39) = 3;
    sub_25574F020();
    sub_255671970(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
    v19 = v17[8];
    LOBYTE(v39) = 4;
    sub_255750DF0();
    v20 = v17[9];
    LOBYTE(v39) = 5;
    sub_255750DF0();
    v21 = v3 + v17[10];
    v22 = *v21;
    v23 = v21[8];
    LOBYTE(v39) = 6;
    sub_255750DD0();
    v24 = v3 + v17[11];
    v25 = *v24;
    v26 = v24[8];
    LOBYTE(v39) = 7;
    sub_255750DD0();
    v27 = (v3 + v17[12]);
    v28 = v27[1];
    v39 = *v27;
    v40 = v28;
    v41 = 8;
    sub_25567625C(v39, v28);
    sub_255687198();
    sub_255750DF0();
    sub_2556A15B8(v39, v40);
    v29 = (v3 + v17[13]);
    v30 = v29[1];
    v39 = *v29;
    v40 = v30;
    v41 = 9;
    sub_25567625C(v39, v30);
    sub_255750DF0();
    sub_2556A15B8(v39, v40);
    v31 = *(v3 + v17[14]);
    LOBYTE(v39) = 10;
    sub_255750DC0();
    v32 = v3 + v17[15];
    v33 = *v32;
    v34 = v32[8];
    LOBYTE(v39) = 11;
    sub_255750DD0();
    v35 = v3 + v17[16];
    v36 = *v35;
    v37 = v35[8];
    LOBYTE(v39) = 12;
    sub_255750DD0();
    LOBYTE(v39) = *(v3 + v17[17]);
    v41 = 13;
    sub_25573E578();
    sub_255750DF0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t VisitAssetMetadata.hash(into:)()
{
  v1 = v0;
  v2 = sub_25574F020();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v49 = &v47 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  if (v0[1])
  {
    v15 = *v0;
    sub_255750FA0();
    sub_2557501F0();
    if (v0[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_255750FA0();
    if (v0[5])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_255750FA0();
  if (!v0[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = v0[2];
  sub_255750FA0();
  sub_2557501F0();
  if (v0[5])
  {
LABEL_4:
    v17 = v0[4];
    sub_255750FA0();
    sub_2557501F0();
    goto LABEL_8;
  }

LABEL_7:
  sub_255750FA0();
LABEL_8:
  v18 = type metadata accessor for VisitAssetMetadata(0);
  sub_255663294(v0 + v18[7], v14, &qword_27F7BEB40, &unk_255754E40);
  v19 = *(v3 + 48);
  v20 = v19(v14, 1, v2);
  v50 = v3;
  if (v20 == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v21 = *(v3 + 32);
    v48 = v10;
    v22 = v51;
    v21(v51, v14, v2);
    sub_255750FA0();
    sub_255671970(&qword_27F7C0270, MEMORY[0x277CC9578]);
    sub_2557500A0();
    v23 = v22;
    v10 = v48;
    (*(v3 + 8))(v23, v2);
  }

  v24 = v49;
  sub_255663294(v1 + v18[8], v49, &qword_27F7BEB40, &unk_255754E40);
  if (v19(v24, 1, v2) == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v26 = v50;
    v25 = v51;
    (*(v50 + 32))(v51, v24, v2);
    sub_255750FA0();
    sub_255671970(&qword_27F7C0270, MEMORY[0x277CC9578]);
    sub_2557500A0();
    (*(v26 + 8))(v25, v2);
  }

  sub_255663294(v1 + v18[9], v10, &qword_27F7BEB40, &unk_255754E40);
  if (v19(v10, 1, v2) == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v28 = v50;
    v27 = v51;
    (*(v50 + 32))(v51, v10, v2);
    sub_255750FA0();
    sub_255671970(&qword_27F7C0270, MEMORY[0x277CC9578]);
    sub_2557500A0();
    (*(v28 + 8))(v27, v2);
  }

  v29 = v1 + v18[10];
  if (v29[8] == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v30 = *v29;
    sub_255750FA0();
    if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    MEMORY[0x259C3EC90](v31);
  }

  v32 = v1 + v18[11];
  if (v32[8] == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v33 = *v32;
    sub_255750FA0();
    if ((v33 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    MEMORY[0x259C3EC90](v34);
  }

  v35 = (v1 + v18[12]);
  if (v35[1] >> 60 == 15)
  {
    sub_255750FA0();
  }

  else
  {
    v36 = *v35;
    sub_255750FA0();
    sub_25574EFA0();
  }

  v37 = (v1 + v18[13]);
  if (v37[1] >> 60 == 15)
  {
    sub_255750FA0();
  }

  else
  {
    v38 = *v37;
    sub_255750FA0();
    sub_25574EFA0();
  }

  if (*(v1 + v18[14]) != 2)
  {
    sub_255750FA0();
  }

  sub_255750FA0();
  v39 = v1 + v18[15];
  if (v39[8] == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v40 = *v39;
    sub_255750FA0();
    if ((v40 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    MEMORY[0x259C3EC90](v41);
  }

  v42 = v1 + v18[16];
  if (v42[8] == 1)
  {
    sub_255750FA0();
  }

  else
  {
    v43 = *v42;
    sub_255750FA0();
    if ((v43 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    MEMORY[0x259C3EC90](v44);
  }

  v45 = *(v1 + v18[17]);
  if (v45 == 13)
  {
    return sub_255750FA0();
  }

  sub_255750FA0();
  v52 = v45;
  AssetSource.rawValue.getter();
  sub_2557501F0();
}

uint64_t VisitAssetMetadata.hashValue.getter()
{
  sub_255750F80();
  VisitAssetMetadata.hash(into:)();
  return sub_255750FD0();
}

uint64_t sub_25573C7DC()
{
  sub_255750F80();
  VisitAssetMetadata.hash(into:)();
  return sub_255750FD0();
}

uint64_t sub_25573C820()
{
  sub_255750F80();
  VisitAssetMetadata.hash(into:)();
  return sub_255750FD0();
}

uint64_t MultiPinMapAssetMetadata.mapCameraData.getter()
{
  v1 = *(v0 + 8);
  sub_25567625C(v1, *(v0 + 16));
  return v1;
}

uint64_t MultiPinMapAssetMetadata.mapCameraData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2556A15B8(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MultiPinMapAssetMetadata.revision.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  result = sub_2556A15B8(0, 0xF000000000000000);
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

uint64_t sub_25573C9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25573EFE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25573C9F0(uint64_t a1)
{
  v2 = sub_255672BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25573CA2C(uint64_t a1)
{
  v2 = sub_255672BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultiPinMapAssetMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0288, &qword_25575EC98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v15 = *(v1 + 16);
  v16 = v9;
  v19 = *(v1 + 24);
  v14 = *(v1 + 32);
  v13[1] = *(v1 + 40);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255672BD8();

  sub_255750FF0();
  v17 = v10;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0298, &qword_25575ECA0);
  sub_255672E04(&qword_27F7C02A0, &qword_27F7C02A8);
  sub_255750DF0();

  if (!v2)
  {
    v17 = v16;
    v18 = v15;
    v20 = 1;
    sub_25567625C(v16, v15);
    sub_255687198();
    sub_255750DF0();
    sub_2556A15B8(v17, v18);
    LOBYTE(v17) = 2;
    sub_255750DC0();
    LOBYTE(v17) = 3;
    sub_255750DE0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25573CD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6144737469736976 && a2 == 0xEA00000000006174)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255750EB0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25573CE0C(uint64_t a1)
{
  v2 = sub_25573E5CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25573CE48(uint64_t a1)
{
  v2 = sub_25573E5CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenericMapAssetMetadata.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02D0, &qword_25575ECB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25573E5CC();
  sub_255750FF0();
  type metadata accessor for VisitAssetMetadata(0);
  sub_255671970(&qword_27F7C02A8, type metadata accessor for VisitAssetMetadata);
  sub_255750DF0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t GenericMapAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02C8, &qword_25575ECB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02E0, &qword_25575ECC0);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for GenericMapAssetMetadata(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25573E5CC();
  sub_255750FE0();
  if (!v2)
  {
    v17 = v20;
    type metadata accessor for VisitAssetMetadata(0);
    sub_255671970(&qword_27F7C02C0, type metadata accessor for VisitAssetMetadata);
    sub_255750D40();
    (*(v21 + 8))(v11, v8);
    sub_255675060(v7, v15, &qword_27F7C02C8, &qword_25575ECB0);
    sub_25573E640(v15, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25573D274(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02D0, &qword_25575ECB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25573E5CC();
  sub_255750FF0();
  type metadata accessor for VisitAssetMetadata(0);
  sub_255671970(&qword_27F7C02A8, type metadata accessor for VisitAssetMetadata);
  sub_255750DF0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_25573D3EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_25574EC50();
    if (v10)
    {
      v11 = sub_25574EC80();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_25574EC70();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_25574EC50();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_25574EC80();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_25574EC70();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25573D61C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_25573D7AC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2556755A8(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_25573D3EC(v14, a3, a4, &v13);
  v10 = v4;
  sub_2556755A8(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_25573D7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_25574EC50();
  v11 = result;
  if (result)
  {
    result = sub_25574EC80();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_25574EC70();
  sub_25573D3EC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_25573D864(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_255674F54(a3, a4);
          return sub_25573D61C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s13JournalShared18VisitAssetMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_25574F020();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v110 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v109 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v102 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v102 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF798, &unk_25575BDA0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v102 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v102 - v25;
  v27 = a1[1];
  v28 = a2[1];
  if (v27)
  {
    if (!v28 || (*a1 != *a2 || v27 != v28) && (sub_255750EB0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = a1[3];
  v30 = a2[3];
  if (v29)
  {
    if (!v30 || (a1[2] != a2[2] || v29 != v30) && (sub_255750EB0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v31 = a1[5];
  v32 = a2[5];
  if (v31)
  {
    if (!v32 || (a1[4] != a2[4] || v31 != v32) && (sub_255750EB0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v103 = v21;
  v106 = type metadata accessor for VisitAssetMetadata(0);
  v108 = v5;
  v33 = v106[7];
  v34 = *(v17 + 48);
  sub_255663294(a1 + v33, v26, &qword_27F7BEB40, &unk_255754E40);
  v107 = v34;
  sub_255663294(a2 + v33, &v26[v34], &qword_27F7BEB40, &unk_255754E40);
  v35 = v108 + 48;
  v36 = *(v108 + 48);
  v37 = v36(v26, 1, v4);
  v104 = v36;
  v105 = v35;
  if (v37 == 1)
  {
    if (v36(&v26[v107], 1, v4) == 1)
    {
      sub_255674B20(v26, &qword_27F7BEB40, &unk_255754E40);
      goto LABEL_29;
    }

LABEL_27:
    v38 = v26;
LABEL_42:
    sub_255674B20(v38, &qword_27F7BF798, &unk_25575BDA0);
    return 0;
  }

  sub_255663294(v26, v16, &qword_27F7BEB40, &unk_255754E40);
  if (v36(&v26[v107], 1, v4) == 1)
  {
    (*(v108 + 8))(v16, v4);
    goto LABEL_27;
  }

  v39 = v108;
  (*(v108 + 32))(v110, &v26[v107], v4);
  sub_255671970(&qword_27F7BF7A0, MEMORY[0x277CC9578]);
  LODWORD(v107) = sub_255750100();
  v40 = *(v39 + 8);
  v40(v110, v4);
  v40(v16, v4);
  sub_255674B20(v26, &qword_27F7BEB40, &unk_255754E40);
  if ((v107 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v41 = v106[8];
  v42 = *(v17 + 48);
  sub_255663294(a1 + v41, v24, &qword_27F7BEB40, &unk_255754E40);
  sub_255663294(a2 + v41, &v24[v42], &qword_27F7BEB40, &unk_255754E40);
  v43 = v104;
  if (v104(v24, 1, v4) == 1)
  {
    v44 = v43(&v24[v42], 1, v4);
    v45 = v103;
    if (v44 == 1)
    {
      sub_255674B20(v24, &qword_27F7BEB40, &unk_255754E40);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  sub_255663294(v24, v14, &qword_27F7BEB40, &unk_255754E40);
  v46 = v42;
  v47 = v43(&v24[v42], 1, v4);
  v48 = v108;
  v45 = v103;
  if (v47 == 1)
  {
    (*(v108 + 8))(v14, v4);
LABEL_34:
    v38 = v24;
    goto LABEL_42;
  }

  v49 = v110;
  (*(v108 + 32))(v110, &v24[v46], v4);
  sub_255671970(&qword_27F7BF7A0, MEMORY[0x277CC9578]);
  LODWORD(v107) = sub_255750100();
  v50 = *(v48 + 8);
  v50(v49, v4);
  v50(v14, v4);
  sub_255674B20(v24, &qword_27F7BEB40, &unk_255754E40);
  if ((v107 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v51 = v106[9];
  v52 = *(v17 + 48);
  sub_255663294(a1 + v51, v45, &qword_27F7BEB40, &unk_255754E40);
  sub_255663294(a2 + v51, v45 + v52, &qword_27F7BEB40, &unk_255754E40);
  v53 = v104;
  if (v104(v45, 1, v4) == 1)
  {
    if (v53(v45 + v52, 1, v4) == 1)
    {
      sub_255674B20(v45, &qword_27F7BEB40, &unk_255754E40);
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  v54 = v109;
  sub_255663294(v45, v109, &qword_27F7BEB40, &unk_255754E40);
  if (v53(v45 + v52, 1, v4) == 1)
  {
    (*(v108 + 8))(v54, v4);
LABEL_41:
    v38 = v45;
    goto LABEL_42;
  }

  v56 = v108;
  v57 = v45 + v52;
  v58 = v110;
  (*(v108 + 32))(v110, v57, v4);
  sub_255671970(&qword_27F7BF7A0, MEMORY[0x277CC9578]);
  v59 = sub_255750100();
  v60 = *(v56 + 8);
  v60(v58, v4);
  v60(v54, v4);
  sub_255674B20(v45, &qword_27F7BEB40, &unk_255754E40);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_46:
  v61 = v106[10];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 8);
  if (v63)
  {
    if (!v65)
    {
      return 0;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  v66 = v106[11];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 8);
  v69 = (a2 + v66);
  v70 = *(a2 + v66 + 8);
  if (v68)
  {
    if (!v70)
    {
      return 0;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      return 0;
    }
  }

  v71 = v106[12];
  v73 = *(a1 + v71);
  v72 = *(a1 + v71 + 8);
  v74 = (a2 + v71);
  v76 = *v74;
  v75 = v74[1];
  if (v72 >> 60 == 15)
  {
    if (v75 >> 60 != 15)
    {
      goto LABEL_67;
    }

    sub_25567625C(v73, v72);
    sub_25567625C(v76, v75);
    sub_2556A15B8(v73, v72);
  }

  else
  {
    if (v75 >> 60 == 15)
    {
      goto LABEL_67;
    }

    sub_25567625C(v73, v72);
    sub_25567625C(v76, v75);
    v77 = sub_25573D864(v73, v72, v76, v75);
    sub_2556A15B8(v76, v75);
    sub_2556A15B8(v73, v72);
    if ((v77 & 1) == 0)
    {
      return 0;
    }
  }

  v78 = v106[13];
  v73 = *(a1 + v78);
  v72 = *(a1 + v78 + 8);
  v79 = (a2 + v78);
  v76 = *v79;
  v75 = v79[1];
  if (v72 >> 60 == 15)
  {
    if (v75 >> 60 == 15)
    {
      sub_25567625C(v73, v72);
      sub_25567625C(v76, v75);
      sub_2556A15B8(v73, v72);
      goto LABEL_69;
    }

LABEL_67:
    sub_25567625C(v73, v72);
    sub_25567625C(v76, v75);
    sub_2556A15B8(v73, v72);
    sub_2556A15B8(v76, v75);
    return 0;
  }

  if (v75 >> 60 == 15)
  {
    goto LABEL_67;
  }

  sub_25567625C(v73, v72);
  sub_25567625C(v76, v75);
  v80 = sub_25573D864(v73, v72, v76, v75);
  sub_2556A15B8(v76, v75);
  sub_2556A15B8(v73, v72);
  if ((v80 & 1) == 0)
  {
    return 0;
  }

LABEL_69:
  v81 = v106[14];
  v82 = *(a1 + v81);
  v83 = *(a2 + v81);
  if (v82 == 2)
  {
    if (v83 != 2)
    {
      return 0;
    }

    goto LABEL_74;
  }

  result = 0;
  if (v83 != 2 && ((v83 ^ v82) & 1) == 0)
  {
LABEL_74:
    v84 = v106[15];
    v85 = (a1 + v84);
    v86 = *(a1 + v84 + 8);
    v87 = (a2 + v84);
    v88 = *(a2 + v84 + 8);
    if (v86)
    {
      if (!v88)
      {
        return 0;
      }
    }

    else
    {
      if (*v85 != *v87)
      {
        LOBYTE(v88) = 1;
      }

      if (v88)
      {
        return 0;
      }
    }

    v89 = v106[16];
    v90 = (a1 + v89);
    v91 = *(a1 + v89 + 8);
    v92 = (a2 + v89);
    v93 = *(a2 + v89 + 8);
    if (v91)
    {
      if (!v93)
      {
        return 0;
      }
    }

    else
    {
      if (*v90 != *v92)
      {
        LOBYTE(v93) = 1;
      }

      if (v93)
      {
        return 0;
      }
    }

    v94 = v106[17];
    v95 = *(a1 + v94);
    v96 = *(a2 + v94);
    if (v95 == 13)
    {
      if (v96 == 13)
      {
        return 1;
      }
    }

    else if (v96 != 13)
    {
      v112 = v95;
      v111 = v96;
      v97 = AssetSource.rawValue.getter();
      v99 = v98;
      if (v97 == AssetSource.rawValue.getter() && v99 == v100)
      {
      }

      else
      {
        v101 = sub_255750EB0();

        if ((v101 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_25573E578()
{
  result = qword_27F7C0268;
  if (!qword_27F7C0268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0268);
  }

  return result;
}

unint64_t sub_25573E5CC()
{
  result = qword_27F7C02D8;
  if (!qword_27F7C02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C02D8);
  }

  return result;
}

uint64_t sub_25573E640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMapAssetMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25573E6A4(uint64_t a1)
{
  *(a1 + 8) = sub_255671970(&qword_27F7C02C0, type metadata accessor for VisitAssetMetadata);
  result = sub_255671970(&qword_27F7C02A8, type metadata accessor for VisitAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25573E770(uint64_t a1)
{
  *(a1 + 8) = sub_25573E7A0();
  result = sub_25573E7F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25573E7A0()
{
  result = qword_27F7C02F0;
  if (!qword_27F7C02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C02F0);
  }

  return result;
}

unint64_t sub_25573E7F4()
{
  result = qword_27F7C02F8;
  if (!qword_27F7C02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C02F8);
  }

  return result;
}

uint64_t sub_25573E848(uint64_t a1)
{
  *(a1 + 8) = sub_255671970(&qword_27F7C0300, type metadata accessor for GenericMapAssetMetadata);
  result = sub_255671970(&qword_27F7C0308, type metadata accessor for GenericMapAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_25573E908()
{
  sub_25566C09C(319, &qword_27F7C0338, type metadata accessor for VisitAssetMetadata);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_25573E9A4()
{
  result = qword_27F7C0340;
  if (!qword_27F7C0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0340);
  }

  return result;
}

unint64_t sub_25573E9FC()
{
  result = qword_27F7C0348;
  if (!qword_27F7C0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0348);
  }

  return result;
}

unint64_t sub_25573EA54()
{
  result = qword_27F7C0350;
  if (!qword_27F7C0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0350);
  }

  return result;
}

unint64_t sub_25573EAAC()
{
  result = qword_27F7C0358;
  if (!qword_27F7C0358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0358);
  }

  return result;
}

unint64_t sub_25573EB04()
{
  result = qword_27F7C0360;
  if (!qword_27F7C0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0360);
  }

  return result;
}

uint64_t sub_25573EB58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6563616C70 && a2 == 0xE900000000000065;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C50664F65707974 && a2 == 0xEB00000000656361 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174537469736976 && a2 == 0xEE00656D69547472 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646E457469736976 && a2 == 0xEC000000656D6954 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746144656C797473 && a2 == 0xE900000000000061 || (sub_255750EB0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446D65744970616DLL && a2 == 0xEB00000000617461 || (sub_255750EB0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6B726F577369 && a2 == 0xE600000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEF6C6576654C6563 || (sub_255750EB0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002557539E0 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x756F537465737361 && a2 == 0xEB00000000656372)
  {

    return 13;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_25573EFE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144737469736976 && a2 == 0xEA00000000006174;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656D614370616DLL && a2 == 0xED00006174614461 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D696C537369 && a2 == 0xE600000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000)
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

uint64_t NSCoding<>.toData.getter()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v18[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v18];
  v2 = v18[0];
  if (v1)
  {
    v3 = sub_25574EF90();
  }

  else
  {
    v4 = v2;
    v5 = sub_25574ED90();

    swift_willThrow();
    if (qword_27F7BD830 != -1)
    {
      swift_once();
    }

    v6 = sub_25574F2C0();
    __swift_project_value_buffer(v6, qword_27F7C0390);
    v7 = v0;
    v8 = v5;
    v9 = sub_25574F2A0();
    v10 = sub_255750780();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412546;
      *(v11 + 4) = v7;
      *v12 = v7;
      *(v11 + 12) = 2112;
      v13 = v7;
      v14 = v5;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      v12[1] = v15;
      _os_log_impl(&dword_255661000, v9, v10, "Error converting %@ to Data: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEC80, &qword_255757E90);
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v12, -1, -1);
      MEMORY[0x259C3F520](v11, -1, -1);
    }

    else
    {
    }

    v3 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t static NSCoding<>.create<A>(from:type:)()
{
  sub_25573F8A0();
  result = sub_255750820();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEC88, &qword_255758F88);
    v1 = sub_255750C10();

    return v1;
  }

  return result;
}

uint64_t sub_25573F5DC()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7C0390);
  v1 = __swift_project_value_buffer(v0, qword_27F7C0390);
  if (qword_27F7BD5B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_25573F8A0()
{
  result = qword_27F7C03B0;
  if (!qword_27F7C03B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7C03B0);
  }

  return result;
}

uint64_t sub_25573F91C(unint64_t a1, void (*a2)(void))
{
  v11 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_255750A30();
    sub_255750BD0();
    v5 = sub_255750A30();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_255750BD0();
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x259C3E830](v6, a1);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_255750BB0();
        v9 = *(v11 + 16);
        sub_255750BE0();
        sub_255750BF0();
        sub_255750BC0();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return v11;
}

uint64_t sub_25573FA94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25574EB00();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_25574EAF0();
  v5 = type metadata accessor for PhotoLibraryAssetMetadataDateOnly();
  sub_255748FF8(&qword_27F7C03F8, type metadata accessor for PhotoLibraryAssetMetadataDateOnly);
  sub_25574EAE0();

  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t sub_25573FCE8()
{
  v0 = sub_25574EB30();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_25574EB20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C03E0, &qword_25575F3C0);
  sub_255748F3C();
  v3 = sub_25574EB10();

  return v3;
}

uint64_t sub_25573FF40()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7C03B8);
  v1 = __swift_project_value_buffer(v0, qword_27F7C03B8);
  if (qword_27F7BD5B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t JournalEntryMO.assetOrderingDictionary.getter()
{
  v1 = [v0 assetOrdering];
  v2 = MEMORY[0x277D84F98];
  if (v1)
  {
    v3 = v1;
    v4 = sub_25574EF90();
    v6 = v5;

    v7 = sub_25567A554();
    sub_2556755A8(v4, v6);
    if (v7)
    {
      return v7;
    }
  }

  return v2;
}

id sub_25574008C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 assetOrdering];
  v4 = MEMORY[0x277D84F98];
  if (result)
  {
    v5 = result;
    v6 = sub_25574EF90();
    v8 = v7;

    v9 = sub_25567A554();
    result = sub_2556755A8(v6, v8);
    if (v9)
    {
      v4 = v9;
    }
  }

  *a2 = v4;
  return result;
}

void sub_25574011C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_25573FCE8();
  if (v5 >> 60 == 15)
  {
    v8 = 0;
    [v3 setAssetOrdering_];
  }

  else
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_25574EF80();
    sub_2556A15B8(v6, v7);
    [v3 setAssetOrdering_];
  }
}

void JournalEntryMO.assetOrderingDictionary.setter()
{
  v1 = sub_25573FCE8();
  v3 = v2;

  if (v3 >> 60 == 15)
  {
    v4 = 0;
    [v0 setAssetOrdering_];
  }

  else
  {
    v4 = sub_25574EF80();
    sub_2556A15B8(v1, v3);
    [v0 setAssetOrdering_];
  }
}

void (*JournalEntryMO.assetOrderingDictionary.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 assetOrdering];
  v4 = MEMORY[0x277D84F98];
  if (v3)
  {
    v5 = v3;
    v6 = sub_25574EF90();
    v8 = v7;

    v9 = sub_25567A554();
    sub_2556755A8(v6, v8);
    if (v9)
    {
      v4 = v9;
    }
  }

  *a1 = v4;
  return sub_2557402F8;
}

void sub_2557402F8(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {

    v4 = sub_25573FCE8();
    v6 = v5;

    if (v6 >> 60 == 15)
    {
      v10 = 0;
      [a1[1] setAssetOrdering_];
    }

    else
    {
      v10 = sub_25574EF80();
      sub_2556A15B8(v4, v6);
      [a1[1] setAssetOrdering_];
    }
  }

  else
  {
    v7 = sub_25573FCE8();
    v9 = v8;

    if (v9 >> 60 == 15)
    {
      v10 = 0;
      [a1[1] setAssetOrdering_];
    }

    else
    {
      v10 = sub_25574EF80();
      sub_2556A15B8(v7, v9);
      [a1[1] setAssetOrdering_];
    }
  }
}

void MergeableEntryAssetsPlacement.assetPlacement(forAssetID:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  v5 = sub_25574F0D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFD0, &unk_255757E80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v65 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v56 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F700())
  {
    v25 = sub_25566CA68();
    v26 = 0;
    v27 = 0;
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = v25;
    }

    v30 = v66;
    goto LABEL_24;
  }

  v59 = v10;
  v60 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v31 = *(v60 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v61 = v3;
  sub_25574F360();
  v32 = *(v6 + 16);
  v62 = a1;
  v57 = v32;
  v58 = v6 + 16;
  v32(v22, a1, v5);
  (*(v6 + 56))(v22, 0, 1, v5);
  v33 = *(v12 + 48);
  sub_255663294(v24, v15, &unk_27F7BED20, &unk_2557551D0);
  sub_255663294(v22, &v15[v33], &unk_27F7BED20, &unk_2557551D0);
  v63 = v6;
  v34 = *(v6 + 48);
  if (v34(v15, 1, v5) == 1)
  {
    sub_255674B20(v22, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v24, &unk_27F7BED20, &unk_2557551D0);
    v35 = v34(&v15[v33], 1, v5);
    v30 = v66;
    if (v35 == 1)
    {
      sub_255674B20(v15, &unk_27F7BED20, &unk_2557551D0);
LABEL_17:
      v27 = 0;
      v26 = 1;
      v29 = 2;
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  v36 = v65;
  sub_255663294(v15, v65, &unk_27F7BED20, &unk_2557551D0);
  if (v34(&v15[v33], 1, v5) == 1)
  {
    sub_255674B20(v22, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v24, &unk_27F7BED20, &unk_2557551D0);
    (*(v63 + 8))(v36, v5);
    v30 = v66;
LABEL_11:
    sub_255674B20(v15, &unk_27F7BFFD0, &unk_255757E80);
    goto LABEL_12;
  }

  v42 = v63;
  v43 = v64;
  (*(v63 + 32))(v64, &v15[v33], v5);
  sub_255748FF8(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
  v44 = sub_255750100();
  v45 = *(v42 + 8);
  v45(v43, v5);
  sub_255674B20(v22, &unk_27F7BED20, &unk_2557551D0);
  sub_255674B20(v24, &unk_27F7BED20, &unk_2557551D0);
  v45(v36, v5);
  sub_255674B20(v15, &unk_27F7BED20, &unk_2557551D0);
  v30 = v66;
  if (v44)
  {
    goto LABEL_17;
  }

LABEL_12:
  v37 = v60;
  v38 = *(v60 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v40 = v61;
  v39 = v62;
  if (sub_25574FCF0())
  {
    v27 = 0;
    v29 = 1;
    v26 = 1;
  }

  else
  {
    v41 = v40 + *(v37 + 28);
    if (sub_25574FCF0())
    {
      v29 = 0;
      v27 = 0;
      v26 = 1;
    }

    else
    {
      if (qword_27F7BD838 != -1)
      {
        swift_once();
      }

      v46 = sub_25574F2C0();
      __swift_project_value_buffer(v46, qword_27F7C03B8);
      v47 = v59;
      v57(v59, v39, v5);
      v48 = sub_25574F2A0();
      v49 = sub_255750780();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v67 = v51;
        *v50 = 136315138;
        sub_255748FF8(&qword_27F7BF200, MEMORY[0x277CC95F0]);
        v52 = sub_255750E60();
        v54 = v53;
        (*(v63 + 8))(v47, v5);
        v55 = sub_2556E474C(v52, v54, &v67);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_255661000, v48, v49, "Unknown placement for asset %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x259C3F520](v51, -1, -1);
        MEMORY[0x259C3F520](v50, -1, -1);
      }

      else
      {

        (*(v63 + 8))(v47, v5);
      }

      v29 = 0;
      v26 = 0;
      v27 = 1;
    }
  }

LABEL_24:
  *v30 = v29;
  *(v30 + 8) = v26;
  *(v30 + 9) = v27;
}

uint64_t JournalEntryMO.modifyLegacyAssetOrderingFields(from:)(void (**a1)(char *, char *, uint64_t))
{
  v2 = v1;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFD0, &unk_255757E80);
  v4 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v6 = &v78 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v78 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v78 - v15;
  v91 = sub_25574F0D0();
  v94 = *(v91 - 8);
  v17 = v94[8];
  v18 = MEMORY[0x28223BE20](v91);
  v85 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v90 = (&v78 - v21);
  MEMORY[0x28223BE20](v20);
  v89 = &v78 - v22;
  JournalEntryMO.assetsArrayUnsorted.getter();
  v97 = a1;

  v98 = sub_255678FD8(v23);
  sub_255678F28(sub_255749040, v96);

  v24 = v98;
  v25 = (v98 >> 62) & 1;
  if (v98 < 0)
  {
    LODWORD(v25) = 1;
  }

  v81 = v25;
  v83 = a1;
  if (v25 == 1)
  {
    goto LABEL_53;
  }

  for (i = *(v98 + 16); ; i = sub_255750A30())
  {
    v82 = v2;
    v95 = v24 & 0xC000000000000001;
    v87 = v11;
    v88 = (v94 + 1);
    v27 = &property descriptor for JournalMO.isUploadedToCloud;
    v93 = v24;
    if (!i)
    {
      break;
    }

    v80 = (v94 + 2);
    v28 = MEMORY[0x277D84F98];
    v29 = 0;
    while (1)
    {
      if (v95)
      {
        v30 = MEMORY[0x259C3E830](v29, v24);
      }

      else
      {
        if (v29 >= *(v24 + 16))
        {
          goto LABEL_52;
        }

        v30 = *(v24 + 8 * v29 + 32);
      }

      v11 = v30;
      v2 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v31 = [v30 v27[125]];
      if (v31)
      {
        v32 = v14;
        v33 = v89;
        v34 = v31;
        sub_25574F080();

        v35 = v90;
        v79 = *v80;
        v79(v90, v33, v91);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = v28;
        v37 = sub_25567AF04(v35);
        v39 = v28[2];
        v40 = (v38 & 1) == 0;
        v41 = __OFADD__(v39, v40);
        v42 = v39 + v40;
        if (v41)
        {
          goto LABEL_55;
        }

        v43 = v38;
        if (v28[3] >= v42)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v54 = v37;
            sub_2557436B8();
            v37 = v54;
          }
        }

        else
        {
          sub_255744F74(v42, isUniquelyReferenced_nonNull_native);
          v37 = sub_25567AF04(v90);
          if ((v43 & 1) != (v44 & 1))
          {
            goto LABEL_57;
          }
        }

        v14 = v32;
        v28 = v98;
        if (v43)
        {
          *(*(v98 + 56) + 8 * v37) = v29;

          v11 = v88;
          v45 = *v88;
          v46 = v91;
          (*v88)(v90, v91);
          v45(v89, v46);
        }

        else
        {
          *(v98 + 8 * (v37 >> 6) + 64) |= 1 << v37;
          v47 = v28[6] + v94[9] * v37;
          v78 = v37;
          v48 = v90;
          v49 = v91;
          v79(v47, v90, v91);
          *(v28[7] + 8 * v78) = v29;

          v50 = v94[1];
          v51 = v48;
          v32 = v88;
          v50(v51, v49);
          v50(v89, v49);
          v52 = v28[2];
          v41 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v41)
          {
            goto LABEL_56;
          }

          v28[2] = v53;
        }

        v24 = v93;
        v27 = &property descriptor for JournalMO.isUploadedToCloud;
        if (v2 == i)
        {
          goto LABEL_27;
        }

        v29 = v2;
      }

      else
      {

        ++v29;
        if (v2 == i)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

LABEL_27:
  v55 = sub_25573FCE8();
  v57 = v56;

  if (v57 >> 60 == 15)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_25574EF80();
    sub_2556A15B8(v55, v57);
  }

  v32 = v81;
  [v82 setAssetOrdering_];

  v59 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  sub_25574F360();
  if (v32)
  {
    v60 = sub_255750A30();
    v61 = v91;
    if (!v60)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v60 = *(v93 + 16);
    v61 = v91;
    if (!v60)
    {
LABEL_50:

      return sub_255674B20(v16, &unk_27F7BED20, &unk_2557551D0);
    }
  }

  if (v60 >= 1)
  {
    v62 = 0;
    v90 = (v94 + 7);
    v91 = v60;
    v83 = (v94 + 4);
    v84 = v6;
    v86 = v16;
    v89 = (v94 + 6);
    while (1)
    {
      if (v95)
      {
        v70 = MEMORY[0x259C3E830](v62, v93);
      }

      else
      {
        v70 = *(v93 + 8 * v62 + 32);
      }

      v94 = v70;
      v71 = [v70 id];
      if (v71)
      {
        v72 = v71;
        sub_25574F080();

        v73 = 0;
      }

      else
      {
        v73 = 1;
      }

      (*v90)(v14, v73, 1, v61);
      v74 = *(v92 + 48);
      sub_255663294(v14, v6, &unk_27F7BED20, &unk_2557551D0);
      sub_255663294(v16, &v6[v74], &unk_27F7BED20, &unk_2557551D0);
      v75 = *v89;
      if ((*v89)(v6, 1, v61) == 1)
      {
        sub_255674B20(v14, &unk_27F7BED20, &unk_2557551D0);
        if (v75(&v6[v74], 1, v61) != 1)
        {
          goto LABEL_49;
        }

        sub_255674B20(v6, &unk_27F7BED20, &unk_2557551D0);
        v65 = 1;
      }

      else
      {
        v76 = v87;
        sub_255663294(v6, v87, &unk_27F7BED20, &unk_2557551D0);
        if (v75(&v6[v74], 1, v61) == 1)
        {
          sub_255674B20(v14, &unk_27F7BED20, &unk_2557551D0);
          (*v88)(v76, v61);
          v16 = v86;
LABEL_49:
          sub_255674B20(v6, &unk_27F7BFFD0, &unk_255757E80);
          v65 = 0;
          goto LABEL_37;
        }

        v63 = &v6[v74];
        v64 = v85;
        (*v83)(v85, v63, v61);
        sub_255748FF8(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
        v65 = sub_255750100();
        v66 = *v88;
        v67 = v64;
        v6 = v84;
        (*v88)(v67, v61);
        sub_255674B20(v14, &unk_27F7BED20, &unk_2557551D0);
        v66(v76, v61);
        sub_255674B20(v6, &unk_27F7BED20, &unk_2557551D0);
        v16 = v86;
      }

LABEL_37:
      ++v62;
      v68 = v65 & 1;
      v69 = v94;
      [v94 setIsSlim_];

      if (v91 == v62)
      {
        goto LABEL_50;
      }
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_255750F10();
  __break(1u);

  __break(1u);
  return result;
}

void MergeableEntryAssetsPlacement.addOrMoveAsset(withID:to:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_25574F0D0();
  v53 = *(v8 - 8);
  isa = v53[8].isa;
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = *a2;
  v19 = *a2;
  v20 = *(a2 + 8);
  v50 = *a3;
  LODWORD(a2) = *(a3 + 8);
  v51 = *(a3 + 9);
  v52 = a2;
  if (v20 == 1)
  {
    v48 = v8;
    if (v19)
    {
      if (v18 == 1)
      {
        v21 = type metadata accessor for MergeableEntryAssetsPlacement(0);
        v22 = *(v21 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
        sub_25574FC60();
        (v53[1].isa)(v11, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
        sub_25574F6D0();
        sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
        v23 = v4 + *(v21 + 28);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
        sub_25574F6D0();
        sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
        v36 = v53;
        (v53[2].isa)(v17, a1, v8);
        (v36[7].isa)(v17, 0, 1, v8);
        sub_255663294(v17, v49, &unk_27F7BED20, &unk_2557551D0);
        v37 = type metadata accessor for MergeableEntryAssetsPlacement(0);
        v38 = v37[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
        sub_25574F370();
        sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
        v39 = v37[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
        sub_25574FC70();
        sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
        v40 = v4 + v37[7];
      }

      sub_25574FC70();
      v24 = v17;
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    sub_25574F6D0();
    sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
    v32 = v8;
    v33 = type metadata accessor for MergeableEntryAssetsPlacement(0);
    v34 = *(v33 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    sub_25574FC70();
    sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
    v35 = v4 + *(v33 + 28);
    sub_25574FC60();
    (v53[1].isa)(v11, v32);
LABEL_18:
    if (v18 > 1)
    {
      v41 = v20;
    }

    else
    {
      v41 = 0;
    }

    if (!(v51 & 1 | ((v52 & 1) == 0)) && v50 >= 2 && (v41 & 1) == 0)
    {
      (v53[7].isa)(v17, 1, 1, v48);
      sub_255663294(v17, v49, &unk_27F7BED20, &unk_2557551D0);
      v42 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
      sub_25574F370();
      sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
    }

    return;
  }

  v25 = sub_25566CA68();
  if (v26)
  {
    v48 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    sub_25574F670();
    sub_25574F6C0();
    v27 = type metadata accessor for MergeableEntryAssetsPlacement(0);
    v28 = *(v27 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    sub_25574FC70();
    sub_255674B20(v17, &unk_27F7BED20, &unk_2557551D0);
    v29 = v4 + *(v27 + 28);
    sub_25574FC70();
    v24 = v17;
LABEL_17:
    sub_255674B20(v24, &unk_27F7BED20, &unk_2557551D0);
    goto LABEL_18;
  }

  v30 = v25;
  if (v25 < v18)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v31 = sub_25574F670();
  a1 = v31;
  if ((v30 & 0x8000000000000000) == 0 && v30 < v31 && (v19 & 0x8000000000000000) == 0 && v31 >= v19)
  {
    v48 = v8;
    sub_25574F650();
    goto LABEL_18;
  }

  if (qword_27F7BD838 != -1)
  {
    goto LABEL_33;
  }

LABEL_27:
  v43 = sub_25574F2C0();
  __swift_project_value_buffer(v43, qword_27F7C03B8);
  v53 = sub_25574F2A0();
  v44 = sub_255750780();
  if (os_log_type_enabled(v53, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134218496;
    *(v45 + 4) = v30;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v19;
    *(v45 + 22) = 2048;
    *(v45 + 24) = a1;
    _os_log_impl(&dword_255661000, v53, v44, "Skipping addOrMoveAsset - from: %ld or to: %ld is out of range (gridAssetIDs.count: %ld).", v45, 0x20u);
    MEMORY[0x259C3F520](v45, -1, -1);
  }

  v46 = v53;
}

BOOL static AssetPlacement.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          v5 = *(a2 + 8);
        }

        else
        {
          v5 = 0;
        }

        if (v5)
        {
          return 1;
        }
      }

      else
      {
        if (v3 > 1)
        {
          v8 = *(a2 + 8);
        }

        else
        {
          v8 = 0;
        }

        if (v8)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v3)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v7 = *(a2 + 8);
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t MergeableEntryAssetsPlacement.removeAsset(withID:)(uint64_t a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v44 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFD0, &unk_255757E80);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v50 = &v42[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v42[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v42[-v24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F6D0();
  sub_255674B20(v25, &unk_27F7BED20, &unk_2557551D0);
  v26 = v4[2];
  v53 = a1;
  v26(v23, a1, v3);
  v47 = v4[7];
  v48 = v4 + 7;
  v47(v23, 0, 1, v3);
  v51 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v27 = *(v51 + 20);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v52 = v1;
  v45 = v28;
  v46 = v27;
  sub_25574F360();
  v29 = *(v8 + 56);
  sub_255663294(v23, v11, &unk_27F7BED20, &unk_2557551D0);
  sub_255663294(v20, &v11[v29], &unk_27F7BED20, &unk_2557551D0);
  v30 = v4;
  v31 = v4[6];
  if (v31(v11, 1, v3) == 1)
  {
    sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v23, &unk_27F7BED20, &unk_2557551D0);
    if (v31(&v11[v29], 1, v3) == 1)
    {
      sub_255674B20(v11, &unk_27F7BED20, &unk_2557551D0);
      v32 = v52;
LABEL_8:
      v47(v25, 1, 1, v3);
      sub_255663294(v25, v49, &unk_27F7BED20, &unk_2557551D0);
      sub_25574F370();
      sub_255674B20(v25, &unk_27F7BED20, &unk_2557551D0);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_255663294(v11, v50, &unk_27F7BED20, &unk_2557551D0);
  if (v31(&v11[v29], 1, v3) == 1)
  {
    sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v23, &unk_27F7BED20, &unk_2557551D0);
    (v30[1])(v50, v3);
LABEL_6:
    sub_255674B20(v11, &unk_27F7BFFD0, &unk_255757E80);
    v32 = v52;
    goto LABEL_9;
  }

  v33 = v30;
  v34 = &v11[v29];
  v35 = v44;
  (v30[4])(v44, v34, v3);
  sub_255748FF8(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
  v36 = v50;
  v43 = sub_255750100();
  v37 = v33[1];
  v37(v35, v3);
  sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
  sub_255674B20(v23, &unk_27F7BED20, &unk_2557551D0);
  v37(v36, v3);
  sub_255674B20(v11, &unk_27F7BED20, &unk_2557551D0);
  v32 = v52;
  if (v43)
  {
    goto LABEL_8;
  }

LABEL_9:
  v38 = v51;
  v39 = *(v51 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC70();
  sub_255674B20(v25, &unk_27F7BED20, &unk_2557551D0);
  v40 = v32 + *(v38 + 28);
  sub_25574FC70();
  return sub_255674B20(v25, &unk_27F7BED20, &unk_2557551D0);
}

uint64_t static AssetPlacement.maxGridCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F7C03D0 = a1;
  return result;
}

uint64_t AssetPlacement.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == -1)
  {
    result = 0;
    v2 = 1;
  }

  else if (result == -2)
  {
    result = 1;
    v2 = 1;
  }

  else if (result < 0)
  {
    v3 = a2;
    swift_beginAccess();
    a2 = v3;
    v2 = 0;
    result = qword_27F7C03D0;
  }

  else
  {
    v2 = 0;
  }

  *a2 = result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_255742368(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = (*a1 == *a2) & ~v4;
  if (*a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = v3 > 1;
  if (v3 == 1)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (!v7)
  {
    v4 = 0;
  }

  if (v2 != 1)
  {
    v8 = v4;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (*(a1 + 8) == 1)
  {
    return v9;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_2557423B4(uint64_t a1)
{
  sub_255750B00();

  strcpy(v8, "CROrderedSet<[");
  HIBYTE(v8[1]) = -18;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  sub_25574F620();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
  sub_255669798(&qword_27F7BE730, &qword_27F7BE728, &qword_255757898);
  v2 = sub_2557500C0();
  v4 = v3;

  MEMORY[0x259C3DED0](v2, v4);

  MEMORY[0x259C3DED0](15965, 0xE200000000000000);
  return v8[0];
}

size_t sub_25574250C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0A0, &qword_255756FE0);
  v4 = *(sub_25574F0D0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_255742608(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

size_t sub_255742690(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A0, &qword_255756FE8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_255742798(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_255750F70();

  return sub_2557453FC(a1, v4);
}

char *sub_2557427DC()
{
  v1 = v0;
  v36 = sub_25574FDB0();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
  v4 = *v0;
  v5 = sub_255750C70();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_255742A5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0430, &qword_25575F3E8);
  v2 = *v0;
  v3 = sub_255750C70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_255742BBC()
{
  v1 = v0;
  v30 = sub_25574F320();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
  v4 = *v0;
  v5 = sub_255750C70();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_255742E24()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v3;
  v41 = sub_25574F0D0();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0418, &qword_25575F3D8);
  v6 = *v0;
  v7 = sub_255750C70();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_255743180()
{
  v1 = v0;
  v32 = sub_25574F0D0();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB28, &qword_255758B58);
  v4 = *v0;
  v5 = sub_255750C70();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 4 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 4 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_2557433F0()
{
  v1 = v0;
  v35 = sub_25574F0D0();
  v39 = *(v35 - 8);
  v2 = v39[8];
  v3 = MEMORY[0x28223BE20](v35);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C03F0, &qword_25575F3C8);
  v6 = *v0;
  v7 = sub_255750C70();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v38 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v39 + 4;
    v34 = v39 + 2;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v21 = v39;
        v22 = v39[9] * (v18 | (v12 << 6));
        v23 = v39[2];
        v25 = v35;
        v24 = v36;
        v23(v36, *(v6 + 48) + v22, v35);
        v26 = v37;
        v23(v37, *(v6 + 56) + v22, v25);
        v27 = v6;
        v28 = v38;
        v29 = v21[4];
        v29(*(v38 + 48) + v22, v24, v25);
        v30 = *(v28 + 56);
        v6 = v27;
        result = (v29)(v30 + v22, v26, v25);
        v16 = v40;
      }

      while (v40);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v31;
        v8 = v38;
        goto LABEL_18;
      }

      v20 = *(v32 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_2557436B8()
{
  v1 = v0;
  v32 = sub_25574F0D0();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C03D8, &qword_25575F3B8);
  v4 = *v0;
  v5 = sub_255750C70();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_255743928(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_25574FDB0();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
  v46 = a2;
  result = sub_255750C80();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_255750F80();
      sub_2557501F0();
      result = sub_255750FD0();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_255743CA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0430, &qword_25575F3E8);
  v38 = a2;
  result = sub_255750C80();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = *(v8 + 40);
      sub_2557501B0();
      sub_255750F80();
      sub_2557501F0();
      v27 = sub_255750FD0();

      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_255743F6C(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_25574F320();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
  v41 = a2;
  result = sub_255750C80();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_255750F70();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2557442B8(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v8;
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0418, &qword_25575F3D8);
  v52 = a2;
  result = sub_255750C80();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_255748FF8(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      result = sub_255750090();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_255744768(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB28, &qword_255758B58);
  v44 = a2;
  result = sub_255750C80();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 4 * v27);
      v31 = *(v14 + 40);
      sub_255748FF8(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      result = sub_255750090();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 4 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_255744B28(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v43 - v11;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C03F0, &qword_25575F3C8);
  v49 = a2;
  result = sub_255750C80();
  v54 = result;
  if (*(v12 + 16))
  {
    v44 = v3;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v12;
    v47 = v7;
    v50 = (v7 + 32);
    v21 = v54 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v52 = (v19 - 1) & v19;
LABEL_17:
      v29 = *(v12 + 48);
      v51 = *(v47 + 72);
      v30 = v51 * (v26 | (v15 << 6));
      if (v49)
      {
        v31 = *v50;
        v32 = v48;
        (*v50)(v48, v29 + v30, v6);
      }

      else
      {
        v31 = *v45;
        v32 = v48;
        (*v45)(v48, v29 + v30, v6);
      }

      v31(v53, *(v12 + 56) + v30, v6);
      v33 = v54;
      v34 = *(v54 + 40);
      sub_255748FF8(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      result = sub_255750090();
      v35 = -1 << *(v33 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = v54;
      v24 = v51 * v22;
      v25 = *v50;
      (*v50)((*(v54 + 48) + v51 * v22), v32, v6);
      result = (v25)(*(v23 + 56) + v24, v53, v6);
      ++*(v23 + 16);
      v12 = v46;
      v19 = v52;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v52 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v54;
  return result;
}

uint64_t sub_255744F74(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C03D8, &qword_25575F3B8);
  v44 = a2;
  result = sub_255750C80();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_255748FF8(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      result = sub_255750090();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_255745334(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2556A71A8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C3E760](v9, a1);
      sub_2556A7148(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2557453FC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_255745468(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_25574F0D0();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_25574570C(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_2557509F0();
  type metadata accessor for JournalMO();
  sub_255748FF8(&qword_27F7BE0A8, type metadata accessor for JournalMO);
  result = sub_2557505C0();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_255750A60())
      {
        goto LABEL_30;
      }

      type metadata accessor for JournalMO();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_255745938(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  v39 = *(v42 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = (&v36 - v12);
  v43 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v26 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v43;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v26;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v26 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v37 = -1 << *(v14 - 32);
    v38 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v22 = v43;
    while (v18)
    {
LABEL_14:
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v26 = v19;
      v27 = v25 | (v19 << 6);
      v28 = *(v22 + 48);
      v29 = sub_25574F0D0();
      v30 = *(v29 - 8);
      v31 = v28 + *(v30 + 72) * v27;
      v32 = v41;
      (*(v30 + 16))(v41, v31, v29);
      *&v32[*(v42 + 48)] = *(*(v22 + 56) + 8 * v27);
      v33 = v32;
      a1 = v40;
      sub_255748E38(v33, v40);
      sub_255748E38(a1, a2);
      if (v21 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v39 + 72);
      result = v21;
      v34 = __OFADD__(v21++, 1);
      v19 = v26;
      if (v34)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v19;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v24 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v24);
      ++v23;
      if (v18)
      {
        v19 = v24;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v26 = v35 - 1;
    a3 = result;
LABEL_23:
    v16 = v37;
    a1 = v38;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_255745BBC(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_255748270(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_255745C70(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_255745C70(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_255750E50();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
        v6 = sub_2557503E0();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2557466DC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_255745DB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_255745DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v39 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v42 = &v30 - v13;
  result = MEMORY[0x28223BE20](v12);
  v41 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v37 = -v18;
    v38 = v17;
    v20 = a1 - a3;
    v31 = v18;
    v21 = v17 + v18 * a3;
    v40 = v8;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v41;
      sub_255663294(v21, v41, &qword_27F7BE4A8, &unk_255756FF0);
      v23 = v42;
      sub_255663294(v19, v42, &qword_27F7BE4A8, &unk_255756FF0);
      v24 = *(v8 + 48);
      v25 = *(v22 + v24);
      v26 = *(v23 + v24);
      sub_255674B20(v23, &qword_27F7BE4A8, &unk_255756FF0);
      result = sub_255674B20(v22, &qword_27F7BE4A8, &unk_255756FF0);
      v27 = v25 < v26;
      v8 = v40;
      if (!v27)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v28 = v39;
      sub_255748E38(v21, v39);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_255748E38(v28, v19);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_255746010(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(id *, id *), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_255698F94(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_255698F94((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_2557473A4(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_255747D1C(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_255747C90(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
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
  v12 = sub_255747D1C(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_2557473A4(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_255747D1C(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_255747C90(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_2557466DC(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v111 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  v119 = *(v8 - 8);
  v9 = *(v119 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v114 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v124 = &v107 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v126 = &v107 - v15;
  result = MEMORY[0x28223BE20](v14);
  v125 = &v107 - v17;
  v120 = a3;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_95:
    a3 = *v111;
    if (!*v111)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_97:
      v128 = v20;
      v103 = *(v20 + 2);
      if (v103 >= 2)
      {
        while (*v120)
        {
          v104 = *&v20[16 * v103];
          v105 = *&v20[16 * v103 + 24];
          sub_25574776C(*v120 + *(v119 + 72) * v104, *v120 + *(v119 + 72) * *&v20[16 * v103 + 16], *v120 + *(v119 + 72) * v105, a3);
          if (v5)
          {
          }

          if (v105 < v104)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_255747D1C(v20);
          }

          if (v103 - 2 >= *(v20 + 2))
          {
            goto LABEL_121;
          }

          v106 = &v20[16 * v103];
          *v106 = v104;
          *(v106 + 1) = v105;
          v128 = v20;
          result = sub_255747C90(v103 - 1);
          v20 = v128;
          v103 = *(v128 + 2);
          if (v103 <= 1)
          {
          }
        }

        goto LABEL_131;
      }
    }

LABEL_127:
    result = sub_255747D1C(v20);
    v20 = result;
    goto LABEL_97;
  }

  v108 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v127 = v8;
  while (1)
  {
    v21 = v19;
    if (v19 + 1 >= v18)
    {
      v32 = v19 + 1;
    }

    else
    {
      v121 = v18;
      v110 = v5;
      v22 = v19;
      v23 = *v120;
      v123 = v23;
      v24 = *(v119 + 72);
      a3 = v23 + v24 * (v19 + 1);
      v25 = v125;
      sub_255663294(a3, v125, &qword_27F7BE4A8, &unk_255756FF0);
      v26 = v23 + v24 * v22;
      v27 = v126;
      sub_255663294(v26, v126, &qword_27F7BE4A8, &unk_255756FF0);
      v28 = *(v8 + 48);
      v29 = *(v25 + v28);
      v117 = *(v27 + v28);
      v118 = v29;
      sub_255674B20(v27, &qword_27F7BE4A8, &unk_255756FF0);
      result = sub_255674B20(v25, &qword_27F7BE4A8, &unk_255756FF0);
      v109 = v22;
      v30 = v22 + 2;
      v122 = v24;
      v31 = v123 + v24 * v30;
      v116 = v20;
      while (1)
      {
        v32 = v121;
        if (v121 == v30)
        {
          break;
        }

        LODWORD(v123) = v118 < v117;
        v33 = v125;
        sub_255663294(v31, v125, &qword_27F7BE4A8, &unk_255756FF0);
        v34 = v126;
        sub_255663294(a3, v126, &qword_27F7BE4A8, &unk_255756FF0);
        v35 = *(v127 + 48);
        v36 = *(v33 + v35);
        v37 = *(v34 + v35);
        sub_255674B20(v34, &qword_27F7BE4A8, &unk_255756FF0);
        result = sub_255674B20(v33, &qword_27F7BE4A8, &unk_255756FF0);
        v20 = v116;
        ++v30;
        v31 += v122;
        a3 += v122;
        if (((v123 ^ (v36 >= v37)) & 1) == 0)
        {
          v32 = v30 - 1;
          break;
        }
      }

      v8 = v127;
      v21 = v109;
      v5 = v110;
      if (v118 < v117)
      {
        if (v32 < v109)
        {
          goto LABEL_124;
        }

        if (v109 < v32)
        {
          v38 = v122 * (v32 - 1);
          v39 = v32 * v122;
          v40 = v32;
          v41 = v109;
          v42 = v109 * v122;
          do
          {
            if (v41 != --v40)
            {
              v43 = *v120;
              if (!*v120)
              {
                goto LABEL_130;
              }

              a3 = v43 + v42;
              sub_255748E38(v43 + v42, v114);
              if (v42 < v38 || a3 >= v43 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_255748E38(v114, v43 + v38);
              v8 = v127;
            }

            ++v41;
            v38 -= v122;
            v39 -= v122;
            v42 += v122;
          }

          while (v41 < v40);
          v21 = v109;
          v5 = v110;
          v20 = v116;
        }
      }
    }

    v44 = v120[1];
    if (v32 >= v44)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v32, v21))
    {
      goto LABEL_123;
    }

    if (v32 - v21 >= v108)
    {
LABEL_32:
      v19 = v32;
      if (v32 < v21)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v21, v108))
    {
      goto LABEL_125;
    }

    if (v21 + v108 >= v44)
    {
      v45 = v120[1];
    }

    else
    {
      v45 = v21 + v108;
    }

    if (v45 < v21)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v32 == v45)
    {
      goto LABEL_32;
    }

    v116 = v20;
    v109 = v21;
    v110 = v5;
    v91 = *v120;
    v92 = *(v119 + 72);
    v93 = *v120 + v92 * (v32 - 1);
    v122 = -v92;
    v123 = v91;
    v94 = v21 - v32;
    v112 = v92;
    v113 = v45;
    a3 = v91 + v32 * v92;
LABEL_86:
    v121 = v32;
    v115 = a3;
    v117 = v94;
    v118 = v93;
    v95 = v93;
LABEL_87:
    v96 = v125;
    sub_255663294(a3, v125, &qword_27F7BE4A8, &unk_255756FF0);
    v97 = v126;
    sub_255663294(v95, v126, &qword_27F7BE4A8, &unk_255756FF0);
    v98 = *(v8 + 48);
    v99 = *(v96 + v98);
    v100 = *(v97 + v98);
    sub_255674B20(v97, &qword_27F7BE4A8, &unk_255756FF0);
    result = sub_255674B20(v96, &qword_27F7BE4A8, &unk_255756FF0);
    if (v99 < v100)
    {
      break;
    }

    v8 = v127;
LABEL_85:
    v32 = v121 + 1;
    v19 = v113;
    v93 = v118 + v112;
    v94 = v117 - 1;
    a3 = v115 + v112;
    if (v121 + 1 != v113)
    {
      goto LABEL_86;
    }

    v21 = v109;
    v5 = v110;
    v20 = v116;
    if (v113 < v109)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_255698F94(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v47 = *(v20 + 2);
    v46 = *(v20 + 3);
    a3 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_255698F94((v46 > 1), v47 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = a3;
    v48 = &v20[16 * v47];
    *(v48 + 4) = v21;
    *(v48 + 5) = v19;
    v49 = *v111;
    if (!*v111)
    {
      goto LABEL_132;
    }

    if (v47)
    {
      while (2)
      {
        v50 = a3 - 1;
        if (a3 >= 4)
        {
          v55 = &v20[16 * a3 + 32];
          v56 = *(v55 - 64);
          v57 = *(v55 - 56);
          v61 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          if (v61)
          {
            goto LABEL_109;
          }

          v60 = *(v55 - 48);
          v59 = *(v55 - 40);
          v61 = __OFSUB__(v59, v60);
          v53 = v59 - v60;
          v54 = v61;
          if (v61)
          {
            goto LABEL_110;
          }

          v62 = &v20[16 * a3];
          v64 = *v62;
          v63 = *(v62 + 1);
          v61 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v61)
          {
            goto LABEL_112;
          }

          v61 = __OFADD__(v53, v65);
          v66 = v53 + v65;
          if (v61)
          {
            goto LABEL_115;
          }

          if (v66 >= v58)
          {
            v84 = &v20[16 * v50 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v61 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v61)
            {
              goto LABEL_119;
            }

            if (v53 < v87)
            {
              v50 = a3 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v54)
            {
              goto LABEL_111;
            }

            v67 = &v20[16 * a3];
            v69 = *v67;
            v68 = *(v67 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_114;
            }

            v73 = &v20[16 * v50 + 32];
            v75 = *v73;
            v74 = *(v73 + 1);
            v61 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v61)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v71, v76))
            {
              goto LABEL_118;
            }

            if (v71 + v76 < v53)
            {
              goto LABEL_66;
            }

            if (v53 < v76)
            {
              v50 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v51 = *(v20 + 4);
            v52 = *(v20 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
            goto LABEL_52;
          }

          v77 = &v20[16 * a3];
          v79 = *v77;
          v78 = *(v77 + 1);
          v61 = __OFSUB__(v78, v79);
          v71 = v78 - v79;
          v72 = v61;
LABEL_66:
          if (v72)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v50];
          v82 = *(v80 + 4);
          v81 = *(v80 + 5);
          v61 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v83 < v71)
          {
            break;
          }
        }

        v88 = v50 - 1;
        if (v50 - 1 >= a3)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
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
          goto LABEL_126;
        }

        if (!*v120)
        {
          goto LABEL_129;
        }

        a3 = *&v20[16 * v88 + 32];
        v89 = *&v20[16 * v50 + 40];
        sub_25574776C(*v120 + *(v119 + 72) * a3, *v120 + *(v119 + 72) * *&v20[16 * v50 + 32], *v120 + *(v119 + 72) * v89, v49);
        if (v5)
        {
        }

        if (v89 < a3)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_255747D1C(v20);
        }

        if (v88 >= *(v20 + 2))
        {
          goto LABEL_108;
        }

        v90 = &v20[16 * v88];
        *(v90 + 4) = a3;
        *(v90 + 5) = v89;
        v128 = v20;
        result = sub_255747C90(v50);
        v20 = v128;
        a3 = *(v128 + 2);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = v120[1];
    if (v19 >= v18)
    {
      goto LABEL_95;
    }
  }

  if (v123)
  {
    v101 = v124;
    sub_255748E38(a3, v124);
    v8 = v127;
    swift_arrayInitWithTakeFrontToBack();
    sub_255748E38(v101, v95);
    v95 += v122;
    a3 += v122;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_255746FE4(void **__src, void **a2, void **a3, uint64_t __dst, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = v7 - 1;
      v31 = &v16[v29];
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v55 = v33;
        v34 = v30;
        v54 = *v30;
        v35 = v54;
        v36 = v33;
        v37 = v35;
        v38 = sub_25567AAF8(&v55, &v54, a5);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v44 = v51;
          v45 = v52;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = (v6 + 1);
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v7 = v51;
          v15 = v52;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < (v15 + (v47 & 0xFFFFFFFFFFFFFFF8)) && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v55 = *v7;
    v20 = v15;
    v54 = *v15;
    v21 = v54;
    v22 = v55;
    v23 = v21;
    v24 = sub_25567AAF8(&v55, &v54, a5);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if (!v25)
    {
      v26 = v20;
      v15 = v20 + 1;
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if (v18 - v20 >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

uint64_t sub_2557473A4(id *__src, id *a2, id *a3, uint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = &v52[-v17 + 7];
        if (&v52[-v17] >= 0)
        {
          v43 = &v52[-v17];
        }

        if (v7 < v17 || v7 >= v17 + (v43 & 0xFFFFFFFFFFFFFFF8) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = (v17 + 8);
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = &v52[v25];
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = (v5 + 1);
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= &v14[v44 & 0xFFFFFFFFFFFFFFF8] || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

uint64_t sub_25574776C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  v8 = *(*(v48 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v46 = &v38 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v30 = a4 + v18;
    }

    else
    {
      v28 = -v14;
      v29 = a4 + v18;
      v30 = a4 + v18;
      v41 = a1;
      v42 = a4;
      v40 = v28;
      do
      {
        v38 = v30;
        v31 = a2 + v28;
        v43 = a2;
        v44 = a2 + v28;
        while (1)
        {
          if (a2 <= a1)
          {
            v51 = a2;
            v49 = v38;
            goto LABEL_58;
          }

          v32 = a3;
          v39 = v30;
          a3 += v28;
          v33 = v29 + v28;
          v34 = v46;
          sub_255663294(v29 + v28, v46, &qword_27F7BE4A8, &unk_255756FF0);
          v35 = v47;
          sub_255663294(v31, v47, &qword_27F7BE4A8, &unk_255756FF0);
          v36 = *(v48 + 48);
          v45 = *(v34 + v36);
          v37 = *(v35 + v36);
          sub_255674B20(v35, &qword_27F7BE4A8, &unk_255756FF0);
          sub_255674B20(v34, &qword_27F7BE4A8, &unk_255756FF0);
          if (v45 < v37)
          {
            break;
          }

          v30 = v33;
          if (v32 < v29 || a3 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v44;
            v28 = v40;
            a1 = v41;
          }

          else
          {
            v31 = v44;
            v28 = v40;
            a1 = v41;
            if (v32 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v33;
          a2 = v43;
          if (v33 <= v42)
          {
            goto LABEL_56;
          }
        }

        if (v32 < v43 || a3 >= v43)
        {
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v40;
          a1 = v41;
          v30 = v39;
        }

        else
        {
          a2 = v44;
          v28 = v40;
          a1 = v41;
          v30 = v39;
          if (v32 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v29 > v42);
    }

LABEL_56:
    v51 = a2;
    v49 = v30;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a3;
    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v43 = v14;
      do
      {
        v20 = v46;
        v21 = a2;
        sub_255663294(a2, v46, &qword_27F7BE4A8, &unk_255756FF0);
        v22 = v47;
        sub_255663294(a4, v47, &qword_27F7BE4A8, &unk_255756FF0);
        v23 = *(v48 + 48);
        v24 = *(v20 + v23);
        v25 = *(v22 + v23);
        sub_255674B20(v22, &qword_27F7BE4A8, &unk_255756FF0);
        sub_255674B20(v20, &qword_27F7BE4A8, &unk_255756FF0);
        if (v24 >= v25)
        {
          v26 = v43;
          v27 = a4 + v43;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = v27;
          a4 += v26;
        }

        else
        {
          v26 = v43;
          a2 += v43;
          if (a1 < v21 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v26;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v44);
    }
  }

LABEL_58:
  sub_255747D30(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_255747C90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255747D1C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_255747D30(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void (*sub_255747E20(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C3E830](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_255747EA0;
  }

  __break(1u);
  return result;
}

void (*sub_255747EA8(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C3E830](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_25574905C;
  }

  __break(1u);
  return result;
}

uint64_t sub_255747F28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_255750A30();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_255750A30();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_255669798(&qword_27F7C0428, &qword_27F7C0420, &qword_25575F3E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0420, &qword_25575F3E0);
            v9 = sub_255747EA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JournalMO();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2557480CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_255750A30();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_255750A30();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_255669798(&qword_27F7C0410, &qword_27F7C0408, &qword_25575F3D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0408, &qword_25575F3D0);
            v9 = sub_255747E20(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JournalEntryAssetMO();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_255748284(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v153 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v163 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v162 = &v148 - v14;
  v15 = sub_25574F0D0();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v171 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v165 = &v148 - v20;
  MEMORY[0x28223BE20](v19);
  v158 = a3;
  v23 = a3[1];
  v170 = a5;
  if (v23 < 1)
  {
    swift_bridgeObjectRetain_n();
    v25 = MEMORY[0x277D84F90];
LABEL_106:
    v172 = *v153;
    if (v172)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_108;
    }

    goto LABEL_146;
  }

  v159 = &v148 - v22;
  v150 = a4;
  v164 = (v21 + 32);
  v160 = (v21 + 48);
  v168 = (v21 + 8);
  v169 = (v21 + 56);
  swift_bridgeObjectRetain_n();
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v166 = v15;
  while (1)
  {
    v26 = v24;
    if (v24 + 1 >= v23)
    {
      v23 = v24 + 1;
    }

    else
    {
      v152 = v25;
      v27 = v24;
      v28 = *v158;
      v29 = *(*v158 + 8 * (v24 + 1));
      v173 = *(*v158 + 8 * v27);
      v30 = v173;
      v174[0] = v29;
      v31 = v29;
      v32 = v30;
      v33 = sub_25567AAF8(v174, &v173, v170);
      if (v6)
      {
        swift_bridgeObjectRelease_n();

        return;
      }

      v34 = v33;

      v35 = v27 + 2;
      v151 = v27;
      v36 = 8 * v27;
      v37 = (v28 + 8 * v27 + 16);
      while (v23 != v35)
      {
        v38 = *v37;
        v173 = *(v37 - 1);
        v39 = v173;
        v174[0] = v38;
        v40 = v38;
        v41 = v39;
        LODWORD(v39) = sub_25567AAF8(v174, &v173, v170);

        ++v35;
        ++v37;
        if ((v34 ^ v39))
        {
          v23 = v35 - 1;
          break;
        }
      }

      v25 = v152;
      v15 = v166;
      v26 = v151;
      if (v34)
      {
        if (v23 < v151)
        {
          goto LABEL_140;
        }

        if (v151 < v23)
        {
          v42 = 8 * v23 - 8;
          v43 = v23;
          v44 = v151;
          do
          {
            if (v44 != --v43)
            {
              v46 = *v158;
              if (!*v158)
              {
                goto LABEL_144;
              }

              v45 = *(v46 + v36);
              *(v46 + v36) = *(v46 + v42);
              *(v46 + v42) = v45;
            }

            ++v44;
            v42 -= 8;
            v36 += 8;
          }

          while (v44 < v43);
        }
      }
    }

    v47 = v158[1];
    if (v23 >= v47)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v23, v26))
    {
      goto LABEL_136;
    }

    if (v23 - v26 >= v150)
    {
      goto LABEL_55;
    }

    v48 = v26 + v150;
    if (__OFADD__(v26, v150))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_142:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_143:

      __break(1u);
LABEL_144:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_145:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_146:
      swift_bridgeObjectRelease_n();
      __break(1u);
      return;
    }

    if (v48 >= v47)
    {
      v48 = v158[1];
    }

    if (v48 < v26)
    {
      goto LABEL_139;
    }

    if (v23 != v48)
    {
      v152 = v25;
      v149 = v6;
      v161 = *v158;
      v49 = v161 + 8 * v23 - 8;
      v151 = v26;
      v50 = v26 - v23;
      v51 = v159;
      v154 = v48;
      do
      {
        v52 = v49;
        v53 = *(v161 + 8 * v23);
        v155 = v50;
        v156 = v52;
        v157 = v23;
        v54 = v52;
        do
        {
          v55 = *v54;
          v56 = v53;
          v172 = v55;
          v167 = v56;
          v57 = [v56 id];
          if (v57)
          {
            v58 = v165;
            v59 = v57;
            sub_25574F080();

            v60 = *v164;
            v61 = v162;
            (*v164)(v162, v58, v15);
            v62 = *v169;
            (*v169)(v61, 0, 1, v15);
            v60(v51, v61, v15);
          }

          else
          {
            v62 = *v169;
            v63 = v162;
            (*v169)(v162, 1, 1, v15);
            sub_25574F0C0();
            if ((*v160)(v63, 1, v15) != 1)
            {
              sub_255674B20(v162, &unk_27F7BED20, &unk_2557551D0);
            }
          }

          v64 = v170;
          if (*(v170 + 16))
          {
            v65 = sub_25567AF04(v51);
            v66 = *v168;
            if (v67)
            {
              v68 = *(*(v64 + 56) + 8 * v65);
            }

            else
            {
              v68 = 0;
            }

            v66(v51, v15);
          }

          else
          {
            v68 = 0;
            v66 = *v168;
            (*v168)(v51, v15);
          }

          v69 = [v172 id];
          if (v69)
          {
            v70 = v165;
            v71 = v69;
            sub_25574F080();

            v72 = *v164;
            v73 = v68;
            v74 = v163;
            v75 = v70;
            v51 = v159;
            (*v164)(v163, v75, v166);
            v62(v74, 0, 1, v166);
            v76 = v74;
            v68 = v73;
            v15 = v166;
            v72(v171, v76, v166);
          }

          else
          {
            v77 = v163;
            v62(v163, 1, 1, v15);
            sub_25574F0C0();
            if ((*v160)(v77, 1, v15) != 1)
            {
              sub_255674B20(v163, &unk_27F7BED20, &unk_2557551D0);
            }
          }

          v78 = v170;
          if (*(v170 + 16) && (v79 = sub_25567AF04(v171), (v80 & 1) != 0))
          {
            v81 = *(*(v78 + 56) + 8 * v79);
          }

          else
          {
            v81 = 0;
          }

          v66(v171, v15);

          if (v68 >= v81)
          {
            break;
          }

          if (!v161)
          {
            goto LABEL_141;
          }

          v82 = *v54;
          v53 = *(v54 + 8);
          *v54 = v53;
          *(v54 + 8) = v82;
          v54 -= 8;
        }

        while (!__CFADD__(v50++, 1));
        v23 = v157 + 1;
        v49 = v156 + 8;
        v50 = v155 - 1;
      }

      while (v157 + 1 != v154);
      v23 = v154;
      v6 = v149;
      v25 = v152;
      v26 = v151;
    }

LABEL_55:
    if (v23 < v26)
    {
      goto LABEL_135;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v157 = v23;
    v85 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_255698F94(0, *(v25 + 2) + 1, 1, v25);
    }

    v87 = *(v25 + 2);
    v86 = *(v25 + 3);
    v88 = v87 + 1;
    if (v87 >= v86 >> 1)
    {
      v25 = sub_255698F94((v86 > 1), v87 + 1, 1, v25);
    }

    *(v25 + 2) = v88;
    v89 = &v25[16 * v87];
    v90 = v157;
    *(v89 + 4) = v85;
    *(v89 + 5) = v90;
    v172 = *v153;
    if (!v172)
    {
      goto LABEL_145;
    }

    if (v87)
    {
      break;
    }

LABEL_3:
    v24 = v157;
    v23 = v158[1];
    v15 = v166;
    if (v157 >= v23)
    {
      goto LABEL_106;
    }
  }

  while (1)
  {
    v91 = v88 - 1;
    if (v88 >= 4)
    {
      v96 = &v25[16 * v88 + 32];
      v97 = *(v96 - 64);
      v98 = *(v96 - 56);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_122;
      }

      v101 = *(v96 - 48);
      v100 = *(v96 - 40);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_123;
      }

      v103 = &v25[16 * v88];
      v105 = *v103;
      v104 = *(v103 + 1);
      v102 = __OFSUB__(v104, v105);
      v106 = v104 - v105;
      if (v102)
      {
        goto LABEL_125;
      }

      v102 = __OFADD__(v94, v106);
      v107 = v94 + v106;
      if (v102)
      {
        goto LABEL_128;
      }

      if (v107 >= v99)
      {
        v125 = &v25[16 * v91 + 32];
        v127 = *v125;
        v126 = *(v125 + 1);
        v102 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v102)
        {
          goto LABEL_134;
        }

        if (v94 < v128)
        {
          v91 = v88 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

    if (v88 == 3)
    {
      v92 = *(v25 + 4);
      v93 = *(v25 + 5);
      v102 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      v95 = v102;
LABEL_75:
      if (v95)
      {
        goto LABEL_124;
      }

      v108 = &v25[16 * v88];
      v110 = *v108;
      v109 = *(v108 + 1);
      v111 = __OFSUB__(v109, v110);
      v112 = v109 - v110;
      v113 = v111;
      if (v111)
      {
        goto LABEL_127;
      }

      v114 = &v25[16 * v91 + 32];
      v116 = *v114;
      v115 = *(v114 + 1);
      v102 = __OFSUB__(v115, v116);
      v117 = v115 - v116;
      if (v102)
      {
        goto LABEL_130;
      }

      if (__OFADD__(v112, v117))
      {
        goto LABEL_131;
      }

      if (v112 + v117 >= v94)
      {
        if (v94 < v117)
        {
          v91 = v88 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_89;
    }

    v118 = &v25[16 * v88];
    v120 = *v118;
    v119 = *(v118 + 1);
    v102 = __OFSUB__(v119, v120);
    v112 = v119 - v120;
    v113 = v102;
LABEL_89:
    if (v113)
    {
      goto LABEL_126;
    }

    v121 = &v25[16 * v91];
    v123 = *(v121 + 4);
    v122 = *(v121 + 5);
    v102 = __OFSUB__(v122, v123);
    v124 = v122 - v123;
    if (v102)
    {
      goto LABEL_129;
    }

    if (v124 < v112)
    {
      goto LABEL_3;
    }

LABEL_96:
    v129 = v91 - 1;
    if (v91 - 1 >= v88)
    {
      break;
    }

    v130 = *v158;
    if (!*v158)
    {
      goto LABEL_142;
    }

    v131 = v6;
    v6 = v25;
    v132 = *&v25[16 * v129 + 32];
    v133 = v91;
    v134 = *&v25[16 * v91 + 40];
    v135 = (v130 + 8 * v132);
    v136 = (v130 + 8 * *&v25[16 * v91 + 32]);
    v25 = (v130 + 8 * v134);
    v137 = v170;

    sub_255746FE4(v135, v136, v25, v172, v137);
    if (v131)
    {
      swift_bridgeObjectRelease_n();

      return;
    }

    if (v134 < v132)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_255747D1C(v6);
    }

    if (v129 >= *(v6 + 2))
    {
      goto LABEL_121;
    }

    v138 = &v6[16 * v129];
    *(v138 + 4) = v132;
    *(v138 + 5) = v134;
    v175 = v6;
    sub_255747C90(v133);
    v25 = v175;
    v88 = *(v175 + 2);
    v6 = 0;
    if (v88 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  v25 = sub_255747D1C(v25);
LABEL_108:
  v175 = v25;
  v139 = *(v25 + 2);
  if (v139 >= 2)
  {
    do
    {
      v140 = *v158;
      if (!*v158)
      {
        goto LABEL_143;
      }

      v141 = *&v25[16 * v139];
      v142 = *&v25[16 * v139 + 24];
      v143 = (v140 + 8 * v141);
      v144 = (v140 + 8 * *&v25[16 * v139 + 16]);
      v145 = (v140 + 8 * v142);
      v146 = v170;

      sub_255746FE4(v143, v144, v145, v172, v146);
      if (v6)
      {
        break;
      }

      if (v142 < v141)
      {
        goto LABEL_132;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_255747D1C(v25);
      }

      if (v139 - 2 >= *(v25 + 2))
      {
        goto LABEL_133;
      }

      v147 = &v25[16 * v139];
      *v147 = v141;
      *(v147 + 1) = v142;
      v175 = v25;
      sub_255747C90(v139 - 1);
      v25 = v175;
      v139 = *(v175 + 2);
    }

    while (v139 > 1);
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_255748E38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AssetPlacement(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255748EC8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_255748EE8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_255750E90();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

unint64_t sub_255748F3C()
{
  result = qword_27F7C03E8;
  if (!qword_27F7C03E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C03E0, &qword_25575F3C0);
    sub_255748FF8(&qword_27F7BE648, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C03E8);
  }

  return result;
}

uint64_t sub_255748FF8(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall AudioIntensityProcessor.process(buffer:)(AVAudioPCMBuffer buffer)
{
  isa = buffer.super.super.isa;
  __C[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  if (*v1)
  {
    goto LABEL_6;
  }

  v4 = [(objc_class *)buffer.super.super.isa format];
  [v4 sampleRate];
  v6 = v5;

  v7 = v6 / 25.0;
  if (COERCE__INT64(fabs(v6 / 25.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_72;
  }

  if (v7 <= -1.0)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  if (v7 >= 4294967300.0)
  {
    goto LABEL_74;
  }

  v8 = v7;
  *(v72 + 8) = v8;
  v9 = [(objc_class *)isa format];
  v3 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v9 frameCapacity:v8];

  *v72 = v3;
LABEL_6:
  v10 = 0;
  v70 = MEMORY[0x277D84F90];
  v71 = v3;
  for (i = [(objc_class *)isa frameLength]; v10 < i && v3 != 0; i = [(objc_class *)isa frameLength])
  {
    v14 = *(v72 + 8);
    if (__CFADD__(v10, v14))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v15 = v3;
    v16 = [(objc_class *)isa frameLength];
    v17 = v16 - v10;
    if (v16 < v10)
    {
      goto LABEL_66;
    }

    v18 = [v15 frameLength];
    v19 = v14 - v18;
    if (v14 < v18)
    {
      goto LABEL_67;
    }

    if (v17 >= v10 + v14)
    {
      v20 = v10 + v14;
    }

    else
    {
      v20 = v17;
    }

    if (v19 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = [v15 floatChannelData];
    if (v22)
    {
      v23 = *v22;
      v24 = [(objc_class *)isa floatChannelData];
      if (v24)
      {
        v25 = *v24;
        v26 = [v15 frameLength];
        v27 = [(objc_class *)isa format];
        v28 = [v27 streamDescription];

        v29 = v28[6] * v21;
        if ((v21 * v28[6]) >> 64 != v29 >> 63)
        {
          goto LABEL_70;
        }

        memcpy((v23 + 4 * v26), (v25 + 4 * v10), v29);
        v3 = v71;
      }
    }

    v30 = [v15 frameLength];
    if (__CFADD__(v30, v21))
    {
      goto LABEL_68;
    }

    [v15 setFrameLength_];
    v31 = [v15 frameLength];
    if (v31 != [v15 frameCapacity])
    {
      goto LABEL_8;
    }

    v32 = [v15 averagePowerPerChannel];
    sub_255669A88(0, &qword_27F7C0438, 0x277CCABB0);
    v33 = sub_255750380();

    if (v33 >> 62)
    {
      if (!sub_255750A30())
      {
LABEL_46:

        goto LABEL_9;
      }
    }

    else if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x259C3E830](0, v33);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      v34 = *(v33 + 32);
    }

    v35 = v34;

    [v35 floatValue];
    v37 = v36;

    v38 = [v15 floatChannelData];
    if (v38)
    {
      v39 = *v38;
      v40 = [v15 frameLength];
      LODWORD(__C[0]) = 2143289344;
      vDSP_maxmgv(v39, 1, __C, v40);
      v41 = __C[0];
      v3 = v71;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v42 = v68;
      }

      else
      {
        v42 = sub_255699098(0, *(v68 + 16) + 1, 1, v68);
      }

      v44 = *(v42 + 2);
      v43 = *(v42 + 3);
      if (v44 >= v43 >> 1)
      {
        v42 = sub_255699098((v43 > 1), v44 + 1, 1, v42);
      }

      *(v42 + 2) = v44 + 1;
      v69 = v42;
      *&v42[4 * v44 + 32] = v37;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v45 = v70;
      }

      else
      {
        v45 = sub_255699098(0, *(v70 + 2) + 1, 1, v70);
      }

      v47 = *(v45 + 2);
      v46 = *(v45 + 3);
      if (v47 >= v46 >> 1)
      {
        v45 = sub_255699098((v46 > 1), v47 + 1, 1, v45);
      }

      *(v45 + 2) = v47 + 1;
      v70 = v45;
      *&v45[4 * v47 + 32] = v41;
      [v15 setFrameLength_];
LABEL_8:

      goto LABEL_9;
    }

    v3 = v71;
LABEL_9:
    v12 = __CFADD__(v10, v21);
    v10 += v21;
    if (v12)
    {
      goto LABEL_69;
    }
  }

  v48 = *(v70 + 2);
  v49 = MEMORY[0x277D84F90];
  if (v48)
  {
    __C[0] = MEMORY[0x277D84F90];
    sub_255672DE4(0, v48, 0);
    v50 = v68;
    v51 = __C[0];
    v52 = (v70 + 32);
    v53 = *(__C[0] + 16);
    do
    {
      v54 = *v52;
      __C[0] = v51;
      v55 = v51[3];
      if (v53 >= v55 >> 1)
      {
        sub_255672DE4((v55 > 1), v53 + 1, 1);
        v50 = v68;
        v51 = __C[0];
      }

      v51[2] = v53 + 1;
      *&v51[v53 + 4] = v54;
      ++v52;
      ++v53;
      --v48;
    }

    while (v48);
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
    v50 = v68;
  }

  v56 = *(v50 + 16);
  v57 = v50;
  if (v56)
  {
    __C[0] = v49;
    sub_255672DE4(0, v56, 0);
    v58 = __C[0];
    v59 = *(__C[0] + 16);
    v60 = 32;
    v61 = v57;
    do
    {
      v62 = *(v61 + v60);
      __C[0] = v58;
      v63 = v58[3];
      if (v59 >= v63 >> 1)
      {
        sub_255672DE4((v63 > 1), v59 + 1, 1);
        v61 = v68;
        v58 = __C[0];
      }

      v58[2] = v59 + 1;
      *&v58[v59 + 4] = v62;
      v60 += 4;
      ++v59;
      --v56;
    }

    while (v56);
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  v64 = *MEMORY[0x277D85DE8];
  v65 = v51;
  v66 = v58;
  result._1._rawValue = v66;
  result._0._rawValue = v65;
  return result;
}

unint64_t sub_2557496D4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a1 floatChannelData];
  v3 = v2;
  if (v2)
  {
    v4 = *v2;
    __C = 2143289344;
    vDSP_maxmgv(v4, 1, &__C, [a1 frameLength]);
    v5 = __C;
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5 | ((v3 == 0) << 32);
}

uint64_t AudioIntensityProcessor.readAudioIntensityLevels(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4[19] = a3;
  v4[20] = v3;
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_255750490();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[21] = v5;
  v4[22] = v7;
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_255749858, v5, v7);
}

uint64_t sub_255749858()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:1 channels:48000.0];
  *(v0 + 184) = v1;
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v3 = *(v0 + 152);
  v4 = v2;
  v5 = objc_allocWithZone(MEMORY[0x277CE6410]);
  *(v0 + 80) = 0;
  v6 = v3;
  v7 = v4;
  v8 = [v5 initWithAsset:v6 error:v0 + 80];
  *(v0 + 192) = v8;
  v9 = *(v0 + 80);
  if (v8)
  {
    v10 = *(v0 + 152);
    v11 = v9;

    v12 = *MEMORY[0x277CE5E48];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_255749ADC;
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0440, &unk_25575F3F8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_25574A2E0;
    *(v0 + 104) = &block_descriptor_2;
    *(v0 + 112) = v13;
    [v10 loadTracksWithMediaType:v12 completionHandler:v0 + 80];
    v14 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v15 = *(v0 + 152);
    v16 = v9;
    sub_25574ED90();

    swift_willThrow();
    v17 = *(v0 + 8);
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }
}

uint64_t sub_255749ADC()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  if (v3)
  {

    v4 = *(v1 + 168);
    v5 = *(v1 + 176);
    v6 = sub_25574A224;
  }

  else
  {
    v4 = *(v1 + 168);
    v5 = *(v1 + 176);
    v6 = sub_255749C28;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25574A224()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 152);
  swift_willThrow();

  v5 = *(v0 + 200);
  v6 = *(v0 + 8);
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_25574A2E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_255669A88(0, &qword_27F7C0448, 0x277CE6450);
    **(*(v4 + 64) + 40) = sub_255750380();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_25574A3D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_255750A30();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_255750A30();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_25574AACC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_255747F28(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_25574A4C8(uint64_t a1)
{
  v6 = v1;
  v7 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_255750A30();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = *v1;
  if (!(*v1 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v8);
    result = v10 + v8;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v9 < 0)
  {
    v17 = *v1;
  }

  v18 = sub_255750A30();
  v11 = __OFADD__(v18, v8);
  result = v18 + v8;
  if (v11)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_25574AACC(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_25574570C(&v35, (v3 + 8 * v13 + 32), v14, v7);
  if (result < v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_25568B1C8();
    *v6 = v2;
    return result;
  }

LABEL_18:
  v8 = *(v3 + 16);
  v7 = v35;
  v3 = v36;
  v5 = v38;
  v32 = v37;
  v4 = v39;
  if (v35 < 0)
  {
LABEL_22:
    if (!sub_255750A60())
    {
      goto LABEL_11;
    }

    type metadata accessor for JournalMO();
    result = swift_dynamicCast();
    v20 = v34;
    goto LABEL_33;
  }

  if (!v39)
  {
    v21 = (v37 + 64) >> 6;
    if (v21 <= (v38 + 1))
    {
      v22 = v38 + 1;
    }

    else
    {
      v22 = (v37 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v19 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_61;
      }

      if (v19 >= v21)
      {
        v20 = 0;
        v4 = 0;
        goto LABEL_32;
      }

      v4 = *(v36 + 8 * v19);
      ++v5;
      if (v4)
      {
        goto LABEL_31;
      }
    }
  }

  v19 = v38;
LABEL_31:
  v24 = __clz(__rbit64(v4));
  v4 &= v4 - 1;
  v20 = *(*(v35 + 48) + ((v19 << 9) | (8 * v24)));
  result = v20;
  v23 = v19;
LABEL_32:
  v38 = v23;
  v39 = v4;
  v5 = v23;
LABEL_33:
  if (!v20)
  {
    goto LABEL_11;
  }

  v25 = (v32 + 64) >> 6;
LABEL_35:
  if (v8 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_2557503B0();
  }

  v2 = *v6;
  v26 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v31 = *v6 & 0xFFFFFFFFFFFFFF8;
  if (v8 > v26)
  {
    v26 = v8;
  }

  v33 = v26;
  while (1)
  {
    while (1)
    {
      if (v8 == v33)
      {
        v8 = v33;
        *(v31 + 16) = v33;
        goto LABEL_35;
      }

      *(v31 + 32 + 8 * v8++) = v20;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_255750A60())
      {
        type metadata accessor for JournalMO();
        result = swift_dynamicCast();
        v20 = v34;
        if (v34)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    if (!v4)
    {
      break;
    }

    v27 = v5;
LABEL_56:
    v30 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v20 = *(*(v7 + 48) + ((v27 << 9) | (8 * v30)));
    result = v20;
    v29 = v27;
LABEL_41:
    v35 = v7;
    v36 = v3;
    v37 = v32;
    v38 = v29;
    v5 = v29;
    v39 = v4;
    if (!v20)
    {
LABEL_58:
      *(v31 + 16) = v8;
      goto LABEL_11;
    }
  }

  if (v25 <= (v5 + 1))
  {
    v28 = v5 + 1;
  }

  else
  {
    v28 = (v32 + 64) >> 6;
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v27 >= v25)
    {
      v20 = 0;
      v4 = 0;
      goto LABEL_41;
    }

    v4 = *(v3 + 8 * v27);
    ++v5;
    if (v4)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_25574A830(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_255698C80(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25574A91C(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25569919C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_25574AA1C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 12))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25574AA78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25574AACC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_255750A30();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_255750B70();
  *v1 = result;
  return result;
}

uint64_t AVAssetReaderSequence.init(asset:audioFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_255750490();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[22] = v6;
  v5[23] = v8;
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25574AC38, v6, v8);
}

uint64_t sub_25574AC38()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  v2 = v0[21];
  v3 = objc_allocWithZone(MEMORY[0x277CE6410]);
  v0[10] = 0;
  v4 = v1;
  v5 = v2;
  v6 = [v3 initWithAsset:v4 error:v0 + 10];
  v0[24] = v6;
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[20];
    v9 = *MEMORY[0x277CE5E48];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_25574AE74;
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0440, &unk_25575F3F8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_25574A2E0;
    v0[13] = &block_descriptor_3;
    v0[14] = v10;
    v11 = v7;
    [v8 loadTracksWithMediaType:v9 completionHandler:v0 + 10];

    v12 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v14 = v0[20];
    v13 = v0[21];
    v15 = v7;
    sub_25574ED90();

    swift_willThrow();
    v16 = v0[1];
    v17 = *MEMORY[0x277D85DE8];

    return v16();
  }
}

uint64_t sub_25574AE74()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  if (v3)
  {

    v4 = *(v1 + 176);
    v5 = *(v1 + 184);
    v6 = sub_25574B1B0;
  }

  else
  {
    v4 = *(v1 + 176);
    v5 = *(v1 + 184);
    v6 = sub_25574AFC0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25574AFC0()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = [v2 settings];

  sub_255750080();
  v5 = objc_allocWithZone(MEMORY[0x277CE6418]);
  sub_25574B2C8();
  v6 = sub_255750370();

  v7 = sub_255750070();

  v8 = [v5 initWithAudioTracks:v6 audioSettings:v7];

  v9 = v8;
  [v9 setAlwaysCopiesSampleData_];
  LODWORD(v1) = [v1 canAddOutput_];

  if (v1)
  {
    v10 = *(v0 + 192);
    [v10 addOutput_];
    [v10 startReading];
  }

  v11 = *(v0 + 192);
  v12 = *(v0 + 152);
  *v12 = *(v0 + 160);
  *(v12 + 16) = v11;
  *(v12 + 24) = v9;
  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_25574B1B0()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[20];
  v3 = v0[21];
  swift_willThrow();

  v5 = v0[25];
  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

id AVAssetReaderSequence.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v9 = *(v1 + 24);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v9;
  v5 = v2;
  v6 = v3;
  v7 = v4;

  return v9;
}

unint64_t sub_25574B2C8()
{
  result = qword_27F7C0448;
  if (!qword_27F7C0448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7C0448);
  }

  return result;
}

AVAudioPCMBuffer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AVAssetReaderSequence.next()()
{
  v2 = sub_2557507F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v0;
  v8 = *(v0 + 2);
  v7 = *(v0 + 3);
  v9 = [v7 copyNextSampleBuffer];
  if (v9)
  {
    v12 = v9;
    while (1)
    {
      v13 = sub_2557507E0();
      if (v13 >= 1)
      {
        break;
      }

      v9 = [v7 copyNextSampleBuffer];
      v12 = v9;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v15[1] = v15;
    MEMORY[0x28223BE20](v13);
    *&v15[-4] = v16;
    v15[-2] = v8;
    v15[-1] = v7;
    v14 = *MEMORY[0x277CBECE8];
    v17 = MEMORY[0x277D84F90];
    sub_25574B6A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0458, &qword_25575F460);
    sub_25574B6F8();
    sub_2557509A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0468, &qword_25575F468);
    sub_2557507D0();
    (*(v3 + 8))(v6, v2);

    if (!v1)
    {
      v9 = v18;
    }
  }

LABEL_8:
  result.value.super._impl = v10;
  result.value.super.super.isa = v9;
  result.is_nil = v11;
  return result;
}

void sub_25574B558(void *a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = sub_25574FFE0();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = objc_allocWithZone(MEMORY[0x277CB83C8]);
  v12[4] = nullsub_1;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_25574B9BC;
  v12[3] = &block_descriptor_5_0;
  v9 = _Block_copy(v12);
  v10 = a1;

  v11 = [v8 initWithPCMFormat:a2 bufferListNoCopy:v6 deallocator:v9];
  _Block_release(v9);
  *a3 = v11;
}

void sub_25574B680(void *a1@<X1>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  sub_25574B558(a1, v2[3], a2);
}

unint64_t sub_25574B6A0()
{
  result = qword_27F7C0450;
  if (!qword_27F7C0450)
  {
    sub_2557507F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0450);
  }

  return result;
}

unint64_t sub_25574B6F8()
{
  result = qword_27F7C0460;
  if (!qword_27F7C0460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C0458, &qword_25575F460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0460);
  }

  return result;
}

unint64_t sub_25574B760()
{
  result = qword_27F7C0470;
  if (!qword_27F7C0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0470);
  }

  return result;
}

__n128 sub_25574B7B4@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t sub_25574B7CC(unint64_t *a1)
{
  v3 = AVAssetReaderSequence.next()();
  if (!v4)
  {
    *a1 = v3;
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_25574B854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_255750490();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_25574B8E8, v6, v8);
}

uint64_t sub_25574B8E8()
{
  v1 = *(v0 + 32);
  v2 = AVAssetReaderSequence.next()();
  if (v3)
  {
    v4 = *(v0 + 40);
    *(v0 + 16) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    swift_willThrowTypedImpl();
    *v4 = v3;
  }

  else
  {
    **(v0 + 24) = v2;
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25574B9BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper_3_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AppStorageMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id AppStorageMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AppStorageMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id AppStorageMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStorageMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id JournalEntryAssetAttachmentMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id JournalEntryAssetAttachmentMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for JournalEntryAssetAttachmentMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id JournalEntryAssetAttachmentMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalEntryAssetAttachmentMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id JournalEntryAssetFileAttachmentMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id JournalEntryAssetFileAttachmentMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id JournalEntryAssetFileAttachmentMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalEntryAssetFileAttachmentMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id JournalEntryAssetMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id JournalEntryAssetMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for JournalEntryAssetMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id JournalEntryAssetMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalEntryAssetMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id JournalEntryMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id JournalEntryMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for JournalEntryMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id JournalEntryMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalEntryMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id JournalMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id JournalMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for JournalMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id JournalMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SyncDataMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id SyncDataMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SyncDataMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id SyncDataMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncDataMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25574C18C(void *a1)
{
  [v1 setMergeableAttributes_];
}

void (*sub_25574C1D4(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 mergeableAttributes];
  return sub_25574C230;
}

void sub_25574C230(id *a1)
{
  v1 = *a1;
  [a1[1] setMergeableAttributes_];
}

uint64_t sub_25574C278()
{
  v1 = [v0 recordSystemFields];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_25574EF90();

  return v3;
}

void sub_25574C2E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v5 = 0;
    [v2 setRecordSystemFields_];
  }

  else
  {
    v5 = sub_25574EF80();
    sub_2556A15B8(a1, a2);
    [v2 setRecordSystemFields_];
  }
}

void (*sub_25574C364(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25574C41C(v2);
  return sub_25574C3D4;
}

void sub_25574C3D4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_25574C41C(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 recordSystemFields];
  if (v3)
  {
    v4 = v3;
    v5 = sub_25574EF90();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_25574C4A4;
}

void sub_25574C4A4(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = *a1;
    if (v3 >> 60 == 15)
    {
      v5 = 0;
    }

    else
    {
      sub_255674F54(*a1, v3);
      v5 = sub_25574EF80();
      sub_2556A15B8(v4, v3);
    }

    [*(a1 + 16) setRecordSystemFields_];

    sub_2556A15B8(v4, v3);
  }

  else
  {
    if (v3 >> 60 == 15)
    {
      v7 = 0;
      [*(a1 + 16) setRecordSystemFields_];
    }

    else
    {
      v6 = *a1;
      v7 = sub_25574EF80();
      sub_2556A15B8(v6, v3);
      [*(a1 + 16) setRecordSystemFields_];
    }
  }
}

id (*sub_25574C5F4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isUploadedToCloud];
  return sub_25574C648;
}

id static AppStorageMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

unint64_t sub_25574C6D4()
{
  result = qword_27F7C0478;
  if (!qword_27F7C0478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F7BED20, &unk_2557551D0);
    sub_2556C635C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0478);
  }

  return result;
}

void sub_25574C758(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_25567B1A4(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574F050();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setId_];
}

void sub_25574C884(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_25574EF90();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_25574C8E8(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = *a1;
    v7 = sub_25574EF80();
  }

  v9 = v7;
  [v6 *a5];
}

uint64_t sub_25574C960@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 id];
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

  return v7(a1, v5, 1, v6);
}

id static JournalEntryAssetAttachmentMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_25574CAAC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 data];
  if (v3)
  {
    v4 = v3;
    v5 = sub_25574EF90();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_25574CB14(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_25574EF80();
  }

  v5 = v3;
  [v2 setData_];
}

uint64_t sub_25574CB8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for JournalEntryAssetAttachmentMO();
  result = sub_255750B30();
  *a1 = result;
  return result;
}

void (*sub_25574CBF4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25574C41C(v2);
  return sub_25574C3D4;
}

void sub_25574CC88(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2557501B0();
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

void sub_25574CCEC(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_255750180();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_25574CD5C@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_25574F080();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_25574F0D0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_25574CDFC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_25567B1A4(a1, &v16 - v10);
  v12 = *a2;
  v13 = sub_25574F0D0();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_25574F050();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

void sub_25574CF28(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 recordSystemFields];
  if (v3)
  {
    v4 = v3;
    v5 = sub_25574EF90();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_25574CF90(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_25574EF80();
  }

  v5 = v3;
  [v2 setRecordSystemFields_];
}

void (*sub_25574D044(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25574C41C(v2);
  return sub_25574C3D4;
}

void sub_25574D0B4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &unk_27F7BED20, &unk_2557551D0);
  v8 = *a2;
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574F050();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setId_];
}

void sub_25574D1F0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &unk_27F7BED20, &unk_2557551D0);
  v8 = *a2;
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574F050();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setParentID_];
}

void sub_25574D32C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_255663294(a1, &v16 - v10, &qword_27F7BEB40, &unk_255754E40);
  v12 = *a2;
  v13 = sub_25574F020();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_25574EFC0();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

uint64_t sub_25574D468@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
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
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_25574D520(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &unk_27F7BED20, &unk_2557551D0);
  v8 = *a2;
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574F050();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setSuggestionId_];
}

void sub_25574D728(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &unk_27F7BED20, &unk_2557551D0);
  v8 = *a2;
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574F050();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setId_];
}

void sub_25574D8F8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &qword_27F7BEB40, &unk_255754E40);
  v8 = *a2;
  v9 = sub_25574F020();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574EFC0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreatedDate_];
}

void sub_25574DA68(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &qword_27F7BEB40, &unk_255754E40);
  v8 = *a2;
  v9 = sub_25574F020();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574EFC0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setUpdatedDate_];
}

void sub_25574DBD8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &qword_27F7BEB40, &unk_255754E40);
  v8 = *a2;
  v9 = sub_25574F020();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574EFC0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setBundleEndDate_];
}

void sub_25574DD78(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &unk_27F7BED20, &unk_2557551D0);
  v8 = *a2;
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574F050();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setBundleId_];
}

void sub_25574DEE8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &qword_27F7BEB40, &unk_255754E40);
  v8 = *a2;
  v9 = sub_25574F020();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574EFC0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setBundleDate_];
}

void sub_25574E0A0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &qword_27F7BEB40, &unk_255754E40);
  v8 = *a2;
  v9 = sub_25574F020();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574EFC0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDeletedOnDate_];
}

void (*sub_25574E1DC(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25574C41C(v2);
  return sub_25574C3D4;
}

void sub_25574E24C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &qword_27F7BEB40, &unk_255754E40);
  v8 = *a2;
  v9 = sub_25574F020();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574EFC0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setEntryDataUpdateDate_];
}

uint64_t sub_25574E388@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
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
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_25574E440(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &qword_27F7BEB40, &unk_255754E40);
  v8 = *a2;
  v9 = sub_25574F020();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574EFC0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setRecentlyDeletedEntryDate_];
}

id sub_25574E60C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mergeableAttributes];
  *a2 = result;
  return result;
}

uint64_t sub_25574E65C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 updatedDate];
  if (v3)
  {
    v4 = v3;
    sub_25574EFF0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_25574F020();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_25574E700(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &qword_27F7BEB40, &unk_255754E40);
  v8 = *a2;
  v9 = sub_25574F020();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574EFC0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setUpdatedDate_];
}

void sub_25574E83C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &unk_27F7BED20, &unk_2557551D0);
  v8 = *a2;
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574F050();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setId_];
}

id static JournalMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void (*sub_25574E9E4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25574C41C(v2);
  return sub_25574C3D4;
}

uint64_t sub_25574EA6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for SyncDataMO();
  result = sub_255750B30();
  *a1 = result;
  return result;
}