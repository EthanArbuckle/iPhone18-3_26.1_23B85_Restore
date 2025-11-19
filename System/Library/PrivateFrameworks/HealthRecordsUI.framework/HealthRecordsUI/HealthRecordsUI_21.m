uint64_t type metadata accessor for PatientDetailsDataSource()
{
  result = qword_1EC60DCA8;
  if (!qword_1EC60DCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D122D058(void *a1)
{
  v2 = v1;
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138FF3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760);
  *v11 = sub_1D1390A7C();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = sub_1D138FF5C();
  v14 = *(v9 + 8);
  v13 = (v9 + 8);
  v14(v11, v8);
  if (v12)
  {
    v15 = qword_1EC60DC98;
    v16 = *(v2 + qword_1EC60DC98);
    if (v16)
    {
      if (!a1)
      {
        goto LABEL_6;
      }

      sub_1D106F934(0, &unk_1EC60B630);
      v17 = v16;
      v18 = a1;
      v19 = sub_1D1390D8C();

      if (v19)
      {
        return;
      }

      v16 = *(v2 + v15);
      if (v16)
      {
LABEL_6:
        v13 = *(v2 + qword_1EC60DCA0);
        v20 = v16;
        v21 = [v13 clinicalSourcesDataProvider];
        v53 = v20;
        v22 = [v21 nameAndFormattedBirthDateForAccountOwner:v20 useMultipleLines:1];

        if (v22)
        {
          v23 = sub_1D139016C();
          v50 = v24;
          v51 = v23;
        }

        else
        {
          v50 = 0;
          v51 = 0;
        }

        v54 = v7;
        v55 = v5;
        v56 = v4;
        v57 = v2;
        if (qword_1EE06AD00 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    else if (!a1)
    {
      return;
    }

    sub_1D138E58C();
    return;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_12:
  v25 = sub_1D138D1CC();
  v27 = v26;
  sub_1D1086E1C();
  v28 = swift_allocObject();
  v52 = xmmword_1D139E710;
  *(v28 + 16) = xmmword_1D139E710;
  *(v28 + 32) = sub_1D139016C();
  *(v28 + 40) = v29;
  *(v28 + 48) = 0x746E6569746150;
  *(v28 + 56) = 0xE700000000000000;
  v30 = sub_1D139044C();

  v31 = HKUIJoinStringsForAutomationIdentifier();

  if (v31)
  {
    v32 = sub_1D139016C();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = type metadata accessor for TitleSubtitleDetailItem(0);
  v36 = swift_allocObject();
  sub_1D138D5DC();
  v36[2] = v25;
  v36[3] = v27;
  v37 = v50;
  v36[4] = v51;
  v36[5] = v37;
  v38 = MEMORY[0x1E69E7CC0];
  v36[6] = 0;
  v36[7] = v38;
  v36[8] = v32;
  v36[9] = v34;
  v39 = sub_1D138D1CC();
  v41 = v40;
  v42 = type metadata accessor for FHIRRawResourceItem();
  swift_allocObject();
  v43 = v53;
  v44 = v13;
  v45 = sub_1D122DA54(v39, v41, v44, v43);

  v46 = MEMORY[0x1E69E6F90];
  sub_1D122DEA0(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
  sub_1D122DEA0(0, &qword_1EC60B640, sub_1D1159FC8, v46);
  v47 = swift_allocObject();
  *(v47 + 16) = v52;
  *(v47 + 56) = v35;
  *(v47 + 64) = sub_1D122DF04(&qword_1EC60AFF8, 255, type metadata accessor for TitleSubtitleDetailItem);
  *(v47 + 32) = v36;
  *(v47 + 96) = v42;
  *(v47 + 104) = sub_1D122DF04(&qword_1EC60DCC0, v48, type metadata accessor for FHIRRawResourceItem);
  *(v47 + 72) = v45;

  v49 = v54;
  sub_1D138D5DC();
  sub_1D138D59C();
  (*(v55 + 8))(v49, v56);
  sub_1D138E50C();
  sub_1D138E58C();
}

void sub_1D122D758()
{
  v1 = *(v0 + qword_1EC60DCA0);
}

uint64_t sub_1D122D798()
{
  v0 = sub_1D138E5CC();
  v1 = *(v0 + qword_1EC60DC98);

  v2 = *(v0 + qword_1EC60DCA0);

  return swift_deallocClassInstance();
}

uint64_t sub_1D122D80C()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E65C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_1D122D960(uint64_t a1, void *a2)
{
  v4 = *v2;
  v7 = [objc_allocWithZone(WDMedicalRecordSourceDataViewController) initWithProfile:*(*v2 + 96) medicalRecord:*(v4 + 104)];
  v5 = [a2 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 hk:v7 showViewController:1 animated:?];
  }
}

void *sub_1D122DA54(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v32 = a4;
  v34 = a1;
  v35 = a2;
  sub_1D122DEA0(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v33 = sub_1D138F15C();
  v11 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D138F0FC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[12] = a3;
  v5[13] = a4;
  sub_1D122DEA0(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1D138F17C();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D139E700;
  (*(v15 + 104))(v17, *MEMORY[0x1E69DBF28], v14);
  v19 = sub_1D138F10C();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = a3;
  v21 = v32;
  sub_1D138F14C();
  sub_1D138F11C();
  (*(v11 + 8))(v13, v33);
  (*(v15 + 8))(v17, v14);
  sub_1D1086E1C();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D139E710;
  *(v22 + 32) = sub_1D139016C();
  *(v22 + 40) = v23;
  *(v22 + 48) = 0xD000000000000010;
  *(v22 + 56) = 0x80000001D13C5520;
  v24 = sub_1D139044C();

  v25 = HKUIJoinStringsForAutomationIdentifier();

  if (v25)
  {
    v26 = sub_1D139016C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  type metadata accessor for TextItemCell();
  sub_1D122DF04(&unk_1EC60F720, 255, type metadata accessor for TextItemCell);
  v5[10] = sub_1D138DECC();
  v5[11] = v29;
  v30 = v35;
  v5[2] = v34;
  v5[3] = v30;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = v18;
  v5[8] = v26;
  v5[9] = v28;
  return v5;
}

void sub_1D122DEA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D122DF04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D122DF4C(void *a1)
{
  v2 = v1;
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1EC60DC98) = 0;
  *(v2 + qword_1EC60DCA0) = a1;
  sub_1D122DEA0(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
  v8 = a1;
  sub_1D138D5DC();
  sub_1D138D59C();
  v9 = *(v5 + 8);
  v9(v7, v4);
  sub_1D138E50C();
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1D13911EC();

  strcpy(v14, "MutableArray<");
  HIWORD(v14[1]) = -4864;
  sub_1D138D5DC();
  v10 = sub_1D138D59C();
  v12 = v11;
  v9(v7, v4);
  MEMORY[0x1D3885C10](v10, v12);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  return sub_1D138E56C();
}

id sub_1D122E1FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureChartData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BloodPressureChartData()
{
  result = qword_1EC60DCC8;
  if (!qword_1EC60DCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D122E2F4()
{
  result = sub_1D138D57C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D122E39C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI22BloodPressureChartData_date;
  v4 = sub_1D138D57C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1D139052C();
  swift_getWitnessTable();
  sub_1D139073C();
  sub_1D10FA010();
  if (sub_1D139074C())
  {
    sub_1D139053C();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return (*(*(a1 - 8) + 56))(a2, v4, 1, a1);
}

uint64_t Array<A>.excluding(_:)()
{
  sub_1D139052C();

  swift_getWitnessTable();
  return sub_1D139129C();
}

{
  sub_1D139052C();

  swift_getWitnessTable();
  return sub_1D139129C();
}

BOOL sub_1D122E678()
{
  sub_1D139052C();
  swift_getWitnessTable();
  return (sub_1D13903EC() & 1) == 0;
}

unint64_t static RemovedCategoryNavigationFeedItemIdentifierFactory.makePrefixComponent(feedItemKind:)()
{
  sub_1D13911EC();

  v0 = FeedItemKind.rawValue.getter();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t static RemovedCategoryNavigationFeedItemIdentifierFactory.makeComponent(categoryKind:)()
{
  sub_1D13911EC();

  v0 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t static RemovedCategoryNavigationFeedItemIdentifierFactory.make(categoryKind:profile:)(unsigned __int8 *a1)
{
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D139E710;
  v8 = sub_1D138D98C();
  if (v8)
  {
    v22 = 0x656C69666F72505BLL;
    v23 = 0xE90000000000003ALL;
    v9 = v8;
    v10 = [v9 identifier];
    sub_1D138D5CC();

    v11 = sub_1D138D59C();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    MEMORY[0x1D3885C10](v11, v13);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v15 = v22;
    v14 = v23;
  }

  else
  {
    v9 = 0;
    v14 = 0x80000001D13BBE40;
    v15 = 0xD000000000000013;
  }

  v22 = v15;
  v23 = v14;
  MEMORY[0x1D3885C10](0xD000000000000030, 0x80000001D13BF220);

  v16 = v23;
  *(v7 + 32) = v22;
  *(v7 + 40) = v16;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1D13911EC();

  v22 = 0xD00000000000001BLL;
  v23 = 0x80000001D13BF260;
  v21[1] = v6;
  v17 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v17);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v18 = v23;
  *(v7 + 48) = v22;
  *(v7 + 56) = v18;
  v22 = v7;
  sub_1D113F4E8(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
  sub_1D10F73A8();
  v19 = sub_1D139008C();

  return v19;
}

uint64_t sub_1D122EB7C(char a1)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  v2 = sub_1D139162C();

  if ((v2 & 1) == 0)
  {
    if (a1 != 2)
    {
      v3 = sub_1D139162C();
      goto LABEL_7;
    }

LABEL_5:
    v3 = 1;
LABEL_7:

    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_1D122EC78(unsigned __int8 a1)
{
  if (a1 == 1)
  {
    goto LABEL_6;
  }

  v2 = sub_1D139162C();

  if ((v2 & 1) == 0)
  {
    if (a1 <= 1u)
    {
      v3 = sub_1D139162C();
LABEL_7:

      return v3 & 1;
    }

LABEL_6:
    v3 = 1;
    goto LABEL_7;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_1D122EDB4()
{
  sub_1D139177C();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D122EE6C()
{
  sub_1D139027C();
}

uint64_t sub_1D122EF10()
{
  sub_1D139177C();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D122EFC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D12320CC();
  *a1 = result;
  return result;
}

void sub_1D122EFF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000068746CLL;
  v4 = 0xEB0000000074656CLL;
  v5 = 0x6C61576F54646461;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x80000001D13B7520;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6165486F54646461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D122F068(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C61576F54646461;
  v4 = 0xEB0000000074656CLL;
  v5 = 0x80000001D13B7520;
  if (v2 != 1)
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000001D13B7520;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6165486F54646461;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB0000000068746CLL;
  }

  v8 = 0x6C61576F54646461;
  if (*a2 == 1)
  {
    v5 = 0xEB0000000074656CLL;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6165486F54646461;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB0000000068746CLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D139162C();
  }

  return v11 & 1;
}

unint64_t sub_1D122F178(unint64_t result, unsigned __int8 a2)
{
  LODWORD(v2) = a2;
  if (a2 <= 1u)
  {
    v3 = result & 0xFFFFFFFFFFFFFF8;
    if (a2)
    {
      goto LABEL_14;
    }

    if (result >> 62)
    {
      v7 = result & 0xFFFFFFFFFFFFFF8;
      v10 = result;
      if (sub_1D13910DC() != 1)
      {
        return 0;
      }

      v4 = sub_1D13910DC();
      v3 = v7;
      result = v10;
      if (!v4)
      {
        return 0;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      return 0;
    }

    if ((result & 0xC000000000000001) != 0)
    {
      return MEMORY[0x1D3886B70](0, result);
    }

    v2 = *(v3 + 16);
    if (v2)
    {
      return *(result + 32);
    }

    __break(1u);
  }

  if (v2 != 2)
  {
    return 0;
  }

  v3 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v8 = result & 0xFFFFFFFFFFFFFF8;
    v11 = result;
    if (sub_1D13910DC() != 1)
    {
      return 0;
    }

    v5 = sub_1D13910DC();
    v3 = v8;
    result = v11;
    if (!v5)
    {
      return 0;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return 0;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1D3886B70](0, result);
  }

  if (*(v3 + 16))
  {
    return *(result + 32);
  }

  __break(1u);
LABEL_14:
  if (!(result >> 62))
  {
    if (*(v3 + 16) == 1)
    {
      goto LABEL_16;
    }

    return 0;
  }

  v9 = v3;
  v12 = result;
  if (sub_1D13910DC() != 1)
  {
    return 0;
  }

  v6 = sub_1D13910DC();
  v3 = v9;
  result = v12;
  if (!v6)
  {
    return 0;
  }

LABEL_16:
  if ((result & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1D3886B70](0, result);
  }

  if (*(v3 + 16))
  {
    return *(result + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D122F2EC(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v1)
    {
      sub_1D13911EC();

      v4 = 0xD000000000000025;
    }

    else
    {
      sub_1D13911EC();

      v4 = 0xD000000000000023;
    }

    swift_getErrorValue();
    goto LABEL_12;
  }

  if (v1 == 2)
  {
    sub_1D13911EC();

    v4 = 0xD000000000000023;
    swift_getErrorValue();
    goto LABEL_12;
  }

  if (v1 == 3)
  {
    sub_1D13911EC();

    v4 = 0xD000000000000016;
    swift_getErrorValue();
LABEL_12:
    v3 = sub_1D13916FC();
    MEMORY[0x1D3885C10](v3);

    return v4;
  }

  switch(__ROR8__(a1 ^ 0x8000000000000000, 3))
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
    case 5:
    case 6:
    case 0xCLL:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD00000000000002BLL;
      break;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
      result = 0xD000000000000026;
      break;
    case 9:
      result = 0xD00000000000002DLL;
      break;
    case 0xALL:
      result = 0xD00000000000001ALL;
      break;
    case 0xBLL:
      result = 0xD00000000000001ALL;
      break;
    case 0xDLL:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

uint64_t sub_1D122F630()
{
  if (!*(v0 + 16))
  {
    if (qword_1EC608CD0 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_9;
  }

  if (*(v0 + 16) == 1)
  {
    if (qword_1EC608CD0 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_9;
  }

  if (qword_1EC608CD0 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t sub_1D122F790()
{
  if (!*(v0 + 16))
  {
    if (qword_1EC608CD0 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_9;
  }

  if (*(v0 + 16) == 1)
  {
    if (qword_1EC608CD0 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_9;
  }

  if (qword_1EC608CD0 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_1D138D1CC();
}

id sub_1D122F8F0()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v34 = v4;
      v35 = v3;
      v1 = *(v0 + 24);
      if (v1 >> 62)
      {
        goto LABEL_53;
      }

      for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
      {

        if (!i)
        {
          break;
        }

        v8 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1D3886B70](v8, v1);
          }

          else
          {
            if (v8 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v9 = *(v1 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v12 = sub_1D1390BBC();

          if (v12)
          {

            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v20 = [objc_opt_self() bundleForClass_];
            v21 = sub_1D139012C();
            v22 = [objc_opt_self() imageNamed:v21 inBundle:v20];
            goto LABEL_46;
          }

          ++v8;
          if (v11 == i)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        ;
      }

LABEL_28:

      sub_1D138F06C();
      v23 = sub_1D138F0AC();
      v24 = sub_1D139080C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1D101F000, v23, v24, "SignedClinicalDataPreviewViewController is in “Add to Wallet” mode but got no immunization record types, falling back to showing generic top icon", v25, 2u);
        MEMORY[0x1D38882F0](v25, -1, -1);
      }

      (*(v34 + 8))(v6, v35);
      v20 = HKHealthUIFrameworkBundle();
      v21 = sub_1D139012C();
      v22 = [objc_opt_self() imageNamed:v21 inBundle:v20];
    }

    else
    {
      v19 = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      v21 = sub_1D139012C();
      v22 = [objc_opt_self() imageNamed:v21 inBundle:v20];
    }
  }

  else
  {
    v6 = *(v0 + 24);
    if (v6 >> 62)
    {
      v13 = sub_1D13910DC();
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13)
    {
      v14 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1D3886B70](v14, v6);
        }

        else
        {
          if (v14 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v15 = *(v6 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_48;
        }

        v18 = sub_1D1390BBC();

        if (v18)
        {
          break;
        }

        ++v14;
        if (v17 == v13)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_31:

      v6 = *(v1 + 24);
      if (v6 >> 62)
      {
        v26 = sub_1D13910DC();
      }

      else
      {
        v26 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v26)
      {
        v1 = 0;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x1D3886B70](v1, v6);
          }

          else
          {
            if (v1 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_52;
            }

            v27 = *(v6 + 8 * v1 + 32);
          }

          v28 = v27;
          v29 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_51;
          }

          v30 = sub_1D1390BDC();

          if (v30)
          {
            break;
          }

          ++v1;
        }

        while (v29 != v26);
      }
    }

    v20 = HKHealthUIFrameworkBundle();
    v21 = sub_1D139012C();
    v22 = [objc_opt_self() imageNamed:v21 inBundle:v20];
  }

LABEL_46:
  v32 = v22;

  return v32;
}

uint64_t sub_1D122FF08()
{
  if (!*(v0 + 16))
  {
    if (qword_1EC608CD0 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_9;
  }

  if (*(v0 + 16) == 1)
  {
    if (qword_1EC608CD0 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_9;
  }

  if (qword_1EC608CD0 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t *sub_1D1230080(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = *v2;
  v6 = sub_1D138F0BC();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_35:
    v9 = sub_1D13910DC();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  do
  {
    v11 = v10;
    if (v9 == v10)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1D3886B70](v10, a1, v7);
    }

    else
    {
      if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v12 = *(a1 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v14 = sub_1D1390BCC();

    v10 = v11 + 1;
  }

  while ((v14 & 1) == 0);
  sub_1D138F03C();
  v15 = (v9 == v11) & sub_1D138F01C();
  v16 = a2;
  if (a2)
  {
    if (v15)
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    v18 = v35;
  }

  else
  {
    v18 = v35;
    if ((v15 & 1) == 0)
    {

      sub_1D123234C();
      swift_allocError();
      swift_willThrow();
      type metadata accessor for SignedClinicalDataImportHandler();
      swift_deallocPartialClassInstance();
      return v3;
    }

    v17 = 1;
  }

  *(v3 + 16) = v17;
  v3[3] = a1;
  v3[4] = v16;

  sub_1D138F06C();

  v19 = sub_1D138F0AC();
  v20 = sub_1D139081C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36[0] = v22;
    *v21 = 136315394;
    v36[2] = v32;
    swift_getMetatypeMetadata();
    v23 = sub_1D13901EC();
    v25 = sub_1D11DF718(v23, v24, v36);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = 0xEB0000000074656CLL;
    v27 = 0x6C61576F54646461;
    if (*(v3 + 16) != 1)
    {
      v27 = 0xD000000000000014;
      v26 = 0x80000001D13B7520;
    }

    if (*(v3 + 16))
    {
      v28 = v27;
    }

    else
    {
      v28 = 0x6165486F54646461;
    }

    if (*(v3 + 16))
    {
      v29 = v26;
    }

    else
    {
      v29 = 0xEB0000000068746CLL;
    }

    v30 = sub_1D11DF718(v28, v29, v36);

    *(v21 + 14) = v30;
    _os_log_impl(&dword_1D101F000, v19, v20, "%s initialized in %s mode", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v22, -1, -1);
    MEMORY[0x1D38882F0](v21, -1, -1);
  }

  else
  {
  }

  (*(v33 + 8))(v18, v34);
  return v3;
}

uint64_t sub_1D1230470(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v4 = a1;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 24) = v4;
    }

    a1 = 1;
  }

  return a3(a1);
}

uint64_t sub_1D1230504(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F06C();

  v10 = sub_1D138F0AC();
  v11 = sub_1D139081C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v6;
    v15 = v14;
    v26 = v14;
    *v13 = 136315138;
    v23 = a2;
    v24 = v5;
    swift_getMetatypeMetadata();
    v24 = sub_1D13901EC();
    v25 = v16;

    MEMORY[0x1D3885C10](46, 0xE100000000000000);

    a2 = v23;
    MEMORY[0x1D3885C10](0xD000000000000017, 0x80000001D13C5740);

    v17 = sub_1D11DF718(v24, v25, &v26);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1D101F000, v10, v11, "%s adding records", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1D38882F0](v15, -1, -1);
    v18 = v13;
    a1 = v22;
    MEMORY[0x1D38882F0](v18, -1, -1);

    (*(v7 + 8))(v9, v21);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = a1;
  v19[4] = a2;

  sub_1D1230B2C(sub_1D123217C, v19);
}

uint64_t sub_1D12307D8(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  sub_1D12321D4(a1, a2);

  sub_1D1231484(a1, a2, sub_1D12321C0, v10);
}

void sub_1D1230898(void *a1, void *a2, unsigned __int8 a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v30 = a6;
  v10 = sub_1D138F0BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12321D4(a2, a3);
  sub_1D12322BC(a1);
  v14 = sub_1D123220C(a2, a3, a1);
  sub_1D138F06C();

  sub_1D12322CC(v14);
  v15 = sub_1D138F0AC();
  v16 = sub_1D139081C();

  sub_1D1232304(v14);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315394;
    v20 = sub_1D115EA9C(0xD000000000000017, 0x80000001D13C5740);
    v22 = sub_1D11DF718(v20, v21, &v31);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_1D12322CC(v14);
    v23 = sub_1D122F2EC(v14);
    v25 = v24;
    sub_1D1232304(v14);
    v26 = sub_1D11DF718(v23, v25, &v31);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_1D101F000, v15, v16, "%s adding records outcome: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v19, -1, -1);
    v27 = v18;
    a5 = v29;
    MEMORY[0x1D38882F0](v27, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  a5(v14);
  sub_1D1232304(v14);
}

uint64_t sub_1D1230B2C(void (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D138F0BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  if ((sub_1D122EB7C(*(v2 + 16)) & 1) != 0 && (v14 = *(v2 + 32)) != 0)
  {
    v38 = v7;

    sub_1D138F06C();

    v15 = sub_1D138F0AC();
    v16 = sub_1D139081C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v37 = a1;
      v18 = v17;
      v36 = swift_slowAlloc();
      v41 = v36;
      *v18 = 136315138;
      v35 = "taStore";
      v39 = v6;
      swift_getMetatypeMetadata();
      v39 = sub_1D13901EC();
      v40 = v19;

      MEMORY[0x1D3885C10](46, 0xE100000000000000);

      MEMORY[0x1D3885C10](0xD00000000000002CLL, v35 | 0x8000000000000000);

      v20 = sub_1D11DF718(v39, v40, &v41);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1D101F000, v15, v16, "%s starting to store to Health", v18, 0xCu);
      v21 = v36;
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1D38882F0](v21, -1, -1);
      v22 = v18;
      a1 = v37;
      MEMORY[0x1D38882F0](v22, -1, -1);
    }

    (*(v8 + 8))(v13, v38);

    sub_1D11BC938(v14, v3, a1, a2);
  }

  else
  {
    sub_1D138F06C();

    v24 = sub_1D138F0AC();
    v25 = sub_1D139081C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = a1;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = v7;
      v39 = v6;
      v29 = v28;
      v41 = v28;
      *v27 = 136315138;
      v36 = a2;
      swift_getMetatypeMetadata();
      v39 = sub_1D13901EC();
      v40 = v30;

      MEMORY[0x1D3885C10](46, 0xE100000000000000);

      MEMORY[0x1D3885C10](0xD00000000000002CLL, 0x80000001D13C1780);

      v31 = sub_1D11DF718(v39, v40, &v41);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1D101F000, v24, v25, "%s skipping storing to Health", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1D38882F0](v29, -1, -1);
      v32 = v27;
      a1 = v37;
      MEMORY[0x1D38882F0](v32, -1, -1);

      (*(v8 + 8))(v10, v38);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    a1(v33, 0);
  }
}

void sub_1D1230FC8(uint64_t a1, int a2, void *a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v12 = sub_1D138F0BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  if (!a1)
  {
    sub_1D138F06C();

    v30 = a3;
    v31 = sub_1D138F0AC();
    v32 = sub_1D13907FC();

    if (os_log_type_enabled(v31, v32))
    {
      v47 = a5;
      v48 = v12;
      v46 = a6;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49 = v34;
      *v33 = 136315394;
      v35 = sub_1D115EA9C(0xD00000000000002CLL, 0x80000001D13C1780);
      v37 = sub_1D11DF718(v35, v36, &v49);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      if (a3)
      {
        swift_getErrorValue();
        v38 = sub_1D13916FC();
        v40 = v39;
      }

      else
      {
        v40 = 0xEB000000007D726FLL;
        v38 = 0x727265206C696E7BLL;
      }

      v42 = sub_1D11DF718(v38, v40, &v49);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_1D101F000, v31, v32, "%s failed to store to Health: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v34, -1, -1);
      MEMORY[0x1D38882F0](v33, -1, -1);

      (*(v13 + 8))(v15, v48);
      a5 = v47;
      v41 = a3;
      if (a3)
      {
        goto LABEL_16;
      }
    }

    else
    {

      (*(v13 + 8))(v15, v12);
      v41 = a3;
      if (a3)
      {
LABEL_16:
        v45 = a3;
        a5(v41, 3);

        return;
      }
    }

    v43 = objc_opt_self();
    v44 = sub_1D139012C();
    v41 = [v43 hk:0 error:v44 description:?];

    goto LABEL_16;
  }

  LODWORD(v47) = a2;
  v48 = v12;
  *(a4 + 24) = a1;
  swift_bridgeObjectRetain_n();

  sub_1D138F06C();

  v19 = sub_1D138F0AC();
  v20 = sub_1D139081C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = a6;
    v23 = a5;
    v24 = v22;
    v49 = v22;
    *v21 = 136315138;
    v25 = sub_1D115EA9C(0xD00000000000002CLL, 0x80000001D13C1780);
    v27 = sub_1D11DF718(v25, v26, &v49);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_1D101F000, v19, v20, "%s stored to Health", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v28 = v24;
    a5 = v23;
    MEMORY[0x1D38882F0](v28, -1, -1);
    MEMORY[0x1D38882F0](v21, -1, -1);
  }

  (*(v13 + 8))(v18, v48);
  if (v47)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  a5(a1, v29);
}

void sub_1D1231484(unint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v53 = a3;
  v9 = *v5;
  v52 = sub_1D138F0BC();
  v10 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  if ((sub_1D122EC78(*(v5 + 16)) & 1) == 0)
  {
    sub_1D138F06C();

    v35 = sub_1D138F0AC();
    v36 = sub_1D139081C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v60 = v38;
      *v37 = 136315138;
      aBlock = v9;
      swift_getMetatypeMetadata();
      aBlock = sub_1D13901EC();
      v55 = v39;

      MEMORY[0x1D3885C10](46, 0xE100000000000000);

      MEMORY[0x1D3885C10](0xD000000000000038, 0x80000001D13C5680);

      v40 = sub_1D11DF718(aBlock, v55, &v60);

      *(v37 + 4) = v40;
      _os_log_impl(&dword_1D101F000, v35, v36, "%s skipping adding to Wallet (not in add-to-Wallet mode)", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1D38882F0](v38, -1, -1);
      MEMORY[0x1D38882F0](v37, -1, -1);
    }

    (*(v10 + 8))(v12, v52);
    goto LABEL_12;
  }

  v19 = sub_1D122F178(a1, a2);
  if (!v19)
  {
    sub_1D138F06C();

    v41 = sub_1D138F0AC();
    v42 = sub_1D139081C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v60 = v44;
      *v43 = 136315138;
      aBlock = v9;
      swift_getMetatypeMetadata();
      aBlock = sub_1D13901EC();
      v55 = v45;

      MEMORY[0x1D3885C10](46, 0xE100000000000000);

      MEMORY[0x1D3885C10](0xD000000000000038, 0x80000001D13C5680);

      v46 = sub_1D11DF718(aBlock, v55, &v60);

      *(v43 + 4) = v46;
      _os_log_impl(&dword_1D101F000, v41, v42, "%s skipping adding to Wallet (may not proceed given Health outcome)", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1D38882F0](v44, -1, -1);
      MEMORY[0x1D38882F0](v43, -1, -1);
    }

    (*(v10 + 8))(v15, v52);
LABEL_12:
    v53(0);
    return;
  }

  v20 = v19;
  v21 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v22 = objc_allocWithZone(MEMORY[0x1E69A3FD8]);
  v51 = v21;
  v50 = [v22 initWithHealthStore_];
  sub_1D138F06C();

  v23 = sub_1D138F0AC();
  v24 = sub_1D139081C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v49 = a4;
    v27 = v26;
    v60 = v26;
    *v25 = 136315138;
    v48 = "andler";
    aBlock = v9;
    swift_getMetatypeMetadata();
    aBlock = sub_1D13901EC();
    v55 = v28;

    MEMORY[0x1D3885C10](46, 0xE100000000000000);

    MEMORY[0x1D3885C10](0xD000000000000038, v48 | 0x8000000000000000);

    v29 = sub_1D11DF718(aBlock, v55, &v60);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1D101F000, v23, v24, "%s starting to fetch SCD group", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v30 = v27;
    a4 = v49;
    MEMORY[0x1D38882F0](v30, -1, -1);
    MEMORY[0x1D38882F0](v25, -1, -1);
  }

  (*(v10 + 8))(v18, v52);
  v31 = swift_allocObject();
  v32 = v53;
  v31[2] = v5;
  v31[3] = v32;
  v31[4] = a4;
  v58 = sub_1D1232118;
  v59 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1D11BAA58;
  v57 = &block_descriptor_42;
  v33 = _Block_copy(&aBlock);

  v34 = v50;
  [v50 fetchSignedClinicalDataGroupBackingMedicalRecord:v20 options:11 completion:v33];
  _Block_release(v33);
}

void sub_1D1231B58(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v9 = sub_1D138F0BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  if (a1)
  {
    v16 = a1;
    sub_1D138F06C();

    v17 = sub_1D138F0AC();
    v18 = sub_1D139081C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v47 = v9;
      v20 = v19;
      v21 = swift_slowAlloc();
      v46 = a4;
      v22 = a5;
      v23 = v21;
      v48 = v21;
      *v20 = 136315138;
      v24 = sub_1D115EA9C(0xD000000000000038, 0x80000001D13C5680);
      v26 = sub_1D11DF718(v24, v25, &v48);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_1D101F000, v17, v18, "%s got SCD group, attempting to add to Wallet", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v27 = v23;
      a5 = v22;
      a4 = v46;
      MEMORY[0x1D38882F0](v27, -1, -1);
      MEMORY[0x1D38882F0](v20, -1, -1);

      (*(v10 + 8))(v15, v47);
    }

    else
    {

      (*(v10 + 8))(v15, v9);
    }

    type metadata accessor for SignedClinicalDataWalletHandler();
    swift_allocObject();
    sub_1D115DB98(v16, a4, a5);
  }

  else
  {
    v47 = v9;
    if (a2)
    {
      v28 = a2;
    }

    else
    {
      v29 = objc_opt_self();
      v30 = sub_1D139012C();
      v28 = [v29 hk:0 error:v30 description:?];
    }

    v31 = a2;
    sub_1D138F06C();

    v32 = v28;
    v33 = sub_1D138F0AC();
    v34 = sub_1D13907FC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v46 = a5;
      v36 = v35;
      v37 = swift_slowAlloc();
      v48 = v37;
      *v36 = 136315394;
      v38 = sub_1D115EA9C(0xD000000000000038, 0x80000001D13C5680);
      v40 = sub_1D11DF718(v38, v39, &v48);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      swift_getErrorValue();
      v41 = sub_1D13916FC();
      v43 = sub_1D11DF718(v41, v42, &v48);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_1D101F000, v33, v34, "%s failed to fetch SCD group: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v37, -1, -1);
      MEMORY[0x1D38882F0](v36, -1, -1);
    }

    (*(v10 + 8))(v12, v47);
    v44 = v28;
    a4(v28);
  }
}

uint64_t sub_1D1231FD8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D1232050()
{
  result = qword_1EC60DCE0;
  if (!qword_1EC60DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DCE0);
  }

  return result;
}

uint64_t sub_1D12320CC()
{
  v0 = sub_1D139147C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1D1232188(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2 >= 2u)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (a2 == 2)
  {
    goto LABEL_7;
  }

  if (a2 == 3)
  {
  }
}

id sub_1D12321D4(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2 >= 2u)
    {
      return result;
    }
  }

  if (a2 == 2)
  {
  }

  if (a2 == 3)
  {
    return result;
  }

  return result;
}

unint64_t sub_1D123220C(unint64_t a1, unsigned __int8 a2, unint64_t a3)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      sub_1D1232188(a1, 2u);
      if (a3 >= 5)
      {
        return a3 | 0x2000000000000000;
      }

      else
      {
        return 8 * a3 - 0x7FFFFFFFFFFFFFD8;
      }
    }

    else
    {
      sub_1D123233C(a3);
      return a1 | 0x6000000000000000;
    }
  }

  else if (a2)
  {
    sub_1D1232188(a1, 1u);
    if (a3 >= 5)
    {
      return a3;
    }

    else
    {
      return (8 * a3) | 0x8000000000000000;
    }
  }

  else
  {
    sub_1D1232188(a1, 0);
    if (a3 >= 5)
    {
      return a3 | 0x4000000000000000;
    }

    else
    {
      return qword_1D13AAB60[a3];
    }
  }
}

id sub_1D12322BC(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

unint64_t sub_1D12322CC(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (!v1)
    {
      return result;
    }

    if (v1 != 1)
    {
      return result;
    }

LABEL_7:
    result &= 0x1FFFFFFFFFFFFFFFuLL;
    return result;
  }

  if (v1 == 2 || v1 == 3)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1D1232304(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (!v1)
    {
LABEL_8:

      return;
    }

    if (v1 != 1)
    {
      return;
    }

LABEL_7:
    a1 &= 0x1FFFFFFFFFFFFFFFuLL;
    goto LABEL_8;
  }

  if (v1 == 2 || v1 == 3)
  {
    goto LABEL_7;
  }
}

void sub_1D123233C(id a1)
{
  if (a1 >= 5)
  {
  }
}

unint64_t sub_1D123234C()
{
  result = qword_1EC60DCE8;
  if (!qword_1EC60DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DCE8);
  }

  return result;
}

unint64_t sub_1D12323B8()
{
  result = qword_1EC60DCF0;
  if (!qword_1EC60DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DCF0);
  }

  return result;
}

id AccountTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *sub_1D123252C(void *a1)
{
  v3 = OBJC_IVAR___HRAccountTableViewCell_brandView;
  *&v1[v3] = [objc_allocWithZone(WDMedicalRecordBrandView) initWithFrame_];
  v13.receiver = v1;
  v13.super_class = type metadata accessor for AccountTableViewCell();
  v4 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = OBJC_IVAR___HRAccountTableViewCell_brandView;
    v7 = *&v4[OBJC_IVAR___HRAccountTableViewCell_brandView];
    v8 = v4;
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v5[v6] setLogoSize_];
    v9 = [v8 contentView];
    [v9 addSubview_];

    v10 = *&v5[v6];
    v11 = [v8 contentView];
    [v10 hk:v11 alignConstraintsWithView:8.0 insets:{16.0, 8.0, 16.0}];

    a1 = v11;
  }

  return v5;
}

id sub_1D12326C0(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1D12336A0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v3[OBJC_IVAR___HRAccountTableViewCell_brandView];
  [v14 setBrandable:a1 dataProvider:{a2, v11}];
  if (qword_1EC608E90 != -1)
  {
    swift_once();
  }

  if ((byte_1EC60F770 & 1) == 0)
  {
    goto LABEL_6;
  }

  v15 = a1;
  sub_1D11292FC(v15, 0, 0, 0, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D12336F8(v8, sub_1D12336A0);
LABEL_6:
    v16 = [v14 brandSubtitleLabel];
    v17 = [a1 subtitle];
    [v16 setText_];

    v18 = [v14 brandSubtitleLabel];
    v19 = [objc_opt_self() secondaryLabelColor];
    [v18 setTextColor_];

    v20 = [v14 brandSubtitleLabel];
    [v20 setNumberOfLines_];

    return [v3 setAccessoryType_];
  }

  sub_1D10A447C(v8, v13);
  v21 = [v14 brandSubtitleLabel];
  sub_1D1129C7C();
  if (v22)
  {
    goto LABEL_10;
  }

  v23 = [v15 subtitle];
  if (v23)
  {
    v24 = v23;
    sub_1D139016C();

LABEL_10:
    v25 = sub_1D139012C();

    goto LABEL_11;
  }

  v25 = 0;
LABEL_11:
  [v21 setText_];

  v26 = [v14 brandSubtitleLabel];
  if ((*&v13[*(v9 + 20)] | 2) == 3 || (v27 = [objc_opt_self() hk_appErrorColor]) == 0)
  {
    v27 = [objc_opt_self() secondaryLabelColor];
  }

  [v26 setTextColor_];

  v28 = [v14 brandSubtitleLabel];
  [v28 setNumberOfLines_];

  sub_1D12336F8(v13, type metadata accessor for ClinicalAccountLoginUpgradeAction);
  return [v3 setAccessoryType_];
}

id sub_1D1232B84(void *a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR___HRAccountTableViewCell_brandView];
  [v4 setBrandable:a1 dataProvider:a2];
  v5 = [v4 brandSubtitleLabel];
  v6 = [a1 subtitle];
  [v5 setText_];

  v7 = [v4 brandSubtitleLabel];
  v8 = [objc_opt_self() secondaryLabelColor];
  [v7 setTextColor_];

  v9 = [v4 brandSubtitleLabel];
  [v9 setNumberOfLines_];

  return [v2 setAccessoryType_];
}

void sub_1D1232D4C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v48 = a4;
  v49 = a5;
  sub_1D12336A0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  v15 = *(v14 - 8);
  *&v16 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v50 = v6;
  v19 = *(v6 + OBJC_IVAR___HRAccountTableViewCell_brandView);
  [v19 setBrandable:a1 dataProvider:{a3, v16}];
  if (a6)
  {
    goto LABEL_7;
  }

  if (qword_1EC608E90 != -1)
  {
    swift_once();
  }

  if (byte_1EC60F770 != 1)
  {
    goto LABEL_7;
  }

  v20 = a2;
  v21 = a1;
  sub_1D11292FC(v21, a2, 0, 0, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D12336F8(v13, sub_1D12336A0);
LABEL_7:
    v22 = [v19 brandSubtitleLabel];
    v23 = [a1 subtitle];
    [v22 setText_];

    v24 = [v19 brandSubtitleLabel];
    v25 = [objc_opt_self() secondaryLabelColor];
    [v24 setTextColor_];

    v26 = [v19 brandSubtitleLabel];
    [v26 setNumberOfLines_];

    v27 = v49;
    goto LABEL_8;
  }

  v39 = v18;
  sub_1D10A447C(v13, v18);
  v40 = [v19 brandSubtitleLabel];
  sub_1D1129C7C();
  if (v41)
  {
    v27 = v49;
LABEL_15:
    v44 = sub_1D139012C();

    goto LABEL_16;
  }

  v42 = [v21 subtitle];
  v27 = v49;
  if (v42)
  {
    v43 = v42;
    sub_1D139016C();

    goto LABEL_15;
  }

  v44 = 0;
LABEL_16:
  [v40 setText_];

  v45 = [v19 brandSubtitleLabel];
  if ((*(v39 + *(v14 + 20)) | 2) == 3 || (v46 = [objc_opt_self() hk_appErrorColor]) == 0)
  {
    v46 = [objc_opt_self() secondaryLabelColor];
  }

  [v45 setTextColor_];

  v47 = [v19 brandSubtitleLabel];
  [v47 setNumberOfLines_];

  sub_1D12336F8(v39, type metadata accessor for ClinicalAccountLoginUpgradeAction);
LABEL_8:
  v28 = v50;
  [v50 setAccessoryType_];
  if (v27)
  {

    v29 = v48;
    v30 = sub_1D139012C();
    [v28 setAccessibilityIdentifier_];

    v31 = [v19 brandTitleLabel];
    sub_1D1086E1C();
    v32 = swift_allocObject();
    v50 = xmmword_1D139E710;
    *(v32 + 16) = xmmword_1D139E710;
    *(v32 + 32) = v29;
    *(v32 + 40) = v27;
    *(v32 + 48) = 0x656C746954;
    *(v32 + 56) = 0xE500000000000000;

    v33 = sub_1D139044C();

    v34 = HKUIJoinStringsForAutomationIdentifier();

    [v31 setAccessibilityIdentifier_];
    v35 = [v19 brandSubtitleLabel];
    v36 = swift_allocObject();
    *(v36 + 16) = v50;
    *(v36 + 32) = v29;
    *(v36 + 40) = v27;
    *(v36 + 48) = 0x656C746974627553;
    *(v36 + 56) = 0xE800000000000000;
    v37 = sub_1D139044C();

    v38 = HKUIJoinStringsForAutomationIdentifier();

    [v35 setAccessibilityIdentifier_];
  }
}

id AccountTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1D1233510(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___HRAccountTableViewCell_brandView;
  *&v2[v4] = [objc_allocWithZone(WDMedicalRecordBrandView) initWithFrame_];
  if (a2)
  {
    v5 = sub_1D139012C();
  }

  else
  {
    v5 = 0;
  }

  v14.receiver = v2;
  v14.super_class = type metadata accessor for AccountTableViewCell();
  v6 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_, 3, v5);

  v7 = OBJC_IVAR___HRAccountTableViewCell_brandView;
  v8 = *&v6[OBJC_IVAR___HRAccountTableViewCell_brandView];
  v9 = v6;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v6[v7] setLogoSize_];
  v10 = [v9 contentView];
  [v10 addSubview_];

  v11 = *&v6[v7];
  v12 = [v9 contentView];
  [v11 hk:v12 alignConstraintsWithView:8.0 insets:{16.0, 8.0, 16.0}];

  return v9;
}

void sub_1D12336A0()
{
  if (!qword_1EC60A080)
  {
    type metadata accessor for ClinicalAccountLoginUpgradeAction();
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A080);
    }
  }
}

uint64_t sub_1D12336F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D12337FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 384) = a4;
  *(v5 + 224) = a3;
  *(v5 + 232) = v4;
  *(v5 + 208) = a1;
  *(v5 + 216) = a2;
  *(v5 + 240) = *v4;
  v6 = sub_1D138F0BC();
  *(v5 + 248) = v6;
  *(v5 + 256) = *(v6 - 8);
  *(v5 + 264) = swift_task_alloc();
  v7 = sub_1D138D21C();
  *(v5 + 272) = v7;
  *(v5 + 280) = *(v7 - 8);
  *(v5 + 288) = swift_task_alloc();
  v8 = sub_1D138D68C();
  *(v5 + 296) = v8;
  *(v5 + 304) = *(v8 - 8);
  *(v5 + 312) = swift_task_alloc();
  v9 = sub_1D138D76C();
  *(v5 + 320) = v9;
  *(v5 + 328) = *(v9 - 8);
  *(v5 + 336) = swift_task_alloc();
  sub_1D1234DB4(0, &qword_1EC609C70, &_s13HealthKitDataVN, _s7PDFDataVMa);
  *(v5 + 344) = v10;
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = _s13ConfigurationVMa();
  *(v5 + 368) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1233A84, 0, 0);
}

uint64_t sub_1D1233A84()
{
  sub_1D13905FC();
  v0[47] = 0;
  v1 = v0[29];
  sub_1D10921C4(v1 + OBJC_IVAR____TtC15HealthRecordsUI18PDFReportGenerator_configuration, v0[46]);
  v2 = *(v1 + 16);
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_1D1233DA0;
  v3 = swift_continuation_init();
  sub_1D123451C();
  v0[17] = v4;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D10C486C;
  v0[13] = &block_descriptor_43;
  v0[14] = v3;
  [v2 hk:v0 + 10 fetchExistingDemographicInformationWithCompletion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1233DA0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1233E80, 0, 0);
}

uint64_t sub_1D1233E80()
{
  v58 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 200);
  sub_1D13905FC();
  v3 = *(v0 + 368);
  if (v1)
  {
    sub_1D1092890(v3);

    sub_1D138F06C();

    v4 = sub_1D138F0AC();
    v5 = sub_1D139081C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 256);
    v8 = *(v0 + 264);
    v9 = *(v0 + 248);
    if (v6)
    {
      v10 = *(v0 + 240);
      v55 = *(v0 + 264);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v57 = v12;
      *v11 = 136446210;
      *(v0 + 192) = v10;
      swift_getMetatypeMetadata();
      v13 = sub_1D13901EC();
      v15 = sub_1D11DF718(v13, v14, &v57);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D101F000, v4, v5, "[%{public}s]: PDF generation was cancelled", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1D38882F0](v12, -1, -1);
      MEMORY[0x1D38882F0](v11, -1, -1);

      (*(v7 + 8))(v55, v9);
    }

    else
    {

      (*(v7 + 8))(v8, v9);
    }

    goto LABEL_5;
  }

  v22 = *(v0 + 352);
  v23 = *(v0 + 384);
  v25 = *(v0 + 216);
  v24 = *(v0 + 224);
  v26 = *(v0 + 208);
  sub_1D10921C4(v3, v22 + *(*(v0 + 344) + 28));
  *v22 = v2;
  *(v22 + 8) = v25;
  *(v22 + 16) = v24;
  *(v22 + 24) = v23 & 1;
  *(v22 + 32) = v26;
  v27 = v2;

  v28 = sub_1D11F9F88(v22);
  if (v29 >> 60 == 15)
  {
    v30 = *(v0 + 368);
    v31 = *(v0 + 352);

    sub_1D12345E8(v31);
    sub_1D1092890(v30);
LABEL_5:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_6;
  }

  v16 = v28;
  v17 = v29;
  sub_1D13905FC();
  v32 = *(v0 + 336);
  v33 = *(v0 + 312);
  v54 = *(v0 + 328);
  v56 = *(v0 + 320);
  v51 = *(v0 + 368);
  v35 = *(v0 + 296);
  v34 = *(v0 + 304);
  v36 = *(v0 + 288);
  v52 = *(v0 + 280);
  v53 = *(v0 + 272);
  v50 = *(*(v0 + 360) + 20);
  (*(v34 + 104))(v33, *MEMORY[0x1E6969868], v35);
  sub_1D138D69C();
  (*(v34 + 8))(v33, v35);
  sub_1D138D20C();
  v37 = [v27 firstName];
  sub_1D139016C();

  sub_1D138D1DC();
  v38 = [v27 lastName];

  sub_1D139016C();
  sub_1D138D1EC();
  v39 = objc_opt_self();
  v40 = sub_1D138D1FC();
  v41 = [v39 localizedStringFromPersonNameComponents:v40 style:2 options:0];

  v42 = sub_1D139016C();
  v44 = v43;

  sub_1D1234DB4(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  *(inited + 32) = v42;
  v46 = inited + 32;
  *(inited + 40) = v44;
  v47 = v32;
  v18 = sub_1D1234668(v51 + v50, inited, v32, 1);
  v19 = v48;
  swift_setDeallocating();
  sub_1D114E434(v46);
  (*(v52 + 8))(v36, v53);
  (*(v54 + 8))(v47, v56);
  sub_1D13905FC();
  v49 = *(v0 + 368);
  sub_1D12345E8(*(v0 + 352));
  sub_1D1092890(v49);
LABEL_6:

  v20 = *(v0 + 8);

  return v20(v16, v17, v18, v19);
}

uint64_t sub_1D12343BC()
{
  sub_1D1092890(v0 + OBJC_IVAR____TtC15HealthRecordsUI18PDFReportGenerator_configuration);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PDFReportGenerator()
{
  result = qword_1EC60DD08;
  if (!qword_1EC60DD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D123447C()
{
  result = _s13ConfigurationVMa();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D123451C()
{
  if (!qword_1EC60DD18)
  {
    sub_1D1234584();
    v0 = sub_1D139061C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60DD18);
    }
  }
}

unint64_t sub_1D1234584()
{
  result = qword_1EC60DD20;
  if (!qword_1EC60DD20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60DD20);
  }

  return result;
}

uint64_t sub_1D12345E8(uint64_t a1)
{
  sub_1D1234DB4(0, &qword_1EC609C70, &_s13HealthKitDataVN, _s7PDFDataVMa);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1234668(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v57 = a4;
  v58 = a1;
  v5 = sub_1D138D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D114D324();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v13 = sub_1D138D6DC();
  [v12 setCalendar_];

  sub_1D138D71C();
  v14 = sub_1D138D67C();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    v16 = sub_1D138D62C();
    (*(v15 + 8))(v11, v14);
  }

  [v12 setLocale_];

  sub_1D138D73C();
  v17 = sub_1D138D7BC();
  (*(v6 + 8))(v8, v5);
  [v12 setTimeZone_];

  v18 = sub_1D139012C();
  [v12 setDateFormat_];

  sub_1D1234DB4(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  v55 = xmmword_1D139E700;
  *(v19 + 1) = xmmword_1D139E700;
  if (qword_1EE06AD00 != -1)
  {
LABEL_24:
    swift_once();
  }

  v59 = qword_1EE06BB20;
  v60 = *algn_1EE06BB18;
  v56 = qword_1EE06BB10;
  v20 = sub_1D138D1CC();
  v21 = 0;
  v19[4] = v20;
  v19[5] = v22;
  v68 = v19;
  v23 = *(a2 + 16);
  v24 = a2 + 40;
  a2 = MEMORY[0x1E69E7CC0];
  v61 = v12;
LABEL_5:
  v25 = (v24 + 16 * v21);
  while (v23 != v21)
  {
    if (v21 >= v23)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_23;
    }

    v27 = *(v25 - 1);
    v28 = *v25;
    v29 = HIBYTE(*v25) & 0xF;
    if ((*v25 & 0x2000000000000000) == 0)
    {
      v29 = v27 & 0xFFFFFFFFFFFFLL;
    }

    ++v21;
    v25 += 2;
    if (v29)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = &v66;
        sub_1D10FDBA4(0, *(a2 + 16) + 1, 1);
        a2 = v66;
      }

      v32 = *(a2 + 16);
      v31 = *(a2 + 24);
      if (v32 >= v31 >> 1)
      {
        v19 = &v66;
        sub_1D10FDBA4((v31 > 1), v32 + 1, 1);
        a2 = v66;
      }

      *(a2 + 16) = v32 + 1;
      v33 = a2 + 16 * v32;
      *(v33 + 32) = v27;
      *(v33 + 40) = v28;
      v21 = v26;
      v12 = v61;
      goto LABEL_5;
    }
  }

  sub_1D1121FC4(a2);
  inited = swift_initStackObject();
  *(inited + 16) = v55;
  v35 = sub_1D138D4EC();
  v36 = [v12 stringFromDate_];

  v37 = sub_1D139016C();
  v39 = v38;

  *(inited + 32) = v37;
  *(inited + 40) = v39;
  sub_1D1121FC4(inited);
  v66 = v68;
  sub_1D138D1CC();
  sub_1D1234DB4(0, &qword_1EE06B0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D10F73A8();
  v40 = sub_1D139008C();
  v42 = v41;

  if (v57)
  {
    [v12 setDateStyle_];
    [v12 setTimeStyle_];
    v43 = sub_1D138D4EC();
    v44 = [v12 stringFromDate_];

    if (!v44)
    {
      sub_1D139016C();
      v44 = sub_1D139012C();
    }

    v45 = [v44 hk_stringByNormalizingSpaces];

    v46 = sub_1D139016C();
    v48 = v47;

    v66 = v40;
    v67 = v42;
    v49 = sub_1D138D1CC();
    MEMORY[0x1D3885C10](v49);

    MEMORY[0x1D3885C10](v46, v48);

    v40 = v66;
    v42 = v67;
  }

  v66 = v40;
  v67 = v42;
  v64 = 47;
  v65 = 0xE100000000000000;
  v62 = 45;
  v63 = 0xE100000000000000;
  sub_1D10940C8();
  v50 = sub_1D1390FBC();
  v52 = v51;

  v66 = v50;
  v67 = v52;
  v64 = 58;
  v65 = 0xE100000000000000;
  v62 = 46;
  v63 = 0xE100000000000000;
  v53 = sub_1D1390FBC();

  return v53;
}

void sub_1D1234DB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D1234E04()
{
  result = sub_1D139012C();
  qword_1EC60DD28 = result;
  return result;
}

id static FeatureModeToggleAction.ActionData.notificationName.getter()
{
  if (qword_1EC608D98 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC60DD28;

  return v1;
}

uint64_t static FeatureModeToggleAction.ActionData.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265656E69676E45;
  }

  else
  {
    v3 = 0x647261646E617453;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEB00000000676E69;
  }

  if (*a2)
  {
    v5 = 0x7265656E69676E45;
  }

  else
  {
    v5 = 0x647261646E617453;
  }

  if (*a2)
  {
    v6 = 0xEB00000000676E69;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D139162C();
  }

  return v8 & 1;
}

uint64_t sub_1D1234F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D139162C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1234FEC(uint64_t a1)
{
  v2 = sub_1D123613C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1235028(uint64_t a1)
{
  v2 = sub_1D123613C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureModeToggleAction.ActionData.encode(to:)(void *a1)
{
  sub_1D12366F0(0, &qword_1EC60DD30, sub_1D123613C, &type metadata for FeatureModeToggleAction.ActionData.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D123613C();
  sub_1D139181C();
  v10[31] = v8;
  sub_1D1236190();
  sub_1D139158C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t FeatureModeToggleAction.ActionData.hash(into:)()
{
  sub_1D139027C();
}

uint64_t FeatureModeToggleAction.ActionData.hashValue.getter()
{
  sub_1D139177C();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t FeatureModeToggleAction.ActionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v12 = a2;
  sub_1D12366F0(0, &qword_1EC60DD48, sub_1D123613C, &type metadata for FeatureModeToggleAction.ActionData.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D123613C();
  sub_1D13917FC();
  if (!v2)
  {
    v9 = v12;
    sub_1D12361E4();
    sub_1D13914FC();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

id sub_1D12354A4()
{
  if (qword_1EC608D98 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC60DD28;

  return v1;
}

uint64_t sub_1D1235500()
{
  sub_1D139177C();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D123558C()
{
  sub_1D139027C();
}

uint64_t sub_1D1235604()
{
  sub_1D139177C();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D12356BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265656E69676E45;
  }

  else
  {
    v3 = 0x647261646E617453;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEB00000000676E69;
  }

  if (*a2)
  {
    v5 = 0x7265656E69676E45;
  }

  else
  {
    v5 = 0x647261646E617453;
  }

  if (*a2)
  {
    v6 = 0xEB00000000676E69;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D139162C();
  }

  return v8 & 1;
}

uint64_t FeatureModeToggleAction.__allocating_init(_:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for FeatureModeToggleAction();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t FeatureModeToggleAction.__allocating_init(_:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t FeatureModeToggleAction.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_1D138D01C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_1D1235A08(v5);
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t FeatureModeToggleAction.init(_:)(uint64_t a1)
{
  v2 = sub_1D138D01C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = sub_1D1235A08(v6);
  (*(v3 + 8))(a1, v2);
  return v7;
}

uint64_t sub_1D1235A08(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1D138CFFC();
  if (qword_1EC608D98 != -1)
  {
    swift_once();
  }

  v6 = sub_1D139016C();
  v8 = v7;
  if (v6 == sub_1D139016C() && v8 == v9)
  {

LABEL_10:
    v14 = sub_1D138D00C();
    if (v14)
    {
      v15 = v14;
      v30 = sub_1D139012C();
      sub_1D106F934(0, &qword_1EE06A510);
      sub_1D12367AC();
      sub_1D139116C();
      if (*(v15 + 16))
      {
        v16 = sub_1D129E400(v27);
        if (v17)
        {
          sub_1D109F94C(*(v15 + 56) + 32 * v16, v29);
          sub_1D1116E48(v27);

          goto LABEL_16;
        }
      }

      sub_1D1116E48(v27);
    }

    memset(v29, 0, sizeof(v29));
LABEL_16:
    sub_1D1096B28(v29, v27);
    if (v28)
    {
      sub_1D106F934(0, &qword_1EC60DDD0);
      if (swift_dynamicCast())
      {
        v18 = v30;
        if (qword_1EC608DA8 != -1)
        {
          swift_once();
        }

        v19 = v18;
        v20 = sub_1D138D3DC();
        v22 = v21;

        sub_1D12362BC();
        sub_1D138CE7C();
        if (!v2)
        {
          sub_1D1083DAC(v20, v22);

          v26 = sub_1D138D01C();
          (*(*(v26 - 8) + 8))(a1, v26);
          sub_1D1096BE0(v29);
          *(v3 + 16) = v27[0];
          return v3;
        }

        sub_1D1083DAC(v20, v22);

        goto LABEL_24;
      }
    }

    else
    {
      sub_1D1096BE0(v27);
    }

    sub_1D1236758();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
LABEL_24:
    v24 = sub_1D138D01C();
    (*(*(v24 - 8) + 8))(a1, v24);
    sub_1D1096BE0(v29);
    goto LABEL_25;
  }

  v11 = sub_1D139162C();

  if (v11)
  {
    goto LABEL_10;
  }

  sub_1D1236758();
  swift_allocError();
  *v12 = 0;
  swift_willThrow();
  v13 = sub_1D138D01C();
  (*(*(v13 - 8) + 8))(a1, v13);
LABEL_25:
  sub_1D12366F0(0, &qword_1EC60DDC0, sub_1D123660C, &type metadata for FeatureModeToggleAction.ActionData, type metadata accessor for FeedItemAction);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t FeatureModeToggleAction.__allocating_init(from:)(uint64_t a1)
{
  swift_allocObject();
  sub_1D1072E70(a1, v4);
  v2 = sub_1D1235F00(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t FeatureModeToggleAction.init(from:)(uint64_t a1)
{
  sub_1D1072E70(a1, v4);
  v2 = sub_1D1235F00(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t sub_1D1235F00(void *a1)
{
  sub_1D1236570();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D12366F0(0, &qword_1EC60DDA8, sub_1D123660C, &type metadata for FeatureModeToggleAction.ActionData, type metadata accessor for FeedItemAction.CodingKeys);
  sub_1D1236660();
  sub_1D13917FC();
  if (v1)
  {
    v9 = v11;
    sub_1D12366F0(0, &qword_1EC60DDC0, sub_1D123660C, &type metadata for FeatureModeToggleAction.ActionData, type metadata accessor for FeedItemAction);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1D12362BC();
    sub_1D13914FC();
    (*(v5 + 8))(v7, v4);
    v9 = v11;
    *(v11 + 16) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

unint64_t sub_1D123613C()
{
  result = qword_1EC60DD38;
  if (!qword_1EC60DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DD38);
  }

  return result;
}

unint64_t sub_1D1236190()
{
  result = qword_1EC60DD40;
  if (!qword_1EC60DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DD40);
  }

  return result;
}

unint64_t sub_1D12361E4()
{
  result = qword_1EC60DD50;
  if (!qword_1EC60DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DD50);
  }

  return result;
}

uint64_t type metadata accessor for FeatureModeToggleAction()
{
  result = qword_1EC60DD78;
  if (!qword_1EC60DD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1236284(void *a1)
{
  a1[1] = sub_1D12362BC();
  a1[2] = sub_1D1236310();
  result = sub_1D1236364();
  a1[3] = result;
  return result;
}

unint64_t sub_1D12362BC()
{
  result = qword_1EC60DD58;
  if (!qword_1EC60DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DD58);
  }

  return result;
}

unint64_t sub_1D1236310()
{
  result = qword_1EC60DD60;
  if (!qword_1EC60DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DD60);
  }

  return result;
}

unint64_t sub_1D1236364()
{
  result = qword_1EC60DD68;
  if (!qword_1EC60DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DD68);
  }

  return result;
}

unint64_t sub_1D12363BC()
{
  result = qword_1EC60DD70;
  if (!qword_1EC60DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DD70);
  }

  return result;
}

unint64_t sub_1D123646C()
{
  result = qword_1EC60DD88;
  if (!qword_1EC60DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DD88);
  }

  return result;
}

unint64_t sub_1D12364C4()
{
  result = qword_1EC60DD90;
  if (!qword_1EC60DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DD90);
  }

  return result;
}

unint64_t sub_1D123651C()
{
  result = qword_1EC60DD98;
  if (!qword_1EC60DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DD98);
  }

  return result;
}

void sub_1D1236570()
{
  if (!qword_1EC60DDA0)
  {
    sub_1D12366F0(255, &qword_1EC60DDA8, sub_1D123660C, &type metadata for FeatureModeToggleAction.ActionData, type metadata accessor for FeedItemAction.CodingKeys);
    sub_1D1236660();
    v0 = sub_1D139151C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60DDA0);
    }
  }
}

unint64_t sub_1D123660C()
{
  result = qword_1EC60DDB0;
  if (!qword_1EC60DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DDB0);
  }

  return result;
}

unint64_t sub_1D1236660()
{
  result = qword_1EC60DDB8;
  if (!qword_1EC60DDB8)
  {
    sub_1D12366F0(255, &qword_1EC60DDA8, sub_1D123660C, &type metadata for FeatureModeToggleAction.ActionData, type metadata accessor for FeedItemAction.CodingKeys);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DDB8);
  }

  return result;
}

void sub_1D12366F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D1236758()
{
  result = qword_1EC60DDC8;
  if (!qword_1EC60DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DDC8);
  }

  return result;
}

unint64_t sub_1D12367AC()
{
  result = qword_1EC60DDD8;
  if (!qword_1EC60DDD8)
  {
    sub_1D106F934(255, &qword_1EE06A510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DDD8);
  }

  return result;
}

uint64_t *FeedItemAction.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v32[0] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = v32 - v6;
  v7 = sub_1D138CFFC();
  v8 = (*(*(v4 + 88) + 32))(v5, *(v4 + 88));
  v9 = sub_1D139016C();
  v11 = v10;
  if (v9 == sub_1D139016C() && v11 == v12)
  {

LABEL_8:
    v17 = sub_1D138D00C();
    if (v17)
    {
      v18 = v17;
      v37 = sub_1D139012C();
      sub_1D106F934(0, &qword_1EE06A510);
      sub_1D12367AC();
      sub_1D139116C();
      if (*(v18 + 16))
      {
        v19 = sub_1D129E400(v34);
        if (v20)
        {
          sub_1D109F94C(*(v18 + 56) + 32 * v19, v36);
          sub_1D1116E48(v34);

          goto LABEL_14;
        }
      }

      sub_1D1116E48(v34);
    }

    memset(v36, 0, sizeof(v36));
LABEL_14:
    sub_1D1096B28(v36, v34);
    if (v35)
    {
      sub_1D106F934(0, &qword_1EC60DDD0);
      if (swift_dynamicCast())
      {
        v21 = v37;
        if (qword_1EC608DA8 != -1)
        {
          swift_once();
        }

        v22 = v21;
        v23 = sub_1D138D3DC();
        v25 = v24;

        v26 = v32[1];
        v27 = v33;
        sub_1D138CE7C();
        if (!v26)
        {
          sub_1D1083DAC(v23, v25);

          v31 = sub_1D138D01C();
          (*(*(v31 - 8) + 8))(a1, v31);
          sub_1D12383CC(v36, sub_1D1096B8C);
          (*(v32[0] + 32))(v2 + *(*v2 + 96), v27, v5);
          return v2;
        }

        sub_1D1083DAC(v23, v25);

        goto LABEL_22;
      }
    }

    else
    {
      sub_1D12383CC(v34, sub_1D1096B8C);
    }

    sub_1D1236758();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
LABEL_22:
    v29 = sub_1D138D01C();
    (*(*(v29 - 8) + 8))(a1, v29);
    sub_1D12383CC(v36, sub_1D1096B8C);
    goto LABEL_23;
  }

  v14 = sub_1D139162C();

  if (v14)
  {
    goto LABEL_8;
  }

  sub_1D1236758();
  swift_allocError();
  *v15 = 0;
  swift_willThrow();
  v16 = sub_1D138D01C();
  (*(*(v16 - 8) + 8))(a1, v16);
LABEL_23:
  type metadata accessor for FeedItemAction();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t FeedItemAction.init(from:)(void *a1)
{
  v3 = *(*v1 + 80);
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v15 - v4;
  type metadata accessor for FeedItemAction.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D139151C();
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v9 = v20;
  sub_1D13917FC();
  if (v9)
  {
    type metadata accessor for FeedItemAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v16;
    v10 = v17;
    v12 = v18;
    v13 = v19;
    sub_1D13914FC();
    (*(v11 + 8))(v7, v10);
    (*(v12 + 32))(v1 + *(*v1 + 96), v13, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v1;
}

uint64_t sub_1D12370C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1D1237164(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void sub_1D1237278(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v31 - v5;
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F07C();

  v10 = sub_1D138F0AC();
  v11 = sub_1D139081C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v34 = v7;
    v13 = v12;
    v33 = swift_slowAlloc();
    v39 = v33;
    *v13 = 136446210;
    v38 = *v2;
    type metadata accessor for FeedItemAction();
    swift_getMetatypeMetadata();
    v14 = sub_1D139020C();
    v32 = v6;
    v16 = sub_1D11DF718(v14, v15, &v39);

    *(v13 + 4) = v16;
    _os_log_impl(&dword_1D101F000, v10, v11, "Performing FeedItemAction: %%{public}%{public}s", v13, 0xCu);
    v17 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1D38882F0](v17, -1, -1);
    MEMORY[0x1D38882F0](v13, -1, -1);

    (*(v34 + 8))(v9, v32);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_1D106F934(0, &qword_1EC609D70);
  v18 = sub_1D139089C();
  v19 = (*(*(v3 + 88) + 32))(v4, *(v3 + 88));
  sub_1D1238310();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  v39 = sub_1D139012C();
  sub_1D106F934(0, &qword_1EE06A510);
  sub_1D12367AC();
  sub_1D139116C();
  v21 = v35;
  if (qword_1EC608DA0 != -1)
  {
    swift_once();
  }

  sub_1D12370C4(v21);
  v22 = v36;
  v23 = sub_1D138CEEC();
  if (v22)
  {
    (*(v37 + 8))(v21, v4);

    sub_1D1116E48(inited + 32);
    swift_setDeallocating();
    sub_1D1238368();
    swift_arrayDestroy();
  }

  else
  {
    v25 = v23;
    v26 = v4;
    v27 = v24;
    (*(v37 + 8))(v21, v26);
    v28 = sub_1D138D3CC();
    sub_1D1083DAC(v25, v27);
    *(inited + 96) = sub_1D106F934(0, &qword_1EC60DDD0);
    *(inited + 72) = v28;
    sub_1D109D7FC(inited);
    swift_setDeallocating();
    sub_1D12383CC(inited + 32, sub_1D1238368);
    v29 = objc_allocWithZone(sub_1D138DCDC());
    v30 = sub_1D138DCCC();
    [v18 addOperation_];
  }
}

uint64_t sub_1D123779C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - v4;
  sub_1D12370C4(&v7 - v4);
  sub_1D139007C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D1237898(void *a1)
{
  v2 = v1;
  v12[0] = *(*v2 + 80);
  v14 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v12 - v4;
  v12[1] = *(v6 + 88);
  type metadata accessor for FeedItemAction.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1D139159C();
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v10 = v12[0];
  sub_1D139181C();
  sub_1D12370C4(v5);
  sub_1D139158C();
  (*(v14 + 8))(v5, v10);
  return (*(v13 + 8))(v9, v7);
}

uint64_t sub_1D1237AD0()
{
  sub_1D139177C();
  sub_1D123779C(v1);
  return sub_1D13917CC();
}

uint64_t FeedItemActionError.hashValue.getter()
{
  v1 = *v0;
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  return sub_1D13917CC();
}

uint64_t sub_1D1237C04(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1D1237C58(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1D1237164(v3);
}

uint64_t FeedItemAction.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

{
  v2 = swift_allocObject();
  FeedItemAction.init(_:)(a1);
  return v2;
}

uint64_t static FeedItemAction.== infix(_:_:)(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1D12370C4(&v12 - v7);
  sub_1D12370C4(v5);
  v9 = sub_1D139011C();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  return v9 & 1;
}

uint64_t sub_1D1237F38(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D139162C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D1237FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1237F38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D1237FF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D1099E60();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D1238024(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D1238078(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedItemAction.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t FeedItemAction.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FeedItemAction.init(from:)(a1);
  return v2;
}

uint64_t sub_1D1238210()
{
  sub_1D139177C();
  sub_1D123779C(v1);
  return sub_1D13917CC();
}

uint64_t sub_1D1238250@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1D1238310()
{
  if (!qword_1EC60A598)
  {
    sub_1D1238368();
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A598);
    }
  }
}

void sub_1D1238368()
{
  if (!qword_1EC60A5A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60A5A0);
    }
  }
}

uint64_t sub_1D12383CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1238430()
{
  result = qword_1EC60DDF0[0];
  if (!qword_1EC60DDF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC60DDF0);
  }

  return result;
}

uint64_t sub_1D12384EC()
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

uint64_t dispatch thunk of FeedItemAction.__allocating_init(_:)()
{
  return (*(v0 + 128))();
}

{
  return (*(v0 + 136))();
}

id MedicalRecordChartOverlayContext.__allocating_init(title:dataSource:defaultColors:selectedColors:verticalAxis:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, id a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem] = 0;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedOverlayDisplayType] = 0;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedDataSource] = 0;
  v14 = &v13[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_title];
  *v14 = a1;
  *(v14 + 1) = a2;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_dataSource] = a3;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_defaultColors] = a4;
  if (!a5)
  {
    v15 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors;
    swift_beginAccess();
    v16 = *(a3 + v15);
    if (v16)
    {
      a5 = *(a3 + v15);
    }

    else
    {
      a5 = a4;
      v16 = 0;
    }

    v17 = v16;
  }

  *&v13[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_selectedColors] = a5;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_verticalAxis] = a6;
  v19.receiver = v13;
  v19.super_class = v6;
  return objc_msgSendSuper2(&v19, sel_init);
}

id MedicalRecordChartOverlayContext.init(title:dataSource:defaultColors:selectedColors:verticalAxis:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedOverlayDisplayType] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedDataSource] = 0;
  v8 = &v6[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_title];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_dataSource] = a3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_defaultColors] = a4;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v11 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors;
    swift_beginAccess();
    v13 = *(a3 + v11);
    if (v13)
    {
      v9 = *(a3 + v11);
    }

    else
    {
      v9 = a4;
      v13 = 0;
    }

    v14 = v13;
  }

  *&v6[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_selectedColors] = v9;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_verticalAxis] = a6;
  v16.receiver = v6;
  v16.super_class = type metadata accessor for MedicalRecordChartOverlayContext();
  return objc_msgSendSuper2(&v16, sel_init);
}

id sub_1D1238A4C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem);
    v4 = v3;
  }

  else
  {
    v4 = sub_1D1239254(0, 0);
    v3 = 0;
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = v4;
  v5 = v3;
  v6 = v4;

  return v6;
}

uint64_t sub_1D1238B40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void))
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28[-v10];
  v12 = *(*(v5 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_dataSource) + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets);
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v9);
    v27 = a1;

    v13 = sub_1D110A00C(sub_1D12393A8, &v28[-32], v12);
    if (v13 >> 62)
    {
      v14 = sub_1D13910DC();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem;
  v16 = *(v5 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem);
  if (v16)
  {
    v17 = *(v5 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem);
    v18 = v17;
  }

  else
  {
    v18 = sub_1D1239254(0, 0);
    v17 = 0;
    v16 = *(v5 + v15);
  }

  *(v5 + v15) = v18;
  v19 = v17;
  v20 = v18;

  v21 = sub_1D138D67C();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  if (qword_1EC608C98 != -1)
  {
    swift_once();
  }

  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E6530];
  *(v22 + 16) = xmmword_1D139E700;
  v24 = MEMORY[0x1E69E65A8];
  *(v22 + 56) = v23;
  *(v22 + 64) = v24;
  *(v22 + 32) = v14;
  v27 = 0xE000000000000000;
  sub_1D138D1CC();
  if (*(v22 + 16))
  {
    sub_1D139019C();
  }

  sub_1D10CD608(v11);
  v25 = sub_1D139012C();

  [v20 setValue_];

  return a5(1, 0);
}

id sub_1D1238FF0()
{
  sub_1D12393C8();
  v0 = [swift_getObjCClassFromMetadata() diagnosticTestResultTypeForIdentifier_];

  return v0;
}

id MedicalRecordChartOverlayContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicalRecordChartOverlayContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordChartOverlayContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D1239254(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69A4378]) init];
  v5 = sub_1D139012C();
  [v4 setTitle_];

  v6 = sub_1D139012C();
  [v4 setUnit_];

  if (a2)
  {
    v7 = sub_1D139012C();
  }

  else
  {
    v7 = 0;
  }

  [v4 setValue_];

  v8 = sub_1D139012C();
  [v4 setDateString_];

  [v4 setInfoHidden_];
  [v4 setMetricColors_];
  [v4 setSelectedMetricColors_];
  return v4;
}

unint64_t sub_1D12393C8()
{
  result = qword_1EC609F60;
  if (!qword_1EC609F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC609F60);
  }

  return result;
}

uint64_t sub_1D1239414(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26[-v8];
  v10 = *(*(a2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_dataSource) + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets);
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v7);
    v25 = a1;

    v11 = sub_1D110A00C(sub_1D1239988, &v26[-32], v10);
    if (v11 >> 62)
    {
      v12 = sub_1D13910DC();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem;
  v14 = *(a2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem);
  if (v14)
  {
    v15 = *(a2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem);
    v16 = v15;
  }

  else
  {
    v16 = sub_1D1239254(0, 0);
    v15 = 0;
    v14 = *(a2 + v13);
  }

  *(a2 + v13) = v16;
  v17 = v15;
  v18 = v16;

  v19 = sub_1D138D67C();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  if (qword_1EC608C98 != -1)
  {
    swift_once();
  }

  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E6530];
  *(v20 + 16) = xmmword_1D139E700;
  v22 = MEMORY[0x1E69E65A8];
  *(v20 + 56) = v21;
  *(v20 + 64) = v22;
  *(v20 + 32) = v12;
  v25 = 0xE000000000000000;
  sub_1D138D1CC();
  if (*(v20 + 16))
  {
    sub_1D139019C();
  }

  sub_1D10CD608(v9);
  v23 = sub_1D139012C();

  [v18 setValue_];

  return (*(a3 + 16))(a3, 1, 0);
}

void *sub_1D1239798()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedOverlayDisplayType;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedOverlayDisplayType);
  v3 = v2;
  if (!v2)
  {
    v4 = v0;
    v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_dataSource)) + 0x160))(*(v0 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_verticalAxis));
    v5 = *(v0 + v1);
    *(v4 + v1) = v3;
    v6 = v3;
  }

  v7 = v2;
  return v3;
}

id sub_1D12399E4()
{
  v1 = OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___brandView;
  v2 = *(v0 + OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___brandView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___brandView);
  }

  else
  {
    v4 = sub_1D1239A48(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D1239A48(uint64_t a1)
{
  v2 = [objc_allocWithZone(WDMedicalRecordBrandView) init];
  v3 = *(a1 + OBJC_IVAR___WDClinicalAccountAddedViewController_account);
  v4 = [*(*(a1 + OBJC_IVAR___WDClinicalAccountAddedViewController_onboardingSession) + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile) clinicalSourcesDataProvider];
  [v2 setBrandable:v3 dataProvider:v4];

  v5 = v2;
  sub_1D123BD58(0x69566C6961746544, 0xEA00000000007765);
  v6 = sub_1D139012C();

  [v5 setAccessibilityIdentifier_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  return v5;
}

uint64_t sub_1D1239B54()
{
  v1 = OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___standardConstraints;
  if (*&v0[OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___standardConstraints])
  {
    v2 = *&v0[OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___standardConstraints];
  }

  else
  {
    sub_1D10A5C9C(0, &qword_1EE06A4C0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D139E6F0;
    v3 = sub_1D12399E4();
    v4 = [v3 centerXAnchor];

    v5 = [v0 contentView];
    v6 = [v5 centerXAnchor];

    v7 = [v4 constraintEqualToAnchor_];
    *(v2 + 32) = v7;
    v8 = OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___brandView;
    v9 = [*&v0[OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___brandView] leadingAnchor];
    v10 = [v0 contentView];
    v11 = [v10 leadingAnchor];

    v12 = [v9 constraintGreaterThanOrEqualToAnchor_];
    *(v2 + 40) = v12;
    v13 = [v0 contentView];
    v14 = [v13 trailingAnchor];

    v15 = [*&v0[v8] trailingAnchor];
    v16 = [v14 constraintGreaterThanOrEqualToAnchor_];

    *(v2 + 48) = v16;
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1D1239D78()
{
  v1 = OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___accessibilityConstraints;
  if (*&v0[OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___accessibilityConstraints])
  {
    v2 = *&v0[OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___accessibilityConstraints];
  }

  else
  {
    sub_1D10A5C9C(0, &qword_1EE06A4C0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D139E6E0;
    v3 = sub_1D12399E4();
    v4 = [v3 leadingAnchor];

    v5 = [v0 contentView];
    v6 = [v5 leadingAnchor];

    v7 = [v4 constraintEqualToAnchor_];
    *(v2 + 32) = v7;
    v8 = [*&v0[OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___brandView] trailingAnchor];
    v9 = [v0 contentView];
    v10 = [v9 trailingAnchor];

    v11 = [v8 constraintEqualToAnchor_];
    *(v2 + 40) = v11;
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1D1239FF8()
{
  v1 = (v0 + OBJC_IVAR___WDClinicalAccountAddedViewController_dismissHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1D102CE24(*v1);
  return v2;
}

uint64_t sub_1D123A114(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___WDClinicalAccountAddedViewController_dismissHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1D1138F60(v6);
}

uint64_t sub_1D123A174@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WDClinicalAccountAddedViewController_dismissHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D1096C3C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D102CE24(v4);
}

uint64_t sub_1D123A214(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D123C00C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WDClinicalAccountAddedViewController_dismissHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1D102CE24(v3);
  return sub_1D1138F60(v8);
}

void AccountAddedViewController.init(onboardingSession:account:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR___WDClinicalAccountAddedViewController_primaryButton] = 0;
  *&v2[OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___brandView] = 0;
  *&v2[OBJC_IVAR___WDClinicalAccountAddedViewController_customConstraints] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___standardConstraints] = 0;
  *&v2[OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___accessibilityConstraints] = 0;
  v2[OBJC_IVAR___WDClinicalAccountAddedViewController_shouldPromptForDataCollection] = 0;
  v5 = &v2[OBJC_IVAR___WDClinicalAccountAddedViewController_dismissHandler];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR___WDClinicalAccountAddedViewController_onboardingSession] = a1;
  *&v2[OBJC_IVAR___WDClinicalAccountAddedViewController_account] = a2;
  v6 = objc_allocWithZone(type metadata accessor for HealthRecordsNotifications());
  v14 = a1;
  v7 = a2;
  v8 = [v6 init];
  *&v2[OBJC_IVAR___WDClinicalAccountAddedViewController_notificationsManager] = v8;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v9 = sub_1D139012C();

  v10 = objc_opt_self();
  v11 = sub_1D139012C();
  v12 = [v10 modelSpecificLocalizedStringKeyForKey_];

  if (v12)
  {
    sub_1D139016C();

    sub_1D138D1CC();

    v13 = sub_1D139012C();

    v15.receiver = v2;
    v15.super_class = type metadata accessor for AccountAddedViewController();
    objc_msgSendSuper2(&v15, sel_initWithTitle_detailText_symbolName_contentLayout_, v9, v13, 0, 2, 0xE000000000000000);
  }

  else
  {
    __break(1u);
  }
}

id sub_1D123A680()
{
  sub_1D123AB14(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - v2;
  v4 = type metadata accessor for AccountAddedViewController();
  v26.receiver = v0;
  v26.super_class = v4;
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() systemBackgroundColor];
    [v6 setBackgroundColor_];

    [v0 setModalInPresentation_];
    v8 = [v0 navigationItem];
    [v8 setHidesBackButton_];

    sub_1D123AB14(0, &qword_1EC60D0C0, sub_1D107F520, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D139E700;
    v10 = sub_1D138F4EC();
    v11 = MEMORY[0x1E69DC2B0];
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D11DE830();
    sub_1D139099C();
    swift_unknownObjectRelease();

    if (qword_1EC608CA8 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v12 = sub_1D139012C();

    sub_1D123BD58(0x747475427478654ELL, 0xEA00000000006E6FLL);
    v13 = sub_1D139012C();

    v14 = [v0 hxui:v12 addPrimaryFooterButtonWithTitle:v13 accessibilityIdentifier:?];

    v15 = *&v0[OBJC_IVAR___WDClinicalAccountAddedViewController_primaryButton];
    *&v0[OBJC_IVAR___WDClinicalAccountAddedViewController_primaryButton] = v14;
    v16 = v14;

    [v16 setEnabled_];
    v17 = [v0 contentView];
    v18 = sub_1D12399E4();
    [v17 addSubview_];

    v19 = *&v0[OBJC_IVAR___WDClinicalAccountAddedViewController____lazy_storage___brandView];
    v20 = [v0 contentView];
    [v19 hk:v20 alignHorizontalConstraintsWithView:0.0 margin:?];

    sub_1D123B354();
    v21 = sub_1D13905DC();
    (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
    sub_1D13905AC();
    v22 = v0;
    v23 = sub_1D139059C();
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v22;
    sub_1D107877C(0, 0, v3, &unk_1D13AB228, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D123AB14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D123AB78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D123B354();
  }
}

uint64_t sub_1D123ABD4()
{
  v0[2] = sub_1D13905AC();
  v0[3] = sub_1D139059C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D10AA380;

  return sub_1D123B4C0();
}

void sub_1D123ACC8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      [Strong presentViewController:a1 animated:1 completion:0];
    }
  }
}

void sub_1D123AE58(char a1)
{
  v3 = *&v1[OBJC_IVAR___WDClinicalAccountAddedViewController_account];
  v4 = [v3 canEnableSharingToProvider];
  if (a1)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    objc_allocWithZone(type metadata accessor for ImprovementDataCollectionOptInViewController());
    v7 = v1;
    v16 = ImprovementDataCollectionOptInViewController.init(modalInPresentation:userDidChooseCompletion:)(v5, sub_1D123C034, v6);
    v8 = [v7 navigationController];
    if (!v8)
    {
LABEL_4:

      return;
    }

LABEL_3:
    v9 = v8;
    [v8 pushViewController:v16 animated:1];

    goto LABEL_4;
  }

  if (v4 && [v3 hasClinicalSharingScopes])
  {
    v10 = *&v1[OBJC_IVAR___WDClinicalAccountAddedViewController_onboardingSession];
    objc_allocWithZone(type metadata accessor for ClinicalSharingOnboardingInformationalViewController());
    v11 = v10;
    v12 = v3;
    v16 = ClinicalSharingOnboardingInformationalViewController.init(onboardingSession:flowType:selectedAccount:delegate:)(v11, 2, v3);
    v8 = [v1 navigationController];
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = &v1[OBJC_IVAR___WDClinicalAccountAddedViewController_dismissHandler];
  swift_beginAccess();
  v14 = *v13;
  if (*v13)
  {

    v14(v15);
    sub_1D1138F60(v14);
  }
}

void sub_1D123B040(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR___WDClinicalAccountAddedViewController_account];
  if (([v3 canEnableSharingToProvider] & 1) != 0 && objc_msgSend(v3, sel_hasClinicalSharingScopes))
  {
    v4 = *&a2[OBJC_IVAR___WDClinicalAccountAddedViewController_onboardingSession];
    objc_allocWithZone(type metadata accessor for ClinicalSharingOnboardingInformationalViewController());
    v5 = v4;
    v6 = v3;
    v12 = ClinicalSharingOnboardingInformationalViewController.init(onboardingSession:flowType:selectedAccount:delegate:)(v5, 2, v3);
    v7 = [a2 navigationController];
    if (v7)
    {
      v8 = v7;
      [v7 pushViewController:v12 animated:1];
    }
  }

  else
  {
    v9 = &a2[OBJC_IVAR___WDClinicalAccountAddedViewController_dismissHandler];
    swift_beginAccess();
    v10 = *v9;
    if (*v9)
    {

      v10(v11);
      sub_1D1138F60(v10);
    }
  }
}

void sub_1D123B190()
{
  v1 = OBJC_IVAR___WDClinicalAccountAddedViewController_primaryButton;
  v2 = *(v0 + OBJC_IVAR___WDClinicalAccountAddedViewController_primaryButton);
  if (v2)
  {
    [v2 setEnabled_];
  }

  if ((*(v0 + OBJC_IVAR___WDClinicalAccountAddedViewController_shouldPromptForDataCollection) & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR___WDClinicalAccountAddedViewController_account);
    if (![v3 canEnableSharingToProvider] || (objc_msgSend(v3, sel_hasClinicalSharingScopes) & 1) == 0)
    {
      v4 = *(v0 + v1);
      if (v4)
      {
        v5 = qword_1EC608CA8;
        v6 = v4;
        if (v5 != -1)
        {
          swift_once();
        }

        sub_1D138D1CC();
        v7 = sub_1D139012C();

        [v6 setTitle:v7 forState:{0, 0xE000000000000000}];

        v8 = *(v0 + v1);
        if (v8)
        {
          v9 = v8;
          sub_1D123BD58(0x74747542656E6F44, 0xEA00000000006E6FLL);
          v10 = sub_1D139012C();

          [v9 setAccessibilityIdentifier_];
        }
      }
    }
  }
}

void sub_1D123B354()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR___WDClinicalAccountAddedViewController_customConstraints;
  sub_1D1071940();

  v3 = sub_1D139044C();

  [v1 deactivateConstraints_];

  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = sub_1D1390B5C();
  if (v4)
  {
    v6 = sub_1D1239D78();
  }

  else
  {
    v6 = sub_1D1239B54();
  }

  *&v0[v2] = v6;

  v7 = sub_1D139044C();

  [v1 activateConstraints_];

  v8 = [v0 contentView];
  [v8 setNeedsLayout];
}

uint64_t sub_1D123B4C0()
{
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v2 = sub_1D138F0BC();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_1D13905AC();
  v1[8] = sub_1D139059C();
  v4 = sub_1D139055C();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D123B5C0, v4, v3);
}

uint64_t sub_1D123B5C0()
{
  v0[11] = [*(*(v0[3] + OBJC_IVAR___WDClinicalAccountAddedViewController_onboardingSession) + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile) healthRecordsStore];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1D123B68C;

  return MEMORY[0x1EEDC7870]();
}

uint64_t sub_1D123B68C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 104) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D123B7D4, v5, v4);
}

uint64_t sub_1D123B7D4()
{
  v26 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);

  v2[OBJC_IVAR___WDClinicalAccountAddedViewController_shouldPromptForDataCollection] = v1;
  sub_1D138F06C();
  v3 = v2;
  v4 = sub_1D138F0AC();
  v5 = sub_1D13907DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 32);
    v23 = *(v0 + 40);
    v24 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315394;
    *(v0 + 16) = v7;
    swift_getMetatypeMetadata();
    v10 = sub_1D13901EC();
    v12 = sub_1D11DF718(v10, v11, &v25);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = HKStringFromBool();
    v14 = sub_1D139016C();
    v16 = v15;

    v17 = sub_1D11DF718(v14, v16, &v25);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1D101F000, v4, v5, "%s: Fetched shouldPromptForImproveHealthRecordsDataSubmission, should prompt: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v9, -1, -1);
    MEMORY[0x1D38882F0](v8, -1, -1);

    (*(v6 + 8))(v24, v23);
  }

  else
  {
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v20 = *(v0 + 40);

    (*(v19 + 8))(v18, v20);
  }

  sub_1D123B190();

  v21 = *(v0 + 8);

  return v21();
}

id AccountAddedViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1D139012C();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1D139012C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1D139012C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id AccountAddedViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1D139012C();

  if (a4)
  {
    v12 = sub_1D139012C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id AccountAddedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountAddedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D123BD58(uint64_t a1, uint64_t a2)
{
  sub_1D10A5C9C(0, &qword_1EE06B560);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139EAB0;
  *(v4 + 32) = 0xD000000000000012;
  *(v4 + 40) = 0x80000001D13B9330;
  strcpy((v4 + 48), "AccountAdded");
  *(v4 + 61) = 0;
  *(v4 + 62) = -5120;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;

  v5 = sub_1D139044C();

  v6 = HKUIJoinStringsForAutomationIdentifier();

  if (v6)
  {
    sub_1D139016C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D123BE58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D108077C;

  return sub_1D123ABD4();
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1D123C058@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1D123C0E0(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D112F344(v2, v3);
  v5 = v4;
  return sub_1D138F7CC();
}

uint64_t sub_1D123C170()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();
}

uint64_t sub_1D123C1E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1D138F7CC();
}

void (*sub_1D123C264(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D138F7AC();
  return sub_1D123C308;
}

void sub_1D123C308(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1D123C370()
{
  swift_beginAccess();
  sub_1D123C7C8(0, &unk_1EE06B588, MEMORY[0x1E695C070]);
  sub_1D138F78C();
  return swift_endAccess();
}

uint64_t sub_1D123C3F8(uint64_t a1)
{
  sub_1D123C7C8(0, &qword_1EE06A6B8, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  sub_1D123C7C8(0, &unk_1EE06B588, MEMORY[0x1E695C070]);
  sub_1D138F79C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1D123C59C()
{
  swift_beginAccess();
  sub_1D123C7C8(0, &unk_1EE06B588, MEMORY[0x1E695C070]);
  sub_1D138F78C();
  return swift_endAccess();
}

void sub_1D123C620()
{
  if (!qword_1EE06B5D0)
  {
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B5D0);
    }
  }
}

uint64_t sub_1D123C670(uint64_t a1)
{
  sub_1D123C7C8(0, &qword_1EE06A6B8, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1D123C7C8(0, &unk_1EE06B588, MEMORY[0x1E695C070]);
  sub_1D138F79C();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void sub_1D123C7C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D123C620();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void (*sub_1D123C828(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1D123C7C8(0, &qword_1EE06A6B8, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15HealthRecordsUI26AccountStateChangeListener__latestChange;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1D123C7C8(0, &unk_1EE06B588, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1D138F78C();
  swift_endAccess();
  return sub_1D123C9B8;
}

void sub_1D123C9B8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1D138F79C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1D138F79C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id AccountStateChangeListener.__allocating_init(handler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D123C7C8(0, &unk_1EE06B588, MEMORY[0x1E695C070]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v11 = objc_allocWithZone(v3);
  v12 = OBJC_IVAR____TtC15HealthRecordsUI26AccountStateChangeListener__latestChange;
  sub_1D123C620();
  v19 = 0;
  v20 = 0;
  v18 = 0;
  sub_1D138F77C();
  (*(v8 + 32))(&v11[v12], v10, v7);
  v13 = OBJC_IVAR____TtC15HealthRecordsUI26AccountStateChangeListener_changePublisher;
  sub_1D112F230();
  swift_allocObject();
  *&v11[v13] = sub_1D138F69C();
  v14 = &v11[OBJC_IVAR____TtC15HealthRecordsUI26AccountStateChangeListener_handler];
  *v14 = a1;
  *(v14 + 1) = a2;
  v17.receiver = v11;
  v17.super_class = v3;
  return objc_msgSendSuper2(&v17, sel_init);
}

id AccountStateChangeListener.init(handler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D123C7C8(0, &unk_1EE06B588, MEMORY[0x1E695C070]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC15HealthRecordsUI26AccountStateChangeListener__latestChange;
  sub_1D123C620();
  v19 = 0;
  v20 = 0;
  v18 = 0;
  sub_1D138F77C();
  (*(v8 + 32))(&v3[v11], v10, v7);
  v12 = OBJC_IVAR____TtC15HealthRecordsUI26AccountStateChangeListener_changePublisher;
  sub_1D112F230();
  swift_allocObject();
  *&v3[v12] = sub_1D138F69C();
  v13 = &v3[OBJC_IVAR____TtC15HealthRecordsUI26AccountStateChangeListener_handler];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = type metadata accessor for AccountStateChangeListener();
  v17.receiver = v3;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t type metadata accessor for AccountStateChangeListener()
{
  result = qword_1EE06B5A8;
  if (!qword_1EE06B5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D123CE50(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_1D138F0BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F07C();
  v11 = v3;
  v12 = a1;
  v13 = sub_1D138F0AC();
  v14 = sub_1D139081C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36 = a2;
    v16 = v15;
    v35 = swift_slowAlloc();
    v38 = v35;
    *v16 = 136446722;
    ObjectType = swift_getObjectType();
    sub_1D123D3C8();
    v17 = sub_1D139020C();
    v19 = sub_1D11DF718(v17, v18, &v38);
    v34 = v7;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    ObjectType = v12;
    sub_1D123D410();
    v21 = v12;
    v22 = sub_1D139020C();
    v24 = sub_1D11DF718(v22, v23, &v38);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2082;
    ObjectType = 0;
    v40 = 0xE000000000000000;
    v37 = a3;
    type metadata accessor for HKClinicalAccountStateChangeType(0);
    sub_1D139133C();
    v25 = sub_1D11DF718(ObjectType, v40, &v38);

    *(v16 + 24) = v25;
    _os_log_impl(&dword_1D101F000, v13, v14, "%{public}s: accountStateDidChange (store: %{public}s, change: %{public}s)", v16, 0x20u);
    v26 = v35;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v26, -1, -1);
    v27 = v16;
    a2 = v36;
    MEMORY[0x1D38882F0](v27, -1, -1);

    (*(v8 + 8))(v10, v34);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  ObjectType = v12;
  v40 = a2;
  v41 = a3;
  v28 = v12;
  v29 = a2;
  v30 = v11;
  v31 = v28;
  v32 = v29;
  sub_1D138F7CC();
  ObjectType = v12;
  v40 = a2;
  v41 = a3;
  sub_1D138F68C();
  sub_1D1080A3C(ObjectType, v40);
  v33 = *&v30[OBJC_IVAR____TtC15HealthRecordsUI26AccountStateChangeListener_handler];
  ObjectType = v31;
  v40 = v32;
  v41 = a3;
  v33(&ObjectType);
}

id AccountStateChangeListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccountStateChangeListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountStateChangeListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D123D3C8()
{
  result = qword_1EC60DFB0;
  if (!qword_1EC60DFB0)
  {
    type metadata accessor for AccountStateChangeListener();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC60DFB0);
  }

  return result;
}

unint64_t sub_1D123D410()
{
  result = qword_1EC60DFB8;
  if (!qword_1EC60DFB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60DFB8);
  }

  return result;
}

void sub_1D123D474()
{
  sub_1D123C7C8(319, &unk_1EE06B588, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t static AddAccountFeedItemIdentifierFactory.makeGeneralHealthRecordsOnboardingIdentifier(for:)(void *a1)
{
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139E700;
  if (a1)
  {
    v17 = 0x656C69666F72505BLL;
    v18 = 0xE90000000000003ALL;
    v7 = a1;
    v8 = [v7 identifier];
    sub_1D138D5CC();

    v9 = sub_1D138D59C();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    MEMORY[0x1D3885C10](v9, v11);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v13 = v17;
    v12 = v18;
  }

  else
  {
    v12 = 0x80000001D13BBE40;
    v13 = 0xD000000000000013;
  }

  v17 = v13;
  v18 = v12;
  MEMORY[0x1D3885C10](0xD000000000000021, 0x80000001D13BF300);
  v14 = v18;
  *(v6 + 32) = v17;
  *(v6 + 40) = v14;
  v17 = v6;
  sub_1D113F4E8(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
  sub_1D10F73A8();
  v15 = sub_1D139008C();

  return v15;
}

uint64_t static AddAccountFeedItemIdentifierFactory.makeLabsHealthRecordsOnboardingIdentifier(for:)(void *a1)
{
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139E700;
  if (a1)
  {
    v17 = 0x656C69666F72505BLL;
    v18 = 0xE90000000000003ALL;
    v7 = a1;
    v8 = [v7 identifier];
    sub_1D138D5CC();

    v9 = sub_1D138D59C();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    MEMORY[0x1D3885C10](v9, v11);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v13 = v17;
    v12 = v18;
  }

  else
  {
    v12 = 0x80000001D13BBE40;
    v13 = 0xD000000000000013;
  }

  v17 = v13;
  v18 = v12;
  MEMORY[0x1D3885C10](0xD000000000000025, 0x80000001D13BF2D0);
  v14 = v18;
  *(v6 + 32) = v17;
  *(v6 + 40) = v14;
  v17 = v6;
  sub_1D113F4E8(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
  sub_1D10F73A8();
  v15 = sub_1D139008C();

  return v15;
}

unint64_t DisplayCategory.Kind.hkDisplayCategory.getter()
{
  result = *v0;
  if (*v0 <= 4u)
  {
    if (*v0 <= 1u)
    {
      if (!*v0)
      {
        return result;
      }

      v5 = 21;
    }

    else
    {
      v6 = 17;
      if (result != 3)
      {
        v6 = 18;
      }

      if (result == 2)
      {
        v5 = 20;
      }

      else
      {
        v5 = v6;
      }
    }
  }

  else
  {
    v2 = 16;
    v3 = -1;
    v4 = 27;
    if (result != 9)
    {
      v4 = 30;
    }

    if (result != 8)
    {
      v3 = v4;
    }

    if (result == 6)
    {
      v2 = 19;
    }

    if (result == 5)
    {
      v2 = 22;
    }

    if (*v0 <= 7u)
    {
      v5 = v2;
    }

    else
    {
      v5 = v3;
    }
  }

  return [objc_opt_self() categoryWithID_];
}

unint64_t DisplayCategory.Kind.systemImageName.getter()
{
  result = *v0;
  if (*v0 <= 4u)
  {
    if (*v0 <= 1u)
    {
      if (!*v0)
      {
        return result;
      }

      v3 = 21;
    }

    else
    {
      v4 = 17;
      if (result != 3)
      {
        v4 = 18;
      }

      if (result == 2)
      {
        v3 = 20;
      }

      else
      {
        v3 = v4;
      }
    }
  }

  else if (*v0 > 7u)
  {
    if (result == 10)
    {
      v3 = 30;
    }

    else
    {
      if (result != 9)
      {
        return 0xD000000000000010;
      }

      v3 = 27;
    }
  }

  else
  {
    v2 = 16;
    if (result == 6)
    {
      v2 = 19;
    }

    if (result == 5)
    {
      v3 = 22;
    }

    else
    {
      v3 = v2;
    }
  }

  result = [objc_opt_self() categoryWithID_];
  if (result)
  {
    v5 = result;
    v6 = [result systemImageName];

    v7 = sub_1D139016C();
    return v7;
  }

  return result;
}

uint64_t DisplayCategory.Kind.medicalTypes.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    if (*v0 > 2u)
    {
      if (v1 != 3)
      {
        sub_1D123F200(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_1D139E810;
        v3 = (v2 + 32);
        v4 = &selRef_conditionRecordType;
        goto LABEL_19;
      }
    }

    else
    {
      if (v1 == 1)
      {
        sub_1D123F200(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_1D139E6F0;
        *(v2 + 32) = [objc_opt_self() medicationDispenseRecordType];
        *(v2 + 40) = [objc_opt_self() medicationOrderType];
        v3 = (v2 + 48);
        v4 = &selRef_medicationRecordType;
LABEL_19:
        *v3 = [objc_opt_self() *v4];
        return v2;
      }

      if (v1 != 2)
      {
        goto LABEL_20;
      }
    }

    sub_1D123F200(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D139E810;
    v3 = (v2 + 32);
    v4 = &selRef_diagnosticTestResultType;
    goto LABEL_19;
  }

  if (*v0 <= 7u)
  {
    if (v1 == 5)
    {
      sub_1D123F200(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D139E810;
      v3 = (v2 + 32);
      v4 = &selRef_procedureRecordType;
    }

    else if (v1 == 6)
    {
      sub_1D123F200(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D139E810;
      v3 = (v2 + 32);
      v4 = &selRef_vaccinationRecordType;
    }

    else
    {
      sub_1D123F200(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D139E810;
      v3 = (v2 + 32);
      v4 = &selRef_allergyRecordType;
    }

    goto LABEL_19;
  }

  if (v1 == 8)
  {
    sub_1D123F200(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D139E810;
    v3 = (v2 + 32);
    v4 = &selRef_unknownRecordType;
    goto LABEL_19;
  }

  if (v1 == 10)
  {
    sub_1D123F200(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D139E810;
    v3 = (v2 + 32);
    v4 = &selRef_clinicalNoteRecordType;
    goto LABEL_19;
  }

LABEL_20:
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

HealthRecordsUI::DisplayCategory::Kind_optional __swiftcall DisplayCategory.Kind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void sub_1D123E1C4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  DisplayCategory.Kind.init(rawValue:)([v3 categoryType]);
  LODWORD(v4) = v73[0];
  v5 = [v3 categoryMetricColors];
  v6 = [v5 keyColor];

  if (!v6)
  {
    v6 = [objc_opt_self() secondaryLabelColor];
  }

  v7 = [v3 displayImageName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D139016C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [v3 displayName];
  v13 = sub_1D139016C();
  v65 = v14;
  v66 = v13;

  v15 = [v3 sampleTypes];
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v17 = v15;
    sub_1D106F934(0, &qword_1EE06B780);
    v18 = sub_1D139045C();

    if (v18 >> 62)
    {
      v19 = sub_1D13910DC();
      if (v19)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_9:
        v63 = v11;
        *v73 = MEMORY[0x1E69E7CC0];
        sub_1D13912DC();
        if ((v19 & 0x8000000000000000) == 0)
        {
          v55 = v9;
          v57 = v6;
          v59 = v4;
          v61 = a2;
          v20 = 0;
          v21 = v18 & 0xC000000000000001;
          v22 = &off_1E83DF000;
          v23 = 0x1E696C000;
          v68 = v3;
          while (1)
          {
            if (v21)
            {
              v25 = MEMORY[0x1D3886B70](v20, v18);
            }

            else
            {
              v25 = *(v18 + 8 * v20 + 32);
            }

            v26 = v25;
            v27 = [v3 v22[224]];
            if (v27)
            {
              v28 = v27;
              sub_1D106F934(0, &qword_1EE06B790);
              sub_1D1127F80();
              v29 = sub_1D138FFFC();

              if ((v29 & 0xC000000000000001) != 0)
              {
                v30 = v19;
                v31 = v18;
                v32 = v21;
                v33 = v22;
                v34 = v26;
                v35 = sub_1D139137C();

                if (v35)
                {
                  swift_dynamicCast();
                  v24 = v70;
                }

                else
                {

                  v24 = 0;
                }

                v22 = v33;
                v21 = v32;
                v18 = v31;
                v19 = v30;
                v23 = 0x1E696C000uLL;
                goto LABEL_13;
              }

              if (*(v29 + 16))
              {
                v36 = sub_1D129DF14(v26);
                if (v37)
                {
                  v24 = *(*(v29 + 56) + 8 * v36);

                  goto LABEL_13;
                }
              }
            }

            v24 = 0;
LABEL_13:
            ++v20;
            [objc_allocWithZone(*(v23 + 904)) initWithSampleType:v26 predicate:v24];

            sub_1D13912AC();
            sub_1D13912EC();
            sub_1D13912FC();
            sub_1D13912BC();
            v3 = v68;
            if (v19 == v20)
            {

              v38 = *v73;
              a2 = v61;
              v11 = v63;
              LODWORD(v4) = v59;
              v9 = v55;
              v6 = v57;
              goto LABEL_30;
            }
          }
        }

        __break(1u);
        goto LABEL_63;
      }
    }

    v38 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  v39 = [v3 sampleTypes];
  if (v39)
  {
    v40 = v39;
    sub_1D106F934(0, &qword_1EE06B780);
    v41 = sub_1D139045C();

    v67 = v41;
    if (v41 >> 62)
    {
      goto LABEL_55;
    }

    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      while (1)
      {
        v64 = v11;
        *v73 = v16;
        v11 = v73;
        sub_1D13912DC();
        if (v42 < 0)
        {
          break;
        }

        v54 = v38;
        v56 = v9;
        v58 = v6;
        v60 = v4;
        v69 = v3;
        v62 = a2;
        v16 = objc_opt_self();
        v43 = 0;
        v9 = v67 & 0xC000000000000001;
        v38 = v72;
        while (1)
        {
          v3 = (v43 + 1);
          if (__OFADD__(v43, 1))
          {
            break;
          }

          if (v9)
          {
            v46 = MEMORY[0x1D3886B70]();
          }

          else
          {
            if (v43 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_54;
            }

            v46 = *(v67 + 32 + 8 * v43);
          }

          v4 = v46;
          v47 = [v69 additionalPredicatesForCategory];
          if (v47)
          {
            sub_1D106F934(0, &qword_1EE06B790);
            sub_1D1127F80();
            v48 = sub_1D138FFFC();

            v47 = sub_1D12F3BFC(v4, v48);
          }

          v72[4] = v47;
          objc_opt_self();
          v49 = swift_dynamicCastObjCClass();
          if (v49)
          {
            v49 = [objc_opt_self() predicateForMedicalRecordWithState_];
          }

          a2 = 0;
          v72[5] = v49;
          v71 = MEMORY[0x1E69E7CC0];
          while (a2 != 2)
          {
            v50 = v72[a2++ + 4];
            if (v50)
            {
              v51 = v50;
              MEMORY[0x1D3885D90]();
              if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1D13904BC();
              }

              sub_1D13904FC();
            }
          }

          sub_1D111C0F4();
          swift_arrayDestroy();
          sub_1D106F934(0, &qword_1EE06B790);
          v44 = sub_1D139044C();

          v45 = [v16 andPredicateWithSubpredicates_];

          v6 = [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v4 predicate:v45];
          v11 = v73;
          sub_1D13912AC();
          sub_1D13912EC();
          sub_1D13912FC();
          sub_1D13912BC();
          v43 = v3;
          if (v3 == v42)
          {

            v3 = v69;

            v52 = *v73;
            a2 = v62;
            v11 = v64;
            LODWORD(v4) = v60;
            v9 = v56;
            v6 = v58;
            v38 = v54;
            goto LABEL_58;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        v42 = sub_1D13910DC();
        if (!v42)
        {
          goto LABEL_56;
        }
      }

LABEL_63:
      __break(1u);
      return;
    }

LABEL_56:
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_58:
  if (v4 == 11)
  {
    v53 = 0;
  }

  else
  {
    v53 = v4;
  }

  *a2 = v53;
  *(a2 + 8) = v6;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v66;
  *(a2 + 40) = v65;
  *(a2 + 48) = v38;
  *(a2 + 56) = v52;
  *(a2 + 64) = v3;
}

uint64_t DisplayCategory.imageName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DisplayCategory.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

id HKSampleType.reachablePredicate.getter()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [objc_opt_self() predicateForMedicalRecordWithState_];
  }

  return result;
}

uint64_t DisplayCategory.hash(into:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[6];
  v5 = v1[7];
  MEMORY[0x1D38870E0](*v1);
  sub_1D1390D9C();
  sub_1D139179C();
  if (v3)
  {
    sub_1D139027C();
  }

  sub_1D139027C();
  sub_1D123EEF0(a1, v4);
  sub_1D123EEF0(a1, v5);
  return sub_1D1390D9C();
}

uint64_t DisplayCategory.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[6];
  v4 = v0[7];
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  sub_1D1390D9C();
  sub_1D139179C();
  if (v2)
  {
    sub_1D139027C();
  }

  sub_1D139027C();
  sub_1D123EEF0(v6, v3);
  sub_1D123EEF0(v6, v4);
  sub_1D1390D9C();
  return sub_1D13917CC();
}

uint64_t sub_1D123EBB8()
{
  sub_1D139177C();
  DisplayCategory.hash(into:)(v1);
  return sub_1D13917CC();
}

uint64_t sub_1D123EBFC()
{
  sub_1D139177C();
  DisplayCategory.hash(into:)(v1);
  return sub_1D13917CC();
}

id sub_1D123ED04()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [objc_opt_self() predicateForMedicalRecordWithState_];
  }

  return result;
}

void *sub_1D123ED64()
{
  result = sub_1D1353004(&unk_1F4D04BC8, &unk_1F4D04598);
  off_1EE06B4C8 = result;
  return result;
}

uint64_t static DisplayCategory.Kind.regularKinds.getter()
{
  if (qword_1EE06A180 != -1)
  {
    swift_once();
  }
}

uint64_t HKMedicalType.displayCategoryKind.getter@<X0>(char *a1@<X8>)
{
  result = [v1 code];
  if (result <= 130)
  {
    if ((result - 126) < 3)
    {
      v4 = 1;
      goto LABEL_18;
    }

    if (result == 129 || result == 130)
    {
      v4 = 2;
      goto LABEL_18;
    }

LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  if (result > 132)
  {
    switch(result)
    {
      case 133:
        v4 = 7;
        goto LABEL_18;
      case 134:
        v4 = 5;
        goto LABEL_18;
      case 267:
        v4 = 10;
        goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (result == 131)
  {
    v4 = 6;
  }

  else
  {
    v4 = 4;
  }

LABEL_18:
  *a1 = v4;
  return result;
}

void sub_1D123EEF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1D13910DC();
    MEMORY[0x1D38870E0](v8);
    v3 = sub_1D13910DC();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1D38870E0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1D3886B70](i, a2);
      sub_1D1390D9C();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1D1390D9C();

      --v3;
    }

    while (v3);
  }
}

uint64_t _s15HealthRecordsUI15DisplayCategoryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v13 = a1[6];
  v14 = a1[5];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v11 = a1[7];
  v12 = a2[6];
  v10 = a2[7];
  v7 = a2[2];
  v8 = a1[2];
  sub_1D106F934(0, &qword_1EE06B0C0);
  if ((sub_1D1390D8C() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v4 || (v8 != v7 || v2 != v4) && (sub_1D139162C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3 == v5 && v14 == v6 || (sub_1D139162C()) && (sub_1D1335054(v13, v12) & 1) != 0 && (sub_1D1335054(v11, v10))
  {
    return sub_1D1390D8C() & 1;
  }

  return 0;
}

unint64_t sub_1D123F12C()
{
  result = qword_1EE06BB40;
  if (!qword_1EE06BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06BB40);
  }

  return result;
}

unint64_t sub_1D123F184()
{
  result = qword_1EC60DFC0;
  if (!qword_1EC60DFC0)
  {
    sub_1D123F200(255, &qword_1EC60DFC8, &type metadata for DisplayCategory.Kind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DFC0);
  }

  return result;
}

void sub_1D123F200(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D123F254()
{
  result = qword_1EE06B4B8;
  if (!qword_1EE06B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B4B8);
  }

  return result;
}

uint64_t sub_1D123F2A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D123F2F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisplayCategory.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayCategory.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D123F4C8()
{
  result = qword_1EC60DFD0;
  if (!qword_1EC60DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DFD0);
  }

  return result;
}

uint64_t UIViewController.resolvedListConceptManagerConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D139095C();
  v8 = v23;
  v9 = v24;
  if (v24 == 1)
  {
    sub_1D138F07C();
    v10 = v1;
    v11 = sub_1D138F0AC();
    v12 = sub_1D13907FC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21 = v3;
      v14 = v13;
      v15 = swift_slowAlloc();
      v22 = v8;
      v23 = v15;
      v16 = v15;
      *v14 = 136446210;
      v17 = sub_1D139094C();
      v19 = sub_1D11DF718(v17, v18, &v23);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1D101F000, v11, v12, "resolvedListConceptManagerConfiguration requested, but none found in hierarchy: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      v20 = v16;
      v8 = v22;
      MEMORY[0x1D38882F0](v20, -1, -1);
      MEMORY[0x1D38882F0](v14, -1, -1);

      result = (*(v4 + 8))(v6, v21);
    }

    else
    {

      result = (*(v4 + 8))(v6, v3);
    }
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  return result;
}

uint64_t sub_1D123F7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D109F94C(a1, v9);
  sub_1D1240024();
  v3 = swift_dynamicCast();
  if (v3)
  {
    v4 = *(&v11 + 1);
    v5 = v12;
    __swift_project_boxed_opaque_existential_1Tm(&v10, *(&v11 + 1));
    (*(v5 + 16))(&v8, v4, v5);
    v6 = v8;
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    result = sub_1D1240088(&v10);
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v3 ^ 1;
  return result;
}

void __swiftcall UIViewController.hrui_presentationCapableViewController()(Swift::tuple_viewController_UIViewController_shouldNotDismiss_Bool *__return_ptr retstr)
{
  v2 = v1;
  v3 = [v2 presentedViewController];
  if (v3)
  {
    v4 = 0;
    v5 = v2;
    do
    {

      v6 = [v5 isModalInPresentation];
      v7 = [v5 presentedViewController];
      if (!v7)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

      v8 = v7;

      v4 |= v6;
      v3 = [v8 presentedViewController];
      v5 = v8;
    }

    while (v3);
    if (v4)
    {
      return;
    }
  }

  v9 = [v2 presentingViewController];
  if (v9)
  {

    v10 = v2;
    v11 = [v10 presentingViewController];
    if (v11)
    {
      v12 = v10;
      while (1)
      {

        if ([v12 isModalInPresentation])
        {
          break;
        }

        v13 = [v12 presentingViewController];
        if (!v13)
        {
          goto LABEL_19;
        }

        v10 = v13;

        v11 = [v10 presentingViewController];
        v12 = v10;
        if (!v11)
        {
          goto LABEL_16;
        }
      }

      v10 = v12;
    }

LABEL_16:
  }
}

Swift::Void __swiftcall UIViewController.hrui_presentIfPossible(_:animated:)(UIViewController *_, Swift::Bool animated)
{
  v3 = v2;
  v4 = animated;
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138FF3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D108310C();
  *v13 = sub_1D1390A7C();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = sub_1D138FF5C();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    UIViewController.hrui_presentationCapableViewController()(v15);
    v17 = v16;
    if (v18)
    {
      v50 = v6;
      v51 = v4;
      sub_1D138F06C();
      v19 = v3;
      v20 = _;
      v21 = sub_1D138F0AC();
      v22 = sub_1D13907FC();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        aBlock[0] = v48;
        *v23 = 136315394;
        v24 = v19;
        v25 = [v24 description];
        v26 = sub_1D139016C();
        v49 = v17;
        v28 = v27;

        v29 = sub_1D11DF718(v26, v28, aBlock);

        *(v23 + 4) = v29;
        *(v23 + 12) = 2080;
        v30 = v20;
        v31 = [(UIViewController *)v30 description];
        v32 = sub_1D139016C();
        v34 = v33;

        v35 = v32;
        v17 = v49;
        v36 = sub_1D11DF718(v35, v34, aBlock);

        *(v23 + 14) = v36;
        _os_log_impl(&dword_1D101F000, v21, v22, "%s was asked to present %s, however a modal is already being presented and the modal presentation should not be dismissed", v23, 0x16u);
        v37 = v48;
        swift_arrayDestroy();
        MEMORY[0x1D38882F0](v37, -1, -1);
        MEMORY[0x1D38882F0](v23, -1, -1);
      }

      (*(v7 + 8))(v9, v50);
      v38 = [objc_opt_self() isAppleInternalInstall];
      v39 = v51;
      if (v38)
      {
        v40 = objc_opt_self();
        v41 = sub_1D139012C();
        v42 = sub_1D139012C();
        v43 = [v40 basicAlertControllerWithTitle:v41 message:v42];

        [v17 presentViewController:v43 animated:v39 completion:0];
      }
    }

    else
    {
      v44 = swift_allocObject();
      *(v44 + 16) = v3;
      *(v44 + 24) = _;
      *(v44 + 32) = v4;
      aBlock[4] = sub_1D123FF74;
      aBlock[5] = v44;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D10CBD3C;
      aBlock[3] = &block_descriptor_45;
      v45 = _Block_copy(aBlock);
      v46 = v3;
      v47 = _;

      [v46 dismissViewControllerAnimated:v4 completion:v45];

      _Block_release(v45);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for ListConceptManagerConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ListConceptManagerConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1D1240024()
{
  result = qword_1EC60DFD8;
  if (!qword_1EC60DFD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60DFD8);
  }

  return result;
}

uint64_t sub_1D1240088(uint64_t a1)
{
  sub_1D12400E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D12400E4()
{
  if (!qword_1EC60DFE0)
  {
    sub_1D1240024();
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60DFE0);
    }
  }
}

id sub_1D124013C()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v3 setDateStyle_];
    [v3 setTimeStyle_];
    v4 = *(v0 + 96);
    *(v0 + 96) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1D12401D0()
{
  v1 = [v0 meaningfulDateTitle];
  v2 = sub_1D139016C();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    sub_1D1193B98(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D139E710;
    v7 = MEMORY[0x1E69E6158];
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v8 = sub_1D1089930();
    *(v6 + 64) = v8;
    *(v6 + 32) = v2;
    *(v6 + 40) = v4;
    v9 = [v0 meaningfulDateString];
    v10 = sub_1D139016C();
    v12 = v11;

    *(v6 + 96) = v7;
    *(v6 + 104) = v8;
    *(v6 + 72) = v10;
    *(v6 + 80) = v12;
    v13 = sub_1D13901AC();

    return v13;
  }

  else
  {

    v15 = [v0 meaningfulDateString];
    v16 = sub_1D139016C();

    return v16;
  }
}

double sub_1D12403CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttachmentContext();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v14 = sub_1D138D3CC();
  v15 = [v13 initWithData_];

  if (v15)
  {
    sub_1D10B0CAC(a1, v12);
    v16 = type metadata accessor for ImageAttachmentItem(0);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_1D12465A0(v12, v17 + OBJC_IVAR____TtC15HealthRecordsUI19ImageAttachmentItem_context);
    *(a2 + 24) = v16;
    *(a2 + 32) = sub_1D1247DE4(&qword_1EC60E088, type metadata accessor for ImageAttachmentItem);
    *a2 = v17;
  }

  else
  {
    sub_1D138F06C();
    v19 = sub_1D138F0AC();
    v20 = sub_1D13907FC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[0] = v22;
      v26[1] = v3;
      *v21 = 136446210;
      swift_getMetatypeMetadata();
      v23 = sub_1D13901EC();
      v25 = sub_1D11DF718(v23, v24, v26);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1D101F000, v19, v20, "%{public}s: Could not create ImageAttachmentItem with image data", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1D38882F0](v22, -1, -1);
      MEMORY[0x1D38882F0](v21, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D12406A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D108077C;

  return sub_1D1240754(a1, a2);
}

uint64_t sub_1D1240754(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v2[21] = type metadata accessor for AttachmentContext();
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D12407E8, 0, 0);
}

uint64_t sub_1D12407E8()
{
  v1 = (v0[20] + *(v0[21] + 24));
  v0[23] = *v1;
  v0[24] = v1[1];
  v0[25] = sub_1D138EDDC();
  v0[26] = v2;
  v0[27] = objc_opt_self();
  v0[28] = sub_1D13905AC();
  v0[29] = sub_1D139059C();
  v4 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D12408BC, v4, v3);
}

uint64_t sub_1D12408BC()
{
  v1 = *(v0 + 216);

  *(v0 + 240) = [v1 mainScreen];

  return MEMORY[0x1EEE6DFA0](sub_1D1240944, 0, 0);
}

uint64_t sub_1D1240944()
{
  *(v0 + 248) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D12409D0, v2, v1);
}

uint64_t sub_1D12409D0()
{
  v1 = *(v0 + 240);

  [v1 scale];
  *(v0 + 256) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1240A50, 0, 0);
}

uint64_t sub_1D1240A50()
{
  v1 = v0[32];
  v2 = objc_allocWithZone(MEMORY[0x1E697A0E0]);
  v3 = sub_1D138D3CC();
  v4 = sub_1D139012C();

  v5 = [v2 initWithData:v3 contentType:v4 size:-1 scale:33.0 representationTypes:{44.0, v1}];
  *(v0 + 33) = v5;

  [v5 setIconVariant_];
  v6 = [objc_opt_self() sharedGenerator];
  *(v0 + 34) = v6;
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 18;
  *(v0 + 3) = sub_1D1240C3C;
  v7 = swift_continuation_init();
  sub_1D1247D54();
  *(v0 + 17) = v8;
  *(v0 + 10) = MEMORY[0x1E69E9820];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_1D10BE304;
  *(v0 + 13) = &block_descriptor_25_0;
  *(v0 + 14) = v7;
  [v6 generateBestRepresentationForRequest:v5 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1240C3C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1D1240EA0;
  }

  else
  {
    v2 = sub_1D1240D4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1240D4C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);

  v6 = [v5 UIImage];
  v7 = [v5 type] != 0;
  sub_1D10B0CAC(v3, v2);
  v8 = type metadata accessor for ThumbnailAttachmentItem(0);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  sub_1D12465A0(v2, v9 + OBJC_IVAR____TtC15HealthRecordsUI23ThumbnailAttachmentItem_context);
  v4[3] = v8;
  v4[4] = sub_1D1247DE4(&qword_1EC60E080, type metadata accessor for ThumbnailAttachmentItem);

  *v4 = v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D1240EA0()
{
  v1 = v0[34];
  v2 = v0[33];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1240F2C()
{
  v1[20] = v0;
  v1[21] = *v0;
  v2 = sub_1D138D5EC();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = sub_1D138F0BC();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1241070, 0, 0);
}

uint64_t sub_1D1241070()
{
  v1 = v0[20];
  v2 = *(v1 + 40);
  v3 = *(v1 + 16);
  v0[28] = v3;
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_1D1241198;
  v4 = swift_continuation_init();
  sub_1D1246668();
  v0[17] = v5;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D12418D0;
  v0[13] = &block_descriptor_46;
  v0[14] = v4;
  [v2 getAttachmentsForObject:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1241198()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1D12417CC;
  }

  else
  {
    v2 = sub_1D12412A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D12412A8()
{
  v33 = v0;
  v1 = v0[19];
  v0[30] = v1;
  if (v1 >> 62)
  {
    if (sub_1D13910DC())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:

    v2 = swift_task_alloc();
    v0[31] = v2;
    v3 = sub_1D106F934(0, &qword_1EC60E058);
    v4 = type metadata accessor for AttachmentContext();
    *v2 = v0;
    v2[1] = sub_1D1241658;
    v5 = v0[20];

    return MEMORY[0x1EEE0DDB8](&unk_1D13AB7D8, v5, v1, v3, v4);
  }

  sub_1D138F06C();

  v6 = sub_1D138F0AC();
  v7 = sub_1D139081C();

  if (os_log_type_enabled(v6, v7))
  {
    v28 = v0[28];
    v29 = v0[26];
    v30 = v0[25];
    v31 = v0[27];
    v9 = v0[23];
    v8 = v0[24];
    v10 = v0[21];
    v11 = v0[22];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136446466;
    v0[18] = v10;
    swift_getMetatypeMetadata();
    v14 = sub_1D13901EC();
    v16 = sub_1D11DF718(v14, v15, &v32);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = [v28 UUID];
    sub_1D138D5CC();

    sub_1D1247DE4(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v18 = sub_1D13915CC();
    v20 = v19;
    (*(v9 + 8))(v8, v11);
    v21 = sub_1D11DF718(v18, v20, &v32);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1D101F000, v6, v7, "%{public}s: No attachments for record %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v13, -1, -1);
    MEMORY[0x1D38882F0](v12, -1, -1);

    (*(v29 + 8))(v31, v30);
  }

  else
  {
    v23 = v0[26];
    v22 = v0[27];
    v24 = v0[25];

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[1];
  v26 = MEMORY[0x1E69E7CC0];

  return v25(v26);
}

uint64_t sub_1D1241658(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 256) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D124184C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1D12417CC()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D124184C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D12418D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D1080EA4(0, &qword_1EE06B690);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_1D106F934(0, &qword_1EC60E058);
    **(*(v4 + 64) + 40) = sub_1D139045C();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1D12419C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v5 = sub_1D138D5EC();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();
  v6 = sub_1D138EE7C();
  v3[7] = v6;
  v3[8] = *(v6 - 8);
  v3[9] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v3[10] = v7;
  v3[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1241AF4, 0, 0);
}

uint64_t sub_1D1241AF4()
{
  *(v0 + 96) = sub_1D13909BC();
  v3 = (*MEMORY[0x1E696B3C0] + MEMORY[0x1E696B3C0]);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1D1241BAC;

  return v3();
}

uint64_t sub_1D1241BAC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {
    v5 = sub_1D1242230;
  }

  else
  {
    v5 = sub_1D1241CC4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1241CC4()
{
  v1 = [*(v0 + 88) contentType];
  sub_1D138EE0C();

  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1D1241D84;
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);

  return sub_1D1246EC4(v4, v3, v5);
}

uint64_t sub_1D1241D84(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 64);
  v7 = *(*v3 + 56);
  v4[18] = a1;
  v4[19] = a2;
  v4[20] = v2;

  (*(v6 + 8))(v5, v7);
  if (v2)
  {
    v8 = sub_1D124219C;
  }

  else
  {
    v8 = sub_1D1241EFC;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D1241EFC()
{
  v1 = (v0 + 88);
  v2 = &selRef_name;
  v3 = [*(v0 + 88) name];
  v4 = sub_1D139016C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v1 = (*(v0 + 24) + 16);
    v2 = &selRef_preferredDisplayName;
  }

  v8 = (v0 + 152);
  v9 = *(v0 + 152);
  v10 = *(v0 + 88);
  v11 = [*v1 *v2];
  v12 = sub_1D139016C();
  v40 = v13;
  v41 = v12;

  v14 = [v10 identifier];
  sub_1D138D5CC();

  v15 = v9 >> 60;
  if (v9 >> 60 == 15)
  {
    v8 = (v0 + 120);
    v16 = (v0 + 112);
    sub_1D1083D58(*(v0 + 112), *(v0 + 120));
  }

  else
  {
    v16 = (v0 + 144);
  }

  v39 = *v8;
  v17 = *v16;
  v18 = *(v0 + 88);
  sub_1D11FAC84(*(v0 + 144), *(v0 + 152));
  v19 = sub_1D12422BC(v18);
  v21 = v20;
  if (v15 <= 0xE)
  {
    v26 = *(v0 + 144);
    v25 = *(v0 + 152);
    v28 = *(v0 + 112);
    v27 = *(v0 + 120);
    sub_1D138EE1C();
    sub_1D10847DC(v26, v25);
    sub_1D1083DAC(v28, v27);
  }

  else
  {
    v23 = *(v0 + 112);
    v22 = *(v0 + 120);
    v24 = [*(v0 + 88) contentType];
    sub_1D138EE0C();
    sub_1D1083DAC(v23, v22);
  }

  v29 = *(v0 + 72);
  v31 = *(v0 + 56);
  v30 = *(v0 + 64);
  v32 = *(v0 + 16);
  (*(*(v0 + 40) + 32))(v32, *(v0 + 48), *(v0 + 32));
  v33 = type metadata accessor for AttachmentContext();
  v34 = (v32 + v33[5]);
  *v34 = v41;
  v34[1] = v40;
  v35 = (v32 + v33[6]);
  *v35 = v17;
  v35[1] = v39;
  v36 = (v32 + v33[7]);
  *v36 = v19;
  v36[1] = v21;
  (*(v30 + 32))(v32 + v33[8], v29, v31);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1D124219C()
{
  sub_1D1083DAC(v0[14], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D1242230()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D12422BC(void *a1)
{
  sub_1D1246604(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_1D138D57C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 metadata];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  v13 = sub_1D138FFFC();

  v14 = sub_1D139016C();
  if (!*(v13 + 16))
  {

LABEL_10:
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_11;
  }

  v16 = v1;
  v17 = sub_1D11362EC(v14, v15);
  v19 = v18;

  if ((v19 & 1) == 0)
  {

    v1 = v16;
    goto LABEL_10;
  }

  sub_1D109F94C(*(v13 + 56) + 32 * v17, v37);

  v20 = swift_dynamicCast();
  (*(v7 + 56))(v5, v20 ^ 1u, 1, v6);
  v1 = v16;
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_11:
    sub_1D109AC18(v5);
LABEL_12:
    v33 = *(v1 + 24);

    return v33;
  }

  (*(v7 + 32))(v10, v5, v6);
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v21 = sub_1D138D1CC();
  v35 = v22;
  v36 = v21;
  v23 = sub_1D124013C();
  v24 = sub_1D138D4EC();
  v25 = [v23 stringFromDate_];

  v26 = sub_1D139016C();
  v28 = v27;

  sub_1D138D1CC();
  sub_1D1193B98(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D139E710;
  v30 = MEMORY[0x1E69E6158];
  *(v29 + 56) = MEMORY[0x1E69E6158];
  v31 = sub_1D1089930();
  v32 = v35;
  *(v29 + 32) = v36;
  *(v29 + 40) = v32;
  *(v29 + 96) = v30;
  *(v29 + 104) = v31;
  *(v29 + 64) = v31;
  *(v29 + 72) = v26;
  *(v29 + 80) = v28;
  v33 = sub_1D13901AC();

  (*(v7 + 8))(v10, v6);
  return v33;
}

uint64_t sub_1D124273C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D124275C, 0, 0);
}

uint64_t sub_1D124275C()
{
  v10 = v0;
  if (*(v0[2] + 16))
  {
    v9 = v0[2];

    sub_1D1243EF0(&v9);
    v4 = v9;
    v0[4] = v9;

    v5 = swift_task_alloc();
    v0[5] = v5;
    v6 = type metadata accessor for AttachmentContext();
    v7 = sub_1D138E52C();
    *v5 = v0;
    v5[1] = sub_1D12428D8;
    v8 = v0[3];

    return MEMORY[0x1EEE0DDC0](&unk_1D13AB7B8, v8, v4, v6, v7);
  }

  else
  {
    v1 = v0[1];
    v2 = MEMORY[0x1E69E7CC0];

    return v1(v2);
  }
}

uint64_t sub_1D12428D8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1242A34, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1D1242A34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1242AA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  v4 = swift_task_alloc();
  *(v2 + 104) = v4;
  *v4 = v2;
  v4[1] = sub_1D1242B44;

  return sub_1D1242E3C(v2 + 56, a2);
}

uint64_t sub_1D1242B44()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D1242E24;
  }

  else
  {
    v2 = sub_1D1242C58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1242C58()
{
  v1 = v0[12];
  v2 = (v0 + 7);
  if (v0[10])
  {
    sub_1D102CC18(v2, (v0 + 2));
    sub_1D1193B98(0, &qword_1EC60B640, &qword_1EC60F6A0, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D139E700;
    v4 = v0[5];
    v5 = v0[6];
    v6 = __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v4);
    *(v3 + 56) = v4;
    *(v3 + 64) = *(*(v5 + 8) + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
    sub_1D138E4DC();
    v8 = sub_1D138E52C();
    (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  }

  else
  {
    sub_1D1246518(v2);
    v9 = sub_1D138E52C();
    (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D1242E3C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v3[14] = *v2;
  sub_1D13901DC();
  v3[15] = swift_task_alloc();
  v4 = sub_1D138EE7C();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for AttachmentContext();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v5 = sub_1D138F0BC();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D124301C, 0, 0);
}

uint64_t sub_1D124301C()
{
  v98 = v0;
  v1 = v0;
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[12];
  v5 = (v4 + *(v0[20] + 24));
  v7 = *v5;
  v6 = v5[1];
  sub_1D138F06C();
  sub_1D10B0CAC(v4, v2);
  sub_1D10B0CAC(v4, v3);
  sub_1D1083D58(v7, v6);
  v8 = sub_1D138F0AC();
  v9 = sub_1D139081C();
  sub_1D1083DAC(v7, v6);
  if (os_log_type_enabled(v8, v9))
  {
    v92 = v1[25];
    v93 = v1[24];
    v94 = v1[28];
    v11 = v1[22];
    v10 = v1[23];
    v12 = v1[20];
    v13 = v1[14];
    v14 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v97 = v91;
    *v14 = 136446978;
    v1[10] = v13;
    swift_getMetatypeMetadata();
    v15 = sub_1D13901EC();
    v17 = sub_1D11DF718(v15, v16, &v97);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = (v10 + *(v12 + 20));
    v19 = *v18;
    v20 = v18[1];

    sub_1D1247BFC(v10, type metadata accessor for AttachmentContext);
    v21 = sub_1D11DF718(v19, v20, &v97);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2080;
    v22 = sub_1D138EDDC();
    v24 = v23;
    sub_1D1247BFC(v11, type metadata accessor for AttachmentContext);
    v25 = sub_1D11DF718(v22, v24, &v97);

    *(v14 + 24) = v25;
    *(v14 + 32) = 2080;
    v26 = sub_1D138D3AC();
    v28 = sub_1D11DF718(v26, v27, &v97);

    *(v14 + 34) = v28;
    _os_log_impl(&dword_1D101F000, v8, v9, "%{public}s: Creating data source item for attachment: %s, content type: %s, data: %s", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v91, -1, -1);
    MEMORY[0x1D38882F0](v14, -1, -1);

    v29 = v94;
    v95 = *(v92 + 8);
    v95(v29, v93);
  }

  else
  {
    v30 = v1[28];
    v31 = v1[24];
    v32 = v1[25];
    v34 = v1[22];
    v33 = v1[23];

    sub_1D1247BFC(v34, type metadata accessor for AttachmentContext);
    sub_1D1247BFC(v33, type metadata accessor for AttachmentContext);
    v95 = *(v32 + 8);
    v95(v30, v31);
  }

  v36 = v1[17];
  v35 = v1[18];
  v37 = v1[16];
  (*(v36 + 16))(v1[19], v1[12] + *(v1[20] + 32), v37);
  sub_1D138EE1C();
  sub_1D1247DE4(&qword_1EC60E030, MEMORY[0x1E69E8450]);
  v38 = sub_1D139011C();
  v39 = *(v36 + 8);
  v39(v35, v37);
  v40 = v1[19];
  if (v38)
  {
    v39(v1[19], v1[16]);
    v41 = objc_allocWithZone(MEMORY[0x1E6978028]);
    v42 = sub_1D138D3CC();
    v43 = [v41 initWithData_];

    if (v43)
    {
      v44 = v1[12];
      v45 = v1[13];
      v46 = v1[11];
      v47 = type metadata accessor for PDFAttachmentItem(0);
      v46[3] = v47;
      v46[4] = sub_1D1247DE4(&qword_1EC60E040, type metadata accessor for PDFAttachmentItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
      sub_1D10B0CAC(v44, boxed_opaque_existential_1 + *(v47 + 20));
      swift_unknownObjectWeakLoadStrong();
      v49 = *(v45 + 88);
      v50 = boxed_opaque_existential_1 + *(v47 + 24);
      *(v50 + 1) = 0;
      swift_unknownObjectWeakInit();
      sub_1D138E00C();
      swift_allocObject();
      *boxed_opaque_existential_1 = sub_1D138DFFC();
      *(v50 + 1) = v49;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
LABEL_21:

      v90 = v1[1];

      return v90();
    }

    sub_1D138F06C();
    v68 = sub_1D138F0AC();
    v69 = sub_1D13907FC();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v1[27];
    v72 = v1[24];
    if (v70)
    {
      v73 = v1[14];
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v97 = v75;
      *v74 = 136446210;
      v1[9] = v73;
      swift_getMetatypeMetadata();
      v76 = sub_1D13901EC();
      v78 = sub_1D11DF718(v76, v77, &v97);

      *(v74 + 4) = v78;
      v79 = "%{public}s: Could not create PDFAttachmentItem with PDF data";
LABEL_19:
      _os_log_impl(&dword_1D101F000, v68, v69, v79, v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x1D38882F0](v75, -1, -1);
      MEMORY[0x1D38882F0](v74, -1, -1);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v51 = v1[18];
  v52 = v1[16];
  sub_1D138EE6C();
  v53 = sub_1D139011C();
  v39(v51, v52);
  v39(v40, v52);
  if (v53)
  {
    sub_1D13901BC();
    v54 = sub_1D139018C();
    if (v55)
    {
      v56 = v1[21];
      v58 = v1[11];
      v57 = v1[12];
      v1[2] = v54;
      v1[3] = v55;
      v1[4] = 28252;
      v1[5] = 0xE200000000000000;
      v1[6] = 10;
      v1[7] = 0xE100000000000000;
      sub_1D10940C8();
      v59 = sub_1D1390FBC();
      v61 = v60;

      sub_1D10B0CAC(v57, v56);
      v62 = type metadata accessor for TextAttachmentItem(0);
      v63 = swift_allocObject();
      *(v63 + 16) = v59;
      *(v63 + 24) = v61;
      sub_1D12465A0(v56, v63 + OBJC_IVAR____TtC15HealthRecordsUI18TextAttachmentItem_context);
      v58[3] = v62;
      v58[4] = sub_1D1247DE4(&qword_1EC60E038, type metadata accessor for TextAttachmentItem);
      *v58 = v63;
      goto LABEL_21;
    }

    sub_1D138F06C();
    v68 = sub_1D138F0AC();
    v69 = sub_1D13907FC();
    v84 = os_log_type_enabled(v68, v69);
    v71 = v1[26];
    v72 = v1[24];
    if (v84)
    {
      v85 = v1[14];
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v97 = v75;
      *v74 = 136446210;
      v1[8] = v85;
      swift_getMetatypeMetadata();
      v86 = sub_1D13901EC();
      v88 = sub_1D11DF718(v86, v87, &v97);

      *(v74 + 4) = v88;
      v79 = "%{public}s: Could not create TextAttachmentItem with plain text data";
      goto LABEL_19;
    }

LABEL_20:

    v95(v71, v72);
    v89 = v1[11];
    *(v89 + 32) = 0;
    *v89 = 0u;
    *(v89 + 16) = 0u;
    goto LABEL_21;
  }

  v64 = v1[18];
  v65 = v1[16];
  sub_1D138EE4C();
  v66 = sub_1D138EE5C();
  v39(v64, v65);
  v67 = v1[13];
  if (v66)
  {
    (*(v67 + 48))(v1[12]);
    goto LABEL_21;
  }

  v96 = (*(v67 + 64) + **(v67 + 64));
  v80 = swift_task_alloc();
  v1[29] = v80;
  *v80 = v1;
  v80[1] = sub_1D12439D0;
  v81 = v1[11];
  v82 = v1[12];

  return v96(v81, v82);
}

uint64_t sub_1D12439D0()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1D1243BB4;
  }

  else
  {
    v2 = sub_1D1243AE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1243AE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1243BB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1243C84()
{

  sub_1D102CC38((v0 + 10));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AttachmentContext()
{
  result = qword_1EC60E008;
  if (!qword_1EC60E008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1243D84()
{
  result = sub_1D138D5EC();
  if (v1 <= 0x3F)
  {
    result = sub_1D138EE7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D1243EC8()
{
  qword_1EC60DFE8 = UIEdgeInsetsInsetRect_0();
  unk_1EC60DFF0 = v0;
  qword_1EC60DFF8 = v1;
  unk_1EC60E000 = v2;
}

void sub_1D1243EF0(void **a1)
{
  v2 = *(type metadata accessor for AttachmentContext() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1245FB4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D1243F98(v5);
  *a1 = v3;
}

void sub_1D1243F98(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D13915BC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for AttachmentContext();
        v6 = sub_1D13904DC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AttachmentContext() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1244418(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D12440C4(0, v2, 1, a1);
  }
}

void sub_1D12440C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AttachmentContext();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v43 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = objc_opt_self();
    v19 = *(v9 + 72);
    v20 = v17 + v19 * (a3 - 1);
    v48 = -v19;
    v49 = v17;
    v21 = a1 - a3;
    v42 = v19;
    v22 = v17 + v19 * a3;
    v51 = v8;
    v52 = v16;
LABEL_6:
    v46 = v20;
    v47 = a3;
    v44 = v22;
    v45 = v21;
    v23 = v21;
    while (1)
    {
      v54 = v23;
      sub_1D10B0CAC(v22, v16);
      sub_1D10B0CAC(v20, v13);
      v53 = *(v8 + 32);
      v24 = sub_1D138EDEC();
      v25 = [v18 sortOrderForType_];

      v26 = sub_1D138EDEC();
      v27 = [v18 sortOrderForType_];

      if (v25 == v27)
      {
        v8 = v51;
        v16 = v52;
        v28 = *(v51 + 20);
        v29 = *&v52[v28];
        v30 = *&v52[v28 + 8];
        v31 = &v13[v28];
        if (v29 == *v31 && v30 == *(v31 + 1))
        {
          sub_1D1247BFC(v13, type metadata accessor for AttachmentContext);
          sub_1D1247BFC(v16, type metadata accessor for AttachmentContext);
LABEL_5:
          a3 = v47 + 1;
          v20 = v46 + v42;
          v21 = v45 - 1;
          v22 = v44 + v42;
          if (v47 + 1 == v43)
          {
            return;
          }

          goto LABEL_6;
        }

        v33 = sub_1D139162C();
      }

      else
      {
        v34 = v52;
        v35 = sub_1D138EDEC();
        LODWORD(v53) = [v18 sortOrderForType_];

        v36 = sub_1D138EDEC();
        v37 = [v18 sortOrderForType_];

        v33 = v53 < v37;
        v8 = v51;
        v16 = v34;
      }

      sub_1D1247BFC(v13, type metadata accessor for AttachmentContext);
      sub_1D1247BFC(v16, type metadata accessor for AttachmentContext);
      v38 = v54;
      if ((v33 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v39 = v50;
      sub_1D12465A0(v22, v50);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D12465A0(v39, v20);
      v20 += v48;
      v22 += v48;
      v40 = __CFADD__(v38, 1);
      v23 = v38 + 1;
      if (v40)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D1244418(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v150 = a1;
  v8 = type metadata accessor for AttachmentContext();
  v159 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v152 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v166 = &v145 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v145 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v145 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v145 - v19;
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v146 = &v145 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v145 = &v145 - v26;
  v161 = a3;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_112:
    a3 = *v150;
    if (!*v150)
    {
      goto LABEL_151;
    }

    v45 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v140 = v45;
LABEL_115:
      v172 = v140;
      v45 = *(v140 + 2);
      if (v45 >= 2)
      {
        while (*v161)
        {
          v141 = *&v140[16 * v45];
          v142 = v140;
          v143 = *&v140[16 * v45 + 24];
          sub_1D1245034(*v161 + *(v159 + 72) * v141, *v161 + *(v159 + 72) * *&v140[16 * v45 + 16], *v161 + *(v159 + 72) * v143, a3);
          if (v5)
          {
            goto LABEL_123;
          }

          if (v143 < v141)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = sub_1D1245848(v142);
          }

          if ((v45 - 2) >= *(v142 + 2))
          {
            goto LABEL_139;
          }

          v144 = &v142[16 * v45];
          *v144 = v141;
          *(v144 + 1) = v143;
          v172 = v142;
          sub_1D12457BC(v45 - 1);
          v140 = v172;
          v45 = *(v172 + 2);
          if (v45 <= 1)
          {
            goto LABEL_123;
          }
        }

        goto LABEL_149;
      }

LABEL_123:

      return;
    }

LABEL_145:
    v140 = sub_1D1245848(v45);
    goto LABEL_115;
  }

  v160 = v25;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v149 = a4;
  v163 = v17;
  v158 = v20;
  v169 = v14;
  while (1)
  {
    v162 = v27;
    v153 = v29;
    if (v28 + 1 >= v27)
    {
      v57 = v28;
      v45 = v28 + 1;
    }

    else
    {
      v148 = v5;
      v31 = *(v159 + 72);
      v32 = *v161 + v31 * (v28 + 1);
      v170 = *v161;
      v30 = v170;
      v171 = v32;
      v33 = v145;
      sub_1D10B0CAC(v32, v145);
      v34 = v146;
      sub_1D10B0CAC(v30 + v31 * v28, v146);
      LODWORD(v164) = sub_1D1246308(v33, v34);
      sub_1D1247BFC(v34, type metadata accessor for AttachmentContext);
      v35 = v33;
      v36 = v171;
      sub_1D1247BFC(v35, type metadata accessor for AttachmentContext);
      v147 = v28;
      v37 = v28 + 2;
      v165 = v31;
      a3 = v170 + v31 * (v28 + 2);
      while (1)
      {
        v45 = v162;
        if (v162 == v37)
        {
          break;
        }

        v170 = v37;
        v167 = a3;
        v46 = v160;
        sub_1D10B0CAC(a3, v160);
        v171 = v36;
        sub_1D10B0CAC(v36, v20);
        v47 = objc_opt_self();
        v48 = sub_1D138EDEC();
        v49 = [v47 sortOrderForType_];

        v50 = sub_1D138EDEC();
        v51 = [v47 sortOrderForType_];

        if (v49 == v51)
        {
          v52 = *(v8 + 20);
          v53 = *(v46 + v52);
          v54 = *(v46 + v52 + 8);
          v20 = v158;
          v55 = &v158[v52];
          if (v53 == *v55 && v54 == *(v55 + 1))
          {
            v42 = 0;
          }

          else
          {
            v42 = sub_1D139162C();
          }

          v14 = v169;
          v17 = v163;
          v46 = v160;
        }

        else
        {
          v38 = sub_1D138EDEC();
          v39 = [v47 sortOrderForType_];

          v20 = v158;
          v40 = sub_1D138EDEC();
          v41 = [v47 sortOrderForType_];

          v42 = v39 < v41;
          v14 = v169;
          v17 = v163;
        }

        v43 = v171;
        v44 = v167;
        sub_1D1247BFC(v20, type metadata accessor for AttachmentContext);
        sub_1D1247BFC(v46, type metadata accessor for AttachmentContext);
        v37 = v170 + 1;
        a3 = v44 + v165;
        v36 = v43 + v165;
        if ((v164 ^ v42))
        {
          v45 = v170;
          break;
        }
      }

      v5 = v148;
      a4 = v149;
      v57 = v147;
      if (v164)
      {
        if (v45 < v147)
        {
          goto LABEL_142;
        }

        if (v147 < v45)
        {
          v58 = v45;
          v59 = v165 * (v45 - 1);
          v60 = v58 * v165;
          v162 = v58;
          v61 = v147;
          v62 = v147 * v165;
          do
          {
            if (v61 != --v58)
            {
              v63 = *v161;
              if (!*v161)
              {
                goto LABEL_148;
              }

              a3 = v63 + v62;
              sub_1D12465A0(v63 + v62, v152);
              if (v62 < v59 || a3 >= v63 + v60)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v62 != v59)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D12465A0(v152, v63 + v59);
              v17 = v163;
            }

            ++v61;
            v59 -= v165;
            v60 -= v165;
            v62 += v165;
          }

          while (v61 < v58);
          v5 = v148;
          a4 = v149;
          v57 = v147;
          v45 = v162;
        }
      }
    }

    v64 = v161[1];
    if (v45 < v64)
    {
      if (__OFSUB__(v45, v57))
      {
        goto LABEL_141;
      }

      if (v45 - v57 < a4)
      {
        break;
      }
    }

LABEL_59:
    if (v45 < v57)
    {
      goto LABEL_140;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154 = v45;
    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v153;
    }

    else
    {
      v29 = sub_1D10F7610(0, *(v153 + 2) + 1, 1, v153);
    }

    a3 = *(v29 + 2);
    v94 = *(v29 + 3);
    v45 = a3 + 1;
    if (a3 >= v94 >> 1)
    {
      v29 = sub_1D10F7610((v94 > 1), a3 + 1, 1, v29);
    }

    *(v29 + 2) = v45;
    v95 = &v29[16 * a3];
    v96 = v154;
    *(v95 + 4) = v57;
    *(v95 + 5) = v96;
    v97 = *v150;
    if (!*v150)
    {
      goto LABEL_150;
    }

    if (a3)
    {
      while (1)
      {
        v98 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v99 = *(v29 + 4);
          v100 = *(v29 + 5);
          v109 = __OFSUB__(v100, v99);
          v101 = v100 - v99;
          v102 = v109;
LABEL_79:
          if (v102)
          {
            goto LABEL_129;
          }

          v115 = &v29[16 * v45];
          v117 = *v115;
          v116 = *(v115 + 1);
          v118 = __OFSUB__(v116, v117);
          v119 = v116 - v117;
          v120 = v118;
          if (v118)
          {
            goto LABEL_132;
          }

          v121 = &v29[16 * v98 + 32];
          v123 = *v121;
          v122 = *(v121 + 1);
          v109 = __OFSUB__(v122, v123);
          v124 = v122 - v123;
          if (v109)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v119, v124))
          {
            goto LABEL_136;
          }

          if (v119 + v124 >= v101)
          {
            if (v101 < v124)
            {
              v98 = v45 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v125 = &v29[16 * v45];
        v127 = *v125;
        v126 = *(v125 + 1);
        v109 = __OFSUB__(v126, v127);
        v119 = v126 - v127;
        v120 = v109;
LABEL_93:
        if (v120)
        {
          goto LABEL_131;
        }

        v128 = &v29[16 * v98];
        v130 = *(v128 + 4);
        v129 = *(v128 + 5);
        v109 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v109)
        {
          goto LABEL_134;
        }

        if (v131 < v119)
        {
          goto LABEL_3;
        }

LABEL_100:
        a3 = v98 - 1;
        if (v98 - 1 >= v45)
        {
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
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v161)
        {
          goto LABEL_147;
        }

        v136 = v29;
        v45 = *&v29[16 * a3 + 32];
        v137 = *&v29[16 * v98 + 40];
        sub_1D1245034(*v161 + *(v159 + 72) * v45, *v161 + *(v159 + 72) * *&v29[16 * v98 + 32], *v161 + *(v159 + 72) * v137, v97);
        if (v5)
        {
          goto LABEL_123;
        }

        if (v137 < v45)
        {
          goto LABEL_125;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v138 = v136;
        }

        else
        {
          v138 = sub_1D1245848(v136);
        }

        v17 = v163;
        if (a3 >= *(v138 + 2))
        {
          goto LABEL_126;
        }

        v139 = &v138[16 * a3];
        *(v139 + 4) = v45;
        *(v139 + 5) = v137;
        v172 = v138;
        sub_1D12457BC(v98);
        v29 = v172;
        v45 = *(v172 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v103 = &v29[16 * v45 + 32];
      v104 = *(v103 - 64);
      v105 = *(v103 - 56);
      v109 = __OFSUB__(v105, v104);
      v106 = v105 - v104;
      if (v109)
      {
        goto LABEL_127;
      }

      v108 = *(v103 - 48);
      v107 = *(v103 - 40);
      v109 = __OFSUB__(v107, v108);
      v101 = v107 - v108;
      v102 = v109;
      if (v109)
      {
        goto LABEL_128;
      }

      v110 = &v29[16 * v45];
      v112 = *v110;
      v111 = *(v110 + 1);
      v109 = __OFSUB__(v111, v112);
      v113 = v111 - v112;
      if (v109)
      {
        goto LABEL_130;
      }

      v109 = __OFADD__(v101, v113);
      v114 = v101 + v113;
      if (v109)
      {
        goto LABEL_133;
      }

      if (v114 >= v106)
      {
        v132 = &v29[16 * v98 + 32];
        v134 = *v132;
        v133 = *(v132 + 1);
        v109 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v109)
        {
          goto LABEL_137;
        }

        if (v101 < v135)
        {
          v98 = v45 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    v27 = v161[1];
    v28 = v154;
    a4 = v149;
    v20 = v158;
    if (v154 >= v27)
    {
      goto LABEL_112;
    }
  }

  if (__OFADD__(v57, a4))
  {
    goto LABEL_143;
  }

  if (v57 + a4 < v64)
  {
    v64 = v57 + a4;
  }

  if (v64 < v57)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v154 = v64;
  if (v45 == v64)
  {
    goto LABEL_59;
  }

  v148 = v5;
  v65 = *v161;
  v66 = objc_opt_self();
  v67 = *(v159 + 72);
  v68 = v65 + v67 * (v45 - 1);
  v164 = -v67;
  v147 = v57;
  v69 = v57 - v45;
  v165 = v65;
  v151 = v67;
  v70 = v65 + v45 * v67;
  v71 = &selRef_subscriberIdentifier;
  v167 = v66;
  v168 = v8;
LABEL_45:
  v162 = v45;
  v155 = v70;
  v156 = v69;
  v72 = v69;
  v157 = v68;
  a3 = v68;
  while (1)
  {
    v171 = v72;
    sub_1D10B0CAC(v70, v17);
    sub_1D10B0CAC(a3, v14);
    v170 = *(v8 + 32);
    v73 = sub_1D138EDEC();
    v74 = [v66 v71[234]];

    v75 = sub_1D138EDEC();
    v76 = [v66 v71[234]];
    v77 = v71;
    v78 = v17;
    v79 = v76;

    if (v74 == v79)
    {
      v8 = v168;
      v14 = v169;
      v80 = *(v168 + 20);
      v81 = *(v78 + v80);
      v82 = *(v78 + v80 + 8);
      v83 = &v169[v80];
      v84 = v81 == *v83 && v82 == *(v83 + 1);
      v17 = v78;
      if (v84)
      {
        a3 = type metadata accessor for AttachmentContext;
        sub_1D1247BFC(v169, type metadata accessor for AttachmentContext);
        sub_1D1247BFC(v78, type metadata accessor for AttachmentContext);
LABEL_43:
        v71 = &selRef_subscriberIdentifier;
        v66 = v167;
LABEL_44:
        v45 = v162 + 1;
        v68 = v157 + v151;
        v69 = v156 - 1;
        v70 = v155 + v151;
        if (v162 + 1 == v154)
        {
          v5 = v148;
          v45 = v154;
          v57 = v147;
          goto LABEL_59;
        }

        goto LABEL_45;
      }

      v85 = sub_1D139162C();
    }

    else
    {
      v86 = sub_1D138EDEC();
      v87 = [v66 v77 + 844];

      v88 = v77;
      v14 = v169;
      v89 = sub_1D138EDEC();
      LODWORD(v88) = [v66 v88 + 844];

      v85 = v87 < v88;
      v8 = v168;
      v17 = v78;
    }

    sub_1D1247BFC(v14, type metadata accessor for AttachmentContext);
    sub_1D1247BFC(v17, type metadata accessor for AttachmentContext);
    if ((v85 & 1) == 0)
    {
      goto LABEL_43;
    }

    v71 = &selRef_subscriberIdentifier;
    v66 = v167;
    v90 = v171;
    if (!v165)
    {
      break;
    }

    v91 = v166;
    sub_1D12465A0(v70, v166);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D12465A0(v91, a3);
    a3 += v164;
    v70 += v164;
    v92 = __CFADD__(v90, 1);
    v72 = v90 + 1;
    if (v92)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

void sub_1D1245034(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v92 = type metadata accessor for AttachmentContext();
  MEMORY[0x1EEE9AC00](v92);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v77 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_78;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_79;
  }

  v23 = (a2 - a1) / v21;
  v95 = a1;
  v94 = a4;
  v79 = v5;
  if (v23 >= v22 / v21)
  {
    v80 = v17;
    v25 = v22 / v21 * v21;
    v84 = v12;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v25;
    if (v25 >= 1)
    {
      v50 = -v21;
      v51 = 0x1FC867000;
      v52 = a4 + v25;
      v53 = v80;
      v89 = a1;
      v90 = a4;
      v88 = v50;
      do
      {
        v78 = v49;
        v54 = a2;
        a2 += v50;
        v91 = a2;
        v82 = v54;
        while (1)
        {
          if (v54 <= a1)
          {
            v95 = v54;
            v93 = v78;
            goto LABEL_76;
          }

          v86 = a3;
          v87 = v52;
          v81 = v49;
          v85 = (v52 + v50);
          v55 = v84;
          v56 = v51;
          sub_1D10B0CAC(v52 + v50, v84);
          sub_1D10B0CAC(a2, v53);
          v57 = objc_opt_self();
          v58 = v92;
          v59 = v57;
          v83 = *(v92 + 32);
          v60 = sub_1D138EDEC();
          v61 = [v59 (v56 + 844)];

          v62 = sub_1D138EDEC();
          v63 = [v59 (v56 + 844)];

          if (v61 == v63)
          {
            v64 = *(v58 + 20);
            v65 = *(v55 + v64);
            v66 = *(v55 + v64 + 8);
            v67 = (v53 + v64);
            v68 = v65 == *v67 && v66 == v67[1];
            v69 = v68 ? 0 : sub_1D139162C();
            v74 = v90;
            a2 = v91;
            v53 = v80;
            a1 = v89;
            v55 = v84;
          }

          else
          {
            v70 = sub_1D138EDEC();
            v71 = [v59 (v56 + 844)];

            v72 = sub_1D138EDEC();
            v73 = [v59 (v56 + 844)];

            v69 = v71 < v73;
            v74 = v90;
            a2 = v91;
            a1 = v89;
          }

          v75 = v86;
          a3 = v86 + v88;
          sub_1D1247BFC(v53, type metadata accessor for AttachmentContext);
          sub_1D1247BFC(v55, type metadata accessor for AttachmentContext);
          if (v69)
          {
            break;
          }

          v76 = v85;
          v49 = v85;
          if (v75 < v87 || a3 >= v87)
          {
            swift_arrayInitWithTakeFrontToBack();
            v50 = v88;
          }

          else
          {
            v50 = v88;
            if (v75 != v87)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = v49;
          v51 = 0x1FC867000uLL;
          v54 = v82;
          if (v76 <= v74)
          {
            a2 = v82;
            goto LABEL_75;
          }
        }

        if (v75 < v82 || a3 >= v82)
        {
          swift_arrayInitWithTakeFrontToBack();
          v49 = v81;
          v50 = v88;
        }

        else
        {
          v49 = v81;
          v50 = v88;
          if (v75 != v82)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v52 = v87;
        v51 = 0x1FC867000;
      }

      while (v87 > v74);
    }

LABEL_75:
    v95 = a2;
    v93 = v49;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v88 = a4 + v24;
    v93 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v86 = v21;
      v87 = a3;
      v85 = v19;
      do
      {
        v89 = a1;
        v91 = a2;
        sub_1D10B0CAC(a2, v19);
        v90 = a4;
        sub_1D10B0CAC(a4, v15);
        v27 = v15;
        v28 = objc_opt_self();
        v29 = v92;
        v30 = sub_1D138EDEC();
        v31 = [v28 sortOrderForType_];

        v32 = sub_1D138EDEC();
        v33 = [v28 sortOrderForType_];

        if (v31 == v33)
        {
          v34 = *(v29 + 20);
          v35 = *&v85[v34];
          v36 = *&v85[v34 + 8];
          v37 = &v27[v34];
          v38 = v35 == *v37 && v36 == *(v37 + 1);
          v15 = v27;
          v19 = v85;
          if (v38)
          {
            sub_1D1247BFC(v15, type metadata accessor for AttachmentContext);
            sub_1D1247BFC(v19, type metadata accessor for AttachmentContext);
            a4 = v90;
            a2 = v91;
            v40 = v87;
LABEL_34:
            v46 = v86;
            v48 = a4 + v86;
            v47 = v89;
            if (v89 < a4 || v89 >= v48)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v89 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v94 = v48;
            a4 += v46;
            goto LABEL_42;
          }

          v39 = sub_1D139162C();
          a4 = v90;
          a2 = v91;
          v40 = v87;
        }

        else
        {
          v41 = v85;
          v42 = sub_1D138EDEC();
          v43 = [v28 sortOrderForType_];

          v44 = sub_1D138EDEC();
          v45 = [v28 sortOrderForType_];

          v39 = v43 < v45;
          a4 = v90;
          a2 = v91;
          v15 = v27;
          v19 = v41;
          v40 = v87;
        }

        sub_1D1247BFC(v15, type metadata accessor for AttachmentContext);
        sub_1D1247BFC(v19, type metadata accessor for AttachmentContext);
        if ((v39 & 1) == 0)
        {
          goto LABEL_34;
        }

        v46 = v86;
        v47 = v89;
        if (v89 < a2 || v89 >= a2 + v86)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v89 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v46;
LABEL_42:
        a1 = v47 + v46;
        v95 = a1;
      }

      while (a4 < v88 && a2 < v40);
    }
  }

LABEL_76:
  sub_1D12458A4(&v95, &v94, &v93, type metadata accessor for AttachmentContext);
}

uint64_t sub_1D12457BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D1245848(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}