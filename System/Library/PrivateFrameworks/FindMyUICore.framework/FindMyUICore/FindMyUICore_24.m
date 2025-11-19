unint64_t sub_24B26BF58()
{
  result = qword_27EFCEFA0;
  if (!qword_27EFCEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEFA0);
  }

  return result;
}

uint64_t sub_24B26BFEC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24B26C070()
{
  result = qword_27EFCEFD0;
  if (!qword_27EFCEFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEF98);
    sub_24B26C128();
    sub_24B039184(&qword_27EFCF020, &qword_27EFCEFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEFD0);
  }

  return result;
}

unint64_t sub_24B26C128()
{
  result = qword_27EFCEFD8;
  if (!qword_27EFCEFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEFE0);
    sub_24B26C1E0();
    sub_24B039184(&qword_27EFCF010, &qword_27EFCF018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEFD8);
  }

  return result;
}

unint64_t sub_24B26C1E0()
{
  result = qword_27EFCEFE8;
  if (!qword_27EFCEFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEFF0);
    sub_24B26DE10(&qword_27EFCEFF8, type metadata accessor for InteractiveMapV2);
    sub_24B039184(&qword_27EFCF000, &qword_27EFCF008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEFE8);
  }

  return result;
}

uint64_t sub_24B26C2D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B26C354(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AFFDE44;

  return sub_24B265100(a1);
}

void sub_24B26C434()
{
  sub_24B26C70C(319, &qword_27EFCF098, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24B26C70C(319, &qword_27EFCF0A0, MEMORY[0x277D08CE8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24B26C70C(319, &qword_27EFCF0A8, type metadata accessor for PersonLocateAction, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B26C5A8()
{
  type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(319);
  if (v0 <= 0x3F)
  {
    sub_24B07A804();
    if (v1 <= 0x3F)
    {
      sub_24B26C770(319, &qword_27EFCD9E8, &qword_27EFCD8B0, &unk_24B2F42D0, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24B26C70C(319, &qword_27EFCF0C8, type metadata accessor for ListPersonInfo, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_24B26C770(319, &qword_27EFCF0D0, &qword_27EFCF080, &unk_24B2F42C0, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B26C70C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24B26C770(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24B26C7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B26C878()
{
  result = qword_27EFCF170;
  if (!qword_27EFCF170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF160);
    sub_24B26C8FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF170);
  }

  return result;
}

unint64_t sub_24B26C8FC()
{
  result = qword_27EFCF178;
  if (!qword_27EFCF178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8AD0);
    sub_24B26CA50();
    sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8F08, &qword_27EFC8E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF178);
  }

  return result;
}

unint64_t sub_24B26CA50()
{
  result = qword_27EFCF190;
  if (!qword_27EFCF190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF188);
    sub_24B26CB08();
    sub_24B039184(&qword_27EFC9A78, &qword_27EFC9A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF190);
  }

  return result;
}

unint64_t sub_24B26CB08()
{
  result = qword_27EFCF198;
  if (!qword_27EFCF198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF1A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF1A8);
    sub_24B039184(&qword_27EFCF1B0, &qword_27EFCF1A8);
    sub_24B26CC44();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8DE0, &qword_27EFC8DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF198);
  }

  return result;
}

unint64_t sub_24B26CC44()
{
  result = qword_27EFCF1B8;
  if (!qword_27EFCF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF1B8);
  }

  return result;
}

uint64_t sub_24B26CC98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B26CD00()
{
  v2 = *(type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for PersonLocateAction() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFD370;

  return sub_24B26A4D4(v0 + v3, v0 + v6);
}

uint64_t sub_24B26CE30@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PersonLocateAction();

  return sub_24B26A670(a1);
}

unint64_t sub_24B26CEC0()
{
  result = qword_27EFCF230;
  if (!qword_27EFCF230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF210);
    sub_24B039184(&qword_27EFCC558, &qword_27EFCC538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF230);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{
  v1 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0);
  v2 = *(*(v1 - 8) + 80);
  v23 = *(*(v1 - 8) + 64);
  v24 = (v2 + 16) & ~v2;
  v25 = v0;
  v3 = v0 + v24;

  v4 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
  v5 = v4[5];
  v6 = sub_24B2D2214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v9 = v4[6];
  if (!v8(v3 + v9, 1, v6))
  {
    (*(v7 + 8))(v3 + v9, v6);
  }

  v10 = v4[7];
  v11 = sub_24B2D1954();
  if (!(*(*(v11 - 8) + 48))(v3 + v10, 1, v11))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 8))(v3 + v10, v6);
    }

    else
    {
      v12 = sub_24B2D13C4();
      (*(*(v12 - 8) + 8))(v3 + v10, v12);
    }
  }

  v13 = v4[8];
  if (!v8(v3 + v13, 1, v6))
  {
    (*(v7 + 8))(v3 + v13, v6);
  }

  v14 = v4[9];
  if (!v8(v3 + v14, 1, v6))
  {
    (*(v7 + 8))(v3 + v14, v6);
  }

  v15 = v3 + *(v1 + 28);

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8) + 32);
  v17 = sub_24B2D1974();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v15 + v16, 1, v17))
  {
    (*(v18 + 8))(v15 + v16, v17);
  }

  v19 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_24B2D4034();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v3 + v19, 1, v20))
    {
      (*(v21 + 8))(v3 + v19, v20);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v25, v24 + v23, v2 | 7);
}

uint64_t sub_24B26D3E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_24B26D478()
{
  result = qword_27EFCF250;
  if (!qword_27EFCF250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF240);
    sub_24B039184(&qword_27EFCF168, &qword_27EFCF158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF250);
  }

  return result;
}

unint64_t sub_24B26D528()
{
  result = qword_27EFCF258;
  if (!qword_27EFCF258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF248);
    sub_24B26C878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF258);
  }

  return result;
}

unint64_t sub_24B26D5C4()
{
  result = qword_27EFCF2B0;
  if (!qword_27EFCF2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF2A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF2B8);
    sub_24B26D6B8();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8C30, &unk_27EFC93C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF2B0);
  }

  return result;
}

unint64_t sub_24B26D6B8()
{
  result = qword_27EFCF2C0;
  if (!qword_27EFCF2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF2B8);
    sub_24B039184(&qword_27EFCF2C8, &qword_27EFCF2D0);
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF2C0);
  }

  return result;
}

unint64_t sub_24B26D79C()
{
  result = qword_27EFCF330;
  if (!qword_27EFCF330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF328);
    sub_24B26D854();
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF330);
  }

  return result;
}

unint64_t sub_24B26D854()
{
  result = qword_27EFCF338;
  if (!qword_27EFCF338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF338);
  }

  return result;
}

unint64_t sub_24B26D8D0()
{
  result = qword_27EFCF348;
  if (!qword_27EFCF348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF310);
    sub_24B26D988();
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF348);
  }

  return result;
}

unint64_t sub_24B26D988()
{
  result = qword_27EFCF350;
  if (!qword_27EFCF350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF358);
    sub_24B26DA0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF350);
  }

  return result;
}

unint64_t sub_24B26DA0C()
{
  result = qword_27EFCF360;
  if (!qword_27EFCF360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF368);
    sub_24B26DA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF360);
  }

  return result;
}

unint64_t sub_24B26DA98()
{
  result = qword_27EFCF370;
  if (!qword_27EFCF370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF378);
    sub_24B039184(&qword_27EFCF380, &qword_27EFCF388);
    sub_24B039184(&qword_27EFCF390, &qword_27EFCF398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF370);
  }

  return result;
}

unint64_t sub_24B26DB80()
{
  result = qword_27EFCF410;
  if (!qword_27EFCF410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8B0);
    sub_24B26DE10(&qword_27EFCC7C0, MEMORY[0x277D08CF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF410);
  }

  return result;
}

unint64_t sub_24B26DC34()
{
  result = qword_27EFCF418;
  if (!qword_27EFCF418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF408);
    sub_24B26DCC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF418);
  }

  return result;
}

unint64_t sub_24B26DCC4()
{
  result = qword_27EFCF420;
  if (!qword_27EFCF420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF428);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFC78D8);
    sub_24B2D1974();
    sub_24B039184(&qword_27EFCF430, &unk_27EFC78D8);
    sub_24B26DE10(&qword_27EFCC7C0, MEMORY[0x277D08CF8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF420);
  }

  return result;
}

uint64_t sub_24B26DE10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B26DE98@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SessionFriend(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_24B276CB4(v12, v10, type metadata accessor for SessionFriend);
      v14 = a1(v10);
      if (v3)
      {
        return sub_24B276D84(v10, type metadata accessor for SessionFriend);
      }

      if (v14)
      {
        break;
      }

      sub_24B276D84(v10, type metadata accessor for SessionFriend);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_24B276D1C(v10, v18, type metadata accessor for SessionFriend);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_24B26E090@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v8;
    v22 = a4;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v7);
      v17 = v24(v10);
      if (v4)
      {
        return (*v14)(v10, v7);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v7);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v8 = v21;
        a4 = v22;
        return (*(v8 + 56))(a4, v18, 1, v7);
      }
    }

    v8 = v21;
    a4 = v22;
    (*(v21 + 32))(v22, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a4, v18, 1, v7);
}

_OWORD *sub_24B26E278(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v5 = v3;
  v8 = sub_24B2D2504();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D24F4();
  v12 = sub_24B2D24B4();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  *(v5 + 2) = v12;
  *(v5 + 3) = v14;
  sub_24B2D2494();
  sub_24B2D3174();
  *(v5 + *(*v5 + 136)) = 0;
  *(v5 + *(*v5 + 144)) = 0;
  v15 = (v5 + *(*v5 + 152));
  *v15 = 0;
  v15[1] = 0;
  v16 = *(*v5 + 160);
  v17 = type metadata accessor for DataControllerSessionMetrics();
  (*(*(v17 - 8) + 56))(v5 + v16, 1, 1, v17);
  sub_24B2D25B4();
  sub_24B0391CC(a1, v5 + *(*v5 + 128), a3);
  v18 = a2[1];
  v5[2] = *a2;
  v5[3] = v18;
  v5[4] = a2[2];
  return v5;
}

uint64_t sub_24B26E51C(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24AFF321C(a1, a2, &v11);
    _os_log_impl(&dword_24AFD2000, v5, v6, "EmbeddedPeopleInteractiveMapViewModel: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  return a3();
}

uint64_t sub_24B26E640()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v9 - v2;
  swift_getKeyPath();
  v10 = v0;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  v4 = *(v0 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController);
  v9[0] = &_s25OrganizedListExtraStorageVN;
  v9[1] = sub_24B276AB0();
  swift_getKeyPath();
  v10 = v4;
  sub_24B276DE4();

  sub_24B2D2584();

  v5 = *(*v4 + 128);
  swift_beginAccess();
  sub_24B008890(v4 + v5, v3, &qword_27EFCF4D8);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF510);
  sub_24B2D1984();
  (*(*(v6 - 8) + 8))(v3, v6);
  v7 = v9[3];

  return v7;
}

uint64_t sub_24B26E85C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v8 - v2;
  swift_getKeyPath();
  v9 = v0;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  v4 = *(v0 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController);
  v8[0] = &_s25OrganizedListExtraStorageVN;
  v8[1] = sub_24B276AB0();
  swift_getKeyPath();
  v9 = v4;
  sub_24B276DE4();

  sub_24B2D2584();

  v5 = *(*v4 + 128);
  swift_beginAccess();
  sub_24B008890(v4 + v5, v3, &qword_27EFCF4D8);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF510);
  sub_24B2D1984();
  (*(*(v6 - 8) + 8))(v3, v6);

  return v8[4];
}

uint64_t sub_24B26EA78@<X0>(char *a1@<X8>)
{
  v3 = sub_24B2D1574();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE348);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  swift_getKeyPath();
  v25 = v1;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  v16 = *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
  if (v16)
  {
    (*(v4 + 16))(v13, v16 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier, v3);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v4 + 56))(v13, v17, 1, v3);
  sub_24B0391CC(v13, v15, &qword_27EFCE348);
  sub_24B008890(v15, v10, &qword_27EFCE348);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    sub_24AFF8258(v15, &qword_27EFCE348);
    v18 = sub_24B2D1974();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  else
  {
    v20 = *(v4 + 32);
    v20(v6, v10, v3);
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_24AFF8258(v15, &qword_27EFCE348);
    v20(a1, v6, v3);
    v21 = *MEMORY[0x277D08CF0];
    v22 = sub_24B2D1974();
    v23 = *(v22 - 8);
    (*(v23 + 104))(a1, v21, v22);

    return (*(v23 + 56))(a1, 0, 1, v22);
  }
}

uint64_t sub_24B26EE88(uint64_t a1)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF528);
  MEMORY[0x28223BE20](v55);
  v56 = v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE348);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = v47 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v47 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v47 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v47 - v18;
  v20 = sub_24B2D1574();
  v57 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v58 = v47 - v24;
  v59 = a1;
  sub_24B008890(a1, v19, &qword_27EFCD8B0);
  v25 = sub_24B2D1974();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v19, 1, v25) != 1)
  {
    if ((*(v26 + 88))(v19, v25) != *MEMORY[0x277D08CF0])
    {
      (*(v26 + 8))(v19, v25);
      v27 = *(v1 + 40);
      if (!v27)
      {
LABEL_9:
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v47[-2] = v1;
        v47[-1] = 0;
        v60 = v1;
        sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
        sub_24B2D2574();

        return sub_24AFF8258(v59, &qword_27EFCD8B0);
      }

      goto LABEL_8;
    }

    v48 = v22;
    (*(v26 + 96))(v19, v25);
    v28 = v57;
    v47[0] = *(v57 + 32);
    v47[1] = v57 + 32;
    (v47[0])(v58, v19, v20);
    swift_getKeyPath();
    v60 = v1;
    sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
    v52 = v1;
    sub_24B2D2584();
    v29 = v52;

    v30 = *(v29 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
    v31 = v16;
    if (v30)
    {
      (*(v28 + 16))(v13, v30 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier, v20);
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v35 = v28;
    v36 = v56;
    v37 = v35[7];
    v37(v13, v32, 1, v20);
    sub_24B0391CC(v13, v31, &qword_27EFCE348);
    v49 = v35[2];
    v50 = v35 + 2;
    v49(v10, v58, v20);
    v56 = (v35 + 7);
    v51 = v37;
    v37(v10, 0, 1, v20);
    v38 = v31;
    v39 = *(v55 + 48);
    sub_24B008890(v31, v36, &qword_27EFCE348);
    sub_24B008890(v10, v36 + v39, &qword_27EFCE348);
    v40 = v35[6];
    if (v40(v36, 1, v20) == 1)
    {
      sub_24AFF8258(v10, &qword_27EFCE348);
      sub_24AFF8258(v31, &qword_27EFCE348);
      if (v40(v36 + v39, 1, v20) == 1)
      {
        sub_24AFF8258(v36, &qword_27EFCE348);
LABEL_20:
        sub_24AFF8258(v59, &qword_27EFCD8B0);
        return (*(v57 + 8))(v58, v20);
      }
    }

    else
    {
      v41 = v53;
      sub_24B008890(v36, v53, &qword_27EFCE348);
      if (v40(v36 + v39, 1, v20) != 1)
      {
        v44 = v48;
        (v47[0])(v48, v36 + v39, v20);
        sub_24B276E48(&qword_27EFCC6C8, MEMORY[0x277D08B50]);
        LODWORD(v55) = sub_24B2D52A4();
        v45 = v41;
        v46 = *(v57 + 8);
        v46(v44, v20);
        sub_24AFF8258(v10, &qword_27EFCE348);
        sub_24AFF8258(v38, &qword_27EFCE348);
        v46(v45, v20);
        sub_24AFF8258(v36, &qword_27EFCE348);
        if (v55)
        {
          goto LABEL_20;
        }

LABEL_18:
        v42 = v54;
        v43 = v58;
        v49(v54, v58, v20);
        v51(v42, 0, 1, v20);
        sub_24B275D94(v42);
        sub_24AFF8258(v59, &qword_27EFCD8B0);
        sub_24AFF8258(v42, &qword_27EFCE348);
        return (*(v57 + 8))(v43, v20);
      }

      sub_24AFF8258(v10, &qword_27EFCE348);
      sub_24AFF8258(v31, &qword_27EFCE348);
      (*(v57 + 8))(v41, v20);
    }

    sub_24AFF8258(v36, &qword_27EFCF528);
    goto LABEL_18;
  }

  sub_24AFF8258(v19, &qword_27EFCD8B0);
  v27 = *(v1 + 40);
  if (!v27)
  {
    goto LABEL_9;
  }

LABEL_8:
  if (*(v27 + 16) >= 2uLL)
  {
    goto LABEL_9;
  }

  return sub_24AFF8258(v59, &qword_27EFCD8B0);
}

uint64_t sub_24B26F78C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v242 = a1;
  v3 = sub_24B2D5324();
  MEMORY[0x28223BE20](v3 - 8);
  v201 = &v199 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8);
  MEMORY[0x28223BE20](v5 - 8);
  v219 = &v199 - v6;
  v7 = sub_24B2D2534();
  MEMORY[0x28223BE20](v7 - 8);
  v224 = &v199 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_24B2D2204();
  v246 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v221 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B2D5344();
  MEMORY[0x28223BE20](v10 - 8);
  v223 = &v199 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_24B2D2214();
  v241 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v200 = &v199 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v218 = (&v199 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v15 - 8);
  v215 = &v199 - v16;
  v213 = sub_24B2D14C4();
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v211 = &v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  MEMORY[0x28223BE20](v18 - 8);
  v206 = &v199 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB280);
  MEMORY[0x28223BE20](v20 - 8);
  v199 = &v199 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270);
  MEMORY[0x28223BE20](v22 - 8);
  v231 = &v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v230 = (&v199 - v25);
  MEMORY[0x28223BE20](v26);
  v234 = &v199 - v27;
  MEMORY[0x28223BE20](v28);
  v236 = &v199 - v29;
  v205 = sub_24B2D1524();
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v203 = &v199 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_24B2D1544();
  v237 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v232 = &v199 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB2A0);
  MEMORY[0x28223BE20](v244);
  v33 = &v199 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v226 = &v199 - v35;
  MEMORY[0x28223BE20](v36);
  v227 = &v199 - v37;
  MEMORY[0x28223BE20](v38);
  v228 = &v199 - v39;
  MEMORY[0x28223BE20](v40);
  v202 = &v199 - v41;
  MEMORY[0x28223BE20](v42);
  v217 = &v199 - v43;
  MEMORY[0x28223BE20](v44);
  v220 = &v199 - v45;
  MEMORY[0x28223BE20](v46);
  v216 = &v199 - v47;
  MEMORY[0x28223BE20](v48);
  v229 = &v199 - v49;
  v50 = sub_24B2D1874();
  v239 = *(v50 - 8);
  v240 = v50;
  MEMORY[0x28223BE20](v50);
  v214 = &v199 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v225 = &v199 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF518);
  MEMORY[0x28223BE20](v54);
  v208 = &v199 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v209 = &v199 - v57;
  MEMORY[0x28223BE20](v58);
  v210 = &v199 - v59;
  MEMORY[0x28223BE20](v60);
  v235 = &v199 - v61;
  MEMORY[0x28223BE20](v62);
  v238 = &v199 - v63;
  MEMORY[0x28223BE20](v64);
  v207 = &v199 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50);
  MEMORY[0x28223BE20](v66 - 8);
  v68 = &v199 - v67;
  v69 = type metadata accessor for PersonDetailsController.State();
  MEMORY[0x28223BE20](v69);
  v71 = &v199 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DetailsPersonInfo();
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v243 = &v199 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v248 = v1;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  v75 = *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
  if (v75)
  {
    swift_getKeyPath();
    v248 = v75;
    sub_24B276E48(&qword_27EFCCD10, type metadata accessor for PersonDetailsController);

    v246 = v75;
    sub_24B2D2584();
    v76 = v246;

    v77 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
    swift_beginAccess();
    sub_24B276CB4(v76 + v77, v71, type metadata accessor for PersonDetailsController.State);
    sub_24B0391CC(&v71[*(v69 + 20)], v68, &qword_27EFCCD50);
    if ((*(v73 + 48))(v68, 1, v72) == 1)
    {
      sub_24AFF8258(v68, &qword_27EFCCD50);
      swift_getKeyPath();
      v247 = v76;
      sub_24B2D2584();

      v78 = *(v76 + v77) ^ 1;
      v79 = sub_24B2D1944();
      v80 = v215;
      (*(*(v79 - 8) + 56))(v215, 1, 1, v79);
      v82 = v239;
      v81 = v240;
      v83 = v214;
      (*(v239 + 104))(v214, *MEMORY[0x277D08CB8], v240);
      v84 = v202;
      LODWORD(v243) = v78 & 1;
      sub_24B2D1894();
      (*(v82 + 8))(v83, v81);
      sub_24AFF8258(v80, &qword_27EFCB288);
      sub_24B008890(v84, v228, &qword_27EFCB2A0);
      sub_24B008890(v84, v227, &qword_27EFCB2A0);
      sub_24B008890(v84, v226, &qword_27EFCB2A0);
      v85 = *(v241 + 56);
      v86 = v245;
      v85(v230, 1, 1, v245);
      v85(v231, 1, 1, v86);
      if (v78)
      {
        v89 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80D0);
        v87 = *(type metadata accessor for PersonLocateAction() - 8);
        v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_24B2DE430;
        *(v89 + v88) = 0;
        swift_storeEnumTagMultiPayload();
      }

      v136 = *(v244 + 48);
      v137 = *(v244 + 64);
      sub_24AFF8258(v84, &qword_27EFCB2A0);
      v138 = v242;
      *v242 = 0;
      v138[1] = 0xE000000000000000;
      v139 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
      v140 = v228;
      sub_24B0391CC(v228, v138 + v139[5], &qword_27EFCB270);
      v141 = v227;
      sub_24B0391CC(v227 + v136, v138 + v139[6], &qword_27EFCB270);
      v142 = v226;
      sub_24B0391CC(v226 + v137, v138 + v139[7], &qword_27EFCB298);
      sub_24B0391CC(v230, v138 + v139[8], &qword_27EFCB270);
      sub_24B0391CC(v231, v138 + v139[9], &qword_27EFCB270);
      *(v138 + v139[10]) = v243;
      *(v138 + v139[11]) = v89;
      sub_24AFF8258(v142 + v136, &qword_27EFCB270);
      sub_24AFF8258(v142, &qword_27EFCB270);
      sub_24AFF8258(v141 + v137, &qword_27EFCB298);
      sub_24AFF8258(v141, &qword_27EFCB270);
      sub_24AFF8258(v140 + v137, &qword_27EFCB298);
      return sub_24AFF8258(v140 + v136, &qword_27EFCB270);
    }

    v120 = v243;
    sub_24B276D1C(v68, v243, type metadata accessor for DetailsPersonInfo);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF520);
    v121 = sub_24B2D17A4();
    v122 = *(v121 - 8);
    v123 = *(v122 + 72);
    v124 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_24B2DEAD0;
    v126 = v125 + v124;
    v127 = *(v122 + 104);
    v127(v126, *MEMORY[0x277D08C58], v121);
    v127(v126 + v123, *MEMORY[0x277D08C50], v121);
    v228 = sub_24B1377DC(v125);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v239 + 104))(v225, *MEMORY[0x277D08CB8], v240);
    v231 = *(v244 + 48);
    LODWORD(v126) = *(v120 + *(v72 + 24));
    v128 = v232;
    sub_24B2D1554();
    v129 = v203;
    sub_24B2D1534();
    v130 = *(v237 + 8);
    v237 += 8;
    v230 = v130;
    v130(v128, v233);
    sub_24B2D1514();
    (*(v204 + 8))(v129, v205);
    LODWORD(v231) = v126;
    sub_24B2D1894();
    v131 = v206;
    sub_24B008890(v120 + *(v72 + 32), v206, &qword_27EFCB278);
    v132 = sub_24B2D1824();
    v133 = *(v132 - 8);
    if ((*(v133 + 48))(v131, 1, v132) == 1)
    {

      v134 = &qword_27EFCB278;
      v135 = v131;
    }

    else
    {
      v143 = v199;
      sub_24B2D1814();

      (*(v133 + 8))(v131, v132);
      v144 = sub_24B2D1F54();
      v145 = *(v144 - 8);
      if ((*(v145 + 48))(v143, 1, v144) != 1)
      {
        sub_24B2D1F34();
        (*(v145 + 8))(v143, v144);
        v146 = 0;
        goto LABEL_23;
      }

      v134 = &qword_27EFCB280;
      v135 = v143;
    }

    sub_24AFF8258(v135, v134);
    v146 = 1;
LABEL_23:
    v241 = *(v241 + 56);
    (v241)(v236, v146, 1, v245);
    v224 = v54[12];
    v226 = v54[16];
    v227 = v54[20];
    v228 = v54[24];
    v161 = v232;
    sub_24B2D1554();
    sub_24B2D14F4();
    v230(v161, v233);
    (*(v239 + 8))(v225, v240);
    v162 = v229;
    v163 = v216;
    sub_24B008890(v229, v216, &qword_27EFCB2A0);
    v164 = v244;
    v165 = *(v244 + 48);
    v239 = *(v244 + 64);
    v240 = v165;
    v166 = v207;
    sub_24B0391CC(v163, v207, &qword_27EFCB270);
    v167 = v220;
    sub_24B008890(v162, v220, &qword_27EFCB2A0);
    v168 = *(v164 + 48);
    v237 = *(v164 + 64);
    sub_24B0391CC(v167 + v168, &v224[v166], &qword_27EFCB270);
    v169 = v162;
    v170 = v217;
    sub_24B0391CC(v169, v217, &qword_27EFCB2A0);
    v171 = *(v164 + 48);
    sub_24B0391CC(v170 + *(v164 + 64), v166 + v226, &qword_27EFCB298);
    sub_24B0391CC(v236, v166 + v227, &qword_27EFCB270);
    sub_24AFF8258(v234, &qword_27EFCB270);
    (v241)(v166 + v228, 1, 1, v245);
    sub_24AFF8258(v170 + v171, &qword_27EFCB270);
    sub_24AFF8258(v170, &qword_27EFCB270);
    sub_24AFF8258(v167 + v237, &qword_27EFCB298);
    sub_24AFF8258(v167, &qword_27EFCB270);
    sub_24AFF8258(v163 + v239, &qword_27EFCB298);
    sub_24AFF8258(v163 + v240, &qword_27EFCB270);
    v172 = v211;
    sub_24B2D14D4();
    v226 = sub_24B2D14B4();
    v225 = v173;
    (*(v212 + 8))(v172, v213);
    sub_24B008890(v166, v238, &qword_27EFCF518);
    v174 = v54[12];
    v244 = v54[16];
    v245 = v174;
    v175 = v54[20];
    v240 = v54[24];
    v241 = v175;
    sub_24B008890(v166, v235, &qword_27EFCF518);
    v223 = v54[12];
    v239 = v54[16];
    v176 = v54[20];
    v236 = v54[24];
    v237 = v176;
    v177 = v210;
    sub_24B008890(v166, v210, &qword_27EFCF518);
    v234 = v54[12];
    v221 = v54[16];
    v178 = v54[20];
    v232 = v54[24];
    v233 = v178;
    v179 = v209;
    sub_24B008890(v166, v209, &qword_27EFCF518);
    v230 = v54[12];
    v229 = v54[16];
    v220 = v54[20];
    v228 = v54[24];
    v180 = v208;
    sub_24B008890(v166, v208, &qword_27EFCF518);
    v227 = v54[12];
    v224 = v54[16];
    v222 = v54[20];
    v219 = v54[24];
    v181 = sub_24B137AFC(&unk_285E48F60);
    v182 = v243;
    v218 = DetailsPersonInfo.locateActions(allowedActions:)(v181);

    sub_24AFF8258(v166, &qword_27EFCF518);
    sub_24B276D84(v182, type metadata accessor for DetailsPersonInfo);
    v183 = v242;
    v184 = v225;
    *v242 = v226;
    v183[1] = v184;
    v185 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
    sub_24B0391CC(v238, v183 + v185[5], &qword_27EFCB270);
    v186 = v235;
    sub_24B0391CC(&v223[v235], v183 + v185[6], &qword_27EFCB270);
    sub_24B0391CC(&v221[v177], v183 + v185[7], &qword_27EFCB298);
    sub_24B0391CC(v179 + v220, v183 + v185[8], &qword_27EFCB270);
    sub_24B0391CC(v180 + v219, v183 + v185[9], &qword_27EFCB270);
    *(v183 + v185[10]) = v231;
    *(v183 + v185[11]) = v218;
    sub_24AFF8258(v180 + v222, &qword_27EFCB270);
    sub_24AFF8258(&v224[v180], &qword_27EFCB298);
    sub_24AFF8258(v180 + v227, &qword_27EFCB270);
    sub_24AFF8258(v180, &qword_27EFCB270);
    sub_24AFF8258(v179 + v228, &qword_27EFCB270);
    sub_24AFF8258(v179 + v229, &qword_27EFCB298);
    sub_24AFF8258(v230 + v179, &qword_27EFCB270);
    sub_24AFF8258(v179, &qword_27EFCB270);
    sub_24AFF8258(&v232[v177], &qword_27EFCB270);
    sub_24AFF8258(v177 + v233, &qword_27EFCB270);
    sub_24AFF8258(v177 + v234, &qword_27EFCB270);
    sub_24AFF8258(v177, &qword_27EFCB270);
    sub_24AFF8258(v186 + v236, &qword_27EFCB270);
    sub_24AFF8258(v186 + v237, &qword_27EFCB270);
    sub_24AFF8258(v186 + v239, &qword_27EFCB298);
    sub_24AFF8258(v186, &qword_27EFCB270);
    v187 = v238;
    sub_24AFF8258(&v238[v240], &qword_27EFCB270);
    sub_24AFF8258(v187 + v241, &qword_27EFCB270);
    sub_24AFF8258(v187 + v244, &qword_27EFCB298);
    return sub_24AFF8258(v187 + v245, &qword_27EFCB270);
  }

  v90 = v2;
  v238 = v33;
  v91 = v219;
  v92 = v246;
  sub_24B2D52E4();
  if (qword_27EFC7730 != -1)
  {
    swift_once();
  }

  v93 = v222;
  v94 = __swift_project_value_buffer(v222, qword_27EFE4628);
  v95 = *(v92 + 16);
  v246 = v92 + 16;
  v95(v221, v94, v93);
  sub_24B2D2524();
  sub_24B2D2224();
  v96 = sub_24B2D53B4();
  v98 = v96;
  v99 = v97;
  v100 = v90[5];
  if (v100)
  {
    v237 = v96;
    v243 = v97;
    v102 = v90[3];
    v101 = v90[4];
    if (*(v100 + 16) == 1)
    {
      sub_24B2D1494();
      sub_24B2769CC(v102, v101, v100);
      v103 = sub_24B2D1484();
      sub_24B2D5A64();

      v104 = sub_24B2D15F4();
      if ((*(*(v104 - 8) + 48))(v91, 1, v104) != 1)
      {

        sub_24AFF8258(v91, &qword_27EFCF4F8);
        v105 = v244;
        v106 = sub_24B2D1944();
        v107 = v215;
        (*(*(v106 - 8) + 56))(v215, 1, 1, v106);
        v109 = v239;
        v108 = v240;
        v110 = v214;
        (*(v239 + 104))(v214, *MEMORY[0x277D08CB8], v240);
        v111 = v216;
        sub_24B2D1894();
        (*(v109 + 8))(v110, v108);
        sub_24AFF8258(v107, &qword_27EFCB288);
        sub_24B008890(v111, v220, &qword_27EFCB2A0);
        v246 = *(v105 + 48);
        v243 = *(v105 + 64);
        v112 = v217;
        sub_24B008890(v111, v217, &qword_27EFCB2A0);
        v237 = *(v105 + 48);
        v240 = *(v105 + 64);
        v113 = v238;
        sub_24B008890(v111, v238, &qword_27EFCB2A0);
        v239 = *(v105 + 48);
        v244 = *(v105 + 64);
        v114 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
        v115 = v242;
        v116 = *(v241 + 56);
        v117 = v245;
        v116(v242 + v114[8], 1, 1, v245);
        v116(&v115[v114[9]], 1, 1, v117);
        sub_24AFF8258(v111, &qword_27EFCB2A0);
        *v115 = 0;
        *(v115 + 1) = 0xE000000000000000;
        v118 = v220;
        sub_24B0391CC(v220, &v115[v114[5]], &qword_27EFCB270);
        sub_24B0391CC(v112 + v237, &v115[v114[6]], &qword_27EFCB270);
        sub_24B0391CC(v113 + v244, &v115[v114[7]], &qword_27EFCB298);
        v115[v114[10]] = 1;
        *&v115[v114[11]] = MEMORY[0x277D84F90];
        sub_24AFF8258(v113 + v239, &qword_27EFCB270);
        sub_24AFF8258(v113, &qword_27EFCB270);
        sub_24AFF8258(v112 + v240, &qword_27EFCB298);
        sub_24AFF8258(v112, &qword_27EFCB270);
        sub_24AFF8258(v118 + v243, &qword_27EFCB298);
        return sub_24AFF8258(v118 + v246, &qword_27EFCB270);
      }
    }

    else
    {
      v156 = sub_24B2D15F4();
      (*(*(v156 - 8) + 56))(v91, 1, 1, v156);
      sub_24B2769CC(v102, v101, v100);
    }

    v157 = v102;
    sub_24AFF8258(v91, &qword_27EFCF4F8);
    sub_24B2D5314();
    sub_24B2D5304();
    v158 = *(v100 + 16);

    v248 = v158;
    sub_24B2D52F4();
    sub_24B2D5304();
    sub_24B2D5334();
    v95(v221, v94, v222);
    sub_24B2D2524();
    v159 = v200;
    sub_24B2D2224();
    if (v101)
    {

      v160 = v101;
    }

    else
    {
      v157 = v237;
      v160 = v243;
    }

    v188 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
    v190 = v241;
    v189 = v242;
    v191 = *(v241 + 56);
    v192 = v245;
    v191(v242 + v188[5], 1, 1, v245);
    v193 = v188[6];
    (*(v190 + 16))(&v189[v193], v159, v192);
    v191(&v189[v193], 0, 1, v192);
    v194 = v188[7];
    v195 = sub_24B2D1954();
    (*(*(v195 - 8) + 56))(&v189[v194], 1, 1, v195);
    v191(&v189[v188[8]], 1, 1, v192);
    v191(&v189[v188[9]], 1, 1, v192);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80D0);
    v196 = *(type metadata accessor for PersonLocateAction() - 8);
    v197 = (*(v196 + 80) + 32) & ~*(v196 + 80);
    v198 = swift_allocObject();
    *(v198 + 16) = xmmword_24B2DE430;
    *(v198 + v197) = 0;
    swift_storeEnumTagMultiPayload();
    result = (*(v190 + 8))(v159, v192);
    *v189 = v157;
    *(v189 + 1) = v160;
    v189[v188[10]] = 1;
    *&v189[v188[11]] = v198;
  }

  else
  {
    v147 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
    v148 = v242;
    v149 = *(v241 + 56);
    v150 = v245;
    v149(v242 + v147[5], 1, 1, v245);
    v149(&v148[v147[6]], 1, 1, v150);
    v151 = v147[7];
    v152 = sub_24B2D1954();
    (*(*(v152 - 8) + 56))(&v148[v151], 1, 1, v152);
    v149(&v148[v147[8]], 1, 1, v150);
    v149(&v148[v147[9]], 1, 1, v150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80D0);
    v153 = *(type metadata accessor for PersonLocateAction() - 8);
    v154 = (*(v153 + 80) + 32) & ~*(v153 + 80);
    v155 = swift_allocObject();
    *(v155 + 16) = xmmword_24B2DE430;
    *(v155 + v154) = 0;
    result = swift_storeEnumTagMultiPayload();
    *v148 = v98;
    *(v148 + 1) = v99;
    v148[v147[10]] = 0;
    *&v148[v147[11]] = v155;
  }

  return result;
}

uint64_t sub_24B271C44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_24B2D12F4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277D08AE8], v5, v7);
  sub_24B276E48(&qword_27EFC8118, MEMORY[0x277D08AF0]);
  v10 = sub_24B2D2644();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  v18 = v1;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  v12 = *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController);
  MEMORY[0x28223BE20](v11);
  *(&v17 - 2) = &_s25OrganizedListExtraStorageVN;
  *(&v17 - 1) = sub_24B276AB0();
  swift_getKeyPath();
  v18 = v12;
  sub_24B276DE4();

  sub_24B2D2584();

  v13 = v12 + *(*v12 + 128);
  swift_beginAccess();
  sub_24B008890(v13, v4, &qword_27EFCF4D8);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF510);
  v15 = sub_24B2D19A4();
  (*(*(v14 - 8) + 8))(v4, v14);
  return v15;
}

uint64_t sub_24B271F8C()
{
  v1 = sub_24B2D2534();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24B2D2204();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D5344();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24B2D2214();
  MEMORY[0x28223BE20](v7 - 8);
  sub_24B2D52E4();
  if (qword_27EFC7730 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_27EFE4628);
  (*(v3 + 16))(v5, v8, v2);
  sub_24B2D2524();
  sub_24B2D2224();
  result = sub_24B2D53B4();
  if (v0[5])
  {
    v10 = result;
    v12 = v0[3];
    v11 = v0[4];

    if (v11)
    {

      return v12;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

uint64_t sub_24B272214(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_24B2D1794();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB020);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  v2[18] = swift_task_alloc();
  v4 = sub_24B2D1C44();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for OpenFindMyAction.Destination();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for PersonDetailsController.State();
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v5 = type metadata accessor for DetailsPersonInfo();
  v2[30] = v5;
  v2[31] = *(v5 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = type metadata accessor for PersonLocateAction();
  v2[35] = swift_task_alloc();
  sub_24B2D5694();
  v2[36] = sub_24B2D5684();
  v7 = sub_24B2D5604();
  v2[37] = v7;
  v2[38] = v6;

  return MEMORY[0x2822009F8](sub_24B272528, v7, v6);
}

uint64_t sub_24B272528()
{
  sub_24B276CB4(v0[12], v0[35], type metadata accessor for PersonLocateAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  swift_getKeyPath();
  v2 = v0[13];
  if (EnumCaseMultiPayload != 1)
  {
    v0[10] = v2;
    sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
    sub_24B2D2584();

    v10 = *(v2 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
    v11 = v0[30];
    v12 = v0[31];
    v13 = v0[29];
    if (v10)
    {
      v15 = v0[26];
      v14 = v0[27];
      swift_getKeyPath();
      v0[11] = v10;
      sub_24B276E48(&qword_27EFCCD10, type metadata accessor for PersonDetailsController);

      sub_24B2D2584();

      v16 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
      swift_beginAccess();
      sub_24B276CB4(v10 + v16, v14, type metadata accessor for PersonDetailsController.State);

      sub_24B0391CC(v14 + *(v15 + 20), v13, &qword_27EFCCD50);
      if ((*(v12 + 48))(v13, 1, v11) != 1)
      {
        v17 = v0[13];
        sub_24B276D1C(v0[29], v0[33], type metadata accessor for DetailsPersonInfo);
        v18 = *(v17 + 104);
        sub_24B2D1724();
        swift_storeEnumTagMultiPayload();
        v51 = (v18 + *v18);
        v19 = swift_task_alloc();
        v0[39] = v19;
        *v19 = v0;
        v19[1] = sub_24B272E48;
        v20 = v0[25];
LABEL_15:

        return v51(v20);
      }
    }

    else
    {
      (*(v12 + 56))(v13, 1, 1, v11);
    }

    v28 = v0[13];
    sub_24AFF8258(v0[29], &qword_27EFCCD50);
    v29 = *(v28 + 104);
    swift_storeEnumTagMultiPayload();
    v51 = (v29 + *v29);
    v30 = swift_task_alloc();
    v0[40] = v30;
    *v30 = v0;
    v30[1] = sub_24B2730E0;
    v20 = v0[24];
    goto LABEL_15;
  }

  v0[8] = v2;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  v3 = *(v2 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
  if (!v3)
  {
    v21 = v0[30];
    v22 = v0[31];
    v23 = v0[28];

    (*(v22 + 56))(v23, 1, 1, v21);
    goto LABEL_9;
  }

  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  swift_getKeyPath();
  v0[9] = v3;
  sub_24B276E48(&qword_27EFCCD10, type metadata accessor for PersonDetailsController);

  sub_24B2D2584();

  v9 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
  swift_beginAccess();
  sub_24B276CB4(v3 + v9, v7, type metadata accessor for PersonDetailsController.State);

  sub_24B0391CC(v7 + *(v8 + 20), v6, &qword_27EFCCD50);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {

LABEL_9:
    v24 = v0[28];
    v25 = &qword_27EFCCD50;
LABEL_10:
    sub_24AFF8258(v24, v25);
    sub_24AFF8258(v0[35], &qword_27EFCB280);

    v26 = v0[1];

    return v26();
  }

  v31 = v0[32];
  v32 = v0[30];
  v33 = v0[18];
  sub_24B276D1C(v0[28], v31, type metadata accessor for DetailsPersonInfo);
  sub_24B008890(v31 + *(v32 + 28), v33, &qword_27EFCB288);
  v34 = sub_24B2D1944();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    v36 = v0[18];
    sub_24B276D84(v0[32], type metadata accessor for DetailsPersonInfo);

    v25 = &qword_27EFCB288;
    v24 = v36;
    goto LABEL_10;
  }

  v37 = v0[21];
  v49 = v0[22];
  v50 = v0[32];
  v38 = v0[20];
  v48 = v0[19];
  v39 = v0[18];
  v40 = v0[15];
  v41 = v0[16];
  v42 = v0[13];
  v43 = v0[14];
  sub_24B2D18B4();
  (*(v35 + 8))(v39, v34);
  (*(v38 + 32))(v49, v37, v48);
  v44 = *(v42 + 88);
  (*(v40 + 16))(v41, v50, v43);
  sub_24B2D1F24();
  sub_24B2D1AA4();
  v52 = (v44 + *v44);
  v45 = swift_task_alloc();
  v0[41] = v45;
  *v45 = v0;
  v45[1] = sub_24B273358;
  v46 = v0[22];
  v47 = v0[17];

  return v52(v46, v47);
}

uint64_t sub_24B272E48()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 200);
  if (v0)
  {

    sub_24B276D84(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B276EE0;
  }

  else
  {
    sub_24B276D84(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B272FB4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B272FB4()
{
  v1 = *(v0 + 264);

  sub_24B276D84(v1, type metadata accessor for DetailsPersonInfo);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B2730E0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 192);
  if (v0)
  {

    sub_24B276D84(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B276EE4;
  }

  else
  {
    sub_24B276D84(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B27324C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B27324C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B273358()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 136);
  if (v0)
  {

    sub_24AFF8258(v4, &qword_27EFCB020);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B276EDC;
  }

  else
  {
    sub_24AFF8258(v4, &qword_27EFCB020);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B2734BC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B2734BC()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];

  (*(v5 + 8))(v3, v4);
  sub_24B276D84(v2, type metadata accessor for DetailsPersonInfo);
  sub_24AFF8258(v1, &qword_27EFCB280);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24B273620()
{
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  return *(v0 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state);
}

uint64_t sub_24B2736C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state);
  return result;
}

uint64_t sub_24B273778(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
    sub_24B2D2574();
  }

  return result;
}

uint64_t sub_24B273890()
{
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();
}

uint64_t sub_24B27393C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController);
}

uint64_t sub_24B2739F0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
    sub_24B2D2574();
  }
}

uint64_t sub_24B273B2C()
{
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();
}

uint64_t sub_24B273BD8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController;
  v3 = *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
  *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController) = a1;

  if (v3)
  {
    PersonDetailsController.onDisappear()();
  }

  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  if (*(v1 + v2))
  {

    PersonDetailsController.onAppear()();
  }
}

uint64_t sub_24B273CD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
}

uint64_t sub_24B273D88()
{
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2574();
}

uint64_t sub_24B273E54(int a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = v5;
  LODWORD(v42) = a1;
  v11 = sub_24B2D1654();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - v14;
  v15 = sub_24B2D2504();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a5[3];
  v49 = a5[2];
  v50 = v19;
  v51 = a5[4];
  v52 = *(a5 + 10);
  v20 = a5[1];
  v47 = *a5;
  v48 = v20;
  sub_24B2D24F4();
  v21 = sub_24B2D24B4();
  v23 = v22;
  (*(v16 + 8))(v18, v15);
  *(v6 + 136) = v21;
  *(v6 + 144) = v23;
  sub_24B2D3174();
  *(v6 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state) = 1;
  *(v6 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController) = 0;
  sub_24B2D25B4();
  *(v6 + 16) = v42;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  v24 = v50;
  *(v6 + 80) = v49;
  *(v6 + 96) = v24;
  *(v6 + 112) = v51;
  *(v6 + 128) = v52;
  v25 = v48;
  *(v6 + 48) = v47;
  *(v6 + 64) = v25;
  sub_24B2769CC(a2, a3, a4);
  sub_24B276A10(&v47, v44);
  v42 = v13;
  sub_24B2744AC(a4, v13);
  sub_24B276A6C(a2, a3, a4);
  sub_24B2D1714();
  sub_24B276E48(&qword_27EFCF4E0, MEMORY[0x277D08C20]);
  sub_24B2D5C44();
  sub_24B1D096C(*&v44[0]);

  if (qword_27EFC76D8 != -1)
  {
    swift_once();
  }

  sub_24B1D07DC(v26);

  type metadata accessor for ListPersonInfo();
  sub_24B276E48(&qword_27EFCCEE8, type metadata accessor for ListPersonInfo);
  sub_24B276E48(&qword_27EFCCEF0, type metadata accessor for ListPersonInfo);
  sub_24B276E48(&qword_27EFCCEF8, type metadata accessor for ListPersonInfo);
  sub_24B276E48(&qword_27EFCCF00, type metadata accessor for ListPersonInfo);
  sub_24B276E48(&qword_27EFCCF08, type metadata accessor for ListPersonInfo);
  sub_24B276AB0();
  v27 = v41;
  sub_24B2D19D4();
  *(v27 + *(v40 + 36)) = 3;
  v28 = v47;
  v29 = v48;
  v31 = *(&v51 + 1);
  v30 = v52;

  sub_24B276B04(&v47);
  v44[0] = v28;
  v44[1] = v29;
  v45 = v31;
  v46 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F0);
  swift_allocObject();
  v32 = sub_24B26E278(v27, v44, &qword_27EFCF4D8);
  v33 = OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController;
  *(v6 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController) = v32;
  swift_getKeyPath();
  v43 = v6;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  v34 = *(v6 + v33);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = (v34 + *(*v34 + 152));
  swift_beginAccess();
  v37 = *v36;
  *v36 = sub_24B276B58;
  v36[1] = v35;

  sub_24AFD5890(v37);

  return v6;
}

uint64_t sub_24B2744AC@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_24B2D15F4();
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v42 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24B2D1494();
  MEMORY[0x28223BE20](v41);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v34 = a2;
    v12 = *(a1 + 16);
    if (v12)
    {
      v14 = *(v9 + 16);
      v13 = v9 + 16;
      v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v38 = *(v13 + 56);
      v39 = v14;
      v40 = v13;
      v16 = (v13 - 8);
      v17 = (v36 + 48);
      v37 = (v36 + 32);
      v18 = MEMORY[0x277D84F90];
      v35 = v7;
      do
      {
        v19 = v41;
        v39(v11, v15, v41);
        v20 = sub_24B2D1484();
        sub_24B2D5A64();

        (*v16)(v11, v19);
        if ((*v17)(v6, 1, v7) == 1)
        {
          sub_24AFF8258(v6, &qword_27EFCF4F8);
        }

        else
        {
          v21 = *v37;
          (*v37)(v42, v6, v7);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_24B006880(0, v18[2] + 1, 1, v18);
          }

          v23 = v18[2];
          v22 = v18[3];
          if (v23 >= v22 >> 1)
          {
            v18 = sub_24B006880(v22 > 1, v23 + 1, 1, v18);
          }

          v18[2] = v23 + 1;
          v24 = v18 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v23;
          v7 = v35;
          v21(v24, v42, v35);
        }

        v15 += v38;
        --v12;
      }

      while (v12);
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v29 = sub_24B1D0160(v18);

    v30 = v34;
    *v34 = v29;
    v31 = *MEMORY[0x277D08B88];
    v32 = sub_24B2D1654();
    return (*(*(v32 - 8) + 104))(v30, v31, v32);
  }

  else
  {
    v25 = *MEMORY[0x277D08B90];
    v26 = sub_24B2D1654();
    v27 = *(*(v26 - 8) + 104);

    return v27(a2, v25, v26);
  }
}

uint64_t sub_24B2748C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_24B2D56D4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_24B2D5694();

  v7 = sub_24B2D5684();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v8[5] = a1;

  sub_24B00B0F0(0, 0, v4, &unk_24B2F4A68, v8);
}

uint64_t sub_24B274A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_24B2D5694();
  v5[8] = sub_24B2D5684();
  v7 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B274AF4, v7, v6);
}

uint64_t sub_24B274AF4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_24B274B9C(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B274B9C(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_24B2D2504();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PersonDetailsController.State();
  MEMORY[0x28223BE20](v5);
  v55 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D1574();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v57 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_24B2D1794();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x28223BE20](v12);
  v58 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_24B2D15F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v61 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v62 = v1;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state))
  {
    return result;
  }

  v21 = v1[5];
  if (!v21 || *(v21 + 16) != 1)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    return sub_24AFF8258(v16, &qword_27EFCF4F8);
  }

  sub_24B2D1494();
  v22 = sub_24B2D1484();
  sub_24B2D5A64();

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_24AFF8258(v16, &qword_27EFCF4F8);
  }

  v23 = v61;
  (*(v18 + 32))(v61, v16, v17);
  swift_getKeyPath();
  v62 = v2;
  sub_24B2D2584();

  if (*(v2 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController))
  {
    return (*(v18 + 8))(v23, v17);
  }

  MEMORY[0x28223BE20](v24);
  *(&v43 - 2) = v23;
  sub_24B26E090(sub_24B276C20, v56, MEMORY[0x277D08C40], v11);
  v56 = 0;
  v26 = v59;
  v25 = v60;
  if ((*(v59 + 48))(v11, 1, v60) == 1)
  {
    sub_24AFF8258(v11, &qword_27EFCB018);
    return (*(v18 + 8))(v23, v17);
  }

  (*(v26 + 32))(v58, v11, v25);
  _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
  v27 = v2[6];
  v28 = v2[7];
  v30 = v2[8];
  v29 = v2[9];
  v31 = v2[10];
  v44 = qword_27EFC76D0;
  v49 = v27;

  v48 = v28;

  v47 = v30;

  v46 = v29;

  v45 = v31;

  if (v44 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v5, qword_27EFCCDA0);
  v33 = v55;
  sub_24B276CB4(v32, v55, type metadata accessor for PersonDetailsController.State);
  type metadata accessor for PersonDetailsController();
  v34 = swift_allocObject();
  v35 = v50;
  sub_24B2D24F4();
  v36 = sub_24B2D24B4();
  v38 = v37;
  (*(v53 + 8))(v35, v54);
  *(v34 + 16) = v36;
  *(v34 + 24) = v38;
  sub_24B2D3174();
  *(v34 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__observationTask) = 0;
  *(v34 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_isAutomaticSubscriptionsForwardingEnabled) = 0;
  sub_24B2D25B4();
  (*(v51 + 32))(v34 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier, v57, v52);
  sub_24B276D1C(v33, v34 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state, type metadata accessor for PersonDetailsController.State);
  v39 = (v34 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies);
  v40 = v48;
  *v39 = v49;
  v39[1] = v40;
  v41 = v46;
  v39[2] = v47;
  v39[3] = v41;
  v39[4] = v45;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v43 - 2) = v2;
  *(&v43 - 1) = v34;
  v62 = v2;
  sub_24B2D2574();

  (*(v59 + 8))(v58, v60);
  return (*(v18 + 8))(v61, v17);
}

uint64_t sub_24B2753CC()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x29286573756170, 0xE700000000000000, &v13);
    _os_log_impl(&dword_24AFD2000, v2, v3, "EmbeddedPeopleInteractiveMapViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  swift_getKeyPath();
  v13 = v1;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state) == 1)
  {
    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_24AFF321C(0x29286573756170, 0xE700000000000000, &v13);
      _os_log_impl(&dword_24AFD2000, v6, v7, "EmbeddedPeopleInteractiveMapViewModel: %s - Already Paused", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C23D530](v9, -1, -1);
      MEMORY[0x24C23D530](v8, -1, -1);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v1;
    sub_24B2D2574();
  }

  swift_getKeyPath();
  v13 = v1;
  sub_24B2D2584();

  sub_24B28B758();

  swift_getKeyPath();
  v13 = v1;
  sub_24B2D2584();

  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController))
  {

    PersonDetailsController.onDisappear()();
  }

  v11 = swift_getKeyPath();
  MEMORY[0x28223BE20](v11);
  v13 = v1;
  sub_24B2D2574();
}

void sub_24B2757C0()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x2928656D75736572, 0xE800000000000000, &v16);
    _os_log_impl(&dword_24AFD2000, v2, v3, "EmbeddedPeopleInteractiveMapViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  swift_getKeyPath();
  v16 = v1;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  v6 = OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state;
  v7 = *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state);
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();
  v10 = os_log_type_enabled(v8, v9);
  if (v7)
  {
    if (v10)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_24AFF321C(0x2928656D75736572, 0xE800000000000000, &v16);
      _os_log_impl(&dword_24AFD2000, v8, v9, "EmbeddedPeopleInteractiveMapViewModel: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);
    }

    if (*(v1 + v6))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v16 = v1;
      sub_24B2D2574();
    }

    else
    {
      *(v1 + v6) = 0;
    }

    swift_getKeyPath();
    v16 = v1;
    sub_24B2D2584();

    sub_24B28B0A0();
  }

  else
  {
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_24AFF321C(0x2928656D75736572, 0xE800000000000000, &v16);
      _os_log_impl(&dword_24AFD2000, v8, v9, "EmbeddedPeopleInteractiveMapViewModel: %s Trying to resume but it's not paused", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C23D530](v15, -1, -1);
      MEMORY[0x24C23D530](v14, -1, -1);
    }
  }
}

uint64_t sub_24B275B90(uint64_t a1, uint64_t a2)
{
  v3 = sub_24B2D15F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D1724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8020);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24B2DE430;
  (*(v4 + 16))(v8 + v7, a2, v3);
  sub_24B137C44(v8);
  swift_setDeallocating();
  v9 = *(v4 + 8);
  v9(v8 + v7, v3);
  swift_deallocClassInstance();
  LOBYTE(v8) = sub_24B2D15E4();

  v9(v6, v3);

  return v8 & 1;
}

uint64_t sub_24B275D94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D2504();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for PersonDetailsController.State();
  MEMORY[0x28223BE20](v53);
  v58 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D1574();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF530);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - v17;
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel___observationRegistrar;
  v62 = v1;
  v59 = sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D2584();

  v20 = *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
  sub_24B008890(a1, v18, &qword_27EFCE348);
  result = (*(v8 + 48))(v18, 1, v7);
  if (result == 1)
  {
    if (v20)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v44 - 2) = v1;
      *(&v44 - 1) = 0;
      v62 = v1;
      sub_24B2D2574();
    }
  }

  else
  {
    v51 = v19;
    v52 = v12;
    if (v20 && (((*(v8 + 16))(v15, v18, v7), sub_24B276E48(&qword_27EFCC6D8, MEMORY[0x277D08B50]), , sub_24B2D54E4(), sub_24B2D54E4(), v62 != v60) || v63 != v61 ? (v23 = sub_24B2D6004()) : (v23 = 1), , v24 = *(v8 + 8), v24(v15, v7), , , (v23 & 1) != 0))
    {
      return v24(v18, v7);
    }

    else
    {
      v25 = v52;
      v49 = *(v8 + 32);
      v49(v52, v18, v7);
      v26 = v54;
      (*(v8 + 16))(v54, v25, v7);
      v27 = v2[7];
      v28 = v2[8];
      v29 = v2[9];
      v30 = v2[10];
      v31 = qword_27EFC76D0;
      v50 = v2[6];

      v48 = v27;

      v47 = v28;

      v46 = v29;

      v45 = v30;

      if (v31 != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v53, qword_27EFCCDA0);
      v33 = v58;
      sub_24B276CB4(v32, v58, type metadata accessor for PersonDetailsController.State);
      type metadata accessor for PersonDetailsController();
      v34 = swift_allocObject();
      v35 = v55;
      sub_24B2D24F4();
      v36 = sub_24B2D24B4();
      v38 = v37;
      (*(v56 + 8))(v35, v57);
      *(v34 + 16) = v36;
      *(v34 + 24) = v38;
      sub_24B2D3174();
      *(v34 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__observationTask) = 0;
      *(v34 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_isAutomaticSubscriptionsForwardingEnabled) = 0;
      sub_24B2D25B4();
      v49((v34 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier), v26, v7);
      sub_24B276D1C(v33, v34 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state, type metadata accessor for PersonDetailsController.State);
      v39 = (v34 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies);
      v40 = v47;
      v41 = v48;
      *v39 = v50;
      v39[1] = v41;
      v39[2] = v40;
      v42 = v45;
      v39[3] = v46;
      v39[4] = v42;
      v43 = swift_getKeyPath();
      MEMORY[0x28223BE20](v43);
      *(&v44 - 2) = v2;
      *(&v44 - 1) = v34;
      v62 = v2;
      sub_24B2D2574();

      return (*(v8 + 8))(v52, v7);
    }
  }

  return result;
}

uint64_t sub_24B2764CC()
{
  sub_24B276A6C(v0[3], v0[4], v0[5]);

  v1 = OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel_logger;
  v2 = sub_24B2D3184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel___observationRegistrar;
  v4 = sub_24B2D25C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmbeddedPeopleInteractiveMapViewModel()
{
  result = qword_27EFCF4A8;
  if (!qword_27EFCF4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B27669C()
{
  result = sub_24B2D3184();
  if (v1 <= 0x3F)
  {
    result = sub_24B2D25C4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore37EmbeddedPeopleInteractiveMapViewModelC13ConfigurationO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B2767CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B27681C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_24B276874(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

unint64_t sub_24B2768AC()
{
  result = qword_27EFCF4B8;
  if (!qword_27EFCF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF4B8);
  }

  return result;
}

uint64_t sub_24B276948(uint64_t a1)
{
  *(a1 + 8) = sub_24B276E48(&qword_27EFCF4C8, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  result = sub_24B276E48(&qword_27EFCF4D0, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24B2769CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24B276A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_24B276AB0()
{
  result = qword_27EFCF4E8;
  if (!qword_27EFCF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF4E8);
  }

  return result;
}

uint64_t sub_24B276B60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B274A58(a1, v4, v5, v7, v6);
}

uint64_t sub_24B276C70()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController) = *(v0 + 24);
}

uint64_t sub_24B276CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B276D1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B276D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B276DE4()
{
  result = qword_27EFCF508;
  if (!qword_27EFCF508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF508);
  }

  return result;
}

uint64_t sub_24B276E48(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24B276F24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_24B276F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B276FD0@<X0>(void *a1@<X8>)
{
  v66 = a1;
  v1 = sub_24B2D2674();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24B2D3184();
  v5 = *(v57 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v57);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v62 = &v57 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v70 = &v57 - v13;
  sub_24B2D3174();
  v67 = sub_24B2D2AE4();
  LODWORD(v69) = *MEMORY[0x277D09048];
  v64 = *(v2 + 104);
  v58 = v1;
  v64(v4);
  v15 = sub_24B2D2954();
  v16 = *(v2 + 8);
  v59 = (v2 + 8);
  v60 = v16;
  (v16)(v4, v1);
  v71 = v5;
  v17 = v5 + 32;
  v18 = *(v5 + 32);
  v68 = v12;
  v19 = v14;
  v20 = v57;
  v18(v12, v19, v57);
  v72 = *(v5 + 80);
  v21 = (v72 + 24) & ~v72;
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v23 = v12;
  v24 = v20;
  v18((v22 + v21), v23, v20);
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_24B2F09A0;
  *(v25 + 24) = v15;
  *&v74 = &unk_24B2F0990;
  *(&v74 + 1) = v22;
  *&v75 = &unk_24B2F09B0;
  *(&v75 + 1) = v25;
  v76 = sub_24B1F0DA0;
  v77 = 0;
  type metadata accessor for PeopleProvider();
  swift_allocObject();

  v65 = PeopleProvider.init(dependencies:)(&v74);
  v26 = v70;
  sub_24B2D3174();
  v27 = v58;
  (v64)(v4, v69, v58);
  v28 = sub_24B2D2954();
  v60(v4, v27);
  v29 = v68;
  v30 = v26;
  v61 = v17;
  v18(v68, v26, v24);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v18((v31 + v21), v29, v24);
  v32 = swift_allocObject();
  *(v32 + 16) = &unk_24B2F0F08;
  *(v32 + 24) = v28;
  *&v74 = &unk_24B2F0EF8;
  *(&v74 + 1) = v31;
  *&v75 = &unk_24B2F0F38;
  *(&v75 + 1) = v32;
  v76 = &unk_24B2F0F18;
  v77 = v28;
  v78 = &unk_24B2F0F28;
  v79 = v28;
  v80 = sub_24B1FEF20;
  v81 = 0;
  v82 = sub_24B1FEF34;
  v83 = 0;
  type metadata accessor for PeopleLocationsProvider();
  swift_allocObject();
  swift_retain_n();
  v64 = PeopleLocationsProvider.init(dependencies:)(&v74);
  sub_24B2D3174();
  v59 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v33 = *(v71++ + 2);
  v33(v29, v30, v24);
  v34 = (v72 + 16) & ~v72;
  v35 = v34 + v6;
  v60 = swift_allocObject();
  v18(v60 + v34, v29, v24);
  v36 = v62;
  v37 = v70;
  v33(v62, v70, v24);
  v67 = v35;
  v38 = swift_allocObject();
  v69 = v34;
  v18((v38 + v34), v36, v24);
  *(v38 + ((v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;
  v39 = v63;
  v18(v63, v37, v24);
  v40 = swift_allocObject();
  v18((v40 + v34), v39, v24);
  v41 = swift_allocObject();
  *(v41 + 16) = &unk_24B2EF0B0;
  *(v41 + 24) = v40;
  *&v74 = sub_24B183EAC;
  *(&v74 + 1) = v60;
  *&v75 = &unk_24B2EF0A0;
  *(&v75 + 1) = v38;
  v76 = &unk_24B2EF0C0;
  v77 = v41;
  type metadata accessor for ContactsProvider();
  swift_allocObject();
  v71 = ContactsProvider.init(dependencies:)(&v74);
  static UserLocationProvider.Dependencies.live(customEffectiveBundleIdentifier:)(0, 0, &v74);
  v73[0] = v74;
  v73[1] = v75;
  type metadata accessor for UserLocationProvider();
  swift_allocObject();
  v63 = UserLocationProvider.init(dependencies:)(v73);
  v42 = v37;
  sub_24B2D3174();
  v43 = v68;
  v18(v68, v42, v24);
  v44 = swift_allocObject();
  v18((v44 + v69), v43, v24);
  type metadata accessor for ETAProvider();
  v45 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_24B2D3174();
  v46 = v45 + OBJC_IVAR____TtC12FindMyUICore11ETAProvider_dataStorage;
  v47 = MEMORY[0x277D84F90];
  *(v46 + 24) = sub_24B193CA8(MEMORY[0x277D84F90]);
  *(v46 + 16) = 0;
  *(v46 + 32) = sub_24B1933E8(v47);
  *v46 = 0x69766F7250415445;
  *(v46 + 8) = 0xEB00000000726564;
  v48 = OBJC_IVAR____TtC12FindMyUICore11ETAProvider_etaQueryTaskByIdentifier;
  *(v45 + v48) = sub_24B193E9C(v47);
  *(v45 + 112) = &unk_24B2EF440;
  *(v45 + 120) = v44;
  v49 = v70;
  sub_24B2D3174();
  v18(v43, v49, v24);
  v62 = swift_allocObject();
  v50 = v69;
  v18(&v62[v69], v43, v24);
  sub_24B2D3174();
  v18(v43, v49, v24);
  v51 = swift_allocObject();
  v18((v51 + v50), v43, v24);
  sub_24B2D3174();
  v18(v43, v49, v24);
  v52 = swift_allocObject();
  result = (v18)(v52 + v50, v43, v24);
  v54 = v66;
  v55 = v64;
  *v66 = v65;
  v54[1] = v55;
  v56 = v63;
  v54[2] = v71;
  v54[3] = v56;
  v54[4] = v45;
  v54[5] = &unk_24B2F4BE0;
  v54[6] = v62;
  v54[7] = &unk_24B2F4BE8;
  v54[8] = v51;
  v54[9] = sub_24B1246F4;
  v54[10] = v52;
  return result;
}

uint64_t sub_24B277AE0(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_24B2D3184() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AFFDE44;

  return sub_24B0E5074(a1, a2, v2 + v7);
}

uint64_t sub_24B277BC0(uint64_t a1)
{
  v4 = *(sub_24B2D3184() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AFFD370;

  return sub_24B0EBEDC(a1, v1 + v5);
}

uint64_t sub_24B277CA8@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_24B277CD0(a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_24B277CD0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v167 = a3;
  v196 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDCC8);
  v195 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v143 = &v137 - v5;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7FE8);
  v166 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v142 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v162 = &v137 - v8;
  MEMORY[0x28223BE20](v9);
  v190 = &v137 - v10;
  MEMORY[0x28223BE20](v11);
  v192 = &v137 - v12;
  MEMORY[0x28223BE20](v13);
  v191 = &v137 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v137 - v16;
  v18 = sub_24B2D1C44();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v138 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v141 = &v137 - v22;
  MEMORY[0x28223BE20](v23);
  v140 = &v137 - v24;
  MEMORY[0x28223BE20](v25);
  v188 = &v137 - v26;
  MEMORY[0x28223BE20](v27);
  v147 = &v137 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  MEMORY[0x28223BE20](v29 - 8);
  v161 = &v137 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v31 - 8);
  v160 = &v137 - v32;
  v159 = sub_24B2D14C4();
  v33 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v158 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for AnnotationV2();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v175 = &v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v174 = &v137 - v37;
  v38 = sub_24B2D1974();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v137 = &v137 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v179 = &v137 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v43 - 8);
  v165 = &v137 - v44;
  v164 = sub_24B2D1944();
  v45 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v47 = &v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for ListPersonInfo();
  v48 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v180 = &v137 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = v167;
  v51 = *(v167 + 16);
  v52 = MEMORY[0x277D84F90];
  v186 = v19;
  v176 = v39;
  v173 = v51;
  if (v51)
  {
    v182 = v47;
    v53 = 0;
    v54 = v48;
    v171 = v167 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v170 = (v45 + 48);
    v154 = (v45 + 32);
    v153 = *MEMORY[0x277D08CF0];
    v152 = (v39 + 104);
    v169 = (v39 + 16);
    v151 = (v33 + 8);
    v178 = (v19 + 32);
    v184 = (v19 + 16);
    v185 = (v39 + 32);
    v150 = (v19 + 48);
    v146 = (v19 + 8);
    v139 = (v195 + 8);
    v149 = (v39 + 8);
    v148 = (v45 + 8);
    v177 = MEMORY[0x277D84F90];
    v55 = MEMORY[0x277D84F90];
    v155 = v17;
    v56 = v165;
    v57 = v164;
    v58 = v163;
    v59 = v54;
    v60 = v167;
    v189 = v38;
    v172 = v54;
    while (1)
    {
      if (v53 >= *(v60 + 16))
      {
        __break(1u);
        return result;
      }

      v61 = v60;
      v62 = *(v59 + 72);
      v183 = v53;
      v63 = v180;
      sub_24B279348(v171 + v62 * v53, v180, type metadata accessor for ListPersonInfo);
      sub_24B008890(v63 + *(v58 + 28), v56, &qword_27EFCB288);
      if ((*v170)(v56, 1, v57) != 1)
      {
        break;
      }

      sub_24B279484(v63, type metadata accessor for ListPersonInfo);
      result = sub_24AFF8258(v56, &qword_27EFCB288);
      v60 = v61;
LABEL_4:
      v53 = v183 + 1;
      v59 = v172;
      if (v183 + 1 == v173)
      {

        v52 = MEMORY[0x277D84F90];
        v122 = v177;
        goto LABEL_35;
      }
    }

    v181 = v55;
    (*v154)(v182, v56, v57);
    v64 = v179;
    _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
    (*v152)(v64, v153, v38);
    v65 = v174;
    v168 = *v169;
    v168(v174, v64, v38);
    v66 = v158;
    sub_24B2D14D4();
    v196 = sub_24B2D14B4();
    v68 = v67;
    (*v151)(v66, v159);
    v69 = v157;
    v70 = *(v157 + 24);
    v71 = *(v58 + 20);
    v72 = sub_24B2D1494();
    v73 = *(v72 - 8);
    (*(v73 + 16))(v65 + v70, v63 + v71, v72);
    (*(v73 + 56))(v65 + v70, 0, 1, v72);
    type metadata accessor for Icon(0);
    swift_storeEnumTagMultiPayload();
    sub_24B2D18B4();
    v74 = v160;
    sub_24B2D1864();
    v75 = v161;
    sub_24B2C0340(0, 0, v161);
    v76 = v69[8];
    v77 = sub_24B2D24A4();
    (*(*(v77 - 8) + 56))(v65 + v76, 1, 1, v77);
    v78 = v69[9];
    v79 = sub_24B2D1BB4();
    (*(*(v79 - 8) + 56))(v65 + v78, 1, 1, v79);
    v80 = (v65 + v69[5]);
    *v80 = v196;
    v80[1] = v68;
    sub_24B068E10(v74, v65 + v76, &qword_27EFC8450);
    v81 = v177;
    sub_24B068E10(v75, v65 + v78, &qword_27EFC8A80);
    sub_24B279348(v65, v175, type metadata accessor for AnnotationV2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_24B007360(0, v81[2] + 1, 1, v81);
    }

    v82 = v178;
    v84 = v81[2];
    v83 = v81[3];
    v38 = v189;
    v55 = v181;
    v85 = v182;
    if (v84 >= v83 >> 1)
    {
      v81 = sub_24B007360(v83 > 1, v84 + 1, 1, v81);
    }

    v81[2] = v84 + 1;
    v86 = (*(v156 + 80) + 32) & ~*(v156 + 80);
    v177 = v81;
    sub_24B2793B0(v175, v81 + v86 + *(v156 + 72) * v84);
    v87 = v55[2];
    if (v87)
    {
      v197 = MEMORY[0x277D84F90];
      sub_24B007C34(0, v87, 0);
      v88 = v197;
      v89 = v55 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v187 = *(v166 + 72);
      v90 = v188;
      do
      {
        v195 = v87;
        v196 = v88;
        v91 = v18;
        v92 = v191;
        sub_24B008890(v89, v191, &qword_27EFC7FE8);
        v93 = v192;
        sub_24B008890(v92, v192, &qword_27EFC7FE8);
        v94 = *(v193 + 48);
        v95 = v190;
        (*v185)(v190, v93, v189);
        v194 = *v82;
        (v194)(v95 + v94, v93 + v94, v91);
        (*v184)(v90, v95 + v94, v91);
        sub_24AFF8258(v95, &qword_27EFC7FE8);
        v88 = v196;
        sub_24AFF8258(v92, &qword_27EFC7FE8);
        v197 = v88;
        v97 = *(v88 + 16);
        v96 = *(v88 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_24B007C34(v96 > 1, v97 + 1, 1);
          v88 = v197;
        }

        *(v88 + 16) = v97 + 1;
        v90 = v188;
        (v194)(v88 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v97, v188, v91);
        v89 += v187;
        v87 = (v195 - 1);
        v18 = v91;
      }

      while (v195 != 1);
      v60 = v167;
      v38 = v189;
      v98 = v155;
      v55 = v181;
      v85 = v182;
    }

    else
    {
      v88 = MEMORY[0x277D84F90];
      v60 = v167;
      v98 = v155;
    }

    sub_24B2C0D5C(v88, v98);

    if ((*v150)(v98, 1, v18) == 1)
    {
      sub_24AFF8258(v98, &qword_27EFCE590);
      v99 = v140;
      sub_24B2D18B4();
      v100 = *(v193 + 48);
      v101 = v162;
      v168(v162, v179, v38);
      (*v178)(&v101[v100], v99, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_24B007154(0, v55[2] + 1, 1, v55);
      }

      v57 = v164;
      v103 = v55[2];
      v102 = v55[3];
      if (v103 >= v102 >> 1)
      {
        v55 = sub_24B007154(v102 > 1, v103 + 1, 1, v55);
      }

      (*v149)(v179, v38);
      (*v148)(v85, v57);
      sub_24B279484(v180, type metadata accessor for ListPersonInfo);
      v55[2] = v103 + 1;
      v104 = v55 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v103;
      v105 = &v194;
    }

    else
    {
      v106 = v147;
      v195 = *v82;
      (v195)(v147, v98, v18);
      v107 = v141;
      sub_24B2D18B4();
      v108 = v143;
      sub_24B2D1C34();
      v196 = *v146;
      (v196)(v107, v18);
      v109 = [objc_opt_self() kilometers];
      sub_24B2794E4();
      v110 = v144;
      sub_24B2D1FE4();
      sub_24B279530();
      v111 = v145;
      v112 = sub_24B2D5284();
      v113 = *v139;
      (*v139)(v110, v111);
      v113(v108, v111);
      if ((v112 & 1) == 0)
      {
        (v196)(v106, v18);
        (*v149)(v179, v38);
        v57 = v164;
        (*v148)(v182, v164);
        sub_24B279484(v180, type metadata accessor for ListPersonInfo);
        result = sub_24B279484(v174, type metadata accessor for AnnotationV2);
        v60 = v167;
        v55 = v181;
        goto LABEL_32;
      }

      v114 = v196;
      v115 = v138;
      sub_24B2D18B4();
      v116 = *(v193 + 48);
      v117 = v142;
      v168(v142, v179, v38);
      (v195)(&v117[v116], v115, v18);
      v55 = v181;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v164;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = sub_24B007154(0, v55[2] + 1, 1, v55);
      }

      v60 = v167;
      v119 = v114;
      v121 = v55[2];
      v120 = v55[3];
      if (v121 >= v120 >> 1)
      {
        v55 = sub_24B007154(v120 > 1, v121 + 1, 1, v55);
      }

      v119();
      (*v149)(v179, v38);
      (*v148)(v182, v57);
      sub_24B279484(v180, type metadata accessor for ListPersonInfo);
      v55[2] = v121 + 1;
      v104 = v55 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v121;
      v105 = &v174;
    }

    sub_24B279414(*(v105 - 32), v104);
    result = sub_24B279484(v174, type metadata accessor for AnnotationV2);
LABEL_32:
    v56 = v165;
    v58 = v163;
    goto LABEL_4;
  }

  v122 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
LABEL_35:
  v123 = v55[2];
  v124 = v186;
  if (v123)
  {
    v188 = v18;
    v197 = v52;
    v177 = v122;

    sub_24B007BF0(0, v123, 0);
    v125 = v197;
    v126 = (*(v166 + 80) + 32) & ~*(v166 + 80);
    v181 = v55;
    v127 = v55 + v126;
    v187 = *(v166 + 72);
    v128 = (v176 + 32);
    v185 = (v176 + 16);
    v186 = v124 + 32;
    v129 = v137;
    do
    {
      v195 = v123;
      v196 = v125;
      v130 = v191;
      sub_24B008890(v127, v191, &qword_27EFC7FE8);
      v131 = v192;
      sub_24B008890(v130, v192, &qword_27EFC7FE8);
      v132 = *(v193 + 48);
      v133 = v190;
      v194 = *v128;
      (v194)(v190, v131, v38);
      (*v186)(v133 + v132, v131 + v132, v188);
      (*v185)(v129, v133, v38);
      sub_24AFF8258(v133, &qword_27EFC7FE8);
      v134 = v130;
      v125 = v196;
      sub_24AFF8258(v134, &qword_27EFC7FE8);
      v197 = v125;
      v136 = *(v125 + 16);
      v135 = *(v125 + 24);
      if (v136 >= v135 >> 1)
      {
        sub_24B007BF0(v135 > 1, v136 + 1, 1);
        v125 = v197;
      }

      *(v125 + 16) = v136 + 1;
      (v194)(v125 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v136, v129, v38);
      v127 += v187;
      v123 = (v195 - 1);
    }

    while (v195 != 1);
    v122 = v177;
  }

  else
  {

    v125 = MEMORY[0x277D84F90];
  }

  sub_24B1D1980(v125);

  return v122;
}

uint64_t sub_24B279348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B2793B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationV2();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B279414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7FE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B279484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B2794E4()
{
  result = qword_27EFCF538;
  if (!qword_27EFCF538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCF538);
  }

  return result;
}

unint64_t sub_24B279530()
{
  result = qword_27EFCF540;
  if (!qword_27EFCF540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDCC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF540);
  }

  return result;
}

uint64_t sub_24B279594()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCF548);
  __swift_project_value_buffer(v0, qword_27EFCF548);
  return sub_24B2D3174();
}

uint64_t sub_24B27960C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_24B2D1494();
  v66 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  MEMORY[0x28223BE20](v15 - 8);
  v64 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  v20 = *(a5 + 48);
  v70[2] = *(a5 + 32);
  v70[3] = v20;
  v70[4] = *(a5 + 64);
  v71 = *(a5 + 80);
  v21 = *(a5 + 16);
  v70[0] = *a5;
  v70[1] = v21;
  if (qword_27EFC7728 != -1)
  {
    swift_once();
  }

  v22 = sub_24B2D3184();
  __swift_project_value_buffer(v22, qword_27EFCF548);
  sub_24AFEFFE4(a2, v19);

  v23 = sub_24B2D3164();
  v24 = sub_24B2D5934();

  if (os_log_type_enabled(v23, v24))
  {
    v60 = v24;
    v61 = v19;
    v25 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v67 = v59;
    *v25 = 136315906;
    *(v25 + 4) = sub_24AFF321C(0xD00000000000002ALL, 0x800000024B2DDB70, &v67);
    v65 = v25;
    *(v25 + 12) = 2080;
    v26 = *(a1 + 16);
    v27 = MEMORY[0x277D84F90];
    v62 = a3;
    v63 = a1;
    if (v26)
    {
      v55 = v23;
      v56 = a4;
      v57 = a2;
      v58 = a6;
      v68 = MEMORY[0x277D84F90];
      sub_24B2D5CF4();
      v28 = v12;
      v29 = v66 + 16;
      v66 = *(v66 + 16);
      v30 = a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
      v31 = *(v29 + 56);
      do
      {
        (v66)(v14, v30, v28);
        sub_24B2D1484();
        (*(v29 - 8))(v14, v28);
        sub_24B2D5CC4();
        sub_24B2D5D04();
        sub_24B2D5D14();
        sub_24B2D5CD4();
        v30 += v31;
        --v26;
      }

      while (v26);
      v27 = v68;
      a6 = v58;
      a2 = v57;
      a4 = v56;
      v23 = v55;
    }

    v32 = sub_24AFFF54C();
    v33 = MEMORY[0x24C23BD20](v27, v32);
    v35 = v34;

    v36 = sub_24AFF321C(v33, v35, &v67);

    v38 = v64;
    v37 = v65;
    *(v65 + 14) = v36;
    *(v37 + 22) = 2080;
    v39 = v61;
    sub_24AFEFFE4(v61, v38);
    v40 = sub_24B2D1704();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v38, 1, v40) == 1)
    {
      sub_24AFF8258(v38, &qword_27EFC7880);
      v42 = 0xE300000000000000;
      v43 = 7104878;
    }

    else
    {
      v43 = sub_24B2D16F4();
      v42 = v44;
      (*(v41 + 8))(v38, v40);
    }

    a1 = v63;
    sub_24AFF8258(v39, &qword_27EFC7880);
    v45 = sub_24AFF321C(v43, v42, &v67);

    v46 = v65;
    *(v65 + 24) = v45;
    *(v46 + 32) = 2080;
    a3 = v62;
    v68 = v62;
    v69 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC198);
    v47 = sub_24B2D5A74();
    v49 = sub_24AFF321C(v47, v48, &v67);

    *(v46 + 34) = v49;
    _os_log_impl(&dword_24AFD2000, v23, v60, "FindMyMessagesDetailsView: %s\n- people: %s\n- callerHandle: %s\n- customName: %s", v46, 0x2Au);
    v50 = v59;
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v50, -1, -1);
    MEMORY[0x24C23D530](v46, -1, -1);
  }

  else
  {

    sub_24AFF8258(v19, &qword_27EFC7880);
  }

  v51 = sub_24B134048(&unk_285E48F88);
  type metadata accessor for EmbeddedPeopleSummaryMapViewModel();
  swift_allocObject();
  v67 = sub_24B29E3A4(a3, a4, a1, v51, v70);
  sub_24B2D4CC4();
  result = sub_24AFF8258(a2, &qword_27EFC7880);
  v53 = v69;
  *a6 = v68;
  a6[1] = v53;
  return result;
}

uint64_t sub_24B279C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v47 - v13;
  v64 = sub_24B2D15F4();
  v14 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v65 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_24B2D1494();
  v59 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - v18;
  v20 = *(a5 + 48);
  v67[2] = *(a5 + 32);
  v67[3] = v20;
  v67[4] = *(a5 + 64);
  v68 = *(a5 + 80);
  v21 = *(a5 + 16);
  v67[0] = *a5;
  v67[1] = v21;
  if (qword_27EFC7728 != -1)
  {
    swift_once();
  }

  v22 = sub_24B2D3184();
  __swift_project_value_buffer(v22, qword_27EFCF548);
  v23 = sub_24B2D3164();
  v24 = sub_24B2D5934();
  v25 = os_log_type_enabled(v23, v24);
  v52 = a3;
  v51 = v19;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = a1;
    v28 = swift_slowAlloc();
    v66[0] = v28;
    *v26 = 136315138;
    *(v26 + 4) = sub_24AFF321C(0xD00000000000002ALL, 0x800000024B2DDB70, v66);
    _os_log_impl(&dword_24AFD2000, v23, v24, "FindMyMessagesDetailsView: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v29 = v28;
    a1 = v27;
    MEMORY[0x24C23D530](v29, -1, -1);
    MEMORY[0x24C23D530](v26, -1, -1);
  }

  v60 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v30 = *(a1 + 16);
  if (v30)
  {
    v48 = a4;
    v49 = a2;
    v50 = a6;
    v66[0] = MEMORY[0x277D84F90];
    sub_24B007848(0, v30, 0);
    v56 = sub_24B2D5694();
    v31 = v14 + 16;
    v55 = *(v14 + 16);
    v32 = v66[0];
    v33 = (*(v31 + 64) + 32) & ~*(v31 + 64);
    v47 = a1;
    v34 = a1 + v33;
    v54 = *(v31 + 56);
    v35 = (v59 + 56);
    v57 = v31;
    v36 = (v31 - 8);
    v61 = (v59 + 32);
    v53 = (v59 + 48);
    v37 = v63;
    do
    {
      v55(v65, v34, v64);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v38 = sub_24B2D1614();
      v40 = v58;
      if (v38)
      {
        sub_24B2D14A4();
        v41 = v63;
        (*v35)(v40, 0, 1, v63);
        (*v36)(v65, v64);
        (*v61)(v62, v40, v41);
      }

      else
      {
        (*v35)(v58, 1, 1, v37);
        v39 = v65;
        sub_24B2D15C4();
        (*v36)(v39, v64);
        if ((*v53)(v40, 1, v37) != 1)
        {
          sub_24AFF8258(v40, &qword_27EFCB688);
        }
      }

      v66[0] = v32;
      v43 = *(v32 + 16);
      v42 = *(v32 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_24B007848(v42 > 1, v43 + 1, 1);
        v32 = v66[0];
      }

      *(v32 + 16) = v43 + 1;
      (*(v59 + 32))(v32 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v43, v62, v63);
      v34 += v54;
      --v30;
    }

    while (v30);

    a6 = v50;
    a2 = v49;
    a4 = v48;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v44 = v51;
  sub_24AFEFFE4(a2, v51);
  sub_24B27960C(v32, v44, v52, a4, v67, v66);

  result = sub_24AFF8258(a2, &qword_27EFC7880);
  v46 = v66[1];
  *a6 = v66[0];
  a6[1] = v46;
  return result;
}

uint64_t FindMyMessagesDetailsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF560);
  sub_24B2D4CD4();
  type metadata accessor for EmbeddedPeopleSummaryMapViewModel();
  sub_24B27AD50(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D4F64();
  v2 = type metadata accessor for EmbeddedPeopleSummaryMapView(0);
  *(a1 + *(v2 + 20)) = 0;
  v3 = (a1 + *(v2 + 24));
  sub_24B2D4394();
  sub_24B2D43F4();
  v4 = sub_24B2D4424();

  v5 = sub_24B2D4484();
  sub_24B2D4394();
  sub_24B2D43D4();
  v6 = sub_24B2D4424();

  sub_24B2D4394();
  sub_24B2D43E4();
  v7 = sub_24B2D4424();

  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;
  return result;
}

size_t FindMyMessagesDetailsView.init(people:from:customName:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v39 = a4;
  v40 = a5;
  v38 = a3;
  v36[1] = a2;
  v8 = sub_24B2D1494();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  MEMORY[0x28223BE20](v15 - 8);
  v37 = v36 - v16;
  if (qword_27EFC7728 != -1)
  {
    swift_once();
  }

  v17 = sub_24B2D3184();
  __swift_project_value_buffer(v17, qword_27EFCF548);
  v18 = sub_24B2D3164();
  v19 = sub_24B2D5934();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v41[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2DDB20, v41);
    _os_log_impl(&dword_24AFD2000, v18, v19, "FindMyMessagesDetailsView: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C23D530](v21, -1, -1);
    MEMORY[0x24C23D530](v20, -1, -1);
  }

  if (!(a1 >> 62))
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_21:

    v24 = MEMORY[0x277D84F90];
    v32 = v37;
    if (v38)
    {
LABEL_19:
      sub_24B2D16E4();
      v33 = 0;
LABEL_23:
      v34 = sub_24B2D1704();
      (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
      sub_24B2BF820(v41);
      result = sub_24B27960C(v24, v32, v39, v40, v41, v42);
      v35 = v42[1];
      *a6 = v42[0];
      a6[1] = v35;
      return result;
    }

LABEL_22:
    v33 = 1;
    goto LABEL_23;
  }

  v22 = sub_24B2D5DA4();
  if (!v22)
  {
    goto LABEL_21;
  }

LABEL_7:
  v41[0] = MEMORY[0x277D84F90];
  result = sub_24B007848(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v36[0] = a6;
    v24 = v41[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v22; ++i)
      {
        MEMORY[0x24C23C450](i, a1);
        sub_24B2D14A4();
        v41[0] = v24;
        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_24B007848(v26 > 1, v27 + 1, 1);
          v24 = v41[0];
        }

        *(v24 + 16) = v27 + 1;
        (*(v9 + 32))(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v14, v8);
      }
    }

    else
    {
      v28 = 32;
      do
      {
        v29 = *(a1 + v28);
        sub_24B2D14A4();
        v41[0] = v24;
        v31 = *(v24 + 16);
        v30 = *(v24 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_24B007848(v30 > 1, v31 + 1, 1);
          v24 = v41[0];
        }

        *(v24 + 16) = v31 + 1;
        (*(v9 + 32))(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v31, v11, v8);
        v28 += 8;
        --v22;
      }

      while (v22);
    }

    a6 = v36[0];
    v32 = v37;
    if (v38)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t FindMyMessagesDetailsView.init(people:from:customName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *, uint64_t)@<X4>, void *a6@<X8>)
{
  v39 = a3;
  v38 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  MEMORY[0x28223BE20](v10 - 8);
  v40 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_24B2D15F4();
  v46 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v47 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EFC7728 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v17 = sub_24B2D3184();
    __swift_project_value_buffer(v17, qword_27EFCF548);
    v18 = sub_24B2D3164();
    v19 = sub_24B2D5934();
    v20 = os_log_type_enabled(v18, v19);
    v45 = a1;
    v42 = a5;
    v43 = a6;
    v41 = a4;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2DDB20, v48);
      _os_log_impl(&dword_24AFD2000, v18, v19, "FindMyMessagesDetailsView: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v23 = v22;
      a1 = v45;
      MEMORY[0x24C23D530](v23, -1, -1);
      MEMORY[0x24C23D530](v21, -1, -1);
    }

    a4 = *(a1 + 16);
    if (!a4)
    {
      break;
    }

    v24 = 0;
    a6 = (a1 + 32);
    v25 = (v46 + 48);
    v26 = (v46 + 32);
    v27 = MEMORY[0x277D84F90];
    v44 = (a1 + 32);
    while (v24 < *(a1 + 16))
    {

      sub_24B2D1584();
      if ((*v25)(v14, 1, v15) == 1)
      {
        sub_24AFF8258(v14, &qword_27EFCF4F8);
      }

      else
      {
        a5 = *v26;
        (*v26)(v47, v14, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_24B006880(0, *(v27 + 2) + 1, 1, v27);
        }

        v29 = *(v27 + 2);
        v28 = *(v27 + 3);
        if (v29 >= v28 >> 1)
        {
          v27 = sub_24B006880(v28 > 1, v29 + 1, 1, v27);
        }

        *(v27 + 2) = v29 + 1;
        a5(&v27[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v29], v47, v15);
        a6 = v44;
        a1 = v45;
      }

      if (a4 == ++v24)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v27 = MEMORY[0x277D84F90];
LABEL_16:

  if (v39)
  {
    v30 = v40;
    sub_24B2D16E4();
    v31 = 0;
    v33 = v41;
    v32 = v42;
  }

  else
  {
    v31 = 1;
    v33 = v41;
    v32 = v42;
    v30 = v40;
  }

  v34 = sub_24B2D1704();
  (*(*(v34 - 8) + 56))(v30, v31, 1, v34);
  sub_24B2BF820(v48);
  result = sub_24B279C0C(v27, v30, v33, v32, v48, v49);
  v36 = v49[1];
  v37 = v43;
  *v43 = v49[0];
  v37[1] = v36;
  return result;
}

uint64_t sub_24B27AD50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B27ADBC()
{
  v0 = sub_24B2D2204();
  __swift_allocate_value_buffer(v0, qword_27EFE4628);
  v1 = __swift_project_value_buffer(v0, qword_27EFE4628);
  *v1 = type metadata accessor for EmbeddedPeopleModule();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

void sub_24B27AEA0()
{
  sub_24B28120C(319, &qword_27EFCF580, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24B27AF80(void (*a1)(uint64_t))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_24B27B030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v79 = type metadata accessor for EmbeddedPeopleSummaryMapView(0);
  v83 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v84 = v3;
  v85 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF568);
  v82 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v81 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0);
  MEMORY[0x28223BE20](v6);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF588);
  MEMORY[0x28223BE20](v76);
  v13 = (&v74 - v12);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF590);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = &v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF598);
  v86 = *(v15 - 8);
  v87 = v15;
  MEMORY[0x28223BE20](v15);
  v90 = &v74 - v16;
  v17 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D4F44();
  sub_24B2985DC(v19);

  sub_24B2D4F44();
  v20 = sub_24B29ABE0();

  v88 = v4;
  sub_24B2D4F44();
  v21 = sub_24B29AE28();

  *v13 = v20;
  v13[1] = v21;
  type metadata accessor for NonInteractiveMapView();
  v22 = sub_24B2D1974();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  sub_24B008890(v11, v8, &qword_27EFCD8B0);
  sub_24B2D4CC4();
  sub_24AFF8258(v11, &qword_27EFCD8B0);
  v23 = sub_24B2D5064();
  v25 = v24;
  v26 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF5A0) + 36);
  sub_24B27BBEC(v26);
  v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF5A8) + 36));
  *v27 = v23;
  v27[1] = v25;
  v28 = sub_24B2D3DF4();
  v29 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF5B0) + 36);
  v30 = v2;
  v31 = v2;
  v32 = v19;
  sub_24B27C0C0(v31, v19, v29);
  v33 = sub_24B2D3424();
  LOBYTE(v26) = MEMORY[0x24C23AB40]((2 * v33));
  v34 = sub_24B2D3814();
  v35 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF5B8) + 36);
  *v35 = v34;
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  *(v35 + 17) = v26;
  *(v35 + 24) = v28;
  v36 = sub_24B2D3DF4();
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = v76;
  v38 = v13 + *(v76 + 36);
  v77 = v32;
  sub_24B27C408(v32, v38);
  sub_24B2D5054();
  sub_24B2D3494();

  v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF5C0) + 36));
  v40 = v102;
  *v39 = v101;
  v39[1] = v40;
  v39[2] = v103;
  v41 = sub_24B2D3424();
  v42 = MEMORY[0x24C23AB40]((2 * v41));
  v43 = sub_24B2D3814();
  v44 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF5C8) + 36);
  *v44 = v43;
  *(v44 + 8) = 0;
  *(v44 + 16) = 0;
  *(v44 + 17) = v42;
  *(v44 + 24) = v36;
  v97 = 0x656E6961746E6F43;
  v98 = 0xE900000000000072;
  sub_24B2D5134();
  v45 = sub_24B280164();
  v46 = MEMORY[0x277D837D0];
  v47 = MEMORY[0x277D837E0];
  v48 = v75;
  sub_24B2D4864();
  sub_24AFF8258(v13, &qword_27EFCF588);
  v49 = v88;
  v50 = v30;
  sub_24B2D4F44();
  v51 = v97;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_24B2803BC;
  *(v52 + 24) = v51;
  v97 = v37;
  v98 = v46;
  v99 = v45;
  v100 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v80;
  sub_24B2D4704();

  (*(v78 + 8))(v48, v54);
  v55 = v81;
  sub_24B2D4F54();
  swift_getKeyPath();
  sub_24B2D4F74();

  (*(v82 + 8))(v55, v49);
  v82 = v96;
  v91 = v94;
  v92 = v95;
  v93 = v96;
  v56 = v85;
  sub_24B28098C(v50, v85, type metadata accessor for EmbeddedPeopleSummaryMapView);
  v57 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v58 = swift_allocObject();
  sub_24B280924(v56, v58 + v57, type metadata accessor for EmbeddedPeopleSummaryMapView);
  v85 = type metadata accessor for EmbeddedPeopleInteractiveMapViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF608);
  v97 = v54;
  v98 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B280788(&qword_27EFCF4D0, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  v59 = type metadata accessor for EmbeddedPeopleInteractiveMapView(255);
  v60 = sub_24B2D40B4();
  v61 = sub_24B280788(&qword_27EFC9EE8, type metadata accessor for EmbeddedPeopleInteractiveMapView);
  v97 = v59;
  v98 = v60;
  v99 = v61;
  v100 = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  v62 = v89;
  v63 = v87;
  v64 = v90;
  sub_24B2D4944();

  (*(v86 + 8))(v64, v63);
  sub_24B2D4F44();
  v65 = v97;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_24B280440;
  *(v66 + 24) = v65;
  v67 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF610) + 36));
  *v67 = sub_24B26DE68;
  v67[1] = v66;
  v67[2] = 0;
  v67[3] = 0;
  sub_24B2D4F44();
  v68 = v97;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_24B280444;
  *(v69 + 24) = v68;
  v70 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF618) + 36));
  *v70 = 0;
  v70[1] = 0;
  v70[2] = sub_24B26DE68;
  v70[3] = v69;
  v71 = sub_24B2D3804();
  LOBYTE(v68) = sub_24B2D42F4();
  v72 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF620) + 36);
  *v72 = v71;
  *(v72 + 8) = v68;
  return sub_24B280448(v77, type metadata accessor for EmbeddedPeopleSummaryMapView.State);
}

uint64_t sub_24B27BBEC@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF7A8);
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = (v23 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF7B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5;
  v7 = type metadata accessor for PinCollection.Style(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF7B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v23 - v12;
  sub_24B2D5694();
  v23[1] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF568);
  sub_24B2D4F44();
  sub_24B29B070(v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24AFF8258(v6, &qword_27EFCF7B0);
    (*(v24 + 56))(v13, 1, 1, v25);
  }

  else
  {
    sub_24B280924(v6, v10, type metadata accessor for PinCollection.Style);
    v14 = sub_24B2D5064();
    v16 = v15;
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (qword_27EFC76F0 != -1)
    {
      swift_once();
    }

    v17 = qword_27EFCD2C0;
    v18 = type metadata accessor for PinCollection(0);
    sub_24B28098C(v10, v3 + *(v18 + 20), type metadata accessor for PinCollection.Style);

    *v3 = v17;
    v19 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF7C0) + 36));
    *v19 = v14;
    v19[1] = v16;
    sub_24B2D34C4();
    sub_24B2D34C4();
    sub_24B2D50E4();
    sub_24B2D50A4();

    sub_24B2D34D4();

    v20 = sub_24B2D34B4();

    v21 = v25;
    *(v3 + *(v25 + 36)) = v20;
    sub_24B0391CC(v3, v13, &qword_27EFCF7A8);
    (*(v24 + 56))(v13, 0, 1, v21);
    sub_24B280448(v10, type metadata accessor for PinCollection.Style);
  }

  sub_24B0391CC(v13, v26, &qword_27EFCF7B8);
}

uint64_t sub_24B27C0C0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6F8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF568);
  sub_24B2D4F44();
  v11 = v21;
  swift_getKeyPath();
  *&v21 = v11;
  sub_24B280788(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  if (*(v11 + 48) >= 2u)
  {

    goto LABEL_7;
  }

  v12 = *(v11 + 40);

  v13 = sub_24B128D40(0, v12);

  if (v13)
  {
LABEL_7:
    *v7 = sub_24B2D3DF4();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF700);
    sub_24B27CC34(v19, a1, &v7[*(v15 + 44)]);
    sub_24B2D5044();
    sub_24B2D3494();
    v16 = &v7[*(v4 + 36)];
    v17 = v22;
    *v16 = v21;
    *(v16 + 1) = v17;
    *(v16 + 2) = v23;
    sub_24B0391CC(v7, v10, &qword_27EFCF6F0);
    v14 = 0;
    goto LABEL_8;
  }

  v14 = 1;
LABEL_8:
  (*(v5 + 56))(v10, v14, 1, v4);
  sub_24B0391CC(v10, v20, &qword_27EFCF6F8);
}

uint64_t sub_24B27C408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF628);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF630);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF638);
  MEMORY[0x28223BE20](v37);
  v38 = &v35 - v15;
  *v10 = sub_24B2D3E04();
  *(v10 + 1) = 0x4008000000000000;
  v10[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF640);
  sub_24B27EC04(a1, v2, &v10[*(v16 + 44)]);
  v17 = sub_24B2D42F4();
  v18 = &v10[*(v8 + 36)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = *MEMORY[0x277CDF998];
  v20 = sub_24B2D3764();
  (*(*(v20 - 8) + 104))(v7, v19, v20);
  sub_24B280788(&qword_27EFC8AE8, MEMORY[0x277CDFA28]);
  result = sub_24B2D52A4();
  if (result)
  {
    sub_24B2804A8();
    v36 = a2;
    v22 = v11;
    sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
    sub_24B2D4774();
    sub_24AFF8258(v7, &qword_27EFC8AD0);
    sub_24AFF8258(v10, &qword_27EFCF628);
    sub_24B2D5074();
    sub_24B2D3904();
    v23 = v38;
    (*(v12 + 32))(v38, v14, v22);
    v24 = (v23 + *(v37 + 36));
    v25 = v44;
    v24[4] = v43;
    v24[5] = v25;
    v24[6] = v45;
    v26 = v40;
    *v24 = v39;
    v24[1] = v26;
    v27 = v42;
    v24[2] = v41;
    v24[3] = v27;
    v28 = sub_24B2D5064();
    v30 = v29;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF660);
    v32 = v36;
    v33 = v36 + *(v31 + 36);
    sub_24B27FEB4(v33);
    v34 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF058) + 36));
    *v34 = v28;
    v34[1] = v30;
    return sub_24B0391CC(v23, v32, &qword_27EFCF638);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B27C86C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B280788(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__fullScreenInteractiveMap);
}

uint64_t sub_24B27C94C@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v1 = sub_24B2D40B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EmbeddedPeopleInteractiveMapView(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for EmbeddedPeopleInteractiveMapViewModel();
  sub_24B280788(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);

  sub_24B2D4F64();
  v8 = &v7[*(v5 + 20)];
  v12 = 1;
  sub_24B2D4CC4();
  v9 = v14;
  *v8 = v13;
  *(v8 + 1) = v9;
  v13 = 0x656E6961746E6F43;
  v14 = 0xE900000000000072;
  type metadata accessor for EmbeddedPeopleSummaryMapView(0);
  sub_24B2D5134();
  sub_24B2D3F14();
  sub_24B280788(&qword_27EFC9EE8, type metadata accessor for EmbeddedPeopleInteractiveMapView);
  sub_24B2D4834();
  (*(v2 + 8))(v4, v1);
  sub_24B280448(v7, type metadata accessor for EmbeddedPeopleInteractiveMapView);
}

uint64_t sub_24B27CC34@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v162 = a2;
  v169 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0);
  MEMORY[0x28223BE20](v4);
  v6 = &v128 - v5;
  v7 = type metadata accessor for EmbeddedPeopleSummaryMapView(0);
  v141 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v8;
  MEMORY[0x28223BE20](v10);
  v142 = &v128 - v11;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF708);
  MEMORY[0x28223BE20](v145);
  v164 = &v128 - v12;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF710);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = &v128 - v13;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF718);
  MEMORY[0x28223BE20](v144);
  v163 = &v128 - v14;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF720);
  MEMORY[0x28223BE20](v150);
  v152 = &v128 - v15;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF728);
  MEMORY[0x28223BE20](v151);
  v154 = &v128 - v16;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF730);
  MEMORY[0x28223BE20](v157);
  v156 = &v128 - v17;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF738);
  v155 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v153 = &v128 - v18;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF740);
  MEMORY[0x28223BE20](v159);
  v160 = &v128 - v19;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF748);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v133 = &v128 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF750);
  v167 = *(v21 - 8);
  v168 = v21;
  MEMORY[0x28223BE20](v21);
  v135 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v134 = &v128 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF758);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v128 - v26;
  Action = type metadata accessor for PersonLocateAction();
  v28 = *(Action - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](Action);
  v149 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v132 = &v128 - v31;
  MEMORY[0x28223BE20](v32);
  v143 = &v128 - v33;
  MEMORY[0x28223BE20](v34);
  v131 = &v128 - v35;
  MEMORY[0x28223BE20](v36);
  v140 = &v128 - v37;
  MEMORY[0x28223BE20](v38);
  v139 = &v128 - v39;
  MEMORY[0x28223BE20](v40);
  v138 = &v128 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v128 - v43;
  MEMORY[0x28223BE20](v45);
  v171 = &v128 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF760);
  MEMORY[0x28223BE20](v47 - 8);
  v166 = &v128 - v48;
  sub_24B2D5694();
  v165 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v49 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
  sub_24B008890(&v169[*(v49 + 36)], v27, &qword_27EFCF758);
  if ((*(v28 + 48))(v27, 1, Action) == 1)
  {
    sub_24AFF8258(v27, &qword_27EFCF758);
LABEL_7:
    v51 = 1;
    v52 = v168;
    v53 = v166;
LABEL_26:
    (*(v167 + 56))(v53, v51, 1, v52);
    sub_24B0391CC(v53, a3, &qword_27EFCF760);
  }

  v50 = v171;
  sub_24B280924(v27, v171, type metadata accessor for PersonLocateAction);
  if (PersonLocateAction.isHidden(visibleIfDisabled:)(MEMORY[0x277D84FA0]))
  {
    sub_24B280448(v50, type metadata accessor for PersonLocateAction);
    goto LABEL_7;
  }

  v169 = v6;
  v128 = v4;
  v129 = a3;
  v54 = sub_24B2D32E4();
  (*(*(v54 - 8) + 56))(v164, 1, 1, v54);
  v130 = v9;
  v55 = v142;
  sub_24B28098C(v162, v142, type metadata accessor for EmbeddedPeopleSummaryMapView);
  sub_24B28098C(v171, v44, type metadata accessor for PersonLocateAction);
  v56 = *(v141 + 80);
  v57 = (v56 + 16) & ~v56;
  v58 = *(v28 + 80);
  v59 = (v161 + v58 + v57) & ~v58;
  v60 = swift_allocObject();
  v61 = v60 + v57;
  v62 = v60;
  v141 = v60;
  sub_24B280924(v55, v61, type metadata accessor for EmbeddedPeopleSummaryMapView);
  sub_24B280924(v44, v62 + v59, type metadata accessor for PersonLocateAction);
  v63 = v138;
  sub_24B28098C(v171, v138, type metadata accessor for PersonLocateAction);
  v64 = v130;
  sub_24B28098C(v162, v130, type metadata accessor for EmbeddedPeopleSummaryMapView);
  v65 = (v58 + 16) & ~v58;
  v66 = swift_allocObject();
  sub_24B280924(v63, v66 + v65, type metadata accessor for PersonLocateAction);
  sub_24B280924(v64, v66 + ((v29 + v56 + v65) & ~v56), type metadata accessor for EmbeddedPeopleSummaryMapView);
  v67 = v145;
  v68 = v164;
  v69 = &v164[*(v145 + 48)];
  v172 = 0;
  sub_24B2D4CC4();
  v70 = *(&v173 + 1);
  *v69 = v173;
  *(v69 + 1) = v70;
  v71 = &v68[v67[13]];
  v172 = 0;
  sub_24B2D4CC4();
  v72 = *(&v173 + 1);
  *v71 = v173;
  *(v71 + 1) = v72;
  v73 = &v68[v67[9]];
  v74 = v141;
  *v73 = &unk_24B2F5138;
  *(v73 + 1) = v74;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_24B280B24;
  *(v75 + 24) = v66;
  v76 = &v68[v67[10]];
  *v76 = sub_24B280BF8;
  v76[1] = v75;
  v68[v67[11]] = 1;
  v77 = v139;
  sub_24B28098C(v171, v139, type metadata accessor for PersonLocateAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_24AFF8258(v77, &qword_27EFCB280);
  }

  LOWORD(v173) = EnumCaseMultiPayload == 1;
  sub_24B039184(&qword_27EFCF768, &qword_27EFCF708);
  sub_24B26CC44();
  v79 = v146;
  v80 = v164;
  sub_24B2D46D4();
  sub_24AFF8258(v80, &qword_27EFCF708);
  v81 = v163;
  v82 = (v163 + *(v144 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E10);
  sub_24B2D3954();
  *v82 = swift_getKeyPath();
  (*(v147 + 32))(v81, v79, v148);
  v83 = v171;
  v84 = v140;
  sub_24B28098C(v171, v140, type metadata accessor for PersonLocateAction);
  v85 = swift_getEnumCaseMultiPayload();
  v86 = v160;
  v87 = v159;
  v88 = v152;
  if (v85 == 1)
  {
    sub_24AFF8258(v84, &qword_27EFCB280);
    v89 = v83;
    v90 = v131;
    sub_24B28098C(v89, v131, type metadata accessor for PersonLocateAction);
    v91 = swift_getEnumCaseMultiPayload();
    v92 = v169;
    if (v91 == 1)
    {
      v93 = sub_24B2D4A84();
      sub_24AFF8258(v90, &qword_27EFCB280);
    }

    else
    {
      v93 = sub_24B2D4B54();
    }

    KeyPath = swift_getKeyPath();
    *&v173 = v93;

    v95 = sub_24B2D34A4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v95 = 0;
    v92 = v169;
  }

  v96 = v163;
  sub_24B008890(v163, v88, &qword_27EFCF718);

  v97 = (v88 + *(v150 + 36));
  *v97 = KeyPath;
  v97[1] = v95;
  sub_24AFF8258(v96, &qword_27EFCF718);
  v98 = v171;
  v99 = v143;
  sub_24B28098C(v171, v143, type metadata accessor for PersonLocateAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24AFF8258(v99, &qword_27EFCB280);
    v100 = 0;
    v101 = v154;
  }

  else
  {
    v102 = v132;
    sub_24B28098C(v98, v132, type metadata accessor for PersonLocateAction);
    v103 = swift_getEnumCaseMultiPayload();
    v101 = v154;
    if (v103 == 1)
    {
      v100 = sub_24B2D4A84();
      sub_24AFF8258(v102, &qword_27EFCB280);
    }

    else
    {
      v100 = sub_24B2D4B54();
    }
  }

  v104 = swift_getKeyPath();
  sub_24B0391CC(v88, v101, &qword_27EFCF720);
  v105 = (v101 + *(v151 + 36));
  *v105 = v104;
  v105[1] = v100;
  v106 = v149;
  sub_24B28098C(v98, v149, type metadata accessor for PersonLocateAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v107 = v106[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678) + 48)];
    sub_24AFF8258(v106, &qword_27EFCB280);
  }

  else
  {
    v107 = *v106;
  }

  v108 = swift_getKeyPath();
  v109 = swift_allocObject();
  *(v109 + 16) = v107;
  v110 = v101;
  v111 = v156;
  sub_24B0391CC(v110, v156, &qword_27EFCF728);
  v112 = (v111 + *(v157 + 36));
  *v112 = v108;
  v112[1] = sub_24B09A700;
  v112[2] = v109;
  sub_24B280C78();
  v113 = v153;
  sub_24B2D4884();
  sub_24AFF8258(v111, &qword_27EFCF730);
  LOBYTE(v108) = sub_24B2D42F4();
  (*(v155 + 32))(v86, v113, v158);
  v114 = v86 + *(v87 + 36);
  *v114 = v108;
  *(v114 + 8) = 0u;
  *(v114 + 24) = 0u;
  *(v114 + 40) = 1;
  v115 = *MEMORY[0x277CDF998];
  v116 = sub_24B2D3764();
  (*(*(v116 - 8) + 104))(v92, v115, v116);
  sub_24B280788(&qword_27EFC8AE8, MEMORY[0x277CDFA28]);
  result = sub_24B2D52A4();
  if (result)
  {
    sub_24B280FDC();
    sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
    v118 = v133;
    sub_24B2D4774();
    sub_24AFF8258(v92, &qword_27EFC8AD0);
    sub_24AFF8258(v86, &qword_27EFCF740);
    sub_24B2D5074();
    sub_24B2D3904();
    sub_24B280448(v171, type metadata accessor for PersonLocateAction);
    v119 = v135;
    (*(v136 + 32))(v135, v118, v137);
    v120 = v168;
    v121 = &v119[*(v168 + 36)];
    v122 = v178;
    *(v121 + 4) = v177;
    *(v121 + 5) = v122;
    *(v121 + 6) = v179;
    v123 = v174;
    *v121 = v173;
    *(v121 + 1) = v123;
    v124 = v176;
    *(v121 + 2) = v175;
    *(v121 + 3) = v124;
    v125 = v119;
    v126 = v134;
    sub_24B0391CC(v125, v134, &qword_27EFCF750);
    v127 = v126;
    v53 = v166;
    sub_24B0391CC(v127, v166, &qword_27EFCF750);
    v52 = v120;
    v51 = 0;
    a3 = v129;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_24B27E034(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_24B2D5694();
  v2[5] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_24B27E0CC, v4, v3);
}

uint64_t sub_24B27E0CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF568);
  sub_24B2D4F44();
  v0[8] = v0[2];
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_24B27E188;
  v2 = v0[4];

  return sub_24B29C7E4(v2);
}

uint64_t sub_24B27E188()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24B27E2CC, v3, v2);
}

uint64_t sub_24B27E2CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B27E32C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_24B2D3CD4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1F0);
  sub_24B27E4F8(a2 + *(v4 + 44));
  v5 = *(a1 + *(type metadata accessor for EmbeddedPeopleSummaryMapView(0) + 24));
  KeyPath = swift_getKeyPath();
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1F8) + 36));
  *v7 = KeyPath;
  v7[1] = v5;
  v8 = swift_getKeyPath();
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1E0) + 36);
  *v9 = v8;
  *(v9 + 8) = 1;
  *(v9 + 16) = 0;

  LOBYTE(v5) = sub_24B2D42F4();
  sub_24B2D32F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF798) + 36);
  *v18 = v5;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF7A0) + 36);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF208);
  sub_24B2D3994();
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24B2D3DC4();
  result = (*(*(v22 - 8) + 104))(v19, v21, v22);
  *(v19 + *(v20 + 36)) = 0;
  return result;
}

uint64_t sub_24B27E4F8@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = sub_24B2D2214();
  MEMORY[0x28223BE20](v1 - 8);
  v56 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24B2D3694();
  v55 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B2D3D64();
  MEMORY[0x28223BE20](v4 - 8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF210);
  MEMORY[0x28223BE20](v53);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF218);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_24B2D1BB4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF220);
  MEMORY[0x28223BE20](v16 - 8);
  v59 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  sub_24B2D5694();
  v58 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  PersonLocateAction.symbol.getter(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24AFF8258(v11, &qword_27EFC8A80);
    v21 = 1;
    v23 = v60;
    v22 = v61;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_24B2D3D54();
    v50 = v12;
    sub_24B2D3D44();
    sub_24B2D1AB4();
    sub_24B2D4BE4();
    sub_24B2D3D34();

    sub_24B2D3D44();
    sub_24B2D3D84();
    v47 = sub_24B2D45E4();
    v48 = v24;
    v26 = v25;
    v28 = v27;
    v29 = &v6[*(v53 + 36)];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC538);
    v49 = v15;
    v31 = v13;
    v32 = *(v30 + 28);
    sub_24B2D3E34();
    v33 = sub_24B2D3E54();
    (*(*(v33 - 8) + 56))(v29 + v32, 0, 1, v33);
    *v29 = swift_getKeyPath();
    *v6 = v47;
    *(v6 + 1) = v26;
    v6[16] = v28 & 1;
    *(v6 + 3) = v48;
    v34 = v54;
    sub_24B2D3674();
    sub_24B26CEC0();
    v35 = v52;
    sub_24B2D4714();
    (*(v55 + 8))(v34, v51);
    sub_24AFF8258(v6, &qword_27EFCF210);
    (*(v31 + 8))(v49, v50);
    v23 = v60;
    v22 = v61;
    (*(v60 + 32))(v20, v35, v61);
    v21 = 0;
  }

  (*(v23 + 56))(v20, v21, 1, v22);
  PersonLocateAction.compactLabel.getter(v56);
  v36 = sub_24B2D45F4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v59;
  sub_24B008890(v20, v59, &qword_27EFCF220);
  v44 = v57;
  sub_24B008890(v43, v57, &qword_27EFCF220);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF228) + 48);
  *v45 = v36;
  *(v45 + 8) = v38;
  v40 &= 1u;
  *(v45 + 16) = v40;
  *(v45 + 24) = v42;
  sub_24B083C44(v36, v38, v40);

  sub_24AFF8258(v20, &qword_27EFCF220);
  sub_24B083C34(v36, v38, v40);

  sub_24AFF8258(v43, &qword_27EFCF220);
}

uint64_t sub_24B27EC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v57 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF668);
  MEMORY[0x28223BE20](v51);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v8 = sub_24B2D2214();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  sub_24B2D5694();
  v52 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
  v18 = v57;
  v19 = Text(separating:_:)(v57, &v57[*(v17 + 28)]);
  v60 = v20;
  v61 = v19;
  v58 = v22;
  v59 = v21;
  v23 = v62 + *(type metadata accessor for EmbeddedPeopleSummaryMapView(0) + 24);
  v62 = *(v23 + 8);
  KeyPath = swift_getKeyPath();
  v55 = swift_getKeyPath();
  LOBYTE(v74[0]) = 0;
  sub_24B008890(v18 + *(v17 + 20), v16, &qword_27EFCB270);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {

    v54 = 0;
    v50 = 0;
    v49 = 0uLL;
  }

  else
  {
    (*(v9 + 32))(v13, v16, v8);
    (*(v9 + 16))(v54, v13, v8);

    v54 = sub_24B2D45F4();
    *(&v49 + 1) = v25;
    v50 = v24;
    v27 = v26;
    (*(v9 + 8))(v13, v8);
    *&v49 = v27 & 1;
  }

  v28 = *(v23 + 16);
  v48 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v47 = v29;
  v76 = 0;

  *v7 = sub_24B2D3CD4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF670);
  sub_24B27F1CC(v57, &v7[*(v30 + 44)]);
  v31 = swift_getKeyPath();
  v32 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF678) + 36)];
  *v32 = v31;
  v32[1] = v28;
  v46 = v28;

  *&v7[*(v51 + 36)] = sub_24B2D3FD4();
  v33 = v53;
  sub_24B008890(v7, v53, &qword_27EFCF668);
  *&v63 = v61;
  *(&v63 + 1) = v60;
  *&v64 = v59;
  *(&v64 + 1) = v58;
  *&v65 = KeyPath;
  *(&v65 + 1) = v62;
  v34 = v54;
  *&v66 = v55;
  *(&v66 + 1) = 1;
  v67 = 0;
  *(a3 + 64) = 0;
  v35 = v66;
  *(a3 + 32) = v65;
  *(a3 + 48) = v35;
  v36 = v64;
  *a3 = v63;
  *(a3 + 16) = v36;
  v38 = *(&v49 + 1);
  v37 = v50;
  *&v68[0] = v34;
  *(&v68[0] + 1) = v50;
  v39 = v49;
  v68[1] = v49;
  v57 = v7;
  v40 = v48;
  *&v69 = v48;
  *(&v69 + 1) = v28;
  *&v70 = v29;
  *(&v70 + 1) = 2;
  v71 = 0;
  v41 = v49;
  *(a3 + 72) = v68[0];
  v42 = v69;
  v43 = v70;
  *(a3 + 136) = 0;
  *(a3 + 120) = v43;
  *(a3 + 104) = v42;
  *(a3 + 88) = v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF680);
  sub_24B008890(v33, a3 + *(v44 + 64), &qword_27EFCF668);
  sub_24B008890(&v63, v74, &qword_27EFCF688);
  sub_24B008890(v68, v74, &qword_27EFCF688);
  sub_24AFF8258(v57, &qword_27EFCF668);
  sub_24AFF8258(v33, &qword_27EFCF668);
  v72[0] = v54;
  v72[1] = v37;
  v72[2] = v39;
  v72[3] = v38;
  v72[4] = v40;
  v72[5] = v46;
  v72[6] = v47;
  v72[7] = 2;
  v73 = 0;
  sub_24AFF8258(v72, &qword_27EFCF688);
  v74[0] = v61;
  v74[1] = v60;
  v74[2] = v59;
  v74[3] = v58;
  v74[4] = KeyPath;
  v74[5] = v62;
  v74[6] = v55;
  v74[7] = 1;
  v75 = 0;
  sub_24AFF8258(v74, &qword_27EFCF688);
}

uint64_t sub_24B27F1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a1;
  v95 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF690);
  v93 = *(v2 - 8);
  v94 = v2;
  MEMORY[0x28223BE20](v2);
  v86 = &v71 - v3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF698);
  MEMORY[0x28223BE20](v83);
  v85 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6A0);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v91 = &v71 - v10;
  v75 = sub_24B2D24A4();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3E0);
  MEMORY[0x28223BE20](v82);
  v13 = &v71 - v12;
  v77 = sub_24B2D13C4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v80 = &v71 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6A8);
  MEMORY[0x28223BE20](v88);
  v19 = &v71 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6B0);
  MEMORY[0x28223BE20](v79);
  v21 = &v71 - v20;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6B8);
  MEMORY[0x28223BE20](v87);
  v81 = &v71 - v22;
  v78 = sub_24B2D2214();
  v23 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v71 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB298);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v71 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6C0);
  MEMORY[0x28223BE20](v32 - 8);
  v90 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v96 = &v71 - v35;
  sub_24B2D5694();
  v89 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
  sub_24B008890(v97 + *(v36 + 24), v31, &qword_27EFCB298);
  v37 = sub_24B2D1954();
  if ((*(*(v37 - 8) + 48))(v31, 1, v37) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24B280614();
    sub_24B2D3ED4();
  }

  else
  {
    v72 = v36;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v78;
      (*(v23 + 32))(v28, v31, v78);
      (*(v23 + 16))(v25, v28, v38);
      v39 = sub_24B2D45F4();
      v41 = v40;
      *v21 = v39;
      *(v21 + 1) = v40;
      v43 = v42 & 1;
      v21[16] = v42 & 1;
      *(v21 + 3) = v44;
      swift_storeEnumTagMultiPayload();
      sub_24B083C44(v39, v41, v43);
      sub_24B2806A0();

      v45 = v81;
      sub_24B2D3ED4();
      sub_24B008890(v45, v19, &qword_27EFCF6B8);
      swift_storeEnumTagMultiPayload();
      sub_24B280614();
      sub_24B2D3ED4();
      sub_24B083C34(v39, v41, v43);

      sub_24AFF8258(v45, &qword_27EFCF6B8);
      (*(v23 + 8))(v28, v78);
    }

    else
    {
      v46 = v76;
      v47 = v80;
      v48 = v77;
      (*(v76 + 32))(v80, v31, v77);
      (*(v46 + 16))(v15, v47, v48);
      v49 = type metadata accessor for RelativeDateText();
      sub_24B2D2254();
      v50 = v73;
      sub_24B2D2494();
      sub_24B2D1364();
      (*(v74 + 8))(v50, v75);
      v51 = *(v46 + 8);
      v51(v15, v48);
      v13[v49[5]] = 1;
      v13[v49[7]] = 0;
      v52 = &v13[v49[8]];
      *v52 = 0;
      *(v52 + 1) = 0;
      v53 = &v13[*(v82 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3E8);
      sub_24B2D39A4();
      *v53 = swift_getKeyPath();
      sub_24B008890(v13, v21, &qword_27EFCF3E0);
      swift_storeEnumTagMultiPayload();
      sub_24B2806A0();
      v54 = v81;
      sub_24B2D3ED4();
      sub_24B008890(v54, v19, &qword_27EFCF6B8);
      swift_storeEnumTagMultiPayload();
      sub_24B280614();
      sub_24B2D3ED4();
      sub_24AFF8258(v54, &qword_27EFCF6B8);
      sub_24AFF8258(v13, &qword_27EFCF3E0);
      v51(v80, v48);
    }

    v36 = v72;
  }

  v55 = v91;
  if (*(v97 + *(v36 + 32)) == 1)
  {
    v56 = v84;
    sub_24B2D33E4();
    v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3C8) + 36));
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E20) + 28);
    v59 = *MEMORY[0x277CDF438];
    v60 = sub_24B2D3364();
    (*(*(v60 - 8) + 104))(v57 + v58, v59, v60);
    *v57 = swift_getKeyPath();
    *(v56 + *(v83 + 36)) = 257;
    v61 = v85;
    sub_24B008890(v56, v85, &qword_27EFCF698);
    v62 = v86;
    sub_24B008890(v61, v86, &qword_27EFCF698);
    v63 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6E8) + 48);
    *v63 = xmmword_24B2F4D70;
    *(v63 + 16) = 0;
    *(v63 + 24) = MEMORY[0x277D84F90];
    sub_24B083C44(32, 0xE100000000000000, 0);

    sub_24AFF8258(v56, &qword_27EFCF698);
    sub_24B083C34(32, 0xE100000000000000, 0);

    sub_24AFF8258(v61, &qword_27EFCF698);
    sub_24B0391CC(v62, v55, &qword_27EFCF690);
    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  (*(v93 + 56))(v55, v64, 1, v94);
  v65 = v96;
  v66 = v90;
  sub_24B008890(v96, v90, &qword_27EFCF6C0);
  v67 = v92;
  sub_24B008890(v55, v92, &qword_27EFCF6A0);
  v68 = v95;
  sub_24B008890(v66, v95, &qword_27EFCF6C0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6E0);
  sub_24B008890(v67, v68 + *(v69 + 48), &qword_27EFCF6A0);
  sub_24AFF8258(v55, &qword_27EFCF6A0);
  sub_24AFF8258(v65, &qword_27EFCF6C0);
  sub_24AFF8258(v67, &qword_27EFCF6A0);
  sub_24AFF8258(v66, &qword_27EFCF6C0);
}

uint64_t sub_24B27FEB4@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D4FF4();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9F08) + 56)) = 256;
  v2 = sub_24B2D5064();
  v4 = v3;
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8CE8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24B2DEAD0;
  sub_24B2D4AE4();
  *(v5 + 32) = sub_24B2D4F94();
  *(v5 + 40) = v6;
  sub_24B2D4B04();
  *(v5 + 48) = sub_24B2D4F94();
  *(v5 + 56) = v7;
  sub_24B2D5164();
  sub_24B2D5174();
  sub_24B2D4FA4();
  sub_24B2D3634();

  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF068) + 36);
  *v8 = v2;
  *(v8 + 8) = v4;
  *(v8 + 16) = v23;
  *(v8 + 40) = v25;
  *(v8 + 24) = v24;
  v9 = sub_24B2D4304();
  sub_24B2D32F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF070) + 36);
  *v18 = v9;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  v19 = sub_24B2D3804();
  v20 = sub_24B2D42F4();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF078);
  v22 = a1 + *(result + 36);
  *v22 = v19;
  *(v22 + 8) = v20;
  return result;
}

unint64_t sub_24B280164()
{
  result = qword_27EFCF5D0;
  if (!qword_27EFCF5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF588);
    sub_24B28021C();
    sub_24B039184(&qword_27EFCF600, &qword_27EFCF5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF5D0);
  }

  return result;
}

unint64_t sub_24B28021C()
{
  result = qword_27EFCF5D8;
  if (!qword_27EFCF5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF5B0);
    sub_24B2802D4();
    sub_24B039184(&qword_27EFCF5F8, &qword_27EFCF5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF5D8);
  }

  return result;
}

unint64_t sub_24B2802D4()
{
  result = qword_27EFCF5E0;
  if (!qword_27EFCF5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF5A0);
    sub_24B280788(&qword_27EFCF5E8, type metadata accessor for NonInteractiveMapView);
    sub_24B039184(&qword_27EFCF5F0, &qword_27EFCF5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF5E0);
  }

  return result;
}

uint64_t sub_24B2803C0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for EmbeddedPeopleSummaryMapView(0);

  return sub_24B27C94C(a1);
}

uint64_t sub_24B280448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B2804A8()
{
  result = qword_27EFCF648;
  if (!qword_27EFCF648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF628);
    sub_24B039184(&qword_27EFCF650, &qword_27EFCF658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF648);
  }

  return result;
}

uint64_t sub_24B2805B0@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B2D3C14();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_24B280614()
{
  result = qword_27EFCF6C8;
  if (!qword_27EFCF6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF6B8);
    sub_24B2806A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF6C8);
  }

  return result;
}

unint64_t sub_24B2806A0()
{
  result = qword_27EFCF6D0;
  if (!qword_27EFCF6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF3E0);
    sub_24B280788(&qword_27EFC9AD0, type metadata accessor for RelativeDateText);
    sub_24B039184(&qword_27EFCF6D8, &qword_27EFCF3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF6D0);
  }

  return result;
}

uint64_t sub_24B280788(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B2807D0@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x24C23A3A0]();
  *a1 = result;
  return result;
}

uint64_t sub_24B280854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_24B280924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B28098C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B2809F4()
{
  v2 = *(type metadata accessor for EmbeddedPeopleSummaryMapView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for PersonLocateAction() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFD370;

  return sub_24B27E034(v0 + v3, v0 + v6);
}

uint64_t sub_24B280B24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonLocateAction() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for EmbeddedPeopleSummaryMapView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_24B27E32C(v7, a1);
}

uint64_t sub_24B280C20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B2D3A84();
  *a1 = result;
  return result;
}

unint64_t sub_24B280C78()
{
  result = qword_27EFCF770;
  if (!qword_27EFCF770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF730);
    sub_24B280D30();
    sub_24B039184(&qword_27EFC9A78, &qword_27EFC9A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF770);
  }

  return result;
}

unint64_t sub_24B280D30()
{
  result = qword_27EFCF778;
  if (!qword_27EFCF778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF728);
    sub_24B280DE8();
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF778);
  }

  return result;
}

unint64_t sub_24B280DE8()
{
  result = qword_27EFCF780;
  if (!qword_27EFCF780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF720);
    sub_24B280EA0();
    sub_24B039184(&qword_27EFC8DE0, &qword_27EFC8DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF780);
  }

  return result;
}

unint64_t sub_24B280EA0()
{
  result = qword_27EFCF788;
  if (!qword_27EFCF788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF708);
    sub_24B039184(&qword_27EFCF768, &qword_27EFCF708);
    sub_24B26CC44();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8F00, &qword_27EFC8E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF788);
  }

  return result;
}

unint64_t sub_24B280FDC()
{
  result = qword_27EFCF790;
  if (!qword_27EFCF790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF730);
    sub_24B280C78();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF790);
  }

  return result;
}

void sub_24B2810CC()
{
  sub_24B28120C(319, &qword_27EFCF098, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24B28120C(319, &qword_27EFCF0A0, MEMORY[0x277D08CE8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24B28120C(319, &qword_27EFCF7D8, type metadata accessor for PersonLocateAction, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B28120C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24B281290()
{
  result = qword_27EFCF7E0;
  if (!qword_27EFCF7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF620);
    sub_24B28131C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF7E0);
  }

  return result;
}

unint64_t sub_24B28131C()
{
  result = qword_27EFCF7E8;
  if (!qword_27EFCF7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF618);
    sub_24B2813A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF7E8);
  }

  return result;
}

unint64_t sub_24B2813A8()
{
  result = qword_27EFCF7F0;
  if (!qword_27EFCF7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF598);
    type metadata accessor for EmbeddedPeopleInteractiveMapViewModel();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF588);
    sub_24B280164();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B280788(&qword_27EFCF4D0, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
    type metadata accessor for EmbeddedPeopleInteractiveMapView(255);
    sub_24B2D40B4();
    sub_24B280788(&qword_27EFC9EE8, type metadata accessor for EmbeddedPeopleInteractiveMapView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF7F0);
  }

  return result;
}

void sub_24B2815FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v40 = a1;
  v41 = a2;
  v8 = sub_24B2D1654();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_24B2D3164();
  v12 = sub_24B2D5934();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v43 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_24AFF321C(0xD000000000000015, 0x800000024B2DDC80, &v43);
    _os_log_impl(&dword_24AFD2000, v11, v12, "EmbeddedPeopleSummaryMapViewModel: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C23D530](v14, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);
  }

  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel___observationRegistrar;
  v43 = v5;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  if (*(v5 + 48))
  {
    swift_getKeyPath();
    v43 = v5;
    sub_24B2D2584();

    v39 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController;
    v16 = a3;
    v37 = a3;
    v17 = *(v5 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController);

    v18 = sub_24B29F5A4(v16, v10);
    v36 = a4;
    MEMORY[0x28223BE20](v18);
    *(&v35 - 2) = &_s25OrganizedListExtraStorageVN_0;
    v35 = v10;
    v19 = sub_24B2A0804();
    v38 = v15;
    v20 = v19;
    *(&v35 - 1) = v19;
    swift_getKeyPath();
    v43 = v17;
    sub_24B039184(&qword_27EFCF850, &qword_27EFCF858);
    sub_24B2D2584();

    v43 = v17;
    MEMORY[0x28223BE20](v21);
    *(&v35 - 2) = &_s25OrganizedListExtraStorageVN_0;
    *(&v35 - 1) = v20;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860);
    sub_24B2D19B4();
    v22 = swift_endAccess();
    v43 = v17;
    MEMORY[0x28223BE20](v22);
    *(&v35 - 2) = &_s25OrganizedListExtraStorageVN_0;
    *(&v35 - 1) = v20;
    swift_getKeyPath();
    sub_24B2D2594();

    v43 = v40;
    v44 = v41;
    v45 = v37;
    v46 = v36;
    v47 = 0;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v35 - 2) = v5;
    *(&v35 - 1) = &v43;
    v42 = v5;
    sub_24B2D2574();

    swift_getKeyPath();
    v42 = v5;
    sub_24B2D2584();

    sub_24B28AD30();
  }

  else
  {

    v24 = sub_24B2D3164();
    v25 = sub_24B2D5914();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_24AFF321C(0xD000000000000015, 0x800000024B2DDC80, &v42);
      *(v26 + 12) = 2080;
      swift_getKeyPath();
      v43 = v5;
      sub_24B2D2584();

      v28 = *(v5 + 24);
      v29 = *(v5 + 32);
      v30 = *(v5 + 40);
      v31 = *(v5 + 48);
      v43 = *(v5 + 16);
      v44 = v28;
      v45 = v29;
      v46 = v30;
      v47 = v31;
      sub_24B2A0910(v43, v28, v29, v30, v31);
      v32 = sub_24B2D53C4();
      v34 = sub_24AFF321C(v32, v33, &v42);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_24AFD2000, v24, v25, "EmbeddedPeopleSummaryMapViewModel: %s Already Running - %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v27, -1, -1);
      MEMORY[0x24C23D530](v26, -1, -1);
    }
  }
}

void sub_24B281C68()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x29286573756170, 0xE700000000000000, v17);
    _os_log_impl(&dword_24AFD2000, v2, v3, "EmbeddedPeopleSummaryMapViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  swift_getKeyPath();
  v17[0] = v1;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  sub_24B28B410();

  swift_getKeyPath();
  v17[0] = v1;
  sub_24B2D2584();

  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController))
  {

    PersonDetailsController.onDisappear()();
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v17[0] = v1;
  sub_24B2D2574();

  swift_getKeyPath();
  v17[0] = v1;
  sub_24B2D2584();

  if (!*(v1 + 48))
  {
    v12 = *(v1 + 32);
    v13 = *(v1 + 40);
    v14 = *(v1 + 24);
    v17[0] = *(v1 + 16);
    v17[1] = v14;
    v17[2] = v12;
    v17[3] = v13;
    v18 = 1;
    v15 = swift_getKeyPath();
    v16[0] = v16;
    MEMORY[0x28223BE20](v15);
    v16[1] = v1;

    sub_24B2D2574();

    return;
  }

  if (*(v1 + 48) == 1)
  {
    v7 = sub_24B2D3164();
    v8 = sub_24B2D5934();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_24AFF321C(0x29286573756170, 0xE700000000000000, v17);
      v11 = "EmbeddedPeopleSummaryMapViewModel: %s - Already Paused";
LABEL_12:
      _os_log_impl(&dword_24AFD2000, v7, v8, v11, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C23D530](v10, -1, -1);
      MEMORY[0x24C23D530](v9, -1, -1);
    }
  }

  else
  {
    v7 = sub_24B2D3164();
    v8 = sub_24B2D5934();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_24AFF321C(0x29286573756170, 0xE700000000000000, v17);
      v11 = "EmbeddedPeopleSummaryMapViewModel: %s - Trying to paused but it's not running";
      goto LABEL_12;
    }
  }
}

void sub_24B282140()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x2928656D75736572, 0xE800000000000000, &v15);
    _os_log_impl(&dword_24AFD2000, v2, v3, "EmbeddedPeopleSummaryMapViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  swift_getKeyPath();
  v15 = v1;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      v7 = *(v1 + 32);
      v6 = *(v1 + 40);
      v8 = *(v1 + 16);
      v9 = *(v1 + 24);

      sub_24B2815FC(v8, v9, v7, v6);

      return;
    }

    v10 = sub_24B2D3164();
    v11 = sub_24B2D5934();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_24AFF321C(0x2928656D75736572, 0xE800000000000000, &v15);
      v14 = "EmbeddedPeopleSummaryMapViewModel: %s Trying to resume but it's not running";
      goto LABEL_10;
    }
  }

  else
  {
    v10 = sub_24B2D3164();
    v11 = sub_24B2D5934();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_24AFF321C(0x2928656D75736572, 0xE800000000000000, &v15);
      v14 = "EmbeddedPeopleSummaryMapViewModel: %s Trying to resume but it's not paused";
LABEL_10:
      _os_log_impl(&dword_24AFD2000, v10, v11, v14, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C23D530](v13, -1, -1);
      MEMORY[0x24C23D530](v12, -1, -1);
    }
  }
}

uint64_t sub_24B282460()
{
  v1 = v0;
  v2 = sub_24B2D1654();
  MEMORY[0x28223BE20](v2 - 8);
  v17[1] = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5934();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v19[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24AFF321C(0x2928706F7473, 0xE600000000000000, v19);
    _os_log_impl(&dword_24AFD2000, v4, v5, "EmbeddedPeopleSummaryMapViewModel: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  swift_getKeyPath();
  *&v19[0] = v1;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  v8 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController;

  sub_24B28B410();

  swift_getKeyPath();
  *&v19[0] = v1;
  sub_24B2D2584();

  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController))
  {

    PersonDetailsController.onDisappear()();
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v17[-2] = v1;
  v17[-1] = 0;
  *&v19[0] = v1;
  sub_24B2D2574();

  memset(v19, 0, sizeof(v19));
  v20 = 2;
  v10 = swift_getKeyPath();
  MEMORY[0x28223BE20](v10);
  v17[-2] = v1;
  v17[-1] = v19;
  v18 = v1;
  sub_24B2D2574();

  swift_getKeyPath();
  v18 = v1;
  sub_24B2D2584();

  v11 = *(v1 + v8);

  v12 = sub_24B2D1644();
  MEMORY[0x28223BE20](v12);
  v17[-2] = &_s25OrganizedListExtraStorageVN_0;
  v13 = sub_24B2A0804();
  v17[-1] = v13;
  swift_getKeyPath();
  v18 = v11;
  sub_24B039184(&qword_27EFCF850, &qword_27EFCF858);
  sub_24B2D2584();

  v18 = v11;
  MEMORY[0x28223BE20](v14);
  v17[-2] = &_s25OrganizedListExtraStorageVN_0;
  v17[-1] = v13;
  swift_getKeyPath();
  sub_24B2D25A4();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860);
  sub_24B2D19B4();
  v15 = swift_endAccess();
  v18 = v11;
  MEMORY[0x28223BE20](v15);
  v17[-2] = &_s25OrganizedListExtraStorageVN_0;
  v17[-1] = v13;
  swift_getKeyPath();
  sub_24B2D2594();
}

uint64_t sub_24B2829B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCC940);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  sub_24B283570();
  v8 = qword_27EFCCE58;
  v9 = type metadata accessor for DataControllerSessionMetrics();
  v10 = v9[6];
  v11 = sub_24B2D24A4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v7[v10], &v1[v8], v11);
  sub_24B2D2494();
  v13 = *(v12 + 56);
  v13(&v7[v9[8]], 1, 1, v11);
  v13(&v7[v9[10]], 1, 1, v11);
  v13(&v7[v9[12]], 1, 1, v11);
  sub_24B2D24F4();
  v14 = &v7[v9[5]];
  *v14 = 0xD000000000000014;
  *(v14 + 1) = 0x800000024B2DDCA0;
  v7[v9[9]] = 2;
  v15 = &v7[v9[11]];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v7[v9[13]];
  *v16 = 0;
  v16[8] = 1;
  (*(*(v9 - 1) + 56))(v7, 0, 1, v9);
  v17 = *(*v1 + 160);
  swift_beginAccess();
  sub_24B068E10(v7, &v1[v17], qword_27EFCC940);
  v18 = swift_endAccess();
  v19 = *v1;
  v20 = *(*v1 + 144);
  if (*&v1[v20])
  {

    sub_24B2D5764();

    v19 = *v1;
  }

  v1[*(v19 + 136)] = 1;
  MEMORY[0x28223BE20](v18);
  *(&v35 - 2) = &_s25OrganizedListExtraStorageVN_0;
  v21 = sub_24B2A0804();
  *(&v35 - 1) = v21;
  swift_getKeyPath();
  v36 = v1;
  sub_24B039184(&qword_27EFCF850, &qword_27EFCF858);
  sub_24B2D2584();

  v36 = v1;
  MEMORY[0x28223BE20](v22);
  *(&v35 - 2) = &_s25OrganizedListExtraStorageVN_0;
  *(&v35 - 1) = v21;
  swift_getKeyPath();
  sub_24B2D25A4();

  v23 = &v1[*(*v1 + 128)];
  swift_beginAccess();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500);
  v25 = *(v24 + 36);
  if (v23[v25] == 3)
  {
    v23[v25] = 4;
  }

  v35 = v1;
  MEMORY[0x28223BE20](v24);
  *(&v35 - 2) = &_s25OrganizedListExtraStorageVN_0;
  *(&v35 - 1) = v21;
  swift_getKeyPath();
  sub_24B2D2594();

  v26 = sub_24B2D56D4();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = *(v1 + 4);
  v29 = *(v1 + 5);
  v30 = *(v1 + 6);
  v31 = *(v1 + 7);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v28;
  v32[5] = v29;
  v32[6] = v27;
  v32[7] = v30;
  v32[8] = v31;

  v33 = sub_24AFFBE08(0, 0, v4, &unk_24B2F5628, v32);
  sub_24AFF8258(v4, &qword_27EFC8580);
  *&v1[v20] = v33;
}

uint64_t sub_24B282F94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCC940);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  sub_24B283570();
  v8 = qword_27EFCCE58;
  v9 = type metadata accessor for DataControllerSessionMetrics();
  v10 = v9[6];
  v11 = sub_24B2D24A4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v7[v10], &v1[v8], v11);
  sub_24B2D2494();
  v13 = *(v12 + 56);
  v13(&v7[v9[8]], 1, 1, v11);
  v13(&v7[v9[10]], 1, 1, v11);
  v13(&v7[v9[12]], 1, 1, v11);
  sub_24B2D24F4();
  v14 = &v7[v9[5]];
  *v14 = 0xD000000000000014;
  *(v14 + 1) = 0x800000024B2DDCA0;
  v7[v9[9]] = 2;
  v15 = &v7[v9[11]];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v7[v9[13]];
  *v16 = 0;
  v16[8] = 1;
  (*(*(v9 - 1) + 56))(v7, 0, 1, v9);
  v17 = *(*v1 + 160);
  swift_beginAccess();
  sub_24B068E10(v7, &v1[v17], qword_27EFCC940);
  v18 = swift_endAccess();
  v19 = *v1;
  v20 = *(*v1 + 144);
  if (*&v1[v20])
  {

    sub_24B2D5764();

    v19 = *v1;
  }

  v1[*(v19 + 136)] = 1;
  MEMORY[0x28223BE20](v18);
  *(&v35 - 2) = &_s25OrganizedListExtraStorageVN;
  v21 = sub_24B276AB0();
  *(&v35 - 1) = v21;
  swift_getKeyPath();
  v36 = v1;
  sub_24B039184(&qword_27EFCF508, &qword_27EFCF4F0);
  sub_24B2D2584();

  v36 = v1;
  MEMORY[0x28223BE20](v22);
  *(&v35 - 2) = &_s25OrganizedListExtraStorageVN;
  *(&v35 - 1) = v21;
  swift_getKeyPath();
  sub_24B2D25A4();

  v23 = &v1[*(*v1 + 128)];
  swift_beginAccess();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8);
  v25 = *(v24 + 36);
  if (v23[v25] == 3)
  {
    v23[v25] = 4;
  }

  v35 = v1;
  MEMORY[0x28223BE20](v24);
  *(&v35 - 2) = &_s25OrganizedListExtraStorageVN;
  *(&v35 - 1) = v21;
  swift_getKeyPath();
  sub_24B2D2594();

  v26 = sub_24B2D56D4();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = *(v1 + 4);
  v29 = *(v1 + 5);
  v30 = *(v1 + 6);
  v31 = *(v1 + 7);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v28;
  v32[5] = v29;
  v32[6] = v27;
  v32[7] = v30;
  v32[8] = v31;

  v33 = sub_24AFFBE08(0, 0, v4, &unk_24B2F5938, v32);
  sub_24AFF8258(v4, &qword_27EFC8580);
  *&v1[v20] = v33;
}

uint64_t sub_24B283570()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v38 = &v35 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCC940);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = type metadata accessor for DataControllerSessionMetrics();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*v0 + 160);
  swift_beginAccess();
  v39 = v19;
  sub_24B008890(v0 + v19, v14, qword_27EFCC940);
  v40 = v16;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_24AFF8258(v14, qword_27EFCC940);
  }

  v36 = v4;
  v37 = v12;
  sub_24B2BF380(v14, v18, type metadata accessor for DataControllerSessionMetrics);
  v21 = *(v15 + 32);
  sub_24B008890(&v18[v21], v8, &qword_27EFC8450);
  v22 = sub_24B2D24A4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v8, 1, v22);
  sub_24AFF8258(v8, &qword_27EFC8450);
  if (v25 != 1)
  {
    return sub_24B2BF3E8(v18, type metadata accessor for DataControllerSessionMetrics);
  }

  v35 = v21;
  v26 = &v18[v21];
  v27 = v38;
  sub_24B008890(v26, v38, &qword_27EFC8450);
  v28 = v24(v27, 1, v22);
  sub_24AFF8258(v27, &qword_27EFC8450);
  if (v28 == 1)
  {
    v29 = v36;
    sub_24B2D2494();
    (*(v23 + 56))(v29, 0, 1, v22);
    sub_24B068E10(v29, &v18[v35], &qword_27EFC8450);
  }

  v30 = v0[8];
  v41[3] = v15;
  v41[4] = &off_285E510D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
  sub_24B2BF490(v18, boxed_opaque_existential_0, type metadata accessor for DataControllerSessionMetrics);
  v32 = v0;
  v30(v41);
  sub_24B2BF3E8(v18, type metadata accessor for DataControllerSessionMetrics);
  __swift_destroy_boxed_opaque_existential_0(v41);
  v33 = v37;
  (*(v40 + 56))(v37, 1, 1, v15);
  v34 = v39;
  swift_beginAccess();
  sub_24B068E10(v33, v32 + v34, qword_27EFCC940);
  return swift_endAccess();
}

uint64_t sub_24B283A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[48] = a7;
  v8[49] = a8;
  v8[46] = a5;
  v8[47] = a6;
  v8[45] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880);
  v8[50] = swift_task_alloc();
  v10 = sub_24B2D3184();
  v8[51] = v10;
  v8[52] = *(v10 - 8);
  v8[53] = swift_task_alloc();
  v8[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD60);
  v8[55] = swift_task_alloc();
  v8[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD68);
  v8[57] = swift_task_alloc();
  v8[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD70);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD78);
  v8[62] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A0);
  v8[63] = v11;
  v8[64] = *(v11 - 8);
  v8[65] = swift_task_alloc();
  v12 = sub_24B2D2504();
  v8[66] = v12;
  v8[67] = *(v12 - 8);
  v8[68] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A8);
  v8[69] = v13;
  v8[70] = *(v13 - 8);
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B283D68, a4, 0);
}

uint64_t sub_24B283D68()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  *(v0 + 600) = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  v4 = v1 + v3;
  swift_beginAccess();
  *(v0 + 281) = *(v4 + 16);

  return MEMORY[0x2822009F8](sub_24B283DFC, v2, 0);
}

uint64_t sub_24B283DFC()
{
  v1 = *(v0 + 368);
  v2 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  *(v0 + 608) = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  v3 = v1 + v2;
  swift_beginAccess();
  *(v0 + 282) = *(v3 + 16);

  return MEMORY[0x2822009F8](sub_24B283E90, 0, 0);
}

uint64_t sub_24B283E90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[77] = Strong;
  if (Strong)
  {
    sub_24B2D5694();
    v0[78] = sub_24B2D5684();
    v2 = sub_24B2D5604();
    v4 = v3;
    v5 = sub_24B283F68;
    v6 = v2;
    v7 = v4;
  }

  else
  {
    v6 = v0[45];
    v5 = sub_24B284070;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24B283F68()
{
  v1 = *(v0 + 616);

  v2 = v1 + *(*v1 + 160);
  swift_beginAccess();
  v3 = type metadata accessor for DataControllerSessionMetrics();
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = *(v3 + 36);
    if (*(v2 + v4) == 2)
    {
      *(v2 + v4) = *(v0 + 281) & *(v0 + 282) & 1;
    }
  }

  v5 = *(v0 + 360);

  return MEMORY[0x2822009F8](sub_24B284070, v5, 0);
}

uint64_t sub_24B284070()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);
  v6 = *(v0 + 360);
  v11 = *(v0 + 368);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  *(v0 + 284) = *MEMORY[0x277D85778];
  v8 = *(v5 + 104);
  *(v0 + 632) = v8;
  *(v0 + 640) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v4);
  sub_24B2D5744();

  v9 = *(v2 + 8);
  *(v0 + 648) = v9;
  *(v0 + 656) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);

  return MEMORY[0x2822009F8](sub_24B2841C0, v11, 0);
}

uint64_t sub_24B2841C0()
{
  v11 = *(v0 + 648);
  v1 = *(v0 + 632);
  v2 = *(v0 + 284);
  v3 = *(v0 + 544);
  v4 = *(v0 + 520);
  v5 = *(v0 + 504);
  v9 = *(v0 + 528);
  v10 = *(v0 + 384);
  v6 = *(v0 + 368);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v1(v4, v2, v5);
  sub_24B2D5744();

  v11(v3, v9);

  return MEMORY[0x2822009F8](sub_24B2842E8, v10, 0);
}

uint64_t sub_24B2842E8()
{
  v11 = *(v0 + 648);
  v1 = *(v0 + 632);
  v2 = *(v0 + 284);
  v3 = *(v0 + 544);
  v4 = *(v0 + 520);
  v5 = *(v0 + 504);
  v6 = *(v0 + 384);
  v9 = *(v0 + 528);
  v10 = *(v0 + 392);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v1(v4, v2, v5);
  sub_24B2D5744();

  v11(v3, v9);

  return MEMORY[0x2822009F8](sub_24B28440C, v10, 0);
}

uint64_t sub_24B28440C()
{
  v10 = *(v0 + 648);
  v1 = *(v0 + 632);
  v2 = *(v0 + 284);
  v3 = *(v0 + 544);
  v9 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 504);
  v6 = *(v0 + 392);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v1(v4, v2, v5);
  sub_24B2D5744();

  v10(v3, v9);

  return MEMORY[0x2822009F8](sub_24B284530, 0, 0);
}

uint64_t sub_24B284530()
{
  v2 = v0[59];
  v1 = v0[60];
  sub_24B039184(&qword_27EFCC8B0, &qword_27EFCC8A8);
  sub_24B2D3134();
  sub_24B2D3134();
  sub_24B039184(&qword_27EFCCD80, &qword_27EFCCD70);
  sub_24B2D3134();
  sub_24AFF8258(v2, &qword_27EFCCD70);
  sub_24AFF8258(v1, &qword_27EFCCD70);
  sub_24B039184(&qword_27EFCCD88, &qword_27EFCCD78);
  sub_24B2D57D4();
  v0[40] = &unk_285E48C90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8C0);
  sub_24B039184(&qword_27EFCC8C8, &qword_27EFCC8C0);
  sub_24B039184(&qword_27EFCCD90, &qword_27EFCCD68);
  sub_24B2D3134();
  v3 = sub_24B2D30C4();
  v0[83] = v3;
  v0[41] = v3;
  v0[84] = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[85] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98);
  *v4 = v0;
  v4[1] = sub_24B284890;

  return MEMORY[0x282141C10](v0 + 33, v5);
}

uint64_t sub_24B284890()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_24B284DD4;
  }

  else
  {
    v2 = sub_24B2849A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2849C0()
{
  v1 = *(v0 + 280);
  if (v1 == 255)
  {
    v11 = *(v0 + 592);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);
    v14 = *(v0 + 568);
    v15 = *(v0 + 560);
    v16 = *(v0 + 552);
    v17 = *(v0 + 496);
    v18 = *(v0 + 456);
    v19 = *(v0 + 440);

    sub_24AFF8258(v19, &qword_27EFCCD60);
    sub_24AFF8258(v18, &qword_27EFCCD68);
    sub_24AFF8258(v17, &qword_27EFCCD78);
    v20 = *(v15 + 8);
    v20(v14, v16);
    v20(v13, v16);
    v20(v12, v16);
    v20(v11, v16);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v3 = *(v0 + 264);
    v2 = *(v0 + 272);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*(v0 + 416) + 16))(*(v0 + 424), Strong + qword_27EFCCE60, *(v0 + 408));

      sub_24B138120();
      v5 = sub_24B2D3164();
      v6 = sub_24B2D5904();
      sub_24B138128(v3, v2, v1);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *(v0 + 352) = v8;
        *v7 = 136315138;
        if (v1)
        {
          v9 = (v0 + 288);
          v10 = (v0 + 296);
          *(v0 + 288) = 0x3A61746144;
        }

        else
        {
          v9 = (v0 + 304);
          v10 = (v0 + 312);
          *(v0 + 304) = 0x3A74696E49;
        }

        *v10 = 0xE500000000000000;
        MEMORY[0x24C23BC10](v3, v2);
        sub_24B138128(v3, v2, v1);
        v26 = *v9;
        v27 = *v10;
        v29 = *(v0 + 416);
        v28 = *(v0 + 424);
        v30 = *(v0 + 408);
        v31 = sub_24AFF321C(v26, v27, (v0 + 352));

        *(v7 + 4) = v31;
        _os_log_impl(&dword_24AFD2000, v5, v6, "PeopleListController: Stream Triggered - %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x24C23D530](v8, -1, -1);
        MEMORY[0x24C23D530](v7, -1, -1);

        (*(v29 + 8))(v28, v30);
      }

      else
      {
        v24 = *(v0 + 416);
        v23 = *(v0 + 424);
        v25 = *(v0 + 408);
        sub_24B138128(v3, v2, v1);

        (*(v24 + 8))(v23, v25);
      }
    }

    else
    {
      sub_24B138128(v3, v2, v1);
    }

    v32 = *(v0 + 360);

    return MEMORY[0x2822009F8](sub_24B284E60, v32, 0);
  }
}

uint64_t sub_24B284DD4()
{
  *(v0 + 336) = *(v0 + 688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_24B284E60()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 360) + *(v0 + 600);
  *(v0 + 283) = *(v2 + 16);
  *(v0 + 696) = *(v2 + 24);

  return MEMORY[0x2822009F8](sub_24B284EE4, v1, 0);
}

uint64_t sub_24B284EE4()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368) + *(v0 + 608);
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  sub_24B008890(v0 + 16, v0 + 56, &qword_27EFCCF18);

  return MEMORY[0x2822009F8](sub_24B284F80, v1, 0);
}

uint64_t sub_24B284F80()
{
  sub_24B008890(v0[49] + v0[84], v0[50], &qword_27EFCC880);

  return MEMORY[0x2822009F8](sub_24B285000, 0, 0);
}

uint64_t sub_24B285000()
{
  v1 = v0[50];
  v2 = v0[48];
  v0[43] = v0[87];
  v3 = swift_task_alloc();
  v0[88] = v3;
  v3[2] = v0 + 2;
  v3[3] = v2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[89] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCF20);
  v6 = type metadata accessor for ListPersonInfo();
  v7 = sub_24B039184(qword_27EFCCF28, &qword_27EFCCF20);
  *v4 = v0;
  v4[1] = sub_24B28514C;

  return MEMORY[0x28215ED58](&unk_24B2ED258, v3, v5, v6, v7);
}

void sub_24B28514C(uint64_t a1)
{
  *(*v2 + 720) = a1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24B285298, 0, 0);
  }
}

uint64_t sub_24B285298()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 728) = Strong;
  if (Strong)
  {
    *(v0 + 744) = *(v0 + 32);
    sub_24B2D5694();
    *(v0 + 736) = sub_24B2D5684();
    v3 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B28540C, v3, v2);
  }

  else
  {

    sub_24AFF8258(v0 + 16, &qword_27EFCCF18);
    sub_24AFF8258(*(v0 + 400), &qword_27EFCC880);
    v4 = swift_task_alloc();
    *(v0 + 680) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98);
    *v4 = v0;
    v4[1] = sub_24B284890;

    return MEMORY[0x282141C10](v0 + 264, v5);
  }
}

uint64_t sub_24B28540C()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 720);
  v3 = *(v0 + 283);

  sub_24B287084(v2, v3, v1);

  sub_24AFF8258(v0 + 16, &qword_27EFCCF18);

  return MEMORY[0x2822009F8](sub_24B2854C8, 0, 0);
}

uint64_t sub_24B2854C8()
{
  sub_24AFF8258(*(v0 + 400), &qword_27EFCC880);
  v1 = swift_task_alloc();
  *(v0 + 680) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98);
  *v1 = v0;
  v1[1] = sub_24B284890;

  return MEMORY[0x282141C10](v0 + 264, v2);
}

uint64_t sub_24B285594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[48] = a7;
  v8[49] = a8;
  v8[46] = a5;
  v8[47] = a6;
  v8[45] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880);
  v8[50] = swift_task_alloc();
  v10 = sub_24B2D3184();
  v8[51] = v10;
  v8[52] = *(v10 - 8);
  v8[53] = swift_task_alloc();
  v8[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD60);
  v8[55] = swift_task_alloc();
  v8[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD68);
  v8[57] = swift_task_alloc();
  v8[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD70);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD78);
  v8[62] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A0);
  v8[63] = v11;
  v8[64] = *(v11 - 8);
  v8[65] = swift_task_alloc();
  v12 = sub_24B2D2504();
  v8[66] = v12;
  v8[67] = *(v12 - 8);
  v8[68] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A8);
  v8[69] = v13;
  v8[70] = *(v13 - 8);
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2858E4, a4, 0);
}

uint64_t sub_24B2858E4()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  *(v0 + 600) = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  v4 = v1 + v3;
  swift_beginAccess();
  *(v0 + 281) = *(v4 + 16);

  return MEMORY[0x2822009F8](sub_24B285978, v2, 0);
}

uint64_t sub_24B285978()
{
  v1 = *(v0 + 368);
  v2 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  *(v0 + 608) = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  v3 = v1 + v2;
  swift_beginAccess();
  *(v0 + 282) = *(v3 + 16);

  return MEMORY[0x2822009F8](sub_24B285A0C, 0, 0);
}

uint64_t sub_24B285A0C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[77] = Strong;
  if (Strong)
  {
    sub_24B2D5694();
    v0[78] = sub_24B2D5684();
    v2 = sub_24B2D5604();
    v4 = v3;
    v5 = sub_24B285AE4;
    v6 = v2;
    v7 = v4;
  }

  else
  {
    v6 = v0[45];
    v5 = sub_24B285BEC;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24B285AE4()
{
  v1 = *(v0 + 616);

  v2 = v1 + *(*v1 + 160);
  swift_beginAccess();
  v3 = type metadata accessor for DataControllerSessionMetrics();
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = *(v3 + 36);
    if (*(v2 + v4) == 2)
    {
      *(v2 + v4) = *(v0 + 281) & *(v0 + 282) & 1;
    }
  }

  v5 = *(v0 + 360);

  return MEMORY[0x2822009F8](sub_24B285BEC, v5, 0);
}

uint64_t sub_24B285BEC()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);
  v6 = *(v0 + 360);
  v11 = *(v0 + 368);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  *(v0 + 284) = *MEMORY[0x277D85778];
  v8 = *(v5 + 104);
  *(v0 + 632) = v8;
  *(v0 + 640) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v4);
  sub_24B2D5744();

  v9 = *(v2 + 8);
  *(v0 + 648) = v9;
  *(v0 + 656) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);

  return MEMORY[0x2822009F8](sub_24B285D3C, v11, 0);
}

uint64_t sub_24B285D3C()
{
  v11 = *(v0 + 648);
  v1 = *(v0 + 632);
  v2 = *(v0 + 284);
  v3 = *(v0 + 544);
  v4 = *(v0 + 520);
  v5 = *(v0 + 504);
  v9 = *(v0 + 528);
  v10 = *(v0 + 384);
  v6 = *(v0 + 368);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v1(v4, v2, v5);
  sub_24B2D5744();

  v11(v3, v9);

  return MEMORY[0x2822009F8](sub_24B285E64, v10, 0);
}

uint64_t sub_24B285E64()
{
  v11 = *(v0 + 648);
  v1 = *(v0 + 632);
  v2 = *(v0 + 284);
  v3 = *(v0 + 544);
  v4 = *(v0 + 520);
  v5 = *(v0 + 504);
  v6 = *(v0 + 384);
  v9 = *(v0 + 528);
  v10 = *(v0 + 392);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v1(v4, v2, v5);
  sub_24B2D5744();

  v11(v3, v9);

  return MEMORY[0x2822009F8](sub_24B285F88, v10, 0);
}

uint64_t sub_24B285F88()
{
  v10 = *(v0 + 648);
  v1 = *(v0 + 632);
  v2 = *(v0 + 284);
  v3 = *(v0 + 544);
  v9 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 504);
  v6 = *(v0 + 392);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v1(v4, v2, v5);
  sub_24B2D5744();

  v10(v3, v9);

  return MEMORY[0x2822009F8](sub_24B2860AC, 0, 0);
}

uint64_t sub_24B2860AC()
{
  v2 = v0[59];
  v1 = v0[60];
  sub_24B039184(&qword_27EFCC8B0, &qword_27EFCC8A8);
  sub_24B2D3134();
  sub_24B2D3134();
  sub_24B039184(&qword_27EFCCD80, &qword_27EFCCD70);
  sub_24B2D3134();
  sub_24AFF8258(v2, &qword_27EFCCD70);
  sub_24AFF8258(v1, &qword_27EFCCD70);
  sub_24B039184(&qword_27EFCCD88, &qword_27EFCCD78);
  sub_24B2D57D4();
  v0[40] = &unk_285E48CC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8C0);
  sub_24B039184(&qword_27EFCC8C8, &qword_27EFCC8C0);
  sub_24B039184(&qword_27EFCCD90, &qword_27EFCCD68);
  sub_24B2D3134();
  v3 = sub_24B2D30C4();
  v0[83] = v3;
  v0[41] = v3;
  v0[84] = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[85] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98);
  *v4 = v0;
  v4[1] = sub_24B28640C;

  return MEMORY[0x282141C10](v0 + 33, v5);
}

uint64_t sub_24B28640C()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_24B2BF7CC;
  }

  else
  {
    v2 = sub_24B286520;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B28653C()
{
  v1 = *(v0 + 280);
  if (v1 == 255)
  {
    v11 = *(v0 + 592);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);
    v14 = *(v0 + 568);
    v15 = *(v0 + 560);
    v16 = *(v0 + 552);
    v17 = *(v0 + 496);
    v18 = *(v0 + 456);
    v19 = *(v0 + 440);

    sub_24AFF8258(v19, &qword_27EFCCD60);
    sub_24AFF8258(v18, &qword_27EFCCD68);
    sub_24AFF8258(v17, &qword_27EFCCD78);
    v20 = *(v15 + 8);
    v20(v14, v16);
    v20(v13, v16);
    v20(v12, v16);
    v20(v11, v16);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v3 = *(v0 + 264);
    v2 = *(v0 + 272);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*(v0 + 416) + 16))(*(v0 + 424), Strong + qword_27EFCCE60, *(v0 + 408));

      sub_24B138120();
      v5 = sub_24B2D3164();
      v6 = sub_24B2D5904();
      sub_24B138128(v3, v2, v1);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *(v0 + 352) = v8;
        *v7 = 136315138;
        if (v1)
        {
          v9 = (v0 + 288);
          v10 = (v0 + 296);
          *(v0 + 288) = 0x3A61746144;
        }

        else
        {
          v9 = (v0 + 304);
          v10 = (v0 + 312);
          *(v0 + 304) = 0x3A74696E49;
        }

        *v10 = 0xE500000000000000;
        MEMORY[0x24C23BC10](v3, v2);
        sub_24B138128(v3, v2, v1);
        v26 = *v9;
        v27 = *v10;
        v29 = *(v0 + 416);
        v28 = *(v0 + 424);
        v30 = *(v0 + 408);
        v31 = sub_24AFF321C(v26, v27, (v0 + 352));

        *(v7 + 4) = v31;
        _os_log_impl(&dword_24AFD2000, v5, v6, "PeopleListController: Stream Triggered - %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x24C23D530](v8, -1, -1);
        MEMORY[0x24C23D530](v7, -1, -1);

        (*(v29 + 8))(v28, v30);
      }

      else
      {
        v24 = *(v0 + 416);
        v23 = *(v0 + 424);
        v25 = *(v0 + 408);
        sub_24B138128(v3, v2, v1);

        (*(v24 + 8))(v23, v25);
      }
    }

    else
    {
      sub_24B138128(v3, v2, v1);
    }

    v32 = *(v0 + 360);

    return MEMORY[0x2822009F8](sub_24B286950, v32, 0);
  }
}

uint64_t sub_24B286950()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 360) + *(v0 + 600);
  *(v0 + 283) = *(v2 + 16);
  *(v0 + 696) = *(v2 + 24);

  return MEMORY[0x2822009F8](sub_24B2869D4, v1, 0);
}

uint64_t sub_24B2869D4()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368) + *(v0 + 608);
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  sub_24B008890(v0 + 16, v0 + 56, &qword_27EFCCF18);

  return MEMORY[0x2822009F8](sub_24B286A70, v1, 0);
}

uint64_t sub_24B286A70()
{
  sub_24B008890(v0[49] + v0[84], v0[50], &qword_27EFCC880);

  return MEMORY[0x2822009F8](sub_24B286AF0, 0, 0);
}

uint64_t sub_24B286AF0()
{
  v1 = v0[50];
  v2 = v0[48];
  v0[43] = v0[87];
  v3 = swift_task_alloc();
  v0[88] = v3;
  v3[2] = v0 + 2;
  v3[3] = v2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[89] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCF20);
  v6 = type metadata accessor for ListPersonInfo();
  v7 = sub_24B039184(qword_27EFCCF28, &qword_27EFCCF20);
  *v4 = v0;
  v4[1] = sub_24B286C3C;

  return MEMORY[0x28215ED58](&unk_24B2F5940, v3, v5, v6, v7);
}

void sub_24B286C3C(uint64_t a1)
{
  *(*v2 + 720) = a1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24B286D88, 0, 0);
  }
}

uint64_t sub_24B286D88()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 728) = Strong;
  if (Strong)
  {
    *(v0 + 744) = *(v0 + 32);
    sub_24B2D5694();
    *(v0 + 736) = sub_24B2D5684();
    v3 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B286EFC, v3, v2);
  }

  else
  {

    sub_24AFF8258(v0 + 16, &qword_27EFCCF18);
    sub_24AFF8258(*(v0 + 400), &qword_27EFCC880);
    v4 = swift_task_alloc();
    *(v0 + 680) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98);
    *v4 = v0;
    v4[1] = sub_24B28640C;

    return MEMORY[0x282141C10](v0 + 264, v5);
  }
}

uint64_t sub_24B286EFC()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 720);
  v3 = *(v0 + 283);

  sub_24B287BD8(v2, v3, v1);

  sub_24AFF8258(v0 + 16, &qword_27EFCCF18);

  return MEMORY[0x2822009F8](sub_24B286FB8, 0, 0);
}

uint64_t sub_24B286FB8()
{
  sub_24AFF8258(*(v0 + 400), &qword_27EFCC880);
  v1 = swift_task_alloc();
  *(v0 + 680) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98);
  *v1 = v0;
  v1[1] = sub_24B28640C;

  return MEMORY[0x282141C10](v0 + 264, v2);
}

uint64_t sub_24B287084(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  LODWORD(v82) = a3;
  v80 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v70 - v7;
  v9 = type metadata accessor for ListPersonInfo();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x28223BE20](v9);
  v83 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v70 - v16;
  MEMORY[0x28223BE20](v17);
  v75 = &v70 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500);
  MEMORY[0x28223BE20](v19 - 8);
  v77 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v76 = &v70 - v22;
  MEMORY[0x28223BE20](v23);
  v78 = &v70 - v24;
  v90 = &_s25OrganizedListExtraStorageVN_0;
  v25 = sub_24B2A0804();
  v91 = v25;
  swift_getKeyPath();
  v26 = *(*v3 + 168);
  v93 = v3;
  v27 = sub_24B039184(&qword_27EFCF850, &qword_27EFCF858);
  sub_24B2D2584();

  v93 = v3;
  v88 = &_s25OrganizedListExtraStorageVN_0;
  v89 = v25;
  swift_getKeyPath();
  sub_24B2D25A4();

  v28 = *(*v3 + 128);
  swift_beginAccess();
  v79 = v28;
  v29 = v82;
  sub_24B28A308(v80, a2, v82);
  swift_endAccess();
  v93 = v4;
  v86 = &_s25OrganizedListExtraStorageVN_0;
  v87 = v25;
  swift_getKeyPath();
  sub_24B2D2594();

  if ((a2 & 1) == 0)
  {
LABEL_4:
    if ((v29 & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  MEMORY[0x28223BE20](result);
  *(&v70 - 2) = &_s25OrganizedListExtraStorageVN_0;
  *(&v70 - 1) = v25;
  swift_getKeyPath();
  v93 = v4;
  sub_24B2D2584();

  v31 = v78;
  sub_24B008890(v4 + v79, v78, &qword_27EFCF500);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860);
  v33 = sub_24B2D19A4();
  (*(*(v32 - 8) + 8))(v31, v32);
  sub_24B28872C(v33);

  v34 = v4 + *(*v4 + 160);
  swift_beginAccess();
  v35 = type metadata accessor for DataControllerSessionMetrics();
  v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
  if (v36)
  {
    result = swift_endAccess();
    v29 = v82;
    goto LABEL_4;
  }

  MEMORY[0x28223BE20](v36);
  *(&v70 - 2) = &_s25OrganizedListExtraStorageVN_0;
  *(&v70 - 1) = v25;
  v78 = v25;
  swift_getKeyPath();
  v92 = v4;
  v80 = v26;
  v72 = v27;
  sub_24B2D2584();

  v52 = v76;
  sub_24B008890(v4 + v79, v76, &qword_27EFCF500);
  v71 = *(sub_24B2D19A4() + 16);

  v53 = *(v35 + 40);
  v54 = v75;
  sub_24B008890(v34 + v53, v75, &qword_27EFC8450);
  v55 = sub_24B2D24A4();
  v56 = *(v55 - 8);
  v57 = (*(v56 + 48))(v54, 1, v55);
  sub_24AFF8258(v54, &qword_27EFC8450);
  if (v57 == 1)
  {
    v58 = v74;
    sub_24B2D2494();
    (*(v56 + 56))(v58, 0, 1, v55);
    sub_24B068E10(v58, v34 + v53, &qword_27EFC8450);
    v59 = v34 + *(v35 + 44);
    *v59 = v71;
    *(v59 + 8) = 0;
  }

  swift_endAccess();
  result = sub_24AFF8258(v52, &qword_27EFCF500);
  v25 = v78;
  if ((v82 & 1) == 0)
  {
    return result;
  }

LABEL_5:
  v37 = v4 + *(*v4 + 160);
  swift_beginAccess();
  v38 = type metadata accessor for DataControllerSessionMetrics();
  v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
  if (v39)
  {
    return swift_endAccess();
  }

  v76 = v38;
  v78 = v37;
  MEMORY[0x28223BE20](v39);
  *(&v70 - 2) = &_s25OrganizedListExtraStorageVN_0;
  *(&v70 - 1) = v25;
  swift_getKeyPath();
  v92 = v4;
  sub_24B2D2584();

  v40 = v77;
  sub_24B008890(v4 + v79, v77, &qword_27EFCF500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860);
  v41 = sub_24B2D19A4();
  result = sub_24AFF8258(v40, &qword_27EFCF500);
  v82 = *(v41 + 16);
  if (!v82)
  {
    v43 = MEMORY[0x277D84F90];
LABEL_22:

    v60 = *(v43 + 16);

    v61 = v76;
    v62 = *(v76 + 48);
    v63 = v78;
    v64 = v73;
    sub_24B008890(v78 + v62, v73, &qword_27EFC8450);
    v65 = sub_24B2D24A4();
    v66 = *(v65 - 8);
    v67 = (*(v66 + 48))(v64, 1, v65);
    sub_24AFF8258(v64, &qword_27EFC8450);
    if (v67 == 1)
    {
      v68 = v74;
      sub_24B2D2494();
      (*(v66 + 56))(v68, 0, 1, v65);
      sub_24B068E10(v68, v63 + v62, &qword_27EFC8450);
      v69 = v63 + *(v61 + 52);
      *v69 = v60;
      *(v69 + 8) = 0;
    }

    return swift_endAccess();
  }

  v42 = 0;
  v43 = MEMORY[0x277D84F90];
  v80 = v8;
  v44 = v81;
  while (v42 < *(v41 + 16))
  {
    v45 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v46 = *(v84 + 72);
    sub_24B2BF490(v41 + v45 + v46 * v42, v44, type metadata accessor for ListPersonInfo);
    sub_24B008890(v44 + *(v85 + 28), v8, &qword_27EFCB288);
    v47 = sub_24B2D1944();
    v48 = (*(*(v47 - 8) + 48))(v8, 1, v47);
    sub_24AFF8258(v8, &qword_27EFCB288);
    if (v48 == 1)
    {
      result = sub_24B2BF3E8(v44, type metadata accessor for ListPersonInfo);
    }

    else
    {
      sub_24B2BF380(v44, v83, type metadata accessor for ListPersonInfo);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24B007738(0, *(v43 + 16) + 1, 1);
        v43 = v92;
      }

      v51 = *(v43 + 16);
      v50 = *(v43 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_24B007738(v50 > 1, v51 + 1, 1);
        v43 = v92;
      }

      *(v43 + 16) = v51 + 1;
      result = sub_24B2BF380(v83, v43 + v45 + v51 * v46, type metadata accessor for ListPersonInfo);
      v8 = v80;
      v44 = v81;
    }

    if (v82 == ++v42)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B287BD8(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  LODWORD(v82) = a3;
  v80 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v70 - v7;
  v9 = type metadata accessor for ListPersonInfo();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x28223BE20](v9);
  v83 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v70 - v16;
  MEMORY[0x28223BE20](v17);
  v75 = &v70 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8);
  MEMORY[0x28223BE20](v19 - 8);
  v77 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v76 = &v70 - v22;
  MEMORY[0x28223BE20](v23);
  v78 = &v70 - v24;
  v90 = &_s25OrganizedListExtraStorageVN;
  v25 = sub_24B276AB0();
  v91 = v25;
  swift_getKeyPath();
  v26 = *(*v3 + 168);
  v93 = v3;
  v27 = sub_24B039184(&qword_27EFCF508, &qword_27EFCF4F0);
  sub_24B2D2584();

  v93 = v3;
  v88 = &_s25OrganizedListExtraStorageVN;
  v89 = v25;
  swift_getKeyPath();
  sub_24B2D25A4();

  v28 = *(*v3 + 128);
  swift_beginAccess();
  v79 = v28;
  v29 = v82;
  sub_24B28A81C(v80, a2, v82);
  swift_endAccess();
  v93 = v4;
  v86 = &_s25OrganizedListExtraStorageVN;
  v87 = v25;
  swift_getKeyPath();
  sub_24B2D2594();

  if ((a2 & 1) == 0)
  {
LABEL_4:
    if ((v29 & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  MEMORY[0x28223BE20](result);
  *(&v70 - 2) = &_s25OrganizedListExtraStorageVN;
  *(&v70 - 1) = v25;
  swift_getKeyPath();
  v93 = v4;
  sub_24B2D2584();

  v31 = v78;
  sub_24B008890(v4 + v79, v78, &qword_27EFCF4D8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF510);
  v33 = sub_24B2D19A4();
  (*(*(v32 - 8) + 8))(v31, v32);
  sub_24B289524(v33);

  v34 = v4 + *(*v4 + 160);
  swift_beginAccess();
  v35 = type metadata accessor for DataControllerSessionMetrics();
  v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
  if (v36)
  {
    result = swift_endAccess();
    v29 = v82;
    goto LABEL_4;
  }

  MEMORY[0x28223BE20](v36);
  *(&v70 - 2) = &_s25OrganizedListExtraStorageVN;
  *(&v70 - 1) = v25;
  v78 = v25;
  swift_getKeyPath();
  v92 = v4;
  v80 = v26;
  v72 = v27;
  sub_24B2D2584();

  v52 = v76;
  sub_24B008890(v4 + v79, v76, &qword_27EFCF4D8);
  v71 = *(sub_24B2D19A4() + 16);

  v53 = *(v35 + 40);
  v54 = v75;
  sub_24B008890(v34 + v53, v75, &qword_27EFC8450);
  v55 = sub_24B2D24A4();
  v56 = *(v55 - 8);
  v57 = (*(v56 + 48))(v54, 1, v55);
  sub_24AFF8258(v54, &qword_27EFC8450);
  if (v57 == 1)
  {
    v58 = v74;
    sub_24B2D2494();
    (*(v56 + 56))(v58, 0, 1, v55);
    sub_24B068E10(v58, v34 + v53, &qword_27EFC8450);
    v59 = v34 + *(v35 + 44);
    *v59 = v71;
    *(v59 + 8) = 0;
  }

  swift_endAccess();
  result = sub_24AFF8258(v52, &qword_27EFCF4D8);
  v25 = v78;
  if ((v82 & 1) == 0)
  {
    return result;
  }

LABEL_5:
  v37 = v4 + *(*v4 + 160);
  swift_beginAccess();
  v38 = type metadata accessor for DataControllerSessionMetrics();
  v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
  if (v39)
  {
    return swift_endAccess();
  }

  v76 = v38;
  v78 = v37;
  MEMORY[0x28223BE20](v39);
  *(&v70 - 2) = &_s25OrganizedListExtraStorageVN;
  *(&v70 - 1) = v25;
  swift_getKeyPath();
  v92 = v4;
  sub_24B2D2584();

  v40 = v77;
  sub_24B008890(v4 + v79, v77, &qword_27EFCF4D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF510);
  v41 = sub_24B2D19A4();
  result = sub_24AFF8258(v40, &qword_27EFCF4D8);
  v82 = *(v41 + 16);
  if (!v82)
  {
    v43 = MEMORY[0x277D84F90];
LABEL_22:

    v60 = *(v43 + 16);

    v61 = v76;
    v62 = *(v76 + 48);
    v63 = v78;
    v64 = v73;
    sub_24B008890(v78 + v62, v73, &qword_27EFC8450);
    v65 = sub_24B2D24A4();
    v66 = *(v65 - 8);
    v67 = (*(v66 + 48))(v64, 1, v65);
    sub_24AFF8258(v64, &qword_27EFC8450);
    if (v67 == 1)
    {
      v68 = v74;
      sub_24B2D2494();
      (*(v66 + 56))(v68, 0, 1, v65);
      sub_24B068E10(v68, v63 + v62, &qword_27EFC8450);
      v69 = v63 + *(v61 + 52);
      *v69 = v60;
      *(v69 + 8) = 0;
    }

    return swift_endAccess();
  }

  v42 = 0;
  v43 = MEMORY[0x277D84F90];
  v80 = v8;
  v44 = v81;
  while (v42 < *(v41 + 16))
  {
    v45 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v46 = *(v84 + 72);
    sub_24B2BF490(v41 + v45 + v46 * v42, v44, type metadata accessor for ListPersonInfo);
    sub_24B008890(v44 + *(v85 + 28), v8, &qword_27EFCB288);
    v47 = sub_24B2D1944();
    v48 = (*(*(v47 - 8) + 48))(v8, 1, v47);
    sub_24AFF8258(v8, &qword_27EFCB288);
    if (v48 == 1)
    {
      result = sub_24B2BF3E8(v44, type metadata accessor for ListPersonInfo);
    }

    else
    {
      sub_24B2BF380(v44, v83, type metadata accessor for ListPersonInfo);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24B007738(0, *(v43 + 16) + 1, 1);
        v43 = v92;
      }

      v51 = *(v43 + 16);
      v50 = *(v43 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_24B007738(v50 > 1, v51 + 1, 1);
        v43 = v92;
      }

      *(v43 + 16) = v51 + 1;
      result = sub_24B2BF380(v83, v43 + v45 + v51 * v46, type metadata accessor for ListPersonInfo);
      v8 = v80;
      v44 = v81;
    }

    if (v82 == ++v42)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

char *sub_24B28872C(uint64_t a1)
{
  v2 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v115 = *(v2 - 8);
  v116 = v2;
  MEMORY[0x28223BE20](v2);
  v117 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_24B2D1524();
  v104 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_24B2D1544();
  v103 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContactsProvider.Subscription(0);
  v121 = *(v6 - 8);
  v122 = v6;
  MEMORY[0x28223BE20](v6);
  v120 = (&v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v108 = &v102 - v9;
  MEMORY[0x28223BE20](v10);
  v119 = (&v102 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v102 - v13;
  v15 = sub_24B2D1794();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v124 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v110 = &v102 - v19;
  MEMORY[0x28223BE20](v20);
  v107 = &v102 - v21;
  MEMORY[0x28223BE20](v22);
  v105 = &v102 - v23;
  MEMORY[0x28223BE20](v24);
  v125 = &v102 - v25;
  MEMORY[0x28223BE20](v26);
  v118 = &v102 - v27;
  v28 = type metadata accessor for ListPersonInfo() - 8;
  MEMORY[0x28223BE20](v28);
  v31 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + 16);
  v128 = v15;
  v126 = v16;
  if (v32)
  {
    v33 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v34 = *(v29 + 72);
    v123 = (v16 + 16);
    v35 = (v16 + 56);
    v36 = (v16 + 48);
    v37 = (v16 + 32);
    v127 = MEMORY[0x277D84F90];
    v109 = v34;
    do
    {
      sub_24B2BF490(v33, v31, type metadata accessor for ListPersonInfo);
      (*v123)(v14, v31, v15);
      (*v35)(v14, 0, 1, v15);
      sub_24B2BF3E8(v31, type metadata accessor for ListPersonInfo);
      if ((*v36)(v14, 1, v15) == 1)
      {
        sub_24AFF8258(v14, &qword_27EFCB018);
      }

      else
      {
        v38 = *v37;
        v39 = v118;
        (*v37)(v118, v14, v15);
        v38(v125, v39, v15);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = v127;
        }

        else
        {
          v40 = sub_24B006934(0, v127[2] + 1, 1, v127);
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = sub_24B006934(v41 > 1, v42 + 1, 1, v40);
        }

        v40[2] = v42 + 1;
        v16 = v126;
        v43 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v127 = v40;
        v44 = v40 + v43 + *(v126 + 72) * v42;
        v15 = v128;
        v38(v44, v125, v128);
        v34 = v109;
      }

      v33 += v34;
      --v32;
    }

    while (v32);
  }

  else
  {
    v127 = MEMORY[0x277D84F90];
  }

  v45 = v106;
  v46 = (v106 + *(*v106 + 152));
  swift_beginAccess();
  v47 = *v46;
  if (*v46)
  {

    v47(v127);
    sub_24AFD5890(v47);
  }

  if ((*(v45 + *(*v45 + 136)) & 1) == 0)
  {
  }

  v48 = v45[6];
  v49 = v127;
  v50 = v127[2];
  v51 = MEMORY[0x277D84F90];
  if (v50)
  {
    v109 = v45[6];
    v129 = MEMORY[0x277D84F90];
    sub_24B007804(0, v50, 0);
    v51 = v129;
    v53 = *(v16 + 16);
    v52 = (v16 + 16);
    v123 = v53;
    v54 = v49 + ((v52[64] + 32) & ~v52[64]);
    v118 = *(v52 + 7);
    v125 = v52;
    v55 = (v52 - 8);
    v56 = v108;
    v57 = v105;
    do
    {
      (v123)(v57, v54, v15);
      v58 = sub_24B2D1604();
      if (v59)
      {
        v60 = v120;
        *v120 = v58;
        *(v60 + 8) = v59;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820);
        v61 = v120;
        sub_24B2D14D4();
        v62 = sub_24B2D14C4();
        (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
        sub_24B2D1724();
        v60 = v61;
        v56 = v108;
      }

      swift_storeEnumTagMultiPayload();
      sub_24B2BF380(v60, v56, type metadata accessor for ContactsProvider.Subscription);
      v63 = v119;
      sub_24B2BF380(v56, v119, type metadata accessor for ContactsProvider.Subscription);
      (*v55)(v57, v15);
      v129 = v51;
      v65 = *(v51 + 16);
      v64 = *(v51 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_24B007804(v64 > 1, v65 + 1, 1);
        v57 = v105;
        v51 = v129;
      }

      *(v51 + 16) = v65 + 1;
      sub_24B2BF380(v63, v51 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v65, type metadata accessor for ContactsProvider.Subscription);
      v54 = &v118[v54];
      --v50;
      v15 = v128;
    }

    while (v50);
    v45 = v106;
    v16 = v126;
    v48 = v109;
  }

  v67 = sub_24B1D032C(v51);

  v69 = v45[2];
  v68 = v45[3];
  v70 = swift_allocObject();
  v70[2] = v48;
  v70[3] = v67;
  v70[4] = v69;
  v70[5] = v68;

  sub_24B2D12C4();

  result = v127;
  v71 = MEMORY[0x277D84F90];
  v125 = v127[2];
  if (v125)
  {
    v72 = 0;
    v123 = (v16 + 16);
    v122 = (v104 + 8);
    v119 = (v16 + 8);
    v120 = (v16 + 32);
    v121 = v103 + 8;
    v73 = v107;
    v74 = v111;
    while (v72 < *(result + 2))
    {
      v75 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v76 = *(v16 + 72);
      v77 = *(v16 + 16);
      v78 = v128;
      v77(v73, &result[v75 + v76 * v72], v128);
      sub_24B2D1554();
      v79 = v113;
      sub_24B2D1534();
      v80 = sub_24B2D1514();
      (*v122)(v79, v114);
      (*v121)(v74, v112);
      if (v80)
      {
        v81 = *v120;
        (*v120)(v110, v73, v78);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v129 = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24B0077C0(0, *(v71 + 16) + 1, 1);
          v73 = v107;
          v71 = v129;
        }

        v84 = *(v71 + 16);
        v83 = *(v71 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_24B0077C0(v83 > 1, v84 + 1, 1);
          v73 = v107;
          v71 = v129;
        }

        *(v71 + 16) = v84 + 1;
        v81((v71 + v75 + v84 * v76), v110, v128);
      }

      else
      {
        (*v119)(v73, v78);
      }

      ++v72;
      v16 = v126;
      result = v127;
      if (v125 == v72)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_37:

    v85 = *(v71 + 16);
    if (v85)
    {
      v129 = MEMORY[0x277D84F90];
      sub_24B00777C(0, v85, 0);
      sub_24B2D5694();
      v86 = *(v16 + 16);
      v126 = v16 + 16;
      v127 = v86;
      v88 = v128;
      v87 = v129;
      v89 = v71 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v125 = *(v16 + 72);
      v90 = (v16 + 8);
      do
      {
        (v127)(v124, v89, v88);
        sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v91 = v117;
        v92 = v124;
        _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
        v88 = v128;
        (*v90)(v92, v128);

        v93 = v91;
        v91[*(v116 + 20)] = 1;
        v129 = v87;
        v95 = *(v87 + 16);
        v94 = *(v87 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_24B00777C(v94 > 1, v95 + 1, 1);
          v93 = v117;
          v87 = v129;
        }

        *(v87 + 16) = v95 + 1;
        sub_24B2BF380(v93, v87 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v95, type metadata accessor for PeopleLocationsProvider.Subscription);
        v89 += v125;
        --v85;
      }

      while (v85);
    }

    else
    {

      v87 = MEMORY[0x277D84F90];
    }

    v96 = v106;
    v97 = v106[5];
    v98 = sub_24B1D04BC(v87);

    v100 = v96[2];
    v99 = v96[3];
    v101 = swift_allocObject();
    v101[2] = v97;
    v101[3] = v98;
    v101[4] = v100;
    v101[5] = v99;

    sub_24B2D12C4();
  }

  return result;
}

char *sub_24B289524(uint64_t a1)
{
  v2 = type metadata accessor for ContactsProvider.Subscription(0);
  v114 = *(v2 - 8);
  v115 = v2;
  MEMORY[0x28223BE20](v2);
  v113 = (&v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v112 = (&v95 - v5);
  MEMORY[0x28223BE20](v6);
  v111 = &v95 - v7;
  v8 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v108 = *(v8 - 8);
  v109 = v8;
  MEMORY[0x28223BE20](v8);
  v107 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_24B2D1524();
  v97 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_24B2D1544();
  v96 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v95 - v13;
  v15 = sub_24B2D1794();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v118 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v98 = &v95 - v19;
  MEMORY[0x28223BE20](v20);
  v102 = &v95 - v21;
  MEMORY[0x28223BE20](v22);
  v117 = &v95 - v23;
  MEMORY[0x28223BE20](v24);
  v100 = &v95 - v25;
  MEMORY[0x28223BE20](v26);
  v110 = &v95 - v27;
  v28 = type metadata accessor for ListPersonInfo() - 8;
  MEMORY[0x28223BE20](v28);
  v31 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + 16);
  v121 = v15;
  v119 = v16;
  if (v32)
  {
    v33 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v34 = *(v29 + 72);
    v116 = (v16 + 16);
    v35 = (v16 + 56);
    v36 = (v16 + 48);
    v37 = (v16 + 32);
    v120 = MEMORY[0x277D84F90];
    v101 = v34;
    do
    {
      sub_24B2BF490(v33, v31, type metadata accessor for ListPersonInfo);
      (*v116)(v14, v31, v15);
      (*v35)(v14, 0, 1, v15);
      sub_24B2BF3E8(v31, type metadata accessor for ListPersonInfo);
      if ((*v36)(v14, 1, v15) == 1)
      {
        sub_24AFF8258(v14, &qword_27EFCB018);
      }

      else
      {
        v38 = *v37;
        v39 = v110;
        (*v37)(v110, v14, v15);
        v38(v118, v39, v15);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = v120;
        }

        else
        {
          v40 = sub_24B006934(0, v120[2] + 1, 1, v120);
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = sub_24B006934(v41 > 1, v42 + 1, 1, v40);
        }

        v40[2] = v42 + 1;
        v43 = (*(v119 + 80) + 32) & ~*(v119 + 80);
        v120 = v40;
        v15 = v121;
        v38(v40 + v43 + *(v119 + 72) * v42, v118, v121);
        v34 = v101;
      }

      v33 += v34;
      --v32;
    }

    while (v32);
  }

  else
  {
    v120 = MEMORY[0x277D84F90];
  }

  v44 = v99;
  v45 = (v99 + *(*v99 + 152));
  swift_beginAccess();
  v46 = *v45;
  if (*v45)
  {

    v46(v120);
    sub_24AFD5890(v46);
  }

  if (*(v44 + *(*v44 + 136)) != 1)
  {
  }

  v47 = v44[6];
  v48 = v120;
  v49 = v120[2];
  v50 = MEMORY[0x277D84F90];
  if (v49)
  {
    v110 = v44[6];
    v122 = MEMORY[0x277D84F90];
    sub_24B007804(0, v49, 0);
    v50 = v122;
    v118 = *(v119 + 16);
    v51 = v48 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
    v116 = *(v119 + 72);
    v52 = (v119 + 8);
    v53 = v98;
    v54 = v111;
    do
    {
      (v118)(v53, v51, v121);
      v55 = sub_24B2D1604();
      if (v56)
      {
        v57 = v113;
        *v113 = v55;
        *(v57 + 8) = v56;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820);
        v57 = v113;
        sub_24B2D14D4();
        v58 = sub_24B2D14C4();
        (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
        sub_24B2D1724();
      }

      swift_storeEnumTagMultiPayload();
      v59 = v112;
      sub_24B2BF380(v57, v112, type metadata accessor for ContactsProvider.Subscription);
      sub_24B2BF380(v59, v54, type metadata accessor for ContactsProvider.Subscription);
      (*v52)(v53, v121);
      v122 = v50;
      v61 = *(v50 + 16);
      v60 = *(v50 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_24B007804(v60 > 1, v61 + 1, 1);
        v53 = v98;
        v50 = v122;
      }

      *(v50 + 16) = v61 + 1;
      sub_24B2BF380(v54, v50 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v61, type metadata accessor for ContactsProvider.Subscription);
      v51 = v116 + v51;
      --v49;
    }

    while (v49);
    v44 = v99;
    v15 = v121;
    v47 = v110;
  }

  v63 = sub_24B1D032C(v50);

  v65 = v44[2];
  v64 = v44[3];
  v66 = swift_allocObject();
  v66[2] = v47;
  v66[3] = v63;
  v66[4] = v65;
  v66[5] = v64;

  sub_24B2D12C4();

  result = v120;
  v67 = MEMORY[0x277D84F90];
  v118 = v120[2];
  if (v118)
  {
    v68 = 0;
    v116 = (v119 + 16);
    v115 = (v97 + 8);
    v112 = (v119 + 8);
    v113 = (v119 + 32);
    v114 = v96 + 8;
    v69 = v100;
    v70 = v103;
    while (v68 < *(result + 2))
    {
      v71 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      v72 = *(v119 + 72);
      (*(v119 + 16))(v69, &result[v71 + v72 * v68], v15);
      sub_24B2D1554();
      v73 = v105;
      sub_24B2D1534();
      v74 = sub_24B2D1514();
      (*v115)(v73, v106);
      (*v114)(v70, v104);
      if (v74)
      {
        v75 = *v113;
        (*v113)(v102, v69, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122 = v67;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24B0077C0(0, *(v67 + 16) + 1, 1);
          v69 = v100;
          v67 = v122;
        }

        v78 = *(v67 + 16);
        v77 = *(v67 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_24B0077C0(v77 > 1, v78 + 1, 1);
          v69 = v100;
          v67 = v122;
        }

        *(v67 + 16) = v78 + 1;
        v79 = v67 + v71 + v78 * v72;
        v15 = v121;
        v75(v79, v102, v121);
      }

      else
      {
        (*v112)(v69, v15);
      }

      ++v68;
      result = v120;
      if (v118 == v68)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_37:

    v80 = *(v67 + 16);
    if (v80)
    {
      v122 = MEMORY[0x277D84F90];
      sub_24B00777C(0, v80, 0);
      sub_24B2D5694();
      v81 = *(v119 + 16);
      v119 += 16;
      v120 = v81;
      v82 = v122;
      v83 = v67 + ((*(v119 + 64) + 32) & ~*(v119 + 64));
      v118 = *(v119 + 56);
      v84 = (v119 - 8);
      do
      {
        (v120)(v117, v83, v121);
        sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v85 = v107;
        v86 = v117;
        _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
        (*v84)(v86, v121);

        *(v85 + *(v109 + 20)) = 1;
        v122 = v82;
        v88 = *(v82 + 16);
        v87 = *(v82 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_24B00777C(v87 > 1, v88 + 1, 1);
          v82 = v122;
        }

        *(v82 + 16) = v88 + 1;
        sub_24B2BF380(v85, v82 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v88, type metadata accessor for PeopleLocationsProvider.Subscription);
        v83 += v118;
        --v80;
      }

      while (v80);
    }

    else
    {

      v82 = MEMORY[0x277D84F90];
    }

    v89 = v99;
    v90 = v99[5];
    v91 = sub_24B1D04BC(v82);

    v93 = v89[2];
    v92 = v89[3];
    v94 = swift_allocObject();
    v94[2] = v90;
    v94[3] = v91;
    v94[4] = v93;
    v94[5] = v92;

    sub_24B2D12C4();
  }

  return result;
}

uint64_t sub_24B28A308(uint64_t a1, int a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37[-v7];
  v49 = sub_24B2D1524();
  v9 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_24B2D1544();
  v43 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = type metadata accessor for ListPersonInfo();
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v37[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860);
  sub_24B2D1994();
  v19 = *(sub_24B2D19A4() + 16);

  if (v19)
  {
    v41 = a2;
    v39 = v18;
    v40 = v8;
    v38 = a3;
    v42 = v3;
    result = sub_24B2D19A4();
    v21 = result;
    v22 = 0;
    v46 = *(result + 16);
    v23 = (v9 + 8);
    v24 = (v43 + 8);
    do
    {
      if (v46 == v22)
      {

        if (v41)
        {
          v36 = 6;
        }

        else
        {
          v36 = 4;
        }

        goto LABEL_21;
      }

      if (v22 >= *(v21 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v25 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v26 = *(v47 + 72);
      sub_24B2BF490(v21 + v25 + v26 * v22++, v17, type metadata accessor for ListPersonInfo);
      sub_24B2D1554();
      sub_24B2D1534();
      v27 = sub_24B2D1514();
      (*v23)(v11, v49);
      (*v24)(v13, v48);
      result = sub_24B2BF3E8(v17, type metadata accessor for ListPersonInfo);
    }

    while ((v27 & 1) == 0);

    v28 = sub_24B2D19A4();
    result = v28 + v25;
    v29 = -*(v28 + 16);
    v30 = -1;
    v31 = v40;
    v32 = v44;
    while (v29 + v30 != -1)
    {
      if (++v30 >= *(v28 + 16))
      {
        goto LABEL_25;
      }

      v33 = result + v26;
      sub_24B2BF490(result, v32, type metadata accessor for ListPersonInfo);
      sub_24B008890(v32 + *(v45 + 28), v31, &qword_27EFCB288);
      v34 = sub_24B2D1944();
      v35 = (*(*(v34 - 8) + 48))(v31, 1, v34);
      sub_24AFF8258(v31, &qword_27EFCB288);
      sub_24B2BF3E8(v32, type metadata accessor for ListPersonInfo);
      result = v33;
      if (v35 != 1)
      {

        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500);
        v36 = 1;
        goto LABEL_22;
      }
    }

    if (v38)
    {
      v36 = 2;
    }

    else
    {
      v36 = 0;
    }

LABEL_21:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500);
LABEL_22:
    v3 = v42;
  }

  else
  {
    if (a2)
    {
      v36 = 5;
    }

    else
    {
      v36 = 4;
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500);
  }

  *(v3 + *(result + 36)) = v36;
  return result;
}

uint64_t sub_24B28A81C(uint64_t a1, int a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37[-v7];
  v49 = sub_24B2D1524();
  v9 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_24B2D1544();
  v43 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = type metadata accessor for ListPersonInfo();
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v37[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF510);
  sub_24B2D1994();
  v19 = *(sub_24B2D19A4() + 16);

  if (v19)
  {
    v41 = a2;
    v39 = v18;
    v40 = v8;
    v38 = a3;
    v42 = v3;
    result = sub_24B2D19A4();
    v21 = result;
    v22 = 0;
    v46 = *(result + 16);
    v23 = (v9 + 8);
    v24 = (v43 + 8);
    do
    {
      if (v46 == v22)
      {

        if (v41)
        {
          v36 = 6;
        }

        else
        {
          v36 = 4;
        }

        goto LABEL_21;
      }

      if (v22 >= *(v21 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v25 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v26 = *(v47 + 72);
      sub_24B2BF490(v21 + v25 + v26 * v22++, v17, type metadata accessor for ListPersonInfo);
      sub_24B2D1554();
      sub_24B2D1534();
      v27 = sub_24B2D1514();
      (*v23)(v11, v49);
      (*v24)(v13, v48);
      result = sub_24B2BF3E8(v17, type metadata accessor for ListPersonInfo);
    }

    while ((v27 & 1) == 0);

    v28 = sub_24B2D19A4();
    result = v28 + v25;
    v29 = -*(v28 + 16);
    v30 = -1;
    v31 = v40;
    v32 = v44;
    while (v29 + v30 != -1)
    {
      if (++v30 >= *(v28 + 16))
      {
        goto LABEL_25;
      }

      v33 = result + v26;
      sub_24B2BF490(result, v32, type metadata accessor for ListPersonInfo);
      sub_24B008890(v32 + *(v45 + 28), v31, &qword_27EFCB288);
      v34 = sub_24B2D1944();
      v35 = (*(*(v34 - 8) + 48))(v31, 1, v34);
      sub_24AFF8258(v31, &qword_27EFCB288);
      sub_24B2BF3E8(v32, type metadata accessor for ListPersonInfo);
      result = v33;
      if (v35 != 1)
      {

        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8);
        v36 = 1;
        goto LABEL_22;
      }
    }

    if (v38)
    {
      v36 = 2;
    }

    else
    {
      v36 = 0;
    }

LABEL_21:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8);
LABEL_22:
    v3 = v42;
  }

  else
  {
    if (a2)
    {
      v36 = 5;
    }

    else
    {
      v36 = 4;
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8);
  }

  *(v3 + *(result + 36)) = v36;
  return result;
}

uint64_t sub_24B28AD30()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_24AFF321C(0x7261657070416E6FLL, 0xEA00000000002928, &v25);
    _os_log_impl(&dword_24AFD2000, v6, v7, "PeopleListController: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  sub_24B2829B8();
  v10 = v1[4];
  v11 = sub_24B2D1574();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v13 = v1[2];
  v12 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80C8);
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24B2DE430;
  sub_24B2BF490(v5, v15 + v14, type metadata accessor for PeopleProvider.Subscription);
  v16 = sub_24B13405C(v15);
  swift_setDeallocating();
  sub_24B2BF3E8(v15 + v14, type metadata accessor for PeopleProvider.Subscription);
  swift_deallocClassInstance();
  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v13;
  v17[5] = v12;

  sub_24B2D12C4();

  sub_24B2BF3E8(v5, type metadata accessor for PeopleProvider.Subscription);
  v18 = v1[7];
  v20 = v1[2];
  v19 = v1[3];
  v21 = sub_24B134824(&unk_285E482D0);
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v21;
  v22[4] = v20;
  v22[5] = v19;

  sub_24B2D12C4();
}

uint64_t sub_24B28B0A0()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_24AFF321C(0x7261657070416E6FLL, 0xEA00000000002928, &v25);
    _os_log_impl(&dword_24AFD2000, v6, v7, "PeopleListController: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  sub_24B282F94();
  v10 = v1[4];
  v11 = sub_24B2D1574();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v13 = v1[2];
  v12 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80C8);
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24B2DE430;
  sub_24B2BF490(v5, v15 + v14, type metadata accessor for PeopleProvider.Subscription);
  v16 = sub_24B13405C(v15);
  swift_setDeallocating();
  sub_24B2BF3E8(v15 + v14, type metadata accessor for PeopleProvider.Subscription);
  swift_deallocClassInstance();
  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v13;
  v17[5] = v12;

  sub_24B2D12C4();

  sub_24B2BF3E8(v5, type metadata accessor for PeopleProvider.Subscription);
  v18 = v1[7];
  v20 = v1[2];
  v19 = v1[3];
  v21 = sub_24B134824(&unk_285E48D38);
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v21;
  v22[4] = v20;
  v22[5] = v19;

  sub_24B2D12C4();
}

uint64_t sub_24B28B410()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x7070617369446E6FLL, 0xED00002928726165, &v23);
    _os_log_impl(&dword_24AFD2000, v2, v3, "PeopleListController: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  *(v1 + *(*v1 + 136)) = 0;
  if (*(v1 + *(*v1 + 144)))
  {

    sub_24B2D5764();
  }

  sub_24B283570();
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[2];
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_24B2D12C4();

  v10 = v1[5];
  v12 = v1[2];
  v11 = v1[3];
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v12;
  v13[4] = v11;

  sub_24B2D12C4();

  v14 = v1[6];
  v16 = v1[2];
  v15 = v1[3];
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v15;

  sub_24B2D12C4();

  v18 = v1[7];
  v20 = v1[2];
  v19 = v1[3];
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  v21[4] = v19;

  sub_24B2D12C4();
}

uint64_t sub_24B28B758()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x7070617369446E6FLL, 0xED00002928726165, &v23);
    _os_log_impl(&dword_24AFD2000, v2, v3, "PeopleListController: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  *(v1 + *(*v1 + 136)) = 0;
  if (*(v1 + *(*v1 + 144)))
  {

    sub_24B2D5764();
  }

  sub_24B283570();
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[2];
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_24B2D12C4();

  v10 = v1[5];
  v12 = v1[2];
  v11 = v1[3];
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v12;
  v13[4] = v11;

  sub_24B2D12C4();

  v14 = v1[6];
  v16 = v1[2];
  v15 = v1[3];
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v15;

  sub_24B2D12C4();

  v18 = v1[7];
  v20 = v1[2];
  v19 = v1[3];
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  v21[4] = v19;

  sub_24B2D12C4();
}

uint64_t sub_24B28BAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCDD08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_24B2D2504();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(v8 + 16);
  v10(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v12 = *(v11 - 8);
  v19 = a3;
  v13 = v12;
  (*(v12 + 16))(v6, v20, v11);
  (*(v13 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880);
  sub_24B18C438(v6, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_endAccess();
  v14 = swift_allocObject();
  swift_weakInit();
  v10(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v7);
  v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v8 + 32))(v16 + v15, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  return sub_24B2D56E4();
}

uint64_t sub_24B28BE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a1;
  v25 = a7;
  v23[3] = a5;
  v23[4] = a6;
  v23[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCDD08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = sub_24B2D2504();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v23[2] = v13;
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *(v12 + 16);
  v15(v14, a3, v11);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v17 = *(v16 - 8);
  v23[0] = a3;
  v18 = v17;
  (*(v17 + 16))(v10, v24, v16);
  (*(v18 + 56))(v10, 0, 1, v16);
  swift_beginAccess();
  sub_24B18C438(v10, v14);
  swift_endAccess();
  v19 = swift_allocObject();
  swift_weakInit();
  v15(v14, v23[0], v11);
  v20 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v12 + 32))(v21 + v20, v14, v11);
  return sub_24B2D56E4();
}

uint64_t sub_24B28C130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_24B2D2504();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_24B2D56D4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v9 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v15;
  (*(v9 + 32))(&v17[v16], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_24AFFC0A8(0, 0, v13, a6, v17);

  return sub_24AFF8258(v13, &qword_27EFC8580);
}

uint64_t sub_24B28C36C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCDD08);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = v1 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  swift_beginAccess();
  v14 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880) + 52));
  if (*(v14 + 16) && (v15 = sub_24B181398(a1), (v16 & 1) != 0))
  {
    (*(v4 + 16))(v12, *(v14 + 56) + *(v4 + 72) * v15, v3);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v4 + 56))(v12, v17, 1, v3);
  if ((*(v4 + 48))(v12, 1, v3))
  {
    sub_24AFF8258(v12, qword_27EFCDD08);
  }

  else
  {
    (*(v4 + 16))(v6, v12, v3);
    sub_24AFF8258(v12, qword_27EFCDD08);
    sub_24B2D5714();
    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  sub_24B23C2E0(a1, v9);
  sub_24AFF8258(v9, qword_27EFCDD08);
  return swift_endAccess();
}

uint64_t sub_24B28C634(uint64_t a1, void *a2)
{
  v5 = sub_24B2D2504();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v30 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v26[0] = v26 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCDD08);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v26 - v14;
  v16 = v2 + *a2;
  swift_beginAccess();
  v17 = *(v16 + 8);
  v18 = *(v16 + 32);
  v19 = *(v18 + 16);
  v29 = a1;
  v26[1] = v17;
  if (v19)
  {

    v20 = sub_24B181398(a1);
    if (v21)
    {
      (*(v8 + 16))(v15, *(v18 + 56) + *(v8 + 72) * v20, v7);
      v22 = *(v8 + 56);
      v22(v15, 0, 1, v7);
    }

    else
    {
      v22 = *(v8 + 56);
      v22(v15, 1, 1, v7);
    }
  }

  else
  {
    v22 = *(v8 + 56);
    v22(v15, 1, 1, v7);
  }

  if ((*(v8 + 48))(v15, 1, v7))
  {
    sub_24AFF8258(v15, qword_27EFCDD08);
  }

  else
  {
    v23 = v26[0];
    (*(v8 + 16))(v26[0], v15, v7);
    sub_24AFF8258(v15, qword_27EFCDD08);
    sub_24B2D5714();
    (*(v8 + 8))(v23, v7);
  }

  v24 = v30;
  (*(v27 + 16))(v30, v29, v28);
  v22(v12, 1, 1, v7);
  swift_beginAccess();
  sub_24B18C438(v12, v24);
  return swift_endAccess();
}

uint64_t sub_24B28CA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_24B2D2504();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B28CB68, v3, 0);
}

uint64_t sub_24B28CB68()
{
  v177 = v0;
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[21] + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage;
  swift_beginAccess();
  v170 = *(v3 + 16);
  v170(v1, v4, v2);

  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();

  v175 = v4;
  if (os_log_type_enabled(v5, v6))
  {
    v166 = v0[25];
    v168 = v0[31];
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    v162 = v0[20];
    v164 = v0[26];
    v160 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v176 = v11;
    *v10 = 136447235;
    sub_24B2D12A4();
    v12 = sub_24B2D24B4();
    v14 = v13;
    (*(v8 + 8))(v7, v9);
    v15 = sub_24AFF321C(v12, v14, &v176);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    sub_24B137F64();
    v16 = sub_24B2D57F4();
    v18 = sub_24AFF321C(v16, v17, &v176);

    *(v10 + 24) = v18;
    *(v10 + 32) = 2160;
    *(v10 + 34) = 1752392040;
    *(v10 + 42) = 2081;
    v0[16] = v160;
    v0[17] = v162;

    v19 = sub_24B2D53C4();
    v21 = sub_24AFF321C(v19, v20, &v176);

    *(v10 + 44) = v21;
    _os_log_impl(&dword_24AFD2000, v5, v6, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v10, 0x34u);
    swift_arrayDestroy();
    v22 = v11;
    v4 = v175;
    MEMORY[0x24C23D530](v22, -1, -1);
    MEMORY[0x24C23D530](v10, -1, -1);

    v23 = *(v164 + 8);
    v23(v168, v166);
  }

  else
  {
    v24 = v0[31];
    v25 = v0[25];
    v26 = v0[26];

    v23 = *(v26 + 8);
    v23(v24, v25);
  }

  v27 = v0[18];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC838);
  v29 = *(v4 + *(v28 + 36));
  v31 = v0[19];
  v30 = v0[20];
  v167 = v23;
  v169 = *(v4 + *(v28 + 40));
  if (*(v27 + 16))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v176 = v29;
    sub_24B1C94C8(v27, v31, v30, isUniquelyReferenced_nonNull_native);

    v33 = v176;
  }

  else
  {

    sub_24B18C22C(0, v31, v30);
    v33 = v29;
  }

  v34 = *(v33 + 64);
  v176 = MEMORY[0x277D84F90];
  v35 = -1;
  v36 = -1 << *(v33 + 32);
  if (-v36 < 64)
  {
    v35 = ~(-1 << -v36);
  }

  v37 = v35 & v34;
  v38 = (63 - v36) >> 6;
  result = swift_bridgeObjectRetain_n();
  v40 = 0;
  if (v37)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      return result;
    }

    if (v41 >= v38)
    {
      break;
    }

    v37 = *(v33 + 64 + 8 * v41);
    ++v40;
    if (v37)
    {
      v40 = v41;
      do
      {
LABEL_15:
        v37 &= v37 - 1;

        result = sub_24B030108(v42);
      }

      while (v37);
      continue;
    }
  }

  v43 = sub_24B1D02FC(v176);

  v44 = v0[18];
  if (*(v169 + 16) <= *(v27 + 16) >> 3)
  {
    v176 = v0[18];

    sub_24B2A4BB8(v169, sub_24B1BB68C);
    v158 = v176;
  }

  else
  {

    v158 = sub_24B2B18E0(v169, v44, &qword_27EFCC848, &unk_24B2EC0E0);
  }

  v163 = v28;
  if (*(v43 + 16) <= *(v169 + 16) >> 3)
  {
    v176 = v169;

    sub_24B2A4BB8(v43, sub_24B1BB68C);
    v45 = v176;
  }

  else
  {

    v45 = sub_24B2B18E0(v43, v169, &qword_27EFCC848, &unk_24B2EC0E0);
  }

  v46 = v0[25];
  v165 = v43;
  v161 = v27;
  if (*(v45 + 16))
  {
    v170(v0[29], v4, v46);

    v47 = sub_24B2D3164();
    v48 = sub_24B2D5934();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v0[29];
    v51 = v0[25];
    if (v49)
    {
      v154 = v0[25];
      v52 = v0[23];
      v53 = v0[24];
      v148 = v0[29];
      v54 = v0[22];
      v142 = v0[19];
      v144 = v0[20];
      v55 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v176 = v146;
      *v55 = 136447235;
      sub_24B2D12A4();
      v56 = sub_24B2D24B4();
      v58 = v57;
      (*(v52 + 8))(v53, v54);
      v59 = sub_24AFF321C(v56, v58, &v176);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2160;
      *(v55 + 14) = 1752392040;
      *(v55 + 22) = 2081;
      sub_24B137F64();
      v60 = sub_24B2D57F4();
      v62 = sub_24AFF321C(v60, v61, &v176);

      *(v55 + 24) = v62;
      *(v55 + 32) = 2160;
      v43 = v165;
      *(v55 + 34) = 1752392040;
      *(v55 + 42) = 2081;
      v0[12] = v142;
      v0[13] = v144;

      v63 = sub_24B2D53C4();
      v65 = sub_24AFF321C(v63, v64, &v176);

      *(v55 + 44) = v65;
      _os_log_impl(&dword_24AFD2000, v47, v48, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v55, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v146, -1, -1);
      MEMORY[0x24C23D530](v55, -1, -1);

      v66 = v148;
      v67 = v154;
    }

    else
    {

      v66 = v50;
      v67 = v51;
    }

    v90 = v167;
    v167(v66, v67);
    v91 = v158;
    v4 = v175;
    if (!*(v43 + 16))
    {
      v92 = v0[21];
      v93 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher;
      if (*(v92 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher))
      {

        sub_24B2D5764();
      }

      *(v92 + v93) = 0;
    }
  }

  else
  {
    v170(v0[30], v4, v46);

    v68 = sub_24B2D3164();
    v69 = sub_24B2D5934();

    v70 = os_log_type_enabled(v68, v69);
    v71 = v0[30];
    v72 = v0[25];
    if (v70)
    {
      v151 = v0[30];
      v155 = v0[25];
      v74 = v0[23];
      v73 = v0[24];
      v75 = v0[22];
      v145 = v0[19];
      v147 = v0[20];
      v76 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v176 = v149;
      *v76 = 136447235;
      sub_24B2D12A4();
      v77 = sub_24B2D24B4();
      v143 = v69;
      v79 = v78;
      (*(v74 + 8))(v73, v75);
      v80 = sub_24AFF321C(v77, v79, &v176);

      *(v76 + 4) = v80;
      *(v76 + 12) = 2160;
      *(v76 + 14) = 1752392040;
      *(v76 + 22) = 2081;
      sub_24B137F64();
      v81 = sub_24B2D57F4();
      v83 = sub_24AFF321C(v81, v82, &v176);

      *(v76 + 24) = v83;
      *(v76 + 32) = 2160;
      *(v76 + 34) = 1752392040;
      *(v76 + 42) = 2081;
      v0[14] = v145;
      v0[15] = v147;

      v84 = sub_24B2D53C4();
      v86 = sub_24AFF321C(v84, v85, &v176);

      *(v76 + 44) = v86;
      _os_log_impl(&dword_24AFD2000, v68, v143, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v76, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v149, -1, -1);
      v87 = v76;
      v4 = v175;
      MEMORY[0x24C23D530](v87, -1, -1);

      v88 = v151;
      v89 = v155;
    }

    else
    {

      v88 = v71;
      v89 = v72;
    }

    v90 = v167;
    v167(v88, v89);
    v91 = v158;
  }

  v94 = v0[25];
  if (*(v91 + 16))
  {
    v95 = v0[27];

    v170(v95, v4, v94);

    v96 = sub_24B2D3164();
    v97 = sub_24B2D5934();

    v98 = os_log_type_enabled(v96, v97);
    v99 = v0[27];
    v100 = v0[25];
    if (v98)
    {
      v173 = v0[25];
      v102 = v0[23];
      v101 = v0[24];
      v171 = v0[27];
      v103 = v0[22];
      v150 = v0[19];
      v152 = v0[20];
      v104 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v176 = v156;
      *v104 = 136447235;
      sub_24B2D12A4();
      v105 = sub_24B2D24B4();
      v107 = v106;
      (*(v102 + 8))(v101, v103);
      v108 = sub_24AFF321C(v105, v107, &v176);

      *(v104 + 4) = v108;
      *(v104 + 12) = 2160;
      *(v104 + 14) = 1752392040;
      *(v104 + 22) = 2081;
      sub_24B137F64();
      v109 = sub_24B2D57F4();
      v111 = v110;

      v112 = sub_24AFF321C(v109, v111, &v176);

      *(v104 + 24) = v112;
      *(v104 + 32) = 2160;
      *(v104 + 34) = 1752392040;
      *(v104 + 42) = 2081;
      v0[8] = v150;
      v0[9] = v152;

      v113 = sub_24B2D53C4();
      v115 = sub_24AFF321C(v113, v114, &v176);

      *(v104 + 44) = v115;
      _os_log_impl(&dword_24AFD2000, v96, v97, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v104, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v156, -1, -1);
      MEMORY[0x24C23D530](v104, -1, -1);

      v167(v171, v173);
    }

    else
    {

      v90(v99, v100);
    }

    v137 = *(v169 + 16);

    if (!v137)
    {
      sub_24B2010E4();
    }

    if (*(v161 + 16))
    {
      goto LABEL_44;
    }

LABEL_47:
    v138 = 0;
    goto LABEL_48;
  }

  v116 = v0[28];

  v170(v116, v4, v94);

  v117 = sub_24B2D3164();
  v118 = sub_24B2D5934();

  v119 = os_log_type_enabled(v117, v118);
  v120 = v0[28];
  v121 = v0[25];
  if (v119)
  {
    v174 = v0[25];
    v123 = v0[23];
    v122 = v0[24];
    v172 = v0[28];
    v124 = v0[22];
    v153 = v0[19];
    v157 = v0[20];
    v125 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v176 = v159;
    *v125 = 136447235;
    sub_24B2D12A4();
    v126 = sub_24B2D24B4();
    v128 = v127;
    (*(v123 + 8))(v122, v124);
    v129 = sub_24AFF321C(v126, v128, &v176);

    *(v125 + 4) = v129;
    *(v125 + 12) = 2160;
    *(v125 + 14) = 1752392040;
    *(v125 + 22) = 2081;
    sub_24B137F64();
    v130 = sub_24B2D57F4();
    v132 = v131;

    v133 = sub_24AFF321C(v130, v132, &v176);

    *(v125 + 24) = v133;
    *(v125 + 32) = 2160;
    *(v125 + 34) = 1752392040;
    *(v125 + 42) = 2081;
    v0[10] = v153;
    v0[11] = v157;

    v134 = sub_24B2D53C4();
    v136 = sub_24AFF321C(v134, v135, &v176);

    *(v125 + 44) = v136;
    _os_log_impl(&dword_24AFD2000, v117, v118, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v125, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v159, -1, -1);
    MEMORY[0x24C23D530](v125, -1, -1);

    v167(v172, v174);
  }

  else
  {

    v90(v120, v121);
  }

  if (!*(v161 + 16))
  {
    goto LABEL_47;
  }

LABEL_44:
  v138 = v0[18];

LABEL_48:
  v139 = v0[19];
  v140 = v0[20];
  swift_beginAccess();

  sub_24B18C22C(v138, v139, v140);
  sub_24B297674(&qword_27EFCC838, &unk_24B2F1230, &qword_27EFCF888);
  *(v175 + *(v163 + 40)) = v165;

  sub_24B2978F4();
  swift_endAccess();

  v141 = v0[1];

  return v141();
}