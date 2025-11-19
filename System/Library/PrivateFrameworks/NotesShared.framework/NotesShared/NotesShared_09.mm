uint64_t sub_214F61108(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v46 - v11;
  v13 = sub_2150A3960();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v46 - v18;
  v20 = [v2 recentUpdatesGenerationDate];
  if (v20)
  {
    v21 = v20;
    sub_2150A3930();

    (*(v14 + 32))(v19, v17, v13);
    if (a1)
    {
      v46[2] = v4;
      v22 = ICCloudSyncingObject.sharedRootActivityEvents.getter();
      MEMORY[0x28223BE20](v22);
      v46[-2] = v19;
      v48 = sub_214F5FE18(sub_214F738C0, &v46[-4], v23);
      v24 = ICCloudSyncingObject.persistedActivityEvents.getter();
      MEMORY[0x28223BE20](v24);
      v46[-2] = v19;
      v47 = sub_214F5FE18(sub_214F73784, &v46[-4], v25);
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v27 = v26;
        v46[1] = 0;
        (*(v14 + 16))(v12, v19, v13);
        v28 = v10;
        v29 = *(v14 + 56);
        v29(v12, 0, 1, v13);
        v29(v28, 1, 1, v13);
        v30 = [v27 mergeableString];
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v32 = v31;
          *v6 = v27;
          swift_storeEnumTagMultiPayload();
          v33 = a1;
          v34 = _s11NotesShared21NoteEditActivityEventV6events3for2in14afterTimestamp06recentK0SayACGSo29ICTTMergeableAttributedStringC_AC7ParentsO10Foundation4DateVSgAQtFZ_0(v32, v6, v12, v28);

          sub_214F73828(v6, type metadata accessor for NoteEditActivityEvent.Parents);
        }

        else
        {

          v34 = MEMORY[0x277D84F90];
        }

        sub_214F302D4(v28, &qword_27CA41DD0);
        sub_214F302D4(v12, &qword_27CA41DD0);
        v38 = [v27 visibleAttachments];
        sub_214D55670(0, &qword_27CA44A30);
        sub_214F737A4();
        v39 = sub_2150A52E0();

        MEMORY[0x28223BE20](v40);
        v46[-2] = v19;
        sub_215068F64(sub_214F7380C, &v46[-4], v39);
        v42 = v41;

        v49 = v48;
        sub_21506873C(v47);
        v43 = sub_215067EF4(v34);

        sub_21506873C(v43);
        v44 = sub_215067EF4(v42);

        sub_21506873C(v44);
        v35 = v49;
        goto LABEL_12;
      }

      v36 = v47;
      v37 = v48;
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
      v37 = MEMORY[0x277D84F90];
    }

    v50 = v37;
    sub_21506873C(v36);
    v35 = v50;
LABEL_12:
    (*(v14 + 8))(v19, v13);
    return v35;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_214F6163C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_214F616E4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_214F6173C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3960();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  return (*(v9 + 16))(v6, v8, v9);
}

uint64_t sub_214F61838(void *a1)
{
  v2 = sub_2150A3960();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 8))(v6, v7);
  LOBYTE(a1) = sub_2150A3900();
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

uint64_t sub_214F61958@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *a1;
  v13 = sub_2150A3960();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a2, v13);
  v15 = *(v14 + 56);
  v15(v11, 0, 1, v13);
  v15(v9, 1, 1, v13);
  v16 = _s11NotesShared21NoteEditActivityEventV6events3for14afterTimestamp06recentJ0SayACGSo12ICAttachmentC_10Foundation4DateVSgANtFZ_0(v12, v11, v9);
  sub_214F302D4(v9, &qword_27CA41DD0);
  result = sub_214F302D4(v11, &qword_27CA41DD0);
  *a3 = v16;
  return result;
}

id ICActivityStreamDigest.recentUpdatesFilter.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v39 = &v37 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v40 = &v37 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = sub_2150A3960();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 recentActivityEventsStorage])
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v42, 0, sizeof(v42));
  }

  v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178);
  v41[0] = swift_allocObject();
  sub_214F43C14(v42, v41[0] + 16, &qword_27CA42178);
  v19 = sub_214F6DE50(v41, &unk_27CA44A20, &unk_2150CD760, qword_27CA42278);
  sub_214F302D4(v42, &qword_27CA42178);
  __swift_destroy_boxed_opaque_existential_0(v41);
  if (!*(v19 + 16))
  {

    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_9;
  }

  v37 = v12;
  v38 = v5;
  sub_214F6163C(v19 + 32, v43);

  v20 = v44;
  v21 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  (*(v21 + 8))(v20, v21);
  v22 = *(v16 + 56);
  v22(v14, 0, 1, v15);
  __swift_destroy_boxed_opaque_existential_0(v43);
  v23 = *(v16 + 48);
  if (v23(v14, 1, v15) == 1)
  {
LABEL_9:
    sub_214F302D4(v14, &qword_27CA41DD0);
    return 0;
  }

  (*(v16 + 32))(v18, v14, v15);
  v24 = [v1 recentUpdatesGenerationDate];
  if (v24)
  {
    v25 = v37;
    v26 = v24;
    sub_2150A3930();

    v27 = 0;
    v28 = v40;
  }

  else
  {
    v27 = 1;
    v28 = v40;
    v25 = v37;
  }

  v22(v25, v27, 1, v15);
  v30 = *(v16 + 16);
  v40 = v18;
  v30(v28, v18, v15);
  v31 = v28;
  v22(v28, 0, 1, v15);
  v29 = [objc_allocWithZone(ICTTTextEditFilter) init];
  [v29 setAllowedUserIDs_];
  [v29 setAllowedAttachmentIDs_];
  [v29 setAllowsMissingTimestamps_];
  [v29 setAllowsMissingUsers_];
  v32 = v39;
  sub_214F43C14(v25, v39, &qword_27CA41DD0);
  v33 = 0;
  if (v23(v32, 1, v15) != 1)
  {
    v33 = sub_2150A38F0();
    (*(v16 + 8))(v32, v15);
  }

  [v29 setFromDate_];

  v34 = v38;
  sub_214F43C14(v31, v38, &qword_27CA41DD0);
  if (v23(v34, 1, v15) == 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_2150A38F0();
    (*(v16 + 8))(v34, v15);
  }

  [v29 setToDate_];

  sub_214F302D4(v31, &qword_27CA41DD0);
  sub_214F302D4(v25, &qword_27CA41DD0);
  (*(v16 + 8))(v40, v15);
  return v29;
}

uint64_t sub_214F6211C(void *a1)
{
  if ([v1 resolverStorage])
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v27, 0, sizeof(v27));
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178);
  v24[0] = swift_allocObject();
  sub_214F43C14(v27, v24[0] + 16, &qword_27CA42178);
  sub_214F6C88C(v24);
  v4 = v3;
  sub_214F302D4(v27, &qword_27CA42178);
  __swift_destroy_boxed_opaque_existential_0(v24);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 8))(ObjectType, v4);
  swift_unknownObjectRelease();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = ICCloudSyncingObject.activityEvents.getter();

  v8 = *(v7 + 16);
  if (!v8)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_18:

    return v11;
  }

  v9 = 0;
  v10 = v7 + 32;
  v11 = MEMORY[0x277D84F90];
  v23 = v7;
  while (v9 < *(v7 + 16))
  {
    sub_214F6163C(v10, v27);
    if (sub_214F6243C(v27, a1))
    {
      sub_214D7A458(v27, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86DA0(0, *(v11 + 16) + 1, 1);
        v11 = v28;
      }

      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_214F86DA0((v13 > 1), v14 + 1, 1);
      }

      v15 = v25;
      v16 = v26;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      MEMORY[0x28223BE20](v17);
      v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19);
      sub_214F71418(v14, v19, &v28, v15, v16);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v11 = v28;
      v7 = v23;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    ++v9;
    v10 += 40;
    if (v8 == v9)
    {
      goto LABEL_18;
    }
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_0(v27);

  __break(1u);
  return result;
}

BOOL sub_214F6243C(void *a1, void *a2)
{
  v4 = sub_2150A3960();
  v47 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v46 = &v45 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v45 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = [a2 allowedUserIDs];
  result = 0;
  if (!v16 || (v17 = v16, v18 = sub_2150A52E0(), v17, v20 = a1[3], v19 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v20), (*(v19 + 48))(v49, v20, v19), v21 = v49[0], v22 = v49[1], , LOBYTE(v21) = sub_215051570(v21, v22, v18), , , (v21 & 1) != 0))
  {
    v23 = [a2 allowedAttachmentIDs];
    if (!v23 || (v24 = v23, v25 = sub_2150A52E0(), v24, v26 = a1[3], v27 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v26), v28 = (*(v27 + 56))(v26, v27), LOBYTE(v26) = sub_214F6288C(v28, v25), , , (v26 & 1) == 0))
    {
      v29 = [a2 fromDate];
      v30 = v47;
      if (!v29 || (v31 = v29, sub_2150A3930(), v31, (*(v30 + 32))(v15, v13, v4), v32 = a1[3], v33 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v32), v34 = v48, (*(v33 + 8))(v32, v33), sub_214F73628(), LOBYTE(v32) = sub_2150A4A30(), v35 = *(v30 + 8), v35(v34, v4), v35(v15, v4), (v32 & 1) == 0))
      {
        v36 = [a2 toDate];
        if (!v36)
        {
          return 1;
        }

        v37 = v45;
        v38 = v36;
        sub_2150A3930();

        v39 = v46;
        (*(v30 + 32))(v46, v37, v4);
        v40 = a1[3];
        v41 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v40);
        v42 = v48;
        (*(v41 + 8))(v40, v41);
        sub_214F73628();
        LOBYTE(v40) = sub_2150A4A30();
        v43 = *(v30 + 8);
        v43(v42, v4);
        v43(v39, v4);
        if ((v40 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_214F6288C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_2150A64B0();

      sub_2150A4BB0();
      v19 = sub_2150A64E0();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_2150A6270() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t ICActivityStreamDigest.hasUnseenHighlights.getter()
{
  if ([v0 objc_hasUnseenSummary])
  {
    ICActivityStreamDigest.recentUpdatesRange.getter();
    v2 = v1 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

char *ICActivityStreamDigest.recentUpdatesRange.getter()
{
  v1 = v0;
  if ([v0 resolverStorage])
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v28, 0, sizeof(v28));
  }

  v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178);
  v27[0] = swift_allocObject();
  sub_214F43C14(v28, v27[0] + 16, &qword_27CA42178);
  sub_214F6C88C(v27);
  v3 = v2;
  sub_214F302D4(v28, &qword_27CA42178);
  __swift_destroy_boxed_opaque_existential_0(v27);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 8))(ObjectType, v3);
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = v6, (v8 = [v1 objc_recentUpdatesFilter]) == 0))
  {

    return 0;
  }

  v9 = v8;
  v10 = [objc_allocWithZone(ICTTTextEditGrouper) initWithNote_];
  [v10 setJoinsWhitespaceAndNewlineGaps_];
  [v10 setFilter_];
  v11 = [v10 groupedEdits];
  sub_214D55670(0, &qword_27CA42180);
  v12 = sub_2150A4ED0();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_21:

    v16 = MEMORY[0x277D84F90];
LABEL_22:
    v25 = sub_215062A98(v16);

    return v25;
  }

  v13 = sub_2150A59D0();
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_9:
  v26 = v5;
  *&v28[0] = MEMORY[0x277D84F90];
  result = sub_214F86ECC(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v16 = *&v28[0];
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x216062780](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v17 range];
      v21 = v20;

      *&v28[0] = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_214F86ECC((v22 > 1), v23 + 1, 1);
        v16 = *&v28[0];
      }

      ++v15;
      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
    }

    while (v13 != v15);

    v5 = v26;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t ICActivityStreamDigest.hasUnseenSummary.getter()
{
  v1 = v0;
  ObjectType = v79;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v60 - v4;
  v6 = sub_2150A6540();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2150A3960();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - v14;
  v70 = v1;
  if ([v1 recentActivityEventsStorage])
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v80 = 0u;
    v81 = 0u;
  }

  v64 = v15;
  v65 = v11;
  v66 = v10;
  v67 = v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178);
  v74 = v69;
  v73[0] = swift_allocObject();
  sub_214F43C14(&v80, v73[0] + 16, &qword_27CA42178);
  v16 = sub_214F6DE50(v73, &unk_27CA44A20, &unk_2150CD760, qword_27CA42278);
  sub_214F302D4(&v80, &qword_27CA42178);
  __swift_destroy_boxed_opaque_existential_0(v73);
  v68 = *(v16 + 16);
  if (!v68)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_27:

    v41 = [v70 lastActivitySummaryViewedDate];
    if (v41)
    {
      v42 = v64;
      v43 = v41;
      sub_2150A3930();

      if (*(v19 + 16))
      {
        sub_214F6163C(v19 + 32, &v80);

        v44 = *(&v81 + 1);
        v45 = v82;
        __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
        v46 = v67;
        (*(v45 + 8))(v44, v45);
        v47 = v65;
        v48 = v66;
        (*(v65 + 56))(v46, 0, 1, v66);
        __swift_destroy_boxed_opaque_existential_0(&v80);
        if ((*(v47 + 48))(v46, 1, v48) != 1)
        {
          v52 = v63;
          (*(v47 + 32))(v63, v46, v48);
          v49 = sub_2150A3820();
          v53 = *(v47 + 8);
          v53(v52, v48);
          v53(v42, v48);
          return v49 & 1;
        }

        (*(v47 + 8))(v42, v48);
      }

      else
      {
        v50 = v65;
        v51 = v66;
        (*(v65 + 8))(v42, v66);

        v46 = v67;
        (*(v50 + 56))(v67, 1, 1, v51);
      }

      sub_214F302D4(v46, &qword_27CA41DD0);
      v49 = 0;
    }

    else
    {

      v49 = 0;
    }

    return v49 & 1;
  }

  v60 = v9;
  v61 = v7;
  v62 = v6;
  v17 = 0;
  v18 = v16 + 32;
  v19 = MEMORY[0x277D84F90];
  while (v17 < *(v16 + 16))
  {
    sub_214F6163C(v18, &v80);
    v20 = *(&v81 + 1);
    v21 = v82;
    __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
    (*(v21 + 48))(v73, v20, v21);
    v71 = v73[0];
    v22 = v73[1];
    v72 = v74;
    if ([v70 resolverStorage])
    {
      sub_2150A58F0();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v79, 0, sizeof(v79));
    }

    v23 = v16;
    v78[3] = v69;
    v78[0] = swift_allocObject();
    sub_214F43C14(v79, v78[0] + 16, &qword_27CA42178);
    ObjectType = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42188);
    sub_214F50074(v78, v77);
    if (!swift_dynamicCast())
    {
      goto LABEL_37;
    }

    v24 = v76[1];
    sub_214F302D4(v79, &qword_27CA42178);
    __swift_destroy_boxed_opaque_existential_0(v78);
    ObjectType = swift_getObjectType();
    v25 = *(v24 + 8);

    v26 = v25(ObjectType, v24);
    if (!v26 || (v27 = v26, ObjectType = [v26 cloudAccount], v27, !ObjectType))
    {
      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();

      v16 = v23;
LABEL_21:
      sub_214D7A458(&v80, v73);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86DA0(0, *(v19 + 16) + 1, 1);
        v19 = v83;
      }

      v34 = *(v19 + 16);
      v33 = *(v19 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_214F86DA0((v33 > 1), v34 + 1, 1);
      }

      v35 = v74;
      v36 = v75;
      v37 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
      MEMORY[0x28223BE20](v37);
      v39 = &v60 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v39);
      sub_214F71418(v34, v39, &v83, v35, v36);
      __swift_destroy_boxed_opaque_existential_0(v73);
      v19 = v83;
      goto LABEL_8;
    }

    v28 = [ObjectType userRecordName];

    v29 = sub_2150A4AD0();
    ObjectType = v30;

    v16 = v23;
    if (v71 == v29 && v22 == ObjectType)
    {

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = sub_2150A6270();

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();

      if ((v31 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v80);
LABEL_8:
    ++v17;
    v18 += 40;
    if (v68 == v17)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_37:
  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v76, "Cannot cast ");
  BYTE5(v76[1]) = 0;
  HIWORD(v76[1]) = -5120;
  sub_214F50074(v78, v77);
  v55 = v60;
  sub_2150A64F0();
  v56 = v62;
  v57 = sub_2150A6100();
  MEMORY[0x2160617E0](v57);

  v58 = *(v61 + 8);
  v58(v55, v56);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v77[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42190);
  v77[0] = ObjectType;
  sub_2150A64F0();
  v59 = sub_2150A6100();
  MEMORY[0x2160617E0](v59);

  v58(v55, v56);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

BOOL ICActivityStreamDigest.hasRecentUpdates.getter()
{
  if ([v0 recentActivityEventsStorage])
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  *(&v8 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178);
  *&v7 = swift_allocObject();
  sub_214F43C14(v6, v7 + 16, &qword_27CA42178);
  v1 = sub_214F6DE50(&v7, &unk_27CA44A20, &unk_2150CD760, qword_27CA42278);
  sub_214F302D4(v6, &qword_27CA42178);
  __swift_destroy_boxed_opaque_existential_0(&v7);
  LOBYTE(v4[0]) = 1;
  ICActivityStreamDigest.summary(for:format:)(v1, v4, &v7);

  v4[0] = v7;
  v4[1] = v8;
  v5[0] = v9[0];
  *(v5 + 9) = *(v9 + 9);
  v2 = v8;
  if (v8)
  {
    sub_214F302D4(v4, &qword_27CA42198);
  }

  return v2 != 0;
}

uint64_t ICActivityStreamDigest.summary(for:format:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _OWORD *a3@<X8>)
{
  v137 = a3;
  v5 = sub_2150A6540();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v159 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  *&v157 = a1;

  v10 = &v157;
  v11 = 0;
  sub_214F6E43C(sub_214F73888, 0, sub_214F422B8, sub_214F6E5B0);
  v129 = v8;
  v130 = v6;
  v131 = v5;

  v12 = v157;
  LOBYTE(v157) = v9;
  v149 = sub_214F72134(v12, &v157);
  v142 = v9;
  LOBYTE(v157) = v9;
  v145 = sub_214F71610(v12);
  v143 = v13;
  v144 = v12;
  v14 = sub_214F724EC(v12);
  v16 = *(v14 + 2);
  if (v16)
  {
    v17 = 0;
    v147 = *(v14 + 2);
    v141 = (v16 - 1);
    v18 = (v14 + 56);
    v140 = MEMORY[0x277D84F90];
    v148 = v14;
    v139 = v14 + 56;
    do
    {
      v19 = (v18 + 32 * v17);
      v20 = v17;
      while (1)
      {
        v21 = *(v14 + 2);
        if (v20 >= v21)
        {
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        v22 = *(v19 - 3);
        v5 = *(v19 - 2);
        v23 = *(v19 - 1);
        v6 = *v19;
        v17 = (v20 + 1);
        *&v157 = v22;
        *(&v157 + 1) = v5;
        *&v158 = v23;
        *(&v158 + 1) = v6;
        MEMORY[0x28223BE20](v14);
        v10 = (&v129 - 4);
        v127 = &v157;

        if ((sub_215068340(sub_214F72F00, (&v129 - 4), v149) & 1) == 0)
        {
          break;
        }

        v19 += 4;
        ++v20;
        v14 = v148;
        if (v147 == v17)
        {
          goto LABEL_15;
        }
      }

      v10 = v140;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155[0] = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86EEC(0, v10[2] + 1, 1);
        v10 = v155[0];
      }

      v26 = v10[2];
      v25 = v10[3];
      if (v26 >= v25 >> 1)
      {
        sub_214F86EEC((v25 > 1), v26 + 1, 1);
        v10 = v155[0];
      }

      v10[2] = v26 + 1;
      v140 = v10;
      v27 = &v10[4 * v26];
      v27[4] = v22;
      v27[5] = v5;
      v27[6] = v23;
      v27[7] = v6;
      v14 = v148;
      v18 = v139;
    }

    while (v141 != v20);
  }

  else
  {
    v140 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v17 = v144;
  v10 = sub_214F72F1C(v144);

  v28 = v10;
  v29 = v10[2];
  if (v29)
  {
    v30 = 0;
    v147 = v10[2];
    v144 = v29 - 1;
    v31 = (v10 + 7);
    v139 = MEMORY[0x277D84F90];
    v141 = (v10 + 7);
    do
    {
      v19 = &v31[32 * v30];
      v32 = v30;
      while (1)
      {
        v21 = *(v28 + 2);
        if (v32 >= v21)
        {
          goto LABEL_123;
        }

        v6 = v28;
        v148 = &v129;
        v33 = *(v19 - 3);
        v17 = *(v19 - 2);
        v34 = *(v19 - 1);
        v5 = *v19;
        v30 = v32 + 1;
        *&v157 = v33;
        *(&v157 + 1) = v17;
        *&v158 = v34;
        *(&v158 + 1) = v5;
        MEMORY[0x28223BE20](v28);
        v10 = (&v129 - 4);
        v127 = &v157;

        if ((sub_215068340(sub_214F738DC, (&v129 - 4), v149) & 1) == 0)
        {
          break;
        }

        v19 += 4;
        ++v32;
        v28 = v6;
        if (v147 == v30)
        {
          goto LABEL_29;
        }
      }

      v10 = v139;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v155[0] = v10;
      if ((v35 & 1) == 0)
      {
        sub_214F86EEC(0, v10[2] + 1, 1);
        v10 = v155[0];
      }

      v28 = v6;
      v37 = v10[2];
      v36 = v10[3];
      v6 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v148 = v28;
        sub_214F86EEC((v36 > 1), v37 + 1, 1);
        v28 = v148;
        v10 = v155[0];
      }

      v10[2] = v6;
      v139 = v10;
      v38 = &v10[4 * v37];
      v38[4] = v33;
      v38[5] = v17;
      v38[6] = v34;
      v38[7] = v5;
      v31 = v141;
    }

    while (v144 != v32);
  }

  else
  {
    v139 = MEMORY[0x277D84F90];
  }

LABEL_29:

  LOBYTE(v157) = v142;
  v39 = sub_214F65C74(v149, &v157);
  LOBYTE(v5) = v40 != 0;
  if (!v40)
  {

    v141 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v17 = v39;
  v10 = v40;
  v15 = sub_21505F4D0(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = *(v15 + 2);
  v21 = *(v15 + 3);
  v19 = (v6 + 1);
  if (v6 >= v21 >> 1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    *(v15 + 2) = v19;
    v141 = v15;
    v41 = &v15[16 * v6];
    *(v41 + 4) = v17;
    *(v41 + 5) = v10;
    sub_215068790(v149);
LABEL_33:
    v42 = v142;
    LOBYTE(v157) = v142;
    v19 = v145;

    v6 = v143;

    v134 = sub_214F66AC8(v19, v6, &v157);
    v10 = v43;

    v135 = v10;
    if (!v10)
    {

      v55 = v42;
      if (v42)
      {
LABEL_101:
        v88 = sub_214F6BEE0(v140);
        if (v89)
        {
          v90 = v88;
          v91 = v89;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v92 = v141;
          }

          else
          {
            v92 = sub_21505F4D0(0, *(v141 + 2) + 1, 1, v141);
          }

          v94 = *(v92 + 2);
          v93 = *(v92 + 3);
          v95 = v140;
          if (v94 >= v93 >> 1)
          {
            v92 = sub_21505F4D0((v93 > 1), v94 + 1, 1, v92);
            v95 = v140;
          }

          *(v92 + 2) = v94 + 1;
          v96 = &v92[16 * v94];
          *(v96 + 4) = v90;
          *(v96 + 5) = v91;
          goto LABEL_114;
        }

        v97 = sub_214F6C788(v139);
        if (v98)
        {
          v99 = v97;
          v100 = v98;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_21505F4D0(0, *(v141 + 2) + 1, 1, v141);
          }

          v95 = v139;
          v92 = v141;
          v102 = *(v141 + 2);
          v101 = *(v141 + 3);
          if (v102 >= v101 >> 1)
          {
            v92 = sub_21505F4D0((v101 > 1), v102 + 1, 1, v141);
            v95 = v139;
          }

          *(v92 + 2) = v102 + 1;
          v103 = &v92[16 * v102];
          *(v103 + 4) = v99;
          *(v103 + 5) = v100;
LABEL_114:
          v104 = v92;
          sub_215068790(v95);
          v55 = v142;
          v105 = *(v104 + 2);
          if (v105)
          {
            goto LABEL_118;
          }

          goto LABEL_115;
        }
      }

      else
      {
      }

      goto LABEL_117;
    }

    v44 = *(v6 + 16);
    if (v44)
    {
      break;
    }

    v132 = 1;
LABEL_57:
    v56 = v19[2];

    if (!v56)
    {
      v58 = MEMORY[0x277D84F90];
LABEL_82:

      if (v132)
      {
        v82 = 0;
        goto LABEL_84;
      }

      if (*(v58 + 16))
      {
        *&v157 = v143;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA421A0);
        sub_214F43BCC(&qword_27CA421A8, &qword_27CA421A0);
        sub_214F733BC();
        v85 = *(sub_2150A4D50() + 16);

        if (v85 == 2)
        {
          v82 = 1;
          v19 = v145;
          if (v142)
          {
            goto LABEL_92;
          }
        }

        else
        {
          *&v157 = v145;
          v19 = v145;
          v86 = *(sub_2150A4D50() + 16);

          v82 = v86 == 2;
          if (v142)
          {
            goto LABEL_92;
          }
        }

LABEL_84:
        v83 = *(v141 + 2);
        v84 = v83;
      }

      else
      {
        v82 = 0;
        if (!v142)
        {
          goto LABEL_84;
        }

LABEL_92:
        v84 = 0;
        v83 = *(v141 + 2);
      }

      v87 = swift_isUniquelyReferenced_nonNull_native();
      v155[0] = v141;
      if (!v87 || v83 >= *(v141 + 3) >> 1)
      {
        v141 = sub_21505F4D0(v87, v83 + 1, 1, v141);
        v155[0] = v141;
      }

      sub_214F732D8(v84, v84, 1, v134, v135);

      if (v82)
      {
      }

      else
      {

        v58 = v19;
      }

      sub_215068790(v58);
      v55 = v142;
      if (v142)
      {
        LOBYTE(v5) = 1;
        goto LABEL_101;
      }

      LOBYTE(v5) = 1;
LABEL_117:
      v104 = v141;
      v105 = *(v141 + 2);
      if (v105)
      {
LABEL_118:
        if ((v55 & 1) == 0 && v105 != 1)
        {
          sub_214F6E4D8(v104, (v104 + 32), 0, 3uLL);
          v109 = v108;

          v104 = v109;
        }

        *&v157 = v104;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
        sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
        v110 = sub_2150A4A20();
        v112 = v111;

        sub_214F65078(v159, &v157);

        v113 = v157;
        v114 = BYTE8(v157);
        v115 = BYTE9(v157);
        v116 = v158;
        v117 = v137;
        *v137 = v142;
        *(v117 + 1) = v110;
        *(v117 + 2) = v112;
        *(v117 + 3) = v113;
        *(v117 + 32) = v114;
        *(v117 + 33) = v115;
        *(v117 + 40) = v116;
        *(v117 + 56) = v5;
        return result;
      }

LABEL_115:

      v107 = v137;
      *(v137 + 41) = 0u;
      v107[1] = 0u;
      v107[2] = 0u;
      *v107 = 0u;
      return result;
    }

    v57 = 0;
    v133 = v56 - 1;
    v58 = MEMORY[0x277D84F90];
    v136 = v19 + 7;
    v59 = &qword_27CA42178;
    v6 = &unk_2150C6010;
LABEL_59:
    v138 = v58;
    v60 = &v136[4 * v57];
    v17 = v57;
    while (1)
    {
      v21 = v19[2];
      if (v17 >= v21)
      {
        break;
      }

      v61 = *(v60 - 3);
      v147 = v11;
      v148 = v61;
      v62 = *(v60 - 2);
      v144 = *(v60 - 1);
      v63 = *v60;

      v149 = v62;

      if ([v146 resolverStorage])
      {
        sub_2150A58F0();
        swift_unknownObjectRelease();
      }

      else
      {
        v157 = 0u;
        v158 = 0u;
      }

      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(v59);
      v155[0] = swift_allocObject();
      sub_214F43C14(&v157, v155[0] + 16, v59);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42188);
      sub_214F50074(v155, &v152);
      if (!swift_dynamicCast())
      {
        v152 = 0;
        v153 = 0xE000000000000000;
        sub_2150A5B20();

        strcpy(v151, "Cannot cast ");
        BYTE5(v151[1]) = 0;
        HIWORD(v151[1]) = -5120;
        sub_214F50074(v155, &v152);
        v118 = v129;
        sub_2150A64F0();
        v119 = v131;
        v120 = sub_2150A6100();
        MEMORY[0x2160617E0](v120);

        v121 = *(v130 + 8);
        v121(v118, v119);
        MEMORY[0x2160617E0](544432416, 0xE400000000000000);
        v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42190);
        v152 = v64;
        sub_2150A64F0();
        v122 = sub_2150A6100();
        MEMORY[0x2160617E0](v122);

        v121(v118, v119);
        goto LABEL_130;
      }

      sub_214F302D4(&v157, v59);
      v10 = v151[0];
      v65 = v151[1];
      __swift_destroy_boxed_opaque_existential_0(v155);
      ObjectType = swift_getObjectType();
      v67 = (*(v65 + 8))(ObjectType, v65);
      if (!v67 || (v68 = v67, v69 = [v67 cloudAccount], v68, !v69))
      {
        swift_unknownObjectRelease();
LABEL_74:
        v58 = v138;
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v150 = v58;
        if ((v77 & 1) == 0)
        {
          v10 = &v150;
          sub_214F86EEC(0, *(v58 + 16) + 1, 1);
          v58 = v150;
        }

        v78 = v144;
        v5 = *(v58 + 16);
        v79 = *(v58 + 24);
        if (v5 >= v79 >> 1)
        {
          v10 = &v150;
          sub_214F86EEC((v79 > 1), v5 + 1, 1);
          v58 = v150;
        }

        v57 = v17 + 1;
        *(v58 + 16) = v5 + 1;
        v80 = (v58 + 32 * v5);
        v81 = v149;
        v80[4] = v148;
        v80[5] = v81;
        v80[6] = v78;
        v80[7] = v63;
        v19 = v145;
        v11 = v147;
        if (v133 != v17)
        {
          goto LABEL_59;
        }

        goto LABEL_82;
      }

      v70 = v6;
      v71 = v59;
      v72 = v56;
      v73 = [v69 userRecordName];

      v5 = sub_2150A4AD0();
      v75 = v74;

      v76 = v149;
      if (v148 == v5 && v149 == v75)
      {

        swift_unknownObjectRelease();
        v56 = v72;
        v59 = v71;
        v6 = v70;
      }

      else
      {
        LOBYTE(v5) = sub_2150A6270();

        swift_unknownObjectRelease();
        v10 = v76;
        v56 = v72;
        v59 = v71;
        v6 = v70;
        if ((v5 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      ++v17;
      v60 += 4;
      v19 = v145;
      v11 = v147;
      if (v56 == v17)
      {
        v58 = v138;
        goto LABEL_82;
      }
    }

LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    v15 = sub_21505F4D0((v21 > 1), v19, 1, v15);
  }

  v17 = 0;
  v19 = (v6 + 56);
  v149 = *(v6 + 16);
  while (1)
  {
    v21 = *(v6 + 16);
    if (v17 >= v21)
    {
      goto LABEL_125;
    }

    v46 = *(v19 - 3);
    v45 = *(v19 - 2);

    if ([v146 resolverStorage])
    {
      sub_2150A58F0();
      swift_unknownObjectRelease();
    }

    else
    {
      v157 = 0u;
      v158 = 0u;
    }

    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178);
    v155[0] = swift_allocObject();
    sub_214F43C14(&v157, v155[0] + 16, &qword_27CA42178);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42188);
    sub_214F50074(v155, &v152);
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_214F302D4(&v157, &qword_27CA42178);
    v10 = v151[0];
    v5 = v151[1];
    __swift_destroy_boxed_opaque_existential_0(v155);
    v48 = swift_getObjectType();
    v49 = (*(v5 + 8))(v48, v5);
    if (v49 && (v50 = v49, v5 = [v49 cloudAccount], v50, v5))
    {
      v51 = [v5 userRecordName];

      v52 = sub_2150A4AD0();
      v5 = v53;

      if (v46 == v52 && v45 == v5)
      {

        swift_unknownObjectRelease();
LABEL_55:
        v132 = 0;
LABEL_56:
        v19 = v145;
        goto LABEL_57;
      }

      v54 = sub_2150A6270();

      swift_unknownObjectRelease();
      v44 = v149;
      if (v54)
      {
        goto LABEL_55;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    ++v17;
    v19 += 4;
    v6 = v143;
    if (v44 == v17)
    {
      v132 = 1;
      goto LABEL_56;
    }
  }

  v152 = 0;
  v153 = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v151, "Cannot cast ");
  BYTE5(v151[1]) = 0;
  HIWORD(v151[1]) = -5120;
  sub_214F50074(v155, &v152);
  v123 = v129;
  sub_2150A64F0();
  v124 = v131;
  v125 = sub_2150A6100();
  MEMORY[0x2160617E0](v125);

  v121 = *(v130 + 8);
  v121(v123, v124);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42190);
  v152 = v47;
  sub_2150A64F0();
  v126 = sub_2150A6100();
  MEMORY[0x2160617E0](v126);

  v121(v123, v124);
LABEL_130:
  v128 = 0;
  v127 = 12;
  sub_2150A5E10();
  __break(1u);

  __break(1u);
  return result;
}

id ICActivityStreamDigest.recentUpdatesRangeValue.getter()
{
  v0 = ICActivityStreamDigest.recentUpdatesRange.getter();
  if (v2)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() valueWithRange_];
  }
}

uint64_t ICActivityStreamDigest.isCurrentUserMentionedInRecentSummary.getter()
{
  v1 = [v0 objc_recentUpdatesFilter];
  if (v1)
  {
    v2 = v1;
    v3 = sub_214F6211C(v1);
    LOBYTE(v10) = 1;
    sub_214F71610(v3);
    v5 = v4;

    sub_214F65078(v5, &v10);

    v6 = v11;
    v7 = v12;

    v8 = v6 | v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_214F65078@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v89 = a2;
  v3 = sub_2150A6540();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v98 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA421A0);
  sub_214F43BCC(&qword_27CA421A8, &qword_27CA421A0);
  sub_214F733BC();
  v7 = sub_2150A4D50();
  v8 = *(v7 + 16);
  if (v8)
  {
    v85 = v6;
    v86 = v4;
    v87 = v3;
    v100 = MEMORY[0x277D84F90];
    sub_214F86F0C(0, v8, 0);
    v94 = v100;
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42188);
    v88 = v7;
    v9 = (v7 + 56);
    v10 = v8;
    v11 = v90;
    v92 = v8;
    while (1)
    {
      v13 = *(v9 - 3);
      v12 = *(v9 - 2);
      v14 = *v9;
      *&v93 = *(v9 - 1);
      *(&v93 + 1) = v14;

      if ([v11 resolverStorage])
      {
        sub_2150A58F0();
        swift_unknownObjectRelease();
      }

      else
      {
        v98 = 0u;
        v99 = 0u;
      }

      v97[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178);
      v97[0] = swift_allocObject();
      sub_214F43C14(&v98, v97[0] + 16, &qword_27CA42178);
      sub_214F50074(v97, v96);
      if (!swift_dynamicCast())
      {
        goto LABEL_60;
      }

      v15 = v95[1];
      sub_214F302D4(&v98, &qword_27CA42178);
      __swift_destroy_boxed_opaque_existential_0(v97);
      ObjectType = swift_getObjectType();
      v17 = (*(v15 + 8))(ObjectType, v15);
      if (!v17)
      {
        goto LABEL_14;
      }

      v18 = v17;
      v19 = [v17 cloudAccount];

      if (!v19)
      {
        goto LABEL_14;
      }

      v20 = [v19 userRecordName];

      v21 = sub_2150A4AD0();
      v23 = v22;

      if (v13 != v21 || v12 != v23)
      {
        break;
      }

      swift_unknownObjectRelease();

      v24 = 0;
      v25 = 0;
      v26 = v92;
      v11 = v90;
LABEL_20:
      v32 = v94;
      v100 = v94;
      v34 = *(v94 + 16);
      v33 = *(v94 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_214F86F0C((v33 > 1), v34 + 1, 1);
        v32 = v100;
      }

      v9 += 4;
      *(v32 + 16) = v34 + 1;
      v94 = v32;
      v35 = v32 + 16 * v34;
      *(v35 + 32) = v24;
      *(v35 + 40) = v25;
      if (!--v10)
      {
        *&v98 = MEMORY[0x277D84F90];
        sub_214F86A20(0, v26, 0);
        v36 = v98;
        v37 = (v88 + 40);
        do
        {
          v39 = *(v37 - 1);
          v38 = *v37;
          *&v98 = v36;
          v41 = *(v36 + 16);
          v40 = *(v36 + 24);

          if (v41 >= v40 >> 1)
          {
            sub_214F86A20((v40 > 1), v41 + 1, 1);
            v36 = v98;
          }

          *(v36 + 16) = v41 + 1;
          v42 = v36 + 16 * v41;
          *(v42 + 32) = v39;
          *(v42 + 40) = v38;
          v37 += 4;
          --v26;
        }

        while (v26);

        v44 = v94;
        goto LABEL_29;
      }
    }

    v27 = sub_2150A6270();

    v11 = v90;
    if (v27)
    {
      swift_unknownObjectRelease();

      v24 = 0;
      v25 = 0;
    }

    else
    {
LABEL_14:
      *&v98 = v13;
      *(&v98 + 1) = v12;
      v97[0] = 7105633;
      v97[1] = 0xE300000000000000;
      sub_214D6E6C4();
      if (sub_2150A58B0())
      {
        *&v98 = v13;
        *(&v98 + 1) = v12;
        v99 = v93;
        v28 = (*(v15 + 48))(&v98, ObjectType, v15);
        if (v28)
        {
          v29 = v28;
          v30 = [v28 ic_activityStreamDisplayName];

          v24 = sub_2150A4AD0();
          v25 = v31;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          v24 = 0;
          v25 = 1;
        }
      }

      else
      {
        swift_unknownObjectRelease();

        v24 = 0;
        v25 = 2;
      }
    }

    v26 = v92;
    goto LABEL_20;
  }

  v36 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
LABEL_29:
  v98 = 0uLL;
  MEMORY[0x28223BE20](v43);
  v45 = sub_215068290(sub_214F73680, (&v85 - 4), v44);
  LODWORD(v94) = v45;
  v98 = xmmword_2150C3470;
  MEMORY[0x28223BE20](v45);
  v83 = &v98;
  DWORD2(v93) = sub_215068290(sub_214F738A4, (&v85 - 4), v44);
  *&v93 = 0;
  v46 = *(v44 + 16);
  v47 = v44;
  if (v46)
  {
    v48 = v44;
    v49 = 0;
    v50 = v44 + 40;
    v51 = MEMORY[0x277D84F90];
LABEL_31:
    v52 = v46 - v49;
    v53 = (v50 + 16 * v49);
    while (v49 < *(v48 + 16))
    {
      v57 = *(v53 - 1);
      v56 = *v53;
      if (*v53)
      {
        v58 = v56 == 2;
      }

      else
      {
        v58 = 1;
      }

      if (!v58)
      {
        if (v56 == 1)
        {
          v59 = *(v53 - 1);
          sub_214F736A0(v57, 1uLL);
          sub_214F736A0(0, 1uLL);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v98 = v51;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_214F86F0C(0, *(v51 + 16) + 1, 1);
            v51 = v98;
          }

          v48 = v47;
          v62 = *(v51 + 16);
          v61 = *(v51 + 24);
          v63 = v59;
          if (v62 >= v61 >> 1)
          {
            sub_214F86F0C((v61 > 1), v62 + 1, 1);
            v48 = v47;
            v63 = v59;
            v51 = v98;
          }

          ++v49;
          *(v51 + 16) = v62 + 1;
          v64 = v51 + 16 * v62;
          *(v64 + 32) = v63;
          *(v64 + 40) = 1;
          if (v52 != 1)
          {
            goto LABEL_31;
          }

          goto LABEL_47;
        }

        v54 = *(v53 - 1);
        v55 = *v53;

        v56 = v55;
        v57 = v54;
      }

      sub_214F736A0(v57, v56);
      sub_214F736A0(0, 1uLL);
      v53 += 2;
      ++v49;
      --v52;
      v48 = v47;
      if (!v52)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
LABEL_47:
    v65 = *(v51 + 16);

    v66 = v47;
    v67 = 0;
    v68 = MEMORY[0x277D84F90];
LABEL_48:
    v69 = 16 * v67 + 40;
    while (1)
    {
      if (v46 == v67)
      {

        v77 = v89;
        *v89 = v36;
        *(v77 + 8) = v94 & 1;
        *(v77 + 9) = BYTE8(v93) & 1;
        v77[2] = v65;
        v77[3] = v68;
        return result;
      }

      if (v67 >= *(v66 + 16))
      {
        break;
      }

      ++v67;
      v70 = v69 + 16;
      v71 = *(v66 + v69);
      v69 += 16;
      if (v71 >= 3)
      {
        v72 = *(v66 + v70 - 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_21505F4D0(0, *(v68 + 2) + 1, 1, v68);
        }

        v74 = *(v68 + 2);
        v73 = *(v68 + 3);
        if (v74 >= v73 >> 1)
        {
          v68 = sub_21505F4D0((v73 > 1), v74 + 1, 1, v68);
        }

        v66 = v47;
        *(v68 + 2) = v74 + 1;
        v75 = &v68[16 * v74];
        *(v75 + 4) = v72;
        *(v75 + 5) = v71;
        goto LABEL_48;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_60:
  v96[0] = 0;
  v96[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v95, "Cannot cast ");
  BYTE5(v95[1]) = 0;
  HIWORD(v95[1]) = -5120;
  sub_214F50074(v97, v96);
  v78 = v85;
  sub_2150A64F0();
  v79 = v87;
  v80 = sub_2150A6100();
  MEMORY[0x2160617E0](v80);

  v81 = *(v86 + 8);
  v81(v78, v79);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v96[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42190);
  v96[0] = v91;
  sub_2150A64F0();
  v82 = sub_2150A6100();
  MEMORY[0x2160617E0](v82);

  v81(v78, v79);
  v84 = 0;
  v83 = 12;
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall ICActivityStreamDigest.isCurrentUserMentioned(in:)(ICTTTextEditFilter *in)
{
  v1 = sub_214F6211C(in);
  LOBYTE(v7) = 1;
  sub_214F71610(v1);
  v3 = v2;

  sub_214F65078(v3, &v7);

  v4 = v8;
  v5 = v9;

  return (v4 | v5) & 1;
}

uint64_t ICActivityStreamDigest.summary(for:format:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a2;
  v5 = sub_214F6211C(a1);
  v7 = v4;
  ICActivityStreamDigest.summary(for:format:)(v5, &v7, a3);
}

uint64_t sub_214F65C74(uint64_t a1, char *a2)
{
  v2 = *a2;
  sub_214F65078(a1, &v79);
  v3 = *(v79 + 16);
  if (v3 == 2)
  {
    v7 = v81[2];
    if (v80)
    {
      if (v7)
      {
LABEL_9:
        v8 = v81[4];
        v9 = v81[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_2150C25D0;
        *(v10 + 56) = MEMORY[0x277D837D0];
        v11 = sub_214D74008();
        *(v10 + 32) = v8;
        *(v10 + 64) = v11;
        *(v10 + 40) = v9;
        v12 = objc_opt_self();

        v13 = sub_2150A4A90();
        v44 = [v12 localizedFrameworkStringForKey:v13 value:0 table:0 allowSiri:1];

        v45 = sub_2150A4AD0();
        v47 = v46;

        v48 = v10;
        v49 = v45;
        goto LABEL_23;
      }
    }

    else if (v7)
    {
      v20 = v81[4];
      v19 = v81[5];
      if (v7 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2150C29C0;
        *(inited + 56) = MEMORY[0x277D837D0];
        v22 = sub_214D74008();
        *(inited + 32) = v20;
        *(inited + 40) = v19;
        v23 = MEMORY[0x277D83C10];
        *(inited + 96) = MEMORY[0x277D83B88];
        *(inited + 104) = v23;
        *(inited + 64) = v22;
        *(inited + 72) = 1;
        v24 = objc_opt_self();

        v25 = sub_2150A4A90();
        v26 = [v24 localizedFrameworkStringForKey:v25 value:0 table:0 allowSiri:0];
        goto LABEL_26;
      }

      v51 = v81[6];
      v50 = v81[7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      if (v2)
      {
        v52 = swift_initStackObject();
        *(v52 + 16) = xmmword_2150C29C0;
        v53 = MEMORY[0x277D837D0];
        *(v52 + 56) = MEMORY[0x277D837D0];
        v54 = sub_214D74008();
        *(v52 + 32) = v20;
        *(v52 + 40) = v19;
        *(v52 + 96) = v53;
        *(v52 + 104) = v54;
        *(v52 + 64) = v54;
        *(v52 + 72) = v51;
        *(v52 + 80) = v50;
        v55 = objc_opt_self();

        v56 = sub_2150A4A90();
        v57 = [v55 localizedFrameworkStringForKey:v56 value:0 table:0 allowSiri:1];

        v58 = sub_2150A4AD0();
        v60 = v59;

        v61 = sub_214F9A03C(v52, v58, v60);
LABEL_28:
        v3 = v61;

        swift_bridgeObjectRelease_n();
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
        goto LABEL_29;
      }

      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_2150C29C0;
      v72 = MEMORY[0x277D837D0];
      *(v71 + 56) = MEMORY[0x277D837D0];
      v73 = sub_214D74008();
      *(v71 + 32) = v20;
      *(v71 + 40) = v19;
      *(v71 + 96) = v72;
      *(v71 + 104) = v73;
      *(v71 + 64) = v73;
      *(v71 + 72) = v51;
      *(v71 + 80) = v50;
      v74 = objc_opt_self();

      v75 = sub_2150A4A90();
      v76 = [v74 localizedFrameworkStringForKey:v75 value:0 table:0 allowSiri:1];

      v77 = sub_2150A4AD0();
      v47 = v78;

      v48 = v71;
      v49 = v77;
LABEL_23:
      v3 = sub_214F9A03C(v48, v49, v47);

      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      return v3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_2150C25D0;
    v32 = MEMORY[0x277D83C10];
    *(v14 + 56) = MEMORY[0x277D83B88];
    *(v14 + 64) = v32;
    *(v14 + 32) = 2;
    v33 = objc_opt_self();
    v17 = sub_2150A4A90();
    v18 = [v33 localizedFrameworkStringForKey:v17 value:0 table:0 allowSiri:0];
    goto LABEL_21;
  }

  v4 = v3 - 1;
  if (v3 == 1)
  {
    if (v80 || !v81[2])
    {
      v5 = objc_opt_self();
      v6 = sub_2150A4A90();
      v62 = [v5 localizedFrameworkStringForKey:v6 value:0 table:0 allowSiri:1];

      v3 = sub_2150A4AD0();

      return v3;
    }

    goto LABEL_9;
  }

  if (v3)
  {
    if (v80)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_2150C25D0;
      v15 = MEMORY[0x277D83C10];
      *(v14 + 56) = MEMORY[0x277D83B88];
      *(v14 + 64) = v15;
      *(v14 + 32) = v4;
      v16 = objc_opt_self();
      v17 = sub_2150A4A90();
      v18 = [v16 localizedFrameworkStringForKey:v17 value:0 table:0 allowSiri:0];
LABEL_21:
      v34 = v18;

      v35 = sub_2150A4AD0();
      v37 = v36;

      v38 = v14;
      v39 = v35;
LABEL_27:
      v61 = sub_215005B28(v38, v39, v37);
      goto LABEL_28;
    }

    if (!v81[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_2150C25D0;
      v41 = MEMORY[0x277D83C10];
      *(v40 + 56) = MEMORY[0x277D83B88];
      *(v40 + 64) = v41;
      *(v40 + 32) = v3;
      v42 = objc_opt_self();
      v43 = sub_2150A4A90();
      v63 = [v42 localizedFrameworkStringForKey:v43 value:0 table:0 allowSiri:0];

      v64 = sub_2150A4AD0();
      v66 = v65;

      v3 = sub_215005B28(v40, v64, v66);

      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
LABEL_29:
      swift_arrayDestroy();
      return v3;
    }

    v28 = v81[4];
    v27 = v81[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C29C0;
    *(inited + 56) = MEMORY[0x277D837D0];
    v29 = sub_214D74008();
    *(inited + 32) = v28;
    *(inited + 40) = v27;
    v30 = MEMORY[0x277D83C10];
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 104) = v30;
    *(inited + 64) = v29;
    *(inited + 72) = v4;
    v31 = objc_opt_self();

    v25 = sub_2150A4A90();
    v26 = [v31 localizedFrameworkStringForKey:v25 value:0 table:0 allowSiri:0];
LABEL_26:
    v67 = v26;

    v68 = sub_2150A4AD0();
    v37 = v69;

    v38 = inited;
    v39 = v68;
    goto LABEL_27;
  }

  return v3;
}

uint64_t sub_214F66AC8(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  sub_214F65078(a1, &v348);
  v5 = v349;
  v6 = v351;
  v7 = a2;
  v8 = v348;
  sub_214F65078(v7, &v348);
  v9 = *(v8 + 16);
  v10 = *(v348 + 16);
  if (v9 == 2)
  {
    if (v10 != 1)
    {
      goto LABEL_20;
    }

    v14 = v6[2];
    if (v5)
    {
      if (v14)
      {
        v16 = v6[4];
        v15 = v6[5];
        if (v350 || v349)
        {
          goto LABEL_184;
        }

        if (v351[2])
        {
          v133 = v351[4];
          v134 = v351[5];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
          if (v4)
          {
            v78 = swift_allocObject();
            *(v78 + 16) = xmmword_2150C29C0;
            v135 = MEMORY[0x277D837D0];
            *(v78 + 56) = MEMORY[0x277D837D0];
            v136 = sub_214D74008();
            *(v78 + 32) = v16;
            *(v78 + 40) = v15;
            *(v78 + 96) = v135;
            *(v78 + 104) = v136;
            *(v78 + 64) = v136;
            *(v78 + 72) = v133;
            *(v78 + 80) = v134;
            v137 = objc_opt_self();

            v80 = sub_2150A4A90();
            v81 = [v137 localizedFrameworkStringForKey:v80 value:0 table:0 allowSiri:1];
            goto LABEL_207;
          }

          v152 = swift_allocObject();
          *(v152 + 16) = xmmword_2150C25D0;
          *(v152 + 56) = MEMORY[0x277D837D0];
          *(v152 + 64) = sub_214D74008();
          *(v152 + 32) = v133;
          *(v152 + 40) = v134;
          v227 = objc_opt_self();

          v228 = sub_2150A4A90();
          v229 = [v227 localizedFrameworkStringForKey:v228 value:0 table:0 allowSiri:1];
LABEL_214:
          v330 = v229;

          v331 = sub_2150A4AD0();
          v313 = v332;

          v314 = v152;
          v315 = v331;
          goto LABEL_215;
        }

LABEL_58:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_2150C25D0;
        *(v71 + 56) = MEMORY[0x277D837D0];
        v72 = sub_214D74008();
        *(v71 + 32) = v16;
        *(v71 + 64) = v72;
        *(v71 + 40) = v15;
        v73 = objc_opt_self();

        v74 = sub_2150A4A90();
        v274 = [v73 localizedFrameworkStringForKey:v74 value:0 table:0 allowSiri:1];

        v275 = sub_2150A4AD0();
        v277 = v276;

        v278 = sub_214F9A03C(v71, v275, v277);
LABEL_217:
        v13 = v278;
        goto LABEL_221;
      }

      if (v350)
      {
        goto LABEL_66;
      }

      if (v349)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_2150C25D0;
        v120 = MEMORY[0x277D83C10];
        *(v119 + 56) = MEMORY[0x277D83B88];
        *(v119 + 64) = v120;
        *(v119 + 32) = 2;
        v121 = objc_opt_self();
        v122 = sub_2150A4A90();
        v123 = [v121 localizedFrameworkStringForKey:v122 value:0 table:0 allowSiri:0];
        goto LABEL_143;
      }

      if (!v351[2])
      {
LABEL_66:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_2150C25D0;
        *(v82 + 32) = 1;
        v83 = MEMORY[0x277D83C10];
        *(v82 + 56) = MEMORY[0x277D83B88];
        *(v82 + 64) = v83;
        v84 = objc_opt_self();
LABEL_205:
        v307 = sub_2150A4A90();
        v334 = [v84 localizedFrameworkStringForKey:v307 value:0 table:0 allowSiri:0];

        v335 = sub_2150A4AD0();
        v218 = v336;

        v219 = v82;
        v220 = v335;
LABEL_216:
        v278 = sub_215005B28(v219, v220, v218);
        goto LABEL_217;
      }

      v174 = v351[4];
      v175 = v351[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v176 = swift_allocObject();
      v177 = v176;
      *(v176 + 16) = xmmword_2150C29C0;
      if (v4)
      {
LABEL_136:
        *(v176 + 56) = MEMORY[0x277D837D0];
        v178 = sub_214D74008();
        v177[4] = v174;
        v177[5] = v175;
        v179 = MEMORY[0x277D83C10];
        v177[12] = MEMORY[0x277D83B88];
        v177[13] = v179;
        v177[8] = v178;
        v177[9] = 1;
LABEL_137:
        v180 = objc_opt_self();

        v181 = sub_2150A4A90();
        v182 = [v180 localizedFrameworkStringForKey:v181 value:0 table:0 allowSiri:0];
        v261 = v182;

        v262 = sub_2150A4AD0();
        v264 = v263;

        v13 = sub_215005B28(v177, v262, v264);
LABEL_221:

        swift_bridgeObjectRelease_n();
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
LABEL_222:
        swift_arrayDestroy();
        goto LABEL_223;
      }
    }

    else
    {
      if (v14)
      {
        v49 = v6[4];
        v48 = v6[5];
        if (v14 == 1)
        {
          if (v350 || v349 || !v351[2])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
            v106 = swift_allocObject();
            *(v106 + 16) = xmmword_2150C29C0;
            *(v106 + 56) = MEMORY[0x277D837D0];
            v265 = sub_214D74008();
            *(v106 + 32) = v49;
            *(v106 + 40) = v48;
            v266 = MEMORY[0x277D83C10];
            *(v106 + 96) = MEMORY[0x277D83B88];
            *(v106 + 104) = v266;
            *(v106 + 64) = v265;
            *(v106 + 72) = 1;
            v240 = objc_opt_self();

            goto LABEL_193;
          }

          v203 = v351[4];
          v204 = v351[5];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
          v196 = swift_allocObject();
          *(v196 + 16) = xmmword_2150C29B0;
          v205 = MEMORY[0x277D837D0];
          *(v196 + 56) = MEMORY[0x277D837D0];
          v206 = sub_214D74008();
          *(v196 + 64) = v206;
          if (v4)
          {
            *(v196 + 32) = v203;
            *(v196 + 40) = v204;
            *(v196 + 96) = v205;
            *(v196 + 104) = v206;
            *(v196 + 72) = v49;
            *(v196 + 80) = v48;
            v207 = MEMORY[0x277D83C10];
            *(v196 + 136) = MEMORY[0x277D83B88];
            *(v196 + 144) = v207;
            *(v196 + 112) = 1;
          }

          else
          {
            *(v196 + 32) = v49;
            *(v196 + 40) = v48;
            v295 = MEMORY[0x277D83C10];
            *(v196 + 96) = MEMORY[0x277D83B88];
            *(v196 + 104) = v295;
            *(v196 + 72) = 1;
            *(v196 + 136) = v205;
            *(v196 + 144) = v206;
            *(v196 + 112) = v203;
            *(v196 + 120) = v204;
          }

          goto LABEL_156;
        }

        v86 = v6[7];
        if (!v350 && !v349 && v351[2])
        {
          v208 = v351[5];
          v347 = v351[4];
          if (v4)
          {
            v346 = v6[6];
            v209 = objc_opt_self();

            v345 = v208;
            v210 = sub_2150A4A90();
            v211 = [v209 localizedFrameworkStringForKey:v210 value:0 table:0 allowSiri:1];

            sub_2150A4AD0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
            v212 = swift_allocObject();
            *(v212 + 16) = xmmword_2150C29B0;
            v213 = MEMORY[0x277D837D0];
            *(v212 + 56) = MEMORY[0x277D837D0];
            v214 = sub_214D74008();
            *(v212 + 32) = v49;
            *(v212 + 40) = v48;
            *(v212 + 96) = v213;
            *(v212 + 104) = v214;
            *(v212 + 64) = v214;
            *(v212 + 72) = v346;
            *(v212 + 80) = v86;
            *(v212 + 136) = v213;
            *(v212 + 144) = v214;
            *(v212 + 112) = v347;
            *(v212 + 120) = v345;
            v13 = sub_2150A4AA0();

            return v13;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
          v296 = swift_allocObject();
          *(v296 + 16) = xmmword_2150C25D0;
          *(v296 + 56) = MEMORY[0x277D837D0];
          *(v296 + 64) = sub_214D74008();
          *(v296 + 32) = v347;
          *(v296 + 40) = v208;
          v297 = objc_opt_self();

          v298 = sub_2150A4A90();
          v299 = [v297 localizedFrameworkStringForKey:v298 value:0 table:0 allowSiri:1];

          v300 = sub_2150A4AD0();
          v302 = v301;

          v13 = sub_214F9A03C(v296, v300, v302);

          swift_bridgeObjectRelease_n();
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
          swift_arrayDestroy();
LABEL_223:
          swift_deallocClassInstance();
          return v13;
        }

        v267 = v6[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v268 = swift_allocObject();
        *(v268 + 16) = xmmword_2150C29C0;
        v269 = MEMORY[0x277D837D0];
        *(v268 + 56) = MEMORY[0x277D837D0];
        v270 = sub_214D74008();
        *(v268 + 32) = v49;
        *(v268 + 40) = v48;
        *(v268 + 96) = v269;
        *(v268 + 104) = v270;
        *(v268 + 64) = v270;
        *(v268 + 72) = v267;
        *(v268 + 80) = v86;
        v271 = objc_opt_self();

        v272 = sub_2150A4A90();
        v273 = [v271 localizedFrameworkStringForKey:v272 value:0 table:0 allowSiri:1];
LABEL_225:
        v341 = v273;

        v342 = sub_2150A4AD0();
        v344 = v343;

        v13 = sub_214F9A03C(v268, v342, v344);

        swift_bridgeObjectRelease_n();
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
        goto LABEL_222;
      }

      if (v350 || v349 || !v351[2])
      {
        goto LABEL_204;
      }

      v174 = v351[4];
      v175 = v351[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v176 = swift_allocObject();
      v177 = v176;
      *(v176 + 16) = xmmword_2150C29C0;
      if ((v4 & 1) == 0)
      {
        goto LABEL_136;
      }
    }

    v183 = MEMORY[0x277D83C10];
    *(v176 + 56) = MEMORY[0x277D83B88];
    *(v176 + 64) = v183;
    *(v176 + 32) = 1;
    *(v176 + 96) = MEMORY[0x277D837D0];
    *(v176 + 104) = sub_214D74008();
    v177[9] = v174;
    v177[10] = v175;
    goto LABEL_137;
  }

  v11 = v9 - 1;
  if (v9 != 1)
  {
    if (!v9)
    {
      if (v10 >= 2)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }

    if (v10 == 1)
    {
      if (v5)
      {
        if (v350)
        {
          if (v4)
          {
            goto LABEL_142;
          }

          goto LABEL_41;
        }

        if (v349)
        {
          if (v4)
          {
            goto LABEL_142;
          }

          goto LABEL_41;
        }

        if (!v351[2])
        {
          if (v4)
          {
LABEL_142:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
            v119 = swift_allocObject();
            *(v119 + 16) = xmmword_2150C25D0;
            v184 = MEMORY[0x277D83C10];
            *(v119 + 56) = MEMORY[0x277D83B88];
            *(v119 + 64) = v184;
            *(v119 + 32) = v9;
            v185 = objc_opt_self();
            v122 = sub_2150A4A90();
            v123 = [v185 localizedFrameworkStringForKey:v122 value:0 table:0 allowSiri:0];
            goto LABEL_143;
          }

LABEL_41:
          v46 = objc_opt_self();
          v47 = sub_2150A4A90();
          v303 = [v46 localizedFrameworkStringForKey:v47 value:0 table:0 allowSiri:1];

          v13 = sub_2150A4AD0();

          return v13;
        }

        v104 = v351[4];
        v105 = v351[5];
        if (v4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_2150C29C0;
          v107 = MEMORY[0x277D83C10];
          *(v106 + 56) = MEMORY[0x277D83B88];
          *(v106 + 64) = v107;
          *(v106 + 32) = v11;
          *(v106 + 96) = MEMORY[0x277D837D0];
          *(v106 + 104) = sub_214D74008();
          *(v106 + 72) = v104;
          *(v106 + 80) = v105;
          v108 = objc_opt_self();

          v109 = sub_2150A4A90();
          v110 = [v108 localizedFrameworkStringForKey:v109 value:0 table:0 allowSiri:0];
LABEL_218:
          v337 = v110;

          v338 = sub_2150A4AD0();
          v169 = v339;

          v170 = v106;
          v171 = v338;
          goto LABEL_219;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_2150C25D0;
        *(v78 + 56) = MEMORY[0x277D837D0];
        *(v78 + 64) = sub_214D74008();
        *(v78 + 32) = v104;
        *(v78 + 40) = v105;
        v221 = objc_opt_self();

        v80 = sub_2150A4A90();
        v81 = [v221 localizedFrameworkStringForKey:v80 value:0 table:0 allowSiri:1];
        goto LABEL_207;
      }

      if (v6[2])
      {
        v51 = v6[4];
        v50 = v6[5];
        if (v350)
        {
          if ((v4 & 1) == 0)
          {
            goto LABEL_41;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_2150C29C0;
          *(v52 + 56) = MEMORY[0x277D837D0];
          v53 = sub_214D74008();
          *(v52 + 32) = v51;
          *(v52 + 40) = v50;
          v54 = MEMORY[0x277D83C10];
          *(v52 + 96) = MEMORY[0x277D83B88];
          *(v52 + 104) = v54;
          *(v52 + 64) = v53;
          *(v52 + 72) = v11;
          v55 = objc_opt_self();

          v56 = sub_2150A4A90();
          v57 = [v55 localizedFrameworkStringForKey:v56 value:0 table:0 allowSiri:0];
LABEL_85:
          v98 = v57;

          v99 = sub_2150A4AD0();
          v101 = v100;

          v102 = v52;
          v103 = v99;
LABEL_144:
          v13 = sub_215005B28(v102, v103, v101);
          goto LABEL_221;
        }

        if (!v349)
        {
          if (v351[2])
          {
            v138 = v351[4];
            v139 = v351[5];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
            inited = swift_initStackObject();
            if (v4)
            {
              *(inited + 16) = xmmword_2150C29B0;
              v141 = MEMORY[0x277D837D0];
              *(inited + 56) = MEMORY[0x277D837D0];
              v142 = sub_214D74008();
              *(inited + 32) = v51;
              *(inited + 40) = v50;
              v143 = MEMORY[0x277D83C10];
              *(inited + 96) = MEMORY[0x277D83B88];
              *(inited + 104) = v143;
              *(inited + 64) = v142;
              *(inited + 72) = v11;
              *(inited + 136) = v141;
              *(inited + 144) = v142;
              *(inited + 112) = v138;
              *(inited + 120) = v139;
              v144 = objc_opt_self();

              v145 = sub_2150A4A90();
              v146 = [v144 localizedFrameworkStringForKey:v145 value:0 table:0 allowSiri:0];

              v147 = sub_2150A4AD0();
              v149 = v148;

              v13 = sub_215005B28(inited, v147, v149);
            }

            else
            {
              *(inited + 16) = xmmword_2150C25D0;
              *(inited + 56) = MEMORY[0x277D837D0];
              *(inited + 64) = sub_214D74008();
              *(inited + 32) = v138;
              *(inited + 40) = v139;
              v230 = objc_opt_self();

              v231 = sub_2150A4A90();
              v232 = [v230 localizedFrameworkStringForKey:v231 value:0 table:0 allowSiri:1];

              v233 = sub_2150A4AD0();
              v235 = v234;

              v13 = sub_214F9A03C(inited, v233, v235);
            }

            swift_bridgeObjectRelease_n();
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
            goto LABEL_52;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
          v222 = swift_initStackObject();
          *(v222 + 16) = xmmword_2150C29C0;
          *(v222 + 56) = MEMORY[0x277D837D0];
          v223 = sub_214D74008();
          *(v222 + 32) = v51;
          *(v222 + 40) = v50;
          v224 = MEMORY[0x277D83C10];
          *(v222 + 96) = MEMORY[0x277D83B88];
          *(v222 + 104) = v224;
          *(v222 + 64) = v223;
          *(v222 + 72) = v11;
          v225 = objc_opt_self();

          v226 = sub_2150A4A90();
          v281 = [v225 localizedFrameworkStringForKey:v226 value:0 table:0 allowSiri:0];

          v282 = sub_2150A4AD0();
          v284 = v283;

          v13 = sub_215005B28(v222, v282, v284);
          goto LABEL_26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_2150C29C0;
        *(v87 + 56) = MEMORY[0x277D837D0];
        v88 = sub_214D74008();
        *(v87 + 32) = v51;
        *(v87 + 40) = v50;
        v89 = MEMORY[0x277D83C10];
        *(v87 + 96) = MEMORY[0x277D83B88];
        *(v87 + 104) = v89;
        *(v87 + 64) = v88;
        *(v87 + 72) = v11;
        v90 = objc_opt_self();

        v91 = sub_2150A4A90();
        v215 = [v90 localizedFrameworkStringForKey:v91 value:0 table:0 allowSiri:0];

        v216 = sub_2150A4AD0();
        v218 = v217;

        v219 = v87;
        v220 = v216;
        goto LABEL_216;
      }

      if (v350 || v349)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_2150C25D0;
        *(v82 + 32) = v9;
        v85 = MEMORY[0x277D83C10];
        *(v82 + 56) = MEMORY[0x277D83B88];
        *(v82 + 64) = v85;
        v84 = objc_opt_self();
        goto LABEL_205;
      }

      if (v351[2])
      {
        v189 = v351[4];
        v190 = v351[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v191 = swift_allocObject();
        v106 = v191;
        *(v191 + 16) = xmmword_2150C29C0;
        if (v4)
        {
          v192 = MEMORY[0x277D83C10];
          *(v191 + 56) = MEMORY[0x277D83B88];
          *(v191 + 64) = v192;
          *(v191 + 32) = v11;
          *(v191 + 96) = MEMORY[0x277D837D0];
          *(v191 + 104) = sub_214D74008();
          *(v106 + 72) = v189;
          *(v106 + 80) = v190;
        }

        else
        {
          *(v191 + 56) = MEMORY[0x277D837D0];
          v279 = sub_214D74008();
          *(v106 + 32) = v189;
          *(v106 + 40) = v190;
          v280 = MEMORY[0x277D83C10];
          *(v106 + 96) = MEMORY[0x277D83B88];
          *(v106 + 104) = v280;
          *(v106 + 64) = v279;
          *(v106 + 72) = v11;
        }

        v193 = objc_opt_self();

        v109 = sub_2150A4A90();
        v110 = [v193 localizedFrameworkStringForKey:v109 value:0 table:0 allowSiri:0];
        goto LABEL_218;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      if (v4)
      {
        v246 = swift_initStackObject();
        *(v246 + 16) = xmmword_2150C25D0;
        v247 = MEMORY[0x277D83C10];
        *(v246 + 56) = MEMORY[0x277D83B88];
        *(v246 + 64) = v247;
        *(v246 + 32) = v9;
        v248 = objc_opt_self();
        v249 = sub_2150A4A90();
        v250 = [v248 localizedFrameworkStringForKey:v249 value:0 table:0 allowSiri:0];

        v251 = sub_2150A4AD0();
        v253 = v252;

        v13 = sub_215005B28(v246, v251, v253);
        goto LABEL_22;
      }

      v161 = swift_allocObject();
      *(v161 + 16) = xmmword_2150C25D0;
      v308 = MEMORY[0x277D83C10];
      *(v161 + 56) = MEMORY[0x277D83B88];
      *(v161 + 64) = v308;
      *(v161 + 32) = v9;
      v309 = objc_opt_self();
      v164 = sub_2150A4A90();
      v165 = [v309 localizedFrameworkStringForKey:v164 value:0 table:0 allowSiri:0];
LABEL_132:
      v166 = v165;

      v167 = sub_2150A4AD0();
      v169 = v168;

      v170 = v161;
      v171 = v167;
LABEL_219:
      v333 = sub_215005B28(v170, v171, v169);
      goto LABEL_220;
    }

LABEL_20:
    if (v350)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_2150C25D0;
      v18 = MEMORY[0x277D83C10];
      *(v17 + 56) = MEMORY[0x277D83B88];
      *(v17 + 64) = v18;
      *(v17 + 32) = v9;
      v19 = objc_opt_self();
      v20 = sub_2150A4A90();
      v21 = [v19 localizedFrameworkStringForKey:v20 value:0 table:0 allowSiri:0];

      v22 = sub_2150A4AD0();
      v24 = v23;

      v13 = sub_215005B28(v17, v22, v24);
LABEL_22:

LABEL_23:

      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
LABEL_52:
      swift_arrayDestroy();
      return v13;
    }

    if (!v349)
    {
      v33 = v351[2];
      if (v10 == 2 && v33 >= 2)
      {
        v58 = v351[4];
        v59 = v351[5];
        v61 = v351[6];
        v60 = v351[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v62 = swift_initStackObject();
        *(v62 + 16) = xmmword_2150C29C0;
        v63 = MEMORY[0x277D837D0];
        *(v62 + 56) = MEMORY[0x277D837D0];
        v64 = sub_214D74008();
        *(v62 + 32) = v58;
        *(v62 + 40) = v59;
        *(v62 + 96) = v63;
        *(v62 + 104) = v64;
        *(v62 + 64) = v64;
        *(v62 + 72) = v61;
        *(v62 + 80) = v60;
        v65 = objc_opt_self();

        v66 = sub_2150A4A90();
        v67 = [v65 localizedFrameworkStringForKey:v66 value:0 table:0 allowSiri:1];

        v68 = sub_2150A4AD0();
        v70 = v69;

        v13 = sub_214F9A03C(v62, v68, v70);

        goto LABEL_51;
      }

      if (!v33)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v111 = swift_initStackObject();
        *(v111 + 16) = xmmword_2150C25D0;
        v112 = MEMORY[0x277D83C10];
        *(v111 + 56) = MEMORY[0x277D83B88];
        *(v111 + 64) = v112;
        *(v111 + 32) = v10;
        v113 = objc_opt_self();
        v114 = sub_2150A4A90();
        v115 = [v113 localizedFrameworkStringForKey:v114 value:0 table:0 allowSiri:0];

        v116 = sub_2150A4AD0();
        v118 = v117;

        v13 = sub_215005B28(v111, v116, v118);

        goto LABEL_23;
      }

      v35 = v351[4];
      v36 = v351[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_2150C29C0;
      *(v37 + 56) = MEMORY[0x277D837D0];
      v38 = sub_214D74008();
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;
      v39 = MEMORY[0x277D83C10];
      *(v37 + 96) = MEMORY[0x277D83B88];
      *(v37 + 104) = v39;
      *(v37 + 64) = v38;
      *(v37 + 72) = v10 - 1;
      v40 = objc_opt_self();

      v41 = sub_2150A4A90();
      v42 = [v40 localizedFrameworkStringForKey:v41 value:0 table:0 allowSiri:0];

      v43 = sub_2150A4AD0();
      v45 = v44;

      v13 = sub_215005B28(v37, v43, v45);

LABEL_33:

LABEL_51:

      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
      goto LABEL_52;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_2150C25D0;
    v26 = MEMORY[0x277D83C10];
    *(v25 + 56) = MEMORY[0x277D83B88];
    *(v25 + 64) = v26;
    *(v25 + 32) = v10 - 1;
    v27 = objc_opt_self();
    v28 = sub_2150A4A90();
    v29 = [v27 localizedFrameworkStringForKey:v28 value:0 table:0 allowSiri:0];

    v30 = sub_2150A4AD0();
    v32 = v31;

    v13 = sub_215005B28(v25, v30, v32);
LABEL_26:

    goto LABEL_33;
  }

  if (v10 == 2)
  {
    if (v5)
    {
      if (v350)
      {
        goto LABEL_41;
      }

      v92 = v351[2];
      if (v349)
      {
        if (v92)
        {
          goto LABEL_130;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v161 = swift_allocObject();
        *(v161 + 16) = xmmword_2150C25D0;
        *(v161 + 32) = 2;
        v236 = MEMORY[0x277D83C10];
        *(v161 + 56) = MEMORY[0x277D83B88];
        *(v161 + 64) = v236;
        v237 = objc_opt_self();
        goto LABEL_173;
      }

      if (v92)
      {
        v155 = v351[4];
        v156 = v351[5];
        if (v92 != 1)
        {
          v242 = v351[6];
          v241 = v351[7];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
          v78 = swift_allocObject();
          *(v78 + 16) = xmmword_2150C29C0;
          v243 = MEMORY[0x277D837D0];
          *(v78 + 56) = MEMORY[0x277D837D0];
          v244 = sub_214D74008();
          *(v78 + 32) = v155;
          *(v78 + 40) = v156;
          *(v78 + 96) = v243;
          *(v78 + 104) = v244;
          *(v78 + 64) = v244;
          *(v78 + 72) = v242;
          *(v78 + 80) = v241;
          v245 = objc_opt_self();

          v80 = sub_2150A4A90();
          v81 = [v245 localizedFrameworkStringForKey:v80 value:0 table:0 allowSiri:1];
          goto LABEL_207;
        }

        goto LABEL_177;
      }

LABEL_204:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_2150C25D0;
      *(v82 + 32) = 2;
      v306 = MEMORY[0x277D83C10];
      *(v82 + 56) = MEMORY[0x277D83B88];
      *(v82 + 64) = v306;
      v84 = objc_opt_self();
      goto LABEL_205;
    }

    if (v6[2])
    {
      v16 = v6[4];
      v15 = v6[5];
      if (v350)
      {
        goto LABEL_58;
      }

      v124 = v351[2];
      if (v349)
      {
        if (v124)
        {
          v125 = v351[4];
          v126 = v351[5];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
          v127 = swift_allocObject();
          *(v127 + 16) = xmmword_2150C29C0;
          v128 = MEMORY[0x277D837D0];
          *(v127 + 56) = MEMORY[0x277D837D0];
          v129 = sub_214D74008();
          *(v127 + 64) = v129;
          if ((v4 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_106;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v256 = swift_allocObject();
        v196 = v256;
        *(v256 + 16) = xmmword_2150C29C0;
        if (v4)
        {
          v257 = MEMORY[0x277D83C10];
          *(v256 + 56) = MEMORY[0x277D83B88];
          *(v256 + 64) = v257;
          *(v256 + 32) = 1;
          *(v256 + 96) = MEMORY[0x277D837D0];
          *(v256 + 104) = sub_214D74008();
          *(v196 + 72) = v16;
          *(v196 + 80) = v15;
        }

        else
        {
          *(v256 + 56) = MEMORY[0x277D837D0];
          v321 = sub_214D74008();
          *(v196 + 32) = v16;
          *(v196 + 40) = v15;
          v322 = MEMORY[0x277D83C10];
          *(v196 + 96) = MEMORY[0x277D83B88];
          *(v196 + 104) = v322;
          *(v196 + 64) = v321;
          *(v196 + 72) = 1;
        }

        goto LABEL_187;
      }

      if (!v124)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v259 = swift_allocObject();
        v196 = v259;
        *(v259 + 16) = xmmword_2150C29C0;
        if (v4)
        {
          v260 = MEMORY[0x277D83C10];
          *(v259 + 56) = MEMORY[0x277D83B88];
          *(v259 + 64) = v260;
          *(v259 + 32) = 2;
          *(v259 + 96) = MEMORY[0x277D837D0];
          *(v259 + 104) = sub_214D74008();
          *(v196 + 72) = v16;
          *(v196 + 80) = v15;
        }

        else
        {
          *(v259 + 56) = MEMORY[0x277D837D0];
          v323 = sub_214D74008();
          *(v196 + 32) = v16;
          *(v196 + 40) = v15;
          v324 = MEMORY[0x277D83C10];
          *(v196 + 96) = MEMORY[0x277D83B88];
          *(v196 + 104) = v324;
          *(v196 + 64) = v323;
          *(v196 + 72) = 2;
        }

LABEL_187:
        v258 = objc_opt_self();

        v201 = sub_2150A4A90();
        v202 = [v258 localizedFrameworkStringForKey:v201 value:0 table:0 allowSiri:0];
        goto LABEL_212;
      }

      v194 = v351[4];
      v195 = v351[5];
      if (v124 != 1)
      {
        v291 = v351[6];
        v290 = v351[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_2150C29C0;
        v292 = MEMORY[0x277D837D0];
        *(v78 + 56) = MEMORY[0x277D837D0];
        v293 = sub_214D74008();
        *(v78 + 32) = v194;
        *(v78 + 40) = v195;
        *(v78 + 96) = v292;
        *(v78 + 104) = v293;
        *(v78 + 64) = v293;
        *(v78 + 72) = v291;
        *(v78 + 80) = v290;
        v294 = objc_opt_self();

        v80 = sub_2150A4A90();
        v81 = [v294 localizedFrameworkStringForKey:v80 value:0 table:0 allowSiri:1];
        goto LABEL_207;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v196 = swift_allocObject();
      *(v196 + 16) = xmmword_2150C29B0;
      v197 = MEMORY[0x277D837D0];
      *(v196 + 56) = MEMORY[0x277D837D0];
      v198 = sub_214D74008();
      *(v196 + 64) = v198;
      if (v4)
      {
        *(v196 + 32) = v194;
        *(v196 + 40) = v195;
        v199 = MEMORY[0x277D83C10];
        *(v196 + 96) = MEMORY[0x277D83B88];
        *(v196 + 104) = v199;
        *(v196 + 72) = 1;
        *(v196 + 136) = v197;
        *(v196 + 144) = v198;
        *(v196 + 112) = v16;
        *(v196 + 120) = v15;
      }

      else
      {
        *(v196 + 32) = v16;
        *(v196 + 40) = v15;
        *(v196 + 96) = v197;
        *(v196 + 104) = v198;
        *(v196 + 72) = v194;
        *(v196 + 80) = v195;
        v325 = MEMORY[0x277D83C10];
        *(v196 + 136) = MEMORY[0x277D83B88];
        *(v196 + 144) = v325;
        *(v196 + 112) = 1;
      }

LABEL_156:
      v200 = objc_opt_self();

      v201 = sub_2150A4A90();
      v202 = [v200 localizedFrameworkStringForKey:v201 value:0 table:0 allowSiri:0];
LABEL_212:
      v326 = v202;

      v327 = sub_2150A4AD0();
      v329 = v328;

      v289 = sub_215005B28(v196, v327, v329);
      goto LABEL_213;
    }

    if (v350)
    {
      goto LABEL_41;
    }

    v157 = v351[2];
    if (v349)
    {
      if (v157)
      {
        goto LABEL_130;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v161 = swift_allocObject();
      *(v161 + 16) = xmmword_2150C25D0;
      *(v161 + 32) = 1;
      v305 = MEMORY[0x277D83C10];
      *(v161 + 56) = MEMORY[0x277D83B88];
      *(v161 + 64) = v305;
      v237 = objc_opt_self();
LABEL_173:
      v164 = sub_2150A4A90();
      v165 = [v237 localizedFrameworkStringForKey:v164 value:0 table:0 allowSiri:0];
      goto LABEL_132;
    }

    if (!v157)
    {
      goto LABEL_204;
    }

    v155 = v351[4];
    v156 = v351[5];
    if (v157 == 1)
    {
LABEL_177:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_2150C29C0;
      *(v106 + 56) = MEMORY[0x277D837D0];
      v238 = sub_214D74008();
      *(v106 + 32) = v155;
      *(v106 + 40) = v156;
      v239 = MEMORY[0x277D83C10];
      *(v106 + 96) = MEMORY[0x277D83B88];
      *(v106 + 104) = v239;
      *(v106 + 64) = v238;
      *(v106 + 72) = 1;
      v240 = objc_opt_self();

LABEL_193:
      v109 = sub_2150A4A90();
      v110 = [v240 localizedFrameworkStringForKey:v109 value:0 table:0 allowSiri:0];
      goto LABEL_218;
    }

    v316 = v351[6];
    v317 = v351[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
    v268 = swift_allocObject();
    *(v268 + 16) = xmmword_2150C29C0;
    v318 = MEMORY[0x277D837D0];
    *(v268 + 56) = MEMORY[0x277D837D0];
    v319 = sub_214D74008();
    *(v268 + 32) = v155;
    *(v268 + 40) = v156;
    *(v268 + 96) = v318;
    *(v268 + 104) = v319;
    *(v268 + 64) = v319;
    *(v268 + 72) = v316;
    *(v268 + 80) = v317;
    v320 = objc_opt_self();

    v272 = sub_2150A4A90();
    v273 = [v320 localizedFrameworkStringForKey:v272 value:0 table:0 allowSiri:1];
    goto LABEL_225;
  }

  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    if (v350)
    {
      goto LABEL_41;
    }

    v75 = v351[2];
    if (v349)
    {
      if (!v75)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v161 = swift_allocObject();
        *(v161 + 16) = xmmword_2150C25D0;
        v162 = MEMORY[0x277D83C10];
        *(v161 + 56) = MEMORY[0x277D83B88];
        *(v161 + 64) = v162;
        *(v161 + 32) = v12;
        v163 = objc_opt_self();
        v164 = sub_2150A4A90();
        v165 = [v163 localizedFrameworkStringForKey:v164 value:0 table:0 allowSiri:0];
        goto LABEL_132;
      }

      v76 = v351[4];
      v77 = v351[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_2150C25D0;
      *(v78 + 56) = MEMORY[0x277D837D0];
      *(v78 + 64) = sub_214D74008();
      *(v78 + 32) = v76;
      *(v78 + 40) = v77;
      v79 = objc_opt_self();

      v80 = sub_2150A4A90();
      v81 = [v79 localizedFrameworkStringForKey:v80 value:0 table:0 allowSiri:1];
LABEL_207:
      v310 = v81;

      v311 = sub_2150A4AD0();
      v313 = v312;

      v314 = v78;
      v315 = v311;
LABEL_215:
      v333 = sub_214F9A03C(v314, v315, v313);
LABEL_220:
      v13 = v333;
      goto LABEL_221;
    }

    if (v75)
    {
      v94 = v351[4];
      v93 = v351[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2150C29C0;
      *(v52 + 56) = MEMORY[0x277D837D0];
      v95 = sub_214D74008();
      *(v52 + 32) = v94;
      *(v52 + 40) = v93;
      v96 = MEMORY[0x277D83C10];
      *(v52 + 96) = MEMORY[0x277D83B88];
      *(v52 + 104) = v96;
      *(v52 + 64) = v95;
      *(v52 + 72) = v12;
      v97 = objc_opt_self();

      v56 = sub_2150A4A90();
      v57 = [v97 localizedFrameworkStringForKey:v56 value:0 table:0 allowSiri:0];
      goto LABEL_85;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_2150C25D0;
    v172 = MEMORY[0x277D83C10];
    *(v119 + 56) = MEMORY[0x277D83B88];
    *(v119 + 64) = v172;
    *(v119 + 32) = v10;
    v173 = objc_opt_self();
    v122 = sub_2150A4A90();
    v123 = [v173 localizedFrameworkStringForKey:v122 value:0 table:0 allowSiri:0];
LABEL_143:
    v186 = v123;

    v187 = sub_2150A4AD0();
    v101 = v188;

    v102 = v119;
    v103 = v187;
    goto LABEL_144;
  }

  if (!v5)
  {
    if (v6[2])
    {
      v16 = v6[4];
      v15 = v6[5];
      if (!v350 && !v349 && v351[2])
      {
        v125 = v351[4];
        v126 = v351[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_2150C29C0;
        v128 = MEMORY[0x277D837D0];
        *(v127 + 56) = MEMORY[0x277D837D0];
        v129 = sub_214D74008();
        *(v127 + 64) = v129;
        if (v4)
        {
LABEL_151:
          *(v127 + 32) = v125;
          *(v127 + 40) = v126;
          *(v127 + 96) = v128;
          *(v127 + 104) = v129;
          *(v127 + 72) = v16;
          *(v127 + 80) = v15;
          goto LABEL_107;
        }

LABEL_106:
        *(v127 + 32) = v16;
        *(v127 + 40) = v15;
        *(v127 + 96) = v128;
        *(v127 + 104) = v129;
        *(v127 + 72) = v125;
        *(v127 + 80) = v126;
LABEL_107:
        v130 = objc_opt_self();

        v131 = sub_2150A4A90();
        v132 = [v130 localizedFrameworkStringForKey:v131 value:0 table:0 allowSiri:1];
        v285 = v132;

        v286 = sub_2150A4AD0();
        v288 = v287;

        v289 = sub_214F9A03C(v127, v286, v288);
LABEL_213:
        v13 = v289;
        goto LABEL_221;
      }

LABEL_184:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_2150C25D0;
      *(v78 + 56) = MEMORY[0x277D837D0];
      v254 = sub_214D74008();
      *(v78 + 32) = v16;
      *(v78 + 64) = v254;
      *(v78 + 40) = v15;
      v255 = objc_opt_self();

      v80 = sub_2150A4A90();
      v81 = [v255 localizedFrameworkStringForKey:v80 value:0 table:0 allowSiri:1];
      goto LABEL_207;
    }

    if (v350 || v349)
    {
      goto LABEL_41;
    }

    if (!v351[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v152 = swift_allocObject();
      *(v152 + 16) = xmmword_2150C25D0;
      *(v152 + 32) = 1;
      v304 = MEMORY[0x277D83C10];
      *(v152 + 56) = MEMORY[0x277D83B88];
      *(v152 + 64) = v304;
      v154 = objc_opt_self();
      goto LABEL_202;
    }

LABEL_130:
    v158 = v351[4];
    v159 = v351[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
    v152 = swift_allocObject();
    *(v152 + 16) = xmmword_2150C25D0;
    *(v152 + 56) = MEMORY[0x277D837D0];
    v160 = sub_214D74008();
    *(v152 + 32) = v158;
    *(v152 + 64) = v160;
    *(v152 + 40) = v159;
    v154 = objc_opt_self();

LABEL_202:
    v228 = sub_2150A4A90();
    v229 = [v154 localizedFrameworkStringForKey:v228 value:0 table:0 allowSiri:1];
    goto LABEL_214;
  }

  if (v350)
  {
    goto LABEL_41;
  }

  if (!v349)
  {
    if (!v351[2])
    {
      goto LABEL_41;
    }

    v150 = v351[4];
    v151 = v351[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
    v152 = swift_allocObject();
    *(v152 + 16) = xmmword_2150C25D0;
    *(v152 + 56) = MEMORY[0x277D837D0];
    v153 = sub_214D74008();
    *(v152 + 32) = v150;
    *(v152 + 64) = v153;
    *(v152 + 40) = v151;
    v154 = objc_opt_self();

    goto LABEL_202;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_9:

  return 0;
}

uint64_t sub_214F6BEE0(uint64_t a1)
{
  sub_214F65078(a1, &v63);
  v1 = *(v63 + 16);
  if (v1 == 2)
  {
    v3 = v65[2];
    if (v64)
    {
      if (v3)
      {
LABEL_9:
        v5 = v65[4];
        v4 = v65[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2150C25D0;
        *(inited + 56) = MEMORY[0x277D837D0];
        *(inited + 64) = sub_214D74008();
        *(inited + 32) = v5;
        *(inited + 40) = v4;
        v7 = objc_opt_self();

        v8 = sub_2150A4A90();
        v9 = [v7 localizedFrameworkStringForKey:v8 value:0 table:0 allowSiri:1];
        goto LABEL_26;
      }
    }

    else if (v3)
    {
      if (v3 == 1)
      {
        v16 = v65[4];
        v15 = v65[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v17 = swift_initStackObject();
        *(v17 + 16) = xmmword_2150C29C0;
        *(v17 + 56) = MEMORY[0x277D837D0];
        v18 = sub_214D74008();
        *(v17 + 32) = v16;
        *(v17 + 40) = v15;
        v19 = MEMORY[0x277D83C10];
        *(v17 + 96) = MEMORY[0x277D83B88];
        *(v17 + 104) = v19;
        *(v17 + 64) = v18;
        *(v17 + 72) = 1;
        v20 = objc_opt_self();

        v21 = sub_2150A4A90();
        v22 = [v20 localizedFrameworkStringForKey:v21 value:0 table:0 allowSiri:0];
        goto LABEL_19;
      }

      v52 = v65[4];
      v51 = v65[5];
      v54 = v65[6];
      v53 = v65[7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2150C29C0;
      v55 = MEMORY[0x277D837D0];
      *(inited + 56) = MEMORY[0x277D837D0];
      v56 = sub_214D74008();
      *(inited + 32) = v52;
      *(inited + 40) = v51;
      *(inited + 96) = v55;
      *(inited + 104) = v56;
      *(inited + 64) = v56;
      *(inited + 72) = v54;
      *(inited + 80) = v53;
      v57 = objc_opt_self();

      v8 = sub_2150A4A90();
      v9 = [v57 localizedFrameworkStringForKey:v8 value:0 table:0 allowSiri:1];
LABEL_26:
      v58 = v9;

      v59 = sub_2150A4AD0();
      v61 = v60;

      v39 = sub_214F9A03C(inited, v59, v61);
      goto LABEL_27;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_2150C25D0;
    v34 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v34;
    *(v10 + 32) = 2;
    v35 = objc_opt_self();
    v13 = sub_2150A4A90();
    v14 = [v35 localizedFrameworkStringForKey:v13 value:0 table:0 allowSiri:0];
    goto LABEL_21;
  }

  v2 = v1 - 1;
  if (v1 == 1)
  {
    if (v64 || !v65[2])
    {
      v40 = objc_opt_self();
      v41 = sub_2150A4A90();
      v42 = [v40 localizedFrameworkStringForKey:v41 value:0 table:0 allowSiri:1];

      v1 = sub_2150A4AD0();

      return v1;
    }

    goto LABEL_9;
  }

  if (v1)
  {
    if (v64)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_2150C25D0;
      v11 = MEMORY[0x277D83C10];
      *(v10 + 56) = MEMORY[0x277D83B88];
      *(v10 + 64) = v11;
      *(v10 + 32) = v2;
      v12 = objc_opt_self();
      v13 = sub_2150A4A90();
      v14 = [v12 localizedFrameworkStringForKey:v13 value:0 table:0 allowSiri:0];
LABEL_21:
      v36 = v14;

      v37 = sub_2150A4AD0();
      v31 = v38;

      v32 = v10;
      v33 = v37;
      goto LABEL_22;
    }

    if (!v65[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_2150C25D0;
      v44 = MEMORY[0x277D83C10];
      *(v43 + 56) = MEMORY[0x277D83B88];
      *(v43 + 64) = v44;
      *(v43 + 32) = v1;
      v45 = objc_opt_self();
      v46 = sub_2150A4A90();
      v47 = [v45 localizedFrameworkStringForKey:v46 value:0 table:0 allowSiri:0];

      v48 = sub_2150A4AD0();
      v50 = v49;

      v1 = sub_215005B28(v43, v48, v50);

      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
LABEL_28:
      swift_arrayDestroy();
      return v1;
    }

    v24 = v65[4];
    v23 = v65[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_2150C29C0;
    *(v17 + 56) = MEMORY[0x277D837D0];
    v25 = sub_214D74008();
    *(v17 + 32) = v24;
    *(v17 + 40) = v23;
    v26 = MEMORY[0x277D83C10];
    *(v17 + 96) = MEMORY[0x277D83B88];
    *(v17 + 104) = v26;
    *(v17 + 64) = v25;
    *(v17 + 72) = v2;
    v27 = objc_opt_self();

    v21 = sub_2150A4A90();
    v22 = [v27 localizedFrameworkStringForKey:v21 value:0 table:0 allowSiri:0];
LABEL_19:
    v28 = v22;

    v29 = sub_2150A4AD0();
    v31 = v30;

    v32 = v17;
    v33 = v29;
LABEL_22:
    v39 = sub_215005B28(v32, v33, v31);
LABEL_27:
    v1 = v39;

    swift_bridgeObjectRelease_n();
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
    goto LABEL_28;
  }

  return v1;
}

uint64_t sub_214F6C788(uint64_t a1)
{
  sub_214F65078(a1, &v6);
  if (*(v6 + 16) == 1 && v7)
  {
    v1 = objc_opt_self();
    v2 = sub_2150A4A90();
    v3 = [v1 localizedFrameworkStringForKey:v2 value:0 table:0 allowSiri:1];

    v4 = sub_2150A4AD0();

    return v4;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_214F6C88C(uint64_t a1)
{
  v2 = sub_2150A6540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42188);
  sub_214F50074(a1, v12);
  if (swift_dynamicCast())
  {
    return v11[0];
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v11, "Cannot cast ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  sub_214F50074(a1, v12);
  sub_2150A64F0();
  v8 = sub_2150A6100();
  MEMORY[0x2160617E0](v8);

  v9 = *(v3 + 8);
  v9(v5, v2);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42190);
  v12[0] = v6;
  sub_2150A64F0();
  v10 = sub_2150A6100();
  MEMORY[0x2160617E0](v10);

  v9(v5, v2);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6CADC(uint64_t a1)
{
  v2 = sub_2150A6540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v12);
  v6 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    return v11[0];
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v11, "Cannot cast ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  sub_214F50074(a1, v12);
  sub_2150A64F0();
  v8 = sub_2150A6100();
  MEMORY[0x2160617E0](v8);

  v9 = *(v3 + 8);
  v9(v5, v2);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42230);
  v12[0] = v6;
  sub_2150A64F0();
  v10 = sub_2150A6100();
  MEMORY[0x2160617E0](v10);

  v9(v5, v2);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6CD40(uint64_t a1)
{
  v2 = sub_2150A6540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v12);
  v6 = MEMORY[0x277D839B0];
  if (swift_dynamicCast())
  {
    return v11[0] & 1;
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v11, "Cannot cast ");
  HIBYTE(v11[6]) = 0;
  v11[7] = -5120;
  sub_214F50074(a1, v12);
  sub_2150A64F0();
  v8 = sub_2150A6100();
  MEMORY[0x2160617E0](v8);

  v9 = *(v3 + 8);
  v9(v5, v2);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42238);
  v12[0] = v6;
  sub_2150A64F0();
  v10 = sub_2150A6100();
  MEMORY[0x2160617E0](v10);

  v9(v5, v2);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6CF84(uint64_t a1)
{
  v2 = sub_2150A6540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v12);
  v6 = MEMORY[0x277D839F8];
  result = swift_dynamicCast();
  if (!result)
  {
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_2150A5B20();

    strcpy(v11, "Cannot cast ");
    HIBYTE(v11[6]) = 0;
    v11[7] = -5120;
    sub_214F50074(a1, v12);
    sub_2150A64F0();
    v8 = sub_2150A6100();
    MEMORY[0x2160617E0](v8);

    v9 = *(v3 + 8);
    v9(v5, v2);
    MEMORY[0x2160617E0](544432416, 0xE400000000000000);
    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42228);
    v12[0] = v6;
    sub_2150A64F0();
    v10 = sub_2150A6100();
    MEMORY[0x2160617E0](v10);

    v9(v5, v2);
    result = sub_2150A5E10();
    __break(1u);
  }

  return result;
}

uint64_t sub_214F6D1C4(uint64_t a1)
{
  v2 = sub_2150A6540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v12);
  v6 = MEMORY[0x277D83A90];
  result = swift_dynamicCast();
  if (!result)
  {
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_2150A5B20();

    strcpy(v11, "Cannot cast ");
    HIBYTE(v11[6]) = 0;
    v11[7] = -5120;
    sub_214F50074(a1, v12);
    sub_2150A64F0();
    v8 = sub_2150A6100();
    MEMORY[0x2160617E0](v8);

    v9 = *(v3 + 8);
    v9(v5, v2);
    MEMORY[0x2160617E0](544432416, 0xE400000000000000);
    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42220);
    v12[0] = v6;
    sub_2150A64F0();
    v10 = sub_2150A6100();
    MEMORY[0x2160617E0](v10);

    v9(v5, v2);
    result = sub_2150A5E10();
    __break(1u);
  }

  return result;
}

uint64_t sub_214F6D4C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_2150A6540();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v15);
  if (swift_dynamicCast())
  {
    return LOBYTE(v14[0]);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v14, "Cannot cast ");
  HIBYTE(v14[6]) = 0;
  v14[7] = -5120;
  sub_214F50074(a1, v15);
  sub_2150A64F0();
  v11 = sub_2150A6100();
  MEMORY[0x2160617E0](v11);

  v12 = *(v7 + 8);
  v12(v9, v6);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v15[0] = a2;
  sub_2150A64F0();
  v13 = sub_2150A6100();
  MEMORY[0x2160617E0](v13);

  v12(v9, v6);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6D728(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_2150A6540();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v15);
  if (swift_dynamicCast())
  {
    return v14[0];
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v14, "Cannot cast ");
  HIBYTE(v14[6]) = 0;
  v14[7] = -5120;
  sub_214F50074(a1, v15);
  sub_2150A64F0();
  v11 = sub_2150A6100();
  MEMORY[0x2160617E0](v11);

  v12 = *(v7 + 8);
  v12(v9, v6);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v15[0] = a2;
  sub_2150A64F0();
  v13 = sub_2150A6100();
  MEMORY[0x2160617E0](v13);

  v12(v9, v6);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6D988(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_2150A6540();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v15);
  if (swift_dynamicCast())
  {
    return v14[0];
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v14, "Cannot cast ");
  BYTE1(v14[3]) = 0;
  HIWORD(v14[3]) = -5120;
  sub_214F50074(a1, v15);
  sub_2150A64F0();
  v11 = sub_2150A6100();
  MEMORY[0x2160617E0](v11);

  v12 = *(v7 + 8);
  v12(v9, v6);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v15[0] = a2;
  sub_2150A64F0();
  v13 = sub_2150A6100();
  MEMORY[0x2160617E0](v13);

  v12(v9, v6);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6DBE8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_2150A6540();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v15);
  if (swift_dynamicCast())
  {
    return v14[0];
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v14, "Cannot cast ");
  BYTE5(v14[1]) = 0;
  HIWORD(v14[1]) = -5120;
  sub_214F50074(a1, v15);
  sub_2150A64F0();
  v11 = sub_2150A6100();
  MEMORY[0x2160617E0](v11);

  v12 = *(v7 + 8);
  v12(v9, v6);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v15[0] = a2;
  sub_2150A64F0();
  v13 = sub_2150A6100();
  MEMORY[0x2160617E0](v13);

  v12(v9, v6);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6DE50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_2150A6540();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_214F50074(a1, v17);
  if (swift_dynamicCast())
  {
    return v16[0];
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v16, "Cannot cast ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  sub_214F50074(a1, v17);
  sub_2150A64F0();
  v13 = sub_2150A6100();
  MEMORY[0x2160617E0](v13);

  v14 = *(v8 + 8);
  v14(v10, v7);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v17[0] = v11;
  sub_2150A64F0();
  v15 = sub_2150A6100();
  MEMORY[0x2160617E0](v15);

  v14(v10, v7);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6E0A8(uint64_t a1)
{
  v2 = sub_2150A6540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_214D55670(0, &qword_27CA42250);
  sub_214F50074(a1, v12);
  if (swift_dynamicCast())
  {
    return v11[0];
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v11, "Cannot cast ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  sub_214F50074(a1, v12);
  sub_2150A64F0();
  v8 = sub_2150A6100();
  MEMORY[0x2160617E0](v8);

  v9 = *(v3 + 8);
  v9(v5, v2);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42258);
  v12[0] = v6;
  sub_2150A64F0();
  v10 = sub_2150A6100();
  MEMORY[0x2160617E0](v10);

  v9(v5, v2);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6E33C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for NoteEditActivityEvent(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_214F422CC(v5);
  }

  result = sub_214F6E6C8(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_214F6E43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  v9 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a3(v9);
  }

  result = a4(a1, a2);
  *v4 = v9;
  return result;
}

void sub_214F6E4D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_214F6E5B0(uint64_t (*a1)(__int128 *, _BYTE *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_2150A60E0();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10);
        v8 = sub_2150A4F50();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_214F6ED8C(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_214F6E910(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_214F6E6C8(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_2150A60E0();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for NoteEditActivityEvent(0);
        v9 = sub_2150A4F50();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for NoteEditActivityEvent(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_214F6F478(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_214F6EA3C(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_214F6E804(uint64_t (*a1)(__int128 *, __int128 *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_2150A60E0();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for _NSRange(0);
        v8 = sub_2150A4F50();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_214F6FF70(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_214F6ECB4(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_214F6E910(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, _BYTE *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 40 * a3;
    v10 = result - a3;
LABEL_4:
    v15 = v10;
    v18 = v9;
    while (1)
    {
      sub_214F6163C(v9, v17);
      sub_214F6163C(v9 - 40, v16);
      v11 = a4(v17, v16);
      __swift_destroy_boxed_opaque_existential_0(v16);
      result = __swift_destroy_boxed_opaque_existential_0(v17);
      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_214D7A458(v9, v17);
        v12 = *(v9 - 24);
        *v9 = *(v9 - 40);
        *(v9 + 16) = v12;
        *(v9 + 32) = *(v9 - 8);
        result = sub_214D7A458(v17, v9 - 40);
        v9 -= 40;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v18 + 40;
      v10 = v15 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_214F6EA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  v36 = type metadata accessor for NoteEditActivityEvent(0);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *v4;
    v19 = *(v15 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v33 = -v19;
    v34 = v18;
    v21 = a1 - a3;
    v27 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    v23 = v20;
    while (1)
    {
      sub_214F736B4(v22, v17, type metadata accessor for NoteEditActivityEvent);
      sub_214F736B4(v23, v13, type metadata accessor for NoteEditActivityEvent);
      v24 = v37(v17, v13);
      sub_214F73828(v13, type metadata accessor for NoteEditActivityEvent);
      result = sub_214F73828(v17, type metadata accessor for NoteEditActivityEvent);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return result;
        }

        v25 = v35;
        sub_214F7371C(v22, v35, type metadata accessor for NoteEditActivityEvent);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_214F7371C(v25, v23, type metadata accessor for NoteEditActivityEvent);
        v23 += v33;
        v22 += v33;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_214F6ECB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, __int128 *))
{
  v17 = a2;
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 16 * a3 - 16;
    v10 = result - a3;
LABEL_4:
    v11 = *(v8 + 16 * v7);
    v12 = v10;
    v13 = v9;
    while (1)
    {
      v16 = v11;
      v15 = *v13;
      result = a4(&v16, &v15);
      if (v5)
      {
        break;
      }

      if (result)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        v11 = v13[1];
        v13[1] = *v13;
        *v13-- = v11;
        if (!__CFADD__(v12++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 += 16;
      --v10;
      if (v7 != v17)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_214F6ED8C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, _BYTE *), uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v101 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    v8 = *v101;
    if (*v101)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_95;
    }

    goto LABEL_134;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = *v7;
      sub_214F6163C(*v7 + 40 * v12, v106);
      sub_214F6163C(v13 + 40 * v11, v105);
      v14 = a4(v106, v105);
      if (v6)
      {
LABEL_105:
        __swift_destroy_boxed_opaque_existential_0(v105);
        __swift_destroy_boxed_opaque_existential_0(v106);
      }

      v15 = v14;
      __swift_destroy_boxed_opaque_existential_0(v105);
      result = __swift_destroy_boxed_opaque_existential_0(v106);
      v16 = 0;
      v17 = v11;
      v18 = v11 - v8 + 2;
      v97 = v17;
      v19 = 40 * v17;
      v20 = v13 + 40 * v17 + 80;
      do
      {
        if (!(v18 + v16))
        {
          v11 = v97;
          v22 = v8 - 1;
          if ((v15 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }

        sub_214F6163C(v20, v106);
        sub_214F6163C(v20 - 40, v105);
        v21 = a4(v106, v105);
        __swift_destroy_boxed_opaque_existential_0(v105);
        result = __swift_destroy_boxed_opaque_existential_0(v106);
        ++v16;
        v20 += 40;
      }

      while (((v15 ^ v21) & 1) == 0);
      v11 = v97;
      v22 = v97 + v16;
      v8 = v97 + v16 + 1;
      if ((v15 & 1) == 0)
      {
LABEL_15:
        v7 = a3;
        goto LABEL_23;
      }

LABEL_13:
      if (v8 < v11)
      {
        goto LABEL_128;
      }

      if (v11 > v22)
      {
        goto LABEL_15;
      }

      v23 = 40 * v8 - 40;
      v24 = v11;
      v25 = v8;
      do
      {
        if (v24 != --v25)
        {
          v30 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v26 = v30 + v19;
          v27 = v30 + v23;
          sub_214D7A458((v30 + v19), v106);
          v28 = *(v27 + 32);
          v29 = *(v27 + 16);
          *v26 = *v27;
          *(v26 + 16) = v29;
          *(v26 + 32) = v28;
          result = sub_214D7A458(v106, v27);
        }

        ++v24;
        v23 -= 40;
        v19 += 40;
      }

      while (v24 < v25);
      v7 = a3;
      v11 = v97;
    }

LABEL_23:
    v31 = *(v7 + 8);
    if (v8 >= v31)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_124;
    }

    if (v8 - v11 >= a6)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v11 + a6 >= v31)
    {
      v32 = *(v7 + 8);
    }

    else
    {
      v32 = v11 + a6;
    }

    if (v32 < v11)
    {
      goto LABEL_127;
    }

    if (v8 == v32)
    {
LABEL_32:
      v33 = v8;
    }

    else
    {
      v81 = *v7;
      v82 = v81 + 40 * v8;
      v98 = v11;
      v100 = v32;
      v83 = v11 - v8;
      do
      {
        v95 = v83;
        v84 = v82;
        v85 = v82;
        do
        {
          sub_214F6163C(v85, v106);
          sub_214F6163C(v85 - 40, v105);
          v86 = a4(v106, v105);
          if (v6)
          {
            goto LABEL_105;
          }

          v87 = v86;
          __swift_destroy_boxed_opaque_existential_0(v105);
          result = __swift_destroy_boxed_opaque_existential_0(v106);
          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v81)
          {
            goto LABEL_130;
          }

          sub_214D7A458(v85, v106);
          v88 = *(v85 - 24);
          *v85 = *(v85 - 40);
          *(v85 + 16) = v88;
          *(v85 + 32) = *(v85 - 8);
          sub_214D7A458(v106, v85 - 40);
          v85 -= 40;
        }

        while (!__CFADD__(v83++, 1));
        ++v8;
        v82 = v84 + 40;
        v83 = v95 - 1;
        v33 = v100;
      }

      while (v8 != v100);
      v7 = a3;
      v11 = v98;
    }

    v8 = 40;
    if (v33 < v11)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F5DC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v35 = *(v10 + 2);
    v34 = *(v10 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_21505F5DC((v34 > 1), v35 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v36;
    v37 = &v10[16 * v35];
    *(v37 + 4) = v11;
    *(v37 + 5) = v33;
    v38 = *v101;
    if (!*v101)
    {
      goto LABEL_133;
    }

    v99 = v33;
    if (v35)
    {
      break;
    }

LABEL_3:
    v8 = *(v7 + 8);
    v9 = v99;
    if (v99 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v39 = v36 - 1;
    if (v36 >= 4)
    {
      v44 = &v10[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_110;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_111;
      }

      v51 = &v10[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_113;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_116;
      }

      if (v55 >= v47)
      {
        v73 = &v10[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_122;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v36 == 3)
    {
      v40 = *(v10 + 4);
      v41 = *(v10 + 5);
      v50 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      v43 = v50;
LABEL_53:
      if (v43)
      {
        goto LABEL_112;
      }

      v56 = &v10[16 * v36];
      v58 = *v56;
      v57 = *(v56 + 1);
      v59 = __OFSUB__(v57, v58);
      v60 = v57 - v58;
      v61 = v59;
      if (v59)
      {
        goto LABEL_115;
      }

      v62 = &v10[16 * v39 + 32];
      v64 = *v62;
      v63 = *(v62 + 1);
      v50 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v50)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v60, v65))
      {
        goto LABEL_119;
      }

      if (v60 + v65 >= v42)
      {
        if (v42 < v65)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v66 = &v10[16 * v36];
    v68 = *v66;
    v67 = *(v66 + 1);
    v50 = __OFSUB__(v67, v68);
    v60 = v67 - v68;
    v61 = v50;
LABEL_67:
    if (v61)
    {
      goto LABEL_114;
    }

    v69 = &v10[16 * v39];
    v71 = *(v69 + 4);
    v70 = *(v69 + 5);
    v50 = __OFSUB__(v70, v71);
    v72 = v70 - v71;
    if (v50)
    {
      goto LABEL_117;
    }

    if (v72 < v60)
    {
      goto LABEL_3;
    }

LABEL_74:
    v77 = v39 - 1;
    if (v39 - 1 >= v36)
    {
      break;
    }

    if (!*v7)
    {
      goto LABEL_129;
    }

    v78 = *&v10[16 * v77 + 32];
    v79 = *&v10[16 * v39 + 40];
    sub_214F70594((*v7 + 40 * v78), (*v7 + 40 * *&v10[16 * v39 + 32]), *v7 + 40 * v79, v38, a4, a5);
    if (v6)
    {
    }

    if (v79 < v78)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_214F41D00(v10);
    }

    if (v77 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v80 = &v10[16 * v77];
    *(v80 + 4) = v78;
    *(v80 + 5) = v79;
    v107 = v10;
    result = sub_214F41C74(v39);
    v10 = v107;
    v36 = *(v107 + 2);
    if (v36 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  result = sub_214F41D00(v10);
  v10 = result;
LABEL_95:
  v107 = v10;
  v90 = *(v10 + 2);
  if (v90 < 2)
  {
  }

  v91 = v7;
  v7 = 40;
  while (*v91)
  {
    v92 = *&v10[16 * v90];
    v93 = *&v10[16 * v90 + 24];
    sub_214F70594((*v91 + 40 * v92), (*v91 + 40 * *&v10[16 * v90 + 16]), *v91 + 40 * v93, v8, a4, a5);
    if (v6)
    {
    }

    if (v93 < v92)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_214F41D00(v10);
    }

    if (v90 - 2 >= *(v10 + 2))
    {
      goto LABEL_121;
    }

    v94 = &v10[16 * v90];
    *v94 = v92;
    *(v94 + 1) = v93;
    v107 = v10;
    result = sub_214F41C74(v90 - 1);
    v10 = v107;
    v90 = *(v107 + 2);
    if (v90 <= 1)
    {
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_214F6F478(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a4;
  v143 = a5;
  v130 = a1;
  v135 = type metadata accessor for NoteEditActivityEvent(0);
  v140 = *(v135 - 8);
  v10 = MEMORY[0x28223BE20](v135);
  v132 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v119 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v119 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  result = MEMORY[0x28223BE20](v22);
  v141 = a3;
  if (a3[1] < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_99:
    v21 = *v130;
    if (*v130)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v28 = a3[1];
  v125 = &v119 - v24;
  v126 = v27;
  v136 = v26;
  v133 = v25;
  v124 = a6;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v123 = v17;
  while (1)
  {
    if (v29 + 1 >= v28)
    {
      v43 = v29 + 1;
    }

    else
    {
      v128 = v28;
      v31 = *v141;
      v32 = *(v140 + 72);
      v33 = v29;
      v34 = *v141 + v32 * (v29 + 1);
      v35 = v125;
      sub_214F736B4(v34, v125, type metadata accessor for NoteEditActivityEvent);
      v139 = v31;
      v36 = v31 + v32 * v33;
      v37 = v126;
      sub_214F736B4(v36, v126, type metadata accessor for NoteEditActivityEvent);
      LODWORD(v138) = v142(v35, v37);
      if (v7)
      {
        sub_214F73828(v37, type metadata accessor for NoteEditActivityEvent);
        v118 = v35;
        goto LABEL_112;
      }

      sub_214F73828(v37, type metadata accessor for NoteEditActivityEvent);
      result = sub_214F73828(v35, type metadata accessor for NoteEditActivityEvent);
      v122 = v128 - 1;
      v137 = v128 - 2;
      v38 = v139 + v32 * (v33 + 2);
      v127 = v33;
      v39 = v32;
      v139 = v32;
      while (v137 != v33)
      {
        sub_214F736B4(v38, v21, type metadata accessor for NoteEditActivityEvent);
        v40 = v21;
        v41 = v136;
        sub_214F736B4(v34, v136, type metadata accessor for NoteEditActivityEvent);
        v42 = v142(v40, v41);
        sub_214F73828(v41, type metadata accessor for NoteEditActivityEvent);
        result = sub_214F73828(v40, type metadata accessor for NoteEditActivityEvent);
        ++v33;
        v39 = v139;
        v38 += v139;
        v34 += v139;
        v21 = v40;
        if ((v138 ^ v42))
        {
          v43 = v33 + 1;
          goto LABEL_12;
        }
      }

      v33 = v122;
      v43 = v128;
LABEL_12:
      v29 = v127;
      if ((v138 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v43 < v127)
      {
        goto LABEL_136;
      }

      if (v127 <= v33)
      {
        v44 = v43;
        v45 = v39 * (v43 - 1);
        v46 = v44 * v39;
        v128 = v44;
        v129 = v21;
        v47 = v44;
        v48 = v127;
        v49 = v127 * v39;
        do
        {
          if (v48 != --v47)
          {
            v50 = *v141;
            if (!*v141)
            {
              goto LABEL_140;
            }

            sub_214F7371C(v50 + v49, v132, type metadata accessor for NoteEditActivityEvent);
            if (v49 < v45 || v50 + v49 >= (v50 + v46))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_214F7371C(v132, v50 + v45, type metadata accessor for NoteEditActivityEvent);
            v21 = v129;
            v39 = v139;
          }

          ++v48;
          v45 -= v39;
          v46 -= v39;
          v49 += v39;
        }

        while (v48 < v47);
        v17 = v123;
        v29 = v127;
        v43 = v128;
      }

      else
      {
LABEL_15:
        v17 = v123;
      }
    }

    v51 = v141[1];
    if (v43 >= v51)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v43, v29))
    {
      goto LABEL_132;
    }

    if (v43 - v29 >= v124)
    {
LABEL_36:
      v53 = v43;
      if (v43 < v29)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v29, v124))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v29 + v124 >= v51)
    {
      v52 = v141[1];
    }

    else
    {
      v52 = v29 + v124;
    }

    if (v52 < v29)
    {
      goto LABEL_135;
    }

    if (v43 == v52)
    {
      goto LABEL_36;
    }

    v129 = v21;
    v101 = *v141;
    v102 = *(v140 + 72);
    v103 = *v141 + v102 * (v43 - 1);
    v138 = -v102;
    v139 = v101;
    v127 = v29;
    v104 = v29 - v43;
    v120 = v102;
    v105 = v101 + v43 * v102;
    v137 = v52;
    v131 = v30;
    do
    {
      v121 = v105;
      v122 = v104;
      v128 = v103;
      while (1)
      {
        sub_214F736B4(v105, v17, type metadata accessor for NoteEditActivityEvent);
        v106 = v17;
        v107 = v133;
        sub_214F736B4(v103, v133, type metadata accessor for NoteEditActivityEvent);
        v108 = v142(v106, v107);
        if (v7)
        {
          sub_214F73828(v107, type metadata accessor for NoteEditActivityEvent);
          v118 = v106;
LABEL_112:
          sub_214F73828(v118, type metadata accessor for NoteEditActivityEvent);
        }

        v109 = v108;
        v110 = v43;
        sub_214F73828(v107, type metadata accessor for NoteEditActivityEvent);
        result = sub_214F73828(v106, type metadata accessor for NoteEditActivityEvent);
        v17 = v106;
        if ((v109 & 1) == 0)
        {
          break;
        }

        if (!v139)
        {
          goto LABEL_138;
        }

        v111 = v134;
        sub_214F7371C(v105, v134, type metadata accessor for NoteEditActivityEvent);
        swift_arrayInitWithTakeFrontToBack();
        sub_214F7371C(v111, v103, type metadata accessor for NoteEditActivityEvent);
        v103 += v138;
        v105 += v138;
        v112 = __CFADD__(v104++, 1);
        v43 = v110;
        v7 = 0;
        v30 = v131;
        if (v112)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v30 = v131;
LABEL_95:
      ++v43;
      v103 = v128 + v120;
      v104 = v122 - 1;
      v105 = v121 + v120;
      v53 = v137;
    }

    while (v43 != v137);
    v21 = v129;
    v29 = v127;
    if (v137 < v127)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F5DC(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v55 = *(v30 + 2);
    v54 = *(v30 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_21505F5DC((v54 > 1), v55 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v56;
    v57 = &v30[16 * v55];
    *(v57 + 4) = v29;
    *(v57 + 5) = v53;
    v137 = v53;
    v58 = *v130;
    if (!*v130)
    {
      goto LABEL_141;
    }

    if (v55)
    {
      break;
    }

LABEL_3:
    v28 = v141[1];
    v29 = v137;
    if (v137 >= v28)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v59 = v56 - 1;
    if (v56 >= 4)
    {
      v64 = &v30[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_118;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_119;
      }

      v71 = &v30[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_121;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_124;
      }

      if (v75 >= v67)
      {
        v93 = &v30[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_130;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v63)
        {
          goto LABEL_120;
        }

        v76 = &v30[16 * v56];
        v78 = *v76;
        v77 = *(v76 + 1);
        v79 = __OFSUB__(v77, v78);
        v80 = v77 - v78;
        v81 = v79;
        if (v79)
        {
          goto LABEL_123;
        }

        v82 = &v30[16 * v59 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v80, v85))
        {
          goto LABEL_127;
        }

        if (v80 + v85 < v62)
        {
          goto LABEL_70;
        }

        if (v62 < v85)
        {
          v59 = v56 - 2;
        }
      }
    }

    else
    {
      if (v56 == 3)
      {
        v60 = *(v30 + 4);
        v61 = *(v30 + 5);
        v70 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        v63 = v70;
        goto LABEL_56;
      }

      v86 = &v30[16 * v56];
      v88 = *v86;
      v87 = *(v86 + 1);
      v70 = __OFSUB__(v87, v88);
      v80 = v87 - v88;
      v81 = v70;
LABEL_70:
      if (v81)
      {
        goto LABEL_122;
      }

      v89 = &v30[16 * v59];
      v91 = *(v89 + 4);
      v90 = *(v89 + 5);
      v70 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v70)
      {
        goto LABEL_125;
      }

      if (v92 < v80)
      {
        goto LABEL_3;
      }
    }

    v97 = v59 - 1;
    if (v59 - 1 < v56)
    {
      if (!*v141)
      {
        goto LABEL_137;
      }

      v98 = *&v30[16 * v97 + 32];
      v99 = *&v30[16 * v59 + 40];
      sub_214F70948(*v141 + *(v140 + 72) * v98, *v141 + *(v140 + 72) * *&v30[16 * v59 + 32], *v141 + *(v140 + 72) * v99, v58, v142, v143);
      if (v7)
      {
      }

      if (v99 < v98)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_214F41D00(v30);
      }

      if (v97 >= *(v30 + 2))
      {
        goto LABEL_117;
      }

      v100 = &v30[16 * v97];
      *(v100 + 4) = v98;
      *(v100 + 5) = v99;
      v144 = v30;
      result = sub_214F41C74(v59);
      v30 = v144;
      v56 = *(v144 + 2);
      if (v56 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  result = sub_214F41D00(v30);
  v30 = result;
LABEL_101:
  v144 = v30;
  v113 = *(v30 + 2);
  if (v113 < 2)
  {
  }

  v114 = v142;
  while (*v141)
  {
    v115 = *&v30[16 * v113];
    v116 = *&v30[16 * v113 + 24];
    sub_214F70948(*v141 + *(v140 + 72) * v115, *v141 + *(v140 + 72) * *&v30[16 * v113 + 16], *v141 + *(v140 + 72) * v116, v21, v114, v143);
    if (v7)
    {
    }

    if (v116 < v115)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_214F41D00(v30);
    }

    if (v113 - 2 >= *(v30 + 2))
    {
      goto LABEL_129;
    }

    v117 = &v30[16 * v113];
    *v117 = v115;
    *(v117 + 1) = v116;
    v144 = v30;
    result = sub_214F41C74(v113 - 1);
    v30 = v144;
    v113 = *(v144 + 2);
    if (v113 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_214F6FF70(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, __int128 *), uint64_t a5, uint64_t a6)
{
  v91 = result;
  v8 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_89:
    v12 = *v91;
    if (*v91)
    {
      v9 = v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_91;
    }

    goto LABEL_127;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *v8;
    v14 = *(v13 + 16 * v12);
    v92 = *(v13 + 16 * v10);
    v93 = v14;
    result = a4(&v93, &v92);
    if (v6)
    {
    }

    v15 = result;
    v16 = 16 * v10;
    v17 = (v13 + 16 * v10 + 32);
    v86 = v10;
    while (v9 - 2 != v10)
    {
      v18 = *v17;
      v92 = *(v17 - 1);
      v93 = v18;
      result = a4(&v93, &v92);
      ++v10;
      ++v17;
      if ((v15 ^ result))
      {
        v9 = v10 + 1;
        v8 = a3;
        if ((v15 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_12:
        if (v9 >= v86)
        {
          v19 = v86 <= v10;
          v10 = v86;
          if (v19)
          {
            v75 = 16 * v9 - 16;
            v76 = v9;
            v77 = v86;
            do
            {
              if (v77 != --v76)
              {
                v78 = *v8;
                if (!*v8)
                {
                  goto LABEL_125;
                }

                v79 = *(v78 + v16);
                *(v78 + v16) = *(v78 + v75);
                *(v78 + v75) = v79;
              }

              ++v77;
              v75 -= 16;
              v16 += 16;
            }

            while (v77 < v76);
          }

          v12 = v9;
          goto LABEL_15;
        }

LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }
    }

    v10 = v9 - 1;
    v8 = a3;
    if (v15)
    {
      goto LABEL_12;
    }

LABEL_10:
    v12 = v9;
    v10 = v86;
LABEL_15:
    v20 = v8[1];
    if (v12 >= v20)
    {
      goto LABEL_130;
    }

    if (__OFSUB__(v12, v10))
    {
      goto LABEL_117;
    }

    if (v12 - v10 >= a6)
    {
      goto LABEL_130;
    }

    v21 = (v10 + a6);
    if (__OFADD__(v10, a6))
    {
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    if (v21 >= v20)
    {
      v21 = v8[1];
    }

    if (v21 < v10)
    {
      goto LABEL_120;
    }

    if (v12 == v21)
    {
LABEL_130:
      if (v12 < v10)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v68 = *v8;
      v69 = *v8 + 16 * v12 - 16;
      v87 = v10;
      v9 = v10 - v12;
      v84 = v21;
      do
      {
        v90 = v12;
        v70 = *(v68 + 16 * v12);
        v71 = v9;
        v72 = v69;
        v73 = v69;
        do
        {
          v93 = v70;
          v8 = (v73 + 1);
          v92 = *v73;
          result = a4(&v93, &v92);
          if (v6)
          {
          }

          if ((result & 1) == 0)
          {
            break;
          }

          if (!v68)
          {
            goto LABEL_123;
          }

          v70 = v73[1];
          *v8 = *v73;
          *v73-- = v70;
        }

        while (!__CFADD__(v71++, 1));
        v12 = v90 + 1;
        v69 = v72 + 16;
        --v9;
      }

      while ((v90 + 1) != v84);
      v12 = v84;
      v10 = v87;
      if (v84 < v87)
      {
        goto LABEL_116;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F5DC(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v23 = *(v11 + 2);
    v22 = *(v11 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      result = sub_21505F5DC((v22 > 1), v23 + 1, 1, v11);
      v11 = result;
    }

    v8 = a3;
    *(v11 + 2) = v24;
    v25 = &v11[16 * v23];
    *(v25 + 4) = v10;
    *(v25 + 5) = v12;
    v26 = *v91;
    if (!*v91)
    {
      goto LABEL_126;
    }

    v89 = v12;
    if (v23)
    {
      break;
    }

LABEL_3:
    v9 = a3[1];
    v10 = v89;
    if (v89 >= v9)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v27 = v24 - 1;
    if (v24 >= 4)
    {
      v32 = &v11[16 * v24 + 32];
      v33 = *(v32 - 64);
      v34 = *(v32 - 56);
      v38 = __OFSUB__(v34, v33);
      v35 = v34 - v33;
      if (v38)
      {
        goto LABEL_103;
      }

      v37 = *(v32 - 48);
      v36 = *(v32 - 40);
      v38 = __OFSUB__(v36, v37);
      v30 = v36 - v37;
      v31 = v38;
      if (v38)
      {
        goto LABEL_104;
      }

      v39 = &v11[16 * v24];
      v41 = *v39;
      v40 = *(v39 + 1);
      v38 = __OFSUB__(v40, v41);
      v42 = v40 - v41;
      if (v38)
      {
        goto LABEL_106;
      }

      v38 = __OFADD__(v30, v42);
      v43 = v30 + v42;
      if (v38)
      {
        goto LABEL_109;
      }

      if (v43 >= v35)
      {
        v61 = &v11[16 * v27 + 32];
        v63 = *v61;
        v62 = *(v61 + 1);
        v38 = __OFSUB__(v62, v63);
        v64 = v62 - v63;
        if (v38)
        {
          goto LABEL_115;
        }

        if (v30 < v64)
        {
          v27 = v24 - 2;
        }

        goto LABEL_64;
      }

      goto LABEL_43;
    }

    if (v24 == 3)
    {
      v28 = *(v11 + 4);
      v29 = *(v11 + 5);
      v38 = __OFSUB__(v29, v28);
      v30 = v29 - v28;
      v31 = v38;
LABEL_43:
      if (v31)
      {
        goto LABEL_105;
      }

      v44 = &v11[16 * v24];
      v46 = *v44;
      v45 = *(v44 + 1);
      v47 = __OFSUB__(v45, v46);
      v48 = v45 - v46;
      v49 = v47;
      if (v47)
      {
        goto LABEL_108;
      }

      v50 = &v11[16 * v27 + 32];
      v52 = *v50;
      v51 = *(v50 + 1);
      v38 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v38)
      {
        goto LABEL_111;
      }

      if (__OFADD__(v48, v53))
      {
        goto LABEL_112;
      }

      if (v48 + v53 >= v30)
      {
        if (v30 < v53)
        {
          v27 = v24 - 2;
        }

        goto LABEL_64;
      }

      goto LABEL_57;
    }

    v54 = &v11[16 * v24];
    v56 = *v54;
    v55 = *(v54 + 1);
    v38 = __OFSUB__(v55, v56);
    v48 = v55 - v56;
    v49 = v38;
LABEL_57:
    if (v49)
    {
      goto LABEL_107;
    }

    v57 = &v11[16 * v27];
    v59 = *(v57 + 4);
    v58 = *(v57 + 5);
    v38 = __OFSUB__(v58, v59);
    v60 = v58 - v59;
    if (v38)
    {
      goto LABEL_110;
    }

    if (v60 < v48)
    {
      goto LABEL_3;
    }

LABEL_64:
    v9 = v27 - 1;
    if (v27 - 1 >= v24)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_122;
    }

    v65 = *&v11[16 * v9 + 32];
    v66 = *&v11[16 * v27 + 40];
    sub_214F70F90((*a3 + 16 * v65), (*a3 + 16 * *&v11[16 * v27 + 32]), (*a3 + 16 * v66), v26, a4);
    if (v6)
    {
    }

    if (v66 < v65)
    {
      goto LABEL_101;
    }

    v12 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_214F41D00(v11);
    }

    if (v9 >= *(v11 + 2))
    {
      goto LABEL_102;
    }

    v67 = &v11[16 * v9];
    *(v67 + 4) = v65;
    *(v67 + 5) = v66;
    v94 = v11;
    result = sub_214F41C74(v27);
    v11 = v94;
    v24 = *(v94 + 2);
    if (v24 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
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
  result = sub_214F41D00(v11);
  v11 = result;
LABEL_91:
  v94 = v11;
  v80 = *(v11 + 2);
  if (v80 < 2)
  {
  }

  while (*v8)
  {
    v81 = *&v11[16 * v80];
    v82 = *&v11[16 * v80 + 24];
    sub_214F70F90((*v8 + 16 * v81), (*v8 + 16 * *&v11[16 * v80 + 16]), (*v8 + 16 * v82), v12, a4);
    if (v9)
    {
    }

    if (v82 < v81)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_214F41D00(v11);
    }

    if (v80 - 2 >= *(v11 + 2))
    {
      goto LABEL_114;
    }

    v83 = &v11[16 * v80];
    *v83 = v81;
    *(v83 + 1) = v82;
    v94 = v11;
    result = sub_214F41C74(v80 - 1);
    v11 = v94;
    v80 = *(v94 + 2);
    if (v80 <= 1)
    {
    }
  }

LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_214F70594(char *__dst, char *__src, unint64_t a3, char *a4, uint64_t (*a5)(_BYTE *, _BYTE *), uint64_t a6)
{
  v43 = a6;
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 40;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 40;
  if (v12 < v14)
  {
    if (a4 != __dst || &__dst[40 * v12] <= a4)
    {
      memmove(a4, __dst, 40 * v12);
    }

    v15 = v7 + 40 * v12;
    if (v11 < 40)
    {
LABEL_6:
      v9 = v10;
      goto LABEL_42;
    }

    while (1)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      sub_214F6163C(v9, v42);
      sub_214F6163C(v7, v41);
      v20 = a5(v42, v41);
      if (v6)
      {
        __swift_destroy_boxed_opaque_existential_0(v41);
        __swift_destroy_boxed_opaque_existential_0(v42);
        v36 = (v15 - v7) / 40;
        if (v10 < v7 || v10 >= v7 + 40 * v36 || v10 != v7)
        {
          v35 = 40 * v36;
          v34 = v10;
          goto LABEL_46;
        }

        return 1;
      }

      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0(v41);
      __swift_destroy_boxed_opaque_existential_0(v42);
      if (v21)
      {
        break;
      }

      v16 = v7;
      v17 = v10 == v7;
      v7 += 40;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v10 += 40;
      if (v7 >= v15)
      {
        goto LABEL_6;
      }
    }

    v16 = v9;
    v17 = v10 == v9;
    v9 += 40;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v18 = *v16;
    v19 = *(v16 + 1);
    *(v10 + 4) = *(v16 + 4);
    *v10 = v18;
    *(v10 + 1) = v19;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v14] <= a4)
  {
    memmove(a4, __src, 40 * v14);
  }

  v15 = v7 + 40 * v14;
  if (v13 < 40 || v9 <= v10)
  {
LABEL_42:
    v37 = (v15 - v7) / 40;
    if (v9 < v7 || v9 >= v7 + 40 * v37 || v9 != v7)
    {
      v35 = 40 * v37;
      v34 = v9;
      goto LABEL_46;
    }

    return 1;
  }

  v22 = -v7;
LABEL_22:
  v39 = v9;
  v9 -= 40;
  v23 = v15 - 40;
  v24 = v22 + v15;
  v8 -= 40;
  while (1)
  {
    sub_214F6163C(v23, v42);
    sub_214F6163C(v9, v41);
    v27 = a5(v42, v41);
    if (v6)
    {
      break;
    }

    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0(v41);
    __swift_destroy_boxed_opaque_existential_0(v42);
    if (v28)
    {
      if (v8 + 40 != v39)
      {
        v31 = *v9;
        v32 = *(v9 + 1);
        *(v8 + 32) = *(v9 + 4);
        *v8 = v31;
        *(v8 + 16) = v32;
      }

      v15 = v23 + 40;
      if (v23 + 40 <= v7 || (v22 = -v7, v9 <= v10))
      {
        v15 = v23 + 40;
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    if (v8 + 40 != v23 + 40)
    {
      v29 = *v23;
      v30 = *(v23 + 16);
      *(v8 + 32) = *(v23 + 32);
      *v8 = v29;
      *(v8 + 16) = v30;
    }

    v25 = v23 - 40;
    v24 -= 40;
    v8 -= 40;
    v26 = v23 > v7;
    v23 -= 40;
    if (!v26)
    {
      v15 = v25 + 40;
      v9 = v39;
      goto LABEL_42;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(v42);
  v33 = v24 / 40;
  v34 = v39;
  if (v39 < v7 || v39 >= v7 + 40 * v33 || v39 != v7)
  {
    v35 = 40 * v33;
LABEL_46:
    memmove(v34, v7, v35);
  }

  return 1;
}

unint64_t sub_214F70948(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v54 = a6;
  v55 = a5;
  v56 = a3;
  v53 = type metadata accessor for NoteEditActivityEvent(0);
  v11 = MEMORY[0x28223BE20](v53);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - v18;
  result = MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  v52 = *(v23 + 72);
  if (!v52)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v52 == -1)
  {
    goto LABEL_66;
  }

  v24 = v56 - a2;
  if (v56 - a2 != 0x8000000000000000 || v52 != -1)
  {
    v25 = (a2 - a1) / v52;
    v59 = a1;
    v58 = a4;
    v51 = a1;
    if (v25 < v24 / v52)
    {
      v26 = v25 * v52;
      if (a4 < result || result + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v51;
LABEL_17:
      v51 = a4 + v26;
      v57 = a4 + v26;
      if (v26 >= 1 && a2 < v56)
      {
        while (1)
        {
          v29 = result;
          sub_214F736B4(a2, v22, type metadata accessor for NoteEditActivityEvent);
          sub_214F736B4(a4, v19, type metadata accessor for NoteEditActivityEvent);
          v30 = v55(v22, v19);
          if (v7)
          {
            break;
          }

          v31 = v30;
          v32 = a4;
          sub_214F73828(v19, type metadata accessor for NoteEditActivityEvent);
          sub_214F73828(v22, type metadata accessor for NoteEditActivityEvent);
          if (v31)
          {
            v33 = v52;
            v34 = v29;
            if (v29 < a2 || v29 >= a2 + v52)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              a2 += v33;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }

              a2 += v33;
            }
          }

          else
          {
            v35 = a4;
            v33 = v52;
            a4 += v52;
            v34 = v29;
            if (v29 < v32 || v29 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }
            }

            v58 = a4;
          }

          result = v34 + v33;
          v59 = result;
          if (a4 >= v51 || a2 >= v56)
          {
            goto LABEL_64;
          }
        }

        sub_214F73828(v19, type metadata accessor for NoteEditActivityEvent);
        sub_214F73828(v22, type metadata accessor for NoteEditActivityEvent);
      }

LABEL_64:
      sub_214F52408(&v59, &v58, &v57);
      return 1;
    }

    v27 = v24 / v52 * v52;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v36 = a4 + v27;
        if (v27 >= 1)
        {
          v37 = -v52;
          v38 = v36;
          v47 = v16;
          v48 = v13;
          do
          {
            v45 = v36;
            v39 = a2;
            v49 = a2;
            v50 = a2 + v37;
            while (1)
            {
              v40 = v56;
              if (v39 <= result)
              {
                v59 = v39;
                v57 = v45;
                goto LABEL_64;
              }

              v46 = v36;
              v52 = v38;
              v41 = v38 + v37;
              sub_214F736B4(v38 + v37, v16, type metadata accessor for NoteEditActivityEvent);
              sub_214F736B4(v50, v13, type metadata accessor for NoteEditActivityEvent);
              v42 = v55(v16, v13);
              if (v7)
              {
                sub_214F73828(v13, type metadata accessor for NoteEditActivityEvent);
                sub_214F73828(v16, type metadata accessor for NoteEditActivityEvent);
                v59 = v49;
                v57 = v46;
                goto LABEL_64;
              }

              v43 = v42;
              v56 = v40 + v37;
              sub_214F73828(v13, type metadata accessor for NoteEditActivityEvent);
              sub_214F73828(v16, type metadata accessor for NoteEditActivityEvent);
              if (v43)
              {
                break;
              }

              v36 = v41;
              if (v40 < v52 || v56 >= v52)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v40 != v52)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v38 = v41;
              result = v51;
              v16 = v47;
              v13 = v48;
              v39 = v49;
              if (v41 <= a4)
              {
                a2 = v49;
                goto LABEL_63;
              }
            }

            if (v40 < v49 || v56 >= v49)
            {
              a2 = v50;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v36 = v46;
            }

            else
            {
              v44 = v40 == v49;
              a2 = v50;
              v7 = 0;
              v36 = v46;
              if (!v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v51;
            v38 = v52;
            v16 = v47;
            v13 = v48;
          }

          while (v52 > a4);
        }

LABEL_63:
        v59 = a2;
        v57 = v36;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v51;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_214F70F90(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(void, void))
{
  v37 = a5;
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 >= v14 >> 4)
  {
    if (a4 != __src || &__src[16 * v15] <= a4)
    {
      memmove(a4, __src, 16 * v15);
    }

    v16 = (v6 + 16 * v15);
    if (v13 >= 16 && v8 > v9)
    {
      v21 = -v6;
      v22 = v37;
      do
      {
        v34 = v8;
        v8 -= 16;
        v23 = &v16[v21];
        v7 -= 16;
        v24 = v16;
        while (1)
        {
          v25 = *(v24 - 1);
          v24 -= 16;
          v35 = *v8;
          v36 = v25;
          v26 = v22(&v36, &v35);
          if (v5)
          {
            if (v23 >= 0)
            {
              v31 = v23;
            }

            else
            {
              v31 = v23 + 15;
            }

            v30 = v34;
            if (v34 >= v6 && v34 < v6 + (v31 & 0xFFFFFFFFFFFFFFF0) && v34 == v6)
            {
              return 1;
            }

            v29 = 16 * (v31 >> 4);
            goto LABEL_59;
          }

          v27 = v7 + 16;
          if (v26)
          {
            break;
          }

          if (v27 != v16)
          {
            *v7 = *v24;
          }

          v23 -= 16;
          v7 -= 16;
          v16 = v24;
          if (v24 <= v6)
          {
            v16 = v24;
            v8 = v34;
            goto LABEL_53;
          }
        }

        if (v27 != v34)
        {
          *v7 = *v8;
        }

        v21 = -v6;
      }

      while (v16 > v6 && v8 > v9);
    }

LABEL_53:
    v32 = &v16[-v6 + 15];
    if (&v16[-v6] >= 0)
    {
      v32 = &v16[-v6];
    }

    if (v8 >= v6 && v8 < v6 + (v32 & 0xFFFFFFFFFFFFFFF0) && v8 == v6)
    {
      return 1;
    }

    v29 = 16 * (v32 >> 4);
    v30 = v8;
LABEL_59:
    memmove(v30, v6, v29);
    return 1;
  }

  if (a4 != __dst || &__dst[16 * v12] <= a4)
  {
    memmove(a4, __dst, 16 * v12);
  }

  v16 = (v6 + 16 * v12);
  if (v10 < 16 || v8 >= v7)
  {
LABEL_21:
    v8 = v9;
    goto LABEL_53;
  }

  v17 = v37;
  while (1)
  {
    v36 = *v8;
    v35 = *v6;
    v18 = v17(&v36, &v35);
    if (v5)
    {
      break;
    }

    if ((v18 & 1) == 0)
    {
      v19 = v6;
      v20 = v9 == v6;
      v6 += 16;
      if (v20)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v9 = *v19;
      goto LABEL_19;
    }

    v19 = v8;
    v20 = v9 == v8;
    v8 += 16;
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_19:
    v9 += 16;
    if (v6 >= v16 || v8 >= v7)
    {
      goto LABEL_21;
    }
  }

  v28 = &v16[-v6 + 15];
  if (&v16[-v6] >= 0)
  {
    v28 = &v16[-v6];
  }

  if (v9 < v6 || v9 >= v6 + (v28 & 0xFFFFFFFFFFFFFFF0) || v9 != v6)
  {
    v29 = 16 * (v28 >> 4);
    v30 = v9;
    goto LABEL_59;
  }

  return 1;
}

uint64_t sub_214F71288(void *a1, void *a2)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 8))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 8))(v13, v14);
  LOBYTE(a1) = sub_2150A3900();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return a1 & 1;
}

uint64_t sub_214F71418(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_214D7A458(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_214F71500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214F71570(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return sub_2150A6270() & 1;
}

uint64_t sub_214F71610(uint64_t a1)
{
  v74 = type metadata accessor for PersistedActivityEvent.Activities();
  v2 = MEMORY[0x28223BE20](v74);
  v78 = (v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v80 = v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v73 - v6;
  *&v81 = type metadata accessor for PersistedActivityEvent();
  v8 = MEMORY[0x28223BE20](v81);
  v73[0] = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v79 = v73 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v76 = v73 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v73 - v15;
  result = MEMORY[0x28223BE20](v14);
  v20 = v73 - v19;
  v21 = *(a1 + 16);
  *&v77 = v18;
  if (v21)
  {
    v22 = a1 + 32;
    v23 = (v18 + 56);
    v24 = (v18 + 48);
    v25 = MEMORY[0x277D84F90];
    do
    {
      sub_214F6163C(v22, v83);
      sub_214D7A458(v83, v82);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10);
      v26 = v81;
      v27 = swift_dynamicCast();
      (*v23)(v7, v27 ^ 1u, 1, v26);
      if ((*v24)(v7, 1, v26) == 1)
      {
        result = sub_214F302D4(v7, &qword_27CA42270);
      }

      else
      {
        sub_214F7371C(v7, v20, type metadata accessor for PersistedActivityEvent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_21505F8B8(0, v25[2] + 1, 1, v25);
        }

        v29 = v25[2];
        v28 = v25[3];
        if (v29 >= v28 >> 1)
        {
          v25 = sub_21505F8B8(v28 > 1, v29 + 1, 1, v25);
        }

        v25[2] = v29 + 1;
        result = sub_214F7371C(v20, v25 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v29, type metadata accessor for PersistedActivityEvent);
      }

      v22 += 40;
      --v21;
    }

    while (v21);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v75 = v25[2];
  if (!v75)
  {
    v31 = MEMORY[0x277D84F90];
    v32 = v77;
LABEL_30:

    v41 = *(v31 + 16);
    v42 = MEMORY[0x277D84F90];
    if (!v41)
    {
      goto LABEL_61;
    }

    *&v83[0] = MEMORY[0x277D84F90];
    sub_214F86EEC(0, v41, 0);
    v42 = *&v83[0];
    v43 = *(v32 + 80);
    v76 = v31;
    v44 = v31 + ((v43 + 32) & ~v43);
    v80 = *(v32 + 72);
    v75 = v44;
    v45 = v73[0];
    do
    {
      sub_214F736B4(v44, v45, type metadata accessor for PersistedActivityEvent);
      v46 = (v45 + *(v81 + 24));
      v47 = *v46;
      v48 = v46[1];
      v49 = v46[2];
      v50 = v46[3];

      sub_214F73828(v45, type metadata accessor for PersistedActivityEvent);
      *&v83[0] = v42;
      v52 = *(v42 + 16);
      v51 = *(v42 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_214F86EEC((v51 > 1), v52 + 1, 1);
        v45 = v73[0];
        v42 = *&v83[0];
      }

      *(v42 + 16) = v52 + 1;
      v53 = (v42 + 32 * v52);
      v53[4] = v47;
      v53[5] = v48;
      v53[6] = v49;
      v53[7] = v50;
      v44 += v80;
      --v41;
    }

    while (v41);
    v54 = *(v76 + 16);
    if (!v54)
    {
LABEL_61:

      return v42;
    }

    v55 = MEMORY[0x277D84F90];
    v56 = *(v81 + 28);
    v77 = xmmword_2150C25D0;
    v57 = MEMORY[0x277D84F90];
    v58 = v75;
    while (1)
    {
      v59 = v79;
      sub_214F736B4(v58, v79, type metadata accessor for PersistedActivityEvent);
      sub_214F736B4(v59 + v56, v78, type metadata accessor for PersistedActivityEvent.Activities);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        break;
      }

      if (EnumCaseMultiPayload <= 6)
      {
        if ((EnumCaseMultiPayload - 4) < 2)
        {
          v62 = v78[2];
          v61 = v78[3];
          v81 = *v78;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42720);
          v63 = swift_allocObject();
          v64 = v81;
          *(v63 + 16) = v77;
          *(v63 + 32) = v64;
          *(v63 + 48) = v62;
          *(v63 + 56) = v61;
          goto LABEL_45;
        }

        v72 = sub_2150A3A00();
        (*(*(v72 - 8) + 8))(v78, v72);
        goto LABEL_44;
      }

      v63 = v55;
      if (EnumCaseMultiPayload == 7)
      {
        v63 = *v78;
      }

LABEL_45:
      result = sub_214F73828(v79, type metadata accessor for PersistedActivityEvent);
      v65 = *(v63 + 16);
      v66 = *(v57 + 16);
      v67 = v66 + v65;
      if (__OFADD__(v66, v65))
      {
        goto LABEL_63;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) != 0 && v67 <= *(v57 + 24) >> 1)
      {
        if (!*(v63 + 16))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v66 <= v67)
        {
          v68 = v66 + v65;
        }

        else
        {
          v68 = v66;
        }

        result = sub_21505FC18(result, v68, 1, v57);
        v57 = result;
        if (!*(v63 + 16))
        {
LABEL_37:

          if (v65)
          {
            goto LABEL_64;
          }

          goto LABEL_38;
        }
      }

      if ((*(v57 + 24) >> 1) - *(v57 + 16) < v65)
      {
        goto LABEL_65;
      }

      swift_arrayInitWithCopy();

      if (v65)
      {
        v69 = *(v57 + 16);
        v70 = __OFADD__(v69, v65);
        v71 = v69 + v65;
        if (v70)
        {
          goto LABEL_66;
        }

        *(v57 + 16) = v71;
      }

LABEL_38:
      v58 += v80;
      if (!--v54)
      {
        goto LABEL_61;
      }
    }

    sub_214F73828(v78, type metadata accessor for PersistedActivityEvent.Activities);
LABEL_44:
    v63 = v55;
    goto LABEL_45;
  }

  v30 = 0;
  v73[2] = 0x80000002150E1A00;
  v73[1] = 0x80000002150E19E0;
  v31 = MEMORY[0x277D84F90];
  v32 = v77;
  while (v30 < v25[2])
  {
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = *(v32 + 72);
    sub_214F736B4(v25 + v33 + v34 * v30, v16, type metadata accessor for PersistedActivityEvent);
    sub_214F736B4(&v16[*(v81 + 28)], v80, type metadata accessor for PersistedActivityEvent.Activities);
    v35 = swift_getEnumCaseMultiPayload();
    if (v35 < 6)
    {
      sub_214F73828(v80, type metadata accessor for PersistedActivityEvent.Activities);
    }

    else if (v35 == 6)
    {
      v36 = sub_2150A3A00();
      (*(*(v36 - 8) + 8))(v80, v36);
    }

    else if (v35 == 7)
    {
      sub_214F73828(v80, type metadata accessor for PersistedActivityEvent.Activities);

LABEL_24:
      sub_214F7371C(v16, v76, type metadata accessor for PersistedActivityEvent);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v83[0] = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86DC0(0, *(v31 + 16) + 1, 1);
        v31 = *&v83[0];
      }

      v40 = *(v31 + 16);
      v39 = *(v31 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_214F86DC0(v39 > 1, v40 + 1, 1);
        v31 = *&v83[0];
      }

      *(v31 + 16) = v40 + 1;
      result = sub_214F7371C(v76, v31 + v33 + v40 * v34, type metadata accessor for PersistedActivityEvent);
      v32 = v77;
      goto LABEL_15;
    }

    v37 = sub_2150A6270();

    if (v37)
    {
      goto LABEL_24;
    }

    result = sub_214F73828(v16, type metadata accessor for PersistedActivityEvent);
LABEL_15:
    if (v75 == ++v30)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_214F72134(uint64_t a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for NoteEditActivityEvent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a2;
  v7 = *(a1 + 16);
  v34 = a1;
  if (v7)
  {
    v8 = a1 + 32;
    v9 = MEMORY[0x277D84F90];
    do
    {
      sub_214F6163C(v8, &v39);
      sub_214F6163C(&v39, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10);
      if (swift_dynamicCast())
      {
        sub_214F73828(v6, type metadata accessor for NoteEditActivityEvent);
        sub_214D7A458(&v39, v36);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_214F86DA0(0, *(v9 + 16) + 1, 1);
          v9 = v42;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_214F86DA0((v11 > 1), v12 + 1, 1);
        }

        v13 = v37;
        v14 = v38;
        v15 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
        MEMORY[0x28223BE20](v15);
        v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v18 + 16))(v17);
        sub_214F71418(v12, v17, &v42, v13, v14);
        __swift_destroy_boxed_opaque_existential_0(v36);
        v9 = v42;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v39);
      }

      v8 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v19 = *(v9 + 16);
  if (!v19)
  {

    v20 = MEMORY[0x277D84F90];
    if (v35)
    {
      return v20;
    }

    goto LABEL_20;
  }

  v42 = MEMORY[0x277D84F90];
  sub_214F86EEC(0, v19, 0);
  v20 = v42;
  v33 = v9;
  v21 = v9 + 32;
  do
  {
    sub_214F6163C(v21, &v39);
    v22 = v40;
    v23 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, v40);
    (*(v23 + 48))(v36, v22, v23);
    v24 = v36[0];
    v25 = v36[1];
    v26 = v36[2];
    v27 = v37;
    __swift_destroy_boxed_opaque_existential_0(&v39);
    v42 = v20;
    v29 = *(v20 + 16);
    v28 = *(v20 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_214F86EEC((v28 > 1), v29 + 1, 1);
      v20 = v42;
    }

    *(v20 + 16) = v29 + 1;
    v30 = (v20 + 32 * v29);
    v30[4] = v24;
    v30[5] = v25;
    v30[6] = v26;
    v30[7] = v27;
    v21 += 40;
    --v19;
  }

  while (v19);

  if ((v35 & 1) == 0)
  {
LABEL_20:
    if (*(v20 + 16))
    {
      LOBYTE(v39) = 0;
      v31 = sub_214F71610(v34);

      *&v39 = v20;
      sub_215068790(v31);
      return v39;
    }
  }

  return v20;
}

char *sub_214F724EC(uint64_t a1)
{
  v64 = type metadata accessor for PersistedActivityEvent.Activities();
  v2 = MEMORY[0x28223BE20](v64);
  v62 = (v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v59[0] = v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v59 - v6;
  v8 = type metadata accessor for PersistedActivityEvent();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  *&v61 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = v59 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  *&v65 = v59 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = v59 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = a1 + 32;
    v21 = (v9 + 56);
    v22 = (v9 + 48);
    v23 = MEMORY[0x277D84F90];
    v60 = v9;
    do
    {
      sub_214F6163C(v20, v67);
      sub_214D7A458(v67, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10);
      v24 = swift_dynamicCast();
      (*v21)(v7, v24 ^ 1u, 1, v8);
      if ((*v22)(v7, 1, v8) == 1)
      {
        result = sub_214F302D4(v7, &qword_27CA42270);
      }

      else
      {
        sub_214F7371C(v7, v18, type metadata accessor for PersistedActivityEvent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_21505F8B8(0, v23[2] + 1, 1, v23);
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_21505F8B8(v25 > 1, v26 + 1, 1, v23);
        }

        v23[2] = v26 + 1;
        v27 = v23 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v26;
        v9 = v60;
        result = sub_214F7371C(v18, v27, type metadata accessor for PersistedActivityEvent);
      }

      v20 += 40;
      --v19;
    }

    while (v19);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v60 = v23[2];
  if (v60)
  {
    v28 = 0;
    v59[2] = 0x80000002150E1A00;
    v29 = MEMORY[0x277D84F90];
    v59[1] = 0x80000002150E19E0;
    v30 = v59[0];
    while (1)
    {
      if (v28 >= v23[2])
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        return result;
      }

      v31 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v32 = *(v9 + 72);
      v33 = v65;
      sub_214F736B4(v23 + v31 + v32 * v28, v65, type metadata accessor for PersistedActivityEvent);
      sub_214F736B4(v33 + *(v8 + 28), v30, type metadata accessor for PersistedActivityEvent.Activities);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        goto LABEL_27;
      }

      if (EnumCaseMultiPayload <= 5)
      {
        break;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v35 = sub_2150A3A00();
        (*(*(v35 - 8) + 8))(v30, v35);
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 7)
      {
        goto LABEL_27;
      }

LABEL_28:
      v36 = sub_2150A6270();

      if (v36)
      {
        goto LABEL_29;
      }

      result = sub_214F73828(v65, type metadata accessor for PersistedActivityEvent);
LABEL_15:
      if (v60 == ++v28)
      {
        goto LABEL_35;
      }
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_214F73828(v30, type metadata accessor for PersistedActivityEvent.Activities);

LABEL_29:
      sub_214F7371C(v65, v61, type metadata accessor for PersistedActivityEvent);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v67[0] = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86DC0(0, *(v29 + 16) + 1, 1);
        v29 = *&v67[0];
      }

      v39 = *(v29 + 16);
      v38 = *(v29 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_214F86DC0(v38 > 1, v39 + 1, 1);
        v29 = *&v67[0];
      }

      *(v29 + 16) = v39 + 1;
      result = sub_214F7371C(v61, v29 + v31 + v39 * v32, type metadata accessor for PersistedActivityEvent);
      goto LABEL_15;
    }

LABEL_27:
    sub_214F73828(v30, type metadata accessor for PersistedActivityEvent.Activities);
    goto LABEL_28;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_35:

  v40 = *(v29 + 16);
  if (v40)
  {
    v41 = *(v8 + 28);
    v42 = v29 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v43 = MEMORY[0x277D84F90];
    v44 = *(v9 + 72);
    v61 = xmmword_2150C25D0;
    while (1)
    {
      v45 = v63;
      sub_214F736B4(v42, v63, type metadata accessor for PersistedActivityEvent);
      sub_214F736B4(v45 + v41, v62, type metadata accessor for PersistedActivityEvent.Activities);
      v46 = swift_getEnumCaseMultiPayload();
      if (v46 <= 3)
      {
        break;
      }

      if (v46 <= 6)
      {
        if ((v46 - 4) < 2)
        {
          v48 = v62[2];
          v47 = v62[3];
          v65 = *v62;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42720);
          v49 = swift_allocObject();
          v50 = v65;
          *(v49 + 16) = v61;
          *(v49 + 32) = v50;
          *(v49 + 48) = v48;
          *(v49 + 56) = v47;
          result = sub_214F73828(v63, type metadata accessor for PersistedActivityEvent);
          goto LABEL_45;
        }

        v58 = sub_2150A3A00();
        (*(*(v58 - 8) + 8))(v62, v58);
        goto LABEL_44;
      }

      if (v46 != 7)
      {
        goto LABEL_44;
      }

      result = sub_214F73828(v63, type metadata accessor for PersistedActivityEvent);
      v49 = *v62;
LABEL_45:
      v51 = *(v49 + 16);
      v52 = *(v43 + 2);
      v53 = v52 + v51;
      if (__OFADD__(v52, v51))
      {
        goto LABEL_65;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v53 <= *(v43 + 3) >> 1)
      {
        if (*(v49 + 16))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v52 <= v53)
        {
          v54 = v52 + v51;
        }

        else
        {
          v54 = v52;
        }

        result = sub_21505FC18(result, v54, 1, v43);
        v43 = result;
        if (*(v49 + 16))
        {
LABEL_54:
          if ((*(v43 + 3) >> 1) - *(v43 + 2) < v51)
          {
            goto LABEL_67;
          }

          swift_arrayInitWithCopy();

          if (v51)
          {
            v55 = *(v43 + 2);
            v56 = __OFADD__(v55, v51);
            v57 = v55 + v51;
            if (v56)
            {
              goto LABEL_68;
            }

            *(v43 + 2) = v57;
          }

          goto LABEL_38;
        }
      }

      if (v51)
      {
        goto LABEL_66;
      }

LABEL_38:
      v42 += v44;
      if (!--v40)
      {

        return v43;
      }
    }

    sub_214F73828(v62, type metadata accessor for PersistedActivityEvent.Activities);
LABEL_44:
    result = sub_214F73828(v63, type metadata accessor for PersistedActivityEvent);
    v49 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_214F72F1C(uint64_t a1)
{
  v2 = type metadata accessor for ShareActivityEvent();
  MEMORY[0x28223BE20](v2);
  v4 = &v30[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 32;
    v7 = MEMORY[0x277D84F90];
    do
    {
      sub_214F6163C(v6, &v33);
      sub_214F6163C(&v33, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10);
      if (swift_dynamicCast())
      {
        sub_214F73828(v4, type metadata accessor for ShareActivityEvent);
        sub_214D7A458(&v33, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_214F86DA0(0, *(v7 + 16) + 1, 1);
          v7 = v36;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_214F86DA0((v9 > 1), v10 + 1, 1);
        }

        v11 = *(&v31 + 1);
        v12 = v32;
        v13 = __swift_mutable_project_boxed_opaque_existential_1(v30, *(&v31 + 1));
        MEMORY[0x28223BE20](v13);
        v15 = &v30[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v16 + 16))(v15);
        sub_214F71418(v10, v15, &v36, v11, v12);
        __swift_destroy_boxed_opaque_existential_0(v30);
        v7 = v36;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v33);
      }

      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v17 = *(v7 + 16);
  if (v17)
  {
    v36 = MEMORY[0x277D84F90];
    sub_214F86EEC(0, v17, 0);
    v18 = v36;
    v19 = v7 + 32;
    do
    {
      sub_214F6163C(v19, &v33);
      v20 = v34;
      v21 = v35;
      __swift_project_boxed_opaque_existential_1(&v33, v34);
      (*(v21 + 48))(v30, v20, v21);
      __swift_destroy_boxed_opaque_existential_0(&v33);
      v22 = v30[0];
      v23 = v30[1];
      v24 = v31;
      v36 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        v29 = v31;
        sub_214F86EEC((v25 > 1), v26 + 1, 1);
        v24 = v29;
        v18 = v36;
      }

      *(v18 + 16) = v26 + 1;
      v27 = v18 + 32 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v23;
      *(v27 + 48) = v24;
      v19 += 40;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v18;
}

uint64_t sub_214F73280(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2150A6270() & 1;
  }
}

unint64_t sub_214F732D8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_214F733BC()
{
  result = qword_27CA421B0;
  if (!qword_27CA421B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA421B0);
  }

  return result;
}

unint64_t sub_214F73414()
{
  result = qword_27CA421B8;
  if (!qword_27CA421B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA421B8);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t _s7SummaryV7FormatsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7SummaryV7FormatsOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214F73628()
{
  result = qword_27CA44B10;
  if (!qword_27CA44B10)
  {
    sub_2150A3960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44B10);
  }

  return result;
}

uint64_t sub_214F736A0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_214F736B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214F7371C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_214F737A4()
{
  result = qword_27CA41E30;
  if (!qword_27CA41E30)
  {
    sub_214D55670(255, &qword_27CA44A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA41E30);
  }

  return result;
}

uint64_t sub_214F73828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_214F738F8(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  v10 = sub_2150A55A0();
  v3 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2150A5590();
  MEMORY[0x28223BE20](v6);
  v7 = sub_2150A4490();
  MEMORY[0x28223BE20](v7 - 8);
  v9[1] = sub_214F74814();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
  sub_2150A4440();
  v13 = MEMORY[0x277D84F90];
  sub_214F74860(&qword_280C24510, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC8);
  sub_214F748A8(&unk_280C24530, &qword_27CA41DC8);
  sub_2150A5930();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v10);
  v2[5] = sub_2150A55D0();
  return v2;
}

uint64_t sub_214F73B44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2150A4400();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2150A4490();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 40);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_214F74808;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214F44018;
  aBlock[3] = &block_descriptor_21_0;
  v14 = _Block_copy(aBlock);

  sub_2150A4440();
  v18 = MEMORY[0x277D84F90];
  sub_214F74860(&qword_280C24570, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A28);
  sub_214F748A8(&qword_280C24550, &unk_27CA41A28);
  sub_2150A5930();
  MEMORY[0x216062180](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_214F73E14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  if (a1[2])
  {
    v9 = a1[3];
    a1[3] = a2;
    a1[4] = a3;

    return sub_214D6AB7C(v9);
  }

  else
  {
    v11 = sub_2150A5120();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = a1;

    a1[2] = sub_214FD26AC(0, 0, v8, &unk_2150C3728, v12);
  }
}

uint64_t sub_214F73F90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_214F7407C;

  return v9();
}

uint64_t sub_214F7407C()
{

  return MEMORY[0x2822009F8](sub_214F74178, 0, 0);
}

uint64_t sub_214F74178()
{
  sub_214F741D8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214F741D8()
{
  v1 = sub_2150A4400();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2150A4490();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 40);
  aBlock[4] = sub_214F74628;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214F44018;
  aBlock[3] = &block_descriptor_4;
  v8 = _Block_copy(aBlock);

  sub_2150A4440();
  v12 = MEMORY[0x277D84F90];
  sub_214F74860(&qword_280C24570, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A28);
  sub_214F748A8(&qword_280C24550, &unk_27CA41A28);
  sub_2150A5930();
  MEMORY[0x216062180](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_214F74478(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  a1[2] = 0;

  v6 = a1[3];
  if (v6)
  {
    v7 = a1[4];
    v8 = sub_2150A5120();
    a1[3] = 0;
    a1[4] = 0;
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v6;
    v9[5] = v7;
    v9[6] = a1;

    a1[2] = sub_214FD26AC(0, 0, v4, &unk_2150C3720, v9);
  }

  return result;
}

uint64_t sub_214F745BC()
{

  sub_214D6AB7C(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_214F74630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214F557A8;

  return sub_214F73F90(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214F74740(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214F53FB0;

  return sub_214F73F90(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_214F74814()
{
  result = qword_280C24508;
  if (!qword_280C24508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C24508);
  }

  return result;
}

uint64_t sub_214F74860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214F748A8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Argument.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t Argument.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t Argument.name.getter()
{
  v0 = sub_214F75FE0();

  return v0;
}

uint64_t Argument.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 104));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t Argument.isHidden.getter()
{
  v1 = *(*v0 + 112);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Argument.isHidden.setter(char a1)
{
  v3 = *(*v1 + 112);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t Argument.isReadonly.getter()
{
  v1 = *(*v0 + 120);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Argument.isReadonly.setter(char a1)
{
  v3 = *(*v1 + 120);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t Argument.summary.getter()
{
  v0 = sub_214F76034();

  return v0;
}

uint64_t Argument.summary.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t Argument.prose.getter()
{
  v0 = sub_214F76088();

  return v0;
}

uint64_t Argument.prose.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 136));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t Argument.__allocating_init(wrappedValue:name:isHidden:isReadonly:summary:prose:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  Argument.init(wrappedValue:name:isHidden:isReadonly:summary:prose:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t *Argument.init(wrappedValue:name:isHidden:isReadonly:summary:prose:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *v9;
  v15 = (v9 + *(*v9 + 104));
  *v15 = 0;
  v15[1] = 0;
  v16 = *(*v9 + 112);
  *(v9 + v16) = 0;
  v17 = *(*v9 + 120);
  *(v9 + v17) = 0;
  v18 = (v9 + *(*v9 + 128));
  *v18 = 0;
  v18[1] = 0;
  v19 = (v9 + *(*v9 + 136));
  *v19 = 0;
  v19[1] = 0;
  (*(*(*(v14 + 80) - 8) + 32))(v9 + *(*v9 + 96), a1);
  swift_beginAccess();
  *v15 = a2;
  v15[1] = a3;
  swift_beginAccess();
  *(v9 + v16) = a4;
  swift_beginAccess();
  *(v9 + v17) = a5;
  swift_beginAccess();
  *v18 = a6;
  v18[1] = a7;
  swift_beginAccess();
  *v19 = a8;
  v19[1] = a9;

  return v9;
}

uint64_t Argument.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Argument.init(from:)(a1);
  return v2;
}

void *Argument.init(from:)(uint64_t a1)
{
  v3 = v1;
  v15 = *v1;
  v5 = *(v15 + 80);
  v13 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14[-v7 - 8];
  v9 = (v3 + *(v15 + 104));
  *v9 = 0;
  v9[1] = 0;
  *(v3 + *(*v3 + 112)) = 0;
  *(v3 + *(*v3 + 120)) = 0;
  v10 = (v3 + *(*v3 + 128));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + *(*v3 + 136));
  *v11 = 0;
  v11[1] = 0;
  sub_214F6163C(v6, v14);
  sub_2150A52C0();
  __swift_destroy_boxed_opaque_existential_0(a1);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v13 + 32))(v3 + *(*v3 + 96), v8, v5);
  }

  return v3;
}

uint64_t Argument.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  a1[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v1 + v4, v5);
}

uint64_t Argument.value.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - v6;
  castOrFatalError<A>(_:as:)(v5, v3, v3, &v10 - v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v8 = *(*v1 + 96);
  swift_beginAccess();
  (*(v4 + 40))(v1 + v8, v7, v3);
  return swift_endAccess();
}

void (*Argument.value.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v3[8] = v1;
  Argument.value.getter(v3);
  return sub_214F75774;
}

void sub_214F75774(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_214F50074(*a1, v2 + 32);
    Argument.value.setter(v2 + 32);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    Argument.value.setter(*a1);
  }

  free(v2);
}

Swift::String __swiftcall Argument.typeSummary(forName:)(Swift::String forName)
{
  v2 = v1;
  object = forName._object;
  countAndFlagsBits = forName._countAndFlagsBits;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](forName._countAndFlagsBits);
  v9 = &v20 - v8;
  v10 = *(v5 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  swift_getDynamicType();
  (*(v7 + 8))(v9, v6);
  v11 = (*(*(v5 + 88) + 32))(countAndFlagsBits, object, v6);
  v13 = v12;
  v14 = *(*v2 + 120);
  swift_beginAccess();
  if (*(v2 + v14) == 1)
  {
    v24 = v11;
    v25 = v13;
    MEMORY[0x2160617E0](32, 0xE100000000000000);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v21 = 2;
    v15 = sub_2150A6100();
    MEMORY[0x2160617E0](v15);

    sub_2150A49F0();
    MEMORY[0x2160617E0](v22, v23);

    MEMORY[0x2160617E0](0x294F2F5228, 0xE500000000000000);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v21 = 0;
    v16 = sub_2150A6100();
    MEMORY[0x2160617E0](v16);

    sub_2150A49F0();
    MEMORY[0x2160617E0](v22, v23);

    v11 = v24;
    v13 = v25;
  }

  v17 = v11;
  v18 = v13;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t Argument.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t Argument.__deallocating_deinit()
{
  Argument.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_214F75C18()
{
  v0 = sub_214F75FE0();

  return v0;
}

uint64_t sub_214F75CA4()
{
  v0 = sub_214F76034();

  return v0;
}

uint64_t sub_214F75CE0()
{
  v0 = sub_214F76088();

  return v0;
}

void (*sub_214F75D64(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Argument.value.modify(v2);
  return sub_214F75DD8;
}

void sub_214F75DD8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_214F75E44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Argument.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t Argument<>.encode(to:)(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v9 - v4;
  v7 = *(v6 + 96);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  sub_2150A4990();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_214F75FE0()
{
  v1 = v0 + *(*v0 + 104);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_214F76034()
{
  v1 = v0 + *(*v0 + 128);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_214F76088()
{
  v1 = v0 + *(*v0 + 136);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_214F76190()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall NoteObject.associateAppEntity(with:)(CSSearchableItemAttributeSet with)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3 - 8];
  sub_214F5EC1C(v10);
  sub_214F30070(v10[0], v11, v12, v4);
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_214F5C454(v4);
  }

  else
  {
    sub_2150A3650();
    (*(v6 + 8))(v4, v5);
  }

  v7 = [v1 title];
  if (v7)
  {
    v8 = v7;
    sub_2150A4AD0();
  }

  sub_214F301C4(MEMORY[0x277D84F90]);
  sub_2150A5710();
}

void sub_214F764B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NoteObject.associateAppEntity(with:)(v4);
}

uint64_t dispatch thunk of ActivityEventResolving.fetch(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))();
}

{
  return (*(a3 + 40))();
}

uint64_t dispatch thunk of ActivityEventResolving.resolve(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 32))();
}

{
  return (*(a3 + 48))();
}

uint64_t ICFolderObject<>.entityIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3F30();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v66 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v57[-v7];
  v9 = [v1 objectID];
  if (![v9 ic_isModernType])
  {
    [v9 ic_isLegacyType];
  }

  v61 = v57;
  MEMORY[0x28223BE20](v10);
  v64 = v11;
  v57[-16] = v11;
  v12 = qword_280C245E0;
  v13 = v1;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_280C24890);
  v62 = *(v4 + 16);
  v63 = v14;
  v62(v8);
  v15 = swift_allocObject();
  *(v15 + 16) = 2;
  v16 = sub_214D6DCAC(v15, sub_214D6DCB8, &v57[-32]);
  v65 = v4;
  if (v16)
  {
  }

  else
  {
    v17 = sub_2150A5570();
    v18 = sub_2150A3F10();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v58 = v17;
      v20 = v19;
      v59 = swift_slowAlloc();
      v69 = v59;
      *v20 = 136315650;
      v21 = sub_2150A5B70();
      v23 = sub_214F7723C(v21, v22, &v69);
      v60 = a1;
      v24 = v23;

      *(v20 + 4) = v24;
      *(v20 + 12) = 2048;
      *(v20 + 14) = 50;
      *(v20 + 22) = 2080;
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000034, 0x80000002150E1D10);
      v25 = [v13 ic_loggingDescription];
      v26 = sub_2150A4AD0();
      v28 = v27;

      v29 = v26;
      a1 = v60;
      MEMORY[0x2160617E0](v29, v28);

      v30 = sub_214F7723C(v67, v68, &v69);

      *(v20 + 24) = v30;
      _os_log_impl(&dword_214D51000, v18, v58, "Failed assertion at %s:%lu: %s", v20, 0x20u);
      v31 = v59;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v31, -1, -1);
      MEMORY[0x216064AF0](v20, -1, -1);
    }

    v4 = v65;
  }

  v32 = *(v4 + 8);
  v32(v8, v3);

  v33 = v66;
  v34 = [v13 identifierURIPathComponent];
  if (v34)
  {
    v35 = v34;
    v36 = sub_2150A4AD0();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  v61 = v57;
  MEMORY[0x28223BE20](v34);
  *&v57[-16] = v36;
  *&v57[-8] = v38;
  (v62)(v33, v63, v3);
  v39 = swift_allocObject();
  *(v39 + 16) = 2;
  v40 = v13;
  if (sub_214D6DCAC(v39, sub_214D6DD44, &v57[-32]))
  {

LABEL_18:
    v32(v33, v3);
    goto LABEL_19;
  }

  v41 = sub_2150A5570();
  v42 = sub_2150A3F10();
  if (!os_log_type_enabled(v42, v41))
  {

    goto LABEL_18;
  }

  v43 = swift_slowAlloc();
  LODWORD(v62) = v41;
  v44 = v43;
  v63 = swift_slowAlloc();
  v69 = v63;
  *v44 = 136315650;
  v45 = sub_2150A5B70();
  v47 = sub_214F7723C(v45, v46, &v69);
  v60 = a1;
  v48 = v47;

  *(v44 + 4) = v48;
  *(v44 + 12) = 2048;
  *(v44 + 14) = 52;
  *(v44 + 22) = 2080;
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_2150A5B20();

  v67 = 0xD000000000000028;
  v68 = 0x80000002150E1CE0;
  v49 = [v40 ic_loggingDescription];
  v50 = sub_2150A4AD0();
  v59 = v32;
  v52 = v51;

  v53 = v50;
  a1 = v60;
  MEMORY[0x2160617E0](v53, v52);

  v54 = sub_214F7723C(v67, v68, &v69);

  *(v44 + 24) = v54;
  _os_log_impl(&dword_214D51000, v42, v62, "Failed assertion at %s:%lu: %s", v44, 0x20u);
  v55 = v63;
  swift_arrayDestroy();
  MEMORY[0x216064AF0](v55, -1, -1);
  MEMORY[0x216064AF0](v44, -1, -1);

  v59(v66, v3);
LABEL_19:

  *a1 = v64;
  *(a1 + 8) = v36;
  *(a1 + 16) = v38;
  return result;
}

void NoteAccountObject.entityIdentifier.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 objectID];
  v5 = [v4 ic_isModernType];
  if ((v5 & 1) == 0)
  {
    [v4 ic_isLegacyType];
  }

  if ([v2 isLocalAccount])
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = [objc_opt_self() emailAddressForAccount_];
    v6 = sub_2150A4AD0();
    v7 = v9;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5 ^ 1;
}

void ICHashtag.entityIdentifier.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 displayText];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2150A4AD0();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

void NotesAssistantFolderOption.entityIdentifier.getter(uint64_t a1@<X8>)
{
  v3 = sub_2150A3F30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [v1 managedObjectID];
  if ([v7 ic_isModernType])
  {

    v9 = 0;
  }

  else
  {
    v10 = [v7 ic_isLegacyType];

    if (v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  MEMORY[0x28223BE20](v8);
  v35[-16] = v9;
  v11 = qword_280C245E0;
  v12 = v1;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_280C24890);
  (*(v4 + 16))(v6, v13, v3);
  v14 = swift_allocObject();
  *(v14 + 16) = 2;
  if (sub_214D6DCAC(v14, sub_214D6DCB8, &v35[-32]))
  {
  }

  else
  {
    v15 = sub_2150A5570();
    v16 = sub_2150A3F10();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v40 = a1;
      v18 = v17;
      v38 = swift_slowAlloc();
      v43 = v38;
      *v18 = 136315650;
      v19 = sub_2150A5B70();
      v37 = v16;
      v21 = sub_214F7723C(v19, v20, &v43);
      v39 = v35;
      v22 = v21;

      *(v18 + 4) = v22;
      *(v18 + 12) = 2048;
      *(v18 + 14) = 148;
      *(v18 + 22) = 2080;
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000048, 0x80000002150E3B50);
      v23 = [v12 description];
      v24 = sub_2150A4AD0();
      v36 = v15;
      v25 = v9;
      v27 = v26;

      MEMORY[0x2160617E0](v24, v27);

      v28 = sub_214F7723C(v41, v42, &v43);

      *(v18 + 24) = v28;
      v9 = v25;
      v16 = v37;
      _os_log_impl(&dword_214D51000, v37, v36, "Failed assertion at %s:%lu: %s", v18, 0x20u);
      v29 = v38;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v29, -1, -1);
      v30 = v18;
      a1 = v40;
      MEMORY[0x216064AF0](v30, -1, -1);
    }
  }

  (*(v4 + 8))(v6, v3);

  v31 = [v12 identifierURIPathComponent];
  v32 = sub_2150A4AD0();
  v34 = v33;

  *a1 = v9;
  *(a1 + 8) = v32;
  *(a1 + 16) = v34;
}

unint64_t sub_214F7723C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_214F77308(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_214F50074(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_214F77308(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_214F77414(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2150A5C80();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}