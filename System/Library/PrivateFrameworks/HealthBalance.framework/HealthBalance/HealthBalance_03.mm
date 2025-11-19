uint64_t sub_1CFDEA5FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1CFDEAADC();
  result = sub_1CFE30D74();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_1CFDEAA80(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v29);
      v20 = *(v6 + 40);
      result = sub_1CFE30D34();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v29[0];
      v16 = v29[1];
      *(v14 + 32) = v30;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1CFDEA81C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D3876240](v2, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_1CFDEAA80(v4, v5);
      sub_1CFDE9F78(v6, v5);
      sub_1CFDC3BCC(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t type metadata accessor for TrainingLoadSummaryQuery()
{
  result = qword_1EDC32008;
  if (!qword_1EDC32008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFDEA8FC()
{
  sub_1CFDA7AD0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1CFE304B4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1CFDEAA1C(uint64_t a1, uint64_t a2)
{
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  (*(*(SampleDaySummary - 8) + 32))(a2, a1, SampleDaySummary);
  return a2;
}

void sub_1CFDEAADC()
{
  if (!qword_1EC509A38)
  {
    v0 = sub_1CFE30D94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509A38);
    }
  }
}

unint64_t sub_1CFDEAB34()
{
  result = qword_1EDC324E0;
  if (!qword_1EDC324E0)
  {
    sub_1CFDA6E64(255, &qword_1EDC324E8, 0x1E69E58C0);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC324E0);
  }

  return result;
}

void sub_1CFDEAB8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1CFDEABF8(uint64_t a1, uint64_t a2)
{
  sub_1CFDA68BC();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GregorianDayRange.gregorianCalendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GregorianDayRange() + 20);
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t GregorianDayRange.description.getter()
{
  v1 = sub_1CFE304E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1CFE30DB4();

  v15 = 0xD000000000000021;
  v16 = 0x80000001CFE39440;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1CFE307E4();
  sub_1CFE30EB4();
  MEMORY[0x1D3876060](3026478, 0xE300000000000000);
  sub_1CFDA68BC();
  v7 = *(v6 + 36);
  sub_1CFE30EB4();
  MEMORY[0x1D3876060](v13, v14);

  MEMORY[0x1D3876060](0x203A7A74202CLL, 0xE600000000000000);
  v8 = v0 + *(type metadata accessor for GregorianDayRange() + 20);
  sub_1CFE30494();
  v9 = sub_1CFE304D4();
  v11 = v10;
  (*(v2 + 8))(v5, v1);
  MEMORY[0x1D3876060](v9, v11);

  MEMORY[0x1D3876060](41, 0xE100000000000000);
  return v15;
}

uint64_t static GregorianDayRange.== infix(_:_:)()
{
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
  if (sub_1CFE308B4())
  {
    sub_1CFDA68BC();
    v1 = *(v0 + 36);
    if (sub_1CFE308B4())
    {
      v2 = *(type metadata accessor for GregorianDayRange() + 20);

      JUMPOUT(0x1D3875B20);
    }
  }

  return 0;
}

unint64_t sub_1CFDEB018()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x7865646E49796164;
  }

  *v0;
  return result;
}

uint64_t sub_1CFDEB064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E49796164 && a2 == 0xED000065676E6152;
  if (v6 || (sub_1CFE310B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CFE38FC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CFE310B4();

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

uint64_t sub_1CFDEB150(uint64_t a1)
{
  v2 = sub_1CFDEB3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDEB18C(uint64_t a1)
{
  v2 = sub_1CFDEB3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GregorianDayRange.encode(to:)(void *a1)
{
  sub_1CFDEBDAC(0, &qword_1EC509B10, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDEB3E0();
  sub_1CFE311A4();
  v12[15] = 0;
  sub_1CFDA68BC();
  sub_1CFDEBE10(&qword_1EC509B20, &qword_1EDC318C8);
  sub_1CFE31054();
  if (!v1)
  {
    v10 = *(type metadata accessor for GregorianDayRange() + 20);
    v12[14] = 1;
    sub_1CFE304B4();
    sub_1CFDA7838(&qword_1EDC31990, MEMORY[0x1E6969AE8]);
    sub_1CFE31054();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1CFDEB3E0()
{
  result = qword_1EC509B18;
  if (!qword_1EC509B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509B18);
  }

  return result;
}

uint64_t GregorianDayRange.hash(into:)()
{
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  sub_1CFDA68BC();
  v2 = v0 + *(v1 + 36);
  sub_1CFE30834();
  LODWORD(v2) = *(type metadata accessor for GregorianDayRange() + 20);
  sub_1CFE304B4();
  sub_1CFDA7838(&qword_1EC509640, MEMORY[0x1E6969AE8]);
  return sub_1CFE30834();
}

uint64_t GregorianDayRange.hashValue.getter()
{
  sub_1CFE31144();
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  sub_1CFDA68BC();
  v2 = v0 + *(v1 + 36);
  sub_1CFE30834();
  LODWORD(v2) = *(type metadata accessor for GregorianDayRange() + 20);
  sub_1CFE304B4();
  sub_1CFDA7838(&qword_1EC509640, MEMORY[0x1E6969AE8]);
  sub_1CFE30834();
  return sub_1CFE31184();
}

uint64_t GregorianDayRange.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = sub_1CFE304B4();
  v25 = *(v28 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA68BC();
  v29 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEBDAC(0, &qword_1EC509B28, MEMORY[0x1E69E6F48]);
  v31 = v10;
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = type metadata accessor for GregorianDayRange();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDEB3E0();
  sub_1CFE31194();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = a1;
  v19 = v17;
  v21 = v27;
  v20 = v28;
  v33 = 0;
  sub_1CFDEBE10(&qword_1EC509B30, &qword_1EDC32108);
  v22 = v30;
  sub_1CFE30FD4();
  sub_1CFDA6444(v22, v19, sub_1CFDA68BC);
  v32 = 1;
  sub_1CFDA7838(&qword_1EDC32478, MEMORY[0x1E6969AE8]);
  sub_1CFE30FD4();
  (*(v21 + 8))(v13, v31);
  (*(v25 + 32))(v19 + *(v14 + 20), v6, v20);
  sub_1CFDA699C(v19, v26, type metadata accessor for GregorianDayRange);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1CFDEBEA0(v19, type metadata accessor for GregorianDayRange);
}

uint64_t sub_1CFDEBA74(uint64_t a1)
{
  sub_1CFE31144();
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  sub_1CFDA68BC();
  v4 = v1 + *(v3 + 36);
  sub_1CFE30834();
  v5 = *(a1 + 20);
  sub_1CFE304B4();
  sub_1CFDA7838(&qword_1EC509640, MEMORY[0x1E6969AE8]);
  sub_1CFE30834();
  return sub_1CFE31184();
}

uint64_t sub_1CFDEBB90(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  sub_1CFDA68BC();
  v5 = v2 + *(v4 + 36);
  sub_1CFE30834();
  v6 = *(a2 + 20);
  sub_1CFE304B4();
  sub_1CFDA7838(&qword_1EC509640, MEMORY[0x1E6969AE8]);
  return sub_1CFE30834();
}

uint64_t sub_1CFDEBC94(uint64_t a1, uint64_t a2)
{
  sub_1CFE31144();
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  sub_1CFDA68BC();
  v5 = v2 + *(v4 + 36);
  sub_1CFE30834();
  v6 = *(a2 + 20);
  sub_1CFE304B4();
  sub_1CFDA7838(&qword_1EC509640, MEMORY[0x1E6969AE8]);
  sub_1CFE30834();
  return sub_1CFE31184();
}

void sub_1CFDEBDAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDEB3E0();
    v7 = a3(a1, &type metadata for GregorianDayRange.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFDEBE10(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDA68BC();
    sub_1CFDA7838(a2, MEMORY[0x1E696B418]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDEBEA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDEBF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
  if (sub_1CFE308B4())
  {
    sub_1CFDA68BC();
    v5 = *(v4 + 36);
    if (sub_1CFE308B4())
    {
      v6 = *(a3 + 20);

      JUMPOUT(0x1D3875B20);
    }
  }

  return 0;
}

uint64_t static GregorianDayRange.previousWeek(through:gregorianCalendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v20 = a1;
  v21 = a3;
  v4 = sub_1CFE304B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFE30314();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CFE307E4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v20, v9);
  (*(v5 + 16))(v8, a2, v4);
  sub_1CFE30784();
  static GregorianDayRange.previousWeek(through:gregorianCalendar:)(v18, a2, v21);
  return (*(v15 + 8))(v18, v14);
}

{
  v33 = a2;
  v34 = a3;
  sub_1CFDA7460();
  v32 = v4;
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v11 = sub_1CFE307E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  sub_1CFE30744();
  sub_1CFE30764();
  v19 = *(v12 + 8);
  v19(v16, v11);
  sub_1CFDA7838(&qword_1EDC32CA8, MEMORY[0x1E696B418]);
  v31 = a1;
  result = sub_1CFE30874();
  if (result)
  {
    v21 = *(v12 + 32);
    v21(v10, v18, v11);
    v22 = v32;
    (*(v12 + 16))(&v10[*(v32 + 48)], v31, v11);
    sub_1CFDA699C(v10, v8, sub_1CFDA7460);
    v23 = *(v22 + 48);
    v24 = v34;
    v21(v34, v8, v11);
    v25 = &v8[v23];
    v26 = v19;
    v19(v25, v11);
    sub_1CFDA6444(v10, v8, sub_1CFDA7460);
    v27 = *(v22 + 48);
    sub_1CFDA68BC();
    v21(&v24[*(v28 + 36)], &v8[v27], v11);
    v26(v8, v11);
    v29 = *(type metadata accessor for GregorianDayRange() + 20);
    v30 = sub_1CFE304B4();
    return (*(*(v30 - 8) + 16))(&v24[v29], v33, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static GregorianDayRange.today(containing:gregorianCalendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v42 = a2;
  v40 = a3;
  sub_1CFDA7460();
  v39 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v35 - v8;
  v9 = sub_1CFE304B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CFE30314();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CFE307E4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v41, v14);
  v24 = *(v10 + 16);
  v41 = v9;
  v38 = v10 + 16;
  v24(v13, v42, v9);
  sub_1CFE30784();
  sub_1CFDA7838(&qword_1EDC32CA8, MEMORY[0x1E696B418]);
  result = sub_1CFE30874();
  if (result)
  {
    v26 = v37;
    (*(v20 + 16))(v37, v23, v19);
    v27 = v39;
    v28 = *(v20 + 32);
    v28(v26 + *(v39 + 48), v23, v19);
    sub_1CFDA699C(v26, v7, sub_1CFDA7460);
    v29 = *(v27 + 48);
    v36 = v24;
    v30 = v40;
    v28(v40, v7, v19);
    v31 = *(v20 + 8);
    v31(&v7[v29], v19);
    sub_1CFDA6444(v26, v7, sub_1CFDA7460);
    v32 = *(v27 + 48);
    sub_1CFDA68BC();
    v28(v30 + *(v33 + 36), &v7[v32], v19);
    v31(v7, v19);
    v34 = type metadata accessor for GregorianDayRange();
    return v36(v30 + *(v34 + 20), v42, v41);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GregorianDayRange.sleepDayInterval.getter()
{
  v1 = v0 + *(type metadata accessor for GregorianDayRange() + 20);

  return MEMORY[0x1EEDC77A8](v1);
}

void sub_1CFDEC9EC()
{
  sub_1CFDA68BC();
  if (v0 <= 0x3F)
  {
    sub_1CFE304B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1CFDECA84()
{
  result = qword_1EC509B40;
  if (!qword_1EC509B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509B40);
  }

  return result;
}

unint64_t sub_1CFDECADC()
{
  result = qword_1EC509B48;
  if (!qword_1EC509B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509B48);
  }

  return result;
}

unint64_t sub_1CFDECB34()
{
  result = qword_1EC509B50;
  if (!qword_1EC509B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509B50);
  }

  return result;
}

id HKQuantityRange.init(durationBetween:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = objc_opt_self();
  v10 = objc_opt_self();
  result = [v10 minuteUnit];
  v12 = 60 * a1;
  if ((a1 * 60) >> 64 != (60 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = __OFADD__(v12, a2);
  v14 = v12 + a2;
  if (v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15 = result;
  v16 = [v9 quantityWithUnit:result doubleValue:v14];

  result = [v10 minuteUnit];
  v17 = 60 * a3;
  if ((a3 * 60) >> 64 != (60 * a3) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = __OFADD__(v17, a4);
  v18 = v17 + a4;
  if (!v13)
  {
    v19 = result;
    v20 = [v9 quantityWithUnit:result doubleValue:v18];

    v21 = [v8 initWithMinimum:v16 maximum:v20 isMinimumInclusive:1 isMaximumInclusive:1];
    return v21;
  }

LABEL_9:
  __break(1u);
  return result;
}

id HKQuantityRange.init(durationBetween:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = objc_opt_self();
  v13 = objc_opt_self();
  result = [v13 secondUnit];
  if ((a1 * 60) >> 64 != (60 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = 3600 * a1;
  if ((60 * a1 * 60) >> 64 != (3600 * a1) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = 60 * a2;
  if ((a2 * 60) >> 64 != (60 * a2) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = __OFADD__(v18, a3);
  v19 = v18 + a3;
  if (v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = result;
  v21 = [v12 quantityWithUnit:result doubleValue:v19];

  result = [v13 secondUnit];
  if ((a4 * 60) >> 64 != (60 * a4) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = 3600 * a4;
  if ((60 * a4 * 60) >> 64 != (3600 * a4) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = 60 * a5;
  if ((a5 * 60) >> 64 != (60 * a5) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = __OFADD__(v22, v23);
  v24 = v22 + v23;
  if (v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = __OFADD__(v24, a6);
  v25 = v24 + a6;
  if (!v17)
  {
    v26 = result;
    v27 = [v12 quantityWithUnit:result doubleValue:v25];

    v28 = [v29 initWithMinimum:v21 maximum:v27 isMinimumInclusive:1 isMaximumInclusive:1];
    return v28;
  }

LABEL_21:
  __break(1u);
  return result;
}

id HKQuantityRange.init(percent:)(double a1, double a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = [v6 percentUnit];
  v8 = [v5 quantityWithUnit:v7 doubleValue:a1 / 100.0];

  v9 = [v6 percentUnit];
  v10 = [v5 quantityWithUnit:v9 doubleValue:a2 / 100.0];

  v11 = [v4 initWithMinimum:v8 maximum:v10 isMinimumInclusive:1 isMaximumInclusive:1];
  return v11;
}

id sub_1CFDED078(SEL *a1, double a2, double a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = [v8 *a1];
  v10 = [v7 quantityWithUnit:v9 doubleValue:a2];

  v11 = [v8 *a1];
  v12 = [v7 quantityWithUnit:v11 doubleValue:a3];

  v13 = [v6 initWithMinimum:v10 maximum:v12 isMinimumInclusive:1 isMaximumInclusive:1];
  return v13;
}

uint64_t SleepingSampleBaselineComparisonCollection.mostRecentSampleDate.getter@<X0>(unsigned int (**a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDB2328(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  SleepingSampleBaselineComparisonCollection.enclosingSampleDateInterval.getter(a1, a2, v9);
  v10 = sub_1CFE30014();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1CFDA9B14(v9, sub_1CFDB2328);
    v12 = 1;
  }

  else
  {
    sub_1CFE2FFD4();
    (*(v11 + 8))(v9, v10);
    v12 = 0;
  }

  v13 = sub_1CFE30314();
  return (*(*(v13 - 8) + 56))(a3, v12, 1, v13);
}

uint64_t SleepingSampleBaselineComparisonCollection.enclosingSampleDateInterval.getter@<X0>(unsigned int (**a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a1;
  v113 = a3;
  v4 = sub_1CFE30314();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v109 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v107 = v104 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v106 = v104 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v104 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v122 = v104 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v118 = v104 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v121 = v104 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v125 = v104 - v22;
  sub_1CFDB2328(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v124 = v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for SleepingSampleAggregate();
  v26 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v136 = v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CFE30014();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v139 = v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SleepingSampleBaselineComparison();
  v130 = *(v32 - 8);
  v33 = v130[8];
  MEMORY[0x1EEE9AC00](v32 - 8);
  v135 = v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA9D60(0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v111 = v104 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = v104 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v126 = v104 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v120 = v104 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v119 = v104 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v117 = v104 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = v104 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v53 = v5[7];
  v127 = v104 - v54;
  v53();
  v138 = v52;
  v133 = v53;
  v134 = v5 + 7;
  (v53)(v52, 1, 1, v4);
  v55 = (*(a2 + 8))(v131, a2);
  v56 = *(v55 + 16);
  v123 = v28;
  v112 = v29;
  if (v56)
  {
    v105 = v41;
    v108 = v15;
    v57 = (*(v130 + 80) + 32) & ~*(v130 + 80);
    v104[1] = v55;
    v58 = v55 + v57;
    v59 = v130[9];
    v131 = (v29 + 48);
    v132 = v59;
    v116 = (v29 + 32);
    v130 = (v5 + 6);
    v60 = v5;
    v61 = (v5 + 4);
    v110 = v60;
    v129 = (v60 + 1);
    v114 = (v29 + 8);
    v62 = v127;
    v63 = v124;
    v64 = v125;
    v115 = v61;
    do
    {
      v65 = v135;
      sub_1CFDA9898(v58, v135, type metadata accessor for SleepingSampleBaselineComparison);
      v66 = v136;
      sub_1CFDA9898(v65, v136, type metadata accessor for SleepingSampleAggregate);
      sub_1CFDA9B14(v65, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA9898(v66 + *(v137 + 28), v63, sub_1CFDB2328);
      sub_1CFDA9B14(v66, type metadata accessor for SleepingSampleAggregate);
      if ((*v131)(v63, 1, v28) == 1)
      {
        sub_1CFDA9B14(v63, sub_1CFDB2328);
      }

      else
      {
        (*v116)(v139, v63, v28);
        v67 = v119;
        sub_1CFDA9898(v62, v119, sub_1CFDA9D60);
        v68 = *v130;
        if ((*v130)(v67, 1, v4) == 1)
        {
          sub_1CFE30004();
          if (v68(v67, 1, v4) != 1)
          {
            sub_1CFDA9B14(v67, sub_1CFDA9D60);
          }
        }

        else
        {
          (*v61)(v64, v67, v4);
        }

        v69 = v121;
        sub_1CFE30004();
        sub_1CFDEFED8(&qword_1EDC32030, MEMORY[0x1E6969530]);
        v70 = sub_1CFE30854();
        sub_1CFDA9B14(v62, sub_1CFDA9D60);
        v71 = *v129;
        if (v70)
        {
          v72 = v64;
        }

        else
        {
          v72 = v69;
        }

        if (v70)
        {
          v73 = v69;
        }

        else
        {
          v73 = v64;
        }

        v128 = *v129;
        v71(v72, v4);
        v74 = v62;
        v75 = *v61;
        v76 = v117;
        v75(v117, v73, v4);
        (v133)(v76, 0, 1, v4);
        sub_1CFDEFF20(v76, v74, sub_1CFDA9D60);
        v77 = v126;
        sub_1CFDA9898(v138, v126, sub_1CFDA9D60);
        if (v68(v77, 1, v4) == 1)
        {
          v78 = v118;
          sub_1CFE2FFD4();
          if (v68(v77, 1, v4) != 1)
          {
            sub_1CFDA9B14(v126, sub_1CFDA9D60);
          }
        }

        else
        {
          v79 = v118;
          v75(v118, v77, v4);
          v78 = v79;
        }

        v80 = v122;
        v81 = v139;
        sub_1CFE2FFD4();
        v82 = sub_1CFE30864();
        v83 = v81;
        v28 = v123;
        (*v114)(v83, v123);
        v84 = v138;
        sub_1CFDA9B14(v138, sub_1CFDA9D60);
        if (v82)
        {
          v85 = v78;
        }

        else
        {
          v85 = v80;
        }

        if (v82)
        {
          v86 = v80;
        }

        else
        {
          v86 = v78;
        }

        v128(v85, v4);
        v87 = v120;
        v61 = v115;
        v75(v120, v86, v4);
        (v133)(v87, 0, 1, v4);
        sub_1CFDEFF20(v87, v84, sub_1CFDA9D60);
        v62 = v127;
        v63 = v124;
        v64 = v125;
      }

      v58 += v132;
      --v56;
    }

    while (v56);

    v88 = v113;
    v5 = v110;
    v89 = v108;
    v41 = v105;
  }

  else
  {
    v88 = v113;

    v89 = v15;
  }

  sub_1CFDA9898(v127, v41, sub_1CFDA9D60);
  v90 = v5[6];
  v91 = v90(v41, 1, v4);
  v92 = v138;
  if (v91 == 1)
  {
    v93 = v41;
    v94 = v112;
  }

  else
  {
    v95 = v5[4];
    v95(v89, v41, v4);
    v96 = v111;
    sub_1CFDA9898(v92, v111, sub_1CFDA9D60);
    if (v90(v96, 1, v4) != 1)
    {
      v99 = v106;
      v95(v106, v96, v4);
      v100 = v5[2];
      v100(v107, v89, v4);
      v100(v109, v99, v4);
      sub_1CFE2FFE4();
      v101 = v5[1];
      v102 = v138;
      v101(v99, v4);
      v101(v89, v4);
      v98 = v102;
      v97 = 0;
      v28 = v123;
      v94 = v112;
      v93 = v127;
      goto LABEL_35;
    }

    (v5[1])(v89, v4);
    v28 = v123;
    v94 = v112;
    v93 = v96;
  }

  sub_1CFDA9B14(v92, sub_1CFDA9D60);
  v97 = 1;
  v98 = v127;
LABEL_35:
  sub_1CFDA9B14(v98, sub_1CFDA9D60);
  sub_1CFDA9B14(v93, sub_1CFDA9D60);
  return (*(v94 + 56))(v88, v97, 1, v28);
}

void sub_1CFDEDFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t SleepingSampleBaselineComparisonCollection.latestSampleCreationDate.getter@<X0>(unsigned int (**a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = type metadata accessor for SleepingSampleAggregate();
  v7 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFE30314();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v70 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = v57 - v15;
  v16 = type metadata accessor for SleepingSampleBaselineComparison();
  v73 = *(v16 - 8);
  v17 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA9D60(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v62 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v69 = v57 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v68 = v57 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v57 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = *(v11 + 56);
  v75 = v57 - v32;
  v71 = v31;
  v72 = v11 + 56;
  v31();
  v33 = *(a2 + 8);
  v61 = a1;
  v34 = v33(a1, a2);
  v35 = *(v34 + 16);
  v63 = v11;
  if (v35)
  {
    v58 = a2;
    v59 = v3;
    v60 = a3;
    v36 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v57[1] = v34;
    v37 = v34 + v36;
    v38 = *(v73 + 72);
    v39 = (v11 + 48);
    v73 = v11 + 32;
    v64 = (v11 + 16);
    v65 = (v11 + 8);
    v66 = v38;
    v67 = v9;
    do
    {
      sub_1CFDA9898(v37, v19, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA9898(v19, v9, type metadata accessor for SleepingSampleAggregate);
      sub_1CFDA9B14(v19, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA9898(&v9[*(v74 + 32)], v30, sub_1CFDA9D60);
      sub_1CFDA9B14(v9, type metadata accessor for SleepingSampleAggregate);
      v40 = *v39;
      if ((*v39)(v30, 1, v10) == 1)
      {
        sub_1CFDA9B14(v30, sub_1CFDA9D60);
      }

      else
      {
        v41 = *v73;
        (*v73)(v76, v30, v10);
        v42 = v69;
        sub_1CFDA9898(v75, v69, sub_1CFDA9D60);
        if (v40(v42, 1, v10) == 1)
        {
          v43 = v70;
          (*v64)(v70, v76, v10);
          v44 = v40(v42, 1, v10);
          v45 = v43;
          if (v44 != 1)
          {
            sub_1CFDA9B14(v42, sub_1CFDA9D60);
          }
        }

        else
        {
          v45 = v70;
          v41(v70, v42, v10);
        }

        sub_1CFDEFED8(&qword_1EDC32030, MEMORY[0x1E6969530]);
        v46 = v45;
        v47 = sub_1CFE30864();
        v48 = v75;
        sub_1CFDA9B14(v75, sub_1CFDA9D60);
        if (v47)
        {
          v49 = v46;
        }

        else
        {
          v49 = v76;
        }

        if (v47)
        {
          v50 = v76;
        }

        else
        {
          v50 = v46;
        }

        (*v65)(v49, v10);
        v51 = v68;
        v41(v68, v50, v10);
        (v71)(v51, 0, 1, v10);
        sub_1CFDEFF20(v51, v48, sub_1CFDA9D60);
        v38 = v66;
        v9 = v67;
      }

      v37 += v38;
      --v35;
    }

    while (v35);

    a3 = v60;
    a2 = v58;
  }

  else
  {
  }

  v52 = v75;
  v53 = v62;
  sub_1CFDA9898(v75, v62, sub_1CFDA9D60);
  v54 = v63;
  v55 = *(v63 + 48);
  if (v55(v53, 1, v10) == 1)
  {
    SleepingSampleBaselineComparisonCollection.mostRecentSampleDate.getter(v61, a2, a3);
    sub_1CFDA9B14(v52, sub_1CFDA9D60);
    result = v55(v53, 1, v10);
    if (result != 1)
    {
      return sub_1CFDA9B14(v53, sub_1CFDA9D60);
    }
  }

  else
  {
    sub_1CFDA9B14(v52, sub_1CFDA9D60);
    (*(v54 + 32))(a3, v53, v10);
    return (v71)(a3, 0, 1, v10);
  }

  return result;
}

uint64_t SleepingSampleBaselineComparisonCollection.isWarmupDay.getter(uint64_t a1, uint64_t a2)
{
  sub_1CFDAD280();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SleepingSampleBaselineComparison();
  v11 = *(v39 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v39);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v18 = *(a2 + 8);
  v41 = a1;
  v42 = a2;
  v38 = v18;
  result = v18(a1, a2);
  v20 = result;
  v21 = 0;
  v43 = *(result + 16);
  do
  {
    v22 = v21;
    if (v43 == v21)
    {
      break;
    }

    if (v21 >= *(v20 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    sub_1CFDA9898(v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21++, v17, type metadata accessor for SleepingSampleBaselineComparison);
    v23 = v17[*(type metadata accessor for SleepingSampleAggregate() + 36)];
    result = sub_1CFDA9B14(v17, type metadata accessor for SleepingSampleBaselineComparison);
  }

  while (v23 < 3);

  v42 = v38(v41, v42);
  v24 = *(v42 + 16);
  if (v24)
  {
    result = type metadata accessor for SleepingSampleAggregate();
    v25 = 0;
    v41 = result;
    v26 = *(result + 36);
    v27 = v42 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    while (v25 < *(v42 + 16))
    {
      sub_1CFDA9898(v27 + *(v11 + 72) * v25, v15, type metadata accessor for SleepingSampleBaselineComparison);
      v30 = v15[v26];
      if (v30 >= 3 && (v30 == 3 || (v34 = v40, sub_1CFDA9898(&v15[*(v39 + 24)], v40, sub_1CFDEEC00), v35 = type metadata accessor for SleepingSampleBaseline(), v36 = (*(*(v35 - 8) + 48))(v34, 1, v35), sub_1CFDA9B14(v34, sub_1CFDEEC00), v36 == 1)))
      {
        v28 = type metadata accessor for SleepingSampleBaselineComparison;
        v29 = v15;
      }

      else
      {
        sub_1CFDA9898(&v15[*(v41 + 24)], v7, sub_1CFDAD280);
        sub_1CFDAC3A0(0);
        v32 = v31;
        v33 = *(v31 - 8);
        if ((*(v33 + 48))(v7, 1, v31) != 1)
        {
          v37 = sub_1CFE30684();
          sub_1CFDA9B14(v15, type metadata accessor for SleepingSampleBaselineComparison);
          (*(v33 + 8))(v7, v32);

          return 0;
        }

        sub_1CFDA9B14(v15, type metadata accessor for SleepingSampleBaselineComparison);
        v28 = sub_1CFDAD280;
        v29 = v7;
      }

      result = sub_1CFDA9B14(v29, v28);
      if (v24 == ++v25)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_23;
  }

LABEL_17:

  return v43 != v22;
}

BOOL SleepingSampleBaselineComparisonCollection.isWarmupPeriod.getter(uint64_t a1, uint64_t a2)
{
  SleepingSampleBaselineComparisonCollection.warmupProgress.getter(a1, a2, v5);
  if (v5[0] < 1)
  {
    return 0;
  }

  SleepingSampleBaselineComparisonCollection.warmupProgress.getter(a1, a2, v5);
  return v5[0] < v5[1];
}

uint64_t SleepingSampleBaselineComparisonCollection.warmupProgress.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = SleepingSampleBaselineComparisonCollection.warmupDaysRemaining.getter(a1, a2);
  result = SleepingSampleBaselineComparisonCollection.warmupDaysRequired.getter(a1, a2);
  if (__OFSUB__(result, v6))
  {
    __break(1u);
  }

  else
  {
    *a3 = (result - v6) & ~((result - v6) >> 63);
    a3[1] = result;
  }

  return result;
}

uint64_t SleepingSampleBaselineComparisonCollection.isFirstDayAfterWarmup.getter(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for SleepingSampleBaselineAvailability();
  v5 = *(*(v49 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v49);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - v9;
  sub_1CFDAD280();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SleepingSampleBaselineComparison();
  v15 = *(v48 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v48);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v20;
  v22 = *(a2 + 8);
  v46 = a1;
  v47 = v2;
  v44 = v22;
  v45 = a2 + 8;
  v23 = v22(a1, a2);
  v52 = *(v23 + 16);
  v53 = v15;
  if (v52)
  {
    v43 = a2;
    result = type metadata accessor for SleepingSampleAggregate();
    v25 = 0;
    v26 = *(result + 24);
    v50 = v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v51 = v26;
    v27 = v15;
    while (v25 < *(v23 + 16))
    {
      sub_1CFDA9898(v50 + *(v27 + 72) * v25, v21, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA9898(&v21[v51], v14, sub_1CFDAD280);
      sub_1CFDAC3A0(0);
      v29 = v28;
      v30 = *(v28 - 8);
      if ((*(v30 + 48))(v14, 1, v28) == 1)
      {
        sub_1CFDA9B14(v14, sub_1CFDAD280);
        result = sub_1CFDA9B14(v21, type metadata accessor for SleepingSampleBaselineComparison);
      }

      else
      {
        v31 = sub_1CFE30684();
        (*(v30 + 8))(v14, v29);

        v27 = v53;
        sub_1CFDA9898(&v21[*(v48 + 20)], v10, type metadata accessor for SleepingSampleBaselineAvailability);
        sub_1CFDA9B14(v21, type metadata accessor for SleepingSampleBaselineComparison);
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

          v33 = *&v10[*(v32 + 48)];
          result = sub_1CFDA9B14(v10, sub_1CFDA7AD0);
          if (v33 == 6)
          {

            v34 = 1;
            a2 = v43;
            goto LABEL_15;
          }
        }
      }

      if (v52 == ++v25)
      {

        v34 = 0;
        a2 = v43;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v34 = 0;
LABEL_15:
  result = v44(v46, a2);
  v35 = result;
  v36 = *(result + 16);
  if (v36)
  {
    v37 = 0;
    v38 = *(v48 + 20);
    v39 = result + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    while (v37 < *(v35 + 16))
    {
      sub_1CFDA9898(v39 + *(v53 + 72) * v37, v19, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA9898(&v19[v38], v8, type metadata accessor for SleepingSampleBaselineAvailability);
      sub_1CFDA9B14(v19, type metadata accessor for SleepingSampleBaselineComparison);
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

        v41 = *&v8[*(v40 + 48)];
        result = sub_1CFDA9B14(v8, sub_1CFDA7AD0);
        if (v41 > 6)
        {

          return 0;
        }
      }

      if (v36 == ++v37)
      {
        goto LABEL_24;
      }
    }

LABEL_30:
    __break(1u);
    return result;
  }

LABEL_24:

  return (v34 & 1) != 0;
}

uint64_t SleepingSampleBaselineComparisonCollection.warmupDaysRequired.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineAvailability();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v64 = (&v56 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v56 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v56 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v58 = (&v56 - v16);
  v65 = type metadata accessor for SleepingSampleBaselineComparison();
  v17 = *(v65 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v65);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v56 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v56 - v25;
  v26 = (*(a2 + 8))(a1, a2);
  v27 = *(v26 + 16);
  if (!v27)
  {

    return 7;
  }

  v28 = v26;
  v62 = v26 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  sub_1CFDA9898(v62, v24, type metadata accessor for SleepingSampleBaselineComparison);
  result = v28;
  if (v27 == 1)
  {
LABEL_3:

    v30 = v57;
    sub_1CFDEFF20(v24, v57, type metadata accessor for SleepingSampleBaselineComparison);
    v31 = v58;
    sub_1CFDA9898(v30 + *(v65 + 20), v58, type metadata accessor for SleepingSampleBaselineAvailability);
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      if (result == 1)
      {
        sub_1CFDAD680();
        v33 = *(v31 + *(v32 + 64));
        result = sub_1CFDA9B14(v31, sub_1CFDA7AD0);
      }

      else
      {
        result = sub_1CFDA9B14(v31, sub_1CFDA7AD0);
        v33 = 6;
      }
    }

    else
    {
      v33 = *v31;
    }

    v45 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v45)
    {
      sub_1CFDA9B14(v30, type metadata accessor for SleepingSampleBaselineComparison);
      return v34;
    }
  }

  else
  {
    v35 = 1;
    v60 = result;
    v61 = v17;
    v59 = v27;
    while (v35 < *(result + 16))
    {
      sub_1CFDA9898(v62 + *(v17 + 72) * v35, v21, type metadata accessor for SleepingSampleBaselineComparison);
      v36 = type metadata accessor for SleepingSampleAggregate();
      v37 = v21[*(v36 + 36)] < 3u;
      v38 = *(v65 + 20);
      sub_1CFDA9898(&v21[v38], v15, type metadata accessor for SleepingSampleBaselineAvailability);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1CFDAD680();
          v41 = *(v15 + *(v40 + 64));
          sub_1CFDA9B14(v15, sub_1CFDA7AD0);
        }

        else
        {
          sub_1CFDA9B14(v15, sub_1CFDA7AD0);
          v41 = 6;
        }
      }

      else
      {
        v41 = *v15;
      }

      sub_1CFDA9898(&v21[v38], v12, type metadata accessor for SleepingSampleBaselineAvailability);
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

        v43 = *&v12[*(v42 + 48)];
        result = sub_1CFDA9B14(v12, sub_1CFDA7AD0);
      }

      else
      {
        v43 = 0;
      }

      v44 = v41 - v43;
      if (__OFSUB__(v41, v43))
      {
        goto LABEL_46;
      }

      v45 = __OFADD__(v44, v37);
      v46 = v44 + v37;
      if (v45)
      {
        goto LABEL_47;
      }

      v47 = v24[*(v36 + 36)] < 3u;
      v48 = *(v65 + 20);
      sub_1CFDA9898(&v24[v48], v64, type metadata accessor for SleepingSampleBaselineAvailability);
      v49 = swift_getEnumCaseMultiPayload();
      if (v49)
      {
        if (v49 == 1)
        {
          sub_1CFDAD680();
          v51 = *(v64 + *(v50 + 64));
          sub_1CFDA9B14(v64, sub_1CFDA7AD0);
        }

        else
        {
          sub_1CFDA9B14(v64, sub_1CFDA7AD0);
          v51 = 6;
        }
      }

      else
      {
        v51 = *v64;
      }

      sub_1CFDA9898(&v24[v48], v63, type metadata accessor for SleepingSampleBaselineAvailability);
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

        v53 = *(v63 + *(v52 + 48));
        result = sub_1CFDA9B14(v63, sub_1CFDA7AD0);
      }

      else
      {
        v53 = 0;
      }

      v54 = v51 - v53;
      if (__OFSUB__(v51, v53))
      {
        goto LABEL_48;
      }

      v45 = __OFADD__(v54, v47);
      v55 = v54 + v47;
      if (v45)
      {
        goto LABEL_49;
      }

      if (v55 < 0 || (v46 & ~(v46 >> 63)) >= v55)
      {
        sub_1CFDA9B14(v21, type metadata accessor for SleepingSampleBaselineComparison);
      }

      else
      {
        sub_1CFDA9B14(v24, type metadata accessor for SleepingSampleBaselineComparison);
        sub_1CFDEFF20(v21, v24, type metadata accessor for SleepingSampleBaselineComparison);
      }

      result = v60;
      v17 = v61;
      if (v59 == ++v35)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SleepingSampleBaselineComparisonCollection.warmupDaysRemaining.getter(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for SleepingSampleBaselineAvailability();
  v4 = *(*(v60 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v51 - v7);
  v9 = type metadata accessor for SleepingSampleBaselineComparison();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v51 - v15;
  sub_1CFDEDFBC(0, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6720]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v51 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v55 = &v51 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v51 - v26;
  v28 = (*(a2 + 8))(a1, a2);
  v29 = v28;
  if (*(v28 + 16))
  {
    sub_1CFDA9898(v28 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v27, type metadata accessor for SleepingSampleBaselineComparison);
    i = 1;
    v58 = *(v10 + 56);
    v58(v27, 0, 1, v9);
  }

  else
  {
    v58 = *(v10 + 56);
    v58(v27, 1, 1, v9);
    i = 0;
  }

  v31 = v9;
  v32 = v55;
  sub_1CFDD6DA4(v27, v55);
  v56 = *(v10 + 48);
  v57 = v10 + 48;
  if (v56(v32, 1, v31) == 1)
  {

    return 0;
  }

  else
  {
    v34 = v54;
    sub_1CFDEFF20(v32, v54, type metadata accessor for SleepingSampleBaselineComparison);

    v35 = v29;
    v33 = SleepingSampleBaselineComparison.warmupDaysRemaining.getter();
    result = sub_1CFDA9B14(v34, type metadata accessor for SleepingSampleBaselineComparison);
    v52 = v10;
    v53 = v35;
    v37 = *(v35 + 16);
    v54 = v31;
    v55 = v10 + 56;
    if (i != v37)
    {
      goto LABEL_8;
    }

LABEL_7:
    v38 = 1;
    for (i = v37; ; ++i)
    {
      v58(v23, v38, 1, v31);
      sub_1CFDD6DA4(v23, v20);
      if (v56(v20, 1, v31) == 1)
      {
        swift_bridgeObjectRelease_n();
        return v33;
      }

      v39 = v23;
      sub_1CFDEFF20(v20, v14, type metadata accessor for SleepingSampleBaselineComparison);
      v40 = v14[*(type metadata accessor for SleepingSampleAggregate() + 36)] < 3u;
      v41 = *(v31 + 20);
      sub_1CFDA9898(&v14[v41], v8, type metadata accessor for SleepingSampleBaselineAvailability);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1CFDAD680();
          v44 = *(v8 + *(v43 + 64));
          sub_1CFDA9B14(v8, sub_1CFDA7AD0);
        }

        else
        {
          sub_1CFDA9B14(v8, sub_1CFDA7AD0);
          v44 = 6;
        }
      }

      else
      {
        v44 = *v8;
      }

      sub_1CFDA9898(&v14[v41], v59, type metadata accessor for SleepingSampleBaselineAvailability);
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

        v46 = *(v59 + *(v45 + 48));
        result = sub_1CFDA9B14(v59, sub_1CFDA7AD0);
      }

      else
      {
        v46 = 0;
      }

      v47 = v44 - v46;
      if (__OFSUB__(v44, v46))
      {
        break;
      }

      v48 = __OFADD__(v47, v40);
      v49 = v47 + v40;
      if (v48)
      {
        goto LABEL_32;
      }

      v50 = v49 & ~(v49 >> 63);
      result = sub_1CFDA9B14(v14, type metadata accessor for SleepingSampleBaselineComparison);
      if (v50 < v33)
      {
        v33 = v50;
      }

      v23 = v39;
      v31 = v54;
      if (i == v37)
      {
        goto LABEL_7;
      }

LABEL_8:
      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (i >= *(v53 + 16))
      {
        goto LABEL_34;
      }

      sub_1CFDA9898(v53 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * i, v23, type metadata accessor for SleepingSampleBaselineComparison);
      v38 = 0;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFDEFED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDEFF20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SleepingSampleDaySummaryQueryDescriptor.currentAndUpdatingDaySummaryCollections(for:debugIdentifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v57 = a3;
  v58 = a1;
  v48[1] = a2;
  v54 = a4;
  Descriptor = type metadata accessor for SleepingSampleDaySummaryQueryDescriptor();
  v56 = *(Descriptor - 8);
  v55 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v53 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1CFE304B4();
  v8 = *(v52 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA68BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB65A8(0, &qword_1EDC318A0, MEMORY[0x1E69E8798]);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = v48 - v18;
  sub_1CFDB65A8(0, &qword_1EDC31890, MEMORY[0x1E69E87A0]);
  v49 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v24 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v48 - v25;
  type metadata accessor for SleepingSampleDaySummaryCollection();
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8790], v15);
  sub_1CFE30B44();
  (*(v16 + 8))(v19, v15);
  v27 = v5;
  v28 = v5;
  v29 = v50;
  sub_1CFDA67B8(v28, v50, sub_1CFDA68BC);
  v30 = type metadata accessor for GregorianDayRange();
  v31 = v51;
  (*(v8 + 16))(v51, v27 + *(v30 + 20), v52);
  v32 = v53;
  sub_1CFDA67B8(v27, v53, type metadata accessor for SleepingSampleDaySummaryQueryDescriptor);
  v33 = *(v21 + 16);
  v54 = v26;
  v34 = v26;
  v35 = v49;
  v33(v24, v34, v49);
  v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v37 = (v55 + *(v21 + 80) + v36) & ~*(v21 + 80);
  v38 = swift_allocObject();
  sub_1CFDA65CC(v32, v38 + v36, type metadata accessor for SleepingSampleDaySummaryQueryDescriptor);
  (*(v21 + 32))(v38 + v37, v24, v35);
  v39 = sub_1CFDD1378(v29, v31, 1, sub_1CFDB6454, v38);
  v40 = v57;

  v41 = v39;
  if (v40)
  {
    v40 = sub_1CFE308F4();
  }

  [v39 setDebugIdentifier_];

  v42 = swift_allocObject();
  v43 = v58;
  *(v42 + 16) = v39;
  *(v42 + 24) = v43;
  v44 = v39;
  v45 = v43;
  v46 = v54;
  sub_1CFE30B54();
  [v45 executeQuery_];

  return (*(v21 + 8))(v46, v35);
}

unint64_t sub_1CFDF05AC()
{
  result = qword_1EDC32CA8;
  if (!qword_1EDC32CA8)
  {
    sub_1CFE307E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32CA8);
  }

  return result;
}

id sub_1CFDF0604(uint64_t a1, void *a2, void *a3)
{
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v5 = sub_1CFE30624();
  __swift_project_value_buffer(v5, qword_1EDC32578);
  v6 = a2;
  v7 = sub_1CFE30604();
  v8 = sub_1CFE30C04();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_1CFDAAF6C(0xD000000000000027, 0x80000001CFE35B80, &v14);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&dword_1CFDA3000, v7, v8, "[%{public}s] Stopping query for stream termination: %@", v9, 0x16u);
    sub_1CFDAB090(v10);
    MEMORY[0x1D3876FF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3876FF0](v11, -1, -1);
    MEMORY[0x1D3876FF0](v9, -1, -1);
  }

  return [a3 stopQuery_];
}

uint64_t SleepingSampleDaySummaryQueryDescriptor.currentDaySummaryCollection(for:debugIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CFDF07E8, 0, 0);
}

uint64_t sub_1CFDF07E8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v9 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v9;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = type metadata accessor for SleepingSampleDaySummaryCollection();
  *v5 = v0;
  v5[1] = sub_1CFDF0900;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000031, 0x80000001CFE39470, sub_1CFDF10B8, v3, v6);
}

uint64_t sub_1CFDF0900()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CFDF0A3C, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1CFDF0A3C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_1CFDF0AA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v37 = a3;
  v38 = a5;
  v33 = a4;
  v36 = a1;
  sub_1CFDB65A8(0, &qword_1EDC31A90, MEMORY[0x1E69E8548]);
  v35 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  Descriptor = type metadata accessor for SleepingSampleDaySummaryQueryDescriptor();
  v34 = *(Descriptor - 8);
  v12 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CFE304B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA68BC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA67B8(a2, v22, sub_1CFDA68BC);
  v23 = type metadata accessor for GregorianDayRange();
  (*(v15 + 16))(v18, a2 + *(v23 + 20), v14);
  sub_1CFDA67B8(a2, v13, type metadata accessor for SleepingSampleDaySummaryQueryDescriptor);
  v24 = v35;
  (*(v7 + 16))(v10, v36, v35);
  v25 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v26 = (v12 + *(v7 + 80) + v25) & ~*(v7 + 80);
  v27 = swift_allocObject();
  v28 = v37;
  *(v27 + 16) = v37;
  sub_1CFDA65CC(v13, v27 + v25, type metadata accessor for SleepingSampleDaySummaryQueryDescriptor);
  (*(v7 + 32))(v27 + v26, v10, v24);
  v29 = v28;
  v30 = sub_1CFDD1378(v22, v18, 0, sub_1CFDF1158, v27);
  v31 = v38;

  v32 = v30;
  if (v31)
  {
    v31 = sub_1CFE308F4();
  }

  [v30 setDebugIdentifier_];

  [v29 executeQuery_];
}

uint64_t sub_1CFDF0E50(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23[0] = a6;
  v11 = type metadata accessor for SleepingSampleDaySummaryCollection();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB65A8(0, &qword_1EDC31E58, MEMORY[0x1E69E75F0]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v21 = (v23 - v20);
  [a4 stopQuery_];
  if (a3)
  {
    *v21 = a2;
  }

  else
  {
    sub_1CFDA67B8(a5, v21, type metadata accessor for GregorianDayRange);
    *(v21 + *(v11 + 20)) = a2;
  }

  swift_storeEnumTagMultiPayload();
  sub_1CFDF1264(v21, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23[1] = *v19;
    sub_1CFDAB240(a2, a3 & 1);
    sub_1CFDB65A8(0, &qword_1EDC31A90, MEMORY[0x1E69E8548]);
    sub_1CFE30B14();
  }

  else
  {
    sub_1CFDA65CC(v19, v14, type metadata accessor for SleepingSampleDaySummaryCollection);
    sub_1CFDAB240(a2, a3 & 1);
    sub_1CFDB65A8(0, &qword_1EDC31A90, MEMORY[0x1E69E8548]);
    sub_1CFE30B24();
  }

  return sub_1CFDB6B80(v21);
}

uint64_t sub_1CFDF10EC()
{
  result = type metadata accessor for GregorianDayRange();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CFDF1158(uint64_t a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for SleepingSampleDaySummaryQueryDescriptor() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  sub_1CFDB65A8(0, &qword_1EDC31A90, MEMORY[0x1E69E8548]);
  v11 = *(v3 + 16);
  v12 = v3 + ((v9 + *(*(v10 - 8) + 80)) & ~*(*(v10 - 8) + 80));

  return sub_1CFDF0E50(a1, a2, a3 & 1, v11, v3 + v8, v12);
}

uint64_t sub_1CFDF1264(uint64_t a1, uint64_t a2)
{
  sub_1CFDB65A8(0, &qword_1EDC31E58, MEMORY[0x1E69E75F0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SleepingSampleQueryRange.init(morningIndexRange:gregorianCalendar:baselineWindowDays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1CFDF137C(a1, a4);
  v7 = *(type metadata accessor for GregorianDayRange() + 20);
  v8 = sub_1CFE304B4();
  (*(*(v8 - 8) + 32))(a4 + v7, a2, v8);
  result = type metadata accessor for SleepingSampleQueryRange();
  *(a4 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_1CFDF137C(uint64_t a1, uint64_t a2)
{
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SleepingSampleQueryRange.baselineWindowDays.setter(uint64_t a1)
{
  result = type metadata accessor for SleepingSampleQueryRange();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t SleepingSampleQueryRange.description.getter()
{
  sub_1CFE30DB4();
  MEMORY[0x1D3876060](0xD000000000000023, 0x80000001CFE394B0);
  v1 = GregorianDayRange.description.getter();
  MEMORY[0x1D3876060](v1);

  MEMORY[0x1D3876060](0x696C65736162202CLL, 0xEC000000203A656ELL);
  v4 = *(v0 + *(type metadata accessor for SleepingSampleQueryRange() + 20));
  v2 = sub_1CFE31074();
  MEMORY[0x1D3876060](v2);

  MEMORY[0x1D3876060](41, 0xE100000000000000);
  return 0;
}

BOOL static SleepingSampleQueryRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v5 = *(v4 + 36);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for GregorianDayRange();
  if ((MEMORY[0x1D3875B20](a1 + *(v6 + 20), a2 + *(v6 + 20)) & 1) == 0)
  {
    return 0;
  }

  Range = type metadata accessor for SleepingSampleQueryRange();
  return *(a1 + *(Range + 20)) == *(a2 + *(Range + 20));
}

uint64_t SleepingSampleQueryRange.hash(into:)()
{
  v1 = v0;
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v3 = v0 + *(v2 + 36);
  sub_1CFE30834();
  LODWORD(v3) = *(type metadata accessor for GregorianDayRange() + 20);
  sub_1CFE304B4();
  sub_1CFDA7880(&qword_1EC509640, MEMORY[0x1E6969AE8]);
  sub_1CFE30834();
  Range = type metadata accessor for SleepingSampleQueryRange();
  return MEMORY[0x1D3876810](*(v1 + *(Range + 20)));
}

uint64_t SleepingSampleQueryRange.hashValue.getter()
{
  v1 = v0;
  sub_1CFE31144();
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v3 = v0 + *(v2 + 36);
  sub_1CFE30834();
  LODWORD(v3) = *(type metadata accessor for GregorianDayRange() + 20);
  sub_1CFE304B4();
  sub_1CFDA7880(&qword_1EC509640, MEMORY[0x1E6969AE8]);
  sub_1CFE30834();
  Range = type metadata accessor for SleepingSampleQueryRange();
  MEMORY[0x1D3876810](*(v1 + *(Range + 20)));
  return sub_1CFE31184();
}

uint64_t sub_1CFDF192C(uint64_t a1)
{
  v3 = v1;
  sub_1CFE31144();
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v5 = v1 + *(v4 + 36);
  sub_1CFE30834();
  LODWORD(v5) = *(type metadata accessor for GregorianDayRange() + 20);
  sub_1CFE304B4();
  sub_1CFDA7880(&qword_1EC509640, MEMORY[0x1E6969AE8]);
  sub_1CFE30834();
  MEMORY[0x1D3876810](*(v3 + *(a1 + 20)));
  return sub_1CFE31184();
}

uint64_t sub_1CFDF1A7C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v6 = v2 + *(v5 + 36);
  sub_1CFE30834();
  LODWORD(v6) = *(type metadata accessor for GregorianDayRange() + 20);
  sub_1CFE304B4();
  sub_1CFDA7880(&qword_1EC509640, MEMORY[0x1E6969AE8]);
  sub_1CFE30834();
  return MEMORY[0x1D3876810](*(v4 + *(a2 + 20)));
}

uint64_t sub_1CFDF1BB4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1CFE31144();
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v6 = v2 + *(v5 + 36);
  sub_1CFE30834();
  LODWORD(v6) = *(type metadata accessor for GregorianDayRange() + 20);
  sub_1CFE304B4();
  sub_1CFDA7880(&qword_1EC509640, MEMORY[0x1E6969AE8]);
  sub_1CFE30834();
  MEMORY[0x1D3876810](*(v4 + *(a2 + 20)));
  return sub_1CFE31184();
}

BOOL sub_1CFDF1D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE307E4();
  sub_1CFDA7880(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
  if (sub_1CFE308B4() & 1) != 0 && (sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]), v7 = *(v6 + 36), (sub_1CFE308B4()) && (v8 = type metadata accessor for GregorianDayRange(), (MEMORY[0x1D3875B20](a1 + *(v8 + 20), a2 + *(v8 + 20))))
  {
    return *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFDF1E6C()
{
  result = type metadata accessor for GregorianDayRange();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CFDF1EE0(void (*a1)(unint64_t), uint64_t a2)
{
  v3 = v2;
  v105 = a2;
  v104 = a1;
  v4 = sub_1CFE307E4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v93 - v10;
  sub_1CFDF6B34();
  v122 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v115 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v93 - v15;
  sub_1CFDF6C2C();
  v103 = v17;
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v102 = (&v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v93 - v21;
  v22 = type metadata accessor for SleepingSampleDaySummary();
  v100 = *(v22 - 8);
  v23 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v120 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDF3254(0, &qword_1EC509B90, &qword_1EC509B98, MEMORY[0x1E69E5FD0], MEMORY[0x1E69E6E50]);
  v110 = v25;
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v119 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v126 = &v93 - v29;
  sub_1CFDF6B98();
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v99 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v106 = &v93 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v108 = &v93 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v121 = &v93 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v94 = &v93 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v114 = &v93 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v93 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v93 - v47;
  v49 = v5[2];
  v109 = v5 + 2;
  v111 = v49;
  v49(&v93 - v47, v2, v4);
  v130 = v5;
  v51 = v5[7];
  v50 = v5 + 7;
  v51(v48, 0, 1, v4);
  v129 = v51;
  v51(v46, 1, 1, v4);
  v52 = sub_1CFDF6D3C(v48, v46);
  sub_1CFDF73CC(v46, sub_1CFDF6B98);
  sub_1CFDF73CC(v48, sub_1CFDF6B98);
  result = MEMORY[0x1E69E7CC0];
  if (v52)
  {
    v132 = MEMORY[0x1E69E7CC0];
    sub_1CFDC46C0(0, v52 & ~(v52 >> 63), 0);
    v123 = v132;
    v54 = v126;
    v111(v126, v3, v4);
    v55 = v129;
    v129(v54, 0, 1, v4);
    v96 = *(v110 + 36);
    *(v54 + v96) = 0;
    v56 = v111;
    if ((v52 & 0x8000000000000000) == 0)
    {
      v57 = v50;
      v95 = v52;
      v58 = 0;
      v59 = 0;
      v112 = v16;
      v113 = (v130 + 48);
      v128 = (v130 + 32);
      v125 = (v130 + 8);
      v60 = v115;
      v61 = v126;
      v98 = v9;
      v127 = v57;
      v97 = v3;
      while (!__OFADD__(v58, 1))
      {
        v117 = v58;
        v118 = v59;
        v116 = v58 + 1;
        v62 = v61;
        v63 = v114;
        v56(v114, v3, v4);
        (v55)(v63, 0, 1, v4);
        v64 = *(v122 + 48);
        sub_1CFDF7278(v62, v16, sub_1CFDF6B98);
        sub_1CFDF7278(v63, &v16[v64], sub_1CFDF6B98);
        v65 = *v113;
        v66 = (*v113)(v16, 1, v4);
        v130 = v65;
        if (v66 == 1)
        {
          sub_1CFDF73CC(v63, sub_1CFDF6B98);
          sub_1CFDF73CC(v16, sub_1CFDF6B34);
          v55 = v108;
        }

        else
        {
          v57 = v94;
          sub_1CFDF7278(v16, v94, sub_1CFDF6B98);
          v67 = v65(&v16[v64], 1, v4);
          v55 = v108;
          if (v67 == 1)
          {
            goto LABEL_29;
          }

          v68 = &v16[v64];
          v69 = v107;
          (*v128)(v107, v68, v4);
          sub_1CFDA78C8(&qword_1EDC32CA8);
          v70 = v57;
          v71 = sub_1CFE30854();
          v72 = *v125;
          (*v125)(v69, v4);
          sub_1CFDF73CC(v114, sub_1CFDF6B98);
          v72(v70, v4);
          v60 = v115;
          sub_1CFDF73CC(v112, sub_1CFDF6B98);
          if (v71)
          {
            goto LABEL_30;
          }
        }

        v16 = v121;
        v129(v121, 1, 1, v4);
        v73 = *(v122 + 48);
        v74 = v126;
        sub_1CFDF7278(v126, v60, sub_1CFDF6B98);
        sub_1CFDF7278(v16, v60 + v73, sub_1CFDF6B98);
        v57 = v130;
        if (v130(v60, 1, v4) == 1)
        {
          goto LABEL_26;
        }

        sub_1CFDF7278(v60, v55, sub_1CFDF6B98);
        if ((v57)(v60 + v73, 1, v4) == 1)
        {
          sub_1CFDF73CC(v121, sub_1CFDF6B98);
          v75 = *v125;
          (*v125)(v55, v4);
          sub_1CFDF73CC(v60, sub_1CFDF6B98);
        }

        else
        {
          v76 = v107;
          (*v128)(v107, (v60 + v73), v4);
          sub_1CFDA78C8(&qword_1EDC32CA8);
          v57 = sub_1CFE30854();
          v75 = *v125;
          (*v125)(v76, v4);
          v16 = v60;
          sub_1CFDF73CC(v121, sub_1CFDF6B98);
          v75(v55, v4);
          v74 = v126;
          sub_1CFDF73CC(v60, sub_1CFDF6B98);
          if ((v57 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        v55 = v106;
        sub_1CFDF7278(v74, v106, sub_1CFDF6B98);
        if (v130(v55, 1, v4) == 1)
        {
          goto LABEL_32;
        }

        v77 = v103;
        v78 = *(v103 + 48);
        v79 = *v128;
        v80 = v101;
        (*v128)(&v101[v78], v55, v4);
        v55 = v102;
        *v102 = v118;
        v79((v55 + *(v77 + 48)), &v80[v78], v4);
        v81 = v124;
        v104(v55);
        v124 = v81;
        if (v81)
        {
          goto LABEL_34;
        }

        sub_1CFDF73CC(v55, sub_1CFDF6C2C);
        v82 = v123;
        v132 = v123;
        v55 = *(v123 + 16);
        v83 = *(v123 + 24);
        v61 = v126;
        if (v55 >= v83 >> 1)
        {
          sub_1CFDC46C0(v83 > 1, v55 + 1, 1);
          v82 = v132;
        }

        *(v82 + 16) = v55 + 1;
        v84 = (*(v100 + 80) + 32) & ~*(v100 + 80);
        v123 = v82;
        sub_1CFDF742C(v120, v82 + v84 + *(v100 + 72) * v55, type metadata accessor for SleepingSampleDaySummary);
        v85 = v119;
        sub_1CFDF7128(v61, v119);
        v86 = v85;
        v87 = v99;
        sub_1CFDF7278(v86, v99, sub_1CFDF6B98);
        if (v130(v87, 1, v4) == 1)
        {
          goto LABEL_33;
        }

        v88 = v98;
        v79(v98, v87, v4);
        sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
        v90 = *(v89 + 36);
        sub_1CFDA78C8(&qword_1EDC31AB0);
        v3 = v97;
        v91 = sub_1CFE308B4();
        v60 = v115;
        v55 = v110;
        if (v91)
        {
          v75(v88, v4);
          v92 = 1;
        }

        else
        {
          v131 = 1;
          sub_1CFDA78C8(&unk_1EDC31E78);
          sub_1CFE30C94();
          v75(v88, v4);
          v92 = 0;
        }

        v16 = v112;
        v129(v61, v92, 1, v4);
        v57 = *(v119 + *(v55 + 36));
        sub_1CFDF70CC(v119, &qword_1EC509B90, &qword_1EC509B98, MEMORY[0x1E69E5FD0], MEMORY[0x1E69E6E50]);
        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_28;
        }

        *(v61 + v96) = v59;
        v58 = v117 + 1;
        v56 = v111;
        v57 = v127;
        v55 = v129;
        if (v116 == v95)
        {
          sub_1CFDF70CC(v61, &qword_1EC509B90, &qword_1EC509B98, MEMORY[0x1E69E5FD0], MEMORY[0x1E69E6E50]);
          return v123;
        }
      }

      __break(1u);
LABEL_26:
      sub_1CFDF73CC(v121, sub_1CFDF6B98);
      sub_1CFDF73CC(v60, sub_1CFDF6B34);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      sub_1CFDF73CC(v114, sub_1CFDF6B98);
      (*v125)(v57, v4);
      sub_1CFDF73CC(v16, sub_1CFDF6B98);
LABEL_30:
      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_1CFDF73CC(v55, sub_1CFDF6C2C);
    sub_1CFDF70CC(v126, &qword_1EC509B90, &qword_1EC509B98, MEMORY[0x1E69E5FD0], MEMORY[0x1E69E6E50]);

    __break(1u);
  }

  return result;
}

uint64_t static SleepingSampleDaySummaryCollection.fake(morningIndexRange:gregorianCalendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDA6A04(a1, a3, &qword_1EDC32CA0, MEMORY[0x1E69E5F90], sub_1CFDA7600);
  v6 = *(type metadata accessor for GregorianDayRange() + 20);
  v7 = sub_1CFE304B4();
  (*(*(v7 - 8) + 16))(a3 + v6, a2, v7);
  v8 = sub_1CFDF2E88(a1, a2);
  result = type metadata accessor for SleepingSampleDaySummaryCollection();
  *(a3 + *(result + 20)) = v8;
  return result;
}

uint64_t sub_1CFDF2E88(uint64_t a1, uint64_t a2)
{
  sub_1CFDF3254(0, &qword_1EC509B60, &qword_1EC509B68, MEMORY[0x1E69E5FB0], MEMORY[0x1E69E6E48]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v32 = MEMORY[0x1E69E7CC0];
  sub_1CFDC4918(0, 7, 0);
  v8 = v32;
  v10 = *(v32 + 16);
  v9 = *(v32 + 24);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    sub_1CFDC4918((v9 > 1), v10 + 1, 1);
    v8 = v32;
    v9 = *(v32 + 24);
    v11 = v9 >> 1;
  }

  *(v8 + 16) = v12;
  *(v8 + 8 * v10 + 32) = 0x3FEEF9DB22D0E560;
  v13 = v10 + 2;
  if (v11 < v13)
  {
    sub_1CFDC4918((v9 > 1), v13, 1);
    v8 = v32;
  }

  *(v8 + 16) = v13;
  *(v8 + 8 * v12 + 32) = 0x3FEEE978D4FDF3B6;
  v15 = *(v8 + 16);
  v14 = *(v8 + 24);
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    sub_1CFDC4918((v14 > 1), v15 + 1, 1);
  }

  v17 = v32;
  *(v32 + 16) = v16;
  *(v17 + 8 * v15 + 32) = 0x3FEEE978D4FDF3B6;
  v18 = *(v17 + 24);
  v19 = v15 + 2;
  if (v19 > (v18 >> 1))
  {
    sub_1CFDC4918((v18 > 1), v19, 1);
    v17 = v32;
  }

  *(v17 + 16) = v19;
  *(v17 + 8 * v16 + 32) = 0x3FEEC083126E978DLL;
  v21 = *(v17 + 16);
  v20 = *(v17 + 24);
  v22 = v20 >> 1;
  v23 = v21 + 1;
  if (v20 >> 1 <= v21)
  {
    sub_1CFDC4918((v20 > 1), v21 + 1, 1);
    v17 = v32;
    v20 = *(v32 + 24);
    v22 = v20 >> 1;
  }

  *(v17 + 16) = v23;
  *(v17 + 8 * v21 + 32) = 0x3FEEE978D4FDF3B6;
  v24 = v21 + 2;
  if (v22 < (v21 + 2))
  {
    sub_1CFDC4918((v20 > 1), v21 + 2, 1);
  }

  v25 = v32;
  *(v32 + 16) = v24;
  *(v25 + 8 * v23 + 32) = 0x3FEEC8B439581063;
  v27 = *(v25 + 16);
  v26 = *(v25 + 24);
  if (v27 >= v26 >> 1)
  {
    sub_1CFDC4918((v26 > 1), v27 + 1, 1);
    v25 = v32;
  }

  *(v25 + 16) = v27 + 1;
  *(v25 + 8 * v27 + 32) = 0x3FEE8F5C28F5C28FLL;
  v28 = sub_1CFDA6A04(a1, v7, &qword_1EDC32CA0, MEMORY[0x1E69E5F90], sub_1CFDA7600);
  MEMORY[0x1EEE9AC00](v28);
  *(&v31 - 8) = a2;
  *(&v31 - 7) = &unk_1F4C8A308;
  *(&v31 - 6) = a1;
  *(&v31 - 5) = &unk_1F4C8A200;
  *(&v31 - 4) = v25;
  *(&v31 - 3) = &unk_1F4C8A258;
  *(&v31 - 2) = &unk_1F4C8A2B0;
  v29 = sub_1CFDF1EE0(sub_1CFDF6AFC, (&v31 - 10));

  sub_1CFDF70CC(v7, &qword_1EC509B60, &qword_1EC509B68, MEMORY[0x1E69E5FB0], MEMORY[0x1E69E6E48]);
  return v29;
}

void sub_1CFDF3254(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1CFDA7600(255, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    v10 = v9;
    v11 = sub_1CFDF6C98(a3);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

unint64_t sub_1CFDF32F4()
{
  result = qword_1EC509B70;
  if (!qword_1EC509B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509B70);
  }

  return result;
}

uint64_t sub_1CFDF3348@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v449 = a8;
  v451 = a7;
  v455 = a6;
  v462 = a5;
  v460 = a4;
  v505 = a2;
  v447 = a9;
  sub_1CFDF71C4(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v461 = &v440 - v13;
  sub_1CFDF71C4(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v475 = &v440 - v16;
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v459 = &v440 - v19;
  v515 = type metadata accessor for SleepingSampleBaseline();
  v513 = *(v515 - 8);
  v20 = *(v513 + 64);
  v21 = MEMORY[0x1EEE9AC00](v515);
  v441 = &v440 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v440 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v442 = &v440 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v443 = &v440 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v444 = &v440 - v30;
  sub_1CFDF71C4(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v446 = &v440 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v448 = &v440 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v450 = &v440 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v454 = &v440 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v487 = (&v440 - v41);
  v503 = type metadata accessor for SleepingSampleBaselineAvailability();
  v42 = *(*(v503 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v503);
  v464 = &v440 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v467 = &v440 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v471 = &v440 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v478 = &v440 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v480 = &v440 - v51;
  v514 = sub_1CFE30314();
  v517 = *(v514 - 8);
  v52 = *(v517 + 64);
  MEMORY[0x1EEE9AC00](v514);
  v502 = &v440 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v516 = sub_1CFE304B4();
  v512 = *(v516 - 8);
  v54 = *(v512 + 64);
  MEMORY[0x1EEE9AC00](v516);
  v519 = &v440 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v511 = type metadata accessor for SleepingSampleAggregate();
  v56 = *(*(v511 - 8) + 64);
  v57 = MEMORY[0x1EEE9AC00](v511);
  v463 = &v440 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v466 = &v440 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v470 = &v440 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v477 = &v440 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v479 = &v440 - v65;
  sub_1CFDA7460();
  v501 = v66;
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v500 = &v440 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v499 = &v440 - v70;
  sub_1CFDA7600(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v498 = v71;
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v481 = &v440 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v482 = &v440 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v483 = &v440 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v476 = &v440 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v473 = &v440 - v82;
  MEMORY[0x1EEE9AC00](v81);
  v507 = &v440 - v83;
  v504 = type metadata accessor for SleepingSampleBaselineComparison();
  v84 = *(*(v504 - 8) + 64);
  v85 = MEMORY[0x1EEE9AC00](v504);
  v445 = &v440 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x1EEE9AC00](v85);
  v465 = &v440 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v468 = &v440 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v469 = &v440 - v92;
  MEMORY[0x1EEE9AC00](v91);
  v474 = &v440 - v93;
  sub_1CFDF6C2C();
  v95 = v94 - 8;
  v96 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v98 = (&v440 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = sub_1CFE307E4();
  v100 = *(*(v99 - 8) + 64);
  v101 = MEMORY[0x1EEE9AC00](v99);
  v472 = &v440 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = MEMORY[0x1EEE9AC00](v101);
  v506 = &v440 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v525 = &v440 - v106;
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v440 - v107;
  v109 = a1;
  v111 = v110;
  sub_1CFDF7278(v109, v98, sub_1CFDF6C2C);
  v112 = *v98;
  v113 = v98 + *(v95 + 56);
  v114 = v108;
  v509 = v111[4];
  v510 = v111 + 4;
  v509(v108, v113, v99);
  v496 = objc_opt_self();
  result = [v496 hourUnit];
  v116 = *(a3 + 16);
  if (!v116)
  {
    __break(1u);
    goto LABEL_36;
  }

  v117 = v112 % v116;
  if (v117 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v118 = result;
  v495 = v112;
  v119 = *(a3 + 8 * v117 + 32);
  v120 = objc_opt_self();
  v489 = [v120 quantityWithUnit:v118 doubleValue:v119];
  v457 = [v120 quantityWithUnit:v118 doubleValue:7.2];
  v121 = [v120 quantityWithUnit:v118 doubleValue:6.8];
  v458 = v118;
  v122 = [v120 quantityWithUnit:v118 doubleValue:7.7];
  v456 = [objc_allocWithZone(MEMORY[0x1E696C350]) initWithMinimum:v121 maximum:v122 isMinimumInclusive:1 isMaximumInclusive:1];

  v123 = v506;
  sub_1CFE30744();
  v124 = v525;
  sub_1CFE30764();
  v125 = v111[1];
  v522 = v111 + 1;
  v125(v123, v99);
  v494 = sub_1CFDA78C8(&qword_1EDC32CA8);
  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v440 = v25;
  v518 = v120;
  v126 = v499;
  v520 = v114;
  v127 = v509;
  v509(v499, v124, v99);
  v128 = v501;
  v129 = *(v501 + 48);
  v523 = v111[2];
  v524 = (v111 + 2);
  v523(v126 + v129, v520, v99);
  v130 = v500;
  sub_1CFDF7278(v126, v500, sub_1CFDA7460);
  v131 = *(v128 + 48);
  v132 = v507;
  v127(v507, v130, v99);
  v521 = v125;
  v125((v130 + v131), v99);
  sub_1CFDF742C(v126, v130, sub_1CFDA7460);
  v127(v132 + *(v498 + 36), v130 + *(v128 + 48), v99);
  v133 = v520;
  v125(v130, v99);
  v523(v525, v133, v99);
  v134 = v512;
  v136 = v512 + 16;
  v135 = *(v512 + 16);
  v135(v519, v505, v516);
  v137 = v511;
  v138 = *(v511 + 28);
  sub_1CFE307D4();
  v139 = v479;
  sub_1CFE2FFF4();
  v140 = sub_1CFE30014();
  v453 = *(v140 - 8);
  v141 = *(v453 + 56);
  v497 = v140;
  v491 = v453 + 56;
  v490 = v141;
  (v141)(&v139[v138], 0, 1);
  v142 = *(v517 + 56);
  v143 = &v139[v137[8]];
  v517 += 56;
  v508 = v142;
  v142(v143, 1, 1, v514);
  v523(v139, v525, v99);
  v144 = &v139[v137[5]];
  v145 = v519;
  v146 = v516;
  v493 = v136;
  v492 = v135;
  v135(v144, v519, v516);
  v147 = v137[6];
  v148 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v452 = v489;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  v150 = *(v149 - 1);
  v151 = *(v150 + 56);
  v489 = v149;
  v488 = v151;
  v486 = v150 + 56;
  (v151)(&v139[v147], 0, 1);
  v152 = *(v134 + 8);
  v512 = v134 + 8;
  v485 = v152;
  v152(v145, v146);
  v526 = v99;
  v521(v525, v99);
  v139[v137[9]] = 0;
  v153 = v507;
  sub_1CFDCB868();
  v484 = v154;
  v155 = *(v154 + 48);
  v156 = v480;
  sub_1CFDA6A04(v153, v480, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
  *&v156[v155] = 7;
  swift_storeEnumTagMultiPayload();
  v157 = v456;
  v158 = [v456 maximum];
  v159 = [v158 _unit];

  v160 = [v157 maximum];
  [v160 _value];
  v162 = v161;

  v163 = [v157 minimum];
  [v163 _value];
  v165 = v164;

  v166 = v518;
  v167 = [v518 quantityWithUnit:v159 doubleValue:(v162 - v165) * 0.25];

  v168 = v457;
  if ([v157 containsQuantity_])
  {
    v169 = v168;
    v170 = v444;
    sub_1CFE306B4();
    v171 = v515;
    v172 = *(v515 + 20);
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v173 = v157;
    sub_1CFE306B4();
    v174 = *(v171 + 24);
    v175 = v167;
    v176 = v513;
    sub_1CFE306B4();
    v177 = v170 + *(v171 + 28);
    v166 = v518;
    sub_1CFE306B4();

    sub_1CFDF7218(v507, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v178 = v487;
    sub_1CFDF742C(v170, v487, type metadata accessor for SleepingSampleBaseline);
    v179 = 0;
  }

  else
  {

    sub_1CFDF7218(v153, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v179 = 1;
    v171 = v515;
    v176 = v513;
    v178 = v487;
  }

  v180 = *(v176 + 56);
  v513 = v176 + 56;
  (v180)(v178, v179, 1, v171);
  v181 = v504;
  v182 = *(v504 + 24);
  v183 = v474;
  v487 = v180;
  (v180)(v474 + v182, 1, 1, v171);
  sub_1CFDF742C(v479, v183, type metadata accessor for SleepingSampleAggregate);
  sub_1CFDF742C(v480, v183 + *(v181 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  sub_1CFDF7360(v178, v183 + v182, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v184 = v526;
  v523(v472, v520, v526);
  v185 = v459;
  sub_1CFDA6A04(v460, v459, &qword_1EDC32CA0, MEMORY[0x1E69E5F90], sub_1CFDA7600);
  sub_1CFDF7494(v185, v473);
  v186 = v461;
  sub_1CFDA6A04(v183 + *(v511 + 28), v461, &qword_1EDC32C78, MEMORY[0x1E6968130], sub_1CFDF71C4);
  v187 = v453;
  v188 = v497;
  v189 = (*(v453 + 48))(v186, 1, v497);
  v190 = v475;
  if (v189 == 1)
  {
    sub_1CFDF7218(v186, &qword_1EDC32C78, MEMORY[0x1E6968130], sub_1CFDF71C4);
    v191 = 1;
  }

  else
  {
    sub_1CFE2FFD4();
    (*(v187 + 8))(v186, v188);
    v191 = 0;
  }

  v508(v190, v191, 1, v514);
  result = [v496 _countPerMinuteUnit];
  v192 = v462[2];
  if (!v192)
  {
    goto LABEL_38;
  }

  v193 = v495 % v192;
  if (v193 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v194 = result;
  v507 = v148;
  v479 = [v166 quantityWithUnit:result doubleValue:*&v462[v193 + 4]];
  v480 = [v166 quantityWithUnit:v194 doubleValue:54.0];
  v195 = [v166 quantityWithUnit:v194 doubleValue:50.0];
  v196 = [v166 quantityWithUnit:v194 doubleValue:58.0];
  v197 = [objc_allocWithZone(MEMORY[0x1E696C350]) initWithMinimum:v195 maximum:v196 isMinimumInclusive:1 isMaximumInclusive:1];

  v198 = v506;
  sub_1CFE30744();
  v199 = v525;
  v200 = v520;
  sub_1CFE30764();
  v201 = v521;
  v521(v198, v184);
  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v462 = v194;
  v202 = v499;
  v203 = v184;
  v204 = v509;
  v509(v499, v199, v203);
  v205 = v501;
  v523(v202 + *(v501 + 48), v200, v526);
  v461 = v197;
  v206 = v500;
  sub_1CFDF7278(v202, v500, sub_1CFDA7460);
  v207 = *(v205 + 48);
  v208 = v476;
  v204(v476, v206, v526);
  v201(v206 + v207, v526);
  sub_1CFDF742C(v202, v206, sub_1CFDA7460);
  v204(v208 + *(v498 + 36), v206 + *(v205 + 48), v526);
  v201(v206, v526);
  v523(v525, v200, v526);
  v209 = v516;
  v210 = v492;
  v492(v519, v505, v516);
  v211 = v511;
  v212 = *(v511 + 28);
  sub_1CFE307D4();
  v213 = v477;
  sub_1CFE2FFF4();
  v490(v213 + v212, 0, 1, v497);
  v508((v213 + v211[8]), 1, 1, v514);
  v214 = v525;
  v523(v213, v525, v526);
  v215 = v519;
  v210(v213 + v211[5], v519, v209);
  v216 = v461;
  v217 = v211[6];
  v479 = v479;
  sub_1CFE306B4();
  v488(v213 + v217, 0, 1, v489);
  v218 = v526;
  v485(v215, v209);
  v521(v214, v218);
  v219 = 0x1E83D0000uLL;
  *(v213 + v211[9]) = 0;
  v220 = *(v484 + 48);
  v221 = v478;
  sub_1CFDA6A04(v208, v478, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
  *&v221[v220] = 7;
  swift_storeEnumTagMultiPayload();
  v222 = [v216 maximum];
  v223 = [v222 _unit];

  v224 = [v216 maximum];
  [v224 _value];
  v226 = v225;

  v227 = [v216 minimum];
  [v227 _value];
  v229 = v228;

  v230 = [v518 quantityWithUnit:v223 doubleValue:(v226 - v229) * 0.25];
  v231 = v480;
  if ([v216 containsQuantity_])
  {
    v232 = v231;
    v233 = v443;
    sub_1CFE306B4();
    v234 = *(v515 + 20);
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v235 = v216;
    sub_1CFE306B4();
    v236 = *(v515 + 24);
    v237 = v230;
    v238 = v515;
    sub_1CFE306B4();
    v239 = v233 + *(v238 + 28);
    v219 = 0x1E83D0000;
    v218 = v526;
    sub_1CFE306B4();

    sub_1CFDF7218(v476, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v240 = v454;
    sub_1CFDF742C(v233, v454, type metadata accessor for SleepingSampleBaseline);
    v241 = 0;
  }

  else
  {

    sub_1CFDF7218(v476, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v241 = 1;
    v238 = v515;
    v240 = v454;
  }

  v242 = v487;
  (v487)(v240, v241, 1, v238);
  v243 = v504;
  v244 = *(v504 + 24);
  v245 = v469;
  v242(v469 + v244, 1, 1, v238);
  sub_1CFDF742C(v477, v245, type metadata accessor for SleepingSampleAggregate);
  sub_1CFDF742C(v478, v245 + *(v243 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  sub_1CFDF7360(v240, v245 + v244, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  result = [v496 percentUnit];
  v246 = *(v455 + 16);
  v247 = v521;
  if (!v246)
  {
    goto LABEL_41;
  }

  v248 = v495 % v246;
  if (v248 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v249 = result;
  v250 = v518;
  v480 = [v518 *(v219 + 3296)];
  v251 = [v250 *(v219 + 3296)];
  v252 = [v250 *(v219 + 3296)];
  v253 = [v250 *(v219 + 3296)];
  v254 = [objc_allocWithZone(MEMORY[0x1E696C350]) initWithMinimum:v252 maximum:v253 isMinimumInclusive:1 isMaximumInclusive:1];

  v255 = v506;
  sub_1CFE30744();
  v256 = v525;
  v257 = v520;
  sub_1CFE30764();
  v247(v255, v218);
  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v479 = v249;
  v477 = v254;
  v258 = v499;
  v259 = v256;
  v260 = v218;
  v478 = v251;
  v261 = v218;
  v262 = v509;
  v509(v499, v259, v260);
  v263 = v501;
  v523(v258 + *(v501 + 48), v257, v261);
  v264 = v500;
  sub_1CFDF7278(v258, v500, sub_1CFDA7460);
  v265 = *(v263 + 48);
  v266 = v483;
  v262();
  v267 = (v264 + v265);
  v268 = v521;
  v521(v267, v261);
  sub_1CFDF742C(v258, v264, sub_1CFDA7460);
  (v262)(&v266[*(v498 + 36)], v264 + *(v263 + 48), v261);
  v268(v264, v261);
  v269 = v525;
  v523(v525, v520, v261);
  v270 = v492;
  v492(v519, v505, v516);
  v271 = v511;
  v272 = *(v511 + 28);
  sub_1CFE307D4();
  v273 = v470;
  sub_1CFE2FFF4();
  v490(v273 + v272, 0, 1, v497);
  v508((v273 + v271[8]), 1, 1, v514);
  v523(v273, v269, v261);
  v274 = v519;
  v275 = v516;
  v270(v273 + v271[5], v519, v516);
  v276 = v271[6];
  v277 = v480;
  sub_1CFE306B4();
  v488(v273 + v276, 0, 1, v489);
  v278 = v274;
  v279 = v477;
  v485(v278, v275);
  v280 = v261;
  v281 = v483;
  v521(v269, v280);
  v282 = 0x1E83D0000uLL;
  *(v273 + v271[9]) = 0;
  v283 = *(v484 + 48);
  v284 = v471;
  sub_1CFDA6A04(v281, v471, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
  *(v284 + v283) = 7;
  swift_storeEnumTagMultiPayload();
  v285 = [v279 maximum];
  v286 = [v285 _unit];

  v287 = [v279 maximum];
  [v287 _value];
  v289 = v288;

  v290 = [v279 minimum];
  v291 = v478;
  [v290 _value];
  v293 = v292;

  v294 = [v518 quantityWithUnit:v286 doubleValue:(v289 - v293) * 0.25];
  if ([v279 containsQuantity_])
  {
    v295 = v291;
    v296 = v442;
    sub_1CFE306B4();
    v297 = *(v515 + 20);
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v298 = v279;
    sub_1CFE306B4();
    v299 = *(v515 + 24);
    v300 = v294;
    v301 = v515;
    sub_1CFE306B4();
    v302 = v296 + *(v301 + 28);
    v282 = 0x1E83D0000;
    sub_1CFE306B4();

    sub_1CFDF7218(v483, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v303 = v450;
    sub_1CFDF742C(v296, v450, type metadata accessor for SleepingSampleBaseline);
    v304 = 0;
  }

  else
  {

    sub_1CFDF7218(v281, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v304 = 1;
    v301 = v515;
    v303 = v450;
  }

  v305 = v487;
  (v487)(v303, v304, 1, v301);
  v306 = v504;
  v307 = *(v504 + 24);
  v308 = v468;
  v305(v468 + v307, 1, 1, v301);
  sub_1CFDF742C(v470, v308, type metadata accessor for SleepingSampleAggregate);
  sub_1CFDF742C(v471, v308 + *(v306 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  sub_1CFDF7360(v303, v308 + v307, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  result = [v496 _countPerMinuteUnit];
  v309 = *(v451 + 16);
  v310 = v521;
  if (!v309)
  {
    goto LABEL_44;
  }

  v311 = v495 % v309;
  if (v311 < 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v312 = result;
  v313 = v518;
  v314 = [v518 *(v282 + 3296)];
  v315 = [v313 *(v282 + 3296)];
  v316 = [v313 *(v282 + 3296)];
  v317 = [v313 *(v282 + 3296)];
  v483 = [objc_allocWithZone(MEMORY[0x1E696C350]) initWithMinimum:v316 maximum:v317 isMinimumInclusive:1 isMaximumInclusive:1];

  v318 = v506;
  sub_1CFE30744();
  v319 = v525;
  v320 = v520;
  sub_1CFE30764();
  v321 = v318;
  v322 = v526;
  v310(v321, v526);
  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v480 = v312;
  v479 = v315;
  v323 = v499;
  v324 = v509;
  v509(v499, v319, v322);
  v325 = v501;
  v523(v323 + *(v501 + 48), v320, v526);
  v478 = v314;
  v326 = v500;
  sub_1CFDF7278(v323, v500, sub_1CFDA7460);
  v327 = *(v325 + 48);
  v328 = v310;
  v329 = v482;
  v324();
  v328(v326 + v327, v526);
  sub_1CFDF742C(v323, v326, sub_1CFDA7460);
  (v324)(v329 + *(v498 + 36), v326 + *(v325 + 48), v526);
  v328(v326, v526);
  v523(v525, v320, v526);
  v330 = v516;
  v331 = v492;
  v492(v519, v505, v516);
  v332 = v511;
  v333 = *(v511 + 28);
  sub_1CFE307D4();
  v334 = v466;
  v335 = v479;
  sub_1CFE2FFF4();
  v490(v334 + v333, 0, 1, v497);
  v508((v334 + v332[8]), 1, 1, v514);
  v336 = v525;
  v523(v334, v525, v526);
  v337 = v519;
  v331(v334 + v332[5], v519, v330);
  v338 = v332[6];
  v478 = v478;
  sub_1CFE306B4();
  v488(v334 + v338, 0, 1, v489);
  v339 = v330;
  v340 = v526;
  v485(v337, v339);
  v521(v336, v340);
  v341 = 0x1E83D0000uLL;
  *(v334 + v332[9]) = 0;
  v342 = v335;
  v343 = v482;
  v344 = *(v484 + 48);
  v345 = v467;
  sub_1CFDA6A04(v482, v467, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
  *(v345 + v344) = 7;
  swift_storeEnumTagMultiPayload();
  v346 = v483;
  v347 = [v483 maximum];
  v348 = [v347 _unit];

  v349 = [v346 maximum];
  [v349 _value];
  v351 = v350;

  v352 = [v346 minimum];
  [v352 _value];
  v354 = v353;

  v355 = [v518 quantityWithUnit:v348 doubleValue:(v351 - v354) * 0.25];
  if ([v346 containsQuantity_])
  {
    v356 = v342;
    v357 = v440;
    sub_1CFE306B4();
    v358 = *(v515 + 20);
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v359 = v346;
    sub_1CFE306B4();
    v360 = *(v515 + 24);
    v361 = v355;
    v362 = v515;
    sub_1CFE306B4();
    v363 = v357 + *(v362 + 28);
    v341 = 0x1E83D0000;
    sub_1CFE306B4();

    sub_1CFDF7218(v482, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v364 = v448;
    sub_1CFDF742C(v357, v448, type metadata accessor for SleepingSampleBaseline);
    v365 = 0;
    v366 = v449;
  }

  else
  {

    sub_1CFDF7218(v343, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v365 = 1;
    v366 = v449;
    v364 = v448;
    v362 = v515;
  }

  v367 = v487;
  (v487)(v364, v365, 1, v362);
  v368 = v504;
  v369 = *(v504 + 24);
  v370 = v465;
  v367(v465 + v369, 1, 1, v362);
  sub_1CFDF742C(v466, v370, type metadata accessor for SleepingSampleAggregate);
  sub_1CFDF742C(v467, v370 + *(v368 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  sub_1CFDF7360(v364, v370 + v369, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  result = [v496 _changeInDegreeCelsiusUnit];
  v371 = *(v366 + 16);
  v373 = v520;
  v372 = v521;
  if (!v371)
  {
    goto LABEL_47;
  }

  v374 = v495 % v371;
  if (v374 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v375 = result;
  v376 = v518;
  v483 = [v518 *(v341 + 3296)];
  v495 = [v376 *(v341 + 3296)];
  v377 = [v376 *(v341 + 3296)];
  v378 = v372;
  v379 = [v376 *(v341 + 3296)];
  v496 = [objc_allocWithZone(MEMORY[0x1E696C350]) initWithMinimum:v377 maximum:v379 isMinimumInclusive:1 isMaximumInclusive:1];

  v380 = v378;
  v381 = v506;
  sub_1CFE30744();
  v382 = v525;
  v383 = v373;
  sub_1CFE30764();
  v384 = v526;
  v380(v381, v526);
  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v506 = v375;
  v385 = v499;
  v386 = v382;
  v387 = v380;
  v388 = v509;
  v509(v499, v386, v384);
  v389 = v501;
  v523(v385 + *(v501 + 48), v383, v384);
  v390 = v384;
  v391 = v500;
  sub_1CFDF7278(v385, v500, sub_1CFDA7460);
  v392 = *(v389 + 48);
  v393 = v481;
  v388(v481, v391, v390);
  v387(v391 + v392, v390);
  sub_1CFDF742C(v385, v391, sub_1CFDA7460);
  v388(v393 + *(v498 + 36), v391 + *(v389 + 48), v390);
  v387(v391, v390);
  v523(v525, v520, v390);
  v394 = v492;
  v492(v519, v505, v516);
  v395 = v511;
  v396 = *(v511 + 28);
  sub_1CFE307D4();
  v397 = v463;
  v398 = v390;
  sub_1CFE2FFF4();
  v490(v397 + v396, 0, 1, v497);
  v508((v397 + v395[8]), 1, 1, v514);
  v399 = v525;
  v523(v397, v525, v390);
  v400 = v519;
  v401 = v516;
  v394(v397 + v395[5], v519, v516);
  v402 = v395[6];
  v524 = v483;
  sub_1CFE306B4();
  v488(v397 + v402, 0, 1, v489);
  v403 = v521;
  v485(v400, v401);
  v403(v399, v398);
  v404 = v395[9];
  v405 = v481;
  *(v397 + v404) = 0;
  v406 = *(v484 + 48);
  v407 = v464;
  sub_1CFDA6A04(v405, v464, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
  *(v407 + v406) = 7;
  swift_storeEnumTagMultiPayload();
  v408 = v496;
  v409 = [v496 maximum];
  v410 = [v409 _unit];

  v411 = [v408 maximum];
  [v411 _value];
  v413 = v412;

  v414 = [v408 minimum];
  [v414 _value];
  v416 = v415;

  v417 = [v518 quantityWithUnit:v410 doubleValue:(v413 - v416) * 0.25];
  v418 = v495;
  if ([v408 containsQuantity_])
  {
    v419 = v418;
    v420 = v441;
    sub_1CFE306B4();
    v421 = v515;
    v422 = *(v515 + 20);
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v423 = v496;
    sub_1CFE306B4();
    v424 = *(v421 + 24);
    v425 = v417;
    sub_1CFE306B4();
    v426 = v420 + *(v421 + 28);
    sub_1CFE306B4();

    sub_1CFDF7218(v481, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v427 = v398;
    v521(v520, v398);
    v428 = v446;
    sub_1CFDF742C(v420, v446, type metadata accessor for SleepingSampleBaseline);
    v429 = 0;
    v430 = v447;
    v431 = v475;
  }

  else
  {

    sub_1CFDF7218(v405, &qword_1EDC32C90, MEMORY[0x1E69E66A8], sub_1CFDA7600);
    v427 = v398;
    v403(v520, v398);
    v429 = 1;
    v421 = v515;
    v430 = v447;
    v431 = v475;
    v428 = v446;
  }

  v432 = v487;
  (v487)(v428, v429, 1, v421);
  v433 = v504;
  v434 = *(v504 + 24);
  v435 = v445;
  v432(&v445[v434], 1, 1, v421);
  sub_1CFDF742C(v463, v435, type metadata accessor for SleepingSampleAggregate);
  sub_1CFDF742C(v464, v435 + *(v433 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  sub_1CFDF7360(v428, v435 + v434, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v436 = type metadata accessor for SleepingSampleDaySummary();
  v437 = v474;
  sub_1CFDF7278(v474, &v430[v436[12]], type metadata accessor for SleepingSampleBaselineComparison);
  v438 = v436[6];
  v508(&v430[v438], 1, 1, v514);
  v439 = &v430[v436[7]];
  *v439 = 0;
  v439[8] = 1;
  v509(v430, v472, v427);
  sub_1CFDF72E0(v473, &v430[v436[5]]);
  sub_1CFDF7360(v431, &v430[v438], &qword_1EDC32C70, MEMORY[0x1E6969530]);
  sub_1CFDF742C(v469, &v430[v436[8]], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDF742C(v468, &v430[v436[9]], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDF742C(v465, &v430[v436[10]], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDF742C(v435, &v430[v436[11]], type metadata accessor for SleepingSampleBaselineComparison);
  return sub_1CFDF73CC(v437, type metadata accessor for SleepingSampleBaselineComparison);
}

void sub_1CFDF6B34()
{
  if (!qword_1EC509B78)
  {
    sub_1CFDF6B98();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC509B78);
    }
  }
}

void sub_1CFDF6B98()
{
  if (!qword_1EC509B80)
  {
    sub_1CFE307E4();
    sub_1CFDA78C8(&unk_1EDC31E78);
    sub_1CFDF32F4();
    v0 = sub_1CFE308A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509B80);
    }
  }
}

void sub_1CFDF6C2C()
{
  if (!qword_1EC509B88)
  {
    sub_1CFE307E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC509B88);
    }
  }
}

uint64_t sub_1CFDF6C98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDA7600(255, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    sub_1CFDA78C8(&unk_1EDC31E78);
    sub_1CFDF32F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDF6D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFE307E4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  sub_1CFDF6B34();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 56);
  sub_1CFDF7278(a1, v16, sub_1CFDF6B98);
  sub_1CFDF7278(a2, &v16[v17], sub_1CFDF6B98);
  v18 = v5[6];
  LODWORD(a1) = v18(v16, 1, v4);
  v19 = v18(&v16[v17], 1, v4);
  v20 = v19;
  if (a1 == 1)
  {
    if (v19 == 1)
    {
      return 0;
    }
  }

  else
  {
    v18 = v5[4];
    v18(v11, v16, v4);
    if (v20 != 1)
    {
LABEL_11:
      v18(v9, &v16[v17], v4);
      sub_1CFDA78C8(&unk_1EDC31E78);
      sub_1CFE30CA4();
      v27 = v5[1];
      v27(v9, v4);
      v27(v11, v4);
      return v29;
    }

    sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    v23 = *(v22 + 36);
    sub_1CFDA78C8(&unk_1EDC31E78);
    sub_1CFE30CA4();
    v24 = v5[1];
    ++v5;
    v24(v11, v4);
    result = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      return result;
    }

    __break(1u);
  }

  (v5[4])(v11, &v16[v17], v4);
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v9 = *(v25 + 36);
  sub_1CFDA78C8(&unk_1EDC31E78);
  sub_1CFE30CA4();
  v26 = v5[1];
  ++v5;
  v26(v11, v4);
  result = v29 - 1;
  if (__OFSUB__(v29, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1CFDF70CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1CFDF3254(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1CFDF7128(uint64_t a1, uint64_t a2)
{
  sub_1CFDF3254(0, &qword_1EC509B90, &qword_1EC509B98, MEMORY[0x1E69E5FD0], MEMORY[0x1E69E6E50]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFDF71C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1CFDF7218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1CFDF7278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDF72E0(uint64_t a1, uint64_t a2)
{
  sub_1CFDA7600(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDF7360(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1CFDF71C4(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDF73CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDF742C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDF7494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[0] = a2;
  sub_1CFDA7460();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - v9;
  v11 = sub_1CFE307E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v29 - v17;
  v19 = MEMORY[0x1E69E5F90];
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v21 = *(v20 + 36);
  v29[1] = 1;
  sub_1CFDA78C8(&unk_1EDC31E78);
  sub_1CFE30C94();
  (*(v12 + 16))(v16, a1, v11);
  sub_1CFDAB334(a1, &qword_1EDC32CA0, v19, sub_1CFDA7600);
  v22 = *(v12 + 32);
  v22(v10, v16, v11);
  v22(&v10[*(v4 + 56)], v18, v11);
  sub_1CFDF8F80(v10, v8, sub_1CFDA7460);
  v23 = *(v4 + 56);
  v24 = v29[0];
  v22(v29[0], v8, v11);
  v25 = *(v12 + 8);
  v25(&v8[v23], v11);
  sub_1CFDF8FE8(v10, v8, sub_1CFDA7460);
  v26 = *(v4 + 56);
  sub_1CFDA7600(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v22((v24 + *(v27 + 36)), &v8[v26], v11);
  return (v25)(v8, v11);
}

uint64_t TrainingLoadSummaryQueryDescriptor.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TrainingLoadSummaryQueryDescriptor() + 20);
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TrainingLoadSummaryQueryDescriptor.gregorianCalendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TrainingLoadSummaryQueryDescriptor() + 20);
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TrainingLoadSummaryQueryDescriptor.init(morningIndexRange:gregorianCalendar:typeOfLoad:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  sub_1CFDF137C(a1, a4);
  SummaryQueryDescriptor = type metadata accessor for TrainingLoadSummaryQueryDescriptor();
  v9 = *(SummaryQueryDescriptor + 20);
  v10 = sub_1CFE304B4();
  result = (*(*(v10 - 8) + 32))(a4 + v9, a2, v10);
  v12 = 2 * (v6 == 0);
  if (!v7)
  {
    v12 = 1;
  }

  *(a4 + *(SummaryQueryDescriptor + 24)) = v12;
  return result;
}

uint64_t TrainingLoadSummaryQueryDescriptor.currentAndUpdatingDaySummaryCollections(for:)@<X0>(void *a1@<X0>, void (*a2)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))@<X8>)
{
  v59 = a2;
  v65 = a1;
  SummaryQueryDescriptor = type metadata accessor for TrainingLoadSummaryQueryDescriptor();
  v3 = SummaryQueryDescriptor - 8;
  v64 = *(SummaryQueryDescriptor - 8);
  v63 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](SummaryQueryDescriptor);
  v61 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFE304B4();
  v6 = *(v5 - 8);
  v68 = v5;
  v69 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1E69E5F90];
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v55 - v11;
  v62 = MEMORY[0x1E69E66A8];
  sub_1CFDA7600(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = &v55 - v15;
  sub_1CFDAC46C(0, &qword_1EDC31898, MEMORY[0x1E69E8798]);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v55 - v20;
  sub_1CFDAC46C(0, &qword_1EDC31888, MEMORY[0x1E69E87A0]);
  v66 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v55 - v27;
  type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8790], v17);
  v58 = v28;
  sub_1CFE30B44();
  (*(v18 + 8))(v21, v17);
  v59 = sub_1CFDA7600;
  v29 = v60;
  sub_1CFDAB1D0(v60, v12, &qword_1EDC32CA0, v56, sub_1CFDA7600);
  sub_1CFDF7494(v12, v70);
  v30 = *(v3 + 28);
  v55 = *(v69 + 16);
  v55(v67, v29 + v30, v68);
  LODWORD(v56) = *(v29 + *(v3 + 32));
  v31 = v61;
  sub_1CFDF8F80(v29, v61, type metadata accessor for TrainingLoadSummaryQueryDescriptor);
  v32 = v23;
  v33 = *(v23 + 16);
  v34 = v66;
  v33(v26, v28, v66);
  v35 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v36 = *(v32 + 80);
  v57 = v32;
  v37 = (v63 + v36 + v35) & ~v36;
  v38 = swift_allocObject();
  sub_1CFDF8FE8(v31, v38 + v35, type metadata accessor for TrainingLoadSummaryQueryDescriptor);
  (*(v32 + 32))(v38 + v37, v26, v34);
  SummaryQuery = type metadata accessor for TrainingLoadSummaryQuery();
  v40 = objc_allocWithZone(SummaryQuery);
  v41 = &v40[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  *v41 = 0;
  v41[1] = 0;
  *&v40[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery] = MEMORY[0x1E69E7CC0];
  v42 = v62;
  v43 = v59;
  sub_1CFDAB1D0(v70, &v40[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_morningIndexRange], &qword_1EDC32C90, v62, v59);
  v44 = v67;
  v45 = v68;
  v55(&v40[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_gregorianCalendar], v67, v68);
  v40[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_typeOfDataRequested] = v56;
  v40[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_continueAfterInitialResults] = 1;
  *v41 = sub_1CFDA821C;
  v41[1] = v38;
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);

  v46 = sub_1CFE30A74();
  v71.receiver = v40;
  v71.super_class = SummaryQuery;
  v47 = objc_msgSendSuper2(&v71, sel_initWithQueryDescriptors_, v46);

  (*(v69 + 8))(v44, v45);
  sub_1CFDAB334(v70, &qword_1EDC32C90, v42, v43);
  v48 = swift_allocObject();
  v49 = v65;
  *(v48 + 16) = v47;
  *(v48 + 24) = v49;
  v50 = v47;
  v51 = v49;
  v52 = v66;
  v53 = v58;
  sub_1CFE30B54();
  [v51 executeQuery_];

  return (*(v57 + 8))(v53, v52);
}

id sub_1CFDF80DC(uint64_t a1, void *a2, void *a3)
{
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v5 = sub_1CFE30624();
  __swift_project_value_buffer(v5, qword_1EDC32578);
  v6 = a2;
  v7 = sub_1CFE30604();
  v8 = sub_1CFE30C04();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_1CFDAAF6C(0xD000000000000022, 0x80000001CFE35CF0, &v14);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&dword_1CFDA3000, v7, v8, "[%{public}s] Stopping training load query for stream termination: %@", v9, 0x16u);
    sub_1CFDAB090(v10);
    MEMORY[0x1D3876FF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3876FF0](v11, -1, -1);
    MEMORY[0x1D3876FF0](v9, -1, -1);
  }

  return [a3 stopQuery_];
}

uint64_t TrainingLoadSummaryQueryDescriptor.currentDaySummaryCollection(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CFDF82C4, 0, 0);
}

uint64_t sub_1CFDF82C4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  *v3 = v0;
  v3[1] = sub_1CFDF83C4;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000021, 0x80000001CFE394F0, sub_1CFDF8AC0, v1, SampleDaySummaryCollection);
}

uint64_t sub_1CFDF83C4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CFDF8500, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1CFDF8500()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_1CFDF8564(uint64_t a1, uint64_t a2, void *a3)
{
  v54 = a1;
  v55 = a3;
  sub_1CFDAC46C(0, &qword_1EDC318B8, MEMORY[0x1E69E8548]);
  v51 = v4;
  v5 = *(v4 - 8);
  v52 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v43 - v6;
  SummaryQueryDescriptor = type metadata accessor for TrainingLoadSummaryQueryDescriptor();
  v8 = SummaryQueryDescriptor - 8;
  v49 = *(SummaryQueryDescriptor - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](SummaryQueryDescriptor);
  v47 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFE304B4();
  v53 = *(v10 - 8);
  v11 = v53;
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v14;
  v15 = MEMORY[0x1E69E5F90];
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v43 - v18;
  v48 = MEMORY[0x1E69E66A8];
  sub_1CFDA7600(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v43 - v22;
  v56 = &v43 - v22;
  v46 = sub_1CFDA7600;
  sub_1CFDAB1D0(a2, v19, &qword_1EDC32CA0, v15, sub_1CFDA7600);
  sub_1CFDF7494(v19, v23);
  v24 = *(v8 + 28);
  v44 = *(v11 + 16);
  v25 = v14;
  v26 = v10;
  v44(v25, a2 + v24, v10);
  v45 = *(a2 + *(v8 + 32));
  v27 = v47;
  sub_1CFDF8F80(a2, v47, type metadata accessor for TrainingLoadSummaryQueryDescriptor);
  v28 = v50;
  v29 = v51;
  (*(v5 + 16))(v50, v54, v51);
  v30 = (*(v49 + 80) + 24) & ~*(v49 + 80);
  v31 = (v9 + *(v5 + 80) + v30) & ~*(v5 + 80);
  v32 = swift_allocObject();
  v33 = v55;
  *(v32 + 16) = v55;
  sub_1CFDF8FE8(v27, v32 + v30, type metadata accessor for TrainingLoadSummaryQueryDescriptor);
  (*(v5 + 32))(v32 + v31, v28, v29);
  SummaryQuery = type metadata accessor for TrainingLoadSummaryQuery();
  v35 = objc_allocWithZone(SummaryQuery);
  v36 = &v35[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  *v36 = 0;
  v36[1] = 0;
  *&v35[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery] = MEMORY[0x1E69E7CC0];
  v37 = v48;
  v38 = v46;
  sub_1CFDAB1D0(v56, &v35[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_morningIndexRange], &qword_1EDC32C90, v48, v46);
  v39 = v43;
  v44(&v35[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_gregorianCalendar], v43, v26);
  v35[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_typeOfDataRequested] = v45;
  v35[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_continueAfterInitialResults] = 0;
  *v36 = sub_1CFDF8E74;
  v36[1] = v32;
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);
  v40 = v33;

  v41 = sub_1CFE30A74();
  v57.receiver = v35;
  v57.super_class = SummaryQuery;
  v42 = objc_msgSendSuper2(&v57, sel_initWithQueryDescriptors_, v41);

  (*(v53 + 8))(v39, v26);
  sub_1CFDAB334(v56, &qword_1EDC32C90, v37, v38);
  [v40 executeQuery_];
}

void sub_1CFDF8AF0()
{
  sub_1CFDA7600(319, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  if (v0 <= 0x3F)
  {
    sub_1CFE304B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CFDF8B98(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23[0] = a6;
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v12 = *(*(SampleDaySummaryCollection - 8) + 64);
  MEMORY[0x1EEE9AC00](SampleDaySummaryCollection);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAC46C(0, &qword_1EDC31A00, MEMORY[0x1E69E75F0]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v21 = (v23 - v20);
  [a4 stopQuery_];
  if (a3)
  {
    *v21 = a2;
  }

  else
  {
    sub_1CFDAB1D0(a5, v21, &qword_1EDC32CA0, MEMORY[0x1E69E5F90], sub_1CFDA7600);
    *(v21 + *(SampleDaySummaryCollection + 20)) = a2;
  }

  swift_storeEnumTagMultiPayload();
  sub_1CFDAB1D0(v21, v19, &qword_1EDC31A00, MEMORY[0x1E69E75F0], sub_1CFDAC46C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23[1] = *v19;
    sub_1CFDAB240(a2, a3 & 1);
    sub_1CFDAC46C(0, &qword_1EDC318B8, MEMORY[0x1E69E8548]);
    sub_1CFE30B14();
  }

  else
  {
    sub_1CFDF8FE8(v19, v14, type metadata accessor for TrainingLoadSampleDaySummaryCollection);
    sub_1CFDAB240(a2, a3 & 1);
    sub_1CFDAC46C(0, &qword_1EDC318B8, MEMORY[0x1E69E8548]);
    sub_1CFE30B24();
  }

  return sub_1CFDAB334(v21, &qword_1EDC31A00, MEMORY[0x1E69E75F0], sub_1CFDAC46C);
}

uint64_t sub_1CFDF8E74(uint64_t a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for TrainingLoadSummaryQueryDescriptor() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  sub_1CFDAC46C(0, &qword_1EDC318B8, MEMORY[0x1E69E8548]);
  v11 = *(v3 + 16);
  v12 = v3 + ((v9 + *(*(v10 - 8) + 80)) & ~*(*(v10 - 8) + 80));

  return sub_1CFDF8B98(a1, a2, a3 & 1, v11, v3 + v8, v12);
}

uint64_t sub_1CFDF8F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDF8FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDF9080()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](qword_1CFE35FB0[v1]);
  return sub_1CFE31184();
}

uint64_t sub_1CFDF9108()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](qword_1CFE35FB0[v1]);
  return sub_1CFE31184();
}

HealthBalance::SleepingSampleDataType_optional __swiftcall SleepingSampleDataType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x4030201050005uLL >> (8 * rawValue);
  if (rawValue >= 7)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SleepingSampleDataType.SortOrder.hashValue.getter()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

char *static SleepingSampleDataType.allCasesSortOrder.getter()
{
  v1 = &unk_1F4C8A3D8;
  sub_1CFDF94F8(&v1);
  return v1;
}

uint64_t SleepingSampleDataType.sampleType.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      sub_1CFDA6E64(0, &qword_1EDC31E70, 0x1E696C370);
      v2 = MEMORY[0x1E696BD70];
    }

    else
    {
      sub_1CFDA6E64(0, &qword_1EDC31E70, 0x1E696C370);
      v2 = MEMORY[0x1E696BD30];
    }
  }

  else if (v1 == 2)
  {
    sub_1CFDA6E64(0, &qword_1EDC31E70, 0x1E696C370);
    v2 = MEMORY[0x1E696BD58];
  }

  else
  {
    if (v1 != 3)
    {
      sub_1CFDA6E64(0, &qword_1EDC31868, 0x1E696BF90);
      return MEMORY[0x1D38762D0](*MEMORY[0x1E696B698]);
    }

    sub_1CFDA6E64(0, &qword_1EDC31E70, 0x1E696C370);
    v2 = MEMORY[0x1E696BC58];
  }

  return MEMORY[0x1D38762E0](*v2);
}

uint64_t sub_1CFDF94F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CFDFA3B8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1CFDF9780(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_1CFDF9568()
{
  result = qword_1EDC32460;
  if (!qword_1EDC32460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32460);
  }

  return result;
}

unint64_t sub_1CFDF95EC()
{
  result = qword_1EC509BB0;
  if (!qword_1EC509BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509BB0);
  }

  return result;
}

uint64_t sub_1CFDF9670(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDF96C0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CFDF96C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CFE30AE4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1CFDF972C()
{
  result = qword_1EDC31960;
  if (!qword_1EDC31960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31960);
  }

  return result;
}

uint64_t sub_1CFDF9780(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CFE31064();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1CFE30AB4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1CFDF9930(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1CFDF9878(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CFDF9878(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + a3);
    result = 0xBu >> v7;
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *(v9 - 1);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          if (((3u >> v7) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if (((0xFu >> v7) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v10 == 1)
      {
        if (((1u >> v7) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v10 != 2 || (result & 1) == 0)
      {
LABEL_4:
        ++a3;
        ++v5;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v10;
      *--v9 = v7;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CFDF9930(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = v4;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_122:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_160;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_154:
      result = sub_1CFDFA2AC(v11);
      v11 = result;
    }

    v79 = *(v11 + 2);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = *&v11[16 * v79];
        v81 = *&v11[16 * v79 + 24];
        sub_1CFDF9F94((*a3 + v80), (*a3 + *&v11[16 * v79 + 16]), *a3 + v81, v5);
        if (v6)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_147;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1CFDFA2AC(v11);
        }

        if (v79 - 2 >= *(v11 + 2))
        {
          goto LABEL_148;
        }

        v82 = &v11[16 * v79];
        *v82 = v80;
        *(v82 + 1) = v81;
        result = sub_1CFDFA220(v79 - 1);
        v79 = *(v11 + 2);
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_158;
    }
  }

  v9 = a4;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10++;
    if (v10 < v8)
    {
      v13 = *(*a3 + v10);
      v14 = *(*a3 + v12);
      v15 = 1u >> v13;
      v16 = 0xBu >> v13;
      v17 = 3u >> v13;
      if (v14 != 3)
      {
        v17 = 0xFu >> v13;
      }

      if (v14 != 2)
      {
        LOBYTE(v16) = v17;
      }

      if (!*(*a3 + v12))
      {
        LOBYTE(v15) = 0;
      }

      if (*(*a3 + v12) > 1u)
      {
        LOBYTE(v15) = v16;
      }

      v18 = v12 + 2;
      if (v12 + 2 < v8)
      {
        v19 = v8 - 1;
        while (1)
        {
          result = v10;
          v10 = v18;
          v21 = v13;
          v13 = *(*a3 + v10);
          if (v21 <= 1)
          {
            if (v21)
            {
              if ((v15 & 1) == ((0x1Eu >> v13) & 1))
              {
                v19 = v10 - 1;
                if (v15)
                {
                  goto LABEL_34;
                }

                goto LABEL_42;
              }
            }

            else if (v15)
            {
              v19 = v10 - 1;
              if (v10 < v12)
              {
                goto LABEL_151;
              }

              goto LABEL_35;
            }
          }

          else
          {
            if (v21 == 2)
            {
              v20 = 20;
            }

            else if (v21 == 3)
            {
              v20 = 28;
            }

            else
            {
              v20 = 16;
            }

            if ((v15 & 1) == ((v20 >> v13) & 1))
            {
              v19 = result;
              if ((v15 & 1) == 0)
              {
                goto LABEL_42;
              }

              goto LABEL_34;
            }
          }

          v18 = v10 + 1;
          if (v8 == v10 + 1)
          {
            v10 = v8;
            if (v15)
            {
              goto LABEL_34;
            }

            goto LABEL_42;
          }
        }
      }

      v19 = v10;
      v10 = v12 + 2;
      if (v15)
      {
LABEL_34:
        if (v10 < v12)
        {
          goto LABEL_151;
        }

LABEL_35:
        if (v12 <= v19)
        {
          v22 = v10 - 1;
          v23 = v12;
          do
          {
            if (v23 != v22)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_157;
              }

              v26 = *(v25 + v23);
              *(v25 + v23) = *(v25 + v22);
              *(v25 + v22) = v26;
            }
          }

          while (++v23 < v22--);
          v8 = a3[1];
        }
      }
    }

LABEL_42:
    if (v10 < v8)
    {
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_150;
      }

      if (v10 - v12 < v9)
      {
        if (__OFADD__(v12, v9))
        {
          goto LABEL_152;
        }

        if (v12 + v9 < v8)
        {
          v8 = v12 + v9;
        }

        if (v8 < v12)
        {
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (v10 != v8)
        {
          break;
        }
      }
    }

LABEL_69:
    if (v10 < v12)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CFDDDD20(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v5 = *(v11 + 2);
    v34 = *(v11 + 3);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      result = sub_1CFDDDD20((v34 > 1), v5 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v35;
    v36 = &v11[16 * v5];
    *(v36 + 4) = v12;
    *(v36 + 5) = v10;
    v37 = *v84;
    if (!*v84)
    {
      goto LABEL_159;
    }

    if (v5)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v11 + 4);
          v40 = *(v11 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_89:
          if (v42)
          {
            goto LABEL_138;
          }

          v55 = &v11[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_141;
          }

          v61 = &v11[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_144;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_145;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        v65 = &v11[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_103:
        if (v60)
        {
          goto LABEL_140;
        }

        v68 = &v11[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_143;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_110:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
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
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*a3)
        {
          goto LABEL_156;
        }

        v77 = *&v11[16 * v76 + 32];
        v5 = *&v11[16 * v38 + 40];
        sub_1CFDF9F94((*a3 + v77), (*a3 + *&v11[16 * v38 + 32]), *a3 + v5, v37);
        if (v6)
        {
        }

        if (v5 < v77)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1CFDFA2AC(v11);
        }

        if (v76 >= *(v11 + 2))
        {
          goto LABEL_135;
        }

        v78 = &v11[16 * v76];
        *(v78 + 4) = v77;
        *(v78 + 5) = v5;
        result = sub_1CFDFA220(v38);
        v35 = *(v11 + 2);
        if (v35 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v11[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_136;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_137;
      }

      v50 = &v11[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_139;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_142;
      }

      if (v54 >= v46)
      {
        v72 = &v11[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_146;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_89;
    }

LABEL_3:
    v8 = a3[1];
    v9 = a4;
    if (v10 >= v8)
    {
      goto LABEL_122;
    }
  }

  v27 = *a3;
  v28 = (*a3 + v10);
  v29 = v12 - v10;
LABEL_52:
  v30 = *(v27 + v10);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    result = *(v32 - 1);
    if (*(v32 - 1) > 2u)
    {
      if (result == 3)
      {
        if (((3u >> v30) & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else if (((0xFu >> v30) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (result == 1)
    {
      if (((1u >> v30) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (result != 2 || ((0xBu >> v30) & 1) == 0)
    {
LABEL_51:
      ++v10;
      ++v28;
      --v29;
      if (v10 != v8)
      {
        goto LABEL_52;
      }

      v10 = v8;
      goto LABEL_69;
    }

    if (!v27)
    {
      break;
    }

    *v32 = result;
    *--v32 = v30;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}

uint64_t sub_1CFDF9F94(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < (a3 - __src))
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        v12 = *v4;
        if (v12 <= 1)
        {
          if (*v4 && ((1u >> v11) & 1) != 0)
          {
LABEL_16:
            v13 = v6 + 1;
            if (v7 >= v6 && v7 < v13)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (v12 == 2)
        {
          if ((0xBu >> v11))
          {
            goto LABEL_16;
          }
        }

        else if (v12 == 3)
        {
          if ((3u >> v11))
          {
            goto LABEL_16;
          }
        }

        else if ((0xFu >> v11))
        {
          goto LABEL_16;
        }

        v14 = v4 + 1;
        v11 = *v4;
        v13 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v14)
          {
            goto LABEL_25;
          }
        }

LABEL_24:
        *v7 = v11;
LABEL_25:
        ++v7;
        if (v4 < v10)
        {
          v6 = v13;
          if (v13 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_61;
    }

LABEL_60:
    if (v6 >= v10)
    {
      goto LABEL_61;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_59:
    if (v6 != v4)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  do
  {
    v15 = v6 - 1;
    --v5;
    v16 = v10;
    while (1)
    {
      v18 = *--v16;
      v17 = v18;
      v19 = *v15;
      if (v19 <= 1)
      {
        break;
      }

      if (v19 == 2)
      {
        if ((0xBu >> v17))
        {
          goto LABEL_51;
        }
      }

      else if (v19 == 3)
      {
        if ((3u >> v17))
        {
          goto LABEL_51;
        }
      }

      else if ((0xFu >> v17))
      {
        goto LABEL_51;
      }

LABEL_48:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = v17;
      }

      --v5;
      v10 = v16;
      if (v16 <= v4)
      {
        v10 = v16;
        goto LABEL_59;
      }
    }

    if (!*v15 || ((1u >> v17) & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = v19;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v15 > v7);
  v6 = v15;
  if (v15 == v4)
  {
    goto LABEL_60;
  }

LABEL_61:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_1CFDFA220(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CFDFA2AC(v3);
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

char *sub_1CFDFA2C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFDFA3CC();
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1CFDFA3CC()
{
  if (!qword_1EC509820)
  {
    sub_1CFDDDF94();
    v0 = sub_1CFE31084();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509820);
    }
  }
}

void SleepingSampleAnalysisFeatureStatusManager.status.getter(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager);
  sub_1CFE30504();

  v3 = *(v1 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1CFDFA640(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

void sub_1CFDFA534(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager);
  sub_1CFE30504();

  v4 = *(v3 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1CFDFA640(v4 + v5, a2);
  os_unfair_lock_unlock((v4 + v6));
}

uint64_t sub_1CFDFA640(uint64_t a1, uint64_t a2)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*SleepingSampleAnalysisFeatureStatusManager._unitTest_didReceiveObserverUpdate.getter())()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  swift_getKeyPath();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_1CFDFAC18(&v6);
  os_unfair_lock_unlock((v1 + v3));

  if (!v6)
  {
    return 0;
  }

  v5 = v6;
  *(swift_allocObject() + 16) = v5;
  return sub_1CFDFAC94;
}

uint64_t sub_1CFDFA800@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = SleepingSampleAnalysisFeatureStatusManager._unitTest_didReceiveObserverUpdate.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1CFDFDA28;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1CFDFA870(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    a1 = swift_allocObject();
    a1[2] = v4;
    a1[3] = v3;
    v5 = sub_1CFDFE24C;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*a2 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  MEMORY[0x1EEE9AC00](a1);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  sub_1CFDA81D0(v4);
  os_unfair_lock_lock((v6 + v8));
  sub_1CFDFE250(v6 + v7);
  os_unfair_lock_unlock((v6 + v8));
  return sub_1CFDAC3D4(v5);
}

uint64_t SleepingSampleAnalysisFeatureStatusManager._unitTest_didReceiveObserverUpdate.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1CFDFAD2C(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
  return sub_1CFDAC3D4(a1);
}

uint64_t sub_1CFDFAA5C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1CFDFE268;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1CFDA81D0(v4);
}

uint64_t sub_1CFDFAAF0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1CFDFE24C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0) + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_1CFDA81D0(v3);
  result = sub_1CFDAC3D4(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*sub_1CFDFAB9C())()
{
  swift_getAtKeyPath();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1CFDFE24C;
}

uint64_t sub_1CFDFAC18@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    *(result + 16) = v7;
    *(result + 24) = v8;
    v9 = sub_1CFDFE268;
  }

  else
  {
    v9 = 0;
  }

  *a1 = v9;
  a1[1] = result;
  return result;
}

uint64_t sub_1CFDFAC94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1CFDFACBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  sub_1CFDA81D0(a2);
  result = sub_1CFDAC3D4(v6);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t (*SleepingSampleAnalysisFeatureStatusManager._unitTest_didReceiveObserverUpdate.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = SleepingSampleAnalysisFeatureStatusManager._unitTest_didReceiveObserverUpdate.getter();
  a1[1] = v3;
  return sub_1CFDFAD90;
}

uint64_t sub_1CFDFAD90(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v7 = *a1;
  v8 = a1[1];
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  if (a2)
  {
    sub_1CFDA81D0(v2);
    os_unfair_lock_lock((v3 + v5));
    sub_1CFDFE250(v3 + v4);
    os_unfair_lock_unlock((v3 + v5));
    sub_1CFDAC3D4(v2);
  }

  else
  {
    os_unfair_lock_lock((v3 + v5));
    sub_1CFDFE250(v3 + v4);
    os_unfair_lock_unlock((v3 + v5));
  }

  return sub_1CFDAC3D4(v2);
}

id SleepingSampleAnalysisFeatureStatusManager.__allocating_init(healthStore:observationQueue:)(uint64_t a1, void *a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v6 = objc_allocWithZone(v2);
  v7 = sub_1CFDFD408(a2, sub_1CFDAFB44, v5);

  return v7;
}

id SleepingSampleAnalysisFeatureStatusManager.__allocating_init(healthStore:observationQueue:contextConstraintOverride:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  v8 = objc_allocWithZone(v3);
  v9 = sub_1CFDFD408(a2, sub_1CFDFD6A8, v7);

  return v9;
}

id SleepingSampleAnalysisFeatureStatusManager.__allocating_init(observationQueue:makeFeatureStatusProviderForFeatureIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1CFDFD408(a1, a2, a3);

  return v8;
}

id SleepingSampleAnalysisFeatureStatusManager.init(observationQueue:makeFeatureStatusProviderForFeatureIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CFDFD408(a1, a2, a3);

  return v4;
}

Swift::Void __swiftcall SleepingSampleAnalysisFeatureStatusManager.stopObserving()()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v2 = sub_1CFE30624();
  __swift_project_value_buffer(v2, qword_1EDC32578);
  v3 = sub_1CFE30604();
  v4 = sub_1CFE30C04();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    v7 = sub_1CFE31294();
    v9 = sub_1CFDAAF6C(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1CFDA3000, v3, v4, "[%{public}s] Ending observation", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D3876FF0](v6, -1, -1);
    MEMORY[0x1D3876FF0](v5, -1, -1);
  }

  v10 = sub_1CFDA5DE4();
  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_14:

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v16 = v1;
    sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager);
    sub_1CFE304F4();

    return;
  }

  v12 = sub_1CFE30EE4();
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1D3876480](i, v11);
      }

      else
      {
        v14 = *(v11 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v14 unregisterObserver_];
      swift_unknownObjectRelease();
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1CFDFB33C(uint64_t a1)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - v4;
  *(a1 + *(type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0) + 20)) = 0;
  sub_1CFDA5CF8(MEMORY[0x1E69E7CC0], &unk_1EDC317D8, &qword_1EDC32528, 0x1E696C170);
  type metadata accessor for HKFeatureIdentifier(0);
  sub_1CFDA6E64(0, &qword_1EDC32528, 0x1E696C170);
  sub_1CFDA5A24(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier);
  sub_1CFDA5A24(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier);
  sub_1CFDA5A24(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier);
  sub_1CFE30724();
  v6 = type metadata accessor for SleepingSampleAnalysisFeatureStatus();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  return sub_1CFDFDD60(v5, a1);
}

void SleepingSampleAnalysisFeatureStatusManager.featureStatusProviding(_:didUpdate:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 featureIdentifier];
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v5 = sub_1CFE30624();
  __swift_project_value_buffer(v5, qword_1EDC32578);
  v6 = v4;
  v7 = sub_1CFE30604();
  v8 = sub_1CFE30C04();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446466;
    v11 = sub_1CFE31294();
    v13 = sub_1CFDAAF6C(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_1CFE30924();
    v16 = sub_1CFDAAF6C(v14, v15, &v21);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1CFDA3000, v7, v8, "[%{public}s] Received status update for %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3876FF0](v10, -1, -1);
    MEMORY[0x1D3876FF0](v9, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v17);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v21 = v2;
  sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager);
  sub_1CFE304F4();

  v19 = SleepingSampleAnalysisFeatureStatusManager._unitTest_didReceiveObserverUpdate.getter();
  if (v19)
  {
    v20 = v19;
    v19();

    sub_1CFDAC3D4(v20);
  }

  else
  {
  }
}

void sub_1CFDFB850(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v38 - v12;
  if (*(a1 + *(type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0) + 20)) == 1)
  {
    v39 = a4;
    v40 = a3;
    sub_1CFDFA640(a1, v13);
    v14 = type metadata accessor for SleepingSampleAnalysisFeatureStatus();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v16(v13, 1, v14);
    sub_1CFDFDCD4(v13);
    if (v17 == 1)
    {
      v38[3] = sub_1CFDA5CF8(MEMORY[0x1E69E7CC0], &unk_1EDC317D8, &qword_1EDC32528, 0x1E696C170);
      type metadata accessor for HKFeatureIdentifier(0);
      v38[2] = v18;
      v38[1] = sub_1CFDA6E64(0, &qword_1EDC32528, 0x1E696C170);
      v38[0] = sub_1CFDA5A24(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier);
      sub_1CFDA5A24(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier);
      sub_1CFDA5A24(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier);
      sub_1CFE30724();
      (*(v15 + 56))(v11, 0, 1, v14);
      sub_1CFDFDD60(v11, a1);
    }

    if (!v16(a1, 1, v14))
    {
      v19 = v40;
      v20 = v39;
      sub_1CFDFDDF4();
      v21 = sub_1CFE306E4();
      v23 = v22;
      v24 = *v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *v23;
      *v23 = 0x8000000000000000;
      sub_1CFDFC9C4(v20, v19, isUniquelyReferenced_nonNull_native);

      *v23 = v42;
      v21(v41, 0);
    }
  }

  else
  {
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v26 = sub_1CFE30624();
    __swift_project_value_buffer(v26, qword_1EDC32578);
    v27 = a3;
    v28 = sub_1CFE30604();
    v29 = sub_1CFE30C04();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41[0] = v31;
      *v30 = 136446466;
      v32 = sub_1CFE31294();
      v34 = sub_1CFDAAF6C(v32, v33, v41);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v35 = sub_1CFE30924();
      v37 = sub_1CFDAAF6C(v35, v36, v41);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_1CFDA3000, v28, v29, "[%{public}s] Ignoring received update for %{public}s; not observing", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3876FF0](v31, -1, -1);
      MEMORY[0x1D3876FF0](v30, -1, -1);
    }
  }
}

id SleepingSampleAnalysisFeatureStatusManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepingSampleAnalysisFeatureStatusManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CFDFBEE8(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager);
  sub_1CFE30504();

  v4 = *(v3 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1CFDFA640(v4 + v5, a1);
  os_unfair_lock_unlock((v4 + v6));
}

uint64_t sub_1CFDFC03C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CFDFC088(a1, a2);
  sub_1CFDFC1B8(&unk_1F4C8A188);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1CFDFC088(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1CFDFC2A4(v5, 0);
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

  result = sub_1CFE30E14();
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
        v10 = sub_1CFE309B4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1CFDFC2A4(v10, 0);
        result = sub_1CFE30DA4();
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

uint64_t sub_1CFDFC1B8(uint64_t result)
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

  result = sub_1CFDFC30C(result, v12, 1, v3);
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

void *sub_1CFDFC2A4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1CFDFDF18();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1CFDFC30C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFDFDF18();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1CFDFC3F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1CFE30D34();

  return sub_1CFDFC51C(a1, v5);
}

unint64_t sub_1CFDFC438(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1CFE31144();
  MEMORY[0x1D3876810](a1);
  v4 = sub_1CFE31184();

  return sub_1CFDFC5E4(a1, v4);
}

unint64_t sub_1CFDFC4A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1CFE31144();
  sub_1CFE30984();
  v6 = sub_1CFE31184();

  return sub_1CFDFC654(a1, a2, v6);
}

unint64_t sub_1CFDFC51C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1CFDEAA80(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D3876400](v9, a1);
      sub_1CFDC3BCC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1CFDFC5E4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1CFDFC654(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1CFE310B4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1CFDFC70C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1CFDFDA50();
  v36 = a2;
  result = sub_1CFE30F04();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_1CFDFDB80(v25, v37);
      }

      else
      {
        sub_1CFDFDB1C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1CFE31144();
      sub_1CFE30984();
      result = sub_1CFE31184();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1CFDFDB80(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

id sub_1CFDFC9C4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1CFDA54DC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1CFDA5674(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1CFDA54DC(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for HKFeatureIdentifier(0);
        sub_1CFE310F4();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1CFDFCCA0();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

void *sub_1CFDFCB2C()
{
  v1 = v0;
  sub_1CFDAFA2C(0, &qword_1EDC317F8, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1CFE30EF4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

id sub_1CFDFCCA0()
{
  v1 = v0;
  sub_1CFDA5944(0, &unk_1EDC317D8, &qword_1EDC32528, 0x1E696C170);
  v2 = *v0;
  v3 = sub_1CFE30EF4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_1CFDFCE0C()
{
  v1 = v0;
  sub_1CFDFDA50();
  v2 = *v0;
  v3 = sub_1CFE30EF4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1CFDFDB1C(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1CFDFDB80(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1CFDFCFA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1CFDFDC14(0, &unk_1EC509C80);
    v3 = sub_1CFE30F14();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CFDFDB98(v4, v13, &qword_1EC5095A8);
      result = sub_1CFDFC3F4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1CFDFDC04(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CFDFD0EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1CFDFE11C();
    v3 = sub_1CFE30F14();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = sub_1CFDFC438(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CFDFD1C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1CFDAFA2C(0, &qword_1EDC317F8, MEMORY[0x1E69E6EC8]);
    v3 = sub_1CFE30F14();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_1CFDA54DC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CFDFD2D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1CFDFDC14(0, &qword_1EC509C70);
    v3 = sub_1CFE30F14();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CFDFDB98(v4, &v13, &qword_1EC509C78);
      v5 = v13;
      v6 = v14;
      result = sub_1CFDFC4A4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1CFDFDC04(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1CFDFD408(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState;
  v14 = type metadata accessor for SleepingSampleAnalysisFeatureStatus();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v12[*(v9 + 28)] = 0;
  v15 = &v12[*(v9 + 32)];
  sub_1CFDFDF68();
  *v15 = 0;
  *(v15 + 1) = 0;
  v17 = *(v16 + 52);
  v18 = (*(v16 + 48) + 3) & 0x1FFFFFFFCLL;
  v19 = swift_allocObject();
  *(v19 + ((*(*v19 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1CFDFDFD0(v12, v19 + *(*v19 + *MEMORY[0x1E69E6B68] + 16));
  *&v3[v13] = v19;
  sub_1CFE30514();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;

  v21 = sub_1CFDFD1C8(MEMORY[0x1E69E7CC0]);
  sub_1CFDFE034();
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = sub_1CFDB007C;
  v23[4] = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1CFDA605C;
  *(v24 + 24) = v23;
  v25 = &v3[OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_featureStatusProviderForFeatureIdentifier];
  *v25 = sub_1CFDA6068;
  v25[1] = v24;
  *&v3[OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_observationQueue] = a1;
  v28.receiver = v3;
  v28.super_class = ObjectType;
  v26 = a1;
  return objc_msgSendSuper2(&v28, sel_init);
}

id sub_1CFDFD6A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = objc_allocWithZone(MEMORY[0x1E696C178]);

  return [v5 initWithFeatureIdentifier:a1 healthStore:v4 contextConstraint:v3];
}

uint64_t sub_1CFDFD744(uint64_t a1)
{
  result = sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CFDFD7E0()
{
  result = sub_1CFE30524();
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

void sub_1CFDFD8EC()
{
  sub_1CFDA5C94(319, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1CFDA5C94(319, &qword_1EDC319F0, sub_1CFDFD9D8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1CFDFD9D8()
{
  result = qword_1EDC319F8;
  if (!qword_1EDC319F8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDC319F8);
  }

  return result;
}

uint64_t sub_1CFDFDA28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1CFDFDA50()
{
  if (!qword_1EC509C60)
  {
    sub_1CFDFDAB8();
    v0 = sub_1CFE30F24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509C60);
    }
  }
}

unint64_t sub_1CFDFDAB8()
{
  result = qword_1EC509C68;
  if (!qword_1EC509C68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC509C68);
  }

  return result;
}

uint64_t sub_1CFDFDB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CFDFDB80(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1CFDFDB98(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1CFDFDC70(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_1CFDFDC04(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1CFDFDC14(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CFE30F24();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1CFDFDC70(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1CFDFDCD4(uint64_t a1)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFDFDD60(uint64_t a1, uint64_t a2)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CFDFDDF4()
{
  if (!qword_1EDC32550)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_1CFDA6E64(255, &qword_1EDC32528, 0x1E696C170);
    sub_1CFDA5A24(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier);
    sub_1CFDA5A24(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier);
    sub_1CFDA5A24(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier);
    v0 = sub_1CFE30714();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC32550);
    }
  }
}

void sub_1CFDFDF18()
{
  if (!qword_1EC509C90)
  {
    v0 = sub_1CFE31084();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509C90);
    }
  }
}

void sub_1CFDFDF68()
{
  if (!qword_1EDC31A58)
  {
    type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(255);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1CFE30E04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC31A58);
    }
  }
}

uint64_t sub_1CFDFDFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFDFE034()
{
  if (!qword_1EDC31A50)
  {
    sub_1CFDAFA2C(255, &qword_1EDC31AA8, MEMORY[0x1E69E5E28]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1CFE30E04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC31A50);
    }
  }
}

unint64_t sub_1CFDFE0B8()
{
  result = qword_1EDC31A70;
  if (!qword_1EDC31A70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC31A70);
  }

  return result;
}

void sub_1CFDFE11C()
{
  if (!qword_1EC509CA0)
  {
    sub_1CFDFE188();
    sub_1CFDFE1E0();
    v0 = sub_1CFE30F24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509CA0);
    }
  }
}

void sub_1CFDFE188()
{
  if (!qword_1EC509CA8)
  {
    v0 = sub_1CFE30BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509CA8);
    }
  }
}

unint64_t sub_1CFDFE1E0()
{
  result = qword_1EC509CB0;
  if (!qword_1EC509CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509CB0);
  }

  return result;
}

uint64_t SleepingSampleChangeNotification.init(id:day:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X8>)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  *a5 = a1;
  *(a5 + 1) = a2;
  v9 = type metadata accessor for SleepingSampleChangeNotification();
  v10 = *(v9 + 20);
  v11 = sub_1CFE307E4();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a3, v11);
  v13 = &a5[*(v9 + 24)];
  *v13 = v7;
  v13[8] = v8;
  return result;
}

uint64_t type metadata accessor for SleepingSampleChangeNotification()
{
  result = qword_1EC509D70;
  if (!qword_1EC509D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepingSampleChangeNotification.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SleepingSampleChangeNotification.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SleepingSampleChangeNotification.day.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepingSampleChangeNotification() + 20);
  v4 = sub_1CFE307E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepingSampleChangeNotification.day.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepingSampleChangeNotification() + 20);
  v4 = sub_1CFE307E4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SleepingSampleChangeNotification.content.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SleepingSampleChangeNotification();
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t SleepingSampleChangeNotification.content.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for SleepingSampleChangeNotification();
  v5 = v1 + *(result + 24);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t static SleepingSampleChangeNotification.Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CFDFE624(uint64_t a1)
{
  v2 = sub_1CFDFEDAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDFE660(uint64_t a1)
{
  v2 = sub_1CFDFEDAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDFE69C(uint64_t a1)
{
  v2 = sub_1CFDFED58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDFE6D8(uint64_t a1)
{
  v2 = sub_1CFDFED58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDFE714()
{
  v1 = 0x447365676E616863;
  if (*v0 != 1)
  {
    v1 = 0x6F4370756D726177;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365676E616863;
  }
}

uint64_t sub_1CFDFE784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFE0212C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFDFE7AC(uint64_t a1)
{
  v2 = sub_1CFDFEE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDFE7E8(uint64_t a1)
{
  v2 = sub_1CFDFEE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDFE824(uint64_t a1)
{
  v2 = sub_1CFDFED04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDFE860(uint64_t a1)
{
  v2 = sub_1CFDFED04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleChangeNotification.Content.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  sub_1CFE018C0(0, &qword_1EC509CC0, sub_1CFDFED04, &type metadata for SleepingSampleChangeNotification.Content.WarmupCompleteCodingKeys, MEMORY[0x1E69E6F58]);
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v29 - v7;
  sub_1CFE018C0(0, &qword_1EC509CD0, sub_1CFDFED58, &type metadata for SleepingSampleChangeNotification.Content.ChangesDemoCodingKeys, v4);
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v29 - v10;
  sub_1CFE018C0(0, &qword_1EC509CE0, sub_1CFDFEDAC, &type metadata for SleepingSampleChangeNotification.Content.ChangesCodingKeys, v4);
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v29 - v13;
  sub_1CFE018C0(0, &qword_1EC509CF0, sub_1CFDFEE00, &type metadata for SleepingSampleChangeNotification.Content.CodingKeys, v4);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v29 - v18;
  v20 = *v2;
  LODWORD(v4) = *(v2 + 8);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDFEE00();
  sub_1CFE311A4();
  if (v4 == 1)
  {
    if (v20)
    {
      v42 = 2;
      sub_1CFDFED04();
      v22 = v33;
      sub_1CFE30FF4();
      v24 = v34;
      v23 = v35;
    }

    else
    {
      v41 = 1;
      sub_1CFDFED58();
      v22 = v30;
      sub_1CFE30FF4();
      v24 = v31;
      v23 = v32;
    }

    (*(v24 + 8))(v22, v23);
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v25 = v16;
    v40 = 0;
    sub_1CFDFEDAC();
    v26 = v36;
    sub_1CFE30FF4();
    v39 = v20;
    sub_1CFDFEE54();
    v27 = v38;
    sub_1CFE31054();
    (*(v37 + 8))(v26, v27);
    return (*(v25 + 8))(v19, v15);
  }
}

unint64_t sub_1CFDFED04()
{
  result = qword_1EC509CC8;
  if (!qword_1EC509CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509CC8);
  }

  return result;
}

unint64_t sub_1CFDFED58()
{
  result = qword_1EC509CD8;
  if (!qword_1EC509CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509CD8);
  }

  return result;
}

unint64_t sub_1CFDFEDAC()
{
  result = qword_1EC509CE8;
  if (!qword_1EC509CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509CE8);
  }

  return result;
}

unint64_t sub_1CFDFEE00()
{
  result = qword_1EC509CF8;
  if (!qword_1EC509CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509CF8);
  }

  return result;
}

unint64_t sub_1CFDFEE54()
{
  result = qword_1EC509D00;
  if (!qword_1EC509D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D00);
  }

  return result;
}

uint64_t SleepingSampleChangeNotification.Content.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  return MEMORY[0x1D3876810](v1);
}

uint64_t SleepingSampleChangeNotification.Content.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CFE31144();
  if (v2 == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t SleepingSampleChangeNotification.Content.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFE018C0(0, &qword_1EC509D08, sub_1CFDFED04, &type metadata for SleepingSampleChangeNotification.Content.WarmupCompleteCodingKeys, MEMORY[0x1E69E6F48]);
  v44 = v4;
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v43 - v6;
  sub_1CFE018C0(0, &qword_1EC509D10, sub_1CFDFED58, &type metadata for SleepingSampleChangeNotification.Content.ChangesDemoCodingKeys, v3);
  v46 = v7;
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v43 - v9;
  sub_1CFE018C0(0, &qword_1EC509D18, sub_1CFDFEDAC, &type metadata for SleepingSampleChangeNotification.Content.ChangesCodingKeys, v3);
  v11 = v10;
  v45 = *(v10 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - v13;
  sub_1CFE018C0(0, &qword_1EC509D20, sub_1CFDFEE00, &type metadata for SleepingSampleChangeNotification.Content.CodingKeys, v3);
  v16 = v15;
  v52 = *(v15 - 8);
  v17 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1CFDFEE00();
  v22 = v53;
  sub_1CFE31194();
  if (!v22)
  {
    v23 = v48;
    v24 = v49;
    v53 = v11;
    v25 = v50;
    v26 = v51;
    v27 = sub_1CFE30FE4();
    v28 = (2 * *(v27 + 16)) | 1;
    v55 = v27;
    v56 = v27 + 32;
    v57 = 0;
    v58 = v28;
    v29 = sub_1CFDB4610();
    if (v29 == 3 || v57 != v58 >> 1)
    {
      v31 = v19;
      v32 = sub_1CFE30DF4();
      swift_allocError();
      v34 = v33;
      sub_1CFDCB7AC();
      v36 = *(v35 + 48);
      *v34 = &type metadata for SleepingSampleChangeNotification.Content;
      sub_1CFE30F74();
      sub_1CFE30DD4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v52 + 8))(v31, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        if (v29 == 1)
        {
          LOBYTE(v59) = 1;
          sub_1CFDFED58();
          sub_1CFE30F64();
          v30 = v52;
          (*(v24 + 8))(v23, v46);
          (*(v30 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v41 = 0;
        }

        else
        {
          LOBYTE(v59) = 2;
          sub_1CFDFED04();
          sub_1CFE30F64();
          v40 = v52;
          (*(v26 + 8))(v25, v44);
          (*(v40 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v41 = 1;
        }

        v42 = 1;
        v38 = v47;
      }

      else
      {
        LOBYTE(v59) = 0;
        sub_1CFDFEDAC();
        sub_1CFE30F64();
        v38 = v47;
        sub_1CFDFF714();
        v39 = v53;
        sub_1CFE30FD4();
        (*(v45 + 8))(v14, v39);
        (*(v52 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v42 = 0;
        v41 = v59;
      }

      *v38 = v41;
      *(v38 + 8) = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_1CFDFF5E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CFE31144();
  if (v2 == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDFF654()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  return MEMORY[0x1D3876810](v1);
}

uint64_t sub_1CFDFF6A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CFE31144();
  if (v2 == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

unint64_t sub_1CFDFF714()
{
  result = qword_1EC509D28;
  if (!qword_1EC509D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D28);
  }

  return result;
}

uint64_t sub_1CFDFF798(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CFDFF7D8()
{
  v1 = 7954788;
  if (*v0 != 1)
  {
    v1 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1CFDFF820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFE02250(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFDFF848(uint64_t a1)
{
  v2 = sub_1CFE01818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDFF884(uint64_t a1)
{
  v2 = sub_1CFE01818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleChangeNotification.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFE018C0(0, &qword_1EC509D30, sub_1CFE01818, &type metadata for SleepingSampleChangeNotification.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE01818();
  sub_1CFE311A4();
  v12 = *v3;
  v13 = v3[1];
  v23 = 0;
  sub_1CFE31024();
  if (!v2)
  {
    v14 = type metadata accessor for SleepingSampleChangeNotification();
    v15 = *(v14 + 20);
    v22 = 1;
    sub_1CFE307E4();
    sub_1CFDADC7C(&qword_1EDC318C8, MEMORY[0x1E696B418]);
    sub_1CFE31054();
    v16 = v3 + *(v14 + 24);
    v17 = *v16;
    LOBYTE(v16) = v16[8];
    v19 = v17;
    v20 = v16;
    v21 = 2;
    sub_1CFE0186C();
    sub_1CFE31054();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t SleepingSampleChangeNotification.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_1CFE30984();
  v4 = type metadata accessor for SleepingSampleChangeNotification();
  v5 = *(v4 + 20);
  sub_1CFE307E4();
  sub_1CFDADC7C(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  v6 = v1 + *(v4 + 24);
  v7 = *v6;
  if (v6[8] == 1)
  {
    if (v7)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  return MEMORY[0x1D3876810](v7);
}

uint64_t SleepingSampleChangeNotification.hashValue.getter()
{
  v1 = v0;
  sub_1CFE31144();
  v2 = *v0;
  v3 = v0[1];
  sub_1CFE30984();
  v4 = type metadata accessor for SleepingSampleChangeNotification();
  v5 = *(v4 + 20);
  sub_1CFE307E4();
  sub_1CFDADC7C(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  v6 = v1 + *(v4 + 24);
  v7 = *v6;
  if (v6[8] == 1)
  {
    if (v7)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  MEMORY[0x1D3876810](v7);
  return sub_1CFE31184();
}

uint64_t SleepingSampleChangeNotification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v27 = sub_1CFE307E4();
  v25 = *(v27 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE018C0(0, &qword_1EC509D48, sub_1CFE01818, &type metadata for SleepingSampleChangeNotification.CodingKeys, MEMORY[0x1E69E6F48]);
  v29 = v6;
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for SleepingSampleChangeNotification();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE01818();
  v28 = v9;
  v15 = v30;
  sub_1CFE31194();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = a1;
  v17 = v26;
  v18 = v27;
  v35 = 0;
  *v13 = sub_1CFE30FA4();
  v13[1] = v19;
  v30 = v19;
  v34 = 1;
  sub_1CFDADC7C(&qword_1EDC32108, MEMORY[0x1E696B418]);
  sub_1CFE30FD4();
  (*(v25 + 32))(v13 + *(v10 + 20), v5, v18);
  v33 = 2;
  sub_1CFE01928();
  sub_1CFE30FD4();
  (*(v17 + 8))(v28, v29);
  v20 = v32;
  v21 = v13 + *(v10 + 24);
  *v21 = v31;
  v21[8] = v20;
  sub_1CFE0197C(v13, v24);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_1CFE019E0(v13);
}

uint64_t sub_1CFE000A8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1CFE000B4(uint64_t a1)
{
  v3 = v1;
  sub_1CFE31144();
  v4 = *v1;
  v5 = v1[1];
  sub_1CFE30984();
  v6 = *(a1 + 20);
  sub_1CFE307E4();
  sub_1CFDADC7C(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  v7 = v3 + *(a1 + 24);
  v8 = *v7;
  if (v7[8] == 1)
  {
    if (v8)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  MEMORY[0x1D3876810](v8);
  return sub_1CFE31184();
}

uint64_t sub_1CFE001A0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  sub_1CFE30984();
  v7 = *(a2 + 20);
  sub_1CFE307E4();
  sub_1CFDADC7C(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  v8 = v4 + *(a2 + 24);
  v9 = *v8;
  if (v8[8] == 1)
  {
    if (v9)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  return MEMORY[0x1D3876810](v9);
}

uint64_t sub_1CFE00278(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1CFE31144();
  v5 = *v2;
  v6 = v2[1];
  sub_1CFE30984();
  v7 = *(a2 + 20);
  sub_1CFE307E4();
  sub_1CFDADC7C(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  v8 = v4 + *(a2 + 24);
  v9 = *v8;
  if (v8[8] == 1)
  {
    if (v9)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    MEMORY[0x1D3876810](0);
  }

  MEMORY[0x1D3876810](v9);
  return sub_1CFE31184();
}

HealthBalance::SleepingSampleChangeNotification::CategoryIdentifier_optional __swiftcall SleepingSampleChangeNotification.CategoryIdentifier.init(rawValue:)(Swift::String rawValue)
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

unint64_t SleepingSampleChangeNotification.CategoryIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000029;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000024;
  }

  *v0;
  return result;
}

uint64_t sub_1CFE00448(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "PluginBundle.Changes";
  v4 = 0xD000000000000029;
  if (v2 == 1)
  {
    v5 = 0xD000000000000029;
  }

  else
  {
    v5 = 0xD00000000000002BLL;
  }

  if (v2 == 1)
  {
    v6 = "PluginBundle.Changes";
  }

  else
  {
    v6 = "PluginBundle.Changes.Demo";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000024;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "cationLastSentDate";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000002BLL;
    v3 = "PluginBundle.Changes.Demo";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000024;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "cationLastSentDate";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1CFE310B4();
  }

  return v11 & 1;
}

uint64_t sub_1CFE00520()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFE005BC()
{
  *v0;
  *v0;
  sub_1CFE30984();
}

uint64_t sub_1CFE00644()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

void sub_1CFE006E8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000024;
  v3 = "PluginBundle.Changes";
  v4 = 0xD000000000000029;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000002BLL;
    v3 = "PluginBundle.Changes.Demo";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "cationLastSentDate";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t SleepingSampleChangeNotification.categoryIdentifier.getter@<X0>(char *a1@<X8>)
{
  result = type metadata accessor for SleepingSampleChangeNotification();
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  v6 = *(v4 + 8);
  if (v5)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

void SleepingSampleChangeNotification.Content.categoryIdentifier.getter(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (!*(v1 + 8))
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t SleepingSampleChangeNotification.title.getter()
{
  v1 = (v0 + *(type metadata accessor for SleepingSampleChangeNotification() + 24));
  v3 = *v1;
  v4 = *(v1 + 8);
  return SleepingSampleChangeNotification.Content.title.getter();
}

uint64_t SleepingSampleChangeNotification.Content.title.getter()
{
  v1 = sub_1CFE303F4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1CFE308D4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (*(v0 + 8) == 1)
  {
    *v0;
  }

  sub_1CFE308C4();
  v5 = sub_1CFE308F4();
  v6 = [objc_opt_self() bundleWithIdentifier_];

  sub_1CFE303E4();
  return sub_1CFE30934();
}

uint64_t SleepingSampleChangeNotification.body.getter()
{
  v1 = sub_1CFE303F4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1CFE308D4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v0 + *(type metadata accessor for SleepingSampleChangeNotification() + 24);
  if (*(v5 + 8) != 1 || !*v5)
  {
    return SleepingSampleDaySummaryDescription.primaryBody.getter();
  }

  sub_1CFE308C4();
  v6 = sub_1CFE308F4();
  v7 = [objc_opt_self() bundleWithIdentifier_];

  sub_1CFE303E4();
  return sub_1CFE30934();
}

uint64_t SleepingSampleChangeNotification.Content.body.getter()
{
  v1 = sub_1CFE303F4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1CFE308D4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (*(v0 + 8) != 1 || !*v0)
  {
    return SleepingSampleDaySummaryDescription.primaryBody.getter();
  }

  sub_1CFE308C4();
  v5 = sub_1CFE308F4();
  v6 = [objc_opt_self() bundleWithIdentifier_];

  sub_1CFE303E4();
  return sub_1CFE30934();
}

uint64_t UNUserNotificationCenter.send(_:)(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  sub_1CFDD8ED0();
  v2[46] = v3;
  v4 = *(v3 - 8);
  v2[47] = v4;
  v5 = *(v4 + 64) + 15;
  v2[48] = swift_task_alloc();
  v6 = sub_1CFE30314();
  v2[49] = v6;
  v7 = *(v6 - 8);
  v2[50] = v7;
  v8 = *(v7 + 64) + 15;
  v2[51] = swift_task_alloc();
  v9 = *(*(sub_1CFE303F4() - 8) + 64) + 15;
  v2[52] = swift_task_alloc();
  v10 = *(*(sub_1CFE308D4() - 8) + 64) + 15;
  v2[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFE00E3C, 0, 0);
}

uint64_t sub_1CFE00E3C()
{
  v1 = v0[44];
  v2 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
  v0[54] = v2;
  v3 = type metadata accessor for SleepingSampleChangeNotification();
  v4 = (v1 + *(v3 + 24));
  v38 = v3;
  v39 = *v4;
  v41 = *(v4 + 8);
  SleepingSampleChangeNotification.Content.title.getter();
  v5 = sub_1CFE308F4();

  [v2 setTitle_];

  if (*(v4 + 8) == 1)
  {
    if (*v4)
    {
      v7 = v0[52];
      v6 = v0[53];
      sub_1CFE308C4();
      v8 = sub_1CFE308F4();
      v9 = [objc_opt_self() bundleWithIdentifier_];

      sub_1CFE303E4();
      sub_1CFE30934();
    }

    else
    {
      SleepingSampleDaySummaryDescription.primaryBody.getter();
      if (!v11)
      {
LABEL_8:
        *v4;
        *v4;
        goto LABEL_9;
      }
    }

LABEL_7:
    v12 = sub_1CFE308F4();

    [v2 setBody_];

    if (*(v4 + 8) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v40 = *v4;
  SleepingSampleDaySummaryDescription.primaryBody.getter();
  if (v10)
  {
    goto LABEL_7;
  }

LABEL_9:
  v13 = v0[50];
  v14 = v0[51];
  v34 = v0[49];
  v36 = v0[48];
  v15 = v0[47];
  v35 = v0[46];
  v16 = v0[44];
  v37 = v0[45];
  v17 = sub_1CFE308F4();

  [v2 setCategoryIdentifier_];

  v18 = [objc_opt_self() soundWithAlertType_];
  [v2 setSound_];

  sub_1CFE01A3C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFE357F0;
  v20 = *MEMORY[0x1E696C8D0];
  v0[40] = sub_1CFE30924();
  v0[41] = v21;
  sub_1CFE30D54();
  v22 = MEMORY[0x1E69E6530];
  *(inited + 96) = MEMORY[0x1E69E6530];
  *(inited + 72) = 15;
  v0[42] = 0x6144746567726174;
  v0[43] = 0xE900000000000079;
  sub_1CFE30D54();
  v23 = v16 + *(v38 + 20);
  v24 = sub_1CFE307A4();
  *(inited + 168) = v22;
  *(inited + 144) = v24;
  sub_1CFDFCFA8(inited);
  swift_setDeallocating();
  sub_1CFDC3C84();
  swift_arrayDestroy();
  v25 = sub_1CFE30804();

  [v2 setUserInfo_];

  sub_1CFE302E4();
  v26 = sub_1CFE302D4();
  (*(v13 + 8))(v14, v34);
  [v2 setExpirationDate_];

  v27 = *v16;
  v28 = v16[1];
  v29 = v2;
  v30 = sub_1CFE308F4();
  v31 = [objc_opt_self() requestWithIdentifier:v30 content:v29 trigger:0];
  v0[55] = v31;

  v0[2] = v0;
  v0[3] = sub_1CFE01410;
  swift_continuation_init();
  v0[39] = v35;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 36);
  sub_1CFDAAF08();
  sub_1CFE30B04();
  (*(v15 + 32))(boxed_opaque_existential_0, v36, v35);
  v0[32] = MEMORY[0x1E69E9820];
  v0[33] = 1107296256;
  v0[34] = sub_1CFE01674;
  v0[35] = &block_descriptor_1;
  [v37 addNotificationRequest:v31 withCompletionHandler:?];
  (*(v15 + 8))(boxed_opaque_existential_0, v35);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CFE01410()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 448) = v2;
  if (v2)
  {
    v3 = sub_1CFE015C4;
  }

  else
  {
    v3 = sub_1CFE01520;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CFE01520()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 384);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1CFE015C4()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[53];
  v4 = v0[54];
  v6 = v0[51];
  v5 = v0[52];
  v7 = v0[48];
  swift_willThrow();

  v8 = v0[1];
  v9 = v0[56];

  return v8();
}

void sub_1CFE01674(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_1CFDD8ED0();
  if (a2)
  {
    v3 = a2;
    sub_1CFE30B14();
  }

  else
  {
    sub_1CFE30B24();
  }
}

uint64_t _s13HealthBalance32SleepingSampleChangeNotificationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {
    sub_1CFE307E4();
    v5 = type metadata accessor for SleepingSampleChangeNotification();
    v6 = *(v5 + 20);
    sub_1CFDADC7C(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
    if (sub_1CFE308B4())
    {
      v7 = *(v5 + 24);
      v8 = *(a1 + v7);
      v9 = *(a1 + v7 + 8);
      v10 = a2 + v7;
      v11 = *(a2 + v7);
      v12 = v10[8];
      if (v9 == 1)
      {
        if (v8)
        {
          if (v12)
          {
            return v11 != 0;
          }
        }

        else if (v12)
        {
          return v11 == 0;
        }
      }

      else
      {
        if (v8 == v11)
        {
          v14 = v12;
        }

        else
        {
          v14 = 1;
        }

        if ((v14 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

unint64_t sub_1CFE01818()
{
  result = qword_1EC509D38;
  if (!qword_1EC509D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D38);
  }

  return result;
}

unint64_t sub_1CFE0186C()
{
  result = qword_1EC509D40;
  if (!qword_1EC509D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D40);
  }

  return result;
}

void sub_1CFE018C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1CFE01928()
{
  result = qword_1EC509D50;
  if (!qword_1EC509D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D50);
  }

  return result;
}

uint64_t sub_1CFE0197C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleChangeNotification();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE019E0(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleChangeNotification();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFE01A3C()
{
  if (!qword_1EC5095A0)
  {
    sub_1CFDC3C84();
    v0 = sub_1CFE31084();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5095A0);
    }
  }
}

unint64_t sub_1CFE01A98()
{
  result = qword_1EC509D58;
  if (!qword_1EC509D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D58);
  }

  return result;
}

unint64_t sub_1CFE01B44()
{
  result = qword_1EC509D68;
  if (!qword_1EC509D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D68);
  }

  return result;
}

uint64_t sub_1CFE01BC0()
{
  result = sub_1CFE307E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1CFE01CB8()
{
  result = qword_1EC509D80;
  if (!qword_1EC509D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D80);
  }

  return result;
}

unint64_t sub_1CFE01D10()
{
  result = qword_1EC509D88;
  if (!qword_1EC509D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D88);
  }

  return result;
}

unint64_t sub_1CFE01D68()
{
  result = qword_1EC509D90;
  if (!qword_1EC509D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D90);
  }

  return result;
}

unint64_t sub_1CFE01DC0()
{
  result = qword_1EC509D98;
  if (!qword_1EC509D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509D98);
  }

  return result;
}

unint64_t sub_1CFE01E18()
{
  result = qword_1EC509DA0;
  if (!qword_1EC509DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DA0);
  }

  return result;
}

unint64_t sub_1CFE01E70()
{
  result = qword_1EC509DA8;
  if (!qword_1EC509DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DA8);
  }

  return result;
}

unint64_t sub_1CFE01EC8()
{
  result = qword_1EC509DB0;
  if (!qword_1EC509DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DB0);
  }

  return result;
}

unint64_t sub_1CFE01F20()
{
  result = qword_1EC509DB8;
  if (!qword_1EC509DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DB8);
  }

  return result;
}

unint64_t sub_1CFE01F78()
{
  result = qword_1EC509DC0;
  if (!qword_1EC509DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DC0);
  }

  return result;
}

unint64_t sub_1CFE01FD0()
{
  result = qword_1EC509DC8;
  if (!qword_1EC509DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DC8);
  }

  return result;
}

unint64_t sub_1CFE02028()
{
  result = qword_1EC509DD0;
  if (!qword_1EC509DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DD0);
  }

  return result;
}

unint64_t sub_1CFE02080()
{
  result = qword_1EC509DD8;
  if (!qword_1EC509DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DD8);
  }

  return result;
}

unint64_t sub_1CFE020D8()
{
  result = qword_1EC509DE0;
  if (!qword_1EC509DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DE0);
  }

  return result;
}

uint64_t sub_1CFE0212C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365676E616863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x447365676E616863 && a2 == 0xEB000000006F6D65 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4370756D726177 && a2 == 0xEE006574656C706DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CFE310B4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1CFE02250(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CFE310B4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

_BYTE *HealthBalanceOnboardingAnalyticsEvent.__allocating_init(action:provenance:step:)(_BYTE *a1, char *a2, char *a3)
{
  result = swift_allocObject();
  v7 = *a2;
  v8 = *a3;
  result[16] = *a1;
  result[17] = v7;
  result[18] = v8;
  return result;
}

_BYTE *HealthBalanceOnboardingAnalyticsEvent.init(action:provenance:step:)(_BYTE *a1, char *a2, char *a3)
{
  v4 = *a2;
  v5 = *a3;
  v3[16] = *a1;
  v3[17] = v4;
  v3[18] = v5;
  return v3;
}

void HealthBalanceOnboardingAnalyticsEvent.makeUnrestrictedEventPayload(with:)(void *a1)
{
  if ([a1 healthDataSource])
  {
    v4 = [a1 environmentDataSource];
    v9 = v1[16];
    v8 = v1[17];
    v7 = v1[18];
    v5 = sub_1CFE03608(v4, &v9, &v8, &v7);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = v5;

      sub_1CFE025C4(v6);
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

unint64_t sub_1CFE02570()
{
  result = qword_1EC509DE8;
  if (!qword_1EC509DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DE8);
  }

  return result;
}