uint64_t sub_24B965048@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AutomationListSection.addAutomationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  sub_24BAA9A1C();
  sub_24BAA9A1C();
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for AddTriggersView();
  v3 = (a1 + v2[5]);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v3 = sub_24BAA86FC();
  v3[1] = v4;
  v5 = a1 + v2[6];
  *v5 = v13;
  *(v5 + 1) = v14;
  v5[16] = v15;
  v6 = a1 + v2[7];
  *v6 = v13;
  *(v6 + 1) = v14;
  v6[16] = v15;
  v7 = a1 + v2[8];
  *v7 = v13;
  *(v7 + 1) = v14;
  v7[16] = v15;
  v8 = a1 + v2[9];
  *v8 = sub_24B8FC66C;
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = sub_24BAA85FC();
  v10 = sub_24BAA90BC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065FE8);
  v12 = a1 + *(result + 36);
  *v12 = v9;
  v12[8] = v10;
  return result;
}

unint64_t sub_24B965280()
{
  result = qword_27F065D40;
  if (!qword_27F065D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065D40);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24B965308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B965350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B9653C4()
{
  result = qword_27F065D58;
  if (!qword_27F065D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065D48);
    sub_24B965450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065D58);
  }

  return result;
}

unint64_t sub_24B965450()
{
  result = qword_27F065D60;
  if (!qword_27F065D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065D38);
    sub_24B8FF838();
    sub_24B965280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065D60);
  }

  return result;
}

uint64_t sub_24B965568(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B9655B0()
{
  result = qword_27F065D90;
  if (!qword_27F065D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065D78);
    sub_24B96563C();
    sub_24B965768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065D90);
  }

  return result;
}

unint64_t sub_24B96563C()
{
  result = qword_27F065D98;
  if (!qword_27F065D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065DA0);
    sub_24B965568(&qword_27F065DA8, type metadata accessor for AutomationListSection.editScheduleAutomationView);
    sub_24B965568(&qword_27F065DB0, type metadata accessor for AutomationListSection.editLocationAutomationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065D98);
  }

  return result;
}

unint64_t sub_24B965768()
{
  result = qword_27F065DB8;
  if (!qword_27F065DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065DC0);
    sub_24B965568(&qword_27F065DC8, type metadata accessor for AutomationListSection.editAppAutomationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065DB8);
  }

  return result;
}

unint64_t sub_24B965850()
{
  result = qword_27F065DF8;
  if (!qword_27F065DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065DF8);
  }

  return result;
}

unint64_t sub_24B9658A4()
{
  result = qword_27F065E00;
  if (!qword_27F065E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065E00);
  }

  return result;
}

uint64_t sub_24B965960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B9659C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_6()
{

  sub_24B900C14();

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

void sub_24B965B0C()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24B9663A4(319, &qword_27F063938, &qword_27F063940, &unk_24BAAD600, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24B965C70(319, &qword_27F063BA8, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24B9663A4(319, &qword_27F065D28, &qword_27F065D30, &unk_24BAB3018, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_24B965C70(319, &qword_27F063A40, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B965C70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_34Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_35Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24B965E88()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24B9663A4(319, &qword_27F063938, &qword_27F063940, &unk_24BAAD600, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24B9663A4(319, &qword_27F063BB0, &qword_27F063A10, &unk_24BAB3020, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24B901BFC();
        if (v3 <= 0x3F)
        {
          sub_24B91EF10();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24B965FC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065E48);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24B966120(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065E48);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24B966264()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24B9663A4(319, &qword_27F063938, &qword_27F063940, &unk_24BAAD600, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24B9663A4(319, &qword_27F063BB0, &qword_27F063A10, &unk_24BAB3020, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24B9663A4(319, &qword_27F065E60, &qword_27F065E10, &unk_24BAB3318, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B9663A4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24B96641C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for Trigger.Schedule(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24B966568(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for Trigger.Schedule(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24B9666A0()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24B919814(319, &qword_27F063FB0, MEMORY[0x277CC99E8]);
    if (v1 <= 0x3F)
    {
      sub_24B9663A4(319, &qword_27F063BB0, &qword_27F063A10, &unk_24BAB3020, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Trigger.Schedule(319);
        if (v3 <= 0x3F)
        {
          sub_24B965C70(319, &qword_27F063A40, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24B9667D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B966818(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_24B966894(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B9668DC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_24B966AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B966B14()
{
  result = qword_27F065E98;
  if (!qword_27F065E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065E88);
    sub_24B965568(&qword_27F065EA0, type metadata accessor for EditExistingScheduleTriggerView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065E98);
  }

  return result;
}

unint64_t sub_24B966C68()
{
  result = qword_27F065EE0;
  if (!qword_27F065EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065EA8);
    sub_24B965568(&qword_27F065EE8, type metadata accessor for EditExistingLocationTriggerView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065EE0);
  }

  return result;
}

uint64_t sub_24B966D50()
{
  v1 = type metadata accessor for AutomationListSection.editLocationAutomationView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v9 = sub_24BAA868C();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  v10 = v5 + v1[7];

  v11 = (v5 + v1[8]);
  v12 = type metadata accessor for Trigger(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 <= 3)
    {
      if (v13 <= 1)
      {
        if (v13)
        {
          if (v13 != 1)
          {
            goto LABEL_17;
          }

          v14 = v11 + 7;
        }

        else
        {
          v15 = sub_24BAA7DCC();
          v16 = *(*(v15 - 8) + 8);
          v16(v11, v15);
          v17 = type metadata accessor for Trigger.Schedule(0);
          v16((v11 + *(v17 + 20)), v15);

          v14 = (v11 + *(v17 + 32));
        }

        goto LABEL_16;
      }

      if (v13 == 2)
      {
        v14 = v11 + 2;

        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v13 <= 6)
    {
LABEL_15:
      v14 = v11 + 1;
      goto LABEL_16;
    }

    v14 = v11;
    if (v13 == 7)
    {
LABEL_16:
    }
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065E48);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B967088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065EF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B967100()
{
  result = qword_27F065F18;
  if (!qword_27F065F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065F10);
    sub_24B965568(&qword_27F065F20, type metadata accessor for AppTriggerRowView);
    sub_24B8F384C(&qword_27F063E70, &unk_27F068AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065F18);
  }

  return result;
}

unint64_t sub_24B9671E8()
{
  result = qword_27F065F28;
  if (!qword_27F065F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065F00);
    sub_24B9672A0();
    sub_24B8F384C(&qword_27F063E70, &unk_27F068AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065F28);
  }

  return result;
}

unint64_t sub_24B9672A0()
{
  result = qword_27F065F30;
  if (!qword_27F065F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065EF8);
    sub_24B965568(&qword_27F065F38, type metadata accessor for EditExistingAppTriggerView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065F30);
  }

  return result;
}

void sub_24B967388(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);

  sub_24BA8F764(v4, v5, a1);
}

unint64_t sub_24B9673D4()
{
  result = qword_27F065F60;
  if (!qword_27F065F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065F40);
    sub_24B965568(&qword_27F065F68, type metadata accessor for EditExistingGameControllerTriggerView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065F60);
  }

  return result;
}

uint64_t sub_24B9674BC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_24B967554()
{
  result = qword_27F065F90;
  if (!qword_27F065F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065F70);
    sub_24B965568(&qword_27F065F98, type metadata accessor for CreateGameControllerTriggerView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065F90);
  }

  return result;
}

uint64_t sub_24B96766C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_24B967720(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24B9677A4()
{
  result = qword_27F065FD8;
  if (!qword_27F065FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065FE0);
    sub_24B9546F4();
    sub_24B8F384C(&unk_27F069040, &unk_27F063278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065FD8);
  }

  return result;
}

uint64_t objectdestroy_104Tm()
{
  v1 = type metadata accessor for AutomationListSection.addAutomationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B967A28@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AutomationListSection.addAutomationView(0);

  return sub_24B965048(a1);
}

unint64_t sub_24B967A98()
{
  result = qword_27F065FF0;
  if (!qword_27F065FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065FA0);
    sub_24B8F384C(&qword_27F065FF8, &qword_27F066000);
    sub_24B8F384C(&qword_27F063F18, &qword_27F063F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065FF0);
  }

  return result;
}

unint64_t sub_24B967B7C()
{
  result = qword_27F066008;
  if (!qword_27F066008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065FE8);
    sub_24B965568(&qword_27F066010, type metadata accessor for AddTriggersView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066008);
  }

  return result;
}

void sub_24B967C58(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = v5;

  sub_24BA8F564(v4, v5, a1);
}

unint64_t sub_24B967CAC()
{
  result = qword_27F066038;
  if (!qword_27F066038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066018);
    sub_24B965568(&qword_27F066040, type metadata accessor for EditExistingSmartTriggerView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066038);
  }

  return result;
}

unint64_t sub_24B967DF4()
{
  result = qword_27F066090;
  if (!qword_27F066090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066048);
    sub_24B965568(&qword_27F066098, type metadata accessor for CreateMindfulnessTriggerView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066090);
  }

  return result;
}

unint64_t sub_24B967EDC()
{
  result = qword_27F0660A0;
  if (!qword_27F0660A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066068);
    sub_24B965568(&qword_27F0660A8, type metadata accessor for EditExistingMindfulnessTriggerView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0660A0);
  }

  return result;
}

void sub_24B967FC4(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v4;

  sub_24BA8F360(v3, v4, a1);
}

uint64_t objectdestroy_142Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t sub_24B9680D8()
{
  result = qword_27F0660E8;
  if (!qword_27F0660E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0660B0);
    sub_24B965568(&qword_27F0660F0, type metadata accessor for CreateWorkoutTriggerView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0660E8);
  }

  return result;
}

unint64_t sub_24B9681C0()
{
  result = qword_27F0660F8;
  if (!qword_27F0660F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0660D0);
    sub_24B965568(&qword_27F066100, type metadata accessor for EditExistingWorkoutTriggerView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0660F8);
  }

  return result;
}

void sub_24B9682A8(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v4;

  sub_24BA8F15C(v3, v4, a1);
}

unint64_t sub_24B968340()
{
  result = qword_27F066118;
  if (!qword_27F066118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065ED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065EA8);
    sub_24B8F384C(&qword_27F065ED8, &qword_27F065ED0);
    sub_24B966C68();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066118);
  }

  return result;
}

uint64_t sub_24B968468()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065F10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065F00);
  sub_24B967100();
  sub_24B9671E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B9684F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065F50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065F40);
  sub_24B8F384C(&qword_27F065F58, &qword_27F065F50);
  sub_24B9673D4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B9685B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065F80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065F70);
  sub_24B8F384C(&qword_27F065F88, &qword_27F065F80);
  sub_24B967554();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24B968674()
{
  result = qword_27F066120;
  if (!qword_27F066120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065FA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065FE8);
    sub_24B967A98();
    sub_24B967B7C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B965568(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066120);
  }

  return result;
}

uint64_t sub_24B9687DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066028);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066018);
  sub_24B8F384C(&qword_27F066030, &qword_27F066028);
  sub_24B967CAC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24B96889C()
{
  result = qword_27F066130;
  if (!qword_27F066130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066068);
    sub_24B8F384C(&qword_27F066088, &qword_27F066080);
    sub_24B967EDC();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066048);
    sub_24B967DF4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066130);
  }

  return result;
}

unint64_t sub_24B9689FC()
{
  result = qword_27F066140;
  if (!qword_27F066140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065F80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0660D0);
    sub_24B8F384C(&qword_27F065F88, &qword_27F065F80);
    sub_24B9681C0();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0660B0);
    sub_24B9680D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066140);
  }

  return result;
}

id FocusInformationView.init(name:symbolImageName:tintColorName:semanticType:nextButtonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for FocusInformationView(0);
  v17 = v16[5];
  *(a8 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  result = swift_storeEnumTagMultiPayload();
  v19 = (a8 + v16[6]);
  *v19 = a1;
  v19[1] = a2;
  v20 = (a8 + v16[7]);
  *v20 = a3;
  v20[1] = a4;
  if (!a5)
  {
    goto LABEL_8;
  }

  sub_24B96BAFC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  if (![ObjCClassFromMetadata respondsToSelector_])
  {

    goto LABEL_8;
  }

  v22 = [ObjCClassFromMetadata performSelector_];
  result = ObjCClassFromMetadata;
  if (v22)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v23 = sub_24BAA973C();

LABEL_9:
      *(a8 + v16[8]) = v23;
      *(a8 + v16[9]) = a6;
      v24 = (a8 + v16[10]);
      *v24 = a7;
      v24[1] = a9;
      return result;
    }

    result = swift_unknownObjectRelease();
LABEL_8:
    v23 = 0;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t FocusInformationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24BAA8BCC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066158);
  return sub_24B968DC4(v1, a1 + *(v3 + 44));
}

uint64_t sub_24B968DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v228 = a2;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066270);
  MEMORY[0x28223BE20](v221);
  v220 = &v206 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066278);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v229 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v239 = &v206 - v7;
  v223 = type metadata accessor for FocusInformationView.FocusInformationBullet(0);
  v8 = MEMORY[0x28223BE20](v223);
  v224 = (&v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v211 = (&v206 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v210 = (&v206 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v218 = (&v206 - v15);
  MEMORY[0x28223BE20](v14);
  v216 = (&v206 - v16);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066280);
  v17 = MEMORY[0x28223BE20](v222);
  v225 = &v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v227 = &v206 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v226 = &v206 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v219 = &v206 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v235 = &v206 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v208 = &v206 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v207 = &v206 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v206 = &v206 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v209 = &v206 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v217 = &v206 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v238 = &v206 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v215 = &v206 - v40;
  MEMORY[0x28223BE20](v39);
  v237 = &v206 - v41;
  v213 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066288) - 8);
  MEMORY[0x28223BE20](v213);
  v43 = &v206 - v42;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066290) - 8;
  v44 = MEMORY[0x28223BE20](v230);
  v234 = &v206 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v214 = &v206 - v47;
  MEMORY[0x28223BE20](v46);
  v236 = &v206 - v48;
  v49 = type metadata accessor for FocusInformationIconView();
  MEMORY[0x28223BE20](v49);
  v51 = (&v206 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066298);
  v53 = MEMORY[0x28223BE20](v52 - 8);
  v233 = &v206 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v56 = &v206 - v55;
  v57 = type metadata accessor for FocusInformationView(0);
  v58 = v57[8];
  v212 = *(a1 + v57[9]);
  v59 = v212;
  v60 = (a1 + v57[7]);
  v61 = *v60;
  v62 = v60[1];
  v63 = *(a1 + v58);
  *v51 = swift_getKeyPath();
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v64 = v49[5];
  *(v51 + v64) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  *(v51 + v49[6]) = v59;
  v65 = (v51 + v49[7]);
  *v65 = v61;
  v65[1] = v62;
  *(v51 + v49[8]) = v63;
  sub_24B96C9E4(&qword_27F0662A0, type metadata accessor for FocusInformationIconView);
  v231 = v63;
  swift_retain_n();

  v232 = v56;
  sub_24BAA95EC();
  sub_24B96C688(v51);
  *&v249[0] = sub_24B96A3B0();
  *(&v249[0] + 1) = v66;
  sub_24B8F5E3C();
  v67 = sub_24BAA93CC();
  v69 = v68;
  LOBYTE(v49) = v70;
  v72 = v71;
  KeyPath = swift_getKeyPath();
  v74 = sub_24BAA988C();
  v75 = swift_getKeyPath();
  LOBYTE(v56) = v49 & 1;
  LOBYTE(v249[0]) = v49 & 1;
  v76 = sub_24BAA914C();
  v77 = swift_getKeyPath();
  *&v244 = v67;
  *(&v244 + 1) = v69;
  LOBYTE(v245) = v56;
  *(&v245 + 1) = v72;
  *&v246 = KeyPath;
  BYTE8(v246) = 1;
  *&v247 = v75;
  *(&v247 + 1) = v74;
  *&v248 = v77;
  *(&v248 + 1) = v76;
  sub_24BAA91AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0662A8);
  sub_24B96C6EC(&qword_27F0662B0, &qword_27F0662A8, &unk_24BAB3EF0, sub_24B96C79C);
  sub_24BAA941C();
  v249[2] = v246;
  v249[3] = v247;
  v249[4] = v248;
  v249[0] = v244;
  v249[1] = v245;
  sub_24B8F35E4(v249, &qword_27F0662A8);
  v78 = swift_getKeyPath();
  v79 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0662C8) + 36)];
  *v79 = v78;
  *(v79 + 1) = 3;
  v79[16] = 0;
  *&v43[v213[11]] = 256;
  LOBYTE(a1) = sub_24BAA90DC();
  v80 = objc_opt_self();
  v81 = [v80 currentDevice];
  [v81 userInterfaceIdiom];

  sub_24BAA828C();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = v43;
  v91 = v214;
  sub_24B90294C(v90, v214, &qword_27F066288);
  v92 = v91 + *(v230 + 44);
  *v92 = a1;
  *(v92 + 8) = v83;
  *(v92 + 16) = v85;
  *(v92 + 24) = v87;
  *(v92 + 32) = v89;
  *(v92 + 40) = 0;
  sub_24B90294C(v91, v236, &qword_27F066290);
  if (v212 == 9)
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v93 = qword_27F077088;
  }

  else
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v93 = qword_27F077088;
  }

  v230 = v93;
  v94 = sub_24BAA7C2C();
  v96 = v95;
  v97 = v231;
  v98 = swift_getKeyPath();
  v99 = v216;
  *v216 = v98;
  swift_storeEnumTagMultiPayload();
  v100 = v223;
  v101 = (v99 + *(v223 + 20));
  *v101 = 0x616C732E6C6C6562;
  v101[1] = 0xEF6C6C69662E6873;
  *(v99 + v100[6]) = v97;
  v102 = (v99 + v100[7]);
  *v102 = v94;
  v102[1] = v96;

  LOBYTE(v94) = sub_24BAA90DC();
  v103 = [v80 &selRef_recommendedAndCandidateAllowedAppsForDNDMode_reply_ + 2];
  [v103 &selRef_interfaceOrientation];

  sub_24BAA828C();
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v112 = v215;
  sub_24B96C854(v99, v215);
  v113 = v222;
  v114 = v112 + *(v222 + 36);
  *v114 = v94;
  *(v114 + 8) = v105;
  *(v114 + 16) = v107;
  *(v114 + 24) = v109;
  *(v114 + 32) = v111;
  *(v114 + 40) = 0;
  sub_24B96C8B8(v112, v237);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v115 = sub_24BAA7C2C();
  v117 = v116;
  v118 = swift_getKeyPath();
  v119 = v218;
  *v218 = v118;
  swift_storeEnumTagMultiPayload();
  v120 = (v119 + v100[5]);
  *v120 = 0xD00000000000001DLL;
  v120[1] = 0x800000024BAC1B40;
  *(v119 + v100[6]) = v97;
  v121 = (v119 + v100[7]);
  *v121 = v115;
  v121[1] = v117;
  LOBYTE(v115) = sub_24BAA90DC();
  v122 = [v80 &selRef_recommendedAndCandidateAllowedAppsForDNDMode_reply_ + 2];
  [v122 &selRef_interfaceOrientation];

  sub_24BAA828C();
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v131 = v217;
  sub_24B96C854(v119, v217);
  v132 = v131 + *(v113 + 36);
  *v132 = v115;
  *(v132 + 8) = v124;
  *(v132 + 16) = v126;
  *(v132 + 24) = v128;
  *(v132 + 32) = v130;
  *(v132 + 40) = 0;
  sub_24B96C8B8(v131, v238);
  v133 = [v80 &selRef_recommendedAndCandidateAllowedAppsForDNDMode_reply_ + 2];
  v134 = [v133 &selRef_interfaceOrientation];

  v213 = v80;
  v136 = sub_24BAA7C2C();
  if (v134 == 1)
  {
    v137 = v135;
    v138 = swift_getKeyPath();
    v139 = v210;
    *v210 = v138;
    swift_storeEnumTagMultiPayload();
    v140 = (v139 + v100[5]);
    *v140 = 0x6170692E73707061;
    v140[1] = 0xE900000000000064;
    *(v139 + v100[6]) = v97;
    v141 = (v139 + v100[7]);
    *v141 = v136;
    v141[1] = v137;

    v142 = sub_24BAA90DC();
    v143 = [v80 &selRef_recommendedAndCandidateAllowedAppsForDNDMode_reply_ + 2];
    [v143 &selRef_interfaceOrientation];

    sub_24BAA828C();
    v145 = v144;
    v147 = v146;
    v149 = v148;
    v151 = v150;
    v152 = v206;
    sub_24B96C854(v139, v206);
    v153 = v152 + *(v113 + 36);
    *v153 = v142;
    *(v153 + 8) = v145;
    *(v153 + 16) = v147;
    *(v153 + 24) = v149;
    *(v153 + 32) = v151;
    *(v153 + 40) = 0;
    v154 = v209;
    sub_24B96C8B8(v152, v209);
  }

  else
  {
    v155 = v135;
    v156 = swift_getKeyPath();
    v157 = v211;
    *v211 = v156;
    swift_storeEnumTagMultiPayload();
    v158 = (v157 + v100[5]);
    *v158 = 0x6870692E73707061;
    v158[1] = 0xEB00000000656E6FLL;
    *(v157 + v100[6]) = v97;
    v159 = (v157 + v100[7]);
    *v159 = v136;
    v159[1] = v155;

    v160 = sub_24BAA90DC();
    v161 = [v80 &selRef_recommendedAndCandidateAllowedAppsForDNDMode_reply_ + 2];
    [v161 &selRef_interfaceOrientation];

    sub_24BAA828C();
    v163 = v162;
    v165 = v164;
    v167 = v166;
    v169 = v168;
    v170 = v208;
    sub_24B96C854(v157, v208);
    v171 = v170 + *(v113 + 36);
    *v171 = v160;
    *(v171 + 8) = v163;
    *(v171 + 16) = v165;
    *(v171 + 24) = v167;
    *(v171 + 32) = v169;
    *(v171 + 40) = 0;
    v154 = v207;
    sub_24B96C8B8(v170, v207);
  }

  sub_24B8F3208(v154, v220, &qword_27F066280);
  swift_storeEnumTagMultiPayload();
  sub_24B96C928();
  sub_24BAA8D0C();
  sub_24B8F35E4(v154, &qword_27F066280);
  v172 = sub_24BAA7C2C();
  v174 = v173;
  v175 = swift_getKeyPath();
  v176 = v224;
  *v224 = v175;
  swift_storeEnumTagMultiPayload();
  v177 = (v176 + v100[5]);
  *v177 = 0x322E686374697773;
  v177[1] = 0xE800000000000000;
  *(v176 + v100[6]) = v231;
  v178 = (v176 + v100[7]);
  *v178 = v172;
  v178[1] = v174;
  LOBYTE(v172) = sub_24BAA90DC();
  v179 = [v213 currentDevice];
  [v179 userInterfaceIdiom];

  sub_24BAA828C();
  v181 = v180;
  v183 = v182;
  v185 = v184;
  v187 = v186;
  v188 = v176;
  v189 = v219;
  sub_24B96C854(v188, v219);
  v190 = v189 + *(v113 + 36);
  *v190 = v172;
  *(v190 + 8) = v181;
  *(v190 + 16) = v183;
  *(v190 + 24) = v185;
  *(v190 + 32) = v187;
  *(v190 + 40) = 0;
  v191 = v189;
  v192 = v235;
  sub_24B96C8B8(v191, v235);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v240 = v244;
  v231 = v245;
  v224 = *(&v246 + 1);
  v230 = v246;
  v243 = 1;
  v242 = BYTE8(v244);
  v241 = BYTE8(v245);
  v193 = v233;
  sub_24B8F3208(v232, v233, &qword_27F066298);
  v194 = v234;
  sub_24B96CA2C(v236, v234);
  v195 = v226;
  sub_24B8F3208(v237, v226, &qword_27F066280);
  v196 = v227;
  sub_24B8F3208(v238, v227, &qword_27F066280);
  v197 = v229;
  sub_24B8F3208(v239, v229, &qword_27F066278);
  v198 = v192;
  v199 = v225;
  sub_24B8F3208(v198, v225, &qword_27F066280);
  LODWORD(v221) = v243;
  LODWORD(v222) = v242;
  LODWORD(v223) = v241;
  v200 = v193;
  v201 = v228;
  sub_24B8F3208(v200, v228, &qword_27F066298);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0662E0);
  sub_24B96CA2C(v194, v201 + v202[12]);
  sub_24B8F3208(v195, v201 + v202[16], &qword_27F066280);
  sub_24B8F3208(v196, v201 + v202[20], &qword_27F066280);
  sub_24B8F3208(v197, v201 + v202[24], &qword_27F066278);
  sub_24B8F3208(v199, v201 + v202[28], &qword_27F066280);
  v203 = v201 + v202[32];
  *v203 = 0;
  *(v203 + 8) = v221;
  *(v203 + 16) = v240;
  *(v203 + 24) = v222;
  *(v203 + 32) = v231;
  *(v203 + 40) = v223;
  v204 = v224;
  *(v203 + 48) = v230;
  *(v203 + 56) = v204;
  sub_24B8F35E4(v235, &qword_27F066280);
  sub_24B8F35E4(v239, &qword_27F066278);
  sub_24B8F35E4(v238, &qword_27F066280);
  sub_24B8F35E4(v237, &qword_27F066280);
  sub_24B96CA9C(v236);
  sub_24B8F35E4(v232, &qword_27F066298);
  sub_24B8F35E4(v199, &qword_27F066280);
  sub_24B8F35E4(v197, &qword_27F066278);
  sub_24B8F35E4(v196, &qword_27F066280);
  sub_24B8F35E4(v195, &qword_27F066280);
  sub_24B96CA9C(v234);
  return sub_24B8F35E4(v233, &qword_27F066298);
}

uint64_t sub_24B96A3B0()
{
  v1 = type metadata accessor for FocusInformationView(0);
  v2 = *(v0 + *(v1 + 36));
  if (v2 > 4)
  {
    if (v2 <= 6)
    {
      if (v2 == 5)
      {
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_33;
      }

      goto LABEL_26;
    }

    switch(v2)
    {
      case 7:
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_33;
      case 8:
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

LABEL_33:
        swift_once();
        return sub_24BAA7C2C();
      case 9:
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_33;
    }
  }

  else
  {
    if (v2 > 1)
    {
      if (v2 != 2 && v2 != 3)
      {
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_33;
      }

LABEL_26:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_33;
    }

    if (!v2)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_33;
    }

    if (v2 == 1)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_33;
    }
  }

  v4 = v1;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24BAAD5B0;
  v6 = (v0 + *(v4 + 24));
  v8 = *v6;
  v7 = v6[1];
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_24B8F6A20();
  *(v5 + 32) = v8;
  *(v5 + 40) = v7;

  v9 = sub_24BAA9FEC();

  return v9;
}

uint64_t sub_24B96A898@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24BAA89FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24B8F3208(v2, &v14 - v9, &qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA8B9C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24B96AA98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43[1] = a1;
  v43[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066190);
  MEMORY[0x28223BE20](v43[0]);
  v4 = v43 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066198);
  MEMORY[0x28223BE20](v5);
  v7 = v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0661A0);
  MEMORY[0x28223BE20](v8);
  v10 = v43 - v9;
  v11 = sub_24BAA8B9C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B96A898(v14);
  v15 = sub_24BAA8B8C();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    *v10 = sub_24BAA8BCC();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0661F0) + 44)];
    *v16 = sub_24BAA8AAC();
    *(v16 + 1) = 0x4024000000000000;
    v16[16] = 0;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0661F8);
    sub_24B96AE98(v2, &v16[*(v17 + 44)]);
    LOBYTE(v16) = sub_24BAA90AC();
    sub_24BAA828C();
    v18 = &v10[*(v8 + 36)];
    *v18 = v16;
    *(v18 + 1) = v19;
    *(v18 + 2) = v20;
    *(v18 + 3) = v21;
    *(v18 + 4) = v22;
    v18[40] = 0;
    v23 = &qword_27F0661A0;
    sub_24B8F3208(v10, v7, &qword_27F0661A0);
    swift_storeEnumTagMultiPayload();
    sub_24B96C1D0();
    sub_24B96C288();
    sub_24BAA8D0C();
    v24 = v10;
  }

  else
  {
    *v4 = sub_24BAA8AAC();
    *(v4 + 1) = 0x402C000000000000;
    v4[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0661A8);
    sub_24B96B3B0(v2, &v4[*(v25 + 44)]);
    v26 = sub_24BAA911C();
    sub_24BAA828C();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0661B0) + 36)];
    *v35 = v26;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    v36 = sub_24BAA90AC();
    sub_24BAA828C();
    v37 = &v4[*(v43[0] + 36)];
    *v37 = v36;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    *(v37 + 4) = v41;
    v37[40] = 0;
    v23 = &qword_27F066190;
    sub_24B8F3208(v4, v7, &qword_27F066190);
    swift_storeEnumTagMultiPayload();
    sub_24B96C1D0();
    sub_24B96C288();
    sub_24BAA8D0C();
    v24 = v4;
  }

  return sub_24B8F35E4(v24, v23);
}

uint64_t sub_24B96AE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066200);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v46 - v9;
  v10 = type metadata accessor for FocusInformationView.FocusInformationBullet(0);
  v46 = a1;

  v11 = sub_24BAA994C();
  v12 = *(a1 + *(v10 + 24));
  KeyPath = swift_getKeyPath();
  v14 = sub_24BAA919C();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);

  sub_24BAA91FC();
  sub_24B8F35E4(v5, &qword_27F063CD8);
  sub_24BAA91EC();
  v15 = sub_24BAA921C();

  v16 = swift_getKeyPath();
  v56 = v11;
  v57 = KeyPath;
  v58 = v12;
  v59 = v16;
  v60 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066208);
  sub_24B96C6EC(&qword_27F066210, &qword_27F066208, &unk_24BAB3DE0, sub_24B96C3DC);
  sub_24BAA95EC();

  v17 = (v46 + *(v10 + 28));
  v18 = v17[1];
  v56 = *v17;
  v57 = v18;
  sub_24B8F5E3C();

  v19 = sub_24BAA93CC();
  v21 = v20;
  LOBYTE(KeyPath) = v22;
  sub_24BAA915C();
  sub_24BAA917C();

  v23 = sub_24BAA939C();
  v25 = v24;
  LOBYTE(v10) = v26;

  sub_24B900910(v19, v21, KeyPath & 1);

  sub_24BAA988C();
  v27 = sub_24BAA933C();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_24B900910(v23, v25, v10 & 1);

  v34 = swift_getKeyPath();
  LOBYTE(v56) = v31 & 1;
  LOBYTE(v53) = 1;
  v35 = v47;
  v36 = v49;
  sub_24B8F3208(v47, v49, &qword_27F066200);
  v37 = v36;
  v38 = v48;
  sub_24B8F3208(v37, v48, &qword_27F066200);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066228);
  v40 = (v38 + *(v39 + 48));
  *&v53 = v27;
  *(&v53 + 1) = v29;
  LOBYTE(v54) = v31 & 1;
  *(&v54 + 1) = *v52;
  DWORD1(v54) = *&v52[3];
  *(&v54 + 1) = v33;
  *v55 = 256;
  *&v55[2] = v50;
  *&v55[6] = v51;
  *&v55[8] = v34;
  *&v55[16] = 0;
  v55[24] = 1;
  v41 = v53;
  v42 = v54;
  v43 = *v55;
  *(v40 + 41) = *&v55[9];
  v40[1] = v42;
  v40[2] = v43;
  *v40 = v41;
  v44 = v38 + *(v39 + 64);
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_24B8F3208(&v53, &v56, &qword_27F066230);
  sub_24B8F35E4(v35, &qword_27F066200);
  v56 = v27;
  v57 = v29;
  LOBYTE(v58) = v31 & 1;
  *(&v58 + 1) = *v52;
  HIDWORD(v58) = *&v52[3];
  v59 = v33;
  LOWORD(v60) = 256;
  *(&v60 + 2) = v50;
  HIWORD(v60) = v51;
  v61 = v34;
  v62 = 0;
  v63 = 1;
  sub_24B8F35E4(&v56, &qword_27F066230);
  return sub_24B8F35E4(v49, &qword_27F066200);
}

uint64_t sub_24B96B3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066238);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v39 - v9;
  v10 = type metadata accessor for FocusInformationView.FocusInformationBullet(0);

  v11 = sub_24BAA994C();
  v12 = *(a1 + *(v10 + 24));
  KeyPath = swift_getKeyPath();
  v14 = sub_24BAA919C();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);

  sub_24BAA91FC();
  sub_24B8F35E4(v5, &qword_27F063CD8);
  sub_24BAA91EC();
  v15 = sub_24BAA921C();

  v16 = swift_getKeyPath();
  v17 = sub_24BAA90CC();
  sub_24BAA828C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v50[0]) = 0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *(&v48[2] + 7) = *&v48[9];
  *(v48 + 7) = *&v48[7];
  *(&v48[4] + 7) = v49;
  *&v46 = v11;
  *(&v46 + 1) = KeyPath;
  *v47 = v12;
  *&v47[8] = v16;
  *&v47[16] = v15;
  v47[24] = v17;
  *&v47[32] = v19;
  *&v47[40] = v21;
  *&v47[48] = v23;
  *&v47[56] = v25;
  v47[64] = 0;
  *&v47[81] = *&v48[2];
  *&v47[65] = *v48;
  *&v47[97] = *&v48[4];
  *&v47[112] = *(&v49 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066240);
  sub_24B96C49C();
  v26 = v41;
  sub_24BAA95EC();
  v50[6] = *&v47[80];
  v50[7] = *&v47[96];
  v50[2] = *&v47[16];
  v50[3] = *&v47[32];
  v51 = *&v47[112];
  v50[4] = *&v47[48];
  v50[5] = *&v47[64];
  v50[0] = v46;
  v50[1] = *v47;
  sub_24B8F35E4(v50, &qword_27F066240);
  v40 = sub_24BAA8BDC();
  v45 = 1;
  sub_24B96B8E4(&v46);
  v53 = *v47;
  v54 = *&v47[16];
  v55[0] = *&v47[32];
  *(v55 + 9) = *&v47[41];
  v52 = v46;
  v56[2] = *&v47[16];
  v57[0] = *&v47[32];
  *(v57 + 9) = *&v47[41];
  v56[0] = v46;
  v56[1] = *v47;
  sub_24B8F3208(&v52, &v58, &qword_27F066258);
  sub_24B8F35E4(v56, &qword_27F066258);
  *(&v44[1] + 7) = v53;
  *(&v44[2] + 7) = v54;
  *(&v44[3] + 7) = v55[0];
  v44[4] = *(v55 + 9);
  *(v44 + 7) = v52;
  LOBYTE(v15) = v45;
  v27 = v42;
  sub_24B8F3208(v26, v42, &qword_27F066238);
  v28 = v43;
  sub_24B8F3208(v27, v43, &qword_27F066238);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066260);
  v30 = v28 + *(v29 + 48);
  v31 = v40;
  v58 = v40;
  v59[0] = v15;
  *&v59[1] = v44[0];
  *&v59[17] = v44[1];
  *&v59[33] = v44[2];
  *&v59[49] = v44[3];
  *&v59[65] = v44[4];
  v32 = *v59;
  *v30 = v40;
  *(v30 + 16) = v32;
  v33 = *&v59[16];
  v34 = *&v59[32];
  v35 = *&v59[48];
  v36 = *&v59[64];
  *(v30 + 96) = v59[80];
  *(v30 + 64) = v35;
  *(v30 + 80) = v36;
  *(v30 + 32) = v33;
  *(v30 + 48) = v34;
  v37 = v28 + *(v29 + 64);
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_24B8F3208(&v58, &v46, &qword_27F066268);
  sub_24B8F35E4(v26, &qword_27F066238);
  v46 = v31;
  v47[0] = v15;
  *&v47[17] = v44[1];
  *&v47[33] = v44[2];
  *&v47[49] = v44[3];
  *&v47[65] = v44[4];
  *&v47[1] = v44[0];
  sub_24B8F35E4(&v46, &qword_27F066268);
  return sub_24B8F35E4(v27, &qword_27F066238);
}

uint64_t sub_24B96B8E4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FocusInformationView.FocusInformationBullet(0);
  sub_24B8F5E3C();

  v2 = sub_24BAA93CC();
  v4 = v3;
  v6 = v5;
  sub_24BAA915C();
  sub_24BAA917C();

  v7 = sub_24BAA939C();
  v9 = v8;
  v11 = v10;

  sub_24B900910(v2, v4, v6 & 1);

  sub_24BAA988C();
  v12 = sub_24BAA933C();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_24B900910(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = 256;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0xC010000000000000;
  *(a1 + 56) = result;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  return result;
}

uint64_t sub_24B96BA78@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24BAA8BCC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066158);
  return sub_24B968DC4(v1, a1 + *(v3 + 44));
}

unint64_t sub_24B96BAFC()
{
  result = qword_27F066150;
  if (!qword_27F066150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F066150);
  }

  return result;
}

uint64_t sub_24B96BB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
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

uint64_t sub_24B96BCB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
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

void sub_24B96BDD8()
{
  sub_24B936680(319, &qword_27F063A30, MEMORY[0x277CE02A8]);
  if (v0 <= 0x3F)
  {
    sub_24B936680(319, &qword_27F068F10, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_24B9366D4();
      if (v2 <= 0x3F)
      {
        type metadata accessor for DNDModeSemanticType(319);
        if (v3 <= 0x3F)
        {
          sub_24B8F45F4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24B96BF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B96C024(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24B96C10C()
{
  sub_24B936680(319, &qword_27F063A30, MEMORY[0x277CE02A8]);
  if (v0 <= 0x3F)
  {
    sub_24B9366D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24B96C1D0()
{
  result = qword_27F0661B8;
  if (!qword_27F0661B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0661A0);
    sub_24B8F384C(&qword_27F0661C0, &qword_27F0661C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0661B8);
  }

  return result;
}

unint64_t sub_24B96C288()
{
  result = qword_27F0661D0;
  if (!qword_27F0661D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066190);
    sub_24B96C314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0661D0);
  }

  return result;
}

unint64_t sub_24B96C314()
{
  result = qword_27F0661D8;
  if (!qword_27F0661D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0661B0);
    sub_24B8F384C(&qword_27F0661E0, &qword_27F0661E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0661D8);
  }

  return result;
}

unint64_t sub_24B96C3DC()
{
  result = qword_27F066218;
  if (!qword_27F066218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066220);
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066218);
  }

  return result;
}

unint64_t sub_24B96C49C()
{
  result = qword_27F066248;
  if (!qword_27F066248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066240);
    sub_24B96C528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066248);
  }

  return result;
}

unint64_t sub_24B96C528()
{
  result = qword_27F066250;
  if (!qword_27F066250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063D08);
    sub_24B96C6EC(&qword_27F066210, &qword_27F066208, &unk_24BAB3DE0, sub_24B96C3DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066250);
  }

  return result;
}

uint64_t sub_24B96C5E0@<X0>(void *a1@<X8>)
{
  result = sub_24BAA878C();
  *a1 = v3;
  return result;
}

uint64_t sub_24B96C60C@<X0>(void *a1@<X8>)
{
  result = sub_24BAA878C();
  *a1 = v3;
  return result;
}

uint64_t sub_24B96C688(uint64_t a1)
{
  v2 = type metadata accessor for FocusInformationIconView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B96C6EC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24B8F384C(&unk_27F069050, &qword_27F064F70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B96C79C()
{
  result = qword_27F0662B8;
  if (!qword_27F0662B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0662C0);
    sub_24B9546F4();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0662B8);
  }

  return result;
}

uint64_t sub_24B96C854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusInformationView.FocusInformationBullet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B96C8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B96C928()
{
  result = qword_27F0662D0;
  if (!qword_27F0662D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066280);
    sub_24B96C9E4(&qword_27F0662D8, type metadata accessor for FocusInformationView.FocusInformationBullet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0662D0);
  }

  return result;
}

uint64_t sub_24B96C9E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B96CA2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B96CA9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B96CB08()
{
  result = qword_27F0662E8;
  if (!qword_27F0662E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0662F0);
    sub_24B96C1D0();
    sub_24B96C288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0662E8);
  }

  return result;
}

uint64_t sub_24B96CB94(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    v21 = a1;
    sub_24BAAA68C();
    v4 = v21 + 56;
    result = sub_24BAAA49C();
    v5 = v21;
    v6 = result;
    v7 = 0;
    v8 = *(v21 + 36);
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v5 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = v4;
      v12 = objc_allocWithZone(MEMORY[0x277D058F0]);

      v13 = sub_24BAA9FDC();
      [v12 initWithContactIdentifier_];

      sub_24BAAA66C();
      sub_24BAAA69C();
      sub_24BAAA6AC();
      result = sub_24BAAA67C();
      v5 = v21;
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v14 = *(v11 + 8 * v10);
      if ((v14 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v4 = v11;
      v15 = v14 & (-2 << (v6 & 0x3F));
      if (v15)
      {
        v9 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v10 << 6;
        v17 = v10 + 1;
        v18 = (v21 + 64 + 8 * v10);
        while (v17 < (v9 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_24B8F3830(v6, v8, 0);
            v5 = v21;
            v9 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        result = sub_24B8F3830(v6, v8, 0);
        v5 = v21;
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return v23;
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

uint64_t DNDContact.id.getter()
{
  v1 = [v0 contactIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24BAAA01C();

    return v3;
  }

  else
  {
    [v0 hash];
    return sub_24BAAA76C();
  }
}

void sub_24B96CEA4(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 contactIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_24BAAA01C();
    v8 = v7;
  }

  else
  {
    [v3 hash];
    v6 = sub_24BAAA76C();
    v8 = v9;
  }

  *a1 = v6;
  a1[1] = v8;
}

uint64_t sub_24B96CF44@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  v125 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v126 = &v107[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v134 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v107[-v6];
  v8 = type metadata accessor for PeopleExceptionsPickerView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v107[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066618);
  MEMORY[0x28223BE20](v130);
  v12 = &v107[-v11];
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066620);
  v13 = MEMORY[0x28223BE20](v129);
  v15 = &v107[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v128 = &v107[-v17];
  MEMORY[0x28223BE20](v16);
  v18 = *(a1 + 81);
  v142 = v7;
  v132 = &v107[-v19];
  v133 = v15;
  v131 = v12;
  v117 = v18;
  if (v18 == 2 || (v18 & 1) == 0)
  {
    sub_24BAA9D1C();
    sub_24BAA83BC();
    LOBYTE(v171[0]) = 1;
    LOBYTE(v147[0]) = v184;
    LOBYTE(v143) = v186;
    LOBYTE(v149) = 1;
    *&v155 = 0;
    BYTE8(v155) = 1;
    v156 = v183;
    LOBYTE(v157) = v184;
    v158 = v185;
    v159 = v186;
    v163 = v187;
    LOBYTE(v165) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066628);
    sub_24B97A988();
    sub_24B97A9DC();
    sub_24BAA8D0C();
  }

  else
  {
    v155 = *a1;
    v156 = *(a1 + 2);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
    MEMORY[0x24C24FC10](&v149, v20);
    if (!*(a1 + 6))
    {
LABEL_24:
      type metadata accessor for ActivityConfigViewModel();
      sub_24B9784E4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      result = sub_24BAA86DC();
      __break(1u);
      return result;
    }

    v21 = v149;

    sub_24B984444();
    v22 = sub_24B8D7188();

    if (v22)
    {
      v23 = [v22 mode];

      v24 = [v23 semanticType];
    }

    else
    {
      v24 = 0;
    }

    sub_24BA85174(v21, v24, v22 == 0, &v155);
    LOBYTE(v149) = 0;
    LOBYTE(v165) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066628);
    sub_24B97A988();
    sub_24B97A9DC();
    sub_24BAA8D0C();
    v7 = v142;
  }

  v155 = *a1;
  v156 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  sub_24BAA9B8C();
  v25 = v149;
  v140 = v150;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9784E4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v26 = sub_24BAA86FC();
  v122 = v27;
  v123 = v26;
  *&v149 = 0;
  type metadata accessor for DNDConfigurationType(0);
  sub_24BAA99EC();
  v28 = *(a1 + 6);
  v116 = *(a1 + 7);
  if (!v28)
  {
    sub_24BAA86DC();
    __break(1u);
    goto LABEL_24;
  }

  v141 = *(&v25 + 1);
  v124 = v25;
  v137 = *(&v155 + 1);
  v138 = v155;
  swift_retain_n();
  v136 = sub_24BAA813C();
  v135 = sub_24BAA90AC();
  v181 = 1;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v120 = v190;
  v121 = v188;
  v118 = v193;
  v119 = v192;
  v178 = 1;
  v177 = v189;
  v176 = v191;
  v139 = v28;
  sub_24B984444();
  v29 = sub_24B8D7188();
  if (v29)
  {
    v30 = v29;
    v31 = [v29 mode];

    v32 = [v31 identifier];
    v7 = v142;
    sub_24BAA7E1C();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_24BAA7E4C();
  (*(*(v34 - 8) + 56))(v7, v33, 1, v34);
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  v115 = v173;
  v116 = v174;
  v114 = v175;
  v155 = *(a1 + 24);
  v156 = *(a1 + 5);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066300);
  sub_24BAA9B8C();
  v35 = v149;
  v110 = v150;
  v111 = *(&v149 + 1);
  v155 = a1[4];
  LOBYTE(v156) = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B8C();
  v109 = *(&v149 + 1);
  v36 = v149;
  v108 = v150;
  v113 = sub_24B991A94();

  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v37 = v8[5];
  *(v10 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v38 = v10 + v8[6];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v39 = (v10 + v8[7]);
  *v39 = sub_24BAA86FC();
  v39[1] = v40;
  v41 = MEMORY[0x277D84F90] >> 62;
  if (MEMORY[0x277D84F90] >> 62)
  {
    v106 = sub_24BAAA52C();
    v43 = v134;
    v44 = v117;
    if (v106)
    {
      sub_24B8F1EEC(MEMORY[0x277D84F90]);
    }

    else
    {
      v42 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v42 = MEMORY[0x277D84FA0];
    v43 = v134;
    v44 = v117;
  }

  v45 = (v10 + v8[14]);
  *&v149 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0662F8);
  sub_24BAA99EC();
  v46 = *(&v155 + 1);
  *v45 = v155;
  v45[1] = v46;
  if (v41 && sub_24BAAA52C())
  {
    sub_24B8F1EEC(MEMORY[0x277D84F90]);
  }

  else
  {
    v47 = MEMORY[0x277D84FA0];
  }

  LODWORD(v134) = v44 & 1;
  v48 = (v10 + v8[15]);
  *&v149 = v47;
  sub_24BAA99EC();
  v49 = *(&v155 + 1);
  *v48 = v155;
  v48[1] = v49;
  v50 = v10 + v8[16];
  LOBYTE(v149) = 0;
  sub_24BAA99EC();
  v51 = *(&v155 + 1);
  *v50 = v155;
  *(v50 + 1) = v51;
  v52 = v10 + v8[17];
  LOBYTE(v149) = 0;
  sub_24BAA99EC();
  v53 = *(&v155 + 1);
  *v52 = v155;
  *(v52 + 1) = v53;
  v54 = v10 + v8[19];
  LOBYTE(v149) = 0;
  sub_24BAA99EC();
  v55 = *(&v155 + 1);
  *v54 = v155;
  *(v54 + 1) = v55;
  v56 = v10 + v8[20];
  LOBYTE(v149) = 0;
  sub_24BAA99EC();
  v57 = *(&v155 + 1);
  *v56 = v155;
  *(v56 + 1) = v57;
  v58 = v10 + v8[21];
  LOBYTE(v149) = 0;
  sub_24BAA99EC();
  v59 = *(&v155 + 1);
  *v58 = v155;
  *(v58 + 1) = v59;
  v60 = v10 + v8[22];
  LOBYTE(v149) = 0;
  sub_24BAA99EC();
  v61 = *(&v155 + 1);
  *v60 = v155;
  *(v60 + 1) = v61;
  v62 = v10 + v8[23];
  LOBYTE(v149) = 0;
  sub_24BAA99EC();
  v63 = *(&v155 + 1);
  *v62 = v155;
  *(v62 + 1) = v63;
  v64 = v8[25];
  v65 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];

  *(v10 + v64) = v65;
  v66 = (v10 + v8[12]);
  v68 = v110;
  v67 = v111;
  *v66 = v35;
  v66[1] = v67;
  v66[2] = v68;
  *&v155 = v35;
  *(&v155 + 1) = v67;
  v156 = v68;
  MEMORY[0x24C24FC10](&v149, v112);
  v69 = (v10 + v8[18]);
  *v69 = v149;
  v69[1] = 0;
  v70 = v10 + v8[13];
  v71 = v109;
  *v70 = v36;
  *(v70 + 1) = v71;
  v70[16] = v108;
  v72 = (v10 + v8[8]);
  v74 = v115;
  v73 = v116;
  *v72 = v115;
  v72[1] = v73;
  v75 = v114;
  v72[2] = v114;
  v76 = v126;
  sub_24B8F3208(v142, v126, &qword_27F0669D0);
  v77 = (*(v125 + 80) + 16) & ~*(v125 + 80);
  v78 = swift_allocObject();
  sub_24B90294C(v76, v78 + v77, &qword_27F0669D0);
  v79 = (v78 + ((v43 + v77 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v79 = v74;
  v79[1] = v73;
  v79[2] = v75;
  v80 = v10 + v8[24];
  *v80 = sub_24B97ACBC;
  *(v80 + 1) = v78;
  v80[16] = 0;
  sub_24B90294C(v142, v10 + v8[9], &qword_27F0669D0);
  LOBYTE(v77) = v134;
  *(v10 + v8[10]) = v134;
  *(v10 + v8[11]) = v113;

  LOBYTE(v73) = sub_24BAA90AC();
  v81 = v131;
  sub_24B979508(v10, v131, type metadata accessor for PeopleExceptionsPickerView);
  v82 = v81 + *(v130 + 36);
  *v82 = v73;
  *(v82 + 8) = 0u;
  *(v82 + 24) = 0u;
  *(v82 + 40) = 1;
  LOBYTE(v73) = sub_24BAA90DC();
  v83 = v81;
  v84 = v128;
  sub_24B90294C(v83, v128, &qword_27F066618);
  v85 = &v84[*(v129 + 36)];
  *v85 = v73;
  *(v85 + 8) = 0u;
  *(v85 + 24) = 0u;
  v85[40] = 1;
  v86 = v132;
  sub_24B90294C(v84, v132, &qword_27F066620);
  v145 = v196;
  v146[0] = v197[0];
  *(v146 + 9) = *(v197 + 9);
  v143 = v194;
  v144 = v195;
  LODWORD(v130) = v178;
  LODWORD(v131) = v177;
  LODWORD(v142) = v176;
  v87 = v133;
  sub_24B8F3208(v86, v133, &qword_27F066620);
  v88 = v146[0];
  v147[2] = v145;
  v148[0] = v146[0];
  v89 = *(v146 + 9);
  *(v148 + 9) = *(v146 + 9);
  v91 = v143;
  v90 = v144;
  v147[0] = v143;
  v147[1] = v144;
  v92 = v127;
  *(v127 + 32) = v145;
  *(v92 + 48) = v88;
  *(v92 + 57) = v89;
  *v92 = v91;
  *(v92 + 16) = v90;
  v94 = v122;
  v93 = v123;
  *&v149 = v123;
  *(&v149 + 1) = v122;
  v95 = v124;
  *&v150 = v124;
  *(&v150 + 1) = v141;
  *&v151 = v140;
  BYTE8(v151) = 0;
  BYTE9(v151) = v77;
  *(&v151 + 10) = v179;
  HIWORD(v151) = v180;
  *&v152 = v138;
  *(&v152 + 1) = v137;
  *&v153 = v136;
  v96 = v139;
  *(&v153 + 1) = v139;
  LOBYTE(v154[0]) = v135;
  *(v154 + 1) = *v182;
  DWORD1(v154[0]) = *&v182[3];
  *(v154 + 8) = 0u;
  *(&v154[1] + 8) = 0u;
  BYTE8(v154[2]) = 1;
  v97 = v149;
  v98 = v150;
  v99 = v152;
  *(v92 + 112) = v151;
  *(v92 + 128) = v99;
  *(v92 + 80) = v97;
  *(v92 + 96) = v98;
  v100 = v153;
  v101 = v154[0];
  v102 = v154[1];
  *(v92 + 185) = *(&v154[1] + 9);
  *(v92 + 160) = v101;
  *(v92 + 176) = v102;
  *(v92 + 144) = v100;
  *(v92 + 208) = 0;
  *(v92 + 216) = v130;
  *(v92 + 224) = v121;
  *(v92 + 232) = v131;
  *(v92 + 240) = v120;
  *(v92 + 248) = v142;
  v103 = v118;
  *(v92 + 256) = v119;
  *(v92 + 264) = v103;
  v104 = v92 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066640) + 80);
  sub_24B8F3208(v87, v104, &qword_27F066620);
  sub_24B8F3208(v147, &v155, &qword_27F066648);
  sub_24B8F3208(&v149, &v155, &qword_27F066650);
  sub_24B8F35E4(v86, &qword_27F066620);
  sub_24B8F35E4(v87, &qword_27F066620);
  *&v155 = v93;
  *(&v155 + 1) = v94;
  v156 = v95;
  v157 = v141;
  v158 = v140;
  v159 = 0;
  v160 = v134;
  v161 = v179;
  v162 = v180;
  *&v163 = v138;
  *(&v163 + 1) = v137;
  v164 = v136;
  v165 = v96;
  v166 = v135;
  *&v167[3] = *&v182[3];
  *v167 = *v182;
  v168 = 0u;
  v169 = 0u;
  v170 = 1;
  sub_24B8F35E4(&v155, &qword_27F066650);
  v171[2] = v145;
  v172[0] = v146[0];
  *(v172 + 9) = *(v146 + 9);
  v171[0] = v143;
  v171[1] = v144;
  return sub_24B8F35E4(v171, &qword_27F066648);
}

uint64_t PeopleExceptionsPickerView.init(modeUUID:peopleExceptionType:peopleExceptions:isActive:tintColor:isOnboarding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13)
{
  v74 = a8;
  v71 = a6;
  v72 = a7;
  v76 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  v73 = *(v18 - 8);
  v19 = *(v73 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v75 = &v66 - v20;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for PeopleExceptionsPickerView(0);
  v22 = v21[5];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v21[6];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = (a9 + v21[7]);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9784E4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v24 = sub_24BAA86FC();
  v24[1] = v25;
  v26 = MEMORY[0x277D84F90] >> 62;
  if (MEMORY[0x277D84F90] >> 62 && sub_24BAAA52C())
  {
    sub_24B8F1EEC(MEMORY[0x277D84F90]);
  }

  else
  {
    v27 = MEMORY[0x277D84FA0];
  }

  v70 = a12;
  v68 = a11;
  v69 = a13;
  v67 = a10;
  v28 = (a9 + v21[14]);
  v80 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0662F8);
  sub_24BAA99EC();
  v29 = v78;
  *v28 = v77;
  v28[1] = v29;
  if (v26 && sub_24BAAA52C())
  {
    sub_24B8F1EEC(MEMORY[0x277D84F90]);
  }

  else
  {
    v30 = MEMORY[0x277D84FA0];
  }

  v31 = (a9 + v21[15]);
  v80 = v30;
  sub_24BAA99EC();
  v32 = v78;
  *v31 = v77;
  v31[1] = v32;
  v33 = a9 + v21[16];
  LOBYTE(v80) = 0;
  sub_24BAA99EC();
  v34 = v78;
  *v33 = v77;
  *(v33 + 1) = v34;
  v35 = a9 + v21[17];
  LOBYTE(v80) = 0;
  sub_24BAA99EC();
  v36 = v78;
  *v35 = v77;
  *(v35 + 1) = v36;
  v37 = a9 + v21[19];
  LOBYTE(v80) = 0;
  sub_24BAA99EC();
  v38 = v78;
  *v37 = v77;
  *(v37 + 1) = v38;
  v39 = a9 + v21[20];
  LOBYTE(v80) = 0;
  sub_24BAA99EC();
  v40 = v78;
  *v39 = v77;
  *(v39 + 1) = v40;
  v41 = a9 + v21[21];
  LOBYTE(v80) = 0;
  sub_24BAA99EC();
  v42 = v78;
  *v41 = v77;
  *(v41 + 1) = v42;
  v43 = a9 + v21[22];
  LOBYTE(v80) = 0;
  sub_24BAA99EC();
  v44 = v78;
  *v43 = v77;
  *(v43 + 1) = v44;
  v45 = a9 + v21[23];
  LOBYTE(v80) = 0;
  sub_24BAA99EC();
  v46 = v78;
  *v45 = v77;
  *(v45 + 1) = v46;
  v47 = v21[25];
  v48 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];

  *(a9 + v47) = v48;
  v49 = (a9 + v21[12]);
  v51 = v71;
  v50 = v72;
  *v49 = a5;
  v49[1] = v51;
  v49[2] = v50;
  v77 = a5;
  v78 = v51;
  v79 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066300);
  MEMORY[0x24C24FC10](&v80, v52);
  v53 = (a9 + v21[18]);
  *v53 = v80;
  v53[1] = 0;
  v54 = a9 + v21[13];
  v55 = v75;
  v56 = v67;
  *v54 = v74;
  *(v54 + 1) = v56;
  v54[16] = v68 & 1;
  v57 = (a9 + v21[8]);
  *v57 = a2;
  v57[1] = a3;
  v57[2] = a4;
  v58 = a4;
  v59 = a3;
  v60 = v76;
  sub_24B8F3208(v76, v55, &qword_27F0669D0);
  v61 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v62 = swift_allocObject();
  sub_24B90294C(v55, v62 + v61, &qword_27F0669D0);
  v63 = (v62 + ((v19 + v61 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v63 = a2;
  v63[1] = v59;
  v63[2] = v58;
  v64 = a9 + v21[24];
  *v64 = sub_24B977C58;
  *(v64 + 1) = v62;
  v64[16] = 0;
  sub_24B90294C(v60, a9 + v21[9], &qword_27F0669D0);
  *(a9 + v21[10]) = v69 & 1;
  *(a9 + v21[11]) = v70;
}

uint64_t sub_24B96E474@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24BAA89FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24B8F3208(v2, &v14 - v9, &unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA82DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24B96E674@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24BAA89FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PeopleExceptionsPickerView(0);
  sub_24B8F3208(v1 + *(v10 + 20), v9, &qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA8B9C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24B96E87C()
{
  v1 = sub_24BAA89FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for PeopleExceptionsPickerView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24BAAA2BC();
    v7 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();
    sub_24B8FFD5C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_24B96E9D4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24BAA8BDC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066600);
  sub_24BAA909C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066608);
  sub_24B8F384C(&qword_27F066610, &qword_27F066608);
  return sub_24BAA829C();
}

uint64_t sub_24B96EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  sub_24B8F3208(a1, v14 - v9, &qword_27F0669D0);
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  MEMORY[0x24C24FC10](v14, v11);
  v12 = v14[0];
  type metadata accessor for SuggestionsViewModel();
  swift_allocObject();
  return sub_24BA0EEF8(v10, v12);
}

uint64_t PeopleExceptionsPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066308);
  MEMORY[0x28223BE20](v4);
  v6 = v23 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066310);
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066318);
  MEMORY[0x28223BE20](v10);
  v12 = v23 - v11;
  *v12 = sub_24BAA8BDC();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066320);
  sub_24B96F01C(v2, &v12[*(v13 + 44)]);
  v14 = type metadata accessor for PeopleExceptionsPickerView(0);
  if (*(v2 + *(v14 + 40)) == 1)
  {
    v23[0] = v23;
    MEMORY[0x28223BE20](v14);
    v23[1] = v4;
    v23[2] = a1;
    v23[-2] = v2;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066328);
    v16 = sub_24B8F384C(&qword_27F066330, &qword_27F066318);
    v17 = sub_24B8F384C(&qword_27F066338, &qword_27F066328);
    sub_24BAA96CC();
    v18 = v24;
    (*(v7 + 16))(v6, v9, v24);
    swift_storeEnumTagMultiPayload();
    v25 = v10;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    swift_getOpaqueTypeConformance2();
    sub_24BAA8D0C();
    (*(v7 + 8))(v9, v18);
  }

  else
  {
    sub_24B8F3208(v12, v6, &qword_27F066318);
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066328);
    v20 = sub_24B8F384C(&qword_27F066330, &qword_27F066318);
    v21 = sub_24B8F384C(&qword_27F066338, &qword_27F066328);
    v25 = v10;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    swift_getOpaqueTypeConformance2();
    sub_24BAA8D0C();
  }

  return sub_24B8F35E4(v12, &qword_27F066318);
}

uint64_t sub_24B96F01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = type metadata accessor for PeopleExceptionsPickerView(0);
  v101 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v102 = v4;
  v103 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066410);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v96 - v5;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066418);
  MEMORY[0x28223BE20](v121);
  v108 = &v96 - v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066420);
  MEMORY[0x28223BE20](v119);
  v8 = &v96 - v7;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066428);
  MEMORY[0x28223BE20](v120);
  v10 = &v96 - v9;
  v112 = type metadata accessor for allowedGroupsView(0);
  v11 = MEMORY[0x28223BE20](v112);
  v113 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v114 = (&v96 - v13);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066430);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v100 = &v96 - v14;
  v97 = type metadata accessor for CompatibilityNoticePlatterView();
  v15 = MEMORY[0x28223BE20](v97);
  v99 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v96 - v18);
  MEMORY[0x28223BE20](v17);
  v98 = &v96 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066438);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v111 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v115 = &v96 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066440);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v118 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v96 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066448);
  v31 = v30 - 8;
  v32 = MEMORY[0x28223BE20](v30);
  v117 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v96 - v34;
  sub_24B970024(&v96 - v34);
  v36 = *(a1 + v3[10]);
  KeyPath = swift_getKeyPath();
  v38 = *(v31 + 44);
  v116 = v35;
  v39 = &v35[v38];
  *&v35[v38] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v39[*(type metadata accessor for exceptionsPlatter(0) + 20)] = v36;
  v40 = sub_24BAA9D1C();
  v42 = v41;
  v43 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065610) + 36)];
  *v43 = v40;
  v43[1] = v42;
  v104 = v36;
  if (v36)
  {
    v44 = a1 + v3[23];
    v45 = *v44;
    v46 = *(v44 + 8);
    LOBYTE(v138) = v45;
    v139 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    sub_24BAA9A1C();
    v47 = a1;
    v48 = v103;
    sub_24B979360(v47, v103, type metadata accessor for PeopleExceptionsPickerView);
    v49 = (*(v101 + 80) + 16) & ~*(v101 + 80);
    v50 = swift_allocObject();
    sub_24B979508(v48, v50 + v49, type metadata accessor for PeopleExceptionsPickerView);
    sub_24B953940(sub_24B9795D0, v50, &v123);
    sub_24B979640();
    v51 = v105;
    sub_24BAA84BC();
    sub_24B8F384C(&qword_27F066468, &qword_27F066410);
    v52 = v108;
    v53 = v107;
    sub_24BAA95EC();
    (*(v106 + 8))(v51, v53);
    sub_24B8F3208(v52, v8, &qword_27F066418);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F066458, &qword_27F066428);
    sub_24B9793C8();
    sub_24BAA8D0C();
    v54 = v52;
    v55 = &qword_27F066418;
LABEL_10:
    sub_24B8F35E4(v54, v55);
    v90 = v116;
    v91 = v117;
    sub_24B8F3208(v116, v117, &qword_27F066448);
    v92 = v118;
    sub_24B8F3208(v29, v118, &qword_27F066440);
    v93 = v122;
    sub_24B8F3208(v91, v122, &qword_27F066448);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066470);
    sub_24B8F3208(v92, v93 + *(v94 + 48), &qword_27F066440);
    sub_24B8F35E4(v29, &qword_27F066440);
    sub_24B8F35E4(v90, &qword_27F066448);
    sub_24B8F35E4(v92, &qword_27F066440);
    return sub_24B8F35E4(v91, &qword_27F066448);
  }

  v107 = v29;
  v108 = v8;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v106 = v138;
  v56 = v140;
  v57 = v142;
  v102 = v143;
  v137 = 1;
  v136 = v139;
  v135 = v141;
  if (*(a1 + v3[7]))
  {

    v58 = sub_24B991F08();

    v105 = v56;
    v103 = v57;
    if (v58)
    {
      type metadata accessor for ActivityConfigViewModel();
      sub_24B9784E4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      sub_24BAA86CC();
      swift_getKeyPath();
      sub_24BAA86EC();

      v59 = v132;
      v60 = v133;
      v61 = v134;

      v62 = sub_24B991A94();

      if (!v62)
      {
        v62 = sub_24BAA974C();
      }

      *v19 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
      swift_storeEnumTagMultiPayload();
      v63 = v97;
      v64 = v19 + *(v97 + 20);
      *v64 = v59;
      *(v64 + 1) = v60;
      v64[16] = v61;
      *(v19 + *(v63 + 24)) = v62;
      v65 = v98;
      sub_24B979508(v19, v98, type metadata accessor for CompatibilityNoticePlatterView);
      sub_24BAA9D1C();
      sub_24BAA83BC();
      v101 = v123;
      v66 = v125;
      v97 = v127;
      v96 = v128;
      v131 = 1;
      v130 = v124;
      v129 = v126;
      v67 = v99;
      sub_24B979360(v65, v99, type metadata accessor for CompatibilityNoticePlatterView);
      v68 = v131;
      v69 = v130;
      v70 = v129;
      v71 = v100;
      sub_24B979360(v67, v100, type metadata accessor for CompatibilityNoticePlatterView);
      v72 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066478) + 48);
      sub_24B979570(v65, type metadata accessor for CompatibilityNoticePlatterView);
      *v72 = 0;
      *(v72 + 8) = v68;
      *(v72 + 16) = v101;
      *(v72 + 24) = v69;
      *(v72 + 32) = v66;
      *(v72 + 40) = v70;
      v73 = v96;
      *(v72 + 48) = v97;
      *(v72 + 56) = v73;
      sub_24B979570(v67, type metadata accessor for CompatibilityNoticePlatterView);
      v74 = v71;
      v75 = v115;
      sub_24B90294C(v74, v115, &qword_27F066430);
      (*(v109 + 56))(v75, 0, 1, v110);
    }

    else
    {
      v75 = v115;
      (*(v109 + 56))(v115, 1, 1, v110);
    }

    type metadata accessor for ActivityConfigViewModel();
    sub_24B9784E4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    v76 = sub_24BAA86FC();
    v78 = v77;
    v79 = swift_getKeyPath();
    v80 = v114;
    *v114 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
    swift_storeEnumTagMultiPayload();
    v81 = v112;
    v82 = (v80 + *(v112 + 20));
    *v82 = v76;
    v82[1] = v78;
    *(v80 + *(v81 + 24)) = v104;
    v83 = v137;
    v84 = v136;
    v85 = v135;
    v86 = v111;
    sub_24B8F3208(v75, v111, &qword_27F066438);
    v87 = v113;
    sub_24B979360(v80, v113, type metadata accessor for allowedGroupsView);
    *v10 = 0;
    v10[8] = v83;
    *(v10 + 2) = v106;
    v10[24] = v84;
    *(v10 + 4) = v105;
    v10[40] = v85;
    v88 = v102;
    *(v10 + 6) = v103;
    *(v10 + 7) = v88;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066450);
    sub_24B8F3208(v86, &v10[*(v89 + 48)], &qword_27F066438);
    sub_24B979360(v87, &v10[*(v89 + 64)], type metadata accessor for allowedGroupsView);
    sub_24B979570(v87, type metadata accessor for allowedGroupsView);
    sub_24B8F35E4(v86, &qword_27F066438);
    sub_24B8F3208(v10, v108, &qword_27F066428);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F066458, &qword_27F066428);
    sub_24B9793C8();
    v29 = v107;
    sub_24BAA8D0C();
    sub_24B8F35E4(v10, &qword_27F066428);
    sub_24B979570(v80, type metadata accessor for allowedGroupsView);
    v54 = v115;
    v55 = &qword_27F066438;
    goto LABEL_10;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24B9784E4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B970024@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = type metadata accessor for PeopleExceptionsPickerView(0);
  v4 = *(v3 - 8);
  v68 = v3 - 8;
  v61 = v4;
  v67 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA8DFC();
  MEMORY[0x28223BE20](v6);
  v60 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24BAA9C6C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066488);
  MEMORY[0x28223BE20](v69);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066490);
  v15 = *(v14 - 8);
  v63 = v14;
  v64 = v15;
  MEMORY[0x28223BE20](v14);
  v62 = &v58 - v16;
  v17 = sub_24BAA8B9C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B96E674(v20);
  v21 = sub_24BAA8B8C();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    v22 = 128.0;
  }

  else
  {
    v22 = 68.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C08);
  sub_24BAA9C7C();
  *(swift_allocObject() + 16) = xmmword_24BAAD5B0;
  *v11 = v22;
  *(v11 + 1) = 0x7FF0000000000000;
  (*(v9 + 104))(v11, *MEMORY[0x277CDF100], v8);
  sub_24BAA9C8C();
  v70 = v2;
  v71 = v22;
  sub_24BAA8BCC();
  LODWORD(v72) = 0;
  sub_24B9784E4(&qword_27F065160, MEMORY[0x277CE0428]);
  sub_24BAAA85C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066498);
  sub_24B8F384C(&qword_27F0664A0, &qword_27F066498);
  sub_24BAA9D8C();
  v23 = sub_24BAA90BC();
  v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0664A8) + 36)];
  v25 = v13;
  *v24 = v23;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v24[40] = 1;
  v26 = v2;
  v27 = v2;
  v28 = v66;
  sub_24B979360(v27, v66, type metadata accessor for PeopleExceptionsPickerView);
  v29 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v30 = swift_allocObject();
  v60 = type metadata accessor for PeopleExceptionsPickerView;
  sub_24B979508(v28, v30 + v29, type metadata accessor for PeopleExceptionsPickerView);
  v31 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0664B0) + 36)];
  v32 = v25;
  v59 = v25;
  *v31 = sub_24B9796B0;
  v31[1] = v30;
  v31[2] = 0;
  v31[3] = 0;
  v33 = v68;
  v34 = v26 + *(v68 + 40);
  v35 = *v34;
  v36 = *(v34 + 16);
  v72 = v35;
  v73 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  MEMORY[0x24C24FC10](&v75, v37);
  v38 = v75;
  sub_24B979360(v26, v28, type metadata accessor for PeopleExceptionsPickerView);
  v39 = swift_allocObject();
  v40 = v28;
  v41 = v60;
  sub_24B979508(v40, v39 + v29, v60);
  v42 = &v32[*(v69 + 36)];
  *v42 = v38;
  *(v42 + 1) = sub_24B9796C8;
  *(v42 + 2) = v39;
  v43 = v26 + *(v33 + 84);
  v44 = *v43;
  v45 = *(v43 + 8);
  LOBYTE(v75) = v44;
  v76 = v45;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  v46 = v66;
  sub_24B979360(v26, v66, type metadata accessor for PeopleExceptionsPickerView);
  v47 = swift_allocObject();
  sub_24B979508(v46, v47 + v29, v41);
  v48 = sub_24B9797A8();
  v57 = sub_24B9799A4();
  v49 = v62;
  v50 = v69;
  v51 = v59;
  sub_24BAA968C();

  sub_24B8F35E4(v51, &qword_27F066488);
  v52 = v26 + *(v68 + 92);
  v53 = *v52;
  v54 = *(v52 + 8);
  LOBYTE(v75) = v53;
  v76 = v54;
  sub_24BAA9A1C();
  *&v72 = v50;
  *(&v72 + 1) = &type metadata for AddPeopleExceptionsView;
  v73 = v48;
  v74 = v57;
  swift_getOpaqueTypeConformance2();
  v55 = v63;
  sub_24BAA967C();

  return (*(v64 + 8))(v49, v55);
}

uint64_t sub_24B9708D0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v47 - v4;
  v6 = type metadata accessor for PeopleExceptionsPickerView(0);
  if (!*(a2 + *(v6 + 28)))
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9784E4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  v7 = v6;

  sub_24B984444();
  v8 = sub_24B8D7188();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 configuration];
    v11 = [v10 senderConfigurationType];

    if (v11 != 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = sub_24B970F9C();
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9784E4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8DDFCC(v12);

LABEL_7:
  v13 = (a2 + v7[15]);
  v14 = *v13;
  v15 = v13[1];
  *v52 = *v13;
  *&v52[8] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066400);
  sub_24BAA99FC();
  if ((v51[0] & 0xC000000000000001) != 0)
  {
    v16 = sub_24BAAA52C();
  }

  else
  {
    v16 = v51[0][2];
  }

  v49 = v7;
  if (v16)
  {
    *v52 = v14;
    *&v52[8] = v15;
    sub_24BAA99FC();
    v17 = v51[0];
    v18 = (a2 + v7[12]);
    v20 = v18[1];
    v21 = v18[2];
    *v52 = *v18;
    v19 = *v52;
    *&v52[8] = v20;
    *&v52[16] = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066300);
    MEMORY[0x24C24FC10](&v53);
    sub_24B9AE3A4(0, 0, v17);
    v51[0] = v19;
    v51[1] = v20;
    v51[2] = v21;
    v50 = v53;
    v7 = v49;
    sub_24BAA9B6C();
  }

  sub_24B8F3208(a2 + v7[9], v5, &qword_27F0669D0);
  v22 = (a2 + v7[8]);
  v23 = *v22;
  v24 = *(v22 + 2);
  *v52 = v23;
  *&v52[16] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  MEMORY[0x24C24FC10](v51, v25);
  v26 = v51[0];
  type metadata accessor for SuggestionsViewModel();
  swift_allocObject();
  v47[1] = sub_24BA0EEF8(v5, v26);
  v48 = a2;
  LOBYTE(v53) = 2;
  v27 = *(a2 + v7[24]);
  sub_24B9784E4(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
  sub_24BAA82FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v28 = *v52;
  v29 = *(*v52 + 16);
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v47[0] = v27;
    *v52 = MEMORY[0x277D84F90];
    sub_24BAAA68C();
    v31 = 48;
    do
    {
      v32 = *(v28 + v31);
      sub_24BAAA66C();
      sub_24BAAA69C();
      sub_24BAAA6AC();
      sub_24BAAA67C();
      v31 += 40;
      --v29;
    }

    while (v29);

    v33 = *v52;
    v30 = MEMORY[0x277D84F90];
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  sub_24BAA82FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v34 = *v52;
  v35 = *(*v52 + 16);
  if (v35)
  {
    *v52 = v30;
    sub_24BAAA68C();
    v36 = 48;
    v37 = v48;
    v38 = v49;
    do
    {
      v39 = *(v34 + v36);
      sub_24BAAA66C();
      sub_24BAAA69C();
      sub_24BAAA6AC();
      sub_24BAAA67C();
      v36 += 40;
      --v35;
    }

    while (v35);

    v40 = *v52;
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
    v37 = v48;
    v38 = v49;
  }

  v41 = v37 + v38[12];
  *v52 = *v41;
  *&v52[8] = *(v41 + 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066300);
  MEMORY[0x24C24FC10](v51, v42);
  sub_24BA114E8(&v53, MEMORY[0x277D84F90], v33, v40, v51[0]);

  v43 = (v37 + v38[13]);
  v44 = *v43;
  v45 = v43[1];
  LOBYTE(v43) = *(v43 + 16);
  *v52 = v44;
  *&v52[8] = v45;
  v52[16] = v43;
  LOBYTE(v51[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  return sub_24BAA9B6C();
}

uint64_t sub_24B970F9C()
{
  v1 = type metadata accessor for PeopleExceptionsPickerView(0);
  v2 = (v0 + *(v1 + 32));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v20 = *v2;
  v21 = v4;
  v22 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  MEMORY[0x24C24FC10](&v19);
  if (v19 != 2)
  {
    v20 = v3;
    v21 = v4;
    v22 = v5;
    MEMORY[0x24C24FC10](&v19, v6);
    return v19;
  }

  if (!*(v0 + *(v1 + 28)))
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9784E4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  sub_24B984444();
  v7 = sub_24B8D7188();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 configuration];
    v10 = [v9 applicationConfigurationType];

    if (v10 != 2)
    {

      sub_24B984444();
      v11 = sub_24B8D7188();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 configuration];
        v14 = [v13 applicationConfigurationType];

        return v14;
      }

      else
      {

        return 2;
      }
    }
  }

  else
  {
  }

  sub_24B984444();
  v16 = sub_24B8D7188();

  if (v16)
  {
    v17 = [v16 mode];

    v18 = [v17 semanticType];

    if (v18 == 5)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_24B971234()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066328);
  sub_24B8F384C(&qword_27F066330, &qword_27F066318);
  sub_24B8F384C(&qword_27F066338, &qword_27F066328);
  return sub_24BAA96CC();
}

uint64_t sub_24B971340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0663F0);
  MEMORY[0x28223BE20](v32);
  v31 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FA0);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0663F8);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v27 - v7;
  v8 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  sub_24BAA8DAC();
  v36 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA833C();
  v16 = sub_24B970F9C();
  sub_24BAA8DBC();
  v35 = a1;
  sub_24BAA833C();
  v17 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  v18 = v28;
  MEMORY[0x24C24EEC0](v13, v9, v17);
  v37 = v9;
  v38 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v30;
  if (v16)
  {
    MEMORY[0x24C24EEE0](v18, v30, v30, OpaqueTypeConformance2, OpaqueTypeConformance2);
  }

  else
  {
    MEMORY[0x24C24EED0](v18, v30, v30, OpaqueTypeConformance2, OpaqueTypeConformance2);
  }

  (*(v29 + 8))(v18, v20);
  v21 = *(v10 + 8);
  v21(v13, v9);
  v22 = v31;
  v23 = *(v32 + 48);
  (*(v10 + 16))(v31, v15, v9);
  v24 = &v22[v23];
  v25 = v34;
  sub_24B8F3208(v34, v24, &qword_27F0663F8);
  sub_24BAA8C2C();
  sub_24B8F35E4(v25, &qword_27F0663F8);
  return (v21)(v15, v9);
}

uint64_t sub_24B971878(uint64_t a1)
{
  v2 = type metadata accessor for PeopleExceptionsPickerView(0);
  v3 = (a1 + v2[8]);
  v4 = *v3;
  v5 = *(v3 + 2);
  v14 = v4;
  v15 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  sub_24BAA9B6C();
  v6 = (a1 + v2[12]);
  v7 = v6[1];
  v8 = v6[2];
  *&v14 = *v6;
  *(&v14 + 1) = v7;
  v15 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066300);
  MEMORY[0x24C24FC10](&v13);

  sub_24BAA9B6C();

  v9 = (a1 + v2[13]);
  v10 = *v9;
  v11 = v9[1];
  LOBYTE(v9) = *(v9 + 16);
  *&v14 = v10;
  *(&v14 + 1) = v11;
  LOBYTE(v15) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B6C();
  type metadata accessor for SuggestionsViewModel();
  sub_24B9784E4(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
  sub_24BAA82FC();
  LOBYTE(v14) = 2;
  sub_24BA10758(&v14);
}

uint64_t sub_24B971A60()
{
  type metadata accessor for PeopleExceptionsPickerView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  sub_24BAA9A0C();
}

uint64_t sub_24B971B0C(uint64_t a1)
{
  v2 = type metadata accessor for PeopleExceptionsPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v9[0] = sub_24BAA7C2C();
  v9[1] = v5;
  sub_24B979360(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeopleExceptionsPickerView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_24B979508(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PeopleExceptionsPickerView);
  sub_24B8F5E3C();
  return sub_24BAA9A7C();
}

uint64_t sub_24B971CC4(uint64_t a1)
{
  v2 = type metadata accessor for PeopleExceptionsPickerView(0);
  if (!*(a1 + *(v2 + 28)))
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9784E4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  v3 = v2;

  sub_24B984444();
  v4 = sub_24B8D7188();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 configuration];
    v7 = [v6 senderConfigurationType];

    if (v7 != 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = sub_24B970F9C();
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9784E4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8DDFCC(v8);

LABEL_7:
  if (*(a1 + v3[10]) == 1)
  {
    if (sub_24B970F9C() == 1 && ((v9 = (a1 + v3[14]), v10 = *v9, v11 = v9[1], v27 = *v9, *&v28 = v11, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066400), sub_24BAA99FC(), (v25[0] & 0xC000000000000001) == 0) ? (v12 = v25[0][2]) : (v12 = sub_24BAAA52C()), , v12) || !sub_24B970F9C() && ((v13 = (a1 + v3[15]), v10 = *v13, v11 = v13[1], v27 = *v13, *&v28 = v11, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066400), sub_24BAA99FC(), (v25[0] & 0xC000000000000001) == 0) ? (v14 = v25[0][2]) : (v14 = sub_24BAAA52C()), , v14))
    {
      v27 = v10;
      *&v28 = v11;
      sub_24BAA99FC();
      v15 = (a1 + v3[12]);
      v17 = v15[1];
      v18 = v15[2];
      v27 = *v15;
      v16 = v27;
      *&v28 = v17;
      *(&v28 + 1) = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066300);
      MEMORY[0x24C24FC10](&v26);
      sub_24B9AE3A4(0, 0, v25[0]);
      v25[0] = v16;
      v25[1] = v17;
      v25[2] = v18;
      sub_24BAA9B6C();
    }

    type metadata accessor for SuggestionsViewModel();
    sub_24B9784E4(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
    sub_24BAA82FC();
    LOBYTE(v26) = 2;
    v19 = a1 + v3[12];
    v27 = *v19;
    v28 = *(v19 + 8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066300);
    MEMORY[0x24C24FC10](v25, v20);
    sub_24BA114E8(&v26, MEMORY[0x277D84F90], 0, 0, v25[0]);
  }

  v21 = a1 + v3[13];
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v21) = *(v21 + 16);
  v27 = v22;
  *&v28 = v23;
  BYTE8(v28) = v21;
  LOBYTE(v25[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  return sub_24BAA9B6C();
}

uint64_t sub_24B972164@<X0>(char a1@<W0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066308);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066310);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  if (a1)
  {
    a2(v3);
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066318);
    v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066328);
    v24[1] = a3;
    v16 = v15;
    v17 = sub_24B8F384C(&qword_27F066330, &qword_27F066318);
    v18 = sub_24B8F384C(&qword_27F066338, &qword_27F066328);
    v25 = v14;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    swift_getOpaqueTypeConformance2();
    sub_24BAA8D0C();
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_24B8F3208(v3, v9, &qword_27F066318);
    swift_storeEnumTagMultiPayload();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066318);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066328);
    v22 = sub_24B8F384C(&qword_27F066330, &qword_27F066318);
    v23 = sub_24B8F384C(&qword_27F066338, &qword_27F066328);
    v25 = v20;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    swift_getOpaqueTypeConformance2();
    return sub_24BAA8D0C();
  }
}

uint64_t sub_24B9724C8@<X0>(char *a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v142 = a2;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066510);
  v143 = *(v144 - 8);
  v5 = MEMORY[0x28223BE20](v144);
  v153 = v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v152 = v116 - v7;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066518);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = v116 - v8;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066520);
  v130 = *(v131 - 8);
  v9 = MEMORY[0x28223BE20](v131);
  v129 = v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v135 = v116 - v11;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066528);
  v127 = *(v128 - 8);
  v12 = MEMORY[0x28223BE20](v128);
  v134 = v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v145 = v116 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066530);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v141 = v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v116 - v18;
  v20 = type metadata accessor for PeopleExceptionsPickerView(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066538);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v116 - v25;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066540);
  v139 = *(v140 - 8);
  v27 = MEMORY[0x28223BE20](v140);
  v151 = v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v116 - v29;
  sub_24B979360(a1, v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeopleExceptionsPickerView);
  v31 = *(v21 + 80);
  v146 = ~v31;
  v32 = (v31 + 16) & ~v31;
  v147 = v22;
  v148 = v31;
  v33 = swift_allocObject();
  v149 = v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B979508(v149, v33 + v32, type metadata accessor for PeopleExceptionsPickerView);
  v156 = a1;
  v157 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066548);
  sub_24B979A8C();
  v34 = v20;
  sub_24BAA9A5C();
  sub_24B8F384C(&qword_27F066560, &qword_27F066538);
  sub_24B979B48();
  v150 = v30;
  sub_24BAA945C();
  (*(v24 + 8))(v26, v23);
  v35 = *(v20 + 40);
  v154 = v19;
  v155 = a1;
  v36 = &xmmword_27F076FF0;
  if (a1[v35] == 1)
  {
    if (qword_27F0630D0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v37 = xmmword_27F076FF0;
    v38 = qword_27F077000;
    v123 = unk_27F077008;
    v39 = *(&xmmword_27F077010 + 1);
    v122 = xmmword_27F077010;
    v117 = v20;
    v40 = v155 + *(v20 + 96);
    v41 = *v40;
    v42 = *(v40 + 1);
    v43 = v40[16];
    v44 = type metadata accessor for SuggestionsViewModel();
    v45 = sub_24B9784E4(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
    v119 = v37;
    v118 = *(&v37 + 1);
    v121 = v38;
    v46 = v122;

    v120 = v39;

    v126 = v41;
    v125 = v42;
    v124 = v43;
    v133 = v44;
    v132 = v45;
    sub_24BAA82FC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v47 = v162;
    v48 = MEMORY[0x277D84F90];
    v162 = MEMORY[0x277D84F90];
    v34 = *(v47 + 16);
    if (v34)
    {
      v49 = 0;
      v50 = (v47 + 48);
      while (v49 < *(v47 + 16))
      {
        v51 = *v50;
        MEMORY[0x24C2501C0]();
        if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24BAAA14C();
        }

        ++v49;
        sub_24BAAA16C();
        v50 += 5;
        if (v34 == v49)
        {
          v48 = v162;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_12:

    v52 = v118;
    v53 = sub_24BA21DF4(v48, v118, v46, v120);

    sub_24BAA82FC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v54 = v149;
    sub_24B979360(v155, v149, type metadata accessor for PeopleExceptionsPickerView);
    v55 = (v148 + 24) & v146;
    v120 = (v55 + v147);
    v56 = swift_allocObject();
    *(v56 + 16) = v53;
    v122 = v55;
    sub_24B979508(v54, v56 + v55, type metadata accessor for PeopleExceptionsPickerView);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0665A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0665B0);
    v58 = sub_24B8F384C(&qword_27F0665B8, &qword_27F0665A8);
    sub_24B97A0F0();
    v119 = sub_24B97A1A8();
    v123 = v57;
    v121 = v58;
    sub_24BAA9C0C();
    v60 = *(&xmmword_27F076FF0 + 1);
    v59 = xmmword_27F076FF0;
    v61 = unk_27F077008;
    v62 = xmmword_27F077010;
    v36 = qword_27F077000;

    v118 = v59;
    v63 = v60;

    v116[2] = v61;

    sub_24BAA82FC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v64 = v162;
    v65 = MEMORY[0x277D84F90];
    v162 = MEMORY[0x277D84F90];
    v66 = *(v64 + 16);
    if (v66)
    {
      v67 = 0;
      v34 = v64 + 48;
      while (v67 < *(v64 + 16))
      {
        v68 = *v34;
        MEMORY[0x24C2501C0]();
        if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v116[1] = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24BAAA14C();
        }

        ++v67;
        sub_24BAAA16C();
        v34 += 40;
        if (v66 == v67)
        {
          v65 = v162;
          goto LABEL_19;
        }
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_19:

    v69 = sub_24BA21DF4(v65, v63, v62, *(&v62 + 1));

    sub_24BAA82FC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v70 = v149;
    sub_24B979360(v155, v149, type metadata accessor for PeopleExceptionsPickerView);
    v71 = swift_allocObject();
    *(v71 + 16) = v69;
    sub_24B979508(v70, v71 + v122, type metadata accessor for PeopleExceptionsPickerView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0665D0);
    sub_24B8F384C(&qword_27F0665C8, &qword_27F0665D0);
    v72 = v135;
    sub_24BAA9C0C();
    v73 = v127;
    v74 = *(v127 + 16);
    v75 = v134;
    v76 = v128;
    v74(v134, v145, v128);
    v77 = v130;
    v78 = *(v130 + 16);
    v79 = v129;
    v80 = v72;
    v81 = v131;
    v78(v129, v80, v131);
    v74(v136, v75, v76);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0665E0);
    v83 = v136;
    v78(&v136[*(v82 + 48)], v79, v81);
    v84 = *(v77 + 8);
    v84(v135, v81);
    v85 = *(v73 + 8);
    v85(v145, v76);
    v84(v79, v81);
    v85(v134, v76);
    v86 = v154;
    sub_24B90294C(v83, v154, &qword_27F066518);
    (*(v137 + 56))(v86, 0, 1, v138);
    v34 = v117;
    v36 = &xmmword_27F076FF0;
  }

  else
  {
    (*(v137 + 56))(v19, 1, 1, v138);
  }

  if (qword_27F0630D0 != -1)
  {
LABEL_24:
    swift_once();
  }

  swift_beginAccess();
  v87 = *v36;
  v88 = *(v36 + 1);
  v89 = *(v36 + 4);
  v90 = *(v36 + 5);
  v91 = v155 + *(v34 + 48);
  v92 = *(v91 + 1);
  v94 = *(v91 + 2);
  v159 = *v91;
  v93 = v159;
  v160 = v92;
  v161 = v94;

  v145 = v87;
  v95 = v88;

  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066300);
  MEMORY[0x24C24FC10](&v158);
  v138 = sub_24BA21DF4(v158, v95, v89, v90);

  v159 = v93;
  v160 = v92;
  v161 = v94;
  MEMORY[0x24C24FC10](&v158, v96);
  v97 = v149;
  sub_24B979360(v155, v149, type metadata accessor for PeopleExceptionsPickerView);
  v98 = (v148 + 24) & v146;
  v99 = swift_allocObject();
  *(v99 + 16) = v138;
  sub_24B979508(v97, v99 + v98, type metadata accessor for PeopleExceptionsPickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0634E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066570);
  sub_24B8F384C(&qword_27F066578, &qword_27F0634E8);
  sub_24B979C24();
  sub_24B979D0C();
  v100 = v152;
  sub_24BAA9C0C();
  v101 = v139;
  v102 = *(v139 + 16);
  v103 = v151;
  v104 = v140;
  v102(v151, v150, v140);
  v105 = v141;
  sub_24B8F3208(v154, v141, &qword_27F066530);
  v106 = v143;
  v155 = *(v143 + 16);
  v107 = v100;
  v108 = v144;
  v155(v153, v107, v144);
  v109 = v142;
  v102(v142, v103, v104);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0665A0);
  sub_24B8F3208(v105, &v109[*(v110 + 48)], &qword_27F066530);
  v111 = &v109[*(v110 + 64)];
  v112 = v153;
  v155(v111, v153, v108);
  v113 = *(v106 + 8);
  v113(v152, v108);
  sub_24B8F35E4(v154, &qword_27F066530);
  v114 = *(v101 + 8);
  v114(v150, v104);
  v113(v112, v108);
  sub_24B8F35E4(v105, &qword_27F066530);
  return (v114)(v151, v104);
}

uint64_t sub_24B973948(uint64_t a1)
{
  v2 = type metadata accessor for PeopleExceptionsPickerView(0);
  v3 = (a1 + v2[12]);
  v14 = *v3;
  v15 = *(v3 + 1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066300);
  MEMORY[0x24C24FC10](v13, v4);
  if (v13[0] >> 62)
  {
    v5 = sub_24BAAA52C();
  }

  else
  {
    v5 = *((v13[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 > 499)
  {
    v10 = (a1 + v2[21]);
    v11 = *v10;
    v12 = *(v10 + 1);
    LOBYTE(v14) = v11;
    *&v15 = v12;
    LOBYTE(v13[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    return sub_24BAA9A0C();
  }

  else
  {
    v6 = a1 + v2[19];
    v8 = *(v6 + 8);
    LOBYTE(v14) = *v6;
    v7 = v14;
    *&v15 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    sub_24BAA99FC();
    LOBYTE(v13[0]) = v7;
    v13[1] = v8;
    sub_24BAA9A0C();
  }
}

uint64_t sub_24B973ABC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = type metadata accessor for PeopleExceptionsPickerView.AddPersonButtonContent(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24B973C28(a2);
  v10 = v9;
  v11 = sub_24BAA974C();
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v12 = (v7 + v5[7]);
  *v12 = v8;
  v12[1] = v10;
  *(v7 + v5[8]) = v11;
  v13 = v7 + v5[9];
  *v13 = 0x404E000000000000;
  v13[8] = 0;
  v14 = v7 + v5[10];
  *v14 = 0x404E000000000000;
  v14[8] = 0;
  if (sub_24B96E87C())
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.55;
  }

  sub_24B979508(v7, a1, type metadata accessor for PeopleExceptionsPickerView.AddPersonButtonContent);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066548);
  *(a1 + *(result + 36)) = v15;
  return result;
}

uint64_t sub_24B973C28(double a1)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  v2 = sub_24BAA9FDC();

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 < 9.22337204e18)
  {
    v4 = [v2 variantFittingPresentationWidth_];
    v5 = sub_24BAAA01C();

    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_24B973D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a4;
  v7 = type metadata accessor for PeopleExceptionsPickerView(0);
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v68[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = type metadata accessor for ContactImageView();
  MEMORY[0x28223BE20](v71);
  v10 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0665E8);
  MEMORY[0x28223BE20](v72);
  v82 = &v68[-v11];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0665D0);
  MEMORY[0x28223BE20](v75);
  v78 = &v68[-v12];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0665B0);
  MEMORY[0x28223BE20](v76);
  v77 = &v68[-v13];
  v14 = *(a1 + 16);
  v15 = [v14 contactIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = sub_24BAAA01C();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = *(a2 + 16);
  v80 = a3;
  if (v20)
  {
    v21 = sub_24BA1575C(v17, v19);
    v23 = v22;

    if (v23)
    {
      v24 = (*(a2 + 56) + 16 * v21);
      v25 = v24[1];
      v81 = *v24;
      v83 = v25;

      goto LABEL_11;
    }
  }

  else
  {
  }

  v70 = v8;
  if (qword_27F0630D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = *(&xmmword_27F076FF0 + 1);
  v26 = xmmword_27F076FF0;

  v28 = v26;
  v29 = v27;

  v81 = sub_24BA22270(v14, v29);
  v83 = v30;

  a3 = v80;
  v8 = v70;
LABEL_11:
  v31 = [v14 contactIdentifier];
  if (v31)
  {
    v32 = v31;
    v33 = sub_24BAAA01C();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v36 = v71;
  v37 = (v10 + *(v71 + 20));
  *v37 = v33;
  v37[1] = v35;
  v38 = (v10 + *(v36 + 24));
  v85 = sub_24BAA991C();
  sub_24BAA99EC();
  v39 = *(&v87 + 1);
  *v38 = v87;
  v38[1] = v39;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v40 = v82;
  sub_24B979508(v10, v82, type metadata accessor for ContactImageView);
  v41 = &v40[*(v72 + 9)];
  v42 = v88;
  *v41 = v87;
  v41[1] = v42;
  v41[2] = v89;
  if (!v83)
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v81 = sub_24BAA7C2C();
    v83 = v43;
  }

  v44 = sub_24B970F9C();
  if (sub_24B970F9C() == 1)
  {
    v45 = sub_24BAA983C();
  }

  else
  {
    v45 = sub_24BAA981C();
  }

  v71 = v45;
  v46 = 0xE90000000000006BLL;
  if (v44 == 1)
  {
    v46 = 0xEF6C6C69662E6873;
  }

  v70 = v46;
  if (v44 == 1)
  {
    v47 = 0x616C732E6C6C6562;
  }

  else
  {
    v47 = 0x72616D6B63656863;
  }

  v69 = sub_24B97456C(v14, 0);
  v72 = type metadata accessor for PeopleExceptionsPickerView;
  v48 = v14;
  v49 = v74;
  sub_24B979360(a3, v74, type metadata accessor for PeopleExceptionsPickerView);
  v50 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v51 = (v8 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  sub_24B979508(v49, v52 + v50, type metadata accessor for PeopleExceptionsPickerView);
  *(v52 + v51) = v48;
  KeyPath = swift_getKeyPath();
  v54 = v78;
  *v78 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v55 = v75;
  sub_24B90294C(v82, v54 + *(v75 + 36), &qword_27F0665E8);
  v56 = (v54 + v55[10]);
  v57 = v83;
  *v56 = v81;
  v56[1] = v57;
  v58 = (v54 + v55[11]);
  v59 = v70;
  *v58 = v47;
  v58[1] = v59;
  *(v54 + v55[12]) = v71;
  v60 = v54 + v55[13];
  v84 = v69 & 1;
  v83 = v48;
  sub_24BAA99EC();
  v61 = v86;
  *v60 = v85;
  *(v60 + 8) = v61;
  v62 = (v54 + v55[14]);
  *v62 = sub_24B97A634;
  v62[1] = v52;
  sub_24B979360(v80, v49, v72);
  v63 = swift_allocObject();
  sub_24B979508(v49, v63 + v50, type metadata accessor for PeopleExceptionsPickerView);
  *(v63 + v51) = v83;
  v64 = v77;
  sub_24B90294C(v54, v77, &qword_27F0665D0);
  v65 = &v64[*(v76 + 36)];
  *v65 = sub_24B97A700;
  v65[1] = v63;
  v65[2] = 0;
  v65[3] = 0;
  sub_24B90294C(v64, v79, &qword_27F0665B0);
  v66 = v83;

  return v66;
}

uint64_t sub_24B97456C(void *a1, char a2)
{
  if (sub_24B970F9C() == 1 && (type metadata accessor for PeopleExceptionsPickerView(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38), sub_24BAA99FC(), v6 == 1) || (v4 = a2 ^ 1, !sub_24B970F9C()) && (type metadata accessor for PeopleExceptionsPickerView(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38), sub_24BAA99FC(), v6 == 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066400);
    sub_24BAA99FC();
    v4 = sub_24B914814(a1, v6);
  }

  return v4 & 1;
}

uint64_t sub_24B9746BC(char a1, uint64_t a2, void *a3)
{
  v5 = sub_24B970F9C();
  if (a1)
  {
    if (v5 == 1 || (result = sub_24B970F9C()) == 0)
    {
      type metadata accessor for PeopleExceptionsPickerView(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066400);
      sub_24BAA99FC();
      sub_24B8E5334(&v7, a3);

LABEL_12:
      sub_24BAA9A0C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
      return sub_24BAA9A0C();
    }
  }

  else if (v5 == 1 || (result = sub_24B970F9C()) == 0)
  {
    type metadata accessor for PeopleExceptionsPickerView(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066400);
    sub_24BAA99FC();

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_24B974990(uint64_t a1, void *a2)
{
  if (sub_24B970F9C() == 1)
  {
    v4 = type metadata accessor for PeopleExceptionsPickerView(0);
    v5 = (a1 + *(v4 + 64));
    v6 = *v5;
    v7 = *(v5 + 1);
    LOBYTE(v18) = v6;
    v19 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    result = sub_24BAA99FC();
    if (v16)
    {
      return result;
    }

    v9 = *(v4 + 56);
    goto LABEL_7;
  }

  result = sub_24B970F9C();
  if (!result)
  {
    v10 = type metadata accessor for PeopleExceptionsPickerView(0);
    v11 = (a1 + *(v10 + 68));
    v12 = *v11;
    v13 = *(v11 + 1);
    LOBYTE(v18) = v12;
    v19 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    result = sub_24BAA99FC();
    if ((v16 & 1) == 0)
    {
      v9 = *(v10 + 60);
LABEL_7:
      v14 = (a1 + v9);
      v15 = v14[1];
      v18 = *v14;
      v19 = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066400);
      sub_24BAA99FC();
      sub_24B8E5334(&v17, a2);

      sub_24BAA9A0C();
    }
  }

  return result;
}

uint64_t sub_24B974B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v71 = a4;
  v7 = type metadata accessor for PeopleExceptionsPickerView(0);
  v70 = *(v7 - 8);
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v72 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactImageView();
  MEMORY[0x28223BE20](v9);
  v11 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0665E8);
  MEMORY[0x28223BE20](v69);
  v73 = &v67 - v12;
  v13 = *(a1 + 16);
  v14 = [v13 contactIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_24BAAA01C();
    v18 = v17;

    if (*(a2 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    goto LABEL_7;
  }

  v16 = 0;
  v18 = 0xE000000000000000;
  if (!*(a2 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = sub_24BA1575C(v16, v18);
  v21 = v20;

  if (v21)
  {
    v22 = (*(a2 + 56) + 16 * v19);
    v23 = v22[1];
    v74 = *v22;
    v75 = v23;

    goto LABEL_10;
  }

LABEL_7:
  v68 = a3;
  v24 = v8;
  if (qword_27F0630D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v26 = *(&xmmword_27F076FF0 + 1);
  v25 = xmmword_27F076FF0;

  v27 = v25;
  v28 = v26;

  v74 = sub_24BA22270(v13, v28);
  v75 = v29;

  v8 = v24;
  a3 = v68;
LABEL_10:
  v30 = [v13 contactIdentifier];
  if (v30)
  {
    v31 = v30;
    v32 = sub_24BAAA01C();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v35 = (v11 + *(v9 + 20));
  *v35 = v32;
  v35[1] = v34;
  v36 = (v11 + *(v9 + 24));
  v77 = sub_24BAA991C();
  sub_24BAA99EC();
  v37 = *(&v79 + 1);
  *v36 = v79;
  v36[1] = v37;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v38 = v11;
  v39 = v73;
  sub_24B979508(v38, v73, type metadata accessor for ContactImageView);
  v40 = (v39 + *(v69 + 36));
  v41 = v80;
  *v40 = v79;
  v40[1] = v41;
  v40[2] = v81;
  if (!v75)
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v74 = sub_24BAA7C2C();
    v75 = v42;
  }

  v43 = sub_24B970F9C();
  if (sub_24B970F9C() == 1)
  {
    v44 = sub_24BAA983C();
  }

  else
  {
    v44 = sub_24BAA981C();
  }

  v45 = v44;
  v46 = v43 == 1;
  if (v43 == 1)
  {
    v47 = 0xEF6C6C69662E6873;
  }

  else
  {
    v47 = 0xE90000000000006BLL;
  }

  if (v46)
  {
    v48 = 0x616C732E6C6C6562;
  }

  else
  {
    v48 = 0x72616D6B63656863;
  }

  v49 = sub_24B97456C(v13, 1);
  v50 = a3;
  v51 = v13;
  v52 = v72;
  sub_24B979360(v50, v72, type metadata accessor for PeopleExceptionsPickerView);
  v53 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v54 = (v8 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  sub_24B979508(v52, v55 + v53, type metadata accessor for PeopleExceptionsPickerView);
  *(v55 + v54) = v51;
  KeyPath = swift_getKeyPath();
  v57 = v71;
  *v71 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0665D0);
  sub_24B90294C(v39, v57 + v58[9], &qword_27F0665E8);
  v59 = (v57 + v58[10]);
  v60 = v75;
  *v59 = v74;
  v59[1] = v60;
  v61 = (v57 + v58[11]);
  *v61 = v48;
  v61[1] = v47;
  *(v57 + v58[12]) = v45;
  v62 = v57 + v58[13];
  v76 = v49 & 1;
  v63 = v51;
  result = sub_24BAA99EC();
  v65 = v78;
  *v62 = v77;
  *(v62 + 1) = v65;
  v66 = (v57 + v58[14]);
  *v66 = sub_24B97A2AC;
  v66[1] = v55;
  return result;
}

uint64_t sub_24B975154(char a1, uint64_t a2, void *a3)
{
  v5 = sub_24B970F9C();
  if (a1)
  {
    if (v5 == 1 || (result = sub_24B970F9C()) == 0)
    {
      type metadata accessor for PeopleExceptionsPickerView(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066400);
      sub_24BAA99FC();
      sub_24B8E5334(&v7, a3);

LABEL_12:
      sub_24BAA9A0C();
    }
  }

  else if (v5 == 1 || (result = sub_24B970F9C()) == 0)
  {
    type metadata accessor for PeopleExceptionsPickerView(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066400);
    sub_24BAA99FC();

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_24B9752D4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a3;
  v86 = a4;
  v6 = type metadata accessor for PeopleExceptionsPickerView(0);
  v82 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v83 = v7;
  v85 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ContactImageView();
  MEMORY[0x28223BE20](v80);
  v9 = (&v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0665E8);
  MEMORY[0x28223BE20](v81);
  v89 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066590);
  MEMORY[0x28223BE20](v11);
  v13 = (&v78 - v12);
  v14 = *a1;
  v15 = [v14 contactIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = sub_24BAAA01C();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = *(a2 + 16);
  v87 = v14;
  if (v20)
  {
    v21 = sub_24BA1575C(v17, v19);
    v23 = v22;

    if (v23)
    {
      v24 = (*(a2 + 56) + 16 * v21);
      v25 = v24[1];
      v90 = *v24;
      v88 = v25;

      goto LABEL_11;
    }
  }

  else
  {
  }

  v79 = v6;
  if (qword_27F0630D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = *(&xmmword_27F076FF0 + 1);
  v26 = xmmword_27F076FF0;

  v28 = v26;
  v29 = v27;

  v14 = v87;
  v90 = sub_24BA22270(v87, v29);
  v88 = v30;

  v6 = v79;
LABEL_11:
  v31 = [v14 contactIdentifier];
  if (v31)
  {
    v32 = v31;
    v33 = sub_24BAAA01C();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = v84;
  v37 = v88;
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v38 = v80;
  v39 = (v9 + *(v80 + 20));
  *v39 = v33;
  v39[1] = v35;
  v40 = (v9 + *(v38 + 24));
  v92 = sub_24BAA991C();
  sub_24BAA99EC();
  v41 = *(&v94 + 1);
  *v40 = v94;
  v40[1] = v41;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v42 = v9;
  v43 = v89;
  sub_24B979508(v42, v89, type metadata accessor for ContactImageView);
  v44 = (v43 + *(v81 + 36));
  v45 = v95;
  *v44 = v94;
  v44[1] = v45;
  v44[2] = v96;
  if (v37)
  {
    v84 = v90;
    v81 = v37;
  }

  else
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v84 = sub_24BAA7C2C();
    v81 = v46;
  }

  v47 = *(v36 + *(v6 + 40));

  if (v47 == 1)
  {
    v48 = sub_24B970F9C();
    v49 = 0x72616D6B63656863;
    if (v48 == 1)
    {
      v49 = 0x616C732E6C6C6562;
    }

    v80 = v49;
    if (v48 == 1)
    {
      v50 = 0xEF6C6C69662E6873;
    }

    else
    {
      v50 = 0xE90000000000006BLL;
    }

    v51 = sub_24BAA982C();
  }

  else
  {
    v50 = 0xE500000000000000;
    v80 = 0x73756E696DLL;
    v51 = sub_24BAA974C();
  }

  v52 = v51;
  v53 = sub_24B975BEC();
  v54 = v85;
  sub_24B979360(v36, v85, type metadata accessor for PeopleExceptionsPickerView);
  v55 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v56 = (v83 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  sub_24B979508(v54, v57 + v55, type metadata accessor for PeopleExceptionsPickerView);
  v58 = v87;
  *(v57 + v56) = v87;
  KeyPath = swift_getKeyPath();
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v60 = v13 + v11[9];
  *v60 = KeyPath;
  v60[8] = 0;
  sub_24B90294C(v89, v13 + v11[10], &qword_27F0665E8);
  v61 = (v13 + v11[11]);
  v62 = v81;
  *v61 = v84;
  v61[1] = v62;
  v63 = (v13 + v11[12]);
  *v63 = v80;
  v63[1] = v50;
  *(v13 + v11[13]) = v52;
  v64 = v13 + v11[14];
  *v64 = 0;
  v64[8] = 0;
  *(v13 + v11[15]) = v53;
  v65 = v13 + v11[16];
  *v65 = 0;
  v65[8] = 0;
  v66 = v13 + v11[17];
  *v66 = 0x3FF0000000000000;
  v66[8] = 0;
  v67 = v13 + v11[18];
  *v67 = 0;
  v67[8] = 0;
  v68 = (v13 + v11[19]);
  *v68 = sub_24B97A718;
  v68[1] = v57;
  v69 = v13 + v11[20];
  v91 = 1;
  v70 = v58;
  sub_24BAA99EC();
  v71 = v93;
  *v69 = v92;
  *(v69 + 1) = v71;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_24BAAD5B0;
  *(v72 + 56) = MEMORY[0x277D837D0];
  *(v72 + 64) = sub_24B8F6A20();
  v73 = v88;
  if (!v88)
  {
    v90 = sub_24BAA7C2C();
  }

  *(v72 + 32) = v90;
  *(v72 + 40) = v73;
  v74 = sub_24BAA9FEC();
  v76 = v75;

  v92 = v74;
  v93 = v76;
  sub_24B8F384C(&qword_27F066588, &qword_27F066590);
  sub_24B8F5E3C();
  sub_24BAA959C();

  return sub_24B8F35E4(v13, &qword_27F066590);
}

uint64_t sub_24B975BEC()
{
  v1 = sub_24BAA82DC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  if (*(v0 + *(type metadata accessor for PeopleExceptionsPickerView(0) + 40)) == 1)
  {
    if (sub_24B970F9C() == 1)
    {

      return sub_24BAA983C();
    }

    else
    {

      return sub_24BAA981C();
    }
  }

  else
  {
    sub_24B96E474(v7);
    (*(v2 + 104))(v5, *MEMORY[0x277CDF3C0], v1);
    v9 = sub_24BAA82CC();
    v10 = *(v2 + 8);
    v10(v5, v1);
    v10(v7, v1);
    v11 = objc_opt_self();
    if (v9)
    {
      v12 = [v11 systemGray5Color];
    }

    else
    {
      v12 = [v11 systemBackgroundColor];
    }

    v13 = v12;
    return sub_24BAA973C();
  }
}

void sub_24B975DCC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PeopleExceptionsPickerView(0);
  v5 = a1 + v4[12];
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v18 = *v5;
  v19 = v7;
  v20 = v8;

  v9 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066300);
  MEMORY[0x24C24FC10](&v21);
  v11 = sub_24B978BBC(&v21);

  if (v21 >> 62)
  {
    v12 = sub_24BAAA52C();
    if (v12 >= v11)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return;
  }

  v12 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12 < v11)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_24B9AF700(v11, v12);
  v17[0] = v6;
  v17[1] = v7;
  v17[2] = v8;
  sub_24BAA9B6C();

  if ((*(a1 + v4[10]) & 1) == 0)
  {
    type metadata accessor for SuggestionsViewModel();
    sub_24B9784E4(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
    sub_24BAA82FC();
    LOBYTE(v21) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066508);
    sub_24BAA99FC();
    v13 = v17[0];
    v18 = v6;
    v19 = v7;
    v20 = v8;
    MEMORY[0x24C24FC10](v17, v10);
    sub_24BA114E8(&v21, v13, 0, 0, v17[0]);
  }

  v18 = v6;
  v19 = v7;
  v20 = v8;
  MEMORY[0x24C24FC10](v17, v10);
  v14 = (a1 + v4[18]);
  v16 = *v14;
  v15 = v14[1];
  v18 = v16;
  v19 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066508);
  sub_24BAA9A0C();
}

uint64_t sub_24B976068()
{
  type metadata accessor for PeopleExceptionsPickerView(0);
  type metadata accessor for SuggestionsViewModel();
  sub_24B9784E4(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
  v0 = sub_24BAA82FC();
  sub_24B9A8AFC(v0 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_modeUUID, *(v0 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_exceptionType), v0);
}

uint64_t sub_24B976140(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for PeopleExceptionsPickerView(0);
  type metadata accessor for SuggestionsViewModel();
  sub_24B9784E4(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
  *(sub_24BAA82FC() + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_exceptionType) = v1;

  v2 = sub_24BAA82FC();
  sub_24B9A8AFC(v2 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_modeUUID, *(v2 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_exceptionType), v2);
}

uint64_t sub_24B976254@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PeopleExceptionsPickerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  if ((*(a1 + *(v7 + 40)) & 1) == 0)
  {
    type metadata accessor for SuggestionsViewModel();
    sub_24B9784E4(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
    sub_24BAA82FC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v10 = v21;
    v11 = *(v21 + 16);
    if (v11)
    {
      v20[0] = v5;
      v21 = v8;
      sub_24BAAA68C();
      v12 = 56;
      do
      {
        v13 = *(v10 + v12);
        sub_24BAAA66C();
        sub_24BAAA69C();
        sub_24BAAA6AC();
        sub_24BAAA67C();
        v12 += 40;
        --v11;
      }

      while (v11);

      v9 = v21;
      v8 = MEMORY[0x277D84F90];
      v5 = v20[0];
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }
  }

  v14 = sub_24B97652C();
  sub_24B979360(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeopleExceptionsPickerView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_24B979508(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PeopleExceptionsPickerView);
  v20[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066500);
  result = sub_24BAA99EC();
  v18 = v21;
  v19 = v22;
  *a2 = v14;
  a2[1] = v9;
  a2[2] = sub_24B9799F8;
  a2[3] = v16;
  a2[4] = v18;
  a2[5] = v19;
  return result;
}

uint64_t sub_24B97652C()
{
  v1 = v0;
  v52 = type metadata accessor for PeopleExceptionsPickerView(0);
  v2 = v0 + *(v52 + 48);
  v56 = *v2;
  v57 = *(v2 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066300);
  MEMORY[0x24C24FC10](&v55, v3);
  v4 = v55;
  v5 = v55 & 0xFFFFFFFFFFFFFF8;
  if (!(v55 >> 62))
  {
    v6 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_22:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v6 = sub_24BAAA52C();
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C2506E0](v9, v4);
      }

      else
      {
        if (v9 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(v4 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12 = [v10 contactIdentifier];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_23;
      }
    }

    v51 = v1;
    v13 = v12;
    v14 = sub_24BAAA01C();
    v50 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_24B99A290(0, *(v8 + 2) + 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = sub_24B99A290((v16 > 1), v17 + 1, 1, v8);
    }

    *(v8 + 2) = v17 + 1;
    v18 = &v8[16 * v17];
    v1 = v51;
    *(v18 + 4) = v14;
    *(v18 + 5) = v50;
  }

  while (v7 != v6);
LABEL_23:

  v56 = v8;
  if ((*(v1 + *(v52 + 40)) & 1) == 0)
  {
    return v8;
  }

  type metadata accessor for SuggestionsViewModel();
  sub_24B9784E4(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
  sub_24BAA82FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v20 = v55;
  v53 = *(v55 + 16);
  if (v53)
  {
    v21 = 0;
    v22 = (v55 + 56);
    v23 = MEMORY[0x277D84F90];
    while (v21 < *(v20 + 16))
    {
      v24 = *(v22 - 1);
      v25 = *v22;

      v26 = v24;
      v27 = v25;
      v28 = [v27 identifier];
      v29 = sub_24BAAA01C();
      v31 = v30;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24B99A290(0, *(v23 + 16) + 1, 1, v23);
        v23 = result;
      }

      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_24B99A290((v32 > 1), v33 + 1, 1, v23);
        v23 = result;
      }

      ++v21;
      *(v23 + 16) = v33 + 1;
      v34 = v23 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v22 += 5;
      if (v53 == v21)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_34:

  sub_24B8E35B8(v23);
  sub_24BAA82FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v35 = v55;
  v54 = *(v55 + 16);
  if (!v54)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_44:

    sub_24B8E35B8(v38);
    return v56;
  }

  v36 = 0;
  v37 = (v55 + 56);
  v38 = MEMORY[0x277D84F90];
  while (v36 < *(v35 + 16))
  {
    v40 = *(v37 - 1);
    v39 = *v37;

    v41 = v40;
    v42 = v39;
    v43 = [v42 identifier];
    v44 = sub_24BAAA01C();
    v46 = v45;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B99A290(0, *(v38 + 16) + 1, 1, v38);
      v38 = result;
    }

    v48 = *(v38 + 16);
    v47 = *(v38 + 24);
    if (v48 >= v47 >> 1)
    {
      result = sub_24B99A290((v47 > 1), v48 + 1, 1, v38);
      v38 = result;
    }

    ++v36;
    *(v38 + 16) = v48 + 1;
    v49 = v38 + 16 * v48;
    *(v49 + 32) = v44;
    *(v49 + 40) = v46;
    v37 += 5;
    if (v54 == v36)
    {
      goto LABEL_44;
    }
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_24B976A94(uint64_t a1, void **a2)
{
  v3 = type metadata accessor for PeopleExceptionsPickerView(0);
  v4 = (a2 + v3[8]);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v42 = *v4;
  v43 = v6;
  v44 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  MEMORY[0x24C24FC10](v39);
  if (v39[0] == 2)
  {
    v8 = sub_24B970F9C();
    v42 = v5;
    v43 = v6;
    v44 = v7;
    v39[0] = v8;
    sub_24BAA9B6C();
  }

  v10 = sub_24B8F0F04(v9);

  v41 = v10;
  v11 = a2 + v3[12];
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v36 = *v11;
  v42 = *v11;
  v43 = v12;
  v44 = v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066300);
  MEMORY[0x24C24FC10](v39);
  v14 = v39[0];
  v15 = v39[0] & 0xFFFFFFFFFFFFFF8;
  if (v39[0] >> 62)
  {
LABEL_28:
    v16 = sub_24BAAA52C();
  }

  else
  {
    v16 = *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v13;
  v35 = v12;
  v37 = v3;
  v38 = a2;
  if (v16)
  {
    a2 = 0;
    v17 = MEMORY[0x277D84F90];
    do
    {
      v13 = a2;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x24C2506E0](v13, v14);
        }

        else
        {
          if (v13 >= *(v15 + 16))
          {
            goto LABEL_27;
          }

          v18 = *(v14 + 8 * v13 + 32);
        }

        v3 = v18;
        a2 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v19 = [v18 contactIdentifier];
        if (v19)
        {
          break;
        }

        v13 = (v13 + 1);
        if (a2 == v16)
        {
          goto LABEL_23;
        }
      }

      v20 = v19;
      v32 = sub_24BAAA01C();
      v22 = v21;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_24B99A290(0, *(v17 + 2) + 1, 1, v17);
      }

      v12 = *(v17 + 2);
      v23 = *(v17 + 3);
      v3 = (v12 + 1);
      if (v12 >= v23 >> 1)
      {
        v17 = sub_24B99A290((v23 > 1), v12 + 1, 1, v17);
      }

      *(v17 + 2) = v3;
      v24 = &v17[16 * v12];
      *(v24 + 4) = v32;
      *(v24 + 5) = v22;
    }

    while (a2 != v16);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

LABEL_23:

  v25 = sub_24B8F0F04(v17);

  sub_24B8EA8FC(v25);

  v26 = sub_24B96CB94(v41);

  v42 = v36;
  v43 = v35;
  v44 = v34;

  MEMORY[0x24C24FC10](v40, v33);
  sub_24B8E36AC(v26);
  v39[0] = v36;
  v39[1] = v35;
  v39[2] = v34;
  sub_24BAA9B6C();

  if ((*(v38 + v37[10]) & 1) == 0)
  {
    type metadata accessor for SuggestionsViewModel();
    sub_24B9784E4(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
    sub_24BAA82FC();
    v40[0] = 1;
    v28 = (v38 + v37[18]);
    v30 = *v28;
    v29 = v28[1];
    v42 = v30;
    v43 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066508);
    sub_24BAA99FC();
    v31 = v39[0];
    v42 = v36;
    v43 = v35;
    v44 = v34;
    MEMORY[0x24C24FC10](v39, v33);
    sub_24BA114E8(v40, v31, 0, 0, v39[0]);
  }

  return result;
}

uint64_t sub_24B976ED0@<X0>(uint64_t a1@<X8>)
{
  v21[3] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0664F8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v21 - v2;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v22 = sub_24BAA7C2C();
  v23 = v4;
  sub_24B8F5E3C();
  v5 = sub_24BAA93CC();
  v21[1] = v6;
  v21[2] = v5;
  v21[0] = v7;
  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24BAAD5B0;
  v9 = MEMORY[0x277D83C10];
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 64) = v9;
  *(v8 + 32) = 500;
  v10 = sub_24BAA9FEC();
  v12 = v11;

  v22 = v10;
  v23 = v12;
  sub_24BAA93CC();
  v22 = sub_24BAA7C2C();
  v23 = v13;
  v14 = sub_24BAA93CC();
  v16 = v15;
  v18 = v17;
  sub_24BAA971C();
  sub_24B900910(v14, v16, v18 & 1);

  v19 = sub_24BAA972C();
  (*(*(v19 - 8) + 56))(v3, 0, 1, v19);
  return sub_24BAA970C();
}

uint64_t sub_24B9771E0()
{
  v1 = v0;
  v2 = sub_24BAA8BCC();
  v6 = 1;
  sub_24B977440(v1, __dst);
  v19 = *&__dst[192];
  v20[0] = *&__dst[208];
  *(v20 + 9) = *&__dst[217];
  v15 = *&__dst[128];
  v16 = *&__dst[144];
  v17 = *&__dst[160];
  v18 = *&__dst[176];
  v11 = *&__dst[64];
  v12 = *&__dst[80];
  v13 = *&__dst[96];
  v14 = *&__dst[112];
  v7 = *__dst;
  v8 = *&__dst[16];
  v9 = *&__dst[32];
  v10 = *&__dst[48];
  v21[12] = *&__dst[192];
  v22[0] = *&__dst[208];
  *(v22 + 9) = *&__dst[217];
  v21[8] = *&__dst[128];
  v21[9] = *&__dst[144];
  v21[10] = *&__dst[160];
  v21[11] = *&__dst[176];
  v21[4] = *&__dst[64];
  v21[5] = *&__dst[80];
  v21[6] = *&__dst[96];
  v21[7] = *&__dst[112];
  v21[0] = *__dst;
  v21[1] = *&__dst[16];
  v21[2] = *&__dst[32];
  v21[3] = *&__dst[48];
  sub_24B8F3208(&v7, v4, &qword_27F0663B8);
  sub_24B8F35E4(v21, &qword_27F0663B8);
  *(&v5[11] + 7) = v18;
  *(&v5[12] + 7) = v19;
  *(&v5[13] + 7) = v20[0];
  v5[14] = *(v20 + 9);
  *(&v5[7] + 7) = v14;
  *(&v5[8] + 7) = v15;
  *(&v5[9] + 7) = v16;
  *(&v5[10] + 7) = v17;
  *(&v5[3] + 7) = v10;
  *(&v5[4] + 7) = v11;
  *(&v5[5] + 7) = v12;
  *(&v5[6] + 7) = v13;
  *(v5 + 7) = v7;
  *(&v5[1] + 7) = v8;
  *(&v5[2] + 7) = v9;
  *(&v4[24] + 1) = v5[11];
  *(&v4[26] + 1) = v5[12];
  *(&v4[28] + 1) = v5[13];
  *(&v4[30] + 1) = *(v20 + 9);
  *(&v4[16] + 1) = v5[7];
  *(&v4[18] + 1) = v5[8];
  *(&v4[20] + 1) = v5[9];
  *(&v4[22] + 1) = v5[10];
  *(&v4[8] + 1) = v5[3];
  *(&v4[10] + 1) = v5[4];
  *(&v4[12] + 1) = v5[5];
  *(&v4[14] + 1) = v5[6];
  *(&v4[2] + 1) = v5[0];
  *(&v4[4] + 1) = v5[1];
  v4[0] = v2;
  v4[1] = 0;
  LOBYTE(v4[2]) = v6;
  *(&v4[6] + 1) = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0663C0);
  sub_24B9789E8();
  sub_24BAA94DC();
  memcpy(__dst, v4, sizeof(__dst));
  return sub_24B8F35E4(__dst, &qword_27F0663C0);
}

uint64_t sub_24B977440@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_24BAA8B9C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v11 = sub_24BAA9D1C();
  v58 = v12;
  v59 = v11;
  sub_24B977964(a1, &v101);
  v56 = v102;
  v57 = v101;
  v54 = v104;
  v55 = v103;
  v52 = v106;
  v53 = v105;
  v13 = type metadata accessor for PeopleExceptionsPickerView.AddPersonButtonContent(0);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v14 = (a1 + *(v13 + 20));
  v15 = v14[1];
  v101 = *v14;
  v102 = v15;
  sub_24B8F5E3C();

  v16 = sub_24BAA93CC();
  v49 = v17;
  v50 = v16;
  LODWORD(v47) = v18;
  v51 = v19;
  KeyPath = swift_getKeyPath();
  sub_24BA8DAA8(v10);
  (*(v5 + 104))(v8, *MEMORY[0x277CE0260], v4);
  v20 = sub_24B9E1B04(v10, v8);
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v10, v4);
  v22 = swift_getKeyPath();
  v23 = v47 & 1;
  v116 = v47 & 1;
  v113 = 0;
  v47 = sub_24BAA924C();
  v24 = swift_getKeyPath();
  v25 = *(a1 + *(v13 + 24));
  if (!v25)
  {
    v25 = sub_24BAA974C();
  }

  if (v20)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  *&v68 = v59;
  *(&v68 + 1) = v58;
  *&v69 = v57;
  *(&v69 + 1) = v56;
  *&v70 = v55;
  *(&v70 + 1) = v54;
  *&v71 = v53;
  *(&v71 + 1) = v52;
  v72 = v118;
  v73 = v119;
  v74 = v120;
  v75 = 256;
  LOWORD(v67[0]) = 256;
  v65 = v119;
  v66 = v120;
  v63 = v71;
  v64 = v118;
  v61 = v69;
  v62 = v70;
  v60 = v68;
  v30 = v49;
  v29 = v50;
  *&v76 = v50;
  *(&v76 + 1) = v49;
  LOBYTE(v77) = v23;
  DWORD1(v77) = *&v115[3];
  *(&v77 + 1) = *v115;
  v31 = v51;
  v32 = KeyPath;
  *(&v77 + 1) = v51;
  *&v78 = KeyPath;
  BYTE8(v78) = 1;
  HIDWORD(v78) = *&v114[3];
  *(&v78 + 9) = *v114;
  *&v79 = v22;
  *(&v79 + 1) = v26;
  LOBYTE(v80) = 0;
  DWORD1(v80) = *&v117[3];
  *(&v80 + 1) = *v117;
  v33 = v24;
  *(&v80 + 1) = v24;
  v34 = v47;
  *&v81 = v47;
  *(&v81 + 1) = v27;
  *&v82 = v25;
  *(&v82 + 1) = v28;
  v83 = 1;
  BYTE8(v67[7]) = 1;
  *(&v67[6] + 8) = v82;
  *(&v67[5] + 8) = v81;
  *(&v67[4] + 8) = v80;
  *(&v67[3] + 8) = v79;
  *(&v67[2] + 8) = v78;
  *(&v67[1] + 8) = v77;
  *(v67 + 8) = v76;
  v35 = v69;
  *a2 = v68;
  a2[1] = v35;
  v36 = v62;
  v37 = v63;
  v38 = v65;
  a2[4] = v64;
  a2[5] = v38;
  a2[2] = v36;
  a2[3] = v37;
  v39 = v66;
  v40 = v67[0];
  v41 = v67[2];
  a2[8] = v67[1];
  a2[9] = v41;
  a2[6] = v39;
  a2[7] = v40;
  v42 = v67[3];
  v43 = v67[4];
  *(a2 + 217) = *(&v67[6] + 9);
  v44 = v67[6];
  a2[12] = v67[5];
  a2[13] = v44;
  a2[10] = v42;
  a2[11] = v43;
  v84[0] = v29;
  v84[1] = v30;
  v85 = v23;
  *v86 = *v115;
  *&v86[3] = *&v115[3];
  v87 = v31;
  v88 = v32;
  v89 = 1;
  *v90 = *v114;
  *&v90[3] = *&v114[3];
  v91 = v22;
  v92 = v26;
  v93 = 0;
  *&v94[3] = *&v117[3];
  *v94 = *v117;
  v95 = v33;
  v96 = v34;
  v97 = v27;
  v98 = v25;
  v99 = v28;
  v100 = 1;

  sub_24B8F3208(&v68, &v101, &qword_27F0663E0);
  sub_24B8F3208(&v76, &v101, &qword_27F0663E8);
  sub_24B8F35E4(v84, &qword_27F0663E8);
  v101 = v59;
  v102 = v58;
  v103 = v57;
  v104 = v56;
  v105 = v55;
  v106 = v54;
  v107 = v53;
  v108 = v52;
  v109 = v118;
  v110 = v119;
  v111 = v120;
  v112 = 256;
  return sub_24B8F35E4(&v101, &qword_27F0663E0);
}

uint64_t sub_24B977964@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = [objc_opt_self() quaternarySystemFillColor];
  v8 = sub_24BAA973C();
  v9 = sub_24BAA991C();
  sub_24BAA91EC();
  v10 = *MEMORY[0x277CE09A0];
  v11 = sub_24BAA919C();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v6, v10, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  v13 = sub_24BAA91FC();
  sub_24B8F35E4(v6, &qword_27F063CD8);
  KeyPath = swift_getKeyPath();
  v15 = *(a1 + *(type metadata accessor for PeopleExceptionsPickerView.AddPersonButtonContent(0) + 24));
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = sub_24BAA974C();
  }

  v17 = swift_getKeyPath();
  *a2 = v8;
  a2[1] = v9;
  a2[2] = KeyPath;
  a2[3] = v13;
  a2[4] = v17;
  a2[5] = v16;
}

uint64_t sub_24B977B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066318);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11[-v6];
  *v7 = sub_24BAA8BDC();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066320);
  sub_24B96F01C(v2, &v7[*(v8 + 44)]);
  v9 = *(v2 + *(a1 + 40));
  v12 = v2;
  sub_24B972164(v9, sub_24B978E6C, a2);
  return sub_24B8F35E4(v7, &qword_27F066318);
}

uint64_t sub_24B977C94(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24B977E44(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_24B977FE0()
{
  sub_24B978388(319, &qword_27F068F10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24B978388(319, &qword_27F063A30, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24B97897C(319, &qword_27F063A38, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24B8F47B4();
        if (v3 <= 0x3F)
        {
          sub_24B978388(319, &qword_27F066350, type metadata accessor for DNDConfigurationType, MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            sub_24B978388(319, &qword_27F066358, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24B97897C(319, &qword_27F064968, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_24B9783EC(319, &qword_27F066360, &qword_27F0634E8, &unk_24BAB40D0, MEMORY[0x277CE11F8]);
                if (v7 <= 0x3F)
                {
                  sub_24B97897C(319, &qword_27F063BA8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
                  if (v8 <= 0x3F)
                  {
                    sub_24B9783EC(319, &qword_27F066368, &qword_27F0662F8, &unk_24BAB3FC8, MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      sub_24B97897C(319, &qword_27F063A40, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                      if (v10 <= 0x3F)
                      {
                        sub_24B9783EC(319, &qword_27F066370, &qword_27F0634E8, &unk_24BAB40D0, MEMORY[0x277CE10B8]);
                        if (v11 <= 0x3F)
                        {
                          sub_24B978450();
                          if (v12 <= 0x3F)
                          {
                            sub_24B8F37E8(319, &qword_27F066388);
                            if (v13 <= 0x3F)
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
  }
}

void sub_24B978388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24B9783EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_24B978450()
{
  if (!qword_27F066378)
  {
    type metadata accessor for SuggestionsViewModel();
    sub_24B9784E4(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
    v0 = sub_24BAA831C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F066378);
    }
  }
}

uint64_t sub_24B9784E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B978530()
{
  result = qword_27F066390;
  if (!qword_27F066390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066328);
    sub_24B8F384C(&qword_27F066330, &qword_27F066318);
    sub_24B8F384C(&qword_27F066338, &qword_27F066328);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066390);
  }

  return result;
}

uint64_t sub_24B978698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B978778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24B978860()
{
  sub_24B978388(319, &qword_27F063A30, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24B97897C(319, &qword_27F064968, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24B97897C(319, &qword_27F0663B0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B97897C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24B9789E8()
{
  result = qword_27F0663C8;
  if (!qword_27F0663C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0663C0);
    sub_24B8F384C(&qword_27F0663D0, &qword_27F0663D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0663C8);
  }

  return result;
}

unint64_t sub_24B978AA8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_24BAAA52C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C2506E0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_24B8F37E8(0, &unk_27F067FA0);
    v7 = sub_24BAAA3CC();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_24B978BBC(unint64_t *a1)
{
  v3 = *a1;
  result = sub_24B978AA8(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_24BAAA52C();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &unk_27F067FA0;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_24BAAA52C())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C2506E0](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_24B8F37E8(0, v8);
    v12 = sub_24BAAA3CC();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x24C2506E0](v6, v3);
          v14 = MEMORY[0x24C2506E0](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_24B9B0DEC(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_24B9B0DEC(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_24BAAA52C();
}

uint64_t objectdestroy_43Tm()
{
  v1 = type metadata accessor for PeopleExceptionsPickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA82DC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24BAA8B9C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_24B8FFD5C(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v9 = v1[9];
  v10 = sub_24BAA7E4C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  sub_24B900C14();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B9792D4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PeopleExceptionsPickerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24B979360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B9793C8()
{
  result = qword_27F066460;
  if (!qword_27F066460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066418);
    sub_24B8F384C(&qword_27F066468, &qword_27F066410);
    sub_24B9784E4(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066460);
  }

  return result;
}

uint64_t sub_24B9794B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B991F08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B979508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B979570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B9795D0(uint64_t a1)
{
  v3 = *(type metadata accessor for PeopleExceptionsPickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24B9708D0(a1, v4);
}

unint64_t sub_24B979640()
{
  result = qword_27F066480;
  if (!qword_27F066480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066480);
  }

  return result;
}

uint64_t sub_24B9796C8(uint64_t *a1)
{
  type metadata accessor for PeopleExceptionsPickerView(0);

  return sub_24B976140(a1);
}

uint64_t sub_24B979738@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PeopleExceptionsPickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24B976254(v4, a1);
}

unint64_t sub_24B9797A8()
{
  result = qword_27F0664B8;
  if (!qword_27F0664B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066488);
    sub_24B979860();
    sub_24B8F384C(&qword_27F0664E0, &qword_27F0664E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0664B8);
  }

  return result;
}

unint64_t sub_24B979860()
{
  result = qword_27F0664C0;
  if (!qword_27F0664C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0664B0);
    sub_24B9798EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0664C0);
  }

  return result;
}

unint64_t sub_24B9798EC()
{
  result = qword_27F0664C8;
  if (!qword_27F0664C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0664A8);
    sub_24B8F384C(&qword_27F0664D0, &qword_27F0664D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0664C8);
  }

  return result;
}

unint64_t sub_24B9799A4()
{
  result = qword_27F0664F0;
  if (!qword_27F0664F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0664F0);
  }

  return result;
}

uint64_t sub_24B9799F8(uint64_t a1)
{
  v3 = *(type metadata accessor for PeopleExceptionsPickerView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24B976A94(a1, v4);
}

unint64_t sub_24B979A8C()
{
  result = qword_27F066550;
  if (!qword_27F066550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066548);
    sub_24B9784E4(&qword_27F066558, type metadata accessor for PeopleExceptionsPickerView.AddPersonButtonContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066550);
  }

  return result;
}

unint64_t sub_24B979B48()
{
  result = qword_27F066568;
  if (!qword_27F066568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066568);
  }

  return result;
}

uint64_t sub_24B979BA0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PeopleExceptionsPickerView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_24B9752D4(a1, v6, v7, a2);
}

unint64_t sub_24B979C24()
{
  result = qword_27F066580;
  if (!qword_27F066580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066570);
    sub_24B8F384C(&qword_27F066588, &qword_27F066590);
    sub_24B9784E4(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066580);
  }

  return result;
}

unint64_t sub_24B979D0C()
{
  result = qword_27F066598;
  if (!qword_27F066598)
  {
    sub_24B8F37E8(255, &qword_27F0631A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066598);
  }

  return result;
}

uint64_t objectdestroy_87Tm_0()
{
  v1 = type metadata accessor for PeopleExceptionsPickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA82DC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24BAA8B9C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_24B8FFD5C(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v9 = v1[9];
  v10 = sub_24BAA7E4C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  sub_24B900C14();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24B97A0F0()
{
  result = qword_27F0665C0;
  if (!qword_27F0665C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0665B0);
    sub_24B8F384C(&qword_27F0665C8, &qword_27F0665D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0665C0);
  }

  return result;
}

unint64_t sub_24B97A1A8()
{
  result = qword_27F0665D8;
  if (!qword_27F0665D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0665D8);
  }

  return result;
}

uint64_t sub_24B97A214(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PeopleExceptionsPickerView(0) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t objectdestroy_96Tm()
{
  v1 = type metadata accessor for PeopleExceptionsPickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA82DC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24BAA8B9C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_24B8FFD5C(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v9 = v1[9];
  v10 = sub_24BAA7E4C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_24B900C14();

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | 7);
}

uint64_t sub_24B97A64C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PeopleExceptionsPickerView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t sub_24B97A730(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PeopleExceptionsPickerView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24B97A7F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_24B97A83C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B97A8A8()
{
  result = qword_27F0665F0;
  if (!qword_27F0665F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0665F8);
    sub_24B9789E8();
    sub_24B9784E4(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0665F0);
  }

  return result;
}

unint64_t sub_24B97A988()
{
  result = qword_27F066630;
  if (!qword_27F066630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066630);
  }

  return result;
}

unint64_t sub_24B97A9DC()
{
  result = qword_27F066638;
  if (!qword_27F066638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066638);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_24BAA7E4C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | 7);
}

uint64_t sub_24B97ABA0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];

  return sub_24B96EADC(v0 + v2, v4, v5, v6);
}

uint64_t sub_24B97ACC4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_24B97AD08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  return v1;
}

id sub_24B97AD7C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81CC();
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  return [v1 setActivateWithCarPlay_];
}

void sub_24B97AE64(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6[0] = a1;

  sub_24BAA81CC();
  v3 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v4 = v6[0];
  v6[4] = nullsub_1;
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24B97AFAC;
  v6[3] = &block_descriptor_75;
  v5 = _Block_copy(v6);
  [v3 setAutomaticDNDTriggerPreference:v4 withReply:v5];
  _Block_release(v5);
}

void sub_24B97AFAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_24B97B024()
{
  v1 = *v0;
  v2 = v0[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v3 = v6[0];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v6[4] = sub_24B97C9F8;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24B97AFAC;
  v6[3] = &block_descriptor_59;
  v5 = _Block_copy(v6);

  [v2 setAllowedAutoReplyAudience:v3 reply:v5];
  _Block_release(v5);
}

void sub_24B97B184()
{
  v1 = *v0;
  v2 = v0[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v3 = sub_24BAA9FDC();

  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v6[4] = sub_24B97C884;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24B97AFAC;
  v6[3] = &block_descriptor_40;
  v5 = _Block_copy(v6);

  [v2 setAutoReplyMessage:v3 reply:v5];
  _Block_release(v5);
}

void sub_24B97B2E8(int a1, id a2, uint64_t a3, const char *a4)
{
  if (a2)
  {
    v6 = a2;
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v7 = sub_24BAA812C();
    __swift_project_value_buffer(v7, qword_27F077038);
    v8 = a2;
    v9 = sub_24BAA810C();
    v10 = sub_24BAAA2BC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446466;
      v13 = sub_24BAAA86C();
      v15 = sub_24B8E49D4(v13, v14, &v19);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      swift_getErrorValue();
      v16 = sub_24BAAA7DC();
      v18 = sub_24B8E49D4(v16, v17, &v19);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_24B8D3000, v9, v10, a4, v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v12, -1, -1);
      MEMORY[0x24C251390](v11, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24B97B4E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  return v1;
}

uint64_t sub_24B97B558()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF8988]) init];
  *(v0 + 16) = v1;
  [v1 shouldActivateWithCarPlay];
  swift_beginAccess();
  sub_24BAA817C();
  swift_endAccess();
  swift_beginAccess();
  type metadata accessor for CARAutomaticDNDTriggerPreference(0);
  sub_24BAA817C();
  swift_endAccess();
  swift_beginAccess();
  type metadata accessor for CARAutoReplyAudience(0);
  sub_24BAA817C();
  swift_endAccess();
  swift_beginAccess();
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_24BAA817C();
  swift_endAccess();
  v2 = *(v0 + 16);
  v16 = sub_24B97C4F8;
  v17 = v0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_24B97B8F0;
  v15 = &block_descriptor_3;
  v3 = _Block_copy(&v12);
  v4 = v2;

  [v4 fetchAutomaticDNDTriggerPreferenceWithReply_];
  _Block_release(v3);

  v5 = *(v0 + 16);
  v16 = sub_24B97C550;
  v17 = v0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_24B97BC34;
  v15 = &block_descriptor_23;
  v6 = _Block_copy(&v12);

  v7 = v5;

  [v7 allowedAutoReplyAudience_];
  _Block_release(v6);

  v8 = *(v0 + 16);
  v16 = sub_24B97C590;
  v17 = v0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_24B97C03C;
  v15 = &block_descriptor_26;
  v9 = _Block_copy(&v12);

  v10 = v8;

  [v10 autoReplyMessageWithReply_];
  _Block_release(v9);

  return v0;
}

uint64_t sub_24B97B890(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24B97AE64(a2);
  }

  return result;
}

uint64_t sub_24B97B8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a5;
  v21 = a6;
  v7 = sub_24BAA9E2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24BAA9E5C();
  v11 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B926F30();
  v14 = sub_24BAAA33C();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  aBlock[4] = v20;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = v21;
  v17 = _Block_copy(aBlock);

  sub_24BAA9E4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24B97C61C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B97C674();
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v13, v10, v17);
  _Block_release(v17);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v22);
}

uint64_t sub_24B97BB90()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24BAA81CC();
    sub_24B97B024();
  }

  return result;
}

void sub_24B97BC3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24B97BCBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24BAA9E2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24BAA9E5C();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B926F30();
  v11 = sub_24BAAA33C();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_24B97C610;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = &block_descriptor_32;
  v14 = _Block_copy(aBlock);

  sub_24BAA9E4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24B97C61C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B97C674();
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v10, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_24B97BF74()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24BAA81CC();
    sub_24B97B184();
  }

  return result;
}

uint64_t sub_24B97C03C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_24BAAA01C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_24B97C0D4()
{
  v1 = OBJC_IVAR____TtC15FocusSettingsUI9CarStatus__activateWithCarPlay;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0666B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15FocusSettingsUI9CarStatus__trigger;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0666B8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15FocusSettingsUI9CarStatus__audience;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0666C0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15FocusSettingsUI9CarStatus__message;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CarStatus()
{
  result = qword_27F066688;
  if (!qword_27F066688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B97C2BC()
{
  sub_24B91303C(319, &qword_27F066698);
  if (v0 <= 0x3F)
  {
    sub_24B97C464(319, &qword_27F0666A0, type metadata accessor for CARAutomaticDNDTriggerPreference);
    if (v1 <= 0x3F)
    {
      sub_24B97C464(319, &qword_27F0666A8, type metadata accessor for CARAutoReplyAudience);
      if (v2 <= 0x3F)
      {
        sub_24B91303C(319, &qword_27F0668A0);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24B97C464(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24BAA81DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24B97C4B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CarStatus();
  result = sub_24BAA814C();
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24B97C598()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24B97C5D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_24B97C61C()
{
  result = qword_27F063470;
  if (!qword_27F063470)
  {
    sub_24BAA9E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063470);
  }

  return result;
}

unint64_t sub_24B97C674()
{
  result = qword_27F063480;
  if (!qword_27F063480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F064500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063480);
  }

  return result;
}

void sub_24B97C6EC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81CC();
  sub_24B97B024();
}

uint64_t sub_24B97C764@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

void sub_24B97C7E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81CC();
  sub_24B97B184();
}

uint64_t sub_24B97C8E4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  *a1 = v3;
  return result;
}

uint64_t sub_24B97C98C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B97CAE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24BAA89FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24B8F3208(v2, &v14 - v9, &qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA8B9C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t UnsupportedAllowedNotificationsPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v100 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0666C8) - 8;
  v3 = MEMORY[0x28223BE20](v98);
  v99 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v96 = &v88 - v5;
  v94 = sub_24BAA8DFC();
  MEMORY[0x28223BE20](v94);
  v93 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_24BAA9C6C();
  v7 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v9 = (&v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0666D0) - 8;
  v10 = MEMORY[0x28223BE20](v95);
  v103 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v104 = &v88 - v12;
  v13 = type metadata accessor for UnsupportedAllowedNotificationsPickerView();
  v14 = *(v13 - 8);
  v97 = v13 - 8;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0666D8);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v101 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = (&v88 - v21);
  v23 = sub_24BAA8A7C();
  sub_24B97DB6C(v2, v16);
  v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v25 = swift_allocObject();
  sub_24B97DBD4(v16, v25 + v24);
  v26 = sub_24BAA8BDC();
  *v22 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0666E0);
  v28 = v22 + v27[9];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = v22 + v27[10];
  *v29 = 0;
  v29[8] = 0;
  v30 = v22 + v27[11];
  *v30 = 0;
  v30[8] = 0;
  v31 = (v22 + v27[12]);
  *v31 = sub_24B97DC38;
  v31[1] = v25;
  v32 = v22 + v27[13];
  *v32 = v23;
  v32[8] = 0;
  v33 = v22 + v27[14];
  v102 = v22;
  *v33 = v26;
  v33[8] = 0;
  v34 = sub_24BAA90BC();
  v35 = v22 + *(v18 + 44);
  *v35 = v34;
  *(v35 + 1) = 0;
  *(v35 + 2) = 0;
  *(v35 + 24) = xmmword_24BAB2760;
  v35[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C08);
  sub_24BAA9C7C();
  *(swift_allocObject() + 16) = xmmword_24BAAD5B0;
  *v9 = xmmword_24BAAD830;
  (*(v7 + 104))(v9, *MEMORY[0x277CDF108], v92);
  sub_24BAA9C8C();
  v36 = v89;
  v106 = v89;
  sub_24BAA8BCC();
  LODWORD(v118) = 0;
  sub_24B980F80(&qword_27F065160, MEMORY[0x277CE0428]);
  sub_24BAAA85C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0666E8);
  sub_24B8F384C(&qword_27F0666F0, &qword_27F0666E8);
  v37 = v104;
  sub_24BAA9D8C();
  LOBYTE(v7) = sub_24BAA90BC();
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0666F8) + 36);
  *v38 = v7;
  *(v38 + 8) = 0u;
  *(v38 + 24) = 0u;
  *(v38 + 40) = 1;
  v39 = (v37 + *(v95 + 44));
  v93 = sub_24BAA869C();
  v40 = *(v93 + 5);
  LODWORD(v92) = *MEMORY[0x277CE0118];
  v41 = v92;
  v42 = sub_24BAA8B2C();
  v91 = *(*(v42 - 8) + 104);
  v91(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #16.0 }

  v90 = _Q0;
  *v39 = _Q0;
  v48 = objc_opt_self();
  v49 = [v48 secondarySystemGroupedBackgroundColor];
  v50 = sub_24BAA973C();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *&v39[*(v51 + 52)] = v50;
  *&v39[*(v51 + 56)] = 256;
  v52 = sub_24BAA9D1C();
  v54 = v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CC0);
  v56 = &v39[*(v55 + 36)];
  *v56 = v52;
  v56[1] = v54;
  v95 = sub_24BAA8AAC();
  v108 = 1;
  sub_24B97E1CC(v36, &v118);
  v111 = v119[1];
  v112 = v119[2];
  v113[0] = v119[3];
  *(v113 + 9) = *(&v119[3] + 9);
  v109 = v118;
  v110 = v119[0];
  *(v115 + 9) = *(&v119[3] + 9);
  v114[2] = v119[1];
  v114[3] = v119[2];
  v115[0] = v119[3];
  v114[0] = v118;
  v114[1] = v119[0];
  sub_24B8F3208(&v109, v116, &qword_27F066700);
  sub_24B8F35E4(v114, &qword_27F066700);
  *(&v107[2] + 7) = v111;
  *(&v107[3] + 7) = v112;
  *(&v107[4] + 7) = v113[0];
  v107[5] = *(v113 + 9);
  *(v107 + 7) = v109;
  *(&v107[1] + 7) = v110;
  LODWORD(v94) = v108;
  v105 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066708);
  sub_24B980790();
  v57 = v96;
  sub_24BAA9C3C();
  v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066728) + 36));
  v91(&v58[*(v93 + 5)], v92, v42);
  *v58 = v90;
  v59 = [v48 systemGray5Color];
  *&v58[*(v51 + 52)] = sub_24BAA973C();
  *&v58[*(v51 + 56)] = 256;
  v60 = sub_24BAA9D1C();
  v61 = &v58[*(v55 + 36)];
  *v61 = v60;
  v61[1] = v62;
  v63 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066730) + 36));
  v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066738) + 28);
  sub_24BAA8BFC();
  v65 = sub_24BAA8C1C();
  (*(*(v65 - 8) + 56))(v63 + v64, 0, 1, v65);
  *v63 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v67 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066740) + 36);
  *v67 = KeyPath;
  *(v67 + 8) = 0;
  *(v67 + 16) = 1;
  v68 = swift_getKeyPath();
  v69 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066748) + 36);
  *v69 = v68;
  *(v69 + 8) = 0;
  v70 = *(v36 + *(v97 + 40));
  v71 = swift_getKeyPath();
  v72 = (v57 + *(v98 + 44));
  *v72 = v71;
  v72[1] = v70;
  v73 = v101;
  sub_24B8F3208(v102, v101, &qword_27F0666D8);
  v74 = v103;
  sub_24B8F3208(v104, v103, &qword_27F0666D0);
  v75 = v99;
  sub_24B8F3208(v57, v99, &qword_27F0666C8);
  v76 = v73;
  v77 = v100;
  sub_24B8F3208(v76, v100, &qword_27F0666D8);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066750);
  sub_24B8F3208(v74, v77 + v78[12], &qword_27F0666D0);
  v79 = v77 + v78[16];
  v80 = v95;
  v116[0] = v95;
  v116[1] = 0;
  LOBYTE(v55) = v94;
  v117[0] = v94;
  *&v117[1] = v107[0];
  *&v117[17] = v107[1];
  *&v117[33] = v107[2];
  *&v117[65] = v107[4];
  *&v117[49] = v107[3];
  *&v117[81] = v107[5];
  v81 = v95;
  v82 = *v117;
  v83 = *&v117[32];
  *(v79 + 32) = *&v117[16];
  *(v79 + 48) = v83;
  *v79 = v81;
  *(v79 + 16) = v82;
  v84 = *&v117[48];
  v85 = *&v117[64];
  v86 = *&v117[80];
  *(v79 + 112) = v117[96];
  *(v79 + 80) = v85;
  *(v79 + 96) = v86;
  *(v79 + 64) = v84;
  sub_24B8F3208(v75, v77 + v78[20], &qword_27F0666C8);

  sub_24B8F3208(v116, &v118, &qword_27F066758);
  sub_24B8F35E4(v57, &qword_27F0666C8);
  sub_24B8F35E4(v104, &qword_27F0666D0);
  sub_24B8F35E4(v102, &qword_27F0666D8);
  sub_24B8F35E4(v75, &qword_27F0666C8);
  *(&v119[2] + 1) = v107[2];
  *(&v119[3] + 1) = v107[3];
  *(&v119[4] + 1) = v107[4];
  *(&v119[5] + 1) = v107[5];
  *(v119 + 1) = v107[0];
  v118 = v80;
  LOBYTE(v119[0]) = v55;
  *(&v119[1] + 1) = v107[1];
  sub_24B8F35E4(&v118, &qword_27F066758);
  sub_24B8F35E4(v103, &qword_27F0666D0);
  return sub_24B8F35E4(v101, &qword_27F0666D8);
}

uint64_t type metadata accessor for UnsupportedAllowedNotificationsPickerView()
{
  result = qword_27F066760;
  if (!qword_27F066760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B97D984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24BAA8AAC();
  LOBYTE(v24[0]) = 1;
  sub_24B97DCB0(a1, &v26);
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31[0];
  v16 = v26;
  v17 = v27;
  v23 = v31[0];
  v22[2] = v28;
  v22[3] = v29;
  v22[4] = v30;
  v22[0] = v26;
  v22[1] = v27;
  sub_24B8F3208(&v16, v32, &qword_27F066818);
  sub_24B8F35E4(v22, &qword_27F066818);
  *(&v15[2] + 7) = v18;
  *(&v15[3] + 7) = v19;
  *(&v15[4] + 7) = v20;
  *(&v15[5] + 7) = v21;
  *(v15 + 7) = v16;
  *(&v15[1] + 7) = v17;
  v5 = v24[0];
  v24[0] = v4;
  v24[1] = 0;
  LOBYTE(v25[0]) = v5;
  v6 = v15[2];
  v7 = v15[0];
  *(v25 + 1) = v15[0];
  *(&v25[1] + 1) = v15[1];
  *(&v25[4] + 10) = *(&v15[4] + 9);
  v8 = v15[3];
  *(&v25[4] + 1) = v15[4];
  *(&v25[3] + 1) = v15[3];
  v9 = v15[1];
  *(&v25[2] + 1) = v15[2];
  v26 = v4;
  v27 = v25[0];
  *(v31 + 10) = *(&v25[4] + 10);
  v30 = v25[3];
  v31[0] = v25[4];
  v28 = v25[1];
  v29 = v25[2];
  v10 = v25[0];
  *a2 = v4;
  *(a2 + 16) = v10;
  v11 = v31[1];
  *(a2 + 80) = v31[0];
  *(a2 + 96) = v11;
  v12 = v30;
  *(a2 + 48) = v29;
  *(a2 + 64) = v12;
  *(a2 + 32) = v28;
  v14[112] = 1;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  v32[0] = v4;
  v32[1] = 0;
  v33 = v5;
  v35 = v9;
  v34 = v7;
  *&v38[9] = *(&v15[4] + 9);
  *v38 = v15[4];
  v37 = v8;
  v36 = v6;
  sub_24B8F3208(v24, v14, &qword_27F066820);
  return sub_24B8F35E4(v32, &qword_27F066820);
}

uint64_t sub_24B97DB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnsupportedAllowedNotificationsPickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B97DBD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnsupportedAllowedNotificationsPickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B97DC38@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnsupportedAllowedNotificationsPickerView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24B97D984(v4, a1);
}

uint64_t sub_24B97DCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = sub_24BAA8B9C();
  v25[0] = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_24BAAA5FC();

  v33 = 0x5F4445574F4C4C41;
  v34 = 0xE800000000000000;
  v6 = *(type metadata accessor for UnsupportedAllowedNotificationsPickerView() + 36);
  v25[1] = a1;
  MEMORY[0x24C250160](*(a1 + v6), *(a1 + v6 + 8));
  MEMORY[0x24C250160](0x544E554F435FLL, 0xE600000000000000);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v7 = sub_24BAA7C2C();
  v9 = v8;

  v33 = v7;
  v34 = v9;
  sub_24B8F5E3C();
  v10 = sub_24BAA93CC();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v18 = sub_24BAA928C();
  v19 = swift_getKeyPath();
  v20 = v14 & 1;
  LOBYTE(v33) = v14 & 1;
  LOBYTE(v28) = 0;
  sub_24B97CAE8(v5);
  v21 = sub_24BAA8B8C();
  (*(v25[0] + 8))(v5, v26);
  *&v28 = v10;
  *(&v28 + 1) = v12;
  LOBYTE(v29) = v20;
  *(&v29 + 1) = *v45;
  DWORD1(v29) = *&v45[3];
  *(&v29 + 1) = v16;
  *&v30 = KeyPath;
  *(&v30 + 1) = 2;
  LOBYTE(v31) = 0;
  *(&v31 + 1) = *v44;
  DWORD1(v31) = *&v44[3];
  *(&v31 + 1) = v19;
  v32 = v18;
  v27[79] = (v21 & 1) == 0;
  v22 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v22;
  v23 = v29;
  *a2 = v28;
  *(a2 + 16) = v23;
  *(a2 + 64) = v18;
  *(a2 + 72) = 0;
  *(a2 + 80) = v21 & 1;
  *(a2 + 81) = (v21 & 1) == 0;
  v33 = v10;
  v34 = v12;
  v35 = v20;
  *&v36[3] = *&v45[3];
  *v36 = *v45;
  v37 = v16;
  v38 = KeyPath;
  v39 = 2;
  v40 = 0;
  *&v41[3] = *&v44[3];
  *v41 = *v44;
  v42 = v19;
  v43 = v18;
  sub_24B8F3208(&v28, v27, &qword_27F066828);
  return sub_24B8F35E4(&v33, &qword_27F066828);
}

uint64_t sub_24B97DFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24BAAA5FC();

  v4 = type metadata accessor for UnsupportedAllowedNotificationsPickerView();
  MEMORY[0x24C250160](*(a1 + *(v4 + 36)), *(a1 + *(v4 + 36) + 8));
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();

  sub_24B8F5E3C();
  v5 = sub_24BAA93CC();
  v7 = v6;
  v9 = v8;
  sub_24BAA989C();
  v10 = sub_24BAA933C();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_24B900910(v5, v7, v9 & 1);

  *a2 = 0x403E000000000000;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14 & 1;
  *(a2 + 40) = v16;
  *(a2 + 48) = 0x403E000000000000;
  *(a2 + 56) = 0;
  sub_24B8F319C(v10, v12, v14 & 1);

  sub_24B900910(v10, v12, v14 & 1);
}

uint64_t sub_24B97E1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for UnsupportedAllowedNotificationsPickerView();
  if (*(a1 + *(v3 + 20)))
  {
    v4 = (a1 + *(v3 + 36));
    v5 = *v4;
    v6 = v4[1];

    sub_24B97E488(v7, v5, v6);

    sub_24B8F5E3C();
    v8 = sub_24BAA93CC();
    v10 = v9;
    LOBYTE(v6) = v11;
    sub_24BAA989C();
    v12 = sub_24BAA933C();
    v14 = v13;
    v16 = v15;

    sub_24B900910(v8, v10, v6 & 1);

    sub_24BAA927C();
    v17 = sub_24BAA939C();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_24B900910(v12, v14, v16 & 1);

    v24 = sub_24BAA90AC();
    v51 = v21 & 1;
    v48 = 1;
    *&v32 = v17;
    *(&v32 + 1) = v19;
    LOBYTE(v33) = v21 & 1;
    *(&v33 + 1) = *v50;
    DWORD1(v33) = *&v50[3];
    *(&v33 + 1) = v23;
    v34[0] = v24;
    *&v34[4] = *&v49[3];
    *&v34[1] = *v49;
    memset(&v34[8], 0, 32);
    v34[40] = 1;
    *(v38 + 9) = *&v34[25];
    v37 = *v34;
    v38[0] = *&v34[16];
    v35 = v32;
    v36 = v33;
    v31[80] = 0;
    v25 = v32;
    v26 = v33;
    v27 = v38[1];
    *(a2 + 48) = *&v34[16];
    *(a2 + 64) = v27;
    v28 = v37;
    *(a2 + 16) = v26;
    *(a2 + 32) = v28;
    *a2 = v25;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    v39[0] = v17;
    v39[1] = v19;
    v40 = v21 & 1;
    *&v41[3] = *&v50[3];
    *v41 = *v50;
    v42 = v23;
    v43 = v24;
    *&v44[3] = *&v49[3];
    *v44 = *v49;
    v45 = 0u;
    v46 = 0u;
    v47 = 1;
    sub_24B8F3208(&v32, v31, &qword_27F0654E8);
    return sub_24B8F35E4(v39, &qword_27F0654E8);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B980F80(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B97E488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B984444();
  v5 = sub_24B8D7188();

  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [v5 mode];

  v7 = [v6 semanticType];
  if (v7 <= 3)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        sub_24BAAA5FC();

        MEMORY[0x24C250160](a2, a3);
        v8 = "_HEAD_SLEEP_FOOTER";
        v9 = 0xD00000000000001BLL;
        goto LABEL_23;
      }

      if (v7 == 1)
      {
        sub_24BAAA5FC();

        MEMORY[0x24C250160](a2, a3);
        v8 = "_HEAD_DRIVING_FOOTER";
        v9 = 0xD000000000000012;
LABEL_23:
        v20 = v8 | 0x8000000000000000;
LABEL_27:
        MEMORY[0x24C250160](v9, v20);
        if (qword_27F063110 != -1)
        {
          swift_once();
        }

        v19 = sub_24BAA7C2C();
        goto LABEL_30;
      }

      goto LABEL_15;
    }

    sub_24BAAA5FC();

    MEMORY[0x24C250160](a2, a3);
    if (v7 == 2)
    {
      v10 = "_HEAD_DRIVING_FOOTER";
    }

    else
    {
      v10 = "_HEAD_FITNESS_FOOTER";
    }

LABEL_26:
    v20 = (v10 - 32) | 0x8000000000000000;
    v9 = 0xD000000000000014;
    goto LABEL_27;
  }

  if (v7 <= 5)
  {
    sub_24BAAA5FC();

    MEMORY[0x24C250160](a2, a3);
    if (v7 == 4)
    {
      v8 = "_HEAD_PERSONAL_FOOTER";
      v9 = 0xD000000000000011;
    }

    else
    {
      v8 = "_HEAD_READING_FOOTER";
      v9 = 0xD000000000000015;
    }

    goto LABEL_23;
  }

  if (v7 == 6)
  {
    sub_24BAAA5FC();

    MEMORY[0x24C250160](a2, a3);
    v10 = "_HEAD_READING_FOOTER";
    goto LABEL_26;
  }

  if (v7 == 7)
  {
    sub_24BAAA5FC();

    MEMORY[0x24C250160](a2, a3);
    v8 = "exclamationmark.triangle.fill";
    v9 = 0xD000000000000013;
    goto LABEL_23;
  }

LABEL_15:
  sub_24BAAA5FC();

  MEMORY[0x24C250160](a2, a3);
  MEMORY[0x24C250160](0x4F465F444145485FLL, 0xEF40255F5245544FLL);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24BAAD5B0;
  sub_24B984444();
  v12 = sub_24B8D7188();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 mode];

    v15 = [v14 name];
    v16 = sub_24BAAA01C();
    v18 = v17;
  }

  else
  {

    v16 = 0;
    v18 = 0xE000000000000000;
  }

  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_24B8F6A20();
  *(v11 + 32) = v16;
  *(v11 + 40) = v18;
  v19 = sub_24BAA9FEC();

LABEL_30:

  return v19;
}

double sub_24B97EAC4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24BAA8AAC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066788);
  sub_24B97EB5C(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = sub_24BAA90BC();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066708) + 36);
  *v5 = a1;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_24B97EB5C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066790);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = sub_24BAA8BCC();
  v19 = 1;
  sub_24B97EE34(a1, &v31);
  v24 = *&v32[48];
  v25 = *&v32[64];
  v26 = v32[80];
  v20 = v31;
  v21 = *v32;
  v22 = *&v32[16];
  v23 = *&v32[32];
  v27[0] = v31;
  v27[1] = *v32;
  v27[2] = *&v32[16];
  v27[3] = *&v32[32];
  v27[4] = *&v32[48];
  v27[5] = *&v32[64];
  v28 = v32[80];
  sub_24B8F3208(&v20, &v29, &qword_27F066798);
  sub_24B8F35E4(v27, &qword_27F066798);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[7] = v20;
  *&v18[23] = v21;
  v18[103] = v26;
  *&v18[39] = v22;
  v11 = v19;
  *v9 = sub_24BAA8BDC();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0667A0);
  sub_24B97F16C(a1, &v9[*(v12 + 44)]);
  sub_24B8F3208(v9, v7, &qword_27F066790);
  *(&v30[5] + 1) = *&v18[80];
  *(&v30[4] + 1) = *&v18[64];
  *(&v30[3] + 1) = *&v18[48];
  *(&v30[1] + 1) = *&v18[16];
  v29 = v10;
  LOBYTE(v30[0]) = v11;
  *(&v30[6] + 1) = *&v18[96];
  *(v30 + 1) = *v18;
  *(&v30[2] + 1) = *&v18[32];
  v13 = v30[4];
  a2[4] = v30[3];
  a2[5] = v13;
  a2[6] = v30[5];
  *(a2 + 105) = *(&v30[5] + 9);
  v14 = v30[0];
  *a2 = v29;
  a2[1] = v14;
  v15 = v30[2];
  a2[2] = v30[1];
  a2[3] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0667A8);
  sub_24B8F3208(v7, a2 + *(v16 + 48), &qword_27F066790);
  sub_24B8F3208(&v29, &v31, &qword_27F0667B0);
  sub_24B8F35E4(v9, &qword_27F066790);
  sub_24B8F35E4(v7, &qword_27F066790);
  *&v32[49] = *&v18[48];
  *&v32[65] = *&v18[64];
  v33 = *&v18[80];
  *&v32[1] = *v18;
  *&v32[17] = *&v18[16];
  v31 = v10;
  v32[0] = v11;
  v34 = *&v18[96];
  *&v32[33] = *&v18[32];
  return sub_24B8F35E4(&v31, &qword_27F0667B0);
}

uint64_t sub_24B97EE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27[-v5 - 8];
  v7 = sub_24BAA8B9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v26 = sub_24BAA994C();
  sub_24B97CAE8(v10);
  sub_24BAA8B8C();
  (*(v8 + 8))(v10, v7);
  v11 = sub_24BAA919C();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = sub_24BAA91FC();
  sub_24B8F35E4(v6, &qword_27F063CD8);
  KeyPath = swift_getKeyPath();
  v14 = *(a1 + *(type metadata accessor for UnsupportedAllowedNotificationsPickerView() + 32));
  v15 = swift_getKeyPath();

  LOBYTE(v6) = sub_24BAA90EC();
  sub_24BAA828C();
  v48 = 0;
  v16 = v26;
  *&v28 = v26;
  *(&v28 + 1) = KeyPath;
  *&v29 = v12;
  *(&v29 + 1) = v15;
  *&v30 = v14;
  BYTE8(v30) = v6;
  HIDWORD(v30) = *(v49 + 3);
  *(&v30 + 9) = v49[0];
  *&v31 = v17;
  *(&v31 + 1) = v18;
  *&v32 = v19;
  *(&v32 + 1) = v20;
  v33 = 0;
  v35 = v29;
  v34 = v28;
  LOBYTE(v39) = 0;
  v38 = v32;
  v37 = v31;
  v36 = v30;
  v27[88] = 1;
  v21 = v29;
  *a2 = v28;
  *(a2 + 16) = v21;
  v22 = v36;
  v23 = v38;
  v24 = v39;
  *(a2 + 48) = v37;
  *(a2 + 64) = v23;
  *(a2 + 32) = v22;
  *(a2 + 80) = v24;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v40[0] = v16;
  v40[1] = KeyPath;
  v40[2] = v12;
  v40[3] = v15;
  v40[4] = v14;
  v41 = v6;
  *&v42[3] = *(v49 + 3);
  *v42 = v49[0];
  v43 = v17;
  v44 = v18;
  v45 = v19;
  v46 = v20;
  v47 = 0;
  sub_24B8F3208(&v28, v27, &qword_27F066810);
  return sub_24B8F35E4(v40, &qword_27F066810);
}

uint64_t sub_24B97F16C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v83 = a1;
  v95 = a2;
  v94 = sub_24BAA8DEC();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for UnsupportedAllowedNotificationsPickerView();
  v78 = *(v82 - 1);
  MEMORY[0x28223BE20](v82);
  v79 = v3;
  v80 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0667B8);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v102 = &v76 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0667C0);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v76 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0667C8);
  v91 = *(v92 - 8);
  v6 = MEMORY[0x28223BE20](v92);
  v104 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v76 - v8;
  v107 = sub_24BAA9BDC();
  v89 = *(v107 - 8);
  v9 = MEMORY[0x28223BE20](v107);
  v106 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v105 = &v76 - v11;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v76 = qword_27F077088;
  v109 = sub_24BAA7C2C();
  v110 = v12;
  sub_24B8F5E3C();
  v13 = sub_24BAA93CC();
  v15 = v14;
  v17 = v16;
  sub_24BAA928C();
  v18 = sub_24BAA939C();
  v99 = v19;
  v100 = v18;
  v81 = v20;
  v101 = v21;

  sub_24B900910(v13, v15, v17 & 1);

  v109 = sub_24BAA7C2C();
  v110 = v22;
  v23 = sub_24BAA93CC();
  v25 = v24;
  v27 = v26;
  sub_24BAA924C();
  v28 = sub_24BAA939C();
  v30 = v29;
  v32 = v31;

  sub_24B900910(v23, v25, v27 & 1);

  sub_24BAA989C();
  v97 = sub_24BAA933C();
  v96 = v33;
  v77 = v34;
  v98 = v35;

  sub_24B900910(v28, v30, v32 & 1);

  sub_24BAA9BCC();
  v36 = v83;
  v37 = v80;
  sub_24B97DB6C(v83, v80);
  v38 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v39 = swift_allocObject();
  sub_24B97DBD4(v37, v39 + v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0667D0);
  sub_24B8F384C(&qword_27F0667D8, &qword_27F0667D0);
  sub_24BAA9A5C();
  v109 = sub_24BAA7C2C();
  v110 = v40;
  v80 = sub_24BAA93CC();
  v79 = v41;
  v43 = v42;
  v78 = v44;
  v45 = v36 + *(v82 + 6);
  v46 = *v45;
  v47 = *(v45 + 8);
  v113 = v46;
  v114 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  v48 = sub_24BAA9A1C();
  v82 = &v76;
  MEMORY[0x28223BE20](v48);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0667E0);
  v83 = sub_24B8F384C(&qword_27F0667E8, &qword_27F0667B8);
  v75 = sub_24B8F384C(&qword_27F0667F0, &qword_27F0667E0);
  v49 = v85;
  v50 = v86;
  v51 = v80;
  v52 = v79;
  v53 = v102;
  sub_24BAA95AC();

  sub_24B900910(v51, v52, v43 & 1);

  (*(v84 + 8))(v53, v49);
  v54 = v90;
  sub_24BAA8DDC();
  v109 = v49;
  v110 = v76;
  v111 = v83;
  v112 = v75;
  swift_getOpaqueTypeConformance2();
  sub_24B980F80(&qword_27F0667F8, MEMORY[0x277CDE0B8]);
  v55 = v103;
  v56 = v88;
  v57 = v94;
  sub_24BAA944C();
  (*(v93 + 8))(v54, v57);
  (*(v87 + 8))(v50, v56);
  LOBYTE(v109) = v81 & 1;
  v113 = 0;
  v108 = v77 & 1;
  v58 = v89;
  v102 = *(v89 + 16);
  (v102)(v106, v105, v107);
  v59 = v91;
  v93 = *(v91 + 16);
  v60 = v92;
  (v93)(v104, v55, v92);
  v61 = v109;
  LODWORD(v90) = v109;
  v62 = v95;
  v63 = v99;
  v64 = v100;
  *v95 = v100;
  v62[1] = v63;
  *(v62 + 16) = v61;
  LOBYTE(v63) = v113;
  v62[3] = v101;
  v62[4] = 0x4014000000000000;
  *(v62 + 40) = v63;
  v65 = v108;
  LODWORD(v94) = v108;
  v66 = v96;
  v62[6] = v97;
  v62[7] = v66;
  *(v62 + 64) = v65;
  v62[9] = v98;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066800);
  (v102)(v62 + *(v67 + 80), v106, v107);
  v68 = v104;
  (v93)(v62 + *(v67 + 96), v104, v60);
  v69 = v99;
  sub_24B8F319C(v64, v99, v90);

  v70 = v97;
  sub_24B8F319C(v97, v66, v94);
  v71 = *(v59 + 8);

  v71(v103, v60);
  v72 = *(v58 + 8);
  v73 = v107;
  v72(v105, v107);
  v71(v68, v60);
  v72(v106, v73);
  sub_24B900910(v70, v96, v108);

  sub_24B900910(v100, v69, v109);
}

uint64_t sub_24B97FDA4()
{
  type metadata accessor for UnsupportedAllowedNotificationsPickerView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  return sub_24BAA9A0C();
}

__n128 sub_24B97FE18@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_24BAA8AAC();
  sub_24B97FE88(&v8);
  v3 = v9;
  v4 = v10;
  v5 = v11;
  v6 = v12;
  result = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_24B97FE88@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();
  v2 = sub_24BAA93CC();
  v4 = v3;
  *a1 = v2;
  *(a1 + 8) = v3;
  v6 = v5 & 1;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_24B8F319C(v2, v3, v5 & 1);

  sub_24B900910(v2, v4, v6);
}

uint64_t sub_24B97FF98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = sub_24BAA83FC();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UnsupportedAllowedNotificationsPickerView();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064130);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  v45 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v50 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v53 = &v42 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064188);
  v48 = *(v18 - 8);
  v49 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v52 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - v21;
  sub_24BAA824C();
  v23 = sub_24BAA826C();
  v24 = *(v23 - 8);
  v44 = *(v24 + 56);
  v42 = v24 + 56;
  (v44)(v10, 0, 1, v23);
  sub_24B97DB6C(a1, &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v26 = swift_allocObject();
  sub_24B97DBD4(&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  sub_24BAA9A4C();
  sub_24BAA83EC();
  v27 = sub_24BAA845C();
  sub_24BAA846C();
  sub_24BAA846C();
  if (sub_24BAA846C() != v27)
  {
    sub_24BAA846C();
  }

  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA953C();
  (*(v46 + 8))(v5, v47);
  v28 = v45;
  v46 = *(v45 + 8);
  v47 = v45 + 8;
  (v46)(v17, v11);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v54 = sub_24BAA7C2C();
  v55 = v29;
  sub_24BAA825C();
  (v44)(v10, 0, 1, v23);
  sub_24B8F5E3C();
  v30 = v53;
  sub_24BAA9A6C();
  v32 = v48;
  v31 = v49;
  v33 = *(v48 + 16);
  v34 = v52;
  v44 = v22;
  v33(v52, v22, v49);
  v35 = *(v28 + 16);
  v36 = v50;
  v35(v50, v30, v11);
  v37 = v51;
  v33(v51, v34, v31);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066808);
  v35(&v37[*(v38 + 48)], v36, v11);
  v39 = v46;
  (v46)(v53, v11);
  v40 = *(v32 + 8);
  v40(v44, v31);
  v39(v36, v11);
  return v40(v52, v31);
}

uint64_t sub_24B9805F0()
{
  type metadata accessor for UnsupportedAllowedNotificationsPickerView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  return sub_24BAA9A0C();
}

uint64_t sub_24B9806B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();
  result = sub_24BAA93CC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_24B980790()
{
  result = qword_27F066710;
  if (!qword_27F066710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066708);
    sub_24B8F384C(&qword_27F066718, &qword_27F066720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066710);
  }

  return result;
}

uint64_t sub_24B980848@<X0>(uint64_t a1@<X8>)
{
  result = sub_24BAA89CC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B9808AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24BAA890C();
  *a1 = result;
  return result;
}

uint64_t sub_24B980948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066780);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24B8F3208(a1, &v5 - v3, &qword_27F066780);
  return sub_24BAA88FC();
}

uint64_t sub_24B9809F4@<X0>(uint64_t a1@<X8>)
{
  result = sub_24BAA89CC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B980A58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24BAA890C();
  *a1 = result;
  return result;
}

uint64_t sub_24B980AAC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x24C24E7F0]();
  *a1 = result;
  return result;
}

uint64_t sub_24B980AD8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x24C24E7F0]();
  *a1 = result;
  return result;
}

uint64_t sub_24B980B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B980C6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24B980D34()
{
  sub_24B980E74();
  if (v0 <= 0x3F)
  {
    sub_24B8F47B4();
    if (v1 <= 0x3F)
    {
      sub_24B980ECC(319, &qword_27F063A40, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24B980ECC(319, &qword_27F063BA8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_24B980ECC(319, &qword_27F064968, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B980E74()
{
  if (!qword_27F063A30)
  {
    sub_24BAA8B9C();
    v0 = sub_24BAA82EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F063A30);
    }
  }
}

void sub_24B980ECC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24B980F80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_8()
{
  v1 = *(type metadata accessor for UnsupportedAllowedNotificationsPickerView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24BAA8B9C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B98114C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for UnsupportedAllowedNotificationsPickerView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24B981258(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_24BAAA4CC();
    v5 = v4;
    v6 = sub_24BAAA58C();
    v8 = v7;
    v9 = MEMORY[0x24C2505B0](v3, v5, v6, v7);
    sub_24B8F3830(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_24B8F3830(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_24BAAA49C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_24B9A0078(v3, v5, v2 != 0, a1, &qword_27F066AB0);
  v12 = v11;
  sub_24B8F3830(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_24B981384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0646E8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24B9A1B54(a3, v25 - v10);
  v12 = sub_24BAAA1DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24B8F35E4(v11, &qword_27F0646E8);
  }

  else
  {
    sub_24BAAA1CC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24BAAA17C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24BAAA05C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24B8F35E4(a3, &qword_27F0646E8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24B8F35E4(a3, &qword_27F0646E8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}