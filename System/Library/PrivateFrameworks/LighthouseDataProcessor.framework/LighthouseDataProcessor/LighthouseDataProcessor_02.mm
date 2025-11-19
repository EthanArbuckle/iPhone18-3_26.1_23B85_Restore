uint64_t sub_20E066340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E0663A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E066408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v61 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v60 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F18, &qword_20E325D28);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = (&v54 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = &v54 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - v15;
  v17 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v63 = a1;

  v24 = 0;
  v54 = v22;
  v55 = a1 + 64;
  v59 = v7;
  v56 = v16;
  if (v21)
  {
    while (1)
    {
      v66 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v21)) | (v24 << 6);
      v27 = *(v63 + 56);
      v28 = (*(v63 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = type metadata accessor for TranscriptProtoStatementID(0);
      v64 = *(v31 - 8);
      v65 = v31;
      v32 = v62;
      sub_20E04F364(v27 + *(v64 + 72) * v26, &v62[*(v7 + 48)]);
      *v32 = v29;
      v32[1] = v30;
      sub_20E066940(v32, v16);
      v33 = objc_allocWithZone(MEMORY[0x277D580A0]);

      v34 = [v33 init];
      if (!v34)
      {
        break;
      }

      v66 = v34;
      v35 = v57;
      sub_20E0486F4(v16, v57, &qword_27C863F18, &qword_20E325D28);
      v36 = *v35;
      v37 = v35[1];
      v38 = *(v7 + 48);
      v39 = sub_20E322860();

      v40 = v35 + v38;
      v41 = v66;
      sub_20E04F4A0(v40);
      [v41 setStructuredSearchParameterName_];

      v42 = v58;
      sub_20E0486F4(v16, v58, &qword_27C863F18, &qword_20E325D28);
      v43 = *(v42 + 8);

      v44 = v60;
      sub_20E0529B0(v42 + *(v7 + 48), v60);
      v46 = v64;
      v45 = v65;
      (*(v64 + 56))(v44, 0, 1, v65);
      v47 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
      v48 = v61;
      sub_20E0486F4(v44, v61, &qword_27C8639D0, &unk_20E33C230);
      if ((*(v46 + 48))(v48, 1, v45) == 1)
      {
        sub_20E04875C(v44, &qword_27C8639D0, &unk_20E33C230);
        v49 = v48;
      }

      else
      {
        v50 = *v48;
        sub_20E04F4A0(v48);
        v51 = v50;
        v41 = v66;
        [v47 setIndex_];
        v49 = v44;
      }

      sub_20E04875C(v49, &qword_27C8639D0, &unk_20E33C230);
      [v41 setStatementId_];

      v52 = v41;
      MEMORY[0x20F32BF90]();
      v7 = v59;
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20E322990();
      }

      v21 &= v21 - 1;
      sub_20E3229B0();

      v16 = v56;
      result = sub_20E04875C(v56, &qword_27C863F18, &qword_20E325D28);
      v17 = v67;
      v22 = v54;
      v18 = v55;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    sub_20E04875C(v16, &qword_27C863F18, &qword_20E325D28);

    return 0;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        return v17;
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        v66 = v17;
        v24 = v25;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20E066940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F18, &qword_20E325D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_20E0669B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - v4;
  v6 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = (&v36 - v21);
  sub_20E066E54(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_20E04875C(v14, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    sub_20E066EC4(v14, v22);
    v23 = [objc_allocWithZone(MEMORY[0x277D58130]) init];
    v24 = *v22;
    if ((~*v22 & 0xF000000000000007) != 0)
    {
      if (v24 >> 61)
      {
        if (v24 >> 61 != 1)
        {

          sub_20E066F28(v22, type metadata accessor for ToolKitProtoTypeInstance);

          sub_20E047CA8(v24);
          return 0;
        }

        v25 = swift_projectBox();
        sub_20E066F88(v25, v20, type metadata accessor for ToolKitProtoTypeInstance);
        v26 = *v20;
        if ((~*v20 & 0xF000000000000007) == 0 || v23 == 0)
        {
        }

        else
        {
          v37 = *v20;
          sub_20E047CF8(v24);
          sub_20E047CF8(v26);
          v33 = v23;
          v34 = sub_20E04F7F0(&v37);
          [v33 setCollection_];

          sub_20E047CA8(v26);
        }

        sub_20E066F28(v20, type metadata accessor for ToolKitProtoTypeInstance);
        v35 = v22;
      }

      else
      {
        v28 = *v22;
        v29 = swift_projectBox();
        sub_20E066F88(v29, v10, type metadata accessor for ToolKitProtoTypeIdentifier);
        if (v23)
        {
          sub_20E066F88(v10, v5, type metadata accessor for ToolKitProtoTypeIdentifier);
          (*(v7 + 56))(v5, 0, 1, v6);
          sub_20E047CF8(v24);
          v30 = v23;
          v31 = sub_20E04EA80(v5);
          sub_20E04875C(v5, &qword_27C863B60, &qword_20E323F50);
          [v30 setTypeIdentifier_];
        }

        else
        {
        }

        sub_20E066F28(v10, type metadata accessor for ToolKitProtoTypeIdentifier);
        v35 = v22;
      }

      sub_20E066F28(v35, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E047CA8(v24);
      return v23;
    }

    sub_20E066F28(v22, type metadata accessor for ToolKitProtoTypeInstance);
  }

  return 0;
}

uint64_t sub_20E066E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E066EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E066F28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E066F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_20E066FF0(unsigned __int8 *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D57D38]) init];
  v3 = v2;
  if (v2)
  {
    [v2 setExists_];
    v4 = type metadata accessor for TranscriptProtoActionSuccess(0);
    v5 = *(v4 + 24);
    v6 = v3;
    v7 = sub_20E06E458(&a1[v5]);
    [v6 setReturnValue_];

    [v6 setDidShowInAppResult_];
    v8 = *(v4 + 32);
    v9 = v6;
    v10 = sub_20E21DBBC(&a1[v8]);
    [v9 setFollowUpAction_];

    [v9 setShouldOpen_];
  }

  return v3;
}

void *sub_20E0670F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v28 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F20, &unk_20E3461D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for TranscriptProtoClientAction(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20E0486F4(a1, v9, &qword_27C863F20, &unk_20E3461D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20E04875C(v9, &qword_27C863F20, &unk_20E3461D0);
    return 0;
  }

  else
  {
    sub_20E067430(v9, v14);
    v16 = [objc_allocWithZone(MEMORY[0x277D57D78]) init];
    v15 = v16;
    if (v16)
    {
      [v16 setExists_];
      v17 = *(v10 + 36);
      v18 = objc_allocWithZone(MEMORY[0x277D58078]);
      v19 = v15;
      v20 = [v18 init];
      sub_20E0486F4(v14 + v17, v5, &qword_27C8639D0, &unk_20E33C230);
      v21 = type metadata accessor for TranscriptProtoStatementID(0);
      if ((*(*(v21 - 8) + 48))(v5, 1, v21) == 1)
      {
        sub_20E04875C(v5, &qword_27C8639D0, &unk_20E33C230);
      }

      else
      {
        v22 = *v5;
        sub_20E067494(v5, type metadata accessor for TranscriptProtoStatementID);
        [v20 setIndex_];
      }

      [v19 setStatementId_];

      v23 = *v14;
      v24 = v14[1];
      v25 = v19;
      v26 = sub_20E322860();
      [v25 setToolId_];
    }

    sub_20E067494(v14, type metadata accessor for TranscriptProtoClientAction);
  }

  return v15;
}

uint64_t sub_20E067430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoClientAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E067494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E0674F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F28, &qword_20E325D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D57F60]) init];
  sub_20E067630(a1, v5);
  v7 = type metadata accessor for ToolKitProtoQuery(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_20E0676A0(v5);
    goto LABEL_7;
  }

  v8 = *v5;
  sub_20E067708(v5);
  if (!v8)
  {
LABEL_7:
    if (v6)
    {
      v9 = 0;
      goto LABEL_9;
    }

    return v6;
  }

  if (v8 != 1)
  {
    if (!v6)
    {
      return v6;
    }

    v9 = 2;
    goto LABEL_9;
  }

  if (v6)
  {
    v9 = 1;
LABEL_9:
    [v6 setSortOrder_];
  }

  return v6;
}

uint64_t sub_20E067630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F28, &qword_20E325D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E0676A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F28, &qword_20E325D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E067708(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoQuery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E067774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_20E322740();
  if (!v7)
  {
    v20[6] = 0;
    v13 = swift_allocObject();
    *(v13 + 16) = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v14 = swift_allocObject();
    v14[2] = a4;
    v14[3] = a5;
    v14[4] = a6;
    v14[5] = a7;
    v14[6] = a1;
    v14[7] = v13;

    sub_20E3227E0();

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v15 = sub_20E3227C0();
    __swift_project_value_buffer(v15, qword_280E12C48);

    v16 = sub_20E3227B0();
    v17 = sub_20E322A40();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      swift_beginAccess();
      *(v18 + 4) = *(*(v13 + 16) + 16);

      _os_log_impl(&dword_20E031000, v16, v17, "%ld of events loaded from Biome stream", v18, 0xCu);
      MEMORY[0x20F32CA80](v18, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    a1 = *(v13 + 16);

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return a1;
}

void sub_20E0679F4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v2 = sub_20E3227C0();
    __swift_project_value_buffer(v2, qword_280E12C48);
    v3 = v1;
    oslog = sub_20E3227B0();
    v4 = sub_20E322A50();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&dword_20E031000, oslog, v4, "Error, sink failed: %@", v5, 0xCu);
      sub_20E04875C(v6, &qword_27C863F48, &qword_20E325DA8);
      MEMORY[0x20F32CA80](v6, -1, -1);
      MEMORY[0x20F32CA80](v5, -1, -1);
      v8 = oslog;
    }

    else
    {

      v8 = v1;
    }
  }
}

uint64_t sub_20E067B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a2;
  v49 = a6;
  v47 = a3;
  v50 = a1;
  v7 = sub_20E322A90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v46 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v46 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v46 - v25;
  (*(v27 + 16))(v16, v50, AssociatedTypeWitness);
  v28 = swift_dynamicCast();
  v29 = *(v17 + 56);
  if (v28)
  {
    v29(v11, 0, 1, a4);
    (*(v17 + 32))(v26, v11, a4);
    v30 = *(v17 + 16);
    v30(v24, v26, a4);
    v31 = v47;
    swift_beginAccess();
    v32 = *(v31 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 16) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_20E2250A8(0, v32[2] + 1, 1, v32);
      *(v31 + 16) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_20E2250A8((v34 > 1), v35 + 1, 1, v32);
      *(v31 + 16) = v32;
    }

    v30(v21, v24, a4);
    sub_20E068508(v35, v21, (v31 + 16), a4, v49);
    v36 = *(v17 + 8);
    v36(v24, a4);
    *(v31 + 16) = v32;
    swift_endAccess();
    return (v36)(v26, a4);
  }

  else
  {
    v29(v11, 1, 1, a4);
    (*(v8 + 8))(v11, v7);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v38 = sub_20E3227C0();
    __swift_project_value_buffer(v38, qword_280E12C48);
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_20E322B00();
    MEMORY[0x20F32BF40](0xD000000000000038, 0x800000020E35A5A0);
    v39 = sub_20E322E70();
    MEMORY[0x20F32BF40](v39);

    v41 = v51;
    v40 = v52;

    v42 = sub_20E3227B0();
    v43 = sub_20E322A50();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_20E31B6C4(v41, v40, &v51);
      _os_log_impl(&dword_20E031000, v42, v43, "%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x20F32CA80](v45, -1, -1);
      MEMORY[0x20F32CA80](v44, -1, -1);
    }

    LOBYTE(v51) = 2;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v51, v41, v40);
  }
}

void sub_20E0680D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = [v7 eventBody];
    if (v8)
    {
      v9 = v8;
      swift_beginAccess();
      v10 = v9;
      MEMORY[0x20F32BF90]();
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20E322990();
      }

      sub_20E3229B0();
      swift_endAccess();
      if (a3 == 0xD000000000000022 && 0x800000020E35A530 == a4 || (sub_20E322D60() & 1) != 0)
      {
        if (qword_280E12B88 != -1)
        {
          swift_once();
        }

        v11 = sub_20E3227C0();
        __swift_project_value_buffer(v11, qword_280E12C48);
        v12 = sub_20E3227B0();
        v13 = sub_20E322A40();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v23[0] = v15;
          *v14 = 136315138;
          *(v14 + 4) = sub_20E31B6C4(0xD00000000000003DLL, 0x800000020E35A560, v23);
          _os_log_impl(&dword_20E031000, v12, v13, "%s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v15);
          MEMORY[0x20F32CA80](v15, -1, -1);
          MEMORY[0x20F32CA80](v14, -1, -1);
        }

        LOBYTE(v23[0]) = 0x80;
        _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v23, 0xD00000000000003DLL, 0x800000020E35A560);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v16 = sub_20E3227C0();
      __swift_project_value_buffer(v16, qword_280E12C48);
      v23[0] = 0;
      v23[1] = 0xE000000000000000;
      sub_20E322B00();
      MEMORY[0x20F32BF40](0xD000000000000039, 0x800000020E35A4F0);
      v17 = sub_20E322890();
      MEMORY[0x20F32BF40](v17);

      v18 = sub_20E3227B0();
      v19 = sub_20E322A50();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v23[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_20E31B6C4(0, 0xE000000000000000, v23);
        _os_log_impl(&dword_20E031000, v18, v19, "%s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x20F32CA80](v21, -1, -1);
        MEMORY[0x20F32CA80](v20, -1, -1);
      }

      LOBYTE(v23[0]) = 0;
      _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v23, 0, 0xE000000000000000);
      swift_unknownObjectRelease();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20E068508(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_20E06AF84(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_20E0685A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v6 = sub_20E322010();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v8 = *(v7 + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20E0686A0, 0, 0);
}

uint64_t sub_20E0686A0()
{
  v81 = v0;
  v80[1] = *MEMORY[0x277D85DE8];
  v1 = [v0[22] startDate];
  if (v1)
  {
    v2 = v0[29];
    v3 = v1;
    sub_20E321FD0();

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v4 = v0[28];
    v5 = v0[29];
    v6 = v0[26];
    v7 = v0[27];
    v8 = sub_20E3227C0();
    __swift_project_value_buffer(v8, qword_280E12C48);
    (*(v7 + 16))(v4, v5, v6);
    v9 = sub_20E3227B0();
    v10 = sub_20E322A40();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[28];
    v13 = v0[29];
    v15 = v0[26];
    v14 = v0[27];
    if (v11)
    {
      v78 = v0[29];
      v16 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80[0] = v77;
      *v16 = 136315138;
      sub_20E06AEC8(&qword_280E12B30, MEMORY[0x277CC9578]);
      v17 = sub_20E322D50();
      v19 = v18;
      v20 = *(v14 + 8);
      v20(v12, v15);
      v21 = sub_20E31B6C4(v17, v19, v80);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_20E031000, v9, v10, "Loading biome events with bookmark: collecting from %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x20F32CA80](v77, -1, -1);
      MEMORY[0x20F32CA80](v16, -1, -1);

      v20(v78, v15);
    }

    else
    {

      v22 = *(v14 + 8);
      v22(v12, v15);
      v22(v13, v15);
    }
  }

  v23 = v0[21];
  v24 = swift_allocObject();
  *(v24 + 16) = MEMORY[0x277D84F90];
  v25 = (v24 + 16);
  v26 = BiomeLibrary();
  v0[20] = 0;
  v27 = [v26 streamWithIdentifier:v23 error:v0 + 20];
  swift_unknownObjectRelease();
  v28 = v0[20];
  if (v27)
  {
    v29 = v0[22];
    v30 = v28;
    v31 = sub_20E322860();
    v79 = v27;
    v32 = [v27 publisherWithUseCase:v31 options:v29];

    if (v32)
    {
      v33 = v0[24];
      v34 = v0[25];
      v35 = v0[23];
      v36 = v0[21];
      v0[6] = nullsub_1;
      v0[7] = 0;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_20E1A4ABC;
      v0[5] = &block_descriptor_10;
      v37 = _Block_copy(v0 + 2);
      v38 = swift_allocObject();
      v38[2] = v34;
      v38[3] = v24;
      v38[4] = v35;
      v38[5] = v33;
      v38[6] = v36;
      v0[12] = sub_20E06AEB8;
      v0[13] = v38;
      v0[8] = MEMORY[0x277D85DD0];
      v0[9] = 1107296256;
      v0[10] = sub_20E1A4B24;
      v0[11] = &block_descriptor_16;
      v39 = _Block_copy(v0 + 8);
      v40 = v0[13];
      v41 = v32;

      v42 = v36;

      v43 = [v41 sinkWithCompletion:v37 receiveInput:v39];
      _Block_release(v39);
      _Block_release(v37);
    }

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v44 = v0[21];
    v45 = sub_20E3227C0();
    __swift_project_value_buffer(v45, qword_280E12C48);

    v46 = v44;
    v47 = sub_20E3227B0();
    v48 = sub_20E322A40();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v80[0] = v50;
      *v49 = 134218242;
      swift_beginAccess();
      v51 = *v25;
      if (*v25 >> 62)
      {
        if (v51 < 0)
        {
          v76 = *v25;
        }

        v52 = sub_20E322BC0();
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v53 = v0[21];
      *(v49 + 4) = v52;

      *(v49 + 12) = 2080;
      v54 = sub_20E322890();
      v56 = sub_20E31B6C4(v54, v55, v80);

      *(v49 + 14) = v56;
      _os_log_impl(&dword_20E031000, v47, v48, "%ld of events loaded from %s Biome stream", v49, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x20F32CA80](v50, -1, -1);
      MEMORY[0x20F32CA80](v49, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v70 = *(v24 + 16);
  }

  else
  {
    v57 = v28;
    v58 = sub_20E321EF0();

    swift_willThrow();
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v59 = v0[21];
    v60 = sub_20E3227C0();
    __swift_project_value_buffer(v60, qword_280E12C48);
    v61 = v59;
    v62 = sub_20E3227B0();
    v63 = sub_20E322A50();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = v0[21];
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v80[0] = v66;
      *v65 = 136315138;
      v67 = sub_20E322890();
      v69 = sub_20E31B6C4(v67, v68, v80);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_20E031000, v62, v63, "Unable to create stream from BMLibrary identifer:  %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x20F32CA80](v66, -1, -1);
      MEMORY[0x20F32CA80](v65, -1, -1);
    }

    v70 = 0;
  }

  v72 = v0[28];
  v71 = v0[29];

  v73 = v0[1];
  v74 = *MEMORY[0x277D85DE8];

  return v73(v70);
}

uint64_t sub_20E068EAC(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_20E3227C0();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = *(*(sub_20E322250() - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = type metadata accessor for TranscriptProtoEvent(0);
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E069044, 0, 0);
}

uint64_t sub_20E069044()
{
  v85 = v0;
  v1 = v0[10];
  if (v1 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20E322BC0())
  {
    v3 = 0;
    v70 = v0[16];
    v4 = v0[12];
    v77 = v1 & 0xC000000000000001;
    v73 = v0[10] + 32;
    v74 = v1 & 0xFFFFFFFFFFFFFF8;
    v72 = (v4 + 16);
    v5 = MEMORY[0x277D84F90];
    v71 = (v4 + 8);
    v76 = i;
    while (1)
    {
      if (v77)
      {
        v6 = MEMORY[0x20F32C150](v3, v0[10]);
      }

      else
      {
        if (v3 >= *(v74 + 16))
        {
          goto LABEL_52;
        }

        v6 = *(v73 + 8 * v3);
      }

      v7 = v6;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v6 eventType];
      if (v8)
      {
        v9 = v8;
        v78 = sub_20E322890();
        v82 = v10;
      }

      else
      {
        v78 = 0;
        v82 = 0;
      }

      v11 = [v7 absoluteTimestamp];
      v79 = v3 + 1;
      v80 = v3;
      if (v11)
      {
        v12 = v0[19];
        v13 = v11;
        sub_20E321FD0();

        v14 = 0;
      }

      else
      {
        v14 = 1;
      }

      v16 = v0[19];
      v15 = v0[20];
      v17 = sub_20E322010();
      v18 = *(v17 - 8);
      (*(v18 + 56))(v16, v14, 1, v17);
      sub_20E06AC40(v16, v15);
      v19 = (*(v18 + 48))(v15, 1, v17);
      v20 = v0[20];
      if (v19 == 1)
      {
        sub_20E04875C(v0[20], &qword_27C863F30, &qword_20E325D90);
        v21 = 0;
        v22 = 0;
      }

      else
      {
        v21 = sub_20E321F30();
        v22 = v23;
        (*(v18 + 8))(v20, v17);
      }

      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v0[11], qword_280E12C48);

      v25 = sub_20E3227B0();
      v26 = sub_20E322A40();

      v81 = v7;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v75 = v5;
        v28 = swift_slowAlloc();
        v83[0] = v28;
        *v27 = 136315394;
        if (v82)
        {
          v29 = v78;
        }

        else
        {
          v29 = 0x3E4C494E3CLL;
        }

        v30 = v21;
        v31 = v24;
        if (v82)
        {
          v32 = v82;
        }

        else
        {
          v32 = 0xE500000000000000;
        }

        v33 = sub_20E31B6C4(v29, v32, v83);
        v24 = v31;

        *(v27 + 4) = v33;
        *(v27 + 12) = 2080;
        if (v22)
        {
          v34 = v30;
        }

        else
        {
          v34 = 0x3E4C494E3CLL;
        }

        if (!v22)
        {
          v22 = 0xE500000000000000;
        }

        v35 = sub_20E31B6C4(v34, v22, v83);

        *(v27 + 14) = v35;
        _os_log_impl(&dword_20E031000, v25, v26, "Decoding Event: %s with eventTimeStamp: %s \n", v27, 0x16u);
        swift_arrayDestroy();
        v36 = v28;
        v5 = v75;
        MEMORY[0x20F32CA80](v36, -1, -1);
        v37 = v27;
        v7 = v81;
        MEMORY[0x20F32CA80](v37, -1, -1);
      }

      else
      {
      }

      v38 = [v7 data];
      if (v38)
      {
        v39 = v38;
        v40 = v0[18];
        v42 = v0[14];
        v41 = v0[15];

        v43 = sub_20E321F00();
        v45 = v44;

        v84 = 0;
        memset(v83, 0, sizeof(v83));
        sub_20E05E834(v43, v45);
        sub_20E322240();
        sub_20E06AEC8(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent);
        sub_20E322450();
        sub_20E06ADC0(v0[18], v0[17], type metadata accessor for TranscriptProtoEvent);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = sub_20E2251F0(0, v5[2] + 1, 1, v5);
        }

        v56 = v5[2];
        v55 = v5[3];
        v1 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          v5 = sub_20E2251F0(v55 > 1, v56 + 1, 1, v5);
        }

        v58 = v0[17];
        v57 = v0[18];

        sub_20E05E888(v43, v45);
        sub_20E06ACFC(v57, type metadata accessor for TranscriptProtoEvent);
        v5[2] = v1;
        sub_20E06AE50(v58, v5 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v56, type metadata accessor for TranscriptProtoEvent);
      }

      else
      {
        (*v72)(v0[13], v24, v0[11]);
        v83[0] = 0;
        v83[1] = 0xE000000000000000;
        sub_20E322B00();
        MEMORY[0x20F32BF40](0xD000000000000040, 0x800000020E35A3B0);
        if (v82)
        {
          v46 = v78;
        }

        else
        {
          v46 = 0x3E4C494E3CLL;
        }

        if (v82)
        {
          v47 = v82;
        }

        else
        {
          v47 = 0xE500000000000000;
        }

        MEMORY[0x20F32BF40](v46, v47);

        v48 = *v83;

        v49 = sub_20E3227B0();
        v50 = sub_20E322A40();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v83[0] = v52;
          *v51 = 136315138;
          *(v51 + 4) = sub_20E31B6C4(v48, *(&v48 + 1), v83);
          _os_log_impl(&dword_20E031000, v49, v50, "%s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v52);
          MEMORY[0x20F32CA80](v52, -1, -1);
          MEMORY[0x20F32CA80](v51, -1, -1);
        }

        v1 = v0[13];
        v53 = v0[11];
        LOBYTE(v83[0]) = 3;
        _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v83, v48, *(&v48 + 1));

        (*v71)(v1, v53);
      }

      v3 = v80 + 1;
      if (v79 == v76)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_55:
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[11], qword_280E12C48);

  v59 = sub_20E3227B0();
  v60 = sub_20E322A40();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    *(v61 + 4) = v5[2];

    _os_log_impl(&dword_20E031000, v59, v60, "Decoded %ld events", v61, 0xCu);
    MEMORY[0x20F32CA80](v61, -1, -1);
  }

  else
  {
  }

  v63 = v0[19];
  v62 = v0[20];
  v65 = v0[17];
  v64 = v0[18];
  v67 = v0[13];
  v66 = v0[14];

  v68 = v0[1];

  return v68(v5);
}

uint64_t sub_20E069C58(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_20E3227C0();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(sub_20E322250() - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for TranscriptProtoEvent(0);
  v1[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = type metadata accessor for IETranscriptEventWrapper();
  v1[13] = v8;
  v9 = *(v8 - 8);
  v1[14] = v9;
  v10 = *(v9 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E069E38, 0, 0);
}

uint64_t sub_20E069E38()
{
  v123 = v0;
  v1 = v0[4];
  if (v1 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20E322BC0())
  {
    v3 = 0;
    v4 = v0[16];
    v102 = v0[4] + 32;
    v103 = v1 & 0xFFFFFFFFFFFFFF8;
    v108 = v0[13];
    v109 = v1 & 0xC000000000000001;
    v5 = v0[6];
    v101 = (v5 + 16);
    v97 = v0[11];
    v99 = v0[14];
    v100 = (v5 + 8);
    v107 = v0[9];
    v105 = MEMORY[0x277D84F90];
    v106 = i;
    while (1)
    {
      if (v109)
      {
        v6 = MEMORY[0x20F32C150](v3, v0[4]);
      }

      else
      {
        if (v3 >= *(v103 + 16))
        {
          goto LABEL_56;
        }

        v6 = *(v102 + 8 * v3);
      }

      v7 = v6;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v6 eventType];
      if (v8)
      {
        v9 = v8;
        v111 = sub_20E322890();
        v119 = v10;
      }

      else
      {
        v111 = 0;
        v119 = 0;
      }

      v11 = [v7 absoluteTimestamp];
      v116 = v3 + 1;
      v117 = v3;
      if (v11)
      {
        v12 = v0[17];
        v13 = v11;
        sub_20E321FD0();

        v14 = 0;
      }

      else
      {
        v14 = 1;
      }

      v16 = v0[17];
      v15 = v0[18];
      v17 = sub_20E322010();
      v18 = *(v17 - 8);
      (*(v18 + 56))(v16, v14, 1, v17);
      sub_20E06AC40(v16, v15);
      v19 = (*(v18 + 48))(v15, 1, v17);
      v20 = v0[18];
      if (v19 == 1)
      {
        sub_20E04875C(v0[18], &qword_27C863F30, &qword_20E325D90);
        v21 = 0;
        v22 = 0;
      }

      else
      {
        v21 = sub_20E321F30();
        v22 = v23;
        (*(v18 + 8))(v20, v17);
      }

      v118 = v7;
      v24 = [v7 monotonicTimestamp];
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v0[5], qword_280E12C48);

      v113 = v25;
      v26 = sub_20E3227B0();
      v27 = sub_20E322A40();

      v115 = v24;
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v121[0] = v29;
        *v28 = 136315394;
        if (v22)
        {
          v30 = v21;
        }

        else
        {
          v30 = 0x3E4C494E3CLL;
        }

        if (!v22)
        {
          v22 = 0xE500000000000000;
        }

        v31 = sub_20E31B6C4(v30, v22, v121);

        *(v28 + 4) = v31;
        *(v28 + 12) = 2080;
        if (v119)
        {
          v32 = v111;
        }

        else
        {
          v32 = 0x3E4C494E3CLL;
        }

        if (v119)
        {
          v33 = v119;
        }

        else
        {
          v33 = 0xE500000000000000;
        }

        v34 = sub_20E31B6C4(v32, v33, v121);

        *(v28 + 14) = v34;
        _os_log_impl(&dword_20E031000, v26, v27, "eventTimeStamp: %s for event: %s \n", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F32CA80](v29, -1, -1);
        MEMORY[0x20F32CA80](v28, -1, -1);
      }

      else
      {
      }

      v0 = v110;
      v35 = v110[16];
      v36 = *(v108 + 20);
      v4[11] = 0;
      v4[12] = 0;
      v37 = v107[11];
      v38 = type metadata accessor for TranscriptProtoPayload(0);
      (*(*(v38 - 8) + 56))(&v35[v37], 1, 1, v38);
      v39 = &v35[v107[12]];
      *v39 = 0;
      *(v39 + 1) = 0;
      v40 = v107[13];
      v41 = type metadata accessor for TranscriptProtoTimepoint(0);
      (*(*(v41 - 8) + 56))(&v35[v40], 1, 1, v41);
      v42 = v107[14];
      v43 = type metadata accessor for TranscriptProtoParticipantID(0);
      (*(*(v43 - 8) + 56))(&v35[v42], 1, 1, v43);
      v44 = v107[15];
      v45 = type metadata accessor for TranscriptProtoSpanID(0);
      (*(*(v45 - 8) + 56))(&v35[v44], 1, 1, v45);
      v46 = &v35[v107[16]];
      _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
      *v35 = 0;
      v4[1] = 0xE000000000000000;
      v4[2] = 0;
      v4[3] = 0xE000000000000000;
      v4[4] = 0;
      v4[5] = 0xE000000000000000;
      v4[6] = 0;
      v4[7] = 0xE000000000000000;
      v4[8] = 0;
      v4[9] = 0xE000000000000000;
      v4[10] = sub_20E048A4C(MEMORY[0x277D84F90]);
      *&v35[v36] = 0;
      v47 = [v118 data];
      if (v47)
      {
        v48 = v47;
        v112 = v36;
        v49 = v110[12];
        v51 = v110[8];
        v50 = v110[9];

        v52 = sub_20E321F00();
        v54 = v53;

        v122 = 0;
        memset(v121, 0, sizeof(v121));
        sub_20E05E834(v52, v54);
        sub_20E322240();
        sub_20E06AEC8(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent);
        v120 = v52;
        sub_20E322450();
        v104 = v54;
        v65 = v110[12];
        v66 = v110[10];
        sub_20E06ADC0(v65, v110[11], type metadata accessor for TranscriptProtoEvent);
        sub_20E06ADC0(v65, v66, type metadata accessor for TranscriptProtoEvent);
        v67 = sub_20E3227B0();
        v68 = sub_20E322A40();
        v69 = os_log_type_enabled(v67, v68);
        v70 = v110[10];
        v71 = v110[11];
        if (v69)
        {
          v98 = v68;
          v72 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v121[0] = v114;
          *v72 = 136315394;
          v74 = *(v97 + 48);
          v73 = *(v97 + 56);

          sub_20E06ACFC(v71, type metadata accessor for TranscriptProtoEvent);
          v0 = v110;
          v75 = sub_20E31B6C4(v74, v73, v121);

          *(v72 + 4) = v75;
          *(v72 + 12) = 2080;
          v76 = TranscriptProtoEvent.description.getter();
          v78 = v77;
          sub_20E06ACFC(v70, type metadata accessor for TranscriptProtoEvent);
          v79 = sub_20E31B6C4(v76, v78, v121);

          *(v72 + 14) = v79;
          _os_log_impl(&dword_20E031000, v67, v98, "Decoded SessionID: %s for event: %s \n", v72, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F32CA80](v114, -1, -1);
          MEMORY[0x20F32CA80](v72, -1, -1);
        }

        else
        {

          sub_20E06ACFC(v70, type metadata accessor for TranscriptProtoEvent);
          sub_20E06ACFC(v71, type metadata accessor for TranscriptProtoEvent);
        }

        v62 = v106;
        v80 = v0[15];
        v81 = v0[16];
        sub_20E06AD5C(v0[12], v81);
        *&v35[v112] = v115;
        sub_20E06ADC0(v81, v80, type metadata accessor for IETranscriptEventWrapper);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_20E225218(0, v105[2] + 1, 1, v105);
        }

        v83 = v105[2];
        v82 = v105[3];
        if (v83 >= v82 >> 1)
        {
          v105 = sub_20E225218(v82 > 1, v83 + 1, 1, v105);
        }

        v84 = v0[15];
        v85 = v0[12];

        sub_20E05E888(v120, v104);
        sub_20E06ACFC(v85, type metadata accessor for TranscriptProtoEvent);
        v105[2] = v83 + 1;
        sub_20E06AE50(v84, v105 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v83, type metadata accessor for IETranscriptEventWrapper);
      }

      else
      {
        (*v101)(v110[7], v113, v110[5]);
        v121[0] = 0;
        v121[1] = 0xE000000000000000;
        sub_20E322B00();
        MEMORY[0x20F32BF40](0xD000000000000043, 0x800000020E35A310);
        if (v119)
        {
          v55 = v111;
        }

        else
        {
          v55 = 0x3E4C494E3CLL;
        }

        if (v119)
        {
          v56 = v119;
        }

        else
        {
          v56 = 0xE500000000000000;
        }

        MEMORY[0x20F32BF40](v55, v56);

        v57 = *v121;

        v58 = sub_20E3227B0();
        v59 = sub_20E322A40();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v121[0] = v61;
          *v60 = 136315138;
          *(v60 + 4) = sub_20E31B6C4(v57, *(&v57 + 1), v121);
          _os_log_impl(&dword_20E031000, v58, v59, "%s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v61);
          MEMORY[0x20F32CA80](v61, -1, -1);
          MEMORY[0x20F32CA80](v60, -1, -1);
        }

        v62 = v106;
        v63 = v110[7];
        v64 = v110[5];
        LOBYTE(v121[0]) = 3;
        _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v121, v57, *(&v57 + 1));

        (*v100)(v63, v64);
      }

      v1 = v116;
      sub_20E06ACFC(v0[16], type metadata accessor for IETranscriptEventWrapper);
      v3 = v117 + 1;
      if (v116 == v62)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v105 = MEMORY[0x277D84F90];
LABEL_59:
  v87 = v0[17];
  v86 = v0[18];
  v89 = v0[15];
  v88 = v0[16];
  v91 = v0[11];
  v90 = v0[12];
  v92 = v0[10];
  v94 = v0[7];
  v93 = v0[8];

  v95 = v0[1];

  return v95(v105);
}

uint64_t sub_20E06AC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20E06ACB0()
{
  result = qword_27C863F40;
  if (!qword_27C863F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863F40);
  }

  return result;
}

uint64_t sub_20E06ACFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E06AD5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoEvent(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06ADC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E06AE28()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  return sub_20E071854();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20E06AE50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_20E06AEB8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[6];
  sub_20E0680D8(a1, v1[3], v1[4], v1[5]);
}

uint64_t sub_20E06AEC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_20E06AF84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20E06AFAC(uint64_t a1, void *a2)
{
  v39 = a1;
  v40 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F50, &qword_20E325DB8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = &v35 - v4;
  v46 = sub_20E322080();
  v43 = *(v46 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_20E321F90();
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20E321F70();
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v41);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20E321F50();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20E321F60();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20E321FA0();
  v36 = *(v24 - 8);
  v37 = v24;
  v25 = *(v36 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v19;
  v29 = v43;
  (*(v20 + 104))(v23, *MEMORY[0x277CC9460], v28);
  (*(v15 + 104))(v18, *MEMORY[0x277CC9458], v14);
  v30 = v45;
  (*(v10 + 104))(v13, *MEMORY[0x277CC9468], v41);
  (*(v7 + 104))(v42, *MEMORY[0x277CC9480], v44);
  v31 = v46;
  sub_20E322070();
  result = (*(v29 + 48))(v30, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v29 + 32))(v38, v30, v31);
    sub_20E321F80();
    sub_20E06BABC();
    v33 = v37;
    sub_20E321FF0();
    v34 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    sub_20E322E30();
    __swift_mutable_project_boxed_opaque_existential_1(v47, v47[3]);
    sub_20E322D80();
    (*(v36 + 8))(v27, v33);

    return __swift_destroy_boxed_opaque_existential_0(v47);
  }

  return result;
}

uint64_t sub_20E06B628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v26 = sub_20E321E50();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v26);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20E321E30();
  v23 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20E321E70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20E321EA0();
  (*(v14 + 16))(v17, a1, v13);

  sub_20E321E80();
  v19 = v24;
  (*(v9 + 16))(v12, v24, v8);
  sub_20E321E40();
  v21 = v25;
  v20 = v26;
  (*(v4 + 16))(v7, v25, v26);
  sub_20E321E60();

  (*(v4 + 8))(v21, v20);
  (*(v9 + 8))(v19, v23);
  (*(v14 + 8))(a1, v13);
  return v18;
}

uint64_t sub_20E06B8C4()
{
  v0 = sub_20E321E50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20E321E30();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20E321E70();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20E321EB0();
  *v13 = sub_20E06AFAC;
  v13[1] = 0;
  (*(v10 + 104))(v13, *MEMORY[0x277CC8770], v9);
  sub_20E321E20();
  (*(v1 + 104))(v4, *MEMORY[0x277CC8740], v0);
  result = sub_20E06B628(v13, v8, v4);
  qword_27C8CC280 = result;
  return result;
}

unint64_t sub_20E06BABC()
{
  result = qword_27C863F58;
  if (!qword_27C863F58)
  {
    sub_20E321FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863F58);
  }

  return result;
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

uint64_t sub_20E06BB64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F48, &qword_20E325DA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E06BBCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v61 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v60 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F18, &qword_20E325D28);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = (&v54 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = &v54 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - v15;
  v17 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v63 = a1;

  v24 = 0;
  v54 = v22;
  v55 = a1 + 64;
  v59 = v7;
  v56 = v16;
  if (v21)
  {
    while (1)
    {
      v66 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v21)) | (v24 << 6);
      v27 = *(v63 + 56);
      v28 = (*(v63 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = type metadata accessor for TranscriptProtoStatementID(0);
      v64 = *(v31 - 8);
      v65 = v31;
      v32 = v62;
      sub_20E04F364(v27 + *(v64 + 72) * v26, &v62[*(v7 + 48)]);
      *v32 = v29;
      v32[1] = v30;
      sub_20E066940(v32, v16);
      v33 = objc_allocWithZone(MEMORY[0x277D57D58]);

      v34 = [v33 init];
      if (!v34)
      {
        break;
      }

      v66 = v34;
      v35 = v57;
      sub_20E0486F4(v16, v57, &qword_27C863F18, &qword_20E325D28);
      v36 = *v35;
      v37 = v35[1];
      v38 = *(v7 + 48);
      v39 = sub_20E322860();

      v40 = v35 + v38;
      v41 = v66;
      sub_20E04F4A0(v40);
      [v41 setCallParameterName_];

      v42 = v58;
      sub_20E0486F4(v16, v58, &qword_27C863F18, &qword_20E325D28);
      v43 = *(v42 + 8);

      v44 = v60;
      sub_20E0529B0(v42 + *(v7 + 48), v60);
      v46 = v64;
      v45 = v65;
      (*(v64 + 56))(v44, 0, 1, v65);
      v47 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
      v48 = v61;
      sub_20E0486F4(v44, v61, &qword_27C8639D0, &unk_20E33C230);
      if ((*(v46 + 48))(v48, 1, v45) == 1)
      {
        sub_20E04875C(v44, &qword_27C8639D0, &unk_20E33C230);
        v49 = v48;
      }

      else
      {
        v50 = *v48;
        sub_20E04F4A0(v48);
        v51 = v50;
        v41 = v66;
        [v47 setIndex_];
        v49 = v44;
      }

      sub_20E04875C(v49, &qword_27C8639D0, &unk_20E33C230);
      [v41 setStatementId_];

      v52 = v41;
      MEMORY[0x20F32BF90]();
      v7 = v59;
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20E322990();
      }

      v21 &= v21 - 1;
      sub_20E3229B0();

      v16 = v56;
      result = sub_20E04875C(v56, &qword_27C863F18, &qword_20E325D28);
      v17 = v67;
      v22 = v54;
      v18 = v55;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    sub_20E04875C(v16, &qword_27C863F18, &qword_20E325D28);

    return 0;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        return v17;
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        v66 = v17;
        v24 = v25;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SaveResponseType.hashValue.getter()
{
  v1 = *v0;
  sub_20E322DE0();
  MEMORY[0x20F32C430](v1);
  return sub_20E322E00();
}

unint64_t sub_20E06C19C()
{
  result = qword_27C863F60;
  if (!qword_27C863F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863F60);
  }

  return result;
}

void *sub_20E06C224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F68, &unk_20E3461B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20E06C3F8(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20E06C468(v5);
    return 0;
  }

  else
  {
    sub_20E06C4D0(v5, v10);
    v12 = [objc_allocWithZone(MEMORY[0x277D580F8]) init];
    v11 = v12;
    if (v12)
    {
      [v12 setExists_];
      if (sub_20E052170(*v10))
      {
        sub_20E06C590();
        v13 = sub_20E322960();
      }

      else
      {
        v13 = 0;
      }

      [v11 setInterpretedStatementResults_];
    }

    sub_20E06C534(v10);
  }

  return v11;
}

uint64_t sub_20E06C3F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F68, &unk_20E3461B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06C468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F68, &unk_20E3461B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E06C4D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06C534(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20E06C590()
{
  result = qword_27C863F70;
  if (!qword_27C863F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863F70);
  }

  return result;
}

uint64_t sub_20E06C5DC@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  if (v8)
  {
    sub_20E322020();
    v9 = sub_20E322060();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_20E06CC70(v7);
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v11 = sub_20E3227C0();
      __swift_project_value_buffer(v11, qword_280E12C48);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_20E322B00();
      MEMORY[0x20F32BF40](0xD000000000000040, 0x800000020E35A630);
      v12 = sub_20E06CAC8(a1);
      MEMORY[0x20F32BF40](v12);

      v14 = v30;
      v13 = v31;

      v15 = sub_20E3227B0();
      v16 = sub_20E322A40();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v30 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_20E31B6C4(v14, v13, &v30);
        _os_log_impl(&dword_20E031000, v15, v16, "%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x20F32CA80](v18, -1, -1);
        MEMORY[0x20F32CA80](v17, -1, -1);
      }

      LOBYTE(v30) = 97;
      _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v30, v14, v13);

      return sub_20E322020();
    }

    else
    {
      (*(v10 + 32))(a2, v7, v9);
      return (*(v10 + 56))(a2, 0, 1, v9);
    }
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v20 = sub_20E3227C0();
    __swift_project_value_buffer(v20, qword_280E12C48);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_20E322B00();
    MEMORY[0x20F32BF40](0xD000000000000049, 0x800000020E35A5E0);
    v21 = sub_20E06CAC8(a1);
    MEMORY[0x20F32BF40](v21);

    v23 = v30;
    v22 = v31;

    v24 = sub_20E3227B0();
    v25 = sub_20E322A40();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_20E31B6C4(v23, v22, &v30);
      _os_log_impl(&dword_20E031000, v24, v25, "%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x20F32CA80](v27, -1, -1);
      MEMORY[0x20F32CA80](v26, -1, -1);
    }

    LOBYTE(v30) = 97;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v30, v23, v22);

    v28 = sub_20E322060();
    v29 = *(*(v28 - 8) + 56);

    return v29(a2, 1, 1, v28);
  }
}

unint64_t sub_20E06CAC8(char a1)
{
  result = 0x7972657551776172;
  switch(a1)
  {
    case 1:
      result = 0x4449776172;
      break;
    case 2:
      result = 0x6973736553776172;
      break;
    case 3:
      result = 0x6552746E65696C63;
      break;
    case 4:
      result = 0x76456E6F69746361;
      break;
    case 5:
      result = 0x6E6576456E616C70;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x457761526F646E75;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_20E06CC70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20E06CCD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v47 - v6;
  v58 = sub_20E322060();
  v7 = *(v58 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoStatementResult(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(*a1 + 16);
  if (v16)
  {
    v17 = *a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v18 = *(v12 + 72);
    v19 = MEMORY[0x277D84F90];
    do
    {
      sub_20E06D378(v17, v15);
      v21 = *v15;
      v22 = v15[1];

      sub_20E06D3DC(v15);
      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_20E225240(0, *(v19 + 2) + 1, 1, v19);
        }

        v24 = *(v19 + 2);
        v23 = *(v19 + 3);
        if (v24 >= v23 >> 1)
        {
          v19 = sub_20E225240((v23 > 1), v24 + 1, 1, v19);
        }

        *(v19 + 2) = v24 + 1;
        v20 = &v19[16 * v24];
        *(v20 + 4) = v21;
        *(v20 + 5) = v22;
      }

      v17 += v18;
      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v57 = *(v19 + 2);
  if (!v57)
  {
LABEL_29:

    return;
  }

  v25 = 0;
  v62 = 0;
  v59 = (v7 + 48);
  v49 = "annot formulate UUID for ";
  v50 = (v7 + 56);
  v48 = "mulate UUID for ";
  v53 = (v7 + 32);
  v54 = (v7 + 8);
  v26 = (v19 + 40);
  *&v13 = 136315138;
  v47 = v13;
  v28 = v51;
  v27 = v52;
  v29 = v58;
  v56 = v19;
  while (v25 < *(v19 + 2))
  {
    v30 = *(v26 - 1);
    v31 = *v26;

    sub_20E322020();
    v32 = *v59;
    if ((*v59)(v27, 1, v29) != 1)
    {

      v40 = *v53;
      (*v53)(v28, v27, v29);
      (*v50)(v28, 0, 1, v29);
      goto LABEL_25;
    }

    sub_20E06CC70(v27);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v33 = sub_20E3227C0();
    __swift_project_value_buffer(v33, qword_280E12C48);
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_20E322B00();
    MEMORY[0x20F32BF40](0xD000000000000040, v49 | 0x8000000000000000);
    MEMORY[0x20F32BF40](0x76456E6F69746361, 0xED00004449746E65);
    v35 = v60;
    v34 = v61;

    v36 = sub_20E3227B0();
    v37 = sub_20E322A40();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v60 = v39;
      *v38 = v47;
      *(v38 + 4) = sub_20E31B6C4(v35, v34, &v60);
      _os_log_impl(&dword_20E031000, v36, v37, "%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x20F32CA80](v39, -1, -1);
      MEMORY[0x20F32CA80](v38, -1, -1);
    }

    LOBYTE(v60) = 97;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v60, v35, v34);

    v28 = v51;
    sub_20E322020();

    v29 = v58;
    if (v32(v28, 1, v58) != 1)
    {
      v27 = v52;
      v40 = *v53;
LABEL_25:
      v41 = v55;
      v40(v55, v28, v29);
      v42 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v43 = sub_20E322030();
      v44 = [v42 initWithNSUUID_];

      if (v62)
      {
        v45 = v44;
        MEMORY[0x20F32BF90]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v46 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v29 = v58;
        (*v54)(v41, v58);
      }

      else
      {
        (*v54)(v41, v29);
      }

      goto LABEL_14;
    }

    sub_20E06CC70(v28);
    v27 = v52;
LABEL_14:
    ++v25;
    v26 += 2;
    v19 = v56;
    if (v57 == v25)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
}

uint64_t sub_20E06D378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06D3DC(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoStatementResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20E06D438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v40 - v4);
  v6 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F78, &unk_20E325EA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v40 - v12;
  v14 = type metadata accessor for TranscriptProtoPlan(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v13, &qword_27C863F78, &unk_20E325EA0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_20E06D9D8(v13, v18);
    v19 = [objc_allocWithZone(MEMORY[0x277D57F20]) init];
    if (!v19)
    {
      sub_20E06DAEC(v18, type metadata accessor for TranscriptProtoPlan);
      return 0;
    }

    v41 = v19;
    [v19 setExists_];
    v42 = v18;
    v20 = *(v18 + 4);
    v45 = MEMORY[0x277D84F90];
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v23 = *(v43 + 72);
      do
      {
        sub_20E06DA3C(v22, v9);
        v24 = [objc_allocWithZone(MEMORY[0x277D57F58]) init];
        if (v24)
        {
          v25 = v24;
          v26 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
          sub_20E0486F4(v9, v5, &qword_27C8639D0, &unk_20E33C230);
          v27 = type metadata accessor for TranscriptProtoStatementID(0);
          if ((*(*(v27 - 8) + 48))(v5, 1, v27) == 1)
          {
            sub_20E04875C(v5, &qword_27C8639D0, &unk_20E33C230);
          }

          else
          {
            v28 = *v5;
            sub_20E06DAEC(v5, type metadata accessor for TranscriptProtoStatementID);
            [v26 setIndex_];
          }

          [v25 setStatementId_];

          v29 = v44;
          v30 = sub_20E074FF8(&v9[*(v44 + 20)]);
          [v25 setExpressionName_];

          [v25 setIsRoot_];
          v31 = sub_20E06DAEC(v9, type metadata accessor for TranscriptProtoProgramStatement);
          MEMORY[0x20F32BF90](v31);
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20E322990();
          }

          sub_20E3229B0();
        }

        else
        {
          sub_20E06DAEC(v9, type metadata accessor for TranscriptProtoProgramStatement);
        }

        v22 += v23;
        --v21;
      }

      while (v21);
    }

    sub_20E06DAA0();
    v32 = sub_20E322960();

    v33 = v41;
    [v41 setStatements_];

    v34 = v42;
    if (*(v42 + 6))
    {
      v35 = *(v42 + 5);
      v36 = sub_20E322860();
    }

    else
    {
      v36 = 0;
    }

    [v33 setOverrideId_];

    v37 = *(v34 + 56);
    if (v37 > 2)
    {
      if (v37 - 4 >= 2)
      {
        if (v37 != 3)
        {
LABEL_31:
          sub_20E06DAEC(v34, type metadata accessor for TranscriptProtoPlan);
          return v33;
        }

        v38 = 5;
      }

      else
      {
        v38 = 0;
      }
    }

    else if (*(v34 + 56))
    {
      if (v37 == 1)
      {
        v38 = 2;
      }

      else
      {
        v38 = 4;
      }
    }

    else
    {
      v38 = 1;
    }

    [v33 setPlanSource_];
    goto LABEL_31;
  }

  sub_20E04875C(v13, &qword_27C863F78, &unk_20E325EA0);
  return 0;
}

uint64_t sub_20E06D9D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlan(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06DA3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoProgramStatement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20E06DAA0()
{
  result = qword_27C863F80;
  if (!qword_27C863F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863F80);
  }

  return result;
}

uint64_t sub_20E06DAEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E06DB4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  sub_20E06DC78(a1, &v13 - v7);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v8, 1, PayloadEnum) == 1)
  {
    v10 = 0;
  }

  else
  {
    sub_20E06DC78(v8, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_20E06DD50(v6);
    v10 = (EnumCaseMultiPayload + 1);
  }

  sub_20E06DCE8(v8);
  return v10;
}

uint64_t sub_20E06DC78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06DCE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E06DD50(uint64_t a1)
{
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  (*(*(PayloadEnum - 8) + 8))(a1, PayloadEnum);
  return a1;
}

id sub_20E06DDAC(uint64_t a1)
{
  v2 = sub_20E322060();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F88, &unk_20E33C200);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x28223BE20](v11);
  v38 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F90, &unk_20E3461E0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v21 = type metadata accessor for TranscriptProtoRequest(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v20, &qword_27C863F90, &unk_20E3461E0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_20E04875C(v20, &qword_27C863F90, &unk_20E3461E0);
    return 0;
  }

  else
  {
    sub_20E06E328(v20, v25, type metadata accessor for TranscriptProtoRequest);
    v26 = [objc_allocWithZone(MEMORY[0x277D57FA8]) init];
    if (v26)
    {
      sub_20E0486F4(&v25[*(v21 + 24)], v10, &qword_27C863F88, &unk_20E33C200);
      v27 = v40;
      if ((*(v40 + 48))(v10, 1, v11) == 1)
      {
        sub_20E04875C(v10, &qword_27C863F88, &unk_20E33C200);
      }

      else
      {
        v28 = v10;
        v29 = v38;
        sub_20E06E328(v28, v38, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
        v30 = v39;
        sub_20E06E390(v29, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
        (*(v27 + 56))(v30, 0, 1, v11);
        v31 = sub_20E31BDE8(v30);
        sub_20E04875C(v30, &qword_27C863F88, &unk_20E33C200);
        [v26 setPrescribedPlan_];

        sub_20E06E3F8(v29, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      }

      v32 = v41;
      sub_20E322050();
      v33 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v34 = sub_20E322030();
      v35 = [v33 initWithNSUUID_];

      (*(v42 + 8))(v32, v43);
      sub_20E06E390(v25, v18, type metadata accessor for TranscriptProtoRequest);
      (*(v22 + 56))(v18, 0, 1, v21);
      v36 = sub_20E1A38FC(v18, v35);
      sub_20E04875C(v18, &qword_27C863F90, &unk_20E3461E0);
      [v26 setContent_];
      [v26 setIsSafetyMode_];

      sub_20E06E3F8(v25, type metadata accessor for TranscriptProtoRequest);
    }

    else
    {
      sub_20E06E3F8(v25, type metadata accessor for TranscriptProtoRequest);
    }
  }

  return v26;
}

uint64_t sub_20E06E328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E06E390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E06E3F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E06E458(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v20 - v8);
  v10 = [objc_allocWithZone(MEMORY[0x277D58138]) init];
  sub_20E06E698(a1, v9);
  v11 = type metadata accessor for ToolKitProtoTypedValue(0);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_20E06E708(v9);
    return v10;
  }

  v12 = *v9;
  sub_20E047CF8(*v9);
  sub_20E06E7D4(v9, type metadata accessor for ToolKitProtoTypedValue);
  if ((~v12 & 0xF000000000000007) == 0)
  {
    return v10;
  }

  v13 = v12 >> 61;
  if ((v12 >> 61) > 2)
  {
    if (v13 > 4)
    {
LABEL_12:
      sub_20E047CA8(v12);
      return v10;
    }

    if (v13 == 3)
    {
      v14 = swift_projectBox();
      sub_20E06E770(v14, v5);
      if (v10)
      {
        v15 = v10;
        v16 = sub_20E04F548(v5);
        [v15 setCollection_];
      }

      sub_20E06E7D4(v5, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
      goto LABEL_12;
    }
  }

  sub_20E047CA8(v12);
  if (v10)
  {
    v17 = v10;
    v18 = sub_20E24FF14(a1);
    [v17 setValue_];
  }

  return v10;
}

uint64_t sub_20E06E698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06E708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E06E770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E06E7D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20E06E834(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for RequestEventResult(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v65 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v62 - v15;
  v72 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v69 = *(v72 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x28223BE20](v72);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for TranscriptProtoEvent(0);
  v73 = *(v71 - 8);
  v20 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E12B88 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v23 = sub_20E3227C0();
    v68 = __swift_project_value_buffer(v23, qword_280E12C48);
    v24 = sub_20E3227B0();
    v25 = sub_20E322A40();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20E031000, v24, v25, "Producing features for events from a clientRequest", v26, 2u);
      MEMORY[0x20F32CA80](v26, -1, -1);
    }

    v27 = a1[2];
    if (!v27)
    {
      break;
    }

    v88 = 1;
    a1 = (a1 + ((*(v73 + 80) + 32) & ~*(v73 + 80)));
    v28 = a1[8];
    v29 = a1[9];
    v67 = a2;
    v63 = v4;
    v66 = (v28 != 0xD00000000000001ELL || 0x800000020E35A8D0 != v29) && (sub_20E322D60() & 1) == 0;
    v34 = 0;
    a2 = (v69 + 48);
    while (1)
    {
      v4 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      sub_20E071018(a1 + *(v73 + 72) * v34, v22, type metadata accessor for TranscriptProtoEvent);
      sub_20E0486F4(&v22[*(v71 + 44)], v12, &qword_27C863FC0, &unk_20E325F70);
      v35 = type metadata accessor for TranscriptProtoPayload(0);
      if ((*(*(v35 - 8) + 48))(v12, 1, v35) == 1)
      {
        sub_20E04875C(v12, &qword_27C863FC0, &unk_20E325F70);
        (*(v69 + 56))(v16, 1, 1, v72);
LABEL_21:
        sub_20E04875C(v16, &qword_27C863FC8, &unk_20E33C1D0);
        v78 = 0;
        *&v79 = 0xE000000000000000;
        sub_20E322B00();
        MEMORY[0x20F32BF40](0xD000000000000051, 0x800000020E35A8F0);
        MEMORY[0x20F32BF40](*(v22 + 4), *(v22 + 5));
        v51 = v78;
        v50 = v79;

        v52 = sub_20E3227B0();
        v53 = sub_20E322A40();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v78 = v55;
          *v54 = 136315138;
          *(v54 + 4) = sub_20E31B6C4(v51, v50, &v78);
          _os_log_impl(&dword_20E031000, v52, v53, "%s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v55);
          MEMORY[0x20F32CA80](v55, -1, -1);
          MEMORY[0x20F32CA80](v54, -1, -1);
        }

        v56 = v67;
        LOBYTE(v78) = 65;
        _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v78, v51, v50);

        sub_20E071080(v22, type metadata accessor for TranscriptProtoEvent);
        *v56 = 0u;
        v56[1] = 0u;
        v56[2] = 0u;
        *(v56 + 46) = 0u;
        LOBYTE(v78) = v66;
        *(&v78 + 1) = *v90;
        HIDWORD(v78) = *&v90[3];
        v79 = xmmword_20E325EB0;
        v80 = 2;
        *v81 = *v89;
        *&v81[3] = *&v89[3];
        v82 = 0;
        v83 = 0xE000000000000000;
        v84 = MEMORY[0x277D84F90];
        v85 = 0;
        v86 = v88;
        v87 = 8;
LABEL_26:
        sub_20E0710E0(&v78);
        return;
      }

      sub_20E0486F4(v12, v16, &qword_27C863FC8, &unk_20E33C1D0);
      sub_20E071080(v12, type metadata accessor for TranscriptProtoPayload);
      if ((*a2)(v16, 1, v72) == 1)
      {
        goto LABEL_21;
      }

      sub_20E071134(v16, v19, type metadata accessor for TranscriptProtoPayloadEnum);
      sub_20E06F274(v19);
      sub_20E071080(v19, type metadata accessor for TranscriptProtoPayloadEnum);
      sub_20E071080(v22, type metadata accessor for TranscriptProtoEvent);
      ++v34;
      if (v4 == v27)
      {
        v36 = v70 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
        swift_beginAccess();
        v37 = v64;
        sub_20E071018(v36, v64, type metadata accessor for RequestEventResult);
        sub_20E0706C0(v37, &v78);
        sub_20E071080(v37, type metadata accessor for RequestEventResult);
        v38 = v79;
        v73 = v78;
        v39 = BYTE8(v79);
        sub_20E07119C(3, 0, 2);
        v41 = *(v36 + 8);
        v40 = *(v36 + 16);
        v42 = *v36;
        v43 = v63;
        v44 = *(v36 + *(v63 + 72));
        v45 = v65;
        sub_20E071018(v36, v65, type metadata accessor for RequestEventResult);
        v46 = *(v43 + 76);
        v47 = type metadata accessor for TranscriptProtoStatementID(0);
        v48 = (*(*(v47 - 8) + 48))(v45 + v46, 1, v47);
        if (v48)
        {
          v49 = 0;
        }

        else
        {
          v49 = *(v45 + v46);
        }

        v57 = v48 != 0;

        sub_20E071080(v45, type metadata accessor for RequestEventResult);
        v88 = v57;
        v58 = v66;
        LOBYTE(v75) = v66;
        v59 = v73;
        *(&v75 + 1) = v73;
        *&v76 = v38;
        BYTE8(v76) = v39;
        *v77 = v41;
        *&v77[8] = v40;
        *&v77[16] = v44;
        *&v77[24] = v49;
        v77[28] = v57;
        v77[29] = v42;
        v60 = v76;
        v61 = v67;
        *v67 = v75;
        v61[1] = v60;
        v61[2] = *v77;
        *(v61 + 46) = *&v77[14];
        LOBYTE(v78) = v58;
        *&v79 = v59;
        *(&v79 + 1) = v38;
        v80 = v39;
        v82 = v41;
        v83 = v40;
        v84 = v44;
        v85 = v49;
        v86 = v57;
        v87 = v42;
        sub_20E0711B4(&v75, v74);
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v30 = sub_20E3227B0();
  v31 = sub_20E322A40();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v78 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_20E31B6C4(0xD000000000000030, 0x800000020E35A950, &v78);
    _os_log_impl(&dword_20E031000, v30, v31, "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x20F32CA80](v33, -1, -1);
    MEMORY[0x20F32CA80](v32, -1, -1);
  }

  LOBYTE(v78) = 64;
  _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v78, 0xD000000000000030, 0x800000020E35A950);
  *(a2 + 46) = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
}

int *sub_20E06F274(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v157 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v148 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v155 = &v144 - v9;
  v160 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v147 = *(v160 - 8);
  v10 = *(v147 + 64);
  v11 = MEMORY[0x28223BE20](v160);
  v156 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v144 = &v144 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v146 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v153 = &v144 - v18;
  v19 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v158 = *(v19 - 8);
  v159 = v19;
  v20 = *(v158 + 64);
  MEMORY[0x28223BE20](v19);
  v145 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v152 = &v144 - v24;
  v150 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v149 = *(v150 - 8);
  v25 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v154 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = (&v144 - v29);
  v165 = type metadata accessor for TranscriptProtoStatementResult(0);
  v31 = *(*(v165 - 1) + 64);
  MEMORY[0x28223BE20](v165);
  v161 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35);
  v151 = &v144 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v144 - v40;
  v164 = type metadata accessor for TranscriptProtoStatementID(0);
  v162 = *(v164 - 8);
  v42 = *(v162 + 64);
  v43 = MEMORY[0x28223BE20](v164);
  v45 = &v144 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v47 = &v144 - v46;
  v48 = type metadata accessor for TranscriptProtoPlan(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v51 = &v144 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v144 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v58 = &v144 - v57;
  v163 = a1;
  sub_20E071018(a1, &v144 - v57, type metadata accessor for TranscriptProtoPayloadEnum);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (result <= 12)
  {
    if (result <= 3)
    {
      if (result == 2)
      {
        goto LABEL_22;
      }

      if (result != 3)
      {
        goto LABEL_38;
      }

      sub_20E071080(v58, type metadata accessor for TranscriptProtoPayloadEnum);
      v60 = v166 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
      swift_beginAccess();
      result = type metadata accessor for RequestEventResult(0);
      v61 = result[9];
      v62 = *(v60 + v61);
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (!v63)
      {
        goto LABEL_34;
      }

      __break(1u);
    }

    if (result != 4)
    {
      if (result != 7)
      {
        goto LABEL_38;
      }

      sub_20E071080(v58, type metadata accessor for TranscriptProtoPayloadEnum);
      v65 = v166 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
      swift_beginAccess();
      v66 = *(type metadata accessor for RequestEventResult(0) + 60);
      v67 = *(v65 + v66);
      v63 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (!v63)
      {
        *(v65 + v66) = v68;
        v69 = sub_20E31D9E8(v167, v163);
        *v65 = v167[0];
        v70 = *(v65 + 16);
        *(v65 + 8) = v69;
        *(v65 + 16) = v71;
      }

      __break(1u);
      goto LABEL_66;
    }

    sub_20E071080(v58, type metadata accessor for TranscriptProtoPayloadEnum);
    v60 = v166 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
    swift_beginAccess();
    result = type metadata accessor for RequestEventResult(0);
    v61 = result[10];
    v81 = *(v60 + v61);
    v63 = __OFADD__(v81, 1);
    v64 = v81 + 1;
    if (v63)
    {
      __break(1u);
      goto LABEL_28;
    }

LABEL_34:
    *(v60 + v61) = v64;
    return result;
  }

  if (result > 17)
  {
    if (result != 18)
    {
      if (result != 19)
      {
        if (result == 38)
        {
          swift_beginAccess();
          return type metadata accessor for RequestEventResult(0);
        }

LABEL_38:
        if (qword_280E12B88 == -1)
        {
LABEL_39:
          v106 = sub_20E3227C0();
          __swift_project_value_buffer(v106, qword_280E12C48);
          sub_20E071018(v163, v56, type metadata accessor for TranscriptProtoPayloadEnum);
          v107 = sub_20E3227B0();
          v108 = sub_20E322A40();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v168 = v110;
            *v109 = 136315138;
            v111 = TranscriptProtoPayloadEnum.eventTypeString.getter();
            v113 = v112;
            sub_20E071080(v56, type metadata accessor for TranscriptProtoPayloadEnum);
            v114 = sub_20E31B6C4(v111, v113, &v168);

            *(v109 + 4) = v114;
            _os_log_impl(&dword_20E031000, v107, v108, "Skip event: %s", v109, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v110);
            MEMORY[0x20F32CA80](v110, -1, -1);
            MEMORY[0x20F32CA80](v109, -1, -1);
          }

          else
          {

            sub_20E071080(v56, type metadata accessor for TranscriptProtoPayloadEnum);
          }

          v115 = type metadata accessor for TranscriptProtoPayloadEnum;
          v116 = v58;
          return sub_20E071080(v116, v115);
        }

LABEL_70:
        swift_once();
        goto LABEL_39;
      }

      v94 = v161;
      sub_20E071134(v58, v161, type metadata accessor for TranscriptProtoStatementResult);
      v95 = v166 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
      swift_beginAccess();
      v96 = type metadata accessor for RequestEventResult(0);
      v97 = *(v96 + 56);
      v98 = *(v95 + v97);
      v63 = __OFADD__(v98, 1);
      v99 = v98 + 1;
      if (!v63)
      {
        v100 = v96;
        *(v95 + v97) = v99;
        sub_20E0486F4(v94 + v165[9], v30, &qword_27C8639C8, &unk_20E323870);
        v101 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
        v102 = (*(*(v101 - 8) + 48))(v30, 1, v101);
        v103 = v164;
        if (v102 == 1)
        {
          sub_20E04875C(v30, &qword_27C8639C8, &unk_20E323870);
          v105 = v154;
          v104 = v155;
        }

        else
        {
          v119 = *v30;
          v118 = v30[1];

          sub_20E071080(v30, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
          swift_beginAccess();
          v120 = v100[18];
          v121 = *(v95 + v120);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v95 + v120) = v121;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v121 = sub_20E225240(0, *(v121 + 2) + 1, 1, v121);
            *(v95 + v120) = v121;
          }

          v124 = *(v121 + 2);
          v123 = *(v121 + 3);
          if (v124 >= v123 >> 1)
          {
            v121 = sub_20E225240((v123 > 1), v124 + 1, 1, v121);
          }

          *(v121 + 2) = v124 + 1;
          v125 = &v121[16 * v124];
          *(v125 + 4) = v119;
          *(v125 + 5) = v118;
          *(v95 + v120) = v121;
          swift_endAccess();
          v105 = v154;
          v104 = v155;
          v94 = v161;
          v103 = v164;
        }

        sub_20E0486F4(v94 + v165[7], v37, &qword_27C8639D0, &unk_20E33C230);
        v126 = v162;
        if ((*(v162 + 48))(v37, 1, v103) == 1)
        {
          sub_20E04875C(v37, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          sub_20E071134(v37, v45, type metadata accessor for TranscriptProtoStatementID);
          v127 = v45;
          v128 = v151;
          sub_20E071134(v127, v151, type metadata accessor for TranscriptProtoStatementID);
          (*(v126 + 56))(v128, 0, 1, v103);
          swift_beginAccess();
          sub_20E05EC5C(v128, v95 + v100[19], &qword_27C8639D0, &unk_20E33C230);
          swift_endAccess();
        }

        v129 = v156;
        v131 = v152;
        v130 = v153;
        sub_20E0486F4(v94 + v165[5], v152, &qword_27C863FB8, &unk_20E325F60);
        if ((*(v149 + 48))(v131, 1, v150) == 1)
        {
          sub_20E071080(v94, type metadata accessor for TranscriptProtoStatementResult);
          return sub_20E04875C(v131, &qword_27C863FB8, &unk_20E325F60);
        }

        sub_20E071134(v131, v105, type metadata accessor for TranscriptProtoStatementResultPayload);
        sub_20E0486F4(v105, v130, &qword_27C863BA8, &unk_20E345F00);
        if ((*(v158 + 48))(v130, 1, v159) == 1)
        {
          sub_20E071080(v105, type metadata accessor for TranscriptProtoStatementResultPayload);
          sub_20E071080(v94, type metadata accessor for TranscriptProtoStatementResult);
          return sub_20E04875C(v130, &qword_27C863BA8, &unk_20E345F00);
        }

        v134 = v145;
        sub_20E071134(v130, v145, type metadata accessor for TranscriptProtoStatementOutcome);
        sub_20E0486F4(v134, v104, &qword_27C863BA0, &unk_20E325F20);
        if ((*(v147 + 48))(v104, 1, v160) == 1)
        {
          sub_20E071080(v134, type metadata accessor for TranscriptProtoStatementOutcome);
          sub_20E071080(v105, type metadata accessor for TranscriptProtoStatementResultPayload);
          sub_20E071080(v94, type metadata accessor for TranscriptProtoStatementResult);
          return sub_20E04875C(v104, &qword_27C863BA0, &unk_20E325F20);
        }

        v135 = v104;
        v136 = v144;
        sub_20E071134(v135, v144, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        sub_20E071018(v136, v129, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          result = sub_20E071080(v129, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          v137 = v100[16];
          v138 = *(v95 + v137);
          v63 = __OFADD__(v138, 1);
          v139 = v138 + 1;
          if (v63)
          {
            __break(1u);
          }

          else
          {
            *(v95 + v137) = v139;
            v140 = sub_20E31D9E8(v167, v163);
            v142 = v141;
            sub_20E071080(v136, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            sub_20E071080(v134, type metadata accessor for TranscriptProtoStatementOutcome);
            sub_20E071080(v105, type metadata accessor for TranscriptProtoStatementResultPayload);
            sub_20E071080(v94, type metadata accessor for TranscriptProtoStatementResult);
            *v95 = v167[0];
            v143 = *(v95 + 16);
            *(v95 + 8) = v140;
            *(v95 + 16) = v142;
          }

          return result;
        }

        sub_20E071080(v136, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        sub_20E071080(v134, type metadata accessor for TranscriptProtoStatementOutcome);
        sub_20E071080(v105, type metadata accessor for TranscriptProtoStatementResultPayload);
        sub_20E071080(v94, type metadata accessor for TranscriptProtoStatementResult);
        v116 = v129;
        v115 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
        return sub_20E071080(v116, v115);
      }

LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_28:
    v56 = v157;
    sub_20E071134(v58, v157, type metadata accessor for TranscriptProtoSystemResponse);
    v82 = v166 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
    swift_beginAccess();
    v83 = type metadata accessor for RequestEventResult(0);
    v84 = *(v83 + 48);
    v85 = *(v82 + v84);
    v63 = __OFADD__(v85, 1);
    v86 = v85 + 1;
    v58 = v160;
    if (!v63)
    {
      v87 = v83;
      *(v82 + v84) = v86;
      v88 = *v56;
      if (*(*v56 + 16))
      {
        v89 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) - 8);
        v90 = v88 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
        v91 = v146;
        sub_20E0486F4(v90, v146, &qword_27C863BA8, &unk_20E345F00);
        if ((*(v158 + 48))(v91, 1, v159) != 1)
        {
          v132 = v91;
          v133 = v91;
          v92 = v148;
          sub_20E0486F4(v132, v148, &qword_27C863BA0, &unk_20E325F20);
          sub_20E071080(v133, type metadata accessor for TranscriptProtoStatementOutcome);
          goto LABEL_57;
        }

        sub_20E04875C(v91, &qword_27C863BA8, &unk_20E345F00);
      }

      v92 = v148;
      (*(v147 + 56))(v148, 1, 1, v58);
LABEL_57:
      swift_beginAccess();
      sub_20E05EC5C(v92, v82 + *(v87 + 24), &qword_27C863BA0, &unk_20E325F20);
      swift_endAccess();
      v115 = type metadata accessor for TranscriptProtoSystemResponse;
      v116 = v56;
      return sub_20E071080(v116, v115);
    }

    goto LABEL_67;
  }

  if (result == 13)
  {
    sub_20E071080(v58, type metadata accessor for TranscriptProtoPayloadEnum);
    v60 = v166 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
    swift_beginAccess();
    result = type metadata accessor for RequestEventResult(0);
    v61 = result[11];
    v93 = *(v60 + v61);
    v63 = __OFADD__(v93, 1);
    v64 = v93 + 1;
    if (v63)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    goto LABEL_34;
  }

  if (result != 16)
  {
    goto LABEL_38;
  }

  sub_20E071080(v58, type metadata accessor for TranscriptProtoPayloadEnum);
  v60 = v166 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
  swift_beginAccess();
  result = type metadata accessor for RequestEventResult(0);
  v61 = result[8];
  v72 = *(v60 + v61);
  v63 = __OFADD__(v72, 1);
  v64 = v72 + 1;
  if (!v63)
  {
    goto LABEL_34;
  }

  __break(1u);
LABEL_22:
  sub_20E071134(v58, v51, type metadata accessor for TranscriptProtoPlan);
  v73 = v166 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
  swift_beginAccess();
  v74 = type metadata accessor for RequestEventResult(0);
  v75 = *(v74 + 28);
  v76 = *(v73 + v75);
  v63 = __OFADD__(v76, 1);
  v77 = v76 + 1;
  if (v63)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v78 = v74;
  *(v73 + v75) = v77;
  sub_20E31FCC4(v51, v41);
  sub_20E071080(v51, type metadata accessor for TranscriptProtoPlan);
  v79 = v162;
  v80 = v164;
  if ((*(v162 + 48))(v41, 1, v164) == 1)
  {
    return sub_20E04875C(v41, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E071134(v41, v47, type metadata accessor for TranscriptProtoStatementID);
  v117 = v151;
  sub_20E071134(v47, v151, type metadata accessor for TranscriptProtoStatementID);
  (*(v79 + 56))(v117, 0, 1, v80);
  swift_beginAccess();
  sub_20E05EC5C(v117, v73 + *(v78 + 76), &qword_27C8639D0, &unk_20E33C230);
  return swift_endAccess();
}

void sub_20E0706C0(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v34 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v22 = type metadata accessor for RequestEventResult(0);
  if (*&a1[v22[8]] >= 1)
  {
    v23 = xmmword_20E325ED0;
LABEL_3:
    *a2 = v23;
LABEL_4:
    v24 = 2;
LABEL_5:
    *(a2 + 16) = v24;
    return;
  }

  if (*&a1[v22[15]] < 1 && *&a1[v22[16]] < 1)
  {
    if (*&a1[v22[12]] < 1)
    {
      if (*&a1[v22[17]] >= 1)
      {
        v23 = xmmword_20E325EC0;
        goto LABEL_3;
      }

LABEL_18:
      v23 = xmmword_20E325EB0;
      goto LABEL_3;
    }

    sub_20E0486F4(&a1[v22[6]], v7, &qword_27C863BA0, &unk_20E325F20);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_20E04875C(v7, &qword_27C863BA0, &unk_20E325F20);
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v25 = sub_20E3227C0();
      __swift_project_value_buffer(v25, qword_280E12C48);
      v26 = sub_20E3227B0();
      v27 = sub_20E322A40();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_20E031000, v26, v27, "Response generated without valid statement outcome, setting request status to 'unknown'", v28, 2u);
        MEMORY[0x20F32CA80](v28, -1, -1);
      }

      goto LABEL_18;
    }

    sub_20E071134(v7, v21, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E071018(v21, v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_20E071080(v21, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      sub_20E071080(v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      *a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_4;
    }

    sub_20E071080(v19, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E071018(v21, v16, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E071080(v21, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      sub_20E071080(v16, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      goto LABEL_8;
    }

    sub_20E071080(v16, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E071018(v21, v13, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload > 8)
      {
        if (EnumCaseMultiPayload != 9)
        {
          if (EnumCaseMultiPayload != 10)
          {
            v31 = 0xED00006D61657274;
            v32 = 0x5374657070696E53;
            goto LABEL_48;
          }

          v32 = 0xD000000000000013;
          v33 = "ValueDisambiguation";
          goto LABEL_46;
        }

        v31 = 0xE700000000000000;
        v32 = 0x6572756C696146;
      }

      else if (EnumCaseMultiPayload == 6)
      {
        v31 = 0x800000020E35A810;
        v32 = 0xD00000000000001BLL;
      }

      else
      {
        if (EnumCaseMultiPayload != 7)
        {
          v30 = "ToolDisambiguation";
          goto LABEL_44;
        }

        v31 = 0x800000020E35A7F0;
        v32 = 0xD000000000000011;
      }
    }

    else if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v31 = 0x800000020E35A870;
        v32 = 0xD000000000000015;
      }

      else
      {
        if (EnumCaseMultiPayload != 4)
        {
          v32 = 0xD000000000000013;
          v33 = "ParameterNotAllowed";
          goto LABEL_46;
        }

        v31 = 0x800000020E35A850;
        v32 = 0xD000000000000017;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v30 = "ActionConfirmation";
LABEL_44:
          v31 = (v30 - 32) | 0x8000000000000000;
          v32 = 0xD000000000000012;
          goto LABEL_48;
        }

        v32 = 0xD000000000000013;
        v33 = "ParameterNeedsValue";
LABEL_46:
        v31 = (v33 - 32) | 0x8000000000000000;
        goto LABEL_48;
      }

      v31 = 0xE700000000000000;
      v32 = 0x73736563637553;
    }

LABEL_48:
    sub_20E071080(v21, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E071080(v13, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    *a2 = v32;
    *(a2 + 8) = v31;
    v24 = 1;
    goto LABEL_5;
  }

LABEL_8:
  *a2 = *a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t sub_20E070CEC()
{
  sub_20E071080(v0 + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result, type metadata accessor for RequestEventResult);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_20E070D8C()
{
  result = type metadata accessor for RequestEventResult(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_20E070E64()
{
  sub_20E070FC4(319, qword_280E07BD0, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  if (v0 <= 0x3F)
  {
    sub_20E070F74();
    if (v1 <= 0x3F)
    {
      sub_20E070FC4(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E070F74()
{
  if (!qword_280E12B68)
  {
    v0 = sub_20E3229D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280E12B68);
    }
  }
}

void sub_20E070FC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20E322A90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20E071018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E071080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E071134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E07119C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t PerfMetricsDefinitions.dateStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20E322010();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PerfMetricsDefinitions.dateStamp.setter(uint64_t a1)
{
  v3 = sub_20E322010();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PerfMetricsDefinitions.useCase.getter()
{
  v1 = (v0 + *(type metadata accessor for PerfMetricsDefinitions() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for PerfMetricsDefinitions()
{
  result = qword_27C863FD0;
  if (!qword_27C863FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PerfMetricsDefinitions.useCase.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PerfMetricsDefinitions() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PerfMetricsDefinitions.completionStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PerfMetricsDefinitions();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PerfMetricsDefinitions.completionStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PerfMetricsDefinitions();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t PerfMetricsDefinitions.planGenerationLatencyNanoSec.setter(uint64_t a1)
{
  result = type metadata accessor for PerfMetricsDefinitions();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t PerfMetricsDefinitions.actionGenerationLatencyNanoSec.setter(uint64_t a1)
{
  result = type metadata accessor for PerfMetricsDefinitions();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t PerfMetricsDefinitions.executionLatencyNanoSec.setter(uint64_t a1)
{
  result = type metadata accessor for PerfMetricsDefinitions();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t _s23LighthouseDataProcessor07RequestB0V9timestamp10Foundation4DateVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20E322010();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s23LighthouseDataProcessor07RequestB0V9timestamp10Foundation4DateVvs_0(uint64_t a1)
{
  v3 = sub_20E322010();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_20E0717C0()
{
  result = sub_20E322010();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20E071854()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FE0, &unk_20E359F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E326010;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000020E35A990;
  *(inited + 48) = sub_20E322860();
  *(inited + 56) = 0x6D614E726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_20E322860();
  *(inited + 80) = 0x6E6F73616572;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = sub_20E322860();
  v1 = sub_20E048C98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FE8, &unk_20E326060);
  swift_arrayDestroy();
  return v1;
}

void _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = v5 >> 4;
  if (v5 >> 4 <= 3)
  {
    if (v5 >> 4 <= 1)
    {
      if (v6)
      {
        v7 = 0x800000020E35AA50;
        v8 = 0x800000020E359FB0;
        v9 = 0xD000000000000010;
        v10 = 0xD00000000000001ALL;
      }

      else
      {
        v7 = 0xEE00736575737349;
        v9 = 0x617461444D424549;
        if (*a1 > 2u)
        {
          if (v5 == 3)
          {
            v8 = 0xEF64616F6C796150;
            v10 = 0x746E6576456C696ELL;
          }

          else
          {
            if (v5 == 4)
            {
              v14 = "exprIDConversionIssue";
            }

            else
            {
              v14 = "nilMonotonicTimeStamp";
            }

            v8 = (v14 - 32) | 0x8000000000000000;
            v10 = 0xD000000000000015;
          }
        }

        else if (*a1)
        {
          if (v5 == 1)
          {
            v8 = 0xED00006D61657274;
            v10 = 0x5364696C61766E69;
          }

          else
          {
            v8 = 0x800000020E359F40;
            v10 = 0xD000000000000016;
          }
        }

        else
        {
          v8 = 0xEE0079646F42746ELL;
          v10 = 0x6576457974706D65;
        }
      }

      goto LABEL_49;
    }

    if (v6 == 2)
    {
      v7 = 0x800000020E35AA30;
      if (v5)
      {
        v8 = 0x800000020E359FF0;
        v10 = 0xD000000000000015;
LABEL_33:
        v9 = 0xD000000000000011;
        goto LABEL_49;
      }

      v12 = "jsonEncodingError";
    }

    else
    {
      v7 = 0x800000020E35A450;
      v12 = "jsonDecodingError";
    }

    v8 = (v12 - 32) | 0x8000000000000000;
    v10 = 0xD000000000000011;
    goto LABEL_33;
  }

  if (v5 >> 4 <= 5)
  {
    if (v6 == 4)
    {
      v7 = 0x800000020E35AA10;
      if (v5)
      {
        v8 = 0x800000020E35A050;
        v9 = 0xD000000000000012;
        v10 = 0xD000000000000019;
      }

      else
      {
        v8 = 0x800000020E35A030;
        v9 = 0xD000000000000012;
        v10 = 0xD000000000000014;
      }
    }

    else
    {
      v7 = 0x800000020E35A9F0;
      v9 = 0xD000000000000019;
      v8 = 0xE900000000000044;
      v10 = 0x496C6F6F546C696ELL;
    }
  }

  else if (v6 == 6)
  {
    v11 = v5 & 0xF;
    v7 = 0x800000020E35A9D0;
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v15 = "undefinedIFSessionError";
      }

      else
      {
        if (v11 == 3)
        {
          v8 = 0x800000020E35A0E0;
          v9 = 0xD00000000000001CLL;
          v10 = 0xD000000000000024;
          goto LABEL_49;
        }

        v15 = "metaDataConversionError";
      }

      v8 = (v15 - 32) | 0x8000000000000000;
      v10 = 0xD000000000000017;
      v9 = 0xD00000000000001CLL;
      goto LABEL_49;
    }

    if (v11)
    {
      v8 = 0x800000020E35A0A0;
      v10 = 0xD000000000000013;
      v9 = 0xD00000000000001CLL;
    }

    else
    {
      v8 = 0x800000020E35A080;
      v9 = 0xD00000000000001CLL;
      v10 = 0xD00000000000001DLL;
    }
  }

  else if (v6 == 7)
  {
    v7 = 0x800000020E35A9B0;
    v8 = 0x800000020E35A130;
    v9 = 0xD00000000000001ALL;
    v10 = 0xD00000000000001BLL;
  }

  else
  {
    v9 = 0x745372657070614DLL;
    v13 = v5 & 0xF;
    if (v13)
    {
      if (v13 == 1)
      {
        v8 = 0x800000020E35A170;
        v10 = 0xD000000000000013;
      }

      else
      {
        v8 = 0x800000020E35A190;
        v10 = 0xD000000000000014;
      }
    }

    else
    {
      v8 = 0x800000020E35A150;
      v10 = 0xD000000000000012;
    }

    v7 = 0xEB00000000737461;
  }

LABEL_49:
  v16 = sub_20E322860();
  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = v7;
  v17[4] = v10;
  v17[5] = v8;
  v17[6] = a2;
  v17[7] = a3;
  v19[4] = sub_20E06AE28;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_20E3205CC;
  v19[3] = &block_descriptor_0;
  v18 = _Block_copy(v19);

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t IFSELFMessageEventWrapper.bridgedMonotonicTimeStamp.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IFSELFMessageEventWrapper(0) + 20);

  return sub_20E071F60(a1, v3);
}

uint64_t sub_20E071F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FF0, &unk_20E326070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IFSELFMessageEventWrapper.monotonicTimeStampForSELF.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20E322770();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FF8, &qword_20E359AF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FF0, &unk_20E326070);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v27 - v19);
  v21 = type metadata accessor for IFSELFMessageEventWrapper(0);
  sub_20E0486F4(v1 + *(v21 + 20), v20, &qword_27C863FF0, &unk_20E326070);
  v22 = type metadata accessor for IFSELFMessageEventWrapper.BridgedMonotonicTimeStamp(0);
  if ((*(*(v22 - 8) + 48))(v20, 1, v22) == 1)
  {
    goto LABEL_2;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v20)
    {
      return MonotonicTimestamp.init(biomeTimestamp:)(*v20, a1);
    }

LABEL_2:
    v23 = sub_20E3220D0();
    return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
  }

  sub_20E0723E4(v20, v16);
  sub_20E0486F4(v16, v14, &qword_27C863FF8, &qword_20E359AF0);
  v25 = v28;
  if ((*(v28 + 48))(v14, 1, v3) == 1)
  {
    sub_20E04875C(v16, &qword_27C863FF8, &qword_20E359AF0);
    sub_20E04875C(v14, &qword_27C863FF8, &qword_20E359AF0);
    goto LABEL_2;
  }

  (*(v25 + 32))(v9, v14, v3);
  (*(v25 + 16))(v7, v9, v3);
  MonotonicTimestamp.init(biomeTimestamp:)(v7);
  (*(v25 + 8))(v9, v3);
  sub_20E04875C(v16, &qword_27C863FF8, &qword_20E359AF0);
  v26 = sub_20E3220D0();
  return (*(*(v26 - 8) + 56))(a1, 0, 1, v26);
}

uint64_t sub_20E0723E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FF8, &qword_20E359AF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id IFSELFMessageEventWrapper.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for IFSELFMessageEventWrapper(0) + 20);
  v3 = type metadata accessor for IFSELFMessageEventWrapper.BridgedMonotonicTimeStamp(0);
  v5 = *(*(v3 - 8) + 56);
  v5(&a1[v2], 1, 1, v3);
  result = [objc_allocWithZone(MEMORY[0x277D5AA68]) init];
  if (result)
  {
    *a1 = result;
    sub_20E04875C(&a1[v2], &qword_27C863FF0, &unk_20E326070);

    return (v5)(&a1[v2], 1, 1, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SwiftSELFMapper.__allocating_init(stream:bookmarkProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_20E073D60(a1, a2, a3);

  return v6;
}

uint64_t SwiftSELFMapper.init(stream:bookmarkProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_20E073D60(a1, a2, a3);

  return v3;
}

uint64_t sub_20E0725D8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_20E072620, 0, 0);
}

uint64_t sub_20E072620()
{
  v19 = v0;
  if (sub_20E067774(*(v0[2] + 32), *(v0[3] + 80), *(v0[2] + 24), *(v0[3] + 80), *(v0[2] + 32), *(v0[3] + 88), *(v0[2] + 40)) && (__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C864000, &unk_20E33C0C0), v13 = sub_20E322C10(), , v13))
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v14 = sub_20E3227C0();
    __swift_project_value_buffer(v14, qword_280E12C48);

    v15 = sub_20E3227B0();
    v16 = sub_20E322A40();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = sub_20E3229C0();

      _os_log_impl(&dword_20E031000, v15, v16, "#SwiftSELFMapper Number of Biome events loaded: %ld", v17, 0xCu);
      MEMORY[0x20F32CA80](v17, -1, -1);
    }

    else
    {
    }

    v10 = v13;
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v1 = v0[2];
    v2 = sub_20E3227C0();
    __swift_project_value_buffer(v2, qword_280E12C48);

    v3 = sub_20E3227B0();
    v4 = sub_20E322A40();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136315138;
      v7 = sub_20E322E70();
      v9 = sub_20E31B6C4(v7, v8, &v18);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_20E031000, v3, v4, "#SwiftSELFMapper event loaded from %s are Nil!", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x20F32CA80](v6, -1, -1);
      MEMORY[0x20F32CA80](v5, -1, -1);
    }

    v10 = sub_20E3229A0();
  }

  v11 = v0[1];

  return v11(v10);
}

uint64_t SwiftSELFMapper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SwiftSELFMapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_20E072A28(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_20E074FEC;

  return sub_20E0725D8();
}

uint64_t ObjCSELFMapper.__allocating_init(bmStreamIdentifier:bookmarkProvider:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ObjCSELFMapper.init(bmStreamIdentifier:bookmarkProvider:)(a1, a2);
  return v4;
}

void *ObjCSELFMapper.init(bmStreamIdentifier:bookmarkProvider:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v83 = a1;
  v92[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v79 - v7;
  v8 = sub_20E322010();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v81 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v79 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v84 = &v79 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v79 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v79 - v21;
  v3[2] = a2;

  v85 = a2;
  DataProcessorBookmarkProvider.lastCollectionDate.getter(v22);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v23 = sub_20E3227C0();
  v24 = __swift_project_value_buffer(v23, qword_280E12C48);
  v25 = v9[2];
  v86 = v22;
  v90 = v25;
  v25(v20, v22, v8);
  v89 = v24;
  v26 = sub_20E3227B0();
  v27 = sub_20E322A40();
  v28 = os_log_type_enabled(v26, v27);
  v87 = v9;
  v88 = v3;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v92[0] = v30;
    *v29 = 136315138;
    sub_20E074360();
    v31 = sub_20E322D50();
    v80 = v15;
    v33 = v32;
    v91 = v9[1];
    v91(v20, v8);
    v34 = sub_20E31B6C4(v31, v33, v92);
    v15 = v80;

    *(v29 + 4) = v34;
    _os_log_impl(&dword_20E031000, v26, v27, "#ObjCSELFMapper Original bookmark start date: collecting from %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x20F32CA80](v30, -1, -1);
    MEMORY[0x20F32CA80](v29, -1, -1);
  }

  else
  {

    v91 = v9[1];
    v91(v20, v8);
  }

  v35 = v84;
  sub_20E322000();
  v90(v15, v35, v8);
  v36 = sub_20E3227B0();
  v37 = sub_20E322A40();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v92[0] = v39;
    *v38 = 136315138;
    sub_20E074360();
    v40 = sub_20E322D50();
    v41 = v15;
    v43 = v42;
    v44 = v87;
    v91(v41, v8);
    v45 = sub_20E31B6C4(v40, v43, v92);

    *(v38 + 4) = v45;
    v46 = v37;
    v47 = v44;
    _os_log_impl(&dword_20E031000, v36, v46, "#ObjCSELFMapper Bookmark: updating lastCollectionDate to current Date %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x20F32CA80](v39, -1, -1);
    MEMORY[0x20F32CA80](v38, -1, -1);
  }

  else
  {

    v47 = v87;
    v91(v15, v8);
  }

  v48 = v88;
  v49 = v81;
  v50 = v82;
  v51 = v88[2];
  v52 = v90;
  v90(v81, v35, v8);

  DataProcessorBookmarkProvider.lastCollectionDate.setter(v49);

  v52(v50, v35, v8);
  (v47[7])(v50, 0, 1, v8);
  v53 = v86;
  v54 = sub_20E321FB0();
  if ((v47[6])(v50, 1, v8) == 1)
  {
    v55 = 0;
  }

  else
  {
    v55 = sub_20E321FB0();
    v91(v50, v8);
  }

  v56 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v54 endDate:v55 maxEvents:0 lastN:0 reversed:0];

  v57 = v83;
  v48[3] = v56;
  v48[4] = v57;
  v58 = v57;
  v59 = BiomeLibrary();
  v92[0] = 0;
  v60 = [v59 streamWithIdentifier:v58 error:v92];
  swift_unknownObjectRelease();
  v61 = v92[0];
  if (v60)
  {

    v62 = v91;
    v91(v35, v8);
    v62(v53, v8);
  }

  else
  {
    v63 = v61;
    v64 = sub_20E321EF0();

    swift_willThrow();
    v65 = v58;
    v66 = sub_20E3227B0();
    v67 = sub_20E322A50();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v92[0] = v69;
      *v68 = 136315138;
      v70 = sub_20E322890();
      v72 = v35;
      v73 = sub_20E31B6C4(v70, v71, v92);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_20E031000, v66, v67, "#ObjCSELFMapper stream info cannot be obtained from bmStreamIdentifier %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      v74 = v69;
      v48 = v88;
      MEMORY[0x20F32CA80](v74, -1, -1);
      MEMORY[0x20F32CA80](v68, -1, -1);

      v75 = v91;
      v91(v72, v8);
      v76 = v86;
    }

    else
    {

      v75 = v91;
      v91(v35, v8);
      v76 = v53;
    }

    v75(v76, v8);
    v60 = 0;
  }

  v48[5] = v60;
  v77 = *MEMORY[0x277D85DE8];
  return v48;
}

uint64_t sub_20E073334()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_20E07337C, 0, 0);
}

uint64_t sub_20E07337C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 32);
  v0[4] = v3;
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  v0[5] = v5;
  v0[6] = *(v2 + 80);
  *v5 = v0;
  v5[1] = sub_20E073460;

  return (sub_20E0685A0)(v3, v4, 0xD000000000000022, 0x800000020E35A530);
}

uint64_t sub_20E073460(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_20E073560, 0, 0);
}

uint64_t sub_20E073560()
{
  v22 = v0;
  if (v0[7] && (v1 = v0[6], sub_20E074574(0, &qword_280E03EF8, 0x277CF1940), v2 = sub_20E322C10(), , v2))
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v3 = sub_20E3227C0();
    __swift_project_value_buffer(v3, qword_280E12C48);

    v4 = sub_20E3227B0();
    v5 = sub_20E322A40();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[6];
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = sub_20E3229C0();

      _os_log_impl(&dword_20E031000, v4, v5, "#ObjCSELFMapper Number of Biome events loaded: %ld", v7, 0xCu);
      MEMORY[0x20F32CA80](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v8 = v0[2];
    v9 = sub_20E3227C0();
    __swift_project_value_buffer(v9, qword_280E12C48);

    v10 = sub_20E3227B0();
    v11 = sub_20E322A40();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[4];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_20E322890();
      v17 = sub_20E31B6C4(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20E031000, v10, v11, "#ObjCSELFMapper event loaded from %s are Nil!", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F32CA80](v14, -1, -1);
      MEMORY[0x20F32CA80](v13, -1, -1);
    }

    v18 = v0[6];
    v2 = sub_20E3229A0();
  }

  v19 = v0[1];

  return v19(v2);
}

uint64_t ObjCSELFMapper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ObjCSELFMapper.__deallocating_deinit()
{
  ObjCSELFMapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_20E073944(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_20E0739D8;

  return sub_20E073334();
}

uint64_t sub_20E0739D8(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_20E073AEC(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(**v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20E073C10;

  return v8(v3);
}

uint64_t sub_20E073C10(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void *sub_20E073D10(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_20E073D30@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_20E073D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a1;
  v68 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v61 - v7;
  v9 = sub_20E322010();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v63 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v61 = &v61 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v69 = &v61 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v61 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v61 - v21;
  v71 = v3;
  *(v3 + 16) = a3;

  DataProcessorBookmarkProvider.lastCollectionDate.getter(v22);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v23 = sub_20E3227C0();
  __swift_project_value_buffer(v23, qword_280E12C48);
  v24 = v10[2];
  v64 = v22;
  v70 = v24;
  v24(v20, v22, v9);
  v25 = sub_20E3227B0();
  v26 = sub_20E322A40();
  v27 = os_log_type_enabled(v25, v26);
  v65 = v8;
  v66 = v10;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v72 = v29;
    *v28 = 136315138;
    sub_20E074360();
    v30 = sub_20E322D50();
    v31 = v10;
    v33 = v32;
    v62 = v31[1];
    v62(v20, v9);
    v34 = sub_20E31B6C4(v30, v33, &v72);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_20E031000, v25, v26, "#SwiftSELFMapper Original bookmark start date: collecting from %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x20F32CA80](v29, -1, -1);
    MEMORY[0x20F32CA80](v28, -1, -1);
  }

  else
  {

    v62 = v10[1];
    v62(v20, v9);
  }

  v35 = v69;
  sub_20E322000();
  v36 = v61;
  v70(v61, v35, v9);
  v37 = sub_20E3227B0();
  v38 = sub_20E322A40();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v72 = v40;
    *v39 = 136315138;
    sub_20E074360();
    v41 = sub_20E322D50();
    v43 = v42;
    v44 = v66;
    v45 = v36;
    v46 = v62;
    v62(v45, v9);
    v47 = sub_20E31B6C4(v41, v43, &v72);
    v48 = v44;
    v35 = v69;

    *(v39 + 4) = v47;
    _os_log_impl(&dword_20E031000, v37, v38, "#SwiftSELFMapper Bookmark: updating lastCollectionDate to current Date %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x20F32CA80](v40, -1, -1);
    MEMORY[0x20F32CA80](v39, -1, -1);
  }

  else
  {

    v48 = v66;
    v49 = v36;
    v46 = v62;
    v62(v49, v9);
  }

  v50 = v65;
  v51 = v70;
  v52 = *(v71 + 16);
  v53 = v63;
  v70(v63, v35, v9);

  DataProcessorBookmarkProvider.lastCollectionDate.setter(v53);

  v51(v50, v35, v9);
  (v48[7])(v50, 0, 1, v9);
  v54 = v64;
  v55 = sub_20E321FB0();
  if ((v48[6])(v50, 1, v9) == 1)
  {
    v56 = 0;
  }

  else
  {
    v56 = sub_20E321FB0();
    v46(v50, v9);
  }

  v57 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v55 endDate:v56 maxEvents:0 lastN:0 reversed:0];

  v46(v35, v9);
  v46(v54, v9);
  result = v71;
  v60 = v67;
  v59 = v68;
  *(v71 + 24) = v57;
  *(result + 32) = v60;
  *(result + 40) = v59;
  return result;
}

unint64_t sub_20E074360()
{
  result = qword_280E12B30;
  if (!qword_280E12B30)
  {
    sub_20E322010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E12B30);
  }

  return result;
}

void sub_20E0743E0()
{
  sub_20E074574(319, &qword_280E12B58, 0x277D5AA68);
  if (v0 <= 0x3F)
  {
    sub_20E074520(319, qword_280E0E610, type metadata accessor for IFSELFMessageEventWrapper.BridgedMonotonicTimeStamp);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E074490()
{
  sub_20E074520(319, &qword_280E040E0, MEMORY[0x277D20580]);
  if (v0 <= 0x3F)
  {
    sub_20E048BF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20E074520(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20E322A90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20E074574(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t dispatch thunk of SELFMapperProtocol.loadBiomeEvent()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_20E04CC18;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SELFMapperProtocol.adaptToSELF(events:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_20E074810;

  return v11(a1, a2, a3);
}

uint64_t sub_20E074810(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of SwiftSELFMapper.loadBiomeEvent()()
{
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20E074FF0;

  return v6();
}

uint64_t dispatch thunk of SwiftSELFMapper.adaptToSELF(events:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20E074FF0;

  return v8(a1);
}

uint64_t dispatch thunk of ObjCSELFMapper.loadBiomeEvent()()
{
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20E074FF0;

  return v6();
}

uint64_t dispatch thunk of ObjCSELFMapper.adaptToSELF(events:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20E074EBC;

  return v8(a1);
}

uint64_t sub_20E074EBC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

id sub_20E074FF8(void *a1)
{
  v481 = a1;
  v473 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  v440 = *(v473 - 1);
  v1 = *(v440 + 64);
  MEMORY[0x28223BE20](v473);
  v478 = &v414 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v3 = *(*(v441 - 8) + 64);
  MEMORY[0x28223BE20](v441);
  v464 = (&v414 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TranscriptProtoFormatExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v463 = (&v414 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v462 = (&v414 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for TranscriptProtoOpenExpression(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v457 = &v414 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoCancelExpression(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v456 = &v414 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TranscriptProtoRejectExpression(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v455 = &v414 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TranscriptProtoUndoExpression(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v454 = &v414 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v458 = *(v439 - 8);
  v23 = *(v458 + 64);
  MEMORY[0x28223BE20](v439);
  v472 = (&v414 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v459 = (&v414 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v453 = &v414 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TranscriptProtoSearchExpression(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v449 = &v414 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v452 = &v414 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = type metadata accessor for TranscriptProtoPickExpression(0);
  v37 = *(*(v438 - 8) + 64);
  MEMORY[0x28223BE20](v438);
  v450 = (&v414 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for TranscriptProtoSayExpression(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v460 = (&v414 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v437 = (&v414 - v44);
  v435 = type metadata accessor for TranscriptProtoCallExpression(0);
  v45 = *(*(v435 - 8) + 64);
  MEMORY[0x28223BE20](v435);
  v451 = (&v414 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864150, &qword_20E3262A0);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v466 = &v414 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v476 = (&v414 - v51);
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v417 = *(updated - 8);
  v52 = *(v417 + 64);
  v53 = MEMORY[0x28223BE20](updated);
  v475 = &v414 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v467 = &v414 - v55;
  v433 = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  v56 = *(*(v433 - 8) + 64);
  MEMORY[0x28223BE20](v433);
  v461 = (&v414 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v436 = type metadata accessor for TranscriptProtoIndexExpression(0);
  v58 = *(*(v436 - 8) + 64);
  MEMORY[0x28223BE20](v436);
  v448 = &v414 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v60 - 8);
  v471 = (&v414 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = MEMORY[0x28223BE20](v62);
  v470 = (&v414 - v65);
  v66 = MEMORY[0x28223BE20](v64);
  v423 = &v414 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v469 = (&v414 - v69);
  v70 = MEMORY[0x28223BE20](v68);
  v422 = &v414 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v432 = (&v414 - v73);
  v74 = MEMORY[0x28223BE20](v72);
  v431 = (&v414 - v75);
  v76 = MEMORY[0x28223BE20](v74);
  v430 = (&v414 - v77);
  v78 = MEMORY[0x28223BE20](v76);
  v429 = (&v414 - v79);
  v80 = MEMORY[0x28223BE20](v78);
  v428 = (&v414 - v81);
  v82 = MEMORY[0x28223BE20](v80);
  v426 = (&v414 - v83);
  v84 = MEMORY[0x28223BE20](v82);
  v427 = (&v414 - v85);
  v86 = MEMORY[0x28223BE20](v84);
  v468 = &v414 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v421 = &v414 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v465 = (&v414 - v91);
  v92 = MEMORY[0x28223BE20](v90);
  v424 = (&v414 - v93);
  v94 = MEMORY[0x28223BE20](v92);
  v434 = (&v414 - v95);
  v96 = MEMORY[0x28223BE20](v94);
  v425 = (&v414 - v97);
  v98 = MEMORY[0x28223BE20](v96);
  v444 = (&v414 - v99);
  MEMORY[0x28223BE20](v98);
  v445 = &v414 - v100;
  v480 = type metadata accessor for TranscriptProtoStatementID(0);
  v474 = *(v480 - 8);
  v101 = *(v474 + 64);
  v102 = MEMORY[0x28223BE20](v480);
  v420 = &v414 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = MEMORY[0x28223BE20](v102);
  v419 = &v414 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v418 = &v414 - v107;
  MEMORY[0x28223BE20](v106);
  v443 = (&v414 - v108);
  v109 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  v110 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109 - 8);
  v416 = (&v414 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864158, &qword_20E3262A8);
  v113 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112 - 8);
  v115 = &v414 - v114;
  v116 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v442 = *(v116 - 8);
  v117 = *(v442 + 64);
  v118 = MEMORY[0x28223BE20](v116);
  v120 = &v414 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v118);
  v446 = &v414 - v121;
  v122 = type metadata accessor for TranscriptProtoValueExpression(0);
  v123 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122 - 8);
  v447 = (&v414 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v126 = *(*(v125 - 8) + 64);
  v127 = MEMORY[0x28223BE20](v125 - 8);
  v129 = &v414 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v127);
  v479 = &v414 - v130;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864168, &unk_20E33C440);
  v132 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131 - 8);
  v134 = &v414 - v133;
  v135 = type metadata accessor for TranscriptProtoExpression(0);
  v136 = *(v135 - 8);
  v137 = *(v136 + 64);
  MEMORY[0x28223BE20](v135);
  v139 = (&v414 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20E0486F4(v481, v134, &qword_27C864168, &unk_20E33C440);
  if ((*(v136 + 48))(v134, 1, v135) == 1)
  {
    v140 = &qword_27C864168;
    v141 = &unk_20E33C440;
    v142 = v134;
LABEL_7:
    sub_20E04875C(v142, v140, v141);
    return 0;
  }

  sub_20E078B74(v134, v139, type metadata accessor for TranscriptProtoExpression);
  v143 = [objc_allocWithZone(MEMORY[0x277D57E30]) init];
  if (!v143)
  {
    sub_20E078BDC(v139, type metadata accessor for TranscriptProtoExpression);
    return 0;
  }

  v481 = v143;
  v144 = v479;
  sub_20E0486F4(v139, v479, &qword_27C864160, &unk_20E33C410);
  v145 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v145 - 8) + 48))(v144, 1, v145) == 1)
  {
    sub_20E078BDC(v139, type metadata accessor for TranscriptProtoExpression);

LABEL_6:
    v140 = &qword_27C864160;
    v141 = &unk_20E33C410;
    v142 = v144;
    goto LABEL_7;
  }

  sub_20E0486F4(v144, v129, &qword_27C864160, &unk_20E33C410);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v147 = v447;
      sub_20E078B74(v129, v447, type metadata accessor for TranscriptProtoValueExpression);
      v148 = [objc_allocWithZone(MEMORY[0x277D58168]) init];
      v149 = v148;
      if (v148)
      {
        [v148 setExists_];
      }

      sub_20E0486F4(v147, v115, &qword_27C864158, &qword_20E3262A8);
      v150 = (*(v442 + 48))(v115, 1, v116);
      v151 = v446;
      if (v150 == 1)
      {
        sub_20E04875C(v115, &qword_27C864158, &qword_20E3262A8);
      }

      else
      {
        sub_20E078B74(v115, v446, type metadata accessor for TranscriptProtoValueExpressionEnum);
        sub_20E078B0C(v151, v120, type metadata accessor for TranscriptProtoValueExpressionEnum);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v323 = v416;
          sub_20E078B74(v120, v416, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
          if (qword_280E12B88 != -1)
          {
            swift_once();
          }

          v324 = sub_20E3227C0();
          __swift_project_value_buffer(v324, qword_280E12C48);
          v325 = sub_20E3227B0();
          v326 = sub_20E322A40();
          if (os_log_type_enabled(v325, v326))
          {
            v327 = v139;
            v328 = swift_slowAlloc();
            *v328 = 0;
            _os_log_impl(&dword_20E031000, v325, v326, "Converter - value expression type is array, processing statementIDs...", v328, 2u);
            v329 = v328;
            v139 = v327;
            MEMORY[0x20F32CA80](v329, -1, -1);
          }

          if (v149)
          {
            v330 = v149;
            v331 = sub_20E04F034(v323);
            [v330 setArray_];
          }

          sub_20E078BDC(v323, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
          v332 = v151;
        }

        else
        {
          sub_20E078BDC(v151, type metadata accessor for TranscriptProtoValueExpressionEnum);
          v332 = v120;
        }

        sub_20E078BDC(v332, type metadata accessor for TranscriptProtoValueExpressionEnum);
      }

      [v481 setValue_];

      v336 = type metadata accessor for TranscriptProtoValueExpression;
      goto LABEL_195;
    case 1u:
      v147 = v443;
      sub_20E078B74(v129, v443, type metadata accessor for TranscriptProtoStatementID);
      v247 = v445;
      sub_20E078B0C(v147, v445, type metadata accessor for TranscriptProtoStatementID);
      v248 = v474;
      v249 = v480;
      (*(v474 + 56))(v247, 0, 1, v480);
      v250 = [objc_allocWithZone(MEMORY[0x277D58078]) &off_277E1BB78];
      v251 = v444;
      sub_20E0486F4(v247, v444, &qword_27C8639D0, &unk_20E33C230);
      if ((*(v248 + 48))(v251, 1, v249) == 1)
      {
        sub_20E04875C(v247, &qword_27C8639D0, &unk_20E33C230);
        v247 = v251;
      }

      else
      {
        v333 = v139;
        v334 = *v251;
        sub_20E078BDC(v251, type metadata accessor for TranscriptProtoStatementID);
        v335 = v334;
        v139 = v333;
        [v250 setIndex_];
      }

      sub_20E04875C(v247, &qword_27C8639D0, &unk_20E33C230);
      [v481 setStatementId_];

      v336 = type metadata accessor for TranscriptProtoStatementID;
      goto LABEL_195;
    case 2u:
      v224 = [objc_allocWithZone(MEMORY[0x277D57F40]) &off_277E1BB78];
      v225 = v224;
      if (v224)
      {
        [v224 setExists_];
      }

      [v481 setPrefix_];
      goto LABEL_116;
    case 3u:
      v231 = [objc_allocWithZone(MEMORY[0x277D57E70]) &off_277E1BB78];
      v225 = v231;
      if (v231)
      {
        [v231 setExists_];
      }

      [v481 setInfix_];
      goto LABEL_116;
    case 4u:
      v190 = v139;
      v191 = v448;
      sub_20E078B74(v129, v448, type metadata accessor for TranscriptProtoIndexExpression);
      v192 = [objc_allocWithZone(MEMORY[0x277D57E68]) &off_277E1BB78];
      v193 = v481;
      [v481 setIndex_];

      v194 = [v193 index];
      if (v194)
      {
        v195 = v194;
        v196 = [objc_allocWithZone(MEMORY[0x277D58078]) &off_277E1BB78];
        v197 = v425;
        sub_20E0486F4(v191, v425, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v474 + 48))(v197, 1, v480) == 1)
        {
          sub_20E04875C(v197, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v345 = *v197;
          sub_20E078BDC(v197, type metadata accessor for TranscriptProtoStatementID);
          [v196 setIndex_];
        }

        [v195 setPreviousStatementId_];
      }

      v346 = [v481 index];
      if (v346)
      {
        v347 = v346;
        v348 = *(v436 + 20);
        v349 = [objc_allocWithZone(MEMORY[0x277D58078]) &off_277E1BB78];
        v350 = v434;
        sub_20E0486F4(v191 + v348, v434, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v474 + 48))(v350, 1, v480) == 1)
        {
          sub_20E04875C(v350, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v351 = *v350;
          sub_20E078BDC(v350, type metadata accessor for TranscriptProtoStatementID);
          [v349 setIndex_];
        }

        [v347 setStatementId_];
      }

      sub_20E078BDC(v191, type metadata accessor for TranscriptProtoIndexExpression);
      v352 = type metadata accessor for TranscriptProtoExpression;
      goto LABEL_217;
    case 5u:
      v254 = v461;
      sub_20E078B74(v129, v461, type metadata accessor for TranscriptProtoUpdateParametersExpression);
      v255 = [objc_allocWithZone(MEMORY[0x277D58150]) &off_277E1BB78];
      if (v255)
      {
        v256 = *(v433 + 20);
        v257 = objc_allocWithZone(MEMORY[0x277D58078]);
        v258 = v255;
        v259 = [v257 &off_277E1BB78];
        v260 = v254 + v256;
        v261 = v424;
        sub_20E0486F4(v260, v424, &qword_27C8639D0, &unk_20E33C230);
        v262 = *(v474 + 48);
        v474 += 48;
        v470 = v262;
        v263 = (v262)(v261, 1, v480);
        v415 = v139;
        if (v263 == 1)
        {
          sub_20E04875C(v261, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v362 = *v261;
          sub_20E078BDC(v261, type metadata accessor for TranscriptProtoStatementID);
          [v259 setIndex_];
        }

        v363 = v467;
        v469 = v255;
        [v258 setCallStatementId_];

        v364 = *v254;
        v482 = MEMORY[0x277D84F90];
        v365 = *(v364 + 16);
        v468 = v258;
        if (v365)
        {
          v366 = v364 + ((*(v417 + 80) + 32) & ~*(v417 + 80));
          v478 = *(v417 + 72);
          v472 = (v417 + 48);
          v473 = (v417 + 56);
          v367 = v258;
          v471 = MEMORY[0x277D84F90];
          v368 = v466;
          do
          {
            sub_20E078B0C(v366, v363, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
            v369 = v476;
            sub_20E078B0C(v363, v476, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
            v370 = updated;
            (*v473)(v369, 0, 1, updated);
            sub_20E0486F4(v369, v368, &qword_27C864150, &qword_20E3262A0);
            if ((*v472)(v368, 1, v370) == 1)
            {
              sub_20E04875C(v369, &qword_27C864150, &qword_20E3262A0);
              sub_20E078BDC(v363, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
              sub_20E04875C(v368, &qword_27C864150, &qword_20E3262A0);
            }

            else
            {
              v371 = v475;
              sub_20E078B74(v368, v475, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
              v372 = [objc_allocWithZone(MEMORY[0x277D58148]) init];
              if (v372)
              {
                v373 = v372;
                v374 = *(updated + 24);
                v375 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
                v376 = v475 + v374;
                v377 = v475;
                v378 = v465;
                sub_20E0486F4(v376, v465, &qword_27C8639D0, &unk_20E33C230);
                if ((v470)(v378, 1, v480) == 1)
                {
                  sub_20E04875C(v378, &qword_27C8639D0, &unk_20E33C230);
                }

                else
                {
                  v379 = *v378;
                  sub_20E078BDC(v378, type metadata accessor for TranscriptProtoStatementID);
                  v380 = v379;
                  v377 = v475;
                  [v375 setIndex_];
                }

                [v373 setValue_];

                v381 = *v377;
                v382 = *(v377 + 8);
                v383 = sub_20E322860();
                [v373 setParameterId_];

                v384 = v377 + *(updated + 28);
                if ((*(v384 + 8) & 1) == 0)
                {
                  [v373 setParameterIndex_];
                }

                if (*(v377 + 16))
                {
                  v385 = 2;
                }

                else
                {
                  v385 = 1;
                }

                [v373 setKind_];
                sub_20E04875C(v476, &qword_27C864150, &qword_20E3262A0);
                sub_20E078BDC(v467, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
                v386 = sub_20E078BDC(v377, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
                MEMORY[0x20F32BF90](v386);
                if (*((v482 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v482 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v387 = *((v482 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_20E322990();
                }

                sub_20E3229B0();
                v471 = v482;
                v368 = v466;
                v363 = v467;
              }

              else
              {
                sub_20E04875C(v476, &qword_27C864150, &qword_20E3262A0);
                v363 = v467;
                sub_20E078BDC(v467, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
                sub_20E078BDC(v371, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
                v368 = v466;
              }
            }

            v366 += v478;
            --v365;
          }

          while (v365);
        }

        else
        {
          v407 = v258;
          v471 = MEMORY[0x277D84F90];
        }

        sub_20E074574(0, &qword_27C864188, 0x277D58148);
        v408 = sub_20E322960();

        v409 = v468;
        [v468 setUpdates_];

        v144 = v479;
        v139 = v415;
        v254 = v461;
        v255 = v469;
      }

      [v481 setUpdateParameters_];

      sub_20E078BDC(v139, type metadata accessor for TranscriptProtoExpression);
      v306 = type metadata accessor for TranscriptProtoUpdateParametersExpression;
      v307 = v254;
      goto LABEL_222;
    case 6u:
      v190 = v451;
      sub_20E078B74(v129, v451, type metadata accessor for TranscriptProtoCallExpression);
      v284 = [objc_allocWithZone(MEMORY[0x277D57D50]) &off_277E1BB78];
      if (v284)
      {
        v285 = v437;
        sub_20E0486F4(v190 + *(v435 + 20), v437, &qword_27C8639C8, &unk_20E323870);
        if ((*(v458 + 48))(v285, 1, v439) == 1)
        {
          v286 = v284;
          sub_20E04875C(v285, &qword_27C8639C8, &unk_20E323870);
          v287 = 0;
        }

        else
        {
          v391 = *v285;
          v392 = v285[1];
          v393 = v284;

          sub_20E078BDC(v285, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
          v287 = sub_20E322860();
        }

        [v284 setToolId_];

        v394 = *v190;
        v395 = v284;
        if (sub_20E06BBCC(v394))
        {
          sub_20E074574(0, &qword_27C864180, 0x277D57D58);
          v396 = sub_20E322960();
        }

        else
        {
          v396 = 0;
        }

        [v395 setParameters_];
      }

      [v481 setCall_];

      sub_20E078BDC(v139, type metadata accessor for TranscriptProtoExpression);
      v352 = type metadata accessor for TranscriptProtoCallExpression;
LABEL_217:
      v306 = v352;
      v307 = v190;
      goto LABEL_222;
    case 7u:
      v208 = v460;
      sub_20E078B74(v129, v460, type metadata accessor for TranscriptProtoSayExpression);
      v232 = [objc_allocWithZone(MEMORY[0x277D58040]) &off_277E1BB78];
      v233 = v232;
      if (v232)
      {
        v415 = v139;
        v234 = *v208;
        v482 = MEMORY[0x277D84F90];
        v235 = *(v234 + 16);
        v473 = v232;
        if (v235)
        {
          v236 = v234 + ((*(v474 + 80) + 32) & ~*(v474 + 80));
          v237 = *(v474 + 72);
          updated = v474 + 56;
          v478 = v237;
          v476 = (v474 + 48);
          v238 = v232;
          v475 = MEMORY[0x277D84F90];
          v239 = v421;
          v240 = v418;
          do
          {
            sub_20E078B0C(v236, v240, type metadata accessor for TranscriptProtoStatementID);
            sub_20E078B0C(v240, v239, type metadata accessor for TranscriptProtoStatementID);
            v241 = v480;
            (*updated)(v239, 0, 1, v480);
            v242 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
            v243 = v468;
            sub_20E0486F4(v239, v468, &qword_27C8639D0, &unk_20E33C230);
            if ((*v476)(v243, 1, v241) == 1)
            {
              sub_20E04875C(v239, &qword_27C8639D0, &unk_20E33C230);
              sub_20E078BDC(v240, type metadata accessor for TranscriptProtoStatementID);
              v244 = sub_20E04875C(v243, &qword_27C8639D0, &unk_20E33C230);
            }

            else
            {
              v245 = *v243;
              sub_20E078BDC(v243, type metadata accessor for TranscriptProtoStatementID);
              [v242 setIndex_];
              sub_20E04875C(v239, &qword_27C8639D0, &unk_20E33C230);
              v244 = sub_20E078BDC(v240, type metadata accessor for TranscriptProtoStatementID);
            }

            if (v242)
            {
              MEMORY[0x20F32BF90](v244);
              if (*((v482 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v482 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v246 = *((v482 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_20E322990();
                v240 = v418;
                v239 = v421;
              }

              sub_20E3229B0();
              v475 = v482;
            }

            v236 += v478;
            --v235;
          }

          while (v235);
        }

        else
        {
          v405 = v232;
          v475 = MEMORY[0x277D84F90];
        }

        sub_20E074574(0, &qword_27C863B70, 0x277D58078);
        v406 = sub_20E322960();

        v233 = v473;
        [v473 setStatementIds_];

        v144 = v479;
        v139 = v415;
        v208 = v460;
      }

      [v481 setSay_];

      sub_20E078BDC(v139, type metadata accessor for TranscriptProtoExpression);
      v404 = type metadata accessor for TranscriptProtoSayExpression;
      goto LABEL_221;
    case 8u:
      v147 = v450;
      sub_20E078B74(v129, v450, type metadata accessor for TranscriptProtoPickExpression);
      v295 = [objc_allocWithZone(MEMORY[0x277D57F08]) &off_277E1BB78];
      v296 = v295;
      if (v295)
      {
        v297 = v139;
        [v295 setIndex_];
        v298 = *(v438 + 20);
        v299 = objc_allocWithZone(MEMORY[0x277D58078]);
        v300 = v296;
        v301 = [v299 &off_277E1BB78];
        v302 = v427;
        sub_20E0486F4(v147 + v298, v427, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v474 + 48))(v302, 1, v480) == 1)
        {
          sub_20E04875C(v302, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v397 = *v302;
          sub_20E078BDC(v302, type metadata accessor for TranscriptProtoStatementID);
          [v301 setIndex_];
        }

        [v300 setStatementId_];

        v139 = v297;
      }

      [v481 setPick_];

      v336 = type metadata accessor for TranscriptProtoPickExpression;
LABEL_195:
      v293 = v336;
      v294 = v147;
      goto LABEL_196;
    case 9u:
      v152 = v452;
      sub_20E078B74(v129, v452, type metadata accessor for TranscriptProtoConfirmExpression);
      v203 = [objc_allocWithZone(MEMORY[0x277D57D98]) &off_277E1BB78];
      if (v203)
      {
        v204 = objc_allocWithZone(MEMORY[0x277D58078]);
        v205 = v203;
        v206 = [v204 &off_277E1BB78];
        v207 = v426;
        sub_20E0486F4(v152, v426, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v474 + 48))(v207, 1, v480) == 1)
        {
          sub_20E04875C(v207, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v356 = v139;
          v357 = *v207;
          sub_20E078BDC(v207, type metadata accessor for TranscriptProtoStatementID);
          v358 = v357;
          v139 = v356;
          [v206 setIndex_];
        }

        [v205 setStatementId_];
      }

      [v481 setConfirm_];

      v341 = type metadata accessor for TranscriptProtoConfirmExpression;
      goto LABEL_185;
    case 0xAu:
      v289 = v129;
      v290 = v449;
      sub_20E078B74(v289, v449, type metadata accessor for TranscriptProtoSearchExpression);
      v291 = [objc_allocWithZone(MEMORY[0x277D58048]) &off_277E1BB78];
      v292 = v291;
      if (v291)
      {
        [v291 setPickOne_];
      }

      [v481 setSearch_];

      v293 = type metadata accessor for TranscriptProtoSearchExpression;
      v294 = v290;
      goto LABEL_196;
    case 0xBu:
      v163 = v464;
      sub_20E078B74(v129, v464, type metadata accessor for TranscriptProtoStructuredSearchExpression);
      v164 = [objc_allocWithZone(MEMORY[0x277D58098]) &off_277E1BB78];
      v165 = v164;
      if (v164)
      {
        [v164 setIsExpanded_];
      }

      updated = v165;
      v415 = v139;
      v482 = MEMORY[0x277D84F90];
      v166 = v163[1];
      v167 = *(v166 + 16);
      v168 = v478;
      if (v167)
      {
        v169 = v166 + ((*(v440 + 80) + 32) & ~*(v440 + 80));
        v170 = (v474 + 48);
        v171 = *(v440 + 72);
        do
        {
          sub_20E078B0C(v169, v168, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
          v172 = [objc_allocWithZone(MEMORY[0x277D580A8]) init];
          if (v172)
          {
            v173 = v172;
            v174 = v473[6];
            v175 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
            v176 = v478 + v174;
            v168 = v478;
            v177 = v471;
            sub_20E0486F4(v176, v471, &qword_27C8639D0, &unk_20E33C230);
            if ((*v170)(v177, 1, v480) == 1)
            {
              sub_20E04875C(v177, &qword_27C8639D0, &unk_20E33C230);
            }

            else
            {
              v178 = *v177;
              sub_20E078BDC(v177, type metadata accessor for TranscriptProtoStatementID);
              v179 = v178;
              v168 = v478;
              [v175 setIndex_];
            }

            [v173 setPreviousAnswerReferenceStatementId_];

            v180 = v173;
            MEMORY[0x20F32BF90]();
            if (*((v482 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v482 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v181 = *((v482 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_20E322990();
              v168 = v478;
            }

            sub_20E3229B0();

            sub_20E078BDC(v168, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
          }

          else
          {
            sub_20E078BDC(v168, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
          }

          v169 += v171;
          --v167;
        }

        while (v167);
      }

      v182 = updated;
      if (updated)
      {
        sub_20E074574(0, &qword_27C864170, 0x277D580A8);
        v183 = v182;
        v184 = sub_20E322960();

        [v183 setProperties_];

        v185 = v464;
        v186 = *v464;
        v187 = v183;
        v188 = sub_20E066408(v186);
        v144 = v479;
        if (v188)
        {
          sub_20E074574(0, &qword_27C864178, 0x277D580A0);
          v189 = sub_20E322960();
        }

        else
        {
          v189 = 0;
        }

        v337 = v415;
        [v187 setParameters_];

        v398 = *(v441 + 24);
        v399 = v187;
        v400 = sub_20E0669B0(v185 + v398);
        [v399 setReturnType_];
      }

      else
      {

        v144 = v479;
        v337 = v415;
        v185 = v464;
      }

      [v481 setStructuredSearch_];

      sub_20E078BDC(v337, type metadata accessor for TranscriptProtoExpression);
      v401 = type metadata accessor for TranscriptProtoStructuredSearchExpression;
      goto LABEL_213;
    case 0xCu:
      v152 = v453;
      sub_20E078B74(v129, v453, type metadata accessor for TranscriptProtoPickOneExpression);
      v198 = [objc_allocWithZone(MEMORY[0x277D57F10]) &off_277E1BB78];
      if (v198)
      {
        v199 = objc_allocWithZone(MEMORY[0x277D58078]);
        v200 = v198;
        v201 = [v199 &off_277E1BB78];
        v202 = v428;
        sub_20E0486F4(v152, v428, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v474 + 48))(v202, 1, v480) == 1)
        {
          sub_20E04875C(v202, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v353 = v139;
          v354 = *v202;
          sub_20E078BDC(v202, type metadata accessor for TranscriptProtoStatementID);
          v355 = v354;
          v139 = v353;
          [v201 setIndex_];
        }

        [v200 setStatementId_];
      }

      [v481 setPickOne_];

      v341 = type metadata accessor for TranscriptProtoPickOneExpression;
      goto LABEL_185;
    case 0xDu:
      v185 = v459;
      sub_20E078B74(v129, v459, type metadata accessor for TranscriptProtoResolveToolExpression);
      v269 = [objc_allocWithZone(MEMORY[0x277D58020]) &off_277E1BB78];
      v270 = v269;
      if (v269)
      {
        v271 = v139;
        v272 = *v185;
        v273 = *(*v185 + 16);
        if (v273)
        {
          v482 = MEMORY[0x277D84F90];
          v274 = v269;
          sub_20E2FFA8C(0, v273, 0);
          v275 = v482;
          v276 = v272 + ((*(v458 + 80) + 32) & ~*(v458 + 80));
          v277 = *(v458 + 72);
          do
          {
            v278 = v472;
            sub_20E078B0C(v276, v472, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
            v280 = *v278;
            v279 = v278[1];

            sub_20E078BDC(v278, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
            v482 = v275;
            v282 = *(v275 + 16);
            v281 = *(v275 + 24);
            if (v282 >= v281 >> 1)
            {
              sub_20E2FFA8C((v281 > 1), v282 + 1, 1);
              v275 = v482;
            }

            *(v275 + 16) = v282 + 1;
            v283 = v275 + 16 * v282;
            *(v283 + 32) = v280;
            *(v283 + 40) = v279;
            v276 += v277;
            --v273;
          }

          while (v273);
          v144 = v479;
          v185 = v459;
        }

        else
        {
          v410 = v269;
        }

        v411 = sub_20E322960();

        [v270 setToolIds_];

        v139 = v271;
      }

      [v481 setResolveTool_];

      sub_20E078BDC(v139, type metadata accessor for TranscriptProtoExpression);
      v401 = type metadata accessor for TranscriptProtoResolveToolExpression;
LABEL_213:
      v306 = v401;
      v307 = v185;
      goto LABEL_222;
    case 0xEu:
      v152 = v454;
      sub_20E078B74(v129, v454, type metadata accessor for TranscriptProtoUndoExpression);
      v158 = [objc_allocWithZone(MEMORY[0x277D58140]) &off_277E1BB78];
      if (v158)
      {
        v159 = objc_allocWithZone(MEMORY[0x277D58078]);
        v160 = v158;
        v161 = [v159 &off_277E1BB78];
        v162 = v429;
        sub_20E0486F4(v152, v429, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v474 + 48))(v162, 1, v480) == 1)
        {
          sub_20E04875C(v162, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v342 = v139;
          v343 = *v162;
          sub_20E078BDC(v162, type metadata accessor for TranscriptProtoStatementID);
          v344 = v343;
          v139 = v342;
          [v161 setIndex_];
        }

        [v160 setStatementId_];
      }

      [v481 setUndo_];

      v341 = type metadata accessor for TranscriptProtoUndoExpression;
      goto LABEL_185;
    case 0xFu:
      v152 = v455;
      sub_20E078B74(v129, v455, type metadata accessor for TranscriptProtoRejectExpression);
      v226 = [objc_allocWithZone(MEMORY[0x277D57FA0]) &off_277E1BB78];
      if (v226)
      {
        v227 = objc_allocWithZone(MEMORY[0x277D58078]);
        v228 = v226;
        v229 = [v227 &off_277E1BB78];
        v230 = v430;
        sub_20E0486F4(v152, v430, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v474 + 48))(v230, 1, v480) == 1)
        {
          sub_20E04875C(v230, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v359 = v139;
          v360 = *v230;
          sub_20E078BDC(v230, type metadata accessor for TranscriptProtoStatementID);
          v361 = v360;
          v139 = v359;
          [v229 setIndex_];
        }

        [v228 setStatementId_];
      }

      [v481 setReject_];

      v341 = type metadata accessor for TranscriptProtoRejectExpression;
      goto LABEL_185;
    case 0x10u:
      v152 = v456;
      sub_20E078B74(v129, v456, type metadata accessor for TranscriptProtoCancelExpression);
      v153 = [objc_allocWithZone(MEMORY[0x277D57D60]) &off_277E1BB78];
      if (v153)
      {
        v154 = objc_allocWithZone(MEMORY[0x277D58078]);
        v155 = v153;
        v156 = [v154 &off_277E1BB78];
        v157 = v431;
        sub_20E0486F4(v152, v431, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v474 + 48))(v157, 1, v480) == 1)
        {
          sub_20E04875C(v157, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v338 = v139;
          v339 = *v157;
          sub_20E078BDC(v157, type metadata accessor for TranscriptProtoStatementID);
          v340 = v339;
          v139 = v338;
          [v156 setIndex_];
        }

        [v155 setStatementId_];
      }

      [v481 setCancel_];

      v341 = type metadata accessor for TranscriptProtoCancelExpression;
      goto LABEL_185;
    case 0x11u:
      v252 = [objc_allocWithZone(MEMORY[0x277D57E98]) &off_277E1BB78];
      v225 = v252;
      if (v252)
      {
        [v252 setExists_];
      }

      [v481 setNoMatchingTool_];
      goto LABEL_116;
    case 0x12u:
      v288 = [objc_allocWithZone(MEMORY[0x277D57DC0]) &off_277E1BB78];
      v225 = v288;
      if (v288)
      {
        [v288 setExists_];
      }

      [v481 setContinuePlanning_];
      goto LABEL_116;
    case 0x13u:
      v305 = [objc_allocWithZone(MEMORY[0x277D57DF0]) &off_277E1BB78];
      v225 = v305;
      if (v305)
      {
        [v305 setExists_];
      }

      [v481 setEndOfPlan_];
      goto LABEL_116;
    case 0x14u:
      v253 = [objc_allocWithZone(MEMORY[0x277D57E60]) &off_277E1BB78];
      v225 = v253;
      if (v253)
      {
        [v253 setExists_];
      }

      [v481 setGetMentionedApps_];
LABEL_116:

      sub_20E078BDC(v139, type metadata accessor for TranscriptProtoExpression);
      v306 = type metadata accessor for TranscriptProtoExpressionEnum;
      v307 = v129;
      goto LABEL_222;
    case 0x15u:
      v152 = v457;
      sub_20E078B74(v129, v457, type metadata accessor for TranscriptProtoOpenExpression);
      v264 = [objc_allocWithZone(MEMORY[0x277D57EA0]) &off_277E1BB78];
      if (v264)
      {
        v265 = objc_allocWithZone(MEMORY[0x277D58078]);
        v266 = v264;
        v267 = [v265 &off_277E1BB78];
        v268 = v432;
        sub_20E0486F4(v152, v432, &qword_27C8639D0, &unk_20E33C230);
        if ((*(v474 + 48))(v268, 1, v480) == 1)
        {
          sub_20E04875C(v268, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v388 = v139;
          v389 = *v268;
          sub_20E078BDC(v268, type metadata accessor for TranscriptProtoStatementID);
          v390 = v389;
          v139 = v388;
          [v267 setIndex_];
        }

        [v266 setStatementId_];
      }

      [v481 setOpen_];

      v341 = type metadata accessor for TranscriptProtoOpenExpression;
LABEL_185:
      v293 = v341;
      v294 = v152;
LABEL_196:
      sub_20E078BDC(v294, v293);
      goto LABEL_197;
    case 0x16u:
      sub_20E078BDC(v129, type metadata accessor for TranscriptProtoExpressionEnum);
      v303 = [objc_allocWithZone(MEMORY[0x277D57E28]) &off_277E1BB78];
      v304 = v303;
      if (v303)
      {
        [v303 setExists_];
      }

      [v481 setExplicitResolutionRequest_];

LABEL_197:
      v306 = type metadata accessor for TranscriptProtoExpression;
      v307 = v139;
      goto LABEL_222;
    case 0x17u:
      v208 = v462;
      sub_20E078B74(v129, v462, type metadata accessor for TranscriptProtoPayloadExpression);
      v308 = [objc_allocWithZone(MEMORY[0x277D57EE8]) &off_277E1BB78];
      v309 = v308;
      if (v308)
      {
        v415 = v139;
        v310 = *v208;
        v482 = MEMORY[0x277D84F90];
        v311 = *(v310 + 16);
        v473 = v308;
        if (v311)
        {
          v312 = v310 + ((*(v474 + 80) + 32) & ~*(v474 + 80));
          v313 = *(v474 + 72);
          updated = v474 + 56;
          v478 = v313;
          v476 = (v474 + 48);
          v314 = v308;
          v475 = MEMORY[0x277D84F90];
          v315 = v422;
          v316 = v419;
          do
          {
            sub_20E078B0C(v312, v316, type metadata accessor for TranscriptProtoStatementID);
            sub_20E078B0C(v316, v315, type metadata accessor for TranscriptProtoStatementID);
            v317 = v480;
            (*updated)(v315, 0, 1, v480);
            v318 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
            v319 = v469;
            sub_20E0486F4(v315, v469, &qword_27C8639D0, &unk_20E33C230);
            if ((*v476)(v319, 1, v317) == 1)
            {
              sub_20E04875C(v315, &qword_27C8639D0, &unk_20E33C230);
              sub_20E078BDC(v316, type metadata accessor for TranscriptProtoStatementID);
              v320 = sub_20E04875C(v319, &qword_27C8639D0, &unk_20E33C230);
            }

            else
            {
              v321 = *v319;
              sub_20E078BDC(v319, type metadata accessor for TranscriptProtoStatementID);
              [v318 setIndex_];
              sub_20E04875C(v315, &qword_27C8639D0, &unk_20E33C230);
              v320 = sub_20E078BDC(v316, type metadata accessor for TranscriptProtoStatementID);
            }

            if (v318)
            {
              MEMORY[0x20F32BF90](v320);
              if (*((v482 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v482 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v322 = *((v482 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_20E322990();
                v316 = v419;
                v315 = v422;
              }

              sub_20E3229B0();
              v475 = v482;
            }

            v312 += v478;
            --v311;
          }

          while (v311);
        }

        else
        {
          v412 = v308;
          v475 = MEMORY[0x277D84F90];
        }

        sub_20E074574(0, &qword_27C863B70, 0x277D58078);
        v413 = sub_20E322960();

        v309 = v473;
        [v473 setStatementIds_];

        v144 = v479;
        v139 = v415;
        v208 = v462;
      }

      [v481 setPayload_];

      sub_20E078BDC(v139, type metadata accessor for TranscriptProtoExpression);
      v404 = type metadata accessor for TranscriptProtoPayloadExpression;
      goto LABEL_221;
    case 0x18u:
      v208 = v463;
      sub_20E078B74(v129, v463, type metadata accessor for TranscriptProtoFormatExpression);
      v209 = [objc_allocWithZone(MEMORY[0x277D57E58]) &off_277E1BB78];
      v210 = v209;
      if (v209)
      {
        v415 = v139;
        v211 = *v208;
        v482 = MEMORY[0x277D84F90];
        v212 = *(v211 + 16);
        v473 = v209;
        if (v212)
        {
          v213 = v211 + ((*(v474 + 80) + 32) & ~*(v474 + 80));
          v214 = *(v474 + 72);
          updated = v474 + 56;
          v478 = v214;
          v476 = (v474 + 48);
          v215 = v209;
          v475 = MEMORY[0x277D84F90];
          v216 = v423;
          v217 = v420;
          do
          {
            sub_20E078B0C(v213, v217, type metadata accessor for TranscriptProtoStatementID);
            sub_20E078B0C(v217, v216, type metadata accessor for TranscriptProtoStatementID);
            v218 = v480;
            (*updated)(v216, 0, 1, v480);
            v219 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
            v220 = v470;
            sub_20E0486F4(v216, v470, &qword_27C8639D0, &unk_20E33C230);
            if ((*v476)(v220, 1, v218) == 1)
            {
              sub_20E04875C(v216, &qword_27C8639D0, &unk_20E33C230);
              sub_20E078BDC(v217, type metadata accessor for TranscriptProtoStatementID);
              v221 = sub_20E04875C(v220, &qword_27C8639D0, &unk_20E33C230);
            }

            else
            {
              v222 = *v220;
              sub_20E078BDC(v220, type metadata accessor for TranscriptProtoStatementID);
              [v219 setIndex_];
              sub_20E04875C(v216, &qword_27C8639D0, &unk_20E33C230);
              v221 = sub_20E078BDC(v217, type metadata accessor for TranscriptProtoStatementID);
            }

            if (v219)
            {
              MEMORY[0x20F32BF90](v221);
              if (*((v482 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v482 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v223 = *((v482 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_20E322990();
                v217 = v420;
                v216 = v423;
              }

              sub_20E3229B0();
              v475 = v482;
            }

            v213 += v478;
            --v212;
          }

          while (v212);
        }

        else
        {
          v402 = v209;
          v475 = MEMORY[0x277D84F90];
        }

        sub_20E074574(0, &qword_27C863B70, 0x277D58078);
        v403 = sub_20E322960();

        v210 = v473;
        [v473 setStatementIds_];

        v144 = v479;
        v139 = v415;
        v208 = v463;
      }

      [v481 setFormat_];

      sub_20E078BDC(v139, type metadata accessor for TranscriptProtoExpression);
      v404 = type metadata accessor for TranscriptProtoFormatExpression;
LABEL_221:
      v306 = v404;
      v307 = v208;
LABEL_222:
      sub_20E078BDC(v307, v306);
      sub_20E04875C(v144, &qword_27C864160, &unk_20E33C410);
      result = v481;
      break;
    default:
      sub_20E078BDC(v139, type metadata accessor for TranscriptProtoExpression);

      sub_20E078BDC(v129, type metadata accessor for TranscriptProtoExpressionEnum);
      goto LABEL_6;
  }

  return result;
}

uint64_t sub_20E078B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E078B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E078BDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E078C3C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864190);
  __swift_project_value_buffer(v0, qword_27C864190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ENTITY_QUERY";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIRI_VOCABULARY";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "USER_FEEDBACK_LEARNING";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MEGADOME_ECR";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CONTEXT_REGISTRY";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RETURN_VALUE";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "USER_PROMPT";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "OMNISEARCH";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E078FD4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8641A8);
  __swift_project_value_buffer(v0, qword_27C8641A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "notSet";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "prescribedPlanGenerator";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "planOverride";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fullPlanner";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suggestedInvocationPlanGenerator";
  *(v16 + 1) = 32;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ruleBasedPlanGenerator";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E079300()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8641C0);
  __swift_project_value_buffer(v0, qword_27C8641C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Completion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Disambiguation";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Confirmation";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07955C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8641D8);
  __swift_project_value_buffer(v0, qword_27C8641D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUPPRESS_PRINT";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07976C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8641F0);
  __swift_project_value_buffer(v0, qword_27C8641F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ASTUpdateKind_APPEND";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASTUpdateKind_REPLACE";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07997C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864208);
  __swift_project_value_buffer(v0, qword_27C864208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "plus";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "minus";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "not";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E079BD8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864220);
  __swift_project_value_buffer(v0, qword_27C864220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20E3262E0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "assign";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "add";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "addAssign";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "subtract";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "subtractAssign";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "divide";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "divideAssign";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "multiply";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "multiplyAssign";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "exponent";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "equal";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "notEqual";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "in";
  *(v30 + 1) = 2;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "greaterThanEqual";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "greaterThan";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "lessThanEqual";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "lessThan";
  *(v37 + 8) = 8;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "and";
  *(v39 + 1) = 3;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "or";
  *(v41 + 1) = 2;
  v41[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E07A1F8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864238);
  __swift_project_value_buffer(v0, qword_27C864238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20E3262E0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "ASTInfixOp_ASSIGN";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ASTInfixOp_ADD";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ASTInfixOp_ADDASSIGN";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ASTInfixOp_SUBTRACT";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ASTInfixOp_SUBTRACTASSIGN";
  *(v15 + 1) = 25;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ASTInfixOp_DIVIDE";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ASTInfixOp_DIVIDEASSIGN";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ASTInfixOp_MULTIPLY";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ASTInfixOp_MULTIPLYASSIGN";
  *(v22 + 8) = 25;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ASTInfixOp_EXPONENT";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ASTInfixOp_EQUAL";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ASTInfixOp_NOTEQUAL";
  *(v28 + 1) = 19;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ASTInfixOp_IN";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ASTInfixOp_GREATERTHANEQUAL";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ASTInfixOp_GREATERTHAN";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ASTInfixOp_LESSTHANEQUAL";
  *(v36 + 1) = 24;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "ASTInfixOp_LESSTHAN";
  *(v37 + 8) = 19;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "ASTInfixOp_AND";
  *(v39 + 1) = 14;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "ASTInfixOp_OR";
  *(v41 + 1) = 13;
  v41[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E07A81C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864250);
  __swift_project_value_buffer(v0, qword_27C864250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ASTPrefixOp_PLUS";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASTPrefixOp_MINUS";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ASTPrefixOp_NOT";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07AA78()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864268);
  __swift_project_value_buffer(v0, qword_27C864268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "append";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "replace";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07AC88()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864280);
  __swift_project_value_buffer(v0, qword_27C864280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "appIntent";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "clientAction";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "schema";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07AEE4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864298);
  __swift_project_value_buffer(v0, qword_27C864298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "female";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "male";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "neutral";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07B174()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8642B0);
  __swift_project_value_buffer(v0, qword_27C8642B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "undo";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "redo";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E07B3A0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8642C8);
  __swift_project_value_buffer(v0, qword_27C8642C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20E326300;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 11;
  *v5 = "rawId";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "rawSessionId";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 12;
  *v11 = "rawQueryEventId";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "rawPayload";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 3;
  *v15 = "clientRequestId";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 4;
  *v17 = "clientSessionId";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "clientApplicationId";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "clientGroupId";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 13;
  *v22 = "timepoint";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 6;
  *v24 = "sender";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 7;
  *v26 = "postingSpan";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 8;
  *v28 = "rawInitiatedSpans";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoEvent.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 7)
    {
      if (result > 10)
      {
        switch(result)
        {
          case 11:
            goto LABEL_2;
          case 12:
LABEL_29:
            sub_20E3223D0();
            break;
          case 13:
            sub_20E07BC58();
            break;
        }
      }

      else if (result == 8)
      {
        sub_20E07BBD4();
      }

      else
      {
        if (result != 9)
        {
          v4 = v0 + *(type metadata accessor for TranscriptProtoEvent(0) + 48);
          goto LABEL_29;
        }

LABEL_2:
        sub_20E3223E0();
      }
    }

    else if (result > 3)
    {
      switch(result)
      {
        case 4:
          goto LABEL_2;
        case 6:
          sub_20E07BA6C();
          break;
        case 7:
          sub_20E07BB20();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_2;
        case 2:
          sub_20E07B9B8();
          break;
        case 3:
          goto LABEL_2;
      }
    }
  }
}

uint64_t sub_20E07B9B8()
{
  v0 = *(type metadata accessor for TranscriptProtoEvent(0) + 44);
  type metadata accessor for TranscriptProtoPayload(0);
  sub_20E195B0C(qword_280E0F180, type metadata accessor for TranscriptProtoPayload);
  return sub_20E322430();
}

uint64_t sub_20E07BA6C()
{
  v0 = *(type metadata accessor for TranscriptProtoEvent(0) + 56);
  type metadata accessor for TranscriptProtoParticipantID(0);
  sub_20E195B0C(qword_280E0C940, type metadata accessor for TranscriptProtoParticipantID);
  return sub_20E322430();
}

uint64_t sub_20E07BB20()
{
  v0 = *(type metadata accessor for TranscriptProtoEvent(0) + 60);
  type metadata accessor for TranscriptProtoSpanID(0);
  sub_20E195B0C(qword_280E0FDC8, type metadata accessor for TranscriptProtoSpanID);
  return sub_20E322430();
}

uint64_t sub_20E07BBD4()
{
  sub_20E322170();
  sub_20E322190();
  return sub_20E3222A0();
}

uint64_t sub_20E07BC58()
{
  v0 = *(type metadata accessor for TranscriptProtoEvent(0) + 52);
  type metadata accessor for TranscriptProtoTimepoint(0);
  sub_20E195B0C(qword_280E0E988, type metadata accessor for TranscriptProtoTimepoint);
  return sub_20E322430();
}

uint64_t TranscriptProtoEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E07BF64(v3, a1, a2, a3);
    if (!v4)
    {
      v11 = v3[5];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_20E322540();
      }

      v13 = v3[7];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v3[6] & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        sub_20E322540();
      }

      sub_20E07C180(v3, a1, a2, a3);
      sub_20E07C39C(v3, a1, a2, a3);
      if (*(v3[10] + 16))
      {
        sub_20E322170();
        sub_20E322190();
        sub_20E3224A0();
      }

      v15 = v3[9];
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v3[8] & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        sub_20E322540();
      }

      sub_20E07C5B8(v3);
      v17 = *v3;
      v18 = v3[1];
      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = *v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        sub_20E322540();
      }

      if (v3[12])
      {
        v20 = v3[11];
        sub_20E322540();
      }

      sub_20E07C630(v3, a1, a2, a3);
      v21 = v3 + *(type metadata accessor for TranscriptProtoEvent(0) + 64);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E07BF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoPayload(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoEvent(0);
  sub_20E0486F4(a1 + *(v14 + 44), v8, &qword_27C863FC0, &unk_20E325F70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863FC0, &unk_20E325F70);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoPayload);
  sub_20E195B0C(qword_280E0F180, type metadata accessor for TranscriptProtoPayload);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoPayload);
}

uint64_t sub_20E07C180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688B0, &unk_20E33C1C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoParticipantID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoEvent(0);
  sub_20E0486F4(a1 + *(v14 + 56), v8, &qword_27C8688B0, &unk_20E33C1C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8688B0, &unk_20E33C1C0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoParticipantID);
  sub_20E195B0C(qword_280E0C940, type metadata accessor for TranscriptProtoParticipantID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoParticipantID);
}

uint64_t sub_20E07C39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688A0, &qword_20E33B858);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoSpanID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoEvent(0);
  sub_20E0486F4(a1 + *(v14 + 60), v8, &qword_27C8688A0, &qword_20E33B858);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8688A0, &qword_20E33B858);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoSpanID);
  sub_20E195B0C(qword_280E0FDC8, type metadata accessor for TranscriptProtoSpanID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoSpanID);
}

uint64_t sub_20E07C5B8(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoEvent(0);
  v3 = (a1 + *(result + 48));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E07C630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoTimepoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoEvent(0);
  sub_20E0486F4(a1 + *(v14 + 52), v8, &qword_27C8688C0, &qword_20E33B870);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8688C0, &qword_20E33B870);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoTimepoint);
  sub_20E195B0C(qword_280E0E988, type metadata accessor for TranscriptProtoTimepoint);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoTimepoint);
}

unint64_t sub_20E07C898@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  v4 = a1[11];
  v5 = type metadata accessor for TranscriptProtoPayload(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[13];
  v7 = &a2[a1[12]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v8 - 8) + 56))(&a2[v6], 1, 1, v8);
  v9 = a1[14];
  v10 = type metadata accessor for TranscriptProtoParticipantID(0);
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v11 = a1[15];
  v12 = type metadata accessor for TranscriptProtoSpanID(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[a1[16]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0xE000000000000000;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0xE000000000000000;
  result = sub_20E048A4C(MEMORY[0x277D84F90]);
  *(a2 + 10) = result;
  return result;
}

uint64_t sub_20E07CA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E07CAA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_20E07CB18(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t sub_20E07CB6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E48, type metadata accessor for TranscriptProtoEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E07CC0C()
{
  sub_20E195B0C(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent);

  return sub_20E322470();
}

uint64_t sub_20E07CC78()
{
  sub_20E195B0C(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent);

  return sub_20E322480();
}

uint64_t sub_20E07CD14()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8642E0);
  __swift_project_value_buffer(v0, qword_27C8642E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_20E326310;
  v4 = v82 + v3;
  v5 = v82 + v3 + v1[14];
  *(v82 + v3) = 46;
  *v5 = "sessionStart";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v82 + v3 + v2 + v1[14];
  *(v4 + v2) = 41;
  *v9 = "request";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v82 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "planCreated";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v82 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "actionCreated";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v82 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "clientActionCreated";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v82 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "queriesCreated";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v82 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "variablesSet";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v82 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 11;
  *v21 = "criticalError";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v82 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 47;
  *v22 = "recoverableError";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v82 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "endOfPlan";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v82 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 15;
  *v26 = "terminate";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v82 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 19;
  *v28 = "queriesExecuted";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v82 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 21;
  *v30 = "actionResolverRequestCreated";
  *(v30 + 1) = 28;
  v30[16] = 2;
  v8();
  v31 = (v82 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 25;
  *v32 = "safetyModeRelease";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v8();
  v33 = (v82 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 26;
  *v34 = "safetyModeException";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v8();
  v35 = (v82 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 27;
  *v36 = "responseGenerationRequest";
  *(v36 + 1) = 25;
  v36[16] = 2;
  v8();
  v37 = v82 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 28;
  *v37 = "entitySpanMatched";
  *(v37 + 8) = 17;
  *(v37 + 16) = 2;
  v8();
  v38 = (v82 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 29;
  *v39 = "ContextRetrieved";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v82 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 30;
  *v41 = "actionCanceled";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v82 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 31;
  *v43 = "toolsRetrieved";
  *(v43 + 1) = 14;
  v43[16] = 2;
  v8();
  v44 = (v82 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 32;
  *v45 = "systemResponseGenerated";
  *(v45 + 1) = 23;
  v45[16] = 2;
  v8();
  v46 = (v82 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 33;
  *v47 = "statementEvaluated";
  *(v47 + 1) = 18;
  v47[16] = 2;
  v8();
  v48 = (v82 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 42;
  *v49 = "externalAgentRequest";
  *(v49 + 1) = 20;
  v49[16] = 2;
  v8();
  v50 = (v82 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 36;
  *v51 = "externalAgentOutcome";
  *(v51 + 1) = 20;
  v51[16] = 2;
  v8();
  v52 = (v82 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 37;
  *v53 = "externalAgentRequestRewriteMetadata";
  *(v53 + 1) = 35;
  v53[16] = 2;
  v8();
  v54 = (v82 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 38;
  *v55 = "ToolResolution";
  *(v55 + 1) = 14;
  v55[16] = 2;
  v8();
  v56 = (v82 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 39;
  *v57 = "undoRedoRequest";
  *(v57 + 1) = 15;
  v57[16] = 2;
  v8();
  v58 = (v82 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 40;
  *v59 = "clientUndoRedoRequest";
  *(v59 + 1) = 21;
  v59[16] = 2;
  v8();
  v60 = (v82 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 43;
  *v61 = "typeConversionRequest";
  *(v61 + 1) = 21;
  v61[16] = 2;
  v8();
  v62 = (v82 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 44;
  *v63 = "typeConversionResult";
  *(v63 + 1) = 20;
  v63[16] = 2;
  v8();
  v64 = (v82 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 45;
  *v65 = "queryDecorationResult";
  *(v65 + 1) = 21;
  v65[16] = 2;
  v8();
  v66 = (v82 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 48;
  *v67 = "continuePlanning";
  *(v67 + 1) = 16;
  v67[16] = 2;
  v8();
  v68 = v82 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 49;
  *v68 = "queryDecorationPrePlannerResult";
  *(v68 + 8) = 31;
  *(v68 + 16) = 2;
  v8();
  v69 = (v82 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 50;
  *v70 = "skipStatement";
  *(v70 + 1) = 13;
  v70[16] = 2;
  v8();
  v71 = (v82 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 51;
  *v72 = "executionPreconditionEvaluatorRequest";
  *(v72 + 1) = 37;
  v72[16] = 2;
  v8();
  v73 = (v82 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 52;
  *v74 = "requestAmendment";
  *(v74 + 1) = 16;
  v74[16] = 2;
  v8();
  v75 = (v82 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 53;
  *v76 = "toolRetrievalRequest";
  *(v76 + 1) = 20;
  v76[16] = 2;
  v8();
  v77 = (v82 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 54;
  *v78 = "contextRetrievalRequest";
  *(v78 + 1) = 23;
  v78[16] = 2;
  v8();
  v79 = (v82 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 55;
  *v80 = "spanMatchRequest";
  *(v80 + 1) = 16;
  v80[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        sub_20E07DD20(v5, a1, a2, a3);
        break;
      case 4:
        sub_20E07E2DC(v5, a1, a2, a3);
        break;
      case 5:
        sub_20E07E898(v5, a1, a2, a3);
        break;
      case 6:
        sub_20E07EE54(v5, a1, a2, a3);
        break;
      case 7:
        sub_20E07F410(v5, a1, a2, a3);
        break;
      case 11:
        sub_20E07F9CC(v5, a1, a2, a3);
        break;
      case 14:
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 37;
        goto LABEL_35;
      case 15:
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 38;
LABEL_35:
        sub_20E07FF88(v11, v12, v13, v14, &qword_27C863FC8, &unk_20E33C1D0, type metadata accessor for TranscriptProtoPayloadEnum, v15);
        break;
      case 19:
        sub_20E080310(v5, a1, a2, a3);
        break;
      case 21:
        sub_20E0808CC(v5, a1, a2, a3);
        break;
      case 25:
        sub_20E080E88(v5, a1, a2, a3);
        break;
      case 26:
        sub_20E081444(v5, a1, a2, a3);
        break;
      case 27:
        sub_20E081A00(v5, a1, a2, a3);
        break;
      case 28:
        sub_20E081FBC(v5, a1, a2, a3);
        break;
      case 29:
        sub_20E082578(v5, a1, a2, a3);
        break;
      case 30:
        sub_20E082B34(v5, a1, a2, a3);
        break;
      case 31:
        sub_20E0830F0(v5, a1, a2, a3);
        break;
      case 32:
        sub_20E0836AC(v5, a1, a2, a3);
        break;
      case 33:
        sub_20E083C68(v5, a1, a2, a3);
        break;
      case 36:
        sub_20E084224(v5, a1, a2, a3);
        break;
      case 37:
        sub_20E0847E0(v5, a1, a2, a3);
        break;
      case 38:
        sub_20E084D9C(v5, a1, a2, a3);
        break;
      case 39:
        sub_20E085358(v5, a1, a2, a3);
        break;
      case 40:
        sub_20E085914(v5, a1, a2, a3);
        break;
      case 41:
        sub_20E085ED0(v5, a1, a2, a3);
        break;
      case 42:
        sub_20E08648C(v5, a1, a2, a3);
        break;
      case 43:
        sub_20E086A48(v5, a1, a2, a3);
        break;
      case 44:
        sub_20E087004(v5, a1, a2, a3);
        break;
      case 45:
        sub_20E0875C0(v5, a1, a2, a3);
        break;
      case 46:
        sub_20E087B7C(v5, a1, a2, a3);
        break;
      case 47:
        sub_20E08812C(v5, a1, a2, a3);
        break;
      case 48:
        sub_20E0886E8(v5, a1, a2, a3);
        break;
      case 49:
        sub_20E088CA4(v5, a1, a2, a3);
        break;
      case 50:
        sub_20E089260(v5, a1, a2, a3);
        break;
      case 51:
        sub_20E08981C(v5, a1, a2, a3);
        break;
      case 52:
        sub_20E089DD8(v5, a1, a2, a3);
        break;
      case 53:
        sub_20E08A394(v5, a1, a2, a3);
        break;
      case 54:
        sub_20E08A950(v5, a1, a2, a3);
        break;
      case 55:
        sub_20E08AF0C(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_20E07DD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPlan(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F78, &unk_20E325EA0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C863F78, &unk_20E325EA0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoPlan);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoPlan);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866A20, type metadata accessor for TranscriptProtoPlan);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863F78, &unk_20E325EA0);
  }

  sub_20E0486F4(v28, v36, &qword_27C863F78, &unk_20E325EA0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863F78, &unk_20E325EA0);
    return sub_20E04875C(v36, &qword_27C863F78, &unk_20E325EA0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoPlan);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863F78, &unk_20E325EA0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoPlan);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E07E2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F10, &qword_20E33AFE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C867F10, &qword_20E33AFE0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoAction);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoAction);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866530, type metadata accessor for TranscriptProtoAction);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C867F10, &qword_20E33AFE0);
  }

  sub_20E0486F4(v28, v36, &qword_27C867F10, &qword_20E33AFE0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C867F10, &qword_20E33AFE0);
    return sub_20E04875C(v36, &qword_27C867F10, &qword_20E33AFE0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoAction);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C867F10, &qword_20E33AFE0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoAction);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E07E898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoClientAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F20, &unk_20E3461D0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v28, &qword_27C863F20, &unk_20E3461D0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoClientAction);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoClientAction);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866680, type metadata accessor for TranscriptProtoClientAction);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863F20, &unk_20E3461D0);
  }

  sub_20E0486F4(v28, v36, &qword_27C863F20, &unk_20E3461D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863F20, &unk_20E3461D0);
    return sub_20E04875C(v36, &qword_27C863F20, &unk_20E3461D0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoClientAction);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863F20, &unk_20E3461D0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoClientAction);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E07EE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v6 = *(Step - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Step);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BC8, &unk_20E3461C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = Step;
  v30 = Step;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v28, &qword_27C863BC8, &unk_20E3461C0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoQueryStep);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoQueryStep);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866A90, type metadata accessor for TranscriptProtoQueryStep);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863BC8, &unk_20E3461C0);
  }

  sub_20E0486F4(v28, v36, &qword_27C863BC8, &unk_20E3461C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863BC8, &unk_20E3461C0);
    return sub_20E04875C(v36, &qword_27C863BC8, &unk_20E3461C0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoQueryStep);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863BC8, &unk_20E3461C0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoQueryStep);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E07F410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoVariableStep(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687C8, &qword_20E33B780);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v28, &qword_27C8687C8, &qword_20E33B780);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoVariableStep);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoVariableStep);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866E98, type metadata accessor for TranscriptProtoVariableStep);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8687C8, &qword_20E33B780);
  }

  sub_20E0486F4(v28, v36, &qword_27C8687C8, &qword_20E33B780);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8687C8, &qword_20E33B780);
    return sub_20E04875C(v36, &qword_27C8687C8, &qword_20E33B780);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoVariableStep);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8687C8, &qword_20E33B780);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoVariableStep);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E07F9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSessionError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687D0, &qword_20E33B788);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v28, &qword_27C8687D0, &qword_20E33B788);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSessionError);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSessionError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8687D0, &qword_20E33B788);
  }

  sub_20E0486F4(v28, v36, &qword_27C8687D0, &qword_20E33B788);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8687D0, &qword_20E33B788);
    return sub_20E04875C(v36, &qword_27C8687D0, &qword_20E33B788);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSessionError);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8687D0, &qword_20E33B788);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSessionError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E07FF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), int a8)
{
  v39 = a8;
  v37 = a7;
  v38 = a6;
  v40 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v34 - v19;
  v21 = sub_20E322110();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v20, 1, 1, v21);
  sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
  v23 = v41;
  sub_20E322300();
  v41 = v23;
  if (v23)
  {
    return sub_20E04875C(v20, &qword_27C867FE0, &qword_20E33B098);
  }

  v34[1] = a4;
  v35 = v13;
  v36 = a5;
  sub_20E0486F4(v20, v18, &qword_27C867FE0, &qword_20E33B098);
  v24 = (*(v22 + 48))(v18, 1, v21);
  sub_20E04875C(v18, &qword_27C867FE0, &qword_20E33B098);
  if (v24 == 1)
  {
    return sub_20E04875C(v20, &qword_27C867FE0, &qword_20E33B098);
  }

  v26 = v35;
  v27 = v36;
  v28 = v38;
  sub_20E0486F4(v40, v35, v36, v38);
  v29 = v37(0);
  v30 = *(v29 - 8);
  v31 = (*(v30 + 48))(v26, 1, v29);
  sub_20E04875C(v26, v27, v28);
  if (v31 != 1)
  {
    v32 = v41;
    sub_20E3222C0();
    if (v32)
    {
      return sub_20E04875C(v20, &qword_27C867FE0, &qword_20E33B098);
    }
  }

  sub_20E04875C(v20, &qword_27C867FE0, &qword_20E33B098);
  v33 = v40;
  sub_20E04875C(v40, v36, v28);
  swift_storeEnumTagMultiPayload();
  return (*(v30 + 56))(v33, 0, 1, v29);
}

uint64_t sub_20E080310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v6 = *(StepResults - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](StepResults);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687D8, &qword_20E33B790);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = StepResults;
  v30 = StepResults;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E04875C(v28, &qword_27C8687D8, &qword_20E33B790);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoQueryStepResults);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoQueryStepResults);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866B08, type metadata accessor for TranscriptProtoQueryStepResults);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8687D8, &qword_20E33B790);
  }

  sub_20E0486F4(v28, v36, &qword_27C8687D8, &qword_20E33B790);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8687D8, &qword_20E33B790);
    return sub_20E04875C(v36, &qword_27C8687D8, &qword_20E33B790);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoQueryStepResults);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8687D8, &qword_20E33B790);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoQueryStepResults);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0808CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687E0, &qword_20E33B798);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_20E04875C(v28, &qword_27C8687E0, &qword_20E33B798);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoActionResolverRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoActionResolverRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866DA0, type metadata accessor for TranscriptProtoActionResolverRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8687E0, &qword_20E33B798);
  }

  sub_20E0486F4(v28, v36, &qword_27C8687E0, &qword_20E33B798);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8687E0, &qword_20E33B798);
    return sub_20E04875C(v36, &qword_27C8687E0, &qword_20E33B798);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoActionResolverRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8687E0, &qword_20E33B798);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoActionResolverRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E080E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687E8, &qword_20E33B7A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_20E04875C(v28, &qword_27C8687E8, &qword_20E33B7A0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSafetyModeRelease);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSafetyModeRelease);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866DF0, type metadata accessor for TranscriptProtoSafetyModeRelease);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8687E8, &qword_20E33B7A0);
  }

  sub_20E0486F4(v28, v36, &qword_27C8687E8, &qword_20E33B7A0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8687E8, &qword_20E33B7A0);
    return sub_20E04875C(v36, &qword_27C8687E8, &qword_20E33B7A0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSafetyModeRelease);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8687E8, &qword_20E33B7A0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSafetyModeRelease);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E081444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687F0, &qword_20E33B7A8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_20E04875C(v28, &qword_27C8687F0, &qword_20E33B7A8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSafetyModeException);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSafetyModeException);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866E08, type metadata accessor for TranscriptProtoSafetyModeException);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8687F0, &qword_20E33B7A8);
  }

  sub_20E0486F4(v28, v36, &qword_27C8687F0, &qword_20E33B7A8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8687F0, &qword_20E33B7A8);
    return sub_20E04875C(v36, &qword_27C8687F0, &qword_20E33B7A8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSafetyModeException);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8687F0, &qword_20E33B7A8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSafetyModeException);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E081A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687F8, &qword_20E33B7B0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_20E04875C(v28, &qword_27C8687F8, &qword_20E33B7B0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoResponseGenerationRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoResponseGenerationRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866640, type metadata accessor for TranscriptProtoResponseGenerationRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8687F8, &qword_20E33B7B0);
  }

  sub_20E0486F4(v28, v36, &qword_27C8687F8, &qword_20E33B7B0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8687F8, &qword_20E33B7B0);
    return sub_20E04875C(v36, &qword_27C8687F8, &qword_20E33B7B0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8687F8, &qword_20E33B7B0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E081FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  v6 = *(matched - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](matched);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868800, &qword_20E33B7B8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = matched;
  v30 = matched;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_20E04875C(v28, &qword_27C868800, &qword_20E33B7B8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867438, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868800, &qword_20E33B7B8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868800, &qword_20E33B7B8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868800, &qword_20E33B7B8);
    return sub_20E04875C(v36, &qword_27C868800, &qword_20E33B7B8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868800, &qword_20E33B7B8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E082578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868808, &qword_20E33B7C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_20E04875C(v28, &qword_27C868808, &qword_20E33B7C0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoContextRetrieved);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoContextRetrieved);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866DB8, type metadata accessor for TranscriptProtoContextRetrieved);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868808, &qword_20E33B7C0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868808, &qword_20E33B7C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868808, &qword_20E33B7C0);
    return sub_20E04875C(v36, &qword_27C868808, &qword_20E33B7C0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoContextRetrieved);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868808, &qword_20E33B7C0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoContextRetrieved);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}