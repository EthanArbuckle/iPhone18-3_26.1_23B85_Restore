uint64_t sub_228337B88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228337BF8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_228337BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ScheduleStepViewController()
{
  result = qword_27D827F90;
  if (!qword_27D827F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228337CF4()
{
  v1 = *(*(v0 + qword_27D824D88) + 16);
  v2 = qword_27D828F30;
  swift_beginAccess();
  v4 = *(v1 + v2);
  sub_22817D780();
  sub_228337E40();
  return sub_228391990();
}

id sub_228337E00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleStepViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_228337E40()
{
  result = qword_27D8237F8;
  if (!qword_27D8237F8)
  {
    sub_22817D780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8237F8);
  }

  return result;
}

void *sub_228337EB8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for MedicationsDayHistoryItem();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v52 = v3;
  v53 = a3;
  v47 = v10;
  v12 = type metadata accessor for MedicationsDayHistoryHeaderItem();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  sub_22838F490();
  v16 = (v15 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier);
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_228338A78(&qword_27D823328, type metadata accessor for MedicationsDayHistoryHeaderCell);
  *v16 = sub_22838FBB0();
  v16[1] = v17;
  *(v15 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext) = a2;
  v18 = MEMORY[0x277D84F90];
  v19 = sub_228198710(0, 1, 1, MEMORY[0x277D84F90]);
  v21 = v19[2];
  v20 = v19[3];
  v22 = v21 + 1;
  if (v21 >= v20 >> 1)
  {
LABEL_13:
    v19 = sub_228198710((v20 > 1), v22, 1, v19);
  }

  v58 = v12;
  v59 = sub_228338A78(&qword_27D827FA0, type metadata accessor for MedicationsDayHistoryHeaderItem);
  *&v57 = v15;
  v19[2] = v22;
  sub_22816DFFC(&v57, &v19[5 * v21 + 4]);
  v60 = v19;
  v56 = v18;
  v18 = &v56;
  sub_2281C9DB4(0, v11, 0);
  v21 = a1 + 32;
  a1 = v56;
  v46 = type metadata accessor for MedicationsDayHistoryCell();
  v20 = *(v52 + *v53);
  v45 = v20;
  do
  {
    if (!v11)
    {
      __break(1u);
      goto LABEL_13;
    }

    v53 = v11;
    sub_228180FB0(v21, &v57);
    sub_228180FB0(&v57, v55);
    sub_228338A14();
    sub_22819A174(0);
    v23 = swift_dynamicCast();
    v24 = v54;
    if (!v23)
    {
      v24 = 0;
    }

    v51 = v24;
    v25 = v58;
    v26 = v59;
    __swift_project_boxed_opaque_existential_0(&v57, v58);
    v27 = (*(v26 + 8))(v25, v26);
    v49 = v28;
    v50 = v27;
    v52 = v21;
    v29 = v58;
    v30 = v59;
    __swift_project_boxed_opaque_existential_0(&v57, v58);
    v48 = (*(v30 + 16))(v29, v30);
    v15 = v58;
    v12 = v59;
    __swift_project_boxed_opaque_existential_0(&v57, v58);
    v31 = v7;
    v32 = *(v12 + 24);
    v33 = *(v7 + 36);
    v34 = a2;
    v35 = v45;
    v22 = v47;
    v32(v15, v12);
    sub_22838F490();
    v36 = (v22 + *(v7 + 44));
    sub_228338A78(&qword_27D8274F8, type metadata accessor for MedicationsDayHistoryCell);
    v18 = v46;
    *v36 = sub_22838FBB0();
    v36[1] = v37;
    v7 = v31;
    v38 = (v22 + v31[5]);
    v39 = v49;
    *v38 = v50;
    v38[1] = v39;
    *(v22 + v31[6]) = v48;
    *(v22 + v31[7]) = v51;
    *(v22 + v31[8]) = v35;
    a2 = v34;
    *(v22 + v31[10]) = v34;
    __swift_destroy_boxed_opaque_existential_0(&v57);
    v56 = a1;
    v41 = *(a1 + 16);
    v40 = *(a1 + 24);
    v19 = (v41 + 1);
    if (v41 >= v40 >> 1)
    {
      v18 = &v56;
      sub_2281C9DB4((v40 > 1), v41 + 1, 1);
      a1 = v56;
    }

    v58 = v31;
    v59 = sub_228338A78(&qword_27D824D28, type metadata accessor for MedicationsDayHistoryItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v57);
    sub_228338918(v22, boxed_opaque_existential_1);
    *(a1 + 16) = v19;
    sub_22816DFFC(&v57, a1 + 40 * v41 + 32);
    sub_22833897C(v22);
    v21 = v52 + 40;
    v11 = v53 - 1;
  }

  while (v53 != 1);
  sub_2281D5710(a1);
  return v60;
}

void *HistoryItemsProviderDataSource.makeHistoryItems(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = type metadata accessor for MedicationsDayHistoryItem();
  v7 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = *(a3 + 16);
  v31[1] = v3;
  v12 = a2;
  v13 = a3;
  v11(&v34, a2, a3);
  v14 = v34;
  v15 = type metadata accessor for MedicationsDayHistoryHeaderItem();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  sub_22838F490();
  v19 = (v18 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier);
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_228338A78(&qword_27D823328, type metadata accessor for MedicationsDayHistoryHeaderCell);
  *v19 = sub_22838FBB0();
  v19[1] = v20;
  *(v18 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext) = v14;
  v21 = sub_228198710(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = v21[2];
  v22 = v21[3];
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    v21 = sub_228198710((v22 > 1), v24, 1, v21);
  }

  v35 = v15;
  v36 = sub_228338A78(&qword_27D827FA0, type metadata accessor for MedicationsDayHistoryHeaderItem);
  *&v34 = v18;
  v21[2] = v24;
  sub_22816DFFC(&v34, &v21[5 * v23 + 4]);
  v37 = v21;
  v33 = MEMORY[0x277D84F90];
  sub_2281C9DB4(0, v10, 0);
  v25 = v33;
  v26 = (a1 + 32);
  do
  {
    sub_2283386E8(v26, v12, v13, v9);
    v33 = v25;
    v28 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_2281C9DB4((v27 > 1), v28 + 1, 1);
      v25 = v33;
    }

    v35 = v32;
    v36 = sub_228338A78(&qword_27D824D28, type metadata accessor for MedicationsDayHistoryItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
    sub_228338918(v9, boxed_opaque_existential_1);
    *(v25 + 16) = v28 + 1;
    sub_22816DFFC(&v34, v25 + 40 * v28 + 32);
    sub_22833897C(v9);
    v26 += 5;
    --v10;
  }

  while (v10);
  sub_2281D5710(v25);
  return v37;
}

uint64_t sub_2283386E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_228180FB0(a1, v32);
  sub_228338A14();
  sub_22819A174(0);
  v8 = swift_dynamicCast();
  v9 = v31;
  if (!v8)
  {
    v9 = 0;
  }

  v30 = v9;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v10);
  v12 = (*(v11 + 8))(v10, v11);
  v28 = v13;
  v29 = v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v14);
  v27 = (*(v15 + 16))(v14, v15);
  v26 = (*(a3 + 8))(a2, a3);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v16);
  v18 = *(v17 + 24);
  v19 = type metadata accessor for MedicationsDayHistoryItem();
  v20 = a4 + v19[9];
  v18(v16, v17);
  (*(a3 + 16))(v32, a2, a3);
  v21 = v32[0];
  sub_22838F490();
  v22 = (a4 + v19[11]);
  type metadata accessor for MedicationsDayHistoryCell();
  sub_228338A78(&qword_27D8274F8, type metadata accessor for MedicationsDayHistoryCell);
  result = sub_22838FBB0();
  *v22 = result;
  v22[1] = v24;
  v25 = (a4 + v19[5]);
  *v25 = v29;
  v25[1] = v28;
  *(a4 + v19[6]) = v27;
  *(a4 + v19[7]) = v30;
  *(a4 + v19[8]) = v26;
  *(a4 + v19[10]) = v21;
  return result;
}

uint64_t sub_228338918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsDayHistoryItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22833897C(uint64_t a1)
{
  v2 = type metadata accessor for MedicationsDayHistoryItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_228338A14()
{
  result = qword_27D8247C8;
  if (!qword_27D8247C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8247C8);
  }

  return result;
}

uint64_t sub_228338A78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228338AF4(uint64_t (*a1)(uint64_t, void))
{
  v3 = [v1 localizedOntologyEducationContent];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
  v6 = a1(v5, MEMORY[0x277D12530]);

  return v6;
}

uint64_t _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE16doseFormStrengthSSSgvg_0()
{
  v0 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8doseFormSSSgvg_0();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8strengthSSSgvg_0();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_22833BD7C(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_228397F30;
      v9 = MEMORY[0x277D837D0];
      *(v8 + 56) = MEMORY[0x277D837D0];
      v10 = sub_22818E210();
      *(v8 + 32) = v2;
      *(v8 + 40) = v3;
      *(v8 + 96) = v9;
      *(v8 + 104) = v10;
      *(v8 + 64) = v10;
      *(v8 + 72) = v6;
      *(v8 + 80) = v7;
      v11 = sub_22838F0C0();
      if (*(v8 + 16))
      {
        v12 = sub_228391FD0();
      }

      else
      {
        v12 = v11;
      }

      return v12;
    }
  }

  result = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8doseFormSSSgvg_0();
  if (!v14)
  {
    return _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8strengthSSSgvg_0();
  }

  return result;
}

BOOL HKMedicationUserDomainConcept.isOntologyBacked.getter()
{
  v1 = [v0 firstOntologyCoding];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id HKMedicationUserDomainConcept.educationContentProviding.getter@<X0>(void *a1@<X8>)
{
  a1[3] = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  a1[4] = sub_22818C470(&qword_27D827FA8, &qword_280DDB9E0, 0x277D115B8);
  *a1 = v3;

  return v3;
}

uint64_t HKMedicationUserDomainConcept.hasEducation.getter()
{
  v1 = [v0 localizedOntologyEducationContent];
  if (v1)
  {
    v2 = v1;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    v3 = sub_22838FAA0();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id HKMedicationUserDomainConcept.attributions.getter()
{
  result = [v0 localizedOntologyEducationContent];
  if (result)
  {
    v2 = result;
    v3 = [result primarySection];

    if (v3)
    {
      sub_228392A90();

      sub_228231DFC();
      sub_228339034(&qword_27D825080, sub_228231DFC);
      v4 = sub_228391F90();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_228339034(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HKMedicationUserDomainConcept.isPregnancyDescriptionCritical.getter()
{
  sub_22833BD28(0, &unk_280DDBD10, MEMORY[0x277D11720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  sub_228392A10();
  v4 = sub_228390F60();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_22833BE54(v3, &unk_280DDBD10, MEMORY[0x277D11720]);
    v6 = 0;
  }

  else
  {
    v6 = sub_228390F40();
    (*(v5 + 8))(v3, v4);
  }

  return v6 & 1;
}

uint64_t HKMedicationUserDomainConcept.isLactationDescriptionCritical.getter()
{
  sub_22833BD28(0, &unk_280DDBD10, MEMORY[0x277D11720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  sub_228392A10();
  v4 = sub_228390F60();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_22833BE54(v3, &unk_280DDBD10, MEMORY[0x277D11720]);
    return 2;
  }

  else
  {
    v7 = sub_228390F50();
    (*(v5 + 8))(v3, v4);
    return v7 & 1;
  }
}

uint64_t HKMedicationUserDomainConcept.uniqueIdentifier.getter()
{
  v0 = sub_22838F4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F490();
  v5 = sub_22838F450();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_2283393D0()
{
  v1 = [*v0 localizedOntologyEducationContent];
  if (v1)
  {
    v2 = v1;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    v3 = sub_22838FAA0();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_228339474()
{
  v2 = *v0;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  return sub_228390F20();
}

uint64_t sub_2283394E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v5 = [*v3 localizedOntologyEducationContent];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
  v8 = a3(v7, MEMORY[0x277D12530]);

  return v8;
}

uint64_t sub_228339598()
{
  sub_22833BD28(0, &unk_280DDBD10, MEMORY[0x277D11720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *v0;
  sub_228392A10();
  v6 = sub_228390F60();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_22833BE54(v4, &unk_280DDBD10, MEMORY[0x277D11720]);
    v8 = 0;
  }

  else
  {
    v8 = sub_228390F40();
    (*(v7 + 8))(v4, v6);
  }

  return v8 & 1;
}

uint64_t sub_2283396F0()
{
  sub_22833BD28(0, &unk_280DDBD10, MEMORY[0x277D11720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *v0;
  sub_228392A10();
  v6 = sub_228390F60();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_22833BE54(v4, &unk_280DDBD10, MEMORY[0x277D11720]);
    return 2;
  }

  else
  {
    v9 = sub_228390F50();
    (*(v7 + 8))(v4, v6);
    return v9 & 1;
  }
}

uint64_t sub_228339854()
{
  v0 = sub_22838F4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F490();
  v5 = sub_22838F450();
  (*(v1 + 8))(v4, v0);
  return v5;
}

BOOL sub_22833993C()
{
  v1 = [*v0 firstOntologyCoding];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id sub_2283399F0@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  a1[3] = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  a1[4] = sub_22818C470(&qword_27D827FA8, &qword_280DDB9E0, 0x277D115B8);
  *a1 = v4;

  return v4;
}

uint64_t MedicationCompactEducationDataSource.__allocating_init(with:analyticsManager:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return MedicationCompactEducationDataSource.init(with:analyticsManager:)(a1, a2);
}

uint64_t MedicationCompactEducationDataSource.init(with:analyticsManager:)(uint64_t a1, uint64_t a2)
{
  v5 = qword_27D827FB0;
  *(v2 + qword_27D827FB0) = 0;
  *(v2 + qword_27D827FB8) = MEMORY[0x277D84FA0];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v6 = sub_22838F0C0();
  v7 = (v2 + qword_27D827FC0);
  *v7 = v6;
  v7[1] = v8;
  v9 = *(v2 + v5);
  *(v2 + v5) = a1;

  *(v2 + qword_27D827FC8) = a2;

  v10 = sub_22838F920();

  sub_228339CD4(a1);
  sub_228391870();
  sub_22833A7D8(v12, v10);

  return v10;
}

uint64_t MedicationCompactEducationDataSource.__allocating_init(with:analyticsManager:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_22833BA48(a1, a2);

  return v7;
}

uint64_t MedicationCompactEducationDataSource.init(with:analyticsManager:)(uint64_t *a1, uint64_t a2)
{
  v2 = sub_22833BA48(a1, a2);

  return v2;
}

uint64_t sub_228339CD4(uint64_t a1)
{
  v19[0] = a1;
  v2 = MEMORY[0x277D85248];
  sub_22833BD28(0, &qword_280DDBAD0, MEMORY[0x277D85248]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v19 - v5;
  sub_228232114();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[2] = a1;
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v13 = sub_228392790();
  v19[5] = v13;
  v14 = sub_228392730();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_2281A65B4();
  sub_228339034(&qword_27D8241C0, sub_2281A65B4);
  sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
  sub_228391A70();
  sub_22833BE54(v6, &qword_280DDBAD0, v2);

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v19[0];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  sub_228339034(&unk_27D8259C0, sub_228232114);

  sub_228391AC0();

  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22833A020()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_228391870();
    sub_22833A7D8(v2, v1);
  }

  return result;
}

uint64_t sub_22833A094(uint64_t a1)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  v7 = sub_228390090();
  *(v8 + 16) = 0x4024000000000000;
  v7(v11, 0);
  v9 = sub_2283900C0();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_22833A1E0()
{
  v1 = *(v0 + qword_27D827FC0 + 8);

  v2 = *(v0 + qword_27D827FC8);

  v3 = *(v0 + qword_27D827FB0);

  v4 = *(v0 + qword_27D827FB8);
}

uint64_t MedicationCompactEducationDataSource.deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v1 = *(v0 + qword_27D827FC0 + 8);

  v2 = *(v0 + qword_27D827FC8);

  v3 = *(v0 + qword_27D827FB0);

  v4 = *(v0 + qword_27D827FB8);

  return v0;
}

uint64_t MedicationCompactEducationDataSource.__deallocating_deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v1 = *(v0 + qword_27D827FC0 + 8);

  v2 = *(v0 + qword_27D827FC8);

  v3 = *(v0 + qword_27D827FB0);

  v4 = *(v0 + qword_27D827FB8);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall MedicationCompactEducationDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_2283904F0();
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  type metadata accessor for MedicationComponentsItemCell();
  sub_228339034(&qword_27D825650, type metadata accessor for MedicationComponentsItemCell);
  sub_2283926B0();
  type metadata accessor for MedicationEducationItemCell();
  sub_228339034(&qword_27D8268F8, type metadata accessor for MedicationEducationItemCell);
  sub_2283926B0();
}

uint64_t sub_22833A494()
{
  sub_2283904F0();
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  type metadata accessor for MedicationComponentsItemCell();
  sub_228339034(&qword_27D825650, type metadata accessor for MedicationComponentsItemCell);
  sub_2283926B0();
  type metadata accessor for MedicationEducationItemCell();
  sub_228339034(&qword_27D8268F8, type metadata accessor for MedicationEducationItemCell);
  return sub_2283926B0();
}

uint64_t MedicationCompactEducationDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_228391590();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v1 + qword_27D827FC0;
  v6 = *(v1 + qword_27D827FC0);
  v7 = *(v5 + 8);

  sub_228391500();
  v8 = sub_22838FB60();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_22838FB50();
  a1[3] = v8;
  result = sub_228339034(&qword_27D823960, MEMORY[0x277D10E18]);
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_22833A6AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_228391590();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (*v1 + qword_27D827FC0);
  v6 = *v5;
  v7 = v5[1];

  sub_228391500();
  v8 = sub_22838FB60();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_22838FB50();
  a1[3] = v8;
  result = sub_228339034(&qword_27D823960, MEMORY[0x277D10E18]);
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_22833A7D8(void *a1, uint64_t a2)
{
  v61 = a2;
  v60 = sub_22838F4A0();
  v59 = *(v60 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22833BD28(0, &qword_27D8259B0, MEMORY[0x277D10F78]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v57 - v7;
  v9 = sub_22838FEF0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v57 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  v72[3] = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v72[4] = &protocol witness table for HKMedicationUserDomainConcept;
  v72[0] = a1;
  sub_228180FB0(v72, v68);
  v20 = a1;
  sub_22832642C(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22833BE54(v8, &qword_27D8259B0, MEMORY[0x277D10F78]);
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v57 = v14;
    v22 = *(v10 + 32);
    v22(v19, v8, v9);
    (*(v10 + 16))(v17, v19, v9);
    v21 = sub_228198AA0(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v21 = sub_228198AA0(v23 > 1, v24 + 1, 1, v21);
    }

    (*(v10 + 8))(v19, v9);
    *(v21 + 2) = v24 + 1;
    v22(&v21[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24], v17, v9);
    v14 = v57;
  }

  sub_2283266DC(1, &v64);
  if (v65)
  {
    sub_22816DFFC(&v64, v67);
    sub_228180FB0(v67, &v64);
    v25 = sub_228198710(0, 1, 1, MEMORY[0x277D84F90]);
    v71 = v25;
    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_228198710((v26 > 1), v27 + 1, 1, v25);
      v71 = v25;
    }

    __swift_destroy_boxed_opaque_existential_0(v67);
    v28 = v65;
    v29 = v66;
    v30 = __swift_mutable_project_boxed_opaque_existential_1(&v64, v65);
    v31 = *(*(v28 - 8) + 64);
    MEMORY[0x28223BE20](v30);
    v33 = &v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v33);
    sub_228199BA4(v27, v33, &v71, v28, v29);
    __swift_destroy_boxed_opaque_existential_0(&v64);
  }

  else
  {
    sub_22833BDE4(&v64, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v25 = MEMORY[0x277D84F90];
  }

  v35 = *(v61 + qword_27D827FC8);
  LOBYTE(v67[0]) = 0;
  sub_228327428(v67, v35, &v64);
  if (v65)
  {
    sub_22816DFFC(&v64, v67);
  }

  else
  {
    sub_22833BDE4(&v64, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    LOBYTE(v64) = 0;
    sub_228326FA8(v67);
  }

  sub_228180FB0(v67, &v64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_228198710(0, v25[2] + 1, 1, v25);
    v71 = v25;
  }

  v38 = v25[2];
  v37 = v25[3];
  if (v38 >= v37 >> 1)
  {
    v25 = sub_228198710((v37 > 1), v38 + 1, 1, v25);
    v71 = v25;
  }

  v39 = v65;
  v40 = v66;
  v41 = __swift_mutable_project_boxed_opaque_existential_1(&v64, v65);
  v42 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v57 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44);
  sub_228199BA4(v38, v44, &v71, v39, v40);
  __swift_destroy_boxed_opaque_existential_0(&v64);
  sub_228326D54(&v62);
  if (!v63)
  {
    v50 = &qword_280DDCD50;
    v51 = &qword_280DDCD60;
    v52 = MEMORY[0x277D10D48];
LABEL_27:
    sub_22833BDE4(&v62, v50, v51, v52);
    goto LABEL_28;
  }

  sub_22816DFFC(&v62, &v64);
  v46 = v69;
  v47 = v70;
  __swift_project_boxed_opaque_existential_0(v68, v69);
  (*(v47 + 48))(&v62, v46, v47);
  if (!v63)
  {
    __swift_destroy_boxed_opaque_existential_0(&v64);
    v50 = &qword_27D825988;
    v51 = &qword_27D825990;
    v52 = MEMORY[0x277D12508];
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_0(&v62, v63);
  v48 = sub_22838F960();
  __swift_destroy_boxed_opaque_existential_0(&v62);
  if (v48)
  {
    sub_228180FB0(&v64, &v62);
    v71 = v25;
    v49 = v25[2];
    if (v49 >= v25[3] >> 1)
    {
      v25 = sub_228198710(1, v49 + 1, 1, v25);
      v71 = v25;
    }

    sub_2282C4FF4(0, 0, 1, &v62);
  }

  __swift_destroy_boxed_opaque_existential_0(&v64);
LABEL_28:
  sub_228194894(v25);

  v53 = v58;
  sub_22838F490();
  sub_22838F450();
  (*(v59 + 8))(v53, v60);
  sub_22838FED0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_228198AA0(0, *(v21 + 2) + 1, 1, v21);
  }

  v55 = *(v21 + 2);
  v54 = *(v21 + 3);
  if (v55 >= v54 >> 1)
  {
    v21 = sub_228198AA0(v54 > 1, v55 + 1, 1, v21);
  }

  *(v21 + 2) = v55 + 1;
  (*(v10 + 32))(&v21[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v55], v14, v9);
  sub_22838F910();
  sub_22838FCD0();

  sub_22838FF50();

  __swift_destroy_boxed_opaque_existential_0(v67);
  sub_228231D60(v68);
  return __swift_destroy_boxed_opaque_existential_0(v72);
}

uint64_t sub_22833B104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v64 = sub_22838F4A0();
  v63 = *(v64 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22833BD28(0, &qword_27D8259B0, MEMORY[0x277D10F78]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v61 - v11;
  v13 = sub_22838FEF0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - v22;
  v76[3] = a3;
  v76[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_228180FB0(v76, v72);
  sub_22832642C(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22833BE54(v12, &qword_27D8259B0, MEMORY[0x277D10F78]);
    v25 = MEMORY[0x277D84F90];
  }

  else
  {
    v61 = v18;
    v26 = *(v14 + 32);
    v26(v23, v12, v13);
    (*(v14 + 16))(v21, v23, v13);
    v25 = sub_228198AA0(0, 1, 1, MEMORY[0x277D84F90]);
    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      v25 = sub_228198AA0(v27 > 1, v28 + 1, 1, v25);
    }

    (*(v14 + 8))(v23, v13);
    *(v25 + 2) = v28 + 1;
    v26(&v25[((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v28], v21, v13);
    v18 = v61;
  }

  sub_2283266DC(1, &v68);
  if (v69)
  {
    sub_22816DFFC(&v68, v71);
    sub_228180FB0(v71, &v68);
    v29 = sub_228198710(0, 1, 1, MEMORY[0x277D84F90]);
    v75 = v29;
    v31 = v29[2];
    v30 = v29[3];
    if (v31 >= v30 >> 1)
    {
      v29 = sub_228198710((v30 > 1), v31 + 1, 1, v29);
      v75 = v29;
    }

    __swift_destroy_boxed_opaque_existential_0(v71);
    v32 = v69;
    v33 = v70;
    v34 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
    v35 = *(*(v32 - 8) + 64);
    MEMORY[0x28223BE20](v34);
    v37 = &v61 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v37);
    sub_228199BA4(v31, v37, &v75, v32, v33);
    __swift_destroy_boxed_opaque_existential_0(&v68);
  }

  else
  {
    sub_22833BDE4(&v68, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v29 = MEMORY[0x277D84F90];
  }

  v39 = *(v65 + qword_27D827FC8);
  LOBYTE(v71[0]) = 0;
  sub_228327428(v71, v39, &v68);
  if (v69)
  {
    sub_22816DFFC(&v68, v71);
  }

  else
  {
    sub_22833BDE4(&v68, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    LOBYTE(v68) = 0;
    sub_228326FA8(v71);
  }

  sub_228180FB0(v71, &v68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_228198710(0, v29[2] + 1, 1, v29);
    v75 = v29;
  }

  v42 = v29[2];
  v41 = v29[3];
  if (v42 >= v41 >> 1)
  {
    v29 = sub_228198710((v41 > 1), v42 + 1, 1, v29);
    v75 = v29;
  }

  v43 = v69;
  v44 = v70;
  v45 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
  v46 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v48 = &v61 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v49 + 16))(v48);
  sub_228199BA4(v42, v48, &v75, v43, v44);
  __swift_destroy_boxed_opaque_existential_0(&v68);
  sub_228326D54(&v66);
  if (!v67)
  {
    v54 = &qword_280DDCD50;
    v55 = &qword_280DDCD60;
    v56 = MEMORY[0x277D10D48];
LABEL_27:
    sub_22833BDE4(&v66, v54, v55, v56);
    goto LABEL_28;
  }

  sub_22816DFFC(&v66, &v68);
  v50 = v73;
  v51 = v74;
  __swift_project_boxed_opaque_existential_0(v72, v73);
  (*(v51 + 48))(&v66, v50, v51);
  if (!v67)
  {
    __swift_destroy_boxed_opaque_existential_0(&v68);
    v54 = &qword_27D825988;
    v55 = &qword_27D825990;
    v56 = MEMORY[0x277D12508];
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_0(&v66, v67);
  v52 = sub_22838F960();
  __swift_destroy_boxed_opaque_existential_0(&v66);
  if (v52)
  {
    sub_228180FB0(&v68, &v66);
    v75 = v29;
    v53 = v29[2];
    if (v53 >= v29[3] >> 1)
    {
      v29 = sub_228198710(1, v53 + 1, 1, v29);
      v75 = v29;
    }

    sub_2282C4FF4(0, 0, 1, &v66);
  }

  __swift_destroy_boxed_opaque_existential_0(&v68);
LABEL_28:
  sub_228194894(v29);

  v57 = v62;
  sub_22838F490();
  sub_22838F450();
  (*(v63 + 8))(v57, v64);
  sub_22838FED0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_228198AA0(0, *(v25 + 2) + 1, 1, v25);
  }

  v59 = *(v25 + 2);
  v58 = *(v25 + 3);
  if (v59 >= v58 >> 1)
  {
    v25 = sub_228198AA0(v58 > 1, v59 + 1, 1, v25);
  }

  *(v25 + 2) = v59 + 1;
  (*(v14 + 32))(&v25[((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v59], v18, v13);
  sub_22838F910();
  sub_22838FCD0();

  sub_22838FF50();

  __swift_destroy_boxed_opaque_existential_0(v71);
  sub_228231D60(v72);
  return __swift_destroy_boxed_opaque_existential_0(v76);
}

uint64_t sub_22833BA48(uint64_t *a1, uint64_t a2)
{
  *(v2 + qword_27D827FB0) = 0;
  *(v2 + qword_27D827FB8) = MEMORY[0x277D84FA0];
  *(v2 + qword_27D827FC8) = a2;
  v4 = qword_280DDCF18;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_22838F0C0();
  v6 = (v2 + qword_27D827FC0);
  *v6 = v5;
  v6[1] = v7;
  v8 = sub_22838F920();
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_0(a1, v9);

  sub_22833B104(v11, v8, v9, v10);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t type metadata accessor for MedicationCompactEducationDataSource()
{
  result = qword_27D827FD8;
  if (!qword_27D827FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of MedicationCompactEducationDataSource.__allocating_init(with:analyticsManager:)()
{
  return (*(v0 + class metadata base offset for MedicationCompactEducationDataSource + 104))();
}

{
  return (*(v0 + class metadata base offset for MedicationCompactEducationDataSource + 112))();
}

void sub_22833BD28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_22833BD7C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2281810DC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22833BDE4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_22833BD7C(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_22833BE54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22833BD28(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22833BEB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22833A020();
}

uint64_t type metadata accessor for MedicationFormsDataSource()
{
  result = qword_27D828000;
  if (!qword_27D828000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22833BF7C()
{
  sub_228340E88(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v14 - v3;
  sub_228340EEC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[2] = *(v0 + qword_27D8252A8);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v11 = sub_228392790();
  v14[5] = v11;
  v12 = sub_228392730();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_228212A9C();
  sub_2283414B8(&qword_27D828030, sub_228212A9C);
  sub_2281A1504();
  sub_228391A70();
  sub_228340468(v4, &qword_280DDBAD0, v14[1]);

  swift_allocObject();
  swift_weakInit();
  sub_2283414B8(&qword_27D828038, sub_228340EEC);
  sub_228391AC0();

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22833C29C()
{
  sub_228340E88(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v14 - v3;
  sub_2283413B0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[2] = *(v0 + qword_27D8252A8);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v11 = sub_228392790();
  v14[5] = v11;
  v12 = sub_228392730();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_2281CC9A0();
  sub_2283414B8(&qword_27D824868, sub_2281CC9A0);
  sub_2281A1504();
  sub_228391A70();
  sub_228340468(v4, &qword_280DDBAD0, v14[1]);

  swift_allocObject();
  swift_weakInit();
  sub_2283414B8(&qword_27D828048, sub_2283413B0);
  sub_228391AC0();

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

void *sub_22833C5BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*(*result + class metadata base offset for MedicationOptionsDataSource + 80))();
    sub_228194894(v2);

    sub_22838FF60();

    v4 = (*(*v1 + class metadata base offset for MedicationOptionsDataSource + 88))(v3);
    sub_228194894(v4);

    sub_22838FF60();

    v6 = (*(*v1 + class metadata base offset for MedicationOptionsDataSource + 96))(v5);
    sub_228194894(v6);

    sub_22838FF60();
  }

  return result;
}

uint64_t sub_22833C75C(uint64_t a1)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_228390040();
  (*(*v1 + class metadata base offset for MedicationOptionsDataSource + 104))(a1);
  if (v11)
  {

    sub_228390010();
    (*(v4 + 8))(v10, v3);
    (*(v4 + 32))(v10, v8, v3);
  }

  (*(*v1 + class metadata base offset for MedicationOptionsDataSource + 112))(a1);
  if (v12)
  {

    sub_228390000();
    (*(v4 + 8))(v10, v3);
    (*(v4 + 32))(v10, v8, v3);
  }

  v13 = sub_228390090();
  *(v14 + 16) = 0;
  v13(v17, 0);
  v15 = sub_2283900C0();
  (*(v4 + 8))(v10, v3);
  return v15;
}

void *sub_22833C9C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_22833D010(a1, a2);
}

uint64_t sub_22833CA0C()
{
  v1 = qword_27D827FF8;
  if (*(v0 + qword_27D827FF8))
  {
    v2 = *(v0 + qword_27D827FF8);
  }

  else
  {
    v2 = sub_22833CA74(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22833CA74(uint64_t a1)
{
  v2 = sub_228390FB0();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228390B70();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = MEMORY[0x277D83D88];
  sub_228340E88(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v31 - v16;
  sub_228340E88(0, &qword_27D828010, type metadata accessor for MedicationSearchItem.Source, v13);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  sub_228340E08(a1 + qword_27D828B70, v17, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v25 = type metadata accessor for MedicationSearchItem(0);
  if ((*(*(v25 - 8) + 48))(v17, 1, v25) == 1)
  {
    sub_228340468(v17, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
    v26 = type metadata accessor for MedicationSearchItem.Source(0);
    (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
    sub_228340468(v24, &qword_27D828010, type metadata accessor for MedicationSearchItem.Source);
  }

  else
  {
    sub_2283404D8(v17, v24, type metadata accessor for MedicationSearchItem.Source);
    sub_228340540(v17, type metadata accessor for MedicationSearchItem);
    v27 = type metadata accessor for MedicationSearchItem.Source(0);
    (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
    sub_2283405A0(v24, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v32;
      (*(v32 + 32))(v12, v22, v6);
      (*(v28 + 16))(v10, v12, v6);
      sub_228390FC0();
      v35 = sub_228390F80();
      swift_getKeyPath();
      sub_228340E88(0, &qword_27D828018, MEMORY[0x277D116A0], MEMORY[0x277D83940]);
      sub_228340CF0();
      v29 = sub_228392150();

      (*(v33 + 8))(v5, v34);
      (*(v28 + 8))(v12, v6);
      return v29;
    }

    sub_228340540(v22, type metadata accessor for MedicationSearchItem.Source);
  }

  return MEMORY[0x277D84F90];
}

BOOL sub_22833CFA8(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  sub_22819DFF4();
  return sub_228392F80() == -1;
}

void *sub_22833D010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v5 = sub_228390C30();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for FormStepResult();
  v8 = *(v52 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v52);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v45 - v12;
  v50 = type metadata accessor for FormStepResult;
  v13 = MEMORY[0x277D83D88];
  sub_228340E88(0, &unk_27D827790, type metadata accessor for FormStepResult, MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  sub_228340E88(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, v13);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v45 - v23;
  *(v3 + qword_27D827FE8) = 0;
  v25 = (v3 + qword_27D827FF0);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v3 + qword_27D829030);
  v27 = *MEMORY[0x277D12788];
  v53 = sub_228392000();
  v54 = v28;

  MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283B4CD0);

  v29 = v54;
  *v26 = v53;
  v26[1] = v29;
  v30 = v51;
  *(v3 + qword_27D827FF8) = 0;
  v31 = v20;
  sub_228340E08(v30, v24, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);

  v32 = sub_228340F48(v24, a2, sub_22833BF7C);

  sub_228391870();
  v33 = v52;
  sub_228340E08(v20, v18, &unk_27D827790, v50);
  if ((*(v8 + 48))(v18, 1, v33) == 1)
  {

    sub_228340468(v30, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  }

  else
  {
    v34 = v49;
    sub_2282F7010(v18, v49);
    v35 = v48;
    sub_2283404D8(v34, v48, type metadata accessor for FormStepResult);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v39 = v45;
      v38 = v46;
      v40 = v47;
      (*(v46 + 32))(v45, v35, v47);
      v36 = sub_228390C10();
      v37 = v41;

      sub_228340468(v30, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
      (*(v38 + 8))(v39, v40);
      sub_228340540(v34, type metadata accessor for FormStepResult);
      sub_228340468(v31, &unk_27D827790, type metadata accessor for FormStepResult);
      goto LABEL_7;
    }

    sub_228340468(v30, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
    sub_228340540(v34, type metadata accessor for FormStepResult);
  }

  sub_228340468(v20, &unk_27D827790, type metadata accessor for FormStepResult);
  v36 = 0;
  v37 = 0;
LABEL_7:
  v42 = (v32 + qword_27D827FF0);
  v43 = *(v32 + qword_27D827FF0 + 8);
  *v42 = v36;
  v42[1] = v37;

  return v32;
}

void *sub_22833D578(unint64_t a1)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 2)
  {
    return sub_22833C75C(a1);
  }

  if (a1 == 2)
  {
    result = sub_22833C75C(2);
    if (result)
    {
      v9 = result;
      v10 = result;
      [v10 contentInsets];
      [v10 setContentInsets_];

      return v9;
    }
  }

  else
  {
    v11 = v5;
    sub_228390040();
    v12 = sub_2283900C0();
    (*(v3 + 8))(v7, v11);
    return v12;
  }

  return result;
}

uint64_t sub_22833D6C0()
{
  v0 = sub_228390C30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22833CA0C();
  swift_weakInit();
  v23 = *(v5 + 16);
  if (v23)
  {
    v6 = 0;
    v21 = v1 + 16;
    v22 = (v1 + 8);
    v7 = MEMORY[0x277D84F90];
    v19 = v5;
    v20 = v0;
    while (v6 < *(v5 + 16))
    {
      (*(v1 + 16))(v4, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6, v0);
      sub_22833DA00(v4, &v24);
      (*v22)(v4, v0);
      if (v25)
      {
        sub_22816DFFC(&v24, v27);
        sub_22816DFFC(v27, &v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_228198710(0, v7[2] + 1, 1, v7);
          v28 = v7;
        }

        v10 = v7[2];
        v9 = v7[3];
        if (v10 >= v9 >> 1)
        {
          v7 = sub_228198710((v9 > 1), v10 + 1, 1, v7);
          v28 = v7;
        }

        v11 = v25;
        v12 = v26;
        v13 = __swift_mutable_project_boxed_opaque_existential_1(&v24, v25);
        v14 = *(*(v11 - 8) + 64);
        MEMORY[0x28223BE20](v13);
        v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v17 + 16))(v16);
        sub_228199BA4(v10, v16, &v28, v11, v12);
        __swift_destroy_boxed_opaque_existential_0(&v24);
        v5 = v19;
        v0 = v20;
      }

      else
      {
        sub_228340468(&v24, &qword_280DDCD50, sub_22817A700);
      }

      if (v23 == ++v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    (*v22)(v4, v0);

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_13:

    swift_weakDestroy();
    return v7;
  }

  return result;
}

uint64_t sub_22833DA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v4 = sub_228390460();
  v92 = *(v4 - 8);
  v93 = v4;
  v5 = *(v92 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_228340E88(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = &v72 - v11;
  v12 = sub_22838FFC0();
  v89 = *(v12 - 8);
  v90 = v12;
  v13 = *(v89 + 64);
  MEMORY[0x28223BE20](v12);
  v91 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_228390C30();
  v87 = *(v88 - 8);
  v15 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v85 = v16;
  v86 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_228391220();
  v17 = *(v84 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v84);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228340E88(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v72 - v23;
  v82 = sub_228391250();
  v81 = *(v82 - 8);
  v25 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_228391590();
  v98 = *(v102 - 8);
  v28 = *(v98 + 64);
  MEMORY[0x28223BE20](v102);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v74 = v17;
    v78 = v7;
    v79 = a2;
    v80 = v2;
    v32 = v83;
    v97 = result;
    v33 = sub_228390C00();
    v35 = v34;
    sub_228391520();

    v76 = v33;
    v77 = v35;
    sub_228391540();
    v73 = objc_opt_self();
    v36 = [v73 labelColor];
    v37 = sub_228391450();
    sub_228391420();
    v37(v101, 0);
    v38 = sub_228390C10();
    v40 = *(v97 + qword_27D827FF0 + 8);
    v41 = v32;
    v95 = v39;
    v96 = v38;
    if (v40 && (v38 != *(v97 + qword_27D827FF0) || v40 != v39))
    {
      sub_228393460();
    }

    v42 = v74;
    v43 = v102;
    v101[3] = v102;
    v101[4] = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
    v45 = *(v98 + 16);
    v75 = v30;
    v45(boxed_opaque_existential_1, v30, v43);
    sub_228340E88(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
    v46 = *(sub_2283912F0() - 8);
    v47 = *(v46 + 72);
    v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_228397F40;
    v74 = v49;
    v50 = sub_228391230();
    (*(*(v50 - 8) + 56))(v24, 1, 1, v50);
    sub_228391240();
    v51 = v84;
    (*(v42 + 104))(v20, *MEMORY[0x277D74A98], v84);
    sub_2283912E0();
    (*(v42 + 8))(v20, v51);
    (*(v81 + 8))(v27, v82);
    v52 = swift_allocObject();
    v53 = v97;
    swift_weakInit();
    v54 = v87;
    v55 = v86;
    v56 = v88;
    (*(v87 + 16))(v86, v41, v88);
    v57 = (*(v54 + 80) + 40) & ~*(v54 + 80);
    v58 = swift_allocObject();
    v60 = v95;
    v59 = v96;
    *(v58 + 2) = v52;
    *(v58 + 3) = v59;
    *(v58 + 4) = v60;
    (*(v54 + 32))(&v58[v57], v55, v56);
    v61 = v90;
    v62 = v91;
    *v91 = 1;
    (*(v89 + 104))(v62, *MEMORY[0x277D10F90], v61);

    v63 = v94;
    sub_228391390();
    v64 = [v73 secondarySystemBackgroundColor];
    sub_228391370();
    v65 = sub_2283913A0();
    (*(*(v65 - 8) + 56))(v63, 0, 1, v65);
    v67 = *(v53 + qword_27D829030);
    v66 = *(v53 + qword_27D829030 + 8);
    v99 = 46;
    v100 = 0xE100000000000000;

    MEMORY[0x22AAB5C80](v76, v77);

    v68 = v99;
    v69 = v100;
    v99 = v67;
    v100 = v66;

    MEMORY[0x22AAB5C80](v68, v69);

    (*(v92 + 104))(v78, *MEMORY[0x277D11140], v93);
    v70 = sub_228390170();
    v71 = v79;
    v79[3] = v70;
    v71[4] = sub_2283414B8(&qword_27D824520, MEMORY[0x277D11000]);
    __swift_allocate_boxed_opaque_existential_1(v71);
    sub_228390160();

    (*(v98 + 8))(v75, v102);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22833E414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_228340E88(0, &unk_27D827790, type metadata accessor for FormStepResult, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19[-v10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = (Strong + qword_27D827FF0);
    v14 = *(Strong + qword_27D827FF0 + 8);
    *v13 = a3;
    v13[1] = a4;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + qword_27D8252A8);

    v17 = sub_228390C30();
    (*(*(v17 - 8) + 16))(v11, a5, v17);
    v18 = type metadata accessor for FormStepResult();
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
    sub_228391850();

    return sub_228340468(v11, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  return result;
}

uint64_t sub_22833E624()
{
  v1 = sub_228390460();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838FFC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228340E88(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  if (*(v0 + qword_27D827FE8) == 1)
  {

    return sub_22833EA50();
  }

  else
  {
    sub_228340E88(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
    v16 = swift_allocObject();
    v22 = v5;
    v17 = v16;
    *(v16 + 16) = xmmword_228397F40;
    v23 = "INGREDIENTS_SUBTITLE_PREFIX";
    sub_22833EF94(v26);
    swift_allocObject();
    swift_weakInit();

    sub_228391390();
    v18 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_228391370();
    v19 = sub_2283913A0();
    (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
    v20 = *(v0 + qword_27D829030 + 8);
    v24 = *(v0 + qword_27D829030);
    v25 = v20;

    MEMORY[0x22AAB5C80](0x726F4D776F68532ELL, 0xE900000000000065);
    (*(v7 + 104))(v10, *MEMORY[0x277D10F98], v6);
    (*(v2 + 104))(v22, *MEMORY[0x277D11140], v1);
    v17[7] = sub_228390170();
    v17[8] = sub_2283414B8(&qword_27D824520, MEMORY[0x277D11000]);
    __swift_allocate_boxed_opaque_existential_1(v17 + 4);
    sub_228390160();

    return v17;
  }
}

uint64_t sub_22833EA50()
{
  v1 = v0;
  v47 = *v0;
  v57 = sub_228390C30();
  v45 = *(v57 - 8);
  v2 = *(v45 + 64);
  v3 = MEMORY[0x28223BE20](v57);
  v56 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59[0] = MEMORY[0x22AAB6620](v3);

  v5 = 0;
  sub_2282F4D1C(v59);

  v6 = v59[0];
  v7 = MEMORY[0x277D84F90];
  v48 = *(v59[0] + 2);
  if (v48)
  {
    v8 = 0;
    v46 = v59[0] + 32;
    v54 = (v45 + 8);
    v55 = v45 + 16;
    v9 = MEMORY[0x277D84F90];
    v44 = v0;
    v43 = v59[0];
    do
    {
      if (v8 >= *(v6 + 2))
      {
        __break(1u);
        goto LABEL_29;
      }

      v53 = *&v46[8 * v8];
      v12 = sub_22833CA0C();
      v13 = *(v12 + 16);
      if (v13)
      {
        v50 = v8;
        v51 = v9;
        v52 = v5;
        v59[0] = v7;
        sub_2281C9E44(0, v13, 0);
        v14 = v59[0];
        v15 = *(v45 + 80);
        v49 = v12;
        v16 = v12 + ((v15 + 32) & ~v15);
        v17 = *(v45 + 72);
        v18 = *(v45 + 16);
        do
        {
          v19 = v56;
          v20 = v57;
          v18(v56, v16, v57);
          v21 = sub_228390C00();
          v23 = v22;
          (*v54)(v19, v20);
          v59[0] = v14;
          v25 = *(v14 + 2);
          v24 = *(v14 + 3);
          if (v25 >= v24 >> 1)
          {
            sub_2281C9E44((v24 > 1), v25 + 1, 1);
            v14 = v59[0];
          }

          *(v14 + 2) = v25 + 1;
          v26 = &v14[16 * v25];
          *(v26 + 4) = v21;
          *(v26 + 5) = v23;
          v16 += v17;
          --v13;
        }

        while (v13);

        v1 = v44;
        v9 = v51;
        v5 = v52;
        v7 = MEMORY[0x277D84F90];
        v6 = v43;
        v8 = v50;
      }

      else
      {

        v14 = v7;
      }

      v59[0] = sub_228392A50();
      v59[1] = v27;
      MEMORY[0x28223BE20](v59[0]);
      *(&v43 - 2) = v59;
      v28 = sub_22830884C(sub_228340C90, (&v43 - 4), v14);

      if ((v28 & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62[0] = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2281C9E64(0, *(v9 + 16) + 1, 1);
          v9 = v62[0];
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2281C9E64((v10 > 1), v11 + 1, 1);
          v9 = v62[0];
        }

        *(v9 + 16) = v11 + 1;
        *(v9 + 8 * v11 + 32) = v53;
      }

      ++v8;
    }

    while (v8 != v48);

    v30 = *(v9 + 16);
    if (!v30)
    {
      goto LABEL_26;
    }
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
    v30 = *(MEMORY[0x277D84F90] + 16);
    if (!v30)
    {
LABEL_26:

      return MEMORY[0x277D84F90];
    }
  }

  v62[0] = v7;
  sub_2281C9DB4(0, v30, 0);
  v31 = 0;
  v32 = v62[0];
  while (v31 < *(v9 + 16))
  {
    v58 = *(v9 + 8 * v31 + 32);
    sub_22833F1B8(&v58, v1, v47, v59);
    v62[0] = v32;
    v34 = *(v32 + 16);
    v33 = *(v32 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_2281C9DB4((v33 > 1), v34 + 1, 1);
    }

    ++v31;
    v35 = v60;
    v36 = v61;
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
    v38 = *(*(v35 - 8) + 64);
    MEMORY[0x28223BE20](v37);
    v40 = &v43 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v40);
    sub_2282E841C(v34, v40, v62, v35, v36);
    __swift_destroy_boxed_opaque_existential_0(v59);
    v32 = v62[0];
    if (v30 == v31)
    {

      return v32;
    }
  }

LABEL_29:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22833EF94@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_228391590();
  v3 = MEMORY[0x277D74C30];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_228391520();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  v4 = [objc_opt_self() tintColor];
  v5 = sub_228391450();
  sub_228391420();
  return v5(v7, 0);
}

uint64_t sub_22833F0B4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_27D827FE8) = 1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v2 = sub_22833EA50();
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    sub_228194894(v2);

    sub_22838FF60();
  }

  return result;
}

uint64_t sub_22833F1B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v68 = a3;
  v87 = a2;
  v82 = a4;
  v5 = sub_228390460();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  MEMORY[0x28223BE20](v5);
  v81 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_228340E88(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = v64 - v11;
  v75 = sub_22838FFC0();
  v74 = *(v75 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v77 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_228391220();
  v72 = *(v73 - 8);
  v14 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v16 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228340E88(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v69 = v64 - v19;
  v71 = sub_228391250();
  v70 = *(v71 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v22 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228340E88(0, &unk_27D827790, type metadata accessor for FormStepResult, v8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v64 - v25;
  v83 = sub_228391590();
  v76 = *(v83 - 8);
  v27 = *(v76 + 64);
  MEMORY[0x28223BE20](v83);
  v29 = v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  sub_228391520();
  sub_228392A60();
  sub_228391540();
  v67 = objc_opt_self();
  v31 = [v67 labelColor];
  v32 = v29;
  v33 = sub_228391450();
  sub_228391420();
  v33(v86, 0);
  v34 = *(v87 + qword_27D8252A8);
  sub_228391870();
  v35 = type metadata accessor for FormStepResult();
  if ((*(*(v35 - 8) + 48))(v26, 1, v35) == 1)
  {
    sub_228340468(v26, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  else
  {
    sub_228234030();
    sub_228340540(v26, type metadata accessor for FormStepResult);
  }

  sub_228393520();
  MEMORY[0x22AAB7100](v30);
  sub_228393570();
  v84 = sub_228393600();
  v85 = v36;
  MEMORY[0x22AAB5C80](0x6D726F665FLL, 0xE500000000000000);
  sub_228393520();
  MEMORY[0x22AAB7100](v30);
  v86[0] = sub_228393570();
  v37 = sub_228393420();
  MEMORY[0x22AAB5C80](v37);

  v68 = v84;
  v66 = v85;
  v38 = v83;
  v86[3] = v83;
  v86[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v86);
  v40 = v76;
  v41 = *(v76 + 16);
  v65 = v32;
  v41(boxed_opaque_existential_1, v32, v38);
  sub_228340E88(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v42 = *(sub_2283912F0() - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_228397F40;
  v64[1] = v45;
  v46 = sub_228391230();
  (*(*(v46 - 8) + 56))(v69, 1, 1, v46);
  sub_228391240();
  v47 = v72;
  v48 = v73;
  (*(v72 + 104))(v16, *MEMORY[0x277D74A98], v73);
  sub_2283912E0();
  (*(v47 + 8))(v16, v48);
  (*(v70 + 8))(v22, v71);
  v49 = swift_allocObject();
  v50 = v87;
  swift_weakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  *(v51 + 24) = v30;
  v52 = v77;
  *v77 = 1;
  (*(v74 + 104))(v52, *MEMORY[0x277D10F90], v75);

  v53 = v80;
  sub_228391390();
  v54 = [v67 secondarySystemBackgroundColor];
  sub_228391370();
  v55 = sub_2283913A0();
  (*(*(v55 - 8) + 56))(v53, 0, 1, v55);
  v57 = *(v50 + qword_27D829030);
  v56 = *(v50 + qword_27D829030 + 8);
  v84 = 46;
  v85 = 0xE100000000000000;

  v58 = sub_228392A60();
  MEMORY[0x22AAB5C80](v58);

  v59 = v84;
  v60 = v85;
  v84 = v57;
  v85 = v56;

  MEMORY[0x22AAB5C80](v59, v60);

  (*(v78 + 104))(v81, *MEMORY[0x277D11140], v79);
  v61 = sub_228390170();
  v62 = v82;
  v82[3] = v61;
  v62[4] = sub_2283414B8(&qword_27D824520, MEMORY[0x277D11000]);
  __swift_allocate_boxed_opaque_existential_1(v62);
  sub_228390160();
  (*(v40 + 8))(v65, v83);
}

uint64_t sub_22833FBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228340E88(0, &unk_27D827790, type metadata accessor for FormStepResult, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14[-v6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = (Strong + qword_27D827FF0);
    v10 = *(Strong + qword_27D827FF0 + 8);
    *v9 = 0;
    v9[1] = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + qword_27D8252A8);

    *v7 = a3;
    v13 = type metadata accessor for FormStepResult();
    swift_storeEnumTagMultiPayload();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    sub_228391850();

    return sub_228340468(v7, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  return result;
}

uint64_t sub_22833FD8C()
{
  v1 = sub_22838F4A0();
  v30 = *(v1 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228390B70();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_228340E88(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  sub_228340E88(0, &qword_27D828010, type metadata accessor for MedicationSearchItem.Source, v9);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  sub_228340E08(v0 + qword_27D828B70, v13, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v21 = type metadata accessor for MedicationSearchItem(0);
  if ((*(*(v21 - 8) + 48))(v13, 1, v21) == 1)
  {
    sub_228340468(v13, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
    v22 = type metadata accessor for MedicationSearchItem.Source(0);
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
    sub_228340468(v20, &qword_27D828010, type metadata accessor for MedicationSearchItem.Source);
  }

  else
  {
    sub_2283404D8(v13, v20, type metadata accessor for MedicationSearchItem.Source);
    sub_228340540(v13, type metadata accessor for MedicationSearchItem);
    v23 = type metadata accessor for MedicationSearchItem.Source(0);
    (*(*(v23 - 8) + 56))(v20, 0, 1, v23);
    sub_2283405A0(v20, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v31;
      (*(v31 + 32))(v8, v18, v5);
      sub_228340E88(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_228397F40;
      sub_228390B50();
      sub_2283408CC();

      v32 = 0x74497265746F6F46;
      v33 = 0xEB000000005F6D65;
      sub_22838F490();
      v26 = sub_22838F450();
      v28 = v27;
      (*(v30 + 8))(v4, v1);
      MEMORY[0x22AAB5C80](v26, v28);

      *(v25 + 56) = sub_228390330();
      *(v25 + 64) = sub_2283414B8(&qword_27D8258C8, MEMORY[0x277D110D8]);
      __swift_allocate_boxed_opaque_existential_1((v25 + 32));
      sub_228390310();
      (*(v24 + 8))(v8, v5);
      return v25;
    }

    sub_228340540(v18, type metadata accessor for MedicationSearchItem.Source);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_228340300()
{
  v1 = *(v0 + qword_27D827FF0 + 8);

  v2 = *(v0 + qword_27D829030 + 8);

  v3 = *(v0 + qword_27D827FF8);
}

uint64_t sub_228340358()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D8252A8);

  sub_228340468(v0 + qword_27D828B70, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v2 = *(v0 + qword_27D8252B0);

  v3 = *(v0 + qword_27D827FF0 + 8);

  v4 = *(v0 + qword_27D829030 + 8);

  v5 = *(v0 + qword_27D827FF8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228340468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228340E88(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2283404D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228340540(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2283405A0(uint64_t a1, uint64_t a2)
{
  sub_228340E88(0, &qword_27D828010, type metadata accessor for MedicationSearchItem.Source, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228340634(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2283406C0(v3);
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

char *sub_2283406D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_228340E88(0, &qword_27D823E20, sub_22819A00C, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_228340874(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_228393460() & 1;
  }
}

id sub_2283408CC()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76968];
  result = [v0 _preferredFontForTextStyle_weight_];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = [v0 _preferredFontForTextStyle_weight_];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v19 = result;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228340E88(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F40;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  *(inited + 64) = v6;
  *(inited + 40) = v3;
  v17 = v5;
  v18 = v3;
  sub_2281A859C(inited);
  swift_setDeallocating();
  sub_228340540(inited + 32, sub_2281D50E8);
  v7 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v8 = sub_228391FC0();

  type metadata accessor for Key(0);
  sub_2283414B8(&qword_280DDBA40, type metadata accessor for Key);
  v9 = sub_228391F10();

  v10 = [v7 initWithString:v8 attributes:{v9, 0xE000000000000000}];

  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_228397F40;
  *(v11 + 32) = v17;
  *(v11 + 64) = v6;
  *(v11 + 40) = v19;
  v12 = v19;
  sub_2281A859C(v11);
  swift_setDeallocating();
  sub_228340540(v11 + 32, sub_2281D50E8);
  v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v14 = sub_228391FC0();
  v15 = sub_228391F10();

  v16 = [v13 initWithString:v14 attributes:v15];

  [v10 appendAttributedString_];
  return v10;
}

uint64_t sub_228340C90(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_228393460() & 1;
  }
}

unint64_t sub_228340CF0()
{
  result = qword_27D828020;
  if (!qword_27D828020)
  {
    sub_228340E88(255, &qword_27D828018, MEMORY[0x277D116A0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828020);
  }

  return result;
}

uint64_t sub_228340D78(uint64_t a1)
{
  v3 = *(sub_228390C30() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_22833E414(a1, v4, v5, v6, v7);
}

uint64_t sub_228340E08(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228340E88(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_228340E88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_228340F48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v28 = a1;
  v29 = a3;
  v4 = v3;
  v7 = sub_22838F4A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_27D8252B0) = MEMORY[0x277D84FA0];
  sub_228340E08(a1, v4 + qword_27D828B70, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  *(v4 + qword_27D8252A8) = a2;
  v30[0] = 0;
  v30[1] = 0xE000000000000000;

  sub_2283931D0();

  strcpy(v30, "MutableArray<");
  HIWORD(v30[1]) = -4864;
  sub_22838F490();
  v12 = sub_22838F450();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  MEMORY[0x22AAB5C80](v12, v14);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v15 = sub_22838FF30();
  sub_228340E88(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v16 = *(sub_22838FEF0() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_228398270;
  v19 = *(*v15 + class metadata base offset for MedicationOptionsDataSource + 80);

  v21 = v19(v20);
  sub_228194894(v21);

  v22 = sub_22838FED0();
  v23 = (*(*v15 + class metadata base offset for MedicationOptionsDataSource + 88))(v22);
  sub_228194894(v23);

  v24 = sub_22838FED0();
  v25 = (*(*v15 + class metadata base offset for MedicationOptionsDataSource + 96))(v24);
  sub_228194894(v25);

  sub_22838FED0();
  sub_22838FF50();

  v29(v26);

  sub_228340468(v28, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  return v15;
}

void sub_2283413EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2283414B8(a4, a5);
    sub_2281A1504();
    v8 = sub_2283917D0();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2283414B8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_228341500()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*(*result + class metadata base offset for MedicationOptionsDataSource + 80))();
    sub_228194894(v2);

    sub_22838FF60();

    v4 = (*(*v1 + class metadata base offset for MedicationOptionsDataSource + 88))(v3);
    sub_228194894(v4);

    sub_22838FF60();

    v6 = (*(*v1 + class metadata base offset for MedicationOptionsDataSource + 96))(v5);
    sub_228194894(v6);

    sub_22838FF60();
  }

  return result;
}

uint64_t InteractionFactorsInfoItem.reuseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InteractionFactorsInfoItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InteractionFactorsInfoItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InteractionFactorsInfoItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2283417B0(uint64_t a1)
{
  v2 = sub_228343C2C();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2283417FC(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell_item;
  swift_beginAccess();
  sub_22817A680(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_228341860@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2283418B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_228341978()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___settingsManager;
  if (*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___settingsManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___settingsManager);
  }

  else
  {
    v3 = v0;
    sub_228390890();
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    v4 = sub_2283907E0();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_228390700();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_228341AAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = v3;
    v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    MEMORY[0x22AAB5C80](a2, a3);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    v11 = sub_228391FC0();

    [v10 setText_];

    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v12 = *MEMORY[0x277D76918];
    v13 = sub_228392AD0();
    [v10 setFont_];

    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    [v10 setNumberOfLines_];
    [v10 setAdjustsFontForContentSizeCategory_];
    v14 = *(v9 + v4);
    *(v9 + v4) = v10;
    v6 = v10;

    v5 = 0;
  }

  v15 = v5;
  return v6;
}

id sub_228341CF0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_2283437C0(a2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_228341D6C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___settingsManager] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalHeaderLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalBodyLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousHeaderLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousBodyLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateHeaderLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateBodyLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorHeaderLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorBodyLabel] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for InteractionFactorsInfoCell();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_22834212C();
  sub_228342588();

  return v10;
}

id sub_228341E9C(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___settingsManager] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalHeaderLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalBodyLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousHeaderLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousBodyLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateHeaderLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateBodyLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorHeaderLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorBodyLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractionFactorsInfoCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_228341FCC()
{
  sub_22834212C();
  sub_228342588();
  v0 = *MEMORY[0x277D12788];
  v3 = sub_228392000();
  v4 = v1;

  MEMORY[0x22AAB5C80](0xD000000000000028, 0x80000002283B4F90);

  sub_228343218(v3, v4);
}

void sub_22834212C()
{
  v1 = v0;
  [v0 setUserInteractionEnabled_];
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22839F000;
  *(inited + 32) = sub_228341A4C();
  *(inited + 40) = sub_228341A5C();
  *(inited + 48) = sub_228341A7C();
  *(inited + 56) = sub_228341A8C();
  *(inited + 64) = sub_228341CB0();
  *(inited + 72) = sub_228341CC0();
  v3 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v5 = i;
    v6 = [v1 contentView];
    [v6 addSubview_];

    if (v3)
    {
      v7 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_30;
      }

      v7 = *(inited + 40);
    }

    v8 = v7;
    v9 = [v1 contentView];
    [v9 addSubview_];

    if (v3)
    {
      v10 = MEMORY[0x22AAB6D80](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_30;
      }

      v10 = *(inited + 48);
    }

    v11 = v10;
    v12 = [v1 contentView];
    [v12 addSubview_];

    if (v3)
    {
      v13 = MEMORY[0x22AAB6D80](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_30;
      }

      v13 = *(inited + 56);
    }

    v14 = v13;
    v15 = [v1 contentView];
    [v15 addSubview_];

    if (v3)
    {
      v16 = MEMORY[0x22AAB6D80](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_30;
      }

      v16 = *(inited + 64);
    }

    v17 = v16;
    v18 = [v1 contentView];
    [v18 addSubview_];

    if (v3)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6uLL)
    {
      v19 = *(inited + 72);
      goto LABEL_19;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v19 = MEMORY[0x22AAB6D80](5, inited);
LABEL_19:
  v20 = v19;
  v21 = [v1 contentView];
  [v21 addSubview_];

  swift_setDeallocating();
  v22 = *(inited + 16);
  swift_arrayDestroy();
  sub_228341978();
  v23 = sub_228390730();

  if (v23)
  {
    v24 = [objc_opt_self() sharedBehavior];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 isAppleInternalInstall];

      if (v26)
      {
        v27 = swift_initStackObject();
        *(v27 + 16) = xmmword_228397F20;
        *(v27 + 32) = sub_228341CE0();
        *(v27 + 40) = sub_228341D50();
        if ((v27 & 0xC000000000000001) != 0)
        {
          goto LABEL_38;
        }

        if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        for (j = *(v27 + 32); ; j = MEMORY[0x22AAB6D80](0, v27))
        {
          v29 = j;
          v30 = [v1 contentView];
          [v30 addSubview_];

          if ((v27 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v31 = *(v27 + 40);
            goto LABEL_28;
          }

LABEL_37:
          __break(1u);
LABEL_38:
          ;
        }

        v31 = MEMORY[0x22AAB6D80](1, v27);
LABEL_28:
        v32 = v31;
        v33 = [v1 contentView];
        [v33 addSubview_];

        swift_setDeallocating();
        v34 = *(v27 + 16);
        swift_arrayDestroy();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_228342588()
{
  v1 = v0;
  v112 = objc_opt_self();
  sub_228180ED0();
  v111 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22839A9E0;
  v4 = sub_228341A4C();
  v5 = [v4 leadingAnchor];

  v6 = [v1 contentView];
  v7 = [v6 layoutMarginsGuide];

  v8 = [v7 &selRef_logTimeChanged_ + 1];
  v9 = [v5 constraintEqualToAnchor_];

  *(v3 + 32) = v9;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalHeaderLabel;
  v11 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalHeaderLabel] trailingAnchor];
  v12 = [v1 contentView];
  v13 = [v12 layoutMarginsGuide];

  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor_];

  *(v3 + 40) = v15;
  v16 = [*&v1[v10] topAnchor];
  v17 = [v1 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  *(v3 + 48) = v19;
  v20 = sub_228341A5C();
  v21 = [v20 leadingAnchor];

  v22 = [*&v1[v10] leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v3 + 56) = v23;
  v24 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalBodyLabel;
  v25 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalBodyLabel] trailingAnchor];
  v26 = [*&v1[v10] trailingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v3 + 64) = v27;
  v28 = [*&v1[v24] topAnchor];
  v29 = [*&v1[v10] bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:8.0];

  *(v3 + 72) = v30;
  v31 = sub_228341A7C();
  v32 = [v31 leadingAnchor];

  v33 = [*&v1[v10] leadingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v3 + 80) = v34;
  v35 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousHeaderLabel;
  v36 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousHeaderLabel] trailingAnchor];
  v37 = [*&v1[v10] trailingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v3 + 88) = v38;
  v39 = v35;
  v40 = [*&v1[v35] topAnchor];
  v41 = [*&v1[v24] bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:16.0];

  *(v3 + 96) = v42;
  v43 = sub_228341A8C();
  v44 = [v43 leadingAnchor];

  v45 = [*&v1[v10] leadingAnchor];
  v46 = [v44 &selRef_freeTextMedicationName + 5];

  *(v3 + 104) = v46;
  v47 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousBodyLabel;
  v48 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousBodyLabel] trailingAnchor];
  v49 = [*&v1[v10] trailingAnchor];
  v50 = [v48 &selRef_freeTextMedicationName + 5];

  *(v3 + 112) = v50;
  v51 = [*&v1[v47] topAnchor];
  v52 = [*&v1[v39] bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:8.0];

  *(v3 + 120) = v53;
  v54 = sub_228341CB0();
  v55 = [v54 leadingAnchor];

  v56 = [*&v1[v10] leadingAnchor];
  v57 = [v55 &selRef_freeTextMedicationName + 5];

  *(v3 + 128) = v57;
  v58 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateHeaderLabel;
  v59 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateHeaderLabel] trailingAnchor];
  v60 = [*&v1[v10] trailingAnchor];
  v61 = [v59 &selRef_freeTextMedicationName + 5];

  *(v3 + 136) = v61;
  v62 = [*&v1[v58] topAnchor];
  v63 = [*&v1[v47] bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:16.0];

  *(v3 + 144) = v64;
  v65 = sub_228341CC0();
  v66 = [v65 leadingAnchor];

  v67 = [*&v1[v10] leadingAnchor];
  v68 = [v66 &selRef_freeTextMedicationName + 5];

  *(v3 + 152) = v68;
  v69 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateBodyLabel];
  v70 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateBodyLabel] trailingAnchor];
  v71 = [*&v1[v10] trailingAnchor];
  v72 = [v70 &selRef_freeTextMedicationName + 5];

  *(v3 + 160) = v72;
  v73 = [*v69 topAnchor];
  v74 = [*&v1[v58] bottomAnchor];
  v75 = [v73 &selRef_resignFirstResponder + 6];

  v76 = v112;
  *(v3 + 168) = v75;
  v77 = sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v78 = sub_228392190();

  v79 = &off_2785F4000;
  [v112 activateConstraints_];

  sub_228341978();
  LOBYTE(v3) = sub_228390730();

  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v80 = [objc_opt_self() sharedBehavior];
  if (!v80)
  {
    __break(1u);
    return;
  }

  v81 = v80;
  v82 = [v80 isAppleInternalInstall];

  if (v82)
  {
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_228399E10;
    v84 = sub_228341CE0();
    v85 = [v84 leadingAnchor];

    v86 = [*&v1[v10] &selRef_logTimeChanged_ + 1];
    v87 = [v85 constraintEqualToAnchor_];

    *(v83 + 32) = v87;
    v111 = v77;
    v88 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorHeaderLabel;
    v89 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorHeaderLabel] trailingAnchor];
    v90 = [*&v1[v10] trailingAnchor];
    v91 = [v89 constraintEqualToAnchor_];

    *(v83 + 40) = v91;
    v92 = [*&v1[v88] topAnchor];
    v93 = [*v69 bottomAnchor];
    v94 = [v92 constraintEqualToAnchor:v93 constant:16.0];

    *(v83 + 48) = v94;
    v95 = sub_228341D50();
    v96 = [v95 leadingAnchor];

    v97 = [*&v1[v10] leadingAnchor];
    v98 = [v96 constraintEqualToAnchor_];

    *(v83 + 56) = v98;
    v69 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorBodyLabel];
    v99 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorBodyLabel] trailingAnchor];
    v100 = [*&v1[v10] trailingAnchor];
    v101 = [v99 constraintEqualToAnchor_];

    *(v83 + 64) = v101;
    v102 = [*v69 topAnchor];
    v79 = &off_2785F4000;
    v103 = [*&v1[v88] bottomAnchor];
    v104 = [v102 constraintEqualToAnchor:v103 constant:8.0];

    *(v83 + 72) = v104;
    v76 = v112;
    v105 = (v83 + 80);
  }

  else
  {
LABEL_5:
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_228396260;
    v105 = (v106 + 32);
  }

  v107 = [v1 contentView];
  v108 = [v107 bottomAnchor];

  v109 = [*v69 bottomAnchor];
  v110 = [v108 &selRef_resignFirstResponder + 6];

  *v105 = v110;
  v113 = sub_228392190();

  [v76 v79[123]];
}

void sub_228343218(uint64_t a1, uint64_t a2)
{
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = sub_228341A5C();
    v22 = a1;
    v23 = a2;

    MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283B4D30);
    v10 = sub_228391FC0();

    [v9 setAccessibilityIdentifier_];

    v11 = sub_228341A8C();
    v22 = a1;
    v23 = a2;

    MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B4D50);
    v12 = sub_228391FC0();

    [v11 setAccessibilityIdentifier_];

    v13 = sub_228341CC0();
    v22 = a1;
    v23 = a2;

    MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283B4D70);
    v14 = sub_228391FC0();

    [v13 setAccessibilityIdentifier_];

    v15 = sub_228341D50();
    v22 = a1;
    v23 = a2;

    MEMORY[0x22AAB5C80](0xD000000000000015, 0x80000002283B4D90);
    v21 = sub_228391FC0();

    [v15 setAccessibilityIdentifier_];

    v16 = v21;
  }

  else
  {
    sub_228391190();
    v17 = sub_2283911A0();
    v18 = sub_2283925E0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22816B000, v17, v18, "Could not set Interaction Factors Info Cell AXIDs because base ID was unexpectedly nil.", v19, 2u);
      MEMORY[0x22AAB7B80](v19, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

id InteractionFactorsInfoCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionFactorsInfoCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2283437C0(uint64_t a1)
{
  sub_228343BD8(0, &qword_27D825628, MEMORY[0x277D12720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v14 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (a1 == 1)
  {
    sub_22817A958(0, &unk_280DDBAA0, 0x277CCA898);
    v7 = [objc_opt_self() labelColor];
    v8 = sub_228392800();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v14[0] = 0xD000000000000015;
    v14[1] = 0x80000002283AFAD0;
    MEMORY[0x22AAB5C80](0x4C41434954495243, 0xE800000000000000);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v9 = *MEMORY[0x277D76A28];
    sub_228392AD0();
    v10 = sub_2283927E0();
    [v6 setAttributedText_];
  }

  else
  {
    sub_228321CC4(0xD000000000000015, 0x80000002283AFAD0, a1);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    v11 = sub_228391FC0();

    [v6 setText_];

    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v12 = *MEMORY[0x277D76A28];
    v10 = sub_228392AD0();
    [v6 setFont_];
  }

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setNumberOfLines_];
  [v6 setAdjustsFontForContentSizeCategory_];
  return v6;
}

void sub_228343BD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_228343C2C()
{
  result = qword_27D8280A0;
  if (!qword_27D8280A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8280A0);
  }

  return result;
}

uint64_t sub_228343CB0(uint64_t a1)
{
  v2 = sub_228390E20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(v3 + 16);
  v11 = v3 + 16;
  v12 = v13;
  v24 = (*(v11 + 64) + 32) & ~*(v11 + 64);
  v14 = a1 + v24;
  v15 = *(v11 + 56);
  v23 = (v11 - 8);
  v28 = (v11 + 16);
  v16 = MEMORY[0x277D84F90];
  v26 = v7;
  v27 = v11;
  v25 = v13;
  do
  {
    v12(v9, v14, v2);
    if (sub_228390E10())
    {
      v17 = *v28;
      (*v28)(v7, v9, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2281CA104(0, *(v16 + 16) + 1, 1);
        v16 = v29;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2281CA104(v19 > 1, v20 + 1, 1);
        v16 = v29;
      }

      *(v16 + 16) = v20 + 1;
      v7 = v26;
      v17((v16 + v24 + v20 * v15), v26, v2);
      v12 = v25;
    }

    else
    {
      (*v23)(v9, v2);
    }

    v14 += v15;
    --v10;
  }

  while (v10);
  return v16;
}

uint64_t VisualizationDataSourceDisplayContext.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t sub_228343F68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27D8280A8;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_228343FD4()
{
  v1 = qword_27D8280A8;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22834401C(uint64_t a1)
{
  v3 = qword_27D8280A8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2283440D4(char *a1, void *a2, unsigned __int8 a3)
{
  v53 = a1;
  v5 = sub_2283900D0();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a2;
  v9 = [a2 traitCollection];
  v10 = sub_2283927D0();

  if (((v10 > 2) & a3) != 0)
  {
    v11 = 44.0;
  }

  else
  {
    v11 = 4.0;
  }

  v12 = objc_opt_self();
  v13 = [v12 fractionalWidthDimension_];
  v14 = [v12 fractionalHeightDimension_];
  v15 = objc_opt_self();
  v16 = [v15 sizeWithWidthDimension:v13 heightDimension:v14];

  v17 = objc_opt_self();
  v50 = v16;
  v18 = [v17 itemWithLayoutSize_];
  sub_2283928D0();
  [v18 setContentInsets_];
  v19 = [v12 fractionalWidthDimension_];
  v20 = [v12 fractionalWidthDimension_];
  v21 = [v15 sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = objc_opt_self();
  sub_228180ED0();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_228396260;
  *(v23 + 32) = v18;
  sub_22817A958(0, &qword_27D824F40, 0x277CFB860);
  v48 = v18;
  v24 = sub_228392190();

  v49 = v21;
  v25 = [v22 horizontalGroupWithLayoutSize:v21 subitems:v24];

  sub_228390010();
  if (!v53 && (a3 & 1) != 0)
  {
    v26 = sub_228390020();
    if (v26)
    {
      v27 = v26;
      [v26 dimension];
      v29 = v28;
    }

    else
    {
      v29 = 30.0;
    }

    v30 = [v12 absoluteDimension_];
    sub_228390030();
  }

  v53 = v8;
  v31 = sub_2283900C0();
  [v31 contentInsets];
  v33 = v32;
  [v31 contentInsets];
  v35 = v34;
  v36 = objc_opt_self();
  v47 = v25;
  v37 = [v36 sectionWithGroup_];
  [v37 setContentInsets_];
  v54 = v31;
  v38 = [v31 boundarySupplementaryItems];
  if (!v38)
  {
    sub_22817A958(0, &qword_27D824F48, 0x277CFB830);
    sub_2283921A0();
    v38 = sub_228392190();
  }

  [v37 setBoundarySupplementaryItems_];

  [v37 setSupplementaryContentInsetsReference_];
  v39 = [v37 boundarySupplementaryItems];
  sub_22817A958(0, &qword_27D824F48, 0x277CFB830);
  v40 = sub_2283921A0();

  if (v40 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v42 = 0;
    while (1)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x22AAB6D80](v42, v40);
      }

      else
      {
        if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v43 = *(v40 + 8 * v42 + 32);
      }

      v44 = v43;
      v45 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      [v43 contentInsets];
      [v44 setContentInsets_];
      [v44 contentInsets];
      [v44 setContentInsets_];

      ++v42;
      if (v45 == i)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:

  (*(v51 + 8))(v53, v52);
  return v37;
}

uint64_t sub_228344684()
{
  v30 = *v0;
  sub_228279E50();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228346EC4();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22834702C();
  v12 = *(v11 - 8);
  v28 = v11;
  v29 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283909E0();
  v27 = swift_allocBox();
  v16 = qword_27D8280B0;
  v17 = *(v0 + qword_27D8280B0);

  sub_228391870();

  v18 = *(v0 + qword_27D8280B8);
  v31 = *(v0 + v16);
  v33 = *(v0 + qword_27D8280C0);
  v34 = v18;
  v32 = *(v0 + qword_27D8280C8);
  sub_228208C98();
  sub_228346FB4();
  sub_228346894(&qword_27D828108, sub_228208C98);
  sub_228346894(&qword_27D828110, sub_228346FB4);
  sub_2283919D0();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v19 = sub_228392790();
  v31 = v19;
  v20 = sub_228392730();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  sub_228346894(&qword_27D828120, sub_228346EC4);
  sub_2281A1504();
  sub_228391A70();
  sub_228348778(v4, sub_228279E50);

  (*(v7 + 8))(v10, v6);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v23 = v27;
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v30;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2283470F8;
  *(v24 + 24) = v22;
  sub_228346894(&qword_27D828128, sub_22834702C);

  v25 = v28;
  sub_228391AC0();

  (*(v29 + 8))(v15, v25);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228344B94(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), void *a3, uint64_t a4)
{
  v96 = a4;
  v97 = a3;
  v95 = a2;
  sub_2281A99B0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v92 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_228390FD0();
  v88 = *(v90 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281CBD18();
  v80 = v10;
  v93 = *(v10 - 1);
  v11 = *(v93 + 64);
  MEMORY[0x28223BE20](v10);
  v87 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228390D50();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v91 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2283909E0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v77 - v23;
  v25 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    v85 = v14;
    v86 = v13;
    swift_beginAccess();
    v28 = *(v18 + 16);
    v82 = v18 + 16;
    v81 = v28;
    v28(v24, v25, v17);
    sub_228346894(&qword_27D824F00, MEMORY[0x277D11640]);
    v29 = sub_228391FB0();
    v30 = *(v18 + 8);
    v83 = v24;
    v30(v24, v17);
    v94 = a1;
    v84 = v27;
    v31 = v95;
    if (v29)
    {
      sub_228345954(a1, v95, v97, v96);
    }

    else
    {
      sub_2283478F0(a1, v95, v97, v96);
      sub_22838FF50();
      a1 = v94;
    }

    swift_beginAccess();
    (*(v18 + 24))(v25, a1, v17);
    (*(v18 + 104))(v22, *MEMORY[0x277D11638], v17);
    sub_228346894(&qword_27D8280F8, MEMORY[0x277D11640]);
    sub_228392170();
    sub_228392170();
    if (v98 == v100 && v99 == v101)
    {
      v30(v22, v17);
    }

    else
    {
      v32 = sub_228393460();
      v30(v22, v17);

      if ((v32 & 1) == 0)
      {
        v59 = v94;
        v62 = sub_2283909D0();
        v63 = sub_228343CB0(v62);

        sub_2283488A8(0, &qword_27D824758, sub_2281CBD18, MEMORY[0x277D84560]);
        v64 = *(v93 + 72);
        v65 = (*(v93 + 80) + 32) & ~*(v93 + 80);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_228397F40;
        sub_22817A958(0, &qword_280DDB990, 0x277D75348);
        v67 = v97;
        sub_228391E50();
        sub_228199F10();
        (*(*(v68 - 8) + 56))(v66 + v65, 0, 1, v68);
        v55 = sub_2283471EC(v63, v66);

        swift_setDeallocating();
        v69 = *(v66 + 16);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v58 = v85;
        v60 = v84;
        v57 = v31;
        v61 = v83;
        v56 = v92;
LABEL_23:
        v81(v61, v59, v17);
        v70 = sub_2283909D0();
        v71 = sub_228345720(v70);

        v98 = v55;
        sub_2281D5FE0(v71);
        (*(v88 + 104))(v89, *MEMORY[0x277D11728], v90);
        v72 = v57;
        v73 = v91;
        sub_228390D20();
        v74 = qword_27D8280A8;
        swift_beginAccess();
        v75 = *(v60 + v74);
        v76 = v86;
        (*(v58 + 16))(v56, v73, v86);
        (*(v58 + 56))(v56, 0, 1, v76);

        sub_228391850();

        sub_228348778(v56, sub_2281A99B0);
        return (*(v58 + 8))(v73, v76);
      }
    }

    v33 = sub_2283909D0();
    v79 = sub_228343CB0(v33);

    sub_228180ED0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_228397F20;
    v35 = v97;
    *(inited + 32) = v97;
    v80 = (inited + 32);
    v36 = v96;
    *(inited + 40) = v96;
    v98 = MEMORY[0x277D84F90];
    v37 = v35;
    v38 = v36;
    result = sub_2281CA31C(0, 2, 0);
    v39 = v98;
    v78 = inited & 0xFFFFFFFFFFFFFF8;
    v97 = (inited & 0xC000000000000001);
    if ((inited & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x22AAB6D80](0, inited);
      v41 = v87;
    }

    else
    {
      v41 = v87;
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v40 = *v80;
    }

    v42 = sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    v43 = v40;
    v96 = v42;
    sub_228391E50();
    sub_228199F10();
    v45 = v44;
    v87 = *(*(v44 - 8) + 56);
    (v87)(v41, 0, 1, v44);

    v98 = v39;
    v47 = *(v39 + 16);
    v46 = *(v39 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_2281CA31C(v46 > 1, v47 + 1, 1);
      v39 = v98;
    }

    *(v39 + 16) = v47 + 1;
    v48 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v49 = *(v93 + 72);
    result = sub_228348840(v41, v39 + v48 + v49 * v47, sub_2281CBD18);
    if (v97)
    {
      v50 = MEMORY[0x22AAB6D80](1, inited);
LABEL_19:
      v51 = v50;
      sub_228391E50();
      (v87)(v41, 0, 1, v45);

      v98 = v39;
      v53 = *(v39 + 16);
      v52 = *(v39 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_2281CA31C(v52 > 1, v53 + 1, 1);
        v39 = v98;
      }

      *(v39 + 16) = v53 + 1;
      sub_228348840(v41, v39 + v48 + v49 * v53, sub_2281CBD18);
      swift_setDeallocating();
      v54 = *(inited + 16);
      swift_arrayDestroy();
      v55 = sub_2283471EC(v79, v39);

      v56 = v92;
      v57 = v95;
      v58 = v85;
      v59 = v94;
      v60 = v84;
      v61 = v83;
      goto LABEL_23;
    }

    if (*(v78 + 16) >= 2uLL)
    {
      v50 = *(inited + 40);
      goto LABEL_19;
    }

LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_228345720(uint64_t a1)
{
  sub_228199E70();
  v22 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228346900(a1);
  v8 = *(v7 + 16);
  if (v8)
  {
    v23 = MEMORY[0x277D84F90];
    sub_2281C9E84(0, v8, 0);
    v9 = v23;
    v21 = sub_228390E20();
    v10 = *(v21 - 8);
    v11 = *(v10 + 16);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v20 = v7;
    v13 = v7 + v12;
    v14 = *(v10 + 72);
    do
    {
      v11(v6, v13, v21);
      v15 = *(v22 + 48);
      sub_228199F10();
      (*(*(v16 - 8) + 56))(&v6[v15], 1, 1, v16);
      v23 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2281C9E84(v17 > 1, v18 + 1, 1);
        v9 = v23;
      }

      *(v9 + 16) = v18 + 1;
      sub_228348840(v6, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, sub_228199E70);
      v13 += v14;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t sub_228345954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a4;
  v93 = a2;
  v94 = a3;
  v96 = sub_2283908E0();
  v6 = *(v96 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v96);
  v9 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199F78();
  v86 = v10;
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v95 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v85 = v78 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v78 - v16;
  v18 = sub_2283909E0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v82 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2283908A0();
  v23 = *(v22 + 16);
  v83 = v4;
  v87 = v6;
  if (v23)
  {
    v79 = v19;
    v80 = v18;
    v81 = a1;
    v97 = MEMORY[0x277D84F90];
    v24 = v22;
    sub_2281C9DEC(0, v23, 0);
    v25 = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
    v26 = v97;
    v91 = 0x80000002283AA970;
    v92 = v25;
    v28 = *(v6 + 16);
    v27 = v6 + 16;
    v90 = v28;
    v29 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v78[1] = v24;
    v30 = v24 + v29;
    v31 = *(v27 + 56);
    v88 = (v27 - 8);
    v89 = v31;
    v32 = v86;
    do
    {
      v33 = v96;
      v34 = v90;
      v90(v9, v30, v96);
      v34(v17, v9, v33);
      v35 = sub_2283908D0();
      LOBYTE(v34) = sub_228392C60();

      (*v88)(v9, v33);
      v17[*(v32 + 36)] = v34 & 1;
      v36 = &v17[*(v32 + 40)];
      *v36 = 0xD000000000000011;
      *(v36 + 1) = v91;
      v97 = v26;
      v38 = *(v26 + 16);
      v37 = *(v26 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_2281C9DEC((v37 > 1), v38 + 1, 1);
        v32 = v86;
        v26 = v97;
      }

      v100 = v32;
      v101 = sub_228346894(&qword_27D823E18, sub_228199F78);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
      sub_2283487D8(v17, boxed_opaque_existential_1, sub_228199F78);
      *(v26 + 16) = v38 + 1;
      sub_22819A62C(&v99, v26 + 40 * v38 + 32);
      sub_228348778(v17, sub_228199F78);
      v30 += v89;
      --v23;
    }

    while (v23);

    v18 = v80;
    v19 = v79;
  }

  else
  {
  }

  sub_22838FF60();

  v40 = v82;
  (*(v19 + 104))(v82, *MEMORY[0x277D11638], v18);
  sub_228346894(&qword_27D8280F8, MEMORY[0x277D11640]);
  sub_228392170();
  sub_228392170();
  if (v99 == v97 && *(&v99 + 1) == v98)
  {
    (*(v19 + 8))(v40, v18);

    v41 = v87;
  }

  else
  {
    v42 = sub_228393460();
    (*(v19 + 8))(v40, v18);

    v41 = v87;
    if ((v42 & 1) == 0)
    {
LABEL_20:
      sub_22838FF60();

      v60 = sub_2283908B0();
      v61 = *(v60 + 16);
      if (v61)
      {
        v97 = MEMORY[0x277D84F90];
        sub_2281C9DEC(0, v61, 0);
        v94 = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
        v63 = *(v41 + 16);
        v62 = v41 + 16;
        v64 = v97;
        v65 = v60 + ((*(v62 + 64) + 32) & ~*(v62 + 64));
        v91 = *(v62 + 56);
        v92 = v63;
        v89 = v60;
        v90 = (v62 - 8);
        v66 = v86;
        v67 = v95;
        v68 = v63;
        do
        {
          v69 = v96;
          v68(v9, v65, v96);
          v70 = v62;
          v68(v67, v9, v69);
          v71 = sub_2283908D0();
          v72 = sub_228392C60();

          (*v90)(v9, v69);
          v73 = v72 & 1;
          v67 = v95;
          v95[*(v66 + 36)] = v73;
          v74 = (v67 + *(v66 + 40));
          *v74 = 0x756F72676B636162;
          v74[1] = 0xEF726F6C6F43646ELL;
          v97 = v64;
          v76 = *(v64 + 16);
          v75 = *(v64 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_2281C9DEC((v75 > 1), v76 + 1, 1);
            v67 = v95;
            v66 = v86;
            v64 = v97;
          }

          v100 = v66;
          v101 = sub_228346894(&qword_27D823E18, sub_228199F78);
          v77 = __swift_allocate_boxed_opaque_existential_1(&v99);
          sub_2283487D8(v67, v77, sub_228199F78);
          *(v64 + 16) = v76 + 1;
          sub_22819A62C(&v99, v64 + 40 * v76 + 32);
          sub_228348778(v67, sub_228199F78);
          v65 += v91;
          --v61;
          v62 = v70;
        }

        while (v61);
      }

      sub_22838FF60();
    }
  }

  v43 = sub_2283908A0();
  v44 = *(v43 + 16);
  if (!v44)
  {

    goto LABEL_20;
  }

  v97 = MEMORY[0x277D84F90];
  sub_2281C9DEC(0, v44, 0);
  v92 = v43 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v45 = v97;
  result = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  v47 = v41;
  v48 = 0;
  v90 = 0x80000002283AA990;
  v91 = result;
  v88 = (v47 + 8);
  v89 = v47 + 16;
  v94 = v43;
  v49 = v87;
  while (v48 < *(v43 + 16))
  {
    v50 = *(v49 + 16);
    v51 = v96;
    v50(v9, v92 + *(v49 + 72) * v48, v96);
    v52 = v85;
    v50(v85, v9, v51);
    v53 = sub_2283908D0();
    LOBYTE(v50) = sub_228392C60();

    v54 = v86;
    *(v52 + *(v86 + 36)) = v50 & 1;
    v55 = (v52 + *(v54 + 40));
    v56 = v90;
    *v55 = 0xD000000000000012;
    v55[1] = v56;
    (*(v49 + 8))(v9, v51);
    v97 = v45;
    v58 = *(v45 + 16);
    v57 = *(v45 + 24);
    if (v58 >= v57 >> 1)
    {
      sub_2281C9DEC((v57 > 1), v58 + 1, 1);
      v52 = v85;
      v45 = v97;
    }

    ++v48;
    v100 = v54;
    v101 = sub_228346894(&qword_27D823E18, sub_228199F78);
    v59 = __swift_allocate_boxed_opaque_existential_1(&v99);
    sub_2283487D8(v52, v59, sub_228199F78);
    *(v45 + 16) = v58 + 1;
    sub_22819A62C(&v99, v45 + 40 * v58 + 32);
    result = sub_228348778(v52, sub_228199F78);
    v43 = v94;
    if (v44 == v48)
    {

      v41 = v87;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228346400()
{
  v1 = *(v0 + qword_27D8280B0);

  v2 = *(v0 + qword_27D8280B8);

  v3 = *(v0 + qword_27D8280C0);

  v4 = *(v0 + qword_27D8280C8);

  v5 = *(v0 + qword_27D8280A8);

  v6 = *(v0 + qword_27D8280D0);
}

uint64_t VisualizationModificationDataSource.deinit()
{
  v0 = sub_2283903B0();
  v1 = *(v0 + qword_27D8280B0);

  v2 = *(v0 + qword_27D8280B8);

  v3 = *(v0 + qword_27D8280C0);

  v4 = *(v0 + qword_27D8280C8);

  v5 = *(v0 + qword_27D8280A8);

  v6 = *(v0 + qword_27D8280D0);

  return v0;
}

uint64_t VisualizationModificationDataSource.__deallocating_deinit()
{
  v0 = sub_2283903B0();
  v1 = *(v0 + qword_27D8280B0);

  v2 = *(v0 + qword_27D8280B8);

  v3 = *(v0 + qword_27D8280C0);

  v4 = *(v0 + qword_27D8280C8);

  v5 = *(v0 + qword_27D8280A8);

  v6 = *(v0 + qword_27D8280D0);

  return swift_deallocClassInstance();
}

unint64_t VisualizationModificationDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  sub_2283488A8(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_22838FEF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22838FF40();
  result = sub_22838F750();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v11 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v7 + 16))(v10, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * result, v6);

  sub_22838FEE0();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  if (v14)
  {
    v15 = sub_228390130();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    a1[3] = sub_228390150();
    a1[4] = sub_228346894(&qword_27D824EC8, MEMORY[0x277D10FE8]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_228390140();
  }

  else
  {
    a1[3] = sub_22838FC00();
    a1[4] = sub_228346894(&qword_27D823958, MEMORY[0x277D10EC8]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_22838FBF0();
  }
}

uint64_t sub_228346894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228346900(uint64_t a1)
{
  v2 = sub_228390E20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(v3 + 16);
  v11 = v3 + 16;
  v12 = v13;
  v26 = (*(v11 + 64) + 32) & ~*(v11 + 64);
  v14 = a1 + v26;
  v15 = *(v11 + 56);
  v29 = (v11 + 16);
  v24 = (v11 - 8);
  v16 = MEMORY[0x277D84F90];
  v27 = v7;
  v28 = v11;
  v25 = v15;
  v13(v9, a1 + v26, v2);
  while (1)
  {
    if (sub_228390E10())
    {
      (*v24)(v9, v2);
    }

    else
    {
      v17 = *v29;
      (*v29)(v7, v9, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2281CA104(0, *(v16 + 16) + 1, 1);
        v16 = v30;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2281CA104(v19 > 1, v20 + 1, 1);
        v16 = v30;
      }

      *(v16 + 16) = v20 + 1;
      v21 = v25;
      v7 = v27;
      v17((v16 + v26 + v20 * v25), v27, v2);
      v15 = v21;
    }

    v14 += v15;
    if (!--v10)
    {
      break;
    }

    v12(v9, v14, v2);
  }

  return v16;
}

Swift::Void __swiftcall VisualizationModificationDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for ColorCell();
  sub_228346894(&qword_27D8280D8, type metadata accessor for ColorCell);
  sub_2283926B0();
  sub_228390120();
  sub_2283926D0();
}

unint64_t sub_228346BC0()
{
  result = qword_27D8280E0;
  if (!qword_27D8280E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8280E0);
  }

  return result;
}

uint64_t sub_228346C5C()
{
  type metadata accessor for ColorCell();
  sub_228346894(&qword_27D8280D8, type metadata accessor for ColorCell);
  sub_2283926B0();
  sub_228390120();
  return sub_2283926D0();
}

uint64_t type metadata accessor for VisualizationModificationDataSource()
{
  result = qword_27D8280E8;
  if (!qword_27D8280E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228346EC4()
{
  if (!qword_27D828100)
  {
    sub_228208C98();
    sub_228346FB4();
    sub_228346894(&qword_27D828108, sub_228208C98);
    sub_228346894(&qword_27D828110, sub_228346FB4);
    v0 = sub_2283916A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828100);
    }
  }
}

void sub_228346FB4()
{
  if (!qword_27D824BC8)
  {
    sub_22817A958(255, &qword_280DDB990, 0x277D75348);
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824BC8);
    }
  }
}

void sub_22834702C()
{
  if (!qword_27D828118)
  {
    sub_228346EC4();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228346894(&qword_27D828120, sub_228346EC4);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828118);
    }
  }
}

uint64_t sub_2283470F8(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), void *a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  return sub_228344B94(a1, a2, a3, a4);
}

uint64_t sub_228347104(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22834715C();
  return v4(a1, *(a1 + v5[12]), *(a1 + v5[16]), *(a1 + v5[20]));
}

void sub_22834715C()
{
  if (!qword_27D828130)
  {
    sub_2283909E0();
    sub_22817A958(255, &qword_280DDB990, 0x277D75348);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27D828130);
    }
  }
}

uint64_t sub_2283471EC(uint64_t a1, uint64_t a2)
{
  v73 = sub_228390E20();
  v77 = *(v73 - 8);
  v4 = *(v77 + 64);
  v5 = MEMORY[0x28223BE20](v73);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v68 - v8;
  sub_228199E70();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v74 = &v68 - v17;
  MEMORY[0x28223BE20](v16);
  v78 = v11;
  v79 = &v68 - v18;
  v19 = *(a1 + 16);
  v86 = a2;
  v20 = *(a2 + 16);
  v75 = v19;
  v76 = v20;
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v72 = a1;
  v85 = v21;
  if (v21)
  {
    sub_2283488A8(0, &qword_27D823DE8, sub_228199E70, MEMORY[0x277D84560]);
    v22 = *(v11 + 72);
    v23 = *(v11 + 80);
    v24 = (v23 + 32) & ~v23;
    v71 = v23;
    v69 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v69);
    v84 = v22;
    if (!v22)
    {
      goto LABEL_56;
    }

    if (result - v24 == 0x8000000000000000 && v84 == -1)
    {
      goto LABEL_58;
    }

    v27 = 0;
    v28 = (result - v24) / v84;
    v29 = v69;
    *(v69 + 2) = v85;
    v29[3] = 2 * v28;
    v68 = v28 & 0x7FFFFFFFFFFFFFFFLL;
    v70 = v24;
    v30 = v29 + v24;
    v82 = *(v77 + 16);
    v83 = v77 + 16;
    v31 = (v77 + 32);
    v32 = a1 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v81 = *(v77 + 72);
    v33 = v73;
    do
    {
      v34 = v27 + 1;
      (v82)(v7, v32, v33);
      sub_2281CBD18();
      v36 = v86 + ((*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80)) + *(*(v35 - 8) + 72) * v27;
      v37 = *(v10 + 48);
      (*v31)(v15, v7, v33);
      sub_2283487D8(v36, &v15[v37], sub_2281CBD18);
      result = sub_228348840(v15, v30, sub_228199E70);
      v30 += v84;
      v32 += v81;
      v27 = v34;
    }

    while (v85 != v34);
    v38 = v69;
    v39 = v68 - v34;
    v19 = v75;
  }

  else
  {
    v40 = *(v11 + 80);
    v38 = MEMORY[0x277D84F90];
    v41 = *(MEMORY[0x277D84F90] + 24);

    v39 = v41 >> 1;
    v70 = (v40 + 32) & ~v40;
    v71 = v40;
    v30 = v38 + v70;
  }

  v42 = v76;
  v43 = v73;
  v44 = v85;
  if (v19 <= v76)
  {
LABEL_44:
    v51 = v38;
LABEL_45:
    v65 = v51[3];
    if (v65 >= 2)
    {
      v66 = v65 >> 1;
      v64 = __OFSUB__(v66, v39);
      v67 = v66 - v39;
      if (v64)
      {
        goto LABEL_57;
      }

      v51[2] = v67;
    }

    return v51;
  }

  v83 = v77 + 16;
  v84 = v10;
  v82 = (v77 + 32);
  v45 = v72;
  while (v44 < v19)
  {
    result = (*(v77 + 16))(v80, v45 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v44, v43);
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_50;
    }

    if (v42 == v44)
    {
      result = (*(v77 + 8))(v80, v43);
      goto LABEL_44;
    }

    if (v44 >= v42)
    {
      goto LABEL_51;
    }

    sub_2281CBD18();
    v48 = v86 + ((*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80)) + *(*(v47 - 8) + 72) * v44;
    v49 = *(v84 + 48);
    v50 = v74;
    (*v82)(v74, v80, v43);
    sub_2283487D8(v48, v50 + v49, sub_2281CBD18);
    result = sub_228348840(v50, v79, sub_228199E70);
    if (v39)
    {
      v51 = v38;
      v19 = v75;
      goto LABEL_40;
    }

    v52 = v38[3];
    v19 = v75;
    if (((v52 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_53;
    }

    v53 = v52 & 0xFFFFFFFFFFFFFFFELL;
    if (v53 <= 1)
    {
      v54 = 1;
    }

    else
    {
      v54 = v53;
    }

    sub_2283488A8(0, &qword_27D823DE8, sub_228199E70, MEMORY[0x277D84560]);
    v55 = *(v78 + 72);
    v56 = v70;
    v51 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v51);
    if (!v55)
    {
      goto LABEL_54;
    }

    v57 = result - v56;
    if (result - v56 == 0x8000000000000000 && v55 == -1)
    {
      goto LABEL_55;
    }

    v59 = v57 / v55;
    v51[2] = v54;
    v51[3] = 2 * (v57 / v55);
    v60 = v51 + v56;
    v61 = v38;
    v62 = v38[3] >> 1;
    v63 = v62 * v55;
    if (v38[2])
    {
      if (v51 < v38 || v60 >= v38 + v56 + v63)
      {
        swift_arrayInitWithTakeFrontToBack();
LABEL_37:
        v61 = v38;
      }

      else if (v51 != v38)
      {
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_37;
      }

      v61[2] = 0;
    }

    v30 = &v60[v63];
    v39 = (v59 & 0x7FFFFFFFFFFFFFFFLL) - v62;

    v45 = v72;
    v43 = v73;
LABEL_40:
    v64 = __OFSUB__(v39--, 1);
    v42 = v76;
    if (v64)
    {
      goto LABEL_52;
    }

    result = sub_228348840(v79, v30, sub_228199E70);
    v30 += *(v78 + 72);
    ++v44;
    v38 = v51;
    if (v46 == v19)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_2283478F0(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), unint64_t a3, uint64_t a4)
{
  v111 = a4;
  v115 = a2;
  v116 = a3;
  v121 = sub_2283908E0();
  v112 = *(v121 - 8);
  v5 = *(v112 + 64);
  MEMORY[0x28223BE20](v121);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199F78();
  v119 = *(v8 - 8);
  v120 = v8;
  v9 = *(v119 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v94 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v118 = &v93 - v13;
  MEMORY[0x28223BE20](v12);
  v117 = &v93 - v14;
  v15 = sub_2283909E0();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v97 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v93 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v93 - v23;
  v25 = v16[13];
  v107 = *MEMORY[0x277D11638];
  v108 = v16 + 13;
  v106 = v25;
  v25(&v93 - v23);
  v26 = sub_228346894(&qword_27D8280F8, MEMORY[0x277D11640]);
  sub_228392170();
  v105 = v26;
  sub_228392170();
  if (v124 == v122 && v125 == v123)
  {
    v27 = 1;
  }

  else
  {
    v27 = sub_228393460();
  }

  v104 = v16[1];
  v104(v24, v15);

  v109 = v16 + 1;
  if (v27)
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v28 = qword_280DDCF20;
    v29 = *algn_280DDCF28;
    v30 = qword_280DDCF30;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v28 = qword_280DDCF20;
    v29 = *algn_280DDCF28;
    v30 = qword_280DDCF30;
  }

  v103 = v30;
  v100 = sub_22838F0C0();
  v99 = v31;
  v106(v22, v107, v15);
  sub_228392170();
  v110 = v15;
  sub_228392170();
  v102 = v28;
  v101 = v29;
  if (v124 == v122 && v125 == v123)
  {
    v104(v22, v110);
  }

  else
  {
    v32 = sub_228393460();
    v104(v22, v110);

    if ((v32 & 1) == 0)
    {
      v96 = 0;
      v95 = 0xE000000000000000;
      goto LABEL_20;
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v96 = sub_22838F0C0();
  v95 = v33;
LABEL_20:
  v98 = a1;
  v34 = sub_2283908B0();
  v35 = *(v34 + 16);
  if (v35)
  {
    v124 = MEMORY[0x277D84F90];
    sub_2281C9ED4(0, v35, 0);
    v114 = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
    v36 = v124;
    v37 = *(v112 + 16);
    v38 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v93 = v34;
    v39 = v34 + v38;
    v113 = *(v112 + 72);
    v40 = (v112 + 8);
    v41 = v117;
    do
    {
      v42 = v121;
      v37(v7, v39, v121);
      v37(v41, v7, v42);
      v43 = sub_2283908D0();
      v44 = sub_228392C60();

      (*v40)(v7, v42);
      v45 = v120;
      v46 = v44 & 1;
      v41 = v117;
      v117[*(v120 + 36)] = v46;
      v47 = (v41 + *(v45 + 40));
      *v47 = 0x756F72676B636162;
      v47[1] = 0xEF726F6C6F43646ELL;
      v124 = v36;
      v49 = *(v36 + 16);
      v48 = *(v36 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_2281C9ED4(v48 > 1, v49 + 1, 1);
        v41 = v117;
        v36 = v124;
      }

      *(v36 + 16) = v49 + 1;
      sub_228348840(v41, v36 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v49, sub_228199F78);
      v39 += v113;
      --v35;
    }

    while (v35);
    v113 = v36;
  }

  else
  {

    v113 = MEMORY[0x277D84F90];
  }

  v50 = sub_2283908A0();
  v51 = *(v50 + 16);
  if (v51)
  {
    v124 = MEMORY[0x277D84F90];
    sub_2281C9ED4(0, v51, 0);
    v117 = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
    v52 = v124;
    v115 = 0x80000002283AA970;
    v53 = *(v112 + 16);
    v54 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v93 = v50;
    v55 = v50 + v54;
    v114 = *(v112 + 72);
    v56 = (v112 + 8);
    v57 = v118;
    do
    {
      v58 = v121;
      v53(v7, v55, v121);
      v53(v57, v7, v58);
      v59 = sub_2283908D0();
      v60 = sub_228392C60();

      (*v56)(v7, v58);
      v61 = v120;
      v62 = v60 & 1;
      v57 = v118;
      v118[*(v120 + 36)] = v62;
      v63 = (v57 + *(v61 + 40));
      *v63 = 0xD000000000000011;
      v63[1] = v115;
      v124 = v52;
      v65 = *(v52 + 16);
      v64 = *(v52 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_2281C9ED4(v64 > 1, v65 + 1, 1);
        v57 = v118;
        v52 = v124;
      }

      *(v52 + 16) = v65 + 1;
      sub_228348840(v57, v52 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v65, sub_228199F78);
      v55 += v114;
      --v51;
    }

    while (v51);
  }

  else
  {

    v52 = MEMORY[0x277D84F90];
  }

  v66 = v97;
  v67 = v110;
  v106(v97, v107, v110);
  sub_228392170();
  sub_228392170();
  if (v124 == v122 && v125 == v123)
  {
    v104(v66, v67);
  }

  else
  {
    v68 = sub_228393460();
    v104(v66, v67);

    if ((v68 & 1) == 0)
    {
      v72 = MEMORY[0x277D84F90];
      goto LABEL_46;
    }
  }

  v69 = sub_2283908A0();
  v70 = *(v69 + 16);
  if (v70)
  {
    v118 = v7;
    v124 = MEMORY[0x277D84F90];
    sub_2281C9ED4(0, v70, 0);
    v71 = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
    v72 = v124;
    v116 = 0x80000002283AA990;
    v117 = v71;
    v73 = *(v112 + 16);
    v74 = *(v112 + 80);
    v110 = v69;
    v75 = v69 + ((v74 + 32) & ~v74);
    v114 = *(v112 + 72);
    v115 = v73;
    v112 += 16;
    v76 = (v112 - 8);
    v77 = v94;
    do
    {
      v78 = v118;
      v79 = v121;
      v80 = v115;
      v115(v118, v75, v121);
      v80(v77, v78, v79);
      v81 = sub_2283908D0();
      v82 = sub_228392C60();

      (*v76)(v78, v79);
      v83 = v120;
      *(v77 + *(v120 + 36)) = v82 & 1;
      v84 = (v77 + *(v83 + 40));
      v85 = v116;
      *v84 = 0xD000000000000012;
      v84[1] = v85;
      v124 = v72;
      v87 = *(v72 + 16);
      v86 = *(v72 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_2281C9ED4(v86 > 1, v87 + 1, 1);
        v77 = v94;
        v72 = v124;
      }

      *(v72 + 16) = v87 + 1;
      sub_228348840(v77, v72 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v87, sub_228199F78);
      v75 += v114;
      --v70;
    }

    while (v70);
  }

  else
  {

    v72 = MEMORY[0x277D84F90];
  }

LABEL_46:
  sub_2283488A8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v88 = *(sub_22838FEF0() - 8);
  v89 = *(v88 + 72);
  v90 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_228398270;
  sub_228194C70(v52);

  sub_22838FED0();
  sub_228194C70(v72);

  sub_22838FED0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228194C70(v113);

  sub_22838FED0();
  return v91;
}

uint64_t sub_228348778(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2283487D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228348840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2283488A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228348930(uint64_t a1)
{
  v2 = sub_22834A0E4(&qword_27D828160);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_228348998()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228349F00(0, &qword_27D828148, type metadata accessor for DayPickerItem);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for DayPickerItem();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  swift_beginAccess();
  sub_228349F54(v0 + v16, v28, &qword_280DDCD50, sub_22817A700);
  if (v28[3])
  {
    sub_22817A700();
    v17 = swift_dynamicCast();
    (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_228349E40(v10, v15);
      sub_22834925C(v15);
      return sub_228349EA4(v15);
    }
  }

  else
  {
    sub_228349DE4(v28, &qword_280DDCD50, sub_22817A700);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_228349DE4(v10, &qword_27D828148, type metadata accessor for DayPickerItem);
  sub_228391150();
  v19 = sub_2283911A0();
  v20 = sub_2283925C0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136446210;
    v28[0] = ObjectType;
    swift_getMetatypeMetadata();
    v23 = sub_228392020();
    v25 = sub_2281C96FC(v23, v24, &v27);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_22816B000, v19, v20, "[%{public}s]: Unexpected view model.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AAB7B80](v22, -1, -1);
    MEMORY[0x22AAB7B80](v21, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_228348D68()
{
  sub_228349F00(0, &qword_27D828148, type metadata accessor for DayPickerItem);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26[-v3];
  sub_228349F00(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v26[-v10];
  v12 = sub_2283913A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  swift_beginAccess();
  sub_228349F54(v0 + v17, v27, &qword_280DDCD50, sub_22817A700);
  if (!v28)
  {
    sub_228349DE4(v27, &qword_280DDCD50, sub_22817A700);
    v21 = type metadata accessor for DayPickerItem();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    goto LABEL_6;
  }

  sub_22817A700();
  v18 = type metadata accessor for DayPickerItem();
  v19 = swift_dynamicCast();
  v20 = *(v18 - 8);
  (*(v20 + 56))(v4, v19 ^ 1u, 1, v18);
  if ((*(v20 + 48))(v4, 1, v18) == 1)
  {
LABEL_6:
    sub_228349DE4(v4, &qword_27D828148, type metadata accessor for DayPickerItem);
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_7;
  }

  sub_228349F54(&v4[*(v18 + 28)], v11, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  sub_228349EA4(v4);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_7:
    sub_228349DE4(v11, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    v22 = [v0 contentView];
    v23 = [objc_opt_self() systemBackgroundColor];
    [v22 setBackgroundColor_];

    goto LABEL_8;
  }

  (*(v13 + 32))(v16, v11, v12);
  (*(v13 + 16))(v9, v16, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  MEMORY[0x22AAB6420](v9);
  (*(v13 + 8))(v16, v12);
LABEL_8:
  v24 = [v0 contentView];
  [v24 setPreservesSuperviewLayoutMargins_];

  v25 = [v0 contentView];
  [v25 setLayoutMargins_];
}

void sub_22834925C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_228391130();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v30 - v10;
  v12 = type metadata accessor for DayPickerItem();
  v13 = v5[2];
  v13(v11, a1 + *(v12 + 20), v4);
  v13(v9, a1 + *(v12 + 24), v4);
  v14 = type metadata accessor for DayPicker();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_dayViews] = MEMORY[0x277D84F90];
  v13(&v15[OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_selectedDays], v11, v4);
  v13(&v15[OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_disabledDays], v9, v4);
  v31.receiver = v15;
  v31.super_class = v14;
  v16 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2281EA860();
  sub_2281EAEC0();
  [v16 setLayoutMargins_];

  v17 = v5[1];
  v17(v9, v4);
  v17(v11, v4);
  [v16 addTarget:v2 action:sel_selectedDaysDidChange_ forControlEvents:4096];
  v18 = [v2 contentView];
  [v18 addSubview_];

  v19 = OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_dayPicker;
  v20 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_dayPicker];
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_dayPicker] = v16;
  if (v20)
  {
    v21 = v16;
    [v20 removeFromSuperview];
  }

  else
  {
    v22 = v16;
  }

  sub_228348D68();
  v23 = *&v2[v19];
  if (v23)
  {
    v24 = v23;
    v25 = [v2 contentView];
    v26 = [v25 layoutMarginsGuide];

    UIView.alignConstraints(to:)(v26);
    v27 = *MEMORY[0x277D12788];
    v30[0] = sub_228392000();
    v30[1] = v28;

    MEMORY[0x22AAB5C80](0xD000000000000021, 0x80000002283B5110);

    v29 = sub_228391FC0();

    [v24 setAccessibilityIdentifier_];
  }
}

uint64_t sub_228349600(uint64_t a1)
{
  v3 = sub_228391130();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228349F00(0, &qword_27D828148, type metadata accessor for DayPickerItem);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24[-v10];
  v12 = type metadata accessor for DayPickerItem();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  swift_beginAccess();
  sub_228349F54(v1 + v17, v25, &qword_280DDCD50, sub_22817A700);
  if (v26)
  {
    sub_22817A700();
    v18 = swift_dynamicCast();
    (*(v13 + 56))(v11, v18 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_228349E40(v11, v16);
      v19 = &v16[*(v12 + 32)];
      v21 = *v19;
      v20 = *(v19 + 1);
      v22 = OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_selectedDays;
      swift_beginAccess();
      (*(v4 + 16))(v7, a1 + v22, v3);
      v21(v7);
      (*(v4 + 8))(v7, v3);
      return sub_228349EA4(v16);
    }
  }

  else
  {
    sub_228349DE4(v25, &qword_280DDCD50, sub_22817A700);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  return sub_228349DE4(v11, &qword_27D828148, type metadata accessor for DayPickerItem);
}

id sub_228349AD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DayPickerCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228349B90@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  swift_beginAccess();
  return sub_228349F54(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228349C04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228348998();
  return sub_228349DE4(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_228349C8C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228349CF0;
}

uint64_t sub_228349CF0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_228348998();
  }

  return result;
}

uint64_t sub_228349D24()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22838FE40();
}

uint64_t type metadata accessor for DayPickerItem()
{
  result = qword_27D828150;
  if (!qword_27D828150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228349DE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228349F00(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228349E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayPickerItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228349EA4(uint64_t a1)
{
  v2 = type metadata accessor for DayPickerItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228349F00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_228349F54(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_228349F00(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_228349FE8()
{
  sub_228391130();
  if (v0 <= 0x3F)
  {
    sub_228349F00(319, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    if (v1 <= 0x3F)
    {
      sub_2281C35D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22834A0E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DayPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_22834A2FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsHistoryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22834A388()
{
  v1 = *(v0 + qword_27D828168);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D828170));
  v2 = *(v0 + qword_27D828178 + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D828180));
  v3 = *(v0 + qword_27D828188);

  v4 = *(v0 + qword_27D828190 + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D828198));
  v5 = *(v0 + qword_27D8281A0);
}

uint64_t InteractionDetailDataSource.deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v1 = *(v0 + qword_27D828168);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D828170));
  v2 = *(v0 + qword_27D828178 + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D828180));
  v3 = *(v0 + qword_27D828188);

  v4 = *(v0 + qword_27D828190 + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D828198));
  v5 = *(v0 + qword_27D8281A0);

  return v0;
}

uint64_t InteractionDetailDataSource.__deallocating_deinit()
{
  InteractionDetailDataSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall InteractionDetailDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionResultDetailCell();
  sub_22834B168(&qword_27D824078, type metadata accessor for InteractionResultDetailCell);
  sub_2283926B0();
  type metadata accessor for InteractionResultDetailEducationCell();
  sub_22834B168(&qword_27D8281A8, type metadata accessor for InteractionResultDetailEducationCell);
  sub_2283926B0();
  sub_228390300();
  sub_2283926C0();
}

uint64_t sub_22834A644()
{
  type metadata accessor for InteractionResultDetailCell();
  sub_22834B168(&qword_27D824078, type metadata accessor for InteractionResultDetailCell);
  sub_2283926B0();
  type metadata accessor for InteractionResultDetailEducationCell();
  sub_22834B168(&qword_27D8281A8, type metadata accessor for InteractionResultDetailEducationCell);
  sub_2283926B0();
  sub_228390300();
  return sub_2283926C0();
}

uint64_t InteractionDetailDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x277D767D0];
  if (sub_228392000() == a1 && v12 == a2)
  {
  }

  else
  {
    v14 = sub_228393460();

    if ((v14 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_22834B168(&qword_27D823958, MEMORY[0x277D10EC8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_2281BC044();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_228397F40;
  v17 = MEMORY[0x277D83C10];
  *(v16 + 56) = MEMORY[0x277D83B88];
  *(v16 + 64) = v17;
  *(v16 + 32) = 1;
  sub_22838F0C0();
  if (*(v16 + 16))
  {
    sub_228391FD0();
  }

  v21[0] = 0x74497265746F6F46;
  v21[1] = 0xEB000000005F6D65;
  sub_22838F490();
  v18 = sub_22838F450();
  v20 = v19;
  (*(v7 + 8))(v10, v6);
  MEMORY[0x22AAB5C80](v18, v20);

  a3[3] = sub_228390330();
  a3[4] = sub_22834B168(&qword_27D8244F8, MEMORY[0x277D110D8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390320();
}

void *sub_22834AA74(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2 >> 62)
  {
    v29 = *(a1 + 16);
    v3 = sub_2283930D0();
    v2 = v29;
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v34 = MEMORY[0x277D84F90];
  v5 = v2;

  result = sub_2281C9DB4(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v34;
    type metadata accessor for InteractionResultDetailEducationCell();
    v7 = 0;
    v8 = v5;
    v30 = v5 & 0xC000000000000001;
    v9 = v3;
    v10 = v8;
    do
    {
      if (v30)
      {
        v11 = MEMORY[0x22AAB6D80](v7);
      }

      else
      {
        v11 = *(v8 + 8 * v7 + 32);
      }

      v12 = v11;
      sub_22834B070();
      v14 = v13;
      v15 = *(v13 + 48);
      v16 = *(v13 + 52);
      v17 = swift_allocObject();
      sub_22838F490();
      v18 = (v17 + qword_27D828D58);
      sub_22834B168(&qword_27D8281A8, type metadata accessor for InteractionResultDetailEducationCell);
      *v18 = sub_22838FBB0();
      v18[1] = v19;
      *(v17 + *(*v17 + 120)) = v12;
      v32 = v14;
      v20 = sub_22834B168(&qword_27D8281D0, sub_22834B070);
      v33 = v20;
      v34 = v4;
      v31[0] = v17;
      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2281C9DB4((v21 > 1), v22 + 1, 1);
        v14 = v32;
        v23 = v33;
      }

      else
      {
        v23 = v20;
      }

      ++v7;
      v24 = __swift_mutable_project_boxed_opaque_existential_1(v31, v14);
      v25 = *(*(v14 - 8) + 64);
      MEMORY[0x28223BE20](v24);
      v27 = &v31[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v27);
      sub_2282E841C(v22, v27, &v34, v14, v23);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v4 = v34;
      v8 = v10;
    }

    while (v9 != v7);

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_22834AD78(uint64_t a1)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  sub_228390040();
  if (a1)
  {
    sub_228390000();
    v10 = *(v3 + 8);
    v10(v7, v2);
    sub_228390070();
    v11 = sub_2283900C0();
    v10(v9, v2);
  }

  else
  {
    v12 = sub_228390090();
    *v13 = 0x4034000000000000;
    v12(v15, 0);
    v11 = sub_2283900C0();
    (*(v3 + 8))(v9, v2);
  }

  return v11;
}

uint64_t type metadata accessor for InteractionDetailDataSource()
{
  result = qword_27D8281B8;
  if (!qword_27D8281B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22834B070()
{
  if (!qword_27D8281C8)
  {
    type metadata accessor for InteractionResultDetailEducationCell();
    sub_22834B11C();
    sub_22834B168(&qword_27D8281A8, type metadata accessor for InteractionResultDetailEducationCell);
    v0 = type metadata accessor for InteractionResultItem();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8281C8);
    }
  }
}

unint64_t sub_22834B11C()
{
  result = qword_280DDBA10;
  if (!qword_280DDBA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDBA10);
  }

  return result;
}

uint64_t sub_22834B168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MedicationsDayHistoryDataSource.__allocating_init(doseEventPublisher:healthStore:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return MedicationsDayHistoryDataSource.init(doseEventPublisher:healthStore:)(a1, a2);
}

uint64_t MedicationsDayHistoryDataSource.init(doseEventPublisher:healthStore:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v29 = a1;
  sub_22834B818(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  sub_22834B694();
  v31 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22838F4A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_27D8281F8) = 0;
  *(v3 + qword_27D8281D8) = a2;
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  v30 = a2;
  sub_2283931D0();

  strcpy(v33, "MutableArray<");
  HIWORD(v33[1]) = -4864;
  sub_22838F490();
  v19 = sub_22838F450();
  v21 = v20;
  (*(v15 + 8))(v18, v14);
  MEMORY[0x22AAB5C80](v19, v21);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v22 = sub_22838FF30();
  v33[0] = v29;
  sub_22820FD30();
  swift_retain_n();
  v23 = sub_228392790();
  v32 = v23;
  v24 = sub_228392730();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_22834B780();
  sub_22834BC90(&qword_27D8281F0, sub_22834B780);
  sub_22834BC90(&qword_280DDBAC0, sub_22820FD30);
  sub_228391A70();
  sub_2281A16F0(v8);

  swift_allocObject();
  swift_weakInit();

  sub_22834BC90(&qword_27D828200, sub_22834B694);
  v25 = v31;
  v26 = sub_228391AC0();

  (*(v10 + 8))(v13, v25);
  v27 = *(v22 + qword_27D8281F8);
  *(v22 + qword_27D8281F8) = v26;

  return v22;
}

void sub_22834B694()
{
  if (!qword_27D8281E0)
  {
    sub_22834B780();
    sub_22820FD30();
    sub_22834BC90(&qword_27D8281F0, sub_22834B780);
    sub_22834BC90(&qword_280DDBAC0, sub_22820FD30);
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8281E0);
    }
  }
}

void sub_22834B780()
{
  if (!qword_27D8281E8)
  {
    sub_22834B818(255, &qword_27D825AF0, sub_228338A14, MEMORY[0x277D83940]);
    v0 = sub_2283917F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8281E8);
    }
  }
}

void sub_22834B818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22834B87C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_228337EA8(v1);
    sub_228194894(v3);

    sub_22838FF60();
  }

  return result;
}

uint64_t sub_22834B918()
{
  type metadata accessor for MedicationsDayHistoryCell();
  sub_22834BC90(&qword_27D8274F8, type metadata accessor for MedicationsDayHistoryCell);
  sub_2283926B0();
  type metadata accessor for MedicationsDayHistoryEmptyCell();
  sub_22834BC90(&qword_27D828208, type metadata accessor for MedicationsDayHistoryEmptyCell);
  sub_2283926B0();
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_22834BC90(&qword_27D823328, type metadata accessor for MedicationsDayHistoryHeaderCell);
  return sub_2283926B0();
}

uint64_t sub_22834BA28()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v5 = [objc_opt_self() systemBackgroundColor];
  sub_228390050();
  v6 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v6;
}

void sub_22834BB50()
{
  v1 = *(v0 + qword_27D8281F8);

  v2 = *(v0 + qword_27D8281D8);
}

uint64_t MedicationsDayHistoryDataSource.deinit()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D8281F8);

  return v0;
}

uint64_t MedicationsDayHistoryDataSource.__deallocating_deinit()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D8281F8);

  v2 = *(v0 + qword_27D8281D8);

  return swift_deallocClassInstance();
}

uint64_t sub_22834BC90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MedicationsDayHistoryDataSource()
{
  result = qword_27D828218;
  if (!qword_27D828218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22834BEF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_item;
  swift_beginAccess();
  return sub_22817A890(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22834BF68(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v2 + v4);
  swift_endAccess();
  sub_22834D104();
  v5 = *MEMORY[0x277D12788];
  sub_228392000();

  MEMORY[0x22AAB5C80](0xD000000000000032, 0x80000002283B52B0);

  v6 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  return sub_22817A8FC(a1, &qword_280DDCD50, sub_22817A700);
}

void (*sub_22834C070(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22834C0D4;
}

void sub_22834C0D4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_22834D104();
    v5 = *MEMORY[0x277D12788];
    sub_228392000();

    MEMORY[0x22AAB5C80](0xD000000000000032, 0x80000002283B52B0);

    v6 = sub_228391FC0();

    [v4 setAccessibilityIdentifier_];
  }
}

id sub_22834C1B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v1 = sub_228391FC0();

  [v0 setText_];

  v2 = [objc_opt_self() systemCyanColor];
  [v0 setTextColor_];

  v3 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v0 setFont_];

  [v0 setNumberOfLines_];
  [v0 setLineBreakMode_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v4 = v0;
  LODWORD(v5) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v5];
  v6 = *MEMORY[0x277D12788];
  sub_228392000();

  MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283B53B0);

  MEMORY[0x22AAB5C80](0x656C7469542ELL, 0xE600000000000000);

  v7 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  return v4;
}

id sub_22834C450()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell____lazy_storage___subtitleView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell____lazy_storage___subtitleView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell____lazy_storage___subtitleView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for InteractionSummaryContentView()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22834C5C4(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_titleLabel;
  *&v2[v5] = sub_22834C1B8();
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_chevronView;
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  *&v2[v6] = MEMORY[0x22AAB6680]();
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell____lazy_storage___subtitleView] = 0;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for InteractionSummaryItemCell();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

void sub_22834C754()
{
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_titleLabel];
  [v1 addSubview_];

  v3 = [v0 &selRef_didTapDay_];
  v4 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_chevronView];
  [v3 addSubview_];

  v5 = [v0 &selRef_didTapDay_];
  v6 = sub_22834C450();
  [v5 addSubview_];

  v46 = objc_opt_self();
  sub_228180ED0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2283A25D0;
  v8 = [v2 leadingAnchor];
  v9 = [v0 &selRef_didTapDay_];
  v10 = [v9 layoutMarginsGuide];

  v11 = [v10 &selRef_logTimeChanged_ + 1];
  v12 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v12;
  v13 = [v2 topAnchor];
  v14 = [v0 &selRef_didTapDay_];
  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:13.0];
  *(v7 + 40) = v16;
  v17 = [v4 &selRef_logTimeChanged_ + 1];
  v18 = [v2 trailingAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18 constant:8.0];

  *(v7 + 48) = v19;
  v20 = [v4 trailingAnchor];
  v21 = [v0 &selRef_didTapDay_];
  v22 = [v21 layoutMarginsGuide];

  v23 = [v22 trailingAnchor];
  v24 = [v20 constraintEqualToAnchor_];

  *(v7 + 56) = v24;
  v25 = [v4 centerYAnchor];
  v26 = [v2 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v7 + 64) = v27;
  v28 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell____lazy_storage___subtitleView;
  v29 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell____lazy_storage___subtitleView] leadingAnchor];
  v30 = [v0 contentView];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v29 &selRef_freeTextMedicationName + 5];

  *(v7 + 72) = v33;
  v34 = [*&v0[v28] topAnchor];
  v35 = [v2 lastBaselineAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:18.0];

  *(v7 + 80) = v36;
  v37 = [*&v0[v28] trailingAnchor];
  v38 = [v0 contentView];
  v39 = [v38 layoutMarginsGuide];

  v40 = [v39 trailingAnchor];
  v41 = [v37 constraintEqualToAnchor_];

  *(v7 + 88) = v41;
  v42 = [*&v0[v28] bottomAnchor];
  v43 = [v0 contentView];
  v44 = [v43 bottomAnchor];

  v45 = [v42 constraintEqualToAnchor:v44 constant:-12.0];
  *(v7 + 96) = v45;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v47 = sub_228392190();

  [v46 activateConstraints_];
}

uint64_t sub_22834CD70()
{
  v1 = v0;
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = sub_228391330();
  v13 = type metadata accessor for InteractionSummaryItemCell();
  v21.receiver = v1;
  v21.super_class = v13;
  objc_msgSendSuper2(&v21, sel__bridgedUpdateConfigurationUsingState_, v12);

  if ([v1 isHighlighted])
  {
    MEMORY[0x22AAB6410]();
    v14 = sub_2283913A0();
    if ((*(*(v14 - 8) + 48))(v11, 1, v14))
    {
      v15 = MEMORY[0x277D74BD0];
      sub_22817A890(v11, v9, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v9);
      v16 = v11;
      return sub_22817A8FC(v16, &unk_280DDBCD0, v15);
    }

    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BA0();
    sub_228391370();
    v19 = v11;
  }

  else
  {
    MEMORY[0x22AAB6410]();
    v17 = sub_2283913A0();
    if ((*(*(v17 - 8) + 48))(v6, 1, v17))
    {
      v15 = MEMORY[0x277D74BD0];
      sub_22817A890(v6, v9, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v9);
      v16 = v6;
      return sub_22817A8FC(v16, &unk_280DDBCD0, v15);
    }

    v20 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_228391370();
    v19 = v6;
  }

  return MEMORY[0x22AAB6420](v19);
}

void sub_22834D104()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_item;
  swift_beginAccess();
  sub_22817A890(v1 + v7, v21, &qword_280DDCD50, sub_22817A700);
  if (v22)
  {
    sub_22817A700();
    type metadata accessor for InteractionSummaryItem();
    if (swift_dynamicCast())
    {
      v8 = v20;
      v9 = sub_22834C450();
      sub_22834DD5C(v8);

      return;
    }
  }

  else
  {
    sub_22817A8FC(v21, &qword_280DDCD50, sub_22817A700);
  }

  sub_228391150();
  v10 = v1;
  v11 = sub_2283911A0();
  v12 = sub_2283925C0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v2;
    v20 = v14;
    v15 = v14;
    *v13 = 136446210;
    sub_22817A890(v1 + v7, v21, &qword_280DDCD50, sub_22817A700);
    sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
    v16 = sub_228392040();
    v18 = sub_2281C96FC(v16, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_22816B000, v11, v12, "Incorrect view model for InteractionSummaryItemCell: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAB7B80](v15, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);

    (*(v3 + 8))(v6, v19);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

id InteractionSummaryItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionSummaryItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id InteractionSummaryContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_22834D614()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *MEMORY[0x277D12788];
    v15 = sub_228392000();
    v16 = v7;

    MEMORY[0x22AAB5C80](0xD00000000000001ELL, 0x80000002283B5450);

    MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

    v8 = sub_228391FC0();

    [v5 setAccessibilityIdentifier_];

    [v5 setNumberOfLines_];
    [v5 setAdjustsFontForContentSizeCategory_];
    [v5 setLineBreakMode_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v9 = *MEMORY[0x277D76A28];
    v10 = *MEMORY[0x277D743F8];
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

id InteractionSummaryContentView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView_viewModel] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for InteractionSummaryContentView();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = sub_22834D614();
  [v9 addSubview_];

  sub_22834DB00();
  return v9;
}

id InteractionSummaryContentView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InteractionSummaryContentView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView_viewModel) = 0;
  sub_228393300();
  __break(1u);
}

void sub_22834DB00()
{
  v1 = objc_opt_self();
  sub_228180ED0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F00;
  v3 = sub_22834D614();
  v4 = [v3 leadingAnchor];

  v5 = [v0 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel;
  v8 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel] trailingAnchor];
  v9 = [v0 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  v11 = [*&v0[v7] topAnchor];
  v12 = [v0 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:8.0];

  *(v2 + 48) = v13;
  v14 = [*&v0[v7] bottomAnchor];
  v15 = [v0 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v2 + 56) = v16;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v17 = sub_228392190();

  [v1 activateConstraints_];
}

void sub_22834DD5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22834D614();
  v5 = [v4 font];

  if (v5)
  {
    v6 = sub_22834DF80(v5);

    v7 = *(v2 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel);
    if (v6)
    {
      [v7 setAttributedText_];
    }

    else
    {
      v8 = *(a1 + 16);
      if (v8)
      {
        v9 = v7;
        if (v8 != 1)
        {
          Array<A>.interactionSummaryTitle()(v8);
        }
      }

      else
      {
        v10 = qword_280DDCF18;
        v9 = v7;
        if (v10 != -1)
        {
          swift_once();
        }

        v16 = 0xE000000000000000;
        sub_22838F0C0();
      }

      v6 = sub_228391FC0();

      [v9 setText_];
    }

    v11 = *(v2 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel);
    v12 = *(a1 + 16);
    v13 = objc_opt_self();
    v14 = v11;
    v15 = &selRef_secondaryLabelColor;
    if (v12)
    {
      v15 = &selRef_labelColor;
    }

    v17 = [v13 *v15];
    [v14 setTextColor_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22834DF80(void *a1)
{
  result = *(v1 + 16);
  if (result)
  {
    if (result == 1)
    {
      goto LABEL_3;
    }

    v15 = MEMORY[0x277D84F98];
    sub_2281FF388(result, &v15);
    v7 = v15;
    if (*(v15 + 16) && (v8 = v1, v9 = sub_2281A9BCC(1), (v10 & 1) != 0))
    {
      v11 = *(*(v7 + 56) + 8 * v9);

      if (v11 > 0)
      {
        v12 = *(v8 + 16);
        if (!v12)
        {
          if (qword_280DDCF18 != -1)
          {
            swift_once();
          }

          v4 = sub_22838F0C0();
          v5 = v14;
          goto LABEL_4;
        }

        if (v12 != 1)
        {
          v4 = Array<A>.interactionSummaryTitle()(v12);
          v5 = v13;
          goto LABEL_4;
        }

LABEL_3:
        v4 = 0x6C616E7265746E49;
        v5 = 0xEE00726F72724520;
LABEL_4:
        v6 = sub_22834E1C4(v4, v5, a1);

        return v6;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id InteractionSummaryContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionSummaryContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22834E1C4(void *a1, uint64_t a2, void *a3)
{
  v14[0] = a3;
  v14[1] = a1;
  sub_22834E3E0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &unk_280DDBAA0, 0x277CCA898);
  sub_228180ED0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228396260;
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  v8 = objc_opt_self();
  v9 = [v8 systemBlackColor];
  v10 = [v8 systemWhiteColor];
  v11 = sub_228392B90();

  *(v7 + 32) = v11;
  v12 = sub_228392800();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);

  [v8 labelColor];
  v14[0];
  return sub_2283927F0();
}

void sub_22834E3E0()
{
  if (!qword_27D825628)
  {
    sub_228392800();
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825628);
    }
  }
}

uint64_t MedicationDetailsDataSource.__allocating_init(with:healthStore:)(void *a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return MedicationDetailsDataSource.init(with:healthStore:)(a1, a2);
}

uint64_t MedicationDetailsDataSource.init(with:healthStore:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = qword_27D828258;
  *(v3 + qword_27D828258) = 0;
  *(v3 + qword_27D828260) = MEMORY[0x277D84FA0];
  *(v3 + qword_27D828268) = a2;
  *(v3 + v6) = a1;
  v7 = sub_228390EA0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = a2;

  *(v3 + qword_27D828270) = sub_228390E90();
  sub_228391870();
  v11 = [v24 localizedOntologyEducationContent];
  if (v11)
  {
    v12 = v11;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA70();
    v14 = v13;

    if (v14)
    {
    }
  }

  else
  {
  }

  sub_228391870();
  v15 = [v24 localizedOntologyEducationContent];
  if (v15)
  {
    v16 = v15;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA90();
    v18 = v17;

    if (v18)
    {
    }
  }

  else
  {
  }

  v19 = sub_228391020();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v3 + qword_27D828278) = sub_228390FF0();
  v22 = sub_22838F920();

  sub_22834EA9C(a1);

  return v22;
}

uint64_t MedicationDetailsDataSource.__allocating_init(with:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return MedicationDetailsDataSource.init(with:)(a1);
}

uint64_t MedicationDetailsDataSource.init(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_22838F4A0();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_27D828258) = 0;
  *(v1 + qword_27D828260) = MEMORY[0x277D84FA0];
  v8 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *(v2 + qword_27D828268) = v8;
  v9 = sub_228390EA0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = v8;
  *(v2 + qword_27D828270) = sub_228390E90();
  v13 = sub_228391020();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v2 + qword_27D828278) = sub_228390FF0();
  v16 = MEMORY[0x277D84560];
  sub_228350130(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v17 = *(sub_22838FEF0() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v29 = xmmword_228397F40;
  *(v20 + 16) = xmmword_228397F40;
  sub_228350130(0, &qword_27D823918, sub_228182780, v16);
  v21 = swift_allocObject();
  *(v21 + 16) = v29;
  sub_228180FB0(a1, v32);
  v22 = type metadata accessor for MedicationDetailsCardItem();
  *(v21 + 56) = v22;
  *(v21 + 64) = sub_22834EEBC(&unk_27D825030, type metadata accessor for MedicationDetailsCardItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
  v24 = boxed_opaque_existential_1 + v22[5];
  sub_22838F490();
  v25 = (boxed_opaque_existential_1 + v22[7]);
  type metadata accessor for MedicationDetailsCardCell();
  sub_22834EEBC(&unk_27D824FB0, type metadata accessor for MedicationDetailsCardCell);
  *v25 = sub_22838FBB0();
  v25[1] = v26;
  sub_22816DFFC(v32, boxed_opaque_existential_1);
  *(boxed_opaque_existential_1 + v22[6]) = 0;
  sub_22838F490();
  sub_22838F450();
  (*(v30 + 8))(v7, v31);
  sub_22838FED0();
  v27 = sub_22838F920();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v27;
}

uint64_t sub_22834EA9C(void *a1)
{
  v25 = a1;
  sub_228350130(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  sub_22834FF4C();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22834FFF8();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_2281A65B4();
  type metadata accessor for MedicationDetailsDataProvider(0);
  sub_22834EEBC(&qword_27D8241C0, sub_2281A65B4);
  sub_2283919F0();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v18 = sub_228392790();
  v26 = v18;
  v19 = sub_228392730();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  sub_22834EEBC(&qword_27D8282A8, sub_22834FF4C);
  sub_2281A1504();
  sub_228391A70();
  sub_2281A16F0(v5);

  (*(v8 + 8))(v11, v7);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v25;
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  sub_22834EEBC(&qword_27D8282B0, sub_22834FFF8);

  sub_228391AC0();

  (*(v14 + 8))(v17, v13);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22834EEBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22834EF04@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_228350130(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v30 = *a1;
  v8 = v30;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v29 = sub_228390F20();
  v10 = v9;
  v11 = sub_2283929A0();
  v13 = v12;
  v14 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8strengthSSSgvg_0();
  v16 = v15;
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  v17 = [v8 userSpecifiedNotes];
  if (v17)
  {
    v18 = v17;
    v19 = sub_228392000();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  if (v16)
  {
    v24 = v14;
  }

  else
  {
    v24 = 0;
  }

  *a2 = v29;
  a2[1] = v10;
  if (v13)
  {
    v22 = v13;
    v25 = v11;
  }

  else
  {
    v25 = 0;
  }

  a2[2] = v25;
  a2[3] = v22;
  a2[4] = v24;
  a2[5] = v23;
  v26 = type metadata accessor for MedicationDetailsDataProvider(0);
  result = sub_2281AA8D4(v7, a2 + *(v26 + 28));
  v28 = (a2 + *(v26 + 32));
  *v28 = v19;
  v28[1] = v21;
  return result;
}

uint64_t sub_22834F0AC(uint64_t a1)
{
  v2 = sub_22838F4A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = v3;

    sub_22838F910();

    v23 = sub_22838FCD0();

    v8 = MEMORY[0x277D84560];
    sub_228350130(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    v9 = *(sub_22838FEF0() - 8);
    v10 = *(v9 + 72);
    v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    v20 = xmmword_228397F40;
    *(v11 + 16) = xmmword_228397F40;
    sub_228350130(0, &qword_27D823918, sub_228182780, v8);
    v12 = swift_allocObject();
    *(v12 + 16) = v20;
    v26 = type metadata accessor for MedicationDetailsDataProvider(0);
    v27 = &protocol witness table for MedicationDetailsDataProvider;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
    sub_2283500CC(a1, boxed_opaque_existential_1);
    sub_228391870();
    v14 = v24;
    v15 = type metadata accessor for MedicationDetailsCardItem();
    *(v12 + 56) = v15;
    *(v12 + 64) = sub_22834EEBC(&unk_27D825030, type metadata accessor for MedicationDetailsCardItem);
    v16 = __swift_allocate_boxed_opaque_existential_1((v12 + 32));
    v17 = v16 + v15[5];
    sub_22838F490();
    v18 = (v16 + v15[7]);
    type metadata accessor for MedicationDetailsCardCell();
    sub_22834EEBC(&unk_27D824FB0, type metadata accessor for MedicationDetailsCardCell);
    *v18 = sub_22838FBB0();
    v18[1] = v19;
    sub_22816DFFC(&v25, v16);
    *(v16 + v15[6]) = v14;
    sub_22838F490();
    sub_22838F450();
    (*(v22 + 8))(v6, v2);
    sub_22838FED0();
    sub_22838FF50();
  }

  return result;
}

uint64_t sub_22834F440(uint64_t a1)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  v7 = sub_2283900C0();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_22834F560()
{
  v1 = *(v0 + qword_27D828270);

  v2 = *(v0 + qword_27D828258);

  v3 = *(v0 + qword_27D828260);

  v4 = *(v0 + qword_27D828278);
}

uint64_t MedicationDetailsDataSource.deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v1 = *(v0 + qword_27D828270);

  v2 = *(v0 + qword_27D828258);

  v3 = *(v0 + qword_27D828260);

  v4 = *(v0 + qword_27D828278);

  return v0;
}

uint64_t MedicationDetailsDataSource.__deallocating_deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v1 = *(v0 + qword_27D828270);

  v2 = *(v0 + qword_27D828258);

  v3 = *(v0 + qword_27D828260);

  v4 = *(v0 + qword_27D828278);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall MedicationDetailsDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390120();
  sub_2283926D0();
  sub_228390420();
  sub_2283926D0();
  type metadata accessor for MedicationDetailsCardCell();
  sub_22834EEBC(&unk_27D824FB0, type metadata accessor for MedicationDetailsCardCell);
  sub_2283926B0();
}

uint64_t sub_22834F7E8()
{
  sub_228390120();
  sub_2283926D0();
  sub_228390420();
  sub_2283926D0();
  type metadata accessor for MedicationDetailsCardCell();
  sub_22834EEBC(&unk_27D824FB0, type metadata accessor for MedicationDetailsCardCell);
  return sub_2283926B0();
}

uint64_t MedicationDetailsDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_228391590();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (*(v1 + qword_27D828258))
  {

    sub_228391870();

    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_22838F0C0();
    swift_allocObject();
    swift_weakInit();

    sub_228391500();
    v5 = sub_22838FB60();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = sub_22838FB50();
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391500();
    v5 = sub_22838FB60();
    v9 = *(v5 + 48);
    v10 = *(v5 + 52);
    swift_allocObject();
    v8 = sub_22838FB50();
  }

  a1[3] = v5;
  result = sub_22834EEBC(&qword_27D823960, MEMORY[0x277D10E18]);
  a1[4] = result;
  *a1 = v8;
  return result;
}

void sub_22834FBCC(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + qword_27D828258))
    {
      v4 = *(Strong + qword_27D828258);

      sub_228391870();

      v5 = *(v3 + qword_27D828278);

      sub_228390FE0();

      v6 = *(v3 + qword_27D828268);
      v7 = objc_allocWithZone(type metadata accessor for MedicationDetailEditViewController());
      v8 = v6;
      v9 = v14;
      v10 = sub_2283293A4(v8, v9);

      v11 = [a1 viewController];
      if (v11)
      {
        v12 = v11;
        v13 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
        [v13 setModalPresentationStyle_];
        [v13 setModalInPresentation_];
        [v12 presentViewController:v13 animated:1 completion:0];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for MedicationDetailsDataSource()
{
  result = qword_27D828288;
  if (!qword_27D828288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22834FF4C()
{
  if (!qword_27D828298)
  {
    sub_2281A65B4();
    type metadata accessor for MedicationDetailsDataProvider(255);
    sub_22834EEBC(&qword_27D8241C0, sub_2281A65B4);
    v0 = sub_228391740();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828298);
    }
  }
}

void sub_22834FFF8()
{
  if (!qword_27D8282A0)
  {
    sub_22834FF4C();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22834EEBC(&qword_27D8282A8, sub_22834FF4C);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8282A0);
    }
  }
}

uint64_t sub_2283500C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_22834F0AC(a1);
}

uint64_t sub_2283500CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationDetailsDataProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228350130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22835030C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setNumberOfLines_];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v4 = sub_228391FC0();

  [v2 setText_];

  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_22838F0C0();
    v5 = sub_228391FC0();

    [v2 setText_];
  }

  [v2 setTextAlignment_];
  v27 = v2;
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v0 contentView];
  [v6 addSubview_];

  v7 = [v0 contentView];
  v8 = v1;
  [v7 addSubview_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = objc_opt_self();
  sub_228180ED0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228397F00;
  v11 = [v8 centerYAnchor];

  v12 = [v0 contentView];
  v13 = [v12 centerYAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v10 + 32) = v14;
  v15 = [v8 centerXAnchor];

  v16 = [v0 contentView];
  v17 = [v16 centerXAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v10 + 40) = v18;
  v19 = [v27 topAnchor];
  v20 = [v8 bottomAnchor];

  v21 = [v19 constraintEqualToAnchor:v20 constant:8.0];
  *(v10 + 48) = v21;
  v22 = [v27 centerXAnchor];

  v23 = [v0 contentView];
  v24 = [v23 centerXAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v10 + 56) = v25;
  sub_2281BF1B8();
  v26 = sub_228392190();

  [v9 activateConstraints_];

  [v8 startAnimating];
}

id sub_228350820()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShardSpinnerDownloadCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228350888@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24ShardSpinnerDownloadCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2283508E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24ShardSpinnerDownloadCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2283509C4()
{
  type metadata accessor for ShardSpinnerDownloadCell();
  sub_228350AD4(&qword_27D8239D8, type metadata accessor for ShardSpinnerDownloadCell);
  return sub_22838FBB0();
}

uint64_t sub_228350A28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_228350AD4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HistoryDisplayContext.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

unint64_t sub_228350BAC()
{
  result = qword_27D8282C0;
  if (!qword_27D8282C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8282C0);
  }

  return result;
}

void sub_228350C6C()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = objc_opt_self();
  v4 = &selRef_secondarySystemBackgroundColor;
  if (v2 != 2)
  {
    v4 = &selRef_systemBackgroundColor;
  }

  v5 = [v3 *v4];
  [v0 setBackgroundColor_];

  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v6 setContentMode_];
  [v0 addSubview_];
  [v6 hk:v0 alignCenterConstraintsWithView:?];
  v7 = [v0 heightAnchor];
  v8 = [v0 widthAnchor];
  v10 = [v7 constraintEqualToAnchor_];

  LODWORD(v9) = 1148846080;
  [v10 setPriority_];
  [v10 setActive_];
}

void sub_228350ED0(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SymbolWithPlatterView();
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = objc_opt_self();
  v6 = &selRef_secondarySystemBackgroundColor;
  if (v4 != 2)
  {
    v6 = &selRef_systemBackgroundColor;
  }

  v7 = [v5 *v6];
  [v1 setBackgroundColor_];
}

id sub_228351038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolWithPlatterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MedicationLogDetailsDataSource()
{
  result = qword_27D8282D8;
  if (!qword_27D8282D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2283510EC()
{
  result = type metadata accessor for MedicationLogDetailsHeaderItem();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_2283511A8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t *sub_2283511E4@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_22835120C(unint64_t a1)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = *(v1 + qword_27D8282D0);
  if (*(v9 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (*(v9 + a1 + 32))
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  v10 = sub_2283900C0();
  (*(v4 + 8))(v8, v3);
  return v10;
}

uint64_t sub_22835135C()
{
  sub_2282BDBBC(v0 + qword_27D829088);
  v1 = *(v0 + qword_27D829090);

  sub_22818B730(v0 + qword_27D829098);
  v2 = *(v0 + qword_27D8282D0);
}

uint64_t sub_2283513BC()
{
  v0 = sub_22838FFB0();
  v1 = qword_27D829088;

  sub_2282BDBBC(v2 + v1);
  v3 = *(v0 + qword_27D829090);

  sub_22818B730(v0 + qword_27D829098);
  v4 = *(v0 + qword_27D8282D0);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_2283514CC()
{
  result = qword_27D8282F8;
  if (!qword_27D8282F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8282F8);
  }

  return result;
}

uint64_t sub_228351550(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2283515A0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2283515A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_228392240();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_2283515F0()
{
  result = qword_27D828310;
  if (!qword_27D828310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828310);
  }

  return result;
}

uint64_t sub_228351668()
{
  type metadata accessor for MedicationLogDetailsUnitCell();
  sub_2283519DC(&qword_27D8272F8, type metadata accessor for MedicationLogDetailsUnitCell);
  sub_2283926B0();
  type metadata accessor for MedicationLogDetailsTimeCell();
  sub_2283519DC(&qword_27D828320, type metadata accessor for MedicationLogDetailsTimeCell);
  sub_2283926B0();
  type metadata accessor for MedicationLogDetailsTimePickerCell();
  sub_2283519DC(&qword_27D827308, type metadata accessor for MedicationLogDetailsTimePickerCell);
  sub_2283926B0();
  type metadata accessor for MedicationLogDetailsHeader();
  sub_2283519DC(&qword_27D828328, type metadata accessor for MedicationLogDetailsHeader);
  sub_2283926D0();
  sub_228390300();
  return sub_2283926C0();
}

uint64_t sub_2283517E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_228393460();

    if ((v11 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_2283519DC(&qword_27D823958, MEMORY[0x277D10EC8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  v13 = qword_27D829088;
  a3[3] = type metadata accessor for MedicationLogDetailsHeaderItem();
  a3[4] = sub_2283519DC(&qword_27D827208, type metadata accessor for MedicationLogDetailsHeaderItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);

  return sub_2282C567C(v7 + v13, boxed_opaque_existential_1);
}

uint64_t sub_2283519DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228351A24(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v5 = sub_22838F4A0();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + qword_27D829098;
  *(v2 + qword_27D829098 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + qword_27D8282D0) = &unk_283B66BC8;
  v35 = v2;
  sub_2282C567C(a2, v2 + qword_27D829088);
  *(v2 + qword_27D829090) = a1;
  sub_228241A58(0, &qword_280DDB8D0, &qword_280DDCD60);
  inited = swift_initStackObject();
  v31 = xmmword_228397F40;
  *(inited + 16) = xmmword_228397F40;
  v10 = type metadata accessor for MedicationLogDetailsTimeItem(0);
  *(inited + 56) = v10;
  *(inited + 64) = sub_2283519DC(&qword_27D826128, type metadata accessor for MedicationLogDetailsTimeItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  swift_retain_n();
  sub_22838F490();
  v12 = (boxed_opaque_existential_1 + *(v10 + 24));
  type metadata accessor for MedicationLogDetailsTimeCell();
  sub_2283519DC(&qword_27D828320, type metadata accessor for MedicationLogDetailsTimeCell);
  *v12 = sub_22838FBB0();
  v12[1] = v13;
  *(boxed_opaque_existential_1 + *(v10 + 20)) = a1;
  sub_22819F3B0();
  v14 = *(sub_22838FEF0() - 8);
  v32 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v33 = v16;
  *(v16 + 16) = xmmword_228397F30;
  v30[1] = v16 + v15;
  sub_228241A58(0, &qword_27D823918, &qword_27D827E00);
  v17 = swift_allocObject();
  *(v17 + 16) = v31;
  swift_unknownObjectWeakLoadStrong();
  v18 = *(v8 + 8);
  v19 = type metadata accessor for MedicationLogDetailsUnitItem();
  *(v17 + 56) = v19;
  *(v17 + 64) = sub_2283519DC(&qword_27D8254B0, type metadata accessor for MedicationLogDetailsUnitItem);
  v20 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));

  sub_22838F490();
  v21 = v20 + v19[6];
  *(v21 + 1) = 0;
  swift_unknownObjectWeakInit();
  v22 = (v20 + v19[7]);
  type metadata accessor for MedicationLogDetailsUnitCell();
  sub_2283519DC(&qword_27D8272F8, type metadata accessor for MedicationLogDetailsUnitCell);
  *v22 = sub_22838FBB0();
  v22[1] = v23;
  *(v20 + v19[5]) = a1;
  *(v21 + 1) = v18;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_22838FED0();
  sub_228194894(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((inited + 32));
  sub_22838FED0();
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v39, "MutableArray<");
  HIWORD(v39[1]) = -4864;
  v24 = v34;
  sub_22838F490();
  v25 = sub_22838F450();
  v27 = v26;
  (*(v36 + 8))(v24, v37);
  MEMORY[0x22AAB5C80](v25, v27);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v28 = sub_22838FF30();
  sub_2282BDBBC(v38);
  return v28;
}

uint64_t MedicationChartCodableData.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22838F440();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MedicationChartCodableData.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicationChartCodableData() + 20);
  v4 = sub_22838F440();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MedicationChartCodableData()
{
  result = qword_280DDC3B0;
  if (!qword_280DDC3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicationChartCodableData.statisticsInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicationChartCodableData() + 32);
  v4 = sub_22838F080();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_228352184()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x65746144646E65;
    if (v1 != 1)
    {
      v5 = 0x756F436E656B6174;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x7461447472617473;
    }
  }

  else
  {
    v2 = 0xD000000000000010;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0x4364657070696B73;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_228352280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_228356D94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2283522C0(uint64_t a1)
{
  v2 = sub_228352638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2283522FC(uint64_t a1)
{
  v2 = sub_228352638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MedicationChartCodableData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_228352D38(0, &qword_280DDB900, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_228352638();
  sub_2283935B0();
  v27 = 0;
  sub_22838F440();
  sub_22835268C(&qword_280DDCDC0, MEMORY[0x277CC9578]);
  sub_2283933F0();
  if (!v2)
  {
    v12 = type metadata accessor for MedicationChartCodableData();
    v13 = v12[5];
    v26 = 1;
    sub_2283933F0();
    v14 = *(v3 + v12[6]);
    v25 = 2;
    sub_2283933D0();
    v15 = *(v3 + v12[7]);
    v24 = 3;
    sub_2283933D0();
    v16 = v12[8];
    v23 = 4;
    sub_22838F080();
    sub_22835268C(&qword_280DDCDD8, MEMORY[0x277CC8990]);
    sub_2283933F0();
    v17 = *(v3 + v12[9]);
    v22 = 5;
    sub_2283933E0();
    v18 = *(v3 + v12[10]);
    v21 = 6;
    sub_2283933E0();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_228352638()
{
  result = qword_280DDC3E8;
  if (!qword_280DDC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDC3E8);
  }

  return result;
}

uint64_t sub_22835268C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MedicationChartCodableData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_22838F080();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22838F440();
  v40 = *(v43 - 8);
  v8 = *(v40 + 64);
  v9 = MEMORY[0x28223BE20](v43);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v35 - v12;
  sub_228352D38(0, &qword_27D828330, MEMORY[0x277D844C8]);
  v44 = v13;
  v42 = *(v13 - 8);
  v14 = *(v42 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v17 = type metadata accessor for MedicationChartCodableData();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_228352638();
  v45 = v16;
  v22 = v46;
  sub_2283935A0();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = v11;
  v36 = v7;
  v46 = v20;
  v53 = 0;
  sub_22835268C(&qword_27D828338, MEMORY[0x277CC9578]);
  v24 = v41;
  sub_2283933C0();
  v25 = v46;
  v26 = v24;
  v27 = v43;
  v41 = *(v40 + 32);
  (v41)(v46, v26, v43);
  v52 = 1;
  sub_2283933C0();
  (v41)(v25 + v17[5], v23, v27);
  v51 = 2;
  v28 = v44;
  v41 = 0;
  sub_2283933A0();
  *(v25 + v17[6]) = v29;
  v50 = 3;
  sub_2283933A0();
  v30 = v39;
  *(v25 + v17[7]) = v31;
  v49 = 4;
  sub_22835268C(&qword_27D828340, MEMORY[0x277CC8990]);
  v32 = v38;
  sub_2283933C0();
  (*(v30 + 32))(v25 + v17[8], v36, v32);
  v48 = 5;
  *(v25 + v17[9]) = sub_2283933B0();
  v47 = 6;
  v33 = sub_2283933B0();
  (*(v42 + 8))(v45, v28);
  *(v25 + v17[10]) = v33;
  sub_228359AE8(v25, v37, type metadata accessor for MedicationChartCodableData);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2283595B0(v25, type metadata accessor for MedicationChartCodableData);
}

void sub_228352D38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228352638();
    v7 = a3(a1, &type metadata for MedicationChartCodableData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228352DCC()
{

  return swift_deallocClassInstance();
}

id MedicationChartDataSource.init(with:displayType:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_encoder;
  v7 = sub_22838EEB0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v2[v6] = sub_22838EEA0();
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_decoder;
  v11 = sub_22838EE80();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v2[v10] = sub_22838EE70();
  v14 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_sortDescriptors;
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_228396260;
  sub_22817A958(0, &qword_280DDBAE8, 0x277CCAC98);
  swift_getKeyPath();
  *(v15 + 32) = sub_2283926A0();
  *&v2[v14] = v15;
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_medication] = a1;
  v16 = objc_allocWithZone(MEMORY[0x277CCD4D8]);
  v17 = a1;
  v18 = [v16 init];
  v21.receiver = v3;
  v21.super_class = type metadata accessor for MedicationChartDataSource();
  v19 = objc_msgSendSuper2(&v21, sel_initWithDisplayType_healthStore_, a2, v18);

  return v19;
}

void sub_2283530A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (a1)
  {
    swift_beginAccess();
    v8 = *(a3 + 16);
    *(a3 + 16) = a1;
  }

  else
  {
    swift_beginAccess();
    v11 = *(a4 + 16);
    *(a4 + 16) = a2;
    v12 = a2;
  }

  dispatch_group_leave(a5);
}

uint64_t sub_22835314C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(__int128 *, void), uint64_t a6)
{
  v70 = sub_2283911B0();
  v69 = *(v70 - 8);
  v12 = *(v69 + 64);
  v13 = MEMORY[0x28223BE20](v70);
  v15 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v64[-v16];
  swift_beginAccess();
  v18 = *(a1 + 16);
  if (v18 && (swift_beginAccess(), (v19 = *(a2 + 16)) != 0))
  {
    sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_228397F20;
    *(v20 + 32) = v18;
    *(v20 + 40) = v19;
    sub_228359B50(0, &unk_280DDBB90, type metadata accessor for MedicationStatsContext, MEMORY[0x277D83940]);
    *(&v73 + 1) = v21;
    *&v72 = v20;
    swift_retain_n();
    swift_retain_n();
    a5(&v72, 0);
  }

  else
  {
    swift_beginAccess();
    v22 = *(a3 + 16);
    if (v22)
    {
      v23 = v22;
      sub_228391150();
      v24 = v22;
      v25 = a4;
      v26 = sub_2283911A0();
      v27 = sub_2283925C0();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v72 = v67;
        *v28 = 136446466;
        v29 = v25;
        v30 = [v29 description];
        v68 = a5;
        v31 = v30;
        v32 = sub_228392000();
        LODWORD(v66) = v27;
        v33 = v32;
        v35 = v34;

        v36 = sub_2281C96FC(v33, v35, &v72);

        *(v28 + 4) = v36;
        *(v28 + 12) = 2082;
        v71 = v22;
        v37 = v22;
        sub_228192C1C();
        v38 = sub_228392020();
        v40 = sub_2281C96FC(v38, v39, &v72);

        *(v28 + 14) = v40;
        a5 = v68;
        _os_log_impl(&dword_22816B000, v26, v66, "[%{public}s] Error executing statistics queries for dose event chart: %{public}s", v28, 0x16u);
        v41 = v67;
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v41, -1, -1);
        MEMORY[0x22AAB7B80](v28, -1, -1);
      }

      else
      {
      }

      (*(v69 + 8))(v17, v70);
    }

    else
    {
      sub_228391150();
      v42 = a4;

      v43 = sub_2283911A0();
      v44 = sub_2283925C0();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v72 = v66;
        *v45 = 136446722;
        v46 = v42;
        v47 = [v46 description];
        v68 = a5;
        v48 = v47;
        v49 = sub_228392000();
        v67 = a6;
        v50 = v49;
        v65 = v44;
        v52 = v51;

        v53 = sub_2281C96FC(v50, v52, &v72);

        *(v45 + 4) = v53;
        *(v45 + 12) = 2082;
        swift_beginAccess();
        v71 = *(a1 + 16);
        sub_228359B50(0, &unk_27D8283A8, type metadata accessor for MedicationStatsContext, MEMORY[0x277D83D88]);

        v54 = sub_228392020();
        v56 = sub_2281C96FC(v54, v55, &v72);

        *(v45 + 14) = v56;
        *(v45 + 22) = 2082;
        swift_beginAccess();
        v71 = *(a2 + 16);

        v57 = sub_228392020();
        v59 = sub_2281C96FC(v57, v58, &v72);

        *(v45 + 24) = v59;
        a5 = v68;
        _os_log_impl(&dword_22816B000, v43, v65, "[%{public}s] Found a nil statistic without an error takenDoseEventStatsContext is nil: %{public}s, skippedDoseEventStatsContext is nil: %{public}s", v45, 0x20u);
        v60 = v66;
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v60, -1, -1);
        MEMORY[0x22AAB7B80](v45, -1, -1);
      }

      (*(v69 + 8))(v15, v70);
    }

    v72 = 0u;
    v73 = 0u;
    swift_beginAccess();
    v61 = *(a3 + 16);
    v62 = v61;
    a5(&v72, v61);
  }

  return sub_228357114(&v72, &qword_280DDCE20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2281F8E18);
}

void sub_228353904(uint64_t a1, void *a2, uint64_t a3)
{
  sub_2283596D8(a1, v12);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_0(v12, v13);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = sub_228393450();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (a2)
  {
LABEL_3:
    a2 = sub_22838F170();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_228353A68(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t (*a7)(void, void), uint64_t a8)
{
  v67 = a8;
  v14 = sub_22838F080();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v58[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_2283911B0();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v68 = &v58[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    v65 = v22;
    v66 = v21;
    v24 = a3;
    sub_228391150();
    (*(v15 + 16))(v18, a5, v14);
    v25 = a3;
    v26 = a4;
    v27 = sub_2283911A0();
    v28 = sub_2283925C0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v63 = a2;
      v30 = v29;
      v61 = swift_slowAlloc();
      v70[0] = v61;
      *v30 = 136446978;
      v31 = v26;
      v32 = [v31 description];
      v60 = v27;
      v33 = v32;
      v34 = sub_228392000();
      v64 = a7;
      v35 = v34;
      v62 = a6;
      v59 = v28;
      v37 = v36;

      v38 = sub_2281C96FC(v35, v37, v70);
      a6 = v62;

      *(v30 + 4) = v38;
      *(v30 + 12) = 2082;
      sub_22835268C(&qword_27D8283B8, MEMORY[0x277CC8990]);
      v39 = sub_228393420();
      v41 = v40;
      (*(v15 + 8))(v18, v14);
      v42 = sub_2281C96FC(v39, v41, v70);

      *(v30 + 14) = v42;
      *(v30 + 22) = 2082;
      v69 = a6;
      type metadata accessor for LogStatus(0);
      v43 = sub_228392020();
      v45 = sub_2281C96FC(v43, v44, v70);

      *(v30 + 24) = v45;
      *(v30 + 32) = 2082;
      a7 = v64;
      v69 = a3;
      v46 = a3;
      sub_228192C1C();
      v47 = sub_228392020();
      v49 = sub_2281C96FC(v47, v48, v70);

      *(v30 + 34) = v49;
      v50 = v60;
      _os_log_impl(&dword_22816B000, v60, v59, "[%{public}s] Error querying for statistic collection query with date interval %{public}s with dose event status %{public}s: %{public}s", v30, 0x2Au);
      v51 = v61;
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v51, -1, -1);
      v52 = v30;
      a2 = v63;
      MEMORY[0x22AAB7B80](v52, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    (*(v65 + 8))(v68, v66);
  }

  if (!a2)
  {
    return a7(0, a3);
  }

  if (a6 == 4)
  {
    v53 = 0;
  }

  else
  {
    if (a6 != 5)
    {
      v70[0] = 0;
      v70[1] = 0xE000000000000000;
      v57 = a2;
      sub_2283931D0();
      MEMORY[0x22AAB5C80](0xD000000000000045, 0x80000002283B5A40);
      v69 = a6;
      type metadata accessor for LogStatus(0);
      sub_2283932A0();
      result = sub_228393300();
      __break(1u);
      return result;
    }

    v53 = 1;
  }

  type metadata accessor for MedicationStatsContext();
  v55 = swift_allocObject();
  *(v55 + 16) = a2;
  *(v55 + 24) = v53;
  v56 = a2;
  a7(v55, 0);
}

void sub_228353FB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

id sub_228354058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = a3;
  v118 = a1;
  v4 = sub_2283911B0();
  v110 = *(v4 - 8);
  v111 = v4;
  v5 = *(v110 + 64);
  MEMORY[0x28223BE20](v4);
  v113 = v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_228359B50(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v117 = v107 - v10;
  v11 = sub_22838F440();
  v119 = *(v11 - 8);
  v120 = v11;
  v12 = *(v119 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v109 = v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v107[0] = v107 - v15;
  v16 = sub_22838F6C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v126 = v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228359B50(0, &unk_280DDCD70, MEMORY[0x277CC9A70], v7);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v107 - v22;
  sub_228359B50(0, &qword_280DDCD80, MEMORY[0x277CC99E8], v7);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = v107 - v26;
  v28 = sub_22838F080();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v112 = v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v107 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = v107 - v36;
  v121 = v17;
  v38 = *(v17 + 56);
  v127 = v16;
  v115 = v38;
  v38(v27, 1, 1, v16);
  v39 = sub_22838F700();
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v123 = v40 + 56;
  v114 = v41;
  v41(v23, 1, 1, v39);
  sub_22838F060();
  v124 = a2;
  LOBYTE(a2) = MEMORY[0x22AAB2B60](a2, v37);
  v128 = *(v29 + 8);
  v129 = v29 + 8;
  v128(v37, v28);
  v125 = v35;
  v116 = v29;
  if (a2)
  {
    v42 = v124;
    (*(v29 + 16))(v35, v124, v28);
    v43 = v28;
    v45 = v114;
    v44 = v115;
  }

  else
  {
    v46 = v115;
    v115(v27, 1, 1, v127);
    v45 = v114;
    v114(v23, 1, 1, v39);
    sub_22838F060();
    v42 = v124;
    v43 = v28;
    v44 = v46;
  }

  sub_22838F680();
  v44(v27, 1, 1, v127);
  v45(v23, 1, 1, v39);
  sub_22838F060();
  v47 = MEMORY[0x22AAB2B60](v42, v37);
  v128(v37, v43);
  sub_228359B50(0, &qword_280DDB8D8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v48 = sub_22838F6A0();
  v49 = *(v48 - 8);
  v50 = *(v49 + 72);
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v52 = (v49 + 104);
  v53 = 2 * v50;
  v122 = v43;
  v54 = swift_allocObject();
  if (v47)
  {
    *(v54 + 16) = xmmword_22839B440;
    v55 = v54 + v51;
    v56 = *v52;
    (*v52)(v55, *MEMORY[0x277CC9988], v48);
    v56(v55 + v50, *MEMORY[0x277CC9998], v48);
    v56(v55 + v53, *MEMORY[0x277CC9968], v48);
    v56(v55 + 3 * v50, *MEMORY[0x277CC9980], v48);
  }

  else
  {
    *(v54 + 16) = xmmword_228398270;
    v57 = v54 + v51;
    v58 = *v52;
    (*v52)(v57, *MEMORY[0x277CC9988], v48);
    v58(v57 + v50, *MEMORY[0x277CC9998], v48);
    v58(v57 + v53, *MEMORY[0x277CC9968], v48);
  }

  sub_2281EF358(v54);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v59 = v118;
  v60 = v126;
  sub_22838F5C0();

  v61 = v117;
  sub_22838F640();
  v62 = v122;
  v63 = v128;
  v128(v37, v122);
  v64 = v119;
  v65 = v120;
  v66 = (*(v119 + 48))(v61, 1, v120);
  v67 = v125;
  v68 = v116;
  if (v66 == 1)
  {
    sub_228357114(v61, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_228359B50);
    v69 = v113;
    sub_228391150();
    v70 = v109;
    v71 = v65;
    (*(v64 + 16))(v109, v59, v65);
    v72 = v112;
    (*(v68 + 16))(v112, v124, v62);
    v73 = v107[1];
    v74 = sub_2283911A0();
    v75 = sub_2283925C0();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v130[0] = v124;
      *v76 = 136446722;
      v77 = v70;
      v78 = v64;
      v79 = v73;
      v80 = [v79 description];
      v81 = sub_228392000();
      LODWORD(v123) = v75;
      v83 = v82;

      v84 = sub_2281C96FC(v81, v83, v130);

      *(v76 + 4) = v84;
      v85 = v74;
      *(v76 + 12) = 2082;
      sub_22835268C(&qword_27D8283D0, MEMORY[0x277CC9578]);
      v86 = sub_228393420();
      v88 = v87;
      (*(v78 + 8))(v77, v71);
      v89 = sub_2281C96FC(v86, v88, v130);

      *(v76 + 14) = v89;
      *(v76 + 22) = 2082;
      sub_22835268C(&qword_27D8283B8, MEMORY[0x277CC8990]);
      v90 = v112;
      v91 = v122;
      v92 = sub_228393420();
      v94 = v93;
      v95 = v128;
      v128(v90, v91);
      v96 = sub_2281C96FC(v92, v94, v130);

      *(v76 + 24) = v96;
      _os_log_impl(&dword_22816B000, v85, v123, "[%{public}s] Could not generate anchor date for start date with statistic interval <%{public}s %{public}s>", v76, 0x20u);
      v97 = v124;
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v97, -1, -1);
      MEMORY[0x22AAB7B80](v76, -1, -1);

      (*(v110 + 8))(v113, v111);
      (*(v121 + 8))(v126, v127);
      v95(v125, v91);
    }

    else
    {

      v63(v72, v62);
      (*(v64 + 8))(v70, v71);
      (*(v110 + 8))(v69, v111);
      (*(v121 + 8))(v126, v127);
      v63(v125, v62);
    }

    return 0;
  }

  else
  {
    v98 = v107[0];
    (*(v64 + 32))(v107[0], v61, v65);
    sub_22817A958(0, &qword_280DDBB00, 0x277CCD8D8);
    v99 = v64;
    v100 = [swift_getObjCClassFromMetadata() medicationDoseEventType];
    v101 = v65;
    v102 = objc_allocWithZone(MEMORY[0x277CCDA60]);
    v103 = sub_22838F380();
    v104 = sub_22838EFB0();
    v105 = [v102 initWithSampleType:v100 samplePredicate:v108 options:16 anchorDate:v103 intervalComponents:v104];

    (*(v99 + 8))(v98, v101);
    (*(v121 + 8))(v60, v127);
    v128(v67, v62);
    return v105;
  }
}

void (*sub_228354F08(void *a1, void *a2, uint64_t a3, uint64_t a4))()
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F98];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a1;
  v13[6] = v11;
  v13[7] = ObjectType;
  v26[4] = sub_2283571B4;
  v26[5] = v13;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_228356058;
  v26[3] = &block_descriptor_38;
  v14 = _Block_copy(v26);

  v15 = a1;

  v16 = [v5 queriesForRequest:v15 completionHandler:v14];
  _Block_release(v14);
  sub_22817A958(0, &unk_280DDB9A0, 0x277CCD838);
  v17 = sub_2283921A0();

  if (v17 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v19 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x22AAB6D80](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [a2 executeQuery_];

      ++v19;
      if (v22 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  *(v23 + 24) = a2;
  v24 = a2;

  return sub_2283571C4;
}

void sub_228355194(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, unint64_t a6, uint64_t a7)
{
  v139 = a5;
  v140 = a4;
  v138 = a2;
  v10 = sub_22838EF60();
  v157 = *(v10 - 8);
  v11 = *(v157 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22819A338();
  v148 = v14;
  v165 = *(v14 - 8);
  v15 = *(v165 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_22838F080();
  v135 = *(isUniquelyReferenced_nonNull_native - 8);
  v19 = *(v135 + 64);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v151 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_22838F440();
  v134 = *(v152 - 8);
  v21 = *(v134 + 64);
  v22 = MEMORY[0x28223BE20](v152);
  v150 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v149 = &v131 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v137 = Strong;
    sub_2283596D8(a1, v167);
    if (v168)
    {
      sub_228359B50(0, &unk_280DDBB90, type metadata accessor for MedicationStatsContext, MEMORY[0x277D83940]);
      if (swift_dynamicCast())
      {
        v26 = v166;
        if (v166 >> 62)
        {
          goto LABEL_95;
        }

        if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
        {
          v147 = isUniquelyReferenced_nonNull_native;
          v142 = 2;
          while (1)
          {
            v145 = type metadata accessor for MedicationChartStatisticsFormatter();
            v27 = 0;
            v146 = v26 & 0xC000000000000001;
            v133 = v26 & 0xFFFFFFFFFFFFFF8;
            v132 = (v26 + 32);
            v144 = (v135 + 8);
            v143 = (v134 + 8);
            v156 = v157 + 16;
            v159 = (v157 + 8);
            v160 = (v157 + 32);
            v136 = a6;
            v141 = v26;
            while (1)
            {
              if (v146)
              {
                v28 = MEMORY[0x22AAB6D80](v27, v26);
                v29 = __OFADD__(v27, 1);
                v30 = v27 + 1;
                if (v29)
                {
                  break;
                }

                goto LABEL_16;
              }

              if (v27 >= *(v133 + 16))
              {
                goto LABEL_94;
              }

              v31 = v132[v27];

              v29 = __OFADD__(v27, 1);
              v30 = v27 + 1;
              if (v29)
              {
                break;
              }

LABEL_16:
              v155 = v30;
              v32 = *(v28 + 16);
              v154 = v28;
              v164 = *(v28 + 24);
              v33 = v32;
              v34 = [a6 startDate];
              v35 = v149;
              sub_22838F3E0();

              v36 = [a6 endDate];
              v37 = v150;
              sub_22838F3E0();

              v38 = [a6 statisticsInterval];
              v39 = v151;
              sub_22838EFD0();

              v153 = v33;
              v40 = sub_2281EF074(v35, v37, v39, v33);
              v41 = v39;
              v42 = v40;
              (*v144)(v41, v147);
              v26 = v143;
              v43 = *v143;
              v44 = v37;
              isUniquelyReferenced_nonNull_native = v152;
              (*v143)(v44, v152);
              v43(v35, isUniquelyReferenced_nonNull_native);
              v163 = *(v42 + 16);
              if (v163)
              {
                v45 = 0;
                v46 = *(v148 + 48);
                v161 = v42 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
                v162 = v46;
                v158 = v42;
                while (1)
                {
                  if (v45 >= *(v42 + 16))
                  {
                    __break(1u);
LABEL_85:
                    __break(1u);
LABEL_86:
                    __break(1u);
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
                    goto LABEL_93;
                  }

                  sub_228359AE8(v161 + *(v165 + 72) * v45, v17, sub_22819A338);
                  v49 = *&v17[v162];
                  (*v160)(v13, v17, v10);
                  a6 = *(v49 + 16);
                  if (!a6)
                  {
                    v51 = 0.0;
                    goto LABEL_31;
                  }

                  if (a6 <= 3)
                  {
                    break;
                  }

                  v50 = a6 & 0x7FFFFFFFFFFFFFFCLL;
                  v52 = (v49 + 48);
                  v51 = 0.0;
                  v53 = a6 & 0x7FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v54 = *v52;
                    v51 = v51 + *(v52 - 2) + *(v52 - 1) + *v52 + v52[1];
                    v52 += 4;
                    v53 -= 4;
                  }

                  while (v53);
                  if (a6 != v50)
                  {
                    goto LABEL_29;
                  }

LABEL_31:

                  swift_beginAccess();
                  v58 = *(a7 + 16);
                  v59 = *(v58 + 16);
                  if (v164)
                  {
                    if (!v59)
                    {
                      goto LABEL_45;
                    }

                    v60 = sub_2281A7B7C(v13);
                    v61 = *(a7 + 16);
                    if ((v62 & 1) == 0)
                    {
                      v86 = *(a7 + 16);
LABEL_45:
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v166 = *(a7 + 16);
                      v26 = v166;
                      *(a7 + 16) = 0x8000000000000000;
                      v87 = sub_2281A7B7C(v13);
                      v89 = *(v26 + 16);
                      v90 = (v88 & 1) == 0;
                      v29 = __OFADD__(v89, v90);
                      v91 = v89 + v90;
                      if (v29)
                      {
                        goto LABEL_85;
                      }

                      v92 = v88;
                      if (*(v26 + 24) >= v91)
                      {
                        if (isUniquelyReferenced_nonNull_native)
                        {
                          goto LABEL_50;
                        }

                        isUniquelyReferenced_nonNull_native = v87;
                        sub_22829B90C();
                        v87 = isUniquelyReferenced_nonNull_native;
                        v26 = v166;
                        if ((v92 & 1) == 0)
                        {
                          goto LABEL_70;
                        }

LABEL_51:
                        v94 = *(v26 + 56) + 32 * v87;
                        *v94 = 0;
                        *(v94 + 8) = 0;
                        *(v94 + 16) = v51;
                        *(v94 + 24) = a6;
                      }

                      else
                      {
                        sub_22829A8D8(v91, isUniquelyReferenced_nonNull_native);
                        v87 = sub_2281A7B7C(v13);
                        if ((v92 & 1) != (v93 & 1))
                        {
                          goto LABEL_102;
                        }

LABEL_50:
                        v26 = v166;
                        if (v92)
                        {
                          goto LABEL_51;
                        }

LABEL_70:
                        *(v26 + 8 * (v87 >> 6) + 64) |= 1 << v87;
                        v109 = v87;
                        (*(v157 + 16))(*(v26 + 48) + *(v157 + 72) * v87, v13, v10);
                        v110 = *(v26 + 56) + 32 * v109;
                        *v110 = 0;
                        *(v110 + 8) = 0;
                        *(v110 + 16) = v51;
                        *(v110 + 24) = a6;
                        v111 = *(v26 + 16);
                        v29 = __OFADD__(v111, 1);
                        v112 = v111 + 1;
                        if (v29)
                        {
                          goto LABEL_88;
                        }

                        *(v26 + 16) = v112;
                      }

                      v113 = *(a7 + 16);
                      *(a7 + 16) = v26;

                      goto LABEL_20;
                    }

                    v63 = (*(v58 + 56) + 32 * v60);
                    v64 = *v63;
                    v65 = v63[1];
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v166 = *(a7 + 16);
                    v26 = v166;
                    *(a7 + 16) = 0x8000000000000000;
                    v66 = sub_2281A7B7C(v13);
                    v68 = *(v26 + 16);
                    v69 = (v67 & 1) == 0;
                    v29 = __OFADD__(v68, v69);
                    v70 = v68 + v69;
                    if (v29)
                    {
                      goto LABEL_89;
                    }

                    v71 = v67;
                    if (*(v26 + 24) < v70)
                    {
                      sub_22829A8D8(v70, isUniquelyReferenced_nonNull_native);
                      v66 = sub_2281A7B7C(v13);
                      if ((v71 & 1) != (v72 & 1))
                      {
                        goto LABEL_102;
                      }

                      goto LABEL_64;
                    }

                    if (isUniquelyReferenced_nonNull_native)
                    {
LABEL_64:
                      v26 = v166;
                      if ((v71 & 1) == 0)
                      {
                        goto LABEL_76;
                      }
                    }

                    else
                    {
                      isUniquelyReferenced_nonNull_native = v66;
                      sub_22829B90C();
                      v66 = isUniquelyReferenced_nonNull_native;
                      v26 = v166;
                      if ((v71 & 1) == 0)
                      {
LABEL_76:
                        *(v26 + 8 * (v66 >> 6) + 64) |= 1 << v66;
                        v114 = v66;
                        (*(v157 + 16))(*(v26 + 48) + *(v157 + 72) * v66, v13, v10);
                        v115 = *(v26 + 56) + 32 * v114;
                        *v115 = v64;
                        *(v115 + 8) = v65;
                        *(v115 + 16) = v51;
                        *(v115 + 24) = a6;
                        v116 = *(v26 + 16);
                        v29 = __OFADD__(v116, 1);
                        v106 = v116 + 1;
                        if (v29)
                        {
                          goto LABEL_91;
                        }

                        goto LABEL_81;
                      }
                    }

                    v107 = *(v26 + 56) + 32 * v66;
                    *v107 = v64;
                    *(v107 + 8) = v65;
                    *(v107 + 16) = v51;
                    *(v107 + 24) = a6;
                    goto LABEL_19;
                  }

                  if (v59)
                  {
                    v73 = sub_2281A7B7C(v13);
                    v74 = *(a7 + 16);
                    if (v75)
                    {
                      v76 = *(v58 + 56) + 32 * v73;
                      v77 = *(v76 + 16);
                      v78 = *(v76 + 24);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v166 = *(a7 + 16);
                      v26 = v166;
                      *(a7 + 16) = 0x8000000000000000;
                      v79 = sub_2281A7B7C(v13);
                      v81 = *(v26 + 16);
                      v82 = (v80 & 1) == 0;
                      v29 = __OFADD__(v81, v82);
                      v83 = v81 + v82;
                      if (v29)
                      {
                        goto LABEL_90;
                      }

                      v84 = v80;
                      if (*(v26 + 24) < v83)
                      {
                        sub_22829A8D8(v83, isUniquelyReferenced_nonNull_native);
                        v79 = sub_2281A7B7C(v13);
                        if ((v84 & 1) != (v85 & 1))
                        {
                          goto LABEL_102;
                        }

                        goto LABEL_67;
                      }

                      if (isUniquelyReferenced_nonNull_native)
                      {
LABEL_67:
                        v26 = v166;
                        if ((v84 & 1) == 0)
                        {
                          goto LABEL_80;
                        }
                      }

                      else
                      {
                        isUniquelyReferenced_nonNull_native = v79;
                        sub_22829B90C();
                        v79 = isUniquelyReferenced_nonNull_native;
                        v26 = v166;
                        if ((v84 & 1) == 0)
                        {
LABEL_80:
                          *(v26 + 8 * (v79 >> 6) + 64) |= 1 << v79;
                          v117 = v79;
                          (*(v157 + 16))(*(v26 + 48) + *(v157 + 72) * v79, v13, v10);
                          v118 = *(v26 + 56) + 32 * v117;
                          *v118 = v51;
                          *(v118 + 8) = a6;
                          *(v118 + 16) = v77;
                          *(v118 + 24) = v78;
                          v119 = *(v26 + 16);
                          v29 = __OFADD__(v119, 1);
                          v106 = v119 + 1;
                          if (v29)
                          {
                            goto LABEL_92;
                          }

                          goto LABEL_81;
                        }
                      }

                      v108 = *(v26 + 56) + 32 * v79;
                      *v108 = v51;
                      *(v108 + 8) = a6;
                      *(v108 + 16) = v77;
                      *(v108 + 24) = v78;
                      goto LABEL_19;
                    }

                    v95 = *(a7 + 16);
                  }

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v166 = *(a7 + 16);
                  v26 = v166;
                  *(a7 + 16) = 0x8000000000000000;
                  v97 = sub_2281A7B7C(v13);
                  v98 = *(v26 + 16);
                  v99 = (v96 & 1) == 0;
                  v100 = v98 + v99;
                  if (__OFADD__(v98, v99))
                  {
                    goto LABEL_86;
                  }

                  v101 = v96;
                  if (*(v26 + 24) >= v100)
                  {
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      v26 = v166;
                      if ((v96 & 1) == 0)
                      {
                        goto LABEL_60;
                      }
                    }

                    else
                    {
                      sub_22829B90C();
                      v26 = v166;
                      if ((v101 & 1) == 0)
                      {
                        goto LABEL_60;
                      }
                    }
                  }

                  else
                  {
                    sub_22829A8D8(v100, isUniquelyReferenced_nonNull_native);
                    v102 = sub_2281A7B7C(v13);
                    if ((v101 & 1) != (v103 & 1))
                    {
LABEL_102:
                      sub_2283934A0();
                      __break(1u);
                      return;
                    }

                    v97 = v102;
                    v26 = v166;
                    if ((v101 & 1) == 0)
                    {
LABEL_60:
                      *(v26 + 8 * (v97 >> 6) + 64) |= 1 << v97;
                      (*(v157 + 16))(*(v26 + 48) + *(v157 + 72) * v97, v13, v10);
                      v104 = *(v26 + 56) + 32 * v97;
                      *v104 = v51;
                      *(v104 + 8) = a6;
                      *(v104 + 16) = 0;
                      *(v104 + 24) = 0;
                      v105 = *(v26 + 16);
                      v29 = __OFADD__(v105, 1);
                      v106 = v105 + 1;
                      if (v29)
                      {
                        goto LABEL_87;
                      }

LABEL_81:
                      *(v26 + 16) = v106;
                      goto LABEL_19;
                    }
                  }

                  v47 = *(v26 + 56) + 32 * v97;
                  *v47 = v51;
                  *(v47 + 16) = 0;
                  *(v47 + 24) = 0;
                  *(v47 + 8) = a6;
LABEL_19:
                  v48 = *(a7 + 16);
                  *(a7 + 16) = v26;

                  v42 = v158;
LABEL_20:
                  ++v45;
                  swift_endAccess();
                  (*v159)(v13, v10);
                  if (v45 == v163)
                  {

                    a6 = v136;
                    goto LABEL_9;
                  }
                }

                v50 = 0;
                v51 = 0.0;
LABEL_29:
                v55 = a6 - v50;
                v56 = (v49 + 8 * v50 + 32);
                do
                {
                  v57 = *v56++;
                  v51 = v51 + v57;
                  --v55;
                }

                while (v55);
                goto LABEL_31;
              }

LABEL_9:

              v27 = v155;
              v26 = v141;
              if (v155 == v142)
              {
                goto LABEL_97;
              }
            }

LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            if (sub_2283930D0() != 2)
            {
              break;
            }

            v147 = isUniquelyReferenced_nonNull_native;
            v142 = sub_2283930D0();
            if (!v142)
            {
LABEL_97:

              swift_beginAccess();
              v120 = *(a7 + 16);

              v121 = [a6 startDate];
              v122 = v149;
              sub_22838F3E0();

              v123 = [a6 endDate];
              v124 = v150;
              sub_22838F3E0();

              v125 = [a6 statisticsInterval];
              v126 = v151;
              sub_22838EFD0();

              v127 = v137;
              v128 = sub_2283563C4(v120, v122, v124, v126);

              (*(v135 + 8))(v126, v147);
              v129 = *(v134 + 8);
              v130 = v152;
              v129(v124, v152);
              v129(v122, v130);
              v140(v128, v138);

              goto LABEL_100;
            }
          }
        }
      }
    }

    else
    {
      sub_228357114(v167, &qword_280DDCE20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2281F8E18);
    }

    v140(0, v138);
    v128 = v137;
LABEL_100:
  }
}