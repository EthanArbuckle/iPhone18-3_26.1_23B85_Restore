void *sub_1D118F1F8(void *a1)
{
  v1 = a1;
  v32[4] = sub_1D1105C7C(a1);
  v32[5] = sub_1D1105C94(v1);
  v32[6] = sub_1D118EDD8(v1);
  v32[7] = sub_1D118EFE8(v1);
  v32[8] = sub_1D1380480(v1);
  if (qword_1EE06AD00 != -1)
  {
LABEL_14:
    swift_once();
  }

  v2 = sub_1D138D1CC();
  v30 = v3;
  sub_1D106F934(0, &qword_1EC609BE8);
  v4 = [v1 recordedDate];
  v5 = [v1 meaningfulDateTitle];
  v6 = sub_1D139016C();
  v8 = v7;

  v32[9] = sub_1D11EDE68(v2, v30, v4, v6, v8);
  v9 = sub_1D138D1CC();
  v11 = v10;
  v12 = [v1 onsetDate];
  v13 = [v1 meaningfulDateTitle];
  v14 = sub_1D139016C();
  v16 = v15;

  v32[10] = sub_1D11EDE68(v9, v11, v12, v14, v16);
  v17 = sub_1D138D1CC();
  v19 = v18;
  v20 = [v1 lastOccurrenceDate];
  v21 = [v1 meaningfulDateTitle];
  v22 = sub_1D139016C();
  v24 = v23;

  v32[11] = sub_1D11EDE68(v17, v19, v20, v22, v24);
  v32[12] = sub_1D1270740(v1);
  v25 = 0;
  v32[13] = sub_1D128719C(v1);
  v1 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
LABEL_3:
  if (v25 <= 0xA)
  {
    v26 = 10;
  }

  else
  {
    v26 = v25;
  }

  while (v25 != 10)
  {
    if (v26 == v25)
    {
      __break(1u);
      goto LABEL_14;
    }

    v27 = v32[v25++ + 4];
    if (v27)
    {
      v28 = v27;
      MEMORY[0x1D3885D90]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v1 = v31;
      goto LABEL_3;
    }
  }

  sub_1D118F960(0, &qword_1EC60A678, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1D118F5D4(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_46:
    v3 = sub_1D13910DC();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v35 = v2 & 0xFFFFFFFFFFFFFF8;
      v36 = v2 & 0xC000000000000001;
      v5 = MEMORY[0x1E69E7CC0];
      v33 = v2 + 32;
      v34 = OBJC_IVAR____TtC15HealthRecordsUI24AllergyReactionFormatter_context;
      v30 = v3;
      v31 = v2;
      while (1)
      {
        if (v36)
        {
          v6 = MEMORY[0x1D3886B70](v4, v2);
        }

        else
        {
          if (v4 >= *(v35 + 16))
          {
            goto LABEL_41;
          }

          v6 = *(v33 + 8 * v4);
        }

        v7 = v6;
        v8 = __OFADD__(v4++, 1);
        if (v8)
        {
          goto LABEL_40;
        }

        if (*(a2 + v34) >= 2uLL)
        {
          v39[0] = *(a2 + v34);
          result = sub_1D139169C();
          __break(1u);
          return result;
        }

        v9 = sub_1D1227904(v6);

        v10 = v9 >> 62;
        v11 = v9 >> 62 ? sub_1D13910DC() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v5 >> 62;
        if (v5 >> 62)
        {
          v28 = sub_1D13910DC();
          v14 = v28 + v11;
          if (__OFADD__(v28, v11))
          {
LABEL_39:
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
            goto LABEL_46;
          }
        }

        else
        {
          v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v14 = v13 + v11;
          if (__OFADD__(v13, v11))
          {
            goto LABEL_39;
          }
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v12)
        {
          goto LABEL_20;
        }

LABEL_21:
        v5 = sub_1D139122C();
        v15 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
        v40 = v5;
        v16 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v10)
        {
          v19 = v15;
          v20 = sub_1D13910DC();
          v15 = v19;
          v18 = v20;
          if (!v20)
          {
LABEL_4:

            v5 = v40;
            if (v11 > 0)
            {
              goto LABEL_42;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v18)
          {
            goto LABEL_4;
          }
        }

        if (((v17 >> 1) - v16) < v11)
        {
          goto LABEL_43;
        }

        v38 = v4;
        v21 = v15 + 8 * v16 + 32;
        v32 = v15;
        if (v10)
        {
          if (v18 < 1)
          {
            goto LABEL_45;
          }

          sub_1D118F960(0, &qword_1EC60AD10, MEMORY[0x1E69E62F8]);
          sub_1D1116610();
          for (i = 0; i != v18; ++i)
          {
            v23 = sub_1D1112FB8(v39, i, v9);
            v25 = *v24;
            (v23)(v39, 0);
            *(v21 + 8 * i) = v25;
          }
        }

        else
        {
          sub_1D106F934(0, &qword_1EC609BE8);
          swift_arrayInitWithCopy();
        }

        v4 = v38;
        v3 = v30;
        v2 = v31;
        v5 = v40;
        if (v11 >= 1)
        {
          v26 = *(v32 + 16);
          v8 = __OFADD__(v26, v11);
          v27 = v26 + v11;
          if (v8)
          {
            goto LABEL_44;
          }

          *(v32 + 16) = v27;
        }

LABEL_5:
        if (v4 == v3)
        {
          return v5;
        }
      }

      if (!v12)
      {
        v15 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_20:
      sub_1D13910DC();
      goto LABEL_21;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D118F960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D106F934(255, &qword_1EC609BE8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for TimelineRecord()
{
  result = qword_1EC60C4C0;
  if (!qword_1EC60C4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D118FA44()
{
  result = sub_1D138D57C();
  if (v1 <= 0x3F)
  {
    result = sub_1D106F934(319, &qword_1EE06B0D0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D118FAD8()
{
  sub_1D139177C();
  sub_1D138D57C();
  sub_1D118FD64(&qword_1EC608ED8, MEMORY[0x1E6969530]);
  sub_1D139007C();
  sub_1D1390D9C();
  return sub_1D13917CC();
}

uint64_t sub_1D118FB7C()
{
  sub_1D138D57C();
  sub_1D118FD64(&qword_1EC608ED8, MEMORY[0x1E6969530]);
  sub_1D139007C();
  return sub_1D1390D9C();
}

uint64_t sub_1D118FC08()
{
  sub_1D139177C();
  sub_1D138D57C();
  sub_1D118FD64(&qword_1EC608ED8, MEMORY[0x1E6969530]);
  sub_1D139007C();
  sub_1D1390D9C();
  return sub_1D13917CC();
}

uint64_t sub_1D118FCA8()
{
  if ((sub_1D138D51C() & 1) == 0)
  {
    return 0;
  }

  sub_1D106F934(0, &qword_1EE06B0C0);
  return sub_1D1390D8C() & 1;
}

uint64_t sub_1D118FD64(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D118FDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a3;
  v5 = sub_1D138D57C();
  v23 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F424();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E6E0;
  v28 = sub_1D106F934(0, &qword_1EE06B790);
  sub_1D1190938(0, &qword_1EE06B080, sub_1D10898CC);
  v27 = v10;
  v11 = swift_allocObject();
  v26 = xmmword_1D139E710;
  *(v11 + 16) = xmmword_1D139E710;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D1089930();
  *(v11 + 64) = v12;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  sub_1D138CF9C();
  v13 = sub_1D138D4EC();
  v14 = *(v6 + 8);
  v22 = v6 + 8;
  v14(v8, v5);
  v15 = sub_1D106F934(0, &qword_1EC60C4D8);
  *(v11 + 96) = v15;
  v16 = sub_1D119098C();
  *(v11 + 104) = v16;
  *(v11 + 72) = v13;
  *(v9 + 32) = sub_1D139076C();
  v17 = swift_allocObject();
  *(v17 + 16) = v26;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = v12;
  *(v17 + 32) = v24;
  *(v17 + 40) = a2;

  sub_1D138CF7C();
  v18 = sub_1D138D4EC();
  v14(v8, v23);
  *(v17 + 96) = v15;
  *(v17 + 104) = v16;
  *(v17 + 72) = v18;
  *(v9 + 40) = sub_1D139076C();
  v19 = sub_1D139044C();

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v20;
}

id _sSo7HKQueryC15HealthRecordsUIE025predicateForRecentAccountC09accountIdSo11NSPredicateC10Foundation4UUIDV_tFZ_0()
{
  v0 = sub_1D138D57C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D138CFBC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F424();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D139E6E0;
  v9 = objc_opt_self();
  v10 = sub_1D138D5AC();
  v11 = [v9 predicateForRecordsFromClinicalAccountIdentifier_];

  *(v8 + 32) = v11;
  sub_1D138D53C();
  static DateInterval.weekInterval(ending:)(v3, v7);
  (*(v1 + 8))(v3, v0);
  v12 = sub_1D139016C();
  v14 = sub_1D118FDB0(v12, v13, v7);

  (*(v5 + 8))(v7, v4);
  *(v8 + 40) = v14;
  sub_1D106F934(0, &qword_1EE06B790);
  v15 = sub_1D139044C();

  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v16;
}

id sub_1D11902F8(uint64_t a1)
{
  v56 = a1;
  v1 = sub_1D138D18C();
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v55 = &v44[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v44[-v4];
  v5 = sub_1D138D76C();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D138D57C();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v53 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44[-v10];
  sub_1D138D56C();
  v12 = [objc_allocWithZone(MEMORY[0x1E696BF70]) init];
  v13 = [v12 currentCalendar];

  sub_1D138D6EC();
  sub_1D1190938(0, &qword_1EC609C80, MEMORY[0x1E6969AD0]);
  v51 = v14;
  v15 = sub_1D138D75C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v50 = 3 * v17;
  v46 = 2 * v17;
  v19 = swift_allocObject();
  v49 = xmmword_1D139EAB0;
  *(v19 + 16) = xmmword_1D139EAB0;
  v48 = *MEMORY[0x1E6969A68];
  v20 = *(v16 + 104);
  v20(v19 + v18);
  v47 = *MEMORY[0x1E6969A78];
  v20(v19 + v18 + v17);
  v45 = *MEMORY[0x1E6969A48];
  v20(v19 + v18 + 2 * v17);
  sub_1D1265AC0(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v54 = v11;
  v21 = v52;
  sub_1D138D6CC();

  v22 = v53;
  sub_1D138D4BC();
  v23 = swift_allocObject();
  *(v23 + 16) = v49;
  v24 = v23 + v18;
  (v20)(v24, v48, v15);
  (v20)(v24 + v17, v47, v15);
  (v20)(v24 + v46, v45, v15);
  sub_1D1265AC0(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v25 = v55;
  v26 = v22;
  v27 = v21;
  sub_1D138D6CC();

  sub_1D106F424();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D139E6E0;
  v29 = objc_opt_self();
  v30 = sub_1D138D5AC();
  v31 = [v29 predicateForRecordsFromClinicalAccountIdentifier_];

  *(v28 + 32) = v31;
  v32 = sub_1D138D0FC();
  v33 = v63;
  v34 = sub_1D138D0FC();
  v35 = [v29 predicateForRecordsWithSortDateFromStartDateComponents:v32 endDateComponents:v34];

  *(v28 + 40) = v35;
  sub_1D106F934(0, &qword_1EE06B790);
  v36 = sub_1D139044C();

  v37 = [objc_opt_self() andPredicateWithSubpredicates_];

  v38 = v62;
  v39 = *(v61 + 8);
  v39(v25, v62);
  v40 = *(v57 + 8);
  v41 = v26;
  v42 = v58;
  v40(v41, v58);
  v39(v33, v38);
  (*(v59 + 8))(v27, v60);
  v40(v54, v42);
  return v37;
}

void sub_1D1190938(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D13915DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D119098C()
{
  result = qword_1EC60C4E0;
  if (!qword_1EC60C4E0)
  {
    sub_1D106F934(255, &qword_1EC60C4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60C4E0);
  }

  return result;
}

uint64_t AddAccountFeedItemData.sourceIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

_BYTE *AddAccountFeedItemData.init(onboardingType:sourceIdentifier:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_1D1190A44()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x696472616F626E6FLL;
  }
}

uint64_t sub_1D1190A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696472616F626E6FLL && a2 == 0xEE0065707954676ELL;
  if (v6 || (sub_1D139162C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D13C0580 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D139162C();

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

uint64_t sub_1D1190B7C(uint64_t a1)
{
  v2 = sub_1D1191034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1190BB8(uint64_t a1)
{
  v2 = sub_1D1191034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AddAccountFeedItemData.encode(to:)(void *a1)
{
  sub_1D11910DC(0, &qword_1EE0694F8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v12[0] = *(v1 + 2);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D1191034();
  sub_1D139181C();
  v15 = v9;
  v14 = 0;
  sub_1D1191088();
  sub_1D139154C();
  if (!v2)
  {
    v13 = 1;
    sub_1D139153C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AddAccountFeedItemData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D11910DC(0, &qword_1EE069500, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D1191034();
  sub_1D13917FC();
  if (!v2)
  {
    v17 = 0;
    sub_1D1191140();
    sub_1D13914BC();
    v10 = v18;
    v16 = 1;
    v12 = sub_1D13914AC();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

BOOL _s15HealthRecordsUI22AddAccountFeedItemDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a2;
  v8 = *(a2 + 2);
  if (v4 > 0xFD)
  {
    if (v7 <= 0xFD)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (v7 > 0xFD)
  {
    return 0;
  }

  if ((v4 & 0x80) != 0)
  {
    if (v7 & 0x80) == 0 || ((v7 ^ v4))
    {
      return 0;
    }
  }

  else if (v7 & 0x80) != 0 || ((v7 ^ v4))
  {
    return 0;
  }

LABEL_11:
  if (v6)
  {
    return v8 && (v5 == *(a2 + 1) && v6 == v8 || (sub_1D139162C() & 1) != 0);
  }

  return !v8;
}

unint64_t sub_1D1191034()
{
  result = qword_1EE06AA68;
  if (!qword_1EE06AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06AA68);
  }

  return result;
}

unint64_t sub_1D1191088()
{
  result = qword_1EE069C18;
  if (!qword_1EE069C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069C18);
  }

  return result;
}

void sub_1D11910DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D1191034();
    v7 = a3(a1, &type metadata for AddAccountFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D1191140()
{
  result = qword_1EE069C10;
  if (!qword_1EE069C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069C10);
  }

  return result;
}

uint64_t sub_1D1191194(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D11911F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

unint64_t sub_1D1191268()
{
  result = qword_1EC60C4E8;
  if (!qword_1EC60C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60C4E8);
  }

  return result;
}

unint64_t sub_1D11912C0()
{
  result = qword_1EE06AA58;
  if (!qword_1EE06AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06AA58);
  }

  return result;
}

unint64_t sub_1D1191318()
{
  result = qword_1EE06AA60;
  if (!qword_1EE06AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06AA60);
  }

  return result;
}

uint64_t type metadata accessor for RecordDetailsDataSource()
{
  result = qword_1EC60C508;
  if (!qword_1EC60C508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D119140C(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v23 = a1 + 32;
  while (1)
  {
    v4 = *(v23 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_1D13910DC();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v22 = sub_1D13910DC();
      v9 = v22 + v6;
      if (__OFADD__(v22, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D13910DC();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D139122C();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v6)
    {
      goto LABEL_36;
    }

    v27 = v6;
    v25 = v2;
    v14 = v10 + 8 * v11 + 32;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_1D1124780(0, &qword_1EC60AD10, &qword_1EC609BE8, off_1E83DAD48, MEMORY[0x1E69E62F8]);
      sub_1D1116610();
      for (i = 0; i != v13; ++i)
      {
        v16 = sub_1D1112FB8(v26, i, v4);
        v18 = *v17;
        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      sub_1D106F934(0, &qword_1EC609BE8);
      swift_arrayInitWithCopy();
    }

    v2 = v25;
    if (v27 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v27);
      v21 = v19 + v27;
      if (v20)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = sub_1D13910DC();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_1D11916DC()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E65C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  [v4 contentInsets];
  [v4 setContentInsets_];
  return v4;
}

uint64_t sub_1D11917D4()
{
  v1 = v0;
  v2 = sub_1D138FF3C();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v27 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = dispatch_group_create();
  v5 = swift_allocObject();
  sub_1D1193B98(0, &qword_1EC60ABA8, &qword_1EC60A3D0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139E700;
  sub_1D119269C((v6 + 32));
  *(v5 + 16) = v6;
  v26 = v5 + 16;
  dispatch_group_enter(v4);
  v7 = qword_1EC60C4F0;
  v8 = *(v0 + qword_1EC60C4F0);
  v9 = *(v0 + qword_1EC60C4F8);
  v10 = *(v1 + qword_1EC60C500);
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v1;
  v11[4] = v4;
  v34 = sub_1D1193C00;
  v35 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1D11920BC;
  v33 = &block_descriptor_25;
  v12 = _Block_copy(&aBlock);
  v13 = v8;

  v14 = v4;

  [v13 fetchStructuredFieldItemsWithHealthRecordsStore:v9 conceptStore:v10 completion:v12];
  _Block_release(v12);

  dispatch_group_enter(v14);
  v15 = *(v1 + v7);
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = v1;
  v16[4] = v14;
  v34 = sub_1D1193C6C;
  v35 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1D10B6840;
  v33 = &block_descriptor_30_1;
  v17 = _Block_copy(&aBlock);

  v18 = v14;
  v19 = v15;

  [v19 fetchDetailItemsWithHealthRecordsStore:v9 conceptStore:v10 completion:v17];
  _Block_release(v17);

  sub_1D13909EC();
  sub_1D106F934(0, &qword_1EE06B760);
  v20 = sub_1D1390A7C();
  v21 = v27;
  v22 = v28;
  *v27 = v20;
  v23 = v29;
  (*(v22 + 104))(v21, *MEMORY[0x1E69E8020], v29);
  LOBYTE(v9) = sub_1D138FF5C();
  result = (*(v22 + 8))(v21, v23);
  if (v9)
  {
    swift_beginAccess();

    sub_1D110A5C8(v25);

    sub_1D138E5AC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D1191BD8(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v54 = a4;
  v53[1] = a2;
  v4 = sub_1D119140C(a1);
  v5 = v4;
  if (v4 >> 62)
  {
LABEL_29:
    v6 = sub_1D13910DC();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
    v63 = MEMORY[0x1E69E7CC0];
LABEL_26:

    swift_beginAccess();
    sub_1D1122388(v63);
    swift_endAccess();
    dispatch_group_leave(v54);
    return;
  }

  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  v59 = @"UIA.Health.HealthRecords";
  v10 = &selRef_deselectRowAtIndexPath_animated_;
  v11 = &selRef_removeObserver_name_object_;
  v58 = xmmword_1D139E710;
  v63 = MEMORY[0x1E69E7CC0];
  v56 = v5 & 0xC000000000000001;
  v57 = v6;
  v55 = v5 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8)
    {
      v12 = MEMORY[0x1D3886B70](v7, v5);
    }

    else
    {
      if (v7 >= *(v9 + 16))
      {
        goto LABEL_28;
      }

      v12 = *(v5 + 8 * v7 + 32);
    }

    v13 = v12;
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if ([v12 v10[28]] != 15)
    {

      goto LABEL_6;
    }

    v15 = [v13 v11[447]];
    if (!v15)
    {
      goto LABEL_31;
    }

    v16 = v15;
    v17 = sub_1D139016C();
    v19 = v18;

    v20 = [v13 subtitle];
    v61 = v19;
    v62 = v17;
    if (v20)
    {
      v21 = v20;
      v60 = sub_1D139016C();
      v23 = v22;
    }

    else
    {
      v60 = 0;
      v23 = 0;
    }

    v24 = v11;
    v25 = [v13 v11[447]];
    if (!v25)
    {
      break;
    }

    v26 = v25;
    sub_1D1086E1C();
    v27 = swift_allocObject();
    *(v27 + 16) = v58;
    *(v27 + 32) = sub_1D139016C();
    *(v27 + 40) = v28;
    v29 = [v26 removeSpecialCharactersAndWhiteSpaces];

    v30 = sub_1D139016C();
    v32 = v31;

    v67 = v30;
    v68 = v32;

    MEMORY[0x1D3885C10](1819043139, 0xE400000000000000);

    v33 = v68;
    *(v27 + 48) = v67;
    *(v27 + 56) = v33;
    v34 = sub_1D139044C();

    v35 = HKUIJoinStringsForAutomationIdentifier();

    if (!v35)
    {
      goto LABEL_32;
    }

    v36 = sub_1D139016C();
    v38 = v37;

    v39 = type metadata accessor for TitleSubtitleDetailItem(0);
    v40 = swift_allocObject();
    sub_1D138D5DC();
    v41 = v61;
    v40[2] = v62;
    v40[3] = v41;
    v40[4] = v60;
    v40[5] = v23;
    v40[6] = 0;
    v40[7] = MEMORY[0x1E69E7CC0];
    v40[8] = v36;
    v40[9] = v38;
    v65 = v39;
    v66 = sub_1D1193C78(&qword_1EC60A700, 255, type metadata accessor for TitleSubtitleDetailItem);

    *&v64 = v40;
    sub_1D102CC18(&v64, &v67);
    v42 = v63;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_1D10F857C(0, v42[2] + 1, 1, v42);
      v71[0] = v42;
    }

    v11 = v24;
    v45 = v42[2];
    v44 = v42[3];
    if (v45 >= v44 >> 1)
    {
      v63 = sub_1D10F857C((v44 > 1), v45 + 1, 1, v42);
      v71[0] = v63;
    }

    else
    {
      v63 = v42;
    }

    v46 = v69;
    v47 = v70;
    v48 = __swift_mutable_project_boxed_opaque_existential_1(&v67, v69);
    v49 = MEMORY[0x1EEE9AC00](v48);
    v51 = v53 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v51, v49);
    sub_1D125DA54(v45, v51, v71, v46, v47);
    __swift_destroy_boxed_opaque_existential_1Tm(&v67);
    v8 = v56;
    v6 = v57;
    v9 = v55;
    v10 = &selRef_deselectRowAtIndexPath_animated_;
LABEL_6:
    ++v7;
    if (v14 == v6)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1D11920BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1D1124780(0, &qword_1EC60AD10, &qword_1EC609BE8, off_1E83DAD48, MEMORY[0x1E69E62F8]);
  v2 = sub_1D139045C();

  v1(v2);
}

void sub_1D119215C(unint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v53 = a4;
  v52[1] = a2;
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_30:
    v5 = sub_1D13910DC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_27:
    swift_beginAccess();
    sub_1D1122388(v6);
    swift_endAccess();
    dispatch_group_leave(v53);
    return;
  }

  v7 = 0;
  v60 = v4 & 0xFFFFFFFFFFFFFF8;
  v61 = v4 & 0xC000000000000001;
  v56 = @"UIA.Health.HealthRecords";
  v55 = xmmword_1D139E710;
  v54 = v4;
  while (1)
  {
    if (v61)
    {
      v8 = MEMORY[0x1D3886B70](v7, v4);
    }

    else
    {
      if (v7 >= *(v60 + 16))
      {
        goto LABEL_29;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v11 = [v8 displayItemType];
    if (v11 == 6)
    {
      v20 = [v9 chartValueWithRange];
      v21 = type metadata accessor for ReferenceRangeItem();
      v22 = swift_allocObject();
      v22[2] = v20;
      *(&v63 + 1) = v21;
      v24 = sub_1D1193C78(&qword_1EC60C568, v23, type metadata accessor for ReferenceRangeItem);
LABEL_21:
      v64 = v24;

      *&v62 = v22;
      sub_1D102CC18(&v62, &v65);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_1D10F857C(0, v6[2] + 1, 1, v6);
        v69 = v6;
      }

      v44 = v6[2];
      v43 = v6[3];
      if (v44 >= v43 >> 1)
      {
        v6 = sub_1D10F857C((v43 > 1), v44 + 1, 1, v6);
        v69 = v6;
      }

      v45 = v67;
      v46 = v68;
      v47 = __swift_mutable_project_boxed_opaque_existential_1(&v65, v67);
      v48 = MEMORY[0x1EEE9AC00](v47);
      v50 = v52 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v51 + 16))(v50, v48);
      sub_1D125DA54(v44, v50, &v69, v45, v46);
      __swift_destroy_boxed_opaque_existential_1Tm(&v65);
      goto LABEL_6;
    }

    if (v11 == 15)
    {
      break;
    }

    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    sub_1D10A72B8(&v62);
LABEL_6:
    ++v7;
    if (v10 == v5)
    {
      goto LABEL_27;
    }
  }

  v12 = [v9 title];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D139016C();
    v58 = v15;
    v59 = v14;

    v16 = [v9 subtitle];
    if (v16)
    {
      v17 = v16;
      v57 = sub_1D139016C();
      v19 = v18;
    }

    else
    {
      v57 = 0;
      v19 = 0;
    }

    v25 = v5;
    v26 = [v9 title];
    if (!v26)
    {
      goto LABEL_33;
    }

    v27 = v26;
    sub_1D1086E1C();
    v28 = swift_allocObject();
    *(v28 + 16) = v55;
    *(v28 + 32) = sub_1D139016C();
    *(v28 + 40) = v29;
    v30 = [v27 removeSpecialCharactersAndWhiteSpaces];

    v31 = sub_1D139016C();
    v33 = v32;

    v65 = v31;
    v66 = v33;

    MEMORY[0x1D3885C10](1819043139, 0xE400000000000000);

    v34 = v66;
    *(v28 + 48) = v65;
    *(v28 + 56) = v34;
    v35 = sub_1D139044C();

    v36 = HKUIJoinStringsForAutomationIdentifier();

    if (!v36)
    {
      goto LABEL_32;
    }

    v37 = sub_1D139016C();
    v39 = v38;

    v40 = type metadata accessor for TitleSubtitleDetailItem(0);
    v22 = swift_allocObject();
    sub_1D138D5DC();
    v41 = v58;
    v22[2] = v59;
    v22[3] = v41;
    v22[4] = v57;
    v22[5] = v19;
    v22[6] = 0;
    v22[7] = MEMORY[0x1E69E7CC0];
    v22[8] = v37;
    v22[9] = v39;
    *(&v63 + 1) = v40;
    v24 = sub_1D1193C78(&qword_1EC60A700, 255, type metadata accessor for TitleSubtitleDetailItem);
    v4 = v54;
    v5 = v25;
    goto LABEL_21;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_1D119269C@<X0>(void *a1@<X8>)
{
  v3 = qword_1EC60C4F0;
  v4 = [*(v1 + qword_1EC60C4F0) meaningfulDateTitle];
  v5 = sub_1D139016C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    sub_1D1193B98(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D139E710;
    v10 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1D1089930();
    *(v9 + 64) = v11;
    *(v9 + 32) = v5;
    *(v9 + 40) = v7;
    v12 = [*(v1 + v3) meaningfulDateString];
    v13 = sub_1D139016C();
    v15 = v14;

    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 72) = v13;
    *(v9 + 80) = v15;
    v16 = sub_1D13901AC();
    v18 = v17;
  }

  else
  {

    v19 = [*(v1 + v3) meaningfulDateString];
    v16 = sub_1D139016C();
    v18 = v20;
  }

  v21 = [*(v1 + v3) preferredDisplayName];
  v22 = sub_1D139016C();
  v24 = v23;

  v25 = type metadata accessor for RecordDetailTitleItem();
  v26 = swift_allocObject();
  v26[2] = v22;
  v26[3] = v24;
  v26[4] = v16;
  v26[5] = v18;
  a1[3] = v25;
  result = sub_1D1193C78(&qword_1EC60C560, v27, type metadata accessor for RecordDetailTitleItem);
  a1[4] = result;
  *a1 = v26;
  return result;
}

void sub_1D1192988()
{
  v1 = *(v0 + qword_1EC60C500);
}

uint64_t sub_1D11929D8()
{
  v0 = sub_1D138EABC();
  v1 = *(v0 + qword_1EC60C4F0);

  v2 = *(v0 + qword_1EC60C500);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1192AC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D1192B2C()
{
  v1 = v0;
  v2 = sub_1D138F3FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI21RecordDetailTitleCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v27);
  if (!v28)
  {
    return sub_1D10A72B8(v27);
  }

  sub_1D1080EA4(0, &qword_1EC60A3D0);
  type metadata accessor for RecordDetailTitleItem();
  result = swift_dynamicCast();
  if (result)
  {
    v26[0] = v3;
    v8 = v26[1];
    MEMORY[0x1D38864F0]();

    sub_1D138F3BC();
    v9 = objc_opt_self();
    v10 = [v9 labelColor];
    v11 = sub_1D138F2FC();
    sub_1D138F2DC();
    v11(v27, 0);
    v12 = objc_opt_self();
    result = [v12 _preferredFontForTextStyle_variant_];
    if (result)
    {
      v13 = sub_1D138F2FC();
      sub_1D138F2CC();
      v13(v27, 0);
      v14 = *(v8 + 40);
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = *(v8 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {

        sub_1D138F29C();
        v16 = [v9 secondaryLabelColor];
        v17 = sub_1D138F34C();
        sub_1D138F2DC();
        v17(v27, 0);
        v18 = [v12 preferredFontForTextStyle_];
        v19 = sub_1D138F34C();
        sub_1D138F2CC();
        v19(v27, 0);
        sub_1D138F38C();
      }

      v28 = v2;
      v29 = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
      v21 = v26[0];
      (*(v26[0] + 16))(boxed_opaque_existential_1, v5, v2);
      MEMORY[0x1D3886480](v27);
      sub_1D1086E1C();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D139E710;
      *(v22 + 32) = sub_1D139016C();
      *(v22 + 40) = v23;
      *(v22 + 48) = 0x695464726F636552;
      *(v22 + 56) = 0xEF6C6C6543656C74;
      v24 = sub_1D139044C();

      v25 = HKUIJoinStringsForAutomationIdentifier();

      [v1 setAccessibilityIdentifier_];

      return (*(v21 + 8))(v5, v2);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t (*sub_1D11930D8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D119313C;
}

uint64_t sub_1D1193154()
{
  v5 = sub_1D139184C();
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  v4 = *(v0 + 16);
  sub_1D1124780(0, &qword_1EC60C550, &qword_1EC60C558, 0x1E696C208, MEMORY[0x1E69E6720]);
  v1 = v4;
  v2 = sub_1D13901EC();
  MEMORY[0x1D3885C10](v2);

  return v5;
}

uint64_t sub_1D1193228()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D11932CC(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3();
  sub_1D1193C78(a4, v7, a5);
  return sub_1D138DECC();
}

uint64_t sub_1D119334C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

id sub_1D11933B0()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI18ReferenceRangeCell____lazy_storage___expandedRangeValueView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI18ReferenceRangeCell____lazy_storage___expandedRangeValueView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI18ReferenceRangeCell____lazy_storage___expandedRangeValueView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ExpandedRangeValueView()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D1193448()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI18ReferenceRangeCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v1, v18);
  if (v19)
  {
    sub_1D1080EA4(0, &qword_1EC60A3D0);
    type metadata accessor for ReferenceRangeItem();
    if (swift_dynamicCast())
    {
      v2 = v0;
      v3 = sub_1D11933B0();
      v4 = *(v17 + 16);
      if (v4 && (v5 = [objc_opt_self() referenceRangeViewDataFromInspectableValueInRange_]) != 0)
      {
        v6 = v5;
        v7 = v5;
        v8 = sub_1D113AB8C();
        sub_1D106F934(0, &qword_1EC60E670);
        v9 = sub_1D1390C6C();
        v10 = sub_1D1390C6C();
        v11 = sub_1D106E7E8(v9, v10);

        [v8 setAttributedText_];
        v12 = v7;
        sub_1D1271D64(v6);
      }

      else
      {
        v12 = 0;
      }

      sub_1D113B2C0();

      sub_1D1086E1C();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D139E710;
      *(v13 + 32) = sub_1D139016C();
      *(v13 + 40) = v14;
      *(v13 + 48) = 0xD000000000000012;
      *(v13 + 56) = 0x80000001D13A6710;
      v15 = sub_1D139044C();

      v16 = HKUIJoinStringsForAutomationIdentifier();

      [v2 setAccessibilityIdentifier_];
    }
  }

  else
  {
    sub_1D10A72B8(v18);
  }
}

char *sub_1D11936FC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI18ReferenceRangeCell____lazy_storage___expandedRangeValueView] = 0;
  v9 = &v4[OBJC_IVAR____TtC15HealthRecordsUI18ReferenceRangeCell_item];
  v10 = type metadata accessor for ReferenceRangeCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v17.receiver = v4;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = sub_1D11933B0();
  [v12 addSubview_];

  v14 = *&v11[OBJC_IVAR____TtC15HealthRecordsUI18ReferenceRangeCell____lazy_storage___expandedRangeValueView];
  v15 = [v11 contentView];

  [v14 hk:v15 alignConstraintsWithView:16.0 insets:{16.0, 16.0, 16.0}];
  return v11;
}

id sub_1D1193904(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D11939D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *a4;
  swift_beginAccess();
  sub_1D10B1300(a1, v5 + v8);
  v9 = swift_endAccess();
  a5(v9);
  return sub_1D10A72B8(a1);
}

uint64_t (*sub_1D1193A48(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D1193AAC;
}

uint64_t sub_1D1193AC4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void sub_1D1193B98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D1080EA4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_23Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1193C78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D1193CC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_viewData;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 32);
  v16[1] = *(v3 + 16);
  v16[2] = v5;
  v16[0] = v4;
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v8 = *(v3 + 80);
  *&v17[13] = *(v3 + 93);
  v16[4] = v7;
  *v17 = v8;
  v16[3] = v6;
  v9 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v9;
  v10 = *(v3 + 32);
  v11 = *(v3 + 48);
  v12 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(a2 + 93) = *(v3 + 93);
  *(a2 + 64) = v12;
  *(a2 + 80) = v13;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  return sub_1D113AE4C(v16, &v15);
}

uint64_t sub_1D1193D70(__int128 *a1, void *a2)
{
  v2 = a1[5];
  v28 = a1[4];
  v29[0] = v2;
  *(v29 + 13) = *(a1 + 93);
  v3 = a1[1];
  v24 = *a1;
  v25 = v3;
  v4 = a1[3];
  v5 = *a2 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_viewData;
  v26 = a1[2];
  v27 = v4;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 32);
  v31 = *(v5 + 16);
  v32 = v7;
  v30 = v6;
  v8 = *(v5 + 48);
  v9 = *(v5 + 64);
  v10 = *(v5 + 80);
  *(v35 + 13) = *(v5 + 93);
  v34 = v9;
  v35[0] = v10;
  v33 = v8;
  v12 = *(v5 + 64);
  v11 = *(v5 + 80);
  v13 = *(v5 + 48);
  *&v37[13] = *(v5 + 93);
  v36[4] = v12;
  *v37 = v11;
  v36[3] = v13;
  v14 = *v5;
  v15 = *(v5 + 32);
  v36[1] = *(v5 + 16);
  v36[2] = v15;
  v36[0] = v14;
  v16 = v24;
  v17 = v26;
  *(v5 + 16) = v25;
  *(v5 + 32) = v17;
  *v5 = v16;
  v18 = v27;
  v19 = v28;
  v20 = v29[0];
  *(v5 + 93) = *(v29 + 13);
  *(v5 + 64) = v19;
  *(v5 + 80) = v20;
  *(v5 + 48) = v18;
  sub_1D113AE4C(&v24, v22);
  sub_1D113AE4C(&v30, v22);
  sub_1D1128AD0(v36);
  v22[4] = v34;
  *v23 = v35[0];
  *&v23[13] = *(v35 + 13);
  v22[0] = v30;
  v22[1] = v31;
  v22[2] = v32;
  v22[3] = v33;
  sub_1D1193EAC(v22);
  return sub_1D1128AD0(&v30);
}

void sub_1D1193EAC(__int128 *a1)
{
  v2 = a1[5];
  v54 = a1[4];
  v55[0] = v2;
  *(v55 + 13) = *(a1 + 93);
  v3 = a1[1];
  v50 = *a1;
  v51 = v3;
  v4 = a1[3];
  v5 = v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_viewData;
  v52 = a1[2];
  v53 = v4;
  swift_beginAccess();
  v6 = *(v5 + 48);
  v7 = *(v5 + 80);
  v59 = *(v5 + 64);
  v60[0] = v7;
  v8 = *(v5 + 16);
  v56[0] = *v5;
  v56[1] = v8;
  v9 = *(v5 + 16);
  v10 = *(v5 + 48);
  v57 = *(v5 + 32);
  v58 = v10;
  v47 = v53;
  v48 = v54;
  *v49 = v55[0];
  v45 = v51;
  v46 = v52;
  *(v60 + 13) = *(v5 + 93);
  v11 = v50;
  *&v49[13] = *(v55 + 13);
  v12 = v56[0];
  v40 = v9;
  v41 = v57;
  v13 = *(v5 + 80);
  *(v44 + 13) = *(v5 + 93);
  v43 = v59;
  v44[0] = v13;
  v42 = v6;
  if (*(&v50 + 1))
  {
    v33 = v50;
    v37 = v54;
    *v38 = v55[0];
    *(&v38[1] + 5) = *(v55 + 13);
    v27 = v50;
    v28 = v51;
    v35 = v52;
    v36 = v53;
    v34 = v51;
    *(v32 + 13) = *(v55 + 13);
    v31 = v54;
    v32[0] = *v38;
    v29 = v52;
    v30 = v53;
    if (*(&v56[0] + 1))
    {
      v14 = *(v5 + 64);
      v24 = *(v5 + 48);
      v25 = v14;
      v26[0] = *(v5 + 80);
      *(v26 + 13) = *(v5 + 93);
      v15 = *(v5 + 32);
      v22 = *(v5 + 16);
      v23 = v15;
      v21 = v56[0];
      sub_1D113AE4C(v56, v19);
      sub_1D113AE4C(&v50, v19);
      sub_1D113AE4C(&v33, v19);
      v16 = _s15HealthRecordsUI33UserDomainConceptFeedItemViewDataV2eeoiySbAC_ACtFZ_0(&v27, &v21);
      v17[4] = v25;
      v18[0] = v26[0];
      *(v18 + 13) = *(v26 + 13);
      v17[0] = v21;
      v17[1] = v22;
      v17[2] = v23;
      v17[3] = v24;
      sub_1D1128B50(v17);
      v19[4] = v31;
      v20[0] = v32[0];
      *(v20 + 13) = *(v32 + 13);
      v19[0] = v27;
      v19[1] = v28;
      v19[2] = v29;
      v19[3] = v30;
      sub_1D1128B50(v19);
      v21 = v11;
      v24 = v47;
      v25 = v48;
      v26[0] = *v49;
      *(v26 + 13) = *&v49[13];
      v22 = v45;
      v23 = v46;
      sub_1D1128AD0(&v21);
      if (v16)
      {
        return;
      }

      goto LABEL_9;
    }

    v25 = v37;
    v26[0] = *v38;
    *(v26 + 13) = *(&v38[1] + 5);
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    sub_1D113AE4C(v56, v19);
    sub_1D113AE4C(&v50, v19);
    sub_1D113AE4C(&v33, v19);
    sub_1D1128B50(&v21);
  }

  else
  {
    if (!*(&v56[0] + 1))
    {
      v33 = v50;
      v36 = v53;
      v37 = v54;
      *v38 = v55[0];
      *(&v38[1] + 5) = *(v55 + 13);
      v34 = v51;
      v35 = v52;
      sub_1D113AE4C(v56, &v27);
      sub_1D113AE4C(&v50, &v27);
      sub_1D1128AD0(&v33);
      return;
    }

    sub_1D113AE4C(v56, &v33);
    sub_1D113AE4C(&v50, &v33);
  }

  v33 = v11;
  v36 = v47;
  v37 = v48;
  *v38 = *v49;
  *(&v38[1] + 5) = *&v49[13];
  v34 = v45;
  v35 = v46;
  *&v38[3] = v12;
  *&v38[7] = v41;
  *&v38[5] = v40;
  *&v39[13] = *(v44 + 13);
  *v39 = v44[0];
  *&v38[11] = v43;
  *&v38[9] = v42;
  sub_1D119661C(&v33);
LABEL_9:
  sub_1D1195E64();
}

uint64_t sub_1D11941EC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_viewData;
  swift_beginAccess();
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16[0] = v5;
  *(v16 + 13) = *(v3 + 93);
  v6 = *(v16 + 13);
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(v3 + 48);
  v13 = *(v3 + 32);
  v9 = v13;
  v14 = v8;
  *a1 = v12[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  *(a1 + 48) = v8;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 93) = v6;
  return sub_1D113AE4C(v12, &v11);
}

uint64_t sub_1D1194278(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_viewData;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v17 = *(v3 + 64);
  v18[0] = v4;
  *(v18 + 13) = *(v3 + 93);
  v5 = *(v3 + 16);
  v13 = *v3;
  v14 = v5;
  v6 = *(v3 + 48);
  v15 = *(v3 + 32);
  v16 = v6;
  v19[0] = v13;
  v19[1] = v5;
  v19[2] = v15;
  v19[3] = v6;
  v19[4] = v17;
  v20[0] = v4;
  *(v20 + 13) = *(v18 + 13);
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 93) = *(a1 + 93);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_1D113AE4C(&v13, v11);
  sub_1D1128AD0(v19);
  v11[4] = v17;
  *v12 = v18[0];
  *&v12[13] = *(v18 + 13);
  v11[0] = v13;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v16;
  sub_1D1193EAC(v11);
  return sub_1D1128AD0(&v13);
}

void (*sub_1D1194360(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x300uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 752) = v1;
  v5 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_viewData;
  *(v3 + 760) = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_viewData;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[2];
  *(v4 + 16) = v6[1];
  *(v4 + 32) = v8;
  *v4 = v7;
  v9 = v6[3];
  v10 = v6[4];
  v11 = v6[5];
  *(v4 + 93) = *(v6 + 93);
  *(v4 + 64) = v10;
  *(v4 + 80) = v11;
  *(v4 + 48) = v9;
  v13 = v6[4];
  v12 = v6[5];
  v14 = *(v6 + 93);
  *(v4 + 152) = v6[3];
  *(v4 + 197) = v14;
  *(v4 + 184) = v12;
  *(v4 + 168) = v13;
  v15 = *v6;
  v16 = v6[1];
  *(v4 + 136) = v6[2];
  *(v4 + 120) = v16;
  *(v4 + 104) = v15;
  sub_1D113AE4C(v4, v4 + 208);
  return sub_1D1194458;
}

void sub_1D1194458(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 208;
  v4 = *a1 + 312;
  v5 = *a1 + 416;
  v6 = (*(v2 + 752) + *(v2 + 760));
  if (a2)
  {
    v7 = *(v2 + 120);
    *(v2 + 520) = *(v2 + 104);
    *(v2 + 536) = v7;
    v8 = *(v2 + 136);
    *(v2 + 613) = *(v2 + 197);
    v9 = *(v2 + 184);
    *(v2 + 584) = *(v2 + 168);
    *(v2 + 600) = v9;
    v10 = *(v2 + 152);
    *(v2 + 552) = v8;
    *(v2 + 568) = v10;
    v11 = *v6;
    v12 = v6[2];
    *(v5 + 16) = v6[1];
    *(v5 + 32) = v12;
    *v5 = v11;
    v13 = v6[3];
    v14 = v6[4];
    v15 = v6[5];
    *(v5 + 93) = *(v6 + 93);
    *(v5 + 64) = v14;
    *(v5 + 80) = v15;
    *(v5 + 48) = v13;
    v16 = *v6;
    v17 = v6[2];
    *(v4 + 16) = v6[1];
    *(v4 + 32) = v17;
    *v4 = v16;
    v18 = v6[3];
    v19 = v6[4];
    v20 = v6[5];
    *(v4 + 93) = *(v6 + 93);
    *(v4 + 64) = v19;
    *(v4 + 80) = v20;
    *(v4 + 48) = v18;
    v21 = *(v2 + 104);
    v22 = *(v2 + 136);
    v6[1] = *(v2 + 120);
    v6[2] = v22;
    *v6 = v21;
    v23 = *(v2 + 152);
    v24 = *(v2 + 168);
    v25 = *(v2 + 184);
    *(v6 + 93) = *(v2 + 197);
    v6[4] = v24;
    v6[5] = v25;
    v6[3] = v23;
    sub_1D113AE4C(v2 + 520, v2 + 624);
    sub_1D113AE4C(v5, v2 + 624);
    sub_1D1128AD0(v4);
    v26 = *(v5 + 80);
    v55 = *(v5 + 64);
    v56[0] = v26;
    *(v56 + 13) = *(v5 + 93);
    v27 = *(v5 + 16);
    v51 = *v5;
    v52 = v27;
    v28 = *(v5 + 48);
    v53 = *(v5 + 32);
    v54 = v28;
    sub_1D1193EAC(&v51);
    sub_1D1128AD0(v5);
    v29 = *(v2 + 152);
    v30 = *(v2 + 184);
    *(v3 + 64) = *(v2 + 168);
    *(v3 + 80) = v30;
    *(v3 + 93) = *(v2 + 197);
    v31 = *(v2 + 120);
    *v3 = *(v2 + 104);
    *(v3 + 16) = v31;
    *(v3 + 32) = *(v2 + 136);
    *(v3 + 48) = v29;
    v32 = v3;
  }

  else
  {
    v34 = v6[1];
    v33 = v6[2];
    *v4 = *v6;
    *(v4 + 16) = v34;
    *(v4 + 32) = v33;
    v36 = v6[4];
    v35 = v6[5];
    v37 = v6[3];
    *(v4 + 93) = *(v6 + 93);
    *(v4 + 64) = v36;
    *(v4 + 80) = v35;
    *(v4 + 48) = v37;
    v39 = v6[4];
    v38 = v6[5];
    v40 = v6[3];
    *(v3 + 93) = *(v6 + 93);
    *(v3 + 64) = v39;
    *(v3 + 80) = v38;
    *(v3 + 48) = v40;
    v41 = *v6;
    v42 = v6[2];
    *(v3 + 16) = v6[1];
    *(v3 + 32) = v42;
    *v3 = v41;
    v43 = *(v2 + 104);
    v44 = *(v2 + 136);
    v6[1] = *(v2 + 120);
    v6[2] = v44;
    *v6 = v43;
    v45 = *(v2 + 152);
    v46 = *(v2 + 168);
    v47 = *(v2 + 184);
    *(v6 + 93) = *(v2 + 197);
    v6[4] = v46;
    v6[5] = v47;
    v6[3] = v45;
    sub_1D113AE4C(v4, v5);
    sub_1D1128AD0(v3);
    v48 = *(v4 + 80);
    v55 = *(v4 + 64);
    v56[0] = v48;
    *(v56 + 13) = *(v4 + 93);
    v49 = *(v4 + 16);
    v51 = *v4;
    v52 = v49;
    v50 = *(v4 + 48);
    v53 = *(v4 + 32);
    v54 = v50;
    sub_1D1193EAC(&v51);
    v32 = v4;
  }

  sub_1D1128AD0(v32);

  free(v2);
}

void sub_1D11946C0()
{
  v1 = v0;
  sub_1D1195368();
  v2 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_isInEditingMode;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = sub_1D1194D14();
  type metadata accessor for UILayoutPriority(0);
  sub_1D11965C4();
  if (v3 == 1)
  {
    sub_1D138F0DC();
    LODWORD(v5) = v9;
    [v4 setContentCompressionResistancePriority:0 forAxis:v5];

    v6 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___textualValueView);
    sub_1D138F0DC();
  }

  else
  {
    sub_1D138F0CC();
    LODWORD(v8) = v9;
    [v4 setContentCompressionResistancePriority:0 forAxis:v8];

    v6 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___textualValueView);
    sub_1D138F0CC();
  }

  LODWORD(v7) = v9;
  [v6 setContentCompressionResistancePriority:1 forAxis:v7];
}

uint64_t sub_1D119485C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_isInEditingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D11948A0(char a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_isInEditingMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1D11946C0();
}

void (*sub_1D11948F4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D1194958;
}

void sub_1D1194958(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D11946C0();
  }
}

uint64_t sub_1D119498C()
{
  v1 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_baseAccessibilityIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1D11949E4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_baseAccessibilityIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  if (a2)
  {
    v6 = sub_1D1194D14();

    MEMORY[0x1D3885C10](0x65756C61562ELL, 0xE600000000000000);
    v7 = sub_1D139012C();

    [v6 setAccessibilityIdentifier_];

    v8 = sub_1D1194E00();

    MEMORY[0x1D3885C10](0x695665676E61522ELL, 0xEA00000000007765);

    v9 = sub_1D139012C();

    [v8 setAccessibilityIdentifier_];
  }
}

void (*sub_1D1194B38(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_baseAccessibilityIdentifier;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D1194BC0;
}

void sub_1D1194BC0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = (v3[3] + v3[4]);
    v5 = v4[1];
    if (v5)
    {
      v6 = *v4;

      v7 = sub_1D1194D14();

      MEMORY[0x1D3885C10](0x65756C61562ELL, 0xE600000000000000);
      v8 = sub_1D139012C();

      [v7 setAccessibilityIdentifier_];

      v9 = sub_1D1194E00();
      v11 = v5;

      MEMORY[0x1D3885C10](0x695665676E61522ELL, 0xEA00000000007765);

      v10 = sub_1D139012C();

      [v9 setAccessibilityIdentifier_];
    }
  }

  free(v3);
}

id sub_1D1194D14()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___textualValueView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___textualValueView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___textualValueView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setNumberOfLines_];
    [v4 setLineBreakMode_];
    v5 = [objc_opt_self() hk_chrValueCellPrimaryFont];
    [v4 setFont_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1D1194E00()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___referenceRangeView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___referenceRangeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___referenceRangeView);
  }

  else
  {
    v4 = v0;
    v10 = 1;
    v5 = objc_allocWithZone(type metadata accessor for RecordRangeView());
    v6 = RecordRangeView.init(style:)(&v10);
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id ConceptFeedItemValueView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ConceptFeedItemValueView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_viewData];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 93) = 0;
  v4[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_isInEditingMode] = 0;
  v10 = &v4[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_baseAccessibilityIdentifier];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_activeConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___textualValueView] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___referenceRangeView] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for ConceptFeedItemValueView();
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  LODWORD(v12) = 1144750080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v12];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1D11950FC();
  sub_1D1195238();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D139E700;
  v14 = sub_1D138F4EC();
  v15 = MEMORY[0x1E69DC2B0];
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  MEMORY[0x1D3886600](v13, sel_traitCollectionDidChangeWithTraitEnvironment_previousTraitCollection_);

  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_1D11950FC()
{
  sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E6E0;
  *(inited + 32) = sub_1D1194D14();
  *(inited + 40) = sub_1D1194E00();
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x1D3886B70](0, inited))
  {
    v3 = i;
    [v0 addSubview_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v4 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v4 = MEMORY[0x1D3886B70](1, inited);
LABEL_7:
  v5 = v4;
  [v0 addSubview_];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_1D1195238()
{
  if (!qword_1EC60D0C0)
  {
    sub_1D107F520();
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D0C0);
    }
  }
}

void sub_1D1195368()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_activeConstraints;
  swift_beginAccess();
  sub_1D1071940();

  v4 = sub_1D139044C();

  v75 = v2;
  [v2 deactivateConstraints_];

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_1D1390B5C();
  sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D139F5A0;
    v8 = sub_1D1194D14();
    v9 = [v8 leadingAnchor];

    v10 = [v1 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:16.0];

    *(v7 + 32) = v11;
    v12 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___textualValueView;
    v13 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___textualValueView] topAnchor];
    v14 = [v1 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:8.0];

    *(v7 + 40) = v15;
    v16 = [*&v1[v12] trailingAnchor];
    v17 = [v1 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:-0.0];

    *(v7 + 48) = v18;
    v19 = sub_1D1194E00();
    v20 = [v19 leadingAnchor];

    v21 = [v1 leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:16.0];

    *(v7 + 56) = v22;
    v23 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___referenceRangeView;
    v24 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___referenceRangeView] trailingAnchor];
    v25 = [v1 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-0.0];

    *(v7 + 64) = v26;
    *&v1[v3] = v7;

    if (![*&v1[v23] isHidden])
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D139E6E0;
      v59 = [*&v1[v23] topAnchor];
      v60 = [*&v1[v12] bottomAnchor];
      v61 = [v59 constraintEqualToAnchor:v60 constant:2.0];

      *(inited + 32) = v61;
      v62 = [*&v1[v23] bottomAnchor];
      v63 = [v1 bottomAnchor];
      v64 = [v62 constraintEqualToAnchor:v63 constant:-8.0];

      *(inited + 40) = v64;
      swift_beginAccess();
      sub_1D1121F80(inited);
      swift_endAccess();
      v29 = &unk_1D139E000;
      goto LABEL_9;
    }

    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_1D139E810;
    v28 = [*&v1[v12] bottomAnchor];
    v29 = &unk_1D139E000;
    v30 = [v1 bottomAnchor];
    v31 = [v28 constraintEqualToAnchor:v30 constant:-8.0];
  }

  else
  {
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1D13A68D0;
    v33 = sub_1D1194D14();
    v34 = [v33 leadingAnchor];

    v35 = [v1 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:16.0];

    *(v32 + 32) = v36;
    v37 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___textualValueView;
    v38 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___textualValueView] topAnchor];
    v39 = [v1 topAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:8.0];

    *(v32 + 40) = v40;
    v41 = [*&v1[v37] bottomAnchor];
    v42 = [v1 bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:-8.0];

    *(v32 + 48) = v43;
    v44 = sub_1D1194E00();
    v45 = [v44 widthAnchor];

    v46 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___referenceRangeView;
    v47 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___referenceRangeView];
    v48 = [v47 traitCollection];
    v49 = [v48 preferredContentSizeCategory];

    v50 = sub_1D1282884();
    v51 = [v45 constraintEqualToConstant_];

    *(v32 + 56) = v51;
    v52 = [*&v1[v46] bottomAnchor];
    v53 = [*&v1[v37] firstBaselineAnchor];
    v54 = [v52 constraintEqualToAnchor_];

    *(v32 + 64) = v54;
    v55 = [*&v1[v46] trailingAnchor];
    v56 = [v1 trailingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:-0.0];

    *(v32 + 72) = v57;
    *&v1[v3] = v32;

    if ([*&v1[v46] isHidden])
    {
      v27 = swift_initStackObject();
      v29 = &unk_1D139E000;
      *(v27 + 16) = xmmword_1D139E810;
      v28 = [*&v1[v37] trailingAnchor];
      v30 = [v1 trailingAnchor];
      v31 = [v28 constraintEqualToAnchor:v30 constant:-0.0];
    }

    else
    {
      swift_beginAccess();
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_1D139E810;
      v28 = [*&v1[v37] trailingAnchor];
      v30 = [*&v1[v46] leadingAnchor];
      v29 = &unk_1D139E000;
      v31 = [v28 constraintEqualToAnchor_];
    }
  }

  v65 = v31;

  *(v27 + 32) = v65;
  swift_beginAccess();
  sub_1D1121F80(v27);
  swift_endAccess();
LABEL_9:
  v66 = swift_initStackObject();
  *(v66 + 16) = v29[129];
  v67 = sub_1D1194D14();
  v68 = [v67 heightAnchor];

  v69 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___textualValueView] font];
  if (v69)
  {
    v70 = v69;
    [v69 lineHeight];
    v72 = v71;

    v73 = [v68 constraintGreaterThanOrEqualToConstant_];
    *(v66 + 32) = v73;
    swift_beginAccess();
    sub_1D1121F80(v66);
    swift_endAccess();

    v74 = sub_1D139044C();

    [v75 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D1195E64()
{
  v1 = v0;
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    Width = CGRectGetWidth(v54);
    v5 = sub_1D1194E00();
    v6 = &v1[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_viewData];
    swift_beginAccess();
    v7 = *(v6 + 5);
    v48 = *(v6 + 4);
    v49[0] = v7;
    *(v49 + 13) = *(v6 + 93);
    v8 = *(v6 + 1);
    v46[0] = *v6;
    v46[1] = v8;
    v9 = *(v6 + 3);
    v46[2] = *(v6 + 2);
    v47 = v9;
    v10 = v9;
    if (*(&v46[0] + 1))
    {
      v11 = v47;
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v40[0] = v46[0];
    v13 = *(v6 + 2);
    v40[1] = *(v6 + 1);
    v40[2] = v13;
    v41 = v10;
    v14 = *(v6 + 72);
    v42 = *(v6 + 56);
    v43[0] = v14;
    *(v43 + 13) = *(v6 + 85);
    sub_1D113AE4C(v46, v50);
    sub_1D1128AD0(v40);
    sub_1D1271D64(v12);

    v15 = *(v6 + 1);
    v44[0] = *v6;
    v16 = *(v6 + 4);
    v17 = *(v6 + 5);
    v18 = *(v6 + 2);
    v44[3] = *(v6 + 3);
    v44[4] = v16;
    *v45 = v17;
    *&v45[13] = *(v6 + 93);
    v44[1] = v15;
    v44[2] = v18;
    if (*(&v44[0] + 1))
    {
      v19 = *(v6 + 4);
      v20 = *(v6 + 5);
      v21 = *(v6 + 2);
      v51 = *(v6 + 3);
      v52 = v19;
      v53[0] = v20;
      *(v53 + 13) = *(v6 + 93);
      v22 = *(v6 + 1);
      v50[0] = *v6;
      v50[1] = v22;
      v50[2] = v21;
      v34 = v50[0];
      v35 = v22;
      v36 = v21;
      v37 = v51;
      v38 = v19;
      *v39 = v20;
      *&v39[13] = *(v53 + 13);
      sub_1D1128A74(&v34, v33);
      v23 = sub_1D11C1BA0(Width + -16.0);
      sub_1D1128AD0(v44);
      v24 = sub_1D1194D14();
      [v24 setAttributedText_];
    }

    v25 = sub_1D1194D14();
    v26 = *(v6 + 1);
    if (v26 && (v27 = *(v6 + 3), v28 = *(v6 + 5), v38 = *(v6 + 4), *v39 = v28, v29 = *(v6 + 2), v35 = *(v6 + 1), v30 = *v6, *&v39[13] = *(v6 + 93), v36 = v29, v37 = v27, *&v34 = v30, *(&v34 + 1) = v26, UserDomainConceptFeedItemViewData.valueUnitDisplayString.getter(), v31))
    {
      v32 = sub_1D139012C();
    }

    else
    {
      v32 = 0;
    }

    [v25 setAccessibilityLabel_];

    sub_1D1195368();
  }
}

id ConceptFeedItemValueView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConceptFeedItemValueView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D11963BC()
{
  v1 = v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_viewData;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 93) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_isInEditingMode) = 0;
  v2 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_baseAccessibilityIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_activeConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___textualValueView) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView____lazy_storage___referenceRangeView) = 0;
  sub_1D13913BC();
  __break(1u);
}

void sub_1D1196480(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:

    sub_1D1195368();
    return;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_1D139016C();
  v8 = v7;
  if (v6 != sub_1D139016C() || v8 != v9)
  {
    v11 = sub_1D139162C();

    if (v11)
    {
      return;
    }

    goto LABEL_9;
  }
}

unint64_t sub_1D11965C4()
{
  result = qword_1EC60A508;
  if (!qword_1EC60A508)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A508);
  }

  return result;
}

uint64_t sub_1D119661C(uint64_t a1)
{
  sub_1D1196678();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1196678()
{
  if (!qword_1EC60C5A0)
  {
    sub_1D1082CC4(255, &qword_1EC60B448, &type metadata for UserDomainConceptFeedItemViewData, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60C5A0);
    }
  }
}

unint64_t sub_1D1196700(void *a1)
{
  v17 = a1;
  v3 = off_1F4D091C0[0];
  v4 = sub_1D106F934(0, &qword_1EC60C5D0);
  if (!(v3)(v4, &off_1F4D091B8))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter_store);
  v6 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter_context);
  v7 = type metadata accessor for MedicationDosageFormatter();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC15HealthRecordsUI25MedicationDosageFormatter_store] = v5;
  *&v8[OBJC_IVAR____TtC15HealthRecordsUI25MedicationDosageFormatter_context] = v6;
  v16.receiver = v8;
  v16.super_class = v7;
  v9 = v5;
  v10 = objc_msgSendSuper2(&v16, sel_init);

  v17 = sub_1D1113220(v11);
  sub_1D1196DF8(&v17);

  v12 = v17;
  v13 = v10;
  v14 = sub_1D11981E0(v12);

  return v14;
}

unint64_t sub_1D1196884(void *a1)
{
  v17 = a1;
  v3 = off_1F4D091B0;
  v4 = sub_1D106F934(0, &qword_1EC60C5C8);
  if (!(v3)(v4, &off_1F4D091A8))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter_store);
  v6 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter_context);
  v7 = type metadata accessor for MedicationDosageFormatter();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC15HealthRecordsUI25MedicationDosageFormatter_store] = v5;
  *&v8[OBJC_IVAR____TtC15HealthRecordsUI25MedicationDosageFormatter_context] = v6;
  v16.receiver = v8;
  v16.super_class = v7;
  v9 = v5;
  v10 = objc_msgSendSuper2(&v16, sel_init);

  v17 = sub_1D1113220(v11);
  sub_1D1196DF8(&v17);

  v12 = v17;
  v13 = v10;
  v14 = sub_1D11981E0(v12);

  return v14;
}

id sub_1D1196A00()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter____lazy_storage___dosagesFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter____lazy_storage___dosagesFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter____lazy_storage___dosagesFormatter);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter_store);
    v5 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter_context);
    v6 = type metadata accessor for MedicationDosageFormatter();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC15HealthRecordsUI25MedicationDosageFormatter_store] = v4;
    *&v7[OBJC_IVAR____TtC15HealthRecordsUI25MedicationDosageFormatter_context] = v5;
    v13.receiver = v7;
    v13.super_class = v6;
    v8 = v4;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

unint64_t sub_1D1196AD0(void *a1)
{
  v13 = MEMORY[0x1E69E7CC0];
  v2 = sub_1D1196884(a1);
  sub_1D11220E0(v2);
  v3 = v13;
  if (v13 >> 62)
  {
    v4 = sub_1D13910DC();
  }

  else
  {
    v4 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v4 != 0;
  v6 = sub_1D1198574(a1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  MEMORY[0x1D3885D90]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();

  v3 = v13;
  if (!v4)
  {
    v5 = 1;
LABEL_8:
    v8 = sub_1D1198ABC(a1);
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = v8;
    MEMORY[0x1D3885D90]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v3 = v13;
    if (!v5)
    {
LABEL_12:
      v10 = sub_1D128719C(a1);
      if (v10)
      {
        v11 = v10;
        MEMORY[0x1D3885D90]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();

        return v13;
      }
    }
  }

  return v3;
}

id sub_1D1196CD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationOrderFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D1196D7C(uint64_t a1)
{
  result = sub_1D1196DA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D1196DA4()
{
  result = qword_1EC60C5C0;
  if (!qword_1EC60C5C0)
  {
    type metadata accessor for MedicationOrderFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60C5C0);
  }

  return result;
}

uint64_t sub_1D1196DF8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1247E34(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D1196E74(v6);
  return sub_1D13912BC();
}

void sub_1D1196E74(uint64_t *a1)
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
        sub_1D106F934(0, &qword_1EC60B110);
        v6 = sub_1D13904DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D1197260(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1D1196F88(0, v2, 1, a1);
  }
}

void sub_1D1196F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v51 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v42 - v11;
  v43 = a2;
  if (a3 != a2)
  {
    v12 = *a4;
    v13 = *a4 + 8 * a3;
    v47 = (v10 + 8);
    v48 = v12;
    v14 = v13 - 8;
    v15 = a1 - a3;
    v16 = &selRef_removeObserver_name_object_;
    v17 = &selRef_deselectRowAtIndexPath_animated_;
LABEL_6:
    v45 = v14;
    v46 = a3;
    v18 = *(v12 + 8 * a3);
    v44 = v15;
    v19 = v15;
    while (1)
    {
      v20 = *v14;
      v21 = v18;
      v22 = v20;
      v23 = [v21 v16[442]];
      if (v23 && (v24 = v23, v25 = [v23 v17[46]], v24, v25))
      {
        v26 = v16[442];
        v52 = v22;
        v27 = [v22 v26];
        if (!v27 || (v28 = v27, v29 = [v27 v17[46]], v28, !v29))
        {

LABEL_5:
          a3 = v46 + 1;
          v14 = v45 + 8;
          v15 = v44 - 1;
          if (v46 + 1 == v43)
          {
            return;
          }

          goto LABEL_6;
        }

        v30 = [v25 dateForUTC];
        v31 = v49;
        sub_1D138D52C();

        v32 = [v29 dateForUTC];
        v33 = v16;
        v34 = v50;
        sub_1D138D52C();

        LOBYTE(v32) = sub_1D138D50C();
        v35 = *v47;
        v36 = v34;
        v16 = v33;
        v37 = v51;
        (*v47)(v36, v51);
        v38 = v31;
        v12 = v48;
        v39 = v37;
        v17 = &selRef_deselectRowAtIndexPath_animated_;
        v35(v38, v39);

        if ((v32 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }

      if (!v12)
      {
        break;
      }

      v40 = *v14;
      v18 = *(v14 + 8);
      *v14 = v18;
      *(v14 + 8) = v40;
      v14 -= 8;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D1197260(void ***a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v129 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v116 - v13;
  v125 = a3;
  v14 = *(a3 + 8);
  if (v14 >= 1)
  {
    v119 = a4;
    v15 = 0;
    v126 = (v12 + 8);
    v16 = MEMORY[0x1E69E7CC0];
    v17 = &selRef_removeObserver_name_object_;
    v117 = a1;
    while (1)
    {
      v18 = v15++;
      if (v15 < v14)
      {
        v120 = v16;
        a4 = *v125;
        v19 = *(*v125 + 8 * v15);
        v132 = *(*v125 + 8 * v18);
        v20 = v132;
        v133 = v19;
        v5 = v19;
        v21 = v20;
        LODWORD(v131) = sub_1D11B8D54(&v133, &v132);
        if (v6)
        {

          return;
        }

        v15 = v18 + 2;
        if (v18 + 2 >= v14)
        {
          goto LABEL_20;
        }

        v118 = v18;
        v22 = (a4 + 8 * v18 + 16);
        v130 = v14;
        do
        {
          a4 = *(v22 - 1);
          v23 = *v22;
          v5 = a4;
          v24 = [v23 v17[442]];
          if (v24 && (a4 = v24, v25 = [v24 endDate], a4, v25))
          {
            v26 = [v5 v17[442]];
            if (v26 && (v27 = v26, a4 = [v26 endDate], v27, a4))
            {
              v124 = v15;
              v28 = a4;
              v29 = [v25 dateForUTC];
              v30 = v127;
              sub_1D138D52C();

              v31 = [v28 dateForUTC];
              v32 = v128;
              sub_1D138D52C();

              a4 = sub_1D138D50C();
              v33 = *v126;
              v34 = v32;
              v35 = v129;
              (*v126)(v34, v129);
              v33(v30, v35);
              v15 = v124;

              v17 = &selRef_removeObserver_name_object_;
              v14 = v130;
              if ((v131 ^ a4))
              {
                goto LABEL_19;
              }
            }

            else
            {

              v17 = &selRef_removeObserver_name_object_;
              v14 = v130;
              if (v131)
              {
                a1 = v117;
                v18 = v118;
                v16 = v120;
                goto LABEL_21;
              }
            }
          }

          else
          {

            if ((v131 & 1) == 0)
            {
              a1 = v117;
              v18 = v118;
              v16 = v120;
              goto LABEL_30;
            }
          }

          ++v15;
          ++v22;
        }

        while (v14 != v15);
        v15 = v14;
LABEL_19:
        a1 = v117;
        v18 = v118;
LABEL_20:
        v16 = v120;
        if (v131)
        {
LABEL_21:
          if (v15 < v18)
          {
            goto LABEL_139;
          }

          if (v18 < v15)
          {
            v36 = 8 * v15 - 8;
            v37 = 8 * v18;
            v38 = v15;
            v39 = v18;
            do
            {
              if (v39 != --v38)
              {
                v41 = *v125;
                if (!*v125)
                {
                  goto LABEL_143;
                }

                v40 = *(v41 + v37);
                *(v41 + v37) = *(v41 + v36);
                *(v41 + v36) = v40;
              }

              ++v39;
              v36 -= 8;
              v37 += 8;
            }

            while (v39 < v38);
          }
        }
      }

LABEL_30:
      v42 = v125[1];
      if (v15 >= v42)
      {
        goto LABEL_54;
      }

      if (__OFSUB__(v15, v18))
      {
        goto LABEL_136;
      }

      if (v15 - v18 >= v119)
      {
        goto LABEL_54;
      }

      v43 = v18 + v119;
      if (__OFADD__(v18, v119))
      {
        goto LABEL_137;
      }

      if (v43 >= v42)
      {
        v43 = v125[1];
      }

      if (v43 < v18)
      {
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      if (v15 == v43)
      {
        goto LABEL_54;
      }

      v120 = v16;
      v121 = v43;
      v116 = v6;
      v5 = *v125;
      v44 = *v125 + 8 * v15 - 8;
      v118 = v18;
      v45 = v18 - v15;
      v46 = &selRef_deselectRowAtIndexPath_animated_;
      while (2)
      {
        v47 = v44;
        v48 = *(v5 + 8 * v15);
        v122 = v45;
        v123 = v47;
        v124 = v15;
        v49 = v47;
        while (1)
        {
          a4 = *v49;
          v50 = v48;
          v51 = a4;
          v52 = [v50 v17[442]];
          if (!v52 || (a4 = v52, v53 = [v52 v46[46]], a4, !v53))
          {

            goto LABEL_49;
          }

          v54 = v17[442];
          v131 = v51;
          v55 = [v51 v54];
          if (!v55)
          {
            break;
          }

          a4 = v55;
          v56 = [v55 v46[46]];

          if (!v56)
          {
            break;
          }

          v57 = [v53 dateForUTC];
          v58 = v127;
          sub_1D138D52C();

          v59 = [v56 dateForUTC];
          v60 = v128;
          sub_1D138D52C();

          LODWORD(v130) = sub_1D138D50C();
          a4 = v5;
          v61 = *v126;
          v62 = v129;
          (*v126)(v60, v129);
          v63 = v58;
          v46 = &selRef_deselectRowAtIndexPath_animated_;
          v61(v63, v62);

          v17 = &selRef_removeObserver_name_object_;
          if ((v130 & 1) == 0)
          {
            goto LABEL_40;
          }

LABEL_49:
          if (!v5)
          {
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

          v64 = *v49;
          v48 = v49[1];
          *v49 = v48;
          v49[1] = v64;
          --v49;
          if (__CFADD__(v45++, 1))
          {
            goto LABEL_40;
          }
        }

        v17 = &selRef_removeObserver_name_object_;
LABEL_40:
        v15 = v124 + 1;
        v44 = (v123 + 1);
        v45 = v122 - 1;
        if (v124 + 1 != v121)
        {
          continue;
        }

        break;
      }

      v15 = v121;
      v6 = v116;
      a1 = v117;
      v16 = v120;
      v18 = v118;
LABEL_54:
      if (v15 < v18)
      {
        goto LABEL_135;
      }

      v66 = v16;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v16 = v66;
      }

      else
      {
        v16 = sub_1D10F7610(0, *(v66 + 2) + 1, 1, v66);
      }

      a4 = *(v16 + 2);
      v67 = *(v16 + 3);
      v5 = a4 + 1;
      if (a4 >= v67 >> 1)
      {
        v16 = sub_1D10F7610((v67 > 1), a4 + 1, 1, v16);
      }

      *(v16 + 2) = v5;
      v68 = &v16[16 * a4];
      *(v68 + 4) = v18;
      *(v68 + 5) = v15;
      v69 = *a1;
      if (!*a1)
      {
        goto LABEL_145;
      }

      if (a4)
      {
        while (2)
        {
          v70 = v5 - 1;
          if (v5 >= 4)
          {
            v75 = &v16[16 * v5 + 32];
            v76 = *(v75 - 64);
            v77 = *(v75 - 56);
            v81 = __OFSUB__(v77, v76);
            v78 = v77 - v76;
            if (v81)
            {
              goto LABEL_122;
            }

            v80 = *(v75 - 48);
            v79 = *(v75 - 40);
            v81 = __OFSUB__(v79, v80);
            v73 = v79 - v80;
            v74 = v81;
            if (v81)
            {
              goto LABEL_123;
            }

            v82 = &v16[16 * v5];
            v84 = *v82;
            v83 = *(v82 + 1);
            v81 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v81)
            {
              goto LABEL_125;
            }

            v81 = __OFADD__(v73, v85);
            v86 = v73 + v85;
            if (v81)
            {
              goto LABEL_128;
            }

            if (v86 >= v78)
            {
              v104 = &v16[16 * v70 + 32];
              v106 = *v104;
              v105 = *(v104 + 1);
              v81 = __OFSUB__(v105, v106);
              v107 = v105 - v106;
              if (v81)
              {
                goto LABEL_132;
              }

              if (v73 < v107)
              {
                v70 = v5 - 2;
              }
            }

            else
            {
LABEL_74:
              if (v74)
              {
                goto LABEL_124;
              }

              v87 = &v16[16 * v5];
              v89 = *v87;
              v88 = *(v87 + 1);
              v90 = __OFSUB__(v88, v89);
              v91 = v88 - v89;
              v92 = v90;
              if (v90)
              {
                goto LABEL_127;
              }

              v93 = &v16[16 * v70 + 32];
              v95 = *v93;
              v94 = *(v93 + 1);
              v81 = __OFSUB__(v94, v95);
              v96 = v94 - v95;
              if (v81)
              {
                goto LABEL_130;
              }

              if (__OFADD__(v91, v96))
              {
                goto LABEL_131;
              }

              if (v91 + v96 < v73)
              {
                goto LABEL_88;
              }

              if (v73 < v96)
              {
                v70 = v5 - 2;
              }
            }
          }

          else
          {
            if (v5 == 3)
            {
              v71 = *(v16 + 4);
              v72 = *(v16 + 5);
              v81 = __OFSUB__(v72, v71);
              v73 = v72 - v71;
              v74 = v81;
              goto LABEL_74;
            }

            v97 = &v16[16 * v5];
            v99 = *v97;
            v98 = *(v97 + 1);
            v81 = __OFSUB__(v98, v99);
            v91 = v98 - v99;
            v92 = v81;
LABEL_88:
            if (v92)
            {
              goto LABEL_126;
            }

            v100 = &v16[16 * v70];
            v102 = *(v100 + 4);
            v101 = *(v100 + 5);
            v81 = __OFSUB__(v101, v102);
            v103 = v101 - v102;
            if (v81)
            {
              goto LABEL_129;
            }

            if (v103 < v91)
            {
              break;
            }
          }

          a4 = v70 - 1;
          if (v70 - 1 >= v5)
          {
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
            goto LABEL_138;
          }

          if (!*v125)
          {
            goto LABEL_142;
          }

          v108 = v16;
          v109 = *&v16[16 * a4 + 32];
          v5 = *&v16[16 * v70 + 40];
          sub_1D1197C08((*v125 + 8 * v109), (*v125 + 8 * *&v16[16 * v70 + 32]), (*v125 + 8 * v5), v69);
          if (v6)
          {
            goto LABEL_117;
          }

          if (v5 < v109)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v108 = sub_1D1245848(v108);
          }

          if (a4 >= *(v108 + 2))
          {
            goto LABEL_121;
          }

          v110 = &v108[16 * a4];
          *(v110 + 4) = v109;
          *(v110 + 5) = v5;
          v134 = v108;
          sub_1D12457BC(v70);
          v16 = v134;
          v5 = *(v134 + 2);
          if (v5 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v14 = v125[1];
      v17 = &selRef_removeObserver_name_object_;
      if (v15 >= v14)
      {
        goto LABEL_106;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_106:
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_146;
  }

  a4 = v16;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v111 = a4;
  }

  else
  {
LABEL_140:
    v111 = sub_1D1245848(a4);
  }

  v134 = v111;
  a4 = *(v111 + 2);
  if (a4 < 2)
  {
LABEL_117:

    return;
  }

  while (*v125)
  {
    v112 = *&v111[16 * a4];
    v113 = v111;
    v114 = *&v111[16 * a4 + 24];
    sub_1D1197C08((*v125 + 8 * v112), (*v125 + 8 * *&v111[16 * a4 + 16]), (*v125 + 8 * v114), v5);
    if (v6)
    {
      goto LABEL_117;
    }

    if (v114 < v112)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = sub_1D1245848(v113);
    }

    if (a4 - 2 >= *(v113 + 2))
    {
      goto LABEL_134;
    }

    v115 = &v113[16 * a4];
    *v115 = v112;
    *(v115 + 1) = v114;
    v134 = v113;
    sub_1D12457BC(a4 - 1);
    v111 = v134;
    a4 = *(v134 + 2);
    if (a4 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_1D1197C08(void **a1, void **a2, char *a3, void **a4)
{
  v62 = sub_1D138D57C();
  v8 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v59 - v11;
  v68 = a1;
  v12 = a2 - a1;
  v13 = v12 / 8;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v16 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v68)
    {
      v60 = (v8 + 8);
      v35 = &selRef_removeObserver_name_object_;
LABEL_31:
      v59 = a2;
      v36 = a2 - 1;
      a3 -= 8;
      v37 = v16;
      v67 = a2 - 1;
      do
      {
        v38 = a4;
        v39 = *--v37;
        v40 = *v36;
        v41 = v39;
        v42 = v40;
        v43 = [v41 v35[442]];
        if (!v43 || (v44 = v43, v45 = [v43 endDate], v44, !v45))
        {

LABEL_43:
          a4 = v38;
          v57 = v67;
          if (a3 + 8 != v59)
          {
            *a3 = *v67;
          }

          if (v16 <= v38 || (a2 = v57, v57 <= v68))
          {
            a2 = v57;
            goto LABEL_50;
          }

          goto LABEL_31;
        }

        v46 = [v42 v35[442]];
        if (v46 && (v47 = v46, v48 = [v46 endDate], v47, v48))
        {
          v49 = [v45 dateForUTC];
          v64 = v16;
          v50 = v66;
          sub_1D138D52C();

          v51 = [v48 dateForUTC];
          v65 = a3;
          v52 = v61;
          sub_1D138D52C();

          v63 = sub_1D138D50C();
          v53 = *v60;
          v54 = v52;
          a3 = v65;
          v55 = v62;
          (*v60)(v54, v62);
          v56 = v50;
          v16 = v64;
          v53(v56, v55);

          v35 = &selRef_removeObserver_name_object_;
          if (v63)
          {
            goto LABEL_43;
          }
        }

        else
        {

          v35 = &selRef_removeObserver_name_object_;
        }

        a4 = v38;
        if (a3 + 8 != v16)
        {
          *a3 = *v37;
        }

        a3 -= 8;
        v16 = v37;
        v36 = v67;
      }

      while (v37 > v38);
      v16 = v37;
      a2 = v59;
    }
  }

  else
  {
    if (a4 != v68 || &v68[v13] <= a4)
    {
      memmove(a4, v68, 8 * v13);
    }

    v16 = &a4[v13];
    if (v12 >= 8 && a2 < a3)
    {
      v64 = (v8 + 8);
      v17 = &selRef_removeObserver_name_object_;
      while (1)
      {
        v18 = *a2;
        v67 = a4;
        v19 = *a4;
        v20 = v18;
        v21 = v19;
        v22 = [v20 v17[442]];
        if (!v22)
        {
          break;
        }

        v23 = v22;
        v24 = [v22 endDate];

        if (!v24)
        {
          break;
        }

        v25 = [v21 v17[442]];
        if (v25 && (v26 = v25, v27 = [v25 endDate], v26, v27))
        {
          v28 = [v24 dateForUTC];
          sub_1D138D52C();

          v29 = [v27 dateForUTC];
          v30 = v61;
          sub_1D138D52C();

          LODWORD(v65) = sub_1D138D50C();
          v31 = *v64;
          v32 = v62;
          (*v64)(v30, v62);
          v31(v66, v32);

          v17 = &selRef_removeObserver_name_object_;
          if (v65)
          {
            goto LABEL_17;
          }
        }

        else
        {

          v17 = &selRef_removeObserver_name_object_;
        }

        v33 = v67;
        a4 = v67 + 1;
        if (v68 != v67)
        {
          goto LABEL_18;
        }

LABEL_19:
        ++v68;
        if (a4 >= v16 || a2 >= a3)
        {
          goto LABEL_48;
        }
      }

LABEL_17:
      v33 = a2;
      v34 = v68 == a2++;
      a4 = v67;
      if (v34)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v68 = *v33;
      goto LABEL_19;
    }

LABEL_48:
    a2 = v68;
  }

LABEL_50:
  if (a2 != a4 || a2 >= (a4 + ((v16 - a4 + (v16 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v16 - a4));
  }

  return 1;
}

unint64_t sub_1D11981E0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v3 = 0;
    v33 = v1 & 0xFFFFFFFFFFFFFF8;
    v34 = v1 & 0xC000000000000001;
    v32 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    v30 = i;
    v31 = v1;
    while (1)
    {
      if (v34)
      {
        v5 = MEMORY[0x1D3886B70](v3, v1);
      }

      else
      {
        if (v3 >= *(v33 + 16))
        {
          goto LABEL_43;
        }

        v5 = *(v32 + 8 * v3);
      }

      v6 = v5;
      v7 = __OFADD__(v3, 1);
      v8 = v3 + 1;
      if (v7)
      {
        break;
      }

      sub_1D106F934(0, &qword_1EC609BE8);
      v9 = v6;
      v10 = sub_1D11B87C8(v9);
      if (v10)
      {
        v11 = v10;
        sub_1D106F424();
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1D139E810;
        *(v12 + 32) = v11;
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      v13 = v12 >> 62;
      if (v12 >> 62)
      {
        v14 = sub_1D13910DC();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v4 >> 62;
      if (v4 >> 62)
      {
        v16 = sub_1D13910DC();
      }

      else
      {
        v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v38 = v14;
      v7 = __OFADD__(v16, v14);
      v17 = v16 + v14;
      if (v7)
      {
        goto LABEL_44;
      }

      v35 = v8;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v15)
        {
          goto LABEL_25;
        }

LABEL_24:
        sub_1D13910DC();
        goto LABEL_25;
      }

      if (v15)
      {
        goto LABEL_24;
      }

      v18 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = v4;
        goto LABEL_26;
      }

LABEL_25:
      v36 = sub_1D139122C();
      v18 = v36 & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v13)
      {
        v21 = sub_1D13910DC();
        if (v21)
        {
LABEL_30:
          if (((v20 >> 1) - v19) < v38)
          {
            goto LABEL_46;
          }

          v22 = v18 + 8 * v19 + 32;
          if (v13)
          {
            if (v21 < 1)
            {
              goto LABEL_48;
            }

            sub_1D118F960(0, &qword_1EC60AD10, MEMORY[0x1E69E62F8]);
            sub_1D1116610();
            for (j = 0; j != v21; ++j)
            {
              v24 = sub_1D1112FB8(v37, j, v12);
              v26 = *v25;
              (v24)(v37, 0);
              *(v22 + 8 * j) = v26;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          i = v30;
          v1 = v31;
          v4 = v36;
          if (v38 >= 1)
          {
            v27 = *(v18 + 16);
            v7 = __OFADD__(v27, v38);
            v28 = v27 + v38;
            if (v7)
            {
              goto LABEL_47;
            }

            *(v18 + 16) = v28;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_30;
        }
      }

      v4 = v36;
      if (v38 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      v3 = v35;
      if (v35 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1D1198574(void *a1)
{
  v1 = [a1 prescriber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139016C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  v7 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v7 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v8 = sub_1D139012C();

  [v7 setTitle_];

  v9 = sub_1D139012C();

  [v7 setSubtitle_];

  [v7 setSeparatorStyle_];
  [v7 setSeparatorHidden_];
  [v7 setExtraTopPadding_];

  return v7;
}

id sub_1D119873C(void *a1)
{
  sub_1D1107C14(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v20 - v4;
  if ([a1 numberOfFills] >= 1)
  {
    v6 = sub_1D138D67C();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_1D1107C14(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D139E700;
    v8 = [a1 numberOfFills];
    v9 = MEMORY[0x1E69E65A8];
    *(v7 + 56) = MEMORY[0x1E69E6530];
    *(v7 + 64) = v9;
    *(v7 + 32) = v8;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v10 = sub_1D138D1CC();
    v12 = v11;
    if (*(v7 + 16))
    {
      v10 = sub_1D139019C();
      v14 = v13;

      sub_1D10CD608(v5);
      v12 = v14;
    }

    else
    {
      sub_1D10CD608(v5);
    }

    v15 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v15 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v16 setDisplayItemType_];
      sub_1D138D1CC();
      v17 = sub_1D139012C();

      [v16 setTitle_];

      v18 = sub_1D139012C();

      [v16 setSubtitle_];

      [v16 setSeparatorStyle_];
      [v16 setSeparatorHidden_];
      [v16 setExtraTopPadding_];

      return v16;
    }
  }

  return 0;
}

id sub_1D1198ABC(void *a1)
{
  v1 = [a1 reason];
  if (!v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v2 = v1;
  sub_1D106F934(0, &qword_1EC609980);
  v3 = sub_1D139045C();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_1D13910DC();
    if (v4)
    {
LABEL_4:
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = v5;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1D3886B70](v7, v3);
          }

          else
          {
            if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v8 = *(v3 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v10 = [v8 localizedPreferredName];
          if (v10)
          {
            break;
          }

          ++v7;
          if (v5 == v4)
          {
            goto LABEL_25;
          }
        }

        v11 = v10;
        v12 = sub_1D139016C();
        v25 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D10F7284(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1D10F7284((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v25;
      }

      while (v5 != v4);
      goto LABEL_25;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_25:

LABEL_26:
  v17 = Array<A>.newlineJoined.getter(v6);
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v21 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v22 = sub_1D139012C();

    [v21 setTitle_];

    v23 = sub_1D139012C();

    [v21 setSubtitle_];

    [v21 setSeparatorStyle_];
    [v21 setSeparatorHidden_];
    [v21 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v21;
}

id sub_1D1198E20(void *a1)
{
  v1 = [a1 reasonEnded];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 localizedPreferredName];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_1D139016C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_7:
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v9 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v10 = sub_1D139012C();

    [v9 setTitle_];

    v11 = sub_1D139012C();

    [v9 setSubtitle_];

    [v9 setSeparatorStyle_];
    [v9 setSeparatorHidden_];
    [v9 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v9;
}

void *sub_1D1199030(void *a1)
{
  v1 = a1;
  v33[4] = sub_1D1201200(a1);
  if (qword_1EE06AD00 != -1)
  {
LABEL_14:
    swift_once();
  }

  v2 = sub_1D138D1CC();
  v30 = v3;
  v31 = v2;
  sub_1D106F934(0, &qword_1EC609BE8);
  v4 = [v1 earliestDosageDate];
  v5 = [v1 meaningfulDateTitle];
  v6 = sub_1D139016C();
  v8 = v7;

  v33[5] = sub_1D11EDE68(v31, v30, v4, v6, v8);
  v9 = sub_1D138D1CC();
  v11 = v10;
  v12 = [v1 writtenDate];
  v13 = [v1 meaningfulDateTitle];
  v14 = sub_1D139016C();
  v16 = v15;

  v33[6] = sub_1D11EDE68(v9, v11, v12, v14, v16);
  v17 = sub_1D138D1CC();
  v19 = v18;
  v20 = [v1 endedDate];
  v21 = [v1 meaningfulDateTitle];
  v22 = sub_1D139016C();
  v24 = v23;

  v33[7] = sub_1D11EDE68(v17, v19, v20, v22, v24);
  v33[8] = sub_1D1198574(v1);
  v33[9] = sub_1D119873C(v1);
  v33[10] = sub_1D1198ABC(v1);
  v33[11] = sub_1D1198E20(v1);
  v25 = 0;
  v33[12] = sub_1D128719C(v1);
  v1 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
LABEL_3:
  if (v25 <= 9)
  {
    v26 = 9;
  }

  else
  {
    v26 = v25;
  }

  while (v25 != 9)
  {
    if (v26 == v25)
    {
      __break(1u);
      goto LABEL_14;
    }

    v27 = v33[v25++ + 4];
    if (v27)
    {
      v28 = v27;
      MEMORY[0x1D3885D90]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v1 = v32;
      goto LABEL_3;
    }
  }

  sub_1D118F960(0, &qword_1EC60A678, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1D11993F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v63 = sub_1D138D67C();
  v75 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v54 - v7;
  v76 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v54 - v10;
  v11 = a1[7];
  if (*(v11 + 16) == 1 && (sub_1D12685A0(a1[7]), v14))
  {
    v71 = v13;
    v72 = v12;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  sub_1D109515C(0, &qword_1EC609C78, &_s13FormattedDataVN, _s7PDFDataVMa);
  v16 = a1 + *(v15 + 28);
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[3];
  v65 = a1[2];
  v66 = v17;
  v20 = a1[5];
  v64 = a1[4];
  v21 = a1[6];
  MEMORY[0x1EEE9AC00](v20);
  v52 = v16;
  v77 = v21;
  v67 = v22;

  v69 = v18;

  v68 = v19;

  v23 = v74;
  sub_1D119C660(sub_1D1199BB0, (&v54 - 4), sub_1D1245EB0, &_s16FormattedSectionVN, sub_1D119D568, sub_1D119C968);
  if (v23)
  {

    __break(1u);
  }

  else
  {
    v54 = a2;
    v73 = &v54;
    v74 = v5;
    v24 = _s13ConfigurationVMa();
    v25 = *(v24 + 36);
    v26 = v77;
    MEMORY[0x1EEE9AC00](v24);
    v52 = v11;
    v53 = v16;
    v60 = sub_1D10F2BD4(sub_1D119C3D4, (&v54 - 4), v26);
    v61 = 0;

    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v52 = 0xE000000000000000;
    v27 = sub_1D138D1CC();
    v58 = v28;
    v59 = v27;
    v52 = 0xE000000000000000;
    v29 = sub_1D138D1CC();
    v56 = v30;
    v57 = v29;
    v31 = v75;
    v32 = *(v75 + 16);
    v34 = v62;
    v33 = v63;
    v32(v62, &v16[v25], v63);
    v35 = v16;
    v36 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v55 = swift_allocObject();
    v75 = *(v31 + 32);
    (v75)(v55 + v36, v34, v33);
    v37 = v70;
    v32(v70, (v35 + v25), v33);
    v62 = swift_allocObject();
    (v75)(&v62[v36], v37, v33);
    v38 = v74;
    v32(v74, (v35 + v25), v33);
    v39 = swift_allocObject();
    (v75)(v39 + v36, v38, v33);
    sub_1D109515C(0, &qword_1EC60C5D8, &_s10SortedDataVN, _s7PDFDataVMa);
    v41 = v40;
    v42 = v54;
    sub_1D10921C4(v35, v54 + *(v40 + 28));
    v43 = v69;
    *v42 = v66;
    v42[1] = v43;
    v44 = v68;
    v42[2] = v65;
    v42[3] = v44;
    v45 = v67;
    v42[4] = v64;
    v42[5] = v45;
    v46 = v71;
    v42[6] = v72;
    v42[7] = v46;
    v42[8] = v60;
    v42[9] = 0x676F6C656C707061;
    v42[10] = 0xE90000000000006FLL;
    v47 = v58;
    v42[11] = v59;
    v42[12] = v47;
    v48 = v56;
    v42[13] = v57;
    v42[14] = v48;
    v49 = v55;
    v42[15] = sub_1D119C3F4;
    v42[16] = v49;
    v50 = v62;
    v42[17] = sub_1D119C40C;
    v42[18] = v50;
    v42[19] = sub_1D119C530;
    v42[20] = v39;
    return (*(*(v41 - 8) + 56))(v42, 0, 1, v41);
  }

  return result;
}

BOOL sub_1D11999EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E6969770];
  sub_1D11A3C30(0, &qword_1EC60DF40, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v19 - v8;
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(_s13ConfigurationVMa() + 36);
  v19[2] = v11;
  v19[3] = v10;
  v19[0] = v13;
  v19[1] = v12;
  v15 = sub_1D138D67C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v9, a3 + v14, v15);
  (*(v16 + 56))(v9, 0, 1, v15);
  sub_1D10940C8();

  v17 = sub_1D1390FFC();
  sub_1D11A3AF8(v9, &qword_1EC60DF40, v6);

  return v17 == -1;
}

uint64_t sub_1D1199BD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v12 = *(a1 + 40);

  if (v12 <= 1)
  {
    if (v12)
    {
      result = sub_1D1199FC8(v11, a2, a3);
    }

    else
    {
      result = sub_1D1199C9C(v11, a2, a3);
    }
  }

  else if (v12 == 2)
  {
    result = sub_1D119A2F4(v11, a2, a3);
  }

  else if (v12 == 3)
  {
    result = sub_1D119A620(v11, a2, a3);
  }

  else
  {
    result = sub_1D119A94C(v11, a2, a3);
  }

  *a4 = v8;
  *(a4 + 8) = v7;
  *(a4 + 16) = v10;
  *(a4 + 24) = v9;
  *(a4 + 32) = result;
  *(a4 + 40) = v12;
  return result;
}

uint64_t sub_1D1199C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s13ConfigurationVMa();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + *(v9 + 44);
  v42 = a2;
  v43 = v10;
  v11 = a1;
  v12 = 0;
  v13 = sub_1D11A37AC(v11, sub_1D11A3A94, v41, sub_1D10FE0D4);
  v40 = v10;
  *&v45 = v13;

  sub_1D119C5B0(sub_1D11A4034, v39, sub_1D1245F64, &qword_1EC60ADE8, &qword_1EC609CD8, &_s15FormattedRecordVN);
  v38 = 0;

  v14 = v45;
  v36 = v8;
  sub_1D10921C4(a3, v8);
  v15 = 0;
  v37 = v14[2];
  v34 = MEMORY[0x1E69E7CC0];
  v35 = v14;
LABEL_2:
  v16 = 7 * v15;
  while (1)
  {
    if (v37 == v15)
    {

      sub_1D1092890(v36);
      return v34;
    }

    if (v15 >= v14[2])
    {
      break;
    }

    v17 = v14[v16 + 9];
    v18 = v14[v16 + 10];
    v19 = v14[v16 + 8];
    v20 = v14[v16 + 7];
    v21 = v14[v16 + 6];
    v45 = *&v14[v16 + 4];
    v46 = v21;
    v47 = v20;
    v48 = v19;
    v49 = v17;

    v14 = objc_autoreleasePoolPush();
    v12 = v38;
    sub_1D119AC78(&v45, v36, v18, v44);
    v38 = v12;
    if (v12)
    {
      goto LABEL_14;
    }

    ++v15;
    v16 += 7;
    v22 = v44[0];
    v23 = v44[1];
    v24 = v44[2];
    v25 = v44[3];
    v12 = v44[4];
    objc_autoreleasePoolPop(v14);

    v14 = v35;
    if (v23)
    {
      v26 = v15;
      v27 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1D10F8F28(0, v27[2] + 1, 1, v27);
      }

      v28 = v12;
      v12 = v23;
      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1D10F8F28((v29 > 1), v30 + 1, 1, v27);
      }

      v27[2] = v30 + 1;
      v34 = v27;
      v31 = &v27[5 * v30];
      v31[4] = v22;
      v31[5] = v23;
      v31[6] = v24;
      v31[7] = v25;
      v31[8] = v28;
      v15 = v26;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  objc_autoreleasePoolPop(v14);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1199FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s13ConfigurationVMa();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + *(v9 + 44);
  v42 = a2;
  v43 = v10;
  v11 = a1;
  v12 = 0;
  v13 = sub_1D11A37AC(v11, sub_1D11A3C84, v41, sub_1D10FE094);
  v40 = v10;
  *&v45 = v13;

  sub_1D119C5B0(sub_1D11A4034, v39, sub_1D1245F3C, &qword_1EC60AE00, &qword_1EC609CF8, &_s20FormattedRecordValueVN);
  v38 = 0;

  v14 = v45;
  v36 = v8;
  sub_1D10921C4(a3, v8);
  v15 = 0;
  v37 = v14[2];
  v34 = MEMORY[0x1E69E7CC0];
  v35 = v14;
LABEL_2:
  v16 = 7 * v15;
  while (1)
  {
    if (v37 == v15)
    {

      sub_1D1092890(v36);
      return v34;
    }

    if (v15 >= v14[2])
    {
      break;
    }

    v17 = v14[v16 + 9];
    v18 = v14[v16 + 10];
    v19 = v14[v16 + 8];
    v20 = v14[v16 + 7];
    v21 = v14[v16 + 6];
    v45 = *&v14[v16 + 4];
    v46 = v21;
    v47 = v20;
    v48 = v19;
    v49 = v17;

    v14 = objc_autoreleasePoolPush();
    v12 = v38;
    sub_1D119AC78(&v45, v36, v18, v44);
    v38 = v12;
    if (v12)
    {
      goto LABEL_14;
    }

    ++v15;
    v16 += 7;
    v22 = v44[0];
    v23 = v44[1];
    v24 = v44[2];
    v25 = v44[3];
    v12 = v44[4];
    objc_autoreleasePoolPop(v14);

    v14 = v35;
    if (v23)
    {
      v26 = v15;
      v27 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1D10F8EEC(0, v27[2] + 1, 1, v27);
      }

      v28 = v12;
      v12 = v23;
      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1D10F8EEC((v29 > 1), v30 + 1, 1, v27);
      }

      v27[2] = v30 + 1;
      v34 = v27;
      v31 = &v27[5 * v30];
      v31[4] = v22;
      v31[5] = v23;
      v31[6] = v24;
      v31[7] = v25;
      v31[8] = v28;
      v15 = v26;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  objc_autoreleasePoolPop(v14);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D119A2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s13ConfigurationVMa();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + *(v9 + 44);
  v42 = a2;
  v43 = v10;
  v11 = a1;
  v12 = 0;
  v13 = sub_1D11A37AC(v11, sub_1D11A3EC0, v41, sub_1D10FE054);
  v40 = v10;
  *&v45 = v13;

  sub_1D119C5B0(sub_1D11A4034, v39, sub_1D1245F14, &qword_1EC60AE18, &qword_1EC609D20, &_s27FormattedRecordValueInRangeVN);
  v38 = 0;

  v14 = v45;
  v36 = v8;
  sub_1D10921C4(a3, v8);
  v15 = 0;
  v37 = v14[2];
  v34 = MEMORY[0x1E69E7CC0];
  v35 = v14;
LABEL_2:
  v16 = 7 * v15;
  while (1)
  {
    if (v37 == v15)
    {

      sub_1D1092890(v36);
      return v34;
    }

    if (v15 >= v14[2])
    {
      break;
    }

    v17 = v14[v16 + 9];
    v18 = v14[v16 + 10];
    v19 = v14[v16 + 8];
    v20 = v14[v16 + 7];
    v21 = v14[v16 + 6];
    v45 = *&v14[v16 + 4];
    v46 = v21;
    v47 = v20;
    v48 = v19;
    v49 = v17;

    v14 = objc_autoreleasePoolPush();
    v12 = v38;
    sub_1D119AC78(&v45, v36, v18, v44);
    v38 = v12;
    if (v12)
    {
      goto LABEL_14;
    }

    ++v15;
    v16 += 7;
    v22 = v44[0];
    v23 = v44[1];
    v24 = v44[2];
    v25 = v44[3];
    v12 = v44[4];
    objc_autoreleasePoolPop(v14);

    v14 = v35;
    if (v23)
    {
      v26 = v15;
      v27 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1D10F8EB0(0, v27[2] + 1, 1, v27);
      }

      v28 = v12;
      v12 = v23;
      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1D10F8EB0((v29 > 1), v30 + 1, 1, v27);
      }

      v27[2] = v30 + 1;
      v34 = v27;
      v31 = &v27[5 * v30];
      v31[4] = v22;
      v31[5] = v23;
      v31[6] = v24;
      v31[7] = v25;
      v31[8] = v28;
      v15 = v26;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  objc_autoreleasePoolPop(v14);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D119A620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s13ConfigurationVMa();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + *(v9 + 44);
  v42 = a2;
  v43 = v10;
  v11 = a1;
  v12 = 0;
  v13 = sub_1D11A37AC(v11, sub_1D11A3F40, v41, sub_1D10FE014);
  v40 = v10;
  *&v45 = v13;

  sub_1D119C5B0(sub_1D11A3F48, v39, sub_1D1245EEC, &qword_1EC60AE30, &qword_1EC609CB0, &_s22FormattedRecord3ValuesVN);
  v38 = 0;

  v14 = v45;
  v36 = v8;
  sub_1D10921C4(a3, v8);
  v15 = 0;
  v37 = v14[2];
  v34 = MEMORY[0x1E69E7CC0];
  v35 = v14;
LABEL_2:
  v16 = 7 * v15;
  while (1)
  {
    if (v37 == v15)
    {

      sub_1D1092890(v36);
      return v34;
    }

    if (v15 >= v14[2])
    {
      break;
    }

    v17 = v14[v16 + 9];
    v18 = v14[v16 + 10];
    v19 = v14[v16 + 8];
    v20 = v14[v16 + 7];
    v21 = v14[v16 + 6];
    v45 = *&v14[v16 + 4];
    v46 = v21;
    v47 = v20;
    v48 = v19;
    v49 = v17;

    v14 = objc_autoreleasePoolPush();
    v12 = v38;
    sub_1D119AC78(&v45, v36, v18, v44);
    v38 = v12;
    if (v12)
    {
      goto LABEL_14;
    }

    ++v15;
    v16 += 7;
    v22 = v44[0];
    v23 = v44[1];
    v24 = v44[2];
    v25 = v44[3];
    v12 = v44[4];
    objc_autoreleasePoolPop(v14);

    v14 = v35;
    if (v23)
    {
      v26 = v15;
      v27 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1D10F8D18(0, v27[2] + 1, 1, v27);
      }

      v28 = v12;
      v12 = v23;
      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1D10F8D18((v29 > 1), v30 + 1, 1, v27);
      }

      v27[2] = v30 + 1;
      v34 = v27;
      v31 = &v27[5 * v30];
      v31[4] = v22;
      v31[5] = v23;
      v31[6] = v24;
      v31[7] = v25;
      v31[8] = v28;
      v15 = v26;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  objc_autoreleasePoolPop(v14);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D119A94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s13ConfigurationVMa();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + *(v9 + 44);
  v42 = a2;
  v43 = v10;
  v11 = a1;
  v12 = 0;
  v13 = sub_1D11A37AC(v11, sub_1D11A3FC4, v41, sub_1D10FDFD4);
  v40 = v10;
  *&v45 = v13;

  sub_1D119C5B0(sub_1D11A4034, v39, sub_1D1245EC4, &qword_1EC60AE48, &qword_1EC609D50, &_s23FormattedRecordMetadataVN);
  v38 = 0;

  v14 = v45;
  v36 = v8;
  sub_1D10921C4(a3, v8);
  v15 = 0;
  v37 = v14[2];
  v34 = MEMORY[0x1E69E7CC0];
  v35 = v14;
LABEL_2:
  v16 = 7 * v15;
  while (1)
  {
    if (v37 == v15)
    {

      sub_1D1092890(v36);
      return v34;
    }

    if (v15 >= v14[2])
    {
      break;
    }

    v17 = v14[v16 + 9];
    v18 = v14[v16 + 10];
    v19 = v14[v16 + 8];
    v20 = v14[v16 + 7];
    v21 = v14[v16 + 6];
    v45 = *&v14[v16 + 4];
    v46 = v21;
    v47 = v20;
    v48 = v19;
    v49 = v17;

    v14 = objc_autoreleasePoolPush();
    v12 = v38;
    sub_1D119AC78(&v45, v36, v18, v44);
    v38 = v12;
    if (v12)
    {
      goto LABEL_14;
    }

    ++v15;
    v16 += 7;
    v22 = v44[0];
    v23 = v44[1];
    v24 = v44[2];
    v25 = v44[3];
    v12 = v44[4];
    objc_autoreleasePoolPop(v14);

    v14 = v35;
    if (v23)
    {
      v26 = v15;
      v27 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1D10F8CDC(0, v27[2] + 1, 1, v27);
      }

      v28 = v12;
      v12 = v23;
      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1D10F8CDC((v29 > 1), v30 + 1, 1, v27);
      }

      v27[2] = v30 + 1;
      v34 = v27;
      v31 = &v27[5 * v30];
      v31[4] = v22;
      v31[5] = v23;
      v31[6] = v24;
      v31[7] = v25;
      v31[8] = v28;
      v15 = v26;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  objc_autoreleasePoolPop(v14);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D119AC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v58 = a2;
  v60 = a4;
  v7 = sub_1D138F0BC();
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11A3C30(0, &qword_1EE06B500, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_1D138D57C();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11A3C30(0, &qword_1EC60F290, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - v16;
  sub_1D11A3C30(0, &qword_1EC60E4E0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v47 - v19;
  v21 = sub_1D138D18C();
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v26 = sub_1D138D1CC();
    v28 = v27;
    goto LABEL_10;
  }

  v51 = v23;
  v52 = v22;
  v48 = v7;
  v49 = a3;
  v53 = v4;
  v50 = *(a1 + 8);
  v29 = sub_1D138D76C();
  (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
  v30 = sub_1D138D7CC();
  (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
  sub_1D138D16C();
  v31 = _s13ConfigurationVMa();
  v32 = v58;
  sub_1D138D6FC();
  v34 = v56;
  v33 = v57;
  if ((*(v56 + 48))(v11, 1, v57) != 1)
  {
    (*(v34 + 32))(v14, v11, v33);
    v42 = *(v32 + *(v31 + 24));
    v43 = sub_1D138D4EC();
    v44 = [v42 stringFromDate_];

    v26 = sub_1D139016C();
    v28 = v45;

    (*(v34 + 8))(v14, v33);
    (*(v51 + 8))(v25, v52);
    a3 = v49;
LABEL_10:
    v40 = *(a1 + 32);
    v41 = *(a1 + 40);
    sub_1D11A3A9C(a1, v59);

    goto LABEL_11;
  }

  sub_1D11A3AF8(v11, &qword_1EE06B500, MEMORY[0x1E6969530]);
  v35 = v54;
  sub_1D138F06C();
  v36 = sub_1D138F0AC();
  v37 = sub_1D13907FC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1D101F000, v36, v37, "[PDF]: Failed to create a date from date components.", v38, 2u);
    MEMORY[0x1D38882F0](v38, -1, -1);
  }

  (*(v55 + 8))(v35, v48);
  result = (*(v51 + 8))(v25, v52);
  v26 = 0;
  v28 = 0;
  v40 = 0;
  v41 = 0;
  a3 = 0;
LABEL_11:
  v46 = v60;
  *v60 = v26;
  v46[1] = v28;
  v46[2] = v40;
  v46[3] = v41;
  v46[4] = a3;
  return result;
}

uint64_t sub_1D119B308@<X0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D11A3B54(a1, a3, &v35);
  v11 = v35.n128_u64[1];
  v10 = v35.n128_u64[0];
  v12 = v36;
  v33 = v37;
  v31 = v39;
  v32 = v38;
  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v26 = a4;
    v27 = v36;
    v28 = v35.n128_u64[1];
    v29 = v35.n128_u64[0];
    v30 = a5;
    v34 = MEMORY[0x1E69E7CC0];
    v25[5] = a3;

    sub_1D10FD9C4(0, v13, 0);
    v14 = v34;
    v15 = (a2 + 48);
    do
    {
      v16 = *(v15 - 2);
      v17 = *(v15 - 1);
      v18 = *v15;
      v34 = v14;
      v19 = *(v14 + 16);
      v20 = *(v14 + 24);

      if (v19 >= v20 >> 1)
      {
        sub_1D10FD9C4((v20 > 1), v19 + 1, 1);
        v14 = v34;
      }

      *(v14 + 16) = v19 + 1;
      v21 = (v14 + 24 * v19);
      v21[4] = v16;
      v21[5] = v17;
      v21[6] = v18;
      v15 += 3;
      --v13;
    }

    while (v13);

    v10 = v29;
    a5 = v30;
    v12 = v27;
    v11 = v28;
    a4 = v26;
  }

  MEMORY[0x1EEE9AC00](v9);
  v25[2] = a4;
  v34 = v14;

  sub_1D119C660(sub_1D11A3C00, v25, sub_1D1245ED8, &_s23FormattedRecordMetadataVN, sub_1D119DED4, sub_1D119CB18);

  v23 = v34;
  *a5 = v10;
  *(a5 + 8) = v11;
  *(a5 + 16) = v12;
  *(a5 + 24) = v33;
  v24 = v31;
  *(a5 + 32) = v32;
  *(a5 + 40) = v24;
  *(a5 + 48) = v23;
  return result;
}

uint64_t sub_1D119B52C@<X0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v53 = a4;
  v60 = a5;
  v8 = sub_1D138CF3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11A3B54(a1, a3, &v84);
  v58 = v84.n128_u64[1];
  v59 = v84.n128_u64[0];
  v57 = v85;
  v56 = v86;
  v55 = v87;
  v54 = v88;
  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v83 = MEMORY[0x1E69E7CC0];

    sub_1D10FDB44(0, v13, 0);
    v15 = (a2 + 32);
    v14 = v83;
    v61 = (v9 + 8);
    v16 = v13 - 1;
    v63 = a3;
    v62 = v8;
    while (1)
    {
      v75 = v16;
      v17 = v15[2];
      v18 = v15[4];
      v81 = v15[3];
      v82 = v18;
      v20 = *v15;
      v19 = v15[1];
      v64 = v15;
      v79 = v19;
      v80 = v17;
      v78 = v20;
      v21 = *(a3 + 16);
      v76 = v14;
      if (v21 == 1)
      {
        goto LABEL_4;
      }

      v22 = v82;
      if (!*(&v82 + 1))
      {
        v74 = v82;
        sub_1D10932A8(&v78, v77);
        goto LABEL_11;
      }

      if (!v21)
      {
LABEL_4:
        sub_1D10932A8(&v78, v77);
      }

      else
      {
        sub_1D10932A8(&v78, v77);
        v23 = sub_1D11362EC(v22, *(&v22 + 1));
        if (v24)
        {
          v25 = (*(a3 + 56) + 16 * v23);
          v26 = v25[1];
          v74 = *v25;
          v71 = v26;

          goto LABEL_12;
        }
      }

      v74 = 0;
LABEL_11:
      v71 = 0;
LABEL_12:
      v27 = v79;
      v28 = v80;
      v65 = *(&v81 + 1);
      v66 = v81;
      v77[0] = v78;
      sub_1D138CF2C();
      sub_1D10940C8();
      v73 = sub_1D1390FAC();
      v72 = v29;
      v30 = *v61;
      v31 = v62;
      (*v61)(v11, v62);
      v77[0] = v27;
      v32 = v31;
      sub_1D138CF2C();
      v70 = sub_1D1390FAC();
      v69 = v33;
      v30(v11, v31);
      v77[0] = v28;
      sub_1D138CF2C();
      v68 = sub_1D1390FAC();
      v67 = v34;
      v30(v11, v31);
      *&v77[0] = v66;
      *(&v77[0] + 1) = v65;
      sub_1D138CF2C();
      v35 = sub_1D1390FAC();
      v37 = v36;
      v30(v11, v31);
      if (v71)
      {
        *&v77[0] = v74;
        *(&v77[0] + 1) = v71;
        sub_1D138CF2C();
        v38 = sub_1D1390FAC();
        v40 = v39;
        v30(v11, v32);

        sub_1D1093370(&v78);
      }

      else
      {
        sub_1D1093370(&v78);
        v40 = 0;
        v38 = v74;
      }

      v14 = v76;
      v83 = v76;
      v42 = *(v76 + 16);
      v41 = *(v76 + 24);
      a3 = v63;
      if (v42 >= v41 >> 1)
      {
        sub_1D10FDB44((v41 > 1), v42 + 1, 1);
        v14 = v83;
      }

      *(v14 + 16) = v42 + 1;
      v43 = (v14 + 80 * v42);
      v44 = v72;
      v43[4] = v73;
      v43[5] = v44;
      v45 = v69;
      v43[6] = v70;
      v43[7] = v45;
      v46 = v67;
      v43[8] = v68;
      v43[9] = v46;
      v43[10] = v35;
      v43[11] = v37;
      v43[12] = v38;
      v43[13] = v40;
      if (!v75)
      {

        break;
      }

      v15 = v64 + 5;
      v16 = v75 - 1;
    }
  }

  MEMORY[0x1EEE9AC00](v12);
  *(&v52 - 2) = v53;
  *&v78 = v14;

  sub_1D119C660(sub_1D11A3F64, (&v52 - 4), sub_1D1245F00, &_s22FormattedRecord3ValuesVN, sub_1D119F01C, sub_1D119CC88);

  v48 = v78;
  v49 = v60;
  v50 = v58;
  *v60 = v59;
  v49[1] = v50;
  v49[2] = v57;
  *(v49 + 24) = v56;
  v51 = v54;
  v49[4] = v55;
  v49[5] = v51;
  v49[6] = v48;
  return result;
}

uint64_t sub_1D119BB58@<X0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D11A3B54(a1, a3, &v41);
  v10 = v41.n128_u64[1];
  v9 = v41.n128_u64[0];
  v11 = v42;
  v33 = v43;
  v32 = v44;
  v31 = v45;
  v12 = *(a2 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v28 = v42;
    v29 = v41.n128_u64[1];
    v30 = v41.n128_u64[0];
    v40 = MEMORY[0x1E69E7CC0];

    sub_1D10FDA24(0, v12, 0);
    v13 = v40;
    v14 = (a2 + 32);
    for (i = v12 - 1; ; --i)
    {
      v16 = v14[3];
      v37 = v14[2];
      v38 = v16;
      v39 = *(v14 + 64);
      v17 = v14[1];
      v35 = *v14;
      v36 = v17;
      sub_1D1095034(&v35, v34);
      v40 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D10FDA24((v18 > 1), v19 + 1, 1);
        v13 = v40;
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 72 * v19;
      *(v20 + 32) = v35;
      v21 = v36;
      v22 = v37;
      v23 = v38;
      *(v20 + 96) = v39;
      *(v20 + 64) = v22;
      *(v20 + 80) = v23;
      *(v20 + 48) = v21;
      if (!i)
      {
        break;
      }

      v14 = (v14 + 72);
    }

    v9 = v30;
    v10 = v29;
    v11 = v28;
  }

  MEMORY[0x1EEE9AC00](v8);
  v27[2] = a4;
  *&v35 = v13;

  sub_1D119C660(sub_1D11A3EC8, v27, sub_1D1245F28, &_s27FormattedRecordValueInRangeVN, sub_1D119F998, sub_1D119CEAC);

  v25 = v35;
  *a5 = v9;
  *(a5 + 8) = v10;
  *(a5 + 16) = v11;
  *(a5 + 24) = v33;
  v26 = v31;
  *(a5 + 32) = v32;
  *(a5 + 40) = v26;
  *(a5 + 48) = v25;
  return result;
}

uint64_t sub_1D119BDD8@<X0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D11A3B54(a1, a3, &v40);
  v11 = v40.n128_u64[1];
  v10 = v40.n128_u64[0];
  v12 = v41;
  v36 = v42;
  v34 = v44;
  v35 = v43;
  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v29 = a4;
    v30 = v41;
    v31 = v40.n128_u64[1];
    v32 = v40.n128_u64[0];
    v33 = a5;
    v39 = MEMORY[0x1E69E7CC0];
    v28[4] = a3;

    sub_1D10FDA84(0, v13, 0);
    v14 = v39;
    v15 = (a2 + 72);
    do
    {
      v16 = *(v15 - 5);
      v17 = *(v15 - 4);
      v18 = *(v15 - 3);
      v19 = *(v15 - 2);
      v20 = *v15;
      v37 = *(v15 - 1);
      v38 = v16;
      v39 = v14;
      v21 = *(v14 + 16);
      v22 = *(v14 + 24);

      if (v21 >= v22 >> 1)
      {
        sub_1D10FDA84((v22 > 1), v21 + 1, 1);
        v14 = v39;
      }

      v15 += 6;
      *(v14 + 16) = v21 + 1;
      v23 = (v14 + 48 * v21);
      v24 = v37;
      v23[4] = v38;
      v23[5] = v17;
      v23[6] = v18;
      v23[7] = v19;
      v23[8] = v24;
      v23[9] = v20;
      --v13;
    }

    while (v13);

    v10 = v32;
    a5 = v33;
    v12 = v30;
    v11 = v31;
    a4 = v29;
  }

  MEMORY[0x1EEE9AC00](v9);
  v28[2] = a4;
  v39 = v14;

  sub_1D119C660(sub_1D11A3C00, v28, sub_1D1245F50, &_s20FormattedRecordValueVN, sub_1D11A0364, sub_1D119D0EC);

  v26 = v39;
  *a5 = v10;
  *(a5 + 8) = v11;
  *(a5 + 16) = v12;
  *(a5 + 24) = v36;
  v27 = v34;
  *(a5 + 32) = v35;
  *(a5 + 40) = v27;
  *(a5 + 48) = v26;
  return result;
}

uint64_t sub_1D119C014@<X0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D11A3B54(a1, a3, &v32);
  v10 = v32.n128_u64[1];
  v9 = v32.n128_u64[0];
  v11 = v33;
  v30 = v34;
  v28 = v36;
  v29 = v35;
  v12 = *(a2 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v24 = a4;
    v25 = v33;
    v26 = v32.n128_u64[1];
    v27 = v32.n128_u64[0];
    v31 = MEMORY[0x1E69E7CC0];

    sub_1D10FDAE4(0, v12, 0);
    v13 = v31;
    v14 = (a2 + 40);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v31 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_1D10FDAE4((v17 > 1), v18 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      v14 += 2;
      --v12;
    }

    while (v12);

    v10 = v26;
    v9 = v27;
    a4 = v24;
    v11 = v25;
  }

  MEMORY[0x1EEE9AC00](v8);
  v23[2] = a4;
  v31 = v13;

  sub_1D119C660(sub_1D11A3C00, v23, sub_1D1245F78, &_s15FormattedRecordVN, sub_1D11A0C8C, sub_1D119D458);

  v21 = v31;
  *a5 = v9;
  *(a5 + 8) = v10;
  *(a5 + 16) = v11;
  *(a5 + 24) = v30;
  v22 = v28;
  *(a5 + 32) = v29;
  *(a5 + 40) = v22;
  *(a5 + 48) = v21;
  return result;
}

BOOL sub_1D119C218(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = MEMORY[0x1E6969770];
  sub_1D11A3C30(0, &qword_1EC60DF40, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16[-v8];
  v10 = *a1;
  v11 = *a1;
  v19 = *a2;
  v20 = v10;
  v17 = *a2;
  v18 = v11;
  v12 = sub_1D138D67C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v9, a3, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  sub_1D1144324(&v20, v16);
  sub_1D1144324(&v19, v16);
  sub_1D10940C8();
  v14 = sub_1D1390FFC();
  sub_1D11A3AF8(v9, &qword_1EC60DF40, v6);
  sub_1D114E434(&v19);
  sub_1D114E434(&v20);
  return v14 == -1;
}

uint64_t sub_1D119C424(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(sub_1D138D67C() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroyTm_4()
{
  v1 = sub_1D138D67C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D119C530(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D138D67C() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D11F5FDC(a1, a2, v6);
}

uint64_t sub_1D119C5B0(uint64_t (*a1)(__int128 *, __int128 *), uint64_t a2, uint64_t (*a3)(uint64_t), unint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v12 = *v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = a3(v12);
  }

  result = sub_1D119C710(a1, a2, a4, a5, a6);
  *v6 = v12;
  return result;
}

uint64_t sub_1D119C660(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = a3(v12);
  }

  result = sub_1D119C848(a1, a2, a4, a5, a6);
  *v6 = v12;
  return result;
}

uint64_t sub_1D119C710(uint64_t (*a1)(__int128 *, __int128 *), uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v11 = v5[1];
  result = sub_1D13915BC();
  if (result < v11)
  {
    if (v11 >= -1)
    {
      v13 = result;
      if (v11 < 2)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D11A3C8C(0, a3, a4, a5);
        v14 = sub_1D13904DC();
        *(v14 + 16) = v11 / 2;
      }

      v15[0] = v14 + 32;
      v15[1] = v11 / 2;
      sub_1D119E71C(v15, v16, v5, a1, a2, v13);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v11 < 0)
  {
    goto LABEL_12;
  }

  if (v11)
  {
    return sub_1D119D294(0, v11, 1, a1);
  }

  return result;
}

uint64_t sub_1D119C848(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(v5 + 8);
  result = sub_1D13915BC();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      if (v10 < 2)
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v13 = sub_1D13904DC();
        *(v13 + 16) = v10 / 2;
      }

      v15[0] = v13 + 32;
      v15[1] = v10 / 2;
      v14 = v13;
      a4(v15, v16, v5, a1, a2, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1, a2);
  }

  return result;
}

uint64_t sub_1D119C968(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  if (a3 != a2)
  {
    v31 = *v4;
    v6 = *v4 + 48 * a3 - 48;
    v7 = result - a3;
LABEL_4:
    v29 = v6;
    v30 = a3;
    v28 = v7;
    v8 = v7;
    while (1)
    {
      v33 = v8;
      v9 = (v6 + 48);
      v11 = *(v6 + 56);
      v10 = *(v6 + 64);
      v13 = *(v6 + 72);
      v12 = *(v6 + 80);
      v14 = *(v6 + 88);
      v36[0] = *(v6 + 48);
      v36[1] = v11;
      v38 = v11;
      v36[2] = v10;
      v36[3] = v13;
      v36[4] = v12;
      v37 = v14;
      v15 = *(v6 + 8);
      v16 = *(v6 + 16);
      v17 = *(v6 + 24);
      v18 = *(v6 + 32);
      v19 = *(v6 + 40);
      v34[0] = *v6;
      v34[1] = v15;
      v34[2] = v16;
      v34[3] = v17;
      v34[4] = v18;
      v35 = v19;

      v20 = a4(v36, v34);

      if (v5)
      {
        break;
      }

      if (v20)
      {
        if (!v31)
        {
          __break(1u);
          return result;
        }

        v22 = *(v6 + 48);
        v21 = *(v6 + 64);
        v23 = *(v6 + 16);
        v24 = *(v6 + 32);
        *v9 = *v6;
        *(v6 + 64) = v23;
        v25 = *(v6 + 80);
        v26 = *(v6 + 88);
        *v6 = v22;
        *(v6 + 16) = v21;
        *(v6 + 32) = v25;
        *(v6 + 40) = v26;
        v6 -= 48;
        v9[2] = v24;
        v8 = v33 + 1;
        if (v33 != -1)
        {
          continue;
        }
      }

      a3 = v30 + 1;
      v6 = v29 + 48;
      v7 = v28 - 1;
      if (v30 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1D119CB18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  if (a3 != a2)
  {
    v6 = *v4;
    v7 = (*v4 + 24 * a3);
    v8 = result - a3;
    v23 = *v4;
LABEL_4:
    v21 = v7;
    v22 = a3;
    v9 = (v6 + 24 * a3);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v20 = v8;
    while (1)
    {
      v27 = v8;
      v26[0] = v10;
      v26[1] = v11;
      v13 = *(v7 - 3);
      v14 = *(v7 - 2);
      v26[2] = v12;
      v15 = *(v7 - 1);
      v25[0] = v13;
      v25[1] = v14;
      v25[2] = v15;

      v16 = a4(v26, v25);

      if (v5)
      {
        break;
      }

      if ((v16 & 1) == 0)
      {
        v6 = v23;
LABEL_12:
        a3 = v22 + 1;
        v7 = v21 + 3;
        v8 = v20 - 1;
        if (v22 + 1 != a2)
        {
          goto LABEL_4;
        }

        return result;
      }

      v6 = v23;
      v17 = v27;
      if (!v23)
      {
        __break(1u);
        return result;
      }

      v10 = *v7;
      v11 = v7[1];
      v12 = v7[2];
      *v7 = *(v7 - 3);
      v7[2] = *(v7 - 1);
      *(v7 - 2) = v11;
      *(v7 - 1) = v12;
      *(v7 - 3) = v10;
      v7 -= 3;
      v18 = __CFADD__(v17, 1);
      v8 = v17 + 1;
      if (v18)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1D119CC88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, __int128 *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = (*v4 + 80 * a3);
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    v55 = v9;
    while (1)
    {
      v53[0] = *v9;
      v12 = v9[1];
      v13 = v9[2];
      v14 = v9[4];
      v53[3] = v9[3];
      v53[4] = v14;
      v53[1] = v12;
      v53[2] = v13;
      v15 = v9[3];
      v50 = v9[2];
      v51 = v15;
      v52 = v9[4];
      v16 = v9[1];
      v48 = *v9;
      v49 = v16;
      v54[0] = *(v9 - 5);
      v17 = *(v9 - 1);
      v19 = *(v9 - 4);
      v18 = *(v9 - 3);
      v54[3] = *(v9 - 2);
      v54[4] = v17;
      v54[1] = v19;
      v54[2] = v18;
      v20 = *(v9 - 2);
      v45 = *(v9 - 3);
      v46 = v20;
      v47 = *(v9 - 1);
      v21 = *(v9 - 4);
      v43 = *(v9 - 5);
      v44 = v21;
      sub_1D10932A8(v53, &v38);
      sub_1D10932A8(v54, &v38);
      v22 = a4(&v48, &v43);
      if (v5)
      {
        v35 = v45;
        v36 = v46;
        v37 = v47;
        v33 = v43;
        v34 = v44;
        sub_1D1093370(&v33);
        v40 = v50;
        v41 = v51;
        v42 = v52;
        v38 = v48;
        v39 = v49;
        return sub_1D1093370(&v38);
      }

      v23 = v22;
      v35 = v45;
      v36 = v46;
      v37 = v47;
      v33 = v43;
      v34 = v44;
      sub_1D1093370(&v33);
      v40 = v50;
      v41 = v51;
      v42 = v52;
      v38 = v48;
      v39 = v49;
      result = sub_1D1093370(&v38);
      if ((v23 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 = v55 + 5;
        --v10;
        if (v7 == a2)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      v24 = v9 - 5;
      v30 = v9[2];
      v31 = v9[3];
      v32 = v9[4];
      v28 = *v9;
      v29 = v9[1];
      v25 = *(v9 - 2);
      v9[2] = *(v9 - 3);
      v9[3] = v25;
      v9[4] = *(v9 - 1);
      v26 = *(v9 - 4);
      *v9 = *(v9 - 5);
      v9[1] = v26;
      v24[3] = v31;
      v24[4] = v32;
      v24[1] = v29;
      v24[2] = v30;
      *v24 = v28;
      if (!v11)
      {
        goto LABEL_3;
      }

      ++v11;
      v9 -= 5;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D119CEAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, __int128 *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 72 * a3;
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    v57 = v9;
    while (1)
    {
      v53[0] = *v9;
      v12 = *(v9 + 16);
      v13 = *(v9 + 32);
      v14 = *(v9 + 48);
      v54 = *(v9 + 64);
      v53[2] = v13;
      v53[3] = v14;
      v53[1] = v12;
      v15 = *(v9 + 48);
      v50 = *(v9 + 32);
      v51 = v15;
      v52 = *(v9 + 64);
      v16 = *(v9 + 16);
      v48 = *v9;
      v49 = v16;
      v55[0] = *(v9 - 72);
      v17 = *(v9 - 40);
      v18 = *(v9 - 24);
      v19 = *(v9 - 56);
      v56 = *(v9 - 8);
      v55[2] = v17;
      v55[3] = v18;
      v55[1] = v19;
      v20 = *(v9 - 56);
      v21 = *(v9 - 24);
      v45 = *(v9 - 40);
      v46 = v21;
      v47 = *(v9 - 8);
      v43 = *(v9 - 72);
      v44 = v20;
      sub_1D1095034(v53, &v38);
      sub_1D1095034(v55, &v38);
      v22 = a4(&v48, &v43);
      if (v5)
      {
        v35 = v45;
        v36 = v46;
        v37 = v47;
        v33 = v43;
        v34 = v44;
        sub_1D1095108(&v33);
        v40 = v50;
        v41 = v51;
        v42 = v52;
        v38 = v48;
        v39 = v49;
        return sub_1D1095108(&v38);
      }

      v23 = v22;
      v35 = v45;
      v36 = v46;
      v37 = v47;
      v33 = v43;
      v34 = v44;
      sub_1D1095108(&v33);
      v40 = v50;
      v41 = v51;
      v42 = v52;
      v38 = v48;
      v39 = v49;
      result = sub_1D1095108(&v38);
      if ((v23 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 = v57 + 72;
        --v10;
        if (v7 == a2)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      v24 = v9 - 72;
      v30 = *(v9 + 32);
      v31 = *(v9 + 48);
      v32 = *(v9 + 64);
      v28 = *v9;
      v29 = *(v9 + 16);
      v25 = *(v9 - 24);
      *(v9 + 32) = *(v9 - 40);
      *(v9 + 48) = v25;
      *(v9 + 64) = *(v9 - 8);
      v26 = *(v9 - 56);
      *v9 = *(v9 - 72);
      *(v9 + 16) = v26;
      *(v24 + 64) = v32;
      *(v24 + 32) = v30;
      *(v24 + 48) = v31;
      *v24 = v28;
      *(v24 + 16) = v29;
      if (!v11)
      {
        goto LABEL_3;
      }

      ++v11;
      v9 -= 72;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D119D0EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  if (a3 != a2)
  {
    v6 = *v4;
    v7 = (*v4 + 48 * a3 - 48);
    v8 = result - a3;
    v30 = *v4;
LABEL_4:
    v28 = v7;
    v29 = a3;
    v9 = (v6 + 48 * a3);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    v14 = v9[4];
    v15 = v9[5];
    v27 = v8;
    v16 = v8;
    while (1)
    {
      v34 = v16;
      v33[0] = v10;
      v33[1] = v11;
      v33[2] = v12;
      v33[3] = v13;
      v33[4] = v14;
      v33[5] = v15;
      v17 = v7[1];
      v18 = v7[2];
      v19 = v7[3];
      v20 = v7[4];
      v21 = v7[5];
      v32[0] = *v7;
      v32[1] = v17;
      v32[2] = v18;
      v32[3] = v19;
      v32[4] = v20;
      v32[5] = v21;

      v22 = a4(v33, v32);

      if (v5)
      {
        break;
      }

      if ((v22 & 1) == 0)
      {
        v6 = v30;
LABEL_12:
        a3 = v29 + 1;
        v7 = v28 + 6;
        v8 = v27 - 1;
        if (v29 + 1 != a2)
        {
          goto LABEL_4;
        }

        return result;
      }

      v6 = v30;
      v23 = v34;
      if (!v30)
      {
        __break(1u);
        return result;
      }

      v10 = v7[6];
      v11 = v7[7];
      v12 = v7[8];
      v13 = v7[9];
      v14 = v7[10];
      v15 = v7[11];
      v24 = *(v7 + 1);
      *(v7 + 3) = *v7;
      *(v7 + 4) = v24;
      *(v7 + 5) = *(v7 + 2);
      *v7 = v10;
      v7[1] = v11;
      v7[2] = v12;
      v7[3] = v13;
      v7[4] = v14;
      v7[5] = v15;
      v7 -= 6;
      v25 = __CFADD__(v23, 1);
      v16 = v23 + 1;
      if (v25)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1D119D294(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, __int128 *))
{
  v41 = a4;
  if (a3 != a2)
  {
    v6 = *v4;
    v7 = *v4 + 56 * a3 - 56;
    v8 = result - a3;
    v28 = *v4;
LABEL_4:
    v26 = v7;
    v27 = a3;
    v9 = (v6 + 56 * a3);
    v10 = *v9;
    v11 = *(v9 + 2);
    v12 = *(v9 + 24);
    v13 = *(v9 + 4);
    v14 = *(v9 + 5);
    v15 = *(v9 + 6);
    v25 = v8;
    while (1)
    {
      v35 = v10;
      v36 = v11;
      v37 = v12 & 1;
      v38 = v13;
      v39 = v14;
      v40 = v15;
      v16 = *(v7 + 16);
      v17 = *(v7 + 24);
      v18 = *(v7 + 32);
      v19 = *(v7 + 40);
      v20 = *(v7 + 48);
      v29 = *v7;
      v30 = v16;
      v31 = v17;
      v32 = v18;
      v33 = v19;
      v34 = v20;

      v21 = v41(&v35, &v29);

      if (v5)
      {
        break;
      }

      if ((v21 & 1) == 0)
      {
        v6 = v28;
LABEL_12:
        a3 = v27 + 1;
        v7 = v26 + 56;
        v8 = v25 - 1;
        if (v27 + 1 != a2)
        {
          goto LABEL_4;
        }

        return result;
      }

      v6 = v28;
      if (!v28)
      {
        __break(1u);
        return result;
      }

      v10 = *(v7 + 56);
      v22 = *(v7 + 16);
      *(v7 + 56) = *v7;
      v11 = *(v7 + 72);
      v12 = *(v7 + 80);
      v13 = *(v7 + 88);
      v14 = *(v7 + 96);
      v15 = *(v7 + 104);
      *(v7 + 72) = v22;
      *(v7 + 88) = *(v7 + 32);
      *(v7 + 104) = *(v7 + 48);
      *v7 = v10;
      *(v7 + 16) = v11;
      *(v7 + 24) = v12;
      *(v7 + 32) = v13;
      *(v7 + 40) = v14;
      *(v7 + 48) = v15;
      v7 -= 56;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1D119D458(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  v21 = a4;
  if (a3 != a2)
  {
    v6 = *v4;
    v7 = (*v4 + 16 * a3);
    v8 = result - a3;
LABEL_4:
    v17 = v7;
    v18 = a3;
    v9 = (v6 + 16 * a3);
    v10 = *v9;
    v11 = v9[1];
    v16 = v8;
    while (1)
    {
      v20[0] = v10;
      v20[1] = v11;
      v12 = *(v7 - 1);
      v19[0] = *(v7 - 2);
      v19[1] = v12;

      v13 = v21(v20, v19);

      if (v5)
      {
        break;
      }

      if (v13)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *v7;
        v11 = v7[1];
        *v7 = *(v7 - 1);
        *(v7 - 1) = v11;
        *(v7 - 2) = v10;
        v7 -= 2;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v18 + 1;
      v7 = v17 + 2;
      v8 = v16 - 1;
      if (v18 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1D119D568(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a3;
  v141 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v11 = *v141;
    if (*v141)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_95;
    }

    goto LABEL_134;
  }

  v10 = a6;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11;
    if ((v11 + 1) >= v9)
    {
      v39 = (v11 + 1);
    }

    else
    {
      v143 = v9;
      v138 = v12;
      v14 = v11;
      v15 = *v8;
      v16 = *v8 + 48 * (v11 + 1);
      v17 = *v16;
      v11 = *(v16 + 8);
      v18 = *(v16 + 16);
      v19 = *(v16 + 24);
      v20 = *(v16 + 32);
      LOBYTE(v16) = *(v16 + 40);
      v156 = v17;
      v157 = v11;
      v158 = v18;
      v159 = v19;
      v160 = v20;
      v161 = v16;
      v21 = (v15 + 48 * v14);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = v21[3];
      v26 = v21[4];
      LOBYTE(v21) = *(v21 + 40);
      v150 = v22;
      v151 = v23;
      v152 = v24;
      v153 = v25;
      v154 = v26;
      v155 = v21;

      v146 = a4(&v156, &v150);
      if (v7)
      {
      }

      v133 = 48 * v14;
      v27 = (v15 + 48 * v14 + 136);
      v136 = v14;
      v28 = v14;
      while ((v143 - 2) != v28)
      {
        v11 = *(v27 - 4);
        v29 = *(v27 - 3);
        v30 = *(v27 - 2);
        v31 = *(v27 - 1);
        v32 = *v27;
        v156 = *(v27 - 5);
        v157 = v11;
        v158 = v29;
        v159 = v30;
        v160 = v31;
        v161 = v32;
        v33 = *(v27 - 10);
        v34 = *(v27 - 9);
        v35 = *(v27 - 8);
        v36 = *(v27 - 7);
        v37 = *(v27 - 48);
        v150 = *(v27 - 11);
        v151 = v33;
        v152 = v34;
        v153 = v35;
        v154 = v36;
        v155 = v37;

        v38 = a4(&v156, &v150);

        ++v28;
        v27 += 48;
        if ((v146 ^ v38))
        {
          v39 = (v28 + 1);
          goto LABEL_12;
        }
      }

      v28 = (v143 - 1);
      v39 = v143;
LABEL_12:
      v7 = 0;
      v8 = a3;
      v12 = v138;
      v10 = a6;
      if (v146)
      {
        if (v39 < v136)
        {
          goto LABEL_128;
        }

        v40 = v136 <= v28;
        v13 = v136;
        if (v40)
        {
          v41 = 48 * v39 - 24;
          v42 = v133 + 40;
          v43 = v39;
          v44 = v136;
          do
          {
            if (v44 != --v43)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v46 = (v45 + v42);
              v47 = *(v45 + v42 - 40);
              v48 = v45 + v41;
              v49 = *(v46 - 24);
              v50 = *(v46 - 1);
              v51 = *v46;
              v52 = *(v48 + 8);
              v53 = *(v48 - 8);
              *(v46 - 40) = *(v48 - 24);
              *(v46 - 24) = v53;
              *(v46 - 8) = v52;
              *(v48 - 24) = v47;
              *(v48 - 8) = v49;
              *(v48 + 8) = v50;
              *(v48 + 16) = v51;
            }

            ++v44;
            v41 -= 48;
            v42 += 48;
          }

          while (v44 < v43);
        }
      }

      else
      {
        v13 = v136;
      }
    }

    v54 = *(v8 + 8);
    if (v39 >= v54)
    {
      goto LABEL_31;
    }

    if (__OFSUB__(v39, v13))
    {
      goto LABEL_124;
    }

    if (v39 - v13 >= v10)
    {
      goto LABEL_31;
    }

    if (__OFADD__(v13, v10))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (&v13[v10] >= v54)
    {
      v55 = *(v8 + 8);
    }

    else
    {
      v55 = &v13[v10];
    }

    if (v55 < v13)
    {
      goto LABEL_127;
    }

    if (v39 == v55)
    {
LABEL_31:
      v11 = v39;
      if (v39 < v13)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v137 = v13;
      v139 = v12;
      v149 = v7;
      v145 = *v8;
      v104 = *v8 + 48 * v39 - 48;
      v105 = &v13[-v39];
      v132 = v55;
      do
      {
        v134 = v105;
        v135 = v104;
        v106 = v105;
        v144 = v39;
        while (1)
        {
          v147 = v106;
          v107 = (v104 + 48);
          v109 = *(v104 + 56);
          v108 = *(v104 + 64);
          v110 = *(v104 + 72);
          v111 = *(v104 + 80);
          v112 = *(v104 + 88);
          v156 = *(v104 + 48);
          v157 = v109;
          v158 = v108;
          v159 = v110;
          v160 = v111;
          v161 = v112;
          v113 = *(v104 + 8);
          v114 = *(v104 + 16);
          v115 = *(v104 + 24);
          v116 = *(v104 + 32);
          v117 = *(v104 + 40);
          v150 = *v104;
          v151 = v113;
          v152 = v114;
          v153 = v115;
          v154 = v116;
          v155 = v117;

          v118 = a4(&v156, &v150);
          if (v149)
          {
          }

          v119 = v118;

          if ((v119 & 1) == 0)
          {
            break;
          }

          v120 = v144;
          if (!v145)
          {
            goto LABEL_130;
          }

          v122 = *(v104 + 48);
          v121 = *(v104 + 64);
          v123 = *(v104 + 16);
          v124 = *(v104 + 32);
          *v107 = *v104;
          *(v104 + 64) = v123;
          v125 = *(v104 + 80);
          v126 = *(v104 + 88);
          *v104 = v122;
          *(v104 + 16) = v121;
          *(v104 + 32) = v125;
          *(v104 + 40) = v126;
          v104 -= 48;
          v107[2] = v124;
          v106 = v147 + 1;
          if (v147 == -1)
          {
            goto LABEL_89;
          }
        }

        v120 = v144;
LABEL_89:
        v39 = v120 + 1;
        v104 = v135 + 48;
        v105 = v134 - 1;
        v11 = v132;
      }

      while (v39 != v132);
      v7 = 0;
      v8 = a3;
      v13 = v137;
      v12 = v139;
      if (v132 < v137)
      {
        goto LABEL_123;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v56 = v13;
    if ((result & 1) == 0)
    {
      result = sub_1D10F7610(0, *(v12 + 16) + 1, 1, v12);
      v12 = result;
    }

    v58 = *(v12 + 16);
    v57 = *(v12 + 24);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      result = sub_1D10F7610((v57 > 1), v58 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 16) = v59;
    v60 = v12 + 16 * v58;
    *(v60 + 32) = v56;
    *(v60 + 40) = v11;
    v61 = *v141;
    if (!*v141)
    {
      goto LABEL_133;
    }

    if (v58)
    {
      break;
    }

LABEL_3:
    v9 = *(v8 + 8);
    v10 = a6;
    if (v11 >= v9)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v62 = v59 - 1;
    if (v59 >= 4)
    {
      v67 = v12 + 32 + 16 * v59;
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_110;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_111;
      }

      v74 = (v12 + 16 * v59);
      v76 = *v74;
      v75 = v74[1];
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_113;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_116;
      }

      if (v78 >= v70)
      {
        v96 = (v12 + 32 + 16 * v62);
        v98 = *v96;
        v97 = v96[1];
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_122;
        }

        if (v65 < v99)
        {
          v62 = v59 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

    if (v59 == 3)
    {
      v63 = *(v12 + 32);
      v64 = *(v12 + 40);
      v73 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      v66 = v73;
LABEL_51:
      if (v66)
      {
        goto LABEL_112;
      }

      v79 = (v12 + 16 * v59);
      v81 = *v79;
      v80 = v79[1];
      v82 = __OFSUB__(v80, v81);
      v83 = v80 - v81;
      v84 = v82;
      if (v82)
      {
        goto LABEL_115;
      }

      v85 = (v12 + 32 + 16 * v62);
      v87 = *v85;
      v86 = v85[1];
      v73 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v73)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v83, v88))
      {
        goto LABEL_119;
      }

      if (v83 + v88 >= v65)
      {
        if (v65 < v88)
        {
          v62 = v59 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_65;
    }

    v89 = (v12 + 16 * v59);
    v91 = *v89;
    v90 = v89[1];
    v73 = __OFSUB__(v90, v91);
    v83 = v90 - v91;
    v84 = v73;
LABEL_65:
    if (v84)
    {
      goto LABEL_114;
    }

    v92 = v12 + 16 * v62;
    v94 = *(v92 + 32);
    v93 = *(v92 + 40);
    v73 = __OFSUB__(v93, v94);
    v95 = v93 - v94;
    if (v73)
    {
      goto LABEL_117;
    }

    if (v95 < v83)
    {
      goto LABEL_3;
    }

LABEL_72:
    v100 = v62 - 1;
    if (v62 - 1 >= v59)
    {
      break;
    }

    if (!*v8)
    {
      goto LABEL_129;
    }

    v101 = *(v12 + 32 + 16 * v100);
    v102 = *(v12 + 32 + 16 * v62 + 8);
    sub_1D11A13AC((*v8 + 48 * v101), (*v8 + 48 * *(v12 + 32 + 16 * v62)), (*v8 + 48 * v102), v61, a4);
    if (v7)
    {
    }

    if (v102 < v101)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D1245848(v12);
    }

    if (v100 >= *(v12 + 16))
    {
      goto LABEL_109;
    }

    v103 = v12 + 16 * v100;
    *(v103 + 32) = v101;
    *(v103 + 40) = v102;
    v162 = v12;
    result = sub_1D12457BC(v62);
    v12 = v162;
    v59 = *(v162 + 16);
    if (v59 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
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
  result = sub_1D1245848(v12);
  v12 = result;
LABEL_95:
  v162 = v12;
  v127 = *(v12 + 16);
  if (v127 < 2)
  {
  }

  while (1)
  {
    v128 = *v8;
    if (!*v8)
    {
      break;
    }

    v8 = *(v12 + 16 * v127);
    v129 = v12;
    v130 = *(v12 + 16 * (v127 - 1) + 32);
    v12 = *(v12 + 16 * (v127 - 1) + 40);
    sub_1D11A13AC((v128 + 48 * v8), (v128 + 48 * v130), (v128 + 48 * v12), v11, a4);
    if (v7)
    {
    }

    if (v12 < v8)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v129 = sub_1D1245848(v129);
    }

    if (v127 - 2 >= *(v129 + 2))
    {
      goto LABEL_121;
    }

    v131 = &v129[16 * v127];
    *v131 = v8;
    *(v131 + 1) = v12;
    v162 = v129;
    result = sub_1D12457BC(v127 - 1);
    v12 = v162;
    v127 = *(v162 + 16);
    v8 = a3;
    if (v127 <= 1)
    {
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1D119DED4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a3;
  v114 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v11 = *v114;
    if (*v114)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_93;
    }

    goto LABEL_132;
  }

  v10 = a6;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11;
    if ((v11 + 1) >= v9)
    {
      v29 = (v11 + 1);
    }

    else
    {
      v112 = v9;
      v14 = *v8;
      v15 = (*v8 + 24 * (v11 + 1));
      v16 = v15[1];
      v17 = v15[2];
      v125 = *v15;
      v126 = v16;
      v127 = v17;
      v18 = (v14 + 24 * v11);
      v19 = v18[1];
      v11 = v18[2];
      v122 = *v18;
      v123 = v19;
      v124 = v11;

      v118 = a4(&v125, &v122);
      if (v7)
      {
      }

      v20 = v13;
      v21 = 0;
      v109 = v20;
      v116 = &v20[-v112 + 2];
      v22 = 24 * v20;
      v23 = (v14 + 24 * v20 + 32);
      while (v116 + v21)
      {
        v11 = v23[3];
        v24 = v23[4];
        v25 = v23[1];
        v125 = v23[2];
        v126 = v11;
        v127 = v24;
        v26 = *v23;
        v122 = *(v23 - 1);
        v123 = v26;
        v124 = v25;

        v27 = a4(&v125, &v122);

        ++v21;
        v23 += 3;
        if ((v118 ^ v27))
        {
          v28 = &v109[v21];
          v13 = v109;
          v29 = v28 + 1;
          goto LABEL_12;
        }
      }

      v28 = v112 - 1;
      v13 = v109;
      v29 = v112;
LABEL_12:
      v8 = a3;
      v10 = a6;
      if (v118)
      {
        if (v29 < v13)
        {
          goto LABEL_126;
        }

        if (v13 <= v28)
        {
          v93 = 0;
          v94 = 24 * v29;
          v95 = v13;
          do
          {
            if (v95 != (v29 + v93 - 1))
            {
              v96 = *a3;
              if (!*a3)
              {
                goto LABEL_130;
              }

              v97 = (v96 + v22);
              v98 = v96 + v94;
              v99 = *v97;
              v100 = *(v97 + 1);
              v101 = *(v98 - 24);
              v97[2] = *(v98 - 8);
              *v97 = v101;
              *(v98 - 24) = v99;
              *(v98 - 16) = v100;
            }

            ++v95;
            --v93;
            v94 -= 24;
            v22 += 24;
          }

          while (v95 < v29 + v93);
        }
      }

      v7 = 0;
    }

    v30 = v8[1];
    if (v29 >= v30)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v29, v13))
    {
      goto LABEL_122;
    }

    if (v29 - v13 >= v10)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v13, v10))
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
      goto LABEL_129;
    }

    if (&v13[v10] >= v30)
    {
      v31 = v8[1];
    }

    else
    {
      v31 = &v13[v10];
    }

    if (v31 < v13)
    {
      goto LABEL_125;
    }

    if (v29 == v31)
    {
LABEL_25:
      v32 = v29;
      if (v29 < v13)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v107 = v12;
      v108 = v31;
      v121 = v7;
      v80 = *v8;
      v81 = (*v8 + 24 * v29);
      v110 = v13;
      v82 = &v13[-v29];
      do
      {
        v113 = v29;
        v83 = (v80 + 24 * v29);
        v84 = *v83;
        v85 = v83[1];
        v86 = v83[2];
        v117 = v82;
        v119 = v81;
        v87 = v82;
        do
        {
          v125 = v84;
          v126 = v85;
          v88 = *(v81 - 3);
          v11 = *(v81 - 2);
          v127 = v86;
          v89 = *(v81 - 1);
          v122 = v88;
          v123 = v11;
          v124 = v89;

          v90 = a4(&v125, &v122);
          if (v121)
          {
          }

          v91 = v90;

          if ((v91 & 1) == 0)
          {
            break;
          }

          if (!v80)
          {
            goto LABEL_128;
          }

          v84 = *v81;
          v85 = v81[1];
          v86 = v81[2];
          *v81 = *(v81 - 3);
          v81[2] = *(v81 - 1);
          *(v81 - 2) = v85;
          *(v81 - 1) = v86;
          *(v81 - 3) = v84;
          v81 -= 3;
        }

        while (!__CFADD__(v87++, 1));
        v29 = (v113 + 1);
        v81 = v119 + 3;
        v82 = v117 - 1;
        v32 = v108;
      }

      while (v113 + 1 != v108);
      v7 = 0;
      v8 = a3;
      v13 = v110;
      v12 = v107;
      if (v108 < v110)
      {
        goto LABEL_121;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D10F7610(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
    }

    v34 = *(v12 + 2);
    v33 = *(v12 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_1D10F7610((v33 > 1), v34 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 2) = v35;
    v36 = &v12[16 * v34];
    *(v36 + 4) = v13;
    *(v36 + 5) = v32;
    v37 = *v114;
    if (!*v114)
    {
      goto LABEL_131;
    }

    v11 = v32;
    if (v34)
    {
      break;
    }

LABEL_3:
    v9 = v8[1];
    v10 = a6;
    if (v11 >= v9)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v38 = v35 - 1;
    if (v35 >= 4)
    {
      v43 = &v12[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_108;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_109;
      }

      v50 = &v12[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_111;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_114;
      }

      if (v54 >= v46)
      {
        v72 = &v12[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_120;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_45;
    }

    if (v35 == 3)
    {
      v39 = *(v12 + 4);
      v40 = *(v12 + 5);
      v49 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      v42 = v49;
LABEL_45:
      if (v42)
      {
        goto LABEL_110;
      }

      v55 = &v12[16 * v35];
      v57 = *v55;
      v56 = *(v55 + 1);
      v58 = __OFSUB__(v56, v57);
      v59 = v56 - v57;
      v60 = v58;
      if (v58)
      {
        goto LABEL_113;
      }

      v61 = &v12[16 * v38 + 32];
      v63 = *v61;
      v62 = *(v61 + 1);
      v49 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v49)
      {
        goto LABEL_116;
      }

      if (__OFADD__(v59, v64))
      {
        goto LABEL_117;
      }

      if (v59 + v64 >= v41)
      {
        if (v41 < v64)
        {
          v38 = v35 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_59;
    }

    v65 = &v12[16 * v35];
    v67 = *v65;
    v66 = *(v65 + 1);
    v49 = __OFSUB__(v66, v67);
    v59 = v66 - v67;
    v60 = v49;
LABEL_59:
    if (v60)
    {
      goto LABEL_112;
    }

    v68 = &v12[16 * v38];
    v70 = *(v68 + 4);
    v69 = *(v68 + 5);
    v49 = __OFSUB__(v69, v70);
    v71 = v69 - v70;
    if (v49)
    {
      goto LABEL_115;
    }

    if (v71 < v59)
    {
      goto LABEL_3;
    }

LABEL_66:
    v76 = v38 - 1;
    if (v38 - 1 >= v35)
    {
      break;
    }

    if (!*v8)
    {
      goto LABEL_127;
    }

    v77 = *&v12[16 * v76 + 32];
    v78 = *&v12[16 * v38 + 40];
    sub_1D11A18FC((*v8 + 24 * v77), (*v8 + 24 * *&v12[16 * v38 + 32]), (*v8 + 24 * v78), v37, a4);
    if (v7)
    {
    }

    if (v78 < v77)
    {
      goto LABEL_106;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D1245848(v12);
    }

    if (v76 >= *(v12 + 2))
    {
      goto LABEL_107;
    }

    v79 = &v12[16 * v76];
    *(v79 + 4) = v77;
    *(v79 + 5) = v78;
    v128 = v12;
    result = sub_1D12457BC(v38);
    v12 = v128;
    v35 = *(v128 + 2);
    if (v35 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
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
  result = sub_1D1245848(v12);
  v12 = result;
LABEL_93:
  v102 = v7;
  v128 = v12;
  v103 = *(v12 + 2);
  if (v103 < 2)
  {
  }

  while (1)
  {
    v104 = *v8;
    if (!*v8)
    {
      break;
    }

    v8 = (v103 - 1);
    v105 = *&v12[16 * v103];
    v7 = *&v12[16 * v103 + 24];
    sub_1D11A18FC((v104 + 24 * v105), (v104 + 24 * *&v12[16 * v103 + 16]), (v104 + 24 * v7), v11, a4);
    if (v102)
    {
    }

    if (v7 < v105)
    {
      goto LABEL_118;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D1245848(v12);
    }

    if (v103 - 2 >= *(v12 + 2))
    {
      goto LABEL_119;
    }

    v106 = &v12[16 * v103];
    *v106 = v105;
    *(v106 + 1) = v7;
    v128 = v12;
    result = sub_1D12457BC(v8);
    v12 = v128;
    v103 = *(v128 + 2);
    v8 = a3;
    if (v103 <= 1)
    {
    }
  }

LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D119E71C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, __int128 *), uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v9 = a3;
  v133 = result;
  v10 = a3[1];
  if (v10 < 1)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v7 = *v133;
    if (*v133)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_94;
    }

    goto LABEL_133;
  }

  v11 = a6;
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v12 + 1) >= v10)
    {
      v38 = (v12 + 1);
    }

    else
    {
      v131 = v10;
      v14 = *v9;
      v15 = *v9 + 56 * (v12 + 1);
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *(v15 + 32);
      v7 = *(v15 + 40);
      v19 = *(v15 + 48);
      v146 = *v15;
      v147 = v16;
      v148 = v17;
      v149 = v18;
      v150 = v7;
      v151 = v19;
      v20 = (v14 + 56 * v12);
      v21 = *(v20 + 2);
      v22 = *(v20 + 24);
      v23 = *(v20 + 4);
      v24 = *(v20 + 5);
      v25 = *(v20 + 6);
      v140 = *v20;
      v141 = v21;
      v142 = v22;
      v143 = v23;
      v144 = v24;
      v145 = v25;

      v136 = a4(&v146, &v140);
      if (v8)
      {
      }

      v128 = v12;
      v26 = 56 * v12;
      v27 = (v14 + 56 * v12 + 160);
      while ((v131 - 2) != v12)
      {
        v28 = *(v27 - 4);
        v29 = *(v27 - 24);
        v30 = *(v27 - 2);
        v31 = *(v27 - 1);
        v32 = *v27;
        v146 = *(v27 - 3);
        v147 = v28;
        v148 = v29;
        v149 = v30;
        v150 = v31;
        v151 = v32;
        v33 = *(v27 - 11);
        v34 = *(v27 - 80);
        v35 = *(v27 - 9);
        v7 = *(v27 - 8);
        v36 = *(v27 - 7);
        v140 = *(v27 - 13);
        v141 = v33;
        v142 = v34;
        v143 = v35;
        v144 = v7;
        v145 = v36;

        v37 = a4(&v146, &v140);

        ++v12;
        v27 += 7;
        if ((v136 ^ v37))
        {
          v38 = (v12 + 1);
          goto LABEL_12;
        }
      }

      v12 = (v131 - 1);
      v38 = v131;
LABEL_12:
      v9 = a3;
      v11 = a6;
      if (v136)
      {
        if (v38 < v128)
        {
          goto LABEL_127;
        }

        v39 = v128 <= v12;
        v12 = v128;
        if (v39)
        {
          v108 = 56 * v38 - 56;
          v109 = v38;
          v110 = v128;
          do
          {
            if (v110 != --v109)
            {
              v111 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              v112 = (v111 + v26);
              v113 = *(v111 + v26 + 16);
              v114 = (v111 + v108);
              v115 = *(v112 + 24);
              v116 = *(v112 + 6);
              v117 = v112[2];
              v118 = *v112;
              v120 = v114[1];
              v119 = v114[2];
              v121 = *v114;
              *(v112 + 6) = *(v114 + 6);
              v112[1] = v120;
              v112[2] = v119;
              *v112 = v121;
              *v114 = v118;
              *(v114 + 2) = v113;
              *(v114 + 24) = v115;
              v114[2] = v117;
              *(v114 + 6) = v116;
            }

            ++v110;
            v108 -= 56;
            v26 += 56;
          }

          while (v110 < v109);
        }

        v8 = 0;
      }

      else
      {
        v8 = 0;
        v12 = v128;
      }
    }

    v40 = v9[1];
    if (v38 >= v40)
    {
      goto LABEL_26;
    }

    if (__OFSUB__(v38, v12))
    {
      goto LABEL_123;
    }

    if (v38 - v12 >= v11)
    {
      goto LABEL_26;
    }

    if (__OFADD__(v12, v11))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (&v12[v11] >= v40)
    {
      v41 = v9[1];
    }

    else
    {
      v41 = &v12[v11];
    }

    if (v41 < v12)
    {
      goto LABEL_126;
    }

    if (v38 == v41)
    {
LABEL_26:
      v42 = v38;
      if (v38 < v12)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v139 = v8;
      v90 = *v9;
      v91 = *v9 + 56 * v38 - 56;
      v127 = v41;
      v129 = v12;
      v92 = &v12[-v38];
      do
      {
        v132 = v38;
        v93 = (v90 + 56 * v38);
        v94 = *v93;
        v95 = *(v93 + 2);
        v96 = *(v93 + 24);
        v97 = *(v93 + 4);
        v98 = *(v93 + 5);
        v99 = *(v93 + 6);
        v135 = v92;
        v137 = v91;
        do
        {
          v146 = v94;
          v147 = v95;
          v148 = v96 & 1;
          v149 = v97;
          v150 = v98;
          v151 = v99;
          v100 = *(v91 + 16);
          v101 = *(v91 + 24);
          v102 = *(v91 + 32);
          v7 = *(v91 + 40);
          v103 = *(v91 + 48);
          v140 = *v91;
          v141 = v100;
          v142 = v101;
          v143 = v102;
          v144 = v7;
          v145 = v103;

          v104 = a4(&v146, &v140);
          if (v139)
          {
          }

          v105 = v104;

          if ((v105 & 1) == 0)
          {
            break;
          }

          if (!v90)
          {
            goto LABEL_129;
          }

          v94 = *(v91 + 56);
          v106 = *(v91 + 16);
          *(v91 + 56) = *v91;
          v95 = *(v91 + 72);
          v96 = *(v91 + 80);
          v97 = *(v91 + 88);
          v98 = *(v91 + 96);
          v99 = *(v91 + 104);
          *(v91 + 72) = v106;
          *(v91 + 88) = *(v91 + 32);
          *(v91 + 104) = *(v91 + 48);
          *v91 = v94;
          *(v91 + 16) = v95;
          *(v91 + 24) = v96;
          *(v91 + 32) = v97;
          *(v91 + 40) = v98;
          *(v91 + 48) = v99;
          v91 -= 56;
        }

        while (!__CFADD__(v92++, 1));
        v38 = v132 + 1;
        v91 = v137 + 56;
        v92 = v135 - 1;
        v42 = v127;
      }

      while ((v132 + 1) != v127);
      v8 = 0;
      v9 = a3;
      v12 = v129;
      if (v127 < v129)
      {
        goto LABEL_122;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D10F7610(0, *(v13 + 2) + 1, 1, v13);
      v13 = result;
    }

    v44 = *(v13 + 2);
    v43 = *(v13 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_1D10F7610((v43 > 1), v44 + 1, 1, v13);
      v13 = result;
    }

    *(v13 + 2) = v45;
    v46 = &v13[16 * v44];
    *(v46 + 4) = v12;
    *(v46 + 5) = v42;
    v47 = *v133;
    if (!*v133)
    {
      goto LABEL_132;
    }

    v7 = v42;
    if (v44)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v12 = v7;
    v11 = a6;
    if (v7 >= v10)
    {
      goto LABEL_92;
    }
  }

  while (1)
  {
    v48 = v45 - 1;
    if (v45 >= 4)
    {
      v53 = &v13[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_109;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_110;
      }

      v60 = &v13[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_112;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_115;
      }

      if (v64 >= v56)
      {
        v82 = &v13[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_121;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_67;
      }

      goto LABEL_46;
    }

    if (v45 == 3)
    {
      v49 = *(v13 + 4);
      v50 = *(v13 + 5);
      v59 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      v52 = v59;
LABEL_46:
      if (v52)
      {
        goto LABEL_111;
      }

      v65 = &v13[16 * v45];
      v67 = *v65;
      v66 = *(v65 + 1);
      v68 = __OFSUB__(v66, v67);
      v69 = v66 - v67;
      v70 = v68;
      if (v68)
      {
        goto LABEL_114;
      }

      v71 = &v13[16 * v48 + 32];
      v73 = *v71;
      v72 = *(v71 + 1);
      v59 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v59)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v69, v74))
      {
        goto LABEL_118;
      }

      if (v69 + v74 >= v51)
      {
        if (v51 < v74)
        {
          v48 = v45 - 2;
        }

        goto LABEL_67;
      }

      goto LABEL_60;
    }

    v75 = &v13[16 * v45];
    v77 = *v75;
    v76 = *(v75 + 1);
    v59 = __OFSUB__(v76, v77);
    v69 = v76 - v77;
    v70 = v59;
LABEL_60:
    if (v70)
    {
      goto LABEL_113;
    }

    v78 = &v13[16 * v48];
    v80 = *(v78 + 4);
    v79 = *(v78 + 5);
    v59 = __OFSUB__(v79, v80);
    v81 = v79 - v80;
    if (v59)
    {
      goto LABEL_116;
    }

    if (v81 < v69)
    {
      goto LABEL_3;
    }

LABEL_67:
    v86 = v48 - 1;
    if (v48 - 1 >= v45)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_128;
    }

    v87 = *&v13[16 * v86 + 32];
    v88 = *&v13[16 * v48 + 40];
    sub_1D11A2E1C((*v9 + 56 * v87), (*v9 + 56 * *&v13[16 * v48 + 32]), (*v9 + 56 * v88), v47, a4);
    if (v8)
    {
    }

    if (v88 < v87)
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1D1245848(v13);
    }

    if (v86 >= *(v13 + 2))
    {
      goto LABEL_108;
    }

    v89 = &v13[16 * v86];
    *(v89 + 4) = v87;
    *(v89 + 5) = v88;
    v152 = v13;
    result = sub_1D12457BC(v48);
    v13 = v152;
    v45 = *(v152 + 2);
    if (v45 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
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
  result = sub_1D1245848(v13);
  v13 = result;
LABEL_94:
  v122 = v8;
  v152 = v13;
  v123 = *(v13 + 2);
  if (v123 < 2)
  {
  }

  while (1)
  {
    v124 = *v9;
    if (!*v9)
    {
      break;
    }

    v9 = (v123 - 1);
    v125 = *&v13[16 * v123];
    v8 = *&v13[16 * v123 + 24];
    sub_1D11A2E1C((v124 + 56 * v125), (v124 + 56 * *&v13[16 * v123 + 16]), (v124 + 56 * v8), v7, a4);
    if (v122)
    {
    }

    if (v8 < v125)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1D1245848(v13);
    }

    if (v123 - 2 >= *(v13 + 2))
    {
      goto LABEL_120;
    }

    v126 = &v13[16 * v123];
    *v126 = v125;
    *(v126 + 1) = v8;
    v152 = v13;
    result = sub_1D12457BC(v9);
    v13 = v152;
    v123 = *(v152 + 2);
    v9 = a3;
    if (v123 <= 1)
    {
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_1D119F01C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, __int128 *), uint64_t a5, uint64_t a6)
{
  v121 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v7 = *v121;
    if (*v121)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_95;
    }

    goto LABEL_133;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      ++v8;
      goto LABEL_13;
    }

    v12 = *a3;
    v13 = (*a3 + 80 * v11);
    v162 = *v13;
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[4];
    v165 = v13[3];
    v166 = v16;
    v163 = v14;
    v164 = v15;
    v17 = v13[3];
    v159 = v13[2];
    v160 = v17;
    v161 = v13[4];
    v18 = v13[1];
    v157 = *v13;
    v158 = v18;
    v19 = (v12 + 80 * v10);
    v167 = *v19;
    v20 = v19[4];
    v22 = v19[1];
    v21 = v19[2];
    v170 = v19[3];
    v171 = v20;
    v168 = v22;
    v169 = v21;
    v23 = v19[3];
    v154 = v19[2];
    v155 = v23;
    v156 = v19[4];
    v24 = v19[1];
    v152 = *v19;
    v153 = v24;
    sub_1D10932A8(&v162, &v147);
    sub_1D10932A8(&v167, &v147);
    v25 = a4(&v157, &v152);
    if (v6)
    {
LABEL_104:
      v144 = v154;
      v145 = v155;
      v146 = v156;
      v142 = v152;
      v143 = v153;
      sub_1D1093370(&v142);
      v149 = v159;
      v150 = v160;
      v151 = v161;
      v147 = v157;
      v148 = v158;
      sub_1D1093370(&v147);
    }

    v26 = v25;
    v144 = v154;
    v145 = v155;
    v146 = v156;
    v142 = v152;
    v143 = v153;
    sub_1D1093370(&v142);
    v149 = v159;
    v150 = v160;
    v151 = v161;
    v147 = v157;
    v148 = v158;
    result = sub_1D1093370(&v147);
    v27 = v10 + 2;
    if (v10 + 2 >= v7)
    {
      v8 = v10 + 2;
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_82;
    }

    v28 = (v12 + 80 * v10 + 160);
    while (1)
    {
      v8 = v27;
      v136[0] = *v28;
      v29 = v28[1];
      v30 = v28[2];
      v31 = v28[4];
      v136[3] = v28[3];
      v136[4] = v31;
      v136[1] = v29;
      v136[2] = v30;
      v32 = v28[3];
      v133 = v28[2];
      v134 = v32;
      v135 = v28[4];
      v33 = v28[1];
      v131 = *v28;
      v132 = v33;
      v137 = *(v28 - 5);
      v34 = *(v28 - 1);
      v36 = *(v28 - 4);
      v35 = *(v28 - 3);
      v140 = *(v28 - 2);
      v141 = v34;
      v138 = v36;
      v139 = v35;
      v37 = *(v28 - 2);
      v128 = *(v28 - 3);
      v129 = v37;
      v130 = *(v28 - 1);
      v38 = *(v28 - 4);
      v126 = *(v28 - 5);
      v127 = v38;
      sub_1D10932A8(v136, v125);
      sub_1D10932A8(&v137, v125);
      v39 = a4(&v131, &v126);
      v124[2] = v128;
      v124[3] = v129;
      v124[4] = v130;
      v124[0] = v126;
      v124[1] = v127;
      sub_1D1093370(v124);
      v125[2] = v133;
      v125[3] = v134;
      v125[4] = v135;
      v125[0] = v131;
      v125[1] = v132;
      result = sub_1D1093370(v125);
      if ((v26 ^ v39))
      {
        break;
      }

      v27 = v8 + 1;
      v28 += 5;
      if (v7 == v8 + 1)
      {
        v11 = v8;
        v8 = v7;
        if ((v26 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_82:
        if (v8 >= v10)
        {
          if (v10 <= v11)
          {
            v7 = 80 * v8 - 80;
            v108 = 80 * v10;
            v109 = v8;
            v119 = v10;
            do
            {
              if (v10 != --v109)
              {
                v110 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v111 = (v110 + v7);
                v138 = *(v110 + v108 + 16);
                v139 = *(v110 + v108 + 32);
                v140 = *(v110 + v108 + 48);
                v141 = *(v110 + v108 + 64);
                v137 = *(v110 + v108);
                result = memmove((v110 + v108), (v110 + v7), 0x50uLL);
                v111[1] = v138;
                v111[2] = v139;
                v111[3] = v140;
                v111[4] = v141;
                *v111 = v137;
              }

              ++v10;
              v7 -= 80;
              v108 += 80;
            }

            while (v10 < v109);
            v10 = v119;
          }

          goto LABEL_13;
        }

LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }
    }

    v11 = v8 - 1;
    if (v26)
    {
      goto LABEL_82;
    }

LABEL_13:
    v40 = a3[1];
    if (v8 >= v40)
    {
      goto LABEL_136;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_123;
    }

    if (v8 - v10 >= a6)
    {
      goto LABEL_136;
    }

    v41 = v10 + a6;
    if (__OFADD__(v10, a6))
    {
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v41 >= v40)
    {
      v41 = a3[1];
    }

    if (v41 < v10)
    {
      goto LABEL_126;
    }

    if (v8 == v41)
    {
LABEL_136:
      if (v8 < v10)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v88 = *a3;
      v89 = (*a3 + 80 * v8);
      v7 = v10 - v8 + 1;
      v116 = v41;
      do
      {
        v117 = v7;
        v118 = v89;
        while (1)
        {
          v162 = *v89;
          v90 = v89[1];
          v91 = v89[2];
          v92 = v89[4];
          v165 = v89[3];
          v166 = v92;
          v163 = v90;
          v164 = v91;
          v93 = v89[3];
          v159 = v89[2];
          v160 = v93;
          v161 = v89[4];
          v94 = v89[1];
          v157 = *v89;
          v158 = v94;
          v167 = *(v89 - 5);
          v95 = *(v89 - 1);
          v97 = *(v89 - 4);
          v96 = *(v89 - 3);
          v170 = *(v89 - 2);
          v171 = v95;
          v168 = v97;
          v169 = v96;
          v98 = *(v89 - 2);
          v154 = *(v89 - 3);
          v155 = v98;
          v156 = *(v89 - 1);
          v99 = *(v89 - 4);
          v152 = *(v89 - 5);
          v153 = v99;
          sub_1D10932A8(&v162, &v147);
          sub_1D10932A8(&v167, &v147);
          v100 = a4(&v157, &v152);
          if (v6)
          {
            goto LABEL_104;
          }

          v101 = v100;
          v144 = v154;
          v145 = v155;
          v146 = v156;
          v142 = v152;
          v143 = v153;
          sub_1D1093370(&v142);
          v149 = v159;
          v150 = v160;
          v151 = v161;
          v147 = v157;
          v148 = v158;
          result = sub_1D1093370(&v147);
          if ((v101 & 1) == 0)
          {
            break;
          }

          if (!v88)
          {
            goto LABEL_129;
          }

          v102 = v89 - 5;
          v138 = v89[1];
          v139 = v89[2];
          v140 = v89[3];
          v141 = v89[4];
          v137 = *v89;
          v103 = *(v89 - 2);
          v89[2] = *(v89 - 3);
          v89[3] = v103;
          v89[4] = *(v89 - 1);
          v104 = *(v89 - 4);
          *v89 = *(v89 - 5);
          v89[1] = v104;
          *v102 = v137;
          v105 = v138;
          v106 = v139;
          v107 = v141;
          v102[3] = v140;
          v102[4] = v107;
          v102[1] = v105;
          v102[2] = v106;
          if (!v7)
          {
            break;
          }

          ++v7;
          v89 -= 5;
        }

        ++v8;
        v89 = v118 + 5;
        v7 = v117 - 1;
      }

      while (v8 != v116);
      v8 = v116;
      if (v116 < v10)
      {
        goto LABEL_122;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v7 = v10;
    if ((result & 1) == 0)
    {
      result = sub_1D10F7610(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_1D10F7610((v42 > 1), v43 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v44;
    v45 = &v9[16 * v43];
    *(v45 + 4) = v7;
    *(v45 + 5) = v8;
    v46 = *v121;
    if (!*v121)
    {
      goto LABEL_132;
    }

    if (v43)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v47 = v44 - 1;
    if (v44 >= 4)
    {
      v52 = &v9[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_109;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_110;
      }

      v59 = &v9[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_112;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_115;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_121;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_62;
      }

      goto LABEL_41;
    }

    if (v44 == 3)
    {
      v48 = *(v9 + 4);
      v49 = *(v9 + 5);
      v58 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      v51 = v58;
LABEL_41:
      if (v51)
      {
        goto LABEL_111;
      }

      v64 = &v9[16 * v44];
      v66 = *v64;
      v65 = *(v64 + 1);
      v67 = __OFSUB__(v65, v66);
      v68 = v65 - v66;
      v69 = v67;
      if (v67)
      {
        goto LABEL_114;
      }

      v70 = &v9[16 * v47 + 32];
      v72 = *v70;
      v71 = *(v70 + 1);
      v58 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v58)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v68, v73))
      {
        goto LABEL_118;
      }

      if (v68 + v73 >= v50)
      {
        if (v50 < v73)
        {
          v47 = v44 - 2;
        }

        goto LABEL_62;
      }

      goto LABEL_55;
    }

    v74 = &v9[16 * v44];
    v76 = *v74;
    v75 = *(v74 + 1);
    v58 = __OFSUB__(v75, v76);
    v68 = v75 - v76;
    v69 = v58;
LABEL_55:
    if (v69)
    {
      goto LABEL_113;
    }

    v77 = &v9[16 * v47];
    v79 = *(v77 + 4);
    v78 = *(v77 + 5);
    v58 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if (v58)
    {
      goto LABEL_116;
    }

    if (v80 < v68)
    {
      goto LABEL_3;
    }

LABEL_62:
    v7 = v47 - 1;
    if (v47 - 1 >= v44)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_128;
    }

    v85 = *&v9[16 * v7 + 32];
    v86 = *&v9[16 * v47 + 40];
    sub_1D11A1DF0((*a3 + 80 * v85), (*a3 + 80 * *&v9[16 * v47 + 32]), (*a3 + 80 * v86), v46, a4);
    if (v6)
    {
    }

    if (v86 < v85)
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D1245848(v9);
    }

    if (v7 >= *(v9 + 2))
    {
      goto LABEL_108;
    }

    v87 = &v9[16 * v7];
    *(v87 + 4) = v85;
    *(v87 + 5) = v86;
    v172 = v9;
    result = sub_1D12457BC(v47);
    v9 = v172;
    v44 = *(v172 + 2);
    if (v44 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
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
  result = sub_1D1245848(v9);
  v9 = result;
LABEL_95:
  v172 = v9;
  v112 = *(v9 + 2);
  if (v112 < 2)
  {
  }

  while (*a3)
  {
    v113 = *&v9[16 * v112];
    v114 = *&v9[16 * v112 + 24];
    sub_1D11A1DF0((*a3 + 80 * v113), (*a3 + 80 * *&v9[16 * v112 + 16]), (*a3 + 80 * v114), v7, a4);
    if (v6)
    {
    }

    if (v114 < v113)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D1245848(v9);
    }

    if (v112 - 2 >= *(v9 + 2))
    {
      goto LABEL_120;
    }

    v115 = &v9[16 * v112];
    *v115 = v113;
    *(v115 + 1) = v114;
    v172 = v9;
    result = sub_1D12457BC(v112 - 1);
    v9 = v172;
    v112 = *(v172 + 2);
    if (v112 <= 1)
    {
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}