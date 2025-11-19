uint64_t type metadata accessor for EditorialDetailState()
{
  result = qword_2810F7610;
  if (!qword_2810F7610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A6864()
{
  result = type metadata accessor for EditorialDetailLayout();
  if (v1 <= 0x3F)
  {
    result = sub_24B75B1F8();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for EditorialDetailLoadState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for EditorialDetailLayout()
{
  result = qword_2810F7578;
  if (!qword_2810F7578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A695C()
{
  result = sub_24B75B308();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for EditorialDetailLoadState()
{
  result = qword_2810F7418;
  if (!qword_2810F7418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A6A1C()
{
  sub_24B6A6A74();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_24B6A6A74()
{
  if (!qword_2810F74F0[0])
  {
    v0 = type metadata accessor for EditorialDetailContent();
    if (!v1)
    {
      atomic_store(v0, qword_2810F74F0);
    }
  }
}

uint64_t type metadata accessor for EditorialDetailContent()
{
  result = qword_2810F74E0;
  if (!qword_2810F74E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A6B08()
{
  sub_24B6A6BFC();
  if (v0 <= 0x3F)
  {
    sub_24B6A7074();
    if (v1 <= 0x3F)
    {
      sub_24B6A7594();
      if (v2 <= 0x3F)
      {
        sub_24B75B108();
        if (v3 <= 0x3F)
        {
          sub_24B6A7490();
          if (v4 <= 0x3F)
          {
            sub_24B6A74E0();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24B6A6BFC()
{
  if (!qword_2810F7AD0)
  {
    type metadata accessor for EditorialArtwork();
    sub_24B6A6DEC(qword_2810F7248, type metadata accessor for EditorialArtwork);
    v0 = sub_24B75B2C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F7AD0);
    }
  }
}

uint64_t type metadata accessor for EditorialArtwork()
{
  result = qword_2810F7218;
  if (!qword_2810F7218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A6CDC()
{
  sub_24B6A6D98(319, &qword_2810F7AE8, MEMORY[0x277D09D68]);
  if (v0 <= 0x3F)
  {
    sub_24B6A6D98(319, &qword_2810F7AF8, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B6A6D98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B75C4E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24B6A6DEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B6A6E7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B6A6EC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B6A6F0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B6A6F54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24B6A7074()
{
  if (!qword_2810F6920)
  {
    type metadata accessor for EditorialExternalLink();
    sub_24B6A6DEC(&qword_2810F70E8, type metadata accessor for EditorialExternalLink);
    v0 = sub_24B75C458();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F6920);
    }
  }
}

uint64_t type metadata accessor for EditorialExternalLink()
{
  result = qword_2810F70D0;
  if (!qword_2810F70D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A7154()
{
  result = sub_24B75B108();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B6A71D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B6A7218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B6A7260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B6A72A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24B75B108();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6A72EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B6A7334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B6A737C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24B6A740C()
{
  sub_24B6A7490();
  if (v0 <= 0x3F)
  {
    sub_24B75B108();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B6A7490()
{
  if (!qword_2810F6960)
  {
    v0 = sub_24B75C4E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F6960);
    }
  }
}

void sub_24B6A74E0()
{
  if (!qword_2810F6928)
  {
    sub_24B6A753C();
    v0 = sub_24B75C458();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F6928);
    }
  }
}

unint64_t sub_24B6A753C()
{
  result = qword_2810F70F8[0];
  if (!qword_2810F70F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810F70F8);
  }

  return result;
}

void sub_24B6A7594()
{
  if (!qword_2810F7158[0])
  {
    type metadata accessor for EditorialPreview();
    v0 = sub_24B75C4E8();
    if (!v1)
    {
      atomic_store(v0, qword_2810F7158);
    }
  }
}

uint64_t type metadata accessor for EditorialPreview()
{
  result = qword_2810F7188;
  if (!qword_2810F7188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B6A7638()
{
  result = qword_2810F70F0;
  if (!qword_2810F70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F70F0);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutContextMenuPreviewState()
{
  result = qword_2810F6CA8;
  if (!qword_2810F6CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A76D8()
{
  result = type metadata accessor for WorkoutContextMenuPreviewLoadState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for WorkoutContextMenuPreviewLoadState()
{
  result = qword_2810F69F8;
  if (!qword_2810F69F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A77A8()
{
  v0 = type metadata accessor for WorkoutContextMenuPreviewContent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t type metadata accessor for WorkoutContextMenuPreviewContent()
{
  result = qword_2810F6AB0;
  if (!qword_2810F6AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A784C()
{
  if (!qword_2810F7AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
    v0 = sub_24B75C4E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F7AD8);
    }
  }
}

void sub_24B6A78B0()
{
  sub_24B6A784C();
  if (v0 <= 0x3F)
  {
    sub_24B6A7AA0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for WorkoutContextMenuPreviewArtwork()
{
  result = qword_2810F6B40;
  if (!qword_2810F6B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A7AA0()
{
  if (!qword_2810F7B00)
  {
    sub_24B75AFE8();
    v0 = sub_24B75C4E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F7B00);
    }
  }
}

uint64_t type metadata accessor for ProgramDetailState()
{
  result = qword_2810F7AB0;
  if (!qword_2810F7AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A7B44()
{
  result = type metadata accessor for ProgramDetailLoadState();
  if (v1 <= 0x3F)
  {
    result = sub_24B75B1F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ProgramDetailLoadState()
{
  result = qword_2810F79E8;
  if (!qword_2810F79E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A7C40()
{
  sub_24B6A7C98();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_24B6A7C98()
{
  if (!qword_2810F7398)
  {
    v0 = type metadata accessor for WorkoutProgram();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F7398);
    }
  }
}

uint64_t type metadata accessor for WorkoutProgram()
{
  result = qword_2810F7388;
  if (!qword_2810F7388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A7D2C()
{
  sub_24B6A7ECC();
  if (v0 <= 0x3F)
  {
    sub_24B75AFE8();
    if (v1 <= 0x3F)
    {
      sub_24B6A8268(319, &qword_2810F6940, type metadata accessor for WorkoutProgramLinkAnnotation, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24B6A8268(319, qword_2810F6F50, type metadata accessor for WorkoutProgramPreview, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24B75B108();
          if (v4 <= 0x3F)
          {
            sub_24B6A8268(319, &qword_2810F7B00, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24B6A83E8();
              if (v6 <= 0x3F)
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

void sub_24B6A7ECC()
{
  if (!qword_2810F7AE0)
  {
    type metadata accessor for WorkoutProgramArtwork();
    sub_24B6A8070(qword_2810F7048, type metadata accessor for WorkoutProgramArtwork);
    v0 = sub_24B75B2C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F7AE0);
    }
  }
}

uint64_t type metadata accessor for WorkoutProgramArtwork()
{
  result = qword_2810F7018;
  if (!qword_2810F7018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A7FAC()
{
  sub_24B6A6D98(319, &qword_2810F7AE8, MEMORY[0x277D09D68]);
  if (v0 <= 0x3F)
  {
    sub_24B6A6D98(319, &qword_2810F7AF8, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24B6A8070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B6A80B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B6A8100(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24B6A8268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for WorkoutProgramLinkAnnotation()
{
  result = qword_2810F6E48;
  if (!qword_2810F6E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A8318()
{
  result = sub_24B75B108();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for WorkoutProgramPreview()
{
  result = qword_2810F6F80;
  if (!qword_2810F6F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A83E8()
{
  if (!qword_2810F6938)
  {
    v0 = sub_24B75C3B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F6938);
    }
  }
}

uint64_t sub_24B6A8458(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A8490()
{
  sub_24B6A84E8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_24B6A84E8()
{
  if (!qword_2810F72A8[0])
  {
    type metadata accessor for WorkoutSchedule();
    v0 = sub_24B75C4E8();
    if (!v1)
    {
      atomic_store(v0, qword_2810F72A8);
    }
  }
}

uint64_t type metadata accessor for WorkoutSchedule()
{
  result = qword_2810F72D8;
  if (!qword_2810F72D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A858C()
{
  result = sub_24B75B1D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24B6A8650(uint64_t a1)
{
  sub_24B6C7124();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
    swift_getFunctionTypeMetadata1();
    sub_24B75B288();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      type metadata accessor for WorkoutContextMenuPreviewView.Layout();
      if (v6 <= 0x3F)
      {
        sub_24B6C71E0();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24B6A8784@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24B6A87D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B75B1F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B6A8908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24B75B1F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B6A8A4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6A8AC4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B6A8B50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B75B248();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_24B75B1F8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    State = type metadata accessor for WorkoutScheduleLoadState(0);
    if (*(*(State - 8) + 84) == a2)
    {
      v8 = State;
      v12 = *(State - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FA8, &qword_24B75D810);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_24B6A8D1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24B75B248();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_24B75B1F8();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  State = type metadata accessor for WorkoutScheduleLoadState(0);
  if (*(*(State - 8) + 84) == a3)
  {
    v10 = State;
    v14 = *(State - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FA8, &qword_24B75D810);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_24B6A8EEC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aHighlight[8];
  *a1 = *aHighlight;
  a1[1] = v2;
}

uint64_t sub_24B6A8F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B6A9014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24B6A90E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24B6A91EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24B6A9304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B75B108();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B6A93B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24B75B108();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B6A9454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6A94C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B6A9540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    State = type metadata accessor for WorkoutContextMenuPreviewLoadState();
    v9 = *(*(State - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, State);
  }
}

uint64_t sub_24B6A95EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for WorkoutContextMenuPreviewLoadState();
    v8 = *(*(State - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, State);
  }

  return result;
}

uint64_t sub_24B6A9690()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_24B6A96D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B6A970C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for WorkoutContextMenuPreviewView() - 8);
  v4 = *(*v3 + 64);
  v5 = (v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80)));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  sub_24B6C7004();
  v9 = v3[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
  swift_getFunctionTypeMetadata1();
  v10 = sub_24B75B288();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = (v5 + v3[12]);
  v12 = v11[1];

  v13 = v11[2];

  v14 = v11[3];

  v15 = v3[13];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v16 - 8) + 8))(v5 + v15, v16);

  return swift_deallocObject();
}

uint64_t sub_24B6A989C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
  swift_getFunctionTypeMetadata1();
  v7 = sub_24B75B288();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + *(a3 + 40) + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 44);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_24B6A9A04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
  swift_getFunctionTypeMetadata1();
  result = sub_24B75B288();
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = *(v10 + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 44);

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_24B6A9B7C(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344A8, &unk_24B75F6B0);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B8, &unk_24B75F6C0);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C0A8();
  sub_24B75B558();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24B6A9D48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B6A9D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (*(*(*(a3 + 24) - 8) + 84) == a2)
  {
    v5 = *(*(a3 + 24) - 8);
    v6 = *(a3 + 84);
  }

  else if (*(*(*(a3 + 32) - 8) + 84) == a2)
  {
    v5 = *(*(a3 + 32) - 8);
    v6 = *(a3 + 88);
  }

  else
  {
    if (*(*(*(a3 + 40) - 8) + 84) != a2)
    {
      v11 = *(a3 + 16);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034118, &qword_24B75E1D8);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
      swift_getFunctionTypeMetadata();
      v13 = sub_24B75B288();
      v14 = *(v13 - 8);
      if (*(v14 + 84) == a2)
      {
        return (*(v14 + 48))(a1 + *(a3 + 96), a2, v13);
      }

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
      return (*(*(v15 - 8) + 48))(a1 + *(a3 + 100), a2, v15);
    }

    v5 = *(*(a3 + 40) - 8);
    v6 = *(a3 + 92);
  }

  v7 = *(v5 + 48);
  v8 = a1 + v6;

  return v7(v8);
}

uint64_t sub_24B6AA000(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  v4 = *(a4 + 24);
  if (*(*(v4 - 8) + 84) == a3)
  {
    v5 = *(*(a4 + 24) - 8);
    v6 = *(a4 + 84);
  }

  else
  {
    v4 = *(a4 + 32);
    if (*(*(v4 - 8) + 84) == a3)
    {
      v5 = *(*(a4 + 32) - 8);
      v6 = *(a4 + 88);
    }

    else
    {
      v4 = *(a4 + 40);
      if (*(*(v4 - 8) + 84) != a3)
      {
        v9 = result;
        v12 = *(a4 + 16);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034118, &qword_24B75E1D8);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
        swift_getFunctionTypeMetadata();
        v14 = sub_24B75B288();
        v15 = *(v14 - 8);
        if (*(v15 + 84) == a3)
        {
          return (*(v15 + 56))(v9 + *(a4 + 96), a2, a2, v14);
        }

        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
        return (*(*(v16 - 8) + 56))(v9 + *(a4 + 100), a2, a2, v16);
      }

      v5 = *(*(a4 + 40) - 8);
      v6 = *(a4 + 92);
    }
  }

  v7 = *(v5 + 56);
  v8 = result + v6;

  return v7(v8, a2, a2, v4);
}

uint64_t sub_24B6AA288(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v7 = a1[4];
  v4 = a1[6];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034528, &qword_24B75F8D0);
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  swift_getWitnessTable();
  sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034538, &qword_24B7671C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  swift_getOpaqueTypeConformance2();
  sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908);
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034590, &qword_24B75F930);
  sub_24B75B558();
  sub_24B75C4E8();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034598, &qword_24B75F938);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A0, &qword_24B75F940);
  swift_getTupleTypeMetadata();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75B3E8();
  swift_getWitnessTable();
  sub_24B75B4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A8, &qword_24B75F948);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345B0, &qword_24B75F950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B6C743C(&qword_27F0345B8, &qword_27F0345A8, &qword_24B75F948);
  sub_24B75B4C8();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345C0, &qword_24B75F958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  swift_getWitnessTable();
  sub_24B6EAA80(&qword_27F0345C8, MEMORY[0x277CE0660]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75B3E8();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345D0, &unk_24B75F960);
  swift_getTupleTypeMetadata();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75B3E8();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75B4F8();
  sub_24B75B7B8();
  sub_24B75B7B8();
  sub_24B75BF88();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B7B8();
  sub_24B75BF88();
  sub_24B6E4F94();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_24B6AB670()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v22 = *(v0 + 16);
  v19 = *(v0 + 40);
  v23 = *(v0 + 56);
  v24 = *(v0 + 72);
  v3 = (type metadata accessor for WorkoutDetailView() - 8);
  v4 = (*(*v3 + 80) + 80) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v20 = (v5 + *(*(v6 - 8) + 80) + 9) & ~*(*(v6 - 8) + 80);
  v21 = *(*(v6 - 8) + 64);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  sub_24B6C7004();
  (*(*(v1 - 8) + 8))(v7 + v3[23], v1);
  (*(*(v2 - 8) + 8))(v7 + v3[24], v2);
  (*(*(v19 - 8) + 8))(v7 + v3[25]);
  v11 = v3[26];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
  swift_getFunctionTypeMetadata();
  v12 = sub_24B75B288();
  (*(*(v12 - 8) + 8))(v7 + v11, v12);
  v13 = v3[27];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v14 - 8) + 8))(v7 + v13, v14);
  v15 = *(v0 + v5);

  v16 = sub_24B75B108();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v0 + v20, 1, v16))
  {
    (*(v17 + 8))(v0 + v20, v16);
  }

  return swift_deallocObject();
}

uint64_t sub_24B6AB9E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 72);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v41 = *(*(v5 - 8) + 80);
  v6 = (v41 + 80) & ~v41;
  v7 = *(*(v5 - 8) + 64);
  v35 = *(v0 + 40);
  v42 = *(v0 + 56);
  v8 = type metadata accessor for WorkoutDetailView();
  v40 = *(*(v8 - 1) + 80);
  v9 = (v6 + v7 + v40) & ~v40;
  v10 = *(*(v8 - 1) + 64);
  v11 = type metadata accessor for WorkoutDetailMusicTrack();
  v38 = *(*(v11 - 1) + 80);
  v36 = (v9 + v10 + v38) & ~v38;
  v39 = *(*(v11 - 1) + 64);
  v12 = sub_24B75B108();
  v34 = *(v12 - 8);
  v37 = *(v34 + 48);
  if (!v37(v0 + v6, 1, v12))
  {
    (*(v34 + 8))(v0 + v6, v12);
  }

  v13 = *(v0 + v9);
  v14 = *(v0 + v9 + 8);
  v15 = *(v0 + v9 + 16);
  sub_24B6C7004();
  (*(*(v2 - 8) + 8))(v0 + v9 + v8[21], v2);
  (*(*(v3 - 8) + 8))(v0 + v9 + v8[22], v3);
  (*(*(v35 - 8) + 8))(v0 + v9 + v8[23]);
  v16 = v8[24];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
  swift_getFunctionTypeMetadata();
  v17 = sub_24B75B288();
  (*(*(v17 - 8) + 8))(v0 + v9 + v16, v17);
  v18 = v8[25];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v19 - 8) + 8))(v0 + v9 + v18, v19);
  v20 = v0 + v36;
  v21 = *(v0 + v36 + 8);

  v22 = v0 + v36 + v11[5];
  v23 = sub_24B75B298();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v22, 1, v23))
  {
    (*(v24 + 8))(v22, v23);
  }

  v25 = type metadata accessor for WorkoutDetailArtwork();
  v26 = *(v25 + 20);
  if (!v37(v22 + v26, 1, v12))
  {
    (*(v34 + 8))(v22 + v26, v12);
  }

  v27 = *(v22 + *(v25 + 24) + 8);

  v28 = v20 + v11[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = sub_24B75B2D8();
    (*(*(v29 - 8) + 8))(v28, v29);
  }

  else
  {
    v30 = *(v28 + 8);
  }

  v31 = *(v20 + v11[8] + 8);

  v32 = *(v20 + v11[9] + 8);

  return swift_deallocObject();
}

uint64_t sub_24B6ABF3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B75B628();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B6ABF94()
{
  v1 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_24B6AC004()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v30 = *(v0 + 16);
  v29 = *(v0 + 40);
  v31 = *(v0 + 56);
  v32 = *(v0 + 72);
  v3 = (type metadata accessor for WorkoutDetailView() - 8);
  v4 = (*(*v3 + 80) + 80) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = type metadata accessor for WorkoutDetailTrainer();
  v7 = (v4 + v5 + *(*(v6 - 1) + 80)) & ~*(*(v6 - 1) + 80);
  v8 = *(*(v6 - 1) + 64);
  v9 = (v0 + v4);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  sub_24B6C7004();
  (*(*(v1 - 8) + 8))(v9 + v3[23], v1);
  (*(*(v2 - 8) + 8))(v9 + v3[24], v2);
  (*(*(v29 - 8) + 8))(v9 + v3[25]);
  v13 = v3[26];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034118, &qword_24B75E1D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
  swift_getFunctionTypeMetadata();
  v14 = sub_24B75B288();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  v15 = v3[27];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v16 - 8) + 8))(v9 + v15, v16);
  v17 = v0 + v7;
  v18 = type metadata accessor for WorkoutDetailArtwork();
  if (!(*(*(v18 - 8) + 48))(v0 + v7, 1, v18))
  {
    v19 = sub_24B75B298();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v0 + v7, 1, v19))
    {
      (*(v20 + 8))(v0 + v7, v19);
    }

    v21 = *(v18 + 20);
    v22 = sub_24B75B108();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v17 + v21, 1, v22))
    {
      (*(v23 + 8))(v17 + v21, v22);
    }

    v24 = *(v17 + *(v18 + 24) + 8);
  }

  v25 = *(v17 + v6[5] + 8);

  v26 = *(v17 + v6[6] + 8);

  v27 = *(v17 + v6[7] + 8);

  return swift_deallocObject();
}

uint64_t sub_24B6AC4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WorkoutDetailArtwork();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B6AC600(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for WorkoutDetailArtwork();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B6AC738@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x24C247940]();
  *a1 = result;
  return result;
}

uint64_t sub_24B6AC764(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x24C247950](v2);
}

uint64_t sub_24B6AC80C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6AC884(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B6AC910@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B75B608();
  *a1 = result;
  return result;
}

uint64_t sub_24B6AC93C(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B75B618();
}

uint64_t sub_24B6AC9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24B6ACAD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24B6ACBF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034ED0, &qword_24B761780);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034ED8, &qword_24B761788);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = sub_24B75B108();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24B6ACD84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034ED0, &qword_24B761780);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034ED8, &qword_24B761788);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_24B75B108();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24B6ACF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24B75B108();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24B6ACFC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_24B75B108();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B6AD06C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035010, &unk_24B761E40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_24B75AFE8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = sub_24B75B108();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_24B6AD298(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035010, &unk_24B761E40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_24B75AFE8();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = sub_24B75B108();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[10];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_24B6AD4C4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for EditorialDetailLayout();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_24B75B1F8();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  State = type metadata accessor for EditorialDetailLoadState();
  v15 = *(*(State - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, State);
}

uint64_t sub_24B6AD630(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for EditorialDetailLayout();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_24B75B1F8();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  State = type metadata accessor for EditorialDetailLoadState();
  v15 = *(*(State - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, State);
}

uint64_t sub_24B6AD79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24B6AD8A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24B6AD9BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B75B658();
  *a1 = result;
  return result;
}

uint64_t sub_24B6AD9E8(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B75B668();
}

uint64_t sub_24B6ADA18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6ADA90(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B6ADB90(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B75AFE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for WorkoutDetailArtwork();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[18];
    goto LABEL_13;
  }

  v18 = sub_24B75B108();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[23];

  return v19(v20, a2, v18);
}

uint64_t sub_24B6ADDAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24B75AFE8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for WorkoutDetailArtwork();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[18];
    goto LABEL_11;
  }

  v18 = sub_24B75B108();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[23];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_24B6ADFC8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_24B6AE020()
{
  v1 = sub_24B75B108();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 5);

  v7 = *(v0 + 7);

  v8 = *(v0 + 9);

  v9 = *(v0 + 11);

  v10 = *(v0 + 13);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_24B6AE10C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_24B6AE160()
{
  v1 = sub_24B75B108();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 3);

  v6 = *(v0 + 5);

  v7 = *(v0 + 7);

  v8 = *(v0 + 9);

  v9 = *(v0 + 11);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_24B6AE244()
{
  v1 = sub_24B75B108();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 3);

  v6 = *(v0 + 5);

  v7 = *(v0 + 7);

  v8 = *(v0 + 9);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_24B6AE324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6AE390(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B6AE420()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B6AE458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B6AE50C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B6AE5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24B6AE708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24B6AE82C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B6AE864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  v7 = sub_24B75B288();
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = *(v7 - 8);
    v10 = *(a3 + 52);
LABEL_3:
    v11 = *(v9 + 48);

    return v11(a1 + v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + *(a3 + 56));
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v8 = v14;
      v9 = *(v14 - 8);
      v10 = *(a3 + 60);
      goto LABEL_3;
    }

    v15 = *(*(*(a3 + 24) - 8) + 48);
    v16 = a1 + *(a3 + 64);

    return v15(v16, a2);
  }
}

uint64_t sub_24B6AEA08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  result = sub_24B75B288();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = *(result - 8);
    v12 = *(a4 + 52);
LABEL_3:
    v13 = *(v11 + 56);

    return v13(a1 + v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
    return result;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = *(a4 + 60);
    goto LABEL_3;
  }

  v15 = *(*(*(a4 + 24) - 8) + 56);
  v16 = a1 + *(a4 + 64);

  return v15(v16, a2, a2);
}

uint64_t sub_24B6AEBBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345E8, &qword_24B766D40);
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  swift_getWitnessTable();
  sub_24B73593C(&qword_27F0345C8, MEMORY[0x277CE0660]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75B3E8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B75B4F8();
  sub_24B75B7B8();
  sub_24B75BF88();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035EA0, &qword_24B766D78);
  sub_24B6C743C(&qword_27F0345E0, &qword_27F0345E8, &qword_24B766D40);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035EA8, &qword_24B766D80);
  sub_24B6C743C(&qword_27F035EB0, &qword_27F035EA8, &qword_24B766D80);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035EB8, &qword_24B766D88);
  swift_getOpaqueTypeConformance2();
  sub_24B6E89B0();
  sub_24B6C743C(&qword_27F035EC0, &qword_27F035EB8, &qword_24B766D88);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B6AF334()
{
  v38 = *(v0 + 16);
  v36 = *(v0 + 24);
  v39 = *(v0 + 40);
  v1 = (type metadata accessor for ProgramDetailView() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for WorkoutProgram();
  v37 = *(*(v4 - 1) + 64);
  v5 = (v2 + v3 + *(*(v4 - 1) + 80)) & ~*(*(v4 - 1) + 80);
  v6 = *(v0 + v2);
  v7 = *(v0 + v2 + 8);
  v8 = *(v0 + v2 + 16);
  sub_24B6C7004();
  v9 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  v10 = sub_24B75B288();
  (*(*(v10 - 8) + 8))(v0 + v2 + v9, v10);
  v11 = (v0 + v2 + v1[16]);
  v12 = *v11;

  v13 = v11[1];

  v14 = v1[17];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v15 - 8) + 8))(v0 + v2 + v14, v15);
  (*(*(v36 - 8) + 8))(v0 + v2 + v1[18]);
  v16 = v0 + v5;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = &unk_27F0360D8;
    v18 = &unk_24B767000;
  }

  else
  {
    v17 = &unk_27F0360D0;
    v18 = &unk_24B766FF8;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  (*(*(v19 - 8) + 8))(v0 + v5, v19);
  v20 = v4[5];
  v21 = sub_24B75AFE8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  v23(v16 + v20, v21);
  v24 = *(v16 + v4[6] + 8);

  v25 = *(v16 + v4[7]);

  v26 = v16 + v4[8];
  v27 = type metadata accessor for WorkoutProgramPreview();
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    v28 = *(v26 + 8);

    v29 = *(v27 + 20);
    v30 = sub_24B75B108();
    (*(*(v30 - 8) + 8))(v26 + v29, v30);
  }

  v31 = v4[9];
  v32 = sub_24B75B108();
  (*(*(v32 - 8) + 8))(v16 + v31, v32);
  v33 = v4[10];
  if (!(*(v22 + 48))(v16 + v33, 1, v21))
  {
    v23(v16 + v33, v21);
  }

  v23(v16 + v4[11], v21);
  v23(v16 + v4[12], v21);
  v34 = *(v16 + v4[13]);

  return swift_deallocObject();
}

uint64_t sub_24B6AF7B0()
{
  v21 = *(v0 + 16);
  v20 = *(v0 + 24);
  v22 = *(v0 + 40);
  v1 = (type metadata accessor for ProgramDetailView() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_24B75AFE8();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (v0 + v2);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  sub_24B6C7004();
  v12 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  v13 = sub_24B75B288();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  v14 = (v8 + v1[16]);
  v15 = *v14;

  v16 = v14[1];

  v17 = v1[17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v18 - 8) + 8))(v8 + v17, v18);
  (*(*(v20 - 8) + 8))(v8 + v1[18]);
  (*(v5 + 8))(v0 + v6, v4);
  return swift_deallocObject();
}

uint64_t sub_24B6AFA08()
{
  v18 = *(v0 + 16);
  v17 = *(v0 + 24);
  v19 = *(v0 + 40);
  v1 = (type metadata accessor for ProgramDetailView() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = *(v0 + v2);
  v6 = *(v0 + v2 + 8);
  v7 = *(v0 + v2 + 16);
  sub_24B6C7004();
  v8 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  v9 = sub_24B75B288();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  v10 = (v4 + v1[16]);
  v11 = *v10;

  v12 = v10[1];

  v13 = v1[17];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  (*(*(v17 - 8) + 8))(v4 + v1[18]);
  v15 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_24B6AFBF0()
{
  v23 = *(v0 + 16);
  v22 = *(v0 + 24);
  v24 = *(v0 + 40);
  v1 = (type metadata accessor for ProgramDetailView() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for WorkoutProgramLinkAnnotation() - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = (v0 + v2);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  sub_24B6C7004();
  v11 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  v12 = sub_24B75B288();
  (*(*(v12 - 8) + 8))(v7 + v11, v12);
  v13 = (v7 + v1[16]);
  v14 = *v13;

  v15 = v13[1];

  v16 = v1[17];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v17 - 8) + 8))(v7 + v16, v17);
  (*(*(v22 - 8) + 8))(v7 + v1[18]);
  v18 = *(v0 + v5 + 16);

  v19 = v4[8];
  v20 = sub_24B75B108();
  (*(*(v20 - 8) + 8))(v0 + v5 + v19, v20);
  return swift_deallocObject();
}

uint64_t sub_24B6AFEA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6AFF1C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B6AFFAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B6AFFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  v9 = sub_24B75B288();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = *(a3 + 68);
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = *(a3 + 72);
    goto LABEL_11;
  }

  v10 = *(a3 + 24);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = *(*(a3 + 24) - 8);
    v12 = *(a3 + 76);
    goto LABEL_11;
  }

  v15 = *(*(*(a3 + 32) - 8) + 48);
  v16 = a1 + *(a3 + 80);

  return v15(v16, a2);
}

uint64_t sub_24B6B01C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  v8 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  v9 = sub_24B75B288();
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = *(a4 + 68);
LABEL_9:
    v14 = *(v11 + 56);

    return v14(v5 + v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = *(a4 + 72);
    goto LABEL_9;
  }

  v10 = *(a4 + 24);
  if (*(*(v10 - 8) + 84) == a3)
  {
    v11 = *(*(a4 + 24) - 8);
    v12 = *(a4 + 76);
    goto LABEL_9;
  }

  v15 = *(*(*(a4 + 32) - 8) + 56);
  v16 = v5 + *(a4 + 80);

  return v15(v16, a2, a2);
}

uint64_t sub_24B6B03AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B7B8();
  sub_24B75B958();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75B3E8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B75B4F8();
  sub_24B75B7B8();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24B6B0728()
{
  v1 = *(v0 + 24);
  v33 = *(v0 + 16);
  v31 = *(v0 + 32);
  v34 = *(v0 + 48);
  v2 = (type metadata accessor for EditorialDetailView() - 8);
  v3 = (*(*v2 + 80) + 64) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for EditorialDetailContent();
  v32 = *(*(v5 - 1) + 64);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);
  v9 = *(v0 + v3 + 16);
  sub_24B6C7004();
  v10 = v2[19];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  v11 = sub_24B75B288();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = v2[20];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  (*(*(v1 - 8) + 8))(v0 + v3 + v2[21], v1);
  (*(*(v31 - 8) + 8))(v0 + v3 + v2[22]);
  v14 = v0 + v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = &unk_27F036458;
    v16 = &unk_24B767A28;
  }

  else
  {
    v15 = &unk_27F036450;
    v16 = &unk_24B767A20;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  (*(*(v17 - 8) + 8))(v0 + v6, v17);
  v18 = *(v14 + v5[5]);

  v19 = *(v14 + v5[6] + 8);

  v20 = *(v14 + v5[7] + 8);

  v21 = v14 + v5[8];
  v22 = type metadata accessor for EditorialPreview();
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v23 = *(v21 + 8);

    v24 = *(v22 + 20);
    v25 = sub_24B75B108();
    (*(*(v25 - 8) + 8))(v21 + v24, v25);
  }

  v26 = v5[9];
  v27 = sub_24B75B108();
  (*(*(v27 - 8) + 8))(v14 + v26, v27);
  v28 = *(v14 + v5[10] + 8);

  v29 = *(v14 + v5[11]);

  return swift_deallocObject();
}

uint64_t sub_24B6B0B2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036460, &unk_24B767A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6B0B9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B6B0BD4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for EditorialDetailContent();
  v4 = (*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80);
  v32 = *(*(v3 - 1) + 64);
  v35 = v1;
  v34 = *(v0 + 32);
  v36 = *(v0 + 48);
  v5 = type metadata accessor for EditorialDetailView();
  v6 = *(*(v5 - 1) + 80);
  v33 = *(*(v5 - 1) + 64);
  v7 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034ED0, &qword_24B761780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = &unk_27F036458;
    v9 = &unk_24B767A28;
  }

  else
  {
    v8 = &unk_27F036450;
    v9 = &unk_24B767A20;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  (*(*(v10 - 8) + 8))(v0 + v4, v10);
  v11 = *(v7 + v3[5]);

  v12 = *(v7 + v3[6] + 8);

  v13 = *(v7 + v3[7] + 8);

  v14 = v7 + v3[8];
  v15 = type metadata accessor for EditorialPreview();
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = *(v14 + 8);

    v17 = *(v15 + 20);
    v18 = sub_24B75B108();
    (*(*(v18 - 8) + 8))(v14 + v17, v18);
  }

  v19 = (v4 + v32 + v6) & ~v6;
  v20 = v3[9];
  v21 = sub_24B75B108();
  (*(*(v21 - 8) + 8))(v7 + v20, v21);
  v22 = *(v7 + v3[10] + 8);

  v23 = *(v7 + v3[11]);

  v24 = *(v0 + v19);
  v25 = *(v0 + v19 + 8);
  v26 = *(v0 + v19 + 16);
  sub_24B6C7004();
  v27 = v5[17];
  swift_getFunctionTypeMetadata1();
  v28 = sub_24B75B288();
  (*(*(v28 - 8) + 8))(v0 + v19 + v27, v28);
  v29 = v5[18];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v30 - 8) + 8))(v0 + v19 + v29, v30);
  (*(*(v35 - 8) + 8))(v0 + v19 + v5[19]);
  (*(*(v34 - 8) + 8))(v0 + v19 + v5[20]);
  return swift_deallocObject();
}

uint64_t sub_24B6B1048@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B75B698();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B6B107C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24B75B6A8();
}

uint64_t sub_24B6B1120(uint64_t a1, uint64_t a2, int *a3)
{
  State = type metadata accessor for ProgramDetailLoadState();
  if (*(*(State - 8) + 84) == a2)
  {
    v7 = State;
    v8 = *(State - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_24B75B1F8();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_24B6B122C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  State = type metadata accessor for ProgramDetailLoadState();
  if (*(*(State - 8) + 84) == a3)
  {
    v9 = State;
    v10 = *(State - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_24B75B1F8();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_24B6B1334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B75B308();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 6)
    {
      return v10 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24B6B13EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B75B308();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_24B6B14A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B75B108();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B6B1554(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24B75B108();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B6B15F8()
{
  v1 = type metadata accessor for WorkoutProgram();
  v39 = *(*(v1 - 1) + 80);
  v2 = (v39 + 176) & ~v39;
  v37 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for WorkoutProgramPreview();
  v4 = *(v3 - 8);
  v36 = *(v4 + 80);
  v40 = *(v4 + 64);
  v5 = *(v0 + 3);

  v6 = *(v0 + 5);

  v7 = *(v0 + 7);

  v8 = *(v0 + 9);

  v9 = *(v0 + 11);

  v10 = *(v0 + 13);

  v11 = *(v0 + 15);

  v12 = *(v0 + 17);

  v13 = *(v0 + 19);

  v14 = *(v0 + 21);

  v38 = v2;
  v15 = &v0[v2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035010, &unk_24B761E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = &unk_27F0360D8;
    v17 = &unk_24B767000;
  }

  else
  {
    v16 = &unk_27F0360D0;
    v17 = &unk_24B766FF8;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  (*(*(v18 - 8) + 8))(&v0[v2], v18);
  v19 = v1[5];
  v20 = sub_24B75AFE8();
  v21 = *(v20 - 8);
  v42 = *(v21 + 8);
  v42(&v15[v19], v20);
  v22 = *&v15[v1[6] + 8];

  v23 = *&v15[v1[7]];

  v24 = &v15[v1[8]];
  if (!(*(v4 + 48))(v24, 1, v3))
  {
    v25 = *(v24 + 1);

    v26 = *(v3 + 20);
    v27 = sub_24B75B108();
    (*(*(v27 - 8) + 8))(&v24[v26], v27);
  }

  v41 = v3;
  v28 = v1[9];
  v29 = sub_24B75B108();
  v30 = *(*(v29 - 8) + 8);
  v30(&v15[v28], v29);
  v31 = v1[10];
  if (!(*(v21 + 48))(&v15[v31], 1, v20))
  {
    v42(&v15[v31], v20);
  }

  v32 = (v38 + v37 + v36) & ~v36;
  v42(&v15[v1[11]], v20);
  v42(&v15[v1[12]], v20);
  v33 = *&v15[v1[13]];

  v34 = *&v0[v32 + 8];

  v30(&v0[v32 + *(v41 + 20)], v29);

  return swift_deallocObject();
}

uint64_t sub_24B6B19DC()
{
  v1 = sub_24B75B108();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 176) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 3);

  v6 = *(v0 + 5);

  v7 = *(v0 + 7);

  v8 = *(v0 + 9);

  v9 = *(v0 + 11);

  v10 = *(v0 + 13);

  v11 = *(v0 + 15);

  v12 = *(v0 + 17);

  v13 = *(v0 + 19);

  v14 = *(v0 + 21);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_24B6B1AEC()
{
  v1 = type metadata accessor for WorkoutProgram();
  v2 = *(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  v3 = v0[3];

  v4 = v0[5];

  v5 = v0[7];

  v6 = v0[9];

  v7 = v0[11];

  v8 = v0[13];

  v9 = v0[15];

  v10 = v0[17];

  v11 = v0[19];

  v12 = v0[21];

  v13 = v0 + ((v2 + 176) & ~v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035010, &unk_24B761E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = &unk_27F0360D8;
    v15 = &unk_24B767000;
  }

  else
  {
    v14 = &unk_27F0360D0;
    v15 = &unk_24B766FF8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  (*(*(v16 - 8) + 8))(v0 + ((v2 + 176) & ~v2), v16);
  v17 = v1[5];
  v18 = sub_24B75AFE8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v20(&v13[v17], v18);
  v21 = *&v13[v1[6] + 8];

  v22 = *&v13[v1[7]];

  v23 = &v13[v1[8]];
  v24 = type metadata accessor for WorkoutProgramPreview();
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    v25 = *(v23 + 1);

    v26 = *(v24 + 20);
    v27 = sub_24B75B108();
    (*(*(v27 - 8) + 8))(&v23[v26], v27);
  }

  v28 = v1[9];
  v29 = sub_24B75B108();
  (*(*(v29 - 8) + 8))(&v13[v28], v29);
  v30 = v1[10];
  if (!(*(v19 + 48))(&v13[v30], 1, v18))
  {
    v20(&v13[v30], v18);
  }

  v20(&v13[v1[11]], v18);
  v20(&v13[v1[12]], v18);
  v31 = *&v13[v1[13]];

  return swift_deallocObject();
}

uint64_t sub_24B6B1E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24B6B1F50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24B6B2078(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B1D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B6B20E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B1D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24B6B2154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24B75B108();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24B6B220C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_24B75B108();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B6B2324(uint64_t a1)
{
  v2 = sub_24B6B35C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B2360(uint64_t a1)
{
  v2 = sub_24B6B35C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B239C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x75636F4679646F62;
    v6 = 0x6E656D7069757165;
    if (a1 != 2)
    {
      v6 = 0x7974696C61646F6DLL;
    }

    if (a1)
    {
      v5 = 0x6E6F697461727564;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656D656874;
    v2 = 0x72656E69617274;
    if (a1 != 7)
    {
      v2 = 0x7469617274;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E6547636973756DLL;
    if (a1 != 4)
    {
      v3 = 0x76654C6C6C696B73;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B6B24BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B6B3770(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B6B24F0(uint64_t a1)
{
  v2 = sub_24B6B32CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B252C(uint64_t a1)
{
  v2 = sub_24B6B32CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B2568(uint64_t a1)
{
  v2 = sub_24B6B356C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B25A4(uint64_t a1)
{
  v2 = sub_24B6B356C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B25E0(uint64_t a1)
{
  v2 = sub_24B6B3518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B261C(uint64_t a1)
{
  v2 = sub_24B6B3518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B2658(uint64_t a1)
{
  v2 = sub_24B6B34C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B2694(uint64_t a1)
{
  v2 = sub_24B6B34C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B26D0(uint64_t a1)
{
  v2 = sub_24B6B3470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B270C(uint64_t a1)
{
  v2 = sub_24B6B3470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B2748(uint64_t a1)
{
  v2 = sub_24B6B341C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B2784(uint64_t a1)
{
  v2 = sub_24B6B341C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B27C0(uint64_t a1)
{
  v2 = sub_24B6B33C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B27FC(uint64_t a1)
{
  v2 = sub_24B6B33C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B2838(uint64_t a1)
{
  v2 = sub_24B6B3374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B2874(uint64_t a1)
{
  v2 = sub_24B6B3374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B28B0(uint64_t a1)
{
  v2 = sub_24B6B3320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B28EC(uint64_t a1)
{
  v2 = sub_24B6B3320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialFilterKind.encode(to:)(void *a1, int a2)
{
  LODWORD(v79) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033CF8, &qword_24B75CC50);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v70 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D00, &qword_24B75CC58);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D08, &qword_24B75CC60);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v64 = &v55 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D10, &qword_24B75CC68);
  v62 = *(v63 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v55 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D18, &qword_24B75CC70);
  v59 = *(v60 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v55 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D20, &qword_24B75CC78);
  v78 = *(v57 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v57);
  v77 = &v55 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D28, &qword_24B75CC80);
  v76 = *(v56 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x28223BE20](v56);
  v75 = &v55 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D30, &qword_24B75CC88);
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D38, &qword_24B75CC90);
  v73 = *(v24 - 8);
  v25 = *(v73 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v55 - v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D40, &qword_24B75CC98);
  v28 = *(v81 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v81);
  v31 = &v55 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6B32CC();
  v80 = v31;
  sub_24B75C738();
  v33 = (v28 + 8);
  v34 = v79;
  if (v79 <= 3u)
  {
    v72 = v24;
    v79 = v33;
    v41 = v73;
    v40 = v74;
    v42 = v75;
    v43 = v76;
    v44 = v77;
    v45 = v78;
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v84 = 2;
        sub_24B6B3518();
        v49 = v42;
        v51 = v80;
        v50 = v81;
        sub_24B75C638();
        (*(v43 + 8))(v49, v56);
      }

      else
      {
        v85 = 3;
        sub_24B6B34C4();
        v53 = v44;
        v51 = v80;
        v50 = v81;
        sub_24B75C638();
        (*(v45 + 8))(v53, v57);
      }
    }

    else
    {
      if (!v34)
      {
        v82 = 0;
        sub_24B6B35C0();
        v46 = v80;
        v47 = v81;
        sub_24B75C638();
        (*(v41 + 8))(v27, v72);
        return (*v79)(v46, v47);
      }

      v83 = 1;
      sub_24B6B356C();
      v51 = v80;
      v50 = v81;
      sub_24B75C638();
      (*(v40 + 8))(v23, v20);
    }

    return (*v79)(v51, v50);
  }

  else
  {
    if (v79 <= 5u)
    {
      if (v79 == 4)
      {
        v86 = 4;
        sub_24B6B3470();
        v52 = v58;
        v36 = v80;
        v37 = v81;
        sub_24B75C638();
        (*(v59 + 8))(v52, v60);
      }

      else
      {
        v87 = 5;
        sub_24B6B341C();
        v54 = v61;
        v36 = v80;
        v37 = v81;
        sub_24B75C638();
        (*(v62 + 8))(v54, v63);
      }
    }

    else
    {
      if (v79 == 6)
      {
        v88 = 6;
        sub_24B6B33C8();
        v35 = v64;
        v36 = v80;
        v37 = v81;
        sub_24B75C638();
        v39 = v65;
        v38 = v66;
      }

      else if (v79 == 7)
      {
        v89 = 7;
        sub_24B6B3374();
        v35 = v67;
        v36 = v80;
        v37 = v81;
        sub_24B75C638();
        v39 = v68;
        v38 = v69;
      }

      else
      {
        v90 = 8;
        sub_24B6B3320();
        v35 = v70;
        v36 = v80;
        v37 = v81;
        sub_24B75C638();
        v39 = v71;
        v38 = v72;
      }

      (*(v39 + 8))(v35, v38);
    }

    return (*v33)(v36, v37);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B6B32CC()
{
  result = qword_27F033D48;
  if (!qword_27F033D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D48);
  }

  return result;
}

unint64_t sub_24B6B3320()
{
  result = qword_27F033D50;
  if (!qword_27F033D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D50);
  }

  return result;
}

unint64_t sub_24B6B3374()
{
  result = qword_27F033D58;
  if (!qword_27F033D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D58);
  }

  return result;
}

unint64_t sub_24B6B33C8()
{
  result = qword_27F033D60;
  if (!qword_27F033D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D60);
  }

  return result;
}

unint64_t sub_24B6B341C()
{
  result = qword_27F033D68;
  if (!qword_27F033D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D68);
  }

  return result;
}

unint64_t sub_24B6B3470()
{
  result = qword_27F033D70;
  if (!qword_27F033D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D70);
  }

  return result;
}

unint64_t sub_24B6B34C4()
{
  result = qword_27F033D78;
  if (!qword_27F033D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D78);
  }

  return result;
}

unint64_t sub_24B6B3518()
{
  result = qword_27F033D80;
  if (!qword_27F033D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D80);
  }

  return result;
}

unint64_t sub_24B6B356C()
{
  result = qword_27F033D88;
  if (!qword_27F033D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D88);
  }

  return result;
}

unint64_t sub_24B6B35C0()
{
  result = qword_27F033D90;
  if (!qword_27F033D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D90);
  }

  return result;
}

char *sub_24B6B362C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B6B3A58(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t EditorialFilterKind.hashValue.getter(unsigned __int8 a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1);
  return sub_24B75C718();
}

uint64_t sub_24B6B36E4()
{
  v1 = *v0;
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v1);
  return sub_24B75C718();
}

uint64_t sub_24B6B372C()
{
  v1 = *v0;
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v1);
  return sub_24B75C718();
}

uint64_t sub_24B6B3770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75636F4679646F62 && a2 == 0xE900000000000073;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6547636973756DLL && a2 == 0xEA00000000006572 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEA00000000006C65 || (sub_24B75C6B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72656E69617274 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7469617274 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

char *sub_24B6B3A58(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E50, &qword_24B75D580);
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  MEMORY[0x28223BE20](v2);
  v82 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E58, &qword_24B75D588);
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = *(v75 + 64);
  MEMORY[0x28223BE20](v5);
  v81 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E60, &qword_24B75D590);
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v8);
  v80 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E68, &qword_24B75D598);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v11);
  v85 = &v59 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E70, &qword_24B75D5A0);
  v70 = *(v69 - 8);
  v14 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  v84 = &v59 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E78, &qword_24B75D5A8);
  v67 = *(v68 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v83 = &v59 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E80, &qword_24B75D5B0);
  v65 = *(v66 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v79 = &v59 - v19;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E88, &qword_24B75D5B8);
  v63 = *(v64 - 8);
  v20 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E90, &qword_24B75D5C0);
  v62 = *(v23 - 8);
  v24 = *(v62 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v59 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E98, &qword_24B75D5C8);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v59 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_24B6B32CC();
  v34 = v87;
  sub_24B75C728();
  if (!v34)
  {
    v60 = v26;
    v59 = v23;
    v35 = v22;
    v36 = v83;
    v37 = v84;
    v38 = v85;
    v87 = v28;
    v61 = v31;
    v39 = sub_24B75C628();
    v40 = (2 * *(v39 + 16)) | 1;
    v88 = v39;
    v89 = v39 + 32;
    v90 = 0;
    v91 = v40;
    v41 = sub_24B6B6658();
    if (v41 != 9 && v90 == v91 >> 1)
    {
      v31 = v41;
      if (v41 <= 3u)
      {
        v42 = v61;
        if (v41 > 1u)
        {
          if (v41 == 2)
          {
            v92 = 2;
            sub_24B6B3518();
            v57 = v79;
            sub_24B75C598();
            (*(v65 + 8))(v57, v66);
          }

          else
          {
            v92 = 3;
            sub_24B6B34C4();
            sub_24B75C598();
            (*(v67 + 8))(v36, v68);
          }

          (*(v87 + 8))(v42, v27);
          goto LABEL_29;
        }

        v43 = v87;
        if (v41)
        {
          v92 = 1;
          sub_24B6B356C();
          sub_24B75C598();
          v54 = *(v63 + 8);
          v55 = v35;
          v56 = &v93;
        }

        else
        {
          v92 = 0;
          sub_24B6B35C0();
          v53 = v60;
          sub_24B75C598();
          v54 = *(v62 + 8);
          v55 = v53;
          v56 = &v91;
        }
      }

      else
      {
        v42 = v61;
        if (v41 > 5u)
        {
          v43 = v87;
          if (v41 == 6)
          {
            v92 = 6;
            sub_24B6B33C8();
            v44 = v80;
            sub_24B75C598();
            v46 = v73;
            v45 = v74;
          }

          else
          {
            if (v41 != 7)
            {
              v92 = 8;
              sub_24B6B3320();
              v58 = v82;
              sub_24B75C598();
              (*(v77 + 8))(v58, v78);
LABEL_28:
              (*(v43 + 8))(v42, v27);
LABEL_29:
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1(v86);
              return v31;
            }

            v92 = 7;
            sub_24B6B3374();
            v44 = v81;
            sub_24B75C598();
            v46 = v75;
            v45 = v76;
          }

          goto LABEL_26;
        }

        v43 = v87;
        if (v41 != 4)
        {
          v92 = 5;
          sub_24B6B341C();
          v44 = v38;
          sub_24B75C598();
          v46 = v71;
          v45 = v72;
LABEL_26:
          v54 = *(v46 + 8);
          v55 = v44;
          goto LABEL_27;
        }

        v92 = 4;
        sub_24B6B3470();
        sub_24B75C598();
        v54 = *(v70 + 8);
        v55 = v37;
        v56 = &v94;
      }

      v45 = *(v56 - 32);
LABEL_27:
      v54(v55, v45);
      goto LABEL_28;
    }

    v47 = sub_24B75C568();
    v31 = swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
    *v49 = &type metadata for EditorialFilterKind;
    v51 = v61;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    (*(v87 + 8))(v51, v27);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v86);
  return v31;
}

unint64_t sub_24B6B4520()
{
  result = qword_27F033D98;
  if (!qword_27F033D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F033DA0, &qword_24B75CCC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D98);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24B6B45F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24B6B4680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B6B47D4()
{
  result = qword_27F033DA8;
  if (!qword_27F033DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DA8);
  }

  return result;
}

unint64_t sub_24B6B482C()
{
  result = qword_27F033DB0;
  if (!qword_27F033DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DB0);
  }

  return result;
}

unint64_t sub_24B6B4884()
{
  result = qword_27F033DB8;
  if (!qword_27F033DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DB8);
  }

  return result;
}

unint64_t sub_24B6B48DC()
{
  result = qword_27F033DC0;
  if (!qword_27F033DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DC0);
  }

  return result;
}

unint64_t sub_24B6B4934()
{
  result = qword_27F033DC8;
  if (!qword_27F033DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DC8);
  }

  return result;
}

unint64_t sub_24B6B498C()
{
  result = qword_27F033DD0;
  if (!qword_27F033DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DD0);
  }

  return result;
}

unint64_t sub_24B6B49E4()
{
  result = qword_27F033DD8;
  if (!qword_27F033DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DD8);
  }

  return result;
}

unint64_t sub_24B6B4A3C()
{
  result = qword_27F033DE0;
  if (!qword_27F033DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DE0);
  }

  return result;
}

unint64_t sub_24B6B4A94()
{
  result = qword_27F033DE8;
  if (!qword_27F033DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DE8);
  }

  return result;
}

unint64_t sub_24B6B4AEC()
{
  result = qword_27F033DF0;
  if (!qword_27F033DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DF0);
  }

  return result;
}

unint64_t sub_24B6B4B44()
{
  result = qword_27F033DF8;
  if (!qword_27F033DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DF8);
  }

  return result;
}

unint64_t sub_24B6B4B9C()
{
  result = qword_27F033E00;
  if (!qword_27F033E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E00);
  }

  return result;
}

unint64_t sub_24B6B4BF4()
{
  result = qword_27F033E08;
  if (!qword_27F033E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E08);
  }

  return result;
}

unint64_t sub_24B6B4C4C()
{
  result = qword_27F033E10;
  if (!qword_27F033E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E10);
  }

  return result;
}

unint64_t sub_24B6B4CA4()
{
  result = qword_27F033E18;
  if (!qword_27F033E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E18);
  }

  return result;
}

unint64_t sub_24B6B4CFC()
{
  result = qword_27F033E20;
  if (!qword_27F033E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E20);
  }

  return result;
}

unint64_t sub_24B6B4D54()
{
  result = qword_27F033E28;
  if (!qword_27F033E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E28);
  }

  return result;
}

unint64_t sub_24B6B4DAC()
{
  result = qword_27F033E30;
  if (!qword_27F033E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E30);
  }

  return result;
}

unint64_t sub_24B6B4E04()
{
  result = qword_27F033E38;
  if (!qword_27F033E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E38);
  }

  return result;
}

unint64_t sub_24B6B4E5C()
{
  result = qword_27F033E40;
  if (!qword_27F033E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E40);
  }

  return result;
}

unint64_t sub_24B6B4EB4()
{
  result = qword_27F033E48;
  if (!qword_27F033E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E48);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24B6B4F60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6B4F80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_27F033EA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F033EA8);
    }
  }
}

__n128 WorkoutDetailState.layout.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutDetailState() + 28);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for WorkoutDetailState()
{
  result = qword_27F033F10;
  if (!qword_27F033F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutDetailState.loadState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutDetailState() + 32);

  return sub_24B6B50F8(v3, a1);
}

uint64_t sub_24B6B50F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutDetailState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WorkoutDetailState() + 32);

  return sub_24B6B51AC(a1, v3);
}

uint64_t sub_24B6B51AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutDetailState.init(workoutIdentifier:locale:isOffline:layout:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for WorkoutDetailState();
  v13 = v12[5];
  v14 = sub_24B75B1F8();
  (*(*(v14 - 8) + 32))(&a7[v13], a3, v14);
  a7[v12[6]] = a4;
  v15 = &a7[v12[7]];
  v16 = *(a5 + 48);
  *(v15 + 2) = *(a5 + 32);
  *(v15 + 3) = v16;
  v15[64] = *(a5 + 64);
  v17 = *(a5 + 16);
  *v15 = *a5;
  *(v15 + 1) = v17;
  v18 = &a7[v12[8]];

  return sub_24B6B5340(a6, v18);
}

uint64_t sub_24B6B5340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B6B53B0()
{
  v1 = *v0;
  v2 = 0x656C61636F6CLL;
  v3 = 0x6E696C66664F7369;
  v4 = 0x74756F79616CLL;
  if (v1 != 3)
  {
    v4 = 0x7461745364616F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_24B6B5450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B6B6494(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B6B5484(uint64_t a1)
{
  v2 = sub_24B6B57A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B54C0(uint64_t a1)
{
  v2 = sub_24B6B57A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB8, &qword_24B75D608);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6B57A8();
  sub_24B75C738();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  sub_24B75C678();
  if (!v2)
  {
    v13 = type metadata accessor for WorkoutDetailState();
    v14 = v13[5];
    LOBYTE(v22) = 1;
    sub_24B75B1F8();
    sub_24B6B61F4(&qword_27F033EC8, MEMORY[0x277CC9788]);
    sub_24B75C6A8();
    v15 = *(v3 + v13[6]);
    v27 = 2;
    sub_24B75C688();
    v16 = v3 + v13[7];
    v17 = *(v16 + 3);
    v24 = *(v16 + 2);
    v25 = v17;
    v26 = v16[64];
    v18 = *(v16 + 1);
    v22 = *v16;
    v23 = v18;
    v21[15] = 3;
    sub_24B6B57FC();
    sub_24B75C6A8();
    v19 = v13[8];
    LOBYTE(v22) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
    sub_24B6B5D68(&qword_27F033ED8);
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B6B57A8()
{
  result = qword_27F033EC0;
  if (!qword_27F033EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033EC0);
  }

  return result;
}

unint64_t sub_24B6B57FC()
{
  result = qword_27F033ED0;
  if (!qword_27F033ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033ED0);
  }

  return result;
}

uint64_t WorkoutDetailState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
  v3 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v30 = &v27 - v4;
  v5 = sub_24B75B1F8();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EF0, &qword_24B75D610);
  v32 = *(v34 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v11 = &v27 - v10;
  v12 = type metadata accessor for WorkoutDetailState();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6B57A8();
  v33 = v11;
  v17 = v35;
  sub_24B75C728();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v15;
  v19 = v31;
  LOBYTE(v36) = 0;
  *v18 = sub_24B75C5E8();
  v18[1] = v20;
  v35 = v20;
  LOBYTE(v36) = 1;
  sub_24B6B61F4(&qword_27F033EF8, MEMORY[0x277CC9788]);
  sub_24B75C618();
  (*(v19 + 32))(v18 + v12[5], v8, v5);
  LOBYTE(v36) = 2;
  v27 = 0;
  v21 = v18;
  *(v18 + v12[6]) = sub_24B75C5F8() & 1;
  v42 = 3;
  sub_24B6B5D14();
  sub_24B75C618();
  v22 = v18 + v12[7];
  v23 = v39;
  *(v22 + 2) = v38;
  *(v22 + 3) = v23;
  v22[64] = v40;
  v24 = v37;
  *v22 = v36;
  *(v22 + 1) = v24;
  v41 = 4;
  sub_24B6B5D68(&qword_27F033F08);
  v25 = v30;
  sub_24B75C618();
  (*(v32 + 8))(v33, v34);
  sub_24B6B5340(v25, v21 + v12[8]);
  sub_24B6B5E3C(v21, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B6B5EA0(v21);
}

unint64_t sub_24B6B5D14()
{
  result = qword_27F033F00;
  if (!qword_27F033F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F00);
  }

  return result;
}

uint64_t sub_24B6B5D68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F033EB0, &qword_24B75D600);
    sub_24B6B61F4(&qword_27F033EE0, type metadata accessor for WorkoutDetail);
    sub_24B6B61F4(&qword_27F033EE8, type metadata accessor for WorkoutDetail);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6B5E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6B5EA0(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDetailState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s20FitnessProductDetail07WorkoutC5StateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for WorkoutDetailState();
  if ((MEMORY[0x24C2474B0](a1 + v5[5], a2 + v5[5]) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[6]) != *(a2 + v5[6]))
  {
    return 0;
  }

  v6 = a1 + v5[7];
  v7 = *(v6 + 3);
  v18[2] = *(v6 + 2);
  v18[3] = v7;
  v19 = v6[64];
  v8 = *(v6 + 1);
  v18[0] = *v6;
  v18[1] = v8;
  v9 = a2 + v5[7];
  v10 = *(v9 + 3);
  v16[2] = *(v9 + 2);
  v16[3] = v10;
  v17 = v9[64];
  v11 = *(v9 + 1);
  v16[0] = *v9;
  v16[1] = v11;
  if (!_s20FitnessProductDetail07WorkoutC6LayoutV2eeoiySbAC_ACtFZ_0(v18, v16))
  {
    return 0;
  }

  v12 = v5[8];
  v13 = type metadata accessor for WorkoutDetail();
  v14 = sub_24B6B61F4(&qword_27F033F28, type metadata accessor for WorkoutDetail);

  return MEMORY[0x282159B18](a1 + v12, a2 + v12, v13, v14);
}

void sub_24B6B60B4()
{
  sub_24B75B1F8();
  if (v0 <= 0x3F)
  {
    sub_24B6B6160();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B6B6160()
{
  if (!qword_27F033F20)
  {
    type metadata accessor for WorkoutDetail();
    sub_24B6B61F4(&qword_27F033F28, type metadata accessor for WorkoutDetail);
    v0 = sub_24B75C1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F033F20);
    }
  }
}

uint64_t sub_24B6B61F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for WorkoutDetailState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutDetailState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B6B6390()
{
  result = qword_27F033F30;
  if (!qword_27F033F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F30);
  }

  return result;
}

unint64_t sub_24B6B63E8()
{
  result = qword_27F033F38;
  if (!qword_27F033F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F38);
  }

  return result;
}

unint64_t sub_24B6B6440()
{
  result = qword_27F033F40;
  if (!qword_27F033F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F40);
  }

  return result;
}

uint64_t sub_24B6B6494(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B76BB20 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696C66664F7369 && a2 == 0xE900000000000065 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v5 = sub_24B75C6B8();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24B6B6658()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B668C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B66C0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B66F4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 11;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B6728()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 12;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B675C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B6790()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B67C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B67F8()
{
  if (*v0)
  {
    result = 0x64656863746566;
  }

  else
  {
    result = 1701602409;
  }

  *v0;
  return result;
}

uint64_t sub_24B6B682C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B6B6914(uint64_t a1)
{
  v2 = sub_24B6B7018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B6950(uint64_t a1)
{
  v2 = sub_24B6B7018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B6994()
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](0);
  return sub_24B75C718();
}

uint64_t sub_24B6B69D8()
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](0);
  return sub_24B75C718();
}

uint64_t sub_24B6B6A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B75C6B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B6B6AA4(uint64_t a1)
{
  v2 = sub_24B6B706C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B6AE0(uint64_t a1)
{
  v2 = sub_24B6B706C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B6B1C(uint64_t a1)
{
  v2 = sub_24B6B70C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B6B58(uint64_t a1)
{
  v2 = sub_24B6B70C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutScheduleLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F48, &unk_24B75D7D0);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F58, &qword_24B75D7E0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  State = type metadata accessor for WorkoutScheduleLoadState(0);
  v14 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F60, &qword_24B75D7E8);
  v17 = *(v36 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v36);
  v20 = &v28 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6B7018();
  sub_24B75C738();
  sub_24B6B8FC4(v35, v16, type metadata accessor for WorkoutScheduleLoadState);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    v37 = 0;
    sub_24B6B70C0();
    v22 = v36;
    sub_24B75C638();
    (*(v29 + 8))(v12, v30);
    return (*(v17 + 8))(v20, v22);
  }

  else
  {
    v24 = v31;
    sub_24B6B8DE8(v16, v31, &qword_27F033F50, &unk_24B764A50);
    v38 = 1;
    sub_24B6B706C();
    v25 = v32;
    v26 = v36;
    sub_24B75C638();
    type metadata accessor for WorkoutSchedule();
    sub_24B6B7744(&qword_27F033F78, type metadata accessor for WorkoutSchedule);
    v27 = v34;
    sub_24B75C668();
    (*(v33 + 8))(v25, v27);
    sub_24B6B9CD4(v24, &qword_27F033F50, &unk_24B764A50);
    return (*(v17 + 8))(v20, v26);
  }
}

unint64_t sub_24B6B7018()
{
  result = qword_27F033F68;
  if (!qword_27F033F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F68);
  }

  return result;
}

unint64_t sub_24B6B706C()
{
  result = qword_27F033F70;
  if (!qword_27F033F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F70);
  }

  return result;
}

unint64_t sub_24B6B70C0()
{
  result = qword_27F033F80;
  if (!qword_27F033F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F80);
  }

  return result;
}

uint64_t WorkoutScheduleLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F88, &qword_24B75D7F0);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F90, &qword_24B75D7F8);
  v8 = *(v7 - 8);
  v50 = v7;
  v51 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F98, &unk_24B75D800);
  v54 = *(v12 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  State = type metadata accessor for WorkoutScheduleLoadState(0);
  v17 = *(*(State - 8) + 64);
  v18 = MEMORY[0x28223BE20](State);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24B6B7018();
  v25 = v55;
  sub_24B75C728();
  if (!v25)
  {
    v55 = State;
    v26 = v50;
    v27 = v51;
    v46 = v20;
    v47 = v22;
    v28 = v52;
    v29 = v53;
    v30 = sub_24B75C628();
    if (*(v30 + 16) == 1)
    {
      v55 = v30;
      if (*(v30 + 32))
      {
        v58 = 1;
        sub_24B6B706C();
        v31 = v28;
        v32 = v15;
        sub_24B75C598();
        v33 = v54;
        type metadata accessor for WorkoutSchedule();
        sub_24B6B7744(&qword_27F033FA0, type metadata accessor for WorkoutSchedule);
        v40 = v46;
        v41 = v48;
        sub_24B75C5D8();
        (*(v49 + 8))(v31, v41);
        (*(v33 + 8))(v32, v12);
        swift_unknownObjectRelease();
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
        (*(*(v42 - 8) + 56))(v40, 0, 1, v42);
        v43 = v47;
        sub_24B6B9D9C(v40, v47, type metadata accessor for WorkoutScheduleLoadState);
      }

      else
      {
        v57 = 0;
        sub_24B6B70C0();
        sub_24B75C598();
        v38 = v54;
        (*(v27 + 8))(v11, v26);
        (*(v38 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
        v43 = v47;
        (*(*(v44 - 8) + 56))(v47, 1, 1, v44);
      }

      sub_24B6B9D9C(v43, v29, type metadata accessor for WorkoutScheduleLoadState);
    }

    else
    {
      v34 = sub_24B75C568();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
      *v36 = v55;
      sub_24B75C5A8();
      sub_24B75C558();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v54 + 8))(v15, v12);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_24B6B7744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ArtworkBannerState.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B75B248();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArtworkBannerState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArtworkBannerState(0) + 20);
  v4 = sub_24B75B1F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArtworkBannerState.workoutIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ArtworkBannerState(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ArtworkBannerState.sampleContentWorkoutIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ArtworkBannerState(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ArtworkBannerState.sampleContentPlaybackRestriction.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ArtworkBannerState(0) + 36);

  return sub_24B6B8D78(a1, v3);
}

uint64_t ArtworkBannerState.init(calendar:workoutScheduleLoadState:sampleContentPlaybackRestriction:locale:workoutIdentifier:sampleContentWorkoutIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_24B75B248();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for ArtworkBannerState(0);
  sub_24B6B9D9C(a2, a9 + v19[8], type metadata accessor for WorkoutScheduleLoadState);
  sub_24B6B8DE8(a3, a9 + v19[9], &qword_27F033FA8, &qword_24B75D810);
  v20 = v19[5];
  v21 = sub_24B75B1F8();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a4, v21);
  v23 = (a9 + v19[6]);
  *v23 = a5;
  v23[1] = a6;
  v24 = (a9 + v19[7]);
  *v24 = a7;
  v24[1] = a8;
  return result;
}

unint64_t sub_24B6B7B8C()
{
  v1 = *v0;
  v2 = 0x7261646E656C6163;
  v3 = 0xD000000000000020;
  if (v1 == 4)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 == 3)
  {
    v3 = 0xD00000000000001ELL;
  }

  v4 = 0x656C61636F6CLL;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B6B7C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B6B9AD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B6B7C84(uint64_t a1)
{
  v2 = sub_24B6B8E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B7CC0(uint64_t a1)
{
  v2 = sub_24B6B8E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArtworkBannerState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FB0, &qword_24B75D818);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6B8E50();
  sub_24B75C738();
  v22[15] = 0;
  sub_24B75B248();
  sub_24B6B7744(&qword_27F033FC0, MEMORY[0x277CC99E8]);
  sub_24B75C6A8();
  if (!v2)
  {
    v11 = type metadata accessor for ArtworkBannerState(0);
    v12 = v11[5];
    v22[14] = 1;
    sub_24B75B1F8();
    sub_24B6B7744(&qword_27F033EC8, MEMORY[0x277CC9788]);
    sub_24B75C6A8();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v22[13] = 2;
    sub_24B75C678();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = v16[1];
    v22[12] = 3;
    sub_24B75C648();
    v19 = v11[8];
    v22[11] = 4;
    type metadata accessor for WorkoutScheduleLoadState(0);
    sub_24B6B7744(&qword_27F033FC8, type metadata accessor for WorkoutScheduleLoadState);
    sub_24B75C6A8();
    v20 = v11[9];
    v22[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FA8, &qword_24B75D810);
    sub_24B6B8F4C(&qword_27F033FD0);
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ArtworkBannerState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FA8, &qword_24B75D810);
  v3 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v36 = &v33 - v4;
  State = type metadata accessor for WorkoutScheduleLoadState(0);
  v5 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B75B1F8();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24B75B248();
  v39 = *(v44 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FE8, &qword_24B75D820);
  v40 = *(v43 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v43);
  v15 = &v33 - v14;
  v16 = type metadata accessor for ArtworkBannerState(0);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6B8E50();
  v45 = v15;
  v21 = v46;
  sub_24B75C728();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v19;
  v23 = v41;
  v52 = 0;
  sub_24B6B7744(&qword_27F033FF0, MEMORY[0x277CC99E8]);
  sub_24B75C618();
  (*(v39 + 32))(v22, v42, v44);
  v51 = 1;
  sub_24B6B7744(&qword_27F033EF8, MEMORY[0x277CC9788]);
  sub_24B75C618();
  v33 = v7;
  (*(v23 + 32))(v22 + v16[5], v10, v7);
  v50 = 2;
  v46 = 0;
  v24 = sub_24B75C5E8();
  v25 = (v22 + v16[6]);
  *v25 = v24;
  v25[1] = v26;
  v49 = 3;
  v27 = sub_24B75C5B8();
  v29 = (v22 + v16[7]);
  *v29 = v27;
  v29[1] = v30;
  v48 = 4;
  sub_24B6B7744(&qword_27F033FF8, type metadata accessor for WorkoutScheduleLoadState);
  v31 = v38;
  sub_24B75C618();
  sub_24B6B9D9C(v31, v22 + v16[8], type metadata accessor for WorkoutScheduleLoadState);
  v47 = 5;
  sub_24B6B8F4C(&qword_27F034000);
  v32 = v36;
  sub_24B75C618();
  (*(v40 + 8))(v45, v43);
  sub_24B6B8DE8(v32, v22 + v16[9], &qword_27F033FA8, &qword_24B75D810);
  sub_24B6B8FC4(v22, v34, type metadata accessor for ArtworkBannerState);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B6B902C(v22, type metadata accessor for ArtworkBannerState);
}

uint64_t _s20FitnessProductDetail24WorkoutScheduleLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutSchedule();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v38 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034080, &qword_24B75DD80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  State = type metadata accessor for WorkoutScheduleLoadState(0);
  v16 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034088, &qword_24B75DD88);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v37 - v22;
  v24 = *(v21 + 56);
  sub_24B6B8FC4(a1, &v37 - v22, type metadata accessor for WorkoutScheduleLoadState);
  sub_24B6B8FC4(a2, &v23[v24], type metadata accessor for WorkoutScheduleLoadState);
  v25 = *(v8 + 48);
  if (v25(v23, 1, v7) == 1)
  {
    if (v25(&v23[v24], 1, v7) == 1)
    {
LABEL_3:
      sub_24B6B902C(v23, type metadata accessor for WorkoutScheduleLoadState);
      return 1;
    }

    goto LABEL_6;
  }

  sub_24B6B8FC4(v23, v18, type metadata accessor for WorkoutScheduleLoadState);
  if (v25(&v23[v24], 1, v7) != 1)
  {
    v27 = *(v11 + 48);
    sub_24B6B8DE8(v18, v14, &qword_27F033F50, &unk_24B764A50);
    sub_24B6B8DE8(&v23[v24], &v14[v27], &qword_27F033F50, &unk_24B764A50);
    v28 = v40;
    v29 = *(v39 + 48);
    if (v29(v14, 1, v40) == 1)
    {
      if (v29(&v14[v27], 1, v28) == 1)
      {
        sub_24B6B9CD4(v14, &qword_27F033F50, &unk_24B764A50);
        goto LABEL_3;
      }
    }

    else
    {
      v30 = v38;
      sub_24B6B9D34(v14, v38, &qword_27F033F50, &unk_24B764A50);
      if (v29(&v14[v27], 1, v28) != 1)
      {
        v33 = v37;
        sub_24B6B9D9C(&v14[v27], v37, type metadata accessor for WorkoutSchedule);
        if (sub_24B75B1B8())
        {
          v34 = *(v28 + 20);
          v35 = *(v30 + v34);
          v36 = *(v33 + v34);
          sub_24B6B902C(v33, type metadata accessor for WorkoutSchedule);
          sub_24B6B902C(v30, type metadata accessor for WorkoutSchedule);
          sub_24B6B9CD4(v14, &qword_27F033F50, &unk_24B764A50);
          if (v35 == v36)
          {
            goto LABEL_3;
          }

          goto LABEL_14;
        }

        sub_24B6B902C(v33, type metadata accessor for WorkoutSchedule);
        sub_24B6B902C(v30, type metadata accessor for WorkoutSchedule);
        v31 = &qword_27F033F50;
        v32 = &unk_24B764A50;
LABEL_13:
        sub_24B6B9CD4(v14, v31, v32);
LABEL_14:
        sub_24B6B902C(v23, type metadata accessor for WorkoutScheduleLoadState);
        return 0;
      }

      sub_24B6B902C(v30, type metadata accessor for WorkoutSchedule);
    }

    v31 = &qword_27F034080;
    v32 = &qword_24B75DD80;
    goto LABEL_13;
  }

  sub_24B6B9CD4(v18, &qword_27F033F50, &unk_24B764A50);
LABEL_6:
  sub_24B6B9CD4(v23, &qword_27F034088, &qword_24B75DD88);
  return 0;
}

uint64_t sub_24B6B8D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FA8, &qword_24B75D810);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6B8DE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_24B6B8E50()
{
  result = qword_27F033FB8;
  if (!qword_27F033FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033FB8);
  }

  return result;
}

unint64_t sub_24B6B8EA4()
{
  result = qword_27F033FD8;
  if (!qword_27F033FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033FD8);
  }

  return result;
}

unint64_t sub_24B6B8EF8()
{
  result = qword_27F033FE0;
  if (!qword_27F033FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033FE0);
  }

  return result;
}

uint64_t sub_24B6B8F4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F033FA8, &qword_24B75D810);
    sub_24B6B8EA4();
    sub_24B6B8EF8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6B8FC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B6B902C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s20FitnessProductDetail18ArtworkBannerStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x24C247500]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ArtworkBannerState(0);
  if ((MEMORY[0x24C2474B0](a1 + v4[5], a2 + v4[5]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_24B75C6B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if ((_s20FitnessProductDetail24WorkoutScheduleLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v4[8], a2 + v4[8]) & 1) == 0)
  {
    return 0;
  }

  v16 = v4[9];
  v17 = sub_24B6B9324();

  return MEMORY[0x282159B18](a1 + v16, a2 + v16, &type metadata for SampleContentPlaybackRestriction, v17);
}

void sub_24B6B91F4()
{
  sub_24B75B248();
  if (v0 <= 0x3F)
  {
    sub_24B75B1F8();
    if (v1 <= 0x3F)
    {
      sub_24B6A7490();
      if (v2 <= 0x3F)
      {
        type metadata accessor for WorkoutScheduleLoadState(319);
        if (v3 <= 0x3F)
        {
          sub_24B6B92C8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B6B92C8()
{
  if (!qword_27F034018)
  {
    sub_24B6B9324();
    v0 = sub_24B75C1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F034018);
    }
  }
}

unint64_t sub_24B6B9324()
{
  result = qword_27F034020;
  if (!qword_27F034020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034020);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkBannerState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkBannerState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutScheduleLoadState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutScheduleLoadState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WorkoutScheduleLoadState.FetchedCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WorkoutScheduleLoadState.FetchedCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_24B6B9714()
{
  result = qword_27F034028;
  if (!qword_27F034028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034028);
  }

  return result;
}

unint64_t sub_24B6B976C()
{
  result = qword_27F034030;
  if (!qword_27F034030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034030);
  }

  return result;
}

unint64_t sub_24B6B97C4()
{
  result = qword_27F034038;
  if (!qword_27F034038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034038);
  }

  return result;
}

unint64_t sub_24B6B981C()
{
  result = qword_27F034040;
  if (!qword_27F034040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034040);
  }

  return result;
}

unint64_t sub_24B6B9874()
{
  result = qword_27F034048;
  if (!qword_27F034048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034048);
  }

  return result;
}

unint64_t sub_24B6B98CC()
{
  result = qword_27F034050;
  if (!qword_27F034050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034050);
  }

  return result;
}

unint64_t sub_24B6B9924()
{
  result = qword_27F034058;
  if (!qword_27F034058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034058);
  }

  return result;
}

unint64_t sub_24B6B997C()
{
  result = qword_27F034060;
  if (!qword_27F034060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034060);
  }

  return result;
}

unint64_t sub_24B6B99D4()
{
  result = qword_27F034068;
  if (!qword_27F034068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034068);
  }

  return result;
}

unint64_t sub_24B6B9A2C()
{
  result = qword_27F034070;
  if (!qword_27F034070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034070);
  }

  return result;
}

unint64_t sub_24B6B9A84()
{
  result = qword_27F034078;
  if (!qword_27F034078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034078);
  }

  return result;
}

uint64_t sub_24B6B9AD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B76BB20 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000024B76BB40 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024B76BB60 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024B76BB80 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B6B9CD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24B6B9D34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B6B9D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id static NSBundle.localization.getter()
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t static HighlightAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *aHighlight;

  return v0;
}

uint64_t static HighlightAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aHighlight = a1;
  *&aHighlight[8] = a2;
}

uint64_t sub_24B6B9FB0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aHighlight = v2;
  *&aHighlight[8] = v1;
}

uint64_t sub_24B6BA0B8()
{
  swift_beginAccess();
  v0 = *aHighlight;

  return v0;
}

uint64_t sub_24B6BA12C()
{
  sub_24B6BA2F8();

  return sub_24B75AEF8();
}

uint64_t sub_24B6BA178()
{
  sub_24B6BA2F8();

  return sub_24B75AEF8();
}

unint64_t sub_24B6BA1C8()
{
  result = qword_27F0340A0;
  if (!qword_27F0340A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0340A0);
  }

  return result;
}

unint64_t sub_24B6BA22C()
{
  result = qword_27F0340A8;
  if (!qword_27F0340A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0340A8);
  }

  return result;
}

unint64_t sub_24B6BA284()
{
  result = qword_27F0340B0;
  if (!qword_27F0340B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0340B0);
  }

  return result;
}

unint64_t sub_24B6BA2F8()
{
  result = qword_27F0340B8;
  if (!qword_27F0340B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0340B8);
  }

  return result;
}

unint64_t sub_24B6BA34C()
{
  result = qword_27F0340C0;
  if (!qword_27F0340C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0340C0);
  }

  return result;
}

uint64_t WorkoutDetailTrainer.bio.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutDetailTrainer() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for WorkoutDetailTrainer()
{
  result = qword_2810F7728;
  if (!qword_2810F7728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutDetailTrainer.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutDetailTrainer() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WorkoutDetailTrainer.name.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutDetailTrainer() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *WorkoutDetailTrainer.init(artwork:bio:identifier:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_24B6BA56C(a1, a8);
  result = type metadata accessor for WorkoutDetailTrainer();
  v16 = (a8 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a8 + result[6]);
  *v17 = a4;
  v17[1] = a5;
  v18 = (a8 + result[7]);
  *v18 = a6;
  v18[1] = a7;
  return result;
}

uint64_t sub_24B6BA56C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6BA5DC()
{
  v1 = 0x6B726F77747261;
  v2 = 0x696669746E656469;
  if (*v0 != 2)
  {
    v2 = 1701667182;
  }

  if (*v0)
  {
    v1 = 7301474;
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

uint64_t sub_24B6BA64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B6BBE58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B6BA680(uint64_t a1)
{
  v2 = sub_24B6BA918();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BA6BC(uint64_t a1)
{
  v2 = sub_24B6BA918();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailTrainer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340D0, &qword_24B75DFB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BA918();
  sub_24B75C738();
  v22[15] = 0;
  type metadata accessor for WorkoutDetailArtwork();
  sub_24B6BC028(&qword_27F0340E0, type metadata accessor for WorkoutDetailArtwork);
  sub_24B75C668();
  if (!v2)
  {
    v11 = type metadata accessor for WorkoutDetailTrainer();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v22[14] = 1;
    sub_24B75C648();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v22[13] = 2;
    sub_24B75C678();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v22[12] = 3;
    sub_24B75C678();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B6BA918()
{
  result = qword_27F0340D8;
  if (!qword_27F0340D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0340D8);
  }

  return result;
}

uint64_t WorkoutDetailTrainer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340E8, &qword_24B75DFC0);
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for WorkoutDetailTrainer();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BA918();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v34;
  v18 = v15;
  type metadata accessor for WorkoutDetailArtwork();
  v39 = 0;
  sub_24B6BC028(&qword_27F0340F0, type metadata accessor for WorkoutDetailArtwork);
  v19 = v35;
  sub_24B75C5D8();
  sub_24B6BA56C(v7, v18);
  v38 = 1;
  v20 = sub_24B75C5B8();
  v21 = (v18 + v12[5]);
  *v21 = v20;
  v21[1] = v22;
  v37 = 2;
  v23 = sub_24B75C5E8();
  v24 = (v18 + v12[6]);
  *v24 = v23;
  v24[1] = v25;
  v36 = 3;
  v26 = sub_24B75C5E8();
  v27 = v11;
  v29 = v28;
  (*(v17 + 8))(v27, v19);
  v30 = (v18 + v12[7]);
  *v30 = v26;
  v30[1] = v29;
  sub_24B6BAD50(v18, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B6BC070(v18, type metadata accessor for WorkoutDetailTrainer);
}

uint64_t sub_24B6BAD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailTrainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutDetailTrainer.hash(into:)(uint64_t a1)
{
  sub_24B6BB198(a1);
  v2 = type metadata accessor for WorkoutDetailTrainer();
  v3 = (v1 + v2[5]);
  if (v3[1])
  {
    v4 = *v3;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v5 = (v1 + v2[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_24B75C358();
  v8 = (v1 + v2[7]);
  v9 = *v8;
  v10 = v8[1];

  return sub_24B75C358();
}

uint64_t WorkoutDetailTrainer.hashValue.getter()
{
  sub_24B75C6D8();
  sub_24B6BB198(v11);
  v1 = type metadata accessor for WorkoutDetailTrainer();
  v2 = (v0 + v1[5]);
  if (v2[1])
  {
    v3 = *v2;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v4 = (v0 + v1[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_24B75C358();
  v7 = (v0 + v1[7]);
  v8 = *v7;
  v9 = v7[1];
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B6BAF68(int *a1)
{
  sub_24B75C6D8();
  sub_24B6BB198(v12);
  v3 = (v1 + a1[5]);
  if (v3[1])
  {
    v4 = *v3;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v5 = (v1 + a1[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_24B75C358();
  v8 = (v1 + a1[7]);
  v9 = *v8;
  v10 = v8[1];
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B6BB028(uint64_t a1, int *a2)
{
  sub_24B6BB198(a1);
  v4 = (v2 + a2[5]);
  if (v4[1])
  {
    v5 = *v4;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v6 = (v2 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_24B75C358();
  v9 = (v2 + a2[7]);
  v10 = *v9;
  v11 = v9[1];

  return sub_24B75C358();
}

uint64_t sub_24B6BB0D8(uint64_t a1, int *a2)
{
  sub_24B75C6D8();
  sub_24B6BB198(v13);
  v4 = (v2 + a2[5]);
  if (v4[1])
  {
    v5 = *v4;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v6 = (v2 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_24B75C358();
  v9 = (v2 + a2[7]);
  v10 = *v9;
  v11 = v9[1];
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B6BB198(uint64_t a1)
{
  v38 = a1;
  v1 = sub_24B75B108();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_24B75B298();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for WorkoutDetailArtwork();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v33 - v23;
  sub_24B6B9D34(v37, &v33 - v23, &qword_27F0340C8, &qword_24B75DFB0);
  if ((*(v17 + 48))(v24, 1, v16) == 1)
  {
    return sub_24B75C6F8();
  }

  sub_24B6BBFC4(v24, v20);
  sub_24B75C6F8();
  sub_24B6B9D34(v20, v15, &qword_27F034120, &unk_24B75E1E0);
  v26 = v34;
  if ((*(v34 + 48))(v15, 1, v8) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    (*(v26 + 32))(v11, v15, v8);
    sub_24B75C6F8();
    sub_24B6BC028(&qword_27F034128, MEMORY[0x277D09D68]);
    sub_24B75C2C8();
    (*(v26 + 8))(v11, v8);
  }

  v28 = v35;
  v27 = v36;
  sub_24B6B9D34(&v20[*(v16 + 20)], v7, &qword_27F034118, &qword_24B75E1D8);
  if ((*(v28 + 48))(v7, 1, v27) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    v29 = v33;
    (*(v28 + 32))(v33, v7, v27);
    sub_24B75C6F8();
    sub_24B6BC028(&qword_27F034130, MEMORY[0x277CC9260]);
    sub_24B75C2C8();
    (*(v28 + 8))(v29, v27);
  }

  v30 = &v20[*(v16 + 24)];
  v31 = *v30;
  v32 = *(v30 + 1);
  sub_24B75C358();
  return sub_24B6BC070(v20, type metadata accessor for WorkoutDetailArtwork);
}

uint64_t sub_24B6BB698()
{
  if (v0[4])
  {
    return sub_24B75C6F8();
  }

  v3 = v0[2];
  v2 = v0[3];
  v5 = *v0;
  v4 = v0[1];
  sub_24B75C6F8();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x24C2489D0](v6);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x24C2489D0](v7);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x24C2489D0](v8);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x24C2489D0](v9);
}

uint64_t _s20FitnessProductDetail07WorkoutC7TrainerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailArtwork();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034138, &unk_24B7634A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v37 - v16;
  v18 = *(v15 + 56);
  sub_24B6B9D34(a1, &v37 - v16, &qword_27F0340C8, &qword_24B75DFB0);
  sub_24B6B9D34(a2, &v17[v18], &qword_27F0340C8, &qword_24B75DFB0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_24B6B9CD4(v17, &qword_27F0340C8, &qword_24B75DFB0);
      goto LABEL_10;
    }

LABEL_6:
    sub_24B6B9CD4(v17, &qword_27F034138, &unk_24B7634A0);
    goto LABEL_7;
  }

  sub_24B6B9D34(v17, v12, &qword_27F0340C8, &qword_24B75DFB0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_24B6BC070(v12, type metadata accessor for WorkoutDetailArtwork);
    goto LABEL_6;
  }

  sub_24B6BBFC4(&v17[v18], v8);
  v22 = static WorkoutDetailArtwork.== infix(_:_:)(v12, v8);
  sub_24B6BC070(v8, type metadata accessor for WorkoutDetailArtwork);
  sub_24B6BC070(v12, type metadata accessor for WorkoutDetailArtwork);
  sub_24B6B9CD4(v17, &qword_27F0340C8, &qword_24B75DFB0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v23 = type metadata accessor for WorkoutDetailTrainer();
  v24 = v23[5];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (!v26)
  {
    if (!v28)
    {
      goto LABEL_17;
    }

LABEL_7:
    v20 = 0;
    return v20 & 1;
  }

  if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_24B75C6B8() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  v29 = v23[6];
  v30 = *(a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  if ((v30 != *v32 || v31 != v32[1]) && (sub_24B75C6B8() & 1) == 0)
  {
    goto LABEL_7;
  }

  v33 = v23[7];
  v34 = *(a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  if (v34 == *v36 && v35 == v36[1])
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_24B75C6B8();
  }

  return v20 & 1;
}

void sub_24B6BBB14()
{
  sub_24B6BBBA8();
  if (v0 <= 0x3F)
  {
    sub_24B6A7490();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B6BBBA8()
{
  if (!qword_2810F7790)
  {
    type metadata accessor for WorkoutDetailArtwork();
    v0 = sub_24B75C4E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F7790);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutDetailTrainer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutDetailTrainer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B6BBD54()
{
  result = qword_27F034100;
  if (!qword_27F034100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034100);
  }

  return result;
}

unint64_t sub_24B6BBDAC()
{
  result = qword_27F034108;
  if (!qword_27F034108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034108);
  }

  return result;
}

unint64_t sub_24B6BBE04()
{
  result = qword_27F034110;
  if (!qword_27F034110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034110);
  }

  return result;
}

uint64_t sub_24B6BBE58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7301474 && a2 == 0xE300000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

uint64_t sub_24B6BBFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailArtwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6BC028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B6BC070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B6BC0E0()
{
  if (*v0)
  {
    return 0x72616C75676572;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

uint64_t sub_24B6BC114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746361706D6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B6BC1F0(uint64_t a1)
{
  v2 = sub_24B6BC614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BC22C(uint64_t a1)
{
  v2 = sub_24B6BC614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6BC268(uint64_t a1)
{
  v2 = sub_24B6BC6BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BC2A4(uint64_t a1)
{
  v2 = sub_24B6BC6BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6BC2E0(uint64_t a1)
{
  v2 = sub_24B6BC668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BC31C(uint64_t a1)
{
  v2 = sub_24B6BC668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewSizeClass.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034140, &qword_24B75E1F0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034148, &qword_24B75E1F8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034150, &qword_24B75E200);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BC614();
  sub_24B75C738();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24B6BC668();
    sub_24B75C638();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24B6BC6BC();
    sub_24B75C638();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_24B6BC614()
{
  result = qword_27F034158;
  if (!qword_27F034158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034158);
  }

  return result;
}

unint64_t sub_24B6BC668()
{
  result = qword_27F034160;
  if (!qword_27F034160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034160);
  }

  return result;
}

unint64_t sub_24B6BC6BC()
{
  result = qword_27F034168;
  if (!qword_27F034168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034168);
  }

  return result;
}

uint64_t sub_24B6BC72C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B6BC7E8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewSizeClass.hashValue.getter(char a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1 & 1);
  return sub_24B75C718();
}

uint64_t sub_24B6BC7E8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0341B0, &qword_24B75E580);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0341B8, &qword_24B75E588);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0341C0, &unk_24B75E590);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BC614();
  v15 = v32;
  sub_24B75C728();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_24B75C628();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_24B6B9E04();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_24B75C568();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
    *v24 = &type metadata for WorkoutContextMenuPreviewSizeClass;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_24B6BC668();
    sub_24B75C598();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_24B6BC6BC();
    sub_24B75C598();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_24B6BCCA8()
{
  result = qword_27F034170;
  if (!qword_27F034170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034170);
  }

  return result;
}

unint64_t sub_24B6BCD40()
{
  result = qword_27F034178;
  if (!qword_27F034178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034178);
  }

  return result;
}

unint64_t sub_24B6BCD98()
{
  result = qword_27F034180;
  if (!qword_27F034180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034180);
  }

  return result;
}

unint64_t sub_24B6BCDF0()
{
  result = qword_27F034188;
  if (!qword_27F034188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034188);
  }

  return result;
}

unint64_t sub_24B6BCE48()
{
  result = qword_27F034190;
  if (!qword_27F034190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034190);
  }

  return result;
}

unint64_t sub_24B6BCEA0()
{
  result = qword_27F034198;
  if (!qword_27F034198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034198);
  }

  return result;
}

unint64_t sub_24B6BCEF8()
{
  result = qword_27F0341A0;
  if (!qword_27F0341A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0341A0);
  }

  return result;
}

unint64_t sub_24B6BCF50()
{
  result = qword_27F0341A8;
  if (!qword_27F0341A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0341A8);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewArtwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24B6B8DE8(a1, a3, &qword_27F034120, &unk_24B75E1E0);
  v5 = type metadata accessor for WorkoutContextMenuPreviewArtwork();
  return sub_24B6B8DE8(a2, a3 + *(v5 + 20), &qword_27F034118, &qword_24B75E1D8);
}

uint64_t sub_24B6BD090()
{
  if (*v0)
  {
    result = 0x6574616C706D6574;
  }

  else
  {
    result = 0x756F72676B636162;
  }

  *v0;
  return result;
}

uint64_t sub_24B6BD0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B6BD1C8(uint64_t a1)
{
  v2 = sub_24B6BD4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BD204(uint64_t a1)
{
  v2 = sub_24B6BD4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0341C8, &qword_24B75E5A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BD4A4();
  sub_24B75C738();
  v11[15] = 0;
  sub_24B75B298();
  sub_24B6A6E7C(&qword_27F0341D8, MEMORY[0x277D09D68]);
  sub_24B75C668();
  if (!v1)
  {
    v9 = *(type metadata accessor for WorkoutContextMenuPreviewArtwork() + 20);
    v11[14] = 1;
    sub_24B75B108();
    sub_24B6A6E7C(&qword_27F0341E0, MEMORY[0x277CC9260]);
    sub_24B75C668();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B6BD4A4()
{
  result = qword_27F0341D0;
  if (!qword_27F0341D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0341D0);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewArtwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v28 = &v24 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0341E8, &qword_24B75E5A8);
  v27 = *(v29 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v24 - v12;
  v14 = type metadata accessor for WorkoutContextMenuPreviewArtwork();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BD4A4();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v19 = v17;
  v20 = v27;
  sub_24B75B298();
  v31 = 0;
  sub_24B6A6E7C(&qword_27F0341F0, MEMORY[0x277D09D68]);
  v21 = v28;
  v22 = v29;
  sub_24B75C5D8();
  sub_24B6B8DE8(v21, v19, &qword_27F034120, &unk_24B75E1E0);
  sub_24B75B108();
  v30 = 1;
  sub_24B6A6E7C(&qword_27F0341F8, MEMORY[0x277CC9260]);
  sub_24B75C5D8();
  (*(v20 + 8))(v13, v22);
  sub_24B6B8DE8(v7, v19 + *(v25 + 20), &qword_27F034118, &qword_24B75E1D8);
  sub_24B6BD8A8(v19, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B6BD90C(v19);
}

uint64_t sub_24B6BD8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewArtwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6BD90C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutContextMenuPreviewArtwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutContextMenuPreviewArtwork.hash(into:)()
{
  v1 = v0;
  v2 = sub_24B75B108();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_24B75B298();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23 - v16;
  sub_24B6B9D34(v1, &v23 - v16, &qword_27F034120, &unk_24B75E1E0);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_24B75C6F8();
    sub_24B6A6E7C(&qword_27F034128, MEMORY[0x277D09D68]);
    sub_24B75C2C8();
    (*(v10 + 8))(v13, v9);
  }

  v18 = type metadata accessor for WorkoutContextMenuPreviewArtwork();
  sub_24B6B9D34(v1 + *(v18 + 20), v8, &qword_27F034118, &qword_24B75E1D8);
  v20 = v25;
  v19 = v26;
  if ((*(v25 + 48))(v8, 1, v26) == 1)
  {
    return sub_24B75C6F8();
  }

  v22 = v24;
  (*(v20 + 32))(v24, v8, v19);
  sub_24B75C6F8();
  sub_24B6A6E7C(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return (*(v20 + 8))(v22, v19);
}

uint64_t WorkoutContextMenuPreviewArtwork.hashValue.getter()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewArtwork.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B6BDD84()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewArtwork.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B6BDDC8()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewArtwork.hash(into:)();
  return sub_24B75C718();
}

BOOL _s20FitnessProductDetail32WorkoutContextMenuPreviewArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B108();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v44 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034218, &unk_24B761640);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = &v44 - v11;
  v12 = sub_24B75B298();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034220, &unk_24B75E810);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v44 - v24;
  v26 = *(v23 + 56);
  v48 = a1;
  sub_24B6B9D34(a1, &v44 - v24, &qword_27F034120, &unk_24B75E1E0);
  v49 = a2;
  sub_24B6B9D34(a2, &v25[v26], &qword_27F034120, &unk_24B75E1E0);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_24B6B9D34(v25, v20, &qword_27F034120, &unk_24B75E1E0);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      (*(v13 + 32))(v16, &v25[v26], v12);
      sub_24B6A6E7C(&qword_27F034230, MEMORY[0x277D09D68]);
      v31 = sub_24B75C2D8();
      v32 = *(v13 + 8);
      v32(v16, v12);
      v32(v20, v12);
      sub_24B6B9CD4(v25, &qword_27F034120, &unk_24B75E1E0);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v13 + 8))(v20, v12);
LABEL_6:
    v28 = &qword_27F034220;
    v29 = &unk_24B75E810;
    v30 = v25;
LABEL_14:
    sub_24B6B9CD4(v30, v28, v29);
    return 0;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_24B6B9CD4(v25, &qword_27F034120, &unk_24B75E1E0);
LABEL_8:
  v33 = *(type metadata accessor for WorkoutContextMenuPreviewArtwork() + 20);
  v34 = v47;
  v35 = *(v46 + 48);
  sub_24B6B9D34(v48 + v33, v47, &qword_27F034118, &qword_24B75E1D8);
  sub_24B6B9D34(v49 + v33, v34 + v35, &qword_27F034118, &qword_24B75E1D8);
  v37 = v50;
  v36 = v51;
  v38 = *(v50 + 48);
  if (v38(v34, 1, v51) == 1)
  {
    if (v38(v34 + v35, 1, v36) == 1)
    {
      sub_24B6B9CD4(v34, &qword_27F034118, &qword_24B75E1D8);
      return 1;
    }

    goto LABEL_13;
  }

  v39 = v45;
  sub_24B6B9D34(v34, v45, &qword_27F034118, &qword_24B75E1D8);
  if (v38(v34 + v35, 1, v36) == 1)
  {
    (*(v37 + 8))(v39, v36);
LABEL_13:
    v28 = &qword_27F034218;
    v29 = &unk_24B761640;
    v30 = v34;
    goto LABEL_14;
  }

  v41 = v44;
  (*(v37 + 32))(v44, v34 + v35, v36);
  sub_24B6A6E7C(&qword_27F034228, MEMORY[0x277CC9260]);
  v42 = sub_24B75C2D8();
  v43 = *(v37 + 8);
  v43(v41, v36);
  v43(v39, v36);
  sub_24B6B9CD4(v34, &qword_27F034118, &qword_24B75E1D8);
  return (v42 & 1) != 0;
}

unint64_t sub_24B6BE474()
{
  result = qword_27F034200;
  if (!qword_27F034200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034200);
  }

  return result;
}

unint64_t sub_24B6BE4CC()
{
  result = qword_27F034208;
  if (!qword_27F034208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034208);
  }

  return result;
}

unint64_t sub_24B6BE524()
{
  result = qword_27F034210;
  if (!qword_27F034210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034210);
  }

  return result;
}

uint64_t sub_24B6BE5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x64616F6C6E776F64 && a2 == 0xEB00000000676E69;
  if (v5 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B6BE68C(uint64_t a1)
{
  v2 = sub_24B6BED38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BE6C8(uint64_t a1)
{
  v2 = sub_24B6BED38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6BE704(uint64_t a1)
{
  v2 = sub_24B6BED8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BE740(uint64_t a1)
{
  v2 = sub_24B6BED8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6BE77C(uint64_t a1)
{
  v2 = sub_24B6BEDE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BE7B8(uint64_t a1)
{
  v2 = sub_24B6BEDE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static DownloadStatus.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) & 1) != 0 || (*(a2 + 9))
  {
    return 1;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 8) & 1 | (*a1 < *a2);
}

BOOL static DownloadStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 9);
  if (*(a1 + 9))
  {
    return (*(a2 + 9) & 1) != 0;
  }

  if (*(a2 + 9))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  else
  {
    return (*(a2 + 8) & 1) == 0 && *a1 == *a2;
  }
}

uint64_t sub_24B6BE8A8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) & 1) != 0 || (*(a2 + 9))
  {
    return 1;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 8) & 1 | (*a1 < *a2);
}

uint64_t sub_24B6BE8F4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9))
  {
    return 0;
  }

  if (*(a1 + 9))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    return 1;
  }

  return (*a2 >= *a1) & ~*(a2 + 8);
}

uint64_t sub_24B6BE940(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9))
  {
    return 0;
  }

  if (*(a2 + 9))
  {
    return 0;
  }

  if (*(a2 + 8))
  {
    return 1;
  }

  return (*a1 >= *a2) & ~*(a1 + 8);
}

uint64_t sub_24B6BE98C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9) & 1) != 0 || (*(a1 + 9))
  {
    return 1;
  }

  if (*(a1 + 8))
  {
    return 0;
  }

  return *(a2 + 8) & 1 | (*a2 < *a1);
}