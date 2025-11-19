void sub_1CFE23C78(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1CFDA6E64(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1CFE23CE0()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE23EC4(v0, v4, type metadata accessor for SleepingSampleBaselineAvailability);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0x9380E29380E2;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1CFDAD680();
    v7 = *&v4[*(v6 + 64)];
    v13 = *&v4[*(v6 + 48)];
    v14 = sub_1CFE31074();
    v15 = v8;
    MEMORY[0x1D3876060](47, 0xE100000000000000);
    v13 = v7;
    v9 = sub_1CFE31074();
    MEMORY[0x1D3876060](v9);

    MEMORY[0x1D3876060](100, 0xE100000000000000);
    v10 = v14;
  }

  else
  {
    v10 = 0x6C62616C69617641;
  }

  sub_1CFE23F2C(v4, sub_1CFDA7AD0);
  return v10;
}

void sub_1CFE23E74()
{
  if (!qword_1EC509528)
  {
    v0 = sub_1CFE31084();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509528);
    }
  }
}

uint64_t sub_1CFE23EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE23F2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DateInterval.range.getter@<X0>(char *a1@<X8>)
{
  sub_1CFE241CC();
  v3 = v2;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = sub_1CFE30314();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  sub_1CFE30004();
  sub_1CFE2FFD4();
  sub_1CFE24234();
  result = sub_1CFE30874();
  if (result)
  {
    v19 = v11[4];
    v19(v9, v17, v10);
    v19(&v9[*(v3 + 48)], v15, v10);
    sub_1CFE2428C(v9, v7);
    v20 = *(v3 + 48);
    v19(a1, v7, v10);
    v21 = v11[1];
    v21(&v7[v20], v10);
    sub_1CFE242F0(v9, v7);
    v22 = *(v3 + 48);
    sub_1CFDDB714();
    v19(&a1[*(v23 + 36)], &v7[v22], v10);
    return (v21)(v7, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CFE241CC()
{
  if (!qword_1EC509F48)
  {
    sub_1CFE30314();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC509F48);
    }
  }
}

unint64_t sub_1CFE24234()
{
  result = qword_1EDC32030;
  if (!qword_1EDC32030)
  {
    sub_1CFE30314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32030);
  }

  return result;
}

uint64_t sub_1CFE2428C(uint64_t a1, uint64_t a2)
{
  sub_1CFE241CC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE242F0(uint64_t a1, uint64_t a2)
{
  sub_1CFE241CC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DateInterval.cappedToMaximumEnd(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = sub_1CFE30314();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v23 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v23 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v23 - v16;
  MEMORY[0x1EEE9AC00](v15);
  sub_1CFE30004();
  sub_1CFE30004();
  sub_1CFE2FFD4();
  sub_1CFE24234();
  if (sub_1CFE30854())
  {
    (*(v4 + 8))(v8, v3);
    (*(v4 + 16))(v11, a1, v3);
  }

  else
  {
    (*(v4 + 32))(v11, v8, v3);
  }

  v18 = sub_1CFE30864();
  v19 = (v18 & 1) == 0;
  if (v18)
  {
    v20 = v14;
  }

  else
  {
    v20 = v11;
  }

  if (v19)
  {
    v21 = v14;
  }

  else
  {
    v21 = v11;
  }

  (*(v4 + 8))(v20, v3);
  (*(v4 + 32))(v17, v21, v3);
  return sub_1CFE2FFE4();
}

uint64_t sub_1CFE24598(uint64_t a1)
{
  v41 = sub_1CFE30544();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v33[1] = v1;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1CFDC4988(0, v6, 0);
    v44 = v48;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_1CFE30D14();
    v10 = result;
    v11 = 0;
    v38 = v3 + 8;
    v39 = v3 + 16;
    v34 = a1 + 64;
    v35 = v6;
    v36 = v3;
    v37 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      v15 = *(a1 + 36);
      v42 = v11;
      v43 = v15;
      v17 = v40;
      v16 = v41;
      (*(v3 + 16))(v40, *(a1 + 48) + *(v3 + 72) * v10, v41);
      v45 = sub_1CFE30534();
      v46 = sub_1CFE31074();
      v47 = v18;
      MEMORY[0x1D3876060](32, 0xE100000000000000);
      v20 = v46;
      v19 = v47;
      result = (*(v3 + 8))(v17, v16);
      v21 = v44;
      v48 = v44;
      v23 = *(v44 + 16);
      v22 = *(v44 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1CFDC4988((v22 > 1), v23 + 1, 1);
        v21 = v48;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v19;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_24;
      }

      v8 = v37;
      v25 = *(v37 + 8 * v14);
      if ((v25 & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      v44 = v21;
      if (v43 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v26 = v25 & (-2 << (v10 & 0x3F));
      if (v26)
      {
        v12 = __clz(__rbit64(v26)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v36;
        v13 = v42;
      }

      else
      {
        v27 = v14 << 6;
        v28 = v14 + 1;
        v29 = (v34 + 8 * v14);
        v30 = v36;
        while (v28 < (v12 + 63) >> 6)
        {
          v32 = *v29++;
          v31 = v32;
          v27 += 64;
          ++v28;
          if (v32)
          {
            result = sub_1CFE2508C(v10, v43, 0);
            v12 = __clz(__rbit64(v31)) + v27;
            goto LABEL_19;
          }
        }

        result = sub_1CFE2508C(v10, v43, 0);
LABEL_19:
        v13 = v42;
        v3 = v30;
      }

      v11 = v13 + 1;
      v10 = v12;
      if (v11 == v35)
      {
        return v44;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

id HKTableFormatter.init(notificationSettings:)()
{
  sub_1CFE24F6C(0, &qword_1EC509F50, MEMORY[0x1E69D3718]);
  v63 = v0;
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v62 = &v60 - v2;
  sub_1CFE24F6C(0, &qword_1EC509F58, MEMORY[0x1E69D36A8]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v60 - v5;
  sub_1CFE24F6C(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = sub_1CFE30A74();
  v18 = [v16 initWithColumnTitles_];

  sub_1CFE25038(0, &qword_1EC509528, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1CFE37BB0;
  v20 = v18;
  v21 = sub_1CFE305D4();
  if (v21 == 2)
  {
    v22 = 0xE300000000000000;
    v23 = 7104878;
  }

  else
  {
    LOBYTE(v66) = v21 & 1;
    v23 = sub_1CFE30944();
  }

  *(v19 + 32) = v23;
  *(v19 + 40) = v22;
  sub_1CFE305F4();
  v24 = sub_1CFE30314();
  v25 = *(*(v24 - 8) + 48);
  v64 = *(v24 - 8);
  v65 = v25;
  v26 = 0;
  if (v25(v15, 1, v24) != 1)
  {
    v26 = sub_1CFE302D4();
    (*(v64 + 8))(v15, v24);
  }

  v27 = [v20 stringFromDate_];

  v28 = sub_1CFE30924();
  v30 = v29;

  *(v19 + 48) = v28;
  *(v19 + 56) = v30;
  sub_1CFE305E4();
  if (v65(v13, 1, v24) == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = sub_1CFE302D4();
    (*(v64 + 8))(v13, v24);
  }

  v32 = [v20 stringFromDate_];

  v33 = sub_1CFE30924();
  v35 = v34;

  *(v19 + 64) = v33;
  *(v19 + 72) = v35;
  v66 = sub_1CFE305C4();
  sub_1CFDBCCBC();
  *(v19 + 80) = sub_1CFE30CC4();
  *(v19 + 88) = v36;
  v37 = sub_1CFE305B4();
  v38 = 1702195828;
  if ((v37 & 1) == 0)
  {
    v38 = 0x65736C6166;
  }

  v39 = 0xE500000000000000;
  if (v37)
  {
    v39 = 0xE400000000000000;
  }

  *(v19 + 96) = v38;
  *(v19 + 104) = v39;
  sub_1CFE305A4();
  v40 = sub_1CFE30564();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v6, 1, v40) == 1)
  {
    sub_1CFE24FC0(v6);
    v42 = 0xE300000000000000;
    v43 = 7104878;
  }

  else
  {
    v44 = sub_1CFE30554();
    (*(v41 + 8))(v6, v40);
    v45 = sub_1CFE24598(v44);

    v66 = v45;
    sub_1CFE25038(0, &qword_1EC509830, MEMORY[0x1E69E62F8]);
    sub_1CFDDDFEC();
    v43 = sub_1CFE30844();
    v42 = v46;
  }

  *(v19 + 112) = v43;
  *(v19 + 120) = v42;
  v47 = sub_1CFE30574();
  if (v48)
  {
    v49 = 0xE300000000000000;
    v50 = 7104878;
  }

  else
  {
    v66 = v47;
    v50 = sub_1CFE30CC4();
  }

  *(v19 + 128) = v50;
  *(v19 + 136) = v49;
  sub_1CFE30584();
  *(v19 + 144) = sub_1CFE30944();
  *(v19 + 152) = v51;
  v52 = v61;
  sub_1CFE30594();
  if (v65(v52, 1, v24) == 1)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1CFE302D4();
    (*(v64 + 8))(v52, v24);
  }

  v54 = [v20 stringFromDate_];

  v55 = sub_1CFE30924();
  v57 = v56;

  *(v19 + 160) = v55;
  *(v19 + 168) = v57;
  v58 = sub_1CFE30A74();

  [v20 appendRow_];

  return v20;
}

void sub_1CFE24F6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFE24FC0(uint64_t a1)
{
  sub_1CFE24F6C(0, &qword_1EC509F58, MEMORY[0x1E69D36A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFE25038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFE2508C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t SleepingSampleDaySummary.baselineComparisons.getter()
{
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v1 = *(type metadata accessor for SleepingSampleBaselineComparison() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1CFE33E10;
  v5 = v4 + v3;
  v6 = type metadata accessor for SleepingSampleDaySummary();
  sub_1CFDA9900(v0 + v6[8], v5, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v6[9], v5 + v2, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v6[10], v5 + 2 * v2, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v6[11], v5 + 3 * v2, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v6[12], v5 + 4 * v2, type metadata accessor for SleepingSampleBaselineComparison);
  return v4;
}

uint64_t SleepingSampleDaySummary.baselineComparison(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for SleepingSampleDaySummary();
  return sub_1CFDA9900(v2 + *(v5 + qword_1CFE380A0[v4]), a2, type metadata accessor for SleepingSampleBaselineComparison);
}

uint64_t sub_1CFE25280@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t SleepingSampleDaySummary.hasAnyBaselinesInRefinement.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SleepingSampleBaselineAvailability();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v40 = (&v37 - v7);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  v10 = type metadata accessor for SleepingSampleBaselineComparison();
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v16 = *(v12 + 72);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v38 = 4 * v16;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1CFE33E10;
  v37 = v18;
  v19 = v18 + v17;
  v20 = type metadata accessor for SleepingSampleDaySummary();
  sub_1CFDA9900(v1 + v20[8], v19, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + v20[9], v19 + v16, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + v20[10], v19 + 2 * v16, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + v20[11], v19 + 3 * v16, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + v20[12], v19 + v38, type metadata accessor for SleepingSampleBaselineComparison);
  v21 = *(v11 + 28);
  v22 = 5;
  while (1)
  {
    sub_1CFDA9900(v19, v15, type metadata accessor for SleepingSampleBaselineComparison);
    sub_1CFDA9900(&v15[v21], v9, type metadata accessor for SleepingSampleBaselineAvailability);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_2;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1CFDAD680();
    }

    else
    {
      sub_1CFDCB868();
    }

    v25 = *&v9[*(v24 + 48)];
    sub_1CFDA7A74(v9);
    if ((v25 - 6) >= 0xE)
    {
LABEL_2:
      sub_1CFDA99B4(v15, type metadata accessor for SleepingSampleBaselineComparison);
      goto LABEL_3;
    }

    v26 = v15[*(type metadata accessor for SleepingSampleAggregate() + 36)] < 3u;
    sub_1CFDA9900(&v15[v21], v40, type metadata accessor for SleepingSampleBaselineAvailability);
    v27 = swift_getEnumCaseMultiPayload();
    if (v27)
    {
      if (v27 == 1)
      {
        sub_1CFDAD680();
        v29 = *(v40 + *(v28 + 64));
        sub_1CFDA7A74(v40);
      }

      else
      {
        sub_1CFDA7A74(v40);
        v29 = 6;
      }
    }

    else
    {
      v29 = *v40;
    }

    sub_1CFDA9900(&v15[v21], v39, type metadata accessor for SleepingSampleBaselineAvailability);
    sub_1CFDA99B4(v15, type metadata accessor for SleepingSampleBaselineComparison);
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      if (result == 1)
      {
        sub_1CFDAD680();
      }

      else
      {
        sub_1CFDCB868();
      }

      v32 = *(v39 + *(v31 + 48));
      result = sub_1CFDA7A74(v39);
    }

    else
    {
      v32 = 0;
    }

    v33 = v29 - v32;
    if (__OFSUB__(v29, v32))
    {
      break;
    }

    v34 = __OFADD__(v33, v26);
    v35 = v33 + v26;
    if (v34)
    {
      goto LABEL_27;
    }

    if (v35 <= 0)
    {
      v36 = 1;
LABEL_25:

      return v36;
    }

LABEL_3:
    v19 += v16;
    if (!--v22)
    {
      v36 = 0;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t SleepingSampleDaySummary.init(morningIndex:baselineRange:latestBaselineSampleEnd:heartRate:bloodOxygen:respiratoryRate:wristTemperature:timeAsleep:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for SleepingSampleDaySummary();
  v17 = v16[6];
  v18 = sub_1CFE30314();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = a9 + v16[7];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = sub_1CFE307E4();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  sub_1CFDF72E0(a2, a9 + v16[5]);
  sub_1CFDB1078(a3, a9 + v17);
  sub_1CFDB4880(a4, a9 + v16[8], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB4880(a5, a9 + v16[9], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB4880(a6, a9 + v16[10], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB4880(a7, a9 + v16[11], type metadata accessor for SleepingSampleBaselineComparison);
  return sub_1CFDB4880(a8, a9 + v16[12], type metadata accessor for SleepingSampleBaselineComparison);
}

uint64_t SleepingSampleDaySummary.morningIndex.setter(uint64_t a1)
{
  v3 = sub_1CFE307E4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SleepingSampleDaySummary.baselineRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary() + 20);

  return sub_1CFDE895C(v3, a1);
}

uint64_t SleepingSampleDaySummary.baselineRange.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary() + 20);

  return sub_1CFE27664(a1, v3);
}

uint64_t SleepingSampleDaySummary.latestBaselineSampleEnd.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary() + 24);

  return sub_1CFDB1078(a1, v3);
}

uint64_t SleepingSampleDaySummary.outlierContext.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SleepingSampleDaySummary();
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t SleepingSampleDaySummary.outlierContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for SleepingSampleDaySummary();
  v5 = v1 + *(result + 28);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t SleepingSampleDaySummary.heartRate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary() + 32);

  return sub_1CFE276E4(a1, v3);
}

uint64_t SleepingSampleDaySummary.bloodOxygen.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary() + 36);

  return sub_1CFE276E4(a1, v3);
}

uint64_t SleepingSampleDaySummary.respiratoryRate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary() + 40);

  return sub_1CFE276E4(a1, v3);
}

uint64_t SleepingSampleDaySummary.wristTemperature.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary() + 44);

  return sub_1CFE276E4(a1, v3);
}

uint64_t SleepingSampleDaySummary.timeAsleep.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary() + 48);

  return sub_1CFE276E4(a1, v3);
}

uint64_t SleepingSampleDaySummary.init(morningIndex:baselineRange:heartRate:bloodOxygen:respiratoryRate:wristTemperature:timeAsleep:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a6;
  v27 = a7;
  v24 = a4;
  v25 = a5;
  v23 = a3;
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = sub_1CFE30314();
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v17 = type metadata accessor for SleepingSampleDaySummary();
  v18 = v17[6];
  v16((a8 + v18), 1, 1, v15);
  v19 = a8 + v17[7];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = sub_1CFE307E4();
  (*(*(v20 - 8) + 32))(a8, a1, v20);
  sub_1CFDF72E0(a2, a8 + v17[5]);
  sub_1CFDB1078(v14, a8 + v18);
  sub_1CFDB4880(v23, a8 + v17[8], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB4880(v24, a8 + v17[9], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB4880(v25, a8 + v17[10], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB4880(v26, a8 + v17[11], type metadata accessor for SleepingSampleBaselineComparison);
  return sub_1CFDB4880(v27, a8 + v17[12], type metadata accessor for SleepingSampleBaselineComparison);
}

uint64_t sub_1CFE26234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFE28058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFE26268(uint64_t a1)
{
  v2 = sub_1CFDAB17C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE262A4(uint64_t a1)
{
  v2 = sub_1CFDAB17C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleDaySummary.hash(into:)()
{
  v1 = v0;
  v2 = sub_1CFE30314();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E6969530];
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - v9;
  sub_1CFE307E4();
  sub_1CFDA7A2C(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  v11 = type metadata accessor for SleepingSampleDaySummary();
  v12 = v0 + v11[5];
  sub_1CFE30834();
  sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v14 = v12 + *(v13 + 36);
  sub_1CFE30834();
  sub_1CFDA9A94(v1 + v11[6], v10, &qword_1EDC32C70, v6);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v15 = v25;
    (*(v3 + 32))(v25, v10, v2);
    sub_1CFE31164();
    sub_1CFDA7A2C(&qword_1EC509650, MEMORY[0x1E6969530]);
    sub_1CFE30834();
    (*(v3 + 8))(v15, v2);
  }

  v16 = (v1 + v11[7]);
  if (*(v16 + 8) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v17 = *v16;
    sub_1CFE31164();
    MEMORY[0x1D3876810](v17);
  }

  v18 = v1 + v11[8];
  SleepingSampleBaselineComparison.hash(into:)();
  v19 = v1 + v11[9];
  SleepingSampleBaselineComparison.hash(into:)();
  v20 = v1 + v11[10];
  SleepingSampleBaselineComparison.hash(into:)();
  v21 = v1 + v11[11];
  SleepingSampleBaselineComparison.hash(into:)();
  v22 = v1 + v11[12];
  return SleepingSampleBaselineComparison.hash(into:)();
}

uint64_t SleepingSampleDaySummary.hashValue.getter()
{
  sub_1CFE31144();
  SleepingSampleDaySummary.hash(into:)();
  return sub_1CFE31184();
}

uint64_t sub_1CFE26680()
{
  sub_1CFE31144();
  SleepingSampleDaySummary.hash(into:)();
  return sub_1CFE31184();
}

uint64_t sub_1CFE266C4()
{
  sub_1CFE31144();
  SleepingSampleDaySummary.hash(into:)();
  return sub_1CFE31184();
}

uint64_t SleepingSampleDaySummary.morningIndexRange.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1CFDA7460();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = sub_1CFE307E4();
  sub_1CFDA7A2C(&qword_1EDC32CA8, MEMORY[0x1E696B418]);
  result = sub_1CFE30874();
  if (result)
  {
    v14 = *(v12 - 8);
    v15 = v14[2];
    v15(v11, v2, v12);
    v15(&v11[*(v5 + 48)], v2, v12);
    sub_1CFDA9900(v11, v9, sub_1CFDA7460);
    v16 = *(v5 + 48);
    v17 = v14[4];
    v17(a1, v9, v12);
    v18 = v14[1];
    v18(&v9[v16], v12);
    sub_1CFDB4880(v11, v9, sub_1CFDA7460);
    v19 = *(v5 + 48);
    sub_1CFDAB9C4(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    v17(a1 + *(v20 + 36), &v9[v19], v12);
    return (v18)(v9, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SleepingSampleDaySummary.hasAnyRelativeComparison.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineComparison();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v6 = *(v2 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CFE33E10;
  v9 = v8 + v7;
  v10 = type metadata accessor for SleepingSampleDaySummary();
  sub_1CFDA9900(v0 + v10[8], v9, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v10[9], v9 + v6, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v10[10], v9 + 2 * v6, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v10[11], v9 + 3 * v6, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v10[12], v9 + 4 * v6, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v9, v5, type metadata accessor for SleepingSampleBaselineComparison);
  SleepingSampleBaselineComparison.relativeComparison.getter();
  v12 = v11;
  sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison);
  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1CFDA9900(v9 + v6, v5, type metadata accessor for SleepingSampleBaselineComparison);
  SleepingSampleBaselineComparison.relativeComparison.getter();
  v14 = v13;
  sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison);
  if ((v14 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1CFDA9900(v9 + 2 * v6, v5, type metadata accessor for SleepingSampleBaselineComparison);
  SleepingSampleBaselineComparison.relativeComparison.getter();
  v16 = v15;
  sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison);
  if ((v16 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1CFDA9900(v9 + 3 * v6, v5, type metadata accessor for SleepingSampleBaselineComparison);
  SleepingSampleBaselineComparison.relativeComparison.getter();
  v18 = v17;
  sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison);
  if (v18)
  {
    sub_1CFDA9900(v9 + 4 * v6, v5, type metadata accessor for SleepingSampleBaselineComparison);
    SleepingSampleBaselineComparison.relativeComparison.getter();
    v20 = v19;
    sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison);
    v21 = v20 ^ 1;
  }

  else
  {
LABEL_6:
    v21 = 1;
  }

  return v21 & 1;
}

uint64_t SleepingSampleDaySummary.baselineComparisons(for:)(char *a1)
{
  v2 = *a1;
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v3 = *(type metadata accessor for SleepingSampleBaselineComparison() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CFE324E0;
  v7 = type metadata accessor for SleepingSampleDaySummary();
  sub_1CFDA9900(v1 + *(v7 + qword_1CFE380A0[v2]), v6 + v5, type metadata accessor for SleepingSampleBaselineComparison);
  return v6;
}

uint64_t sub_1CFE26DB8(int *a1)
{
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v3 = *(type metadata accessor for SleepingSampleBaselineComparison() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CFE33E10;
  v7 = v6 + v5;
  sub_1CFDA9900(v1 + a1[8], v7, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + a1[9], v7 + v4, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + a1[10], v7 + 2 * v4, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + a1[11], v7 + 3 * v4, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + a1[12], v7 + 4 * v4, type metadata accessor for SleepingSampleBaselineComparison);
  return v6;
}

uint64_t sub_1CFE26F38(char *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v5 = *(type metadata accessor for SleepingSampleBaselineComparison() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CFE324E0;
  sub_1CFDA9900(v2 + *(a2 + qword_1CFE380A0[v4]), v8 + v7, type metadata accessor for SleepingSampleBaselineComparison);
  return v8;
}

uint64_t _s13HealthBalance24SleepingSampleDaySummaryV21outOfRangeMetricCountSivg_0()
{
  v20 = type metadata accessor for SleepingSampleBaselineComparison();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject() + v9;
  v11 = type metadata accessor for SleepingSampleDaySummary();
  sub_1CFDA9900(v0 + v11[8], v10, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v11[9], v10 + v8, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v11[10], v10 + 2 * v8, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v11[11], v10 + 3 * v8, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v11[12], v10 + 4 * v8, type metadata accessor for SleepingSampleBaselineComparison);
  v12 = 0;
  v13 = 5;
  v14 = v10;
  while (1)
  {
    sub_1CFDA9900(v14, v7, type metadata accessor for SleepingSampleBaselineComparison);
    sub_1CFDA9900(v7, v5, type metadata accessor for SleepingSampleBaselineComparison);
    SleepingSampleBaselineComparison.relativeComparison.getter();
    if (v15)
    {
      sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA99B4(v7, type metadata accessor for SleepingSampleBaselineComparison);
      goto LABEL_3;
    }

    if (HKCompareDoubles() != -1)
    {
      break;
    }

    sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison);
    sub_1CFDA99B4(v7, type metadata accessor for SleepingSampleBaselineComparison);
    v17 = __OFADD__(v12++, 1);
    if (v17)
    {
      goto LABEL_12;
    }

LABEL_3:
    v14 += v8;
    if (!--v13)
    {
      goto LABEL_13;
    }
  }

  v16 = HKCompareDoubles();
  sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA99B4(v7, type metadata accessor for SleepingSampleBaselineComparison);
  if (v16 != 1)
  {
    goto LABEL_3;
  }

  v17 = __OFADD__(v12++, 1);
  if (!v17)
  {
    goto LABEL_3;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v12;
}

uint64_t SleepingSampleDaySummary.OutlierContext.description.getter()
{
  v1 = *v0;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1CFE30DB4();
  v20 = 0;
  v21 = 0xE000000000000000;
  MEMORY[0x1D3876060](0xD000000000000010, 0x80000001CFE39C90);
  v2 = sub_1CFE30AF4();
  v3 = HKSensitiveLogItem();

  sub_1CFE30CE4();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(&v17, v19);
  sub_1CFE31094();
  __swift_destroy_boxed_opaque_existential_1(&v17);
  MEMORY[0x1D3876060](8236, 0xE200000000000000);
  v17 = 0x437265696C74754FLL;
  v18 = 0xEF28747865746E6FLL;
  MEMORY[0x1D3876060](v20, v21);

  v5 = v17;
  v4 = v18;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1CFE30DB4();

  v17 = 0xD000000000000013;
  v18 = 0x80000001CFE39CB0;
  if ((v1 & 2) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((v1 & 2) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1D3876060](v6, v7);

  MEMORY[0x1D3876060](8236, 0xE200000000000000);
  v8 = v17;
  v9 = v18;
  v17 = v5;
  v18 = v4;

  MEMORY[0x1D3876060](v8, v9);

  v11 = v17;
  v10 = v18;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1CFE30DB4();

  v17 = 0x6F69746176656C65;
  v18 = 0xEF203A6E6961476ELL;
  if ((v1 & 4) != 0)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if ((v1 & 4) != 0)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1D3876060](v12, v13);

  MEMORY[0x1D3876060](41, 0xE100000000000000);
  v14 = v17;
  v15 = v18;
  v17 = v11;
  v18 = v10;

  MEMORY[0x1D3876060](v14, v15);

  return v17;
}

uint64_t sub_1CFE27664(uint64_t a1, uint64_t a2)
{
  sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE276E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineComparison();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s13HealthBalance24SleepingSampleDaySummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFE30314();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v37 - v11;
  sub_1CFDA887C(0);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE307E4();
  sub_1CFDA7A2C(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v40 = v5;
  v38 = type metadata accessor for SleepingSampleDaySummary();
  v39 = a2;
  v18 = v38[5];
  if ((sub_1CFE308B4() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v20 = *(v19 + 36);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = v38[6];
  v22 = *(v14 + 48);
  v23 = MEMORY[0x1E6969530];
  sub_1CFDA9A94(a1 + v21, v17, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  sub_1CFDA9A94(v39 + v21, &v17[v22], &qword_1EDC32C70, v23);
  v24 = *(v40 + 48);
  if (v24(v17, 1, v4) != 1)
  {
    sub_1CFDA9A94(v17, v12, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    if (v24(&v17[v22], 1, v4) != 1)
    {
      v27 = v40;
      (*(v40 + 32))(v8, &v17[v22], v4);
      sub_1CFDA7A2C(&qword_1EDC31998, MEMORY[0x1E6969530]);
      v28 = sub_1CFE308B4();
      v29 = *(v27 + 8);
      v29(v8, v4);
      v29(v12, v4);
      sub_1CFDA9B74(v17, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      if ((v28 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v40 + 8))(v12, v4);
LABEL_9:
    sub_1CFDA99B4(v17, sub_1CFDA887C);
    goto LABEL_10;
  }

  if (v24(&v17[v22], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1CFDA9B74(v17, &qword_1EDC32C70, MEMORY[0x1E6969530]);
LABEL_13:
  v31 = v38;
  v30 = v39;
  v32 = v38[7];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (v39 + v32);
  v36 = *(v39 + v32 + 8);
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      goto LABEL_10;
    }
  }

  if (_s13HealthBalance32SleepingSampleBaselineComparisonV2eeoiySbAC_ACtFZ_0(a1 + v38[8], v39 + v38[8]) & 1) != 0 && (_s13HealthBalance32SleepingSampleBaselineComparisonV2eeoiySbAC_ACtFZ_0(a1 + v31[9], v30 + v31[9]) & 1) != 0 && (_s13HealthBalance32SleepingSampleBaselineComparisonV2eeoiySbAC_ACtFZ_0(a1 + v31[10], v30 + v31[10]) & 1) != 0 && (_s13HealthBalance32SleepingSampleBaselineComparisonV2eeoiySbAC_ACtFZ_0(a1 + v31[11], v30 + v31[11]))
  {
    v25 = _s13HealthBalance32SleepingSampleBaselineComparisonV2eeoiySbAC_ACtFZ_0(a1 + v31[12], v30 + v31[12]);
    return v25 & 1;
  }

LABEL_10:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_1CFE27C48(void *a1)
{
  a1[1] = sub_1CFDA7A2C(&qword_1EDC32810, type metadata accessor for SleepingSampleDaySummary);
  a1[2] = sub_1CFDA7A2C(&qword_1EDC32828, type metadata accessor for SleepingSampleDaySummary);
  result = sub_1CFDA7A2C(&qword_1EDC32820, type metadata accessor for SleepingSampleDaySummary);
  a1[3] = result;
  return result;
}

unint64_t sub_1CFE27D44()
{
  result = qword_1EC509F60;
  if (!qword_1EC509F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F60);
  }

  return result;
}

unint64_t sub_1CFE27D98()
{
  result = qword_1EDC31940;
  if (!qword_1EDC31940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31940);
  }

  return result;
}

unint64_t sub_1CFE27DF0()
{
  result = qword_1EDC31938;
  if (!qword_1EDC31938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31938);
  }

  return result;
}

void sub_1CFE27E6C()
{
  sub_1CFE307E4();
  if (v0 <= 0x3F)
  {
    sub_1CFDAB9C4(319, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
    if (v1 <= 0x3F)
    {
      sub_1CFDA97E8(319, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1CFE27F90();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SleepingSampleBaselineComparison();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1CFE27F90()
{
  if (!qword_1EDC32B28[0])
  {
    v0 = sub_1CFE30C74();
    if (!v1)
    {
      atomic_store(v0, qword_1EDC32B28);
    }
  }
}

unint64_t sub_1CFE28004()
{
  result = qword_1EC509F68;
  if (!qword_1EC509F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F68);
  }

  return result;
}

uint64_t sub_1CFE28058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49676E696E726F6DLL && a2 == 0xEC0000007865646ELL;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C65736162 && a2 == 0xED000065676E6152 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CFE39CD0 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x437265696C74756FLL && a2 == 0xEE00747865746E6FLL || (sub_1CFE310B4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461527472616568 && a2 == 0xE900000000000065 || (sub_1CFE310B4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x79784F646F6F6C62 && a2 == 0xEB000000006E6567 || (sub_1CFE310B4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461726970736572 && a2 == 0xEF6574615279726FLL || (sub_1CFE310B4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFE39AD0 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C7341656D6974 && a2 == 0xEA00000000007065)
  {

    return 8;
  }

  else
  {
    v6 = sub_1CFE310B4();

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

uint64_t SleepingSampleAnalysisFeatureStatus.init(featureStatusByFeatureIdentifier:)()
{
  type metadata accessor for HKFeatureIdentifier(0);
  sub_1CFE2848C();
  sub_1CFE2934C(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier);
  sub_1CFE2934C(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier);
  sub_1CFE2934C(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier);

  return sub_1CFE30724();
}

unint64_t sub_1CFE2848C()
{
  result = qword_1EDC32528;
  if (!qword_1EDC32528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC32528);
  }

  return result;
}

uint64_t SleepingSampleAnalysisFeatureStatus.set(_:for:)(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  sub_1CFDFDDF4();
  v5 = sub_1CFE306E4();
  v7 = v6;
  v8 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_1CFDFC9C4(v4, v3, isUniquelyReferenced_nonNull_native);

  *v7 = v11;
  return v5(v12, 0);
}

void SleepingSampleAnalysisFeatureStatus.dataTypeStatus(for:)(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      sub_1CFDFDDF4();
      v16 = sub_1CFE306F4();
      if (*(v16 + 16))
      {
        v17 = sub_1CFDA54DC(*MEMORY[0x1E696B8A8]);
        if (v18)
        {
          v19 = *MEMORY[0x1E696B7F8];
          v8 = *(*(v16 + 56) + 8 * v17);

          v9 = [v8 objectForKeyedSubscript_];
          v10 = 2;
          goto LABEL_20;
        }
      }
    }

    else if (v3 == 3)
    {
      sub_1CFDFDDF4();
      v4 = sub_1CFE306F4();
      if (*(v4 + 16))
      {
        v5 = sub_1CFDA54DC(*MEMORY[0x1E696B8C8]);
        if (v6)
        {
          v7 = *MEMORY[0x1E696B800];
          v8 = *(*(v4 + 56) + 8 * v5);

          v9 = [v8 objectForKeyedSubscript_];
          v10 = 3;
LABEL_20:
          v31 = v10;
          sub_1CFDE6D90(v9, &v31, v32);

          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_1CFDFDDF4();
      v20 = sub_1CFE306F4();
      if (*(v20 + 16))
      {
        v21 = sub_1CFDA54DC(*MEMORY[0x1E696B8B8]);
        if (v22)
        {
          v23 = *MEMORY[0x1E696B800];
          v8 = *(*(v20 + 56) + 8 * v21);

          v9 = [v8 objectForKeyedSubscript_];
          v10 = 4;
          goto LABEL_20;
        }
      }
    }

    goto LABEL_22;
  }

  if (*a1)
  {
    sub_1CFDFDDF4();
    v24 = sub_1CFE306F4();
    if (*(v24 + 16))
    {
      v25 = sub_1CFDA54DC(*MEMORY[0x1E696B8B0]);
      if (v26)
      {
        v27 = *MEMORY[0x1E696B800];
        v8 = *(*(v24 + 56) + 8 * v25);

        v9 = [v8 objectForKeyedSubscript_];
        v10 = 1;
        goto LABEL_20;
      }
    }

LABEL_22:

LABEL_23:
    v28 = 0;
    v29 = 0;
    v30 = -1;
    goto LABEL_24;
  }

  v11 = sub_1CFE308F4();
  sub_1CFDFDDF4();
  v12 = sub_1CFE306F4();
  if (!*(v12 + 16) || (v13 = sub_1CFDA54DC(*MEMORY[0x1E696B8C0]), (v14 & 1) == 0))
  {

    goto LABEL_23;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v31 = 0;
  sub_1CFDE6D90([v15 objectForKeyedSubscript_], &v31, v32);

LABEL_21:
  v28 = v32[0];
  v29 = v33;
  v30 = v34;
LABEL_24:
  *a2 = v28;
  *(a2 + 8) = v29;
  *(a2 + 16) = v30;
}

void *SleepingSampleAnalysisFeatureStatus.subscript.getter(uint64_t a1)
{
  sub_1CFDFDDF4();
  v2 = sub_1CFE306F4();
  if (*(v2 + 16) && (v3 = sub_1CFDA54DC(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t static SleepingSampleAnalysisFeatureStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HKFeatureIdentifier(0);
  v5 = v4;
  v6 = sub_1CFE2848C();
  v7 = sub_1CFE2934C(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier);
  v8 = sub_1CFE2934C(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier);
  v9 = sub_1CFE2934C(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier);
  v10 = sub_1CFE2934C(&qword_1EDC31A88, sub_1CFE2848C);

  return MEMORY[0x1EEDC7670](a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CFE28A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000020 && 0x80000001CFE39CF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CFE310B4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CFE28B04(uint64_t a1)
{
  v2 = sub_1CFE29294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE28B40(uint64_t a1)
{
  v2 = sub_1CFE29294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleAnalysisFeatureStatus.encode(to:)(void *a1)
{
  sub_1CFE292E8(0, &qword_1EC509F70, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE29294();
  sub_1CFE311A4();
  sub_1CFDFDDF4();
  sub_1CFE2934C(&qword_1EC509F80, sub_1CFDFDDF4);
  sub_1CFE31054();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SleepingSampleAnalysisFeatureStatus.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1CFDFDDF4();
  v5 = v4;
  v24 = *(v4 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE292E8(0, &qword_1EC509F88, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v23 = *(v8 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for SleepingSampleAnalysisFeatureStatus();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE29294();
  sub_1CFE31194();
  if (!v2)
  {
    v18 = v23;
    v19 = v24;
    sub_1CFE2934C(&qword_1EC509F90, sub_1CFDFDDF4);
    sub_1CFE30FD4();
    (*(v18 + 8))(v12, v9);
    (*(v19 + 32))(v16, v25, v5);
    sub_1CFE29394(v16, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1CFE28FB0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HKFeatureIdentifier(0);
  v5 = v4;
  v6 = sub_1CFE2848C();
  v7 = sub_1CFE2934C(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier);
  v8 = sub_1CFE2934C(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier);
  v9 = sub_1CFE2934C(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier);
  v10 = sub_1CFE2934C(&qword_1EDC31A88, sub_1CFE2848C);

  return MEMORY[0x1EEDC7670](a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CFE2910C(void *a1)
{
  sub_1CFE292E8(0, &qword_1EC509F70, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE29294();
  sub_1CFE311A4();
  sub_1CFDFDDF4();
  sub_1CFE2934C(&qword_1EC509F80, sub_1CFDFDDF4);
  sub_1CFE31054();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1CFE29294()
{
  result = qword_1EC509F78;
  if (!qword_1EC509F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F78);
  }

  return result;
}

void sub_1CFE292E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE29294();
    v7 = a3(a1, &type metadata for SleepingSampleAnalysisFeatureStatus.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFE2934C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFE29394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleAnalysisFeatureStatus();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFE29420()
{
  sub_1CFDFDDF4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1CFE294A0()
{
  result = qword_1EC509F98;
  if (!qword_1EC509F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F98);
  }

  return result;
}

unint64_t sub_1CFE294F8()
{
  result = qword_1EC509FA0;
  if (!qword_1EC509FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509FA0);
  }

  return result;
}

unint64_t sub_1CFE29550()
{
  result = qword_1EC509FA8;
  if (!qword_1EC509FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509FA8);
  }

  return result;
}

uint64_t HealthBalanceNotificationsAnalyticsEvent.__allocating_init(notificationContent:action:outOfRangeNotificationLastSentDate:)(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = *(a1 + 8);
  v11 = *a2;
  *(v9 + 16) = *a1;
  *(v9 + 24) = v10;
  *(v9 + 25) = v11;
  sub_1CFDA9CFC(a3, v9 + OBJC_IVAR____TtC13HealthBalance40HealthBalanceNotificationsAnalyticsEvent_outOfRangeNotificationLastSentDate);
  return v9;
}

HealthBalance::HealthBalanceNotificationsAnalyticsEvent::NotificationAction_optional __swiftcall HealthBalanceNotificationsAnalyticsEvent.NotificationAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HealthBalanceNotificationsAnalyticsEvent.NotificationAction.rawValue.getter()
{
  v1 = 1852141679;
  if (*v0 != 1)
  {
    v1 = 0x7373696D736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684956531;
  }
}

uint64_t sub_1CFE296C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1852141679;
  if (v2 != 1)
  {
    v5 = 0x7373696D736964;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1684956531;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1852141679;
  if (*a2 != 1)
  {
    v8 = 0x7373696D736964;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1684956531;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1CFE310B4();
  }

  return v11 & 1;
}

uint64_t sub_1CFE297A8()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFE2983C()
{
  *v0;
  *v0;
  sub_1CFE30984();
}

uint64_t sub_1CFE298BC()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

void sub_1CFE29958(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1852141679;
  if (v2 != 1)
  {
    v5 = 0x7373696D736964;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1684956531;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void HealthBalanceNotificationsAnalyticsEvent.notificationContent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t HealthBalanceNotificationsAnalyticsEvent.init(notificationContent:action:outOfRangeNotificationLastSentDate:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v3 + 16) = *a1;
  *(v3 + 24) = v4;
  *(v3 + 25) = v5;
  sub_1CFDA9CFC(a3, v3 + OBJC_IVAR____TtC13HealthBalance40HealthBalanceNotificationsAnalyticsEvent_outOfRangeNotificationLastSentDate);
  return v3;
}

void HealthBalanceNotificationsAnalyticsEvent.makeIHAGatedEventPayload(with:)(void *a1)
{
  v4 = [a1 healthDataSource];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 environmentDataSource];
    v7 = *(v1 + 24);
    v11 = *(v1 + 16);
    v12 = v7;
    v10 = *(v1 + 25);
    v8 = sub_1CFE2A8D8(v6, v5, &v11, &v10, v1 + OBJC_IVAR____TtC13HealthBalance40HealthBalanceNotificationsAnalyticsEvent_outOfRangeNotificationLastSentDate);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = v8;

      sub_1CFE025C4(v9);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1CFE02570();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t HealthBalanceNotificationsAnalyticsEvent.__deallocating_deinit()
{
  sub_1CFE2B8A8(v0 + OBJC_IVAR____TtC13HealthBalance40HealthBalanceNotificationsAnalyticsEvent_outOfRangeNotificationLastSentDate, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CFE29DF0()
{
  v1 = *v0;
  v2 = *v0 & 0x18;
  if ((*v0 & 6) != 0)
  {
    if (v2)
    {
      result = 3;
      if ((v1 & 0x180) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    result = 1;
    if ((v1 & 0x180) == 0)
    {
LABEL_11:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }

LABEL_4:
    result |= 0x10uLL;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    if ((v1 & 0x40) == 0)
    {
      return result;
    }

    return result | 4;
  }

  if (v2)
  {
    result = 2;
    if ((v1 & 0x180) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  if ((v1 & 0x180) != 0)
  {
    result = 16;
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = 0;
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_5:
  result |= 8uLL;
  if ((v1 & 0x40) == 0)
  {
    return result;
  }

  return result | 4;
}

uint64_t sub_1CFE29E78()
{
  v1 = *v0;
  v2 = *v0 & 0x18;
  if ((*v0 & 6) != 0)
  {
    if (v2)
    {
      result = 2;
      if ((v1 & 0x180) != 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

LABEL_8:
    result = 1;
    if ((v1 & 0x180) != 0)
    {
LABEL_4:
      ++result;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_5;
      }

LABEL_10:
      if ((v1 & 0x40) == 0)
      {
        return result;
      }

      return ++result;
    }

    goto LABEL_9;
  }

  if (v2)
  {
    goto LABEL_8;
  }

  if ((v1 & 0x180) != 0)
  {
    result = 1;
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = 0;
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_5:
  ++result;
  if ((v1 & 0x40) == 0)
  {
    return result;
  }

  return ++result;
}

double sub_1CFE29EF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1CFDFC4A4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CFDFCE0C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1CFDFDB80((*(v12 + 56) + 40 * v9), a3);
    sub_1CFE29F9C(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1CFE29F9C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CFE30D24() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1CFE31144();

      sub_1CFE30984();
      v15 = sub_1CFE31184();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1CFE2A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x1E69E6158];
  v32 = MEMORY[0x1E69E6158];
  v33 = MEMORY[0x1E69E6180];
  *&v31 = a1;
  *(&v31 + 1) = a2;
  v11 = *a6;
  v13 = sub_1CFDFC4A4(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_1CFDFDB80(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_1CFDFCE0C();
    goto LABEL_7;
  }

  sub_1CFDFC70C(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_1CFDFC4A4(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1CFE310F4();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_1CFE2A770(v13, a3, a4, *v28, v28[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(&v31);
}

uint64_t sub_1CFE2A348(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = MEMORY[0x1E69E6370];
  v26 = MEMORY[0x1E69E6388];
  v9 = *a5;
  v11 = sub_1CFDFC4A4(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_1CFDFDB80(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_1CFDFCE0C();
    goto LABEL_7;
  }

  sub_1CFDFC70C(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_1CFDFC4A4(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1CFE310F4();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x1E69E6370]);
  sub_1CFE2A6E0(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_1(&v24);
}

uint64_t sub_1CFE2A4AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v36);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  v15 = *a5;
  v17 = sub_1CFDFC4A4(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_1(v24);
      return sub_1CFDFDB80(&v36, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_1CFDFCE0C();
    goto LABEL_7;
  }

  sub_1CFDFC70C(v20, a4 & 1);
  v26 = *a5;
  v27 = sub_1CFDFC4A4(a2, a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_1CFE310F4();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v37;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  sub_1CFE2A800(v17, a2, a3, v33, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

uint64_t sub_1CFE2A6E0(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x1E69E6370];
  v13 = MEMORY[0x1E69E6388];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1CFDFDB80(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1CFE2A770(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x1E69E6158];
  v14 = MEMORY[0x1E69E6180];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_1CFDFDB80(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_1CFE2A800(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_1CFDFDB80(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_1CFE2A8D8(void *a1, void *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v130 = a2;
  v131 = a1;
  v139 = *MEMORY[0x1E69E9840];
  sub_1CFE2B904(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v123 = &v122 - v11;
  v12 = sub_1CFE30314();
  v127 = *(v12 - 8);
  v128 = v12;
  v13 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a4;
  v124 = a5;
  v129 = v5;
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = 0xE400000000000000;
      v18 = 1852141679;
    }

    else
    {
      v17 = 0xE700000000000000;
      v18 = 0x7373696D736964;
    }
  }

  else
  {
    v17 = 0xE400000000000000;
    v18 = 1684956531;
  }

  v125 = *a3;
  v126 = *(a3 + 8);
  v19 = MEMORY[0x1E69E6158];
  v20 = MEMORY[0x1E69E6180];
  v137 = MEMORY[0x1E69E6158];
  v138 = MEMORY[0x1E69E6180];
  *&v136 = v18;
  *(&v136 + 1) = v17;
  sub_1CFDFDB80(&v136, v134);
  v21 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v132 = v21;
  v23 = v135;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  sub_1CFE2A158(*v27, v27[1], 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native, &v132);
  __swift_destroy_boxed_opaque_existential_1(v134);
  v29 = v132;
  v133 = v132;
  v30 = [v131 activePairedDeviceProductType];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1CFE30924();
    v34 = v33;

    v137 = v19;
    v138 = v20;
    *&v136 = v32;
    *(&v136 + 1) = v34;
    sub_1CFDFDB80(&v136, v134);
    LOBYTE(v34) = swift_isUniquelyReferenced_nonNull_native();
    v132 = v29;
    v35 = v135;
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
    v37 = *(*(v35 - 8) + 64);
    MEMORY[0x1EEE9AC00](v36);
    v39 = &v122 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v39);
    sub_1CFE2A4AC(v39, 0xD000000000000016, 0x80000001CFE39870, v34, &v132, v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v134);
    v133 = v132;
  }

  else
  {
    sub_1CFE29EF0(0xD000000000000016, 0x80000001CFE39870, &v136);
    sub_1CFE2B8A8(&v136, &qword_1EC509E68, sub_1CFDFDAB8);
  }

  v41 = [v131 currentDate];
  sub_1CFE302F4();

  v42 = sub_1CFE302D4();
  v43 = v128;
  v122 = *(v127 + 8);
  v122(v15, v128);
  *&v136 = 0;
  v44 = [v130 ageWithCurrentDate:v42 error:&v136];

  if (v44)
  {
    v45 = v136;
    v46 = [v44 integerValue];

    v47 = MEMORY[0x1E69E6530];
    v48 = MEMORY[0x1E69E6550];
    v137 = MEMORY[0x1E69E6530];
    v138 = MEMORY[0x1E69E6550];
    *&v136 = v46;
    sub_1CFDFDB80(&v136, v134);
    v49 = v133;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v132 = v49;
    v51 = v135;
    v52 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
    v53 = *(*(v51 - 8) + 64);
    MEMORY[0x1EEE9AC00](v52);
    v55 = &v122 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v55);
    v57 = v55;
    v43 = v128;
    sub_1CFE2A4AC(v57, 6645601, 0xE300000000000000, v50, &v132, v47, v48);
    __swift_destroy_boxed_opaque_existential_1(v134);
    v58 = v129;
    v133 = v132;
  }

  else
  {
    v59 = v136;
    v60 = sub_1CFE30184();

    swift_willThrow();
    sub_1CFE29EF0(6645601, 0xE300000000000000, &v136);
    sub_1CFE2B8A8(&v136, &qword_1EC509E68, sub_1CFDFDAB8);
    v58 = 0;
  }

  v134[0] = 0;
  v61 = [v130 biologicalSexWithError_];
  if (!v61)
  {
    v77 = v134[0];

    sub_1CFE30184();

    result = swift_willThrow();
    goto LABEL_29;
  }

  v62 = v61;
  v129 = v58;
  v63 = v134[0];
  v64 = HKAnalyticsPropertyValueForBiologicalSex();

  v65 = sub_1CFE30924();
  v67 = v66;

  v137 = v19;
  v138 = v20;
  *&v136 = v65;
  *(&v136 + 1) = v67;
  sub_1CFDFDB80(&v136, v134);
  v68 = v133;
  LOBYTE(v65) = swift_isUniquelyReferenced_nonNull_native();
  v132 = v68;
  v69 = v135;
  v70 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
  v71 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v73 = (&v122 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73);
  sub_1CFE2A158(*v73, v73[1], 0x6369676F6C6F6962, 0xED00007865536C61, v65, &v132);
  __swift_destroy_boxed_opaque_existential_1(v134);
  v133 = v132;
  v75 = v123;
  sub_1CFDE4AA4(v124, v123);
  if ((*(v127 + 48))(v75, 1, v43) == 1)
  {
    v76 = 0;
  }

  else
  {
    v76 = sub_1CFE302D4();
    v122(v75, v43);
  }

  v79 = [v131 bucketedNumberOfDaysSinceDate_];

  if (!v79)
  {
    sub_1CFE29EF0(0xD000000000000019, 0x80000001CFE39D90, &v136);
    sub_1CFE2B8A8(&v136, &qword_1EC509E68, sub_1CFDFDAB8);
    if (v126)
    {
      goto LABEL_19;
    }

LABEL_21:
    v91 = v125;
    v134[0] = v125;
    v92 = sub_1CFE29E78();
    v93 = MEMORY[0x1E69E6530];
    v94 = MEMORY[0x1E69E6550];
    v137 = MEMORY[0x1E69E6530];
    v138 = MEMORY[0x1E69E6550];
    *&v136 = v92;
    sub_1CFDFDB80(&v136, v134);
    v95 = v133;
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v132 = v95;
    v97 = v135;
    v98 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
    v99 = *(*(v97 - 8) + 64);
    MEMORY[0x1EEE9AC00](v98);
    v101 = &v122 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v102 + 16))(v101);
    sub_1CFE2A4AC(v101, 0x6F69746169766564, 0xEE00746E756F436ELL, v96, &v132, v93, v94);
    __swift_destroy_boxed_opaque_existential_1(v134);
    v103 = v132;
    v134[0] = v91;
    v104 = sub_1CFE29DF0();
    if ((v104 - 1) <= 0xE)
    {
      v104 = qword_1CFE383E8[v104 - 1];
    }

    v137 = v93;
    v138 = v94;
    *&v136 = v104;
    sub_1CFDFDB80(&v136, v134);
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v132 = v103;
    v106 = v135;
    v107 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
    v108 = *(*(v106 - 8) + 64);
    MEMORY[0x1EEE9AC00](v107);
    v110 = &v122 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v111 + 16))(v110);
    sub_1CFE2A4AC(v110, 0xD000000000000010, 0x80000001CFE39DB0, v105, &v132, v93, v94);
    __swift_destroy_boxed_opaque_existential_1(v134);
    v90 = v132;
    v20 = MEMORY[0x1E69E6180];
    goto LABEL_24;
  }

  v80 = sub_1CFE2B958();
  v137 = v80;
  v81 = sub_1CFE2B9A4();
  v138 = v81;
  *&v136 = v79;
  sub_1CFDFDB80(&v136, v134);
  v82 = v133;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v132 = v82;
  v84 = v135;
  v85 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
  v86 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v122 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v89 + 16))(v88);
  sub_1CFE2A4AC(v88, 0xD000000000000019, 0x80000001CFE39D90, v83, &v132, v80, v81);
  __swift_destroy_boxed_opaque_existential_1(v134);
  v20 = MEMORY[0x1E69E6180];
  v133 = v132;
  if ((v126 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  sub_1CFE29EF0(0x6F69746169766564, 0xEE00746E756F436ELL, v134);
  sub_1CFE2B8A8(v134, &qword_1EC509E68, sub_1CFDFDAB8);
  sub_1CFE29EF0(0xD000000000000010, 0x80000001CFE39DB0, v134);
  sub_1CFE2B8A8(v134, &qword_1EC509E68, sub_1CFDFDAB8);
  v90 = v133;
LABEL_24:
  v112 = 0x7365676E616863;
  if ((v126 & (v125 != 0)) != 0)
  {
    v112 = 0x6F4370756D726177;
  }

  v113 = 0xE700000000000000;
  v137 = v19;
  v138 = v20;
  if ((v126 & (v125 != 0)) != 0)
  {
    v113 = 0xEE006574656C706DLL;
  }

  *&v136 = v112;
  *(&v136 + 1) = v113;
  sub_1CFDFDB80(&v136, v134);
  v114 = swift_isUniquelyReferenced_nonNull_native();
  v132 = v90;
  v115 = v135;
  v116 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
  v117 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v119 = (&v122 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v120 + 16))(v119);
  sub_1CFE2A158(*v119, v119[1], 1701869940, 0xE400000000000000, v114, &v132);
  __swift_destroy_boxed_opaque_existential_1(v134);
  result = v132;
LABEL_29:
  v121 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1CFE2B704()
{
  result = qword_1EC509FB0;
  if (!qword_1EC509FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509FB0);
  }

  return result;
}

uint64_t type metadata accessor for HealthBalanceNotificationsAnalyticsEvent()
{
  result = qword_1EC509FB8;
  if (!qword_1EC509FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFE2B7AC()
{
  sub_1CFE2B904(319, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1CFE2B8A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1CFE2B904(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1CFE2B904(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1CFE2B958()
{
  result = qword_1EC509FC8;
  if (!qword_1EC509FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC509FC8);
  }

  return result;
}

unint64_t sub_1CFE2B9A4()
{
  result = qword_1EC509FD0;
  if (!qword_1EC509FD0)
  {
    sub_1CFE2B958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509FD0);
  }

  return result;
}

void SleepingSampleBaseline.init(s:_:_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v8 = type metadata accessor for SleepingSampleBaseline();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v18 = objc_opt_self();
  v19 = [v18 secondUnit];
  v54 = [v17 quantityWithUnit:v19 doubleValue:a3];

  if (a2 > a4)
  {
    __break(1u);
  }

  else
  {
    v50 = v12;
    v51 = v16;
    v52 = v9;
    v53 = a1;
    v20 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v21 = [v18 secondUnit];
    v22 = [v17 quantityWithUnit:v21 doubleValue:a2];

    v23 = [v18 secondUnit];
    v24 = [v17 quantityWithUnit:v23 doubleValue:a4];

    v25 = [v20 initWithMinimum:v22 maximum:v24 isMinimumInclusive:1 isMaximumInclusive:1];
    v26 = [v18 secondUnit];
    v27 = [v17 quantityWithUnit:v26 doubleValue:(a4 - a2) * 0.25];

    v28 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v29 = [v18 secondUnit];
    v30 = [v17 quantityWithUnit:v29 doubleValue:a2];

    v31 = [v18 secondUnit];
    v32 = [v17 quantityWithUnit:v31 doubleValue:a4];

    v33 = [v28 initWithMinimum:v30 maximum:v32 isMinimumInclusive:1 isMaximumInclusive:1];
    v34 = v54;
    if ([v25 containsQuantity_])
    {
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      v35 = v34;
      v36 = v50;
      sub_1CFE306B4();
      v37 = v8[5];
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v38 = v25;
      sub_1CFE306B4();
      v39 = v8[6];
      v40 = v27;
      sub_1CFE306B4();
      v41 = v36 + v8[7];
      sub_1CFE306B4();

      v42 = v36;
      v43 = v51;
      sub_1CFDC6388(v42, v51);
      v44 = v52;
      v45 = *(v52 + 56);
      v45(v43, 0, 1, v8);
    }

    else
    {

      v43 = v51;
      v44 = v52;
      v45 = *(v52 + 56);
      v45(v51, 1, 1, v8);
    }

    v46 = (*(v44 + 48))(v43, 1, v8);
    v47 = v53;
    if (v46)
    {
      sub_1CFDC87EC(v43);
      v48 = 1;
    }

    else
    {
      sub_1CFDC6388(v43, v53);
      v48 = 0;
    }

    v45(v47, v48, 1, v8);
  }
}

void SleepingSampleBaseline.init(percent:_:_:iqr:)(double a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v59 = a2;
  v58 = a1;
  v10 = type metadata accessor for SleepingSampleBaseline();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_opt_self();
  v20 = objc_opt_self();
  v21 = [v20 percentUnit];
  v60 = [v19 quantityWithUnit:v21 doubleValue:a5 / 100.0];

  if (a4 > a6)
  {
    __break(1u);
  }

  else
  {
    v54 = v14;
    v55 = v18;
    v56 = v11;
    v57 = a3;
    v22 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v23 = [v20 percentUnit];
    v24 = [v19 quantityWithUnit:v23 doubleValue:a4 / 100.0];

    v25 = [v20 percentUnit];
    v26 = a6 / 100.0;
    v27 = [v19 quantityWithUnit:v25 doubleValue:a6 / 100.0];

    v28 = [v22 initWithMinimum:v24 maximum:v27 isMinimumInclusive:1 isMaximumInclusive:1];
    if (v59)
    {
      v29 = (a6 - a4) * 0.25;
    }

    else
    {
      v29 = v58;
    }

    v30 = [v20 percentUnit];
    v31 = [v19 quantityWithUnit:v30 doubleValue:v29 / 100.0];

    v32 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v33 = [v20 percentUnit];
    v34 = [v19 quantityWithUnit:v33 doubleValue:a4 / 100.0];

    v35 = [v20 percentUnit];
    v36 = [v19 quantityWithUnit:v35 doubleValue:v26];

    v37 = [v32 initWithMinimum:v34 maximum:v36 isMinimumInclusive:1 isMaximumInclusive:1];
    v38 = v60;
    if ([v28 containsQuantity_])
    {
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      v39 = v38;
      v40 = v54;
      sub_1CFE306B4();
      v41 = v10[5];
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v42 = v28;
      sub_1CFE306B4();
      v43 = v10[6];
      v44 = v31;
      sub_1CFE306B4();
      v45 = v40 + v10[7];
      sub_1CFE306B4();

      v46 = v40;
      v47 = v55;
      sub_1CFDC6388(v46, v55);
      v48 = v56;
      v49 = *(v56 + 56);
      v49(v47, 0, 1, v10);
    }

    else
    {

      v47 = v55;
      v48 = v56;
      v49 = *(v56 + 56);
      v49(v55, 1, 1, v10);
    }

    v50 = (*(v48 + 48))(v47, 1, v10);
    v51 = v57;
    if (v50)
    {
      sub_1CFDC87EC(v47);
      v52 = 1;
    }

    else
    {
      sub_1CFDC6388(v47, v57);
      v52 = 0;
    }

    v49(v51, v52, 1, v10);
  }
}

void sub_1CFE2C3CC(double a1@<X0>, int a2@<W1>, SEL *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  LODWORD(v55) = a2;
  v54 = a1;
  v12 = type metadata accessor for SleepingSampleBaseline();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_opt_self();
  v22 = objc_opt_self();
  v23 = [v22 *a3];
  v56 = [v21 quantityWithUnit:v23 doubleValue:a6];

  if (a5 > a7)
  {
    __break(1u);
  }

  else
  {
    v51 = v16;
    v52 = v13;
    v53 = a4;
    v24 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v25 = [v22 *a3];
    v26 = [v21 quantityWithUnit:v25 doubleValue:a5];

    v27 = [v22 *a3];
    v28 = [v21 quantityWithUnit:v27 doubleValue:a7];

    v29 = [v24 initWithMinimum:v26 maximum:v28 isMinimumInclusive:1 isMaximumInclusive:1];
    if (v55)
    {
      v30 = (a7 - a5) * 0.25;
    }

    else
    {
      v30 = v54;
    }

    v31 = [v22 *a3];
    v55 = [v21 quantityWithUnit:v31 doubleValue:v30];

    v32 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v33 = [v22 *a3];
    v34 = [v21 quantityWithUnit:v33 doubleValue:a5];

    v35 = [v22 *a3];
    v36 = [v21 quantityWithUnit:v35 doubleValue:a7];

    v37 = [v32 initWithMinimum:v34 maximum:v36 isMinimumInclusive:1 isMaximumInclusive:1];
    v38 = v56;
    if ([v29 containsQuantity_])
    {
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      v39 = v38;
      v40 = v51;
      sub_1CFE306B4();
      v41 = v12[5];
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v42 = v29;
      sub_1CFE306B4();
      v43 = v12[6];
      v44 = v55;
      sub_1CFE306B4();
      v45 = v40 + v12[7];
      sub_1CFE306B4();

      sub_1CFDC6388(v40, v20);
      v46 = v52;
      v47 = *(v52 + 56);
      v47(v20, 0, 1, v12);
    }

    else
    {

      v46 = v52;
      v47 = *(v52 + 56);
      v47(v20, 1, 1, v12);
    }

    v48 = (*(v46 + 48))(v20, 1, v12);
    v49 = v53;
    if (v48)
    {
      sub_1CFDC87EC(v20);
      v50 = 1;
    }

    else
    {
      sub_1CFDC6388(v20, v53);
      v50 = 0;
    }

    v47(v49, v50, 1, v12);
  }
}

id SleepingSampleBaseline.init(duration:_:_:iqr:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v64 = a8;
  v66 = a7;
  v70 = a9;
  v71 = a4;
  v15 = type metadata accessor for SleepingSampleBaseline();
  v68 = *(v15 - 8);
  v69 = v15;
  v16 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v67 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(MEMORY[0x1E696C350]);
  v22 = objc_opt_self();
  v23 = objc_opt_self();
  result = [v23 minuteUnit];
  v25 = 60 * a1;
  if ((a1 * 60) >> 64 != (60 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  v26 = __OFADD__(v25, a2);
  v27 = v25 + a2;
  if (v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = result;
  v29 = [v22 quantityWithUnit:result doubleValue:v27];

  result = [v23 minuteUnit];
  v30 = 60 * a5;
  if ((a5 * 60) >> 64 != (60 * a5) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = __OFADD__(v30, a6);
  v31 = v30 + a6;
  if (v26)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = result;
  v33 = [v22 quantityWithUnit:result doubleValue:v31];

  v34 = [v21 initWithMinimum:v29 maximum:v33 isMinimumInclusive:1 isMaximumInclusive:1];
  result = [v23 minuteUnit];
  v35 = 60 * a3;
  if ((a3 * 60) >> 64 != (60 * a3) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = __OFADD__(v35, v71);
  v36 = v35 + v71;
  if (v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = result;
  v38 = [v22 quantityWithUnit:result doubleValue:v36];

  result = [v23 minuteUnit];
  v39 = result;
  if ((a10 & 1) == 0)
  {
    v47 = 60 * v66;
    if ((v66 * 60) >> 64 == (60 * v66) >> 63)
    {
      v26 = __OFADD__(v47, v64);
      v48 = v47 + v64;
      if (!v26)
      {
        v46 = v48;
        goto LABEL_12;
      }

LABEL_26:
      __break(1u);
      return result;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = [v34 maximum];
  [v40 _value];
  v42 = v41;

  v43 = [v34 minimum];
  [v43 _value];
  v45 = v44;

  v46 = (v42 - v45) * 0.25;
LABEL_12:
  v49 = [v22 quantityWithUnit:v39 doubleValue:{v46, v64}];

  v50 = v34;
  if ([v50 containsQuantity_])
  {
    sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
    v51 = v38;
    v52 = v65;
    sub_1CFE306B4();
    v53 = v69;
    v54 = *(v69 + 20);
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v55 = v50;
    sub_1CFE306B4();
    v56 = *(v53 + 24);
    v57 = v49;
    sub_1CFE306B4();
    v58 = v52 + *(v53 + 28);
    sub_1CFE306B4();

    v59 = v67;
    sub_1CFDC6388(v52, v67);
    v60 = v68;
    v61 = *(v68 + 56);
    v61(v59, 0, 1, v53);
  }

  else
  {

    v59 = v67;
    v60 = v68;
    v61 = *(v68 + 56);
    v53 = v69;
    v61(v67, 1, 1, v69);
  }

  v62 = v70;
  if ((*(v60 + 48))(v59, 1, v53))
  {
    sub_1CFDC87EC(v59);
    v63 = 1;
  }

  else
  {
    sub_1CFDC6388(v59, v62);
    v63 = 0;
  }

  return (v61)(v62, v63, 1, v53);
}

id SleepingSampleBaseline.init(duration:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v70 = a8;
  v67 = a9;
  v68 = a5;
  v15 = type metadata accessor for SleepingSampleBaseline();
  v66 = *(v15 - 1);
  v16 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v65 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = objc_allocWithZone(MEMORY[0x1E696C350]);
  v21 = objc_opt_self();
  v22 = objc_opt_self();
  result = [v22 secondUnit];
  if ((a1 * 60) >> 64 != (60 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_21;
  }

  v24 = 3600 * a1;
  if ((60 * a1 * 60) >> 64 != (3600 * a1) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = 60 * a2;
  if ((a2 * 60) >> 64 != (60 * a2) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = __OFADD__(v27, a3);
  v28 = v27 + a3;
  if (v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = result;
  v30 = [v21 quantityWithUnit:result doubleValue:v28];

  result = [v22 secondUnit];
  if ((a6 * 60) >> 64 != (60 * a6) >> 63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = 3600 * a6;
  if ((60 * a6 * 60) >> 64 != (3600 * a6) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = 60 * a7;
  if ((a7 * 60) >> 64 != (60 * a7) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v26 = __OFADD__(v31, v32);
  v33 = v31 + v32;
  if (v26)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = __OFADD__(v33, v70);
  v34 = v33 + v70;
  if (v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v35 = result;
  v36 = [v21 quantityWithUnit:result doubleValue:v34];

  v37 = [v69 initWithMinimum:v30 maximum:v36 isMinimumInclusive:1 isMaximumInclusive:1];
  result = [v22 minuteUnit];
  v38 = 60 * a4;
  if ((a4 * 60) >> 64 != (60 * a4) >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = __OFADD__(v38, v68);
  v39 = v38 + v68;
  if (v26)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v40 = result;
  v41 = [v21 quantityWithUnit:result doubleValue:v39];

  v42 = v37;
  v43 = [v42 maximum];
  [v43 _value];
  v45 = v44;

  v46 = [v42 minimum];
  [v46 _value];
  v48 = v47;

  v49 = [v22 secondUnit];
  v50 = [v21 quantityWithUnit:v49 doubleValue:(v45 - v48) * 0.25];

  if ([v42 containsQuantity_])
  {
    sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
    v51 = v41;
    v52 = v64;
    sub_1CFE306B4();
    v53 = v15[5];
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v54 = v42;
    sub_1CFE306B4();
    v55 = v15[6];
    v56 = v50;
    sub_1CFE306B4();
    v57 = v52 + v15[7];
    sub_1CFE306B4();

    v58 = v65;
    sub_1CFDC6388(v52, v65);
    v59 = v66;
    v60 = *(v66 + 56);
    v60(v58, 0, 1, v15);
  }

  else
  {

    v58 = v65;
    v59 = v66;
    v60 = *(v66 + 56);
    v60(v65, 1, 1, v15);
  }

  v61 = v67;
  if ((*(v59 + 48))(v58, 1, v15))
  {
    sub_1CFDC87EC(v58);
    v62 = 1;
  }

  else
  {
    sub_1CFDC6388(v58, v61);
    v62 = 0;
  }

  return (v60)(v61, v62, 1, v15);
}

uint64_t sub_1CFE2D980()
{
  v1 = v0;
  v2 = sub_1CFE31244();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFE303F4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1CFE2F230(0, &qword_1EC509508, MEMORY[0x1E6968E78]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v32 - v11;
  v13 = [v0 _unit];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 _countPerSecondUnit];
  sub_1CFDA6E64(0, &qword_1EC509FE8, 0x1E696C510);
  v17 = sub_1CFE30C54();

  if (v17)
  {

    v18 = [v14 _countPerMinuteUnit];
    [v1 doubleValueForUnit_];
    v20 = v19;

    v38 = v20;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    sub_1CFE301A4();
    sub_1CFDBCF44();
    sub_1CFE307F4();
    (*(v9 + 8))(v12, v8);
    v38 = v36;
    v39 = v37;
    MEMORY[0x1D3876060](0x6D2F746E756F6320, 0xEA00000000006E69);
    return v38;
  }

  v21 = v15;
  v22 = [v14 secondUnit];
  v23 = sub_1CFE30C54();

  if (v23)
  {

LABEL_6:
    v26 = [v14 secondUnit];
    [v1 doubleValueForUnit_];

    sub_1CFE31264();
    v27 = v33;
    static FormatStyle<>.sleepDuration.getter(v33);
    sub_1CFE2F770(&qword_1EC509538, MEMORY[0x1E696A218]);
    v28 = v35;
    sub_1CFE31254();
    (*(v34 + 8))(v27, v28);
    return v38;
  }

  v24 = [v14 minuteUnit];
  v25 = sub_1CFE30C54();

  if (v25)
  {
    goto LABEL_6;
  }

  v30 = [v1 description];
  v31 = sub_1CFE30924();

  return v31;
}

uint64_t static FormatStyle<>.heartRate.getter()
{
  v0 = sub_1CFE30234();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFE303F4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1CFE2F230(0, &qword_1EC509508, MEMORY[0x1E6968E78]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v14 - v11;
  sub_1CFE303D4();
  sub_1CFDBCC00();
  sub_1CFE301A4();
  sub_1CFE30214();
  MEMORY[0x1D3875870](v4, v8);
  (*(v1 + 8))(v4, v0);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1CFE2E02C(unint64_t *a1, uint64_t (*a2)(uint64_t, void, unint64_t), void (*a3)(char *, void, unint64_t), void (*a4)(char *, uint64_t))
{
  v8 = sub_1CFE30234();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFE303F4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE2F230(0, a1, a2);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = v25 - v21;
  sub_1CFE303D4();
  v23 = sub_1CFDBCC00();
  a3(v16, MEMORY[0x1E69E63B0], v23);
  v25[1] = 1;
  sub_1CFDBCEEC();
  sub_1CFE2F770(&qword_1EC509550, sub_1CFDBCEEC);
  sub_1CFE30224();
  a4(v12, v18);
  (*(v9 + 8))(v12, v8);
  return (*(v19 + 8))(v22, v18);
}

uint64_t static FormatStyle<>.wristTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v24 = sub_1CFE30234();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFE301E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFE303F4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1CFE2F230(0, &qword_1EC509508, MEMORY[0x1E6968E78]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v23 - v19;
  sub_1CFE303D4();
  sub_1CFDBCC00();
  sub_1CFE301A4();
  sub_1CFE301D4();
  MEMORY[0x1D3875850](v9, v13);
  (*(v6 + 8))(v9, v5);
  v21 = *(v14 + 8);
  v21(v18, v13);
  v25 = 2;
  sub_1CFDBCEEC();
  sub_1CFE2F770(&qword_1EC509550, sub_1CFDBCEEC);
  sub_1CFE30224();
  MEMORY[0x1D3875870](v4, v13);
  (*(v1 + 8))(v4, v24);
  return (v21)(v20, v13);
}

uint64_t Duration.init(sleepDurationForFormatting:)(void *a1)
{
  sub_1CFE2F0F4(a1);
  v3 = v2;

  return v3;
}

void sub_1CFE2E650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDA6E64(255, &qword_1EC5094F8, 0x1E696B080);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t static FormatStyle<>.sleepDuration.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21 = sub_1CFE311E4();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CFE311C4();
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CFE31234();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE2F294(0, &qword_1EC509FE0, MEMORY[0x1E696A1C0], MEMORY[0x1E69E6F90]);
  v13 = *(sub_1CFE31214() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1CFE357F0;
  sub_1CFE311F4();
  sub_1CFE31204();
  sub_1CFE2F2F8(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1CFE31224();
  sub_1CFE311B4();
  sub_1CFE311D4();
  sub_1CFE2FF84();

  (*(v1 + 8))(v4, v21);
  (*(v5 + 8))(v8, v19);
  return (*(v9 + 8))(v12, v18);
}

void Measurement<>.init(wristTemperatureForFormatting:unit:)(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v12 = a2;
  v5 = [v4 _changeInDegreeCelsiusUnit];
  sub_1CFDA6E64(0, &qword_1EC509FE8, 0x1E696C510);
  v6 = sub_1CFE30C54();

  if (v6)
  {
    v7 = &selRef_celsius;
  }

  else
  {
    v8 = v12;
    v9 = [v4 _changeInDegreeFahrenheitUnit];
    v10 = sub_1CFE30C54();

    if ((v10 & 1) == 0)
    {
      sub_1CFE30ED4();
      __break(1u);
      return;
    }

    v7 = &selRef_fahrenheit;
  }

  v11 = [objc_opt_self() *v7];
  [a1 doubleValueForUnit_];
  sub_1CFDA6E64(0, &qword_1EC5094F8, 0x1E696B080);
  sub_1CFE2FF94();
}

uint64_t static FormatStyle<>.wristTemperature(unit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v41 = a2;
  sub_1CFE2F294(0, &qword_1EC509FF0, MEMORY[0x1E6969660], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - v4;
  v6 = sub_1CFE303F4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1CFE30384();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  sub_1CFE2F60C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE2E650(0, &qword_1EC50A000, MEMORY[0x1E6968EE0]);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v36 - v22;
  sub_1CFE2E650(0, &qword_1EC50A008, MEMORY[0x1E6968030]);
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v36 - v28;
  sub_1CFDA6E64(0, &qword_1EC5094F8, 0x1E696B080);
  sub_1CFE2FFB4();
  sub_1CFE301C4();
  static FormatStyle<>.wristTemperature.getter(v17);
  sub_1CFE2F230(0, &qword_1EC509508, MEMORY[0x1E6968E78]);
  (*(*(v30 - 8) + 56))(v17, 0, 1, v30);
  sub_1CFE2FF74();
  sub_1CFE2F680(v17);
  (*(v20 + 8))(v23, v19);
  (*(v26 + 8))(v29, v25);
  sub_1CFE303E4();
  sub_1CFE30374();
  sub_1CFDA6E64(0, &qword_1EC509FE8, 0x1E696C510);
  v31 = [objc_opt_self() _changeInDegreeFahrenheitUnit];
  LOBYTE(v25) = sub_1CFE30C54();

  if (v25)
  {
    sub_1CFE303A4();
  }

  else
  {
    sub_1CFE303B4();
  }

  v32 = sub_1CFE303C4();
  (*(*(v32 - 8) + 56))(v5, 0, 1, v32);
  sub_1CFE30364();
  v34 = v39;
  v33 = v40;
  (*(v39 + 16))(v37, v13, v40);
  sub_1CFE30394();
  sub_1CFE2E650(0, &qword_1EC5094F0, MEMORY[0x1E6968048]);
  sub_1CFE2FFA4();
  return (*(v34 + 8))(v13, v33);
}

void sub_1CFE2F0F4(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 secondUnit];
  v4 = [a1 isCompatibleWithUnit_];

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = [v2 secondUnit];
  [a1 doubleValueForUnit_];
  v7 = v6;

  v8 = round(v7 / 60.0) * 60.0;
  if (COERCE__INT64(fabs(v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
  }
}

void sub_1CFE2F230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDBCC00();
    v7 = a3(a1, MEMORY[0x1E69E63B0], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1CFE2F294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CFE2F2F8(uint64_t a1)
{
  v2 = sub_1CFE31214();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1CFE2F6DC();
    v10 = sub_1CFE30D84();
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
      sub_1CFE2F770(&qword_1EC50A018, MEMORY[0x1E696A1C0]);
      v18 = sub_1CFE30824();
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
          sub_1CFE2F770(&qword_1EC50A020, MEMORY[0x1E696A1C0]);
          v25 = sub_1CFE308B4();
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

  return MEMORY[0x1E69E7CD0];
}

void sub_1CFE2F60C()
{
  if (!qword_1EC509FF8)
  {
    sub_1CFE2F230(255, &qword_1EC509508, MEMORY[0x1E6968E78]);
    v0 = sub_1CFE30C74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509FF8);
    }
  }
}

uint64_t sub_1CFE2F680(uint64_t a1)
{
  sub_1CFE2F60C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFE2F6DC()
{
  if (!qword_1EC50A010)
  {
    sub_1CFE31214();
    sub_1CFE2F770(&qword_1EC50A018, MEMORY[0x1E696A1C0]);
    v0 = sub_1CFE30D94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC50A010);
    }
  }
}

uint64_t sub_1CFE2F770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HKTableFormatter.init(keyValueDomainDictionary:)(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v32 = v5;
  while (v4)
  {
LABEL_11:
    v13 = __clz(__rbit64(v4)) | (v7 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1CFDAC5F0(*(a1 + 56) + 32 * v13, &v38);
    v37[0] = v16;
    v37[1] = v15;
    sub_1CFE2FB98(v37, &v34);
    v18 = v34;
    v17 = v35;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1CFDDD778(0, *(v9 + 2) + 1, 1, v9);
    }

    v20 = *(v9 + 2);
    v19 = *(v9 + 3);
    v21 = v9;
    if (v20 >= v19 >> 1)
    {
      v21 = sub_1CFDDD778((v19 > 1), v20 + 1, 1, v9);
    }

    *(v21 + 2) = v20 + 1;
    v9 = v21;
    v22 = &v21[16 * v20];
    *(v22 + 4) = v18;
    *(v22 + 5) = v17;
    __swift_destroy_boxed_opaque_existential_1(v36);
    v34 = v16;
    v35 = v15;
    sub_1CFE2FC64();
    if ((sub_1CFE30CB4() & 1) != 0 && (sub_1CFE2FB98(v37, &v34), , swift_dynamicCast()))
    {
      v36[1] = sub_1CFE30314();
      __swift_allocate_boxed_opaque_existential_0(&v34);
      sub_1CFE30254();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1CFDDDE68(0, *(v8 + 2) + 1, 1, v8);
      }

      v24 = *(v8 + 2);
      v23 = *(v8 + 3);
      if (v24 >= v23 >> 1)
      {
        v8 = sub_1CFDDDE68((v23 > 1), v24 + 1, 1, v8);
      }

      *(v8 + 2) = v24 + 1;
      v10 = &v8[32 * v24];
      v11 = &v34;
    }

    else
    {
      sub_1CFE2FB98(v37, &v34);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1CFDDDE68(0, *(v8 + 2) + 1, 1, v8);
      }

      v26 = *(v8 + 2);
      v25 = *(v8 + 3);
      if (v26 >= v25 >> 1)
      {
        v8 = sub_1CFDDDE68((v25 > 1), v26 + 1, 1, v8);
      }

      *(v8 + 2) = v26 + 1;
      v10 = &v8[32 * v26];
      v11 = v36;
    }

    sub_1CFDFDC04(v11, v10 + 2);
    v4 &= v4 - 1;
    result = sub_1CFE2FCB8(v37);
    v5 = v32;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v5)
    {

      v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v28 = sub_1CFE30A74();

      v29 = [v27 initWithColumnTitles_];

      v30 = v29;

      v31 = sub_1CFE30A74();

      [v30 appendHeterogenousRow_];

      return v30;
    }

    v4 = *(v1 + 8 * v12);
    ++v7;
    if (v4)
    {
      v7 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFE2FB98(uint64_t a1, uint64_t a2)
{
  sub_1CFE2FBFC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CFE2FBFC()
{
  if (!qword_1EC50A028)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC50A028);
    }
  }
}

unint64_t sub_1CFE2FC64()
{
  result = qword_1EC50A030;
  if (!qword_1EC50A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC50A030);
  }

  return result;
}

uint64_t sub_1CFE2FCB8(uint64_t a1)
{
  sub_1CFE2FBFC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SleepingSampleBaselineAvailability.available(on:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1CFDA7460();
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = sub_1CFE307E4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDCB868();
  v20 = *(v19 + 48);
  sub_1CFE30774();
  sub_1CFDF05AC();
  if (sub_1CFE30874())
  {
    v27 = a2;
    v28 = v20;
    v21 = *(v15 + 32);
    v21(v13, v18, v14);
    (*(v15 + 16))(&v13[*(v7 + 48)], a1, v14);
    sub_1CFDE4928(v13, v11);
    v22 = *(v7 + 48);
    v21(a3, v11, v14);
    v23 = *(v15 + 8);
    v23(&v11[v22], v14);
    sub_1CFDE49B0(v13, v11);
    v24 = *(v7 + 48);
    sub_1CFDA7AD0();
    v21(&a3[*(v25 + 36)], &v11[v24], v14);
    v23(v11, v14);
    *&a3[v28] = v27;
    type metadata accessor for SleepingSampleBaselineAvailability();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __break(1u);
    return sub_1CFE2FF74();
  }
}