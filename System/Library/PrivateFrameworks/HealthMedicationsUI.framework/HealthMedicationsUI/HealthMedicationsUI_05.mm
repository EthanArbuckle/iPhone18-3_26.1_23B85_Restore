uint64_t sub_2281E77FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_2281E66C8(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2281E78E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2281E793C(uint64_t a1, uint64_t a2)
{
  sub_2281E78E8(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281E79BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2281E78E8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281E7A18(uint64_t a1)
{
  v2 = type metadata accessor for MedicationOnboardingFlowManager(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InteractionSummaryItemState.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x22AAB70D0](v4);
  }

  if (v3 == 1)
  {
    v4 = 2;
    return MEMORY[0x22AAB70D0](v4);
  }

  MEMORY[0x22AAB70D0](1);

  return sub_2281DB0C8(a1, v3);
}

uint64_t InteractionSummaryItemState.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x22AAB70D0](1);
      sub_2281DB0C8(v4, v1);
      return sub_228393570();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x22AAB70D0](v2);
  return sub_228393570();
}

uint64_t sub_2281E7B9C()
{
  v1 = *v0;
  sub_228393520();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x22AAB70D0](1);
      sub_2281DB0C8(v4, v1);
      return sub_228393570();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x22AAB70D0](v2);
  return sub_228393570();
}

uint64_t sub_2281E7C10(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x22AAB70D0](v4);
  }

  if (v3 == 1)
  {
    v4 = 2;
    return MEMORY[0x22AAB70D0](v4);
  }

  MEMORY[0x22AAB70D0](1);

  return sub_2281DB0C8(a1, v3);
}

uint64_t sub_2281E7C90()
{
  v1 = *v0;
  sub_228393520();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x22AAB70D0](1);
      sub_2281DB0C8(v4, v1);
      return sub_228393570();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x22AAB70D0](v2);
  return sub_228393570();
}

unint64_t InteractionSummaryItem.itemState.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_2281E8520(v2);
}

void *InteractionSummaryItem.filteringMedication.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t InteractionSummaryItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

void *InteractionSummaryItem.__allocating_init(itemState:filteringMedication:listManager:healthStore:didSelectCellCallback:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v13 = *a1;
  type metadata accessor for InteractionSummaryItemCell();
  sub_2281E864C(qword_280DDC3F0, 255, type metadata accessor for InteractionSummaryItemCell);
  v12[8] = sub_22838FBB0();
  v12[9] = v14;
  v12[2] = v13;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  return v12;
}

void *InteractionSummaryItem.init(itemState:filteringMedication:listManager:healthStore:didSelectCellCallback:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  type metadata accessor for InteractionSummaryItemCell();
  sub_2281E864C(qword_280DDC3F0, 255, type metadata accessor for InteractionSummaryItemCell);
  v6[8] = sub_22838FBB0();
  v6[9] = v13;
  v6[2] = v12;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t sub_2281E7EF8(uint64_t a1)
{
  v3 = v1[8];
  v4 = v1[9];
  sub_2283920B0();
  v5 = v1[2];
  if (!v5)
  {
    v6 = 0;
    return MEMORY[0x22AAB70D0](v6);
  }

  if (v5 == 1)
  {
    v6 = 2;
    return MEMORY[0x22AAB70D0](v6);
  }

  MEMORY[0x22AAB70D0](1);

  return sub_2281DB0C8(a1, v5);
}

uint64_t InteractionSummaryItem.deinit()
{
  sub_2281E8530(*(v0 + 16));

  v1 = *(v0 + 32);

  v2 = *(v0 + 56);
  sub_228176EC8(*(v0 + 48));
  v3 = *(v0 + 72);

  return v0;
}

uint64_t InteractionSummaryItem.__deallocating_deinit()
{
  sub_2281E8530(*(v0 + 16));

  v1 = *(v0 + 32);

  v2 = *(v0 + 56);
  sub_228176EC8(*(v0 + 48));
  v3 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_2281E8028()
{
  sub_228393520();
  v1 = v0[8];
  v2 = v0[9];
  sub_2283920B0();
  v3 = v0[2];
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x22AAB70D0](1);
      sub_2281DB0C8(v6, v3);
      return sub_228393570();
    }

    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x22AAB70D0](v4);
  return sub_228393570();
}

uint64_t sub_2281E80FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 72);
  sub_2283920B0();
  v6 = *(v3 + 16);
  if (!v6)
  {
    v7 = 0;
    return MEMORY[0x22AAB70D0](v7);
  }

  if (v6 == 1)
  {
    v7 = 2;
    return MEMORY[0x22AAB70D0](v7);
  }

  MEMORY[0x22AAB70D0](1);

  return sub_2281DB0C8(a1, v6);
}

uint64_t sub_2281E8188()
{
  sub_228393520();
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 72);
  sub_2283920B0();
  v4 = *(v1 + 16);
  if (v4)
  {
    if (v4 != 1)
    {
      MEMORY[0x22AAB70D0](1);
      sub_2281DB0C8(v7, v4);
      return sub_228393570();
    }

    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x22AAB70D0](v5);
  return sub_228393570();
}

uint64_t sub_2281E820C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

Swift::Void __swiftcall InteractionSummaryItem.didSelectCell(_:in:)(UIView *_, UIViewController *in)
{
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = *(v2 + 56);
    v3(in);
  }
}

uint64_t InteractionSummaryItem.deselectionBehavior(in:)()
{
  type metadata accessor for InteractionSummaryItem();
  sub_2281E864C(&qword_27D824CD0, v0, type metadata accessor for InteractionSummaryItem);
  return sub_22838FE80();
}

uint64_t sub_2281E8330(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 48);
  if (v3)
  {
    v4 = *(*v2 + 56);
    return v3(a2);
  }

  return result;
}

uint64_t sub_2281E8368()
{
  v2 = *v0;
  type metadata accessor for InteractionSummaryItem();
  return sub_22838FE80();
}

uint64_t _s19HealthMedicationsUI22InteractionSummaryItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (!v2)
  {
    if (!v3)
    {
      v2 = 0;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_2281E8520(*(a1 + 16));
      sub_2281E8520(v3);
      v4 = sub_2282100F8(v2, v3);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v3 != 1)
  {
LABEL_9:
    sub_2281E8520(*(a1 + 16));
    sub_2281E8520(v3);
    v4 = 0;
    goto LABEL_11;
  }

  v2 = 1;
LABEL_7:
  v4 = 1;
LABEL_11:
  sub_2281E8530(v2);
  sub_2281E8530(v3);
  return v4 & 1;
}

uint64_t _s19HealthMedicationsUI27InteractionSummaryItemStateO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_2281E8520(*a2);
      sub_2281E8520(v2);
      v4 = sub_2282100F8(v2, v3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_2281E8520(*a2);
    sub_2281E8520(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_2281E8530(v2);
  sub_2281E8530(v3);
  return v4 & 1;
}

unint64_t sub_2281E8520(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_2281E8530(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_2281E8568()
{
  result = qword_27D824CD8;
  if (!qword_27D824CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824CD8);
  }

  return result;
}

uint64_t sub_2281E864C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_19HealthMedicationsUI27InteractionSummaryItemStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2281E86B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2281E870C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2281E8768(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t type metadata accessor for MedicationsDayHistoryItem()
{
  result = qword_27D824CF0;
  if (!qword_27D824CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2281E88AC()
{
  sub_22838F4A0();
  if (v0 <= 0x3F)
  {
    sub_2281E8A54(319, &qword_27D824D00, sub_2281E89F0, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2281E8A54(319, &qword_27D824D08, sub_22819A174, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2281E8AB8();
        if (v3 <= 0x3F)
        {
          sub_22838F440();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2281E89F0()
{
  result = qword_27D823F08;
  if (!qword_27D823F08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D823F08);
  }

  return result;
}

void sub_2281E8A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2281E8AB8()
{
  result = qword_27D824D10;
  if (!qword_27D824D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D824D10);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2281E8B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_2281E8B60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2281E8BB0()
{
  if (*(v0 + 16))
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *(v0 + 16);
  return result;
}

uint64_t sub_2281E8BFC(uint64_t a1)
{
  sub_228393520();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281E8C4C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 20));
  v4 = *v3;
  v5 = v3[1];
  return sub_2283920B0();
}

uint64_t sub_2281E8C5C(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281E8CA8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2281E8CE4()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0x6F74736948796144;
}

uint64_t sub_2281E8D6C(uint64_t a1)
{
  v2 = sub_2281E8EF0(&qword_27D824D28);

  return MEMORY[0x282169440](a1, v2);
}

BOOL sub_2281E8E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsDayHistoryItem();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (v10 = sub_228393460(), result = 0, (v10 & 1) != 0))
  {
    v12 = *(v4 + 28);
    v13 = *(a1 + v12);
    v14 = *(a2 + v12);
    result = (v13 | v14) == 0;
    if (v13)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {

      v16 = sub_228210778(v13, v14);

      return v16 & 1;
    }
  }

  return result;
}

uint64_t sub_2281E8EF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationsDayHistoryItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2281E8F34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_severityLevel;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_2281E9598();
  result = *(v3 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview);
  if (result)
  {
    return [result hk:v3 alignConstraintsWithView:?];
  }

  return result;
}

uint64_t sub_2281E8FAC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_severityLevel;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_2281E8FF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_severityLevel;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_2281E9598();
  result = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview);
  if (result)
  {
    return [result hk:v1 alignConstraintsWithView:?];
  }

  return result;
}

id (*sub_2281E9064(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281E90C8;
}

id sub_2281E90C8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    sub_2281E9598();
    result = *(v5 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview);
    if (result)
    {
      v6 = *(a1 + 24);

      return [result hk:v6 alignConstraintsWithView:?];
    }
  }

  return result;
}

id sub_2281E9134()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___severityLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___severityLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___severityLabel);
  }

  else
  {
    v4 = sub_2281E9194();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281E9194()
{
  v0 = [objc_allocWithZone(sub_22838FC30()) initWithFrame_];
  v1 = *MEMORY[0x277D769D0];
  sub_22838FC20();
  sub_22838FC10();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 secondaryLabelColor];
  [v3 setTextColor_];

  v5 = *MEMORY[0x277D12788];
  v10 = sub_228392000();
  v11 = v6;
  v7 = v3;

  MEMORY[0x22AAB5C80](0xD000000000000021, 0x80000002283AAE30);

  MEMORY[0x22AAB5C80](0x746972657665532ELL, 0xEE006C6562614C79);

  v8 = sub_228391FC0();

  [v7 setAccessibilityIdentifier_];

  [v7 setNumberOfLines_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  return v7;
}

id sub_2281E9348()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___criticalSeverityButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___criticalSeverityButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___criticalSeverityButton);
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v4 = sub_22838F0C0();
    _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v4, v5, 0xD000000000000014, 0x80000002283A7590);
    v7 = v6;

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id DrugInteractionSeverityLevelView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DrugInteractionSeverityLevelView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___severityLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___criticalSeverityButton) = 0;
  sub_228393300();
  __break(1u);
}

void sub_2281E9598()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview] removeFromSuperview];
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_severityLevel;
  swift_beginAccess();
  v3 = *&v0[v2];
  if ((v3 - 2) < 3)
  {
    v4 = sub_2281E9134();
    sub_228321CC4(0xD000000000000016, 0x80000002283AAE60, *&v0[v2]);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    v5 = sub_228391FC0();

    [v4 setText_];

    v6 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___severityLabel];
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v8 = v6;
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v8 = sub_2281E9348();
    v7 = *&v0[v1];
    *&v0[v1] = v8;
LABEL_7:
    v9 = v8;

    [v0 addSubview_];
    return;
  }

  sub_228393300();
  __break(1u);
}

id DrugInteractionSeverityLevelView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DrugInteractionSeverityLevelView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DrugInteractionSeverityLevelView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2281E99A4(uint64_t a1)
{
  v2 = type metadata accessor for DrugInteractionSeverityLevelView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview] = 0;
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___severityLabel] = 0;
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___criticalSeverityButton] = 0;
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_severityLevel] = a1;
  v8.receiver = v3;
  v8.super_class = v2;
  v4 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2281E9598();
  v5 = *&v4[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview];
  if (v5)
  {
    v6 = v5;
    [v6 hk:v4 alignConstraintsWithView:?];
  }

  return v4;
}

uint64_t FlexibleText.hash(into:)()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x22AAB70D0](1);
    return sub_228392C70();
  }

  else
  {
    v3 = v0[1];
    MEMORY[0x22AAB70D0](0);

    return sub_2283920B0();
  }
}

uint64_t FlexibleText.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_228393520();
  if (v3)
  {
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
  }

  else
  {
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
  }

  return sub_228393570();
}

uint64_t sub_2281E9B84()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_228393520();
  if (v3)
  {
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
  }

  else
  {
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
  }

  return sub_228393570();
}

uint64_t sub_2281E9C08()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x22AAB70D0](1);
    return sub_228392C70();
  }

  else
  {
    v3 = v0[1];
    MEMORY[0x22AAB70D0](0);

    return sub_2283920B0();
  }
}

uint64_t sub_2281E9C90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_228393520();
  if (v3)
  {
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
  }

  else
  {
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
  }

  return sub_228393570();
}

uint64_t TitleWithSubtitleItem.reuseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TitleWithSubtitleItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

id TitleWithSubtitleItem.title.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_2281EA40C(v2, v3, v4);
}

id TitleWithSubtitleItem.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_2281EA40C(v2, v3, v4);
}

uint64_t TitleWithSubtitleItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

__n128 TitleWithSubtitleItem.init(title:subtitle:uniqueIdentifier:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2[1].n128_u8[0];
  *a5 = 0xD000000000000015;
  *(a5 + 8) = 0x80000002283AAE80;
  *(a5 + 16) = *a1;
  *(a5 + 32) = v5;
  result = *a2;
  *(a5 + 40) = *a2;
  *(a5 + 56) = v6;
  *(a5 + 64) = a3;
  *(a5 + 72) = a4;
  return result;
}

uint64_t TitleWithSubtitleItem.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  if (*(v0 + 32))
  {
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
    if ((v4 & 1) == 0)
    {
LABEL_3:
      MEMORY[0x22AAB70D0](0);
      sub_2283920B0();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = *(v0 + 24);
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x22AAB70D0](1);
  sub_228392C70();
LABEL_6:

  return sub_2283920B0();
}

uint64_t TitleWithSubtitleItem.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  sub_228393520();
  if ((v3 & 1) == 0)
  {
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
    goto LABEL_6;
  }

  MEMORY[0x22AAB70D0](1);
  sub_228392C70();
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  MEMORY[0x22AAB70D0](0);
  sub_2283920B0();
LABEL_6:
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281EA01C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  if (*(v0 + 32))
  {
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
    if ((v4 & 1) == 0)
    {
LABEL_3:
      MEMORY[0x22AAB70D0](0);
      sub_2283920B0();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = *(v0 + 24);
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x22AAB70D0](1);
  sub_228392C70();
LABEL_6:

  return sub_2283920B0();
}

uint64_t sub_2281EA108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  sub_228393520();
  if ((v3 & 1) == 0)
  {
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
    goto LABEL_6;
  }

  MEMORY[0x22AAB70D0](1);
  sub_228392C70();
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  MEMORY[0x22AAB70D0](0);
  sub_2283920B0();
LABEL_6:
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281EA1F4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_2281EA224(uint64_t a1)
{
  v2 = sub_2281EA78C();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t _s19HealthMedicationsUI12FlexibleTextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_2281A2270();
      sub_2281EA40C(v6, v5, 1);
      sub_2281EA40C(v3, v2, 1);
      v8 = sub_228392C60();
      sub_2281EA7E0(v3, v2, 1);
      v9 = v6;
      v10 = v5;
      v11 = 1;
LABEL_11:
      sub_2281EA7E0(v9, v10, v11);
      return v8 & 1;
    }

LABEL_5:
    sub_2281EA40C(*a2, *(a2 + 8), v7);
    sub_2281EA40C(v3, v2, v4);
    sub_2281EA7E0(v3, v2, v4);
    sub_2281EA7E0(v6, v5, v7);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

  v13 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v8 = sub_228393460();
    sub_2281EA40C(v6, v5, 0);
    sub_2281EA40C(v3, v2, 0);
    sub_2281EA7E0(v3, v2, 0);
    v9 = v6;
    v10 = v5;
    v11 = 0;
    goto LABEL_11;
  }

  sub_2281EA40C(v13, v2, 0);
  sub_2281EA40C(v3, v2, 0);
  sub_2281EA7E0(v3, v2, 0);
  sub_2281EA7E0(v3, v2, 0);
  return 1;
}

id sub_2281EA40C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t _s19HealthMedicationsUI21TitleWithSubtitleItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v18 = *(a1 + 72);
  v19 = *(a1 + 64);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a2 + 72);
  v17 = *(a2 + 64);
  v23 = *(a1 + 16);
  v24 = v2;
  v25 = v3;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  sub_2281EA40C(v23, v2, v3);
  sub_2281EA40C(v7, v8, v9);
  v14 = _s19HealthMedicationsUI12FlexibleTextO2eeoiySbAC_ACtFZ_0(&v23, &v20);
  sub_2281EA7E0(v20, v21, v22);
  sub_2281EA7E0(v23, v24, v25);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v23 = v4;
  v24 = v5;
  v25 = v6;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  sub_2281EA40C(v4, v5, v6);
  sub_2281EA40C(v10, v11, v12);
  v15 = _s19HealthMedicationsUI12FlexibleTextO2eeoiySbAC_ACtFZ_0(&v23, &v20);
  sub_2281EA7E0(v20, v21, v22);
  sub_2281EA7E0(v23, v24, v25);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  if (v19 == v17 && v18 == v13)
  {
    return 1;
  }

  return sub_228393460();
}

unint64_t sub_2281EA5A4()
{
  result = qword_27D824D50;
  if (!qword_27D824D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824D50);
  }

  return result;
}

unint64_t sub_2281EA5FC()
{
  result = qword_27D824D58;
  if (!qword_27D824D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824D58);
  }

  return result;
}

unint64_t sub_2281EA654()
{
  result = qword_27D824D60;
  if (!qword_27D824D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824D60);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2281EA6E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2281EA728(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2281EA78C()
{
  result = qword_27D824D68;
  if (!qword_27D824D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824D68);
  }

  return result;
}

void sub_2281EA7E0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2281EA860()
{
  v1 = v0;
  v71 = sub_228391060();
  v2 = *(v71 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v71);
  v70 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v69 = v55 - v6;
  v7 = sub_22838F6C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228391130();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v72 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v55 - v17;
  sub_2283910C0();
  sub_22838F680();
  v19 = sub_228391030();
  (*(v8 + 8))(v11, v7);
  v21 = v13 + 8;
  v20 = *(v13 + 8);
  v68 = v18;
  v22 = v18;
  v23 = v20;
  v20(v22, v12);
  v24 = *(v19 + 16);
  if (v24)
  {
    v65 = sel_didTapDay_;
    v64 = *MEMORY[0x277D12788];
    v62 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_disabledDays];
    v61 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_dayViews];
    v25 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v55[1] = v19;
    v26 = v19 + v25;
    v60 = 0x80000002283AAF20;
    v63 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_selectedDays];
    swift_beginAccess();
    v28 = *(v2 + 16);
    v27 = v2 + 16;
    v59 = v28;
    v58 = (v27 - 8);
    v57 = (v13 + 16);
    v67 = v27;
    v56 = *(v27 + 56);
    v29 = v23;
    v66 = v12;
    do
    {
      v73 = v24;
      v30 = v21;
      v31 = v69;
      v32 = v71;
      v33 = v59;
      v59(v69, v26, v71);
      v34 = v70;
      v33(v70, v31, v32);
      v35 = objc_allocWithZone(type metadata accessor for DayPickerDay());
      v36 = sub_228239C58(v34);
      sub_228391040();
      v37 = sub_228392000();
      v39 = v38;
      v74 = 0;
      v75 = 0xE000000000000000;
      v40 = v36;
      sub_2283931D0();

      v74 = 0xD000000000000022;
      v75 = v60;
      v41 = sub_228391050();
      (*v58)(v31, v32);
      v76 = v41;
      v42 = sub_228393420();
      MEMORY[0x22AAB5C80](v42);

      v43 = v1;
      v45 = v74;
      v44 = v75;
      v74 = v37;
      v75 = v39;

      MEMORY[0x22AAB5C80](v45, v44);
      v46 = v72;

      v1 = v43;
      v21 = v30;
      v47 = v66;

      v48 = sub_228391FC0();

      [v40 setAccessibilityIdentifier_];

      v49 = v68;
      (*v57)(v68, v63, v47);
      sub_2281DC0DC(&qword_27D824820);
      LOBYTE(v41) = sub_228392FA0();
      v29(v49, v47);
      [v40 setSelected_];
      v50 = v40;
      [v50 setEnabled_];

      [v50 addTarget:v1 action:v65 forControlEvents:64];
      v51 = v61;
      swift_beginAccess();
      v52 = v50;
      MEMORY[0x22AAB5D20]();
      if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2283921E0();
      }

      sub_228392230();
      swift_endAccess();
      [v1 addSubview_];

      v29(v46, v47);
      v26 += v56;
      v24 = v73 - 1;
    }

    while (v73 != 1);
  }
}

void sub_2281EAEC0()
{
  v40 = MEMORY[0x277D84F90];
  v1 = &off_2785F4000;
  v2 = [v0 layoutMarginsGuide];
  v39 = [v2 topAnchor];

  v3 = [v0 layoutMarginsGuide];
  v38 = [v3 bottomAnchor];

  v4 = [v0 layoutMarginsGuide];
  v5 = [v4 leadingAnchor];

  v6 = OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_dayViews;
  swift_beginAccess();
  v7 = *&v0[v6];
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v30 = *&v0[v6];
    }

    v8 = sub_2283930D0();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_20:
    v29 = 0;
    goto LABEL_21;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  v37 = v0;

  v9 = 0;
  v10 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAB6D80](v10, v7);
    }

    else
    {
      v12 = *(v7 + 8 * v10 + 32);
    }

    v13 = v12;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_228180ED0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_228399D40;
    v15 = [v13 leadingAnchor];
    v16 = [v15 constraintEqualToAnchor_];

    *(inited + 32) = v16;
    v17 = [v13 topAnchor];
    v18 = [v17 constraintEqualToAnchor_];

    *(inited + 40) = v18;
    v19 = [v13 bottomAnchor];
    v20 = [v38 constraintEqualToAnchor_];

    *(inited + 48) = v20;
    sub_2281D5A98(inited);
    v21 = [v13 heightAnchor];
    v22 = [v21 constraintEqualToConstant_];

    LODWORD(v23) = 1144750080;
    [v22 setPriority_];
    v24 = v22;
    MEMORY[0x22AAB5D20]();
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2283921E0();
    }

    sub_228392230();
    if (v9)
    {
      v25 = v9;
      v26 = [v13 widthAnchor];
      v27 = [v26 constraintEqualToAnchor_];

      MEMORY[0x22AAB5D20]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2283921E0();
      }

      sub_228392230();
    }

    else
    {
      v9 = [v13 widthAnchor];
    }

    ++v10;
    v11 = [v13 trailingAnchor];

    v5 = v11;
  }

  while (v8 != v10);
  v29 = v9;

  v5 = v11;
  v0 = v37;
  v1 = &off_2785F4000;
LABEL_21:
  v31 = [v0 v1[116]];
  v32 = [v31 trailingAnchor];

  v33 = [v32 constraintEqualToAnchor_];
  MEMORY[0x22AAB5D20]();
  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v36 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2283921E0();
  }

  sub_228392230();
  v34 = objc_opt_self();
  sub_2281BF1B8();
  v35 = sub_228392190();

  [v34 activateConstraints_];
}

uint64_t sub_2281EB43C(void *a1)
{
  sub_2281EBC94();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228391130();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  [a1 setSelected_];
  sub_228391040();
  v18 = [a1 isSelected];
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_selectedDays;
  if (v18)
  {
    swift_beginAccess();
    sub_2281EB758(v15, v17);
    (*(v8 + 8))(v15, v7);
  }

  else
  {
    swift_beginAccess();
    (*(v8 + 16))(v15, &v1[v19], v7);
    sub_2281DC0DC(&qword_27D824820);
    sub_228392FB0();
    if (sub_228392FE0())
    {
      (*(v8 + 8))(v12, v7);
      v20 = 1;
    }

    else
    {
      sub_228392FF0();
      (*(v8 + 32))(v6, v12, v7);
      v20 = 0;
    }

    (*(v8 + 56))(v6, v20, 1, v7);
    sub_2281EBCEC(v6);
  }

  swift_endAccess();
  [v1 sendActionsForControlEvents_];
  return (*(v8 + 8))(v17, v7);
}

uint64_t sub_2281EB758(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  sub_2281EBD48();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_228391130();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v19 = *(v12 + 16);
  v28 = v2;
  v19(v16, v2, v11);
  v26 = sub_2281DC0DC(&qword_27D824820);
  sub_228392FB0();
  sub_2281DC0DC(&qword_280DDBD08);
  v27 = a2;
  v20 = sub_228391FB0();
  v30 = v5;
  v21 = *(v5 + 48);
  *v10 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v12 + 32))(&v10[v21], v18, v11);
  }

  else
  {
    (*(v12 + 8))(v18, v11);
    v22 = v27;
    v19(&v10[v21], v27, v11);
    v19(v16, v22, v11);
    sub_228393000();
  }

  v23 = v29;
  sub_2281EBDB4(v10, v29);
  v24 = *v23;
  (*(v12 + 32))(v31, &v23[*(v30 + 48)], v11);
  return v24;
}

id sub_2281EBABC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DayPicker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DayPicker()
{
  result = qword_27D824D78;
  if (!qword_27D824D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2281EBBF4()
{
  result = sub_228391130();
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

void sub_2281EBC94()
{
  if (!qword_280DDBCF8)
  {
    sub_228391130();
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDBCF8);
    }
  }
}

uint64_t sub_2281EBCEC(uint64_t a1)
{
  sub_2281EBC94();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281EBD48()
{
  if (!qword_280DDBB28)
  {
    sub_228391130();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDBB28);
    }
  }
}

uint64_t sub_2281EBDB4(uint64_t a1, uint64_t a2)
{
  sub_2281EBD48();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SpecificationStepViewController.init(item:dataSource:listManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *MEMORY[0x277D85000] & *v3;
  sub_228181FB4(a1, v4 + qword_27D828B18);
  v9 = *(v8 + class metadata base offset for SpecificationStepViewController);
  v10 = *(v8 + class metadata base offset for SpecificationStepViewController + 8);
  type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource();
  v11 = swift_unknownObjectRetain();
  v12 = sub_2281ECF30(v11);
  swift_unknownObjectRelease();
  *(v4 + qword_27D824D88) = v12;
  *(v4 + qword_27D824D90) = a3;
  sub_2283901F0();
  if (swift_dynamicCastClass())
  {
    v13 = sub_228390480();
  }

  else
  {
    sub_228182110();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_228397F40;
    v15 = *(v10 + 8);
    *(v14 + 32) = a2;
    *(v14 + 40) = v15;
    swift_unknownObjectRetain();

    sub_228390220();
    v13 = sub_228390480();
    swift_unknownObjectRelease();
  }

  sub_2281ED224(a1, sub_2281EBF9C);
  return v13;
}

void sub_2281EBF9C()
{
  if (!qword_27D8238D0)
  {
    type metadata accessor for MedicationSearchItem(255);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8238D0);
    }
  }
}

uint64_t sub_2281EC03C()
{
  sub_2281ED014();
}

uint64_t sub_2281EC064(uint64_t a1)
{
  v3 = qword_27D824D90;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2281EC11C()
{
  sub_2281ED058();
}

uint64_t sub_2281EC144()
{
  v1 = v0;
  v2 = *MEMORY[0x277D85000] & *v0;
  v4 = *(v2 + class metadata base offset for SpecificationStepViewController);
  v3 = *(v2 + class metadata base offset for SpecificationStepViewController + 8);
  swift_getAssociatedTypeWitness();
  sub_228392F00();
  sub_228391880();
  swift_getWitnessTable();
  v5 = sub_228391740();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v13[1] = *(*(v1 + qword_27D824D88) + 24);
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;

  sub_2283919F0();

  swift_getWitnessTable();
  v11 = sub_228391990();
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t sub_2281EC388()
{
  sub_2281BC944();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8[15] = 0;
  sub_2283918C0();
  sub_2281ED0F4();
  v6 = sub_228391990();
  (*(v2 + 8))(v5, v1);
  return v6;
}

void sub_2281EC474()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = [v0 navigationItem];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v3 = *(v1 + class metadata base offset for SpecificationStepViewController);
  v4 = *(v1 + class metadata base offset for SpecificationStepViewController + 8);
  v5 = type metadata accessor for SpecificationStepViewController();
  v16[3] = v5;
  v16[0] = v0;
  v6 = v0;
  v7 = sub_228391FC0();

  if (v5)
  {
    v8 = __swift_project_boxed_opaque_existential_0(v16, v5);
    v9 = *(v5 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_228393450();
    (*(v9 + 8))(v12, v5);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v15 = [v14 initWithTitle:v7 style:2 target:v13 action:{sel_cancelTapped_, v16[0]}];

  swift_unknownObjectRelease();
  [v2 setRightBarButtonItem_];
}

uint64_t sub_2281EC6F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id SpecificationStepViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_2281EC7EC(void *a1)
{
  v1 = *MEMORY[0x277D85000] & *a1;
  v2 = *(v1 + class metadata base offset for SpecificationStepViewController);
  v3 = *(v1 + class metadata base offset for SpecificationStepViewController + 8);
  sub_2281ED164();
}

void sub_2281EC860()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  sub_2281EC474();
  v2 = *(v1 + class metadata base offset for SpecificationStepViewController);
  v3 = *(v1 + class metadata base offset for SpecificationStepViewController + 8);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SpecificationStepViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    [v4 setPreservesSuperviewLayoutMargins_];

    v6 = [v0 collectionView];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() systemBackgroundColor];
      [v7 setBackgroundColor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2281EC98C(void *a1)
{
  v1 = a1;
  sub_2281EC860();
}

void sub_2281EC9D4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2281ED14C();
}

void sub_2281ECA34(void *a1)
{
  v2 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_22838F710();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    v8 = v4;
    sub_2281ED1D8();
    sub_22818217C(0, &qword_27D8243E0);
    v5 = v4;
    if (swift_dynamicCast())
    {
      sub_22819A62C(v6, v9);
      __swift_project_boxed_opaque_existential_0(v9, v9[3]);
      sub_22838FE30();

      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {

      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_2281ED224(v6, sub_2281ED284);
    }
  }
}

uint64_t sub_2281ECB8C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2281ECA34(v10);

  return (*(v6 + 8))(v9, v5);
}

id SpecificationStepViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

void SpecificationStepViewController.init(collectionViewLayout:)()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + class metadata base offset for SpecificationStepViewController);
  v3 = *(v1 + class metadata base offset for SpecificationStepViewController + 8);
  sub_2281ED2F0();
}

void sub_2281ECD7C(void *a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85000] & *a1;
  v4 = *(v3 + class metadata base offset for SpecificationStepViewController);
  v5 = *(v3 + class metadata base offset for SpecificationStepViewController + 8);
  v6 = a3;

  sub_2281ED2F0();
}

uint64_t sub_2281ECDF8()
{
  v1 = *(v0 + qword_27D824D88);

  v2 = *(v0 + qword_27D824D90);

  return sub_2281ED224(v0 + qword_27D828B18, sub_2281EBF9C);
}

id SpecificationStepViewController.__deallocating_deinit()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + class metadata base offset for SpecificationStepViewController);
  v3 = *(v1 + class metadata base offset for SpecificationStepViewController + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SpecificationStepViewController();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_2281ECECC(uint64_t a1)
{
  v2 = *(a1 + qword_27D824D88);

  v3 = *(a1 + qword_27D824D90);

  return sub_2281ED224(a1 + qword_27D828B18, sub_2281EBF9C);
}

uint64_t *sub_2281ECF30(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource();
  v5 = swift_allocObject();
  v6 = *v5;
  v5[2] = a1;
  v7 = *(v6 + 88);
  v8 = *(v7 + 32);
  v9 = *(v6 + 80);
  swift_unknownObjectRetain();
  v5[3] = v8(v9, v7);
  return v5;
}

uint64_t sub_2281ED014()
{
  v1 = qword_27D824D90;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2281ED06C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 48))(a1, 1, AssociatedTypeWitness);
  *a2 = result != 1;
  return result;
}

unint64_t sub_2281ED0F4()
{
  result = qword_27D8245C8;
  if (!qword_27D8245C8)
  {
    sub_2281BC944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8245C8);
  }

  return result;
}

unint64_t sub_2281ED1D8()
{
  result = qword_27D827770;
  if (!qword_27D827770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D827770);
  }

  return result;
}

uint64_t sub_2281ED224(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2281ED284()
{
  if (!qword_27D827780)
  {
    sub_22818217C(255, &qword_27D8243E0);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827780);
    }
  }
}

void sub_2281ED320()
{
  sub_2281EBF9C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void *sub_2281ED684(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v118 = a2;
  v119 = a4;
  v110 = a1;
  v104 = sub_2283911B0();
  v103 = *(v104 - 8);
  v5 = *(v103 + 64);
  v6 = MEMORY[0x28223BE20](v104);
  v102 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v100 = &v99 - v8;
  v113 = sub_22838EF60();
  v117 = *(v113 - 8);
  v9 = *(v117 + 64);
  MEMORY[0x28223BE20](v113);
  v122 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2281EEA64(0, &unk_280DDCD70, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v99 - v14;
  sub_2281EEA64(0, &qword_280DDCD80, MEMORY[0x277CC99E8], v11);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v99 - v18;
  v20 = sub_22838F080();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281EEA64(0, &qword_280DDCDB0, MEMORY[0x277CC9578], v11);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v115 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v108 = &v99 - v29;
  v30 = sub_22838F440();
  v107 = *(v30 - 8);
  v31 = v107[8];
  v32 = MEMORY[0x28223BE20](v30);
  v101 = &v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v112 = &v99 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v111 = &v99 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v121 = &v99 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v120 = &v99 - v41;
  MEMORY[0x28223BE20](v40);
  v106 = &v99 - v42;
  v43 = sub_22838F6C0();
  (*(*(v43 - 8) + 56))(v19, 1, 1, v43);
  v44 = sub_22838F700();
  (*(*(v44 - 8) + 56))(v15, 1, 1, v44);
  sub_22838F060();
  v116 = a3;
  v45 = MEMORY[0x22AAB2B60](a3, v24);
  v46 = *(v21 + 8);
  v114 = v20;
  v109 = (v21 + 8);
  v105 = v46;
  v46(v24, v20);
  sub_2281EEA64(0, &qword_280DDB8D8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v47 = sub_22838F6A0();
  v48 = *(v47 - 8);
  v49 = *(v48 + 72);
  v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v51 = (v48 + 104);
  v52 = 2 * v49;
  v53 = swift_allocObject();
  if (v45)
  {
    *(v53 + 16) = xmmword_22839B440;
    v54 = v53 + v50;
    v55 = *v51;
    (*v51)(v54, *MEMORY[0x277CC9988], v47);
    v55(v54 + v49, *MEMORY[0x277CC9998], v47);
    v55(v54 + v52, *MEMORY[0x277CC9968], v47);
    v55(v54 + 3 * v49, *MEMORY[0x277CC9980], v47);
  }

  else
  {
    *(v53 + 16) = xmmword_228398270;
    v56 = v53 + v50;
    v57 = *v51;
    (*v51)(v56, *MEMORY[0x277CC9988], v47);
    v57(v56 + v49, *MEMORY[0x277CC9998], v47);
    v57(v56 + v52, *MEMORY[0x277CC9968], v47);
  }

  sub_2281EF358(v53);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v58 = v110;
  sub_22838F5C0();

  v59 = v108;
  sub_22838F640();
  v105(v24, v114);
  v60 = v107;
  v114 = v107[6];
  if (v114(v59, 1, v30) == 1)
  {
    sub_2281982F0(v59);
    v61 = v102;
    sub_228391190();
    v62 = v101;
    (v60[2])(v101, v58, v30);
    v63 = sub_2283911A0();
    v64 = sub_2283925C0();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v123[0] = v66;
      *v65 = 136315394;
      v67 = sub_228393600();
      v69 = sub_2281C96FC(v67, v68, v123);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      sub_2281F0A24(&qword_27D8283D0, MEMORY[0x277CC9578]);
      v70 = sub_228393420();
      v72 = v71;
      (v60[1])(v62, v30);
      v73 = sub_2281C96FC(v70, v72, v123);

      *(v65 + 14) = v73;
      _os_log_impl(&dword_22816B000, v63, v64, "<%s> Failed to strip date of unrelated components %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v66, -1, -1);
      MEMORY[0x22AAB7B80](v65, -1, -1);
    }

    else
    {

      (v60[1])(v62, v30);
    }

    (*(v103 + 8))(v61, v104);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v74 = v106;
    v109 = v60[4];
    v110 = v60 + 4;
    v109(v106, v59, v30);
    v75 = v60[2];
    v75(v120, v74, v30);
    if (sub_22838F3A0())
    {
      v108 = (v117 + 32);
      v76 = (v60 + 5);
      v77 = MEMORY[0x277D84F90];
      v78 = v120;
      v79 = v121;
      while (1)
      {
        v80 = v115;
        sub_22838F650();
        if (v114(v80, 1, v30) == 1)
        {
          break;
        }

        v109(v79, v80, v30);
        v75(v111, v78, v30);
        v75(v112, v79, v30);
        sub_22838EF30();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_228199038(0, v77[2] + 1, 1, v77);
        }

        v82 = v77[2];
        v81 = v77[3];
        if (v82 >= v81 >> 1)
        {
          v77 = sub_228199038(v81 > 1, v82 + 1, 1, v77);
        }

        v77[2] = v82 + 1;
        (*(v117 + 32))(v77 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v82, v122, v113);
        v78 = v120;
        (*v76)(v120, v121, v30);
        if ((sub_22838F3A0() & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      sub_2281982F0(v80);
      v85 = v100;
      sub_228391190();
      v86 = sub_2283911A0();
      v87 = sub_2283925C0();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v124[0] = v89;
        *v88 = 136315394;
        v90 = sub_228393600();
        v92 = sub_2281C96FC(v90, v91, v124);

        *(v88 + 4) = v92;
        *(v88 + 12) = 2080;
        v93 = v120;
        swift_beginAccess();
        sub_2281F0A24(&qword_27D8283D0, MEMORY[0x277CC9578]);
        v94 = sub_228393420();
        v96 = sub_2281C96FC(v94, v95, v124);

        *(v88 + 14) = v96;
        _os_log_impl(&dword_22816B000, v86, v87, "<%s> Failed to add interval to current start date %s", v88, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v89, -1, -1);
        MEMORY[0x22AAB7B80](v88, -1, -1);

        (*(v103 + 8))(v85, v104);
        v97 = v107[1];
        v97(v106, v30);
        v97(v93, v30);
      }

      else
      {

        (*(v103 + 8))(v85, v104);
        v98 = v107[1];
        v98(v106, v30);
        v98(v120, v30);
      }
    }

    else
    {
      v77 = MEMORY[0x277D84F90];
      v78 = v120;
LABEL_19:
      v83 = v107[1];
      v83(v106, v30);
      v83(v78, v30);
    }
  }

  return v77;
}

uint64_t sub_2281EE528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a3;
  v4 = MEMORY[0x277D83D88];
  sub_2281EEA64(0, &unk_280DDCD70, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  sub_2281EEA64(0, &qword_280DDCD80, MEMORY[0x277CC99E8], v4);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_22838F080();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22838F6C0();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_22838F700();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  sub_22838F060();
  LOBYTE(v12) = MEMORY[0x22AAB2B60](a2, v17);
  v32 = *(v14 + 8);
  v33 = v13;
  v32(v17, v13);
  sub_2281EEA64(0, &qword_280DDB8D8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v20 = sub_22838F6A0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = (v21 + 104);
  v25 = 2 * v22;
  v26 = swift_allocObject();
  if (v12)
  {
    *(v26 + 16) = xmmword_22839B440;
    v27 = v26 + v23;
    v28 = *v24;
    (*v24)(v27, *MEMORY[0x277CC9988], v20);
    v28(v27 + v22, *MEMORY[0x277CC9998], v20);
    v28(v27 + v25, *MEMORY[0x277CC9968], v20);
    v28(v27 + 3 * v22, *MEMORY[0x277CC9980], v20);
  }

  else
  {
    *(v26 + 16) = xmmword_228398270;
    v29 = v26 + v23;
    v30 = *v24;
    (*v24)(v29, *MEMORY[0x277CC9988], v20);
    v30(v29 + v22, *MEMORY[0x277CC9998], v20);
    v30(v29 + v25, *MEMORY[0x277CC9968], v20);
  }

  sub_2281EF358(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22838F5C0();

  sub_22838F640();
  return (v32)(v17, v33);
}

void sub_2281EEA64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2281EEAC8(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  v3 = sub_22838F380();
  v4 = sub_22838F380();
  v8[4] = sub_2281EF66C;
  v8[5] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2281EEF90;
  v8[3] = &block_descriptor_8;
  v5 = _Block_copy(v8);

  [a1 enumerateStatisticsFromDate:v3 toDate:v4 withBlock:v5];
  _Block_release(v5);

  swift_beginAccess();
  v6 = *(v2 + 16);

  return v6;
}

id sub_2281EEC1C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22819A424(0, &unk_280DDCDE0, MEMORY[0x277CC88A8]);
  v6 = v5;
  v34 = *(v5 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = sub_22838F440();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22838EF60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 sumQuantity];
  if (result)
  {
    v19 = result;
    v20 = [objc_opt_self() countUnit];
    v33 = a3;
    v21 = v20;
    [v19 doubleValueForUnit_];
    v23 = v22;

    v24 = [a1 startDate];
    sub_22838F3E0();

    v25 = [a1 endDate];
    sub_22838F3E0();

    sub_22838EF30();
    v26 = *(v6 + 48);
    (*(v14 + 32))(v9, v17, v13);
    *&v9[v26] = v23;
    v27 = v33;
    swift_beginAccess();
    v28 = *(v27 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v27 + 16) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_22819906C(0, v28[2] + 1, 1, v28);
      *(v27 + 16) = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_22819906C(v30 > 1, v31 + 1, 1, v28);
    }

    v28[2] = v31 + 1;
    result = sub_2281F0924(v9, v28 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v31, &unk_280DDCDE0, MEMORY[0x277CC88A8]);
    *(v27 + 16) = v28;
  }

  return result;
}

void sub_2281EEF90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2281EF008()
{
  sub_22838F230();
  sub_22838F230();

  return sub_22838F220();
}

uint64_t sub_2281EF074(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = sub_22838F6C0();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F680();
  v12 = sub_2281ED684(a1, a2, a3, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  v14 = sub_22838F380();
  v15 = sub_22838F380();
  aBlock[4] = sub_2281F0A74;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2281EEF90;
  aBlock[3] = &block_descriptor_5;
  v16 = _Block_copy(aBlock);

  [a4 enumerateStatisticsFromDate:v14 toDate:v15 withBlock:v16];
  _Block_release(v16);

  swift_beginAccess();
  v17 = *(v13 + 16);

  v18 = sub_2281EF68C(v17);

  v19 = sub_2281EFBA4(v12, v18);

  (*(v8 + 8))(v11, v22);
  return v19;
}

double sub_2281EF2BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  if (v1 <= 3)
  {
    v2 = 0;
    result = 0.0;
LABEL_8:
    v7 = v1 - v2;
    v8 = (a1 + 8 * v2 + 32);
    do
    {
      v9 = *v8++;
      result = result + v9;
      --v7;
    }

    while (v7);
    return result;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v4 = (a1 + 48);
  result = 0.0;
  v5 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v6 = *v4;
    result = result + *(v4 - 2) + *(v4 - 1) + *v4 + v4[1];
    v4 += 4;
    v5 -= 4;
  }

  while (v5);
  if (v1 != v2)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_2281EF358(uint64_t a1)
{
  v2 = sub_22838F6A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2281F0990();
    v10 = sub_2283931A0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2281F0A24(&qword_280DDCD90, MEMORY[0x277CC99D0]);
      v18 = sub_228391F60();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2281F0A24(&qword_280DDCD88, MEMORY[0x277CC99D0]);
          v25 = sub_228391FB0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_2281EF68C(uint64_t a1)
{
  v52 = sub_22838F440();
  v2 = *(v52 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v40 - v6;
  sub_2281F07E8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22819A424(0, &unk_280DDCDA0, MEMORY[0x277CC9578]);
  v49 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v48 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v40 - v16;
  sub_22819A424(0, &unk_280DDCDE0, MEMORY[0x277CC88A8]);
  v47 = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v46 = &v40 - v20;
  v21 = *(a1 + 16);
  if (!v21)
  {
    return MEMORY[0x277D84F90];
  }

  v22 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v23 = *(v19 + 72);
  v44 = (v2 + 8);
  v45 = v23;
  v43 = (v12 + 56);
  v53 = MEMORY[0x277D84F90];
  v40 = v12;
  v42 = (v12 + 48);
  v24 = v50;
  do
  {
    v54 = v21;
    v25 = MEMORY[0x277CC88A8];
    v26 = v46;
    sub_2281F085C(v22, v46, &unk_280DDCDE0, MEMORY[0x277CC88A8]);
    v27 = *(v26 + *(v47 + 48));
    v28 = v49;
    v29 = *(v49 + 48);
    sub_22838EF40();
    v30 = v51;
    sub_22838EF20();
    sub_22838F230();
    sub_22838F230();
    sub_22838F220();
    v31 = *v44;
    v32 = v30;
    v33 = v52;
    (*v44)(v32, v52);
    v31(v24, v33);
    *&v10[v29] = v27;
    (*v43)(v10, 0, 1, v28);
    sub_2281F078C(v26, &unk_280DDCDE0, v25);
    if ((*v42)(v10, 1, v28) == 1)
    {
      sub_2281F08C8(v10);
    }

    else
    {
      v34 = MEMORY[0x277CC9578];
      v35 = v41;
      sub_2281F0924(v10, v41, &unk_280DDCDA0, MEMORY[0x277CC9578]);
      sub_2281F0924(v35, v48, &unk_280DDCDA0, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_22819928C(0, v53[2] + 1, 1, v53);
      }

      v37 = v53[2];
      v36 = v53[3];
      if (v37 >= v36 >> 1)
      {
        v53 = sub_22819928C(v36 > 1, v37 + 1, 1, v53);
      }

      v38 = v53;
      v53[2] = v37 + 1;
      sub_2281F0924(v48, v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v37, &unk_280DDCDA0, MEMORY[0x277CC9578]);
    }

    v22 += v45;
    v21 = v54 - 1;
  }

  while (v54 != 1);
  return v53;
}

uint64_t sub_2281EFBA4(uint64_t a1, uint64_t a2)
{
  sub_22819A338();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22838EF60();
  v7 = *(v50 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v50);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22819A424(0, &unk_280DDCDA0, MEMORY[0x277CC9578]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = *(a2 + 16);
  if (!v20)
  {
    return MEMORY[0x277D84F90];
  }

  v52 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  sub_2281F085C(v52, &v39 - v18, &unk_280DDCDA0, MEMORY[0x277CC9578]);
  v44 = *(a1 + 16);
  if (v44)
  {
    v51 = v13;
    v21 = 0;
    v22 = 0;
    v46 = *(v7 + 16);
    v47 = v7 + 16;
    v43 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v23 = *(v7 + 72);
    v41 = (v7 + 8);
    v42 = v23;
    v24 = MEMORY[0x277D84F90];
    do
    {
      v48 = v24;
      v49 = v22;
      v46(v10, v43 + v42 * v22, v50);
      v25 = MEMORY[0x277D84F90];
      if (v21 < v20)
      {
        while ((sub_22838EF50() & 1) != 0)
        {
          v26 = *(v12 + 48);
          v27 = *&v19[v26];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2281992E8(0, *(v25 + 16) + 1, 1, v25);
            v25 = result;
          }

          v30 = *(v25 + 16);
          v29 = *(v25 + 24);
          if (v30 >= v29 >> 1)
          {
            result = sub_2281992E8((v29 > 1), v30 + 1, 1, v25);
            v25 = result;
          }

          *(v25 + 16) = v30 + 1;
          *(v25 + 8 * v30 + 32) = v27;
          v31 = v21 + 1;
          if (v21 + 1 < v20)
          {
            if (v21 < -1)
            {
              __break(1u);
              return result;
            }

            sub_2281F085C(v52 + *(v51 + 72) * v31, v17, &unk_280DDCDA0, MEMORY[0x277CC9578]);
            v32 = *&v17[*(v12 + 48)];
            v33 = sub_22838F440();
            (*(*(v33 - 8) + 40))(v19, v17, v33);
            *&v19[v26] = v32;
          }

          ++v21;
          if (v20 == v31)
          {
            v21 = v20;
            break;
          }
        }
      }

      if (*(v25 + 16))
      {
        v34 = *(v40 + 48);
        v35 = v45;
        v46(v45, v10, v50);
        *(v35 + v34) = v25;
        v36 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_2281992B4(0, v36[2] + 1, 1, v36);
        }

        v38 = v36[2];
        v37 = v36[3];
        v24 = v36;
        if (v38 >= v37 >> 1)
        {
          v24 = sub_2281992B4(v37 > 1, v38 + 1, 1, v36);
        }

        (*v41)(v10, v50);
        *(v24 + 16) = v38 + 1;
        sub_2281F0728(v45, v24 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v38);
      }

      else
      {
        (*v41)(v10, v50);

        v24 = v48;
      }

      v22 = v49 + 1;
    }

    while (v49 + 1 != v44);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  sub_2281F078C(v19, &unk_280DDCDA0, MEMORY[0x277CC9578]);
  return v24;
}

uint64_t sub_2281F01D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2281F06D0();
    v3 = sub_2283931A0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_228393520();

      sub_2283920B0();
      result = sub_228393570();
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
          result = sub_228393460();
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

void sub_2281F0358(unint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a5;
    v11 = a2;
    v12 = sub_2283930D0();
    a2 = v11;
    a5 = v10;
    if (v12)
    {
LABEL_3:
      sub_2281F0644(0, a2, a3, a4, a5);
      v7 = sub_2283931A0();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_2283930D0();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v48 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v44 = v5;
    while (1)
    {
      v15 = MEMORY[0x22AAB6D80](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = *(v7 + 40);
      v19 = sub_228392C50();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v13 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        sub_22817A958(0, a3, a4);
        while (1)
        {
          v26 = *(*(v7 + 48) + 8 * v21);
          v27 = sub_228392C60();

          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v13 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          if (((1 << v21) & v23) == 0)
          {
            v9 = v48;
            v5 = v44;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v48;
        v5 = v44;
        if (v14 == v48)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v22) = v24 | v23;
        *(*(v7 + 48) + 8 * v21) = v17;
        v28 = *(v7 + 16);
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v29;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v30 = 0;
    v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v30 != v45)
    {
      v31 = *(v7 + 40);
      v32 = *(v5 + 32 + 8 * v30);
      v33 = sub_228392C50();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      v37 = *(v13 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if (((1 << v35) & v37) != 0)
      {
        v39 = ~v34;
        sub_22817A958(0, a3, a4);
        while (1)
        {
          v40 = *(*(v7 + 48) + 8 * v35);
          v41 = sub_228392C60();

          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v39;
          v36 = v35 >> 6;
          v37 = *(v13 + 8 * (v35 >> 6));
          v38 = 1 << v35;
          if (((1 << v35) & v37) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v36) = v38 | v37;
        *(*(v7 + 48) + 8 * v35) = v32;
        v42 = *(v7 + 16);
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v43;
      }

      if (++v30 == v48)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_2281F0644(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_22817A958(255, a3, a4);
    sub_2281A89C4(a5, a3, a4);
    v9 = sub_2283931B0();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2281F06D0()
{
  if (!qword_27D824EA0)
  {
    v0 = sub_2283931B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824EA0);
    }
  }
}

uint64_t sub_2281F0728(uint64_t a1, uint64_t a2)
{
  sub_22819A338();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281F078C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22819A424(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2281F07E8()
{
  if (!qword_280DDCD98)
  {
    sub_22819A424(255, &unk_280DDCDA0, MEMORY[0x277CC9578]);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDCD98);
    }
  }
}

uint64_t sub_2281F085C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22819A424(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2281F08C8(uint64_t a1)
{
  sub_2281F07E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2281F0924(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22819A424(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_2281F0990()
{
  if (!qword_280DDB920)
  {
    sub_22838F6A0();
    sub_2281F0A24(&qword_280DDCD90, MEMORY[0x277CC99D0]);
    v0 = sub_2283931B0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDB920);
    }
  }
}

uint64_t sub_2281F0A24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2281F0A88(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = qword_27D824ED0;
  result = sub_2283909C0();
  if (*(result + 16) < 8uLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  v8 = v2 + v5;
  v9 = *(sub_2283909E0() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *v8 = v7;
  *(v8 + 8) = v7 + v10;
  *(v8 + 16) = xmmword_22839B490;
  v11 = qword_27D824ED8;
  result = sub_2283909C0();
  if (*(result + 16) < 0x1CuLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v12 = v2 + v11;
  *v12 = result;
  *(v12 + 8) = result + v10;
  *(v12 + 16) = xmmword_22839B4A0;
  v13 = qword_27D824EE0;
  result = sub_2283909C0();
  if (*(result + 16) < 0x28uLL)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v2 + v13;
  *v14 = result;
  *(v14 + 8) = result + v10;
  *(v14 + 16) = xmmword_22839B4B0;
  v15 = qword_27D824EE8;
  result = sub_2283909C0();
  v16 = *(result + 16);
  if (v16 >= 0x28)
  {
    v17 = (v2 + v15);
    *v17 = result;
    v17[1] = result + v10;
    v17[2] = 40;
    v17[3] = (2 * v16) | 1;
    *(v2 + qword_27D824EF0) = MEMORY[0x277D84FA0];
    *(v2 + qword_27D824EA8) = a1;
    sub_2281F2C24(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    v18 = *(sub_22838FEF0() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_228397F40;

    sub_22838FED0();
    *(swift_allocObject() + 16) = v4;
    v21 = sub_228390380();

    sub_2281F142C();

    return v21;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_2281F0D28(uint64_t a1, void *a2, int a3)
{
  v6 = sub_2283900D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22838FDE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 traitCollection];
  v16 = sub_2283927D0();

  v62 = v11;
  v63 = v10;
  v64 = a1;
  v65 = v14;
  v58 = v7;
  v59 = v6;
  LODWORD(v60) = a3;
  if (v16 >= 3 && (a3 & 1) != 0)
  {
    v17 = 44.0;
  }

  else
  {
    v18 = objc_opt_self();
    v17 = 3.5;
    if (([v18 hk_currentDeviceHas4InchScreen] & 1) == 0)
    {
      if ([v18 hk_currentDeviceHas4Point7InchScreen])
      {
        v17 = 3.5;
      }

      else
      {
        v17 = 4.0;
      }
    }
  }

  v19 = objc_opt_self();
  v20 = [v19 fractionalWidthDimension_];
  v21 = [v19 fractionalHeightDimension_];
  v22 = objc_opt_self();
  v23 = [v22 sizeWithWidthDimension:v20 heightDimension:v21];

  v24 = objc_opt_self();
  v61 = v23;
  v25 = [v24 itemWithLayoutSize_];
  sub_2283928D0();
  [v25 setContentInsets_];
  v26 = [v19 fractionalWidthDimension_];
  v27 = [v19 fractionalWidthDimension_];
  v28 = [v22 sizeWithWidthDimension:v26 heightDimension:v27];

  v29 = objc_opt_self();
  sub_228180ED0();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_228396260;
  *(v30 + 32) = v25;
  sub_22817A958(0, &qword_27D824F40, 0x277CFB860);
  v31 = v25;
  v32 = sub_228392190();

  v33 = [v29 horizontalGroupWithLayoutSize:v28 subitems:v32];

  v34 = v65;
  sub_22838FDB0();
  v35 = [objc_opt_self() sectionWithGroup_];
  [v35 setContentInsetsReference_];
  v36 = sub_22838FD80();
  [v36 contentInsets];
  v38 = v37;

  v39 = sub_22838FD80();
  [v39 contentInsets];
  v41 = v40;

  [v35 setContentInsets_];
  if (!v64 && (v60 & 1) != 0)
  {
    v42 = sub_22838FD80();
    [v42 contentInsets];
    v44 = v43;

    [v35 contentInsets];
    [v35 setContentInsets_];
LABEL_24:
    (*(v62 + 8))(v34, v63);

    return v35;
  }

  if (v64 < 1)
  {
    goto LABEL_24;
  }

  v56 = v33;
  v45 = v57;
  sub_228390010();
  v46 = sub_2283900C0();
  (*(v58 + 8))(v45, v59);
  v47 = [v46 boundarySupplementaryItems];

  if (!v47)
  {
    sub_22817A958(0, &qword_27D824F48, 0x277CFB830);
    sub_2283921A0();
    v47 = sub_228392190();
  }

  v60 = v31;
  v64 = v28;
  [v35 setBoundarySupplementaryItems_];

  [v35 setSupplementaryContentInsetsReference_];
  v48 = [v35 boundarySupplementaryItems];
  sub_22817A958(0, &qword_27D824F48, 0x277CFB830);
  v49 = sub_2283921A0();

  if (v49 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v51 = 0;
    v17 = v17 + 3.0;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x22AAB6D80](v51, v49);
      }

      else
      {
        if (v51 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v52 = *(v49 + 8 * v51 + 32);
      }

      v53 = v52;
      v54 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      [v52 contentInsets];
      [v53 setContentInsets_];
      [v53 contentInsets];
      [v53 setContentInsets_];

      ++v51;
      if (v54 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  (*(v62 + 8))(v65, v63);
  return v35;
}

uint64_t sub_2281F142C()
{
  sub_2281F2C24(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v14 - v3;
  sub_2281F2C88();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[2] = *(v0 + qword_27D824EA8);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v11 = sub_228392790();
  v14[5] = v11;
  v12 = sub_228392730();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_228181EDC();
  sub_2281F24A4(&qword_27D824F30, sub_228181EDC);
  sub_2281A1504();
  sub_228391A70();
  sub_2281F2D54(v4, &qword_280DDBAD0, v14[1]);

  swift_allocObject();
  swift_weakInit();
  sub_2281F24A4(&qword_27D824F38, sub_2281F2C88);
  sub_228391AC0();

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2281F1748(unint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2281F17A8(a1);
  }

  return result;
}

uint64_t sub_2281F17A8(unint64_t a1)
{
  sub_2281F2C24(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v3 = *(sub_22838FEF0() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v29[2] = *(v3 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22839B440;
  v29[3] = v5;
  v6 = v5 + v4;
  v8 = *(v1 + qword_27D824ED0);
  v7 = *(v1 + qword_27D824ED0 + 8);
  v9 = *(v1 + qword_27D824ED0 + 16);
  v10 = *(v1 + qword_27D824ED0 + 24);
  v30 = a1;
  v32 = a1;
  swift_unknownObjectRetain();
  sub_228335E9C(sub_2281F2DF4, v31, v7, v9, v10);
  swift_unknownObjectRelease();
  v29[4] = v6;
  sub_22838FED0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v28 = 0xE000000000000000;
  v11 = sub_22838F0C0();
  v12 = *(v1 + qword_27D824ED8);
  v13 = *(v1 + qword_27D824ED8 + 8);
  v15 = *(v1 + qword_27D824ED8 + 16);
  v14 = *(v1 + qword_27D824ED8 + 24);
  MEMORY[0x28223BE20](v11);
  v28 = v30;
  swift_unknownObjectRetain();
  sub_228335E9C(sub_2281F2A80, v27, v13, v15, v14);
  swift_unknownObjectRelease();
  v16 = sub_22838FED0();
  v29[1] = v29;
  v17 = *(v1 + qword_27D824EE0);
  v18 = *(v1 + qword_27D824EE0 + 8);
  v19 = *(v1 + qword_27D824EE0 + 16);
  v20 = *(v1 + qword_27D824EE0 + 24);
  MEMORY[0x28223BE20](v16);
  v28 = v30;
  swift_unknownObjectRetain();
  sub_228335E9C(sub_2281F2DF4, v27, v18, v19, v20);
  swift_unknownObjectRelease();
  v21 = sub_22838FED0();
  v22 = *(v1 + qword_27D824EE8);
  v23 = *(v1 + qword_27D824EE8 + 8);
  v24 = *(v1 + qword_27D824EE8 + 16);
  v25 = *(v1 + qword_27D824EE8 + 24);
  MEMORY[0x28223BE20](v21);
  v28 = v30;
  swift_unknownObjectRetain();
  sub_228335E9C(sub_2281F2DF4, v27, v23, v24, v25);
  swift_unknownObjectRelease();
  sub_22838FED0();
  sub_22838FF50();
}

uint64_t sub_2281F1BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a2;
  v38 = a3;
  sub_2281F2AA0();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281F2C24(0, &qword_27D8238A8, MEMORY[0x277D11640], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v35 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = sub_2283909E0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = *(v16 + 16);
  v37 = &v35 - v22;
  v21();
  (v21)(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v23 = *(v5 + 56);
  sub_2281F2B34(v14, v8);
  sub_2281F2B34(v36, &v8[v23]);
  v24 = *(v16 + 48);
  if (v24(v8, 1, v15) != 1)
  {
    v26 = v35;
    sub_2281F2B34(v8, v35);
    if (v24(&v8[v23], 1, v15) != 1)
    {
      (*(v16 + 32))(v20, &v8[v23], v15);
      sub_2281F24A4(&qword_27D824F00, MEMORY[0x277D11640]);
      v25 = sub_228391FB0();
      v27 = *(v16 + 8);
      v27(v20, v15);
      v28 = MEMORY[0x277D11640];
      sub_2281F2D54(v14, &qword_27D8238A8, MEMORY[0x277D11640]);
      v27(v35, v15);
      sub_2281F2D54(v8, &qword_27D8238A8, v28);
      goto LABEL_8;
    }

    sub_2281F2D54(v14, &qword_27D8238A8, MEMORY[0x277D11640]);
    (*(v16 + 8))(v26, v15);
    goto LABEL_6;
  }

  sub_2281F2D54(v14, &qword_27D8238A8, MEMORY[0x277D11640]);
  if (v24(&v8[v23], 1, v15) != 1)
  {
LABEL_6:
    sub_2281F2BC8(v8);
    v25 = 0;
    goto LABEL_8;
  }

  sub_2281F2D54(v8, &qword_27D8238A8, MEMORY[0x277D11640]);
  v25 = 1;
LABEL_8:
  sub_228181CBC();
  v30 = v29;
  v31 = v38;
  v38[3] = v29;
  v31[4] = sub_2281F24A4(&qword_27D824F20, sub_228181CBC);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  result = (*(v16 + 32))(boxed_opaque_existential_1, v37, v15);
  *(boxed_opaque_existential_1 + *(v30 + 36)) = v25 & 1;
  v34 = (boxed_opaque_existential_1 + *(v30 + 40));
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  return result;
}

unint64_t sub_2281F20B0@<X0>(uint64_t *a1@<X8>)
{
  sub_2281F2C24(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_22838FEF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22838F750() == 1)
  {
    v11 = sub_22838FF40();
    result = sub_22838F750();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v11 + 16))
    {
      (*(v7 + 16))(v10, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * result, v6);

      sub_22838FEE0();
      v14 = v13;
      (*(v7 + 8))(v10, v6);
      if (v14)
      {
        v15 = sub_228390130();
        (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
        a1[3] = sub_228390150();
        a1[4] = sub_2281F24A4(&qword_27D824EC8, MEMORY[0x277D10FE8]);
        __swift_allocate_boxed_opaque_existential_1(a1);
        return sub_228390140();
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
    if ((sub_22838F750() - 5) < 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_7:
      a1[3] = sub_22838FC00();
      a1[4] = sub_2281F24A4(&qword_27D823958, MEMORY[0x277D10EC8]);
      __swift_allocate_boxed_opaque_existential_1(a1);
      return sub_22838FBF0();
    }

    v16 = [objc_opt_self() separatorColor];
    type metadata accessor for SeparatorHeaderCell();
    sub_2281F24A4(&qword_27D824EB8, type metadata accessor for SeparatorHeaderCell);
    v17 = sub_22838FBB0();
    v19 = v18;
    a1[3] = &type metadata for SeparatorHeaderItem;
    result = sub_2281F2450();
    a1[4] = result;
    *a1 = v16;
    a1[1] = v17;
    a1[2] = v19;
  }

  return result;
}

unint64_t sub_2281F2450()
{
  result = qword_27D824EC0;
  if (!qword_27D824EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824EC0);
  }

  return result;
}

uint64_t sub_2281F24A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2281F2550()
{
  v1 = *(v0 + qword_27D824ED0);
  swift_unknownObjectRelease();
  v2 = *(v0 + qword_27D824ED8);
  swift_unknownObjectRelease();
  v3 = *(v0 + qword_27D824EE0);
  swift_unknownObjectRelease();
  v4 = *(v0 + qword_27D824EE8);
  swift_unknownObjectRelease();
  v5 = *(v0 + qword_27D824EA8);

  v6 = *(v0 + qword_27D824EF0);
}

uint64_t VisualizationShapeDataSource.deinit()
{
  v0 = sub_2283903B0();
  v1 = *(v0 + qword_27D824ED0);
  swift_unknownObjectRelease();
  v2 = *(v0 + qword_27D824ED8);
  swift_unknownObjectRelease();
  v3 = *(v0 + qword_27D824EE0);
  swift_unknownObjectRelease();
  v4 = *(v0 + qword_27D824EE8);
  swift_unknownObjectRelease();
  v5 = *(v0 + qword_27D824EA8);

  v6 = *(v0 + qword_27D824EF0);

  return v0;
}

uint64_t VisualizationShapeDataSource.__deallocating_deinit()
{
  v0 = sub_2283903B0();
  v1 = *(v0 + qword_27D824ED0);

  swift_unknownObjectRelease();
  v2 = *(v0 + qword_27D824ED8);
  swift_unknownObjectRelease();
  v3 = *(v0 + qword_27D824EE0);
  swift_unknownObjectRelease();
  v4 = *(v0 + qword_27D824EE8);
  swift_unknownObjectRelease();
  v5 = *(v0 + qword_27D824EA8);

  v6 = *(v0 + qword_27D824EF0);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall VisualizationShapeDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for SeparatorHeaderCell();
  sub_2281F24A4(&qword_27D824EB8, type metadata accessor for SeparatorHeaderCell);
  sub_2283926D0();
  type metadata accessor for ShapeCell();
  sub_2281F24A4(&qword_27D824EF8, type metadata accessor for ShapeCell);
  sub_2283926B0();
}

uint64_t sub_2281F2850()
{
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for SeparatorHeaderCell();
  sub_2281F24A4(&qword_27D824EB8, type metadata accessor for SeparatorHeaderCell);
  sub_2283926D0();
  type metadata accessor for ShapeCell();
  sub_2281F24A4(&qword_27D824EF8, type metadata accessor for ShapeCell);
  return sub_2283926B0();
}

uint64_t type metadata accessor for VisualizationShapeDataSource()
{
  result = qword_27D824F08;
  if (!qword_27D824F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2281F2AA0()
{
  if (!qword_27D824F18)
  {
    sub_2281F2C24(255, &qword_27D8238A8, MEMORY[0x277D11640], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D824F18);
    }
  }
}

uint64_t sub_2281F2B34(uint64_t a1, uint64_t a2)
{
  sub_2281F2C24(0, &qword_27D8238A8, MEMORY[0x277D11640], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281F2BC8(uint64_t a1)
{
  sub_2281F2AA0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281F2C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2281F2C88()
{
  if (!qword_27D824F28)
  {
    sub_228181EDC();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2281F24A4(&qword_27D824F30, sub_228181EDC);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824F28);
    }
  }
}

uint64_t sub_2281F2D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281F2C24(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281F2E0C(uint64_t a1, uint64_t *a2)
{
  sub_22817A890(a1, v6, &qword_280DDCD50, sub_22817A700);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell_item;
  swift_beginAccess();
  sub_22817A680(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_2281F2E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell_item;
  swift_beginAccess();
  return sub_22817A890(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2281F2F00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

id sub_2281F2FE0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v1 = *MEMORY[0x277D76A08];
  v2 = sub_228392AD0();
  [v0 setFont_];

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v3 = sub_228391FC0();

  [v0 setText_];

  v4 = *MEMORY[0x277D12788];
  sub_228392000();
  v5 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AB310);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v6 = sub_228391FC0();

  [v5 setAccessibilityIdentifier_];

  v7 = [objc_opt_self() labelColor];
  [v5 setTextColor_];

  [v5 setTextAlignment_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  [v5 setNumberOfLines_];
  [v5 setAdjustsFontForContentSizeCategory_];
  LODWORD(v8) = 1036831949;
  [v5 _setHyphenationFactor_];
  return v5;
}

id sub_2281F32B4(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2281F3314()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v1 = *MEMORY[0x277D76918];
  v2 = sub_228392AD0();
  [v0 setFont_];

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v3 = sub_228391FC0();

  [v0 setText_];

  v4 = *MEMORY[0x277D12788];
  sub_228392000();
  v5 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AB310);

  MEMORY[0x22AAB5C80](0x6C7469746275532ELL, 0xEE006C6562614C65);

  v6 = sub_228391FC0();

  [v5 setAccessibilityIdentifier_];

  v7 = [objc_opt_self() labelColor];
  [v5 setTextColor_];

  [v5 setTextAlignment_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  [v5 setNumberOfLines_];
  [v5 setAdjustsFontForContentSizeCategory_];
  return v5;
}

void sub_2281F378C()
{
  v1 = [v0 contentView];
  v2 = sub_2281F2FC0();
  [v1 addSubview_];

  v3 = [v0 contentView];
  v4 = sub_2281F3294();
  [v3 addSubview_];

  v35 = objc_opt_self();
  sub_228180ED0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228399E10;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell____lazy_storage___titleLabel;
  v7 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell____lazy_storage___titleLabel] topAnchor];
  v8 = [v0 contentView];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [*&v0[v6] leadingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
  *(v5 + 40) = v14;
  v15 = [*&v0[v6] trailingAnchor];
  v16 = [v0 contentView];
  v17 = [v16 trailingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:-16.0];
  *(v5 + 48) = v18;
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell____lazy_storage___subtitleLabel;
  v20 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell____lazy_storage___subtitleLabel] leadingAnchor];
  v21 = [v0 contentView];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:16.0];
  *(v5 + 56) = v23;
  v24 = [*&v0[v19] trailingAnchor];
  v25 = [v0 contentView];
  v26 = [v25 trailingAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:-16.0];
  *(v5 + 64) = v27;
  v28 = [*&v0[v19] topAnchor];
  v29 = [*&v0[v6] bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:15.0];

  *(v5 + 72) = v30;
  v31 = [*&v0[v19] bottomAnchor];
  v32 = [v0 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v5 + 80) = v34;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v36 = sub_228392190();

  [v35 activateConstraints_];
}

uint64_t sub_2281F3C20()
{
  v1 = v0;
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = sub_228391330();
  v10 = type metadata accessor for InteractionFactorsHeaderCell();
  v15.receiver = v1;
  v15.super_class = v10;
  objc_msgSendSuper2(&v15, sel__bridgedUpdateConfigurationUsingState_, v9);

  MEMORY[0x22AAB6410]();
  v11 = sub_2283913A0();
  if ((*(*(v11 - 8) + 48))(v8, 1, v11))
  {
    v12 = MEMORY[0x277D74BD0];
    sub_22817A890(v8, v6, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    MEMORY[0x22AAB6420](v6);
    return sub_22817A8FC(v8, &unk_280DDBCD0, v12);
  }

  else
  {
    v14 = [objc_opt_self() clearColor];
    sub_228391370();
    return MEMORY[0x22AAB6420](v8);
  }
}

id InteractionFactorsHeaderCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionFactorsHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MedicationOnboardingDataSource.cellBackgroundConfiguration.getter()
{
  sub_228391390();
  v0 = [objc_opt_self() secondarySystemBackgroundColor];
  return sub_228391370();
}

uint64_t sub_2281F40EC()
{
  sub_228391390();
  v0 = [objc_opt_self() secondarySystemBackgroundColor];
  return sub_228391370();
}

uint64_t sub_2281F413C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2283906D0();
  v3 = sub_2281BFC2C(v2);

  *a1 = v3;
  return result;
}

uint64_t sub_2281F4184()
{
  if (*v0)
  {
    if (qword_27D823310 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_6;
  }

  if (qword_27D823310 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_22838F0C0();
}

uint64_t MedicationInformationImportance.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

unint64_t sub_2281F4310()
{
  result = qword_27D824F68;
  if (!qword_27D824F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824F68);
  }

  return result;
}

uint64_t type metadata accessor for PregnancyLactationEducationDataSource()
{
  result = qword_27D824F80;
  if (!qword_27D824F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2281F443C()
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_2281F4474()
{
  type metadata accessor for MedicationInformationOverviewCell();
  sub_2281F4C8C(&qword_27D824F98, type metadata accessor for MedicationInformationOverviewCell);
  sub_2283926B0();
  sub_228390120();
  return sub_2283926D0();
}

uint64_t sub_2281F44FC()
{
  v1 = v0;
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + qword_27D824F78) == 1)
  {
    sub_228390010();
    sub_228390070();
  }

  else
  {
    sub_228390040();
    sub_228390070();
    sub_2283900B0();
  }

  v7 = sub_2283900C0();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_2281F469C@<X0>(uint64_t *a1@<X8>)
{
  sub_2281F4878();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v1 + qword_27D824F70);
  v10[1] = sub_2281F4184();
  v10[2] = v7;
  sub_22819DFF4();
  sub_228392F60();

  v8 = sub_228390130();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  a1[3] = sub_228390150();
  a1[4] = sub_2281F4C8C(&qword_27D824EC8, MEMORY[0x277D10FE8]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_228390140();
}

void sub_2281F4878()
{
  if (!qword_27D824EB0)
  {
    sub_228390130();
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824EB0);
    }
  }
}

uint64_t sub_2281F48D0(uint64_t a1, unsigned __int8 *a2, char *a3)
{
  v3 = *a3;
  v31 = *a2;
  LOBYTE(v32[0]) = v31;
  v5 = Array<A>.groupByCritical(for:)(v32);
  if (v3)
  {
    v32[0] = v4;

    sub_2281D5878(v6);

    v5 = v32[0];
  }

  else
  {
  }

  if (v5 >> 62)
  {
    goto LABEL_20;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (1)
    {
      v8 = v5;
      v35 = MEMORY[0x277D84F90];
      sub_2281C9DB4(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        break;
      }

      v9 = v35;
      type metadata accessor for MedicationInformationOverviewCell();
      v5 = 0;
      v10 = v8;
      v30 = v8 & 0xC000000000000001;
      v28 = v8 & 0xFFFFFFFFFFFFFF8;
      v29 = v31 - 1;
      v11 = v8;
      v12 = v7;
      while (1)
      {
        v13 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v30)
        {
          v14 = MEMORY[0x22AAB6D80](v5, v10);
        }

        else
        {
          if (v5 >= *(v28 + 16))
          {
            goto LABEL_19;
          }

          v14 = *(v10 + 8 * v5 + 32);
        }

        v15 = v14;
        v16 = type metadata accessor for MedicationInformationOverviewItem();
        v17 = swift_allocObject();
        sub_2281F4C8C(&qword_27D824F98, type metadata accessor for MedicationInformationOverviewCell);
        *(v17 + 32) = sub_22838FBB0();
        *(v17 + 40) = v18;
        *(v17 + 16) = v15;
        *(v17 + 24) = v31;
        if (v29 >= 2)
        {
          goto LABEL_24;
        }

        v33 = v16;
        v19 = sub_2281F4C8C(&qword_27D824FA8, type metadata accessor for MedicationInformationOverviewItem);
        v34 = v19;
        v35 = v9;
        v32[0] = v17;
        v21 = *(v9 + 16);
        v20 = *(v9 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2281C9DB4((v20 > 1), v21 + 1, 1);
          v16 = v33;
          v19 = v34;
        }

        v22 = __swift_mutable_project_boxed_opaque_existential_1(v32, v16);
        v23 = *(*(v16 - 8) + 64);
        MEMORY[0x28223BE20](v22);
        v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v26 + 16))(v25);
        sub_2282E841C(v21, v25, &v35, v16, v19);
        __swift_destroy_boxed_opaque_existential_0(v32);
        v9 = v35;
        ++v5;
        v10 = v11;
        if (v13 == v12)
        {

          return v9;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v7 = sub_2283930D0();
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    result = sub_228393300();
    __break(1u);
  }

  else
  {
LABEL_21:

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2281F4C8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MedicationDetailsCardItem.init(detailsDisplayable:medication:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MedicationDetailsCardItem();
  v7 = a3 + v6[5];
  sub_22838F490();
  v8 = (a3 + v6[7]);
  type metadata accessor for MedicationDetailsCardCell();
  sub_2281F4F9C(&unk_27D824FB0, v9, type metadata accessor for MedicationDetailsCardCell);
  *v8 = sub_22838FBB0();
  v8[1] = v10;
  result = sub_22816DFFC(a1, a3);
  *(a3 + v6[6]) = a2;
  return result;
}

uint64_t type metadata accessor for MedicationDetailsCardItem()
{
  result = qword_27D825040;
  if (!qword_27D825040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicationDetailsCardItem.reuseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MedicationDetailsCardItem() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t MedicationDetailsCardItem.uniqueIdentifier.getter()
{
  sub_2283931D0();

  v1 = v0 + *(type metadata accessor for MedicationDetailsCardItem() + 20);
  v2 = sub_22838F450();
  MEMORY[0x22AAB5C80](v2);

  return 0xD000000000000010;
}

uint64_t static MedicationDetailsCardItem.== infix(_:_:)()
{
  v0 = *(type metadata accessor for MedicationDetailsCardItem() + 20);

  return sub_22838F470();
}

uint64_t MedicationDetailsCardItem.hash(into:)()
{
  v0 = *(type metadata accessor for MedicationDetailsCardItem() + 20);
  sub_22838F4A0();
  sub_2281F4F9C(&unk_27D823CA0, 255, MEMORY[0x277CC95F0]);
  return sub_228391F70();
}

uint64_t sub_2281F4F9C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t MedicationDetailsCardItem.hashValue.getter()
{
  sub_228393520();
  v0 = *(type metadata accessor for MedicationDetailsCardItem() + 20);
  sub_22838F4A0();
  sub_2281F4F9C(&unk_27D823CA0, 255, MEMORY[0x277CC95F0]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_2281F5088(uint64_t a1)
{
  sub_228393520();
  v2 = *(a1 + 20);
  sub_22838F4A0();
  sub_2281F4F9C(&unk_27D823CA0, 255, MEMORY[0x277CC95F0]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_2281F5128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  sub_22838F4A0();
  sub_2281F4F9C(&unk_27D823CA0, 255, MEMORY[0x277CC95F0]);
  return sub_228391F70();
}

uint64_t sub_2281F51AC(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  v3 = *(a2 + 20);
  sub_22838F4A0();
  sub_2281F4F9C(&unk_27D823CA0, 255, MEMORY[0x277CC95F0]);
  sub_228391F70();
  return sub_228393570();
}

unint64_t sub_2281F5258(uint64_t a1)
{
  sub_2283931D0();

  v3 = v1 + *(a1 + 20);
  v4 = sub_22838F450();
  MEMORY[0x22AAB5C80](v4);

  return 0xD000000000000010;
}

uint64_t sub_2281F52E8(uint64_t a1)
{
  v2 = sub_2281F4F9C(&qword_27D825068, 255, type metadata accessor for MedicationDetailsCardItem);

  return MEMORY[0x282169440](a1, v2);
}

id sub_2281F5368()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281F5400()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    LODWORD(v6) = 1148846080;
    [v5 setContentHuggingPriority:1 forAxis:v6];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *MEMORY[0x277D12788];
    v15 = sub_228392000();
    v16 = v8;

    MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283AB620);

    MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xED00006C6562614CLL);

    v9 = sub_228391FC0();

    [v5 setAccessibilityIdentifier_];

    [v5 setNumberOfLines_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v10 = *MEMORY[0x277D76A28];
    v11 = sub_228392AD0();
    [v5 setFont_];

    v12 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_2281F55F0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setNumberOfLines_];
    v6 = *MEMORY[0x277D12788];
    v15 = sub_228392000();
    v16 = v7;
    v8 = v5;

    MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283AB620);

    MEMORY[0x22AAB5C80](0x6F6974697061432ELL, 0xEE006C6562614C6ELL);

    v9 = sub_228391FC0();

    [v8 setAccessibilityIdentifier_];

    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v10 = *MEMORY[0x277D76918];
    v11 = sub_228392AD0();
    [v8 setFont_];

    v12 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_2281F57C4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView];
  }

  else
  {
    v4 = sub_2281F5828(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281F5828(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D12A48]) initWithFrame_];
  HKUIOnePixel();
  [v2 setSeparatorThickness_];
  v3 = [objc_opt_self() separatorColor];
  [v2 setColor_];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  [v4 setHidden_];
  return v4;
}

id sub_2281F5934()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setNumberOfLines_];
    v6 = v5;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *MEMORY[0x277D12788];
    v16 = sub_228392000();
    v17 = v8;

    MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283AB620);

    MEMORY[0x22AAB5C80](0x614C7365746F4E2ELL, 0xEB000000006C6562);

    v9 = sub_228391FC0();

    [v6 setAccessibilityIdentifier_];

    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v10 = *MEMORY[0x277D769D0];
    v11 = sub_228392AD0();
    [v6 setFont_];

    v12 = [objc_opt_self() secondaryLabelColor];
    [v6 setTextColor_];

    v13 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

uint64_t sub_2281F5B5C(char *a1)
{
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F00;
  v3 = sub_2281F5368();
  v4 = [v3 topAnchor];

  v5 = [a1 contentView];
  v6 = [v5 topAnchor];

  v7 = [a1 traitCollection];
  v8 = [v7 horizontalSizeClass];

  v9 = 24.0;
  if (v8 == 1)
  {
    v9 = 16.0;
  }

  v10 = [v4 constraintEqualToAnchor:v6 constant:v9];

  *(v2 + 32) = v10;
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView;
  v12 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView] leadingAnchor];
  v13 = [a1 contentView];
  v14 = [v13 layoutMarginsGuide];

  v15 = [v14 leadingAnchor];
  v16 = [v12 constraintEqualToAnchor_];

  *(v2 + 40) = v16;
  v17 = [*&a1[v11] widthAnchor];
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_pillImageSize;
  v19 = [v17 constraintEqualToConstant_];

  *(v2 + 48) = v19;
  v20 = [*&a1[v11] heightAnchor];
  v21 = [v20 constraintEqualToConstant_];

  *(v2 + 56) = v21;
  return v2;
}

uint64_t sub_2281F5DEC(char *a1)
{
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228399E10;
  v3 = sub_2281F55F0();
  v4 = [v3 bottomAnchor];

  v5 = sub_2281F57C4();
  v6 = [v5 topAnchor];

  v7 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_separatorToNoteMargin;
  v8 = [v4 constraintEqualToAnchor:v6 constant:-*&a1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_separatorToNoteMargin]];

  *(v2 + 32) = v8;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView;
  v10 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView] leadingAnchor];
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel;
  v12 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel] &selRef_logTimeChanged_ + 1];
  v13 = [v10 constraintEqualToAnchor_];

  *(v2 + 40) = v13;
  v14 = [*&a1[v9] trailingAnchor];
  v15 = [*&a1[v11] trailingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v2 + 48) = v16;
  v17 = [*&a1[v9] bottomAnchor];
  v18 = sub_2281F5934();
  v19 = [v18 topAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:-*&a1[v7]];
  *(v2 + 56) = v20;
  v21 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel;
  v22 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel] leadingAnchor];
  v23 = [*&a1[v9] leadingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v2 + 64) = v24;
  v25 = [*&a1[v21] trailingAnchor];
  v26 = [*&a1[v9] trailingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v2 + 72) = v27;
  v28 = [*&a1[v21] bottomAnchor];
  v29 = [a1 contentView];
  v30 = [v29 bottomAnchor];

  v31 = [a1 traitCollection];
  v32 = [v31 horizontalSizeClass];

  v33 = -24.0;
  if (v32 == 1)
  {
    v33 = -16.0;
  }

  v34 = [v28 constraintEqualToAnchor:v30 constant:v33];

  *(v2 + 80) = v34;
  return v2;
}

uint64_t sub_2281F61D8(void *a1)
{
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F20;
  v3 = sub_2281F55F0();
  v4 = [v3 lastBaselineAnchor];

  v5 = [a1 contentView];
  v6 = [v5 bottomAnchor];

  v7 = [a1 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8 == 1)
  {
    v9 = -16.0;
  }

  else
  {
    v9 = -24.0;
  }

  v10 = [v4 constraintEqualToAnchor:v6 constant:v9];

  *(v2 + 32) = v10;
  v11 = sub_2281F5368();
  v12 = [v11 bottomAnchor];

  v13 = [a1 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [a1 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 == 1)
  {
    v17 = -16.0;
  }

  else
  {
    v17 = -24.0;
  }

  v18 = [v12 constraintLessThanOrEqualToAnchor:v14 constant:v17];

  *(v2 + 40) = v18;
  return v2;
}

uint64_t sub_2281F6404(uint64_t *a1, uint64_t (*a2)(uint64_t))
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
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_2281F646C(uint64_t a1)
{
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F20;
  v3 = sub_2281F55F0();
  v4 = [v3 leadingAnchor];

  v5 = sub_2281F5400();
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = [*(a1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel) trailingAnchor];
  v9 = [*(a1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel) trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  return v2;
}

id MedicationDetailsCardCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MedicationDetailsCardCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_pillImageSize] = 0x4054000000000000;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_separatorToNoteMargin] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageConstraints] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesConstraints] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___emptyNotesConstraints] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionConstraints] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_titleToPillImageConstraints] = MEMORY[0x277D84F90];
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item];
  v10 = type metadata accessor for MedicationDetailsCardCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v15.receiver = v4;
  v15.super_class = v10;
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2281F680C();
  v12 = [v11 traitCollection];
  v13 = [v12 horizontalSizeClass];

  if (v13 == 1)
  {
    sub_2281F6DD8();
  }

  else
  {
    sub_2281F7174();
  }

  return v11;
}

id sub_2281F680C()
{
  v1 = v0;
  sub_2281F8C84(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = sub_2283913A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F7B0();
  v11 = *MEMORY[0x277CDA138];
  sub_228392B00();
  sub_228391390();
  v12 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_228391370();
  (*(v7 + 16))(v5, v10, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  MEMORY[0x22AAB6420](v5);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v14 = result;
    v15 = [result isAppleInternalInstall];

    if (v15)
    {
      v16 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_cellTripleTapped_];
      [v16 setNumberOfTapsRequired_];
      [v1 addGestureRecognizer_];
    }

    v17 = [v1 contentView];
    v18 = sub_2281F5368();
    [v17 addSubview_];

    v19 = [v1 contentView];
    v20 = sub_2281F5400();
    [v19 addSubview_];

    v21 = [v1 contentView];
    v22 = sub_2281F55F0();
    [v21 addSubview_];

    v23 = [v1 contentView];
    v24 = sub_2281F57C4();
    [v23 addSubview_];

    v25 = [v1 contentView];
    v26 = sub_2281F5934();
    [v25 addSubview_];

    sub_2281F8C84(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_228397F40;
    v28 = sub_2283915A0();
    v29 = MEMORY[0x277D74C50];
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2281D5250();
    sub_228392B50();
    swift_unknownObjectRelease();

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2281F6C7C(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a2 horizontalSizeClass];
    v7 = [a1 traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (v6 != v8)
    {
      v9 = objc_opt_self();
      v10 = *&v5[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_titleToPillImageConstraints];
      sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);

      v11 = sub_228392190();

      [v9 deactivateConstraints_];

      v12 = [v5 traitCollection];
      v13 = [v12 horizontalSizeClass];

      if (v13 == 1)
      {
        sub_2281F6DD8();
      }

      else
      {
        sub_2281F7174();
      }

      sub_2281F76D8();
    }
  }
}

void sub_2281F6DD8()
{
  v1 = v0;
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F00;
  v3 = sub_2281F5400();
  v4 = [v3 leadingAnchor];

  v5 = sub_2281F5368();
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel;
  v9 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel] trailingAnchor];
  v10 = [v1 contentView];
  v11 = [v10 trailingAnchor];

  v12 = [v1 traitCollection];
  v13 = [v12 horizontalSizeClass];

  v14 = -24.0;
  if (v13 == 1)
  {
    v14 = -16.0;
  }

  v15 = [v9 constraintEqualToAnchor:v11 constant:v14];

  *(v2 + 40) = v15;
  v16 = [*&v1[v8] topAnchor];
  v17 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView] bottomAnchor];
  v18 = [v1 traitCollection];
  v19 = [v18 horizontalSizeClass];

  v20 = 24.0;
  if (v19 == 1)
  {
    v20 = 16.0;
  }

  v21 = [v16 constraintEqualToAnchor:v17 constant:v20];

  *(v2 + 48) = v21;
  v22 = [*&v1[v8] bottomAnchor];
  v23 = sub_2281F55F0();
  v24 = [v23 topAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:-2.0];
  *(v2 + 56) = v25;
  v26 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_titleToPillImageConstraints;
  v27 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_titleToPillImageConstraints];
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_titleToPillImageConstraints] = v2;

  v28 = objc_opt_self();
  sub_2281F5B3C();
  v29 = *&v1[v26];

  sub_2281D5A98(v30);
  v31 = sub_2281F63E4();
  sub_2281D5A98(v31);
  v32 = sub_2281F5DCC();
  sub_2281D5A98(v32);
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v33 = sub_228392190();

  [v28 activateConstraints_];
}

void sub_2281F7174()
{
  v1 = v0;
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F00;
  v3 = sub_2281F5400();
  v4 = [v3 leadingAnchor];

  v5 = sub_2281F5368();
  v6 = [v5 trailingAnchor];

  v7 = [v1 traitCollection];
  v8 = [v7 horizontalSizeClass];

  v9 = 24.0;
  if (v8 == 1)
  {
    v9 = 16.0;
  }

  v10 = [v4 constraintEqualToAnchor:v6 constant:v9];

  *(v2 + 32) = v10;
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel;
  v12 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel] trailingAnchor];
  v13 = [v1 contentView];
  v14 = [v13 trailingAnchor];

  v15 = [v1 traitCollection];
  v16 = [v15 horizontalSizeClass];

  v17 = -24.0;
  if (v16 == 1)
  {
    v17 = -16.0;
  }

  v18 = [v12 constraintEqualToAnchor:v14 constant:v17];

  *(v2 + 40) = v18;
  v19 = [*&v1[v11] topAnchor];
  v20 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView] topAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v2 + 48) = v21;
  v22 = [*&v1[v11] bottomAnchor];
  v23 = sub_2281F55F0();
  v24 = [v23 topAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:-2.0];
  *(v2 + 56) = v25;
  v26 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_titleToPillImageConstraints;
  v27 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_titleToPillImageConstraints];
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_titleToPillImageConstraints] = v2;

  v28 = objc_opt_self();
  sub_2281F5B3C();
  v29 = *&v1[v26];

  sub_2281D5A98(v30);
  v31 = sub_2281F63E4();
  sub_2281D5A98(v31);
  v32 = sub_2281F5DCC();
  sub_2281D5A98(v32);
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v33 = sub_228392190();

  [v28 activateConstraints_];
}

uint64_t sub_2281F750C(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2281F76D8();
  return sub_22819482C(v6);
}

uint64_t sub_2281F757C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2281F75D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281F76D8();
  return sub_22819482C(a1);
}

uint64_t (*sub_2281F7640(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281F76A4;
}

uint64_t sub_2281F76A4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2281F76D8();
  }

  return result;
}

uint64_t sub_2281F76D8()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2281F8C84(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v63 - v13;
  sub_2281F8C84(0, &qword_27D825060, type metadata accessor for MedicationDetailsCardItem, v7);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v63 - v16;
  v18 = type metadata accessor for MedicationDetailsCardItem();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v23], v65);
  if (v66)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v24 = swift_dynamicCast();
    (*(v19 + 56))(v17, v24 ^ 1u, 1, v18);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_2281F8CE8(v17, v22);
      sub_228180FB0(v22, v65);
      v25 = v66;
      v26 = v67;
      __swift_project_boxed_opaque_existential_0(v65, v66);
      v27 = v63;
      (*(v26 + 32))(v25, v26);
      v28 = sub_2281F5368();
      sub_2281BF64C(v27, v12);
      sub_228390950();

      v29 = sub_2281F5400();
      v30 = v66;
      v31 = v67;
      __swift_project_boxed_opaque_existential_0(v65, v66);
      (*(v31 + 8))(v30, v31);
      v32 = sub_228391FC0();

      [v29 setText_];

      v33 = sub_2281F55F0();
      sub_2281F7F1C(v65);
      if (v34)
      {
        v35 = sub_228391FC0();
      }

      else
      {
        v35 = 0;
      }

      [v33 setText_];

      v45 = sub_2281F5934();
      v46 = v66;
      v47 = v67;
      __swift_project_boxed_opaque_existential_0(v65, v66);
      (*(v47 + 40))(v46, v47);
      if (v48)
      {
        v49 = sub_228391FC0();
      }

      else
      {
        v49 = 0;
      }

      [v45 setText_];

      v50 = v66;
      v51 = v67;
      __swift_project_boxed_opaque_existential_0(v65, v66);
      (*(v51 + 40))(v50, v51);
      if (v52 && (sub_2283920A0(), v54 = v53, , v54))
      {

        [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel] setHidden_];
        v55 = sub_2281F57C4();
        v56 = [v1 traitCollection];
        v57 = [v56 horizontalSizeClass];

        [v55 setHidden_];
        v58 = objc_opt_self();
        sub_2281F61B8();
        sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
        v59 = sub_228392190();

        [v58 deactivateConstraints_];

        sub_2281F5DCC();
      }

      else
      {
        [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel] setHidden_];
        v60 = sub_2281F57C4();
        [v60 setHidden_];

        v58 = objc_opt_self();
        sub_2281F5DCC();
        sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
        v61 = sub_228392190();

        [v58 deactivateConstraints_];

        sub_2281F61B8();
      }

      v62 = sub_228392190();

      [v58 activateConstraints_];

      sub_2281F8DA8(v27, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_2281F8D4C(v22);
      return __swift_destroy_boxed_opaque_existential_0(v65);
    }
  }

  else
  {
    sub_22819482C(v65);
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  sub_2281F8DA8(v17, &qword_27D825060, type metadata accessor for MedicationDetailsCardItem);
  sub_228391150();
  v36 = v1;
  v37 = sub_2283911A0();
  v38 = sub_2283925C0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v64 = v40;
    *v39 = 136446210;
    sub_22817E6C8(&v1[v23], v65);
    sub_2281F8450(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
    v41 = sub_228392040();
    v43 = sub_2281C96FC(v41, v42, &v64);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_22816B000, v37, v38, "Incorrect view model for MedicationDetailsCardCell: %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x22AAB7B80](v40, -1, -1);
    MEMORY[0x22AAB7B80](v39, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2281F7F1C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v2);
  (*(v3 + 16))(v2, v3);
  sub_2283920A0();
  v5 = v4;

  v23[0] = v5;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  (*(v7 + 24))(v6, v7);
  v8 = sub_2283920A0();
  v10 = v9;

  v11 = 0;
  v23[1] = v8;
  v23[2] = v10;
  v12 = MEMORY[0x277D84F90];
LABEL_2:
  v13 = &v23[2 * v11];
  while (++v11 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_228198748(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_228198748((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_2;
    }
  }

  v20 = MEMORY[0x277D837D0];
  sub_2281F8E18(0, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  sub_2281F8E18(0, &qword_27D827E10, v20, MEMORY[0x277D83940]);
  sub_2281BF13C();
  v21 = sub_228391F90();

  return v21;
}

id MedicationDetailsCardCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDetailsCardCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2281F8370()
{
  sub_2281810DC(319, &qword_27D825050);
  if (v0 <= 0x3F)
  {
    sub_22838F4A0();
    if (v1 <= 0x3F)
    {
      sub_2281F8450(319, &qword_27D825058, &qword_280DDB9E0, 0x277D115B8, sub_22817A958);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2281F8450(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_228392F00();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2281F8578()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_pillImageSize) = 0x4054000000000000;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_separatorToNoteMargin) = 0x4028000000000000;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___emptyNotesConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_titleToPillImageConstraints) = MEMORY[0x277D84F90];
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_228393300();
  __break(1u);
}

id sub_2281F868C()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  sub_2281F8C84(0, &qword_27D825060, type metadata accessor for MedicationDetailsCardItem, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for MedicationDetailsCardItem();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v19, v48);
  if (!v49)
  {
    sub_22819482C(v48);
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_7;
  }

  sub_2281810DC(0, &qword_280DDCD60);
  v20 = swift_dynamicCast();
  (*(v15 + 56))(v13, v20 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
LABEL_7:
    sub_2281F8DA8(v13, &qword_27D825060, type metadata accessor for MedicationDetailsCardItem);
    sub_228391150();
    v29 = v1;
    v30 = sub_2283911A0();
    v31 = sub_2283925C0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v33;
      *v32 = 136446210;
      sub_22817E6C8(v1 + v19, v48);
      sub_2281F8450(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
      v34 = sub_228392040();
      v36 = sub_2281C96FC(v34, v35, &v47);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_22816B000, v30, v31, "Incorrect view model for MedicationDetailsCardCell: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AAB7B80](v33, -1, -1);
      MEMORY[0x22AAB7B80](v32, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }

  sub_2281F8CE8(v13, v18);
  v21 = [v1 viewController];
  if (v21)
  {
    v22 = v21;
    v23 = *&v18[*(v14 + 24)];
    v24 = type metadata accessor for OntologyInfoInternalViewController();
    v25 = objc_allocWithZone(v24);
    type metadata accessor for OntologyIDDataSource();
    swift_allocObject();
    v26 = v23;
    *&v25[OBJC_IVAR____TtC19HealthMedicationsUI34OntologyInfoInternalViewController_conceptsDataSource] = OntologyIDDataSource.init(with:)(v23);
    v46.receiver = v25;
    v46.super_class = v24;
    result = objc_msgSendSuper2(&v46, sel_initWithUsingInsetStyling_, 1);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v28 = result;
    [v22 showViewController:result sender:0];
  }

  else
  {
    sub_228391150();
    v37 = v1;
    v38 = sub_2283911A0();
    v39 = sub_2283925C0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *v40 = 136446210;
      sub_22817E6C8(v1 + v19, v48);
      sub_2281F8450(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
      v42 = sub_228392040();
      v44 = sub_2281C96FC(v42, v43, &v47);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_22816B000, v38, v39, "Incorrect ViewController for MedicationDetailsCardCell: %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AAB7B80](v41, -1, -1);
      MEMORY[0x22AAB7B80](v40, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }

  return sub_2281F8D4C(v18);
}

void sub_2281F8C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2281F8CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationDetailsCardItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281F8D4C(uint64_t a1)
{
  v2 = type metadata accessor for MedicationDetailsCardItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2281F8DA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281F8C84(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2281F8E18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_2281F8E70()
{
  result = sub_2281A8A14(&unk_283B66C40);
  off_27D8250A8 = result;
  return result;
}

uint64_t sub_2281F8E98(uint64_t a1)
{
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a1 > 4)
  {
    if ((a1 - 7) < 2)
    {
      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }

      goto LABEL_25;
    }

    if (a1 == 5)
    {
      goto LABEL_20;
    }

    if (a1 != 6)
    {
      return result;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          if (qword_280DDCF18 == -1)
          {
            return sub_22838F0C0();
          }

          goto LABEL_25;
        }

LABEL_20:
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }

        goto LABEL_25;
      }

      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }

LABEL_25:
      swift_once();
      return sub_22838F0C0();
    }

    if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }

      goto LABEL_25;
    }
  }

  v9 = v5;
  sub_228391150();
  v10 = sub_2283911A0();
  v11 = sub_2283925E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_2281C96FC(0xD000000000000018, 0x80000002283AB680, &v15);
    _os_log_impl(&dword_22816B000, v10, v11, "[%{public}s] attempting to display localized title of a schedule with type null or deprecated.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);
  }

  (*(v3 + 8))(v7, v9);
  return 0;
}

uint64_t sub_2281F92A8(uint64_t a1)
{
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }

        break;
      case 3:
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }

        break;
      case 7:
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }

        break;
      default:
        return result;
    }

LABEL_19:
    swift_once();
    return sub_22838F0C0();
  }

  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_19;
  }

  v9 = v5;
  sub_228391150();
  v10 = sub_2283911A0();
  v11 = sub_2283925E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_2281C96FC(0xD00000000000001ALL, 0x800000022839B9A0, &v15);
    _os_log_impl(&dword_22816B000, v10, v11, "[%{public}s] attempting to display localized usage of a schedule with type null", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);
  }

  (*(v3 + 8))(v7, v9);
  return 0;
}

uint64_t sub_2281F9634()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t sub_2281F967C()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t sub_2281F96C0()
{
  v9 = MEMORY[0x277D84F90];
  sub_2281CA0E4(0, 5, 0);
  if (qword_27D8232B8 != -1)
  {
    swift_once();
  }

  v0 = 0;
  while (1)
  {
    v1 = *(&unk_283B66C80 + v0 + 32);
    swift_beginAccess();
    v2 = off_27D8250A8;
    if (*(off_27D8250A8 + 2))
    {
      v3 = sub_2281A9BCC(v1);
      if (v4)
      {
        break;
      }
    }

    swift_endAccess();
    v6 = *(v9 + 16);
    v5 = *(v9 + 24);
    if (v6 >= v5 >> 1)
    {
      sub_2281CA0E4((v5 > 1), v6 + 1, 1);
    }

    *(v9 + 16) = v6 + 1;
    *(v9 + 8 * v6 + 32) = v1;
    v0 += 8;
    if (v0 == 40)
    {
      return v9;
    }
  }

  v8 = *(v2[7] + 8 * v3);
  swift_endAccess();
  sub_2283931D0();
  MEMORY[0x22AAB5C80](0xD00000000000002DLL, 0x80000002283AB820);
  type metadata accessor for HKMedicationScheduleType(0);
  sub_2283932A0();
  MEMORY[0x22AAB5C80](0xD000000000000019, 0x80000002283AB850);
  sub_2283932A0();
  MEMORY[0x22AAB5C80](39, 0xE100000000000000);
  result = sub_228393300();
  __break(1u);
  return result;
}

unint64_t sub_2281F9914()
{
  result = qword_27D8250B0;
  if (!qword_27D8250B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8250B0);
  }

  return result;
}

uint64_t TipAction.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TipAction.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TipAction.action.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TipAction.init(title:accessibilityIdentifier:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static TipAction.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t TipAction.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t TipAction.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281F9AF0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281F9B58()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t sub_2281F9BA8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t MedicationsCategoryTipItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t MedicationsCategoryTipItem.uniqueIdentifier.getter()
{
  sub_2283931D0();

  MEMORY[0x22AAB5C80](*v0, v0[1]);
  return 0xD000000000000010;
}

uint64_t MedicationsCategoryTipItem.init(identifier:headerView:titleText:bodyText:bodyTextLineLimit:buttonTitle:imageSystemName:imageTintColor:baseIdentifier:didTapActionButton:didTapDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  type metadata accessor for MedicationCategoryTipCell();
  sub_2281FDED8(&qword_27D8250C0, v27, type metadata accessor for MedicationCategoryTipCell);
  a9[2] = sub_22838FBB0();
  a9[3] = v28;
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[6] = a5;
  a9[7] = a6;
  a9[8] = a7;
  a9[9] = a8;
  v29 = type metadata accessor for MedicationsCategoryTipItem(0);
  v30 = a9 + v29[10];
  *v30 = a12;
  *(v30 + 2) = a13;
  *(v30 + 3) = 0x4041000000000000;
  type metadata accessor for TipImage(0);
  swift_storeEnumTagMultiPayload();
  v31 = (a9 + v29[12]);
  *v31 = a14;
  v31[1] = a15;
  v32 = (a9 + v29[11]);
  *v32 = a18;
  v32[1] = a19;
  sub_2281FE610(0, &qword_27D8250C8, &type metadata for TipAction, MEMORY[0x277D84560]);
  result = swift_allocObject();
  *(result + 16) = xmmword_228397F40;
  *(result + 32) = a10;
  *(result + 40) = a11;
  strcpy((result + 48), "ActionButton");
  *(result + 61) = 0;
  *(result + 62) = -5120;
  *(result + 64) = a16;
  *(result + 72) = a17;
  *(a9 + v29[13]) = result;
  return result;
}

uint64_t MedicationsCategoryTipItem.init(identifier:headerView:titleText:bodyText:bodyTextLineLimit:image:baseIdentifier:actions:didTapDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  type metadata accessor for MedicationCategoryTipCell();
  sub_2281FDED8(&qword_27D8250C0, v24, type metadata accessor for MedicationCategoryTipCell);
  a9[2] = sub_22838FBB0();
  a9[3] = v25;
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[6] = a5;
  a9[7] = a6;
  a9[8] = a7;
  a9[9] = a8;
  v26 = type metadata accessor for MedicationsCategoryTipItem(0);
  result = sub_2281FEEB0(a10, a9 + v26[10], type metadata accessor for TipImage);
  v28 = (a9 + v26[12]);
  *v28 = a11;
  v28[1] = a12;
  v29 = (a9 + v26[11]);
  *v29 = a14;
  v29[1] = a15;
  *(a9 + v26[13]) = a13;
  return result;
}

uint64_t MedicationsCategoryTipItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2283920B0();
  v3 = *(v0 + *(type metadata accessor for MedicationsCategoryTipItem(0) + 52));
  v4 = *(v3 + 16);
  MEMORY[0x22AAB70D0](v4);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = v5[1];
      v9 = v5[2];
      v10 = v5[4];

      sub_2283920B0();
      sub_2283920B0();

      v5 += 6;
      --v4;
    }

    while (v4);
  }

  v11 = v0[5];
  v12 = v0[6];
  sub_2283920B0();
  v13 = v0[7];
  v14 = v0[8];

  return sub_2283920B0();
}

uint64_t static MedicationsCategoryTipItem.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_228393460() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for MedicationsCategoryTipItem(0);
  if ((sub_2282106E8(*(a1 + *(v5 + 52)), *(a2 + *(v5 + 52))) & 1) == 0)
  {
    return 0;
  }

  if (*a2 == *a1 && a2[1] == a1[1])
  {
    return 1;
  }

  return sub_228393460();
}

uint64_t MedicationsCategoryTipItem.hashValue.getter()
{
  sub_228393520();
  MedicationsCategoryTipItem.hash(into:)();
  return sub_228393570();
}

uint64_t sub_2281FA230()
{
  sub_228393520();
  MedicationsCategoryTipItem.hash(into:)();
  return sub_228393570();
}

uint64_t sub_2281FA270(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  sub_2283920B0();
  sub_2281DA534(a1, *(v2 + *(a2 + 52)));
  v7 = v2[5];
  v8 = v2[6];
  sub_2283920B0();
  v9 = v2[7];
  v10 = v2[8];

  return sub_2283920B0();
}

uint64_t sub_2281FA2D8()
{
  sub_228393520();
  MedicationsCategoryTipItem.hash(into:)();
  return sub_228393570();
}

uint64_t sub_2281FA314(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_228393460() & 1) == 0 || (sub_2282106E8(*(a1 + *(a3 + 52)), *(a2 + *(a3 + 52))) & 1) == 0)
  {
    return 0;
  }

  if (*a2 == *a1 && a2[1] == a1[1])
  {
    return 1;
  }

  return sub_228393460();
}

uint64_t sub_2281FA3C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t sub_2281FA3F4()
{
  sub_2283931D0();

  MEMORY[0x22AAB5C80](*v0, v0[1]);
  return 0xD000000000000010;
}

uint64_t sub_2281FA464(uint64_t a1)
{
  v2 = sub_2281FDED8(&qword_27D825150, 255, type metadata accessor for MedicationsCategoryTipItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2281FA4E4(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2281FA554();
  return sub_22819482C(v6);
}

uint64_t sub_2281FA554()
{
  swift_getObjectType();
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2281FE1C8(0, &qword_27D825158, type metadata accessor for MedicationsCategoryTipItem, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25[-v8];
  v10 = type metadata accessor for MedicationsCategoryTipItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v15, v26);
  if (v26[3])
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v16 = swift_dynamicCast();
    (*(v11 + 56))(v9, v16 ^ 1u, 1, v10);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_2281FEEB0(v9, v14, type metadata accessor for MedicationsCategoryTipItem);
      sub_2281FAB3C(v14);
      return sub_2281FEF18(v14, type metadata accessor for MedicationsCategoryTipItem);
    }
  }

  else
  {
    sub_22819482C(v26);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_2281FEE40(v9, &qword_27D825158, type metadata accessor for MedicationsCategoryTipItem);
  sub_228391150();
  v18 = sub_2283911A0();
  v19 = sub_2283925C0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26[0] = v21;
    *v20 = 136315138;
    v22 = sub_228393600();
    v24 = sub_2281C96FC(v22, v23, v26);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_22816B000, v18, v19, "[%s] Incorrect view model for MedicationsCategoryTipCell", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AAB7B80](v21, -1, -1);
    MEMORY[0x22AAB7B80](v20, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2281FA920@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2281FA978(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281FA554();
  return sub_22819482C(a1);
}

uint64_t (*sub_2281FA9E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281FAA48;
}

uint64_t sub_2281FAA48(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2281FA554();
  }

  return result;
}

void sub_2281FAB3C(void *a1)
{
  v2 = v1;
  sub_2281FE1C8(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v75 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v74 - v8;
  v81 = type metadata accessor for TipImage(0);
  v9 = *(*(v81 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v81);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v74 - v13;
  v15 = a1[4];
  v16 = type metadata accessor for MedicationsCategoryTipItem(0);
  v17 = *(a1 + v16[13]);
  v18 = v16[10];
  v79 = v16;
  v80 = v18;
  sub_2281FE5AC(a1 + v18, v14);
  v19 = (a1 + v16[11]);
  v21 = *v19;
  v20 = v19[1];
  v22 = objc_allocWithZone(type metadata accessor for MedicationsCategoryRoomTipView(0));
  v23 = v15;
  v78 = v15;
  v24 = v23;

  sub_228176FA8(v21);
  v25 = sub_2281FE6C0(v15, v17, v14, v21, v20);
  sub_228176EC8(v21);

  v26 = v25;
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v27 = [v2 contentView];
  [v27 addSubview_];

  v77 = objc_opt_self();
  sub_2281FE610(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_228397F00;
  v29 = [v26 topAnchor];
  v30 = [v2 contentView];
  v31 = [v30 topAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v28 + 32) = v32;
  v33 = [v26 bottomAnchor];
  v34 = [v2 contentView];
  v35 = [v34 bottomAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v28 + 40) = v36;
  v37 = [v26 leadingAnchor];
  v38 = [v2 contentView];
  v39 = [v38 leadingAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  *(v28 + 48) = v40;
  v41 = [v26 trailingAnchor];

  v42 = [v2 contentView];
  v43 = [v42 trailingAnchor];

  v44 = [v41 constraintEqualToAnchor_];
  *(v28 + 56) = v44;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v45 = sub_228392190();

  [v77 activateConstraints_];

  v46 = *&v26[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView];
  *&v26[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView] = v78;

  v47 = sub_2281FB804();
  v48 = a1[5];
  v49 = a1[6];
  v50 = sub_228391FC0();
  [v47 setText_];

  v51 = sub_2281FBA94();
  v52 = a1[7];
  v53 = a1[8];
  v54 = sub_228391FC0();
  [v51 setText_];

  [*&v26[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___detailLabel] setNumberOfLines_];
  v55 = (a1 + v79[12]);
  v57 = *v55;
  v56 = v55[1];
  v58 = &v26[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier];
  v59 = *&v26[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8];
  *v58 = v57;
  *(v58 + 1) = v56;

  sub_2281FE5AC(a1 + v80, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v61 = v76;
      sub_2281AA8D4(v12, v76);
      v62 = sub_2281FB66C();
      sub_2281BF64C(v61, v75);
      sub_228390950();

      sub_2281FEE40(v61, &qword_280DDBD20, MEMORY[0x277D116C8]);
      return;
    }

    v72 = *v12;
    v73 = sub_2281FB484();
    [v73 setImage_];
  }

  else
  {
    v63 = *v12;
    v64 = *(v12 + 1);
    v65 = *(v12 + 2);
    v66 = [objc_opt_self() configurationWithPointSize:5 weight:*(v12 + 3)];
    v67 = sub_228391FC0();

    v68 = [objc_opt_self() systemImageNamed:v67 withConfiguration:v66];

    v69 = sub_2281FB484();
    [v69 setImage_];

    v70 = *&v26[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___iconImageView];
    v71 = v65;
    [v70 setTintColor_];
  }
}

id sub_2281FB350(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_currentConstraints;
  v3 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_currentConstraints];
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_currentConstraints] = a1;

  v5 = sub_228210990(v4, v3);

  if (v5)
  {
  }

  else
  {
    v7 = objc_opt_self();
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v8 = sub_228392190();

    [v7 deactivateConstraints_];

    v9 = *&v1[v2];

    v10 = sub_228392190();

    [v7 activateConstraints_];

    return [v1 setNeedsLayout];
  }
}

id sub_2281FB4A4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setContentMode_];
  v3 = [objc_opt_self() systemGrayColor];
  [v2 setTintColor_];

  v4 = *MEMORY[0x277D12788];
  v5 = sub_228392000();
  v7 = v6;
  v8 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier);
  v9 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8);

  MEMORY[0x22AAB5C80](v8, v9);

  v12 = v5;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x616D496E6F63492ELL, 0xEE00776569566567);

  v10 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  return v2;
}

id sub_2281FB68C(uint64_t a1)
{
  v2 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = *MEMORY[0x277D12788];
  v4 = sub_228392000();
  v6 = v5;
  v7 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier);
  v8 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8);

  MEMORY[0x22AAB5C80](v7, v8);

  v11 = v4;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x7461636964654D2ELL, 0xEF776569566E6F69);

  v9 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  return v2;
}

id sub_2281FB824(char *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = *MEMORY[0x277D12788];
  v4 = sub_228392000();
  v6 = v5;
  v7 = *&a1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier];
  v8 = *&a1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8];
  v9 = v2;

  MEMORY[0x22AAB5C80](v7, v8);

  v16 = v4;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v10 = sub_228391FC0();

  [v9 setAccessibilityIdentifier_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setNumberOfLines_];
  v11 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v9 setFont_];

  [v9 setAdjustsFontForContentSizeCategory_];
  v12 = [objc_opt_self() labelColor];
  [v9 setTextColor_];

  v13 = [a1 backgroundColor];
  [v9 setBackgroundColor_];

  LODWORD(v14) = 1132068864;
  [v9 setContentHuggingPriority:0 forAxis:v14];
  return v9;
}

id sub_2281FBAB4(char *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = *MEMORY[0x277D12788];
  v4 = sub_228392000();
  v6 = v5;
  v7 = *&a1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier];
  v8 = *&a1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8];
  v9 = v2;

  MEMORY[0x22AAB5C80](v7, v8);

  v16 = v4;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x4C6C69617465442ELL, 0xEC0000006C656261);

  v10 = sub_228391FC0();

  [v9 setAccessibilityIdentifier_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setNumberOfLines_];
  v11 = [objc_opt_self() preferredFontForTextStyle_];
  [v9 setFont_];

  [v9 setAdjustsFontForContentSizeCategory_];
  v12 = [objc_opt_self() secondaryLabelColor];
  [v9 setTextColor_];

  v13 = [a1 backgroundColor];
  [v9 setBackgroundColor_];

  LODWORD(v14) = 1132068864;
  [v9 setContentHuggingPriority:0 forAxis:v14];
  return v9;
}

id sub_2281FBD84(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2281FBE30(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 addTarget:a1 action:sel_didTapDismiss forControlEvents:64];
  v3 = *MEMORY[0x277D12788];
  v4 = sub_228392000();
  v6 = v5;
  v7 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier);
  v8 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8);

  MEMORY[0x22AAB5C80](v7, v8);

  v11 = v4;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x7373696D7369442ELL, 0xEE006E6F74747542);

  v9 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  return v2;
}

id sub_2281FBFC8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView);
  }

  else
  {
    v4 = v0;
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v5 = *MEMORY[0x277D769D0];
    v6 = *MEMORY[0x277D743F8];
    v7 = sub_228392AD0();
    v8 = [objc_opt_self() configurationWithFont_];

    v9 = v8;
    v10 = sub_228391FC0();
    v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

    v12 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    [v12 setPreferredSymbolConfiguration_];
    [v12 setContentMode_];

    if (v11)
    {
      v13 = objc_opt_self();
      v14 = v11;
      v15 = [v13 quaternaryLabelColor];
      v16 = [v14 imageWithTintColor:v15 renderingMode:1];
    }

    else
    {
      v16 = 0;
    }

    [v12 setImage_];

    v17 = *(v4 + v1);
    *(v4 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

id sub_2281FC1F4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_2281FC2B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong traitCollection];
    v3 = [v2 preferredContentSizeCategory];
    v4 = sub_2283928C0() & 1;

    if (v4 != v1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_isUsingVerticalLayout])
    {
      sub_2281FCACC(v4);
      [v1 invalidateIntrinsicContentSize];
      v5.receiver = v1;
      v5.super_class = type metadata accessor for MedicationsCategoryRoomTipView(0);
      objc_msgSendSuper2(&v5, sel_layoutSubviews);
    }
  }
}

id sub_2281FC3CC()
{
  v1 = sub_22838F4A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
  HKUIOnePixel();
  [v6 setSeparatorThickness_];
  v7 = [objc_opt_self() separatorColor];
  [v6 setColor_];

  v8 = *MEMORY[0x277D12788];
  v9 = sub_228392000();
  v11 = v10;
  v26 = 46;
  v27 = 0xE100000000000000;
  v12 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier);
  v13 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8);
  v14 = v6;

  MEMORY[0x22AAB5C80](v12, v13);

  v15 = v26;
  v16 = v27;
  v26 = v9;
  v27 = v11;

  MEMORY[0x22AAB5C80](v15, v16);

  MEMORY[0x22AAB5C80](0x746172617065532ELL, 0xEE0077656956726FLL);

  v18 = v26;
  v17 = v27;
  v26 = 46;
  v27 = 0xE100000000000000;
  sub_22838F490();
  v19 = sub_22838F450();
  v21 = v20;
  (*(v2 + 8))(v5, v1);
  MEMORY[0x22AAB5C80](v19, v21);

  v22 = v26;
  v23 = v27;
  v26 = v18;
  v27 = v17;

  MEMORY[0x22AAB5C80](v22, v23);

  v24 = sub_228391FC0();

  [v14 setAccessibilityIdentifier_];

  return v14;
}

id sub_2281FC670(__int128 *a1, char a2)
{
  v3 = v2;
  v5 = a1[1];
  v39 = *a1;
  v40 = v5;
  v41 = a1[2];
  v6 = [objc_opt_self() buttonWithType_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = *MEMORY[0x277D12788];
  v8 = sub_228392000();
  v10 = v9;
  v37 = 46;
  v38 = 0xE100000000000000;
  v11 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier];
  v12 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8];

  MEMORY[0x22AAB5C80](v11, v12);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](v40, *(&v40 + 1));
  v37 = v8;
  v38 = v10;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  v13 = sub_228391FC0();

  [v6 setAccessibilityIdentifier_];

  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  v14 = swift_allocObject();
  v15 = v40;
  v14[1] = v39;
  v14[2] = v15;
  v14[3] = v41;
  v16 = v6;
  sub_2281FE688(&v39, &v37);
  v17 = sub_228392C90();
  [v16 addAction:v17 forControlEvents:{64, 0, 0, 0, sub_2281FE660, v14}];

  v18 = [v3 backgroundColor];
  [v16 setBackgroundColor_];

  v19 = [v16 titleLabel];
  if (v19)
  {
    v20 = v19;
    v21 = *MEMORY[0x277D74418];
    v22 = *MEMORY[0x277D74420];
    if (a2)
    {
      v23 = *MEMORY[0x277D74420];
    }

    else
    {
      v23 = *MEMORY[0x277D74418];
    }

    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v24 = *MEMORY[0x277D76918];
    v25 = sub_228392AD0();
    [v20 setFont_];
  }

  v26 = [v16 titleLabel];
  if (v26)
  {
    v27 = v26;
    [v26 setAdjustsFontForContentSizeCategory_];
  }

  v28 = [v16 titleLabel];
  if (v28)
  {
    v29 = v28;
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v30 = [v16 titleLabel];
  if (v30)
  {
    v31 = v30;
    [v30 setNumberOfLines_];
  }

  v32 = [v16 titleLabel];
  if (v32)
  {
    v33 = v32;
    v34 = [objc_opt_self() systemBlueColor];
    [v33 setTextColor_];
  }

  v35 = sub_228391FC0();
  [v16 setTitle:v35 forState:0];

  [v16 setContentHorizontalAlignment_];
  return v16;
}

void sub_2281FCACC(int a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2281FBFC8();
  v10 = [v9 image];

  if (v10)
  {
    v105 = a1;
    v104 = v10;
    [v10 size];
    v12 = v11;
    v14 = v13;
    [v2 setLayoutMargins_];
    sub_2281FE610(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v106 = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22839BA70;
    v17 = sub_2281FBD64();
    v18 = [v17 topAnchor];

    v19 = [v2 topAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v16 + 32) = v20;
    v21 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissButton;
    v22 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissButton] trailingAnchor];
    v23 = [v2 trailingAnchor];
    v24 = [v22 &selRef_freeTextMedicationName + 5];

    *(v16 + 40) = v24;
    v25 = [*&v2[v21] widthAnchor];
    v26 = [v25 constraintEqualToConstant_];

    *(v16 + 48) = v26;
    v27 = [*&v2[v21] heightAnchor];
    v28 = [v27 constraintEqualToConstant_];

    *(v16 + 56) = v28;
    v29 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView;
    v30 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView] topAnchor];
    v31 = [v2 topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:11.0];

    *(v16 + 64) = v32;
    v33 = [*&v2[v29] trailingAnchor];
    v34 = [v2 trailingAnchor];
    v35 = [v33 &selRef_resignFirstResponder + 6];

    *(v16 + 72) = v35;
    v36 = [*&v2[v29] widthAnchor];
    v37 = [v36 constraintGreaterThanOrEqualToConstant_];

    *(v16 + 80) = v37;
    v38 = sub_2281FBA94();
    v39 = [v38 topAnchor];

    v40 = sub_2281FB804();
    v41 = [v40 bottomAnchor];

    v42 = [v39 &selRef_resignFirstResponder + 6];
    *(v16 + 88) = v42;
    v43 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___detailLabel;
    v44 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___detailLabel] leadingAnchor];
    v103 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___titleLabel;
    v45 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___titleLabel] leadingAnchor];
    v46 = [v44 constraintEqualToAnchor_];

    *(v16 + 96) = v46;
    v47 = [*&v2[v43] trailingAnchor];
    v48 = [v2 trailingAnchor];
    v49 = [v47 &selRef_resignFirstResponder + 6];

    *(v16 + 104) = v49;
    v50 = [*&v2[v43] bottomAnchor];
    v51 = sub_2281FC1F4();
    v52 = [v51 topAnchor];

    v53 = [v50 &selRef_resignFirstResponder + 6];
    *(v16 + 112) = v53;
    v54 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView;
    v55 = v29;
    v56 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView] topAnchor];
    v57 = [*&v2[v43] bottomAnchor];
    v58 = v54;
    v59 = [v56 &selRef_resignFirstResponder + 6];

    *(v16 + 120) = v59;
    v60 = [*&v2[v58] trailingAnchor];
    v61 = [v2 trailingAnchor];
    v62 = [v60 constraintEqualToAnchor_];

    *(v16 + 128) = v62;
    v63 = [*&v2[v58] bottomAnchor];
    v64 = [v2 bottomAnchor];
    v65 = [v63 constraintEqualToAnchor_];

    *(v16 + 136) = v65;
    v107 = v16;
    v66 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView;
    v67 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView];
    if (v67)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_228397F20;
      v69 = v67;
      v70 = [v69 topAnchor];
      v71 = [v2 topAnchor];
      v72 = [v70 constraintEqualToAnchor:v71 constant:11.0];

      *(inited + 32) = v72;
      v73 = [v69 trailingAnchor];
      v74 = [*&v2[v55] leadingAnchor];
      v75 = [v73 constraintLessThanOrEqualToAnchor:v74 constant:11.0];

      *(inited + 40) = v75;
      sub_2281D5A98(inited);
    }

    v76 = v105;
    if (v105)
    {
      v77 = swift_initStackObject();
      *(v77 + 16) = xmmword_228397F20;
      v78 = [*&v2[v103] trailingAnchor];
      v79 = [v2 trailingAnchor];
      v80 = [v78 constraintEqualToAnchor:v79 constant:-13.0];

      *(v77 + 32) = v80;
      v81 = [*&v2[v58] leadingAnchor];
      v82 = [v2 leadingAnchor];
      v83 = [v81 &selRef_resignFirstResponder + 6];
    }

    else
    {
      v91 = v55;
      v77 = swift_initStackObject();
      *(v77 + 16) = xmmword_228397F20;
      v92 = v103;
      v93 = [*&v2[v103] topAnchor];
      v94 = *&v2[v66];
      v95 = v94 == 0;
      if (v94)
      {
        v96 = *&v2[v66];
      }

      else
      {
        v96 = v2;
      }

      v97 = &selRef_bottomAnchor;
      if (v95)
      {
        v97 = &selRef_topAnchor;
      }

      v98 = [v96 *v97];
      v99 = [v93 constraintEqualToAnchor:v98 constant:11.0];

      *(v77 + 32) = v99;
      v81 = [*&v2[v92] trailingAnchor];
      v82 = [*&v2[v91] leadingAnchor];
      v83 = [v81 &selRef_resignFirstResponder + 6];
    }

    v100 = v83;

    *(v77 + 40) = v100;
    sub_2281D5A98(v77);
    v101 = sub_2281FD5EC(v76 & 1);
    sub_2281D5A98(v101);
    sub_2281FB350(v107);

    v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_isUsingVerticalLayout] = v76 & 1;
  }

  else
  {
    sub_228391150();
    v84 = sub_2283911A0();
    v85 = sub_2283925C0();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v108 = v87;
      *v86 = 136315138;
      v88 = sub_228393600();
      v90 = sub_2281C96FC(v88, v89, &v108);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_22816B000, v84, v85, "[%s] Dismiss button image is nil.", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x22AAB7B80](v87, -1, -1);
      MEMORY[0x22AAB7B80](v86, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2281FD5EC(int a1)
{
  v2 = v1;
  HIDWORD(v45) = a1;
  v3 = type metadata accessor for TipImage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281FE5AC(&v1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_tipImage], v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2281FB66C();
    sub_2281FEF18(v6, type metadata accessor for TipImage);
  }

  else
  {
    sub_2281FEF18(v6, type metadata accessor for TipImage);
    v7 = sub_2281FB484();
  }

  sub_2281FE610(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228397F00;
  v9 = [v7 topAnchor];
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView;
  v11 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView];
  v12 = v11 == 0;
  if (v11)
  {
    v13 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView];
  }

  else
  {
    v13 = v2;
  }

  v14 = &selRef_bottomAnchor;
  if (v12)
  {
    v14 = &selRef_topAnchor;
  }

  v15 = [v13 *v14];
  v16 = [v9 constraintEqualToAnchor:v15 constant:11.0];

  *(v8 + 32) = v16;
  v17 = [v7 leadingAnchor];
  v18 = [v2 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:13.0];

  *(v8 + 40) = v19;
  v20 = [v7 widthAnchor];
  v21 = [v20 constraintEqualToConstant_];

  *(v8 + 48) = v21;
  v22 = [v7 heightAnchor];

  v23 = [v22 constraintEqualToConstant_];
  *(v8 + 56) = v23;
  v46 = v8;
  v24 = *&v2[v10];
  if (v24)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_228396260;
    v26 = v24;
    v27 = [v26 leadingAnchor];
    v28 = [v7 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    *(inited + 32) = v29;
    sub_2281D5A98(inited);
  }

  if ((v45 & 0x100000000) != 0)
  {
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_228397F20;
    v31 = sub_2281FB804();
    v32 = [v31 topAnchor];

    v33 = [v7 bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:4.0];

    *(v30 + 32) = v34;
    v35 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___titleLabel] leadingAnchor];
    v36 = [v7 leadingAnchor];
    v37 = [v35 &selRef_freeTextMedicationName + 5];
  }

  else
  {
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_228397F20;
    v38 = sub_2281FB804();
    v39 = [v38 leadingAnchor];

    v40 = [v7 trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:11.0];

    *(v30 + 32) = v41;
    v42 = sub_2281FC1F4();
    v35 = [v42 leadingAnchor];

    v36 = [v7 trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:11.0];
  }

  v43 = v37;

  *(v30 + 40) = v43;
  sub_2281D5A98(v30);

  return v46;
}

id MedicationsCategoryRoomTipView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_2281FDCC4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_2281FDE38()
{
  result = qword_27D8250D8;
  if (!qword_27D8250D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8250D8);
  }

  return result;
}

uint64_t sub_2281FDED8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2281FDF6C(uint64_t a1, int a2)
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

uint64_t sub_2281FDFB4(uint64_t result, int a2, int a3)
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

void sub_2281FE060()
{
  sub_2281FE144();
  if (v0 <= 0x3F)
  {
    sub_2281FE1C8(319, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2281FE22C(319, &qword_280DDB978, &qword_280DDB980, 0x277D755B8, sub_22817A958);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2281FE144()
{
  if (!qword_280DDBBA0)
  {
    sub_22817A958(255, &qword_280DDB990, 0x277D75348);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280DDBBA0);
    }
  }
}

void sub_2281FE1C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2281FE22C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_228392F00();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2281FE2B0()
{
  sub_2281FE22C(319, &unk_27D825108, &qword_280DDB9B0, 0x277D75D18, sub_22817A958);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TipImage(319);
    if (v1 <= 0x3F)
    {
      sub_2281FE1C8(319, &unk_27D826FC0, sub_2281C35D8, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2281FE610(319, &unk_27D825118, &type metadata for TipAction, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2281FE4BC()
{
  result = type metadata accessor for TipImage(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2281FE5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2281FE610(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2281FE660()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

char *sub_2281FE6C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for TipImage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_actions;
  v16 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_actions] = MEMORY[0x277D84F90];
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView] = 0;
  v18 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_onDismiss];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier];
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_isUsingVerticalLayout] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_currentConstraints] = v16;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___iconImageView] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___medicationView] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___detailLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissButton] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView] = 0;
  *&v5[v17] = a1;
  *&v5[v15] = a2;
  *v18 = a4;
  v18[1] = a5;
  sub_2281FE5AC(a3, &v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_tipImage]);
  v20 = a1;
  v60 = a4;
  sub_228176FA8(a4);
  v21 = type metadata accessor for MedicationsCategoryRoomTipView(0);
  v70.receiver = v5;
  v70.super_class = v21;
  v22 = objc_msgSendSuper2(&v70, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondarySystemBackgroundColor];
  [v24 setBackgroundColor_];

  sub_22838F7B0();
  v26 = *MEMORY[0x277CDA138];
  sub_228392B00();
  if (a1)
  {
    v27 = v20;
    [v27 setTranslatesAutoresizingMaskIntoConstraints_];
    [v24 addSubview_];
  }

  v28 = sub_2281FBFC8();
  [v24 addSubview_];

  v29 = sub_2281FBD64();
  [v24 addSubview_];

  v30 = sub_2281FB804();
  [v24 addSubview_];

  v31 = sub_2281FBA94();
  [v24 addSubview_];

  v32 = sub_2281FC1F4();
  [v24 addSubview_];

  sub_2281FE5AC(a3, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = a3;
  if (EnumCaseMultiPayload == 1)
  {
    v34 = sub_2281FB66C();
    [v24 addSubview_];

    sub_2281FEF18(v14, type metadata accessor for TipImage);
  }

  else
  {
    sub_2281FEF18(v14, type metadata accessor for TipImage);
    v35 = sub_2281FB484();
    [v24 addSubview_];
  }

  v36 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_actions;
  v37 = *(*&v24[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_actions] + 16);
  if (v37)
  {
    v63 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView;

    v38 = v59 + 40;
    v62 = v36;
    do
    {
      v40 = *(v38 - 8);
      v39 = *v38;
      v41 = *(v38 + 8);
      v42 = *(v38 + 32);
      v43 = v63;
      v44 = *&v24[v63];

      v64 = *(v38 + 16);
      v65 = v64;

      v45 = v44;
      v46 = sub_2281FC3CC();
      [v45 addArrangedSubview_];

      *&v66 = v40;
      *(&v66 + 1) = v39;
      v67 = v41;
      v68 = v64;
      v69 = v42;
      v47 = sub_2281FC670(&v66, *(*&v24[v62] + 16) == 1);
      [*&v24[v43] addArrangedSubview_];
      v48 = [v47 heightAnchor];
      v49 = [v48 constraintGreaterThanOrEqualToConstant_];

      [v49 setActive_];

      v38 += 48;
      --v37;
    }

    while (v37);
  }

  v50 = v60 == 0;
  [*&v24[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView] setHidden_];
  [*&v24[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissButton] setHidden_];
  v51 = [v24 traitCollection];
  v52 = [v51 preferredContentSizeCategory];
  v53 = sub_2283928C0();

  sub_2281FCACC(v53 & 1);
  sub_2281FE1C8(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_228397F40;
  v55 = sub_228391640();
  v56 = MEMORY[0x277D74DB8];
  *(v54 + 32) = v55;
  *(v54 + 40) = v56;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  sub_2281FEF18(v61, type metadata accessor for TipImage);
  return v24;
}

void sub_2281FED2C()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_actions) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_onDismiss);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_isUsingVerticalLayout) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_currentConstraints) = v1;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___iconImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___medicationView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___detailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2281FEE40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281FE1C8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281FEEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2281FEF18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2281FEF78(unint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v40 = a2;
  sub_2282015E0(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v14 = 0;
    v38 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = a1 & 0xC000000000000001;
    v36 = i;
    v37 = a1;
    while (1)
    {
      if (v39)
      {
        v17 = MEMORY[0x22AAB6D80](v14, a1);
      }

      else
      {
        if (v14 >= *(v38 + 16))
        {
          goto LABEL_33;
        }

        v17 = *(a1 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      sub_228392A10();
      sub_2282016A8(v12, v10);
      v20 = sub_228390F60();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v10, 1, v20) == 1)
      {
        sub_228201554(v10);
      }

      else
      {
        if (v40 == 1)
        {
          v22 = sub_228390F40();
        }

        else
        {
          v22 = sub_228390F50();
        }

        v23 = v22;
        (*(v21 + 8))(v10, v20);
        if (v23)
        {
          v24 = v18;
          v25 = v33;
          MEMORY[0x22AAB5D20]();
          if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2283921E0();
          }

          goto LABEL_5;
        }
      }

      v26 = [v18 localizedOntologyEducationContent];
      v27 = v26;
      if (v40)
      {
        if (v40 == 1)
        {
          if (!v26)
          {
            goto LABEL_4;
          }

          v41 = v26;
          sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
          sub_22838FA90();
        }

        else
        {
          if (!v26)
          {
            goto LABEL_4;
          }

          v41 = v26;
          sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
          sub_22838FA80();
        }
      }

      else
      {
        if (!v26)
        {
          goto LABEL_4;
        }

        v41 = v26;
        sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
        sub_22838FA70();
      }

      v29 = v28;

      if (!v29)
      {
LABEL_4:
        v15 = v18;
        v16 = v35;
        MEMORY[0x22AAB5D20]();
        if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }

      v30 = v18;
      v16 = v34;
      MEMORY[0x22AAB5D20]();
      if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_29:
        v31 = *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2283921E0();
      }

LABEL_5:
      sub_228392230();
      sub_228201554(v12);

      ++v14;
      a1 = v37;
      if (v19 == v36)
      {
        return;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }
}

void sub_2281FF388(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_26:
    v4 = sub_2283930D0();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v29 = v3 & 0xFFFFFFFFFFFFFF8;
      v30 = v3 & 0xC000000000000001;
      v28 = v3;
      do
      {
        if (v30)
        {
          v6 = MEMORY[0x22AAB6D80](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v5 >= *(v29 + 16))
          {
            goto LABEL_22;
          }

          v6 = *(v3 + 8 * v5 + 32);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
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
            goto LABEL_26;
          }
        }

        v31 = v7;
        v8 = v6;
        v9 = [v6 severityLevel];
        v10 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *a2;
        v32 = *a2;
        *a2 = 0x8000000000000000;
        v14 = sub_2281A9BCC(v9);
        v15 = v12[2];
        v16 = (v13 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_23;
        }

        v3 = v13;
        if (v12[3] >= v17)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22829B40C();
            v12 = v32;
          }
        }

        else
        {
          sub_228299E08(v17, isUniquelyReferenced_nonNull_native);
          type metadata accessor for HKDrugInteractionSeverityLevel(0);
          v12 = v32;
          v18 = sub_2281A9BCC(v9);
          if ((v3 & 1) != (v19 & 1))
          {
            sub_2283934A0();
            __break(1u);
            return;
          }

          v14 = v18;
        }

        v20 = *a2;
        *a2 = v12;

        v21 = *a2;
        if ((v3 & 1) == 0)
        {
          v21[(v14 >> 6) + 8] |= 1 << v14;
          *(v21[6] + 8 * v14) = v9;
          *(v21[7] + 8 * v14) = 0;
          v22 = v21[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_25;
          }

          v21[2] = v24;
        }

        v25 = v21[7];
        v26 = *(v25 + 8 * v14);
        v23 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v23)
        {
          goto LABEL_24;
        }

        *(v25 + 8 * v14) = v27;

        ++v5;
        v3 = v28;
      }

      while (v31 != v4);
    }
  }
}

uint64_t Array<A>.groupByCritical(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_getKeyPath();

  v7 = sub_2281D93A0(v2);
  sub_2282014A8(&v7);

  v3 = v7;
  v7 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  sub_2281FEF78(v3, v1, &v7, &v6, &v5);

  return v7;
}

uint64_t sub_2281FF680@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  result = sub_228390F30();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t Array<A>.cellContent(for:)(unsigned __int8 *a1, unint64_t a2)
{
  sub_2282015E0(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = *a1;
  v44 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_46;
  }

  v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_47:
    v35 = MEMORY[0x277D84F90];
    v34 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_48:
      if ((v35 & 0x4000000000000000) == 0)
      {
        v36 = *(v35 + 16);
        goto LABEL_50;
      }
    }

LABEL_57:
    v36 = sub_2283930D0();
LABEL_50:

    if (v36 <= 0)
    {
      if (v34 < 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      sub_228321B58(v36, 1);
      if (v34 < 0)
      {
        goto LABEL_58;
      }
    }

    if ((v34 & 0x4000000000000000) == 0)
    {
      v37 = *(v34 + 16);
LABEL_56:

      return v37;
    }

LABEL_58:
    v37 = sub_2283930D0();
    goto LABEL_56;
  }

LABEL_3:
  v13 = 0;
  v41 = a2 & 0xFFFFFFFFFFFFFF8;
  v42 = a2 & 0xC000000000000001;
  v40 = a2;
  while (1)
  {
    if (v42)
    {
      v14 = MEMORY[0x22AAB6D80](v13, a2);
    }

    else
    {
      if (v13 >= *(v41 + 16))
      {
        goto LABEL_43;
      }

      v14 = *(a2 + 8 * v13 + 32);
    }

    a2 = v14;
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v12 = sub_2283930D0();
      if (!v12)
      {
        goto LABEL_47;
      }

      goto LABEL_3;
    }

    if (v11 == 1)
    {
      sub_228392A10();
      v16 = sub_228390F60();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v10, 1, v16) != 1)
      {
        v21 = sub_228390F40();
        (*(v17 + 8))(v10, v16);
        goto LABEL_19;
      }

      v18 = v10;
      goto LABEL_16;
    }

    if (v11 != 2)
    {
      break;
    }

    sub_228392A10();
    v19 = sub_228390F60();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v8, 1, v19) != 1)
    {
      v21 = sub_228390F50();
      (*(v20 + 8))(v8, v19);
LABEL_19:
      if (v21)
      {
        sub_228393210();
        v22 = *(v44 + 16);
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      goto LABEL_5;
    }

    v18 = v8;
LABEL_16:
    sub_228201554(v18);
LABEL_5:
    ++v13;
    a2 = v40;
    if (v15 == v12)
    {
      v10 = 0;
      v39 = v44;
      v44 = MEMORY[0x277D84F90];
      v8 = &off_2785F4000;
      while (1)
      {
        if (v42)
        {
          v23 = MEMORY[0x22AAB6D80](v10, a2);
        }

        else
        {
          if (v10 >= *(v41 + 16))
          {
            goto LABEL_45;
          }

          v23 = *(a2 + 8 * v10 + 32);
        }

        v24 = v23;
        v25 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_44;
        }

        v26 = [v23 localizedOntologyEducationContent];
        if (v11 == 1)
        {
          if (!v26)
          {
            goto LABEL_23;
          }

          v43 = v26;
          v27 = v26;
          sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
          v28 = sub_22838FA90();
        }

        else
        {
          if (!v26)
          {
            goto LABEL_23;
          }

          v43 = v26;
          v27 = v26;
          sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
          v28 = sub_22838FA80();
        }

        v30 = v28;
        v31 = v29;

        a2 = v40;
        if (v31)
        {

          v32 = HIBYTE(v31) & 0xF;
          if ((v31 & 0x2000000000000000) == 0)
          {
            v32 = v30 & 0xFFFFFFFFFFFFLL;
          }

          if (v32)
          {
            sub_228393210();
            v33 = *(v44 + 16);
            sub_228393250();
            sub_228393260();
            sub_228393220();
            goto LABEL_24;
          }
        }

LABEL_23:

LABEL_24:
        ++v10;
        if (v25 == v12)
        {
          v34 = v44;
          v35 = v39;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_57;
        }
      }
    }
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t Array<A>.countBySeverityLevel.getter(unint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  sub_2281FF388(a1, &v2);
  return v2;
}

id Array<A>.count.getter(unint64_t a1)
{
  v21[8] = *MEMORY[0x277D85DE8];
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  v2 = sub_2283907E0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_228390700();
  sub_2282015E0(0, &qword_27D823ED0, type metadata accessor for HKDrugInteractionSeverityLevel, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228398270;
  *(inited + 32) = xmmword_228397F40;
  *(inited + 48) = 3;
  if (sub_228390730())
  {
    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = [result isAppleInternalInstall];

    if (v8)
    {
      inited = sub_2281997BC(1, 4, 1, inited);
      *(inited + 16) = 4;
      *(inited + 56) = 4;
    }
  }

  v9 = *(inited + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (inited + 32);
    v12 = MEMORY[0x277D84F98];
    do
    {
      v14 = *v11++;
      v13 = v14;
      v21[0] = v12;
      sub_2281FF388(a1, v21);
      v15 = v21[0];
      if (*(v21[0] + 16) && (v16 = sub_2281A9BCC(v13), (v17 & 1) != 0))
      {
        v18 = *(*(v15 + 56) + 8 * v16);
      }

      else
      {
        v18 = 0;
      }

      v19 = __OFADD__(v10, v18);
      v10 += v18;
      if (v19)
      {
        __break(1u);
      }

      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t Array<A>.interactionSummaryTitle()(unint64_t a1)
{
  v34[10] = *MEMORY[0x277D85DE8];
  v34[0] = MEMORY[0x277D84F98];
  sub_2281FF388(a1, v34);
  v1 = v34[0];
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  v2 = sub_2283907E0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_228390700();
  sub_2282015E0(0, &qword_27D823ED0, type metadata accessor for HKDrugInteractionSeverityLevel, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228398270;
  *(inited + 32) = xmmword_228397F40;
  *(inited + 48) = 3;
  if (sub_228390730())
  {
    v6 = [objc_opt_self() sharedBehavior];
    if (!v6)
    {
      __break(1u);
LABEL_34:
      result = sub_228393300();
      __break(1u);
      return result;
    }

    v7 = v6;
    v8 = [v6 isAppleInternalInstall];

    if (v8)
    {
      inited = sub_2281997BC(1, 4, 1, inited);
      *(inited + 16) = 4;
      *(inited + 56) = 4;
    }
  }

  v9 = *(inited + 16);
  if (v9)
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    v33 = *(inited + 16);
    do
    {
      if (v10 >= *(inited + 16))
      {
        __break(1u);
      }

      if (*(v1 + 16))
      {
        v13 = *(inited + 8 * v10 + 32);
        v14 = sub_2281A9BCC(v13);
        if (v15)
        {
          v16 = *(*(v1 + 56) + 8 * v14);
          if (v16)
          {
            if (v13 > 2)
            {
              if (v13 == 3)
              {
                v17 = 0xE800000000000000;
                v18 = 0x4554415245444F4DLL;
              }

              else
              {
                if (v13 != 4)
                {
                  goto LABEL_34;
                }

                v17 = 0xE500000000000000;
                v18 = 0x524F4E494DLL;
              }
            }

            else if (v13 == 1)
            {
              v17 = 0xE800000000000000;
              v18 = 0x4C41434954495243;
            }

            else
            {
              if (v13 != 2)
              {
                goto LABEL_34;
              }

              v17 = 0xE700000000000000;
              v18 = 0x53554F49524553;
            }

            v34[0] = 0xD000000000000015;
            v34[1] = 0x80000002283ABB40;
            MEMORY[0x22AAB5C80](v18, v17);

            if (qword_280DDCF18 != -1)
            {
              swift_once();
            }

            sub_2282015E0(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
            v19 = swift_allocObject();
            *(v19 + 16) = xmmword_228397F40;
            *(v19 + 56) = MEMORY[0x277D83B88];
            *(v19 + 64) = MEMORY[0x277D83C10];
            *(v19 + 32) = v16;
            v20 = sub_22838F0C0();
            v22 = v21;

            if (*(v19 + 16))
            {
              v20 = sub_228391FD0();
              v24 = v23;

              v22 = v24;
            }

            else
            {
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = sub_228198748(0, *(v11 + 2) + 1, 1, v11);
            }

            v26 = *(v11 + 2);
            v25 = *(v11 + 3);
            if (v26 >= v25 >> 1)
            {
              v11 = sub_228198748((v25 > 1), v26 + 1, 1, v11);
            }

            *(v11 + 2) = v26 + 1;
            v12 = &v11[16 * v26];
            *(v12 + 4) = v20;
            *(v12 + 5) = v22;
            v9 = v33;
          }
        }
      }

      ++v10;
    }

    while (v9 != v10);
  }

  v27 = objc_opt_self();
  v28 = sub_228392190();

  v29 = [v27 localizedStringByJoiningStrings_];

  v30 = sub_228392000();

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

id Array<A>.interactionSummaryTitleColor()(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_2283930D0();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = objc_opt_self();
  v3 = &selRef_secondaryLabelColor;
  if (v1)
  {
    v3 = &selRef_labelColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_2282004AC()
{
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_228393460();
  }

  return v1 & 1;
}

uint64_t sub_22820054C(void **__src, void **__dst, void **a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst - __src;
  v7 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v7 = __dst - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - __dst;
  v10 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v10 = a3 - __dst;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v15 = a4;
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v23 = __dst;
      memmove(a4, __dst, 8 * v11);
      __dst = v23;
    }

    v22 = __dst;
    if (v9 < 8)
    {
      v14 = &v15[v11];
      goto LABEL_50;
    }

    v14 = &v15[v11];
    if (__dst <= v5)
    {
      goto LABEL_50;
    }

    v36 = v15;
    while (2)
    {
      v33 = v22;
      v24 = v22 - 1;
      v25 = v4;
      v26 = v14;
      while (1)
      {
        v27 = *(v26 - 1);
        v26 -= 8;
        v28 = *v24;
        v29 = v27;
        v30 = v28;
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        if (v39 != v37 || v40 != v38)
        {
          break;
        }

        v4 = (v25 - 8);
        if (v14 != v25)
        {
          goto LABEL_42;
        }

LABEL_33:
        v14 = v26;
        v25 = v4;
        if (v26 <= v36)
        {
          v14 = v26;
          v15 = v36;
          v22 = v33;
          goto LABEL_50;
        }
      }

      v35 = sub_228393460();

      v4 = (v25 - 8);
      if (v35)
      {
        if (v25 != v33)
        {
          *v4 = *v24;
        }

        v15 = v36;
        if (v14 <= v36 || (v22 = v24, v24 <= v5))
        {
          v22 = v24;
          goto LABEL_50;
        }

        continue;
      }

      break;
    }

    if (v14 == v25)
    {
      goto LABEL_33;
    }

LABEL_42:
    *v4 = *v26;
    goto LABEL_33;
  }

  v12 = __dst;
  if (a4 != __src || &__src[v8] <= a4)
  {
    v13 = a4;
    memmove(a4, __src, 8 * v8);
    a4 = v13;
  }

  v14 = &a4[v8];
  v15 = a4;
  if (v6 >= 8 && v12 < v4)
  {
    v34 = v14;
    while (1)
    {
      v16 = *v15;
      v17 = *v12;
      v18 = v16;
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      v19 = v39 == v37 && v40 == v38;
      if (v19)
      {
        break;
      }

      v20 = sub_228393460();

      if ((v20 & 1) == 0)
      {
        goto LABEL_21;
      }

      v21 = v12;
      v19 = v5 == v12++;
      if (!v19)
      {
        goto LABEL_22;
      }

LABEL_23:
      ++v5;
      v14 = v34;
      if (v15 >= v34 || v12 >= v4)
      {
        goto LABEL_25;
      }
    }

LABEL_21:
    v21 = v15;
    v19 = v5 == v15++;
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_22:
    *v5 = *v21;
    goto LABEL_23;
  }

LABEL_25:
  v22 = v5;
LABEL_50:
  if (v22 != v15 || v22 >= (v15 + ((v14 - v15 + (v14 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v22, v15, 8 * ((v14 - v15) / 8));
  }

  return 1;
}

uint64_t sub_2282008D8(char **a1, void **a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *a1;

  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v22 = sub_2283406C0(v22);
  }

  v19 = v5;
  *v5 = v22;
  v7 = (v22 + 16);
  v8 = *(v22 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v19 = v22;
    return 1;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = v4;
      v11 = &v22[16 * v8];
      v5 = *v11;
      v12 = &v7[2 * v8];
      v13 = v12[1];
      __src = (v9 + 8 * *v11);
      v14 = (v9 + 8 * *v12);
      v15 = (v9 + 8 * v13);

      sub_22820054C(__src, v14, v15, a2);
      v4 = v10;

      if (v10)
      {
        *v19 = v22;

        return 1;
      }

      if (v13 < v5)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v16 = *v7;
      if (v8 - 2 >= *v7)
      {
        goto LABEL_13;
      }

      *v11 = v5;
      *(v11 + 1) = v13;
      v17 = v16 - v8;
      if (v16 < v8)
      {
        goto LABEL_14;
      }

      v8 = v16 - 1;
      memmove(v12, v12 + 2, 16 * v17);
      *v7 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v22;
    __break(1u);
  }

  return result;
}

uint64_t sub_228200A80(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  v113 = MEMORY[0x277D84F90];
  if (v4 >= 1)
  {
    swift_retain_n();
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5;
      v8 = v5 + 1;
      if (v5 + 1 < v4)
      {
        v99 = v6;
        v9 = *a3;
        v10 = *(*a3 + 8 * v5);
        v11 = *(*a3 + 8 * v8);
        v12 = v10;
        v104 = sub_2282004AC();
        if (v108)
        {

          goto LABEL_109;
        }

        v13 = v7 + 2;
        if (v7 + 2 < v4)
        {
          v96 = v7;
          v14 = (v9 + 8 * v7 + 16);
          do
          {
            v16 = *(v14 - 1);
            v17 = *v14;
            v18 = v16;
            swift_getAtKeyPath();
            swift_getAtKeyPath();
            if (v111 == v109 && v112 == v110)
            {

              if (v104)
              {
                v6 = v99;
                v7 = v96;
                goto LABEL_21;
              }
            }

            else
            {
              v15 = sub_228393460();

              if ((v104 ^ v15))
              {
                goto LABEL_19;
              }
            }

            ++v14;
            ++v13;
          }

          while (v4 != v13);
          v13 = v4;
LABEL_19:
          v7 = v96;
        }

        v6 = v99;
        if (v104)
        {
LABEL_21:
          if (v13 < v7)
          {
            goto LABEL_130;
          }

          if (v7 < v13)
          {
            v20 = 8 * v13 - 8;
            v21 = 8 * v7;
            v8 = v13;
            v22 = v7;
            while (1)
            {
              if (v22 != --v13)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_135;
                }

                v23 = *(v24 + v21);
                *(v24 + v21) = *(v24 + v20);
                *(v24 + v20) = v23;
              }

              ++v22;
              v20 -= 8;
              v21 += 8;
              if (v22 >= v13)
              {
                goto LABEL_30;
              }
            }
          }
        }

        v8 = v13;
      }

LABEL_30:
      v25 = a3[1];
      if (v8 >= v25)
      {
        v27 = v8;
        if (v8 < v7)
        {
          goto LABEL_128;
        }
      }

      else
      {
        if (__OFSUB__(v8, v7))
        {
          goto LABEL_129;
        }

        if (v8 - v7 >= a4)
        {
          goto LABEL_38;
        }

        v26 = v7 + a4;
        if (__OFADD__(v7, a4))
        {
          goto LABEL_131;
        }

        if (v26 >= v25)
        {
          v26 = a3[1];
        }

        if (v26 < v7)
        {
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

          __break(1u);
          return result;
        }

        if (v8 == v26)
        {
LABEL_38:
          v27 = v8;
          if (v8 < v7)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v82 = *a3;
          v83 = *a3 + 8 * v8 - 8;
          v97 = v7;
          v84 = v7 - v8;
          v101 = v26;
          do
          {
            v103 = v83;
            v106 = v8;
            v85 = *(v82 + 8 * v8);
            v86 = v84;
            while (1)
            {
              v87 = *v83;
              v88 = v85;
              v89 = v87;
              swift_getAtKeyPath();
              swift_getAtKeyPath();
              if (v111 == v109 && v112 == v110)
              {
                break;
              }

              v91 = sub_228393460();

              if ((v91 & 1) == 0)
              {
                goto LABEL_91;
              }

              if (!v82)
              {
                goto LABEL_133;
              }

              v92 = *v83;
              v85 = *(v83 + 8);
              *v83 = v85;
              *(v83 + 8) = v92;
              v83 -= 8;
              if (__CFADD__(v86++, 1))
              {
                goto LABEL_91;
              }
            }

LABEL_91:
            v8 = v106 + 1;
            v83 = v103 + 8;
            --v84;
          }

          while (v106 + 1 != v101);
          v27 = v101;
          v7 = v97;
          if (v101 < v97)
          {
            goto LABEL_128;
          }
        }
      }

      v105 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_228198978(0, *(v6 + 2) + 1, 1, v6);
      }

      v29 = *(v6 + 2);
      v28 = *(v6 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v6 = sub_228198978((v28 > 1), v29 + 1, 1, v6);
      }

      *(v6 + 2) = v30;
      v31 = v6 + 32;
      v32 = &v6[16 * v29 + 32];
      *v32 = v7;
      *(v32 + 1) = v105;
      v113 = v6;
      v102 = *a1;
      if (!*a1)
      {
        goto LABEL_136;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v34 = *(v6 + 4);
            v35 = *(v6 + 5);
            v44 = __OFSUB__(v35, v34);
            v36 = v35 - v34;
            v37 = v44;
LABEL_60:
            if (v37)
            {
              goto LABEL_119;
            }

            v50 = &v6[16 * v30];
            v52 = *v50;
            v51 = *(v50 + 1);
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_122;
            }

            v56 = &v31[16 * v33];
            v58 = *v56;
            v57 = *(v56 + 1);
            v44 = __OFSUB__(v57, v58);
            v59 = v57 - v58;
            if (v44)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v54, v59))
            {
              goto LABEL_126;
            }

            if (v54 + v59 >= v36)
            {
              if (v36 < v59)
              {
                v33 = v30 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v60 = &v6[16 * v30];
          v62 = *v60;
          v61 = *(v60 + 1);
          v44 = __OFSUB__(v61, v62);
          v54 = v61 - v62;
          v55 = v44;
LABEL_74:
          if (v55)
          {
            goto LABEL_121;
          }

          v63 = &v31[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v44 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v44)
          {
            goto LABEL_124;
          }

          if (v66 < v54)
          {
            goto LABEL_3;
          }

LABEL_81:
          if (v33 - 1 >= v30)
          {
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
            goto LABEL_132;
          }

          v71 = *a3;
          if (!*a3)
          {
            goto LABEL_134;
          }

          v72 = &v31[16 * v33 - 16];
          v73 = *v72;
          v74 = v33;
          v75 = &v31[16 * v33];
          v76 = *(v75 + 1);
          v77 = (v71 + 8 * *v72);
          v78 = (v71 + 8 * *v75);
          v79 = (v71 + 8 * v76);

          sub_22820054C(v77, v78, v79, v102);
          if (v108)
          {

            v113 = v6;
            goto LABEL_109;
          }

          if (v76 < v73)
          {
            goto LABEL_114;
          }

          v80 = *(v6 + 2);
          if (v74 > v80)
          {
            goto LABEL_115;
          }

          *v72 = v73;
          *(v72 + 1) = v76;
          if (v74 >= v80)
          {
            goto LABEL_116;
          }

          v81 = v74;
          v30 = v80 - 1;
          memmove(v75, v75 + 16, 16 * (v80 - 1 - v81));
          *(v6 + 2) = v80 - 1;
          v31 = v6 + 32;
          if (v80 <= 2)
          {
LABEL_3:
            v113 = v6;
            goto LABEL_4;
          }
        }

        v38 = &v31[16 * v30];
        v39 = *(v38 - 8);
        v40 = *(v38 - 7);
        v44 = __OFSUB__(v40, v39);
        v41 = v40 - v39;
        if (v44)
        {
          goto LABEL_117;
        }

        v43 = *(v38 - 6);
        v42 = *(v38 - 5);
        v44 = __OFSUB__(v42, v43);
        v36 = v42 - v43;
        v37 = v44;
        if (v44)
        {
          goto LABEL_118;
        }

        v45 = &v6[16 * v30];
        v47 = *v45;
        v46 = *(v45 + 1);
        v44 = __OFSUB__(v46, v47);
        v48 = v46 - v47;
        if (v44)
        {
          goto LABEL_120;
        }

        v44 = __OFADD__(v36, v48);
        v49 = v36 + v48;
        if (v44)
        {
          goto LABEL_123;
        }

        if (v49 >= v41)
        {
          v67 = &v31[16 * v33];
          v69 = *v67;
          v68 = *(v67 + 1);
          v44 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v44)
          {
            goto LABEL_127;
          }

          if (v36 < v70)
          {
            v33 = v30 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_4:
      v5 = v105;
      v4 = a3[1];
      if (v105 >= v4)
      {
        goto LABEL_106;
      }
    }
  }

  swift_retain_n();
LABEL_106:
  v94 = *a1;
  if (!*a1)
  {
    goto LABEL_137;
  }

  sub_2282008D8(&v113, v94, a3);
  if (v108)
  {

LABEL_109:
  }

  else
  {
  }
}