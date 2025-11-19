uint64_t sub_251B81838()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  v3 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString + 8);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v4 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings);

  v6 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings);

  v7 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v8 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString + 8);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  return v0;
}

uint64_t sub_251B819C4(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

void sub_251B81A44()
{
  sub_251B67AAC(319, qword_2813E64E0, type metadata accessor for PBHKRatioValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_251B67AAC(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_251B67AAC(319, qword_2813E5640, type metadata accessor for PBHKCodedQuantity, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_251B81CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v17 = a6(v18);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_251B81DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_251B81FF4();
          break;
        case 2:
          sub_251AB6E48();
          break;
        case 3:
          sub_251AB6ECC();
          break;
        case 4:
          sub_251B82088();
          break;
        case 5:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString;
          goto LABEL_5;
        case 6:
          sub_251B82164();
          break;
        case 7:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents;
          goto LABEL_5;
        case 8:
          sub_251B82240(a2, a1, a3, a4, &OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings);
          break;
        case 10:
          sub_251B82240(a2, a1, a3, a4, &OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings);
          break;
        case 11:
          sub_251B822C8();
          break;
        case 12:
          sub_251B823A4();
          break;
        case 13:
          sub_251B82480();
          break;
        case 14:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString;
LABEL_5:
          sub_251B8255C(v11, v12, v13, v14, v15);
          break;
        case 15:
          sub_251B825E4();
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B81FF4()
{
  swift_beginAccess();
  sub_251BB2FFC();
  sub_251C70494();
  return swift_endAccess();
}

uint64_t sub_251B82088()
{
  swift_beginAccess();
  type metadata accessor for PBHKRatioValue(0);
  sub_251B9ED44(&qword_27F47B1B0, type metadata accessor for PBHKRatioValue);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B82164()
{
  swift_beginAccess();
  type metadata accessor for PBDateRange(0);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B82240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_251C70504();
  return swift_endAccess();
}

uint64_t sub_251B822C8()
{
  swift_beginAccess();
  type metadata accessor for PBHKCodedValue(0);
  sub_251B9ED44(&qword_27F47B150, type metadata accessor for PBHKCodedValue);
  sub_251C70554();
  return swift_endAccess();
}

uint64_t sub_251B823A4()
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B82480()
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B8255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B825E4()
{
  swift_beginAccess();
  type metadata accessor for PBHKCodedQuantity(0);
  sub_251B9ED44(&qword_27F47B130, type metadata accessor for PBHKCodedQuantity);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B826C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (v31 = *(a1 + 24), sub_251BB2FFC(), result = sub_251C70604(), !v4))
  {
    swift_beginAccess();
    v10 = *(a1 + 40);
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = *(a1 + 40);

      sub_251C70674();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    v13 = *(a1 + 56);
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v15 = *(a1 + 56);

      sub_251C70674();
      if (v4)
      {
      }
    }

    result = sub_251B82B64(a1, a2, a3, a4);
    if (!v4)
    {
      v16 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
      swift_beginAccess();
      v17 = *v16;
      v18 = v16[1];
      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {

        sub_251C70674();
      }

      sub_251B82DBC(a1, a2, a3, a4);
      v20 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
      swift_beginAccess();
      v21 = *v20;
      v22 = v20[1];
      v23 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v23 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {

        sub_251C70674();
      }

      v24 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings;
      swift_beginAccess();
      if (*(*(a1 + v24) + 16))
      {

        sub_251C70654();
      }

      v25 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings;
      swift_beginAccess();
      if (*(*(a1 + v25) + 16))
      {

        sub_251C70654();
      }

      v26 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues;
      swift_beginAccess();
      if (*(*(a1 + v26) + 16))
      {
        type metadata accessor for PBHKCodedValue(0);
        sub_251B9ED44(&qword_27F47B150, type metadata accessor for PBHKCodedValue);

        sub_251C70694();
      }

      sub_251B83014(a1, a2, a3, a4);
      sub_251B8326C(a1, a2, a3, a4);
      v27 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
      swift_beginAccess();
      v28 = *v27;
      v29 = v27[1];
      v30 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v30 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (v30)
      {

        sub_251C70674();
      }

      return sub_251B834C4(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_251B82B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251B67AAC(0, qword_2813E64E0, type metadata accessor for PBHKRatioValue, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKRatioValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
  swift_beginAccess();
  sub_251BB33C4(a1 + v14, v8, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKRatioValue);
  sub_251B9ED44(&qword_27F47B1B0, type metadata accessor for PBHKRatioValue);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKRatioValue);
}

uint64_t sub_251B82DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBDateRange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  swift_beginAccess();
  sub_251BB33C4(a1 + v14, v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBDateRange);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBDateRange);
}

uint64_t sub_251B83014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
  swift_beginAccess();
  sub_251BB33C4(a1 + v14, v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B8326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept;
  swift_beginAccess();
  sub_251BB33C4(a1 + v14, v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B834C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251B67AAC(0, qword_2813E5640, type metadata accessor for PBHKCodedQuantity, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKCodedQuantity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  swift_beginAccess();
  sub_251BB33C4(a1 + v14, v8, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKCodedQuantity);
  sub_251B9ED44(&qword_27F47B130, type metadata accessor for PBHKCodedQuantity);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKCodedQuantity);
}

BOOL sub_251B83760(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PBHKCodedQuantity(0);
  v168 = *(v4 - 8);
  v169 = v4;
  v5 = *(v168 + 64);
  MEMORY[0x28223BE20](v4);
  v164 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BB34B4(0, &qword_27F47B590, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  v167 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v170 = &v162 - v9;
  v10 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5640, type metadata accessor for PBHKCodedQuantity, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v165 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v172 = &v162 - v15;
  v178 = type metadata accessor for PBHKConcept(0);
  v180 = *(v178 - 8);
  v16 = *(v180 + 64);
  v17 = MEMORY[0x28223BE20](v178);
  v166 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v174 = &v162 - v19;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v177 = v20;
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v173 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v176 = &v162 - v24;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v10);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v171 = &v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v175 = &v162 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v188 = &v162 - v32;
  MEMORY[0x28223BE20](v31);
  v179 = &v162 - v33;
  v34 = type metadata accessor for PBDateRange(0);
  v183 = *(v34 - 8);
  v184 = v34;
  v35 = *(v183 + 64);
  MEMORY[0x28223BE20](v34);
  v181 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v182 = v37;
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v185 = &v162 - v39;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v10);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v162 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v187 = &v162 - v45;
  v46 = type metadata accessor for PBHKRatioValue(0);
  v189 = *(v46 - 8);
  v190 = v46;
  v47 = *(v189 + 64);
  MEMORY[0x28223BE20](v46);
  v186 = (&v162 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BB34B4(0, &qword_27F47B598, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  v50 = v49;
  v51 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v162 - v52;
  sub_251B67AAC(0, qword_2813E64E0, type metadata accessor for PBHKRatioValue, v10);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v54 - 8);
  v58 = &v162 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v60 = &v162 - v59;
  swift_beginAccess();
  v61 = a1[2];
  swift_beginAccess();
  v62 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v62)
    {
      case 1:
        if (v61 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v61 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v61 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v61 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v61 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v61 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v61 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v61 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v61 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v61 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      case 11:
        if (v61 != 11)
        {
          return 0;
        }

        goto LABEL_6;
      case 12:
        if (v61 != 12)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v61)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v61 != v62)
  {
    return 0;
  }

LABEL_6:
  swift_beginAccess();
  v64 = a1[4];
  v63 = a1[5];
  swift_beginAccess();
  if ((v64 != *(a2 + 32) || v63 != *(a2 + 40)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v65 = a1[6];
  v66 = a1[7];
  swift_beginAccess();
  if ((v65 != *(a2 + 48) || v66 != *(a2 + 56)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v162 = v44;
  v163 = v58;
  v67 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
  swift_beginAccess();
  sub_251BB33C4(a1 + v67, v60, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  v68 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
  swift_beginAccess();
  v69 = *(v50 + 48);
  sub_251BB33C4(v60, v53, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  sub_251BB33C4(a2 + v68, &v53[v69], qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  v70 = v190;
  v71 = *(v189 + 48);
  if (v71(v53, 1, v190) == 1)
  {

    sub_251BB3444(v60, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
    v72 = v71(&v53[v69], 1, v70);
    v73 = v188;
    if (v72 == 1)
    {
      sub_251BB3444(v53, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  v74 = a1;
  v75 = v163;
  sub_251BB33C4(v53, v163, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  if (v71(&v53[v69], 1, v70) == 1)
  {

    sub_251BB3444(v60, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
    sub_251BB2308(v75, type metadata accessor for PBHKRatioValue);
LABEL_17:
    sub_251BB242C(v53, &qword_27F47B598, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
    goto LABEL_18;
  }

  v77 = v186;
  sub_251BB23C4(&v53[v69], v186, type metadata accessor for PBHKRatioValue);
  if ((*v75 != *v77 || v75[1] != v77[1]) && (sub_251C719D4() & 1) == 0 || (v163[2] != v77[2] || v163[3] != v77[3]) && (sub_251C719D4() & 1) == 0)
  {

    sub_251BB3444(v60, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
    sub_251BB2308(v77, type metadata accessor for PBHKRatioValue);
    sub_251BB2308(v163, type metadata accessor for PBHKRatioValue);
    sub_251BB3444(v53, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
    goto LABEL_18;
  }

  v78 = *(v190 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);

  v190 = a2;
  v79 = v163;
  a1 = v74;
  v80 = sub_251C70ED4();
  sub_251BB3444(v60, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  sub_251BB2308(v77, type metadata accessor for PBHKRatioValue);
  v81 = v79;
  a2 = v190;
  sub_251BB2308(v81, type metadata accessor for PBHKRatioValue);
  sub_251BB3444(v53, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  v73 = v188;
  if ((v80 & 1) == 0)
  {
LABEL_18:

    return 0;
  }

LABEL_27:
  v82 = a1;
  v83 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
  swift_beginAccess();
  v84 = *v83;
  v85 = v83[1];
  v86 = (a2 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
  swift_beginAccess();
  if ((v84 != *v86 || v85 != v86[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_18;
  }

  v87 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  swift_beginAccess();
  v88 = v187;
  sub_251BB33C4(a1 + v87, v187, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v89 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  swift_beginAccess();
  v90 = *(v182 + 48);
  v91 = v185;
  sub_251BB33C4(v88, v185, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BB33C4(a2 + v89, v91 + v90, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v92 = v184;
  v93 = *(v183 + 48);
  if (v93(v91, 1, v184) == 1)
  {
    sub_251BB3444(v88, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if (v93(v91 + v90, 1, v92) == 1)
    {
      sub_251BB3444(v91, qword_2813E6EE8, type metadata accessor for PBDateRange);
      goto LABEL_63;
    }

LABEL_59:
    v95 = &qword_27F4790D0;
    v96 = qword_2813E6EE8;
    v97 = type metadata accessor for PBDateRange;
    v98 = v91;
LABEL_60:
    sub_251BB242C(v98, v95, v96, v97);
    goto LABEL_18;
  }

  v94 = v162;
  sub_251BB33C4(v91, v162, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v93(v91 + v90, 1, v92) == 1)
  {
    sub_251BB3444(v187, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251BB2308(v94, type metadata accessor for PBDateRange);
    goto LABEL_59;
  }

  v99 = v91 + v90;
  v100 = v181;
  sub_251BB23C4(v99, v181, type metadata accessor for PBDateRange);
  v101 = sub_251BB2194(v94, v100);
  sub_251BB2308(v100, type metadata accessor for PBDateRange);
  sub_251BB3444(v187, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BB2308(v94, type metadata accessor for PBDateRange);
  sub_251BB3444(v91, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((v101 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_63:
  v102 = (v82 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
  swift_beginAccess();
  v103 = *v102;
  v104 = v102[1];
  v105 = (a2 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
  swift_beginAccess();
  if ((v103 != *v105 || v104 != v105[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_18;
  }

  v106 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings;
  swift_beginAccess();
  v107 = *(v82 + v106);
  v108 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings;
  swift_beginAccess();
  if ((sub_251A93C70(v107, *(a2 + v108)) & 1) == 0)
  {
    goto LABEL_18;
  }

  v109 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings;
  swift_beginAccess();
  v110 = *(v82 + v109);
  v111 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings;
  swift_beginAccess();
  if ((sub_251A93C70(v110, *(a2 + v111)) & 1) == 0)
  {
    goto LABEL_18;
  }

  v112 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues;
  swift_beginAccess();
  v113 = *(v82 + v112);
  v114 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues;
  swift_beginAccess();
  v115 = *(a2 + v114);

  v116 = sub_251A9CB84(v113, v115);

  if ((v116 & 1) == 0)
  {
    goto LABEL_18;
  }

  v117 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
  swift_beginAccess();
  v118 = v179;
  sub_251BB33C4(v82 + v117, v179, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v119 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
  swift_beginAccess();
  v120 = v176;
  v121 = *(v177 + 48);
  sub_251BB33C4(v118, v176, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(a2 + v119, v120 + v121, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v123 = v180 + 48;
  v122 = *(v180 + 48);
  v124 = v178;
  if (v122(v120, 1, v178) == 1)
  {
    sub_251BB3444(v118, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v122(v120 + v121, 1, v124) == 1)
    {
      v180 = v123;
      sub_251BB3444(v120, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_79;
    }

    goto LABEL_75;
  }

  sub_251BB33C4(v120, v73, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v122(v120 + v121, 1, v124) == 1)
  {
    sub_251BB3444(v179, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v73, type metadata accessor for PBHKConcept);
LABEL_75:
    v95 = &qword_27F4790E8;
    v96 = qword_2813E6D28;
    v97 = type metadata accessor for PBHKConcept;
    v98 = v120;
    goto LABEL_60;
  }

  v180 = v123;
  v125 = v174;
  sub_251BB23C4(v120 + v121, v174, type metadata accessor for PBHKConcept);
  v126 = *(v124 + 20);
  v127 = *(v73 + v126);
  v128 = *(v125 + v126);
  if (v127 != v128)
  {
    v129 = *(v73 + v126);

    v130 = sub_251B70648(v127, v128);

    if ((v130 & 1) == 0)
    {
      sub_251BB2308(v174, type metadata accessor for PBHKConcept);
      sub_251BB3444(v179, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v73, type metadata accessor for PBHKConcept);
      v158 = v120;
LABEL_100:
      sub_251BB3444(v158, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_18;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v131 = v174;
  LODWORD(v190) = sub_251C70ED4();
  sub_251BB2308(v131, type metadata accessor for PBHKConcept);
  sub_251BB3444(v179, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB2308(v73, type metadata accessor for PBHKConcept);
  sub_251BB3444(v120, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v190 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_79:
  v132 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept;
  swift_beginAccess();
  v133 = v175;
  sub_251BB33C4(v82 + v132, v175, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v134 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept;
  swift_beginAccess();
  v135 = *(v177 + 48);
  v136 = v173;
  sub_251BB33C4(v133, v173, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(a2 + v134, v136 + v135, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v137 = v178;
  if (v122(v136, 1, v178) == 1)
  {
    sub_251BB3444(v133, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v122(v136 + v135, 1, v137) == 1)
    {
      sub_251BB3444(v136, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_88;
    }

    goto LABEL_84;
  }

  v138 = v171;
  sub_251BB33C4(v136, v171, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v122(v136 + v135, 1, v137) == 1)
  {
    sub_251BB3444(v175, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v138, type metadata accessor for PBHKConcept);
LABEL_84:
    v95 = &qword_27F4790E8;
    v96 = qword_2813E6D28;
    v97 = type metadata accessor for PBHKConcept;
    v98 = v136;
    goto LABEL_60;
  }

  v139 = v166;
  sub_251BB23C4(v136 + v135, v166, type metadata accessor for PBHKConcept);
  v140 = *(v137 + 20);
  v141 = *(v138 + v140);
  v142 = *(v139 + v140);
  if (v141 != v142)
  {
    v143 = *(v138 + v140);

    v144 = sub_251B70648(v141, v142);

    if ((v144 & 1) == 0)
    {
      sub_251BB2308(v139, type metadata accessor for PBHKConcept);
      sub_251BB3444(v175, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v138, type metadata accessor for PBHKConcept);
      v158 = v136;
      goto LABEL_100;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v145 = sub_251C70ED4();
  sub_251BB2308(v139, type metadata accessor for PBHKConcept);
  sub_251BB3444(v175, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB2308(v138, type metadata accessor for PBHKConcept);
  sub_251BB3444(v136, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v145 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_88:
  v146 = (v82 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
  swift_beginAccess();
  v147 = *v146;
  v148 = v146[1];
  v149 = (a2 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
  swift_beginAccess();
  if ((v147 != *v149 || v148 != v149[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_18;
  }

  v150 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  swift_beginAccess();
  v151 = v172;
  sub_251BB33C4(v82 + v150, v172, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  v152 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  swift_beginAccess();
  v153 = *(v167 + 48);
  v154 = v151;
  v155 = v170;
  sub_251BB33C4(v154, v170, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  sub_251BB33C4(a2 + v152, v155 + v153, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  v156 = v169;
  v157 = *(v168 + 48);
  if (v157(v155, 1, v169) != 1)
  {
    v159 = v165;
    sub_251BB33C4(v155, v165, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
    if (v157(v155 + v153, 1, v156) == 1)
    {

      sub_251BB3444(v172, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
      sub_251BB2308(v159, type metadata accessor for PBHKCodedQuantity);
      goto LABEL_98;
    }

    v160 = v164;
    sub_251BB23C4(v155 + v153, v164, type metadata accessor for PBHKCodedQuantity);
    v161 = sub_251BAC5AC(v159, v160);

    sub_251BB2308(v160, type metadata accessor for PBHKCodedQuantity);
    sub_251BB3444(v172, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
    sub_251BB2308(v159, type metadata accessor for PBHKCodedQuantity);
    sub_251BB3444(v155, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
    return (v161 & 1) != 0;
  }

  sub_251BB3444(v172, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  if (v157(v155 + v153, 1, v156) != 1)
  {
LABEL_98:
    sub_251BB242C(v155, &qword_27F47B590, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
    return 0;
  }

  sub_251BB3444(v155, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  return 1;
}

uint64_t sub_251B8533C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B778, type metadata accessor for PBHKInspectableValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B853DC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B85448()
{
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue);

  return sub_251C705C4();
}

uint64_t sub_251B854C8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A22B8);
  __swift_project_value_buffer(v0, qword_27F4A22B8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "concept";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "value";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "referenceRanges";
  *(v12 + 8) = 15;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B856F4()
{
  result = sub_251C70444();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for PBHKReferenceRange(0);
          sub_251B9ED44(&qword_27F47B1D0, type metadata accessor for PBHKReferenceRange);
          sub_251C70554();
          break;
        case 2:
          sub_251B858CC();
          break;
        case 1:
          sub_251B85818();
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B85818()
{
  v0 = *(type metadata accessor for PBHKCodedValue(0) + 24);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B858CC()
{
  v0 = *(type metadata accessor for PBHKCodedValue(0) + 28);
  type metadata accessor for PBHKInspectableValue(0);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue);
  return sub_251C70564();
}

uint64_t sub_251B85980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251B85A94(v3, a1, a2, a3);
  if (!v4)
  {
    sub_251B85CE0(v3, a1, a2, a3);
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for PBHKReferenceRange(0);
      sub_251B9ED44(&qword_27F47B1D0, type metadata accessor for PBHKReferenceRange);
      sub_251C70694();
    }

    v11 = v5 + *(type metadata accessor for PBHKCodedValue(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B85A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKCodedValue(0);
  sub_251BB33C4(a1 + *(v14 + 24), v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B85CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKInspectableValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKCodedValue(0);
  sub_251BB33C4(a1 + *(v14 + 28), v8, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKInspectableValue);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKInspectableValue);
}

uint64_t sub_251B85F30@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[a1[5]];
  sub_251C703A4();
  v5 = a1[6];
  v6 = type metadata accessor for PBHKConcept(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for PBHKInspectableValue(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_251B86054(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B788, type metadata accessor for PBHKCodedValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B860F4(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B150, type metadata accessor for PBHKCodedValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B86160()
{
  sub_251B9ED44(&qword_27F47B150, type metadata accessor for PBHKCodedValue);

  return sub_251C705C4();
}

uint64_t sub_251B861DC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A22D0);
  __swift_project_value_buffer(v0, qword_27F4A22D0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C7C1F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "rawValue";
  *(v7 + 8) = 8;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "localizedValue";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "doubleValue";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "comparatorDisplayString";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "unitDisplayString";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "codedQuantityDisplayString";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B864C0()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5 || result == 6)
      {
LABEL_2:
        sub_251C70534();
      }
    }

    else
    {
      if (result == 1 || result == 2)
      {
        goto LABEL_2;
      }

      if (result == 3)
      {
        sub_251C704E4();
      }
    }
  }
}

uint64_t sub_251B86598()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_251C70674(), !v1))
    {
      if (!*(v0 + 8) || (result = sub_251C70634(), !v1))
      {
        v8 = v0[6];
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v0[5] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = sub_251C70674(), !v1))
        {
          v10 = v0[8];
          v11 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v11 = v0[7] & 0xFFFFFFFFFFFFLL;
          }

          if (!v11 || (result = sub_251C70674(), !v1))
          {
            v12 = v0[10];
            v13 = HIBYTE(v12) & 0xF;
            if ((v12 & 0x2000000000000000) == 0)
            {
              v13 = v0[9] & 0xFFFFFFFFFFFFLL;
            }

            if (!v13 || (result = sub_251C70674(), !v1))
            {
              v14 = v0 + *(type metadata accessor for PBHKCodedQuantity(0) + 40);
              return sub_251C70394();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B86710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xE000000000000000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  v2 = a2 + *(a1 + 40);
  return sub_251C703A4();
}

uint64_t sub_251B86768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251B867DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_251B86850(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_251B868A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B790, type metadata accessor for PBHKCodedQuantity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B86944(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B130, type metadata accessor for PBHKCodedQuantity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B869B0()
{
  sub_251B9ED44(&qword_27F47B130, type metadata accessor for PBHKCodedQuantity);

  return sub_251C705C4();
}

uint64_t sub_251B86A30()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A22E8);
  __swift_project_value_buffer(v0, qword_27F4A22E8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_251C75420;
  v5 = v22 + v4 + *(v2 + 56);
  *(v22 + v4) = 1;
  *v5 = "diagnostic_test";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v22 + v4 + v3 + *(v2 + 56);
  *(v22 + v4 + v3) = 2;
  *v9 = "effective_end_date";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v22 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 3;
  *v11 = "effective_start_date";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v22 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "issue_date";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v22 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "panel_name";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v22 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "results";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v18 = *MEMORY[0x277D21870];
  v8();
  v19 = (v22 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "status";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251B86D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1)
        {
          sub_251B86EE4();
        }

        else if (result == 2 || result == 3)
        {
LABEL_4:
          sub_251C70534();
        }
      }

      else
      {
        if (result <= 5)
        {
          goto LABEL_4;
        }

        if (result == 6)
        {
          type metadata accessor for PBFHIRIdentifier(0);
          sub_251B9ED44(&qword_27F47B370, type metadata accessor for PBFHIRIdentifier);
          sub_251C70554();
        }

        else if (result == 7)
        {
          sub_251B86F98(a1, v5, a2, a3, type metadata accessor for PBHKDiagnosticTestReport);
        }
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B86EE4()
{
  v0 = *(type metadata accessor for PBHKDiagnosticTestReport(0) + 40);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B86F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 44);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B87050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B87240(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = *v3;
    v10 = v3[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_251C70674();
    }

    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_251C70674();
    }

    v14 = v3[5];
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v3[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      sub_251C70674();
    }

    v16 = v3[7];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v3[6] & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      sub_251C70674();
    }

    if (*(v3[8] + 16))
    {
      type metadata accessor for PBFHIRIdentifier(0);
      sub_251B9ED44(&qword_27F47B370, type metadata accessor for PBFHIRIdentifier);
      sub_251C70694();
    }

    sub_251B8748C(v3, a1, a2, a3, type metadata accessor for PBHKDiagnosticTestReport, 7);
    v18 = v3 + *(type metadata accessor for PBHKDiagnosticTestReport(0) + 36);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B87240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKDiagnosticTestReport(0);
  sub_251BB33C4(a1 + *(v14 + 40), v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B8748C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for PBHKConcept(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_251BB33C4(a1 + *(v17 + 44), v11, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_251BB3444(v11, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v11, v16, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v16, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B876E0@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0xE000000000000000;
  *(a2 + 8) = MEMORY[0x277D84F90];
  v4 = &a2[a1[9]];
  sub_251C703A4();
  v5 = a1[10];
  v6 = type metadata accessor for PBHKConcept(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), &a2[v5], 1, 1, v6);
  v7 = &a2[a1[11]];

  return v9(v7, 1, 1, v6);
}

uint64_t sub_251B8780C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B798, type metadata accessor for PBHKDiagnosticTestReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B878AC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B110, type metadata accessor for PBHKDiagnosticTestReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B87918()
{
  sub_251B9ED44(&qword_27F47B110, type metadata accessor for PBHKDiagnosticTestReport);

  return sub_251C705C4();
}

uint64_t sub_251B87998()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2300);
  __swift_project_value_buffer(v0, qword_27F4A2300);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "birth_date";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "name";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21870];
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B87BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7A0, type metadata accessor for PBHKAccountOwner);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B87C68(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B0F0, type metadata accessor for PBHKAccountOwner);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B87CD4()
{
  sub_251B9ED44(&qword_27F47B0F0, type metadata accessor for PBHKAccountOwner);

  return sub_251C705C4();
}

uint64_t sub_251B87D50()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2318);
  __swift_project_value_buffer(v0, qword_27F4A2318);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_251C78760;
  v5 = v34 + v4;
  v6 = v34 + v4 + *(v2 + 56);
  *(v34 + v4) = 1;
  *v6 = "body_sites";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "category";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "complications";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "execution_end_date";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "execution_start_date";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "follow_ups";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "not_performed";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 8;
  *v23 = "outcome";
  *(v23 + 1) = 7;
  v23[16] = 2;
  v9();
  v24 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v24 = "performers";
  *(v24 + 8) = 10;
  *(v24 + 16) = 2;
  v9();
  v25 = (v5 + 9 * v3);
  v26 = v25 + *(v2 + 56);
  *v25 = 10;
  *v26 = "procedure";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v3);
  v28 = v27 + *(v2 + 56);
  *v27 = 11;
  *v28 = "reason";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v3);
  v30 = v29 + *(v2 + 56);
  *v29 = 12;
  *v30 = "reasons_not_performed";
  *(v30 + 1) = 21;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v3);
  v32 = v31 + *(v2 + 56);
  *v31 = 13;
  *v32 = "status";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B88208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 3:
        case 6:
        case 12:
          type metadata accessor for PBHKConcept(0);
          sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
          sub_251C70554();
          break;
        case 2:
          sub_251B8852C(a1, v5, a2, a3, type metadata accessor for PBHKProcedureRecord);
          break;
        case 4:
        case 5:
          sub_251C70534();
          break;
        case 7:
          sub_251C70474();
          break;
        case 8:
          sub_251B885E4(a1, v5, a2, a3, type metadata accessor for PBHKProcedureRecord);
          break;
        case 9:
          sub_251C70504();
          break;
        case 10:
          sub_251B8869C(a1, v5, a2, a3, type metadata accessor for PBHKProcedureRecord);
          break;
        case 11:
          sub_251B88754(a1, v5, a2, a3, type metadata accessor for PBHKProcedureRecord);
          break;
        case 13:
          sub_251B8880C(a1, v5, a2, a3, type metadata accessor for PBHKProcedureRecord);
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B8852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 52);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B885E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 56);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B8869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 60);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B88754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 64);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B8880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 68);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B888C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBHKConcept(0), sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept), result = sub_251C70694(), !v4))
  {
    result = sub_251B88CB4(v3, a1, a2, a3, type metadata accessor for PBHKProcedureRecord, 2);
    if (!v4)
    {
      if (*(*(v3 + 8) + 16))
      {
        type metadata accessor for PBHKConcept(0);
        sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
        sub_251C70694();
      }

      v9 = *(v3 + 24);
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_251C70674();
      }

      v11 = *(v3 + 40);
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_251C70674();
      }

      if (*(*(v3 + 48) + 16))
      {
        type metadata accessor for PBHKConcept(0);
        sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
        sub_251C70694();
      }

      if (*(v3 + 56) == 1)
      {
        sub_251C705F4();
      }

      sub_251B88F08(v3, a1, a2, a3, type metadata accessor for PBHKProcedureRecord, 8);
      if (*(*(v3 + 64) + 16))
      {
        sub_251C70654();
      }

      sub_251B8915C(v3, a1, a2, a3, type metadata accessor for PBHKProcedureRecord, 10);
      sub_251B893B0(v3, a1, a2, a3, type metadata accessor for PBHKProcedureRecord, 11);
      if (*(*(v3 + 72) + 16))
      {
        type metadata accessor for PBHKConcept(0);
        sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
        sub_251C70694();
      }

      sub_251B89604(v3, a1, a2, a3, type metadata accessor for PBHKProcedureRecord);
      v13 = v3 + *(type metadata accessor for PBHKProcedureRecord(0) + 48);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B88CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for PBHKConcept(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_251BB33C4(a1 + *(v17 + 52), v11, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_251BB3444(v11, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v11, v16, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v16, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B88F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for PBHKConcept(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_251BB33C4(a1 + *(v17 + 56), v11, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_251BB3444(v11, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v11, v16, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v16, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B8915C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for PBHKConcept(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_251BB33C4(a1 + *(v17 + 60), v11, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_251BB3444(v11, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v11, v16, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v16, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B893B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for PBHKConcept(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_251BB33C4(a1 + *(v17 + 64), v11, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_251BB3444(v11, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v11, v16, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v16, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B89604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for PBHKConcept(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  sub_251BB33C4(a1 + *(v16 + 68), v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_251BB3444(v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v10, v15, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v15, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B89854@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  *(a2 + 64) = v4;
  *(a2 + 72) = v4;
  v5 = a2 + a1[12];
  sub_251C703A4();
  v6 = a1[13];
  v7 = type metadata accessor for PBHKConcept(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), a2 + v6, 1, 1, v7);
  v10(a2 + a1[14], 1, 1, v7);
  v10(a2 + a1[15], 1, 1, v7);
  v10(a2 + a1[16], 1, 1, v7);
  v8 = a2 + a1[17];

  return (v10)(v8, 1, 1, v7);
}

uint64_t sub_251B899F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7A8, type metadata accessor for PBHKProcedureRecord);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B89A90(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B0D0, type metadata accessor for PBHKProcedureRecord);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B89AFC()
{
  sub_251B9ED44(&qword_27F47B0D0, type metadata accessor for PBHKProcedureRecord);

  return sub_251C705C4();
}

uint64_t sub_251B89B7C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2330);
  __swift_project_value_buffer(v0, qword_27F4A2330);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C7C1F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "cycles";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "typical_cycle_length_days";
  *(v11 + 8) = 25;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21888];
  v10();
  v13 = (v6 + 2 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "typical_cycle_length_range";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v10();
  v15 = (v6 + 3 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "typical_period_length_days";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v10();
  v17 = (v6 + 4 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "typical_period_length_range";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v10();
  v19 = (v6 + 5 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "last_menstrual_period_date";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B89E6C()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            goto LABEL_16;
          case 5:
            sub_251B8A09C();
            break;
          case 6:
            sub_251C70534();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for PBCycleTracking.Cycle(0);
            sub_251B9ED44(&qword_27F47B038, type metadata accessor for PBCycleTracking.Cycle);
            sub_251C70554();
            break;
          case 2:
LABEL_16:
            sub_251C704F4();
            break;
          case 3:
            sub_251B89FE8();
            break;
        }
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B89FE8()
{
  v0 = *(type metadata accessor for PBCycleTracking(0) + 36);
  type metadata accessor for PBCycleTracking.Range(0);
  sub_251B9ED44(&qword_27F47B098, type metadata accessor for PBCycleTracking.Range);
  return sub_251C70564();
}

uint64_t sub_251B8A09C()
{
  v0 = *(type metadata accessor for PBCycleTracking(0) + 40);
  type metadata accessor for PBCycleTracking.Range(0);
  sub_251B9ED44(&qword_27F47B098, type metadata accessor for PBCycleTracking.Range);
  return sub_251C70564();
}

uint64_t sub_251B8A150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBCycleTracking.Cycle(0), sub_251B9ED44(&qword_27F47B038, type metadata accessor for PBCycleTracking.Cycle), result = sub_251C70694(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_251C70644(), !v4))
    {
      result = sub_251B8A2D8(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(v3 + 12))
        {
          sub_251C70644();
        }

        sub_251B8A524(v3, a1, a2, a3);
        v9 = *(v3 + 24);
        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
        }

        if (v10)
        {
          sub_251C70674();
        }

        v11 = v3 + *(type metadata accessor for PBCycleTracking(0) + 32);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B8A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBCycleTracking.Range(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBCycleTracking(0);
  sub_251BB33C4(a1 + *(v14 + 36), v8, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBCycleTracking.Range);
  sub_251B9ED44(&qword_27F47B098, type metadata accessor for PBCycleTracking.Range);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBCycleTracking.Range);
}

uint64_t sub_251B8A524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBCycleTracking.Range(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBCycleTracking(0);
  sub_251BB33C4(a1 + *(v14 + 40), v8, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBCycleTracking.Range);
  sub_251B9ED44(&qword_27F47B098, type metadata accessor for PBCycleTracking.Range);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBCycleTracking.Range);
}

uint64_t sub_251B8A770@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = &a2[a1[8]];
  sub_251C703A4();
  v5 = a1[9];
  v6 = type metadata accessor for PBCycleTracking.Range(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), &a2[v5], 1, 1, v6);
  v7 = &a2[a1[10]];

  return v9(v7, 1, 1, v6);
}

uint64_t sub_251B8A890(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7B0, type metadata accessor for PBCycleTracking);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8A930(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FE0, type metadata accessor for PBCycleTracking);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8A99C()
{
  sub_251B9ED44(&qword_27F478FE0, type metadata accessor for PBCycleTracking);

  return sub_251C705C4();
}

uint64_t sub_251B8AA1C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2348);
  __swift_project_value_buffer(v0, qword_27F4A2348);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C7C1F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "FLOW_NOT_ENTERED";
  *(v7 + 8) = 16;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "NO_FLOW";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "UNSPECIFIED";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "LIGHT_FLOW";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 4;
  *v17 = "MEDIUM_FLOW";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 5;
  *v19 = "HEAVY_FLOW";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B8AD20()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2360);
  __swift_project_value_buffer(v0, qword_27F4A2360);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "OVULATION_NOT_ENTERED";
  *(v7 + 8) = 21;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "INDETERMINATE";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "NEGATIVE";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "ESTROGEN_SURGE";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 4;
  *v16 = "LUTENIZING_HORMONE_SURGE";
  *(v16 + 8) = 24;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B8AFEC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2378);
  __swift_project_value_buffer(v0, qword_27F4A2378);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_251C7C1F0;
  v5 = v20 + v4;
  v6 = v20 + v4 + *(v2 + 56);
  *(v20 + v4) = 0;
  *v6 = "MUCUS_NOT_ENTERED";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "DRY";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "STICKY";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "CREAMY";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "WATERY";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "EGG_WHITE";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B8B308()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A23A0);
  __swift_project_value_buffer(v0, qword_27F4A23A0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "min";
  *(v7 + 8) = 3;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "max";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B8B4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*v4 || (result = sub_251C70644(), !v5))
  {
    if (!v4[1] || (result = sub_251C70644(), !v5))
    {
      v8 = v4 + *(a4(0) + 24);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B8B5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7B8, type metadata accessor for PBCycleTracking.Range);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8B690(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B098, type metadata accessor for PBCycleTracking.Range);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8B6FC()
{
  sub_251B9ED44(&qword_27F47B098, type metadata accessor for PBCycleTracking.Range);

  return sub_251C705C4();
}

uint64_t sub_251B8B7A8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A23C8);
  __swift_project_value_buffer(v0, qword_27F4A23C8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "had_sex";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "protection_used";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B8B9DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7C0, type metadata accessor for PBCycleTracking.SexualActivity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8BA7C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B078, type metadata accessor for PBCycleTracking.SexualActivity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8BAE8()
{
  sub_251B9ED44(&qword_27F47B078, type metadata accessor for PBCycleTracking.SexualActivity);

  return sub_251C705C4();
}

uint64_t sub_251B8BB84()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A23F0);
  __swift_project_value_buffer(v0, qword_27F4A23F0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251C78260;
  v5 = v25 + v4;
  v6 = v25 + v4 + *(v2 + 56);
  *(v25 + v4) = 1;
  *v6 = "date";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "flow";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "sexualActivity";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "cervicalMucusQuality";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "basalBodyTemperature";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "hadSpotting";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "symptoms";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "enum_symptoms";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v23 = *MEMORY[0x277D21888];
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B8BEE0()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            sub_251C70504();
          }

          else if (result == 8)
          {
            sub_251BB3178();
            sub_251C70464();
          }
        }

        else if (result == 5)
        {
          sub_251C704E4();
        }

        else
        {
          sub_251C70474();
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          v3 = v0;
          sub_251BB3124();
          goto LABEL_17;
        }

        sub_251B8C0A4();
      }

      else
      {
        if (result == 1)
        {
          sub_251C70534();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          sub_251BB30D0();
LABEL_17:
          v0 = v3;
          sub_251C70494();
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B8C0A4()
{
  v0 = *(type metadata accessor for PBCycleTracking.Event(0) + 48);
  type metadata accessor for PBCycleTracking.SexualActivity(0);
  sub_251B9ED44(&qword_27F47B078, type metadata accessor for PBCycleTracking.SexualActivity);
  return sub_251C70564();
}

uint64_t sub_251B8C158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    if (!*(v3 + 16) || (v13 = *(v3 + 16), v15 = *(v3 + 24), sub_251BB30D0(), result = sub_251C70604(), !v4))
    {
      result = sub_251B8C350(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(v3 + 32))
        {
          v14 = *(v3 + 32);
          v16 = *(v3 + 40);
          sub_251BB3124();
          sub_251C70604();
        }

        if (*(v3 + 44))
        {
          sub_251C70634();
        }

        if (*(v3 + 48) == 1)
        {
          sub_251C705F4();
        }

        if (*(*(v3 + 56) + 16))
        {
          sub_251C70654();
        }

        if (*(*(v3 + 64) + 16))
        {
          sub_251BB3178();
          sub_251C705D4();
        }

        v12 = v3 + *(type metadata accessor for PBCycleTracking.Event(0) + 44);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B8C350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBCycleTracking.SexualActivity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBCycleTracking.Event(0);
  sub_251BB33C4(a1 + *(v14 + 48), v8, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBCycleTracking.SexualActivity);
  sub_251B9ED44(&qword_27F47B078, type metadata accessor for PBCycleTracking.SexualActivity);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBCycleTracking.SexualActivity);
}

uint64_t sub_251B8C5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 44) = 0;
  *(a2 + 48) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 56) = MEMORY[0x277D84F90];
  *(a2 + 64) = v4;
  v5 = a2 + *(a1 + 44);
  sub_251C703A4();
  v6 = *(a1 + 48);
  v7 = type metadata accessor for PBCycleTracking.SexualActivity(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_251B8C6A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7C8, type metadata accessor for PBCycleTracking.Event);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8C748(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B058, type metadata accessor for PBCycleTracking.Event);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8C7B4()
{
  sub_251B9ED44(&qword_27F47B058, type metadata accessor for PBCycleTracking.Event);

  return sub_251C705C4();
}

uint64_t sub_251B8C854(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x25308CDA0](a2, a3);
  *a4 = 0xD000000000000028;
  *a5 = 0x8000000251C8E240;
  return result;
}

uint64_t sub_251B8C8C0()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2418);
  __swift_project_value_buffer(v0, qword_27F4A2418);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_251C747F0;
  v5 = v17 + v4;
  v6 = v17 + v4 + *(v2 + 56);
  *(v17 + v4) = 1;
  *v6 = "start";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "end";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "events";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "cycleLength";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v3 + *(v2 + 56);
  *(v5 + 4 * v3) = 5;
  *v15 = "periodLength";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B8CB64()
{
  result = sub_251C70444();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          sub_251C70534();
        }
      }

      else if (result == 3)
      {
        type metadata accessor for PBCycleTracking.Event(0);
        sub_251B9ED44(&qword_27F47B058, type metadata accessor for PBCycleTracking.Event);
        sub_251C70554();
      }

      else if (result == 4 || result == 5)
      {
        sub_251C704F4();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B8CCA8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_251C70674(), !v1))
    {
      if (*(v0[4] + 16))
      {
        type metadata accessor for PBCycleTracking.Event(0);
        sub_251B9ED44(&qword_27F47B058, type metadata accessor for PBCycleTracking.Event);
        result = sub_251C70694();
        if (v1)
        {
          return result;
        }

        if (!*(v0 + 10))
        {
          goto LABEL_15;
        }
      }

      else if (!*(v0 + 10))
      {
LABEL_15:
        if (!*(v0 + 11) || (result = sub_251C70644(), !v1))
        {
          v8 = v0 + *(type metadata accessor for PBCycleTracking.Cycle(0) + 36);
          return sub_251C70394();
        }

        return result;
      }

      result = sub_251C70644();
      if (v1)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_251B8CE3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = MEMORY[0x277D84F90];
  a2[5] = 0;
  v2 = a2 + *(a1 + 36);
  return sub_251C703A4();
}

uint64_t sub_251B8CECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7E8, type metadata accessor for PBCycleTracking.Cycle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8CF6C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B038, type metadata accessor for PBCycleTracking.Cycle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8CFD8()
{
  sub_251B9ED44(&qword_27F47B038, type metadata accessor for PBCycleTracking.Cycle);

  return sub_251C705C4();
}

uint64_t sub_251B8D078()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBECGMeasurement(0), sub_251B9ED44(&qword_27F478FE8, type metadata accessor for PBECGMeasurement), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBECGs(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B8D1EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7F0, type metadata accessor for PBECGs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8D28C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FD8, type metadata accessor for PBECGs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8D2F8()
{
  sub_251B9ED44(&qword_27F478FD8, type metadata accessor for PBECGs);

  return sub_251C705C4();
}

uint64_t sub_251B8D38C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2448);
  __swift_project_value_buffer(v0, qword_27F4A2448);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_251C7C1C0;
  v5 = v26 + v4;
  v6 = v26 + v4 + *(v2 + 56);
  *(v26 + v4) = 1;
  *v6 = "time";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "sampleRate";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "device";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "classification";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "lead";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "unit";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "symptoms";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "averageHeartRate";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "hk_classification";
  *(v23 + 8) = 17;
  *(v23 + 16) = 2;
  v24 = *MEMORY[0x277D21888];
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B8D730()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2 || result == 1)
        {
LABEL_4:
          sub_251C70534();
          goto LABEL_5;
        }

        if (result == 2)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (result <= 6)
        {
          goto LABEL_4;
        }

        switch(result)
        {
          case 7:
            sub_251C70504();
            break;
          case 8:
LABEL_20:
            sub_251C704E4();
            break;
          case 9:
            sub_251BB31CC();
            sub_251C70494();
            break;
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B8D894()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_251C70634(), !v1))
    {
      v6 = v0[4];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v0[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_251C70674(), !v1))
      {
        v8 = v0[6];
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v0[5] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = sub_251C70674(), !v1))
        {
          v10 = v0[8];
          v11 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v11 = v0[7] & 0xFFFFFFFFFFFFLL;
          }

          if (!v11 || (result = sub_251C70674(), !v1))
          {
            v12 = v0[10];
            v13 = HIBYTE(v12) & 0xF;
            if ((v12 & 0x2000000000000000) == 0)
            {
              v13 = v0[9] & 0xFFFFFFFFFFFFLL;
            }

            if (!v13 || (result = sub_251C70674(), !v1))
            {
              if (!*(v0[11] + 16) || (result = sub_251C70654(), !v1))
              {
                if (!*(v0 + 24) || (result = sub_251C70634(), !v1))
                {
                  if (!v0[13] || (v15 = v0[13], v16 = *(v0 + 112), sub_251BB31CC(), result = sub_251C70604(), !v1))
                  {
                    v14 = v0 + *(type metadata accessor for PBECGMeta(0) + 52);
                    return sub_251C70394();
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

uint64_t sub_251B8DAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xE000000000000000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  *(a2 + 88) = MEMORY[0x277D84F90];
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  v2 = a2 + *(a1 + 52);
  return sub_251C703A4();
}

uint64_t sub_251B8DB4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7F8, type metadata accessor for PBECGMeta);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8DBEC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479108, type metadata accessor for PBECGMeta);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8DC58()
{
  sub_251B9ED44(&qword_27F479108, type metadata accessor for PBECGMeta);

  return sub_251C705C4();
}

uint64_t sub_251B8DCD8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2460);
  __swift_project_value_buffer(v0, qword_27F4A2460);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_251C75810;
  v5 = v28 + v4;
  v6 = v28 + v4 + *(v2 + 56);
  *(v28 + v4) = 1;
  *v6 = "time";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "sampleRate";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "device";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "classification";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "lead";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "unit";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "symptoms";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "values";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "averageHeartRate";
  *(v23 + 8) = 16;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "hk_classification";
  *(v25 + 1) = 17;
  v25[16] = 2;
  v26 = *MEMORY[0x277D21888];
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B8E0B4()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            goto LABEL_4;
          }

          sub_251C70504();
        }

        else
        {
          switch(result)
          {
            case 8:
              sub_251C704B4();
              break;
            case 9:
LABEL_22:
              sub_251C704E4();
              break;
            case 10:
              sub_251BB31CC();
              sub_251C70494();
              break;
          }
        }
      }

      else
      {
        if (result > 2 || result == 1)
        {
LABEL_4:
          sub_251C70534();
          goto LABEL_5;
        }

        if (result == 2)
        {
          goto LABEL_22;
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B8E238()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_251C70634(), !v1))
    {
      v6 = v0[4];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v0[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_251C70674(), !v1))
      {
        v8 = v0[6];
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v0[5] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = sub_251C70674(), !v1))
        {
          v10 = v0[8];
          v11 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v11 = v0[7] & 0xFFFFFFFFFFFFLL;
          }

          if (!v11 || (result = sub_251C70674(), !v1))
          {
            v12 = v0[10];
            v13 = HIBYTE(v12) & 0xF;
            if ((v12 & 0x2000000000000000) == 0)
            {
              v13 = v0[9] & 0xFFFFFFFFFFFFLL;
            }

            if (!v13 || (result = sub_251C70674(), !v1))
            {
              if (!*(v0[11] + 16) || (result = sub_251C70654(), !v1))
              {
                if (!*(v0[12] + 16) || (result = sub_251C705E4(), !v1))
                {
                  if (!*(v0 + 26) || (result = sub_251C70634(), !v1))
                  {
                    if (!v0[14] || (v15 = v0[14], v16 = *(v0 + 120), sub_251BB31CC(), result = sub_251C70604(), !v1))
                    {
                      v14 = v0 + *(type metadata accessor for PBECGMeasurement(0) + 56);
                      return sub_251C70394();
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

uint64_t sub_251B8E46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xE000000000000000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  v2 = MEMORY[0x277D84F90];
  *(a2 + 88) = MEMORY[0x277D84F90];
  *(a2 + 96) = v2;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  v3 = a2 + *(a1 + 56);
  return sub_251C703A4();
}

uint64_t sub_251B8E4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251B8E554(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251B8E5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B808, type metadata accessor for PBECGMeasurement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8E698(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FE8, type metadata accessor for PBECGMeasurement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8E704()
{
  sub_251B9ED44(&qword_27F478FE8, type metadata accessor for PBECGMeasurement);

  return sub_251C705C4();
}

uint64_t sub_251B8E784()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2478);
  __swift_project_value_buffer(v0, qword_27F4A2478);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "date_range";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "activitySummaries";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21870];
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B8E96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_251B8EA80(a1, v5, a2, a3, type metadata accessor for PBActivitySummarySeries);
      }

      else if (result == 2)
      {
        type metadata accessor for PBActivitySummarySeries.ActivitySummary(0);
        sub_251B9ED44(&qword_27F47AFB8, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
        sub_251C70554();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B8EA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 24);
  type metadata accessor for PBDateRange(0);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);
  return sub_251C70564();
}

uint64_t sub_251B8EB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251B8EC4C(v3, a1, a2, a3, type metadata accessor for PBActivitySummarySeries, 1);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for PBActivitySummarySeries.ActivitySummary(0);
      sub_251B9ED44(&qword_27F47AFB8, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
      sub_251C70694();
    }

    v8 = v5 + *(type metadata accessor for PBActivitySummarySeries(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B8EC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for PBDateRange(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_251BB33C4(a1 + *(v17 + 24), v11, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_251BB3444(v11, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BB23C4(v11, v16, type metadata accessor for PBDateRange);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);
  sub_251C706A4();
  return sub_251BB2308(v16, type metadata accessor for PBDateRange);
}

uint64_t sub_251B8EEA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[*(a1 + 20)];
  sub_251C703A4();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for PBDateRange(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_251B8EF78(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B810, type metadata accessor for PBActivitySummarySeries);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8F018(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FF0, type metadata accessor for PBActivitySummarySeries);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8F084()
{
  sub_251B9ED44(&qword_27F478FF0, type metadata accessor for PBActivitySummarySeries);

  return sub_251C705C4();
}

uint64_t sub_251B8F104()
{
  result = MEMORY[0x25308CDA0](0xD000000000000010, 0x8000000251C8E5D0);
  qword_27F4A2490 = 0xD000000000000030;
  *algn_27F4A2498 = 0x8000000251C8E590;
  return result;
}

uint64_t sub_251B8F178()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A24A0);
  __swift_project_value_buffer(v0, qword_27F4A24A0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75420;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "activeCalories";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "activeCalorieGoal";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "moveMinutes";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "moveMinuteGoal";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "standHours";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "standHoursGoal";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v10();
  v20 = (v6 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "recorded_time";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v22 = *MEMORY[0x277D21888];
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B8F4A0()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1 || result == 2 || result == 3)
      {
LABEL_2:
        sub_251C704F4();
      }
    }

    else
    {
      if (result <= 6)
      {
        goto LABEL_2;
      }

      if (result == 7)
      {
        sub_251C70534();
      }
    }
  }
}

uint64_t sub_251B8F590()
{
  if (!*v0 || (result = sub_251C70644(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_251C70644(), !v1))
    {
      if (!*(v0 + 8) || (result = sub_251C70644(), !v1))
      {
        if (!*(v0 + 12) || (result = sub_251C70644(), !v1))
        {
          if (!*(v0 + 16) || (result = sub_251C70644(), !v1))
          {
            if (!*(v0 + 20) || (result = sub_251C70644(), !v1))
            {
              v3 = *(v0 + 32);
              v4 = HIBYTE(v3) & 0xF;
              if ((v3 & 0x2000000000000000) == 0)
              {
                v4 = *(v0 + 24) & 0xFFFFFFFFFFFFLL;
              }

              if (!v4 || (result = sub_251C70674(), !v1))
              {
                v5 = v0 + *(type metadata accessor for PBActivitySummarySeries.ActivitySummary(0) + 44);
                return sub_251C70394();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B8F6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0xE000000000000000;
  v2 = a2 + *(a1 + 44);
  return sub_251C703A4();
}

uint64_t sub_251B8F76C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B818, type metadata accessor for PBActivitySummarySeries.ActivitySummary);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8F80C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AFB8, type metadata accessor for PBActivitySummarySeries.ActivitySummary);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8F878()
{
  sub_251B9ED44(&qword_27F47AFB8, type metadata accessor for PBActivitySummarySeries.ActivitySummary);

  return sub_251C705C4();
}

uint64_t sub_251B8F8F8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A24B8);
  __swift_project_value_buffer(v0, qword_27F4A24B8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_251C75420;
  v5 = v22 + v4 + *(v2 + 56);
  *(v22 + v4) = 1;
  *v5 = "hasWatch";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v22 + v4 + v3 + *(v2 + 56);
  *(v22 + v4 + v3) = 2;
  *v9 = "chr_meta";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v8();
  v11 = (v22 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "share_timezone";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v8();
  v13 = (v22 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "sex";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v8();
  v15 = (v22 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "heartRateMeds";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v8();
  v17 = (v22 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "name";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v8();
  v19 = (v22 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "dob";
  *(v20 + 1) = 3;
  v20[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251B8FC18()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_251C70474();
            break;
          case 2:
            type metadata accessor for PBPatientMeta.CHRMeta(0);
            sub_251B9ED44(&qword_27F47AF80, type metadata accessor for PBPatientMeta.CHRMeta);
            sub_251C70554();
            break;
          case 3:
            goto LABEL_4;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          sub_251B8FE60();
        }

        else if (result == 7)
        {
LABEL_4:
          sub_251C70534();
        }
      }

      else
      {
        if (result == 4)
        {
          goto LABEL_4;
        }

        sub_251B8FDAC();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B8FDAC()
{
  v0 = *(type metadata accessor for PBPatientMeta(0) + 40);
  type metadata accessor for PBPatientMeta.HeartRateMeds(0);
  sub_251B9ED44(&qword_27F47AF60, type metadata accessor for PBPatientMeta.HeartRateMeds);
  return sub_251C70564();
}

uint64_t sub_251B8FE60()
{
  v0 = *(type metadata accessor for PBPatientMeta(0) + 44);
  type metadata accessor for PBPatientMeta.HumanName(0);
  sub_251B9ED44(&qword_27F47AF40, type metadata accessor for PBPatientMeta.HumanName);
  return sub_251C70564();
}

uint64_t sub_251B8FF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_251C705F4(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for PBPatientMeta.CHRMeta(0), sub_251B9ED44(&qword_27F47AF80, type metadata accessor for PBPatientMeta.CHRMeta), result = sub_251C70694(), !v4))
    {
      v9 = *(v3 + 24);
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
      }

      if (!v10 || (result = sub_251C70674(), !v4))
      {
        v11 = *(v3 + 40);
        v12 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v12 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
        }

        if (!v12 || (result = sub_251C70674(), !v4))
        {
          result = sub_251B900E8(v3, a1, a2, a3);
          if (!v4)
          {
            sub_251B90334(v3, a1, a2, a3);
            v13 = *(v3 + 56);
            v14 = HIBYTE(v13) & 0xF;
            if ((v13 & 0x2000000000000000) == 0)
            {
              v14 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
            }

            if (v14)
            {
              sub_251C70674();
            }

            v15 = v3 + *(type metadata accessor for PBPatientMeta(0) + 36);
            return sub_251C70394();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B900E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPatientMeta.HeartRateMeds(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBPatientMeta(0);
  sub_251BB33C4(a1 + *(v14 + 40), v8, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBPatientMeta.HeartRateMeds);
  sub_251B9ED44(&qword_27F47AF60, type metadata accessor for PBPatientMeta.HeartRateMeds);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBPatientMeta.HeartRateMeds);
}

uint64_t sub_251B90334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPatientMeta.HumanName(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBPatientMeta(0);
  sub_251BB33C4(a1 + *(v14 + 44), v8, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBPatientMeta.HumanName);
  sub_251B9ED44(&qword_27F47AF40, type metadata accessor for PBPatientMeta.HumanName);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBPatientMeta.HumanName);
}

uint64_t sub_251B90580@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  v4 = a2 + a1[9];
  sub_251C703A4();
  v5 = a1[10];
  v6 = type metadata accessor for PBPatientMeta.HeartRateMeds(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[11];
  v8 = type metadata accessor for PBPatientMeta.HumanName(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_251B90688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251B906FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251B907A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B820, type metadata accessor for PBPatientMeta);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B90840(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FF8, type metadata accessor for PBPatientMeta);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B908AC()
{
  sub_251B9ED44(&qword_27F478FF8, type metadata accessor for PBPatientMeta);

  return sub_251C705C4();
}

uint64_t sub_251B90950()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A24E0);
  __swift_project_value_buffer(v0, qword_27F4A24E0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "name";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "last_sync_time";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21888];
  v10();
  v13 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v13 = "gateway_id";
  *(v13 + 8) = 10;
  *(v13 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B90B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v5))
  {
    v11 = v4[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_251C70674(), !v5))
    {
      v13 = v4[5];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v4[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_251C70674(), !v5))
      {
        v15 = v4 + *(a4(0) + 28);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B90CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B828, type metadata accessor for PBPatientMeta.CHRMeta);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B90D80(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AF80, type metadata accessor for PBPatientMeta.CHRMeta);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B90DEC()
{
  sub_251B9ED44(&qword_27F47AF80, type metadata accessor for PBPatientMeta.CHRMeta);

  return sub_251C705C4();
}

uint64_t sub_251B90EC8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2508);
  __swift_project_value_buffer(v0, qword_27F4A2508);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "calciumChannelBlockers";
  *(v7 + 8) = 22;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "betaBlockers";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B910A8()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_251C70474();
    }
  }

  return result;
}

uint64_t sub_251B91128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*v4 != 1 || (result = sub_251C705F4(), !v5))
  {
    if (v4[1] != 1 || (result = sub_251C705F4(), !v5))
    {
      v8 = &v4[*(a4(0) + 24)];
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B91240(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B830, type metadata accessor for PBPatientMeta.HeartRateMeds);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B912E0(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AF60, type metadata accessor for PBPatientMeta.HeartRateMeds);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9134C()
{
  sub_251B9ED44(&qword_27F47AF60, type metadata accessor for PBPatientMeta.HeartRateMeds);

  return sub_251C705C4();
}

uint64_t sub_251B913C8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(a3 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B914A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x25308CDA0](a2, a3);
  *a4 = 0xD000000000000026;
  *a5 = 0x8000000251C8E640;
  return result;
}

uint64_t sub_251B9150C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2530);
  __swift_project_value_buffer(v0, qword_27F4A2530);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "first_name";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "last_name";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B91740(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B838, type metadata accessor for PBPatientMeta.HumanName);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B917E0(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AF40, type metadata accessor for PBPatientMeta.HumanName);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9184C()
{
  sub_251B9ED44(&qword_27F47AF40, type metadata accessor for PBPatientMeta.HumanName);

  return sub_251C705C4();
}

uint64_t sub_251B918C8(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B919C4()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C70504();
    }
  }

  return result;
}

uint64_t sub_251B91A34()
{
  if (!*(*v0 + 16) || (result = sub_251C70654(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBActiveMedications(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B91B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B840, type metadata accessor for PBActiveMedications);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B91BA8(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479030, type metadata accessor for PBActiveMedications);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B91C14()
{
  sub_251B9ED44(&qword_27F479030, type metadata accessor for PBActiveMedications);

  return sub_251C705C4();
}

uint64_t sub_251B91CA8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2560);
  __swift_project_value_buffer(v0, qword_27F4A2560);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_251C747E0;
  v5 = v45 + v4;
  v6 = v45 + v4 + *(v2 + 56);
  *(v45 + v4) = 1;
  *v6 = "medication_semantic_identifier";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v45 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "localized_ontology_preferred_name";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v45 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "localized_ontology_brand_name";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v45 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "localized_ontology_generic_name";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  v15 = (v45 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "specific_rx_norm_code";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v45 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "free_text_medication_form";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v45 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "free_text_quantified_strength";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  v21 = (v45 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "localized_ontology_basic_dose_forms";
  *(v22 + 1) = 35;
  v22[16] = 2;
  v9();
  v23 = v45 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "localized_ontology_logging_unit_singular";
  *(v23 + 8) = 40;
  *(v23 + 16) = 2;
  v9();
  v24 = (v45 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "localized_ontology_logging_unit_plural";
  *(v25 + 1) = 38;
  v25[16] = 2;
  v9();
  v26 = (v45 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "unlocalized_quantified_unit_strength_preferred_display_string";
  *(v27 + 1) = 61;
  v27[16] = 2;
  v9();
  v28 = (v45 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "date_added";
  *(v29 + 1) = 10;
  v29[16] = 2;
  v9();
  v30 = (v45 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "last_dosage_event_date";
  *(v31 + 1) = 22;
  v31[16] = 2;
  v9();
  v32 = (v45 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "generic_rx_norm_code";
  *(v33 + 1) = 20;
  v33[16] = 2;
  v9();
  v34 = (v45 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 15;
  *v35 = "uuid";
  *(v35 + 1) = 4;
  v35[16] = 2;
  v36 = *MEMORY[0x277D21870];
  v9();
  v37 = (v45 + v4 + 15 * v3);
  v38 = v37 + *(v2 + 56);
  *v37 = 16;
  *v38 = "free_text_medication_logging_unit";
  *(v38 + 1) = 33;
  v38[16] = 2;
  v9();
  v39 = v45 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 17;
  *v39 = "free_text_medication_name";
  *(v39 + 8) = 25;
  *(v39 + 16) = 2;
  v9();
  v40 = (v45 + v4 + 17 * v3);
  v41 = v40 + *(v2 + 56);
  *v40 = 18;
  *v41 = "grouper_id";
  *(v41 + 1) = 10;
  v41[16] = 2;
  v9();
  v42 = (v45 + v4 + 18 * v3);
  v43 = v42 + *(v2 + 56);
  *v42 = 19;
  *v43 = "free_text_quantified_strength_unit";
  *(v43 + 1) = 34;
  v43[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B922A8()
{
  type metadata accessor for PBMedicationTracking._StorageClass();
  swift_allocObject();
  result = sub_251B922E8();
  qword_27F47AC10 = result;
  return result;
}

uint64_t sub_251B922E8()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0xE000000000000000;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0xE000000000000000;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0xE000000000000000;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0xE000000000000000;
  *(v0 + 288) = 0;
  *(v0 + 296) = 0xE000000000000000;
  *(v0 + 304) = 0;
  *(v0 + 312) = 0xE000000000000000;
  return result;
}

uint64_t sub_251B9234C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 112) = 0;
  *(v1 + 104) = 1;
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 144) = 0;
  *(v1 + 160) = 0;
  *(v1 + 152) = 0xE000000000000000;
  *(v1 + 168) = 0xE000000000000000;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0xE000000000000000;
  *(v1 + 192) = 0;
  *(v1 + 208) = 0;
  *(v1 + 200) = 0xE000000000000000;
  *(v1 + 216) = 0xE000000000000000;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0xE000000000000000;
  *(v1 + 240) = 0;
  *(v1 + 248) = 0xE000000000000000;
  *(v1 + 256) = 0;
  *(v1 + 264) = 1;
  *(v1 + 272) = 0;
  *(v1 + 280) = 0xE000000000000000;
  *(v1 + 288) = 0;
  *(v1 + 296) = 0xE000000000000000;
  *(v1 + 304) = 0;
  *(v1 + 312) = 0xE000000000000000;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;

  swift_beginAccess();
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  swift_beginAccess();
  v9 = *(v1 + 56);
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;

  swift_beginAccess();
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  swift_beginAccess();
  v12 = *(v1 + 72);
  *(v1 + 64) = v10;
  *(v1 + 72) = v11;

  swift_beginAccess();
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  swift_beginAccess();
  v15 = *(v1 + 88);
  *(v1 + 80) = v13;
  *(v1 + 88) = v14;

  swift_beginAccess();
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 96) = v16;
  *(v1 + 104) = v17;
  swift_beginAccess();
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  swift_beginAccess();
  v20 = *(v1 + 120);
  *(v1 + 112) = v18;
  *(v1 + 120) = v19;

  swift_beginAccess();
  v22 = *(a1 + 128);
  v21 = *(a1 + 136);
  swift_beginAccess();
  v23 = *(v1 + 136);
  *(v1 + 128) = v22;
  *(v1 + 136) = v21;

  swift_beginAccess();
  v25 = *(a1 + 144);
  v24 = *(a1 + 152);
  swift_beginAccess();
  v26 = *(v1 + 152);
  *(v1 + 144) = v25;
  *(v1 + 152) = v24;

  swift_beginAccess();
  v28 = *(a1 + 160);
  v27 = *(a1 + 168);
  swift_beginAccess();
  v29 = *(v1 + 168);
  *(v1 + 160) = v28;
  *(v1 + 168) = v27;

  swift_beginAccess();
  v31 = *(a1 + 176);
  v30 = *(a1 + 184);
  swift_beginAccess();
  v32 = *(v1 + 184);
  *(v1 + 176) = v31;
  *(v1 + 184) = v30;

  swift_beginAccess();
  v34 = *(a1 + 192);
  v33 = *(a1 + 200);
  swift_beginAccess();
  v35 = *(v1 + 200);
  *(v1 + 192) = v34;
  *(v1 + 200) = v33;

  swift_beginAccess();
  v37 = *(a1 + 208);
  v36 = *(a1 + 216);
  swift_beginAccess();
  v38 = *(v1 + 216);
  *(v1 + 208) = v37;
  *(v1 + 216) = v36;

  swift_beginAccess();
  v40 = *(a1 + 224);
  v39 = *(a1 + 232);
  swift_beginAccess();
  v41 = *(v1 + 232);
  *(v1 + 224) = v40;
  *(v1 + 232) = v39;

  swift_beginAccess();
  v43 = *(a1 + 240);
  v42 = *(a1 + 248);
  swift_beginAccess();
  v44 = *(v1 + 248);
  *(v1 + 240) = v43;
  *(v1 + 248) = v42;

  swift_beginAccess();
  v45 = *(a1 + 256);
  LOBYTE(v44) = *(a1 + 264);
  swift_beginAccess();
  *(v1 + 256) = v45;
  *(v1 + 264) = v44;
  swift_beginAccess();
  v47 = *(a1 + 272);
  v46 = *(a1 + 280);
  swift_beginAccess();
  v48 = *(v1 + 280);
  *(v1 + 272) = v47;
  *(v1 + 280) = v46;

  swift_beginAccess();
  v50 = *(a1 + 288);
  v49 = *(a1 + 296);
  swift_beginAccess();
  v51 = *(v1 + 296);
  *(v1 + 288) = v50;
  *(v1 + 296) = v49;

  swift_beginAccess();
  v53 = *(a1 + 304);
  v52 = *(a1 + 312);

  swift_beginAccess();
  v54 = *(v1 + 312);
  *(v1 + 304) = v53;
  *(v1 + 312) = v52;

  return v1;
}

void *sub_251B929C4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[21];

  v10 = v0[23];

  v11 = v0[25];

  v12 = v0[27];

  v13 = v0[29];

  v14 = v0[31];

  v15 = v0[35];

  v16 = v0[37];

  v17 = v0[39];

  return v0;
}

uint64_t sub_251B92A64()
{
  sub_251B929C4();

  return swift_deallocClassInstance();
}

void sub_251B92BA0()
{
  sub_251B67AAC(319, &qword_27F47AC38, type metadata accessor for PBHKReferenceRange, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_251B67AAC(319, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_251B92D7C()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251B92EE0()
{
  sub_251B67AAC(319, &qword_2813E1EC8, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_251B9307C()
{
  result = type metadata accessor for PBHKAllergyRecord(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PBHKConditionRecord(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PBHKVaccinationRecord(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PBHKMedicationDispenseRecord(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for PBHKMedicationOrder(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for PBHKDiagnosticTestResult(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for PBHKDiagnosticTestReport(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for PBHKAccountOwner(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for PBHKProcedureRecord(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for PBHKMedicationRecord(319);
                    if (v10 <= 0x3F)
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

  return result;
}

void sub_251B93318()
{
  sub_251B67AAC(319, &qword_2813E1F50, type metadata accessor for PBHKConcept, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B93478()
{
  v0 = MEMORY[0x277D837D0];
  sub_251B67AAC(319, &qword_2813E1ED8, type metadata accessor for PBMedicationDosage, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251BB35D8(319, &qword_2813E1E48, v0, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_251C703B4();
      if (v3 <= 0x3F)
      {
        sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_282Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_251C703B4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 20);

      return v15(v16, a2, v14);
    }

    else
    {
      sub_251B67AAC(0, a4, a5, MEMORY[0x277D83D88]);
      v18 = v17;
      v19 = *(*(v17 - 8) + 48);
      v20 = a1 + *(a3 + 24);

      return v19(v20, a2, v18);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_283Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_251C703B4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 20);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      sub_251B67AAC(0, a5, a6, MEMORY[0x277D83D88]);
      v18 = v17;
      v19 = *(*(v17 - 8) + 56);
      v20 = v7 + *(a4 + 24);

      return v19(v20, a2, a2, v18);
    }
  }

  return result;
}

void sub_251B938D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_251C703B4();
  if (v7 <= 0x3F)
  {
    sub_251B67AAC(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251B939BC()
{
  sub_251B67AAC(319, &qword_2813E1F50, type metadata accessor for PBHKConcept, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251BB35D8(319, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_251C703B4();
      if (v2 <= 0x3F)
      {
        sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_251B93B68()
{
  sub_251B67AAC(319, &qword_2813E1EF0, type metadata accessor for PBFHIRIdentifier, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B93D28()
{
  sub_251B67AAC(319, &qword_2813E1F50, type metadata accessor for PBHKConcept, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_251B93ED4()
{
  sub_251C703B4();
  if (v0 <= 0x3F)
  {
    sub_251B67AAC(319, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6F88, type metadata accessor for PBQuantity, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B94044()
{
  sub_251B67AAC(319, &qword_2813E1F50, type metadata accessor for PBHKConcept, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B94194()
{
  sub_251B67AAC(319, &qword_2813E1F50, type metadata accessor for PBHKConcept, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_379Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_380Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

void sub_251B94584()
{
  sub_251B67AAC(319, &qword_2813E1ED0, type metadata accessor for PBHKAllergyReaction, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B946E8()
{
  sub_251B67AAC(319, &qword_2813E1F50, type metadata accessor for PBHKConcept, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C703B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C703B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251B949A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_251C703B4();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_251B94BA8()
{
  sub_251B67AAC(319, &qword_2813E1E58, type metadata accessor for PBHKMedicationScheduleIntervalData, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B94D50()
{
  sub_251C703B4();
  if (v0 <= 0x3F)
  {
    sub_251B67AAC(319, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251B94F58()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251B95164()
{
  sub_251B67AAC(319, &qword_2813E1E50, type metadata accessor for PBBucket, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251B9535C()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_577Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_578Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_251B955A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_251B67AAC(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_251C703B4();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251B95690()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_406Tm(uint64_t a1, uint64_t a2, int *a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  if (a2 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }

  v16 = sub_251C703B4();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v17 = v16;
    v18 = *(v16 - 8);
    v19 = a3[9];
LABEL_9:
    v21 = *(v18 + 48);

    return v21(a1 + v19, a2, v17);
  }

  sub_251B67AAC(0, a4, a5, MEMORY[0x277D83D88]);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v17 = v20;
    v18 = *(v20 - 8);
    v19 = a3[10];
    goto LABEL_9;
  }

  sub_251B67AAC(0, a6, a7, MEMORY[0x277D83D88]);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[11];

  return v24(v25, a2, v23);
}

void sub_251B95988()
{
  sub_251B67AAC(319, &qword_2813E1F38, type metadata accessor for PBPatientMeta.CHRMeta, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_251B67AAC(319, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_273Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_274Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_251B95D18()
{
  sub_251B67AAC(319, &qword_2813E1EA8, type metadata accessor for PBActivitySummarySeries.ActivitySummary, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_251B95E70()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251B95F40()
{
  sub_251BB35D8(319, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251BB35D8(319, &qword_2813E1E38, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_251C703B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B960BC()
{
  sub_251B67AAC(319, &qword_2813E1F18, type metadata accessor for PBCycleTracking.Cycle, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6108, type metadata accessor for PBCycleTracking.Range, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B96214()
{
  sub_251B67AAC(319, &qword_2813E1F10, type metadata accessor for PBCycleTracking.Event, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251B96350()
{
  sub_251BB35D8(319, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251BB35D8(319, &qword_2813E1F20, &type metadata for PBCycleSymptoms, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_251C703B4();
      if (v2 <= 0x3F)
      {
        sub_251B67AAC(319, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_667Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_251C703B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_668Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251B9678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_251C703B4();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251B96868()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251B9692C()
{
  sub_251C703B4();
  if (v0 <= 0x3F)
  {
    sub_251B67AAC(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251B96A54()
{
  sub_251B67AAC(319, &qword_2813E1F08, type metadata accessor for PBCategorySeries.Event, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B96BC8()
{
  sub_251B67AAC(319, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_251B96CE4()
{
  result = type metadata accessor for PBCategorySeries.Range(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_529Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_251C703B4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_530Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_251C703B4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_251B96EB0()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251B96F6C()
{
  sub_251B67AAC(319, &qword_2813E1F40, type metadata accessor for PBTimeSeries.Value, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B970C0()
{
  sub_251BB35D8(319, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251BB35D8(319, qword_2813E6AE8, &type metadata for PBTimeSeries.Value.OneOf_AdditionalData, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_251C703B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B97240()
{
  sub_251BB35D8(319, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_251B97318()
{
  result = qword_27F47AC60;
  if (!qword_27F47AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AC60);
  }

  return result;
}

unint64_t sub_251B973A0()
{
  result = qword_27F47AC78;
  if (!qword_27F47AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AC78);
  }

  return result;
}

unint64_t sub_251B973F8()
{
  result = qword_27F47AC80;
  if (!qword_27F47AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AC80);
  }

  return result;
}

unint64_t sub_251B97450()
{
  result = qword_27F47AC88;
  if (!qword_27F47AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AC88);
  }

  return result;
}

uint64_t sub_251B974D4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251BB35D8(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251B9753C()
{
  result = qword_27F47ACA0;
  if (!qword_27F47ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACA0);
  }

  return result;
}

unint64_t sub_251B97594()
{
  result = qword_27F47ACA8;
  if (!qword_27F47ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACA8);
  }

  return result;
}

unint64_t sub_251B975EC()
{
  result = qword_27F47ACB0;
  if (!qword_27F47ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACB0);
  }

  return result;
}

unint64_t sub_251B97674()
{
  result = qword_27F47ACC8;
  if (!qword_27F47ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACC8);
  }

  return result;
}

unint64_t sub_251B976CC()
{
  result = qword_27F47ACD0;
  if (!qword_27F47ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACD0);
  }

  return result;
}

unint64_t sub_251B97724()
{
  result = qword_27F47ACD8;
  if (!qword_27F47ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACD8);
  }

  return result;
}

unint64_t sub_251B977AC()
{
  result = qword_27F47ACF0;
  if (!qword_27F47ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACF0);
  }

  return result;
}

unint64_t sub_251B97804()
{
  result = qword_27F47ACF8;
  if (!qword_27F47ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ACF8);
  }

  return result;
}

unint64_t sub_251B9785C()
{
  result = qword_27F47AD00;
  if (!qword_27F47AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD00);
  }

  return result;
}

unint64_t sub_251B978E4()
{
  result = qword_27F47AD18;
  if (!qword_27F47AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD18);
  }

  return result;
}

unint64_t sub_251B9793C()
{
  result = qword_27F47AD20;
  if (!qword_27F47AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD20);
  }

  return result;
}

unint64_t sub_251B97994()
{
  result = qword_27F47AD28;
  if (!qword_27F47AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD28);
  }

  return result;
}

unint64_t sub_251B97A1C()
{
  result = qword_27F47AD40;
  if (!qword_27F47AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD40);
  }

  return result;
}

unint64_t sub_251B97A74()
{
  result = qword_27F47AD48;
  if (!qword_27F47AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD48);
  }

  return result;
}

unint64_t sub_251B97ACC()
{
  result = qword_27F47AD50;
  if (!qword_27F47AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD50);
  }

  return result;
}

unint64_t sub_251B97B54()
{
  result = qword_27F47AD68;
  if (!qword_27F47AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD68);
  }

  return result;
}

unint64_t sub_251B97BAC()
{
  result = qword_27F47AD70;
  if (!qword_27F47AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD70);
  }

  return result;
}

unint64_t sub_251B97C04()
{
  result = qword_27F47AD78;
  if (!qword_27F47AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD78);
  }

  return result;
}

unint64_t sub_251B97C8C()
{
  result = qword_27F47AD90;
  if (!qword_27F47AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD90);
  }

  return result;
}

unint64_t sub_251B97CE4()
{
  result = qword_27F47AD98;
  if (!qword_27F47AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AD98);
  }

  return result;
}

unint64_t sub_251B97D3C()
{
  result = qword_27F47ADA0;
  if (!qword_27F47ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADA0);
  }

  return result;
}

unint64_t sub_251B97DC4()
{
  result = qword_27F47ADB8;
  if (!qword_27F47ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADB8);
  }

  return result;
}

unint64_t sub_251B97E1C()
{
  result = qword_27F47ADC0;
  if (!qword_27F47ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADC0);
  }

  return result;
}

unint64_t sub_251B97E74()
{
  result = qword_27F47ADC8;
  if (!qword_27F47ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADC8);
  }

  return result;
}

unint64_t sub_251B97EFC()
{
  result = qword_27F47ADE0;
  if (!qword_27F47ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADE0);
  }

  return result;
}

unint64_t sub_251B97F54()
{
  result = qword_27F47ADE8;
  if (!qword_27F47ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADE8);
  }

  return result;
}

unint64_t sub_251B97FAC()
{
  result = qword_27F47ADF0;
  if (!qword_27F47ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ADF0);
  }

  return result;
}

unint64_t sub_251B98034()
{
  result = qword_27F47AE08;
  if (!qword_27F47AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AE08);
  }

  return result;
}

unint64_t sub_251B9808C()
{
  result = qword_27F47AE10;
  if (!qword_27F47AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AE10);
  }

  return result;
}

uint64_t sub_251B980E0()
{
  v1 = v0;
  v2 = *(type metadata accessor for PBMedicationTracking(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v0 + v2);
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    *(v1 + v2) = sub_251B9234C(v6);
  }

  return sub_251B98188();
}

uint64_t sub_251B98188()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_251B98414();
        break;
      case 2:
        sub_251AB6E48();
        break;
      case 3:
        sub_251AB6ECC();
        break;
      case 4:
        sub_251AB6F50();
        break;
      case 5:
        sub_251B98498();
        break;
      case 6:
        sub_251B9851C();
        break;
      case 7:
        sub_251B985B0();
        break;
      case 8:
        sub_251B98634();
        break;
      case 9:
        sub_251B986B8();
        break;
      case 10:
        sub_251B9873C();
        break;
      case 11:
        sub_251B987C0();
        break;
      case 12:
        sub_251B98844();
        break;
      case 13:
        sub_251B988C8();
        break;
      case 14:
        sub_251B9894C();
        break;
      case 15:
        sub_251B989D0();
        break;
      case 16:
        sub_251B98A54();
        break;
      case 17:
        sub_251B98AE8();
        break;
      case 18:
        sub_251B98B6C();
        break;
      case 19:
        sub_251B98BF0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_251B98414()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98498()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B9851C()
{
  swift_beginAccess();
  sub_251BB3220();
  sub_251C70494();
  return swift_endAccess();
}

uint64_t sub_251B985B0()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98634()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B986B8()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B9873C()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B987C0()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98844()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B988C8()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B9894C()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B989D0()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98A54()
{
  swift_beginAccess();
  sub_251BB3274();
  sub_251C70494();
  return swift_endAccess();
}

uint64_t sub_251B98AE8()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98B6C()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98BF0()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B98C74(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = *(a1 + 24);

    sub_251C70674();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v6 = *(a1 + 40);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = *(a1 + 40);

    sub_251C70674();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v9 = *(a1 + 56);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = *(a1 + 56);

    sub_251C70674();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 72);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = *(a1 + 72);

    sub_251C70674();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v15 = *(a1 + 88);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = *(a1 + 88);

    sub_251C70674();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 96))
  {
    v57 = *(a1 + 96);
    v58 = *(a1 + 104);
    sub_251BB3220();
    result = sub_251C70604();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 120);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = *(a1 + 120);

    sub_251C70674();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 136);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = *(a1 + 136);

    sub_251C70674();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 152);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(a1 + 144) & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v27 = *(a1 + 152);

    sub_251C70674();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 168);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = *(a1 + 160) & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    goto LABEL_48;
  }

  v30 = *(a1 + 168);

  sub_251C70674();
  if (v1)
  {
  }

LABEL_48:
  swift_beginAccess();
  v31 = *(a1 + 184);
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = *(a1 + 176) & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    v33 = *(a1 + 184);

    sub_251C70674();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 200);
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = *(a1 + 192) & 0xFFFFFFFFFFFFLL;
  }

  if (!v35 || (v36 = *(a1 + 200), , sub_251C70674(), result = , !v1))
  {
    swift_beginAccess();
    v37 = *(a1 + 216);
    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = *(a1 + 208) & 0xFFFFFFFFFFFFLL;
    }

    if (!v38 || (v39 = *(a1 + 216), , sub_251C70674(), result = , !v1))
    {
      swift_beginAccess();
      v40 = *(a1 + 232);
      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = *(a1 + 224) & 0xFFFFFFFFFFFFLL;
      }

      if (!v41 || (v42 = *(a1 + 232), , sub_251C70674(), result = , !v1))
      {
        swift_beginAccess();
        v43 = *(a1 + 248);
        v44 = HIBYTE(v43) & 0xF;
        if ((v43 & 0x2000000000000000) == 0)
        {
          v44 = *(a1 + 240) & 0xFFFFFFFFFFFFLL;
        }

        if (!v44 || (v45 = *(a1 + 248), , sub_251C70674(), result = , !v1))
        {
          swift_beginAccess();
          if (!*(a1 + 256) || (v55 = *(a1 + 256), v56 = *(a1 + 264), sub_251BB3274(), result = sub_251C70604(), !v1))
          {
            swift_beginAccess();
            v46 = *(a1 + 280);
            v47 = HIBYTE(v46) & 0xF;
            if ((v46 & 0x2000000000000000) == 0)
            {
              v47 = *(a1 + 272) & 0xFFFFFFFFFFFFLL;
            }

            if (!v47 || (v48 = *(a1 + 280), , sub_251C70674(), result = , !v1))
            {
              swift_beginAccess();
              v49 = *(a1 + 296);
              v50 = HIBYTE(v49) & 0xF;
              if ((v49 & 0x2000000000000000) == 0)
              {
                v50 = *(a1 + 288) & 0xFFFFFFFFFFFFLL;
              }

              if (!v50 || (v51 = *(a1 + 296), , sub_251C70674(), result = , !v1))
              {
                result = swift_beginAccess();
                v52 = *(a1 + 304);
                v53 = *(a1 + 312);
                v54 = HIBYTE(v53) & 0xF;
                if ((v53 & 0x2000000000000000) == 0)
                {
                  v54 = v52 & 0xFFFFFFFFFFFFLL;
                }

                if (v54)
                {

                  sub_251C70674();
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

BOOL sub_251B993DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  if ((v7 != *(a2 + 32) || v8 != *(a2 + 40)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  swift_beginAccess();
  if ((v9 != *(a2 + 48) || v10 != *(a2 + 56)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  swift_beginAccess();
  if ((v11 != *(a2 + 64) || v12 != *(a2 + 72)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  swift_beginAccess();
  if ((v13 != *(a2 + 80) || v14 != *(a2 + 88)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  swift_beginAccess();
  v17 = *(a2 + 104);
  if (!sub_251A74D48(v15, v16, *(a2 + 96)))
  {
    return 0;
  }

  swift_beginAccess();
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  swift_beginAccess();
  if ((v18 != *(a2 + 112) || v19 != *(a2 + 120)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v20 = *(a1 + 128);
  v21 = *(a1 + 136);
  swift_beginAccess();
  if ((v20 != *(a2 + 128) || v21 != *(a2 + 136)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v22 = *(a1 + 144);
  v23 = *(a1 + 152);
  swift_beginAccess();
  if ((v22 != *(a2 + 144) || v23 != *(a2 + 152)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v24 = *(a1 + 160);
  v25 = *(a1 + 168);
  swift_beginAccess();
  if ((v24 != *(a2 + 160) || v25 != *(a2 + 168)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v26 = *(a1 + 176);
  v27 = *(a1 + 184);
  swift_beginAccess();
  if ((v26 != *(a2 + 176) || v27 != *(a2 + 184)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v28 = *(a1 + 192);
  v29 = *(a1 + 200);
  swift_beginAccess();
  if ((v28 != *(a2 + 192) || v29 != *(a2 + 200)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 208);
  v31 = *(a1 + 216);
  swift_beginAccess();
  if ((v30 != *(a2 + 208) || v31 != *(a2 + 216)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v32 = *(a1 + 224);
  v33 = *(a1 + 232);
  swift_beginAccess();
  if ((v32 != *(a2 + 224) || v33 != *(a2 + 232)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v34 = *(a1 + 240);
  v35 = *(a1 + 248);
  swift_beginAccess();
  if ((v34 != *(a2 + 240) || v35 != *(a2 + 248)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v36 = *(a1 + 256);
  v37 = *(a1 + 264);
  swift_beginAccess();
  v38 = *(a2 + 264);
  if (!sub_251A74D48(v36, v37, *(a2 + 256)))
  {
    return 0;
  }

  swift_beginAccess();
  v39 = *(a1 + 272);
  v40 = *(a1 + 280);
  swift_beginAccess();
  if ((v39 != *(a2 + 272) || v40 != *(a2 + 280)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v41 = *(a1 + 288);
  v42 = *(a1 + 296);
  swift_beginAccess();
  if ((v41 != *(a2 + 288) || v42 != *(a2 + 296)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v44 = *(a1 + 304);
  v43 = *(a1 + 312);
  swift_beginAccess();
  if (v44 == *(a2 + 304) && v43 == *(a2 + 312))
  {
    return 1;
  }

  return (sub_251C719D4() & 1) != 0;
}

uint64_t sub_251B99A68@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  sub_251C703A4();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_251B99B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B848, type metadata accessor for PBMedicationTracking);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B99BF8(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AF08, type metadata accessor for PBMedicationTracking);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B99C64()
{
  sub_251B9ED44(&qword_27F47AF08, type metadata accessor for PBMedicationTracking);

  return sub_251C705C4();
}

uint64_t sub_251B99CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 != v5 && !sub_251B993DC(v4, v5))
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B99D8C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2578);
  __swift_project_value_buffer(v0, qword_27F4A2578);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_251C7C210;
  v5 = v42 + v4;
  v6 = v42 + v4 + *(v2 + 56);
  *(v42 + v4) = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "CAPSULE";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "CREAM";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "DEVICE";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "DROPS";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "FOAM";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "GEL";
  *(v20 + 1) = 3;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "INHALER";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "INJECTION";
  *(v23 + 8) = 9;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "LIQUID";
  *(v25 + 1) = 6;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "LOTION";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "OINTMENT";
  *(v29 + 1) = 8;
  v29[16] = 2;
  v9();
  v30 = (v5 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "PATCH";
  *(v31 + 1) = 5;
  v31[16] = 2;
  v9();
  v32 = (v5 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "POWDER";
  *(v33 + 1) = 6;
  v33[16] = 2;
  v9();
  v34 = (v5 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "SPRAY";
  *(v35 + 1) = 5;
  v35[16] = 2;
  v9();
  v36 = (v5 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "SUPPOSITORY";
  *(v37 + 1) = 11;
  v37[16] = 2;
  v9();
  v38 = v5 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "TABLET";
  *(v38 + 8) = 6;
  *(v38 + 16) = 2;
  v9();
  v39 = (v5 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "TOPICAL";
  *(v40 + 1) = 7;
  v40[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B9A36C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2590);
  __swift_project_value_buffer(v0, qword_27F4A2590);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_251C78760;
  v5 = v33 + v4;
  v6 = v33 + v4 + *(v2 + 56);
  *(v33 + v4) = 0;
  *v6 = "NOT_SET_UNIT";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "CAPSULE_UNIT";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "APPLICATION_UNIT";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "DEVICE_UNIT";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "DROP_UNIT";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "INHALATION_UNIT";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "INJECTION_UNIT";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "MILLILITERS_UNIT";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "PATCH_UNIT";
  *(v23 + 8) = 10;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "SCOOP_UNIT";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "SPRAY_UNIT";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "UNIT_UNIT";
  *(v29 + 1) = 9;
  v29[16] = 2;
  v9();
  v30 = (v5 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "TABLET_UNIT";
  *(v31 + 1) = 11;
  v31[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B9A824()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBMedicationTracking(0), sub_251B9ED44(&qword_27F47AF08, type metadata accessor for PBMedicationTracking), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBMedicationTrackings(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B9A998(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B860, type metadata accessor for PBMedicationTrackings);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9AA38(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479018, type metadata accessor for PBMedicationTrackings);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9AAA4()
{
  sub_251B9ED44(&qword_27F479018, type metadata accessor for PBMedicationTrackings);

  return sub_251C705C4();
}

uint64_t sub_251B9AB38()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A25C0);
  __swift_project_value_buffer(v0, qword_27F4A25C0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C78260;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "log_origin";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "status";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v10();
  v13 = (v6 + 2 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "schedule_item_identifier";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v10();
  v15 = (v6 + 3 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "medication_semantic_identifier";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v10();
  v17 = (v6 + 4 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "scheduled_dose_quantity";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v10();
  v19 = (v6 + 5 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "dose_quantity";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v10();
  v21 = (v6 + 6 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "scheduled_date";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v10();
  v23 = (v6 + 7 * v3);
  v24 = v23 + *(v2 + 56);
  *v23 = 8;
  *v24 = "log_date";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B9AEA4()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7 || result == 8)
          {
LABEL_4:
            sub_251C70534();
          }
        }

        else
        {
          sub_251C704F4();
        }
      }

      else
      {
        if (result > 2)
        {
          goto LABEL_4;
        }

        if (result == 1)
        {
          v3 = v0;
          sub_251BB32C8();
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v3 = v0;
          sub_251BB331C();
        }

        v0 = v3;
        sub_251C70494();
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B9B008()
{
  v2 = v1;
  if (*v0)
  {
    v14 = *v0;
    v16 = *(v0 + 8);
    sub_251BB32C8();
    result = sub_251C70604();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (v0[2])
  {
    v15 = v0[2];
    v17 = *(v0 + 24);
    sub_251BB331C();
    v4 = v2;
    result = sub_251C70604();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  v5 = v0[5];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v0[4] & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    v7 = v0[7];
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v0[6] & 0xFFFFFFFFFFFFLL;
    }

    if (!v8 || (result = sub_251C70674(), !v4))
    {
      if (!*(v0 + 16) || (result = sub_251C70644(), !v4))
      {
        if (!*(v0 + 17) || (result = sub_251C70644(), !v4))
        {
          v9 = v0[10];
          v10 = HIBYTE(v9) & 0xF;
          if ((v9 & 0x2000000000000000) == 0)
          {
            v10 = v0[9] & 0xFFFFFFFFFFFFLL;
          }

          if (!v10 || (result = sub_251C70674(), !v4))
          {
            v11 = v0[12];
            v12 = HIBYTE(v11) & 0xF;
            if ((v11 & 0x2000000000000000) == 0)
            {
              v12 = v0[11] & 0xFFFFFFFFFFFFLL;
            }

            if (!v12 || (result = sub_251C70674(), !v4))
            {
              v13 = v0 + *(type metadata accessor for PBMedicationTrackingDoseEvent(0) + 48);
              return sub_251C70394();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B9B20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0xE000000000000000;
  v2 = a2 + *(a1 + 48);
  return sub_251C703A4();
}

uint64_t sub_251B9B274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251B9B2E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251B9B38C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B868, type metadata accessor for PBMedicationTrackingDoseEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9B42C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AED0, type metadata accessor for PBMedicationTrackingDoseEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9B498()
{
  sub_251B9ED44(&qword_27F47AED0, type metadata accessor for PBMedicationTrackingDoseEvent);

  return sub_251C705C4();
}

uint64_t sub_251B9B518()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A25D8);
  __swift_project_value_buffer(v0, qword_27F4A25D8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "LOG_ORIGIN_NOT_SET";
  *(v7 + 8) = 18;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "AS_NEEDED";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "SCHEDULE";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B9B764()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A25F0);
  __swift_project_value_buffer(v0, qword_27F4A25F0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C75420;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 0;
  *v5 = "STATUS_NOT_SET";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 1;
  *v9 = "NOT_INTERACTED";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "NOTIFICATION_NOT_SENT";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "SNOOZED";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "TAKEN";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "SKIPPED";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "NOT_LOGGED";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251B9BAB8()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBMedicationTrackingDoseEvent(0), sub_251B9ED44(&qword_27F47AED0, type metadata accessor for PBMedicationTrackingDoseEvent), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBMedicationTrackingDoseEvents(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B9BC2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B880, type metadata accessor for PBMedicationTrackingDoseEvents);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9BCCC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479020, type metadata accessor for PBMedicationTrackingDoseEvents);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9BD38()
{
  sub_251B9ED44(&qword_27F479020, type metadata accessor for PBMedicationTrackingDoseEvents);

  return sub_251C705C4();
}

uint64_t sub_251B9BDCC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2620);
  __swift_project_value_buffer(v0, qword_27F4A2620);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_251C75810;
  v5 = v28 + v4;
  v6 = v28 + v4 + *(v2 + 56);
  *(v28 + v4) = 1;
  *v6 = "schedule_identifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v28 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "medication_semantic_identifier";
  *(v10 + 8) = 30;
  *(v10 + 16) = 2;
  v9();
  v11 = (v28 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "created_utc_offset";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v28 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "start_date_time";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v28 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "end_date_time";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v28 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "notes";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v19 = *MEMORY[0x277D21870];
  v9();
  v20 = (v28 + v4 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "time_intervals";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v9();
  v22 = (v28 + v4 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 8;
  *v23 = "frequency_type";
  *(v23 + 1) = 14;
  v23[16] = 2;
  v9();
  v24 = v28 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v24 = "unrecognized";
  *(v24 + 8) = 12;
  *(v24 + 16) = 2;
  v9();
  v25 = (v28 + v4 + 9 * v3);
  v26 = v25 + *(v2 + 56);
  *v25 = 10;
  *v26 = "compatibility_version_range";
  *(v26 + 1) = 27;
  v26[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B9C1CC()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            goto LABEL_4;
          }

          type metadata accessor for PBHKMedicationScheduleIntervalData(0);
          sub_251B9ED44(&qword_27F47AE40, type metadata accessor for PBHKMedicationScheduleIntervalData);
          sub_251C70554();
        }

        else
        {
          switch(result)
          {
            case 8:
              sub_251BB3370();
              sub_251C70494();
              break;
            case 9:
              sub_251C70474();
              break;
            case 10:
              sub_251B9C3B0();
              break;
          }
        }
      }

      else if (result > 2 || result == 1 || result == 2)
      {
LABEL_4:
        sub_251C70534();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B9C3B0()
{
  v0 = *(type metadata accessor for PBMedicationTrackingSchedule(0) + 56);
  type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange(0);
  sub_251B9ED44(&qword_27F47AE78, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  return sub_251C70564();
}

uint64_t sub_251B9C464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    v12 = *(v3 + 24);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_251C70674(), !v4))
    {
      v14 = *(v3 + 40);
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v15 || (result = sub_251C70674(), !v4))
      {
        v16 = *(v3 + 56);
        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v17 || (result = sub_251C70674(), !v4))
        {
          v18 = *(v3 + 72);
          v19 = HIBYTE(v18) & 0xF;
          if ((v18 & 0x2000000000000000) == 0)
          {
            v19 = *(v3 + 64) & 0xFFFFFFFFFFFFLL;
          }

          if (!v19 || (result = sub_251C70674(), !v4))
          {
            v20 = *(v3 + 88);
            v21 = HIBYTE(v20) & 0xF;
            if ((v20 & 0x2000000000000000) == 0)
            {
              v21 = *(v3 + 80) & 0xFFFFFFFFFFFFLL;
            }

            if (!v21 || (result = sub_251C70674(), !v4))
            {
              v22 = v4;
              if (*(*(v3 + 96) + 16))
              {
                type metadata accessor for PBHKMedicationScheduleIntervalData(0);
                sub_251B9ED44(&qword_27F47AE40, type metadata accessor for PBHKMedicationScheduleIntervalData);
                result = sub_251C70694();
                if (v4)
                {
                  return result;
                }

                v22 = 0;
              }

              if (*(v3 + 104))
              {
                v25 = *(v3 + 104);
                v26 = *(v3 + 112);
                sub_251BB3370();
                v23 = v22;
                result = sub_251C70604();
                if (v22)
                {
                  return result;
                }
              }

              else
              {
                v23 = v22;
              }

              if (*(v3 + 113) != 1 || (result = sub_251C705F4(), !v23))
              {
                result = sub_251B9C700(v3, a1, a2, a3);
                if (!v23)
                {
                  v24 = v3 + *(type metadata accessor for PBMedicationTrackingSchedule(0) + 52);
                  return sub_251C70394();
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

uint64_t sub_251B9C700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBMedicationTrackingSchedule(0);
  sub_251BB33C4(a1 + *(v14 + 56), v8, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  sub_251B9ED44(&qword_27F47AE78, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
}

uint64_t sub_251B9C950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  *(a2 + 96) = v4;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  v5 = a2 + *(a1 + 52);
  sub_251C703A4();
  v6 = *(a1 + 56);
  v7 = type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_251B9CA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B888, type metadata accessor for PBMedicationTrackingSchedule);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9CAEC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AE98, type metadata accessor for PBMedicationTrackingSchedule);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9CB58()
{
  sub_251B9ED44(&qword_27F47AE98, type metadata accessor for PBMedicationTrackingSchedule);

  return sub_251C705C4();
}

uint64_t sub_251B9CBD4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2638);
  __swift_project_value_buffer(v0, qword_27F4A2638);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_251C747F0;
  v5 = v17 + v4;
  v6 = v17 + v4 + *(v2 + 56);
  *(v17 + v4) = 0;
  *v6 = "FREQUENCY_NOT_SET";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "CYCLE";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "DAILY";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "DAYS_OF_WEEK";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v3 + *(v2 + 56);
  *(v5 + 4 * v3) = 4;
  *v15 = "AS_NEEDED";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B9CE98()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2650);
  __swift_project_value_buffer(v0, qword_27F4A2650);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "minimum_compatibility_version";
  *(v7 + 8) = 29;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "origin_compatibility_version";
  *(v11 + 1) = 28;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B9D078()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_251C704F4();
    }
  }

  return result;
}

uint64_t sub_251B9D140(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B898, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9D1E0(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AE78, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9D24C()
{
  sub_251B9ED44(&qword_27F47AE78, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);

  return sub_251C705C4();
}

uint64_t sub_251B9D2C8(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B9D398(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_251C706D4();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 72);
  v13 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_251C74800;
  v15 = v14 + v13 + *(v11 + 56);
  *(v14 + v13) = 1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = 2;
  v16 = *a5;
  v17 = sub_251C706B4();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  return sub_251C706C4();
}

uint64_t sub_251B9D520(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_251C70444();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_251B9ED44(a5, a6);
      sub_251C70554();
    }
  }

  return result;
}

uint64_t sub_251B9D5FC()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBMedicationTrackingSchedule(0), sub_251B9ED44(&qword_27F47AE98, type metadata accessor for PBMedicationTrackingSchedule), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBMedicationTrackingSchedules(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B9D770(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B8A0, type metadata accessor for PBMedicationTrackingSchedules);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9D810(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479028, type metadata accessor for PBMedicationTrackingSchedules);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9D87C()
{
  sub_251B9ED44(&qword_27F479028, type metadata accessor for PBMedicationTrackingSchedules);

  return sub_251C705C4();
}

uint64_t sub_251B9D910(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B9D9BC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2680);
  __swift_project_value_buffer(v0, qword_27F4A2680);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "days_of_week";
  *(v7 + 8) = 12;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "cycle_index";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "cycle_interval_days";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "dose";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v16 = *MEMORY[0x277D21870];
  v10();
  v17 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v17 = "start_time";
  *(v17 + 8) = 10;
  *(v17 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B9DC6C()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_251B9DD44();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result == 3 || result == 4)
    {
LABEL_2:
      sub_251C704F4();
    }

    else if (result == 5)
    {
      sub_251C70534();
    }
  }
}

uint64_t sub_251B9DD44()
{
  v0 = *(type metadata accessor for PBHKMedicationScheduleIntervalData(0) + 36);
  type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
  sub_251B9ED44(&qword_27F47AE20, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  return sub_251C70564();
}

uint64_t sub_251B9DDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B9DF08(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_251C70644();
    }

    if (*(v3 + 4))
    {
      sub_251C70644();
    }

    if (*(v3 + 8))
    {
      sub_251C70644();
    }

    v6 = *(v3 + 24);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_251C70674();
    }

    v8 = v3 + *(type metadata accessor for PBHKMedicationScheduleIntervalData(0) + 32);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B9DF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKMedicationScheduleIntervalData(0);
  sub_251BB33C4(a1 + *(v14 + 36), v8, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  sub_251B9ED44(&qword_27F47AE20, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
}

uint64_t sub_251B9E154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  v4 = a2 + *(a1 + 32);
  sub_251C703A4();
  v5 = *(a1 + 36);
  v6 = type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_251B9E230(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B8A8, type metadata accessor for PBHKMedicationScheduleIntervalData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9E2D0(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AE40, type metadata accessor for PBHKMedicationScheduleIntervalData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9E33C()
{
  sub_251B9ED44(&qword_27F47AE40, type metadata accessor for PBHKMedicationScheduleIntervalData);

  return sub_251C705C4();
}

uint64_t sub_251B9E3BC()
{
  result = MEMORY[0x25308CDA0](0xD000000000000019, 0x8000000251C8EF90);
  qword_27F4A2698 = 0xD00000000000003BLL;
  unk_27F4A26A0 = 0x8000000251C8EF10;
  return result;
}

uint64_t sub_251B9E434()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A26A8);
  __swift_project_value_buffer(v0, qword_27F4A26A8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_251C75420;
  v5 = v22 + v4;
  v6 = v22 + v4 + *(v2 + 56);
  *(v22 + v4) = 1;
  *v6 = "sunday";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "monday";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "tuesday";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "wednesday";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "thursday";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "friday";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "saturday";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B9E748()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1 || result == 2 || result == 3)
        {
LABEL_11:
          sub_251C70474();
        }
      }

      else if (result <= 6 || result == 7)
      {
        goto LABEL_11;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B9E82C()
{
  if (*v0 != 1 || (result = sub_251C705F4(), !v1))
  {
    if (v0[1] != 1 || (result = sub_251C705F4(), !v1))
    {
      if (v0[2] != 1 || (result = sub_251C705F4(), !v1))
      {
        if (v0[3] != 1 || (result = sub_251C705F4(), !v1))
        {
          if (v0[4] != 1 || (result = sub_251C705F4(), !v1))
          {
            if (v0[5] != 1 || (result = sub_251C705F4(), !v1))
            {
              if (v0[6] != 1 || (result = sub_251C705F4(), !v1))
              {
                v3 = &v0[*(type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0) + 44)];
                return sub_251C70394();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B9E9A8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *(a2 + 3) = 0;
  *a2 = 0;
  v2 = a2 + *(a1 + 44);
  return sub_251C703A4();
}

uint64_t sub_251B9E9F8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_251B9EA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251B9EACC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251B9EB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B8B0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B9EC10(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AE20, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B9EC7C()
{
  sub_251B9ED44(&qword_27F47AE20, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);

  return sub_251C705C4();
}

uint64_t sub_251B9ED44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251BA3424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v30 - v11);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    goto LABEL_16;
  }

  v31 = v15;
  v18 = *(a2 + 8);
  v19 = *(a2 + 16);
  v20 = nullsub_1(*(a1 + 8), *(a1 + 16));
  if (v20 != nullsub_1(v18, v19) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_16;
  }

  v30 = type metadata accessor for PBWorkout(0);
  v21 = *(v30 + 48);
  v22 = *(v31 + 48);
  sub_251BB33C4(a1 + v21, v17, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v23 = a2 + v21;
  v24 = v22;
  sub_251BB33C4(v23, &v17[v22], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v25 = *(v5 + 48);
  if (v25(v17, 1, v4) != 1)
  {
    sub_251BB33C4(v17, v12, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if (v25(&v17[v24], 1, v4) != 1)
    {
      sub_251BB23C4(&v17[v24], v8, type metadata accessor for PBDateRange);
      v26 = sub_251BB2194(v12, v8);
      sub_251BB2308(v8, type metadata accessor for PBDateRange);
      sub_251BB2308(v12, type metadata accessor for PBDateRange);
      sub_251BB3444(v17, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if (v26)
      {
        goto LABEL_13;
      }

LABEL_16:
      v28 = 0;
      return v28 & 1;
    }

    sub_251BB2308(v12, type metadata accessor for PBDateRange);
LABEL_11:
    sub_251BB242C(v17, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
    goto LABEL_16;
  }

  if (v25(&v17[v24], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_251BB3444(v17, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_13:
  if (*(a1 + 28) != *(a2 + 28) || *(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_16;
  }

  v27 = *(v30 + 44);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v28 = sub_251C70ED4();
  return v28 & 1;
}

uint64_t sub_251BA3894(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(type metadata accessor for PBBucket(0) + 28);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BA395C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  sub_251BB34B4(0, &qword_27F4790F8, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for PBHKMedicationScheduleIntervalData(0);
  v17 = *(v26 + 36);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_251BB33C4(a1 + v17, v16, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  sub_251BB33C4(a2 + v17, &v16[v18], qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_251BB3444(v16, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_251BB33C4(v16, v11, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_251BB2308(v11, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
LABEL_6:
    sub_251BB242C(v16, &qword_27F4790F8, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
LABEL_15:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_251BB23C4(&v16[v18], v27, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  v21 = sub_251BA3D80(v11, v20);
  sub_251BB2308(v20, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  sub_251BB2308(v11, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  sub_251BB3444(v16, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  if ((v21 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (*v28 != *a2 || *(v28 + 4) != *(a2 + 4) || *(v28 + 8) != *(a2 + 8) || (*(v28 + 16) != *(a2 + 16) || *(v28 + 24) != *(a2 + 24)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_15;
  }

  v22 = *(v26 + 32);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v23 = sub_251C70ED4();
  return v23 & 1;
}

uint64_t sub_251BA3D80(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6])
  {
    return 0;
  }

  v3 = *(type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0) + 44);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BA3E88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (*(a2 + 24) == 1)
  {
    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          if (v4 != 1)
          {
            return 0;
          }
        }

        else if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 > 4)
    {
      if (v5 == 5)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (a1[4] == a2[4] && a1[5] == a2[5] || (v6 = a1, v7 = a1[4], v8 = a2, v9 = sub_251C719D4(), a2 = v8, v10 = v9, a1 = v6, (v10 & 1) != 0))
  {
    if (a1[6] == a2[6] && a1[7] == a2[7] || (v11 = a1, v12 = a1[6], v13 = a2, v14 = sub_251C719D4(), a2 = v13, v15 = v14, a1 = v11, (v15 & 1) != 0))
    {
      if (*(a1 + 16) == *(a2 + 16) && *(a1 + 17) == *(a2 + 17))
      {
        if (a1[9] == a2[9] && a1[10] == a2[10] || (v16 = a1, v17 = a1[9], v18 = a2, v19 = sub_251C719D4(), a2 = v18, v20 = v19, a1 = v16, (v20 & 1) != 0))
        {
          if (a1[11] == a2[11] && a1[12] == a2[12] || (v21 = a1[11], (sub_251C719D4() & 1) != 0))
          {
            v22 = *(type metadata accessor for PBMedicationTrackingDoseEvent(0) + 48);
            sub_251C703B4();
            sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
            return sub_251C70ED4() & 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_251BA411C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B67AAC(0, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v30 - v11);
  sub_251BB34B4(0, &qword_27F47B5C0, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_251C719D4() & 1) == 0 || (sub_251A9416C(*(a1 + 96), *(a2 + 96)) & 1) == 0)
  {
    goto LABEL_49;
  }

  v18 = *(a1 + 104);
  v19 = *(a2 + 104);
  if (*(a2 + 112) == 1)
  {
    if (v19 <= 1)
    {
      if (v19)
      {
        if (v18 != 1)
        {
          goto LABEL_49;
        }
      }

      else if (v18)
      {
        goto LABEL_49;
      }
    }

    else if (v19 == 2)
    {
      if (v18 != 2)
      {
        goto LABEL_49;
      }
    }

    else if (v19 == 3)
    {
      if (v18 != 3)
      {
        goto LABEL_49;
      }
    }

    else if (v18 != 4)
    {
      goto LABEL_49;
    }
  }

  else if (v18 != v19)
  {
LABEL_49:
    v26 = 0;
    return v26 & 1;
  }

  if (*(a1 + 113) != *(a2 + 113))
  {
    goto LABEL_49;
  }

  v31 = type metadata accessor for PBMedicationTrackingSchedule(0);
  v20 = *(v31 + 56);
  v21 = *(v14 + 48);
  sub_251BB33C4(a1 + v20, v17, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  v22 = a2 + v20;
  v23 = v21;
  sub_251BB33C4(v22, &v17[v21], qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  v24 = *(v5 + 48);
  if (v24(v17, 1, v4) == 1)
  {
    if (v24(&v17[v23], 1, v4) == 1)
    {
      sub_251BB3444(v17, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
      goto LABEL_31;
    }

    goto LABEL_37;
  }

  sub_251BB33C4(v17, v12, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  if (v24(&v17[v23], 1, v4) == 1)
  {
    sub_251BB2308(v12, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
LABEL_37:
    sub_251BB242C(v17, &qword_27F47B5C0, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
    goto LABEL_49;
  }

  sub_251BB23C4(&v17[v23], v8, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  if (*v12 != *v8 || v12[1] != v8[1])
  {
    sub_251BB2308(v8, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
    sub_251BB2308(v12, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
    sub_251BB3444(v17, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
    goto LABEL_49;
  }

  v27 = *(v4 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v28 = sub_251C70ED4();
  sub_251BB2308(v8, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  sub_251BB2308(v12, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  sub_251BB3444(v17, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
  if ((v28 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_31:
  v25 = *(v31 + 52);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v26 = sub_251C70ED4();
  return v26 & 1;
}

uint64_t sub_251BA471C(void *a1, void *a2)
{
  v79 = a2;
  v3 = type metadata accessor for PBQuantity(0);
  v75 = *(v3 - 8);
  v76 = v3;
  v4 = *(v75 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v68 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = &v68 - v7;
  v8 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E6F88, type metadata accessor for PBQuantity, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v69 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v72 = &v68 - v13;
  sub_251BB34B4(0, &qword_27F47B578, qword_2813E6F88, type metadata accessor for PBQuantity);
  v74 = v14;
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = &v68 - v18;
  v19 = type metadata accessor for PBGeneralMedication(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, v8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v68 - v26);
  sub_251BB34B4(0, &qword_27F47B580, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v68 - v31;
  v33 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  v77 = a1;
  v78 = v33;
  v34 = *(v33 + 28);
  v35 = *(v29 + 56);
  sub_251BB33C4(a1 + v34, v32, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v36 = v79 + v34;
  v37 = v79;
  sub_251BB33C4(v36, &v32[v35], qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v38 = *(v20 + 48);
  if (v38(v32, 1, v19) == 1)
  {
    if (v38(&v32[v35], 1, v19) == 1)
    {
      sub_251BB3444(v32, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
      goto LABEL_8;
    }

LABEL_6:
    v39 = &qword_27F47B580;
    v40 = qword_2813E52A0;
    v41 = type metadata accessor for PBGeneralMedication;
    v42 = v32;
LABEL_24:
    sub_251BB242C(v42, v39, v40, v41);
    goto LABEL_25;
  }

  sub_251BB33C4(v32, v27, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if (v38(&v32[v35], 1, v19) == 1)
  {
    sub_251BB2308(v27, type metadata accessor for PBGeneralMedication);
    goto LABEL_6;
  }

  sub_251BB23C4(&v32[v35], v23, type metadata accessor for PBGeneralMedication);
  v43 = sub_251BAA86C(v27, v23);
  sub_251BB2308(v23, type metadata accessor for PBGeneralMedication);
  sub_251BB2308(v27, type metadata accessor for PBGeneralMedication);
  sub_251BB3444(v32, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if ((v43 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v44 = v77;
  v45 = v78[8];
  v47 = v73;
  v46 = v74;
  v48 = *(v74 + 48);
  sub_251BB33C4(v77 + v45, v73, qword_2813E6F88, type metadata accessor for PBQuantity);
  sub_251BB33C4(v37 + v45, v47 + v48, qword_2813E6F88, type metadata accessor for PBQuantity);
  v49 = v76;
  v50 = *(v75 + 48);
  if (v50(v47, 1, v76) == 1)
  {
    if (v50(v47 + v48, 1, v49) == 1)
    {
      sub_251BB3444(v47, qword_2813E6F88, type metadata accessor for PBQuantity);
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  v58 = v72;
  sub_251BB33C4(v47, v72, qword_2813E6F88, type metadata accessor for PBQuantity);
  if (v50(v47 + v48, 1, v49) == 1)
  {
    sub_251BB2308(v58, type metadata accessor for PBQuantity);
LABEL_23:
    v39 = &qword_27F47B578;
    v40 = qword_2813E6F88;
    v41 = type metadata accessor for PBQuantity;
    v42 = v47;
    goto LABEL_24;
  }

  v60 = v47 + v48;
  v61 = v71;
  sub_251BB23C4(v60, v71, type metadata accessor for PBQuantity);
  if (*v58 != *v61 || (*(v58 + 8) != *(v61 + 8) || *(v58 + 16) != *(v61 + 16)) && (sub_251C719D4() & 1) == 0)
  {
    sub_251BB2308(v61, type metadata accessor for PBQuantity);
    sub_251BB2308(v58, type metadata accessor for PBQuantity);
    v63 = v47;
    goto LABEL_34;
  }

  v62 = *(v49 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v44 = v77;
  LOBYTE(v62) = sub_251C70ED4();
  sub_251BB2308(v61, type metadata accessor for PBQuantity);
  sub_251BB2308(v72, type metadata accessor for PBQuantity);
  sub_251BB3444(v47, qword_2813E6F88, type metadata accessor for PBQuantity);
  if ((v62 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  if ((*v44 != *v37 || v44[1] != v37[1]) && (sub_251C719D4() & 1) == 0 || (v44[2] != v37[2] || v44[3] != v37[3]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_25;
  }

  v51 = v78[9];
  v52 = *(v46 + 48);
  v53 = v70;
  sub_251BB33C4(v44 + v51, v70, qword_2813E6F88, type metadata accessor for PBQuantity);
  v54 = v37 + v51;
  v55 = v53;
  sub_251BB33C4(v54, v53 + v52, qword_2813E6F88, type metadata accessor for PBQuantity);
  if (v50(v53, 1, v49) != 1)
  {
    v64 = v53;
    v65 = v69;
    sub_251BB33C4(v64, v69, qword_2813E6F88, type metadata accessor for PBQuantity);
    if (v50(v55 + v52, 1, v49) == 1)
    {
      sub_251BB2308(v65, type metadata accessor for PBQuantity);
      goto LABEL_37;
    }

    v66 = v68;
    sub_251BB23C4(v55 + v52, v68, type metadata accessor for PBQuantity);
    if (*v65 == *v66 && (*(v65 + 8) == *(v66 + 8) && *(v65 + 16) == *(v66 + 16) || (sub_251C719D4() & 1) != 0))
    {
      v67 = *(v49 + 24);
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      LOBYTE(v67) = sub_251C70ED4();
      sub_251BB2308(v66, type metadata accessor for PBQuantity);
      sub_251BB2308(v65, type metadata accessor for PBQuantity);
      sub_251BB3444(v55, qword_2813E6F88, type metadata accessor for PBQuantity);
      if (v67)
      {
        goto LABEL_20;
      }

LABEL_25:
      v57 = 0;
      return v57 & 1;
    }

    sub_251BB2308(v66, type metadata accessor for PBQuantity);
    sub_251BB2308(v65, type metadata accessor for PBQuantity);
    v63 = v55;
LABEL_34:
    sub_251BB3444(v63, qword_2813E6F88, type metadata accessor for PBQuantity);
    goto LABEL_25;
  }

  if (v50(v53 + v52, 1, v49) != 1)
  {
LABEL_37:
    v39 = &qword_27F47B578;
    v40 = qword_2813E6F88;
    v41 = type metadata accessor for PBQuantity;
    v42 = v55;
    goto LABEL_24;
  }

  sub_251BB3444(v53, qword_2813E6F88, type metadata accessor for PBQuantity);
LABEL_20:
  v56 = v78[6];
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v57 = sub_251C70ED4();
  return v57 & 1;
}