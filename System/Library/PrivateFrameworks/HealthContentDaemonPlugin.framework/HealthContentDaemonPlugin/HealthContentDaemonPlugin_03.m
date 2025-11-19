void sub_25153D964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25153DAC8()
{
  result = qword_27F43C6B8;
  if (!qword_27F43C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C6B8);
  }

  return result;
}

uint64_t sub_25153DB1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25153DB64()
{
  result = qword_27F43C6D0;
  if (!qword_27F43C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C6D0);
  }

  return result;
}

unint64_t sub_25153DBB8()
{
  result = qword_27F43C6D8;
  if (!qword_27F43C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C6D8);
  }

  return result;
}

unint64_t sub_25153DC0C()
{
  result = qword_27F43C6E8;
  if (!qword_27F43C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C6E8);
  }

  return result;
}

unint64_t sub_25153DC60()
{
  result = qword_27F43C700;
  if (!qword_27F43C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C700);
  }

  return result;
}

unint64_t sub_25153DCB4()
{
  result = qword_27F43C710;
  if (!qword_27F43C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C710);
  }

  return result;
}

unint64_t sub_25153DD08()
{
  result = qword_27F43C758;
  if (!qword_27F43C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C758);
  }

  return result;
}

unint64_t sub_25153DD5C()
{
  result = qword_27F43C760;
  if (!qword_27F43C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C760);
  }

  return result;
}

unint64_t sub_25153DDB0()
{
  result = qword_27F43C780;
  if (!qword_27F43C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C780);
  }

  return result;
}

unint64_t sub_25153DE04()
{
  result = qword_27F43C7A0;
  if (!qword_27F43C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C7A0);
  }

  return result;
}

unint64_t sub_25153DE5C()
{
  result = qword_27F43C7F0;
  if (!qword_27F43C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C7F0);
  }

  return result;
}

unint64_t sub_25153DEB4()
{
  result = qword_27F43C7F8;
  if (!qword_27F43C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C7F8);
  }

  return result;
}

uint64_t sub_25153DF38(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2515411C0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25153DFA0()
{
  result = qword_27F43C810;
  if (!qword_27F43C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C810);
  }

  return result;
}

unint64_t sub_25153DFF8()
{
  result = qword_27F43C818;
  if (!qword_27F43C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C818);
  }

  return result;
}

unint64_t sub_25153E050()
{
  result = qword_27F43C820;
  if (!qword_27F43C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C820);
  }

  return result;
}

unint64_t sub_25153E0D8()
{
  result = qword_27F43C838;
  if (!qword_27F43C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C838);
  }

  return result;
}

unint64_t sub_25153E130()
{
  result = qword_27F43C840;
  if (!qword_27F43C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C840);
  }

  return result;
}

unint64_t sub_25153E188()
{
  result = qword_27F43C848;
  if (!qword_27F43C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C848);
  }

  return result;
}

unint64_t sub_25153E210()
{
  result = qword_27F43C860;
  if (!qword_27F43C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C860);
  }

  return result;
}

unint64_t sub_25153E268()
{
  result = qword_27F43C868;
  if (!qword_27F43C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C868);
  }

  return result;
}

unint64_t sub_25153E2C0()
{
  result = qword_27F43C870;
  if (!qword_27F43C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C870);
  }

  return result;
}

unint64_t sub_25153E348()
{
  result = qword_27F43C888;
  if (!qword_27F43C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C888);
  }

  return result;
}

unint64_t sub_25153E3A0()
{
  result = qword_27F43C890;
  if (!qword_27F43C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C890);
  }

  return result;
}

unint64_t sub_25153E3F8()
{
  result = qword_27F43C898;
  if (!qword_27F43C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C898);
  }

  return result;
}

unint64_t sub_25153E480()
{
  result = qword_27F43C8B0;
  if (!qword_27F43C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C8B0);
  }

  return result;
}

unint64_t sub_25153E4D8()
{
  result = qword_27F43C8B8;
  if (!qword_27F43C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C8B8);
  }

  return result;
}

unint64_t sub_25153E530()
{
  result = qword_27F43C8C0;
  if (!qword_27F43C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C8C0);
  }

  return result;
}

unint64_t sub_25153E5B8()
{
  result = qword_27F43C8D8;
  if (!qword_27F43C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C8D8);
  }

  return result;
}

unint64_t sub_25153E610()
{
  result = qword_27F43C8E0;
  if (!qword_27F43C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C8E0);
  }

  return result;
}

unint64_t sub_25153E668()
{
  result = qword_27F43C8E8;
  if (!qword_27F43C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C8E8);
  }

  return result;
}

unint64_t sub_25153E6F0()
{
  result = qword_27F43C900;
  if (!qword_27F43C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C900);
  }

  return result;
}

unint64_t sub_25153E748()
{
  result = qword_27F43C908;
  if (!qword_27F43C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C908);
  }

  return result;
}

unint64_t sub_25153E7A0()
{
  result = qword_27F43C910;
  if (!qword_27F43C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C910);
  }

  return result;
}

unint64_t sub_25153E828()
{
  result = qword_27F43C928;
  if (!qword_27F43C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C928);
  }

  return result;
}

unint64_t sub_25153E880()
{
  result = qword_27F43C930;
  if (!qword_27F43C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C930);
  }

  return result;
}

unint64_t sub_25153E8D8()
{
  result = qword_27F43C938;
  if (!qword_27F43C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C938);
  }

  return result;
}

unint64_t sub_25153E960()
{
  result = qword_27F43C950;
  if (!qword_27F43C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C950);
  }

  return result;
}

unint64_t sub_25153E9B8()
{
  result = qword_27F43C958;
  if (!qword_27F43C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C958);
  }

  return result;
}

unint64_t sub_25153EA10()
{
  result = qword_27F43C960;
  if (!qword_27F43C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C960);
  }

  return result;
}

unint64_t sub_25153EA98()
{
  result = qword_27F43C978;
  if (!qword_27F43C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C978);
  }

  return result;
}

void sub_2515402B4()
{
  sub_25153D964(319, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_25154CFE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2515403D0()
{
  result = type metadata accessor for ProtoEmptyProps(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ProtoMainHeaderProps(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ProtoFullMainHeaderProps(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ProtoImageProps(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ProtoVideoProps(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ProtoSwooshProps(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ProtoCarouselProps(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ProtoTextProps(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ProtoTextListProps(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for ProtoImageListProps(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for ProtoVideoListProps(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for ProtoTableProps(319);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                          return 0;
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

  return result;
}

uint64_t sub_251540544()
{
  result = sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2515405D8()
{
  sub_25154CFE0();
  if (v0 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25153D964(319, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25154077C()
{
  sub_25153D964(319, &qword_27F43CB80, type metadata accessor for ProtoFullMainHeaderProps.TextItem, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_25154CFE0();
    if (v1 <= 0x3F)
    {
      sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_25153D964(319, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_251540968()
{
  sub_25154CFE0();
  if (v0 <= 0x3F)
  {
    sub_2515411C0(319, &qword_27F43CBA8, &type metadata for ProtoColorRole, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_166Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25154CFE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_167Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25154CFE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251540BB0()
{
  result = sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251540CA4()
{
  sub_25154CFE0();
  if (v0 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251540E20()
{
  sub_25154CFE0();
  if (v0 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251540F54()
{
  sub_25154CFE0();
  if (v0 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2515410C0()
{
  sub_25154CFE0();
  if (v0 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2515411C0(319, &qword_27F43BD98, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2515411C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_199Tm(uint64_t a1, uint64_t a2, int *a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v14 = sub_25154CFE0();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v15 = v14;
    v16 = *(v14 - 8);
    v17 = a3[5];
LABEL_5:
    v19 = *(v16 + 48);

    return v19(a1 + v17, a2, v15);
  }

  sub_25153D964(0, a4, a5, MEMORY[0x277D83D88]);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v15 = v18;
    v16 = *(v18 - 8);
    v17 = a3[6];
    goto LABEL_5;
  }

  sub_25153D964(0, a6, a7, MEMORY[0x277D83D88]);
  v22 = v21;
  v23 = *(*(v21 - 8) + 48);
  v24 = a1 + a3[7];

  return v23(v24, a2, v22);
}

uint64_t __swift_store_extra_inhabitant_index_200Tm(uint64_t a1, uint64_t a2, int a3, int *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), unint64_t *a7, uint64_t (*a8)(uint64_t))
{
  v16 = sub_25154CFE0();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v17 = v16;
    v18 = *(v16 - 8);
    v19 = a4[5];
LABEL_5:
    v21 = *(v18 + 56);

    return v21(a1 + v19, a2, a2, v17);
  }

  sub_25153D964(0, a5, a6, MEMORY[0x277D83D88]);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v17 = v20;
    v18 = *(v20 - 8);
    v19 = a4[6];
    goto LABEL_5;
  }

  sub_25153D964(0, a7, a8, MEMORY[0x277D83D88]);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v26 = a1 + a4[7];

  return v25(v26, a2, a2, v24);
}

void sub_2515415D4()
{
  sub_25154CFE0();
  if (v0 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25153D964(319, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251541764()
{
  sub_25154CFE0();
  if (v0 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25153D964(319, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251541888()
{
  sub_25153D964(319, &qword_27F43CCA8, type metadata accessor for ProtoTableProps.ColumnHeader, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43CCB0, type metadata accessor for ProtoTableProps.Column, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_25154CFE0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_151Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v10 = sub_25154CFE0();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }

  else
  {
    sub_25153D964(0, a4, a5, MEMORY[0x277D83D88]);
    v17 = v16;
    v18 = *(*(v16 - 8) + 48);
    v19 = a1 + *(a3 + 24);

    return v18(v19, a2, v17);
  }
}

uint64_t __swift_store_extra_inhabitant_index_152Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v12 = sub_25154CFE0();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }

  else
  {
    sub_25153D964(0, a5, a6, MEMORY[0x277D83D88]);
    v19 = v18;
    v20 = *(*(v18 - 8) + 56);
    v21 = a1 + *(a4 + 24);

    return v20(v21, a2, a2, v19);
  }
}

void sub_251541C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_25154CFE0();
  if (v8 <= 0x3F)
  {
    sub_25153D964(319, a5, a6, MEMORY[0x277D83D88]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251541D28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_25153D964(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_25154CFE0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251541DC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251541E24(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_251541E24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_25153D964(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251541E9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25153D964(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251541F0C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25153D964(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_251541F8C()
{
  if (!qword_27F43CDE0)
  {
    type metadata accessor for ProtoComponent.OneOf_Props(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F43CDE0);
    }
  }
}

uint64_t sub_251541FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251542190()
{
  v1 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin21HgQLSubgraphQueryNode_subgraphCaptures);

  v3 = sub_2514F17E0(v2);

  return v3;
}

uint64_t sub_2515421D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin21HgQLSubgraphQueryNode_subgraphName);
  v2 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin21HgQLSubgraphQueryNode_subgraphName + 8);

  return v1;
}

char *sub_251542210(char a1)
{
  v3 = OBJC_IVAR____TtC25HealthContentDaemonPlugin21HgQLSubgraphQueryNode_subgraphCaptures;
  if (a1)
  {
    v3 = 32;
  }

  v4 = *(*(v1 + v3) + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = ( + 40);
  v6 = MEMORY[0x277D84F90];
  do
  {
    v8 = *(v5 - 1);
    v7 = *v5;
    v17 = *v5;
    swift_bridgeObjectRetain_n();
    MEMORY[0x253078930](542327072, 0xE400000000000000);
    if (a1)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v15 = *(v1 + 16);
      v16 = *(v1 + 24);

      MEMORY[0x253078930](95, 0xE100000000000000);
      v9 = v15;
      v10 = v16;
    }

    MEMORY[0x253078930](v9, v10);

    MEMORY[0x253078930](v8, v7);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2514EF00C(0, *(v6 + 2) + 1, 1, v6);
    }

    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    if (v12 >= v11 >> 1)
    {
      v6 = sub_2514EF00C((v11 > 1), v12 + 1, 1, v6);
    }

    *(v6 + 2) = v12 + 1;
    v13 = &v6[16 * v12];
    *(v13 + 4) = v8;
    *(v13 + 5) = v17;
    v5 += 2;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t sub_2515423BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin21HgQLSubgraphQueryNode_subgraphName + 8);

  v2 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin21HgQLSubgraphQueryNode_subgraphCaptures);
}

uint64_t sub_251542400()
{
  v0 = sub_2515426C0();
  v1 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin21HgQLSubgraphQueryNode_subgraphName + 8);

  v2 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin21HgQLSubgraphQueryNode_subgraphCaptures);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for HgQLSubgraphQueryNode()
{
  result = qword_27F43CDE8;
  if (!qword_27F43CDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_251542544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_251548550();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode) = 0;
  *(v5 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes) = MEMORY[0x277D84F90];
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  sub_2514F6000(a4, v13);
  v14 = sub_25154CF80();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2514F6080(v13);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = sub_25154CF60();
    (*(v15 + 8))(v13, v14);
  }

  v17 = sub_2514F17E0(v16);

  v5[5] = v17;
  sub_2515486C8(a4, v5 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple);
  return v5;
}

void *sub_2515426C0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  sub_2514F6080(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple);
  v4 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes);

  v5 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);
  *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode) = 0;

  if (v5)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v6 = *(v5 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);
      swift_retain_n();

      v5 = v6;
    }

    while (v6);
  }

  return v0;
}

char *sub_25154277C()
{
  v1 = v0;
  v2 = sub_25154CDD0();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v2);
  *&v61 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_25154CE30();
  v58 = *(v59 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v7 = (&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_25154CDE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  sub_251548550();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25154CF80();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x277D84FA0];
  v64 = v1;
  sub_2514F6000(v1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_2514F6080(v19);
    return MEMORY[0x277D84FA0];
  }

  v56 = v21;
  v26 = *(v21 + 32);
  v57 = v20;
  v26(v24, v19, v20);
  v60 = v24;
  sub_25154CF50();
  v27 = v9 + 88;
  v66 = *(v9 + 88);
  v28 = v66(v15, v8);
  v67 = *MEMORY[0x277D11B18];
  v55 = v9;
  if (v28 == v67)
  {
    (*(v9 + 96))(v15, v8);
    sub_2514EF228(&v68, *v15, v15[1]);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
  }

  v29 = v8;
  v31 = v62;
  v30 = v63;
  sub_25154CF70();
  v32 = v58;
  v33 = v59;
  if ((*(v58 + 88))(v7, v59) == *MEMORY[0x277D11B40])
  {
    (*(v32 + 96))(v7, v33);
    sub_2514EF228(&v68, *v7, v7[1]);
  }

  else
  {
    (*(v32 + 8))(v7, v33);
  }

  v34 = v61;
  sub_25154CF40();
  if ((*(v31 + 88))(v34, v30) == *MEMORY[0x277D11AE8])
  {
    (*(v31 + 96))(v34, v30);
    sub_2514EF228(&v68, *v34, v34[1]);
  }

  else
  {
    (*(v31 + 8))(v34, v30);
  }

  v35 = v64;
  v36 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes;
  swift_beginAccess();
  v37 = *(v35 + v36);
  if (v37 >> 62)
  {
    v38 = sub_25154D4A0();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v60;
  v39 = v57;
  v40 = v56;
  if (v38)
  {
    if (v38 < 1)
    {
      __break(1u);
      return result;
    }

    v41 = v37 & 0xC000000000000001;
    v62 = v55 + 96;
    v63 = (v55 + 8);

    v42 = 0;
    v61 = xmmword_25154E670;
    v64 = v37 & 0xC000000000000001;
    v65 = v29;
    do
    {
      if (v41)
      {
        MEMORY[0x253078AC0](v42, v37);
      }

      else
      {
        v44 = *(v37 + 8 * v42 + 32);
      }

      sub_25154CF50();
      v45 = v66(v13, v29);
      if (v45 == v67)
      {
        (*v62)(v13, v29);
        v46 = *v13;
        v47 = v13[1];
        sub_2514F619C(0, &qword_27F43BD88, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = v61;
        v49 = v38;
        v50 = v13;
        v51 = v37;
        v52 = v27;
        *(inited + 32) = v46;
        v53 = inited + 32;
        *(inited + 40) = v47;
        v29 = v65;
        v43 = sub_25154872C(inited);
        swift_setDeallocating();
        v54 = v53;
        v27 = v52;
        v37 = v51;
        v13 = v50;
        v38 = v49;
        v41 = v64;
        sub_251548888(v54);
      }

      else
      {
        (*v63)(v13, v29);
        v43 = MEMORY[0x277D84FA0];
      }

      ++v42;
      sub_2514EE22C(v43);
    }

    while (v38 != v42);

    v39 = v57;
    v40 = v56;
    result = v60;
  }

  (*(v40 + 8))(result, v39);
  return v69;
}

uint64_t sub_251542E84(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_25154CDE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251548550();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25154CF80();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  sub_2514F6000(v2 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2514F6080(v11);
    sub_2514F231C();
    swift_allocError();
    *v20 = 0xD000000000000035;
    v20[1] = 0x8000000251553CD0;
    return swift_willThrow();
  }

  (*(v13 + 32))(v19, v11, v12);
  (*(v13 + 16))(v17, v44 + OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple, v12);
  sub_25154CF50();
  if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D11B18])
  {
    (*(v4 + 96))(v7, v3);
    v22 = *v7;
    v23 = v7[1];
    v24 = sub_25154CF60();
    v25 = sub_2514F17E0(v24);

    v26 = sub_25154CF60();
    v27 = sub_2514F2AA8(v26, v25);

    v28 = *(v27 + 16);

    if (!v28)
    {
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_25154D430();
      MEMORY[0x253078930](0xD00000000000002CLL, 0x8000000251553D10);
      MEMORY[0x253078930](v22, v23);

      MEMORY[0x253078930](0xD000000000000038, 0x8000000251553D40);
      v35 = v42;
      v36 = v43;
      sub_2514F231C();
      swift_allocError();
      *v37 = v35;
      v37[1] = v36;
      swift_willThrow();
      v38 = *(v13 + 8);
      v38(v17, v12);
      return (v38)(v19, v12);
    }

    v41 = v17;
  }

  else
  {
    v41 = v17;
    (*(v4 + 8))(v7, v3);
  }

  v29 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes;
  swift_beginAccess();
  v30 = v44;

  MEMORY[0x253078950](v31);
  if (*((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_25154D320();
  }

  sub_25154D340();
  swift_endAccess();
  v32 = *(v30 + 40);
  swift_beginAccess();

  sub_2514EE22C(v33);
  swift_endAccess();
  v34 = *(v13 + 8);
  v34(v41, v12);
  return (v34)(v19, v12);
}

uint64_t sub_251543384(uint64_t a1)
{
  v2 = v1;
  sub_251548550();
  v52 = v4;
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v13 = sub_25154CF80();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple;
  sub_2514F6000(a1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v12);
  v51 = *(v14 + 48);
  v19 = v51(v12, 1, v13);
  v59 = v2;
  if (v19 == 1)
  {
    sub_2514F6080(v12);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v20 = sub_25154CF60();
    v21 = sub_2514F17E0(v20);
    v50 = a1;
    v22 = v21;

    v24 = (*(*v2 + 216))(v23);
    v25 = sub_2514F2C48(v24, v22);

    (*(v14 + 8))(v17, v13);
    v26 = *(v25 + 16);
    a1 = v50;

    if (v26)
    {
      v27 = *(a1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);
      *(a1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode) = v59;
    }
  }

  v55 = 0;
  v56 = 0xE000000000000000;
  sub_25154D430();
  v57 = v55;
  v58 = v56;
  MEMORY[0x253078930](0xD00000000000001BLL, 0x8000000251553C50);
  sub_2514F6000(a1 + v18, v10);
  v29 = sub_25154D270();
  v30 = a1;
  MEMORY[0x253078930](v29);

  MEMORY[0x253078930](0xD000000000000029, 0x8000000251553C70);
  v31 = v53;
  sub_2514F6000(v30 + v18, v53);
  if (v51(v31, 1, v13) == 1)
  {
    sub_2514F6080(v31);
    v32 = MEMORY[0x277D84F90];
  }

  else
  {
    v32 = sub_25154CF60();
    (*(v14 + 8))(v31, v13);
  }

  v33 = v59;
  v34 = MEMORY[0x253078980](v32, MEMORY[0x277D837D0]);
  v36 = v35;

  MEMORY[0x253078930](v34, v36);

  v37 = MEMORY[0x253078930](0xD00000000000002CLL, 0x8000000251553CA0);
  v38 = (*(*v33 + 216))(v37);
  v39 = v38;
  v40 = *(v38 + 16);
  if (v40)
  {
    v41 = sub_25154AEEC(*(v38 + 16), 0);
    v42 = sub_25154B434(&v55, v41 + 4, v40, v39);
    sub_2514F2298();
    if (v42 == v40)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v41 = MEMORY[0x277D84F90];
LABEL_12:
  v55 = v41;

  v43 = v54;
  sub_2514F0544(&v55);
  if (v43)
  {

    __break(1u);
  }

  else
  {

    v44 = MEMORY[0x253078980](v55, MEMORY[0x277D837D0]);
    v46 = v45;

    MEMORY[0x253078930](v44, v46);

    v47 = v57;
    v48 = v58;
    sub_2514F231C();
    swift_allocError();
    *v49 = v47;
    v49[1] = v48;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25154387C(char **a1, int a2)
{
  v5 = sub_25154CDE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251548550();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25154CF80();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F6000(v2 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_2514F6080(v13);
  }

  (*(v15 + 32))(v18, v13, v14);
  sub_25154CF50();
  if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D11B20])
  {
    v45 = a2;
    v46 = v18;
    v47 = v14;
    v48 = a1;
    (*(v6 + 96))(v9, v5);
    v20 = *v9;
    v21 = *(*v9 + 16);
    v44[1] = v20;
    if (v21)
    {
      v22 = (v20 + 32);
      v23 = MEMORY[0x277D84F90];
      do
      {
        v24 = *v22++;
        v49 = v24;
        v25 = sub_25154D500();
        v27 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_2514EF00C(0, *(v23 + 2) + 1, 1, v23);
        }

        v29 = *(v23 + 2);
        v28 = *(v23 + 3);
        if (v29 >= v28 >> 1)
        {
          v23 = sub_2514EF00C((v28 > 1), v29 + 1, 1, v23);
        }

        *(v23 + 2) = v29 + 1;
        v30 = &v23[16 * v29];
        *(v30 + 4) = v25;
        *(v30 + 5) = v27;
        --v21;
      }

      while (v21);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v49 = v23;
    sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
    sub_2514F22A0();
    v31 = sub_25154D230();
    v33 = v32;

    v49 = 0;
    v50 = 0xE000000000000000;
    if (v45)
    {
      if (v45 == 1)
      {
        v34 = 0x64695F65646F6ELL;
      }

      else
      {
        v34 = 0x5F7463656A627573;
      }

      if (v45 == 1)
      {
        v35 = 0xE700000000000000;
      }

      else
      {
        v35 = 0xEA00000000006469;
      }
    }

    else
    {
      v35 = 0xE500000000000000;
      v34 = 0x6469776F72;
    }

    v36 = v48;
    v37 = v46;
    MEMORY[0x253078930](v34, v35);

    MEMORY[0x253078930](0x28204E4920, 0xE500000000000000);
    MEMORY[0x253078930](v31, v33);

    MEMORY[0x253078930](41, 0xE100000000000000);
    v38 = v49;
    v39 = v50;
    v40 = *v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_2514EF00C(0, *(v40 + 2) + 1, 1, v40);
    }

    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_2514EF00C((v41 > 1), v42 + 1, 1, v40);
    }

    result = (*(v15 + 8))(v37, v47);
    *(v40 + 2) = v42 + 1;
    v43 = &v40[16 * v42];
    *(v43 + 4) = v38;
    *(v43 + 5) = v39;
    *v36 = v40;
  }

  else
  {
    (*(v15 + 8))(v18, v14);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_251543D58(char **a1, int a2)
{
  v103 = a2;
  v97 = a1;
  v3 = sub_25154CDD0();
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = *(v101 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v93 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v95 = &v93 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v93 - v9;
  sub_251548550();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v99 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v93 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v93 - v18;
  v20 = sub_25154CF80();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v96 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v98 = &v93 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v93 - v27;
  v29 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple;
  v100 = v2;
  sub_2514F6000(v2 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v19);
  v30 = *(v21 + 48);
  if (v30(v19, 1, v20) != 1)
  {
    v94 = v30;
    (*(v21 + 32))(v28, v19, v20);
    sub_25154CF40();
    v34 = v101;
    v33 = v102;
    if ((*(v101 + 88))(v10, v102) != *MEMORY[0x277D11AF8])
    {
      (*(v21 + 8))(v28, v20);
      (*(v34 + 8))(v10, v33);
      v31 = v33;
      v32 = v34;
      v30 = v94;
      goto LABEL_13;
    }

    v98 = v28;
    v99 = v20;
    v100 = v21;
    (*(v34 + 96))(v10, v33);
    v35 = *v10;
    v36 = *(*v10 + 16);
    v102 = *v10;
    if (v36)
    {
      v37 = (v35 + 32);
      v38 = MEMORY[0x277D84F90];
      do
      {
        v39 = *v37++;
        v104[0] = v39;
        v40 = sub_25154D500();
        v42 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_2514EF00C(0, *(v38 + 2) + 1, 1, v38);
        }

        v44 = *(v38 + 2);
        v43 = *(v38 + 3);
        if (v44 >= v43 >> 1)
        {
          v38 = sub_2514EF00C((v43 > 1), v44 + 1, 1, v38);
        }

        *(v38 + 2) = v44 + 1;
        v45 = &v38[16 * v44];
        *(v45 + 4) = v40;
        *(v45 + 5) = v42;
        --v36;
      }

      while (v36);
    }

    else
    {
      v38 = MEMORY[0x277D84F90];
    }

    v104[0] = v38;
    sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
    sub_2514F22A0();
    v76 = sub_25154D230();
    v78 = v77;

    if (v103)
    {
      v49 = v97;
      v17 = v98;
      if (v103 != 2)
      {
        (*(v100 + 8))(v98, v99);
      }

      v104[0] = 0;
      v104[1] = 0xE000000000000000;
      sub_25154D430();

      strcpy(v104, "object_id IN (");
      HIBYTE(v104[1]) = -18;
      MEMORY[0x253078930](v76, v78);

      MEMORY[0x253078930](41, 0xE100000000000000);
      v51 = v104[0];
      v54 = v104[1];
      v55 = *v49;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_51:
        v31 = *(v55 + 2);
        v56 = *(v55 + 3);
        v47 = v31 + 1;
        if (v31 < v56 >> 1)
        {
LABEL_52:
          result = (*(v100 + 8))(v17, v99);
LABEL_68:
          *(v55 + 2) = v47;
          v89 = &v55[16 * v31];
          *(v89 + 4) = v51;
          *(v89 + 5) = v54;
          *v49 = v55;
          return result;
        }

LABEL_74:
        v55 = sub_2514EF00C((v56 > 1), v47, 1, v55);
        goto LABEL_52;
      }
    }

    else
    {
      strcpy(v104, "rowid IN (");
      BYTE3(v104[1]) = 0;
      HIDWORD(v104[1]) = -369098752;
      MEMORY[0x253078930](v76, v78);

      MEMORY[0x253078930](41, 0xE100000000000000);
      v51 = v104[0];
      v54 = v104[1];
      v49 = v97;
      v55 = *v97;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v98;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_51;
      }
    }

    v55 = sub_2514EF00C(0, *(v55 + 2) + 1, 1, v55);
    goto LABEL_51;
  }

  sub_2514F6080(v19);
  v32 = v101;
  v31 = v102;
LABEL_13:
  v46 = v100;
  sub_2514F6000(v100 + v29, v17);
  if (v30(v17, 1, v20) == 1)
  {
    sub_2514F6080(v17);
LABEL_30:
    v63 = v46 + v29;
    v64 = v99;
    sub_2514F6000(v63, v99);
    if (v30(v64, 1, v20) == 1)
    {
      return sub_2514F6080(v64);
    }

    v47 = v96;
    (*(v21 + 32))(v96, v64, v20);
    v66 = v93;
    sub_25154CF40();
    if ((*(v32 + 88))(v66, v31) != *MEMORY[0x277D11B08])
    {
      (*(v21 + 8))(v47, v20);
      return (*(v32 + 8))(v66, v31);
    }

    v99 = v20;
    v100 = v21;
    v67 = *(v32 + 96);
    v49 = (v32 + 96);
    v67(v66, v31);
    v51 = *v66;
    v68 = *(*v66 + 16);
    if (!v68)
    {
      v55 = MEMORY[0x277D84F90];
LABEL_63:

      v104[0] = 40;
      v104[1] = 0xE100000000000000;
      v105 = v55;
      sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
      sub_2514F22A0();
      v85 = sub_25154D230();
      v87 = v86;

      MEMORY[0x253078930](v85, v87);

      MEMORY[0x253078930](41, 0xE100000000000000);
      v51 = v104[0];
      v54 = v104[1];
      v49 = v97;
      v55 = *v97;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_2514EF00C(0, *(v55 + 2) + 1, 1, v55);
      }

      v31 = *(v55 + 2);
      v88 = *(v55 + 3);
      v47 = v31 + 1;
      if (v31 >= v88 >> 1)
      {
        v55 = sub_2514EF00C((v88 > 1), v31 + 1, 1, v55);
      }

      result = (*(v100 + 8))(v96, v99);
      goto LABEL_68;
    }

    v69 = 0;
    v54 = (v51 + 40);
    v55 = MEMORY[0x277D84F90];
    while (1)
    {
      v56 = *(v51 + 16);
      if (v69 >= v56)
      {
        break;
      }

      v71 = *(v54 - 1);
      v70 = *v54;
      v104[0] = 0;
      v104[1] = 0xE000000000000000;
      if (v103 == 1)
      {
        v73 = 0xE500000000000000;
        v72 = 0x65756C6176;
      }

      else
      {
        if (v103 != 2)
        {

          sub_2514F231C();
          swift_allocError();
          *v91 = 0xD00000000000002ELL;
          v91[1] = 0x8000000251553BC0;
          swift_willThrow();
          (*(v100 + 8))(v96, v99);
        }

        v72 = 0x695F7463656A626FLL;
        v73 = 0xE900000000000064;
      }

      MEMORY[0x253078930](v72, v73);

      MEMORY[0x253078930](0x2720454B494C20, 0xE700000000000000);
      MEMORY[0x253078930](v71, v70);

      MEMORY[0x253078930](39, 0xE100000000000000);
      v31 = v104[0];
      v49 = v104[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_2514EF00C(0, *(v55 + 2) + 1, 1, v55);
      }

      v17 = *(v55 + 2);
      v74 = *(v55 + 3);
      v47 = v17 + 1;
      if (v17 >= v74 >> 1)
      {
        v55 = sub_2514EF00C((v74 > 1), v17 + 1, 1, v55);
      }

      ++v69;
      *(v55 + 2) = v47;
      v75 = &v55[16 * v17];
      *(v75 + 4) = v31;
      *(v75 + 5) = v49;
      v54 += 2;
      if (v68 == v69)
      {
        goto LABEL_63;
      }
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v94 = v30;
  v47 = v98;
  (*(v21 + 32))(v98, v17, v20);
  v48 = v95;
  sub_25154CF40();
  if ((*(v32 + 88))(v48, v31) != *MEMORY[0x277D11B00])
  {
    (*(v21 + 8))(v47, v20);
    (*(v32 + 8))(v48, v31);
    v46 = v100;
    v30 = v94;
    goto LABEL_30;
  }

  v99 = v20;
  v100 = v21;
  v50 = *(v32 + 96);
  v49 = (v32 + 96);
  v50(v48, v31);
  v51 = *v48;
  v52 = *(*v48 + 16);
  if (!v52)
  {
    v55 = MEMORY[0x277D84F90];
LABEL_57:

    v104[0] = 40;
    v104[1] = 0xE100000000000000;
    v105 = v55;
    sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
    sub_2514F22A0();
    v80 = sub_25154D230();
    v82 = v81;

    MEMORY[0x253078930](v80, v82);

    MEMORY[0x253078930](41, 0xE100000000000000);
    v51 = v104[0];
    v54 = v104[1];
    v49 = v97;
    v55 = *v97;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2514EF00C(0, *(v55 + 2) + 1, 1, v55);
    }

    v83 = v98;
    v31 = *(v55 + 2);
    v84 = *(v55 + 3);
    v47 = v31 + 1;
    if (v31 >= v84 >> 1)
    {
      v92 = v98;
      v55 = sub_2514EF00C((v84 > 1), v31 + 1, 1, v55);
      v83 = v92;
    }

    result = (*(v100 + 8))(v83, v99);
    goto LABEL_68;
  }

  v53 = 0;
  v54 = (v51 + 40);
  v55 = MEMORY[0x277D84F90];
  while (1)
  {
    v56 = *(v51 + 16);
    if (v53 >= v56)
    {
      __break(1u);
      goto LABEL_73;
    }

    v58 = *(v54 - 1);
    v57 = *v54;
    v104[0] = 0;
    v104[1] = 0xE000000000000000;
    if (v103 == 1)
    {
      v60 = 0xE500000000000000;
      v59 = 0x65756C6176;
      goto LABEL_23;
    }

    if (v103 != 2)
    {
      break;
    }

    v59 = 0x695F7463656A626FLL;
    v60 = 0xE900000000000064;
LABEL_23:

    MEMORY[0x253078930](v59, v60);

    MEMORY[0x253078930](0x2720454B494C20, 0xE700000000000000);
    MEMORY[0x253078930](v58, v57);

    MEMORY[0x253078930](39, 0xE100000000000000);
    v31 = v104[0];
    v49 = v104[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2514EF00C(0, *(v55 + 2) + 1, 1, v55);
    }

    v17 = *(v55 + 2);
    v61 = *(v55 + 3);
    v47 = v17 + 1;
    if (v17 >= v61 >> 1)
    {
      v55 = sub_2514EF00C((v61 > 1), v17 + 1, 1, v55);
    }

    ++v53;
    *(v55 + 2) = v47;
    v62 = &v55[16 * v17];
    *(v62 + 4) = v31;
    *(v62 + 5) = v49;
    v54 += 2;
    if (v52 == v53)
    {
      goto LABEL_57;
    }
  }

  sub_2514F231C();
  swift_allocError();
  *v90 = 0xD00000000000002ELL;
  v90[1] = 0x8000000251553BC0;
  swift_willThrow();
  (*(v100 + 8))(v98, v99);
}

uint64_t sub_251544B58(char **a1, int a2, _DWORD *a3)
{
  v52 = a2;
  v55 = a1;
  v6 = sub_25154CE30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251548550();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25154CF80();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v3 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple;
  v21 = v20;
  sub_2514F6000(v19, v14);
  if ((*(v21 + 48))(v14, 1, v15) == 1)
  {
    return sub_2514F6080(v14);
  }

  (*(v21 + 32))(v18, v14, v15);
  sub_25154CF70();
  if ((*(v7 + 88))(v10, v6) == *a3)
  {
    v49 = v18;
    v50 = v21;
    v48[0] = v4;
    (*(v7 + 96))(v10, v6);
    v23 = *v10;
    v24 = v10[2];

    v25 = *(v23 + 16);
    v51 = v15;
    v48[1] = v23;
    if (v25)
    {
      v26 = (v23 + 32);
      v27 = MEMORY[0x277D84F90];
      do
      {
        v28 = *v26++;
        v53 = v28;
        v29 = sub_25154D500();
        v31 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_2514EF00C(0, *(v27 + 2) + 1, 1, v27);
        }

        v33 = *(v27 + 2);
        v32 = *(v27 + 3);
        if (v33 >= v32 >> 1)
        {
          v27 = sub_2514EF00C((v32 > 1), v33 + 1, 1, v27);
        }

        *(v27 + 2) = v33 + 1;
        v34 = &v27[16 * v33];
        *(v34 + 4) = v29;
        *(v34 + 5) = v31;
        --v25;
      }

      while (v25);
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v53 = v27;
    sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
    sub_2514F22A0();
    v35 = sub_25154D230();
    v37 = v36;

    v53 = 0;
    v54 = 0xE000000000000000;
    if (v52)
    {
      if (v52 == 1)
      {
        v38 = 0x7475626972747461;
      }

      else
      {
        v38 = 0xD000000000000011;
      }

      if (v52 == 1)
      {
        v39 = 0xEE00657079745F65;
      }

      else
      {
        v39 = 0x8000000251553BF0;
      }

      v40 = v49;
      MEMORY[0x253078930](v38, v39);

      MEMORY[0x253078930](0x28204E4920, 0xE500000000000000);
      MEMORY[0x253078930](v35, v37);

      MEMORY[0x253078930](41, 0xE100000000000000);
      v41 = v53;
      v42 = v54;
      v43 = *v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_2514EF00C(0, *(v43 + 2) + 1, 1, v43);
      }

      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_2514EF00C((v44 > 1), v45 + 1, 1, v43);
      }

      result = (*(v50 + 8))(v40, v51);
      *(v43 + 2) = v45 + 1;
      v46 = &v43[16 * v45];
      *(v46 + 4) = v41;
      *(v46 + 5) = v42;
      *v55 = v43;
    }

    else
    {

      sub_2514F231C();
      swift_allocError();
      *v47 = 0xD000000000000031;
      v47[1] = 0x8000000251553C10;
      swift_willThrow();
      return (*(v50 + 8))(v49, v51);
    }
  }

  else
  {
    (*(v21 + 8))(v18, v15);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_2515450B4(char **a1)
{
  v91 = a1;
  v87 = 0;
  v2 = sub_25154CDE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  v5 = MEMORY[0x28223BE20](v2);
  v92 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v78 - v8;
  v103 = MEMORY[0x277D84FA0];
  v10 = *(v1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);
  v84 = v1;
  v88 = v7;
  v85 = &v78 - v8;
  if (!v10)
  {
    goto LABEL_17;
  }

  v98 = v3;
  swift_beginAccess();
  v11 = *(v1 + 40);
  v12 = *(*v10 + 216);
  swift_retain_n();

  v14 = v12(v13);
  v15 = sub_2514F2C48(v14, v11);

  v16 = *(v15 + 16);
  if (!v16)
  {
    goto LABEL_5;
  }

  v17 = sub_25154AEEC(*(v15 + 16), 0);
  v18 = sub_25154B434(&v99, v17 + 4, v16, v15);

  sub_2514F2298();
  if (v18 != v16)
  {
    __break(1u);
LABEL_5:
    v17 = MEMORY[0x277D84F90];
  }

  v99 = v17;
  v19 = v87;
  sub_2514F0544(&v99);
  v87 = v19;
  if (v19)
  {
LABEL_72:

    __break(1u);
    return result;
  }

  v20 = *(v99 + 2);
  if (v20)
  {
    v21 = *v91;
    v97 = v99;
    v22 = (v99 + 40);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v99 = 0;
      v100 = 0xE000000000000000;

      sub_25154D430();
      v25 = v10[2];
      v26 = v10[3];

      v99 = v25;
      v100 = v26;
      MEMORY[0x253078930](46, 0xE100000000000000);
      v28 = v10[2];
      v27 = v10[3];

      MEMORY[0x253078930](v28, v27);

      MEMORY[0x253078930](95, 0xE100000000000000);
      MEMORY[0x253078930](v23, v24);
      MEMORY[0x253078930](0x20544F4E20534920, 0xEC0000004C4C554ELL);
      v29 = v99;
      v30 = v100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2514EF00C(0, *(v21 + 2) + 1, 1, v21);
      }

      v32 = *(v21 + 2);
      v31 = *(v21 + 3);
      if (v32 >= v31 >> 1)
      {
        v21 = sub_2514EF00C((v31 > 1), v32 + 1, 1, v21);
      }

      *(v21 + 2) = v32 + 1;
      v33 = &v21[16 * v32];
      *(v33 + 4) = v29;
      *(v33 + 5) = v30;
      sub_2514EF228(&v99, v23, v24);

      v22 += 2;
      --v20;
    }

    while (v20);

    *v91 = v21;
  }

  else
  {
  }

  v1 = v84;
  v2 = v88;
  v9 = v85;
  v3 = v98;
LABEL_17:
  v34 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes;
  swift_beginAccess();
  v35 = *(v1 + v34);
  if (v35 >> 62)
  {
    goto LABEL_71;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

  swift_beginAccess();
  if (v36)
  {
    v37 = 0;
    v83 = v35 & 0xC000000000000001;
    v82 = v35 & 0xFFFFFFFFFFFFFF8;
    v81 = v35 + 32;
    v96 = (v3 + 88);
    v95 = *MEMORY[0x277D11B18];
    v90 = (v3 + 8);
    v89 = (v3 + 96);
    v78 = xmmword_25154E670;
    v79 = v35;
    v80 = v36;
    do
    {
      if (v83)
      {
        v38 = MEMORY[0x253078AC0](v37, v35);
        v39 = __OFADD__(v37, 1);
        v40 = v37 + 1;
        if (v39)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v37 >= *(v82 + 16))
        {
          goto LABEL_69;
        }

        v38 = *(v81 + 8 * v37);

        v39 = __OFADD__(v37, 1);
        v40 = v37 + 1;
        if (v39)
        {
LABEL_66:
          __break(1u);
          break;
        }
      }

      v86 = v40;
      v41 = *(v1 + 40);
      v42 = OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple;

      v94 = v42;
      sub_25154CF50();
      v93 = *v96;
      v43 = v93(v9, v2);
      if (v43 == v95)
      {
        (*v89)(v9, v2);
        v44 = *v9;
        v45 = *(v9 + 8);
        sub_2514F619C(0, &qword_27F43BD88, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = v78;
        *(inited + 32) = v44;
        v47 = inited + 32;
        *(inited + 40) = v45;
        v48 = sub_25154872C(inited);
        swift_setDeallocating();
        sub_251548888(v47);
      }

      else
      {
        (*v90)(v9, v2);
        v48 = MEMORY[0x277D84FA0];
      }

      v1 = sub_2514F2C48(v48, v41);

      v3 = *(v1 + 16);
      if (v3)
      {
        sub_2514F619C(0, &qword_27F43BD88, MEMORY[0x277D84560]);
        v49 = swift_allocObject();
        v50 = _swift_stdlib_malloc_size(v49);
        v51 = v50 - 32;
        if (v50 < 32)
        {
          v51 = v50 - 17;
        }

        v49[2] = v3;
        v49[3] = 2 * (v51 >> 4);
        v98 = sub_25154B434(&v99, v49 + 4, v3, v1);
        v2 = v101;
        v9 = v102;

        sub_2514F2298();
        if (v98 != v3)
        {
          goto LABEL_70;
        }

        v9 = v85;
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
      }

      v99 = v49;
      v52 = v87;
      sub_2514F0544(&v99);
      v87 = v52;
      if (v52)
      {
        goto LABEL_72;
      }

      v3 = v99;
      v98 = *(v99 + 2);
      if (v98)
      {
        v9 = 0;
        v35 = v103;
        v97 = v99 + 32;
        v53 = v103 + 56;
        v2 = v88;
        while (1)
        {
          if (v9 >= *(v3 + 2))
          {
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            v36 = sub_25154D4A0();
            goto LABEL_19;
          }

          v54 = &v97[16 * v9];
          v56 = *v54;
          v55 = *(v54 + 1);
          if (*(v35 + 16))
          {
            v57 = *(v35 + 40);
            sub_25154D590();

            sub_25154D2B0();
            v58 = sub_25154D5B0();
            v59 = -1 << *(v35 + 32);
            v60 = v58 & ~v59;
            if ((*(v53 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
            {
              v1 = ~v59;
              while (1)
              {
                v61 = (*(v35 + 48) + 16 * v60);
                v62 = *v61 == v56 && v61[1] == v55;
                if (v62 || (sub_25154D520() & 1) != 0)
                {
                  break;
                }

                v60 = (v60 + 1) & v1;
                if (((*(v53 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
                {
                  goto LABEL_52;
                }
              }

LABEL_62:

              goto LABEL_39;
            }
          }

          else
          {
          }

LABEL_52:
          v1 = v38 + v94;
          v63 = v92;
          sub_25154CF50();
          v64 = v93(v63, v2);
          if (v64 == v95)
          {
            (*v89)(v63, v2);
            v1 = v63[1];
            if (*v63 == v56 && v1 == v55)
            {
              v65 = v63[1];

LABEL_57:
              v99 = 0;
              v100 = 0xE000000000000000;
              sub_25154D430();
              v69 = *(v38 + 16);
              v68 = *(v38 + 24);

              v99 = v69;
              v100 = v68;
              MEMORY[0x253078930](46, 0xE100000000000000);
              v70 = *(v38 + 16);
              v71 = *(v38 + 24);

              MEMORY[0x253078930](v70, v71);

              MEMORY[0x253078930](95, 0xE100000000000000);
              MEMORY[0x253078930](v56, v55);

              MEMORY[0x253078930](0x20544F4E20534920, 0xEC0000004C4C554ELL);
              v72 = v99;
              v73 = v100;
              v1 = *v91;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_2514EF00C(0, *(v1 + 16) + 1, 1, v1);
              }

              v75 = *(v1 + 16);
              v74 = *(v1 + 24);
              if (v75 >= v74 >> 1)
              {
                v1 = sub_2514EF00C((v74 > 1), v75 + 1, 1, v1);
              }

              *(v1 + 16) = v75 + 1;
              v76 = v1 + 16 * v75;
              *(v76 + 32) = v72;
              *(v76 + 40) = v73;
              *v91 = v1;
              v2 = v88;
              goto LABEL_39;
            }

            v66 = v63[1];
            v67 = sub_25154D520();

            if (v67)
            {
              goto LABEL_57;
            }

            goto LABEL_62;
          }

          (*v90)(v63, v2);
LABEL_39:
          if (++v9 == v98)
          {

            v9 = v85;
            v35 = v79;
            goto LABEL_22;
          }
        }
      }

      v2 = v88;
LABEL_22:
      v37 = v86;
      v1 = v84;
    }

    while (v86 != v80);
  }
}

uint64_t sub_251545BD4()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);

  if (v2)
  {
    do
    {
      swift_beginAccess();
      v3 = *(v2 + 40);

      sub_2514EE22C(v4);
      v5 = *(v2 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);

      v2 = v5;
    }

    while (v5);
  }

  return v1;
}

char *sub_251545C88()
{
  v1 = sub_25154277C();
  v2 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);

  if (!v2)
  {
    return v1;
  }

  do
  {

    v3 = sub_25154277C();
    sub_2514EE22C(v3);

    v4 = *(v2 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);

    v2 = v4;
  }

  while (v4);
  return v1;
}

uint64_t sub_251545D24()
{
  v0 = sub_2515488DC();
  if (v0 > 1)
  {
    if (v0 == 2)
    {
      return 0x6E6F6974616C6572;
    }

    else
    {
      return 0;
    }
  }

  else if (v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 0x7365646F6ELL;
  }
}

char *sub_251545DBC(int a1)
{
  v2 = v1;
  v206 = a1;
  v201 = sub_25154CDD0();
  v205 = *(v201 - 1);
  v3 = *(v205 + 64);
  MEMORY[0x28223BE20](v201);
  v204 = (&v196 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v207 = sub_25154CE30();
  v209 = *(v207 - 1);
  v5 = v209[8];
  v6 = MEMORY[0x28223BE20](v207);
  v202 = &v196 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v203 = &v196 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = (&v196 - v10);
  v12 = sub_25154CDE0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v196 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251548550();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v196 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25154CF80();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v196 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F6000(v2 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_2514F6080(v20);
LABEL_5:
    sub_2514F231C();
    swift_allocError();
    *v27 = 0xD000000000000048;
    v27[1] = 0x8000000251553B70;
    return swift_willThrow();
  }

  (*(v22 + 32))(v25, v20, v21);
  v200 = v2;
  v26 = sub_2515488DC();
  if (v26 == 3)
  {
    (*(v22 + 8))(v25, v21);
    goto LABEL_5;
  }

  v29 = v26;
  v198 = v22;
  v199 = v21;
  v220 = MEMORY[0x277D84FA0];
  sub_25154CF50();
  v139 = (*(v13 + 88))(v16, v12) == *MEMORY[0x277D11B18];
  v197 = v25;
  if (v139)
  {
    (*(v13 + 96))(v16, v12);
    v30 = *v16;
    v31 = v16[1];
    v213 = 0;
    v214 = 0xE000000000000000;
    v35 = v207;
    if (v29)
    {
      if (v29 == 1)
      {
        v32 = 0x64695F65646F6ELL;
      }

      else
      {
        v32 = 0x5F7463656A627573;
      }

      if (v29 == 1)
      {
        v33 = 0xE700000000000000;
      }

      else
      {
        v33 = 0xEA00000000006469;
      }
    }

    else
    {
      v33 = 0xE500000000000000;
      v32 = 0x6469776F72;
    }

    MEMORY[0x253078930](v32, v33);

    MEMORY[0x253078930](542327072, 0xE400000000000000);
    if (v206)
    {
      v36 = 0;
      v37 = 0xE000000000000000;
    }

    else
    {
      v38 = *(v200 + 24);
      v218 = *(v200 + 16);
      v219 = v38;

      MEMORY[0x253078930](95, 0xE100000000000000);
      v36 = v218;
      v37 = v219;
    }

    MEMORY[0x253078930](v36, v37);

    v39 = v30;
    v40 = v30;
    v41 = v31;
    MEMORY[0x253078930](v40, v31);
    v42 = v213;
    v43 = v214;
    v44 = sub_2514EF00C(0, 1, 1, MEMORY[0x277D84F90]);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    v210 = v44;
    if (v46 >= v45 >> 1)
    {
      v210 = sub_2514EF00C((v45 > 1), v46 + 1, 1, v210);
    }

    v47 = v210;
    *(v210 + 2) = v46 + 1;
    v48 = &v47[16 * v46];
    *(v48 + 4) = v42;
    *(v48 + 5) = v43;
    sub_2514EF228(&v213, v39, v41);

    v34 = v197;
  }

  else
  {
    v34 = v25;
    (*(v13 + 8))(v16, v12);
    v210 = MEMORY[0x277D84F90];
    v35 = v207;
  }

  sub_25154CF70();
  v49 = v209;
  v50 = v209[11];
  if (v50(v11, v35) == *MEMORY[0x277D11B40])
  {
    (v49[12])(v11, v35);
    v51 = *v11;
    v52 = v11[1];
    v213 = 0;
    v214 = 0xE000000000000000;
    v53 = v199;
    if (!v29)
    {

      v58 = v34;
      v59 = 0x8000000251553C10;
      sub_2514F231C();
      swift_allocError();
      v61 = 0xD000000000000031;
LABEL_91:
      *v60 = v61;
      v60[1] = v59;
      swift_willThrow();
      (*(v198 + 8))(v58, v53);
      goto LABEL_92;
    }

    if (v29 == 1)
    {
      v54 = 0x7475626972747461;
    }

    else
    {
      v54 = 0xD000000000000011;
    }

    if (v29 == 1)
    {
      v55 = 0xEE00657079745F65;
    }

    else
    {
      v55 = 0x8000000251553BF0;
    }

    MEMORY[0x253078930](v54, v55);

    MEMORY[0x253078930](542327072, 0xE400000000000000);
    v196 = v50;
    if (v206)
    {
      v56 = 0;
      v57 = 0xE000000000000000;
    }

    else
    {
      v62 = *(v200 + 24);
      v218 = *(v200 + 16);
      v219 = v62;

      MEMORY[0x253078930](95, 0xE100000000000000);
      v56 = v218;
      v57 = v219;
    }

    MEMORY[0x253078930](v56, v57);

    v63 = v51;
    MEMORY[0x253078930](v51, v52);
    v64 = v213;
    v65 = v214;
    v66 = v210;
    v67 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_2514EF00C(0, *(v66 + 2) + 1, 1, v66);
    }

    v69 = *(v66 + 2);
    v68 = *(v66 + 3);
    v210 = v66;
    if (v69 >= v68 >> 1)
    {
      v210 = sub_2514EF00C((v68 > 1), v69 + 1, 1, v210);
    }

    v70 = v210;
    *(v210 + 2) = v69 + 1;
    v71 = &v70[16 * v69];
    *(v71 + 4) = v64;
    *(v71 + 5) = v65;
    sub_2514EF228(&v213, v63, v67);

    v49 = v209;
    v50 = v196;
    v34 = v197;
  }

  else
  {
    (v49[1])(v11, v35);
  }

  v72 = v203;
  sub_25154CF70();
  if (v50(v72, v35) != *MEMORY[0x277D11B38])
  {
    LODWORD(v207) = v29;
    (v49[1])(v72, v35);
LABEL_53:
    v81 = v204;
    v80 = v205;
    v82 = v202;
    goto LABEL_60;
  }

  (v49[12])(v72, v35);
  v73 = *v72;
  v74 = v72[1];
  v75 = v72[2];

  if (!v75)
  {
    LODWORD(v207) = v29;
    goto LABEL_53;
  }

  v213 = 0;
  v214 = 0xE000000000000000;
  if (!v29)
  {
LABEL_72:

    sub_2514F231C();
    swift_allocError();
    *v100 = 0xD000000000000031;
    v100[1] = 0x8000000251553C10;
    swift_willThrow();
    (*(v198 + 8))(v34, v199);
LABEL_92:
  }

  LODWORD(v207) = v29;
  if (v29 == 1)
  {
    v76 = 0x7475626972747461;
  }

  else
  {
    v76 = 0xD000000000000011;
  }

  if (v29 == 1)
  {
    v77 = 0xEE00657079745F65;
  }

  else
  {
    v77 = 0x8000000251553BF0;
  }

  MEMORY[0x253078930](v76, v77);

  MEMORY[0x253078930](542327072, 0xE400000000000000);
  v196 = v50;
  if (v206)
  {
    v78 = 0;
    v79 = 0xE000000000000000;
  }

  else
  {
    v83 = *(v200 + 24);
    v218 = *(v200 + 16);
    v219 = v83;

    MEMORY[0x253078930](95, 0xE100000000000000);
    v78 = v218;
    v79 = v219;
  }

  MEMORY[0x253078930](v78, v79);

  MEMORY[0x253078930](v74, v75);
  v84 = v213;
  v85 = v214;
  v86 = v210;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_184;
  }

  while (1)
  {
    v88 = *(v86 + 2);
    v87 = *(v86 + 3);
    v210 = v86;
    if (v88 >= v87 >> 1)
    {
      v210 = sub_2514EF00C((v87 > 1), v88 + 1, 1, v210);
    }

    v89 = v210;
    *(v210 + 2) = v88 + 1;
    v90 = &v89[16 * v88];
    *(v90 + 4) = v84;
    *(v90 + 5) = v85;
    sub_2514EF228(&v213, v74, v75);

    v81 = v204;
    v80 = v205;
    v49 = v209;
    v82 = v202;
    v50 = v196;
LABEL_60:
    sub_25154CF70();
    if (v50(v82, v35) == *MEMORY[0x277D11B30])
    {
      (v49[12])(v82, v35);
      v91 = *v82;
      v92 = *(v82 + 1);
      v93 = *(v82 + 2);

      v94 = v208;
      if (v93)
      {
        v213 = 0;
        v214 = 0xE000000000000000;
        if (!v207)
        {
          goto LABEL_72;
        }

        if (v207 == 1)
        {
          v95 = 0x7475626972747461;
        }

        else
        {
          v95 = 0xD000000000000011;
        }

        if (v207 == 1)
        {
          v96 = 0xEE00657079745F65;
        }

        else
        {
          v96 = 0x8000000251553BF0;
        }

        MEMORY[0x253078930](v95, v96);

        MEMORY[0x253078930](542327072, 0xE400000000000000);
        v97 = v34;
        if (v206)
        {
          v98 = 0;
          v99 = 0xE000000000000000;
        }

        else
        {
          v101 = *(v200 + 24);
          v218 = *(v200 + 16);
          v219 = v101;

          MEMORY[0x253078930](95, 0xE100000000000000);
          v98 = v218;
          v99 = v219;
        }

        MEMORY[0x253078930](v98, v99);

        MEMORY[0x253078930](v92, v93);
        v102 = v213;
        v103 = v214;
        v104 = v210;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_2514EF00C(0, *(v104 + 2) + 1, 1, v104);
        }

        v106 = *(v104 + 2);
        v105 = *(v104 + 3);
        v210 = v104;
        if (v106 >= v105 >> 1)
        {
          v210 = sub_2514EF00C((v105 > 1), v106 + 1, 1, v210);
        }

        v107 = v210;
        *(v210 + 2) = v106 + 1;
        v108 = &v107[16 * v106];
        *(v108 + 4) = v102;
        *(v108 + 5) = v103;
        sub_2514EF228(&v213, v92, v93);

        v34 = v97;
        v81 = v204;
        v80 = v205;
      }
    }

    else
    {
      (v49[1])(v82, v35);
      v94 = v208;
    }

    sub_25154CF40();
    v109 = v201;
    if ((*(v80 + 88))(v81, v201) == *MEMORY[0x277D11AE8])
    {
      (*(v80 + 96))(v81, v109);
      v111 = *v81;
      v110 = v81[1];
      v213 = 0;
      v214 = 0xE000000000000000;
      v53 = v199;
      if (!v207)
      {

        v58 = v34;
        v59 = 0x8000000251553BC0;
        sub_2514F231C();
        swift_allocError();
        v61 = 0xD00000000000002ELL;
        goto LABEL_91;
      }

      if (v207 == 1)
      {
        v112 = 0x65756C6176;
      }

      else
      {
        v112 = 0x695F7463656A626FLL;
      }

      if (v207 == 1)
      {
        v113 = 0xE500000000000000;
      }

      else
      {
        v113 = 0xE900000000000064;
      }

      MEMORY[0x253078930](v112, v113);

      MEMORY[0x253078930](542327072, 0xE400000000000000);
      if (v206)
      {
        v114 = 0;
        v115 = 0xE000000000000000;
      }

      else
      {
        v116 = *(v200 + 24);
        v218 = *(v200 + 16);
        v219 = v116;

        MEMORY[0x253078930](95, 0xE100000000000000);
        v114 = v218;
        v115 = v219;
      }

      MEMORY[0x253078930](v114, v115);

      MEMORY[0x253078930](v111, v110);
      v117 = v213;
      v118 = v214;
      v119 = v210;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = sub_2514EF00C(0, *(v119 + 2) + 1, 1, v119);
      }

      v121 = *(v119 + 2);
      v120 = *(v119 + 3);
      v210 = v119;
      if (v121 >= v120 >> 1)
      {
        v210 = sub_2514EF00C((v120 > 1), v121 + 1, 1, v210);
      }

      v122 = v210;
      *(v210 + 2) = v121 + 1;
      v123 = &v122[16 * v121];
      *(v123 + 4) = v117;
      *(v123 + 5) = v118;
      sub_2514EF228(&v213, v111, v110);
    }

    else
    {
      (*(v80 + 8))(v81, v109);
    }

    v124 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes;
    v125 = v200;
    swift_beginAccess();
    v34 = *(v125 + v124);
    if (v34 >> 62)
    {
      goto LABEL_182;
    }

    v205 = v34 & 0xFFFFFFFFFFFFFF8;
    v126 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_101:

    if (v126)
    {
      v127 = 0;
      v204 = (v34 & 0xC000000000000001);
      v203 = v34;
      v202 = v126;
      do
      {
        if (v204)
        {
          v129 = MEMORY[0x253078AC0](v127, v34);
          v130 = v127 + 1;
          if (__OFADD__(v127, 1))
          {
LABEL_143:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v127 >= *(v205 + 16))
          {
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            v205 = v34 & 0xFFFFFFFFFFFFFF8;
            v126 = sub_25154D4A0();
            goto LABEL_101;
          }

          v128 = *(v34 + 8 * v127 + 32);

          v130 = v127 + 1;
          if (__OFADD__(v127, 1))
          {
            goto LABEL_143;
          }
        }

        v207 = v130;
        v209 = v129;
        v131 = *(v129 + 40);
        v132 = *(v131 + 16);
        if (v132)
        {
          v208 = v94;
          sub_2514F619C(0, &qword_27F43BD88, MEMORY[0x277D84560]);
          v133 = swift_allocObject();
          v134 = _swift_stdlib_malloc_size(v133);
          v135 = v134 - 32;
          if (v134 < 32)
          {
            v135 = v134 - 17;
          }

          v133[2] = v132;
          v133[3] = 2 * (v135 >> 4);
          v136 = sub_25154B434(&v213, v133 + 4, v132, v131);
          v34 = v215;
          v94 = v216;

          sub_2514F2298();
          if (v136 != v132)
          {
            goto LABEL_181;
          }

          v94 = v208;
        }

        else
        {
          v133 = MEMORY[0x277D84F90];
        }

        v213 = v133;
        sub_2514F0544(&v213);
        if (v94)
        {
          goto LABEL_185;
        }

        v137 = v213;
        v138 = *(v213 + 2);
        if (!v138)
        {

          ++v127;
          v139 = v207 == v202;
          goto LABEL_115;
        }

        v208 = 0;
        v94 = 0;
        v201 = v213 + 32;
        do
        {
          if (v94 >= *(v137 + 2))
          {
            goto LABEL_179;
          }

          v140 = &v201[16 * v94];
          v141 = *v140;
          v142 = v140[1];
          v34 = v220;
          if (!*(v220 + 16))
          {

LABEL_132:
            v150 = 0xE000000000000000;
            v213 = 0;
            v214 = 0xE000000000000000;
            sub_25154D430();
            v151 = v209;
            v153 = v209[2];
            v152 = v209[3];

            v213 = v153;
            v214 = v152;
            MEMORY[0x253078930](46, 0xE100000000000000);
            v155 = v151[2];
            v154 = v151[3];

            MEMORY[0x253078930](v155, v154);

            MEMORY[0x253078930](95, 0xE100000000000000);
            MEMORY[0x253078930](v141, v142);
            MEMORY[0x253078930](542327072, 0xE400000000000000);
            if (v206)
            {
              v156 = 0;
            }

            else
            {
              v157 = *(v200 + 24);
              v211 = *(v200 + 16);
              v212 = v157;

              MEMORY[0x253078930](95, 0xE100000000000000);
              v156 = v211;
              v150 = v212;
            }

            MEMORY[0x253078930](v156, v150);

            MEMORY[0x253078930](v141, v142);
            v34 = v213;
            v158 = v214;
            v159 = v210;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v159 = sub_2514EF00C(0, *(v159 + 2) + 1, 1, v159);
            }

            v161 = *(v159 + 2);
            v160 = *(v159 + 3);
            v210 = v159;
            if (v161 >= v160 >> 1)
            {
              v210 = sub_2514EF00C((v160 > 1), v161 + 1, 1, v210);
            }

            v162 = v210;
            *(v210 + 2) = v161 + 1;
            v163 = &v162[16 * v161];
            *(v163 + 4) = v34;
            *(v163 + 5) = v158;
            sub_2514EF228(&v213, v141, v142);
            goto LABEL_119;
          }

          v143 = *(v220 + 40);
          sub_25154D590();

          sub_25154D2B0();
          v144 = sub_25154D5B0();
          v145 = -1 << *(v34 + 32);
          v146 = v144 & ~v145;
          if (((*(v34 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) == 0)
          {
            goto LABEL_132;
          }

          v147 = ~v145;
          while (1)
          {
            v148 = (*(v34 + 48) + 16 * v146);
            v149 = *v148 == v141 && v148[1] == v142;
            if (v149 || (sub_25154D520() & 1) != 0)
            {
              break;
            }

            v146 = (v146 + 1) & v147;
            if (((*(v34 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) == 0)
            {
              goto LABEL_132;
            }
          }

LABEL_119:

          ++v94;
        }

        while (v94 != v138);

        v127 = v207;
        v94 = v208;
        v139 = v207 == v202;
LABEL_115:
        v34 = v203;
      }

      while (!v139);
    }

    v35 = *(v200 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);
    if (!v35)
    {
      goto LABEL_176;
    }

    v164 = *(*v35 + 208);
    v34 = *v35 + 208;
    v165 = *(v200 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);

    v86 = v164(v166);
    v167 = *(v86 + 2);
    if (!v167)
    {
      break;
    }

    v208 = v94;
    v75 = sub_25154AEEC(v167, 0);
    v34 = sub_25154B434(&v213, v75 + 4, v167, v86);
    v84 = v214;
    v74 = v216;
    v85 = v217;

    sub_2514F2298();
    if (v34 == v167)
    {
      v94 = v208;
      goto LABEL_149;
    }

    __break(1u);
LABEL_184:
    v86 = sub_2514EF00C(0, *(v86 + 2) + 1, 1, v86);
  }

  v75 = MEMORY[0x277D84F90];
LABEL_149:
  v213 = v75;
  sub_2514F0544(&v213);
  if (v94)
  {
LABEL_185:

    __break(1u);
  }

  else
  {

    v168 = v213;
    v209 = *(v213 + 2);
    if (v209)
    {
      v169 = 0;
      v207 = v213 + 32;
      v208 = 0;
      while (1)
      {
        if (v169 >= *(v168 + 2))
        {
          goto LABEL_180;
        }

        v171 = &v207[16 * v169];
        v173 = *v171;
        v172 = v171[1];
        v174 = v220;
        if (*(v220 + 16))
        {
          v175 = *(v220 + 40);
          sub_25154D590();

          sub_25154D2B0();
          v176 = sub_25154D5B0();
          v177 = -1 << *(v174 + 32);
          v178 = v176 & ~v177;
          if ((*(v174 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178))
          {
            v179 = ~v177;
            while (1)
            {
              v180 = (*(v174 + 48) + 16 * v178);
              v181 = *v180 == v173 && v180[1] == v172;
              if (v181 || (sub_25154D520() & 1) != 0)
              {
                break;
              }

              v178 = (v178 + 1) & v179;
              if (((*(v174 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178) & 1) == 0)
              {
                goto LABEL_166;
              }
            }

            v94 = v208;
            goto LABEL_153;
          }
        }

        else
        {
        }

LABEL_166:

        sub_2514EF228(&v213, v173, v172);

        v182 = 0xE000000000000000;
        v213 = 0;
        v214 = 0xE000000000000000;
        sub_25154D430();
        v184 = *(v35 + 2);
        v183 = *(v35 + 3);

        v213 = v184;
        v214 = v183;
        MEMORY[0x253078930](46, 0xE100000000000000);
        v186 = *(v35 + 2);
        v185 = *(v35 + 3);

        MEMORY[0x253078930](v186, v185);

        MEMORY[0x253078930](95, 0xE100000000000000);
        MEMORY[0x253078930](v173, v172);
        MEMORY[0x253078930](542327072, 0xE400000000000000);
        if (v206)
        {
          v187 = 0;
        }

        else
        {
          v188 = *(v200 + 24);
          v211 = *(v200 + 16);
          v212 = v188;

          MEMORY[0x253078930](95, 0xE100000000000000);
          v187 = v211;
          v182 = v212;
        }

        v94 = v208;
        MEMORY[0x253078930](v187, v182);

        MEMORY[0x253078930](v173, v172);

        v189 = v213;
        v190 = v214;
        v191 = v210;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v191 = sub_2514EF00C(0, *(v191 + 2) + 1, 1, v191);
        }

        v193 = *(v191 + 2);
        v192 = *(v191 + 3);
        v210 = v191;
        if (v193 >= v192 >> 1)
        {
          v210 = sub_2514EF00C((v192 > 1), v193 + 1, 1, v210);
        }

        v194 = v210;
        *(v210 + 2) = v193 + 1;
        v195 = &v194[16 * v193];
        *(v195 + 4) = v189;
        *(v195 + 5) = v190;
LABEL_153:
        ++v169;
        v34 = v199;
        v170 = v198;
        if (v169 == v209)
        {

          goto LABEL_177;
        }
      }
    }

LABEL_176:
    v34 = v199;
    v170 = v198;
LABEL_177:
    (*(v170 + 8))(v197, v34);

    return v210;
  }

  return result;
}

uint64_t sub_251547590(int a1)
{
  v4 = v2;
  v128 = a1;
  v5 = sub_25154CDE0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode;
  v118 = v1;
  v12 = *(v1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);
  v111 = v8;
  v110 = v10;
  if (v12)
  {
    goto LABEL_2;
  }

  v15 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes;
  v16 = v118;
  swift_beginAccess();
  v17 = *(v16 + v15);
  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    return MEMORY[0x277D84F90];
  }

  if (v17 < 0)
  {
    v99 = *(v16 + v15);
  }

  if (!sub_25154D4A0())
  {
    return MEMORY[0x277D84F90];
  }

LABEL_6:
  v12 = *(v118 + v11);
  if (!v12)
  {
    v3 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

LABEL_2:

  v13 = sub_2514EE660(0);
  if (v2)
  {
LABEL_3:

    return v3;
  }

  v116 = v13;
  v115 = v14;
  v18 = v118;
  swift_beginAccess();
  v19 = v18[5];
  v20 = *(*v12 + 216);

  v22 = v20(v21);
  v23 = sub_2514F2C48(v22, v19);

  v24 = *(v23 + 16);
  if (!v24)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_12:
    v121 = v25;
    sub_2514F0544(&v121);
    v117 = 0;
    v114 = v6;

    v27 = *(v121 + 16);
    v113 = v121;
    if (v27)
    {
      v28 = (v121 + 40);
      v29 = MEMORY[0x277D84F90];
      do
      {
        v31 = *(v28 - 1);
        v30 = *v28;
        v121 = 0;
        v122 = 0xE000000000000000;
        if (v128)
        {

          v32 = 0;
          v33 = 0xE000000000000000;
        }

        else
        {
          v34 = v118[3];
          v125 = v118[2];
          v126 = v34;

          MEMORY[0x253078930](95, 0xE100000000000000);
          v32 = v125;
          v33 = v126;
        }

        MEMORY[0x253078930](v32, v33);

        MEMORY[0x253078930](v31, v30);
        MEMORY[0x253078930](2112800, 0xE300000000000000);
        v35 = v12[2];
        v36 = v12[3];

        MEMORY[0x253078930](v35, v36);

        MEMORY[0x253078930](46, 0xE100000000000000);
        v37 = v12[2];
        v38 = v12[3];

        MEMORY[0x253078930](v37, v38);

        MEMORY[0x253078930](95, 0xE100000000000000);
        MEMORY[0x253078930](v31, v30);

        v39 = v121;
        v40 = v122;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_2514EF00C(0, *(v29 + 2) + 1, 1, v29);
        }

        v42 = *(v29 + 2);
        v41 = *(v29 + 3);
        if (v42 >= v41 >> 1)
        {
          v29 = sub_2514EF00C((v41 > 1), v42 + 1, 1, v29);
        }

        *(v29 + 2) = v42 + 1;
        v43 = &v29[16 * v42];
        *(v43 + 4) = v39;
        *(v43 + 5) = v40;
        v28 += 16;
        --v27;
      }

      while (v27);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v121 = 0;
    v122 = 0xE000000000000000;
    sub_25154D430();

    v121 = 0x494F4A205446454CLL;
    v122 = 0xEB0000000028204ELL;
    MEMORY[0x253078930](v116, v115);

    MEMORY[0x253078930](0x2053412029, 0xE500000000000000);
    v45 = v12[2];
    v44 = v12[3];

    MEMORY[0x253078930](v45, v44);

    MEMORY[0x253078930](0x28204E4F20, 0xE500000000000000);
    v125 = v29;
    sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
    sub_2514F22A0();
    v46 = sub_25154D230();
    v48 = v47;

    MEMORY[0x253078930](v46, v48);

    MEMORY[0x253078930](41, 0xE100000000000000);
    v49 = v121;
    v50 = v122;
    v3 = sub_2514EF00C(0, 1, 1, MEMORY[0x277D84F90]);
    v52 = *(v3 + 2);
    v51 = *(v3 + 3);
    if (v52 >= v51 >> 1)
    {
      v3 = sub_2514EF00C((v51 > 1), v52 + 1, 1, v3);
    }

    v5 = v111;
    v10 = v110;
    v6 = v114;

    *(v3 + 2) = v52 + 1;
    v53 = &v3[16 * v52];
    *(v53 + 4) = v49;
    *(v53 + 5) = v50;
    v4 = v117;
LABEL_27:
    v54 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes;
    v55 = v118;
    swift_beginAccess();
    v56 = *(v55 + v54);
    if (v56 >> 62)
    {
      goto LABEL_69;
    }

    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:

    swift_beginAccess();
    if (v57)
    {
      v58 = 0;
      v109 = v56 & 0xC000000000000001;
      v108 = v56 & 0xFFFFFFFFFFFFFF8;
      v107 = v56 + 32;
      v106 = (v6 + 11);
      v127 = *MEMORY[0x277D11B18];
      v103 = (v6 + 1);
      v102 = (v6 + 12);
      v101 = xmmword_25154E670;
      v104 = v57;
      v105 = v56;
      do
      {
        if (v109)
        {
          v6 = MEMORY[0x253078AC0](v58, v56);
          v59 = __OFADD__(v58, 1);
          v60 = v58 + 1;
          if (v59)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v58 >= *(v108 + 16))
          {
            goto LABEL_67;
          }

          v6 = *(v107 + 8 * v58);

          v59 = __OFADD__(v58, 1);
          v60 = v58 + 1;
          if (v59)
          {
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            v57 = sub_25154D4A0();
            goto LABEL_29;
          }
        }

        v61 = sub_2514EEB90(0);
        if (v4)
        {

          goto LABEL_3;
        }

        v114 = v61;
        v115 = v62;
        v63 = v118[5];

        sub_25154CF50();
        v64 = (*v106)(v10, v5);
        v117 = 0;
        v116 = v60;
        if (v64 == v127)
        {
          (*v102)(v10, v5);
          v65 = *v10;
          v66 = v10[1];
          sub_2514F619C(0, &qword_27F43BD88, MEMORY[0x277D84560]);
          inited = swift_initStackObject();
          *(inited + 16) = v101;
          *(inited + 32) = v65;
          v68 = inited + 32;
          *(inited + 40) = v66;
          v69 = sub_25154872C(inited);
          swift_setDeallocating();
          sub_251548888(v68);
        }

        else
        {
          (*v103)(v10, v5);
          v69 = MEMORY[0x277D84FA0];
        }

        v56 = sub_2514F2C48(v69, v63);

        v5 = *(v56 + 16);
        if (v5)
        {
          v70 = sub_25154AEEC(*(v56 + 16), 0);
          v113 = sub_25154B434(&v121, v70 + 4, v5, v56);
          v10 = v122;
          v4 = v123;

          sub_2514F2298();
          if (v113 != v5)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v70 = MEMORY[0x277D84F90];
        }

        v121 = v70;
        v71 = v117;
        sub_2514F0544(&v121);
        v26 = &v129;
        v117 = v71;
        if (v71)
        {
          goto LABEL_76;
        }

        v113 = v3;

        v72 = *(v121 + 16);
        v112 = v121;
        if (v72)
        {
          v73 = (v121 + 40);
          v74 = MEMORY[0x277D84F90];
          do
          {
            v75 = *(v73 - 1);
            v76 = *v73;
            v121 = 0;
            v122 = 0xE000000000000000;
            if (v128)
            {

              v77 = 0;
              v78 = 0xE000000000000000;
            }

            else
            {
              v79 = v118[3];
              v119 = v118[2];
              v120 = v79;

              MEMORY[0x253078930](95, 0xE100000000000000);
              v77 = v119;
              v78 = v120;
            }

            MEMORY[0x253078930](v77, v78);

            MEMORY[0x253078930](v75, v76);
            MEMORY[0x253078930](2112800, 0xE300000000000000);
            v80 = v6[2];
            v81 = v6[3];

            MEMORY[0x253078930](v80, v81);

            MEMORY[0x253078930](46, 0xE100000000000000);
            v82 = v6[2];
            v83 = v6[3];

            MEMORY[0x253078930](v82, v83);

            MEMORY[0x253078930](95, 0xE100000000000000);
            MEMORY[0x253078930](v75, v76);

            v84 = v121;
            v85 = v122;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = sub_2514EF00C(0, *(v74 + 2) + 1, 1, v74);
            }

            v87 = *(v74 + 2);
            v86 = *(v74 + 3);
            if (v87 >= v86 >> 1)
            {
              v74 = sub_2514EF00C((v86 > 1), v87 + 1, 1, v74);
            }

            *(v74 + 2) = v87 + 1;
            v88 = &v74[16 * v87];
            *(v88 + 4) = v84;
            *(v88 + 5) = v85;
            v73 += 16;
            --v72;
          }

          while (v72);
        }

        else
        {
          v74 = MEMORY[0x277D84F90];
        }

        v121 = 0;
        v122 = 0xE000000000000000;
        sub_25154D430();

        v121 = 0x494F4A205446454CLL;
        v122 = 0xEB0000000028204ELL;
        MEMORY[0x253078930](v114, v115);

        MEMORY[0x253078930](0x2053412029, 0xE500000000000000);
        v90 = v6[2];
        v89 = v6[3];

        MEMORY[0x253078930](v90, v89);

        MEMORY[0x253078930](0x28204E4F20, 0xE500000000000000);
        v119 = v74;
        sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
        sub_2514F22A0();
        v91 = sub_25154D230();
        v93 = v92;

        MEMORY[0x253078930](v91, v93);

        MEMORY[0x253078930](41, 0xE100000000000000);
        v94 = v121;
        v95 = v122;
        v3 = v113;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_2514EF00C(0, *(v3 + 2) + 1, 1, v3);
        }

        v5 = v111;
        v10 = v110;
        v97 = *(v3 + 2);
        v96 = *(v3 + 3);
        if (v97 >= v96 >> 1)
        {
          v3 = sub_2514EF00C((v96 > 1), v97 + 1, 1, v3);
        }

        *(v3 + 2) = v97 + 1;
        v98 = &v3[16 * v97];
        *(v98 + 4) = v94;
        *(v98 + 5) = v95;
        v58 = v116;
        v4 = v117;
        v56 = v105;
      }

      while (v116 != v104);
    }

    return v3;
  }

  v25 = sub_25154AEEC(*(v23 + 16), 0);
  v117 = sub_25154B434(&v121, v25 + 4, v24, v23);
  v114 = v124;

  sub_2514F2298();
  v26 = v117;
  if (v117 == v24)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_76:

  __break(1u);
  return result;
}

char *sub_2515482EC()
{
  v1 = sub_2515488DC();
  if (v1 == 3)
  {
    sub_2514F231C();
    swift_allocError();
    *v2 = 0xD000000000000039;
    v2[1] = 0x8000000251553B30;
    return swift_willThrow();
  }

  else
  {
    v4 = v1;
    v5 = MEMORY[0x277D84F90];
    sub_25154387C(&v5, v1);
    sub_251543D58(&v5, v4);
    if (v0)
    {
    }

    else
    {
      sub_251544B18(&v5, v4);
      sub_251544B38(&v5, v4);
      sub_2515450B4(&v5);
      return v5;
    }
  }
}

uint64_t sub_2515483EC()
{
  sub_2515426C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for HgQLTraversalNode()
{
  result = qword_27F43CE00;
  if (!qword_27F43CE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251548498()
{
  sub_251548550();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_251548550()
{
  if (!qword_27F43BD68)
  {
    sub_25154CF80();
    v0 = sub_25154D3C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43BD68);
    }
  }
}

uint64_t sub_2515485A8()
{
  v1 = *v0;
  sub_25154D590();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25154D2B0();
  return sub_25154D5B0();
}

uint64_t sub_2515485F0()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return sub_25154D2B0();
}

uint64_t sub_2515485FC()
{
  sub_25154D590();
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  sub_25154D2B0();
  return sub_25154D5B0();
}

uint64_t sub_251548640(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_25154D520();
  }
}

unint64_t sub_251548670()
{
  result = qword_27F43CE10;
  if (!qword_27F43CE10)
  {
    type metadata accessor for HgQLTraversalNode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43CE10);
  }

  return result;
}

uint64_t sub_2515486C8(uint64_t a1, uint64_t a2)
{
  sub_251548550();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25154872C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2514F6110();
    v3 = sub_25154D400();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_25154D590();

      sub_25154D2B0();
      result = sub_25154D5B0();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_25154D520();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2515488DC()
{
  v1 = sub_25154CE30();
  v37 = *(v1 - 8);
  v2 = *(v37 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v34 - v5;
  v6 = sub_25154CDD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  sub_251548550();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25154CF80();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F6000(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_2514F6080(v17);
    return 3;
  }

  else
  {
    v34 = v1;
    (*(v19 + 32))(v22, v17, v18);
    sub_25154CF40();
    v24 = *(v7 + 88);
    if (v24(v13, v6) == *MEMORY[0x277D11B00])
    {
      (*(v19 + 8))(v22, v18);
      (*(v7 + 8))(v13, v6);
      return 1;
    }

    else
    {
      v25 = v13;
      v26 = *(v7 + 8);
      v26(v25, v6);
      sub_25154CF40();
      if (v24(v11, v6) == *MEMORY[0x277D11B08])
      {
        (*(v19 + 8))(v22, v18);
        v26(v11, v6);
        return 1;
      }

      else
      {
        v26(v11, v6);
        v27 = v36;
        sub_25154CF70();
        v28 = v37;
        v29 = *(v37 + 88);
        v30 = v34;
        if (v29(v27, v34) == *MEMORY[0x277D11B30])
        {
          (*(v19 + 8))(v22, v18);
          (*(v28 + 8))(v27, v30);
          return 1;
        }

        else
        {
          v31 = *(v28 + 8);
          v31(v27, v30);
          v32 = v35;
          sub_25154CF70();
          (*(v19 + 8))(v22, v18);
          v33 = v29(v32, v30) != *MEMORY[0x277D11B48];
          v31(v32, v30);
          return (2 * v33);
        }
      }
    }
  }
}

uint64_t sub_251548D94()
{
  v1 = sub_25154CE30();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - v5;
  v6 = sub_25154CDD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = sub_25154CF80();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple, v14);
  sub_25154CF40();
  v19 = *(v7 + 88);
  if (v19(v13, v6) == *MEMORY[0x277D11B00])
  {
    (*(v15 + 8))(v18, v14);
    (*(v7 + 8))(v13, v6);
  }

  else
  {
    v20 = v13;
    v21 = *(v7 + 8);
    v21(v20, v6);
    sub_25154CF40();
    if (v19(v11, v6) == *MEMORY[0x277D11B08])
    {
      (*(v15 + 8))(v18, v14);
      v21(v11, v6);
    }

    else
    {
      v21(v11, v6);
      v22 = v31;
      sub_25154CF70();
      v24 = v32;
      v23 = v33;
      v25 = *(v32 + 88);
      if (v25(v22, v33) != *MEMORY[0x277D11B30])
      {
        v27 = *(v24 + 8);
        v27(v22, v23);
        v28 = v30;
        sub_25154CF70();
        (*(v15 + 8))(v18, v14);
        v29 = v25(v28, v23) != *MEMORY[0x277D11B48];
        v27(v28, v23);
        return (2 * v29);
      }

      (*(v15 + 8))(v18, v14);
      (*(v24 + 8))(v22, v23);
    }
  }

  return 1;
}

uint64_t sub_2515491AC(int a1)
{
  v72 = a1;
  v3 = sub_25154CDD0();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_25154CE30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_25154CDE0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_251548D94();
  if (v17 == 3)
  {
    sub_2514F231C();
    swift_allocError();
    *v18 = 0xD000000000000039;
    v18[1] = 0x8000000251553B30;
    swift_willThrow();
    return v12;
  }

  v71 = v17;
  v63[2] = OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple;
  v64 = v1;
  sub_25154CF50();
  if ((*(v13 + 88))(v16, v12) == *MEMORY[0x277D11B18])
  {
    (*(v13 + 96))(v16, v12);
    v19 = v16[1];
    v63[0] = *v16;
    v69 = 0;
    v70 = 0xE000000000000000;
    if (v71)
    {
      if (v71 == 1)
      {
        v20 = 0x64695F65646F6ELL;
      }

      else
      {
        v20 = 0x5F7463656A627573;
      }

      if (v71 == 1)
      {
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xEA00000000006469;
      }
    }

    else
    {
      v21 = 0xE500000000000000;
      v20 = 0x6469776F72;
    }

    v22 = v64;
    MEMORY[0x253078930](v20, v21);

    MEMORY[0x253078930](542327072, 0xE400000000000000);
    v63[1] = v2;
    if (v72)
    {
      v23 = 0;
      v24 = 0xE000000000000000;
    }

    else
    {
      v25 = *(v22 + 24);
      v67 = *(v22 + 16);
      v68 = v25;

      MEMORY[0x253078930](95, 0xE100000000000000);
      v23 = v67;
      v24 = v68;
    }

    MEMORY[0x253078930](v23, v24);

    MEMORY[0x253078930](v63[0], v19);

    v26 = v69;
    v27 = v70;
    v12 = sub_2514EF00C(0, 1, 1, MEMORY[0x277D84F90]);
    v29 = *(v12 + 16);
    v28 = *(v12 + 24);
    if (v29 >= v28 >> 1)
    {
      v12 = sub_2514EF00C((v28 > 1), v29 + 1, 1, v12);
    }

    *(v12 + 16) = v29 + 1;
    v30 = v12 + 16 * v29;
    *(v30 + 32) = v26;
    *(v30 + 40) = v27;
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    v12 = MEMORY[0x277D84F90];
  }

  v31 = v64;
  sub_25154CF70();
  if ((*(v8 + 88))(v11, v7) != *MEMORY[0x277D11B30])
  {
    (*(v8 + 8))(v11, v7);
    goto LABEL_31;
  }

  (*(v8 + 96))(v11, v7);
  v32 = *v11;
  v33 = v11[1];
  v34 = v11[2];

  if (!v34)
  {
LABEL_31:
    v39 = v66;
    goto LABEL_39;
  }

  v69 = 0;
  v70 = 0xE000000000000000;
  if (!v71)
  {

    v40 = 0x8000000251553C10;
    sub_2514F231C();
    swift_allocError();
    v42 = 0xD000000000000031;
LABEL_51:
    *v41 = v42;
    v41[1] = v40;
    swift_willThrow();

    return v12;
  }

  if (v71 == 1)
  {
    v35 = 0x7475626972747461;
  }

  else
  {
    v35 = 0xD000000000000011;
  }

  if (v71 == 1)
  {
    v36 = 0xEE00657079745F65;
  }

  else
  {
    v36 = 0x8000000251553BF0;
  }

  MEMORY[0x253078930](v35, v36);

  MEMORY[0x253078930](542327072, 0xE400000000000000);
  if (v72)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  else
  {
    v43 = *(v31 + 24);
    v67 = *(v31 + 16);
    v68 = v43;

    MEMORY[0x253078930](95, 0xE100000000000000);
    v37 = v67;
    v38 = v68;
  }

  MEMORY[0x253078930](v37, v38);

  MEMORY[0x253078930](v33, v34);

  v44 = v69;
  v45 = v70;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_2514EF00C(0, *(v12 + 16) + 1, 1, v12);
  }

  v39 = v66;
  v47 = *(v12 + 16);
  v46 = *(v12 + 24);
  if (v47 >= v46 >> 1)
  {
    v12 = sub_2514EF00C((v46 > 1), v47 + 1, 1, v12);
  }

  *(v12 + 16) = v47 + 1;
  v48 = v12 + 16 * v47;
  *(v48 + 32) = v44;
  *(v48 + 40) = v45;
LABEL_39:
  sub_25154CF40();
  v49 = v65;
  if ((*(v65 + 88))(v6, v39) != *MEMORY[0x277D11AF0])
  {
    (*(v49 + 8))(v6, v39);
    return v12;
  }

  (*(v49 + 96))(v6, v39);
  v51 = *v6;
  v50 = v6[1];
  v69 = 0;
  v70 = 0xE000000000000000;
  if (!v71)
  {

    v40 = 0x8000000251553BC0;
    sub_2514F231C();
    swift_allocError();
    v42 = 0xD00000000000002ELL;
    goto LABEL_51;
  }

  if (v71 == 1)
  {
    v52 = 0x65756C6176;
  }

  else
  {
    v52 = 0x695F7463656A626FLL;
  }

  if (v71 == 1)
  {
    v53 = 0xE500000000000000;
  }

  else
  {
    v53 = 0xE900000000000064;
  }

  MEMORY[0x253078930](v52, v53);

  MEMORY[0x253078930](542327072, 0xE400000000000000);
  if (v72)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
  }

  else
  {
    v56 = *(v31 + 24);
    v67 = *(v31 + 16);
    v68 = v56;

    MEMORY[0x253078930](95, 0xE100000000000000);
    v54 = v67;
    v55 = v68;
  }

  MEMORY[0x253078930](v54, v55);

  MEMORY[0x253078930](v51, v50);

  v57 = v69;
  v58 = v70;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_2514EF00C(0, *(v12 + 16) + 1, 1, v12);
  }

  v60 = *(v12 + 16);
  v59 = *(v12 + 24);
  if (v60 >= v59 >> 1)
  {
    v12 = sub_2514EF00C((v59 > 1), v60 + 1, 1, v12);
  }

  *(v12 + 16) = v60 + 1;
  v61 = v12 + 16 * v60;
  *(v61 + 32) = v57;
  *(v61 + 40) = v58;
  return v12;
}

uint64_t sub_2515499D4()
{
  v1 = *v0;
  v2 = sub_25154D5D0();
  MEMORY[0x253078930](v2);

  MEMORY[0x253078930](8250, 0xE200000000000000);
  sub_25154CF80();
  sub_25154D490();
  return 0;
}

uint64_t sub_251549A94()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple;
  v5 = sub_25154CF80();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for HgQLAttributeValueNode()
{
  result = qword_27F43CE20;
  if (!qword_27F43CE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251549B9C()
{
  result = sub_25154CF80();
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

char *sub_251549C6C()
{
  v2 = v0;
  v3 = sub_25154CE30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = (v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_25154CDE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251548D94();
  if (v12 == 3)
  {
    sub_2514F231C();
    swift_allocError();
    *v13 = 0xD000000000000039;
    v13[1] = 0x8000000251553B30;
    swift_willThrow();
  }

  else
  {
    v14 = v12;
    v66 = OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple;
    sub_25154CF50();
    v15 = (*(v8 + 88))(v11, v7);
    v16 = *MEMORY[0x277D11B20];
    v65 = v1;
    v68 = v14;
    v67 = v0;
    if (v15 == v16)
    {
      v64 = v3;
      (*(v8 + 96))(v11, v7);
      v17 = *v11;
      v18 = *(*v11 + 16);
      v62[1] = *v11;
      v63 = v4;
      if (v18)
      {
        v19 = (v17 + 32);
        v20 = MEMORY[0x277D84F90];
        do
        {
          v21 = *v19++;
          v69 = v21;
          v22 = sub_25154D500();
          v24 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_2514EF00C(0, *(v20 + 2) + 1, 1, v20);
          }

          v26 = *(v20 + 2);
          v25 = *(v20 + 3);
          if (v26 >= v25 >> 1)
          {
            v20 = sub_2514EF00C((v25 > 1), v26 + 1, 1, v20);
          }

          *(v20 + 2) = v26 + 1;
          v27 = &v20[16 * v26];
          *(v27 + 4) = v22;
          *(v27 + 5) = v24;
          --v18;
        }

        while (v18);
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      v69 = v20;
      sub_25154A3BC();
      sub_2514F22A0();
      v28 = sub_25154D230();
      v30 = v29;

      v69 = 0;
      v70 = 0xE000000000000000;
      if (v68)
      {
        if (v68 == 1)
        {
          v31 = 0x64695F65646F6ELL;
        }

        else
        {
          v31 = 0x5F7463656A627573;
        }

        if (v68 == 1)
        {
          v32 = 0xE700000000000000;
        }

        else
        {
          v32 = 0xEA00000000006469;
        }
      }

      else
      {
        v32 = 0xE500000000000000;
        v31 = 0x6469776F72;
      }

      v3 = v64;
      MEMORY[0x253078930](v31, v32);

      MEMORY[0x253078930](0x28204E4920, 0xE500000000000000);
      MEMORY[0x253078930](v28, v30);

      MEMORY[0x253078930](41, 0xE100000000000000);
      v33 = v69;
      v34 = v70;
      v2 = sub_2514EF00C(0, 1, 1, MEMORY[0x277D84F90]);
      v36 = *(v2 + 2);
      v35 = *(v2 + 3);
      if (v36 >= v35 >> 1)
      {
        v2 = sub_2514EF00C((v35 > 1), v36 + 1, 1, v2);
      }

      v4 = v63;
      *(v2 + 2) = v36 + 1;
      v37 = &v2[16 * v36];
      *(v37 + 4) = v33;
      *(v37 + 5) = v34;
    }

    else
    {
      (*(v8 + 8))(v11, v7);
      v2 = MEMORY[0x277D84F90];
    }

    v38 = v71;
    sub_25154CF70();
    if ((*(v4 + 88))(v38, v3) == *MEMORY[0x277D11B30])
    {
      v67 = v2;
      (*(v4 + 96))(v38, v3);
      v39 = *v38;
      v40 = v38[2];

      v2 = *(v39 + 16);
      v66 = v39;
      if (v2)
      {
        v41 = (v39 + 32);
        v42 = MEMORY[0x277D84F90];
        do
        {
          v43 = *v41++;
          v69 = v43;
          v44 = sub_25154D500();
          v46 = v45;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_2514EF00C(0, *(v42 + 2) + 1, 1, v42);
          }

          v48 = *(v42 + 2);
          v47 = *(v42 + 3);
          if (v48 >= v47 >> 1)
          {
            v42 = sub_2514EF00C((v47 > 1), v48 + 1, 1, v42);
          }

          *(v42 + 2) = v48 + 1;
          v49 = &v42[16 * v48];
          *(v49 + 4) = v44;
          *(v49 + 5) = v46;
          --v2;
        }

        while (v2);
      }

      else
      {
        v42 = MEMORY[0x277D84F90];
      }

      v69 = v42;
      sub_25154A3BC();
      sub_2514F22A0();
      v50 = sub_25154D230();
      v52 = v51;

      v69 = 0;
      v70 = 0xE000000000000000;
      if (v68)
      {
        if (v68 == 1)
        {
          v53 = 0x7475626972747461;
        }

        else
        {
          v53 = 0xD000000000000011;
        }

        if (v68 == 1)
        {
          v54 = 0xEE00657079745F65;
        }

        else
        {
          v54 = 0x8000000251553BF0;
        }

        v2 = v67;
        MEMORY[0x253078930](v53, v54);

        MEMORY[0x253078930](0x28204E4920, 0xE500000000000000);
        MEMORY[0x253078930](v50, v52);

        MEMORY[0x253078930](41, 0xE100000000000000);
        v55 = v69;
        v56 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2514EF00C(0, *(v2 + 2) + 1, 1, v2);
        }

        v58 = *(v2 + 2);
        v57 = *(v2 + 3);
        if (v58 >= v57 >> 1)
        {
          v2 = sub_2514EF00C((v57 > 1), v58 + 1, 1, v2);
        }

        *(v2 + 2) = v58 + 1;
        v59 = &v2[16 * v58];
        *(v59 + 4) = v55;
        *(v59 + 5) = v56;
      }

      else
      {

        sub_2514F231C();
        swift_allocError();
        *v61 = 0xD000000000000031;
        v61[1] = 0x8000000251553C10;
        swift_willThrow();
      }
    }

    else
    {
      (*(v4 + 8))(v38, v3);
    }
  }

  return v2;
}

void sub_25154A3BC()
{
  if (!qword_27F43BD70)
  {
    v0 = sub_25154D350();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43BD70);
    }
  }
}

uint64_t sub_25154A40C(uint64_t a1)
{
  *(a1 + 8) = sub_25154A484(&qword_27F43CE30);
  result = sub_25154A484(&qword_27F43CE38);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25154A484(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25154BAAC(255, &qword_27F43BDC8, MEMORY[0x277D834F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25154A500(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  sub_25154AD0C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25154CE00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x277D84FA0];
  v30 = &v32;
  v27 = sub_25154AD7C;
  v28 = &v29;
  sub_25154A874(a1, sub_25154AD9C, v26);
  v15 = v32;
  v16 = *(v32 + 16);
  if (!v16)
  {
    goto LABEL_4;
  }

  v20 = a3;
  v21 = a2;
  v17 = sub_25154AF64(v16, 0);
  v18 = sub_25154B58C(v31, v17 + 4, v16, v15);
  v24 = v31[0];
  v25 = v18;
  v22 = v31[4];
  v23 = v31[3];

  result = sub_2514F2298();
  if (v25 == v16)
  {
    a2 = v21;
LABEL_4:
    sub_25154CDF0();

    (*(v11 + 16))(v9, v14, v10);
    swift_storeEnumTagMultiPayload();
    a2(v9);
    sub_25154B80C(v9, sub_25154AD0C);
    return (*(v11 + 8))(v14, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_25154A7D0(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v4 = v3;
  v7 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v8 = v7;
  v9 = v4;
  v10 = sub_25154B8BC(v8, a2);

  if (!v9)
  {
    v12 = v10;
    LOBYTE(a3) = a3(&v12);
  }

  return a3 & 1;
}

uint64_t sub_25154A874(uint64_t a1, void (*a2)(char *, uint64_t), void (*a3)(char *, uint64_t))
{
  v38 = a2;
  v39 = a3;
  v4 = type metadata accessor for HgQLGraphQuery();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v36 - v9;
  v10 = sub_25154CE70();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  sub_25154CE10();
  v18 = v11[2];
  v18(v15, v17, v10);
  v18(v8, v15, v10);
  v19 = sub_2514F1994(v15);
  if (v3)
  {
    v21 = v11[1];
    v21(v15, v10);
    v21(v17, v10);
    return (v21)(v8, v10);
  }

  else
  {
    v23 = v19;
    v24 = v20;
    v36 = v11[1];
    v36(v15, v10);
    v25 = &v8[*(v4 + 20)];
    *v25 = v23;
    *(v25 + 1) = v24;
    v26 = v40;
    sub_25154B754(v8, v40);
    v27 = (v26 + *(v4 + 20));
    v28 = *v27;
    v29 = v27[1];
    v30 = sub_25154CE60();
    v31 = __swift_project_boxed_opaque_existential_1((v37 + 32), *(v37 + 56));
    v32 = MEMORY[0x28223BE20](v31);
    v33 = v39;
    *(&v36 - 4) = v38;
    *(&v36 - 3) = v33;
    *(&v36 - 2) = v30;
    v34 = *v32;
    MEMORY[0x28223BE20](v32);
    *(&v36 - 4) = v28;
    *(&v36 - 3) = v29;
    *(&v36 - 2) = sub_25154B7B8;
    *(&v36 - 1) = v35;
    sub_2514ED390(sub_25154B7EC, (&v36 - 6));

    v36(v17, v10);
    return sub_25154B80C(v40, type metadata accessor for HgQLGraphQuery);
  }
}

uint64_t sub_25154ABA0(uint64_t *a1)
{
  v1 = *a1;

  sub_2514EF378(&v3, v1);

  return 1;
}

uint64_t sub_25154ABF4()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

unint64_t sub_25154AC5C()
{
  result = qword_27F43CE40;
  if (!qword_27F43CE40)
  {
    sub_25154CE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43CE40);
  }

  return result;
}

uint64_t sub_25154ACB4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

void sub_25154AD0C()
{
  if (!qword_27F43CE48)
  {
    sub_25154CE00();
    sub_2514ECC34();
    v0 = sub_25154D5C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43CE48);
    }
  }
}

unint64_t sub_25154ADBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25154D590();
  sub_25154D2B0();
  v6 = sub_25154D5B0();

  return sub_25154AE34(a1, a2, v6);
}

unint64_t sub_25154AE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25154D520())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_25154AEEC(uint64_t a1, uint64_t a2)
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

  sub_25154B86C();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_25154AF64(uint64_t a1, uint64_t a2)
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

  sub_25154B6E0();
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_25154AFDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_25154BAAC(0, &qword_27F43CE58, MEMORY[0x277D84460]);
  v40 = a2;
  result = sub_25154D4D0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_25154D590();
      sub_25154D2B0();
      result = sub_25154D5B0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_25154B2AC()
{
  v1 = v0;
  sub_25154BAAC(0, &qword_27F43CE58, MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_25154D4C0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_25154B434(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_25154B58C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_25154B6E0()
{
  if (!qword_27F43CE50)
  {
    sub_25154BAAC(255, &qword_27F43BDC8, MEMORY[0x277D834F8]);
    v0 = sub_25154D510();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43CE50);
    }
  }
}

uint64_t sub_25154B754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HgQLGraphQuery();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25154B80C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25154B86C()
{
  if (!qword_27F43BD88)
  {
    v0 = sub_25154D510();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43BD88);
    }
  }
}

uint64_t sub_25154B8BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  v3 = (a2 + 40);
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    v6 = *(v3 - 1);
    v5 = *v3;

    v7 = sub_25154D250();
    v8 = HDSQLiteColumnWithNameAsString();

    if (!v8)
    {
      goto LABEL_3;
    }

    v9 = sub_25154D260();
    v11 = v10;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_25154ADBC(v6, v5);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      sub_25154AFDC(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_25154ADBC(v6, v5);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v19)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v24 = v13;
    sub_25154B2AC();
    v13 = v24;
    if (v19)
    {
LABEL_12:
      v21 = v13;

      v22 = (v4[7] + 16 * v21);
      v23 = v22[1];
      *v22 = v9;
      v22[1] = v11;
LABEL_3:

      goto LABEL_4;
    }

LABEL_14:
    v4[(v13 >> 6) + 8] |= 1 << v13;
    v25 = (v4[6] + 16 * v13);
    *v25 = v6;
    v25[1] = v5;
    v26 = (v4[7] + 16 * v13);
    *v26 = v9;
    v26[1] = v11;
    v27 = v4[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v17)
    {
      goto LABEL_19;
    }

    v4[2] = v28;
LABEL_4:
    v3 += 2;
    if (!--v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_25154D540();
  __break(1u);
  return result;
}

void sub_25154BAAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t HealthContentDaemonPluginObject.pluginIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin31HealthContentDaemonPluginObject_pluginIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin31HealthContentDaemonPluginObject_pluginIdentifier + 8);

  return v1;
}

id sub_25154BBAC()
{
  swift_getObjectType();
  v0 = sub_25154D200();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25154D1D0();
  v5 = sub_25154D1F0();
  v6 = sub_25154D380();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = sub_25154D5D0();
    v11 = sub_25154C4BC(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2514E7000, v5, v6, "[%{public}s] returning extension for healthd", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x253079210](v8, -1, -1);
    MEMORY[0x253079210](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v12 = objc_allocWithZone(type metadata accessor for ConcreteHealthContentDaemonExtension());
  swift_unknownObjectRetain();
  v13 = sub_2514EC2A0();
  swift_unknownObjectRelease();
  sub_25154CA4C(&qword_2813D85C8, type metadata accessor for ConcreteHealthContentDaemonExtension);
  return v13;
}

id sub_25154BE28(void *a1)
{
  swift_getObjectType();
  v2 = sub_25154D200();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25154D1D0();
  v7 = sub_25154D1F0();
  v8 = sub_25154D380();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    v11 = sub_25154D5D0();
    v13 = sub_25154C4BC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2514E7000, v7, v8, "[%{public}s] returning extension for profile", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x253079210](v10, -1, -1);
    MEMORY[0x253079210](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  objc_allocWithZone(type metadata accessor for ConcreteHealthContentProfileExtension());
  v16 = a1;
  v17 = sub_2514F6D0C(v15);

  sub_25154CA4C(&qword_2813D85D0, type metadata accessor for ConcreteHealthContentProfileExtension);
  return v17;
}

id sub_25154C0C8()
{
  v0 = objc_allocWithZone(type metadata accessor for ConcreteHealthContentDaemonExtension());
  swift_unknownObjectRetain();
  v1 = sub_2514EC2A0();
  swift_unknownObjectRelease();
  sub_25154CA4C(&qword_2813D85C8, type metadata accessor for ConcreteHealthContentDaemonExtension);
  return v1;
}

id sub_25154C14C(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ConcreteHealthContentProfileExtension());
  v3 = a1;
  v4 = sub_2514F6D0C(v3);

  sub_25154CA4C(&qword_2813D85D0, type metadata accessor for ConcreteHealthContentProfileExtension);
  return v4;
}

id sub_25154C1CC(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D103A8]);

  return [v2 initWithProfile_];
}

id HealthContentDaemonPluginObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthContentDaemonPluginObject.init()()
{
  v1 = &v0[OBJC_IVAR____TtC25HealthContentDaemonPlugin31HealthContentDaemonPluginObject_pluginIdentifier];
  *v1 = sub_25154CD60();
  v1[1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HealthContentDaemonPluginObject();
  return objc_msgSendSuper2(&v4, sel_init);
}

id HealthContentDaemonPluginObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthContentDaemonPluginObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthContentDaemonPluginObject.taskServerClasses()()
{
  sub_25154CAB8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25154E5A0;
  *(v0 + 32) = sub_25154CB5C(0, &qword_2813D8388, 0x277D103A0);
  *(v0 + 40) = sub_25154CB5C(0, &qword_2813D8380, 0x277D103D0);
  *(v0 + 48) = type metadata accessor for HealthOntologyStoreTaskServer();
  return v0;
}

uint64_t sub_25154C4BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25154C588(v11, 0, 0, 1, a1, a2);
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
    sub_2514F2370(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25154C588(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25154C694(a5, a6);
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
    result = sub_25154D480();
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

uint64_t sub_25154C694(uint64_t a1, unint64_t a2)
{
  v4 = sub_25154C6E0(a1, a2);
  sub_25154C810(&unk_286375448);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25154C6E0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25154C8FC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25154D480();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25154D2D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25154C8FC(v10, 0);
        result = sub_25154D420();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25154C810(uint64_t result)
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

  result = sub_25154C964(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

void *sub_25154C8FC(uint64_t a1, uint64_t a2)
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

  sub_25154CCC0();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25154C964(char *result, int64_t a2, char a3, char *a4)
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
    sub_25154CCC0();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_25154CA4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25154CAB8()
{
  if (!qword_2813D8348)
  {
    sub_25154CB10();
    v0 = sub_25154D510();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D8348);
    }
  }
}

unint64_t sub_25154CB10()
{
  result = qword_2813D8340;
  if (!qword_2813D8340)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2813D8340);
  }

  return result;
}

uint64_t sub_25154CB5C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t dispatch thunk of HealthContentDaemonPluginObject.extension(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
}

void sub_25154CCC0()
{
  if (!qword_27F43CF90)
  {
    v0 = sub_25154D510();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43CF90);
    }
  }
}