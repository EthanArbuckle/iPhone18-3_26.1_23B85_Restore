uint64_t sub_258A4845C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A484C4(uint64_t a1, uint64_t a2)
{
  sub_258A483E0(0, &qword_27F96F368, sub_258A4826C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 2);

  v6 = *(v3 + 3);

  v7 = *(v3 + 6);

  v8 = v1[8];
  sub_258A48A8C(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B00224();
    (*(*(v9 - 8) + 8))(&v3[v8], v9);
  }

  else
  {
    v10 = *&v3[v8];
  }

  v11 = &v3[v1[9]];
  sub_258A48A8C(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B01504();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v11, 1, v12))
    {
      (*(v13 + 8))(v11, v12);
    }

    v14 = *(type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs() + 20);
    v15 = sub_258B00AA4();
    (*(*(v15 - 8) + 8))(&v11[v14], v15);
  }

  else
  {
    v16 = *v11;
  }

  v17 = v1[10];
  sub_258A48A8C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_258B006A4();
    (*(*(v18 - 8) + 8))(&v3[v17], v18);
  }

  else
  {
    v19 = *&v3[v17];
  }

  v20 = *&v3[v1[11] + 8];

  v21 = &v3[v1[12]];
  v22 = sub_258B00084();
  (*(*(v22 - 8) + 8))(v21, v22);
  sub_258A48A8C(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  v24 = *&v21[*(v23 + 28)];

  v25 = *&v3[v1[13] + 8];

  return swift_deallocObject();
}

uint64_t sub_258A48934(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ReflectiveIntervalSelectionPhase_iOS() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_258A489A8(void *a1)
{
  v3 = *(type metadata accessor for ReflectiveIntervalSelectionPhase_iOS() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_258A473F4(a1);
}

uint64_t sub_258A48A10()
{
  v1 = *(type metadata accessor for ReflectiveIntervalSelectionPhase_iOS() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 48);
  return (*(v2 + 40))();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_258A48A8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A48AF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A48B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A48BA8()
{
  if (!qword_27F96F390)
  {
    sub_258A483B8(255);
    sub_258A005F0(255);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F390);
    }
  }
}

void sub_258A48C10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_258A48C64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_258A48CC4()
{
  v1 = *(type metadata accessor for ReflectiveIntervalSelectionPhase_iOS() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_258A4768C();
}

unint64_t sub_258A48D20()
{
  result = qword_27F96F398;
  if (!qword_27F96F398)
  {
    sub_258A48BA8();
    sub_258A48DD0();
    sub_258A48FF8(qword_27F96DBD0, sub_258A005F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F398);
  }

  return result;
}

unint64_t sub_258A48DD0()
{
  result = qword_27F96F3A0;
  if (!qword_27F96F3A0)
  {
    sub_258A483B8(255);
    sub_258A48E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F3A0);
  }

  return result;
}

unint64_t sub_258A48E50()
{
  result = qword_27F96F3A8;
  if (!qword_27F96F3A8)
  {
    sub_258A48300();
    sub_258A48ED0();
    sub_2589D49FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F3A8);
  }

  return result;
}

unint64_t sub_258A48ED0()
{
  result = qword_27F96F3B0;
  if (!qword_27F96F3B0)
  {
    sub_258A483E0(255, &qword_27F96F368, sub_258A4826C);
    sub_258A48FF8(&qword_27F96F3B8, sub_258A4826C);
    sub_258A48FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F3B0);
  }

  return result;
}

unint64_t sub_258A48FA4()
{
  result = qword_27F96F3C0;
  if (!qword_27F96F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F3C0);
  }

  return result;
}

uint64_t sub_258A48FF8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_258A49060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_258A490A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258A49120@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  sub_258A4A108();
  v3 = v2;
  v21 = *(v2 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A4A34C();
  v8 = *(v7 - 8);
  v22 = v7;
  v23 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v1 + 32);
  *(v12 + 64) = *(v1 + 48);
  v25 = v1;
  sub_258A4A460(v1, v27);
  sub_258A4A9AC(0, &qword_27F96F3D0, sub_2589ED63C, sub_258A4A19C);
  sub_258A4A1F4();
  sub_258B02174();
  v26 = *(v1 + 40);
  sub_258A4A778(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v14 = swift_allocObject();
  v15 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = *(v1 + 48);
  sub_258A4A460(v1, v27);
  v16 = type metadata accessor for CustomReminderView();
  v19 = sub_258A4A304(&qword_27F96F3F8, sub_258A4A108);
  v20 = sub_258A4A304(&qword_27F96D3F8, type metadata accessor for CustomReminderView);
  sub_258B01E94();

  (*(v21 + 8))(v6, v3);
  v27[0] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5328);
  sub_258A4A778(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  v27[0] = v3;
  v27[1] = v16;
  v27[2] = v19;
  v27[3] = v20;
  swift_getOpaqueTypeConformance2();
  v17 = v22;
  sub_258B01DD4();

  return (*(v23 + 8))(v11, v17);
}

uint64_t sub_258A49598(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v11 == 1)
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = *(a1 + 32);
    *&v14 = v4;
    *&v11 = v4;
    *(&v11 + 1) = v3;
    v12 = v5;
    sub_2589DE784(&v14, &v9);
    sub_258A4A778(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    v7 = v6;

    MEMORY[0x259C92900](&v16, v7);
    *&v9 = v4;
    *(&v9 + 1) = v3;
    v10 = v5;
    v15 = (v16 & 1) == 0;
    sub_258B02314();
    sub_258A4A7C8(&v14);
  }

  else
  {
    v11 = *(a1 + 40);
    v9 = *(a1 + 40);
    v16 = *(&v11 + 1);
    sub_258A4A4F0(&v16, &v14, sub_258A4A67C);
    sub_258A4A778(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    sub_258B02124();
    v14 = v11;
    v13 = !v15;
    sub_258B02134();
    return sub_258A4A6F8(&v11);
  }
}

void sub_258A4976C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v53 = a2;
  v2 = sub_258AFFDD4();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B000E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v13 = sub_258B02AC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v21 = sub_258AFFDE4();
  v46 = *(v21 - 8);
  v47 = v21;
  v22 = *(v46 + 64);
  MEMORY[0x28223BE20](v21);
  v44 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ED63C();
  v50 = *(v24 - 8);
  v51 = v24;
  v25 = *(v50 + 64);
  MEMORY[0x28223BE20](v24);
  v45 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B02AB4();
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v41 = qword_27F97AB98;
  v27 = qword_27F97AB90;
  sub_258B003E4();
  sub_258B000D4();
  v28 = *(v14 + 16);
  v42 = v20;
  v28(v18, v20, v13);
  (*(v6 + 16))(v10, v12, v5);
  v29 = [v27 bundleURL];
  v30 = v43;
  sub_258AFFE24();

  (*(v48 + 104))(v30, *MEMORY[0x277CC9118], v49);
  v31 = v44;
  sub_258AFFDF4();
  (*(v6 + 8))(v12, v5);
  v32 = (*(v14 + 8))(v42, v13);
  v33 = MEMORY[0x28223BE20](v32);
  *(&v41 - 2) = v31;
  MEMORY[0x28223BE20](v33);
  *(&v41 - 2) = 0xD000000000000010;
  *(&v41 - 1) = v34;
  v35 = v45;
  sub_258B020E4();
  (*(v46 + 8))(v31, v47);
  v36 = *(v52 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v54 == 1)
  {
    v37 = sub_258B014B4();
  }

  else
  {
    v37 = sub_258B014A4();
  }

  v38 = v37;
  v39 = v53;
  (*(v50 + 32))(v53, v35, v51);
  sub_258A4A9AC(0, &qword_27F96F3D0, sub_2589ED63C, sub_258A4A19C);
  *(v39 + *(v40 + 36)) = v38;
}

uint64_t sub_258A49D64@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_258B00084();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v34 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v29[-v9];
  v11 = type metadata accessor for CustomReminderModel();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v29[-v17];
  v38 = *a1;
  v33 = *(&v38 + 1);
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 8) = 257;
  v19 = *(v16 + 32);
  v20 = sub_258AFFD44();
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  sub_258A4A4F0(&v38, v35, sub_2589DEB08);
  sub_258B00044();
  v37 = *(a1 + 40);
  sub_258A4A778(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v31 = v35[1];
  v32 = v35[0];
  v30 = v36;
  KeyPath = swift_getKeyPath();
  v22 = type metadata accessor for CustomReminderView();
  *(a2 + v22[8]) = KeyPath;
  sub_2589C0024(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NotificationSettingsModel();
  sub_258A4A304(&qword_27F96D308, type metadata accessor for NotificationSettingsModel);
  *a2 = sub_258B00A24();
  a2[1] = v23;
  v24 = v22[5];
  sub_258A4A4F0(v18, v15, type metadata accessor for CustomReminderModel);
  sub_258B02114();
  sub_258A2A75C(v18);
  v25 = v22[6];
  (*(v5 + 16))(v34, v10, v4);
  sub_258B02114();
  result = (*(v5 + 8))(v10, v4);
  v27 = a2 + v22[7];
  v28 = v31;
  *v27 = v32;
  *(v27 + 1) = v28;
  v27[16] = v30;
  return result;
}

uint64_t sub_258A4A0C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_258A49120(a1);
}

void sub_258A4A108()
{
  if (!qword_27F96F3C8)
  {
    sub_258A4A9AC(255, &qword_27F96F3D0, sub_2589ED63C, sub_258A4A19C);
    sub_258A4A1F4();
    v0 = sub_258B021B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F3C8);
    }
  }
}

void sub_258A4A19C()
{
  if (!qword_27F96F3D8)
  {
    v0 = sub_258B015C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F3D8);
    }
  }
}

unint64_t sub_258A4A1F4()
{
  result = qword_27F96F3E0;
  if (!qword_27F96F3E0)
  {
    sub_258A4A9AC(255, &qword_27F96F3D0, sub_2589ED63C, sub_258A4A19C);
    sub_258A4A304(&qword_27F96D6B8, sub_2589ED63C);
    sub_258A4A304(&qword_27F96F3E8, sub_258A4A19C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F3E0);
  }

  return result;
}

uint64_t sub_258A4A304(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A4A34C()
{
  if (!qword_27F96F3F0)
  {
    sub_258A4A108();
    type metadata accessor for CustomReminderView();
    sub_258A4A304(&qword_27F96F3F8, sub_258A4A108);
    sub_258A4A304(&qword_27F96D3F8, type metadata accessor for CustomReminderView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F3F0);
    }
  }
}

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_258A4A4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A4A558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258AFFDE4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_258B01B34();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_258A4A638@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_258B003E4();
  result = sub_258B02084();
  *a1 = result;
  return result;
}

void sub_258A4A67C()
{
  if (!qword_27F96F400)
  {
    sub_258A4A778(255, &qword_27F96F408, MEMORY[0x277D839B0], MEMORY[0x277CDF3B0]);
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F400);
    }
  }
}

uint64_t sub_258A4A6F8(uint64_t a1)
{
  sub_258A4A778(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A4A778(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258A4A81C()
{
  result = qword_27F96F410;
  if (!qword_27F96F410)
  {
    sub_258A4A9AC(255, qword_27F96F418, sub_258A4A34C, MEMORY[0x277CDE470]);
    sub_258A4A108();
    type metadata accessor for CustomReminderView();
    sub_258A4A304(&qword_27F96F3F8, sub_258A4A108);
    sub_258A4A304(&qword_27F96D3F8, type metadata accessor for CustomReminderView);
    swift_getOpaqueTypeConformance2();
    sub_258A4A304(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F410);
  }

  return result;
}

void sub_258A4A9AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A4AA28(void *a1)
{
  v2 = a1[4];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[2];
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = a1[3];
      swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        sub_258A4B140();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258A4AAF8(int *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[4] - 8);
  v6 = *(v5 + 84);
  v7 = a3[3];
  v8 = *(a3[2] - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  v13 = *(v5 + 80);
  v14 = *(*(a3[4] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(v11 + 80);
  if (v10 <= v12)
  {
    v17 = *(v11 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[2] - 8) + 64) + v16;
  v19 = *(*(v7 - 8) + 64) + 7;
  if (v17 < a2)
  {
    v20 = ((((v19 + ((v18 + ((v14 + v15 + ((v13 + 1) & ~v13)) & ~v15)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v21 = a2 - v17;
    v22 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = v21 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v20);
        if (!v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v26 = *(a1 + v20);
        if (!v26)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_32;
      }

      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_32;
      }
    }

    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    v37 = v17 + (v29 | v28);
    return (v37 + 1);
  }

LABEL_32:
  v30 = (a1 + v13 + 1) & ~v13;
  if (v6 != v17)
  {
    v32 = (v30 + v14 + v15) & ~v15;
    if (v9 == v17)
    {
      v33 = *(v8 + 48);
      v34 = *(v8 + 84);
      v35 = a3[2];

      return v33(v32, v34, v35);
    }

    v32 = (v18 + v32) & ~v16;
    if (v12 == v17)
    {
      v33 = *(v11 + 48);
      v34 = *(v11 + 84);
      v35 = a3[3];

      return v33(v32, v34, v35);
    }

    v36 = *(((v19 + v32) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    v37 = v36 - 1;
    if (v37 < 0)
    {
      v37 = -1;
    }

    return (v37 + 1);
  }

  v31 = *(v5 + 48);

  return v31(v30);
}

unsigned int *sub_258A4ADD4(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[4] - 8);
  v6 = *(v5 + 84);
  v7 = a4[2];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(a4[3] - 8);
  v12 = *(v11 + 84);
  v13 = *(v5 + 80);
  v14 = *(*(a4[4] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v10 <= v12)
  {
    v19 = *(v11 + 84);
  }

  else
  {
    v19 = v10;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  v20 = v16 + v17;
  v21 = ((((v18 + 7 + ((v16 + v17 + ((v14 + v15 + ((v13 + 1) & ~v13)) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 >= a3)
  {
    v24 = 0;
    v25 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_21;
    }

LABEL_26:
    if (v21)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    if (v21)
    {
      v27 = ~v19 + a2;
      v28 = result;
      bzero(result, v21);
      result = v28;
      *v28 = v27;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(result + v21) = v26;
      }

      else
      {
        *(result + v21) = v26;
      }
    }

    else if (v24)
    {
      *(result + v21) = v26;
    }

    return result;
  }

  v22 = a3 - v19;
  if (v21)
  {
    v23 = 2;
  }

  else
  {
    v23 = v22 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 < 2)
  {
    v24 = 0;
  }

  v25 = a2 - v19;
  if (a2 > v19)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(result + v21) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *(result + v21) = 0;
LABEL_36:
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!v24)
  {
    goto LABEL_36;
  }

  *(result + v21) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_37:
  result = ((result + v13 + 1) & ~v13);
  if (v6 == v19)
  {
    v29 = *(v5 + 56);

    return v29(result);
  }

  v30 = (result + v14 + v15) & ~v15;
  if (v9 == v19)
  {
    v31 = *(v8 + 56);

    return v31(v30);
  }

  else
  {
    result = ((v20 + v30) & ~v17);
    if (v12 == v19)
    {
      v29 = *(v11 + 56);

      return v29(result);
    }

    v32 = ((result + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v32 = a2 - 0x7FFFFFFF;
      v32[1] = 0;
    }

    else
    {
      v32[1] = a2;
    }
  }

  return result;
}

void sub_258A4B140()
{
  if (!qword_27F96F4A0)
  {
    v0 = sub_258B02154();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F4A0);
    }
  }
}

uint64_t sub_258A4B190(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258A4B214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B030C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

double sub_258A4B280@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, double a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v23 = a1;
  v22 = a8;
  v17 = *(*(a6 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a9;
  v37 = a10;
  v38 = v10;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a9;
  v29 = a10;
  v30 = a2;
  v31 = a3;
  return sub_258A4B618(v23, v19, sub_258A4DF8C, sub_258A4DFC0, a4, a5, v22, a6);
}

uint64_t sub_258A4B3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_258A4B4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  v10();
  v13 = v5[2];
  v13(v12, v9, a2);
  v14 = v5[1];
  v14(v9, a2);
  v13(a3, v12, a2);
  return (v14)(v12, a2);
}

double sub_258A4B618@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, double a5@<X6>, uint64_t a6@<X7>, _BYTE *a7@<X8>, uint64_t a8)
{
  *a7 = a1;
  v12 = type metadata accessor for ScrollableWithPinnedFooter();
  v13 = (*(*(a8 - 8) + 32))(&a7[v12[17]], a2, a8);
  v14 = &a7[v12[18]];
  v15 = a3(v13);
  v16 = &a7[v12[19]];
  a4(v15);
  v17 = &a7[v12[20]];
  sub_258B02114();
  *v17 = a5;
  *(v17 + 1) = a6;
  v18 = &a7[v12[21]];
  sub_258B02114();
  result = a5;
  *v18 = a5;
  *(v18 + 1) = a6;
  return result;
}

uint64_t sub_258A4B758@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v102 = a2;
  v98 = *(a1 - 1);
  v101 = *(v98 + 64);
  MEMORY[0x28223BE20](a1);
  v99 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A4D9EC();
  v94 = a1[2];
  v93 = sub_258B00B04();
  *&v103 = a1[5];
  v4 = v103;
  OpaqueTypeMetadata2 = sub_258A024D8();
  v142 = v4;
  v143 = OpaqueTypeMetadata2;
  v5 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v6 = sub_258B00664();
  v96 = *(v6 - 8);
  v7 = *(v96 + 64);
  MEMORY[0x28223BE20](v6);
  v91 = &v69 - v8;
  sub_258A4DACC(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
  v86 = v6;
  v9 = sub_258B00B04();
  v97 = *(v9 - 8);
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v9);
  v89 = v9;
  v90 = &v69 - v11;
  v12 = sub_258B00B04();
  v100 = *(v12 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x28223BE20](v12);
  v95 = &v69 - v14;
  v80 = a1;
  v16 = a1[6];
  v124 = a1[3];
  v15 = v124;
  v125 = v16;
  v17 = v16;
  swift_getOpaqueTypeMetadata2();
  *&v104 = sub_258B030C4();
  v18 = swift_getWitnessTable();
  v85 = v18;
  v19 = sub_258A4DA48();
  v140 = v18;
  v141 = v19;
  v88 = swift_getWitnessTable();
  v138 = v88;
  v139 = OpaqueTypeMetadata2;
  v20 = swift_getWitnessTable();
  v69 = v17;
  v70 = v15;
  v124 = v15;
  v125 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v104;
  v22 = swift_getWitnessTable();
  v124 = v12;
  v125 = v21;
  v126 = v20;
  v127 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_258A4DACC(255, &qword_27F96F4B8, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0718]);
  sub_258B00B04();
  sub_258B030C4();
  v23 = sub_258A4DB20();
  v135 = v17;
  v136 = v23;
  v87 = v5;
  v134 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_258B010F4();
  v24 = sub_258B00B04();
  v79 = v12;
  v124 = v12;
  v125 = v104;
  v126 = v20;
  v127 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v74 = v25;
  v26 = swift_getWitnessTable();
  v132 = v20;
  v133 = v26;
  v76 = v20;
  v73 = v24;
  v72 = swift_getWitnessTable();
  v124 = v12;
  v125 = MEMORY[0x277CE1350];
  v126 = OpaqueTypeMetadata2;
  v127 = v24;
  v128 = v20;
  v129 = MEMORY[0x277CE1340];
  v130 = v25;
  v131 = v72;
  v83 = MEMORY[0x277CE0E60];
  v78 = swift_getOpaqueTypeMetadata2();
  v84 = *(v78 - 8);
  v27 = *(v84 + 64);
  MEMORY[0x28223BE20](v78);
  v71 = &v69 - v28;
  v29 = sub_258B00B04();
  v81 = *(v29 - 8);
  v82 = v29;
  v30 = *(v81 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v75 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v77 = &v69 - v33;
  sub_258B01854();
  v34 = v80;
  *&v35 = v80[4];
  *(&v35 + 1) = v103;
  *&v36 = v94;
  v37 = v69;
  *(&v36 + 1) = v70;
  v103 = v35;
  v104 = v36;
  v117 = v36;
  v118 = v35;
  v38 = v80[7];
  v119 = v69;
  v120 = v38;
  v39 = v38;
  v40 = v106;
  v121 = v106;
  v41 = v91;
  sub_258B00674();
  v124 = sub_258B035A4();
  v125 = v42;
  MEMORY[0x259C931B0](0x566C6C6F7263532ELL, 0xEB00000000776569);
  v43 = v90;
  v44 = v86;
  sub_258B01C64();

  (*(v96 + 8))(v41, v44);
  v45 = v98;
  v46 = v99;
  (*(v98 + 16))(v99, v40, v34);
  v47 = (*(v45 + 80) + 64) & ~*(v45 + 80);
  v48 = swift_allocObject();
  v49 = v103;
  *(v48 + 16) = v104;
  *(v48 + 32) = v49;
  *(v48 + 48) = v37;
  *(v48 + 56) = v39;
  v50 = v39;
  (*(v45 + 32))(v48 + v47, v46, v34);
  sub_2589D2E7C();
  v51 = v95;
  v52 = v89;
  sub_258B01CD4();

  (*(v97 + 8))(v43, v52);
  sub_258B024C4();
  v112 = v104;
  v113 = v103;
  v114 = v37;
  v115 = v50;
  v116 = v106;
  v107 = v104;
  v108 = v103;
  v109 = v37;
  v110 = v50;
  v111 = v106;
  v53 = swift_checkMetadataState();
  v54 = swift_checkMetadataState();
  v55 = v72;
  v56 = v74;
  v57 = v76;
  v58 = v71;
  v59 = v79;
  sub_258B01F04();
  (*(v100 + 8))(v51, v59);
  sub_258B00B54();
  sub_258B01894();
  v124 = v59;
  v125 = MEMORY[0x277CE1350];
  v126 = v53;
  v127 = v54;
  v128 = v57;
  v129 = MEMORY[0x277CE1340];
  v130 = v56;
  v131 = v55;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v75;
  v62 = v78;
  sub_258B01C94();
  (*(v84 + 8))(v58, v62);
  v122 = v60;
  v123 = MEMORY[0x277CE0880];
  v63 = v82;
  swift_getWitnessTable();
  v64 = v81;
  v65 = *(v81 + 16);
  v66 = v77;
  v65(v77, v61, v63);
  v67 = *(v64 + 8);
  v67(v61, v63);
  v65(v102, v66, v63);
  return (v67)(v66, v63);
}

uint64_t sub_258A4C1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v51 = a7;
  v52 = a6;
  v43 = a3;
  v44 = a5;
  v53 = a1;
  v50 = a8;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v41 = a4;
  v60 = a6;
  v61 = a7;
  v11 = type metadata accessor for ScrollableWithPinnedFooter();
  v12 = *(v11 - 8);
  v40 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  sub_258A4D9EC();
  v39 = a2;
  v15 = sub_258B00B04();
  v48 = *(v15 - 8);
  v49 = v15;
  v16 = *(v48 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v46 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v47 = &v37 - v19;
  v45 = *(v11 + 72);
  v20 = v12;
  v42 = *(v12 + 16);
  v42(v14, a1, v11);
  v21 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v23 = v43;
  *(v22 + 2) = a2;
  *(v22 + 3) = v23;
  v24 = v44;
  *(v22 + 4) = a4;
  *(v22 + 5) = v24;
  v25 = v51;
  *(v22 + 6) = v52;
  *(v22 + 7) = v25;
  v26 = *(v20 + 32);
  v38 = v14;
  v26(&v22[v21], v14, v11);
  v42(v14, v53, v11);
  v27 = swift_allocObject();
  *(v27 + 2) = v39;
  *(v27 + 3) = v23;
  *(v27 + 4) = v41;
  *(v27 + 5) = v24;
  v28 = v51;
  *(v27 + 6) = v52;
  *(v27 + 7) = v28;
  v26(&v27[v21], v38, v11);
  sub_2589D2E7C();
  v29 = v46;
  sub_258B01CD4();

  v30 = sub_258A024D8();
  v54 = v24;
  v55 = v30;
  v31 = v49;
  swift_getWitnessTable();
  v33 = v47;
  v32 = v48;
  v34 = *(v48 + 16);
  v34(v47, v29, v31);
  v35 = *(v32 + 8);
  v35(v29, v31);
  v34(v50, v33, v31);
  return (v35)(v33, v31);
}

void sub_258A4C570(CGFloat *a1@<X8>)
{
  v2 = sub_258B012F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_258B035A4();
  v16[1] = v7;
  MEMORY[0x259C931B0](0x566C6C6F7263532ELL, 0xEB00000000776569);
  sub_258B01524();

  sub_258B008D4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v3 + 8))(v6, v2);
  v17.origin.x = v9;
  v17.origin.y = v11;
  v17.size.width = v13;
  v17.size.height = v15;
  *a1 = CGRectGetMaxY(v17);
}

uint64_t sub_258A4C6F0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for ScrollableWithPinnedFooter() + 80));
  v5 = *v3;
  v6 = v3[1];
  sub_258A4B140();
  return sub_258B02134();
}

uint64_t sub_258A4C76C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for ScrollableWithPinnedFooter() + 84));
  v5 = *v3;
  v6 = v3[1];
  sub_258A4B140();
  return sub_258B02134();
}

uint64_t sub_258A4C7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v31 = a8;
  v27 = a6;
  v29 = a5;
  v28 = a3;
  v30 = a2;
  v32 = a1;
  v33 = a9;
  sub_258A4D9EC();
  sub_258B00B04();
  v50 = a6;
  v51 = sub_258A024D8();
  swift_getWitnessTable();
  sub_258B00664();
  sub_258A4DACC(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
  sub_258B00B04();
  v12 = sub_258B00B04();
  swift_getOpaqueTypeMetadata2();
  v13 = sub_258B030C4();
  WitnessTable = swift_getWitnessTable();
  v49 = sub_258A4DA48();
  v46 = swift_getWitnessTable();
  v47 = v51;
  v14 = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v12;
  v42 = v13;
  v43 = v14;
  v44 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v26 - v21;
  v34 = v28;
  v35 = a4;
  v36 = v29;
  v37 = v27;
  v38 = a7;
  v39 = v31;
  v40 = v30;
  sub_258B01194();
  swift_checkMetadataState();
  swift_checkMetadataState();
  sub_258B01BF4();
  v23 = v16[2];
  v23(v22, v20, OpaqueTypeMetadata2);
  v24 = v16[1];
  v24(v20, OpaqueTypeMetadata2);
  v23(v33, v22, OpaqueTypeMetadata2);
  return (v24)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_258A4CBC4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v46 = a5;
  v47 = a7;
  v44 = a2;
  v45 = a4;
  v52 = a8;
  v11 = sub_258B01154();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v54 = a3;
  v55 = a6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v43 = &v42 - v21;
  v22 = sub_258B030C4();
  v50 = *(v22 - 8);
  v23 = *(v50 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v51 = &v42 - v27;
  if (*a1 == 1)
  {
    v54 = v44;
    v55 = a3;
    v56 = v45;
    v57 = v46;
    v58 = v53;
    v59 = v47;
    v28 = type metadata accessor for ScrollableWithPinnedFooter();
    v42 = a3;
    v29 = *(v28 + 76);
    sub_258B01144();
    sub_258B01D54();
    (*(v48 + 8))(v14, v49);
    v30 = *(v16 + 16);
    v31 = v43;
    v30(v43, v20, OpaqueTypeMetadata2);
    v32 = *(v16 + 8);
    v32(v20, OpaqueTypeMetadata2);
    v30(v20, v31, OpaqueTypeMetadata2);
    v32(v31, OpaqueTypeMetadata2);
    v33 = v42;
    v34 = v20;
    v35 = v53;
    (*(v16 + 32))(v26, v34, OpaqueTypeMetadata2);
    v36 = 0;
  }

  else
  {
    v36 = 1;
    v35 = v53;
    v33 = a3;
  }

  (*(v16 + 56))(v26, v36, 1, OpaqueTypeMetadata2);
  v37 = v50;
  v38 = v51;
  v39 = *(v50 + 16);
  v39(v51, v26, v22);
  v40 = *(v37 + 8);
  v40(v26, v22);
  v54 = v33;
  v55 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v39(v52, v38, v22);
  return (v40)(v38, v22);
}

uint64_t sub_258A4CFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v32 = a8;
  v28 = a6;
  v30 = a5;
  v29 = a3;
  v31 = a2;
  v34 = a1;
  v35 = a9;
  sub_258A4D9EC();
  sub_258B00B04();
  v33 = sub_258A024D8();
  v52 = a6;
  v53 = v33;
  swift_getWitnessTable();
  v27[2] = sub_258B00664();
  sub_258A4DACC(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
  v27[3] = sub_258B00B04();
  sub_258B00B04();
  sub_258A4DACC(255, &qword_27F96F4B8, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0718]);
  sub_258B00B04();
  sub_258B030C4();
  v50 = a7;
  v51 = sub_258A4DB20();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v27[1] = sub_258B010F4();
  v12 = sub_258B00B04();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v27 - v18;
  v36 = v29;
  v37 = a4;
  v38 = v30;
  v39 = v28;
  v40 = a7;
  v41 = v32;
  v42 = v31;
  sub_258B01194();
  v20 = swift_getWitnessTable();
  v21 = sub_258A4DA48();
  v47 = v20;
  v48 = v21;
  v45 = swift_getWitnessTable();
  v46 = v33;
  v26 = swift_getWitnessTable();
  sub_258B01C44();
  v22 = swift_getWitnessTable();
  v43 = v26;
  v44 = v22;
  swift_getWitnessTable();
  v23 = v13[2];
  v23(v19, v17, v12);
  v24 = v13[1];
  v24(v17, v12);
  v23(v35, v19, v12);
  return (v24)(v19, v12);
}

uint64_t sub_258A4D410@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v39 = a5;
  v40 = a7;
  v38 = a4;
  v43 = a8;
  sub_258A4DACC(255, &qword_27F96F4B8, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0718]);
  v12 = a3;
  v13 = sub_258B00B04();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v41 = &v38 - v19;
  v20 = sub_258B030C4();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v42 = &v38 - v26;
  if (*a1 == 1)
  {
    v46 = a2;
    v47 = v12;
    v48 = v38;
    v49 = v39;
    v50 = a6;
    v51 = v40;
    v27 = type metadata accessor for ScrollableWithPinnedFooter();
    v40 = *(v27 + 76);
    v46 = sub_258A4D844(v27);
    sub_258B01874();
    sub_258B01BA4();

    v28 = sub_258A4DB20();
    v44 = a6;
    v45 = v28;
    swift_getWitnessTable();
    v29 = *(v14 + 16);
    v30 = v41;
    v29(v41, v18, v13);
    v39 = v21;
    v40 = a6;
    v31 = *(v14 + 8);
    v31(v18, v13);
    v29(v18, v30, v13);
    v31(v30, v13);
    v21 = v39;
    a6 = v40;
    (*(v14 + 32))(v25, v18, v13);
    (*(v14 + 56))(v25, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v25, 1, 1, v13);
    v32 = sub_258A4DB20();
    v55 = a6;
    v56 = v32;
    swift_getWitnessTable();
  }

  v33 = v21[2];
  v34 = v42;
  v33(v42, v25, v20);
  v35 = v21[1];
  v35(v25, v20);
  v36 = sub_258A4DB20();
  v53 = a6;
  v54 = v36;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v33(v43, v34, v20);
  return (v35)(v34, v20);
}

uint64_t sub_258A4D844(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_258A4D944(v6))
  {
    (*(v4 + 16))(v8, v1 + *(a1 + 68), v3);
    v9 = *(a1 + 56);
  }

  else
  {
    v11[1] = sub_258B02004();
  }

  return sub_258B00864();
}

uint64_t sub_258A4D944(uint64_t a1)
{
  v3 = (v1 + *(a1 + 80));
  v6 = *v3;
  v8 = v3[1];
  sub_258A4B140();
  sub_258B02124();
  v4 = (v1 + *(a1 + 84));
  v7 = *v4;
  v9 = v4[1];
  sub_258B02124();
  return 0;
}

void sub_258A4D9EC()
{
  if (!qword_27F96DC78)
  {
    sub_2589D2E7C();
    v0 = sub_258B01584();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DC78);
    }
  }
}

unint64_t sub_258A4DA48()
{
  result = qword_27F96F4B0;
  if (!qword_27F96F4B0)
  {
    sub_258A4DACC(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F4B0);
  }

  return result;
}

void sub_258A4DACC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A4DB20()
{
  result = qword_27F96F4C0;
  if (!qword_27F96F4C0)
  {
    sub_258A4DACC(255, &qword_27F96F4B8, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F4C0);
  }

  return result;
}

void sub_258A4DC50(CGFloat *a1@<X8>)
{
  v3 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v4 = *(*(type metadata accessor for ScrollableWithPinnedFooter() - 8) + 80);

  sub_258A4C570(a1);
}

uint64_t objectdestroyTm_11()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  v3 = type metadata accessor for ScrollableWithPinnedFooter();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v6 = v0 + ((*(*(v3 - 8) + 80) + 64) & ~*(*(v3 - 8) + 80));
  (*(*(v10 - 8) + 8))(v6 + *(v3 + 68));
  (*(*(v2 - 8) + 8))(v6 + v4[20], v2);
  (*(*(v1 - 8) + 8))(v6 + v4[21], v1);
  v7 = *(v6 + v4[22] + 8);

  v8 = *(v6 + v4[23] + 8);

  return swift_deallocObject();
}

uint64_t sub_258A4DEBC(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = *(type metadata accessor for ScrollableWithPinnedFooter() - 8);
  v11 = v2 + ((*(v10 + 80) + 64) & ~*(v10 + 80));

  return a2(a1, v11, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_258A4DFC0@<X0>(char *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[9];
  return sub_258A4B4D8(v1[8], v1[3], a1);
}

uint64_t StateOfMindEntryPresentationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

unint64_t sub_258A4E068()
{
  result = qword_27F96F4C8;
  if (!qword_27F96F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F4C8);
  }

  return result;
}

uint64_t type metadata accessor for ValenceSelectionTitleText()
{
  result = qword_27F96F4D0;
  if (!qword_27F96F4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A4E140()
{
  sub_258A4EA5C(319, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_258A4E210(char a1)
{
  v3 = sub_258B019F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = (v4 + 104);
  v18 = (v4 + 32);
  if (a1)
  {
    sub_258B019D4();
    v19 = v1 + *(type metadata accessor for ValenceSelectionPhaseSpecs() + 20);
    v20 = sub_258B00A84();
    v21 = MEMORY[0x277CE0A10];
    if ((v20 & 1) == 0)
    {
      v21 = MEMORY[0x277CE0A18];
    }

    (*v17)(v14, *v21, v3);
    (*v18)(v16, v14, v3);
    v22 = sub_258B01A14();
  }

  else
  {
    sub_258B01944();
    v23 = v1 + *(type metadata accessor for ValenceSelectionPhaseSpecs() + 20);
    v24 = sub_258B00A84();
    v25 = MEMORY[0x277CE0A10];
    if ((v24 & 1) == 0)
    {
      v25 = MEMORY[0x277CE0A18];
    }

    (*v17)(v8, *v25, v3);
    (*v18)(v11, v8, v3);
    v22 = sub_258B01A14();
    v16 = v11;
  }

  (*(v4 + 8))(v16, v3);
  return v22;
}

void sub_258A4E45C(uint64_t a1@<X8>)
{
  v51 = a1;
  sub_2589D5AFC();
  v50[1] = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v56 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ValenceSelectionPhaseSpecs();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1;
  v10 = *v1;
  v11 = v1[1];
  v12 = v9;
  v57 = v10;
  v58 = v11;
  sub_2589BFF58();
  sub_258B003E4();
  v13 = sub_258B01B44();
  v15 = v14;
  v17 = v16;
  v18 = *(type metadata accessor for ValenceSelectionTitleText() + 24);
  v52 = v12;
  v53 = v18;
  sub_258AC1B90(v8);
  v55 = *(v12 + 16);
  sub_258A4E210(v55);
  v54 = type metadata accessor for ValenceSelectionPhaseSpecs;
  sub_258A4E934(v8, type metadata accessor for ValenceSelectionPhaseSpecs);
  v19 = sub_258B01AE4();
  v21 = v20;
  v23 = v22;

  sub_2589BFFAC(v13, v15, v17 & 1);

  v24 = sub_258B01AD4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v19;
  v32 = v56;
  sub_2589BFFAC(v31, v21, v23 & 1);

  v57 = v24;
  v58 = v26;
  v59 = v28 & 1;
  v60 = v30;
  sub_258AC1B90(v8);
  sub_258A2AFD8(v55, v32);
  sub_258A4E934(v8, v54);
  sub_258B00AA4();
  sub_258A4F388(&qword_27F96D048, MEMORY[0x277CDFA28]);
  if (sub_258B02AA4())
  {
    sub_258A4F388(&qword_27F96D030, sub_2589D5AFC);
    v33 = v51;
    sub_258B01C84();
    sub_258A4E934(v32, sub_2589D5AFC);
    sub_2589BFFAC(v24, v26, v28 & 1);

    v34 = sub_258B014A4();
    sub_258A4E994(0);
    v36 = (v33 + *(v35 + 36));
    *v36 = v34;
    v36[1] = 1058642330;
    sub_258A4EC94(0, &qword_27F96F4F0, sub_258A4E994, type metadata accessor for LoggingFlowBlendMode);
    v38 = *(v37 + 36);
    *(v33 + v38) = swift_getKeyPath();
    sub_258A4EA5C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_258A4EAC0();
    *(v33 + *(v39 + 36)) = 256;
    KeyPath = swift_getKeyPath();
    sub_258A4EB50();
    v42 = v33 + *(v41 + 36);
    *v42 = KeyPath;
    *(v42 + 8) = 1;
    sub_258AC1B90(v8);
    v43 = sub_258A2A930();
    sub_258A4E934(v8, type metadata accessor for ValenceSelectionPhaseSpecs);
    v44 = swift_getKeyPath();
    sub_258A4EC94(0, &qword_27F96F508, sub_258A4EB50, sub_258A4ED08);
    v46 = v33 + *(v45 + 36);
    *v46 = v44;
    *(v46 + 8) = v43;
    *(v46 + 16) = 0;
    v47 = swift_getKeyPath();
    sub_258A4ED84();
    v49 = (v33 + *(v48 + 36));
    *v49 = v47;
    v49[1] = 0x3FE3333333333333;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258A4E934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A4E9C8()
{
  if (!qword_27F96F4E8)
  {
    sub_258A35700();
    sub_258A4F388(&qword_27F96ED38, sub_258A35700);
    v0 = sub_258B015C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F4E8);
    }
  }
}

void sub_258A4EA5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A4EAC0()
{
  if (!qword_27F96F4F8)
  {
    sub_258A4EC94(255, &qword_27F96F4F0, sub_258A4E994, type metadata accessor for LoggingFlowBlendMode);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F4F8);
    }
  }
}

void sub_258A4EB50()
{
  if (!qword_27F96F500)
  {
    sub_258A4EAC0();
    sub_258A4EE40(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F500);
    }
  }
}

uint64_t sub_258A4EBDC@<X0>(void *a1@<X8>)
{
  result = sub_258B00E14();
  *a1 = v3;
  return result;
}

uint64_t sub_258A4EC30@<X0>(uint64_t a1@<X8>)
{
  result = sub_258B00F34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_258A4EC64(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_258B00F44();
}

void sub_258A4EC94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A4ED08()
{
  if (!qword_27F96ED00)
  {
    sub_258A4EE40(255, &qword_280DF8928, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    v0 = sub_258B017C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96ED00);
    }
  }
}

void sub_258A4ED84()
{
  if (!qword_27F96F510)
  {
    sub_258A4EC94(255, &qword_27F96F508, sub_258A4EB50, sub_258A4ED08);
    sub_258A4EE40(255, &qword_27F96ED60, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F510);
    }
  }
}

void sub_258A4EE40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258A4EE90()
{
  result = qword_27F96F518;
  if (!qword_27F96F518)
  {
    sub_258A4ED84();
    sub_258A4EF28();
    sub_258A4F324(&qword_27F96F560, &qword_27F96ED60, MEMORY[0x277D85048]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F518);
  }

  return result;
}

unint64_t sub_258A4EF28()
{
  result = qword_27F96F520;
  if (!qword_27F96F520)
  {
    sub_258A4EC94(255, &qword_27F96F508, sub_258A4EB50, sub_258A4ED08);
    sub_258A4F008();
    sub_258A4F388(&qword_27F96F558, sub_258A4ED08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F520);
  }

  return result;
}

unint64_t sub_258A4F008()
{
  result = qword_27F96F528;
  if (!qword_27F96F528)
  {
    sub_258A4EB50();
    sub_258A4F0A0();
    sub_258A4F324(&qword_27F96D1B8, &qword_27F96C8C0, MEMORY[0x277CDF720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F528);
  }

  return result;
}

unint64_t sub_258A4F0A0()
{
  result = qword_27F96F530;
  if (!qword_27F96F530)
  {
    sub_258A4EAC0();
    sub_258A4F120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F530);
  }

  return result;
}

unint64_t sub_258A4F120()
{
  result = qword_27F96F538;
  if (!qword_27F96F538)
  {
    sub_258A4EC94(255, &qword_27F96F4F0, sub_258A4E994, type metadata accessor for LoggingFlowBlendMode);
    sub_258A4F200();
    sub_258A4F388(&qword_27F96F550, type metadata accessor for LoggingFlowBlendMode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F538);
  }

  return result;
}

unint64_t sub_258A4F200()
{
  result = qword_27F96F540;
  if (!qword_27F96F540)
  {
    sub_258A4E994(255);
    sub_2589D5AFC();
    sub_258A4F388(&qword_27F96D030, sub_2589D5AFC);
    swift_getOpaqueTypeConformance2();
    sub_258A4F388(&qword_27F96F548, sub_258A4E9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F540);
  }

  return result;
}

uint64_t sub_258A4F324(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_258A4EE40(255, a2, a3, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258A4F388(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t StateOfMindTimeline.EntryFullView.init(model:)@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  v2 = MEMORY[0x277CDF458];
  sub_258A55CA0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  v4 = v3[5];
  *(a1 + v4) = swift_getKeyPath();
  sub_258A55CA0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v2);
  swift_storeEnumTagMultiPayload();
  v5 = (a1 + v3[7]);
  sub_258B02114();
  *v5 = v12;
  v5[1] = v13;
  v6 = a1 + v3[8];
  sub_258B02114();
  *v6 = v12;
  *(v6 + 1) = v13;
  v7 = v3[9];
  *(a1 + v7) = swift_getKeyPath();
  sub_258A55CA0(0, &qword_27F96C968, MEMORY[0x277CDD848], v2);
  swift_storeEnumTagMultiPayload();
  v8 = a1 + v3[10];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = (a1 + v3[6]);
  type metadata accessor for StateOfMindTimeline.Model();
  sub_258A54E78(&qword_27F96F568, type metadata accessor for StateOfMindTimeline.Model);
  result = sub_258B00A24();
  *v9 = result;
  v9[1] = v11;
  return result;
}

uint64_t type metadata accessor for StateOfMindTimeline.EntryFullView()
{
  result = qword_27F96F730;
  if (!qword_27F96F730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258A4F654@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CDF458];
  sub_258A55CA0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v17 - v12);
  sub_258A55B00(v2, &v17 - v12, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258A55D04(v13, a1, type metadata accessor for StateOfMindTimeline.Styles);
  }

  v15 = *v13;
  sub_258B02E94();
  v16 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_258A4F864@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDF3E0];
  v9 = MEMORY[0x277CDF458];
  sub_258A55CA0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  sub_258A55B00(v1 + *(v14 + 20), v13, &qword_27F96C908, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B006A4();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_258B02E94();
    v18 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_258A4FA98@<X0>(uint64_t a1@<X8>)
{
  v3 = _s9ViewModelOMa();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + *(type metadata accessor for StateOfMindTimeline.EntryFullView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    sub_258A55D6C(v6, _s9ViewModelOMa);
    return sub_258A796E4(a1);
  }

  v9 = v6[1];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = *v6;
  if (v9 >= *(*v6 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v11 = *(type metadata accessor for StateOfMindTimeline.DaySummary() - 8);
  sub_258A55A48(v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, a1, type metadata accessor for StateOfMindTimeline.DaySummary);
}

uint64_t sub_258A4FC50()
{
  v0 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_258B006A4();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v39);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v38 = &v34 - v8;
  MEMORY[0x28223BE20](v7);
  v37 = &v34 - v9;
  v10 = MEMORY[0x277D83D88];
  sub_258A55CA0(0, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s5EntryVMa();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A4FA98(v19);
  sub_258A55B00(&v19[*(v16 + 36)], v14, &qword_27F96D908, _s5EntryVMa, v10);
  sub_258A55D6C(v19, type metadata accessor for StateOfMindTimeline.DaySummary);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_258A2C670(v14);
    v25 = v35;
    sub_258A4F654(v35);
    sub_258A55D6C(v25, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B01FE4();
    v26 = sub_258B02024();
  }

  else
  {
    sub_258A55D04(v14, v24, _s5EntryVMa);
    v27 = v37;
    sub_258A4F864(v37);
    v28 = *&v24[*(v20 + 36)];
    v30 = v38;
    v29 = v39;
    (*(v3 + 16))(v38, v27, v39);
    v31 = v36;
    (*(v3 + 104))(v36, *MEMORY[0x277CDF3C0], v29);
    sub_258B00694();
    v32 = *(v3 + 8);
    v32(v31, v29);
    swift_getKeyPath();
    sub_258A84538(fmax(fmin(v28, 1.0), -1.0));

    v26 = sub_258B01F74();
    v32(v30, v29);
    v32(v27, v29);
    sub_258A55D6C(v24, _s5EntryVMa);
  }

  return v26;
}

uint64_t StateOfMindTimeline.EntryFullView.body.getter()
{
  sub_258A52C0C();
  sub_258A54E78(&qword_27F96F728, sub_258A52C0C);
  return sub_258B00B24();
}

uint64_t sub_258A50178@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_258A55A48(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindTimeline.EntryFullView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_258A55D04(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for StateOfMindTimeline.EntryFullView);
  *a2 = sub_258A54F7C;
  a2[1] = v8;
  return result;
}

uint64_t sub_258A50298@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v128 = a2;
  sub_2589EC7FC();
  v4 = *(v3 - 8);
  v124 = v3;
  v125 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v120 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_258B00FB4();
  v116 = *(v117 - 8);
  v7 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v115 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  v15 = *(v14 - 8);
  v127 = v14 - 8;
  v109 = v15;
  v130 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v129 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A536C0(0);
  v22 = v21;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A53620();
  v111 = v26;
  v112 = *(v26 - 8);
  v27 = *(v112 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A53550();
  v114 = v30;
  v118 = *(v30 - 8);
  v31 = *(v118 + 64);
  MEMORY[0x28223BE20](v30);
  v107 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A533AC();
  v34 = *(v33 - 8);
  v121 = v33;
  v122 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v113 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A53158();
  v123 = v37;
  v126 = *(v37 - 8);
  v38 = *(v126 + 64);
  MEMORY[0x28223BE20](v37);
  v119 = &v105 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v25 = sub_258B024D4();
  v25[1] = v40;
  sub_258A54FFC();
  sub_258A50F18(a1, (v25 + *(v41 + 44)));
  sub_258A537EC();
  v43 = (v25 + *(v42 + 36));
  *v43 = 0xD00000000000002CLL;
  v43[1] = 0x8000000258B377D0;
  v44 = sub_258B01884();
  sub_258A537C4(0);
  *(v25 + *(v45 + 36)) = v44;
  sub_258A4F654(v20);
  sub_258A55D6C(v20, type metadata accessor for StateOfMindTimeline.Styles);
  v46 = objc_opt_self();
  v47 = [v46 secondarySystemGroupedBackgroundColor];
  v48 = [v46 tertiarySystemGroupedBackgroundColor];
  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = v48;
  v49[4] = 0;
  v49[5] = v47;
  v50 = objc_allocWithZone(MEMORY[0x277D75348]);
  v138 = sub_2589C69C4;
  v139 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v135 = 1107296256;
  v136 = sub_258A52B54;
  v137 = &block_descriptor_8;
  v51 = _Block_copy(&aBlock);
  [v50 initWithDynamicProvider_];
  _Block_release(v51);

  v52 = sub_258B01F94();
  LOBYTE(v51) = sub_258B018D4();
  sub_258A536F4(0);
  v54 = v25 + *(v53 + 36);
  *v54 = v52;
  v54[8] = v51;
  v110 = type metadata accessor for StateOfMindTimeline.EntryFullView;
  v105 = a1;
  v55 = v129;
  sub_258A55A48(a1, v129, type metadata accessor for StateOfMindTimeline.EntryFullView);
  v109 = *(v109 + 80);
  v56 = (v109 + 16) & ~v109;
  v106 = v56;
  v57 = swift_allocObject();
  v108 = type metadata accessor for StateOfMindTimeline.EntryFullView;
  sub_258A55D04(v55, v57 + v56, type metadata accessor for StateOfMindTimeline.EntryFullView);
  v58 = (v25 + *(v22 + 36));
  *v58 = sub_258A558C4;
  v58[1] = v57;
  sub_258A4FA98(v13);
  v59 = &v13[*(v10 + 32)];
  v61 = *v59;
  v60 = *(v59 + 1);
  sub_258B003E4();
  sub_258A55D6C(v13, type metadata accessor for StateOfMindTimeline.DaySummary);
  aBlock = v61;
  v135 = v60;
  v62 = sub_258A54324();
  v63 = sub_2589BFF58();
  v64 = MEMORY[0x277D837D0];
  sub_258B01CB4();

  sub_258A55BF0(v25, sub_258A536C0);
  v65 = v116;
  v66 = v115;
  v67 = v117;
  (*(v116 + 104))(v115, *MEMORY[0x277CDDDC0], v117);
  aBlock = v22;
  v135 = v64;
  v136 = v62;
  v137 = v63;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = v107;
  v70 = v111;
  sub_258B01E24();
  (*(v65 + 8))(v66, v67);
  v71 = v70;
  (*(v112 + 8))(v29, v70);
  sub_258B024C4();
  v72 = MEMORY[0x277CE1340];
  v73 = MEMORY[0x277CE1350];
  v74 = v120;
  sub_258B010D4();
  sub_258A54614();
  v76 = v75;
  aBlock = v71;
  v135 = OpaqueTypeConformance2;
  v77 = swift_getOpaqueTypeConformance2();
  aBlock = v73;
  v135 = v72;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_258B024B4();
  v80 = v114;
  aBlock = v114;
  v135 = v79;
  v136 = v77;
  v137 = MEMORY[0x277CE1320];
  v81 = swift_getOpaqueTypeConformance2();
  v82 = v113;
  v83 = v124;
  sub_258B01F14();
  v84 = v74;
  v85 = v83;
  (*(v125 + 8))(v84, v83);
  (*(v118 + 8))(v69, v80);
  v86 = v105;
  v131 = v105;
  sub_258A54734();
  v88 = v87;
  aBlock = v80;
  v135 = v85;
  v136 = v76;
  v137 = v77;
  v138 = v78;
  v139 = v81;
  v125 = swift_getOpaqueTypeConformance2();
  sub_258A547E8();
  v90 = v89;
  v91 = sub_258A54E78(&qword_27F96F718, sub_258A547E8);
  aBlock = v90;
  v135 = v91;
  v92 = swift_getOpaqueTypeConformance2();
  v93 = v119;
  v94 = v121;
  v95 = v88;
  sub_258B01EE4();
  (*(v122 + 8))(v82, v94);
  v96 = v86 + *(v127 + 40);
  v97 = *v96;
  v98 = *(v96 + 8);
  v132 = v97;
  v133 = v98;
  sub_258A55AB0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v99 = v86;
  v100 = v129;
  sub_258A55A48(v99, v129, v110);
  v101 = v106;
  v102 = swift_allocObject();
  sub_258A55D04(v100, v102 + v101, v108);
  aBlock = v94;
  v135 = v95;
  v136 = v125;
  v137 = v92;
  swift_getOpaqueTypeConformance2();
  sub_258A54B54();
  v103 = v123;
  sub_258B01E94();

  return (*(v126 + 8))(v93, v103);
}

uint64_t sub_258A50F18@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v120 = a2;
  v3 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v4 = *(v3 - 8);
  v114 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v113 = v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258B01634();
  v111 = *(v7 - 8);
  v112 = v7;
  v8 = *(v111 + 64);
  MEMORY[0x28223BE20](v7);
  v110 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B024B4();
  v107 = *(v10 - 8);
  v108 = v10;
  v11 = *(v107 + 64);
  MEMORY[0x28223BE20](v10);
  v121 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  v104 = *(v13 - 8);
  v14 = *(v104 + 64);
  v15 = v13 - 8;
  v100 = v13 - 8;
  v103 = v14;
  MEMORY[0x28223BE20](v13 - 8);
  v17 = v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A53C30(0);
  v19 = *(v18 - 8);
  v105 = v18 - 8;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v22 = (v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A53B54();
  v24 = (v23 - 8);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A53AC8(0);
  v106 = v28;
  v29 = *(*(v28 - 1) + 64);
  MEMORY[0x28223BE20](v28);
  v109 = v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A53A44();
  v115 = *(v31 - 8);
  v116 = v31;
  v32 = *(v115 + 64);
  MEMORY[0x28223BE20](v31);
  v102 = v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A53A10(0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v119 = v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v117 = v98 - v38;
  v118 = sub_258A4FC50();
  sub_258B024F4();
  sub_258B00C94();
  v39 = (a1 + *(v15 + 36));
  v40 = a1;
  v41 = *v39;
  v42 = v39[1];
  v123 = v41;
  *&v124 = v42;
  v99 = MEMORY[0x277CE10B8];
  sub_258A55AB0(0, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  sub_258B02124();
  sub_258B024F4();
  sub_258B00854();
  v43 = _s13EntryBaseViewVMa();
  sub_258A4FA98(v22 + *(v43 + 20));
  sub_258B008B4();
  v45 = v44;
  *v22 = swift_getKeyPath();
  sub_258A55CA0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  v98[1] = v46;
  swift_storeEnumTagMultiPayload();
  *(v22 + *(v43 + 24)) = v45;
  KeyPath = swift_getKeyPath();
  sub_258A53C64();
  v49 = v22 + *(v48 + 36);
  *v49 = KeyPath;
  v49[8] = 1;
  v50 = sub_258B024F4();
  v52 = v51;
  v53 = v40;
  v101 = v40;
  sub_258A55A48(v40, v17, type metadata accessor for StateOfMindTimeline.EntryFullView);
  v54 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v55 = swift_allocObject();
  sub_258A55D04(v17, v55 + v54, type metadata accessor for StateOfMindTimeline.EntryFullView);
  v56 = (v22 + *(v105 + 44));
  *v56 = sub_258A55B70;
  v56[1] = v55;
  v56[2] = v50;
  v56[3] = v52;
  v57 = v121;
  sub_258B02494();
  v58 = v107;
  v59 = v108;
  (*(v107 + 16))(&v27[v24[19]], v57, v108);
  *v27 = 1;
  sub_258A55A48(v22, &v27[v24[20]], sub_258A53C30);
  v60 = &v27[v24[21]];
  v61 = v53 + *(v100 + 40);
  v62 = *v61;
  v63 = *(v61 + 8);
  v122[0] = v62;
  *&v122[8] = v63;
  sub_258A55AB0(0, &qword_27F96D310, MEMORY[0x277D839B0], v99);
  sub_258B02144();
  v64 = v123;
  v65 = v124;
  LOBYTE(v52) = BYTE8(v124);
  *v60 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v66 = v60 + *(_s15LogButtonFooterVMa() + 20);
  *v66 = v64;
  *(v66 + 1) = v65;
  v66[16] = v52;
  v67 = v106;
  v68 = &v27[v24[22]];
  *v122 = 0;
  sub_258B02114();
  v69 = v124;
  *v68 = v123;
  v68[1] = v69;
  v70 = &v27[v24[23]];
  *v122 = 0;
  sub_258B02114();
  (*(v58 + 8))(v121, v59);
  v71 = v124;
  *v70 = v123;
  v70[1] = v71;
  sub_258A55D6C(v22, sub_258A53C30);
  sub_258B024F4();
  sub_258B00C94();
  v72 = v109;
  sub_258A55D04(v27, v109, sub_258A53B54);
  v73 = (v72 + v67[9]);
  v74 = v149;
  v73[4] = v148;
  v73[5] = v74;
  v73[6] = v150;
  v75 = v145;
  *v73 = v144;
  v73[1] = v75;
  v76 = v147;
  v73[2] = v146;
  v73[3] = v76;
  v77 = v110;
  sub_258B01624();
  v78 = sub_258A54184();
  v79 = v102;
  sub_258B01D84();
  (*(v111 + 8))(v77, v112);
  sub_258A55D6C(v72, sub_258A53AC8);
  v80 = v113;
  sub_258A4FA98(v113);
  v81 = *(v80 + *(v114 + 44));
  sub_258B003E4();
  sub_258A55D6C(v80, type metadata accessor for StateOfMindTimeline.DaySummary);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v81 = sub_258A74828(0, *(v81 + 2) + 1, 1, v81);
  }

  v83 = *(v81 + 2);
  v82 = *(v81 + 3);
  if (v83 >= v82 >> 1)
  {
    v81 = sub_258A74828((v82 > 1), v83 + 1, 1, v81);
  }

  *(v81 + 2) = v83 + 1;
  v84 = &v81[16 * v83];
  *(v84 + 4) = 1685217603;
  *(v84 + 5) = 0xE400000000000000;
  v123 = &unk_2869D4670;
  v85 = sub_258B003E4();
  sub_2589FC8C8(v85);
  sub_258A55AB0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  v123 = v67;
  *&v124 = v78;
  swift_getOpaqueTypeConformance2();
  v86 = v116;
  v87 = v117;
  sub_258B01DD4();

  (*(v115 + 8))(v79, v86);
  v88 = v119;
  sub_2589B0814(v87, v119);
  v89 = v118;
  *v122 = v118;
  *&v122[56] = v140;
  *&v122[72] = v141;
  *&v122[88] = v142;
  *&v122[104] = v143;
  *&v122[8] = v137;
  *&v122[24] = v138;
  *&v122[40] = v139;
  *&v122[152] = v136;
  *&v122[136] = v135;
  *&v122[120] = v134;
  v90 = *&v122[16];
  v91 = v120;
  *v120 = *v122;
  v91[1] = v90;
  v92 = *&v122[80];
  v91[4] = *&v122[64];
  v91[5] = v92;
  v93 = *&v122[48];
  v91[2] = *&v122[32];
  v91[3] = v93;
  *(v91 + 20) = *&v122[160];
  v94 = *&v122[144];
  v91[8] = *&v122[128];
  v91[9] = v94;
  v95 = *&v122[112];
  v91[6] = *&v122[96];
  v91[7] = v95;
  sub_258A53914();
  sub_2589B0814(v88, v91 + *(v96 + 48));
  sub_258A55A48(v122, &v123, sub_258A53984);
  sub_258A55BF0(v87, sub_258A53A10);
  sub_258A55BF0(v88, sub_258A53A10);
  v123 = v89;
  v127 = v140;
  v128 = v141;
  v129 = v142;
  v130 = v143;
  v124 = v137;
  v125 = v138;
  v126 = v139;
  v133 = v136;
  v132 = v135;
  v131 = v134;
  return sub_258A55D6C(&v123, sub_258A53984);
}

uint64_t sub_258A51B58@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_258B012F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A4F654(v10);
  sub_258A55D6C(v10, type metadata accessor for StateOfMindTimeline.Styles);
  v11 = objc_opt_self();
  v12 = [v11 secondarySystemGroupedBackgroundColor];
  v13 = [v11 tertiarySystemGroupedBackgroundColor];
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = v13;
  v14[4] = 0;
  v14[5] = v12;
  v15 = objc_allocWithZone(MEMORY[0x277D75348]);
  v25 = sub_258A55DD0;
  v26 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_258A52B54;
  v24 = &block_descriptor_53;
  v16 = _Block_copy(&aBlock);
  [v15 initWithDynamicProvider_];
  _Block_release(v16);

  v17 = sub_258B01F94();
  aBlock = 0xD00000000000002CLL;
  v22 = 0x8000000258B377D0;
  sub_258B01524();
  sub_258B008D4();
  v19 = v18;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v17;
  a1[1] = v19;
  return result;
}

uint64_t sub_258A51E0C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for StateOfMindTimeline.EntryFullView() + 28));
  v5 = *v3;
  v6 = v3[1];
  sub_258A55AB0(0, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A51E9C()
{
  v0 = sub_258B024B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B024A4();
  sub_258A53550();
  v6 = v5;
  sub_258A53620();
  v8 = v7;
  sub_258A536C0(255);
  v10 = v9;
  v11 = sub_258A54324();
  v12 = sub_2589BFF58();
  v16 = v10;
  v17 = MEMORY[0x277D837D0];
  v18 = v11;
  v19 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  MEMORY[0x259C92300](v4, MEMORY[0x277D84F90], v6, v0, v14, MEMORY[0x277CE1320]);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_258A5202C(uint64_t a1)
{
  v2 = sub_258B01384();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258A547E8();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258B01334();
  v13 = a1;
  sub_258A54888(0, &qword_27F96F6F8, sub_258A548FC, MEMORY[0x277CDE470]);
  sub_258A5498C();
  sub_258B00784();
  v10 = sub_258A54E78(&qword_27F96F718, sub_258A547E8);
  MEMORY[0x259C91A00](v9, v5, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258A521FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v47 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v3 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_258B006A4();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v42 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = sub_258B026B4();
  v43 = *(v21 - 8);
  v44 = v21;
  v22 = *(v43 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A548FC(0);
  v49 = v25;
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v48 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A55A48(a1, &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindTimeline.EntryFullView);
  v28 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v29 = swift_allocObject();
  sub_258A55D04(&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for StateOfMindTimeline.EntryFullView);
  v30 = v42;
  sub_258B026A4();
  sub_258A4F654(v17);
  sub_258A55A48(&v17[*(v14 + 56)], v30, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258A55D6C(v17, type metadata accessor for StateOfMindTimeline.Styles);
  v31 = *(v10 + 36);
  v32 = v45;
  (*(v5 + 104))(v8, *MEMORY[0x277CDF3C0], v45);
  LOBYTE(v31) = sub_258B00694();
  (*(v5 + 8))(v8, v32);
  if (v31)
  {
    sub_258B02014();
    v33 = sub_258B02024();
  }

  else
  {
    v33 = sub_258B01FC4();
  }

  sub_258A55D6C(v30, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  v34 = v48;
  (*(v43 + 32))(v48, v24, v44);
  *(v34 + *(v49 + 36)) = v33;
  v35 = v46;
  sub_258A4FA98(v46);
  v36 = *(v35 + *(v47 + 36));
  sub_258B003E4();
  sub_258A55D6C(v35, type metadata accessor for StateOfMindTimeline.DaySummary);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_258A74828(0, *(v36 + 2) + 1, 1, v36);
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_258A74828((v37 > 1), v38 + 1, 1, v36);
  }

  *(v36 + 2) = v38 + 1;
  v39 = &v36[16 * v38];
  *(v39 + 4) = 0x74754265736F6C43;
  *(v39 + 5) = 0xEB000000006E6F74;
  v51 = &unk_2869D4670;
  v40 = sub_258B003E4();
  sub_2589FC8C8(v40);
  sub_258A55AB0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_258A54A6C();
  sub_258B01DD4();

  return sub_258A55D6C(v34, sub_258A548FC);
}

uint64_t sub_258A52800(uint64_t a1)
{
  v2 = sub_258B00F84();
  v21 = *(v2 - 8);
  v22 = v2;
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CDD848];
  v7 = MEMORY[0x277CDF458];
  sub_258A55CA0(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v21 - v10);
  v12 = sub_258B008A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  sub_258A55B00(a1 + *(v17 + 36), v11, &qword_27F96C968, v6, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v16, v11, v12);
  }

  else
  {
    v18 = *v11;
    sub_258B02E94();
    v19 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v21 + 8))(v5, v22);
  }

  sub_258B00894();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_258A52AB0()
{
  sub_258A52C0C();
  sub_258A54E78(&qword_27F96F728, sub_258A52C0C);
  return sub_258B00B24();
}

id sub_258A52B54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_258A52BBC@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() systemGroupedBackgroundColor];
  result = sub_258B01F94();
  *a1 = result;
  return result;
}

void sub_258A52C0C()
{
  if (!qword_27F96F570)
  {
    sub_258A52EC0();
    sub_258A53158();
    sub_258A533AC();
    sub_258A54734();
    sub_258A53550();
    sub_2589EC7FC();
    sub_258A54614();
    sub_258A53620();
    sub_258A536C0(255);
    sub_258A54324();
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A547E8();
    sub_258A54E78(&qword_27F96F718, sub_258A547E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A54B54();
    swift_getOpaqueTypeConformance2();
    v0 = sub_258B009C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F570);
    }
  }
}

void sub_258A52EC0()
{
  if (!qword_27F96F578)
  {
    sub_258A53158();
    sub_258A533AC();
    sub_258A54734();
    sub_258A53550();
    sub_2589EC7FC();
    sub_258A54614();
    sub_258A53620();
    sub_258A536C0(255);
    sub_258A54324();
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A547E8();
    sub_258A54E78(&qword_27F96F718, sub_258A547E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A54B54();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F578);
    }
  }
}

void sub_258A53158()
{
  if (!qword_27F96F580)
  {
    sub_258A533AC();
    sub_258A54734();
    sub_258A53550();
    sub_2589EC7FC();
    sub_258A54614();
    sub_258A53620();
    sub_258A536C0(255);
    sub_258A54324();
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A547E8();
    sub_258A54E78(&qword_27F96F718, sub_258A547E8);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F580);
    }
  }
}

void sub_258A533AC()
{
  if (!qword_27F96F588)
  {
    sub_258A53550();
    sub_2589EC7FC();
    sub_258A54614();
    sub_258A53620();
    sub_258A536C0(255);
    sub_258A54324();
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F588);
    }
  }
}

void sub_258A53550()
{
  if (!qword_27F96F590)
  {
    sub_258A53620();
    sub_258A536C0(255);
    sub_258A54324();
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F590);
    }
  }
}

void sub_258A53620()
{
  if (!qword_27F96F598)
  {
    sub_258A536C0(255);
    sub_258A54324();
    sub_2589BFF58();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F598);
    }
  }
}

void sub_258A53730(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A54938(255, a4, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], a5);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258A537EC()
{
  if (!qword_27F96F5B8)
  {
    sub_258A53880();
    sub_258A54938(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F5B8);
    }
  }
}

void sub_258A53880()
{
  if (!qword_27F96F5C0)
  {
    sub_258A55CA0(255, &qword_27F96F5C8, sub_258A53914, MEMORY[0x277CE14B8]);
    sub_258A54234();
    v0 = sub_258B022E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F5C0);
    }
  }
}

void sub_258A53914()
{
  if (!qword_27F96F5D0)
  {
    sub_258A53984();
    sub_258A53A10(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96F5D0);
    }
  }
}

void sub_258A53984()
{
  if (!qword_27F96F5D8)
  {
    sub_258A54938(255, &qword_27F96F5E0, MEMORY[0x277CE0F78], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F5D8);
    }
  }
}

void sub_258A53A44()
{
  if (!qword_27F96F5F0)
  {
    sub_258A53AC8(255);
    sub_258A54184();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F5F0);
    }
  }
}

void sub_258A53AF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A53B54()
{
  if (!qword_27F96F600)
  {
    sub_258A53C30(255);
    _s15LogButtonFooterVMa();
    sub_258B024B4();
    sub_258A53FA8();
    sub_258A54E78(&qword_27F96F688, _s15LogButtonFooterVMa);
    v0 = type metadata accessor for ScrollableWithPinnedFooter();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F600);
    }
  }
}

void sub_258A53C64()
{
  if (!qword_27F96F610)
  {
    _s13EntryBaseViewVMa();
    sub_258A55AB0(255, &qword_27F96F618, &type metadata for StateOfMindTimelinePresentationContext, MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F610);
    }
  }
}

void sub_258A53CF0()
{
  if (!qword_27F96F620)
  {
    sub_258A53D84();
    sub_258A54E78(&qword_27F96F658, sub_258A53D84);
    v0 = sub_258B01294();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F620);
    }
  }
}

void sub_258A53D84()
{
  if (!qword_27F96F628)
  {
    sub_258A53DE8();
    sub_258A53EF8();
    v0 = sub_258B009C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F628);
    }
  }
}

void sub_258A53DE8()
{
  if (!qword_27F96F630)
  {
    sub_258A53E48();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F630);
    }
  }
}

void sub_258A53E48()
{
  if (!qword_27F96F638)
  {
    sub_258A53EA4();
    v0 = sub_258B01644();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F638);
    }
  }
}

unint64_t sub_258A53EA4()
{
  result = qword_27F96F640;
  if (!qword_27F96F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F640);
  }

  return result;
}

unint64_t sub_258A53EF8()
{
  result = qword_27F96F648;
  if (!qword_27F96F648)
  {
    sub_258A53DE8();
    sub_258A54E78(&qword_27F96F650, sub_258A53E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F648);
  }

  return result;
}

unint64_t sub_258A53FA8()
{
  result = qword_27F96F660;
  if (!qword_27F96F660)
  {
    sub_258A53C30(255);
    sub_258A54058();
    sub_258A54E78(&qword_27F96F680, sub_258A53CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F660);
  }

  return result;
}

unint64_t sub_258A54058()
{
  result = qword_27F96F668;
  if (!qword_27F96F668)
  {
    sub_258A53C64();
    sub_258A54E78(&qword_27F96F670, _s13EntryBaseViewVMa);
    sub_258A54108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F668);
  }

  return result;
}

unint64_t sub_258A54108()
{
  result = qword_27F96F678;
  if (!qword_27F96F678)
  {
    sub_258A55AB0(255, &qword_27F96F618, &type metadata for StateOfMindTimelinePresentationContext, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F678);
  }

  return result;
}

unint64_t sub_258A54184()
{
  result = qword_27F96F690;
  if (!qword_27F96F690)
  {
    sub_258A53AC8(255);
    sub_258A54E78(&qword_27F96F698, sub_258A53B54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F690);
  }

  return result;
}

unint64_t sub_258A54234()
{
  result = qword_27F96F6A0;
  if (!qword_27F96F6A0)
  {
    sub_258A55CA0(255, &qword_27F96F5C8, sub_258A53914, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F6A0);
  }

  return result;
}

void sub_258A542BC()
{
  if (!qword_27F96F6A8)
  {
    sub_258A53EA4();
    sub_2589D2E7C();
    v0 = sub_258B01604();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F6A8);
    }
  }
}

unint64_t sub_258A54324()
{
  result = qword_27F96F6B0;
  if (!qword_27F96F6B0)
  {
    sub_258A536C0(255);
    sub_258A543D4();
    sub_258A54E78(&qword_27F96F6D8, sub_258A542BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F6B0);
  }

  return result;
}

unint64_t sub_258A543D4()
{
  result = qword_27F96F6B8;
  if (!qword_27F96F6B8)
  {
    sub_258A536F4(255);
    sub_258A5448C();
    sub_258A545BC(&qword_27F96DEE0, &qword_27F96DED0, MEMORY[0x277CE0718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F6B8);
  }

  return result;
}

unint64_t sub_258A5448C()
{
  result = qword_27F96F6C0;
  if (!qword_27F96F6C0)
  {
    sub_258A537C4(255);
    sub_258A5450C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F6C0);
  }

  return result;
}

unint64_t sub_258A5450C()
{
  result = qword_27F96F6C8;
  if (!qword_27F96F6C8)
  {
    sub_258A537EC();
    sub_258A54E78(&qword_27F96F6D0, sub_258A53880);
    sub_258A4DA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F6C8);
  }

  return result;
}

uint64_t sub_258A545BC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258A54938(255, a2, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258A54614()
{
  if (!qword_27F96F6E0)
  {
    sub_258A53550();
    sub_258B024B4();
    sub_258A53620();
    sub_258A536C0(255);
    sub_258A54324();
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F6E0);
    }
  }
}

void sub_258A54734()
{
  if (!qword_27F96F6E8)
  {
    sub_258A547E8();
    sub_258A54E78(&qword_27F96F718, sub_258A547E8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F6E8);
    }
  }
}

void sub_258A547E8()
{
  if (!qword_27F96F6F0)
  {
    sub_258A54888(255, &qword_27F96F6F8, sub_258A548FC, MEMORY[0x277CDE470]);
    sub_258A5498C();
    v0 = sub_258B00794();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F6F0);
    }
  }
}

void sub_258A54888(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A54938(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A5498C()
{
  result = qword_27F96F708;
  if (!qword_27F96F708)
  {
    sub_258A54888(255, &qword_27F96F6F8, sub_258A548FC, MEMORY[0x277CDE470]);
    sub_258A54A6C();
    sub_258A54E78(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F708);
  }

  return result;
}

unint64_t sub_258A54A6C()
{
  result = qword_27F96F710;
  if (!qword_27F96F710)
  {
    sub_258A548FC(255);
    sub_258A54E78(&qword_27F96D6D8, MEMORY[0x277D12688]);
    sub_258A545BC(&qword_27F96C930, &qword_27F96C860, MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F710);
  }

  return result;
}

unint64_t sub_258A54B54()
{
  result = qword_27F96F720;
  if (!qword_27F96F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F720);
  }

  return result;
}

void sub_258A54BEC()
{
  sub_258A55CA0(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258A55CA0(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_258A54DE4();
      if (v2 <= 0x3F)
      {
        sub_258A55AB0(319, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_258A55AB0(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_258A55CA0(319, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_258A55AB0(319, &qword_27F96F748, MEMORY[0x277CE0F78], MEMORY[0x277CDF468]);
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

void sub_258A54DE4()
{
  if (!qword_27F96F740)
  {
    type metadata accessor for StateOfMindTimeline.Model();
    sub_258A54E78(&qword_27F96F568, type metadata accessor for StateOfMindTimeline.Model);
    v0 = sub_258B00A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F740);
    }
  }
}

uint64_t sub_258A54E78(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A54EC0()
{
  if (!qword_27F96F758)
  {
    sub_258B00A14();
    sub_258A52C0C();
    sub_258A54E78(&qword_27F96F728, sub_258A52C0C);
    v0 = sub_258B00B34();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F758);
    }
  }
}

uint64_t sub_258A54F7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StateOfMindTimeline.EntryFullView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_258A50298(v4, a1);
}

void sub_258A54FFC()
{
  if (!qword_27F96F760)
  {
    sub_258A55CA0(255, &qword_27F96F5C8, sub_258A53914, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F760);
    }
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + ((v2 + 16) & ~v2));
  sub_258A55CA0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = v1;
    v5 = sub_258B01504();
    v6 = *(v5 - 8);
    v7 = *(v6 + 48);
    if (!v7(v4, 1, v5))
    {
      (*(v6 + 8))(v4, v5);
    }

    v8 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v9 = *(v8 + 20);
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 8);
    v12 = &v4[v9];
    v13 = v8;
    v11(v12, v10);
    v14 = *(v8 + 28);
    v15 = sub_258B006A4();
    v54 = *(*(v15 - 8) + 8);
    v55 = v15;
    v54(&v4[v14]);
    v16 = &v4[v13[8]];
    if (!v7(v16, 1, v5))
    {
      (*(v6 + 8))(v16, v5);
    }

    v17 = _s6StylesV8TimelineVMa(0);
    v11(&v16[*(v17 + 20)], v10);
    v18 = &v4[v13[9]];
    if (!v7(v18, 1, v5))
    {
      (*(v6 + 8))(v18, v5);
    }

    v19 = _s6StylesV6NoDataVMa(0);
    v11(&v18[*(v19 + 20)], v10);
    v20 = &v4[v13[10]];
    if (!v7(v20, 1, v5))
    {
      (*(v6 + 8))(v20, v5);
    }

    v21 = _s6StylesV11PlaceholderVMa(0);
    v11(&v20[*(v21 + 20)], v10);
    v22 = &v4[v13[11]];
    if (!v7(v22, 1, v5))
    {
      (*(v6 + 8))(v22, v5);
    }

    v23 = _s6StylesV6SymbolVMa(0);
    v11(&v22[*(v23 + 20)], v10);
    v24 = &v4[v13[12]];
    v57 = v13;
    if (!v7(v24, 1, v5))
    {
      (*(v6 + 8))(v24, v5);
    }

    v25 = v6;
    v26 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v11(&v24[*(v26 + 20)], v10);
    v27 = *(v26 + 28);
    v28 = v25;
    (v54)(&v24[v27], v55);
    v29 = &v4[v57[13]];
    if (!v7(v29, 1, v5))
    {
      (*(v28 + 8))(v29, v5);
    }

    v30 = _s6StylesV5EmptyVMa(0);
    v11(&v29[*(v30 + 20)], v10);
    v31 = &v4[v57[14]];
    v32 = v10;
    if (!v7(v31, 1, v5))
    {
      (*(v28 + 8))(v31, v5);
    }

    v33 = _s6StylesV5DailyVMa(0);
    v11(&v31[*(v33 + 20)], v10);
    v34 = &v4[v57[15]];
    if (!v7(v34, 1, v5))
    {
      (*(v28 + 8))(v34, v5);
    }

    v35 = _s6StylesV9MomentaryVMa(0);
    v11(&v34[*(v35 + 20)], v10);
    v36 = &v4[v57[16]];
    if (!v7(v36, 1, v5))
    {
      (*(v28 + 8))(v36, v5);
    }

    v37 = _s6StylesV6HeaderVMa(0);
    v11(&v36[*(v37 + 20)], v10);
    v38 = &v4[v57[17]];
    if (!v7(v38, 1, v5))
    {
      (*(v28 + 8))(v38, v5);
    }

    v39 = _s6StylesV11ChartButtonVMa(0);
    v11(&v38[*(v39 + 20)], v10);
    v40 = &v4[v57[18]];
    if (!v7(v40, 1, v5))
    {
      (*(v28 + 8))(v40, v5);
    }

    v41 = _s6StylesV15LogButtonFooterVMa(0);
    v11(&v40[*(v41 + 20)], v32);
    v1 = v56;
  }

  else
  {
    v42 = *v4;
  }

  v43 = v1[5];
  sub_258A55CA0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = sub_258B006A4();
    (*(*(v44 - 8) + 8))(&v4[v43], v44);
  }

  else
  {
    v45 = *&v4[v43];
  }

  v46 = *&v4[v1[6] + 8];

  v47 = *&v4[v1[7] + 8];

  v48 = *&v4[v1[8] + 8];

  v49 = v1[9];
  sub_258A55CA0(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = sub_258B008A4();
    (*(*(v50 - 8) + 8))(&v4[v49], v50);
  }

  else
  {
    v51 = *&v4[v49];
  }

  v52 = *&v4[v1[10]];

  return swift_deallocObject();
}

uint64_t sub_258A558C4(uint64_t *a1)
{
  v3 = *(type metadata accessor for StateOfMindTimeline.EntryFullView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_258A51E0C(a1, v4);
}

void *sub_258A5593C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  v4 = *(v1 + *(v3 + 24) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + 8);
  result = sub_258A79B58();
  *a1 = sub_258A559D8;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_2589C04F4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_258A559E8()
{
  v1 = *(type metadata accessor for StateOfMindTimeline.EntryFullView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258A52800(v2);
}

uint64_t sub_258A55A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A55AB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A55B00(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_258A55CA0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_258A55B70@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*(type metadata accessor for StateOfMindTimeline.EntryFullView() - 8) + 80);

  return sub_258A51B58(a1);
}

uint64_t sub_258A55BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_23Tm()
{

  return swift_deallocObject();
}

void sub_258A55CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A55D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A55D6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A55DDC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_258B00B04();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = sub_258B00B04();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = sub_258B00B04();
  v22 = *(v12 - 8);
  v13 = *(v22 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  sub_258B024F4();
  sub_258B01E84();
  sub_258B01864();
  v28 = a1;
  v29 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  sub_258B01ED4();
  (*(v4 + 8))(v7, v3);
  sub_258B01894();
  v17 = MEMORY[0x277CDF918];
  v26 = WitnessTable;
  v27 = MEMORY[0x277CDF918];
  v18 = swift_getWitnessTable();
  sub_258B01ED4();
  (*(v21 + 8))(v11, v8);
  sub_258B024F4();
  v24 = v18;
  v25 = v17;
  swift_getWitnessTable();
  sub_258B01E84();
  return (*(v22 + 8))(v15, v12);
}

uint64_t sub_258A5615C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_258B00C34();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A5637C(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    v12 = 26.0;
  }

  else
  {
    v12 = 14.0;
  }

  v13 = *(v3 + 28);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_258B010C4();
  (*(*(v15 - 8) + 104))(v6 + v13, v14, v15);
  *v6 = v12;
  v6[1] = v12;
  v16 = [objc_opt_self() systemGray6Color];
  v17 = sub_258B01F94();
  sub_258A564C8(v6, v11, MEMORY[0x277CDFC08]);
  *&v11[*(v8 + 44)] = v17;
  sub_258A56408(0, &qword_27F96F770, sub_258A5637C, type metadata accessor for LoggingFlowBlendMode);
  v19 = *(v18 + 36);
  *(a1 + v19) = swift_getKeyPath();
  sub_258A56544(0, &qword_27F96C908, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  return sub_258A564C8(v11, a1, sub_258A5637C);
}

void sub_258A563B0()
{
  if (!qword_27F96C860)
  {
    v0 = sub_258B015C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C860);
    }
  }
}

void sub_258A56408(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for LoggingFlowBlendMode()
{
  result = qword_27F96F778;
  if (!qword_27F96F778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258A564C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258A56544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_258B006A4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_258A565B8()
{
  sub_258A56544(319, &qword_27F96C7E0, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_258A56680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v3 = sub_258B006A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = sub_258B02554();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AC14E8(v10);
  (*(v4 + 104))(v8, *MEMORY[0x277CDF3C0], v3);
  v16 = sub_258B00694();
  v17 = *(v4 + 8);
  v17(v8, v3);
  v17(v10, v3);
  v18 = MEMORY[0x277CE13B8];
  if ((v16 & 1) == 0)
  {
    v18 = MEMORY[0x277CE13B0];
  }

  (*(v12 + 104))(v15, *v18, v11);
  sub_258A56408(0, &qword_27F96F788, sub_258A56914, MEMORY[0x277CDFC38]);
  (*(v12 + 32))(a2 + *(v19 + 36), v15, v11);
  sub_258A56914();
  return (*(*(v20 - 8) + 16))(a2, v23, v20);
}

void sub_258A56914()
{
  if (!qword_27F96F790)
  {
    type metadata accessor for LoggingFlowBlendMode();
    sub_258A56A88(&qword_27F96F550, type metadata accessor for LoggingFlowBlendMode);
    v0 = sub_258B01464();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F790);
    }
  }
}

unint64_t sub_258A569A8()
{
  result = qword_27F96F798;
  if (!qword_27F96F798)
  {
    sub_258A56408(255, &qword_27F96F788, sub_258A56914, MEMORY[0x277CDFC38]);
    sub_258A56A88(&qword_27F96F7A0, sub_258A56914);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F798);
  }

  return result;
}

uint64_t sub_258A56A88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A56AD0()
{
  sub_258A56D20();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258AFFE44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() internalHealthSettingsURLString];
  sub_258B02B14();

  sub_258AFFE34();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_258A570E0(v3, sub_258A56D20);
  }

  (*(v5 + 32))(v8, v3, v4);
  v11 = [objc_opt_self() defaultWorkspace];
  if (v11)
  {
    v12 = v11;
    v13 = sub_258AFFE14();
    sub_258AD6068(MEMORY[0x277D84F90]);
    v14 = sub_258B029E4();

    [v12 openSensitiveURL:v13 withOptions:v14];
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_258A56D20()
{
  if (!qword_280DF8F90)
  {
    sub_258AFFE44();
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF8F90);
    }
  }
}

unint64_t sub_258A56D8C()
{
  result = qword_27F96F7A8;
  if (!qword_27F96F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F7A8);
  }

  return result;
}

BOOL sub_258A56DE0()
{
  v0 = sub_258B00384();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B02AD4();
  v6 = *MEMORY[0x277D28018];
  v7 = HKObjectForNanoPreferencesUserDefaultsKey();

  if (v7)
  {
    sub_258B03104();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (!*(&v22 + 1))
  {
    sub_258A570E0(v23, sub_258A3F06C);
    goto LABEL_13;
  }

  sub_258A57140();
  if (swift_dynamicCast())
  {
    v8 = v20[1];
    v9 = *MEMORY[0x277CF33F8];
    v10 = sub_258B02B14();
    if (*(v8 + 16))
    {
      v12 = sub_258AD5508(v10, v11);
      v14 = v13;

      if (v14)
      {
        sub_2589F44D0(*(v8 + 56) + 32 * v12, v23);

        if (swift_dynamicCast())
        {
          return v21 != 0;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

LABEL_13:
  sub_258B00364();
  v16 = sub_258B00374();
  v17 = sub_258B02EA4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v23[0] = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_2589F1F78(0xD00000000000001BLL, 0x8000000258B37820, v23);
    _os_log_impl(&dword_2589A1000, v16, v17, "[%{public}s] Could not fetch Mindfulness App Settings from BulletinBoard.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x259C945C0](v19, -1, -1);
    MEMORY[0x259C945C0](v18, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_258A570E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A57140()
{
  if (!qword_27F96F7B0)
  {
    v0 = sub_258B02A04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F7B0);
    }
  }
}

uint64_t sub_258A571A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_258A571EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258A57260@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_258A580B0(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A580D8(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = sub_258B01004();
  *(v13 + 1) = 0x4000000000000000;
  v13[16] = 0;
  sub_258A5886C();
  sub_258A574DC(v2, &v13[*(v14 + 44)]);
  LOBYTE(v2) = sub_258B018D4();
  sub_258B00654();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_258A58164(0);
  v24 = &v13[*(v23 + 36)];
  *v24 = v2;
  *(v24 + 1) = v16;
  *(v24 + 2) = v18;
  *(v24 + 3) = v20;
  *(v24 + 4) = v22;
  v24[40] = 0;
  LOBYTE(v2) = sub_258B01864();
  sub_258B00654();
  v25 = &v13[*(v10 + 44)];
  *v25 = v2;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_258B02504();
  sub_258B00C94();
  sub_2589B09B4(v13, v8);
  v30 = &v8[*(v5 + 44)];
  v31 = v42[5];
  *(v30 + 4) = v42[4];
  *(v30 + 5) = v31;
  *(v30 + 6) = v42[6];
  v32 = v42[1];
  *v30 = v42[0];
  *(v30 + 1) = v32;
  v33 = v42[3];
  *(v30 + 2) = v42[2];
  *(v30 + 3) = v33;
  v34 = sub_258B024F4();
  v36 = v35;
  sub_258A58904(0, &qword_27F96F850, sub_258A580B0, sub_258A58978);
  v38 = a1 + *(v37 + 36);
  sub_258A5615C(v38);
  sub_258A58CE8(v13, sub_258A580D8);
  sub_258A58978();
  v40 = (v38 + *(v39 + 36));
  *v40 = v34;
  v40[1] = v36;
  return sub_2589B0A18(v8, a1);
}

uint64_t sub_258A574DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v95 = a2;
  sub_258A58750();
  v92 = *(v3 - 8);
  v93 = v3;
  v4 = *(v92 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A586EC(0, &qword_27F96F828, sub_258A58750, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v94 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = &v67 - v10;
  v87 = sub_258B00774();
  v86 = *(v87 - 8);
  v11 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A58A0C(0, &qword_27F96F808, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
  v79 = v13;
  v78 = *(v13 - 8);
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v13);
  v77 = &v67 - v15;
  sub_258A58378();
  v81 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v80 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A58344(0);
  v83 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v84 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A582C0();
  v89 = *(v22 - 8);
  v90 = v22;
  v23 = *(v89 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v88 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v82 = &v67 - v26;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v102 = sub_258AFFD94();
  v103 = v27;
  v74 = *a1;
  v75 = *(a1 + 8);
  v104 = *(a1 + 16);
  v99 = v74;
  v100 = v75;
  v101 = *(a1 + 16);
  sub_258A58C98(0, &qword_27F96E0C0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
  v76 = v28;
  sub_258B02334();
  v72 = *(&v96 + 1);
  v73 = v96;
  v71 = v97;
  v70 = v98;
  v99 = sub_258AFFD94();
  v100 = v29;
  v69 = sub_2589BFF58();
  v30 = sub_258B01B44();
  v32 = v31;
  v34 = v33;
  v35 = [objc_opt_self() secondaryLabelColor];
  v99 = sub_258B01F94();
  sub_258B01AB4();
  sub_2589BFFAC(v30, v32, v34 & 1);

  v36 = v77;
  sub_258B02564();
  v37 = v74;
  v105 = v74;
  v96 = v104;
  v38 = swift_allocObject();
  v39 = *(a1 + 16);
  *(v38 + 16) = *a1;
  *(v38 + 32) = v39;
  *(v38 + 48) = *(a1 + 32);
  sub_2589DE784(&v105, &v99);
  v40 = v75;

  sub_2589DE8C8(&v96, &v99);
  sub_258A584BC();
  v41 = v80;
  v42 = v79;
  sub_258B01D74();

  (*(v78 + 8))(v36, v42);
  *(v41 + *(v81 + 36)) = sub_258B014A4();
  v99 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5398);
  sub_258A58C98(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D53B8);
  sub_258A585F0();
  v43 = v84;
  sub_258B01DD4();

  sub_258A58CE8(v41, sub_258A58378);
  v44 = v85;
  sub_258B00764();
  sub_258A58540();
  v45 = v82;
  sub_258B01C14();
  (*(v86 + 8))(v44, v87);
  sub_258A58CE8(v43, sub_258A58344);
  v99 = v37;
  v100 = v40;
  v101 = v104;
  MEMORY[0x259C92900](&v102, v76);
  v47 = v102;
  v46 = v103;

  v48 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v48 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    v49 = swift_allocObject();
    v50 = *(a1 + 16);
    *(v49 + 16) = *a1;
    *(v49 + 32) = v50;
    *(v49 + 48) = *(a1 + 32);
    sub_2589DE784(&v105, &v99);

    sub_2589DE8C8(&v96, &v99);
    v51 = v68;
    sub_258B02174();
    v52 = sub_258B02044();
    KeyPath = swift_getKeyPath();
    v54 = v93;
    v55 = (v51 + *(v93 + 36));
    *v55 = KeyPath;
    v55[1] = v52;
    v56 = v91;
    sub_258A58D98(v51, v91);
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v54 = v93;
    v56 = v91;
  }

  (*(v92 + 56))(v56, v57, 1, v54);
  v59 = v89;
  v58 = v90;
  v60 = *(v89 + 16);
  v61 = v88;
  v60(v88, v45, v90);
  v62 = v94;
  sub_258A58DFC(v56, v94);
  v63 = v95;
  v60(v95, v61, v58);
  sub_258A58220();
  sub_258A58DFC(v62, &v63[*(v64 + 48)]);
  sub_258A58E90(v56);
  v65 = *(v59 + 8);
  v65(v45, v58);
  sub_258A58E90(v62);
  return (v65)(v61, v58);
}

uint64_t sub_258A57F48(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v10 = *(a1 + 1);
  v11 = v10;
  v12 = v2;
  v6 = v2;
  v7 = v1;
  v8 = *(a1 + 1);
  sub_2589DE784(&v12, v4);

  sub_2589DE8C8(&v11, v4);
  sub_258A58C98(0, &qword_27F96E0C0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v9);
  sub_258B02BE4();
  v4[0] = v2;
  v4[1] = v1;
  v5 = v10;
  sub_258B02314();
  sub_258A4A7C8(&v12);

  return sub_2589C68A0(&v11);
}

uint64_t sub_258A58034@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B02084();
  *a1 = result;
  return result;
}

uint64_t sub_258A58074@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_258A57260(a1);
}

void sub_258A58100(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A5818C()
{
  if (!qword_27F96F7D0)
  {
    sub_258A586EC(255, &qword_27F96F7D8, sub_258A58220, MEMORY[0x277CE14B8]);
    sub_258A587E4();
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F7D0);
    }
  }
}

void sub_258A58220()
{
  if (!qword_27F96F7E0)
  {
    sub_258A582C0();
    sub_258A586EC(255, &qword_27F96F828, sub_258A58750, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96F7E0);
    }
  }
}

void sub_258A582C0()
{
  if (!qword_27F96F7E8)
  {
    sub_258A58344(255);
    sub_258A58540();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F7E8);
    }
  }
}

void sub_258A58378()
{
  if (!qword_27F96F7F8)
  {
    sub_258A5840C();
    sub_258A58A0C(255, &qword_27F96F3D8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F7F8);
    }
  }
}

void sub_258A5840C()
{
  if (!qword_27F96F800)
  {
    sub_258A58A0C(255, &qword_27F96F808, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
    sub_258A584BC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F800);
    }
  }
}

unint64_t sub_258A584BC()
{
  result = qword_27F96F810;
  if (!qword_27F96F810)
  {
    sub_258A58A0C(255, &qword_27F96F808, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F810);
  }

  return result;
}

unint64_t sub_258A58540()
{
  result = qword_27F96F818;
  if (!qword_27F96F818)
  {
    sub_258A58344(255);
    sub_258A585F0();
    sub_258A591A0(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F818);
  }

  return result;
}

unint64_t sub_258A585F0()
{
  result = qword_27F96F820;
  if (!qword_27F96F820)
  {
    sub_258A58378();
    sub_258A58A0C(255, &qword_27F96F808, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
    sub_258A584BC();
    swift_getOpaqueTypeConformance2();
    sub_258A58C10(&qword_27F96F3E8, &qword_27F96F3D8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F820);
  }

  return result;
}

void sub_258A586EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A58750()
{
  if (!qword_27F96F830)
  {
    sub_258A58A0C(255, &qword_27F96F838, MEMORY[0x277CE1088], MEMORY[0x277CE1078], MEMORY[0x277CDF020]);
    sub_2589D3448();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F830);
    }
  }
}

unint64_t sub_258A587E4()
{
  result = qword_27F96F840;
  if (!qword_27F96F840)
  {
    sub_258A586EC(255, &qword_27F96F7D8, sub_258A58220, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F840);
  }

  return result;
}

void sub_258A5886C()
{
  if (!qword_27F96F848)
  {
    sub_258A586EC(255, &qword_27F96F7D8, sub_258A58220, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F848);
    }
  }
}

void sub_258A58904(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A58978()
{
  if (!qword_27F96F858)
  {
    sub_258A58904(255, &qword_27F96F770, sub_258A5637C, type metadata accessor for LoggingFlowBlendMode);
    sub_258A58A60();
    v0 = sub_258B01294();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F858);
    }
  }
}

void sub_258A58A0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A58A60()
{
  result = qword_27F96F860;
  if (!qword_27F96F860)
  {
    sub_258A58904(255, &qword_27F96F770, sub_258A5637C, type metadata accessor for LoggingFlowBlendMode);
    sub_258A58B40();
    sub_258A591A0(&qword_27F96F550, type metadata accessor for LoggingFlowBlendMode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F860);
  }

  return result;
}

unint64_t sub_258A58B40()
{
  result = qword_27F96F868;
  if (!qword_27F96F868)
  {
    sub_258A5637C(255);
    sub_258A591A0(&qword_27F96CA88, MEMORY[0x277CDFC08]);
    sub_258A58C10(&qword_27F96C930, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F868);
  }

  return result;
}

uint64_t sub_258A58C10(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_258A58A0C(255, a2, a3, a4, MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258A58C98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A58CE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_13()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_258A58D98(uint64_t a1, uint64_t a2)
{
  sub_258A58750();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A58DFC(uint64_t a1, uint64_t a2)
{
  sub_258A586EC(0, &qword_27F96F828, sub_258A58750, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A58E90(uint64_t a1)
{
  sub_258A586EC(0, &qword_27F96F828, sub_258A58750, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258A58F1C()
{
  result = qword_27F96F870;
  if (!qword_27F96F870)
  {
    sub_258A58904(255, &qword_27F96F850, sub_258A580B0, sub_258A58978);
    sub_258A59070(&qword_27F96F878, sub_258A580B0, sub_258A59034);
    sub_258A591A0(&qword_27F96F898, sub_258A58978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F870);
  }

  return result;
}

uint64_t sub_258A59070(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A590F0()
{
  result = qword_27F96F888;
  if (!qword_27F96F888)
  {
    sub_258A58164(255);
    sub_258A591A0(&qword_27F96F890, sub_258A5818C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F888);
  }

  return result;
}

uint64_t sub_258A591A0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_258A59204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_258A5924C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258A592D0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  sub_258A5AF2C();
  v39 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A155A0();
  v41 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A5AFC4();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v1;
  v12 = *(v1 + 32);
  v13 = *(v1 + 40);
  v49 = v12;
  v50 = v13;
  v36 = sub_2589BFF58();
  sub_258B003E4();
  v14 = MEMORY[0x277D837D0];
  v15 = sub_258B01B44();
  v17 = v16;
  v49 = v15;
  v50 = v16;
  v19 = v18 & 1;
  v51 = v18 & 1;
  v52 = v20;
  *&v48 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D53C8);
  sub_258A5B850(0, &qword_280DF8948, v14, MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v15, v17, v19);

  v21 = v37;
  v22 = *(v37 + 88);
  v49 = *(v37 + 80);
  v50 = v22;
  sub_258B003E4();
  v23 = sub_258B01B44();
  v25 = v24;
  v49 = v23;
  v50 = v24;
  v27 = v26 & 1;
  v51 = v26 & 1;
  v52 = v28;
  *&v48 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5408);
  sub_258B02A34();

  swift_arrayDestroy();
  v29 = v38;
  sub_258B01DD4();
  sub_2589BFFAC(v23, v25, v27);

  v30 = &v29[*(v39 + 36)];
  sub_258A5B580(0, &qword_27F96F8A8, MEMORY[0x277CDFCA0], MEMORY[0x277CE0860]);
  v32 = v30 + *(v31 + 28);
  sub_258B00CD4();
  *v30 = swift_getKeyPath();
  v47 = v21;
  sub_258A5B580(0, &qword_27F96F8B8, sub_258A5B074, MEMORY[0x277CE14B8]);
  sub_258A5B2D4();
  sub_258A5B6C0();
  sub_258A5B748();
  v33 = v40;
  sub_258B02414();
  v48 = *(v21 + 16);
  sub_258A5B850(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v46 = v21;
  sub_258A5B8C4();
  v34 = v42;
  sub_258B01E64();

  return (*(v43 + 8))(v33, v34);
}

uint64_t sub_258A59814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  sub_258A5B47C();
  v95 = v3;
  v94 = *(v3 - 8);
  v4 = *(v94 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v93 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v99 = &v80 - v7;
  sub_258A5B1E4();
  v9 = v8;
  v10 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A5B160();
  v89 = v13;
  v100 = *(v13 - 8);
  v14 = v100[8];
  MEMORY[0x28223BE20](v13);
  v80 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A5B0F8();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v91 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v98 = &v80 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v96 = &v80 - v23;
  MEMORY[0x28223BE20](v22);
  v101 = &v80 - v24;
  v25 = *(a1 + 8);
  v90 = *a1;
  v97 = type metadata accessor for NotificationSettingsModel();
  v26 = sub_258A5B434(&qword_27F96D308, type metadata accessor for NotificationSettingsModel);
  v81 = v25;
  v27 = sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v103 = a1;
  sub_258A155A0();
  v88 = v28;
  v87 = sub_258A5B2D4();
  sub_258B022A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v29 = v105;
  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  v32 = &v12[v9[9]];
  *v32 = KeyPath;
  v32[1] = sub_2589E1658;
  v32[2] = v31;
  v33 = swift_allocObject();
  v34 = *(a1 + 48);
  v33[3] = *(a1 + 32);
  v33[4] = v34;
  v35 = *(a1 + 80);
  v33[5] = *(a1 + 64);
  v33[6] = v35;
  v36 = *(a1 + 16);
  v33[1] = *a1;
  v33[2] = v36;
  sub_258A36BA0(a1, &v105);
  v37 = sub_258A5B384();
  sub_258B01C34();

  v86 = sub_258A5B1E4;
  sub_258A5BC14(v12, sub_258A5B1E4);
  v105 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5448);
  sub_258A5B850(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v85 = v38;
  v84 = sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  v105 = v9;
  v106 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v89;
  v40 = v80;
  sub_258B01DD4();

  v41 = v100[1];
  ++v100;
  v82 = v41;
  v41(v40, v39);
  v42 = v81;
  v43 = sub_258B00A34();
  swift_getKeyPath();
  v90 = v26;
  sub_258B00A44();

  v102 = a1;
  sub_258B022A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v44 = v105;
  v45 = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v47 = &v12[v9[9]];
  *v47 = v45;
  v47[1] = sub_258A5BC78;
  v47[2] = v46;
  v48 = swift_allocObject();
  v49 = *(a1 + 48);
  v48[3] = *(a1 + 32);
  v48[4] = v49;
  v50 = *(a1 + 80);
  v48[5] = *(a1 + 64);
  v48[6] = v50;
  v51 = *(a1 + 16);
  v48[1] = *a1;
  v48[2] = v51;
  sub_258A36BA0(a1, &v105);
  sub_258B01C34();

  sub_258A5BC14(v12, v86);
  v105 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5488);
  sub_258B02A34();

  swift_arrayDestroy();
  v52 = v96;
  sub_258B01DD4();

  v82(v40, v39);
  v53 = [*&v42[OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager] customReminderSchedule];
  sub_258A5B5E4();
  sub_258B02C74();

  v54 = sub_258B003E4();
  v105 = sub_2589F3A2C(v54);
  sub_2589F2550(&v105);

  *&v104 = v105;
  swift_getKeyPath();
  v55 = swift_allocObject();
  v56 = *(a1 + 48);
  v55[3] = *(a1 + 32);
  v55[4] = v56;
  v57 = *(a1 + 80);
  v55[5] = *(a1 + 64);
  v55[6] = v57;
  v58 = *(a1 + 16);
  v55[1] = *a1;
  v55[2] = v58;
  sub_258A36BA0(a1, &v105);
  sub_258A5B580(0, &qword_27F96D8C0, sub_258A5B5E4, MEMORY[0x277D83940]);
  type metadata accessor for CustomReminderRow();
  sub_258A5B630();
  sub_258A5B434(&qword_27F96F910, sub_258A5B5E4);
  sub_258A5B434(&qword_27F96F938, type metadata accessor for CustomReminderRow);
  v59 = v99;
  sub_258B023B4();
  v104 = *(a1 + 16);
  sub_258A5B850(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v100 = v105;
  v89 = v106;
  LOBYTE(v42) = v107;
  v97 = sub_258B00A24();
  v90 = v60;
  LOBYTE(v104) = 0;
  sub_258B02114();
  LOBYTE(v40) = v105;
  v61 = v106;
  v62 = v98;
  sub_2589B0ACC(v101, v98);
  v63 = v91;
  sub_2589B0ACC(v52, v91);
  v64 = v94;
  v65 = *(v94 + 16);
  v66 = v93;
  v67 = v59;
  v68 = v95;
  v65(v93, v67, v95);
  LOBYTE(v105) = v42;
  LOBYTE(v104) = v40;
  v69 = v92;
  sub_2589B0ACC(v62, v92);
  sub_258A5B074();
  v71 = v70;
  sub_2589B0ACC(v63, v69 + *(v70 + 48));
  v65((v69 + *(v71 + 64)), v66, v68);
  v72 = v69 + *(v71 + 80);
  v73 = v105;
  v74 = v104;
  *v72 = v97;
  v75 = v90;
  v76 = v100;
  *(v72 + 8) = v90;
  *(v72 + 16) = v76;
  *(v72 + 24) = v89;
  *(v72 + 32) = v73;
  *(v72 + 40) = v74;
  *(v72 + 48) = v61;
  v77 = *(v64 + 8);
  v78 = v75;

  v77(v99, v68);
  sub_2589B0B30(v96);
  sub_2589B0B30(v101);

  v77(v66, v68);
  sub_2589B0B30(v63);
  return sub_2589B0B30(v98);
}

uint64_t sub_258A5A498(void *a1)
{
  v14 = a1[6];
  v15 = a1[7];
  sub_2589BFF58();
  sub_258B003E4();
  v2 = sub_258B01B44();
  v4 = v3;
  v6 = v5;
  v7 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v14 == 1)
  {
    sub_258B014B4();
  }

  else
  {
    sub_258B014A4();
  }

  v8 = sub_258B01AB4();
  v10 = v9;
  v12 = v11;
  sub_2589BFFAC(v2, v4, v6 & 1);

  sub_2589FC8C8(&unk_2869D54C8);
  sub_258A5B850(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v8, v10, v12 & 1);
}

uint64_t sub_258A5A6C0(void *a1)
{
  v14 = a1[8];
  v15 = a1[9];
  sub_2589BFF58();
  sub_258B003E4();
  v2 = sub_258B01B44();
  v4 = v3;
  v6 = v5;
  v7 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v14 == 1)
  {
    sub_258B014B4();
  }

  else
  {
    sub_258B014A4();
  }

  v8 = sub_258B01AB4();
  v10 = v9;
  v12 = v11;
  sub_2589BFFAC(v2, v4, v6 & 1);

  sub_2589FC8C8(&unk_2869D5508);
  sub_258A5B850(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v8, v10, v12 & 1);
}

uint64_t sub_258A5A8E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v4 == 1)
  {
    v5 = *(a1 + 16);
    sub_258A5B850(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    return sub_258B02134();
  }

  return result;
}

uint64_t sub_258A5A9B4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CustomReminderModel();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v26[-v14];
  v16 = *a1;
  v17 = v16;
  sub_258A2A268(v16, v15);
  v18 = *(a2 + 8);
  sub_258A2A6F8(v15, v13);
  type metadata accessor for NotificationSettingsModel();
  sub_258A5B434(&qword_27F96D308, type metadata accessor for NotificationSettingsModel);
  v19 = v18;
  *a3 = sub_258B00A24();
  a3[1] = v20;
  v21 = type metadata accessor for CustomReminderRow();
  v22 = *(v21 + 20);
  sub_258A2A6F8(v13, v10);
  sub_258B02114();
  sub_258A5BC14(v13, type metadata accessor for CustomReminderModel);
  v23 = a3 + *(v21 + 24);
  v26[15] = 0;
  sub_258B02114();
  result = sub_258A5BC14(v15, type metadata accessor for CustomReminderModel);
  v25 = v27;
  *v23 = v26[16];
  *(v23 + 1) = v25;
  return result;
}

uint64_t sub_258A5AB8C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_258B01F64();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v41 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = v35 - v5;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v6 = sub_258AFFD94();
  v8 = v7;
  v9 = sub_258AFFD94();
  v11 = v10;
  v12 = sub_258AFFD94();
  v14 = v13;
  v15 = sub_258AFFD94();
  v17 = v16;
  v43 = v6;
  v44 = v8;
  sub_2589BFF58();
  v18 = sub_258B01B44();
  v38 = v19;
  v39 = v18;
  v36 = v20;
  v37 = v21;
  v43 = v9;
  v44 = v11;
  v22 = sub_258B01B44();
  v35[2] = v23;
  v35[3] = v22;
  v35[0] = v24 & 1;
  v35[1] = v25;
  v43 = v12;
  v44 = v14;
  v26 = sub_258B01B44();
  v28 = v27;
  LOBYTE(v9) = v29;
  sub_258B01F54();
  sub_2589BFFAC(v26, v28, v9 & 1);

  v43 = v15;
  v44 = v17;
  v30 = sub_258B01B44();
  v32 = v31;
  LOBYTE(v17) = v33;
  sub_258B01F44();
  sub_2589BFFAC(v30, v32, v17 & 1);

  return sub_258B01F34();
}

uint64_t sub_258A5AEE8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_258A592D0(a1);
}

void sub_258A5AF2C()
{
  if (!qword_27F96F8A0)
  {
    sub_258A155A0();
    sub_258A5B580(255, &qword_27F96F8A8, MEMORY[0x277CDFCA0], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F8A0);
    }
  }
}

void sub_258A5AFC4()
{
  if (!qword_27F96F8B0)
  {
    sub_258A155A0();
    sub_258A5B580(255, &qword_27F96F8B8, sub_258A5B074, MEMORY[0x277CE14B8]);
    sub_258A5AF2C();
    v0 = sub_258B02444();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F8B0);
    }
  }
}

void sub_258A5B074()
{
  if (!qword_27F96F8C0)
  {
    sub_258A5B0F8();
    sub_258A5B47C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96F8C0);
    }
  }
}

void sub_258A5B0F8()
{
  if (!qword_27F96F8C8)
  {
    sub_258A5B160();
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F8C8);
    }
  }
}

void sub_258A5B160()
{
  if (!qword_27F96F8D0)
  {
    sub_258A5B1E4();
    sub_258A5B384();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F8D0);
    }
  }
}

void sub_258A5B1E4()
{
  if (!qword_27F96F8D8)
  {
    sub_258A5B270();
    sub_258A5B850(255, &qword_27F96CDD0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F8D8);
    }
  }
}

void sub_258A5B270()
{
  if (!qword_27F96F8E0)
  {
    sub_258A155A0();
    sub_258A5B2D4();
    v0 = sub_258B022C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F8E0);
    }
  }
}

unint64_t sub_258A5B2D4()
{
  result = qword_27F96F8E8;
  if (!qword_27F96F8E8)
  {
    sub_258A155A0();
    sub_258A5B434(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F8E8);
  }

  return result;
}

unint64_t sub_258A5B384()
{
  result = qword_27F96F8F0;
  if (!qword_27F96F8F0)
  {
    sub_258A5B1E4();
    sub_258A5B434(&qword_27F96F8F8, sub_258A5B270);
    sub_2589D2560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F8F0);
  }

  return result;
}

uint64_t sub_258A5B434(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A5B47C()
{
  if (!qword_27F96F900)
  {
    sub_258A5B580(255, &qword_27F96D8C0, sub_258A5B5E4, MEMORY[0x277D83940]);
    sub_258A5B5E4();
    type metadata accessor for CustomReminderRow();
    sub_258A5B630();
    sub_258A5B434(&qword_27F96F910, sub_258A5B5E4);
    v0 = sub_258B023D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F900);
    }
  }
}

void sub_258A5B580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258A5B5E4()
{
  result = qword_280DF8920;
  if (!qword_280DF8920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DF8920);
  }

  return result;
}

unint64_t sub_258A5B630()
{
  result = qword_27F96F908;
  if (!qword_27F96F908)
  {
    sub_258A5B580(255, &qword_27F96D8C0, sub_258A5B5E4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F908);
  }

  return result;
}

unint64_t sub_258A5B6C0()
{
  result = qword_27F96F918;
  if (!qword_27F96F918)
  {
    sub_258A5B580(255, &qword_27F96F8B8, sub_258A5B074, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F918);
  }

  return result;
}

unint64_t sub_258A5B748()
{
  result = qword_27F96F920;
  if (!qword_27F96F920)
  {
    sub_258A5AF2C();
    sub_258A5B2D4();
    sub_258A5B7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F920);
  }

  return result;
}

unint64_t sub_258A5B7C8()
{
  result = qword_27F96F928;
  if (!qword_27F96F928)
  {
    sub_258A5B580(255, &qword_27F96F8A8, MEMORY[0x277CDFCA0], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F928);
  }

  return result;
}

void sub_258A5B850(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258A5B8C4()
{
  result = qword_27F96F930;
  if (!qword_27F96F930)
  {
    sub_258A5AFC4();
    sub_258A5B2D4();
    sub_258A5B6C0();
    sub_258A5B748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F930);
  }

  return result;
}

uint64_t sub_258A5B958@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_258A5B434(&qword_27F96D308, type metadata accessor for NotificationSettingsModel);
  v2 = sub_258B00A24();
  v15 = v3;
  v16 = v2;
  sub_258B02114();
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v14 = sub_258AFFD94();
  v5 = v4;
  v6 = sub_258AFFD94();
  v8 = v7;
  v9 = sub_258AFFD94();
  v11 = v10;
  result = sub_258AFFD94();
  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v14;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v11;
  *(a1 + 80) = result;
  *(a1 + 88) = v13;
  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  return swift_deallocObject();
}

uint64_t sub_258A5BC14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ReflectiveIntervalPicker_iOS()
{
  result = qword_27F96F940;
  if (!qword_27F96F940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A5BCF0()
{
  sub_258A5D1FC(319, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_258A5D1FC(319, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_258A5D1FC(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258A5BE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for ReflectiveIntervalPicker_iOS();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_258A5C934();
  v39 = v6;
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A5C8CC();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v42 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v41 = v33 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v40 = v33 - v17;
  MEMORY[0x28223BE20](v16);
  v34 = v33 - v18;
  v35 = a1;
  v38 = type metadata accessor for ReflectiveIntervalPicker_iOS;
  sub_258A5D194(a1, v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReflectiveIntervalPicker_iOS);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_258A5CE08(v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v46 = a1;
  v37 = type metadata accessor for ReflectiveIntervalPickerButtonView(0);
  v36 = sub_258A5CD0C(&qword_27F96F978, type metadata accessor for ReflectiveIntervalPickerButtonView);
  sub_258B02174();
  v47 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5548);
  sub_2589FCE08();
  v33[2] = v21;
  v33[1] = sub_258A5CD0C(&qword_280DF8940, sub_2589FCE08);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258A5CD0C(&qword_27F96F9A0, sub_258A5C934);
  v22 = v39;
  sub_258B01DD4();

  v23 = *(v44 + 8);
  v44 += 8;
  v23(v9, v22);
  v24 = v35;
  sub_258A5D194(v35, v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v38);
  v25 = swift_allocObject();
  sub_258A5CE08(v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v19);
  v45 = v24;
  sub_258B02174();
  v47 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5588);
  sub_258B02A34();

  swift_arrayDestroy();
  v26 = v40;
  sub_258B01DD4();

  v23(v9, v22);
  v27 = v34;
  v28 = v41;
  sub_258A5D194(v34, v41, sub_258A5C8CC);
  v29 = v42;
  sub_258A5D194(v26, v42, sub_258A5C8CC);
  v30 = v43;
  sub_258A5D194(v28, v43, sub_258A5C8CC);
  sub_258A5C868();
  sub_258A5D194(v29, v30 + *(v31 + 48), sub_258A5C8CC);
  sub_258A5CDA8(v26, sub_258A5C8CC);
  sub_258A5CDA8(v27, sub_258A5C8CC);
  sub_258A5CDA8(v29, sub_258A5C8CC);
  return sub_258A5CDA8(v28, sub_258A5C8CC);
}

uint64_t sub_258A5C3FC(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  sub_258A5D1FC(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  return sub_258B02314();
}

uint64_t sub_258A5C47C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *a1;
  v15 = *(a1 + 2);
  v5 = MEMORY[0x277CE11F8];
  sub_258A5D1FC(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  sub_258B02334();
  v6 = *(type metadata accessor for ReflectiveIntervalPicker_iOS() + 20);
  v7 = type metadata accessor for ReflectiveIntervalPickerButtonView(0);
  v8 = v7[6];
  sub_258A5D1FC(0, &qword_27F96EA60, MEMORY[0x277CC9578], v5);
  sub_258B02334();
  *(a3 + v7[8]) = swift_getKeyPath();
  v9 = MEMORY[0x277CDF458];
  sub_258A5D1FC(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *a3 = a2;
  *(a3 + 8) = v12;
  *(a3 + 24) = v13;
  v10 = v7[7];
  *(a3 + v10) = swift_getKeyPath();
  sub_258A5D1FC(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, v9);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_258A5C634(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A5C7D4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + *(a1 + 24);
  sub_258AC1BC4(v7);
  sub_258A5CDA8(v7, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  *v11 = sub_258B01194();
  *(v11 + 1) = 0x4028000000000000;
  v11[16] = 0;
  sub_258A5CC74();
  sub_258A5BE38(v3, &v11[*(v13 + 44)]);
  sub_258A5CD0C(&qword_27F96F990, sub_258A5C7D4);
  sub_258A5CD54();
  sub_258B01BD4();
  return sub_258A5CDA8(v11, sub_258A5C7D4);
}

void sub_258A5C7D4()
{
  if (!qword_27F96F950)
  {
    sub_258A5D1FC(255, &qword_27F96F958, sub_258A5C868, MEMORY[0x277CE14B8]);
    sub_258A5C9C8();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F950);
    }
  }
}

void sub_258A5C868()
{
  if (!qword_27F96F960)
  {
    sub_258A5C8CC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96F960);
    }
  }
}

void sub_258A5C8CC()
{
  if (!qword_27F96F968)
  {
    sub_258A5C934();
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F968);
    }
  }
}

void sub_258A5C934()
{
  if (!qword_27F96F970)
  {
    type metadata accessor for ReflectiveIntervalPickerButtonView(255);
    sub_258A5CD0C(&qword_27F96F978, type metadata accessor for ReflectiveIntervalPickerButtonView);
    v0 = sub_258B021B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F970);
    }
  }
}

unint64_t sub_258A5C9C8()
{
  result = qword_27F96F980;
  if (!qword_27F96F980)
  {
    sub_258A5D1FC(255, &qword_27F96F958, sub_258A5C868, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F980);
  }

  return result;
}

uint64_t sub_258A5CA50(uint64_t a1)
{
  v2 = sub_258B01814();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_258B017E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B017F4();
  (*(v3 + 16))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_258A5CD0C(&qword_27F96F9A8, MEMORY[0x277CDE500]);
  sub_258B01C34();

  return (*(v6 + 8))(v9, v5);
}

void sub_258A5CC74()
{
  if (!qword_27F96F988)
  {
    sub_258A5D1FC(255, &qword_27F96F958, sub_258A5C868, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F988);
    }
  }
}

uint64_t sub_258A5CD0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258A5CD54()
{
  result = qword_27F96F998;
  if (!qword_27F96F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F998);
  }

  return result;
}

uint64_t sub_258A5CDA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A5CE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReflectiveIntervalPicker_iOS();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_14()
{
  v1 = (type metadata accessor for ReflectiveIntervalPicker_iOS() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = v3[1];

  v6 = v3 + v1[7];
  v7 = *v6;

  v8 = *(v6 + 1);

  sub_258A5D1FC(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v10 = *(v9 + 32);
  v11 = sub_258B00084();
  (*(*(v11 - 8) + 8))(&v6[v10], v11);
  v12 = v3 + v1[8];
  sub_258A5D1FC(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B01504();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v12, 1, v13))
    {
      (*(v14 + 8))(v12, v13);
    }

    v15 = *(type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs() + 20);
    v16 = sub_258B00AA4();
    (*(*(v16 - 8) + 8))(&v12[v15], v16);
  }

  else
  {
    v17 = *v12;
  }

  return swift_deallocObject();
}

uint64_t sub_258A5D194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A5D1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A5D28C()
{
  v1 = *(sub_258B01814() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_258B01804();
}

uint64_t sub_258A5D300(uint64_t *a1)
{
  v1 = *a1;
  sub_258B02B14();
  sub_258B00084();

  return sub_258B02EE4();
}

id StateOfMindTimelinePresentingCalendar.__allocating_init(presenter:healthStore:dateToFocusOn:verticalSizeClass:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_258B00084();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v15[OBJC_IVAR____TtC14MentalHealthUI37StateOfMindTimelinePresentingCalendar_healthStore] = a2;
  (*(v11 + 16))(v14, a3, v10);
  objc_allocWithZone(type metadata accessor for StateOfMindCalendarViewController());
  v16 = a2;
  v17 = sub_258ADCEE8(v16, v14, a4);
  v22.receiver = v15;
  v22.super_class = v5;
  v18 = objc_msgSendSuper2(&v22, sel_initWithRootViewController_, v17);

  (*(v11 + 8))(a3, v10);
  v19 = &v17[qword_27F97AC38];
  swift_beginAccess();
  *(v19 + 1) = &protocol witness table for StateOfMindTimelinePresentingCalendar;
  swift_unknownObjectWeakAssign();

  return v18;
}

id StateOfMindTimelinePresentingCalendar.init(presenter:healthStore:dateToFocusOn:verticalSizeClass:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_258B00084();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC14MentalHealthUI37StateOfMindTimelinePresentingCalendar_healthStore] = a2;
  (*(v11 + 16))(v14, a3, v10);
  objc_allocWithZone(type metadata accessor for StateOfMindCalendarViewController());
  v15 = a2;
  v16 = sub_258ADCEE8(v15, v14, a4);
  v17 = type metadata accessor for StateOfMindTimelinePresentingCalendar();
  v22.receiver = v5;
  v22.super_class = v17;
  v18 = objc_msgSendSuper2(&v22, sel_initWithRootViewController_, v16);

  (*(v11 + 8))(a3, v10);
  v19 = &v16[qword_27F97AC38];
  swift_beginAccess();
  *(v19 + 1) = &protocol witness table for StateOfMindTimelinePresentingCalendar;
  swift_unknownObjectWeakAssign();

  return v18;
}

uint64_t sub_258A5D770(void *a1, uint64_t a2)
{
  v3 = v2;
  v44 = v3;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (&v40 - v10);
  v12 = sub_258B00084();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_258B00384();
  v17 = *(v43 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v43);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v21 = *(v13 + 16);
  v45 = a2;
  v21(v16, a2, v12);
  v22 = sub_258B00374();
  v23 = sub_258B02EA4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v41 = a1;
    v25 = v24;
    v40 = swift_slowAlloc();
    v47 = v40;
    *v25 = 136446466;
    v26 = sub_258B035A4();
    v28 = sub_2589F1F78(v26, v27, &v47);
    ObjectType = v11;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    sub_2589F8654(&qword_27F96D970, MEMORY[0x277CC9578]);
    v30 = sub_258B03414();
    v32 = v31;
    (*(v13 + 8))(v16, v12);
    v33 = sub_2589F1F78(v30, v32, &v47);
    v11 = ObjectType;

    *(v25 + 14) = v33;
    _os_log_impl(&dword_2589A1000, v22, v23, "[%{public}s] Presenting timeline for date: %{public}s", v25, 0x16u);
    v34 = v40;
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v34, -1, -1);
    v35 = v25;
    a1 = v41;
    MEMORY[0x259C945C0](v35, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  (*(v17 + 8))(v20, v43);
  _s14MentalHealthUI19StateOfMindTimelineO5ModelC05buildgH03day11healthStoreAE10Foundation4DateV_So08HKHealthL0CtFZ_0(v45, *(v44 + OBJC_IVAR____TtC14MentalHealthUI37StateOfMindTimelinePresentingCalendar_healthStore));

  StateOfMindTimeline.EntryFullView.init(model:)(v11);
  sub_258A5DE84(v11, v46);
  sub_2589F8560();
  v37 = objc_allocWithZone(v36);
  v38 = sub_258B011C4();
  [a1 presentViewController:v38 animated:1 completion:0];

  return sub_258A5DEE8(v11);
}

id StateOfMindTimelinePresentingCalendar.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id StateOfMindTimelinePresentingCalendar.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id StateOfMindTimelinePresentingCalendar.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_258B02AD4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id StateOfMindTimelinePresentingCalendar.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindTimelinePresentingCalendar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_258A5DE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A5DEE8(uint64_t a1)
{
  v2 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ValenceSelectionPhaseContent()
{
  result = qword_27F96F9C0;
  if (!qword_27F96F9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A5E018()
{
  sub_2589E3D24();
  if (v0 <= 0x3F)
  {
    sub_258B008E4();
    if (v1 <= 0x3F)
    {
      sub_2589C0D10();
      if (v2 <= 0x3F)
      {
        sub_258A6578C(319, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_258A6578C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_258A6578C(319, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              v6 = MEMORY[0x277D839B0];
              sub_258A65890(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_258A65890(319, &qword_27F96F9D0, &_s9PlacementVN, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_258A6578C(319, &qword_27F96F9D8, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
                  {
                    sub_258A65890(319, &qword_27F971C90, v6, MEMORY[0x277CE11F8]);
                    if (v10 <= 0x3F)
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

double sub_258A5E2AC@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ValenceSelectionPhaseContent();
  v4 = v3 - 8;
  v54 = *(v3 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = v6;
  v57 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258A671CC(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v51 = v73;
  v52 = v72;
  v53 = v74;
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v48 = v70;
  v49 = v69;
  v50 = v71;
  v9 = *(v4 + 56);
  v56 = v1;
  v10 = v1 + v9;
  v11 = *(v1 + v9 + 48);
  v66 = *(v1 + v9 + 32);
  v67 = v11;
  v68 = *(v1 + v9 + 64);
  v12 = *(v1 + v9 + 16);
  v64 = *(v1 + v9);
  v65 = v12;
  sub_258A65890(0, &qword_27F96F9D0, &_s9PlacementVN, MEMORY[0x277CE10B8]);
  sub_258B02124();
  v13 = sub_258AA9E90();
  v46 = v14;
  v47 = v13;
  v15 = *(v10 + 3);
  v66 = *(v10 + 2);
  v67 = v15;
  v68 = *(v10 + 8);
  v16 = *(v10 + 1);
  v64 = *v10;
  v65 = v16;
  sub_258B02124();
  v17 = v59;
  v18 = v60;
  v19 = v61;
  v20 = v62;
  x = v63.origin.x;
  y = v63.origin.y;
  width = v63.size.width;
  height = v63.size.height;
  v25 = CGRectGetHeight(v63);
  v58 = 1.0;
  if (v25 != 0.0)
  {
    v75.origin.x = v17;
    v75.origin.y = v18;
    v75.size.width = v19;
    v75.size.height = v20;
    if (CGRectGetWidth(v75) != 0.0)
    {
      v76.origin.x = v17;
      v76.origin.y = v18;
      v76.size.width = v19;
      v76.size.height = v20;
      if (CGRectGetHeight(v76) != 0.0)
      {
        v77.origin.x = x;
        v77.origin.y = y;
        v77.size.width = width;
        v77.size.height = height;
        v26 = CGRectGetHeight(v77);
        v78.origin.x = v17;
        v78.origin.y = v18;
        v78.size.width = v19;
        v78.size.height = v20;
        v27 = CGRectGetWidth(v78);
        v79.origin.x = v17;
        v79.origin.y = v18;
        v79.size.width = v19;
        v79.size.height = v20;
        v28 = CGRectGetHeight(v79);
        if (v28 >= v27)
        {
          v28 = v27;
        }

        v58 = v26 * 1.5 / v28;
      }
    }
  }

  KeyPath = swift_getKeyPath();
  LOBYTE(v59) = 0;
  sub_258B02114();
  v44 = v64;
  v29 = *(&v64 + 1);
  LOBYTE(v59) = 0;
  sub_258B02114();
  v30 = v64;
  v31 = *(&v64 + 1);
  LOBYTE(v59) = 1;
  sub_258B02114();
  v32 = v64;
  v33 = *(&v64 + 1);
  LOBYTE(v64) = 0;
  v34 = v57;
  sub_258A65724(v56, v57, type metadata accessor for ValenceSelectionPhaseContent);
  v35 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v36 = swift_allocObject();
  sub_258A65954(v34, v36 + v35, type metadata accessor for ValenceSelectionPhaseContent);
  *a1 = KeyPath;
  *(a1 + 8) = v64;
  *(a1 + 16) = v44;
  *(a1 + 24) = v29;
  *(a1 + 32) = v30;
  *(a1 + 40) = v31;
  *(a1 + 48) = v32;
  v37 = v51;
  v38 = v52;
  *(a1 + 56) = v33;
  *(a1 + 64) = v38;
  *(a1 + 72) = v37;
  *(a1 + 80) = v53;
  v39 = v48;
  *(a1 + 88) = v49;
  *(a1 + 96) = v39;
  v41 = v46;
  v40 = v47;
  *(a1 + 104) = v50;
  *(a1 + 112) = v40;
  result = v58;
  *(a1 + 120) = v41;
  *(a1 + 128) = result;
  *(a1 + 136) = sub_258A67214;
  *(a1 + 144) = 0;
  *(a1 + 152) = sub_258A66A78;
  *(a1 + 160) = v36;
  return result;
}

uint64_t sub_258A5E74C(__int128 *a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for ValenceSelectionPhaseContent() + 48));
  v4 = v3[1];
  v5 = v3[3];
  v19 = v3[2];
  v20 = v5;
  v6 = v3[1];
  v17 = *v3;
  v18 = v6;
  v15 = v3[3];
  v21 = *(v3 + 8);
  v16 = *(v3 + 8);
  sub_258A6630C(&v17, v22);
  sub_258A65890(0, &qword_27F96F9D0, &_s9PlacementVN, MEMORY[0x277CE10B8]);
  v8 = a1[1];
  v9 = *a1;
  sub_258B02124();
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v10 = v17;
  v11 = v18;
  sub_258B02134();
  v22[2] = v12;
  v22[3] = v13;
  v23 = v14;
  v22[0] = v10;
  v22[1] = v11;
  return sub_258A66394(v22);
}

uint64_t sub_258A5E874@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  LODWORD(v54) = a1;
  v58 = a2;
  sub_258A64FE8(0, &qword_27F96DDD8, MEMORY[0x277CDE470]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v52 - v6;
  sub_258A04CCC(0);
  v57 = v7;
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  sub_258A666B8(0, &qword_27F96FB60, sub_258A04B14, sub_258A04CCC, MEMORY[0x277CE0330]);
  v56 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - v15;
  v17 = type metadata accessor for ValenceSelectionPhaseContent();
  v52 = *(v17 - 1);
  v18 = *(v52 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = type metadata accessor for ValenceSelectionPhaseSpecs();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  if (*(*(v2 + 8) + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_useLiveVisualization) == 1)
  {
    v26 = v17[8];
    sub_258AC1B90(&v52 - v24);
    sub_258A66A18(v25, type metadata accessor for ValenceSelectionPhaseSpecs);
    if (*(v2 + v17[14]))
    {
      v27 = 82.0;
    }

    else
    {
      v27 = 122.0;
    }

    sub_258AC1B90(v23);
    v28 = v2 + v17[5];
    sub_258B008C4();
    v30 = v29;
    sub_258A66A18(v23, type metadata accessor for ValenceSelectionPhaseSpecs);
    if ((v30 + 76.0) * 0.67 > v27)
    {
      v31 = (v30 + 76.0) * 0.67;
    }

    else
    {
      v31 = v27;
    }

    v32 = sub_258B02004();
    sub_258B024F4();
    if (v27 > v31)
    {
      sub_258B02E94();
      v33 = sub_258B01824();
      sub_258B00354();
    }

    sub_258B00C94();
    *&v59[54] = v64;
    *&v59[70] = v65;
    *&v59[86] = v66;
    *&v59[102] = v67;
    *&v59[6] = v61;
    *&v59[22] = v62;
    LOBYTE(v60) = 0;
    *&v59[38] = v63;
    sub_258A65724(v3, &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ValenceSelectionPhaseContent);
    v34 = (*(v52 + 80) + 17) & ~*(v52 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v54 & 1;
    sub_258A65954(&v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for ValenceSelectionPhaseContent);
    v36 = *&v59[80];
    *(v16 + 82) = *&v59[64];
    *(v16 + 98) = v36;
    *(v16 + 114) = *&v59[96];
    v37 = *&v59[16];
    *(v16 + 18) = *v59;
    *(v16 + 34) = v37;
    v38 = *&v59[48];
    *(v16 + 50) = *&v59[32];
    *v16 = v32;
    *(v16 + 1) = 0x3FF0000000000000;
    *(v16 + 8) = 0;
    v39 = *&v59[110];
    *(v16 + 66) = v38;
    *(v16 + 16) = v39;
    *(v16 + 17) = sub_258A67214;
    *(v16 + 18) = 0;
    *(v16 + 19) = sub_258A66298;
    *(v16 + 20) = v35;
    swift_storeEnumTagMultiPayload();
    sub_258A04B14(0);
    sub_258A65C78();
    sub_258A66870(&qword_27F96FB90, sub_258A04CCC, sub_258A65E1C);
    return sub_258B012A4();
  }

  else
  {
    v54 = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    LOBYTE(v60) = 1;
    StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(&v60, &v61, *&v61);
    v60 = &unk_2869D4670;
    sub_2589FC8C8(&unk_2869D55C8);
    sub_258A65890(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2589C6824();
    sub_258B02A34();

    sub_2589C68A0(&unk_2869D55E8);
    sub_2589DC7D8();
    v41 = v53;
    sub_258B01DD4();

    v42 = v2 + v17[8];
    sub_258AC1B90(v23);
    v43 = v3 + v17[5];
    sub_258B008C4();
    sub_258A66A18(v23, type metadata accessor for ValenceSelectionPhaseSpecs);
    sub_258B024F4();
    sub_258B00C94();
    v44 = v55;
    sub_258A65BF0(v41, v55);
    v45 = (v44 + *(v57 + 36));
    v46 = v64;
    v47 = v66;
    v48 = v67;
    v45[4] = v65;
    v45[5] = v47;
    v45[6] = v48;
    v49 = v62;
    v50 = v63;
    *v45 = v61;
    v45[1] = v49;
    v45[2] = v50;
    v45[3] = v46;
    v51 = v54;
    sub_258A65954(v44, v54, sub_258A04CCC);
    sub_258A65724(v51, v16, sub_258A04CCC);
    swift_storeEnumTagMultiPayload();
    sub_258A04B14(0);
    sub_258A65C78();
    sub_258A66870(&qword_27F96FB90, sub_258A04CCC, sub_258A65E1C);
    sub_258B012A4();
    return sub_258A66A18(v51, sub_258A04CCC);
  }
}

uint64_t sub_258A5F1C4@<X0>(void *a1@<X8>)
{
  v2 = sub_258B012F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = 0xD000000000000022;
  v16[1] = 0x8000000258B37C70;
  sub_258B01524();
  sub_258B008D4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v8;
  a1[1] = v10;
  a1[2] = v12;
  a1[3] = v14;
  return result;
}

uint64_t sub_258A5F304(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = (a3 + *(type metadata accessor for ValenceSelectionPhaseContent() + 48));
    v5 = v4[1];
    v6 = v4[3];
    v19 = v4[2];
    v20 = v6;
    v7 = v4[1];
    v17 = *v4;
    v18 = v7;
    v15 = v4[3];
    v21 = *(v4 + 8);
    v16 = *(v4 + 8);
    sub_258A6630C(&v17, v22);
    sub_258A65890(0, &qword_27F96F9D0, &_s9PlacementVN, MEMORY[0x277CE10B8]);
    v8 = v3[1];
    v9 = *v3;
    sub_258B02124();
    v12 = v19;
    v13 = v20;
    v14 = v21;
    v10 = v17;
    v11 = v18;
    sub_258B02134();
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14;
    v22[0] = v10;
    v22[1] = v11;
    return sub_258A66394(v22);
  }

  return result;
}

uint64_t sub_258A5F434@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v101 = a3;
  sub_258A6525C(0);
  v100 = v5;
  v98 = *(v5 - 8);
  v6 = *(v98 + 64);
  MEMORY[0x28223BE20](v5);
  v90 = (&v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589DE168();
  v91 = v8;
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = &v79 - v12;
  sub_258A65228(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v99 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v97 = &v79 - v17;
  sub_258A666B8(0, &qword_27F96FB38, sub_258A64CD0, sub_258A64E98, MEMORY[0x277CE0330]);
  v93 = v18;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v79 - v20;
  v87 = sub_258B01314();
  v85 = *(v87 - 8);
  v22 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v83 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_258B024B4();
  v81 = *(v82 - 8);
  v24 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64D84();
  v27 = v26;
  v28 = *(*(v26 - 1) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64CD0();
  v94 = v31;
  v86 = *(v31 - 8);
  v32 = *(v86 + 64);
  MEMORY[0x28223BE20](v31);
  v84 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A047B0();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64E98(0);
  v92 = v38;
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64C88(0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v96 = &v79 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v95 = &v79 - v46;
  *v37 = sub_258B01194();
  *(v37 + 1) = 0;
  v37[16] = 0;
  sub_258A6673C(0, &qword_27F96FB40, sub_258A64EC0);
  sub_258A60070(a1, a2, &v37[*(v47 + 44)]);
  v105 = type metadata accessor for ValenceSelectionPhaseSpecs();
  v106 = &off_2869D7E28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v103);
  v49 = type metadata accessor for ValenceSelectionPhaseContent();
  v50 = a1 + *(v49 + 32);
  sub_258AC1B90(boxed_opaque_existential_1);
  sub_258A02F04(v41);
  sub_258A66A18(v37, sub_258A047B0);
  __swift_destroy_boxed_opaque_existential_1(&v103);
  if (a2 & 1) != 0 || (*(a1 + *(v49 + 24)))
  {
    sub_258A65724(v41, v21, sub_258A64E98);
    v51 = 1;
    swift_storeEnumTagMultiPayload();
    v52 = sub_258A671CC(&qword_27F96FAB8, sub_258A64D84);
    v103 = v27;
    v104 = v52;
    swift_getOpaqueTypeConformance2();
    sub_258A66870(&qword_27F96FA90, sub_258A64E98, sub_258A65100);
    v53 = v95;
    sub_258B012A4();
    sub_258A66A18(v41, sub_258A64E98);
    v54 = v97;
    if (a2)
    {
      v55 = v88;
      sub_258A61F40(a1, v88);
      v56 = *(v91 + 36);
      *(v55 + v56) = swift_getKeyPath();
      sub_258A6578C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v57 = v89;
      sub_258A656BC(v55, v89, sub_2589DE168);
      v58 = v90;
      *v90 = 0;
      *(v58 + 8) = 0;
      sub_258A65290();
      sub_258A656BC(v57, v58 + *(v59 + 48), sub_2589DE168);
      sub_258A66810(v55, sub_2589DE168);
      sub_258A66810(v57, sub_2589DE168);
      sub_258A667A8(v58, v54, sub_258A6525C);
      v51 = 0;
    }
  }

  else
  {
    v60 = v80;
    sub_258B024A4();
    v61 = v81;
    v62 = v82;
    (*(v81 + 16))(&v30[v27[17]], v60, v82);
    *v30 = 1;
    sub_258A65724(v41, &v30[v27[18]], sub_258A64E98);
    v63 = &v30[v27[19]];
    sub_258A61F40(a1, v63);
    v64 = *(v91 + 36);
    *(v63 + v64) = swift_getKeyPath();
    sub_258A6578C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v65 = &v30[v27[20]];
    v102 = 0;
    sub_258B02114();
    v66 = v104;
    *v65 = v103;
    v65[1] = v66;
    v67 = &v30[v27[21]];
    v102 = 0;
    sub_258B02114();
    (*(v61 + 8))(v60, v62);
    v68 = v104;
    *v67 = v103;
    v67[1] = v68;
    v69 = v83;
    sub_258B01304();
    LOBYTE(v67) = sub_258B01854();
    sub_258B01844();
    sub_258B01844();
    if (sub_258B01844() != v67)
    {
      sub_258B01844();
    }

    v70 = sub_258A671CC(&qword_27F96FAB8, sub_258A64D84);
    v71 = v84;
    sub_258B01D94();
    (*(v85 + 8))(v69, v87);
    sub_258A66810(v30, sub_258A64D84);
    v72 = v86;
    v73 = v94;
    (*(v86 + 16))(v21, v71, v94);
    swift_storeEnumTagMultiPayload();
    v103 = v27;
    v104 = v70;
    swift_getOpaqueTypeConformance2();
    sub_258A66870(&qword_27F96FA90, sub_258A64E98, sub_258A65100);
    v53 = v95;
    sub_258B012A4();
    (*(v72 + 8))(v71, v73);
    sub_258A66A18(v41, sub_258A64E98);
    v51 = 1;
    v54 = v97;
  }

  (*(v98 + 56))(v54, v51, 1, v100);
  v74 = v96;
  sub_258A656BC(v53, v96, sub_258A64C88);
  v75 = v99;
  sub_258A656BC(v54, v99, sub_258A65228);
  v76 = v101;
  sub_258A656BC(v74, v101, sub_258A64C88);
  sub_258A64BD8(0);
  sub_258A656BC(v75, v76 + *(v77 + 48), sub_258A65228);
  sub_258A66810(v54, sub_258A65228);
  sub_258A66810(v53, sub_258A64C88);
  sub_258A66810(v75, sub_258A65228);
  return sub_258A66810(v74, sub_258A64C88);
}

id sub_258A60070@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v232 = a2;
  v242 = a1;
  v216 = a3;
  sub_258A04FBC(0);
  v210 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v212 = (&v198 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x277CDE470];
  v7 = MEMORY[0x277CDFAB8];
  sub_258A666B8(0, &qword_27F96DE10, sub_258A04FBC, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v209 = &v198 - v10;
  sub_258A6504C(0);
  v211 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v215 = &v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v208 = &v198 - v16;
  MEMORY[0x28223BE20](v15);
  v214 = &v198 - v17;
  sub_258A649C0(0, &qword_27F96DE00, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText);
  v239 = v18;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v240 = &v198 - v20;
  sub_258A64F18(0, &qword_27F96DDF8, &qword_27F96DE00);
  v204 = v21;
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v206 = &v198 - v23;
  sub_258A04E30();
  v205 = v24;
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v213 = &v198 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v203 = &v198 - v29;
  MEMORY[0x28223BE20](v28);
  v246 = &v198 - v30;
  v31 = type metadata accessor for ValenceSelectionPhaseContent();
  v231 = *(v31 - 8);
  v32 = *(v231 + 64);
  MEMORY[0x28223BE20](v31);
  v233 = v33;
  v234 = &v198 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A666B8(0, &qword_27F96DDA0, sub_258A04B14, sub_258A04CCC, MEMORY[0x277CE0338]);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v225 = &v198 - v36;
  sub_258A04A70();
  v226 = v37;
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v230 = &v198 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64FA0(0);
  v229 = v40;
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v207 = &v198 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v228 = &v198 - v45;
  MEMORY[0x28223BE20](v44);
  v248 = &v198 - v46;
  v199 = type metadata accessor for ValenceSelectionPhaseSpecs();
  v47 = *(*(v199 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v199);
  v202 = &v198 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v243 = &v198 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v227 = &v198 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v221 = &v198 - v55;
  MEMORY[0x28223BE20](v54);
  v241 = &v198 - v56;
  v57 = type metadata accessor for ValenceSelectionTitleText();
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57);
  v236 = (&v198 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v59);
  v62 = &v198 - v61;
  sub_258A666B8(0, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText, v6, v7);
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v63 - 8);
  v237 = &v198 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v68 = &v198 - v67;
  sub_258A649C0(0, &qword_27F96DD80, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText);
  v217 = v69;
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v220 = &v198 - v71;
  sub_258A64EF4(0);
  v219 = v72;
  v73 = *(*(v72 - 8) + 64);
  v74 = MEMORY[0x28223BE20](v72);
  v244 = &v198 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v74);
  v218 = &v198 - v77;
  MEMORY[0x28223BE20](v76);
  v247 = &v198 - v78;
  v79 = v242;
  v80 = sub_258A619DC();
  v81 = v31;
  LODWORD(v31) = *(v79 + *(v31 + 56));
  *v62 = v80;
  *(v62 + 1) = v82;
  v62[16] = v31;
  v83 = *(v57 + 24);
  *&v62[v83] = swift_getKeyPath();
  sub_258A6578C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  v245 = v84;
  swift_storeEnumTagMultiPayload();
  *&v256 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D55F8);
  sub_258A65890(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v86 = v85;
  v87 = sub_2589C6824();
  v224 = v86;
  v223 = v87;
  sub_258B02A34();

  v88 = v68;
  v89 = v241;
  sub_2589C68A0(&unk_2869D5618);
  v90 = sub_258A671CC(&qword_27F96FB48, type metadata accessor for ValenceSelectionTitleText);
  v235 = v57;
  v222 = v90;
  sub_258B01DD4();

  sub_258A66A18(v62, type metadata accessor for ValenceSelectionTitleText);
  v91 = sub_258B01884();
  v92 = v81[8];
  v93 = v79;
  sub_258AC1B90(v89);
  v238 = v31;
  if (v31 == 1)
  {
    sub_258A66A18(v89, type metadata accessor for ValenceSelectionPhaseSpecs);
    v241 = 0x4020000000000000;
    v94 = v225;
    goto LABEL_9;
  }

  v95 = v81;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_31;
  }

  v97 = result;
  homeButtonType = MobileGestalt_get_homeButtonType();

  v94 = v225;
  if (homeButtonType == 2)
  {
    v99 = v89 + *(v199 + 20);
    LOBYTE(v99) = sub_258B00A84();
    sub_258A66A18(v89, type metadata accessor for ValenceSelectionPhaseSpecs);
    v81 = v95;
    if ((v99 & 1) == 0)
    {
      v241 = 0x403E000000000000;
      goto LABEL_9;
    }
  }

  else
  {
    sub_258A66A18(v89, type metadata accessor for ValenceSelectionPhaseSpecs);
    v81 = v95;
  }

  v241 = 0x403E000000000000;
LABEL_9:
  sub_258B00654();
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = v88;
  v109 = v220;
  sub_258A658E0(v108, v220, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v110 = v109 + *(v217 + 36);
  *v110 = v91;
  *(v110 + 8) = v101;
  *(v110 + 16) = v103;
  *(v110 + 24) = v105;
  *(v110 + 32) = v107;
  *(v110 + 40) = 0;
  v111 = v79 + v81[11];
  v112 = *v111;
  v113 = *(v111 + 1);
  LODWORD(v225) = v112;
  LOBYTE(v256) = v112;
  v201 = v113;
  *(&v256 + 1) = v113;
  sub_258A65890(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  v217 = v114;
  sub_258B02124();
  if (v253)
  {
    v115 = 1.0;
  }

  else
  {
    v115 = 0.0;
  }

  v116 = v218;
  sub_258A65A30(v109, v218, &qword_27F96DD80);
  *(v116 + *(v219 + 36)) = v115;
  sub_258A65954(v116, v247, sub_258A64EF4);
  v117 = v221;
  sub_258AC1B90(v221);
  sub_258A66A18(v117, type metadata accessor for ValenceSelectionPhaseSpecs);
  v118 = v232;
  v119 = v232 & 1;
  sub_258A5E874(v232 & 1, v94);
  if ((v118 & 1) == 0)
  {
    v120 = (v79 + v81[13]);
    v121 = *v120;
    v122 = v120[1];
    v123 = v120[2];
    *&v256 = *v120;
    *(&v256 + 1) = v122;
    *&v257 = v123;
    sub_258A6578C(0, &qword_27F96F9D8, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
    sub_258B02124();
    if (*&v253 != 0.0)
    {
      *&v256 = v121;
      *(&v256 + 1) = v122;
      *&v257 = v123;
      sub_258B02124();
    }

    *&v256 = v121;
    *(&v256 + 1) = v122;
    *&v257 = v123;
    sub_258B02124();
    if (*(&v253 + 1) != 0.0)
    {
      *&v256 = v121;
      *(&v256 + 1) = v122;
      *&v257 = v123;
      sub_258B02124();
    }

    v79 = v93;
  }

  sub_258B024F4();
  sub_258B00854();
  v124 = v230;
  sub_258A658E0(v94, v230, &qword_27F96DDA0, sub_258A04B14, sub_258A04CCC, MEMORY[0x277CE0338]);
  v125 = (v124 + *(v226 + 36));
  v126 = v254;
  *v125 = v253;
  v125[1] = v126;
  v125[2] = v255;
  v127 = v234;
  sub_258A65724(v79, v234, type metadata accessor for ValenceSelectionPhaseContent);
  v128 = (*(v231 + 80) + 17) & ~*(v231 + 80);
  v129 = swift_allocObject();
  *(v129 + 16) = v119;
  sub_258A65954(v127, v129 + v128, type metadata accessor for ValenceSelectionPhaseContent);
  v130 = v228;
  sub_258A65954(v124, v228, sub_258A04A70);
  v131 = (v130 + *(v229 + 36));
  *v131 = sub_258A61E6C;
  v131[1] = 0;
  v131[2] = sub_258A659BC;
  v131[3] = v129;
  sub_258A65954(v130, v248, sub_258A64FA0);
  v132 = v227;
  sub_258AC1B90(v227);
  sub_258A66A18(v132, type metadata accessor for ValenceSelectionPhaseSpecs);
  v133 = v79[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v242 = v133;
  sub_258B00564();

  sub_258B03084();
  v134 = HKUILocalizedStringForValenceClassification();
  v135 = sub_258B02B14();
  v137 = v136;

  v138 = v236;
  *v236 = v135;
  *(v138 + 8) = v137;
  v139 = v238;
  *(v138 + 16) = v238;
  v140 = *(v235 + 24);
  *(v138 + v140) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v256 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5628);
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5648);
  v141 = v237;
  sub_258B01DD4();

  sub_258A66A18(v138, type metadata accessor for ValenceSelectionTitleText);
  sub_258B024F4();
  sub_258B00C94();
  v142 = v240;
  sub_258A658E0(v141, v240, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v143 = (v142 + *(v239 + 36));
  v144 = v261;
  v143[4] = v260;
  v143[5] = v144;
  v143[6] = v262;
  v145 = v257;
  *v143 = v256;
  v143[1] = v145;
  v146 = v259;
  v143[2] = v258;
  v143[3] = v146;
  v147 = sub_258B01894();
  v148 = v243;
  sub_258AC1B90(v243);
  v200 = v92;
  if (v139)
  {
    v149 = v201;
    sub_258A66A18(v148, type metadata accessor for ValenceSelectionPhaseSpecs);
    goto LABEL_24;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v150 = result;
  v151 = MobileGestalt_get_homeButtonType();

  v149 = v201;
  if (v151 == 2)
  {
    v152 = v243;
    v153 = v243 + *(v199 + 20);
    sub_258B00A84();
    sub_258A66A18(v152, type metadata accessor for ValenceSelectionPhaseSpecs);
  }

  else
  {
    sub_258A66A18(v243, type metadata accessor for ValenceSelectionPhaseSpecs);
  }

LABEL_24:
  sub_258B00654();
  v155 = v154;
  v157 = v156;
  v159 = v158;
  v161 = v160;
  v162 = v206;
  sub_258A65A30(v142, v206, &qword_27F96DE00);
  v163 = v162 + *(v204 + 36);
  *v163 = v147;
  *(v163 + 8) = v155;
  *(v163 + 16) = v157;
  *(v163 + 24) = v159;
  *(v163 + 32) = v161;
  *(v163 + 40) = 0;
  v164 = v225;
  LOBYTE(v249) = v225;
  v250 = v149;
  sub_258B02124();
  v165 = 0.0;
  if (v252)
  {
    v166 = 1.0;
  }

  else
  {
    v166 = 0.0;
  }

  v167 = v203;
  sub_258A65ABC(v162, v203);
  *(v167 + *(v205 + 36)) = v166;
  sub_258A65954(v167, v246, sub_258A04E30);
  v168 = *v79;
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258A671CC(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v169 = v250;
  v170 = v251;
  v171 = v212;
  *v212 = v249;
  *(v171 + 8) = v169;
  *(v171 + 16) = v170;
  *(v171 + 24) = v139;
  v172 = *(type metadata accessor for ValenceSlider() + 24);
  *(v171 + v172) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v173 = sub_258B01894();
  v174 = v202;
  sub_258AC1B90(v202);
  sub_258A66A18(v174, type metadata accessor for ValenceSelectionPhaseSpecs);
  sub_258B00654();
  v175 = v171 + *(v210 + 36);
  *v175 = v173;
  *(v175 + 8) = v176;
  *(v175 + 16) = v177;
  *(v175 + 24) = v178;
  *(v175 + 32) = v179;
  *(v175 + 40) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  sub_258B03084();
  v180 = HKUILocalizedStringForValenceClassification();
  v181 = sub_258B02B14();
  v183 = v182;

  v249 = v181;
  v250 = v183;
  sub_258A65B40();
  sub_2589BFF58();
  v184 = v209;
  sub_258B01D44();

  sub_258A66A18(v171, sub_258A04FBC);
  LOBYTE(v249) = v164;
  v250 = v149;
  sub_258B02124();
  if (v252)
  {
    v165 = 1.0;
  }

  v185 = v208;
  sub_258A658E0(v184, v208, &qword_27F96DE10, sub_258A04FBC, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  *(v185 + *(v211 + 36)) = v165;
  v186 = v214;
  sub_258A65954(v185, v214, sub_258A6504C);
  v187 = v244;
  sub_258A65724(v247, v244, sub_258A64EF4);
  v188 = v207;
  sub_258A65724(v248, v207, sub_258A64FA0);
  v189 = v213;
  sub_258A65724(v246, v213, sub_258A04E30);
  v190 = v215;
  sub_258A65724(v186, v215, sub_258A6504C);
  v191 = v187;
  v192 = v216;
  sub_258A65724(v191, v216, sub_258A64EF4);
  sub_258A048A8();
  v194 = v193;
  v195 = v192 + v193[12];
  v196 = v241;
  *v195 = v241;
  *(v195 + 8) = 0;
  sub_258A65724(v188, v192 + v193[16], sub_258A64FA0);
  v197 = v192 + v194[20];
  *v197 = v196;
  *(v197 + 8) = 0;
  sub_258A65724(v189, v192 + v194[24], sub_258A04E30);
  sub_258A65724(v190, v192 + v194[28], sub_258A6504C);
  sub_258A66A18(v186, sub_258A6504C);
  sub_258A66A18(v246, sub_258A04E30);
  sub_258A66A18(v248, sub_258A64FA0);
  sub_258A66A18(v247, sub_258A64EF4);
  sub_258A66A18(v190, sub_258A6504C);
  sub_258A66A18(v189, sub_258A04E30);
  sub_258A66A18(v188, sub_258A64FA0);
  return sub_258A66A18(v244, sub_258A64EF4);
}

uint64_t sub_258A619DC()
{
  v1 = sub_258B00224();
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B00084();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v20 != 2)
  {
    if (v20 != 1)
    {
      return 0;
    }

    sub_258B00044();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    sub_258AFFFF4();
    v15 = v14;
    v16 = *(v6 + 8);
    v16(v10, v5);
    v16(v12, v5);
    if (v15 <= 180.0)
    {
      if (qword_27F96C240 == -1)
      {
        return sub_258AFFD94();
      }
    }

    else if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_14;
  }

  v17 = v0 + *(type metadata accessor for ValenceSelectionPhaseContent() + 40);
  sub_258AC1BF8(v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  LOBYTE(v17) = sub_258B00124();
  (*(v6 + 8))(v12, v5);
  (*(v19 + 8))(v4, v1);
  if (v17)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_14;
  }

  if (qword_27F96C240 != -1)
  {
LABEL_14:
    swift_once();
  }

  return sub_258AFFD94();
}

uint64_t sub_258A61E6C@<X0>(void *a1@<X8>)
{
  result = sub_258B008C4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t *sub_258A61E98(uint64_t *result, char a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *result;
    v3 = result[1];
    v5 = (a3 + *(type metadata accessor for ValenceSelectionPhaseContent() + 52));
    v6 = *v5;
    v7 = *(v5 + 2);
    sub_258A6578C(0, &qword_27F96F9D8, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
    return sub_258B02134();
  }

  return result;
}

uint64_t sub_258A61F40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_258B00AA4();
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ValenceSelectionPhaseSpecs();
  v6 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v51 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5AFC();
  v44 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ValenceSelectionPhaseContent();
  v13 = v12 - 8;
  v49 = *(v12 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DE234();
  v43 = v16;
  v42 = *(v16 - 8);
  v17 = *(v42 + 64);
  MEMORY[0x28223BE20](v16);
  v41 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = a1[1];
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258A671CC(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v52 = v58;
  v53 = v59;
  v54 = v60[0];
  sub_258B02374();
  v48 = v55;
  v21 = v56;
  LOBYTE(v20) = v57;
  v60[3] = v50;
  v60[4] = &off_2869D7E28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  v23 = *(v13 + 40);
  sub_258AC1B90(boxed_opaque_existential_1);
  sub_258A65724(a1, v15, type metadata accessor for ValenceSelectionPhaseContent);
  v24 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v25 = v51;
  v26 = swift_allocObject();
  sub_258A65954(v15, v26 + v24, type metadata accessor for ValenceSelectionPhaseContent);
  v61 = v48;
  v62 = v21;
  v63 = v20;
  v58 = sub_258A657F0;
  v59 = v26;
  v64 = sub_258A626D0;
  v65 = 0;
  sub_258AC1B90(v25);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v28 = result;
    homeButtonType = MobileGestalt_get_homeButtonType();

    sub_258A66A18(v25, type metadata accessor for ValenceSelectionPhaseSpecs);
    v30 = v47;
    v31 = MEMORY[0x277CDF998];
    if (homeButtonType != 2)
    {
      v31 = MEMORY[0x277CDF988];
    }

    v32 = v46;
    (*(v47 + 104))(v46, *v31, v3);
    (*(v30 + 32))(v11, v32, v3);
    sub_258A671CC(&qword_27F96D048, MEMORY[0x277CDFA28]);
    result = sub_258B02AA4();
    if (result)
    {
      sub_258A65320(0, &qword_27F96D2B8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], type metadata accessor for ActionButton);
      v34 = v33;
      v35 = sub_258A6507C();
      v36 = sub_258A671CC(&qword_27F96D030, sub_2589D5AFC);
      v37 = v41;
      v38 = v44;
      sub_258B01C84();
      sub_258A66A18(v11, sub_2589D5AFC);
      sub_258A65808(&v58);
      v58 = &unk_2869D4670;
      sub_2589FC8C8(&unk_2869D5658);
      sub_258A65890(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2589C6824();
      sub_258B02A34();

      sub_2589C68A0(&unk_2869D5678);
      v58 = v34;
      v59 = v38;
      v60[0] = v35;
      v60[1] = v36;
      swift_getOpaqueTypeConformance2();
      v39 = v43;
      sub_258B01DD4();

      return (*(v42 + 8))(v37, v39);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_258A62628(uint64_t a1)
{
  v2 = type metadata accessor for ValenceSelectionPhaseContent();
  v3 = (a1 + *(v2 + 60));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v10 = v4;
  v11 = v5;
  v12 = v3;
  sub_258A65890(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  result = MEMORY[0x259C92900](&v9);
  if ((v9 & 1) == 0)
  {
    v7 = a1 + *(v2 + 28);
    v8 = *(v7 + 8);
    return (*v7)(result);
  }

  return result;
}

uint64_t sub_258A626D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();
  sub_2589BFF58();
  result = sub_258B01B44();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_258A62794(uint64_t a1@<X8>)
{
  v13 = MEMORY[0x277CDE470];
  v14 = a1;
  v2 = MEMORY[0x277CDFAB8];
  sub_258A666B8(0, &qword_27F96FA40, sub_258A64A54, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  sub_258A5E2AC(v18);
  v20[8] = v18[8];
  v20[9] = v18[9];
  *&v20[10] = v19;
  v20[4] = v18[4];
  v20[5] = v18[5];
  v20[6] = v18[6];
  v20[7] = v18[7];
  v20[0] = v18[0];
  v20[1] = v18[1];
  v20[2] = v18[2];
  v20[3] = v18[3];
  sub_258B024F4();
  sub_258B00C94();
  memcpy(v17, v20, sizeof(v17));
  memcpy(v16, v20, sizeof(v16));
  v15 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5688);
  sub_258A65890(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D56A8);
  sub_258A64A54(0);
  sub_258A66870(&qword_27F96FBE8, sub_258A64A54, sub_258A668F0);
  sub_258B01DD4();
  sub_258A66A18(v17, sub_258A64A54);

  v7 = (v1 + *(type metadata accessor for ValenceSelectionPhaseContent() + 44));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v16[0]) = v8;
  v16[1] = v9;
  sub_258A65890(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  if (v15)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = v14;
  sub_258A658E0(v6, v14, &qword_27F96FA40, sub_258A64A54, v13, v2);
  sub_258A649C0(0, &qword_27F96FA38, &qword_27F96FA40, sub_258A64A54);
  *(v11 + *(v12 + 36)) = v10;
}

void sub_258A62AF4(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = type metadata accessor for ValenceSelectionPhaseContent();
  v4 = v3 - 8;
  v68 = *(v3 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v3);
  v69 = v6;
  v71 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64B10();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64AE8(0);
  v63 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v66 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v63 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - v18;
  sub_258A64934();
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v63 - v26;
  sub_258A647A4();
  v64 = v28;
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A6477C(0);
  v65 = v32;
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v67 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v31 = sub_258B024F4();
  v31[1] = v35;
  sub_258A62794(v27);
  v36 = sub_258B00B44();
  v37 = sub_258B01874();
  v38 = &v27[*(v21 + 44)];
  *v38 = v36;
  v38[8] = v37;
  *v10 = sub_258B01194();
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_258A6673C(0, &qword_27F96FB28, sub_258A64BA4);
  sub_258A5F434(v2, 0, &v10[*(v39 + 44)]);
  v40 = sub_258B00B54();
  v41 = *(v4 + 64);
  v70 = v2;
  if (*(v2 + v41) == 1)
  {
    v42 = sub_258B018B4();
  }

  else
  {
    v42 = sub_258B01894();
  }

  v43 = v42;
  sub_258A6673C(0, &qword_27F96FBE0, sub_258A648CC);
  v45 = v31 + *(v44 + 44);
  sub_258A667A8(v10, v17, sub_258A64B10);
  v46 = &v17[*(v63 + 36)];
  *v46 = v40;
  v46[8] = v43;
  sub_258A667A8(v17, v19, sub_258A64AE8);
  sub_258A65724(v27, v25, sub_258A64934);
  v47 = v66;
  sub_258A656BC(v19, v66, sub_258A64AE8);
  sub_258A65724(v25, v45, sub_258A64934);
  sub_258A64900(0);
  sub_258A656BC(v47, v45 + *(v48 + 48), sub_258A64AE8);
  sub_258A66810(v19, sub_258A64AE8);
  sub_258A66A18(v27, sub_258A64934);
  sub_258A66810(v47, sub_258A64AE8);
  sub_258A66A18(v25, sub_258A64934);
  v49 = (v31 + *(v64 + 36));
  *v49 = 0xD000000000000022;
  v49[1] = 0x8000000258B37C70;
  sub_258B024F4();
  sub_258B00C94();
  v50 = v67;
  sub_258A667A8(v31, v67, sub_258A647A4);
  v51 = (v50 + *(v65 + 36));
  v52 = v81;
  v51[4] = v80;
  v51[5] = v52;
  v51[6] = v82;
  v53 = v77;
  *v51 = v76;
  v51[1] = v53;
  v54 = v79;
  v51[2] = v78;
  v51[3] = v54;
  v55 = v71;
  sub_258A65724(v70, v71, type metadata accessor for ValenceSelectionPhaseContent);
  v56 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v57 = swift_allocObject();
  sub_258A65954(v55, v57 + v56, type metadata accessor for ValenceSelectionPhaseContent);
  v73 = 0;
  sub_258B02114();
  LOBYTE(v56) = v74;
  v58 = v75;
  v59 = v50;
  v60 = v72;
  sub_258A667A8(v59, v72, sub_258A6477C);
  sub_258A652F8(0);
  v62 = v60 + *(v61 + 36);
  *v62 = sub_258A66AE8;
  *(v62 + 8) = v57;
  *(v62 + 16) = v56;
  *(v62 + 24) = v58;
}

id sub_258A63184(uint64_t a1)
{
  v2 = sub_258B01664();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ValenceSelectionPhaseContent();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = type metadata accessor for ValenceSelectionPhaseSpecs();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1 + *(v8 + 40);
  sub_258AC1B90(v14);
  sub_258A66A18(v14, type metadata accessor for ValenceSelectionPhaseSpecs);
  sub_258B02514();
  v20 = a1;
  sub_258A65724(a1, &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ValenceSelectionPhaseContent);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_258A65954(&v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16, type metadata accessor for ValenceSelectionPhaseContent);
  sub_258B01654();
  sub_258B00994();

  (*(v3 + 8))(v6, v2);
  sub_258A66F50();
  return [swift_getObjCClassFromMetadata() setAnimationsEnabled_];
}

uint64_t sub_258A63434(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ValenceSelectionPhaseContent() + 44));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_258A65890(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A634C8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ValenceSelectionPhaseContent() + 60));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  sub_258A65890(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  return sub_258B02314();
}

uint64_t sub_258A63550@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  sub_258A652F8(0);
  v79 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A666B8(0, &qword_27F96FBD8, sub_258A6477C, sub_258A652F8, MEMORY[0x277CE0330]);
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v68 - v9;
  sub_258A64B10();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64AE8(0);
  v71 = v15;
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v75 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v70 = v68 - v20;
  MEMORY[0x28223BE20](v19);
  v74 = v68 - v21;
  sub_258A64934();
  v23 = v22;
  v24 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v73 = v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v68 - v27;
  sub_258A647A4();
  v72 = v29;
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A6477C(0);
  v34 = v33;
  v35 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v76 = v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v77 = v68 - v38;
  v39 = type metadata accessor for ValenceSelectionPhaseContent();
  if (*(v1 + *(v39 + 24)) == 1)
  {
    v40 = v39;
    v68[1] = v7;
    v69 = v10;
    *v32 = sub_258B024F4();
    v32[1] = v41;
    sub_258A62794(v28);
    v42 = sub_258B00B44();
    v43 = sub_258B01874();
    v44 = &v28[*(v23 + 36)];
    *v44 = v42;
    v44[8] = v43;
    *v14 = sub_258B01194();
    *(v14 + 1) = 0;
    v14[16] = 0;
    sub_258A6673C(0, &qword_27F96FB28, sub_258A64BA4);
    sub_258A5F434(v1, 0, &v14[*(v45 + 44)]);
    v46 = sub_258B00B54();
    if (*(v1 + *(v40 + 56)) == 1)
    {
      v47 = sub_258B018B4();
    }

    else
    {
      v47 = sub_258B01894();
    }

    v50 = v47;
    sub_258A6673C(0, &qword_27F96FBE0, sub_258A648CC);
    v52 = v32 + *(v51 + 44);
    v53 = v70;
    sub_258A667A8(v14, v70, sub_258A64B10);
    v54 = v53 + *(v71 + 36);
    *v54 = v46;
    *(v54 + 8) = v50;
    v55 = v53;
    v56 = v74;
    sub_258A667A8(v55, v74, sub_258A64AE8);
    v57 = v73;
    sub_258A65724(v28, v73, sub_258A64934);
    v58 = v75;
    sub_258A656BC(v56, v75, sub_258A64AE8);
    sub_258A65724(v57, v52, sub_258A64934);
    sub_258A64900(0);
    sub_258A656BC(v58, v52 + *(v59 + 48), sub_258A64AE8);
    sub_258A66810(v56, sub_258A64AE8);
    sub_258A66A18(v28, sub_258A64934);
    sub_258A66810(v58, sub_258A64AE8);
    sub_258A66A18(v57, sub_258A64934);
    v60 = (v32 + *(v72 + 36));
    *v60 = 0xD000000000000022;
    v60[1] = 0x8000000258B37C70;
    sub_258B024F4();
    sub_258B00C94();
    v61 = v76;
    sub_258A667A8(v32, v76, sub_258A647A4);
    v62 = (v61 + *(v34 + 36));
    v63 = v85;
    v62[4] = v84;
    v62[5] = v63;
    v62[6] = v86;
    v64 = v81;
    *v62 = v80;
    v62[1] = v64;
    v65 = v83;
    v62[2] = v82;
    v62[3] = v65;
    v66 = v77;
    sub_258A667A8(v61, v77, sub_258A6477C);
    sub_258A656BC(v66, v69, sub_258A6477C);
    swift_storeEnumTagMultiPayload();
    sub_258A66870(&qword_27F96FBB8, sub_258A6477C, sub_258A665C0);
    sub_258A66670();
    sub_258B012A4();
    v48 = sub_258A6477C;
    v49 = v66;
  }

  else
  {
    sub_258A62AF4(v5);
    sub_258A656BC(v5, v10, sub_258A652F8);
    swift_storeEnumTagMultiPayload();
    sub_258A66870(&qword_27F96FBB8, sub_258A6477C, sub_258A665C0);
    sub_258A66670();
    sub_258B012A4();
    v48 = sub_258A652F8;
    v49 = v5;
  }

  return sub_258A66810(v49, v48);
}

uint64_t sub_258A63D40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  sub_258A64B10();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64AE8(0);
  v44 = v7;
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v41 - v12;
  sub_258A666B8(0, &qword_27F96FBA0, sub_258A646EC, sub_258A64AE8, MEMORY[0x277CE0330]);
  v43 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v41 = sub_258B006A4();
  v17 = *(v41 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v41);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64734(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A646EC(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1[1] + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_useLiveVisualization) == 1)
  {
    sub_258A63550(v24);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v29 = v46;
    v30 = a1 + *(type metadata accessor for ValenceSelectionPhaseContent() + 36);
    sub_258AC14E8(v20);
    sub_258A9AEC0(v20, v24, v28, v29);
    (*(v17 + 8))(v20, v41);
    sub_258A66810(v24, sub_258A64734);
    sub_258A656BC(v28, v16, sub_258A646EC);
    swift_storeEnumTagMultiPayload();
    sub_258A66414();
    sub_258A654E4();
    sub_258B012A4();
    v31 = sub_258A646EC;
    v32 = v28;
  }

  else
  {
    v33 = v44;
    *v6 = sub_258B01194();
    *(v6 + 1) = 0;
    v6[16] = 0;
    sub_258A6673C(0, &qword_27F96FB28, sub_258A64BA4);
    sub_258A5F434(a1, 0, &v6[*(v34 + 44)]);
    v35 = sub_258B00B54();
    if (*(a1 + *(type metadata accessor for ValenceSelectionPhaseContent() + 56)) == 1)
    {
      v36 = sub_258B018B4();
    }

    else
    {
      v36 = sub_258B01894();
    }

    v37 = v36;
    sub_258A667A8(v6, v11, sub_258A64B10);
    v38 = &v11[*(v33 + 36)];
    *v38 = v35;
    v38[8] = v37;
    v39 = v42;
    sub_258A667A8(v11, v42, sub_258A64AE8);
    sub_258A656BC(v39, v16, sub_258A64AE8);
    swift_storeEnumTagMultiPayload();
    sub_258A66414();
    sub_258A654E4();
    sub_258B012A4();
    v31 = sub_258A64AE8;
    v32 = v39;
  }

  return sub_258A66810(v32, v31);
}

uint64_t sub_258A64270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258A64B10();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64AE8(0);
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A65460();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_258B01194();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_258A6673C(0, &qword_27F96FB28, sub_258A64BA4);
  sub_258A5F434(a1, 1, &v7[*(v19 + 44)]);
  v20 = sub_258B00B54();
  if (*(a1 + *(type metadata accessor for ValenceSelectionPhaseContent() + 56)) == 1)
  {
    v21 = sub_258B018B4();
  }

  else
  {
    v21 = sub_258B01894();
  }

  v22 = v21;
  sub_258A667A8(v7, v12, sub_258A64B10);
  v23 = &v12[*(v9 + 36)];
  *v23 = v20;
  v23[8] = v22;
  sub_258A65890(0, &qword_27F96FB30, MEMORY[0x277CE08E0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2BE60;
  v25 = sub_258B01834();
  *(inited + 32) = v25;
  v26 = sub_258B01854();
  *(inited + 33) = v26;
  sub_258B01844();
  sub_258B01844();
  if (sub_258B01844() != v25)
  {
    sub_258B01844();
  }

  sub_258B01844();
  if (sub_258B01844() != v26)
  {
    sub_258B01844();
  }

  sub_258B024F4();
  sub_258A654E4();
  sub_258B01DC4();
  sub_258A66810(v12, sub_258A64AE8);
  return (*(v15 + 32))(a2, v18, v14);
}

void sub_258A645A0(uint64_t a1@<X8>)
{
  sub_258A63D40(v1, a1);
  v3 = sub_258B024F4();
  v5 = v4;
  sub_258A666B8(0, &qword_27F96F9E0, sub_258A64650, sub_258A65374, MEMORY[0x277CDFAB8]);
  v7 = a1 + *(v6 + 36);
  sub_258A64270(v1, v7);
  sub_258A65374();
  v9 = (v7 + *(v8 + 36));
  *v9 = v3;
  v9[1] = v5;
}

void sub_258A64650()
{
  if (!qword_27F96F9E8)
  {
    sub_258A666B8(255, &qword_27F96F9F0, sub_258A646EC, sub_258A64AE8, MEMORY[0x277CE0338]);
    v0 = sub_258B02074();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F9E8);
    }
  }
}

void sub_258A647A4()
{
  if (!qword_27F96FA10)
  {
    sub_258A64838();
    sub_258A65320(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FA10);
    }
  }
}

void sub_258A64838()
{
  if (!qword_27F96FA18)
  {
    sub_258A648CC(255);
    sub_258A671CC(&qword_27F96FAE0, sub_258A648CC);
    v0 = sub_258B022E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FA18);
    }
  }
}

void sub_258A64934()
{
  if (!qword_27F96FA30)
  {
    sub_258A649C0(255, &qword_27F96FA38, &qword_27F96FA40, sub_258A64A54);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FA30);
    }
  }
}

void sub_258A649C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_258A666B8(255, a3, a4, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258A64A84(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_258A64FE8(255, a3, a4);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258A64B10()
{
  if (!qword_27F96FA60)
  {
    sub_258A64BA4(255);
    sub_258A671CC(&qword_27F96FAD8, sub_258A64BA4);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FA60);
    }
  }
}

void sub_258A64C0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_258A64CD0()
{
  if (!qword_27F96FA80)
  {
    sub_258A64D84();
    sub_258A671CC(&qword_27F96FAB8, sub_258A64D84);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FA80);
    }
  }
}

void sub_258A64D84()
{
  if (!qword_27F96FA88)
  {
    sub_258A64E98(255);
    sub_2589DE168();
    sub_258B024B4();
    sub_258A66870(&qword_27F96FA90, sub_258A64E98, sub_258A65100);
    sub_258A671CC(&qword_27F96D2D8, sub_2589DE168);
    v0 = type metadata accessor for ScrollableWithPinnedFooter();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FA88);
    }
  }
}

void sub_258A64F18(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_258A649C0(255, a3, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A64FE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_258A6507C()
{
  result = qword_27F96D2C0;
  if (!qword_27F96D2C0)
  {
    sub_258A65320(255, &qword_27F96D2B8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], type metadata accessor for ActionButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D2C0);
  }

  return result;
}

unint64_t sub_258A65178()
{
  result = qword_27F96FAA8;
  if (!qword_27F96FAA8)
  {
    sub_258A04788(255);
    sub_258A671CC(&qword_27F96FAB0, sub_258A047B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FAA8);
  }

  return result;
}

void sub_258A65290()
{
  if (!qword_27F96FAD0)
  {
    sub_2589DE168();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96FAD0);
    }
  }
}

void sub_258A65320(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A65374()
{
  if (!qword_27F96FAF0)
  {
    sub_258A653FC(255, &qword_27F96FAF8, sub_258A65460);
    sub_258A65594();
    v0 = sub_258B01294();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FAF0);
    }
  }
}

void sub_258A653FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A65460()
{
  if (!qword_27F96FB00)
  {
    sub_258A64AE8(255);
    sub_258A654E4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FB00);
    }
  }
}

unint64_t sub_258A654E4()
{
  result = qword_27F96FB08;
  if (!qword_27F96FB08)
  {
    sub_258A64AE8(255);
    sub_258A671CC(&qword_27F96FB10, sub_258A64B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB08);
  }

  return result;
}

unint64_t sub_258A65594()
{
  result = qword_27F96FB18;
  if (!qword_27F96FB18)
  {
    sub_258A653FC(255, &qword_27F96FAF8, sub_258A65460);
    sub_258A64AE8(255);
    sub_258A654E4();
    swift_getOpaqueTypeConformance2();
    sub_258A65668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB18);
  }

  return result;
}

unint64_t sub_258A65668()
{
  result = qword_27F96FB20;
  if (!qword_27F96FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB20);
  }

  return result;
}

uint64_t sub_258A656BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A65724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A6578C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A65808(uint64_t a1)
{
  sub_258A65320(0, &qword_27F96D2B8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], type metadata accessor for ActionButton);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A65890(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A658E0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_258A666B8(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t sub_258A65954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *sub_258A659BC(uint64_t *a1)
{
  v3 = *(type metadata accessor for ValenceSelectionPhaseContent() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_258A61E98(a1, v4, v5);
}

uint64_t sub_258A65A30(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_258A649C0(0, a3, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A65ABC(uint64_t a1, uint64_t a2)
{
  sub_258A64F18(0, &qword_27F96DDF8, &qword_27F96DE00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258A65B40()
{
  result = qword_27F96FB50;
  if (!qword_27F96FB50)
  {
    sub_258A04FBC(255);
    sub_258A671CC(&qword_27F96FB58, type metadata accessor for ValenceSlider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB50);
  }

  return result;
}

uint64_t sub_258A65BF0(uint64_t a1, uint64_t a2)
{
  sub_258A64FE8(0, &qword_27F96DDD8, MEMORY[0x277CDE470]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258A65C78()
{
  result = qword_27F96FB68;
  if (!qword_27F96FB68)
  {
    sub_258A04B14(255);
    sub_258A66870(&qword_27F96FB70, sub_258A04B5C, sub_258A65D60);
    sub_258A671CC(&qword_27F96FB88, sub_258A04C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB68);
  }

  return result;
}

unint64_t sub_258A65D9C()
{
  result = qword_27F96FB80;
  if (!qword_27F96FB80)
  {
    sub_258A04BAC();
    sub_2589D61E4();
    sub_2589C02DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB80);
  }

  return result;
}

unint64_t sub_258A65E1C()
{
  result = qword_27F96FB98;
  if (!qword_27F96FB98)
  {
    sub_258A64FE8(255, &qword_27F96DDD8, MEMORY[0x277CDE470]);
    sub_2589DC7D8();
    sub_258A671CC(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB98);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for ValenceSelectionPhaseContent();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 17) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = v1[5];
  v6 = sub_258B008E4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = *(v3 + v1[7] + 8);

  v8 = (v3 + v1[8]);
  sub_258A6578C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B01504();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v11 = *(type metadata accessor for ValenceSelectionPhaseSpecs() + 20);
    v12 = sub_258B00AA4();
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  else
  {
    v13 = *v8;
  }

  v14 = v1[9];
  sub_258A6578C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B006A4();
    (*(*(v15 - 8) + 8))(v3 + v14, v15);
  }

  else
  {
    v16 = *(v3 + v14);
  }

  v17 = v1[10];
  sub_258A6578C(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_258B00224();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
    v19 = *(v3 + v17);
  }

  v20 = *(v3 + v1[11] + 8);

  v21 = *(v3 + v1[12] + 64);

  v22 = *(v3 + v1[13] + 16);

  v23 = (v3 + v1[15]);
  v24 = *v23;

  v25 = v23[1];

  return swift_deallocObject();
}

uint64_t sub_258A66298(uint64_t a1)
{
  v3 = *(type metadata accessor for ValenceSelectionPhaseContent() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_258A5F304(a1, v4, v5);
}

uint64_t sub_258A6630C(uint64_t a1, uint64_t a2)
{
  sub_258A65890(0, &qword_27F96F9D0, &_s9PlacementVN, MEMORY[0x277CE10B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A66394(uint64_t a1)
{
  sub_258A65890(0, &qword_27F96F9D0, &_s9PlacementVN, MEMORY[0x277CE10B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258A66414()
{
  result = qword_27F96FBA8;
  if (!qword_27F96FBA8)
  {
    sub_258A646EC(255);
    sub_258A66508(&qword_27F96FBB0, sub_258A64734, sub_258A66670);
    sub_258A671CC(qword_27F96DBD0, sub_258A005F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FBA8);
  }

  return result;
}

uint64_t sub_258A66508(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_258A66870(&qword_27F96FBB8, sub_258A6477C, sub_258A665C0);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A665C0()
{
  result = qword_27F96FBC0;
  if (!qword_27F96FBC0)
  {
    sub_258A647A4();
    sub_258A671CC(&qword_27F96FBC8, sub_258A64838);
    sub_258A4DA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FBC0);
  }

  return result;
}

void sub_258A666B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_258A6673C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258A667A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A66810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A66870(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A668F0()
{
  result = qword_27F96FBF0;
  if (!qword_27F96FBF0)
  {
    sub_258A64FE8(255, &qword_27F96FA50, sub_258A04C38);
    sub_258A669C4();
    sub_258A671CC(&qword_27F96FB88, sub_258A04C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FBF0);
  }

  return result;
}

unint64_t sub_258A669C4()
{
  result = qword_27F96FBF8;
  if (!qword_27F96FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FBF8);
  }

  return result;
}

uint64_t sub_258A66A18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A66A78(__int128 *a1)
{
  v3 = *(type metadata accessor for ValenceSelectionPhaseContent() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_258A5E74C(a1, v4);
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for ValenceSelectionPhaseContent();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = v1[5];
  v6 = sub_258B008E4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = *(v3 + v1[7] + 8);

  v8 = (v3 + v1[8]);
  sub_258A6578C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B01504();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v11 = *(type metadata accessor for ValenceSelectionPhaseSpecs() + 20);
    v12 = sub_258B00AA4();
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  else
  {
    v13 = *v8;
  }

  v14 = v1[9];
  sub_258A6578C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B006A4();
    (*(*(v15 - 8) + 8))(v3 + v14, v15);
  }

  else
  {
    v16 = *(v3 + v14);
  }

  v17 = v1[10];
  sub_258A6578C(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_258B00224();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
    v19 = *(v3 + v17);
  }

  v20 = *(v3 + v1[11] + 8);

  v21 = *(v3 + v1[12] + 64);

  v22 = *(v3 + v1[13] + 16);

  v23 = (v3 + v1[15]);
  v24 = *v23;

  v25 = v23[1];

  return swift_deallocObject();
}