uint64_t sub_1D1490D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v49 = a2;
  sub_1D1491814(0, &qword_1EE05AAB8, MEMORY[0x1E69A3778], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v36 - v7;
  v8 = sub_1D15A23F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D15A3038();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14915A4(0);
  v44 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A4148();
  v43 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(v9 + 16);
  v38 = v11;
  v16(v11, a1, v8);
  v17 = type metadata accessor for ActivitySummarySnidgetValueView();
  v18 = v49;
  v19 = v46;
  sub_1D15A3008();
  v20 = sub_1D15A3018();
  v21 = *(*(v20 - 8) + 56);
  v22 = 1;
  v21(v19, 0, 1, v20);
  v23 = v18 + *(v17 + 36);
  v24 = v42;
  if ((*(v23 + 8) & 1) == 0)
  {
    sub_1D15A3008();
    v22 = 0;
  }

  v21(v24, v22, 1, v20);
  v25 = v37;
  sub_1D15A3028();
  KeyPath = swift_getKeyPath();
  v27 = v41;
  (*(v39 + 32))(v41, v25, v40);
  v28 = v27 + *(v44 + 36);
  *v28 = KeyPath;
  *(v28 + 8) = 1;
  *(v28 + 16) = 0;
  v29 = v49;
  v47 = sub_1D14903B4();
  v48 = v30;
  MEMORY[0x1D388A330](46, 0xE100000000000000);
  v31 = 0xE800000000000000;
  v32 = 0x6573696372657845;
  if (*(v29 + 17) != 1)
  {
    v32 = 0x646E617453;
    v31 = 0xE500000000000000;
  }

  if (*(v29 + 17))
  {
    v33 = v32;
  }

  else
  {
    v33 = 1702260557;
  }

  if (*(v29 + 17))
  {
    v34 = v31;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  MEMORY[0x1D388A330](v33, v34);

  MEMORY[0x1D388A330](0x65756C6156, 0xE500000000000000);
  sub_1D1491878();
  sub_1D15A3BD8();

  sub_1D1491720(v27, sub_1D14915A4);
}

uint64_t sub_1D14911F8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1D15A38E8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1D149123C();
  return sub_1D14908B4(v1, a1 + *(v3 + 44));
}

void sub_1D149123C()
{
  if (!qword_1EE056C10)
  {
    sub_1D14912A4(255);
    v0 = sub_1D15A36D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056C10);
    }
  }
}

void sub_1D14912D8()
{
  if (!qword_1EE056B60)
  {
    sub_1D1491348(255);
    sub_1D14914A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE056B60);
    }
  }
}

void sub_1D149137C()
{
  if (!qword_1EE056BA8)
  {
    sub_1D14913DC();
    v0 = sub_1D15A3718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056BA8);
    }
  }
}

void sub_1D14913DC()
{
  if (!qword_1EE056A98)
  {
    sub_1D1491458(255, &qword_1EE059748, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v0 = sub_1D15A39C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056A98);
    }
  }
}

void sub_1D1491458(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D14914A8()
{
  if (!qword_1EE056B88)
  {
    sub_1D1491530(255, &qword_1EE056B90, sub_1D14915A4, MEMORY[0x1E697CBE8]);
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056B88);
    }
  }
}

void sub_1D1491530(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D15A3718();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D14915D8()
{
  result = qword_1EE056BB0;
  if (!qword_1EE056BB0)
  {
    sub_1D149137C();
    sub_1D1491958(&qword_1EE056AA0, sub_1D14913DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056BB0);
  }

  return result;
}

uint64_t sub_1D1491688(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D14916B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1491720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1491780(uint64_t a1, uint64_t a2)
{
  sub_1D1491814(0, &qword_1EE05AAE0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D1491814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D1491878()
{
  result = qword_1EE056BE0;
  if (!qword_1EE056BE0)
  {
    sub_1D14915A4(255);
    sub_1D1491958(&qword_1EE059368, MEMORY[0x1E69A3780]);
    sub_1D1491958(&qword_1EE056AA0, sub_1D14913DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056BE0);
  }

  return result;
}

uint64_t sub_1D1491958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D14919A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D14919B0()
{
  v0 = sub_1D15A49B8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_1D14919FC()
{
  if (!qword_1EE0569F0)
  {
    sub_1D14912A4(255);
    sub_1D1491958(&qword_1EE056948, sub_1D14912A4);
    v0 = sub_1D15A3CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0569F0);
    }
  }
}

void __swiftcall QueryConfigurationOverrides.datePredicate()(NSPredicate_optional *__return_ptr retstr)
{
  v3 = v2;
  v4 = v1;
  sub_1D1491C64();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D15A22A8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 8))(v4, v3, v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D1491CBC(v7);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v13 = objc_opt_self();
    v14 = sub_1D15A2228();
    [v13 predicateForSamplesWithinDateInterval:v14 options:0];

    (*(v9 + 8))(v12, v8);
  }
}

void sub_1D1491C64()
{
  if (!qword_1EE05B520)
  {
    sub_1D15A22A8();
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05B520);
    }
  }
}

uint64_t sub_1D1491CBC(uint64_t a1)
{
  sub_1D1491C64();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AudioExposureStatistics.leqUnitString.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AudioExposureStatistics.lastUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioExposureStatistics(0) + 32);
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D1491E14()
{
  v1 = *v0;
  v2 = 0x65756C615671656CLL;
  v3 = 0x4C73646E6F636573;
  v4 = 0x7267674173796164;
  if (v1 != 3)
  {
    v4 = 0x616470557473616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5374696E5571656CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1491EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1495900(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1491F10(uint64_t a1)
{
  v2 = sub_1D14950C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1491F4C(uint64_t a1)
{
  v2 = sub_1D14950C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioExposureStatistics.encode(to:)(void *a1)
{
  sub_1D1495118(0, &qword_1EE056380, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14950C4();
  sub_1D15A4CE8();
  v9[15] = 0;
  sub_1D15A4B18();
  if (!v1)
  {
    v9[14] = 1;
    sub_1D15A4AF8();
    v9[13] = 2;
    sub_1D15A4B18();
    v9[12] = 3;
    sub_1D15A4B28();
    type metadata accessor for AudioExposureStatistics(0);
    v9[11] = 4;
    sub_1D15A26A8();
    sub_1D149517C(&qword_1EE05B3F8);
    sub_1D15A4B38();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AudioExposureStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1D15A26A8();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1495118(0, &qword_1EE05AC78, MEMORY[0x1E69E6F48]);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for AudioExposureStatistics(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14950C4();
  v27 = v8;
  v12 = v28;
  sub_1D15A4CD8();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v9;
  v13 = v11;
  v15 = v25;
  v14 = v26;
  v33 = 0;
  sub_1D15A4A58();
  *v13 = v16;
  v32 = 1;
  *(v13 + 1) = sub_1D15A4A38();
  *(v13 + 2) = v17;
  v31 = 2;
  sub_1D15A4A58();
  v22 = v13;
  *(v13 + 3) = v18;
  v30 = 3;
  *(v22 + 4) = sub_1D15A4A68();
  v29 = 4;
  sub_1D149517C(&qword_1EE05B800);
  sub_1D15A4A78();
  (*(v15 + 8))(v27, v14);
  v19 = v22;
  (*(v23 + 32))(&v22[*(v28 + 32)], v5, v3);
  sub_1D1495ACC(v19, v24, type metadata accessor for AudioExposureStatistics);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1495390(v19, type metadata accessor for AudioExposureStatistics);
}

id AudioExposureStatistics.leqQuantity.getter()
{
  v1 = [objc_opt_self() decibelAWeightedSoundPressureLevelUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:*v0];

  return v2;
}

uint64_t AudioExposureStatistics.init(leq:duration:days:lastUpdated:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = objc_opt_self();
  v10 = [v9 decibelAWeightedSoundPressureLevelUnit];
  [a1 doubleValueForUnit_];
  v12 = v11;
  v13 = [v10 unitString];
  v14 = sub_1D15A3F38();
  v16 = v15;

  v17 = [v9 secondUnit];
  [a2 doubleValueForUnit_];
  v19 = v18;

  *a5 = v12;
  *(a5 + 1) = v14;
  *(a5 + 2) = v16;
  *(a5 + 3) = v19;
  *(a5 + 4) = a3;
  v20 = *(type metadata accessor for AudioExposureStatistics(0) + 32);
  v21 = sub_1D15A26A8();
  v22 = *(*(v21 - 8) + 32);

  return v22(&a5[v20], a4, v21);
}

uint64_t AudioExposureStatisticsQueryOperation.result.getter()
{

  sub_1D15A2D28();
}

uint64_t sub_1D14927D4()
{

  sub_1D15A2D28();
}

uint64_t sub_1D1492828(uint64_t a1)
{
  sub_1D14951C0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1495ACC(a1, v4, sub_1D14951C0);
  v7 = v4;

  sub_1D15A2D38();

  return sub_1D1495390(v4, sub_1D14951C0);
}

id sub_1D1492910()
{
  v1 = qword_1EE0578C8;
  v2 = *(v0 + qword_1EE0578C8);
  if (v2)
  {
    v3 = *(v0 + qword_1EE0578C8);
  }

  else
  {
    v4 = sub_1D1492970();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D1492970()
{
  sub_1D14952D4(0, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - v2;
  v4 = *&v0[qword_1EE0578A8];
  sub_1D1492E1C(v35);
  v31 = v35[0];
  v30 = v36;
  v28 = v38;
  v29 = v37;
  sub_1D1495240(&v0[qword_1EE057890], v3);
  v5 = [v0 name];
  if (v5)
  {
    v6 = v5;
    v27 = sub_1D15A3F38();
    v8 = v7;
  }

  else
  {
    v27 = 0;
    v8 = 0;
  }

  v9 = *&v0[qword_1EE057888];
  v10 = *&v0[qword_1EE0578B8];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  Operation = type metadata accessor for StatisticsQueryOperation();
  v13 = objc_allocWithZone(Operation);
  v14 = qword_1EE0584A0;
  sub_1D1487B04();
  v15 = swift_allocError();
  *v16 = 0;
  v33 = v15;
  v34 = 1;
  sub_1D14952D4(0, &qword_1EE0593E8, sub_1D1495B48, MEMORY[0x1E69A3DC0]);
  swift_allocObject();

  *&v13[v14] = sub_1D15A2D68();
  *&v13[qword_1EE058498] = 0;
  *&v13[qword_1EE0584B0] = v4;
  v17 = &v13[qword_1EE0584A8];
  *v17 = v31;
  *(v17 + 1) = v30;
  v18 = v28;
  v17[16] = v29;
  v17[17] = v18;
  sub_1D1495240(v3, &v13[qword_1EE0681F8]);
  *&v13[qword_1EE068200] = v9;
  *&v13[qword_1EE068210] = v10;
  v19 = &v13[qword_1EE068208];
  *v19 = sub_1D1495B3C;
  v19[1] = v11;
  v32.receiver = v13;
  v32.super_class = Operation;
  v20 = v4;
  v21 = v10;

  v22 = objc_msgSendSuper2(&v32, sel_init);
  v23 = v22;
  if (v8)
  {
    v24 = sub_1D15A3EF8();
  }

  else
  {
    v24 = 0;
  }

  [v22 setName_];

  sub_1D1495CA4(v3, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);

  return v22;
}

id sub_1D1492CF0()
{
  v1 = qword_1EE0578C0;
  v2 = *(v0 + qword_1EE0578C0);
  if (v2)
  {
    v3 = *(v0 + qword_1EE0578C0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AAE0]) init];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = sub_1D1495D78;
    v10[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D1493D34;
    v10[3] = &block_descriptor_14;
    v6 = _Block_copy(v10);

    [v4 addExecutionBlock_];
    _Block_release(v6);
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1D1492E1C(uint64_t a1@<X8>)
{
  v3 = v1 + qword_1EE0578B0;
  v4 = *(v1 + qword_1EE0578B0 + 8);
  v5 = *(v1 + qword_1EE0578A8);
  v6 = objc_opt_self();

  v7 = v5;
  v8 = [v6 _quantityTypeWithCode_];
  if (!v8)
  {

LABEL_18:
    v16 = *(v3 + 16);
    *a1 = *v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v16;
    return;
  }

  v9 = v8;
  sub_1D1453BA0(0, &qword_1EE05B458);
  v10 = sub_1D15A4598();

  if ((v10 & 1) == 0)
  {
    goto LABEL_18;
  }

  v11 = *(v4 + 2);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = -v11;
  v13 = 32;
  while (1)
  {
    if ((v13 - 32) >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_20;
    }

    v14 = v4[v13];
    if (v14 <= 4 && v4[v13] <= 2u && v14 != 1 && v14 != 2)
    {
      break;
    }

    v15 = sub_1D15A4BA8();

    if (v15)
    {
      goto LABEL_15;
    }

    ++v13;
    if (v12 + v13 == 32)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_16;
  }

LABEL_20:
  v4 = sub_1D15A1114(v4);
LABEL_16:
  if ((v13 - 32) < *(v4 + 2))
  {
    v4[v13] = 9;
    goto LABEL_18;
  }

  __break(1u);
}

id AudioExposureStatisticsQueryOperation.__allocating_init(quantityType:operationQueue:queryConfiguration:queryConfigurationOverrides:name:queryQualityOfService:healthStore:)(void *a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v39 = a7;
  v40 = a6;
  v34[1] = a5;
  v38 = a4;
  sub_1D14951C0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = objc_allocWithZone(v9);
  v37 = *a3;
  v36 = *(a3 + 1);
  v35 = *(a3 + 8);
  v18 = qword_1EE057898;
  sub_1D1487B04();
  v19 = swift_allocError();
  *v20 = 0;
  *v16 = v19;
  swift_storeEnumTagMultiPayload();
  sub_1D14952D4(0, &qword_1EE059418, sub_1D14951C0, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v17[v18] = sub_1D15A2D68();
  *&v17[qword_1EE0578C8] = 0;
  *&v17[qword_1EE0578C0] = 0;
  v21 = qword_1EE068198;
  sub_1D1487F34();
  v22 = swift_allocError();
  *v23 = 0xD00000000000005CLL;
  v23[1] = 0x80000001D15BE2C0;
  v23[2] = 0;
  *v16 = v22;
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  *&v17[v21] = sub_1D15A2D68();
  v24 = v38;
  *&v17[qword_1EE0578A8] = a1;
  *&v17[qword_1EE0578A0] = a2;
  v25 = &v17[qword_1EE0578B0];
  *v25 = v37;
  *(v25 + 1) = v36;
  *(v25 + 8) = v35;
  sub_1D1495240(v24, &v17[qword_1EE057890]);
  *&v17[qword_1EE057888] = v39;
  *&v17[qword_1EE0578B8] = a8;
  v41.receiver = v17;
  v41.super_class = v9;
  v26 = v40;
  v27 = a1;
  v28 = a2;
  v29 = a8;
  v30 = objc_msgSendSuper2(&v41, sel_init);
  v31 = v30;
  if (v26)
  {
    v32 = sub_1D15A3EF8();
  }

  else
  {
    v32 = 0;
  }

  [v30 setName_];

  sub_1D1495CA4(v24, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  return v30;
}

id AudioExposureStatisticsQueryOperation.init(quantityType:operationQueue:queryConfiguration:queryConfigurationOverrides:name:queryQualityOfService:healthStore:)(void *a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v40 = a7;
  v41 = a6;
  v35[1] = a5;
  v38 = a4;
  ObjectType = swift_getObjectType();
  sub_1D14951C0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a3;
  v37 = *(a3 + 1);
  v36 = *(a3 + 8);
  v18 = qword_1EE057898;
  sub_1D1487B04();
  v19 = swift_allocError();
  *v20 = 0;
  *v16 = v19;
  swift_storeEnumTagMultiPayload();
  sub_1D14952D4(0, &qword_1EE059418, sub_1D14951C0, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v9[v18] = sub_1D15A2D68();
  *&v9[qword_1EE0578C8] = 0;
  *&v9[qword_1EE0578C0] = 0;
  v21 = qword_1EE068198;
  sub_1D1487F34();
  v22 = swift_allocError();
  *v23 = 0xD00000000000005CLL;
  v23[1] = 0x80000001D15BE2C0;
  v23[2] = 0;
  *v16 = v22;
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  *&v9[v21] = sub_1D15A2D68();
  v24 = v37;
  v25 = v38;
  *&v9[qword_1EE0578A8] = a1;
  *&v9[qword_1EE0578A0] = a2;
  v26 = &v9[qword_1EE0578B0];
  *v26 = v17;
  *(v26 + 1) = v24;
  *(v26 + 8) = v36;
  sub_1D1495240(v25, &v9[qword_1EE057890]);
  *&v9[qword_1EE057888] = v40;
  *&v9[qword_1EE0578B8] = a8;
  v42.receiver = v9;
  v27 = v41;
  v42.super_class = ObjectType;
  v28 = a1;
  v29 = a2;
  v30 = a8;
  v31 = objc_msgSendSuper2(&v42, sel_init);
  v32 = v31;
  if (v27)
  {
    v33 = sub_1D15A3EF8();
  }

  else
  {
    v33 = 0;
  }

  [v31 setName_];

  sub_1D1495CA4(v25, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  return v31;
}

Swift::Void __swiftcall AudioExposureStatisticsQueryOperation.main()()
{
  v1 = v0;
  v2 = sub_1D15A31D8();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  sub_1D14951C0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1487B04();
  v11 = swift_allocError();
  *v12 = 2;
  *v10 = v11;
  swift_storeEnumTagMultiPayload();
  v41 = v10;

  sub_1D15A2D38();

  sub_1D1495390(v10, sub_1D14951C0);
  v13 = *&v0[qword_1EE0578A8];
  v14 = [v13 identifier];
  v15 = sub_1D15A3F38();
  v17 = v16;

  v18._countAndFlagsBits = 0x676E696E6E7572;
  v18._object = 0xE700000000000000;
  v19._countAndFlagsBits = v15;
  v19._object = v17;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v18, v19);

  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v20 = qword_1EE05B398;
  v21 = v1;
  sub_1D15A31C8();
  sub_1D15A4478();
  sub_1D1487C24();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D15ACDD0;
  v23 = [v13 identifier];
  v24 = sub_1D15A3F38();
  v26 = v25;

  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1D1487C8C();
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  sub_1D15A31A8();

  v27 = sub_1D1492CF0();
  v28 = sub_1D1492910();
  [v27 addDependency_];

  v29 = qword_1EE0578C0;
  v30 = *&v21[qword_1EE0578C0];
  v32 = v39;
  v31 = v40;
  (*(v39 + 16))(v4, v7, v40);
  v33 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v21;
  (*(v32 + 32))(v34 + v33, v4, v31);
  aBlock[4] = sub_1D14953F0;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1493D34;
  aBlock[3] = &block_descriptor_0;
  v35 = _Block_copy(aBlock);
  v36 = v21;
  v37 = v30;

  [v37 setCompletionBlock_];
  _Block_release(v35);

  v38 = *&v36[qword_1EE0578A0];
  [v38 addOperation_];
  [v38 addOperation_];
  (*(v32 + 8))(v7, v31);
}

uint64_t sub_1D1493C38(uint64_t a1, uint64_t a2)
{
  sub_1D15A4468();
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  sub_1D15A31B8();
  v3 = [*(a2 + qword_1EE0578A8) identifier];
  v4 = sub_1D15A3F38();
  v6 = v5;

  v7._countAndFlagsBits = 0x64656873696E6966;
  v7._object = 0xE800000000000000;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v7, v8);
}

uint64_t sub_1D1493D34(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D1493D78(void *a1)
{
  v1 = a1;
  AudioExposureStatisticsQueryOperation.main()();
}

Swift::Void __swiftcall AudioExposureStatisticsQueryOperation.cleanUp()()
{
  v1 = v0;
  sub_1D14951C0();
  *&v3 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([v0 isCancelled])
  {
    sub_1D1487B04();
    v6 = swift_allocError();
    *v7 = 3;
    *v5 = v6;
    v8 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v8);
    *(&v15 - 2) = v5;

    sub_1D15A2D38();

    sub_1D1495390(v5, sub_1D14951C0);
    v9 = [*&v0[qword_1EE0578A8] identifier];
    v10 = sub_1D15A3F38();
    v12 = v11;

    v13._countAndFlagsBits = 0x656C6C65636E6163;
    v13._object = 0xE900000000000064;
    v14._countAndFlagsBits = v10;
    v14._object = v12;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v13, v14);
  }

  [*&v1[qword_1EE0578A0] cancelAllOperations];
}

id AudioExposureStatisticsQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D149401C()
{

  sub_1D1495CA4(v0 + qword_1EE057890, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
}

id AudioExposureStatisticsQueryOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1494124(uint64_t a1)
{

  sub_1D1495CA4(a1 + qword_1EE057890, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
}

uint64_t sub_1D1494200()
{

  sub_1D15A2D28();
}

void sub_1D1494254(id a1, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D15A2D38();
    return;
  }

  v3 = [a1 averageQuantity];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [a1 duration];
  if (!v5)
  {

LABEL_8:
    sub_1D15A47D8();
    swift_getObjectType();
    v11 = sub_1D15A4D18();
    MEMORY[0x1D388A330](v11);

    v12 = MEMORY[0x1D388A330](0xD000000000000042, 0x80000001D15BE480);
    MEMORY[0x1EEE9AC00](v12);
    sub_1D15A2D38();
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [objc_opt_self() secondUnit];
  [v6 doubleValueForUnit_];
  v9 = v8;

  if (v9 > 2.22507386e-308)
  {
    MEMORY[0x1EEE9AC00](v10);
    sub_1D15A2D38();

    return;
  }

  sub_1D15A47D8();
  swift_getObjectType();
  v13 = sub_1D15A4D18();
  MEMORY[0x1D388A330](v13);

  v14 = MEMORY[0x1D388A330](0xD000000000000037, 0x80000001D15BE4D0);
  MEMORY[0x1EEE9AC00](v14);
  sub_1D15A2D38();

LABEL_10:
}

id sub_1D1494540(void *a1, void *a2)
{
  sub_1D1495390(a1, sub_1D14951C0);
  *a1 = a2;
  sub_1D14951C0();
  swift_storeEnumTagMultiPayload();

  return a2;
}

void sub_1D14945AC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1D1495390(a1, sub_1D14951C0);
  sub_1D1487F34();
  v8 = swift_allocError();
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  *a1 = v8;
  sub_1D14951C0();
  swift_storeEnumTagMultiPayload();

  sub_1D1487F88(a2, a3, a4);
}

uint64_t sub_1D1494654(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1D1495390(a1, sub_1D14951C0);
  sub_1D1487F34();
  v6 = swift_allocError();
  *v7 = a2;
  v7[1] = a3;
  v7[2] = 0x6000000000000000;
  *a1 = v6;
  sub_1D14951C0();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D14946F4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v50 = a5;
  v47 = a2;
  v8 = MEMORY[0x1E69E6720];
  sub_1D14952D4(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  sub_1D14952D4(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], v8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v45 - v16;
  v18 = sub_1D15A26A8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for AudioExposureStatistics(0);
  MEMORY[0x1EEE9AC00](v46);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1495390(a1, sub_1D14951C0);
  v24 = *(a4 + qword_1EE0578B0);
  v25 = 1;
  if (v24 != 2)
  {
    if (v24 != 3)
    {
      result = sub_1D15A4908();
      __break(1u);
      return result;
    }

    v25 = *MEMORY[0x1E696B760];
  }

  v48 = a3;
  v26 = [v50 mostRecentQuantityDateInterval];
  if (v26)
  {
    v27 = v26;
    sub_1D15A2248();

    v28 = sub_1D15A22A8();
    (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
  }

  else
  {
    v28 = sub_1D15A22A8();
    (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  }

  sub_1D1495C10(v11, v14);
  sub_1D15A22A8();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v14, 1, v28);
  v49 = a1;
  if (v30 == 1)
  {
    sub_1D1495CA4(v14, &qword_1EE05B520, MEMORY[0x1E6968130]);
    (*(v19 + 56))(v17, 1, 1, v18);
    v31 = [v50 endDate];
    sub_1D15A2668();

    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_1D1495CA4(v17, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    sub_1D15A2258();
    (*(v29 + 8))(v14, v28);
    (*(v19 + 56))(v17, 0, 1, v18);
    (*(v19 + 32))(v21, v17, v18);
  }

  v32 = objc_opt_self();
  v33 = [v32 decibelAWeightedSoundPressureLevelUnit];
  [v47 doubleValueForUnit_];
  v35 = v34;
  v36 = [v33 unitString];
  v37 = sub_1D15A3F38();
  v39 = v38;

  v40 = [v32 secondUnit];
  [v48 doubleValueForUnit_];
  v42 = v41;

  *v23 = v35;
  *(v23 + 1) = v37;
  *(v23 + 2) = v39;
  *(v23 + 3) = v42;
  v43 = v46;
  *(v23 + 4) = v45;
  (*(v19 + 32))(&v23[*(v43 + 32)], v21, v18);
  sub_1D1495D14(v23, v49);
  sub_1D14951C0();
  return swift_storeEnumTagMultiPayload();
}

void sub_1D1494CE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong isCancelled] || (v2 = objc_msgSend(v1, sel_isFinished), v2))
    {
    }

    else
    {
      MEMORY[0x1EEE9AC00](v2);
      sub_1D15A2DA8();
    }
  }
}

void sub_1D1494DC8()
{
  sub_1D14951C0();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([v4 isCancelled])
    {

LABEL_5:
      return;
    }

    v5 = [v4 isFinished];

    if (v5)
    {
      goto LABEL_5;
    }

    sub_1D15A2D28();

    MEMORY[0x1EEE9AC00](v6);
    *(&v7 - 2) = v4;
    *(&v7 - 1) = v2;
    sub_1D15A2DA8();

    sub_1D1495390(v2, sub_1D14951C0);
  }
}

uint64_t sub_1D1494F34(uint64_t a1, uint64_t a2)
{
  sub_1D14951C0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1495ACC(a2, v5, sub_1D14951C0);
  v8 = v5;

  sub_1D15A2D38();

  return sub_1D1495390(v5, sub_1D14951C0);
}

uint64_t _s19HealthVisualization23AudioExposureStatisticsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1D15A4BA8() & 1) == 0 || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  type metadata accessor for AudioExposureStatistics(0);

  return sub_1D15A2658();
}

unint64_t sub_1D14950C4()
{
  result = qword_1EE05B040;
  if (!qword_1EE05B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B040);
  }

  return result;
}

void sub_1D1495118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D14950C4();
    v7 = a3(a1, &type metadata for AudioExposureStatistics.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D149517C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D15A26A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D14951C0()
{
  if (!qword_1EE056260)
  {
    type metadata accessor for AudioExposureStatistics(255);
    sub_1D1453368(255, &qword_1EE05ABB8);
    v0 = sub_1D15A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056260);
    }
  }
}

uint64_t sub_1D1495240(uint64_t a1, uint64_t a2)
{
  sub_1D14952D4(0, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D14952D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D1495338(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1D1495390(a1, sub_1D14951C0);
  return sub_1D1495ACC(v3, a1, sub_1D14951C0);
}

uint64_t sub_1D1495390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D14954A8()
{
  result = sub_1D15A26A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D1495558()
{
  sub_1D14952D4(319, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for AnchorDate(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnchorDate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D14957FC()
{
  result = qword_1EC630328;
  if (!qword_1EC630328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630328);
  }

  return result;
}

unint64_t sub_1D1495854()
{
  result = qword_1EE05B030;
  if (!qword_1EE05B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B030);
  }

  return result;
}

unint64_t sub_1D14958AC()
{
  result = qword_1EE05B038;
  if (!qword_1EE05B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B038);
  }

  return result;
}

uint64_t sub_1D1495900(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C615671656CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5374696E5571656CLL && a2 == 0xED0000676E697274 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C73646E6F636573 && a2 == 0xEF64656E65747369 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7267674173796164 && a2 == 0xEE00646574616765 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D1495ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D1495B48()
{
  if (!qword_1EE056228)
  {
    sub_1D1453BA0(255, &qword_1EE056768);
    sub_1D1453368(255, &qword_1EE05ABB8);
    v0 = sub_1D15A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056228);
    }
  }
}

uint64_t sub_1D1495C10(uint64_t a1, uint64_t a2)
{
  sub_1D14952D4(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1495CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D14952D4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D1495D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioExposureStatistics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void HKHealthStore.fetchHasEverHadAWatch(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() _predicateForObjectsFromAppleWatches];
  sub_1D1453BA0(0, &qword_1EE05B460);
  v7 = [swift_getObjCClassFromMetadata() activityCacheType];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v7 predicate:v6];

    sub_1D1496034();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D15AE100;
    *(v10 + 32) = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D15AE100;
    sub_1D1453BA0(0, &qword_1EE05AD48);
    swift_getKeyPath();
    v12 = v9;
    *(v11 + 32) = sub_1D15A43D8();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v14 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
    sub_1D1453BA0(0, &qword_1EE056718);

    v15 = sub_1D15A40A8();

    v16 = sub_1D15A40A8();

    aBlock[4] = sub_1D14961AC;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D14961D8;
    aBlock[3] = &block_descriptor_1;
    v17 = _Block_copy(aBlock);
    v18 = [v14 initWithQueryDescriptors:v15 limit:1 sortDescriptors:v16 resultsHandler:v17];

    _Block_release(v17);

    [v3 executeQuery_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D1496034()
{
  if (!qword_1EE059678)
  {
    v0 = sub_1D15A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059678);
    }
  }
}

void sub_1D1496094(id *a1)
{
  v1 = [*a1 endDate];
  sub_1D15A2668();
}

void sub_1D14960F4(int a1, unint64_t a2, id a3, void (*a4)(void, void))
{
  if (a2)
  {
    if (a2 >> 62)
    {
      v9 = a4;
      v4 = sub_1D15A4708();
      a4 = v9;
    }

    else
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = v4 != 0;
    goto LABEL_5;
  }

  if (!a3)
  {
    v5 = 0;
LABEL_5:
    (a4)(v5, 0, a3);
    return;
  }

  v6 = a4;
  v8 = a3;
  v6(a3, 1);
}

uint64_t sub_1D14961D8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1D1453BA0(0, &qword_1EE05B568);
    v5 = sub_1D15A40C8();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

void static PluginSharableModel.valueObject<A>(_:as:)(void *a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  sub_1D1498D00(0, &qword_1EE059428, MEMORY[0x1E69A3D18], MEMORY[0x1E69E6720]);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v54 - v11;
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = v54 - v15;
  if ([a1 hasValueData])
  {
    v54[1] = v5;
    v55 = v7;
    v56 = v6;
    v17 = [a1 kindRawValue];
    if (!v17 || (v18 = v17, sub_1D15A3F38(), v18, HKCodableSummaryCurrentValue.Kind.init(rawValue:)(&v59), v19 = v59, v59 == 23))
    {
      if ([a1 hasKindRawValue])
      {
        v20 = [a1 kindRawValue];
        if (!v20)
        {
          __break(1u);
          return;
        }

        v21 = v20;
        v22 = sub_1D15A3F38();
        v24 = v23;
      }

      else
      {
        v24 = 0xE90000000000003ELL;
        v22 = 0x646E696B206F6E3CLL;
      }

      sub_1D15A31E8();

      v25 = a1;
      v26 = sub_1D15A3248();
      v27 = sub_1D15A4318();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v59 = v57;
        *v28 = 136446722;
        *(v28 + 4) = sub_1D1479780(0xD000000000000013, 0x80000001D15BDF00, &v59);
        *(v28 + 12) = 2080;
        v29 = sub_1D1479780(v22, v24, &v59);

        *(v28 + 14) = v29;
        *(v28 + 22) = 2080;
        sub_1D1453BA0(0, &qword_1EE056670);
        sub_1D148681C();
        sub_1D15A2F88();
        v30 = sub_1D15A3F68();
        v32 = sub_1D1479780(v30, v31, &v59);

        *(v28 + 24) = v32;
        _os_log_impl(&dword_1D1446000, v26, v27, "[%{public}s] Unknown kind received: %s, this model should have bumped its version: %s", v28, 0x20u);
        v33 = v57;
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v33, -1, -1);
        MEMORY[0x1D388BF00](v28, -1, -1);
      }

      else
      {
      }

      (*(v55 + 8))(v9, v56);
      goto LABEL_12;
    }

    v34 = HKCodableSummaryCurrentValue.unwrappedValue()();
    if (!v34)
    {
      sub_1D15A31E8();
      v47 = sub_1D15A3248();
      v48 = sub_1D15A4318();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v59 = v50;
        *v49 = 136446466;
        *(v49 + 4) = sub_1D1479780(0xD000000000000013, 0x80000001D15BDF00, &v59);
        *(v49 + 12) = 2080;
        v58 = v19;
        v51 = HKCodableSummaryCurrentValue.Kind.rawValue.getter();
        v53 = sub_1D1479780(v51, v52, &v59);

        *(v49 + 14) = v53;
        _os_log_impl(&dword_1D1446000, v47, v48, "[%{public}s] Unable to unwrap value for kind %s", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v50, -1, -1);
        MEMORY[0x1D388BF00](v49, -1, -1);
      }

      (*(v55 + 8))(v12, v56);
LABEL_12:
      sub_1D14867C8();
      swift_allocError();
      swift_willThrow();
      return;
    }

    v35 = v34;
    if (!swift_dynamicCastUnknownClass())
    {
      sub_1D15A31E8();
      v36 = v35;
      v37 = sub_1D15A3248();
      v38 = sub_1D15A4318();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v59 = v40;
        *v39 = 136446722;
        *(v39 + 4) = sub_1D1479780(0xD000000000000013, 0x80000001D15BDF00, &v59);
        *(v39 + 12) = 2080;
        swift_getObjectType();
        v41 = sub_1D15A4D18();
        v43 = sub_1D1479780(v41, v42, &v59);

        *(v39 + 14) = v43;
        *(v39 + 22) = 2080;
        v44 = sub_1D15A4D18();
        v46 = sub_1D1479780(v44, v45, &v59);

        *(v39 + 24) = v46;
        _os_log_impl(&dword_1D1446000, v37, v38, "[%{public}s] Current value payload is of unknown type %s instead of %s", v39, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v40, -1, -1);
        MEMORY[0x1D388BF00](v39, -1, -1);
      }

      (*(v55 + 8))(v16, v56);
      sub_1D14867C8();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t sub_1D14969A4@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v98 = a3;
  v100 = a4;
  v96 = sub_1D15A3268();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1498F20();
  v103 = *(v7 - 8);
  v104 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v102 = (&v94 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v94 - v12;
  v13 = sub_1D15A2C78();
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v94 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v94 - v19;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v94 - v23;
  v105 = *a2;
  v25 = *(a1 + 16);
  v107 = v21;
  if (v25)
  {
    v27 = v21 + 16;
    v26 = *(v21 + 16);
    v110 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v28 = a1 + v110;
    v29 = *(v21 + 72);
    v113 = (v21 + 32);
    v114 = "data modelReference ";
    v108 = (v21 + 8);
    v115 = MEMORY[0x1E69E7CC0];
    v111 = v17;
    v109 = v26;
    v26(v24, a1 + v110, v13, v22);
    while (1)
    {
      sub_1D15A2C28();
      v31 = sub_1D15A3FE8();

      if (v31)
      {
        (*v108)(v24, v13);
      }

      else
      {
        v32 = v13;
        v33 = v27;
        v34 = *v113;
        v35 = v32;
        (*v113)(v17, v24);
        v36 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117[0] = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D14A78D4(0, *(v36 + 16) + 1, 1);
          v36 = v117[0];
        }

        v39 = *(v36 + 16);
        v38 = *(v36 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1D14A78D4(v38 > 1, v39 + 1, 1);
          v36 = v117[0];
        }

        *(v36 + 16) = v39 + 1;
        v115 = v36;
        v40 = v36 + v110 + v39 * v29;
        v17 = v111;
        (v34)(v40, v111, v35);
        v27 = v33;
        v13 = v35;
        v26 = v109;
      }

      v28 += v29;
      if (!--v25)
      {
        break;
      }

      v26(v24, v28, v13, v30);
    }
  }

  else
  {
    v115 = MEMORY[0x1E69E7CC0];
  }

  v41 = *(v115 + 16);
  if (v41)
  {
    v42 = v115;
    v43 = sub_1D1453BA0(0, &qword_1EE056700);
    v44 = *(v107 + 16);
    v45 = v42 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    v46 = *(v107 + 72);
    v113 = (v107 + 8);
    v114 = v46;
    if (v98)
    {
      v47 = 0x676E6972616873;
    }

    else
    {
      v47 = 0x7972616D697270;
    }

    v108 = 0x80000001D15BCCF0;
    v109 = v47;
    v48 = MEMORY[0x1E69E7CC0];
    v107 += 16;
    v49 = v112;
    v110 = v43;
    v111 = v44;
    while (1)
    {
      (v44)(v49, v45, v13);
      v50 = static HKCodableSummaryData.extract(from:)(v117, v49);
      v51 = v48;

      v53 = LOBYTE(v117[0]);
      if (![v50 hasAudienceRawValue] || (v54 = objc_msgSend(v50, sel_audienceRawValue)) == 0 || (v55 = v54, sub_1D15A3F38(), v55, v56 = sub_1D15A49B8(), , v57 = 0x7972616D697270, v56))
      {
        v57 = 0x676E6972616873;
      }

      if (v57 == v109)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v58 = sub_1D15A4BA8();
        swift_bridgeObjectRelease_n();
        if ((v58 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      if (v53 > 1)
      {
        if (v53 == 2)
        {
          v59 = 0x616E41646E657274;
        }

        else
        {
          v59 = 0xD000000000000017;
        }

        if (v53 == 2)
        {
          v60 = 0xED0000736973796CLL;
        }

        else
        {
          v60 = v108;
        }
      }

      else
      {
        if (v53)
        {
          v59 = 0x56746E6572727563;
        }

        else
        {
          v59 = 0x646F4D7472616863;
        }

        if (v53)
        {
          v60 = 0xEC00000065756C61;
        }

        else
        {
          v60 = 0xEA00000000006C65;
        }
      }

      if (v105 > 1)
      {
        if (v105 == 2)
        {
          v61 = 0x616E41646E657274;
        }

        else
        {
          v61 = 0xD000000000000017;
        }

        if (v105 == 2)
        {
          v62 = 0xED0000736973796CLL;
        }

        else
        {
          v62 = v108;
        }
      }

      else
      {
        v61 = 0x646F4D7472616863;
        v62 = 0xEA00000000006C65;
        if (v105)
        {
          v61 = 0x56746E6572727563;
          v62 = 0xEC00000065756C61;
        }
      }

      if (v59 == v61 && v60 == v62)
      {

LABEL_52:
        v64 = v102;
        *v102 = v50;
        v65 = v112;
        (v111)(v101, v112, v13);
        sub_1D15A2BC8();
        (*v113)(v65, v13);
        sub_1D1499008(v64, v106, sub_1D1498F20);
        v48 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_1D148BFB8(0, v51[2] + 1, 1, v51);
        }

        v67 = v48[2];
        v66 = v48[3];
        v44 = v111;
        if (v67 >= v66 >> 1)
        {
          v48 = sub_1D148BFB8(v66 > 1, v67 + 1, 1, v48);
        }

        v48[2] = v67 + 1;
        sub_1D1499008(v106, v48 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v67, sub_1D1498F20);
        v49 = v112;
        goto LABEL_18;
      }

      v63 = sub_1D15A4BA8();

      if (v63)
      {
        goto LABEL_52;
      }

LABEL_57:
      v49 = v112;
      (*v113)(v112, v13);

      v48 = v51;
      v44 = v111;
LABEL_18:
      v45 += v114;
      if (!--v41)
      {

        goto LABEL_60;
      }
    }
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_60:
  v68 = v48[2];
  v69 = v99;
  if (v68 > 1)
  {
    sub_1D15A31E8();

    v70 = sub_1D15A3248();
    v71 = sub_1D15A4328();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = v48;
      v74 = swift_slowAlloc();
      v117[0] = v74;
      *v72 = 136316162;
      *(v72 + 4) = sub_1D1479780(0xD000000000000013, 0x80000001D15BDF00, v117);
      *(v72 + 12) = 2048;
      *(v72 + 14) = v73[2];

      *(v72 + 22) = 2080;
      v116 = v105;
      v75 = sub_1D15A3F68();
      v77 = sub_1D1479780(v75, v76, v117);

      *(v72 + 24) = v77;
      *(v72 + 32) = 2080;
      if (v98)
      {
        v78 = 0x676E6972616873;
      }

      else
      {
        v78 = 0x7972616D697270;
      }

      v79 = sub_1D1479780(v78, 0xE700000000000000, v117);

      *(v72 + 34) = v79;
      *(v72 + 42) = 2080;
      v80 = MEMORY[0x1D388A440](v73, v104);
      v82 = sub_1D1479780(v80, v81, v117);

      *(v72 + 44) = v82;
      _os_log_impl(&dword_1D1446000, v70, v71, "[%s]: Returned %ld models for the requested kind=%s, audience=%s was found: %s", v72, 0x34u);
      swift_arrayDestroy();
      v83 = v74;
      v48 = v73;
      MEMORY[0x1D388BF00](v83, -1, -1);
      MEMORY[0x1D388BF00](v72, -1, -1);
    }

    else
    {
    }

    (*(v95 + 8))(v69, v96);
    v68 = v48[2];
  }

  if (v68)
  {
    v84 = v97;
    sub_1D1498FA0(v48 + ((*(v103 + 80) + 32) & ~*(v103 + 80)), v97, sub_1D1498F20);

    v85 = *v84;
    v86 = *(v104 + 48);
    sub_1D1498D64();
    v88 = v87;
    v89 = *(v87 + 48);
    v90 = v100;
    *v100 = v85;
    v91 = sub_1D15A2BB8();
    (*(*(v91 - 8) + 32))(&v90[v89], &v84[v86], v91);
    return (*(*(v88 - 8) + 56))(v90, 0, 1, v88);
  }

  else
  {

    sub_1D1498D64();
    return (*(*(v93 - 8) + 56))(v100, 1, 1, v93);
  }
}

unint64_t static HKCodableSummaryData.extract(from:)(_BYTE *a1, uint64_t a2)
{
  v171 = a1;
  v3 = sub_1D15A2C78();
  v4 = *(v3 - 8);
  v188 = v3;
  v189 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v176 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v186 = &v171 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v185 = (&v171 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v184 = (&v171 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v179 = &v171 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v178 = &v171 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v172 = &v171 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v174 = &v171 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v181 = (&v171 - v21);
  v22 = sub_1D15A3268();
  v23 = *(v22 - 8);
  v182 = v22;
  v183 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v187 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v180 = &v171 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v173 = &v171 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v175 = &v171 - v30;
  v31 = MEMORY[0x1E69A3D18];
  sub_1D1498D00(0, &qword_1EE059428, MEMORY[0x1E69A3D18], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v171 - v33;
  v35 = sub_1D15A2CD8();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A2C48();
  sub_1D15A2C68();
  (*(v36 + 56))(v34, 0, 1, v35);
  v39 = sub_1D15A2CB8();
  sub_1D1498DE8(v34, &qword_1EE059428, v31);
  v40 = *(v36 + 8);
  v40(v38, v35);
  if ((v39 & 1) == 0)
  {
    v181 = v40;
    sub_1D15A3238();
    v60 = v188;
    v61 = v189;
    v62 = *(v189 + 16);
    (v62)(v184, a2, v188);
    (v62)(v185, a2, v60);
    v180 = v62;
    (v62)(v186, a2, v60);
    v63 = sub_1D15A3248();
    v64 = sub_1D15A4338();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v191 = v178;
      *v65 = 136316162;
      v66 = sub_1D15A4D18();
      v177 = v63;
      v68 = sub_1D1479780(v66, v67, &v191);
      LODWORD(v175) = v64;
      v69 = v68;

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v70 = v184;
      v71 = sub_1D15A2C28();
      v73 = v72;
      v179 = *(v61 + 8);
      v189 = v61 + 8;
      (v179)(v70, v188);
      v74 = sub_1D1479780(v71, v73, &v191);

      *(v65 + 14) = v74;
      *(v65 + 22) = 2080;
      v75 = v185;
      sub_1D15A2C68();
      sub_1D1498B9C();
      v76 = sub_1D15A4B68();
      v78 = v77;
      v181(v38, v35);
      v79 = v75;
      v80 = v188;
      (v179)(v79, v188);
      v81 = sub_1D1479780(v76, v78, &v191);

      *(v65 + 24) = v81;
      *(v65 + 32) = 2080;
      sub_1D15A2C48();
      v82 = sub_1D15A4B68();
      v84 = v83;
      v181(v38, v35);
      v85 = sub_1D1479780(v82, v84, &v191);

      *(v65 + 34) = v85;
      *(v65 + 42) = 2080;
      v86 = v186;
      (v180)(v176, v186, v80);
      v87 = sub_1D15A3F68();
      v89 = v88;
      (v179)(v86, v80);
      v90 = sub_1D1479780(v87, v89, &v191);

      *(v65 + 44) = v90;
      v56 = v177;
      _os_log_impl(&dword_1D1446000, v177, v175, "%s: PluginSharableModel with identifier %s has version %s which is not compatible with %s for %s", v65, 0x34u);
      v91 = v178;
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v91, -1, -1);
      MEMORY[0x1D388BF00](v65, -1, -1);
    }

    else
    {

      v56 = *(v61 + 8);
      v92 = v188;
      (v56)(v186, v188);
      (v56)(v185, v92);
      (v56)(v184, v92);
    }

    (*(v183 + 8))(v187, v182);
    goto LABEL_40;
  }

  v41 = v189;
  v42 = sub_1D15A2C38();
  if (v42 >> 62)
  {
    v43 = sub_1D15A4708();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v188;
  v45 = v181;
  v46 = v178;
  v47 = v179;

  if (v43 != 1)
  {
LABEL_37:
    v151 = v180;
    sub_1D15A31E8();
    v152 = *(v41 + 16);
    v152(v46, a2, v44);
    v152(v47, a2, v44);
    v56 = sub_1D15A3248();
    v153 = sub_1D15A4338();
    if (os_log_type_enabled(v56, v153))
    {
      v154 = v46;
      v155 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v191 = v189;
      *v155 = 136315650;
      v156 = sub_1D15A4D18();
      LODWORD(v188) = v153;
      v158 = sub_1D1479780(v156, v157, &v191);

      *(v155 + 4) = v158;
      *(v155 + 12) = 2080;
      v159 = sub_1D15A2C28();
      v161 = v160;
      v162 = *(v41 + 8);
      v162(v154, v44);
      v163 = sub_1D1479780(v159, v161, &v191);

      *(v155 + 14) = v163;
      *(v155 + 22) = 2080;
      v164 = sub_1D15A2C38();
      v165 = sub_1D1453BA0(0, &qword_1EE056778);
      v166 = MEMORY[0x1D388A440](v164, v165);
      v168 = v167;

      v162(v47, v44);
      v169 = sub_1D1479780(v166, v168, &v191);

      *(v155 + 24) = v169;
      _os_log_impl(&dword_1D1446000, v56, v188, "%s: model with identifier %s has unexpected object type: %s", v155, 0x20u);
      v170 = v189;
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v170, -1, -1);
      MEMORY[0x1D388BF00](v155, -1, -1);

      (*(v183 + 8))(v180, v182);
    }

    else
    {

      v56 = *(v41 + 8);
      (v56)(v47, v44);
      (v56)(v46, v44);
      (*(v183 + 8))(v151, v182);
    }

LABEL_40:
    sub_1D14867C8();
    swift_allocError();
    swift_willThrow();
    return v56;
  }

  result = sub_1D15A2C38();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

  v149 = result;
  v150 = sub_1D15A4708();
  result = v149;
  if (!v150)
  {
LABEL_36:

    goto LABEL_37;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v49 = MEMORY[0x1D388AB50](0);
LABEL_10:
    v50 = v49;

    v51 = sub_1D15A2C58();
    v53 = v52;
    v54 = objc_allocWithZone(MEMORY[0x1E69A42B0]);
    v55 = sub_1D15A24F8();
    sub_1D1498BF4(v51, v53);
    v56 = [v54 initWithData_];

    if (v56)
    {
      if ([v56 hasKindRawValue])
      {
        v57 = [v56 kindRawValue];
        if (v57)
        {
          v58 = v57;
          sub_1D15A3F38();

          v59 = sub_1D15A49B8();

          if (v59 < 4)
          {
            *v171 = v59;
            return v56;
          }
        }
      }

      v93 = v175;
      sub_1D15A31E8();
      v94 = *(v41 + 16);
      v94(v45, a2, v44);
      v95 = v174;
      v94(v174, a2, v44);
      v56 = v56;
      v96 = v50;
      v97 = sub_1D15A3248();
      v98 = sub_1D15A4338();

      if (os_log_type_enabled(v97, v98))
      {
        v184 = v97;
        LODWORD(v187) = v98;
        v99 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v191 = v100;
        *v99 = 136316162;
        v101 = sub_1D15A4D18();
        v103 = v41;
        v104 = sub_1D1479780(v101, v102, &v191);

        *(v99 + 4) = v104;
        *(v99 + 12) = 2080;
        v105 = v181;
        v106 = v56;
        v107 = sub_1D15A2C28();
        v109 = v108;
        v110 = v44;
        v111 = *(v103 + 8);
        v189 = v103 + 8;
        v111(v105, v110);
        v112 = v107;
        v56 = v106;
        v113 = sub_1D1479780(v112, v109, &v191);

        *(v99 + 14) = v113;
        *(v99 + 22) = 2082;
        v114 = [v106 hasKindRawValue];
        v186 = v100;
        if (v114 && (v115 = [v106 kindRawValue]) != 0)
        {
          v116 = v115;
          sub_1D15A3F38();

          v117 = sub_1D15A49B8();

          v118 = 4;
          if (v117 < 4)
          {
            v118 = v117;
          }
        }

        else
        {
          v118 = 4;
        }

        v137 = v184;
        v190 = v118;
        sub_1D1498CB0();
        v138 = sub_1D15A3F68();
        v140 = sub_1D1479780(v138, v139, &v191);

        *(v99 + 24) = v140;
        *(v99 + 32) = 2114;
        *(v99 + 34) = v96;
        v141 = v185;
        *v185 = v96;
        *(v99 + 42) = 2080;
        v142 = v96;
        v143 = v174;
        v144 = sub_1D15A2C28();
        v146 = v145;
        v111(v143, v188);
        v147 = sub_1D1479780(v144, v146, &v191);

        *(v99 + 44) = v147;
        _os_log_impl(&dword_1D1446000, v137, v187, "%s: received pluginSharableModel with identifier %s that has unknown .kind %{public}s for type: %{public}@. Identifier: %s", v99, 0x34u);
        sub_1D1498E58(v141, sub_1D1498C48);
        MEMORY[0x1D388BF00](v141, -1, -1);
        v148 = v186;
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v148, -1, -1);
        MEMORY[0x1D388BF00](v99, -1, -1);

        (*(v183 + 8))(v175, v182);
      }

      else
      {

        v136 = *(v41 + 8);
        v136(v95, v44);
        v136(v181, v44);
        (*(v183 + 8))(v93, v182);
      }

      sub_1D14867C8();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v119 = v173;
      sub_1D15A31E8();
      v120 = v172;
      (*(v41 + 16))(v172, a2, v44);
      v56 = v50;
      v121 = sub_1D15A3248();
      v122 = sub_1D15A4318();

      if (os_log_type_enabled(v121, v122))
      {
        v123 = v120;
        v124 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v191 = v189;
        *v124 = 136315650;
        v125 = sub_1D15A4D18();
        v127 = v44;
        v128 = sub_1D1479780(v125, v126, &v191);

        *(v124 + 4) = v128;
        *(v124 + 12) = 2080;
        v129 = sub_1D15A2C28();
        v131 = v130;
        (*(v41 + 8))(v123, v127);
        v132 = sub_1D1479780(v129, v131, &v191);

        *(v124 + 14) = v132;
        *(v124 + 22) = 2114;
        *(v124 + 24) = v56;
        v133 = v188;
        *v188 = v56;
        v134 = v56;
        _os_log_impl(&dword_1D1446000, v121, v122, "%s: received summary data with identifier %s that cannot be decoded for type: %{public}@", v124, 0x20u);
        sub_1D1498E58(v133, sub_1D1498C48);
        MEMORY[0x1D388BF00](v133, -1, -1);
        v135 = v189;
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v135, -1, -1);
        MEMORY[0x1D388BF00](v124, -1, -1);

        (*(v183 + 8))(v173, v182);
      }

      else
      {

        (*(v41 + 8))(v120, v44);
        (*(v183 + 8))(v119, v182);
      }

      sub_1D14867C8();
      swift_allocError();
      swift_willThrow();
    }

    return v56;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v49 = *(result + 32);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D14987B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  sub_1D1498D00(0, &qword_1EC630340, sub_1D1498D64, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29[-v11];
  sub_1D1498D64();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29[-v19];
  v30 = a3;
  sub_1D14969A4(a1, &v30, a2 & 1, v12);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    result = sub_1D1498DE8(v12, &qword_1EC630340, sub_1D1498D64);
    *a5 = xmmword_1D15AE190;
  }

  else
  {
    v22 = sub_1D1499008(v12, v20, sub_1D1498D64);
    v23 = a4(v22);
    if (v23)
    {
      if (v23 == 1)
      {
        *a5 = xmmword_1D15AE190;
      }

      else
      {
        v24 = v23;
        sub_1D1498D00(0, &qword_1EE0562C0, MEMORY[0x1E69A3C80], MEMORY[0x1E69E6F90]);
        v25 = sub_1D15A2BB8();
        v26 = *(v25 - 8);
        v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1D15ACDD0;
        sub_1D1498FA0(v20, v17, sub_1D1498D64);

        (*(v26 + 32))(v28 + v27, v17 + *(v14 + 48), v25);
        *a5 = v24;
        *(a5 + 8) = v28;
      }
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
    }

    return sub_1D1498E58(v20, sub_1D1498D64);
  }

  return result;
}

uint64_t SummaryFeedItemGenerationFailure.hashValue.getter()
{
  sub_1D15A4C88();
  MEMORY[0x1D388B000](0);
  return sub_1D15A4CB8();
}

unint64_t sub_1D1498B9C()
{
  result = qword_1EC630330;
  if (!qword_1EC630330)
  {
    sub_1D15A2CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630330);
  }

  return result;
}

uint64_t sub_1D1498BF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1D1498C48()
{
  if (!qword_1EE0564C0)
  {
    sub_1D1453BA0(255, &qword_1EE05ACD0);
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0564C0);
    }
  }
}

void sub_1D1498CB0()
{
  if (!qword_1EC630338)
  {
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630338);
    }
  }
}

void sub_1D1498D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1498D64()
{
  if (!qword_1EC630348)
  {
    sub_1D1453BA0(255, &qword_1EE056700);
    sub_1D15A2BB8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC630348);
    }
  }
}

uint64_t sub_1D1498DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1498D00(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D1498E58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1498EBC()
{
  result = qword_1EC630350;
  if (!qword_1EC630350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630350);
  }

  return result;
}

void sub_1D1498F20()
{
  if (!qword_1EC6302E8)
  {
    sub_1D1453BA0(255, &qword_1EE056700);
    sub_1D15A2BB8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC6302E8);
    }
  }
}

uint64_t sub_1D1498FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1499008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id static ActivitySummaryCurrentValueSupport.makeCurrentValue(activitySummary:hasEverHadAWatch:activityResumeDate:)(void *a1, int a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  sub_1D14995A0(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  sub_1D14995A0(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v44 - v11;
  v12 = sub_1D15A22A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = sub_1D15A26A8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v44 - v25;
  if (a1)
  {
    v44 = v15;
    v46 = v6;
    v27 = v13;
    v28 = v12;
    v29 = v24;
    v30 = a1;
    HKActivitySummary.humanReadableDate.getter(v26);
    sub_1D15A2218();
    sub_1D1453BA0(0, &qword_1EE056560);
    v47 = v20;
    v48 = v29;
    v31 = *(v20 + 16);
    v45 = v26;
    v32 = v29;
    v33 = v28;
    v34 = v27;
    v31(v22, v26, v32);
    v35 = v49;
    sub_1D14995F4(v50, v49, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v36 = v30;
    v37 = HKCodableSummaryActivityRingsValue.init(activitySummary:date:hasEverHadAWatch:activityResumeDate:)(v36, v22, v51 & 1, v35);
    (*(v27 + 16))(v9, v18, v33);
    (*(v27 + 56))(v9, 0, 1, v33);
    result = [objc_allocWithZone(MEMORY[0x1E69A4300]) init];
    if (result)
    {
      v39 = result;
      v40 = v46;
      sub_1D14995F4(v9, v46, &qword_1EE05B520, MEMORY[0x1E6968130]);
      if ((*(v34 + 48))(v40, 1, v33) == 1)
      {
        sub_1D1491CBC(v40);
      }

      else
      {
        v41 = v44;
        (*(v34 + 32))(v44, v40, v33);
        sub_1D1453BA0(0, &qword_1EE0566F8);
        v42 = sub_1D15A44A8();
        [v39 setDateInterval_];

        (*(v34 + 8))(v41, v33);
      }

      sub_1D1453BA0(0, &qword_1EE056670);
      [v39 setDataCount_];
      sub_1D1491CBC(v9);
      v43 = HKCodableSummaryCurrentValue.init(activitySummaryValue:supplementaryValue:)(v37, v39);

      (*(v34 + 8))(v18, v33);
      (*(v47 + 8))(v45, v48);
      return v43;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return _sSo28HKCodableSummaryCurrentValueC19HealthVisualizationE6noDataAByFZ_0();
  }

  return result;
}

void sub_1D14995A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D14995F4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D14995A0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t TimeOfDayDistributionChartView.init(distribution:model:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D1499AEC(a1, a3, type metadata accessor for TimeBasedDistribution);
  v6 = sub_1D14A8984(a1, a2);
  sub_1D1499B54(a1, type metadata accessor for TimeBasedDistribution);
  v7 = type metadata accessor for TimeOfDayDistributionChartView();
  *(a3 + *(v7 + 20)) = v6;
  v8 = a3 + *(v7 + 24);

  return sub_1D1499A88(a2, v8);
}

uint64_t TimeOfDayDistributionChartView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AFibBurdenTimeOfDayChart();
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v5[8];
  sub_1D1499AEC(v2, &v7[v8], type metadata accessor for TimeBasedDistribution);
  v9 = v2 + *(type metadata accessor for TimeOfDayDistributionChartView() + 24);
  v10 = v5[9];
  sub_1D1499AEC(v9, &v7[v10], type metadata accessor for TimeBasedDistributionChartModel);
  v11 = v9 + *(type metadata accessor for TimeBasedDistributionChartModel() + 24);
  v12 = *(v11 + *(type metadata accessor for TimeBasedDistributionChartDesign() + 64));
  *v7 = 0;
  v7[8] = 1;
  *(v7 + 2) = v12;
  v7[24] = 0;
  v7[v5[10]] = 0;
  sub_1D14B04E8(&v7[v8], &v7[v10], 0, a1);
  return sub_1D1499B54(v7, type metadata accessor for AFibBurdenTimeOfDayChart);
}

uint64_t sub_1D1499858@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D1499AEC(a1, a4, type metadata accessor for TimeBasedDistribution);
  v8 = sub_1D14A8984(a1, a2);
  sub_1D1499B54(a1, type metadata accessor for TimeBasedDistribution);
  v9 = *(a3 + 24);
  *(a4 + *(a3 + 20)) = v8;

  return sub_1D1499A88(a2, a4 + v9);
}

uint64_t sub_1D14998FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for AFibBurdenTimeOfDayChart();
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v7[8];
  sub_1D1499AEC(v4, &v9[v10], type metadata accessor for TimeBasedDistribution);
  v11 = v4 + *(a1 + 24);
  v12 = v7[9];
  sub_1D1499AEC(v11, &v9[v12], type metadata accessor for TimeBasedDistributionChartModel);
  v13 = v11 + *(type metadata accessor for TimeBasedDistributionChartModel() + 24);
  v14 = *(v13 + *(type metadata accessor for TimeBasedDistributionChartDesign() + 64));
  *v9 = 0;
  v9[8] = 1;
  *(v9 + 2) = v14;
  v9[24] = 0;
  v9[v7[10]] = 0;
  sub_1D14B04E8(&v9[v10], &v9[v12], 0, a2);
  return sub_1D1499B54(v9, type metadata accessor for AFibBurdenTimeOfDayChart);
}

uint64_t type metadata accessor for TimeOfDayDistributionChartView()
{
  result = qword_1EC630360;
  if (!qword_1EC630360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1499A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeBasedDistributionChartModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1499AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1499B54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1499BB4(uint64_t a1)
{
  result = sub_1D149AF0C(&qword_1EC630358, type metadata accessor for TimeOfDayDistributionChartView);
  *(a1 + 8) = result;
  return result;
}

void sub_1D1499C64()
{
  type metadata accessor for TimeBasedDistribution();
  if (v0 <= 0x3F)
  {
    sub_1D149C284(319, &qword_1EC630370, type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for TimeBasedDistributionChartModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D1499D30()
{
  result = qword_1EC630378;
  if (!qword_1EC630378)
  {
    sub_1D1499F90();
    sub_1D149A260();
    sub_1D149AC24(255, &qword_1EC6304F8, MEMORY[0x1E695B190]);
    sub_1D149A428();
    v1 = MEMORY[0x1E69E5F90];
    sub_1D149C0C0(255, &qword_1EE05B5C8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    sub_1D149A580();
    sub_1D149C0C0(255, &qword_1EC6304E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v1);
    sub_1D149A65C();
    sub_1D149A700();
    sub_1D149B200();
    sub_1D149BD24();
    sub_1D149BE84();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D149C024();
    swift_getOpaqueTypeConformance2();
    sub_1D149C114();
    swift_getOpaqueTypeConformance2();
    sub_1D149C1B0();
    swift_getOpaqueTypeConformance2();
    sub_1D149C2E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630378);
  }

  return result;
}

void sub_1D1499F90()
{
  if (!qword_1EC630380)
  {
    sub_1D149A028();
    sub_1D149C284(255, &qword_1EE056AA8, MEMORY[0x1E697E7E0], MEMORY[0x1E6980A08]);
    v0 = sub_1D15A3718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630380);
    }
  }
}

void sub_1D149A028()
{
  if (!qword_1EC630388)
  {
    sub_1D149A260();
    sub_1D149AC24(255, &qword_1EC6304F8, MEMORY[0x1E695B190]);
    sub_1D149A428();
    v0 = MEMORY[0x1E69E5F90];
    sub_1D149C0C0(255, &qword_1EE05B5C8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    sub_1D149A580();
    sub_1D149C0C0(255, &qword_1EC6304E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v0);
    sub_1D149A65C();
    sub_1D149A700();
    sub_1D149B200();
    sub_1D149BD24();
    sub_1D149BE84();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D149C024();
    swift_getOpaqueTypeConformance2();
    sub_1D149C114();
    swift_getOpaqueTypeConformance2();
    sub_1D149C1B0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630388);
    }
  }
}

void sub_1D149A260()
{
  if (!qword_1EC630390)
  {
    sub_1D149A428();
    v0 = MEMORY[0x1E69E5F90];
    sub_1D149C0C0(255, &qword_1EE05B5C8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    sub_1D149A580();
    sub_1D149C0C0(255, &qword_1EC6304E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v0);
    sub_1D149A65C();
    sub_1D149A700();
    sub_1D149B200();
    sub_1D149BD24();
    sub_1D149BE84();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D149C024();
    swift_getOpaqueTypeConformance2();
    sub_1D149C114();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630390);
    }
  }
}

void sub_1D149A428()
{
  if (!qword_1EC630398)
  {
    sub_1D149A580();
    sub_1D149C0C0(255, &qword_1EC6304E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E5F90]);
    sub_1D149A65C();
    sub_1D149A700();
    sub_1D149B200();
    sub_1D149BD24();
    sub_1D149BE84();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D149C024();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630398);
    }
  }
}

void sub_1D149A580()
{
  if (!qword_1EC6303A0)
  {
    sub_1D149A65C();
    sub_1D149A700();
    sub_1D149B200();
    sub_1D149BD24();
    sub_1D149BE84();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6303A0);
    }
  }
}

void sub_1D149A65C()
{
  if (!qword_1EC6303A8)
  {
    sub_1D149A700();
    sub_1D149B200();
    sub_1D149BD24();
    sub_1D149BE84();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6303A8);
    }
  }
}

void sub_1D149A700()
{
  if (!qword_1EC6303B0)
  {
    sub_1D149A768();
    sub_1D15A39D8();
    v0 = sub_1D15A3718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6303B0);
    }
  }
}

void sub_1D149A768()
{
  if (!qword_1EC6303B8)
  {
    sub_1D149A86C();
    sub_1D149B16C();
    sub_1D149AF0C(&qword_1EC630428, sub_1D149A86C);
    sub_1D149AF0C(&qword_1EE056488, sub_1D149B16C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6303B8);
    }
  }
}

void sub_1D149A86C()
{
  if (!qword_1EC6303C0)
  {
    sub_1D149A8D0();
    sub_1D149AFDC();
    v0 = sub_1D15A3518();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6303C0);
    }
  }
}

void sub_1D149A8D0()
{
  if (!qword_1EC6303C8)
  {
    sub_1D149C284(255, &qword_1EC630370, type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay, MEMORY[0x1E69E62F8]);
    sub_1D149A998();
    sub_1D149AF54();
    v0 = sub_1D15A3D38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6303C8);
    }
  }
}

void sub_1D149A998()
{
  if (!qword_1EC6303D0)
  {
    sub_1D149AB04();
    sub_1D149AC24(255, &qword_1EC6303E8, sub_1D149ABFC);
    sub_1D149B7A0(255, &qword_1EC6303E0, MEMORY[0x1E695B238]);
    sub_1D15A3538();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D149AD38();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6303D0);
    }
  }
}

void sub_1D149AB04()
{
  if (!qword_1EC6303D8)
  {
    sub_1D149B7A0(255, &qword_1EC6303E0, MEMORY[0x1E695B238]);
    sub_1D15A3538();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6303D8);
    }
  }
}

void sub_1D149AC24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A3718();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D149AC88()
{
  if (!qword_1EE056BB8)
  {
    sub_1D149ACE8();
    v0 = sub_1D15A3718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056BB8);
    }
  }
}

void sub_1D149ACE8()
{
  if (!qword_1EE056AB8)
  {
    v0 = sub_1D15A39C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056AB8);
    }
  }
}

unint64_t sub_1D149AD38()
{
  result = qword_1EC6303F8;
  if (!qword_1EC6303F8)
  {
    sub_1D149AC24(255, &qword_1EC6303E8, sub_1D149ABFC);
    sub_1D149ADDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6303F8);
  }

  return result;
}

unint64_t sub_1D149ADDC()
{
  result = qword_1EC630400;
  if (!qword_1EC630400)
  {
    sub_1D149ABFC(255);
    sub_1D149AE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630400);
  }

  return result;
}

unint64_t sub_1D149AE5C()
{
  result = qword_1EC630408;
  if (!qword_1EC630408)
  {
    sub_1D149AC88();
    sub_1D149AF0C(&qword_1EC630410, sub_1D149ACE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630408);
  }

  return result;
}

uint64_t sub_1D149AF0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D149AF54()
{
  result = qword_1EC630418;
  if (!qword_1EC630418)
  {
    sub_1D149C284(255, &qword_1EC630370, type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630418);
  }

  return result;
}

unint64_t sub_1D149AFDC()
{
  result = qword_1EC630420;
  if (!qword_1EC630420)
  {
    sub_1D149A8D0();
    sub_1D149AB04();
    sub_1D149AC24(255, &qword_1EC6303E8, sub_1D149ABFC);
    sub_1D149B7A0(255, &qword_1EC6303E0, MEMORY[0x1E695B238]);
    sub_1D15A3538();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D149AD38();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630420);
  }

  return result;
}

void sub_1D149B16C()
{
  if (!qword_1EE056480)
  {
    sub_1D15A36F8();
    sub_1D149AF0C(&qword_1EE056BF8, MEMORY[0x1E697E730]);
    v0 = sub_1D15A4988();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056480);
    }
  }
}

void sub_1D149B200()
{
  if (!qword_1EC630430)
  {
    sub_1D149B2D8(255, &qword_1EC630438, &qword_1EC630440, sub_1D149B360, sub_1D149B5A4);
    sub_1D149B2D8(255, &qword_1EC630470, &qword_1EC630478, sub_1D149B6F4, sub_1D149BAF0);
    v0 = sub_1D15A3488();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630430);
    }
  }
}

void sub_1D149B2D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1D149C284(255, a3, a4, MEMORY[0x1E69E6720]);
    a5();
    v7 = sub_1D15A3608();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D149B360()
{
  if (!qword_1EC630448)
  {
    sub_1D149B45C();
    sub_1D149C0C0(255, &qword_1EC630458, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E695B150]);
    sub_1D149B520();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630448);
    }
  }
}

void sub_1D149B45C()
{
  if (!qword_1EC630450)
  {
    sub_1D149C0C0(255, &qword_1EC630458, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E695B150]);
    sub_1D149B520();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630450);
    }
  }
}

unint64_t sub_1D149B520()
{
  result = qword_1EC630460;
  if (!qword_1EC630460)
  {
    sub_1D149C0C0(255, &qword_1EC630458, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E695B150]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630460);
  }

  return result;
}

unint64_t sub_1D149B5A4()
{
  result = qword_1EC630468;
  if (!qword_1EC630468)
  {
    sub_1D149C284(255, &qword_1EC630440, sub_1D149B360, MEMORY[0x1E69E6720]);
    sub_1D149B45C();
    sub_1D149C0C0(255, &qword_1EC630458, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E695B150]);
    sub_1D149B520();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630468);
  }

  return result;
}

void sub_1D149B6F4()
{
  if (!qword_1EC630480)
  {
    sub_1D149B7A0(255, &qword_1EC630488, MEMORY[0x1E695B280]);
    sub_1D149B818();
    v0 = sub_1D15A32D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630480);
    }
  }
}

void sub_1D149B7A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1D149B818()
{
  if (!qword_1EC630490)
  {
    sub_1D149B944();
    sub_1D149BA40();
    sub_1D149C0C0(255, &qword_1EC630458, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E695B150]);
    sub_1D149B520();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630490);
    }
  }
}

void sub_1D149B944()
{
  if (!qword_1EC630498)
  {
    sub_1D149BA40();
    sub_1D149C0C0(255, &qword_1EC630458, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E695B150]);
    sub_1D149B520();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630498);
    }
  }
}

void sub_1D149BA40()
{
  if (!qword_1EC6304A0)
  {
    sub_1D149C0C0(255, &qword_1EC630458, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E695B150]);
    sub_1D149B520();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6304A0);
    }
  }
}

unint64_t sub_1D149BAF0()
{
  result = qword_1EC6304A8;
  if (!qword_1EC6304A8)
  {
    sub_1D149C284(255, &qword_1EC630478, sub_1D149B6F4, MEMORY[0x1E69E6720]);
    sub_1D149BB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6304A8);
  }

  return result;
}

unint64_t sub_1D149BB98()
{
  result = qword_1EC6304B0;
  if (!qword_1EC6304B0)
  {
    sub_1D149B6F4();
    sub_1D15A3588();
    swift_getOpaqueTypeConformance2();
    sub_1D149B944();
    sub_1D149BA40();
    sub_1D149C0C0(255, &qword_1EC630458, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E695B150]);
    sub_1D149B520();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6304B0);
  }

  return result;
}

unint64_t sub_1D149BD24()
{
  result = qword_1EC6304B8;
  if (!qword_1EC6304B8)
  {
    sub_1D149A700();
    sub_1D149A86C();
    sub_1D149B16C();
    sub_1D149AF0C(&qword_1EC630428, sub_1D149A86C);
    sub_1D149AF0C(&qword_1EE056488, sub_1D149B16C);
    swift_getOpaqueTypeConformance2();
    sub_1D149AF0C(&qword_1EC6304C0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6304B8);
  }

  return result;
}

unint64_t sub_1D149BE84()
{
  result = qword_1EC6304C8;
  if (!qword_1EC6304C8)
  {
    sub_1D149B200();
    sub_1D149BF04();
    sub_1D149BF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6304C8);
  }

  return result;
}

unint64_t sub_1D149BF04()
{
  result = qword_1EC6304D0;
  if (!qword_1EC6304D0)
  {
    sub_1D149B2D8(255, &qword_1EC630438, &qword_1EC630440, sub_1D149B360, sub_1D149B5A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6304D0);
  }

  return result;
}

unint64_t sub_1D149BF94()
{
  result = qword_1EC6304D8;
  if (!qword_1EC6304D8)
  {
    sub_1D149B2D8(255, &qword_1EC630470, &qword_1EC630478, sub_1D149B6F4, sub_1D149BAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6304D8);
  }

  return result;
}

unint64_t sub_1D149C024()
{
  result = qword_1EC6304E8;
  if (!qword_1EC6304E8)
  {
    sub_1D149C0C0(255, &qword_1EC6304E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E5F90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6304E8);
  }

  return result;
}

void sub_1D149C0C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1D149C114()
{
  result = qword_1EC6304F0;
  if (!qword_1EC6304F0)
  {
    sub_1D149C0C0(255, &qword_1EE05B5C8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6304F0);
  }

  return result;
}

unint64_t sub_1D149C1B0()
{
  result = qword_1EC630500;
  if (!qword_1EC630500)
  {
    sub_1D149AC24(255, &qword_1EC6304F8, MEMORY[0x1E695B190]);
    sub_1D149AF0C(&qword_1EC630508, MEMORY[0x1E695B190]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630500);
  }

  return result;
}

void sub_1D149C284(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D149C2E8()
{
  result = qword_1EE056AB0;
  if (!qword_1EE056AB0)
  {
    sub_1D149C284(255, &qword_1EE056AA8, MEMORY[0x1E697E7E0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056AB0);
  }

  return result;
}

void MostRecentSampleSnidgetStringBuilder.makeMostRecentSampleQuantityPrimaryAttributedString(displayType:quantity:unitMode:)(void *a1@<X0>, void *a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  if (*a3)
  {
    v26 = *a3;
  }

  else
  {
    v26 = [*(v4 + 24) unitForChartingDisplayType_];
    if (!v26)
    {
      v26 = [a2 _unit];
    }
  }

  v9 = v8;
  v10 = sub_1D14A1764(a1, a2, v26);
  if (v11)
  {
    v12 = sub_1D15A23F8();
    (*(*(v12 - 8) + 56))(a4, 1, 1, v12);
LABEL_12:

    return;
  }

  v13 = *&v10;
  v14 = [a1 presentation];
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v16 = [v14 adjustedValueForDaemonValue_];

  v17 = v26;
  v18 = [a1 hk:v17 valueFormatterForUnit:?];
  v19 = sub_1D15A3048();
  v20 = *(v4 + 24);
  v26 = v19;
  v21 = sub_1D15A3068();
  v22 = [v18 attributedStringFromValue:v16 displayType:a1 unit:v17 unitController:v20 valueFont:v26 unitFont:v21];

  if (!v22)
  {
    v25 = sub_1D15A23F8();
    (*(*(v25 - 8) + 56))(a4, 1, 1, v25);

    goto LABEL_12;
  }

  sub_1D15A2428();

  v23 = sub_1D15A23F8();
  v24 = *(*(v23 - 8) + 56);

  v24(a4, 0, 1, v23);
}

void MostRecentSampleSnidgetStringBuilder.makeMostRecentSampleCategoryValuePrimaryAttributedString(displayType:categoryValue:metadata:)(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  sub_1D149D4F8(0, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_1D15A23F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149C950(a1, a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v25 = *(v13 + 32);
    v25(v15, v11, v12);
    v25(a3, v15, v12);
    goto LABEL_5;
  }

  sub_1D149D76C(v11, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
  v16 = [a1 presentation];
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v18 = [v16 adjustedValueForDaemonValue_];

  v19 = [a1 hk:0 valueFormatterForUnit:?];
  v20 = sub_1D15A3058();
  v21 = *(v4 + 24);
  v22 = v20;
  v23 = sub_1D15A3068();
  v24 = [v19 attributedStringFromValue:v18 displayType:a1 unitController:v21 valueFont:v22 unitFont:v23];

  if (v24)
  {
    sub_1D15A2428();

LABEL_5:
    (*(v13 + 56))(a3, 0, 1, v12);
    return;
  }

  (*(v13 + 56))(a3, 1, 1, v12);
}

void sub_1D149C950(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = [a1 displayTypeIdentifier];
  if ((v5 - 262) < 4)
  {
    v6 = sub_1D15A3EF8();
    v7 = HKUILocalizedString();

    if (v7)
    {
LABEL_3:
      sub_1D15A3F38();

      sub_1D14A1D7C();

      v8 = sub_1D15A23F8();
      (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
      return;
    }

    goto LABEL_19;
  }

  if (v5 == 97)
  {
LABEL_8:
    v9 = sub_1D15A3F38();
    if (a2[2])
    {
      v11 = sub_1D14800A4(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_1D1479D10(a2[7] + 32 * v11, v18);
        if (swift_dynamicCast())
        {
          v14 = sub_1D15A3EF8();
          v7 = HKUILocalizedString();

          if (v7)
          {

            goto LABEL_3;
          }

          goto LABEL_20;
        }
      }
    }

    else
    {
    }

    v17 = sub_1D15A3EF8();
    v7 = HKUILocalizedString();

    if (v7)
    {
      goto LABEL_3;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v5 == 96)
  {
    a2 = sub_1D15A3EF8();
    v7 = HKUILocalizedString();

    if (v7)
    {
      goto LABEL_3;
    }

    __break(1u);
    goto LABEL_8;
  }

  v15 = sub_1D15A23F8();
  v16 = *(*(v15 - 8) + 56);

  v16(a3, 1, 1, v15);
}

uint64_t MostRecentSampleSnidgetStringBuilder.makeMostRecentSampleSupplementaryString(supplementaryLabelConfiguration:supplementaryLabelInfo:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v41 = a5;
  v8 = sub_1D15A2458();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149D4F8(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_1D15A22A8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149D54C();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v37 - v24;
  LODWORD(a1) = *a1;
  *v25 = a2;
  v25[8] = a3 & 1;
  sub_1D149D62C(v40, &v37 + *(v17 + 56) - v24);
  sub_1D149D6AC(v25, v22);
  v26 = v22[8];
  v27 = *(v17 + 56);
  *v19 = *v22;
  v19[8] = v26;
  sub_1D149D62C(&v22[v27], &v19[v27]);
  if (a1 != 1)
  {
    if (qword_1EE059700 != -1)
    {
      swift_once();
    }

    sub_1D15A2438();
    goto LABEL_7;
  }

  sub_1D149D62C(&v19[v27], v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D149D710(v19);
    sub_1D149D710(v25);
    sub_1D149D76C(v12, &qword_1EE05B520, MEMORY[0x1E6968130]);
LABEL_14:
    v29 = 1;
    v28 = v41;
    goto LABEL_15;
  }

  v30 = v38;
  (*(v14 + 32))(v38, v12, v13);
  v31 = [objc_opt_self() hk_mediumMonthDayDateIntervalFormatter];
  if (!v31)
  {
    (*(v14 + 8))(v30, v13);
LABEL_13:
    sub_1D149D710(v19);
    sub_1D149D710(v25);
    goto LABEL_14;
  }

  v32 = v31;
  v40 = v13;
  v33 = sub_1D15A2228();
  v34 = [v32 stringFromDateInterval_];

  if (!v34)
  {

    (*(v14 + 8))(v30, v40);
    goto LABEL_13;
  }

  sub_1D15A3F38();

  (*(v14 + 8))(v30, v40);
LABEL_7:
  v28 = v41;

  sub_1D15A2448();
  sub_1D15A2408();
  v42 = sub_1D15A3068();
  sub_1D149D7C8();
  sub_1D15A2418();
  v42 = [objc_opt_self() secondaryLabelColor];
  sub_1D149D81C();
  sub_1D15A2418();

  sub_1D149D710(v19);
  sub_1D149D710(v25);
  v29 = 0;
LABEL_15:
  v35 = sub_1D15A23F8();
  (*(*(v35 - 8) + 56))(v28, v29, 1, v35);
  return sub_1D149D76C(&v22[v27], &qword_1EE05B520, MEMORY[0x1E6968130]);
}

void *MostRecentSampleSnidgetStringBuilder.__allocating_init(healthStore:unitPreferenceController:viewControllerFactory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *MostRecentSampleSnidgetStringBuilder.init(healthStore:unitPreferenceController:viewControllerFactory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void *MostRecentSampleSnidgetStringBuilder.__allocating_init(healthStore:unitPreferenceController:)(void *a1, id a2)
{
  v4 = swift_allocObject();
  v4[2] = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstanceForHealthStore_];
  v4[4] = v7;
  if (!a2)
  {
    v8 = v7;
    a2 = [v8 createHKUnitPreferenceController];
  }

  v4[3] = a2;
  return v4;
}

void *MostRecentSampleSnidgetStringBuilder.init(healthStore:unitPreferenceController:)(void *a1, id a2)
{
  v2[2] = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstanceForHealthStore_];
  v2[4] = v7;
  if (!a2)
  {
    v8 = v7;
    a2 = [v8 createHKUnitPreferenceController];
  }

  v2[3] = a2;
  return v2;
}

void *MostRecentSampleSnidgetStringBuilder.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  v2[2] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sharedInstanceForHealthStore_];
  v2[4] = v5;
  v6 = v5;
  v7 = [v6 createHKUnitPreferenceController];

  v2[3] = v7;
  return v2;
}

void *MostRecentSampleSnidgetStringBuilder.init(healthStore:)(void *a1)
{
  v1[2] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sharedInstanceForHealthStore_];
  v1[4] = v5;
  v6 = v5;
  v7 = [v6 createHKUnitPreferenceController];

  v1[3] = v7;
  return v1;
}

uint64_t MostRecentSampleSnidgetStringBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D149D4F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D149D54C()
{
  if (!qword_1EE0567D0)
  {
    sub_1D149D5DC();
    sub_1D149D4F8(255, &qword_1EE05B520, MEMORY[0x1E6968130]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0567D0);
    }
  }
}

void sub_1D149D5DC()
{
  if (!qword_1EE059748)
  {
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059748);
    }
  }
}

uint64_t sub_1D149D62C(uint64_t a1, uint64_t a2)
{
  sub_1D149D4F8(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D149D6AC(uint64_t a1, uint64_t a2)
{
  sub_1D149D54C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D149D710(uint64_t a1)
{
  sub_1D149D54C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D149D76C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D149D4F8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D149D7C8()
{
  result = qword_1EE0594E0;
  if (!qword_1EE0594E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0594E0);
  }

  return result;
}

unint64_t sub_1D149D81C()
{
  result = qword_1EE0594E8;
  if (!qword_1EE0594E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0594E8);
  }

  return result;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.viewModel.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

__n128 CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.viewModel.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents(0) + 20);

  return sub_1D149D9CC(v3, a1);
}

uint64_t sub_1D149D9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents(0) + 20);

  return sub_1D149DA94(a1, v3);
}

uint64_t sub_1D149DA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.init(viewModel:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 8) = *(a1 + 8);
  v4 = a3 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents(0) + 20);

  return sub_1D149DB98(a2, v4);
}

uint64_t sub_1D149DB98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.noData(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = MEMORY[0x1E6968130];
  sub_1D14A0520(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v25 = &v24 - v5;
  v28 = MEMORY[0x1E6969530];
  sub_1D14A0520(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v26 = &v24 - v8;
  sub_1D14A0520(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  sub_1D15A2F28();
  v13 = sub_1D15A2EA8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = a1;
  v27 = sub_1D15A2F18();
  v15 = sub_1D15A26A8();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v17 = sub_1D15A22A8();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 1, 1, v17);
  v19 = a2 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents(0) + 20);
  v20 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  v21 = *(v20 + 24);
  v16(&v19[v21], 1, 1, v15);
  v22 = *(v20 + 28);
  v18(&v19[v22], 1, 1, v17);
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  sub_1D149E480(v26, &v19[v21], &qword_1EE05B7F8, v28);
  result = sub_1D149E480(v25, &v19[v22], &qword_1EE05B520, v29);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v27;
  return result;
}

uint64_t static CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModel.noData(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D14A0520(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1D15A2F28();
  v7 = sub_1D15A2EA8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = a1;
  result = sub_1D15A2F18();
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModel.headerViewModel.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModel.currentValueViewModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModel.visualizationViewModel.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModel.init(headerViewModel:currentValueViewModel:visualizationViewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata.rawCategoryValue.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata.init(hasData:rawCategoryValue:currentValueDate:tapThroughSelectionDateInterval:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  v13 = *(v12 + 24);
  v14 = sub_1D15A26A8();
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = *(v12 + 28);
  v16 = sub_1D15A22A8();
  (*(*(v16 - 8) + 56))(a6 + v15, 1, 1, v16);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  sub_1D149E480(a4, a6 + v13, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  return sub_1D149E480(a5, a6 + v15, &qword_1EE05B520, MEMORY[0x1E6968130]);
}

uint64_t sub_1D149E480(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D14A0520(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D149E4EC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D14A0520(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.init(healthStore:unitPreferenceController:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void CategoryCodableCurrentValueSnidgetViewModelExtractor.extractViewModelComponents(hkType:displayType:currentValueModel:visualizationModel:snippetSupplementaryLabelConfiguration:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, unsigned __int8 *a4@<X4>, uint64_t *a5@<X8>)
{
  v110 = a3;
  v106 = a2;
  v107 = a5;
  v104 = a1;
  v6 = sub_1D15A3268();
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14A0520(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = &v90 - v9;
  sub_1D14A0520(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v105 = &v90 - v11;
  sub_1D14A0520(0, &qword_1EE05AAB8, MEMORY[0x1E69A3778]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v98 = &v90 - v13;
  sub_1D14A0520(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v97 = &v90 - v15;
  sub_1D14A0520(0, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v90 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v90 - v23;
  v25 = sub_1D15A23F8();
  v103 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v90 - v29;
  v31 = *a4;
  v32 = v109;
  v34 = *v108;
  v33 = v108[1];
  sub_1D1485B40(v110);
  if (v32)
  {
    return;
  }

  v116 = v31;
  v108 = v33;
  v109 = v34;
  v93 = v24;
  v91 = v27;
  v94 = v21;
  v92 = v18;
  v95 = v30;
  v37 = v106;
  v36 = v107;
  if (!v35)
  {
LABEL_6:
    static CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.noData(for:)(v37, v36);
    return;
  }

  v96 = v35;
  if (![v35 hasCategoryValue])
  {

    goto LABEL_6;
  }

  v117 = v116;
  static CategoryCodableCurrentValueSnidgetViewModelExtractor.formatter(for:currentValueModel:healthStore:unitPreferenceController:snippetSupplementaryLabelConfiguration:)(v37, v110, v109, v108, &v117, &v111);
  v110 = 0;
  if (v112)
  {
    sub_1D1450E94(&v111, v113);
    v38 = v114;
    v39 = v115;
    __swift_project_boxed_opaque_existential_1(v113, v114);
    v40 = v93;
    (*(v39 + 8))(v38, v39);
    v41 = v103;
    v42 = v25;
    if ((*(v103 + 48))(v40, 1, v25) == 1)
    {
      sub_1D14A0470(v40, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_1D15A47D8();

      *&v111 = 0xD000000000000025;
      *(&v111 + 1) = 0x80000001D15BE6E0;
      v43 = [v104 sensitiveLoggingIdentifier];
      v44 = sub_1D15A3F38();
      v46 = v45;

      MEMORY[0x1D388A330](v44, v46);

      v47 = v111;
      v48 = v99;
      sub_1D15A3238();

      v49 = sub_1D15A3248();
      v50 = sub_1D15A4318();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v111 = v53;
        *v51 = 136315394;
        *(v51 + 4) = sub_1D1479780(0xD000000000000034, 0x80000001D15AE380, &v111);
        *(v51 + 12) = 2112;
        sub_1D14A04CC();
        swift_allocError();
        *v54 = v47;

        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 14) = v55;
        *v52 = v55;
        _os_log_impl(&dword_1D1446000, v49, v50, "[%s]: %@", v51, 0x16u);
        sub_1D14A0470(v52, &qword_1EE0564C0, sub_1D14A0574);
        MEMORY[0x1D388BF00](v52, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x1D388BF00](v53, -1, -1);
        MEMORY[0x1D388BF00](v51, -1, -1);
      }

      (*(v100 + 8))(v48, v101);
      sub_1D14A04CC();
      swift_allocError();
      *v56 = v47;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v113);
    }

    else
    {
      v57 = v95;
      (*(v41 + 32))(v95, v40, v25);
      v109 = sub_1D15A2F28();
      sub_1D14863E4();
      v59 = *(v58 + 48);
      v60 = v37;
      [v96 dateData];
      v61 = HKDecodeDateForValue();
      v62 = v97;
      sub_1D15A2668();

      v63 = v114;
      v64 = v115;
      __swift_project_boxed_opaque_existential_1(v113, v114);
      v62[v59] = (*(v64 + 24))(v63, v64) & 1;
      v65 = *MEMORY[0x1E69A3668];
      v66 = sub_1D15A2EA8();
      v67 = *(v66 - 8);
      (*(v67 + 104))(v62, v65, v66);
      (*(v67 + 56))(v62, 0, 1, v66);
      v109 = sub_1D15A2F18();
      v68 = v114;
      v69 = v115;
      __swift_project_boxed_opaque_existential_1(v113, v114);
      (*(v69 + 16))(v68, v69);
      (*(v41 + 16))(v91, v57, v42);
      (*(v41 + 56))(v92, 1, 1, v42);
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_1D15A47D8();

      *&v111 = 0xD00000000000001CLL;
      *(&v111 + 1) = 0x80000001D15BE710;
      v70 = [v104 description];
      v71 = sub_1D15A3F38();
      v73 = v72;

      MEMORY[0x1D388A330](v71, v73);

      v74 = v98;
      sub_1D15A2FF8();

      v75 = sub_1D15A3018();
      (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
      sub_1D15A30E8();
      swift_allocObject();
      v108 = sub_1D15A30D8();
      v76 = sub_1D15A22A8();
      v77 = *(v76 - 8);
      v104 = *(v77 + 56);
      v106 = (v77 + 56);
      (v104)(v105, 1, 1, v76);
      v78 = v96;
      v101 = [v96 categoryValue];
      [v78 dateData];
      v79 = HKDecodeDateForValue();
      v80 = v102;
      sub_1D15A2668();

      (*(v41 + 8))(v95, v42);
      v81 = sub_1D15A26A8();
      v82 = *(*(v81 - 8) + 56);
      v82(v80, 0, 1, v81);
      v83 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents(0);
      v84 = v107;
      v85 = v107 + *(v83 + 20);
      v86 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
      v87 = *(v86 + 24);
      v82(&v85[v87], 1, 1, v81);
      v88 = *(v86 + 28);
      (v104)(&v85[v88], 1, 1, v76);
      *v85 = 1;
      *(v85 + 1) = v101;
      v85[16] = 0;
      sub_1D149E480(v80, &v85[v87], &qword_1EE05B7F8, MEMORY[0x1E6969530]);
      sub_1D149E480(v105, &v85[v88], &qword_1EE05B520, MEMORY[0x1E6968130]);
      v89 = v108;
      *v84 = v109;
      v84[1] = v89;
      v84[2] = 0;
      __swift_destroy_boxed_opaque_existential_1(v113);
    }
  }

  else
  {
    sub_1D14A0470(&v111, &qword_1EC630510, sub_1D14A040C);
    static CategoryCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.noData(for:)(v37, v36);
  }
}

void static CategoryCodableCurrentValueSnidgetViewModelExtractor.formatter(for:currentValueModel:healthStore:unitPreferenceController:snippetSupplementaryLabelConfiguration:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, unsigned __int8 *a5@<X4>, unint64_t a6@<X8>)
{
  v108 = a4;
  v109 = a1;
  v116 = a3;
  v110 = a6;
  v9 = sub_1D15A3268();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14A0520(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v93 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v93 - v20;
  v22 = *a5;
  sub_1D1485B40(a2);
  if (!v6)
  {
    v106 = v12;
    v107 = v10;
    v105 = v22;
    v24 = v110;
    v25 = v116;
    if (v23)
    {
      v107 = 0;
      v26 = v23;
      if (![v23 hasCategoryValue])
      {
        *(v24 + 32) = 0;
        *v24 = 0u;
        *(v24 + 16) = 0u;

        return;
      }

      v27 = a2;
      v28 = sub_1D15A22A8();
      v29 = *(v28 - 8);
      v30 = *(v29 + 56);
      LODWORD(v106) = 1;
      v31 = v21;
      v103 = v30;
      v104 = v28;
      v102 = v29 + 56;
      (v30)(v21, 1, 1);
      if ([a2 hasSupplementaryValue])
      {
        v32 = [a2 supplementaryValue];
        v98 = v15;
        if (v32)
        {
          v33 = v32;
          v34 = [v32 hasDataCount];

          if (v34)
          {
            v35 = [a2 supplementaryValue];
            if (!v35)
            {
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            v36 = v35;
            v101 = [v35 dataCount];
          }

          else
          {
            v101 = 0;
          }

          v56 = [a2 supplementaryValue];
          if (v56)
          {
            v57 = v56;
            LODWORD(v106) = v34 ^ 1;
            v58 = [v56 hasDateInterval];

            if (v58)
            {
              v27 = a2;
              v59 = [a2 supplementaryValue];
              if (!v59)
              {
LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

              v60 = v59;
              v61 = [v59 dateInterval];

              if (!v61)
              {
LABEL_43:
                __break(1u);
                return;
              }

              sub_1D15A4498();

              v31 = v21;
              sub_1D14A0470(v21, &qword_1EE05B520, MEMORY[0x1E6968130]);
              v103(v18, 0, 1, v104);
              sub_1D1495C10(v18, v21);
            }

            else
            {
              v31 = v21;
              v27 = a2;
            }

            v42 = v98;
            goto LABEL_26;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v101 = 0;
      v42 = v15;
LABEL_26:
      if (![v27 hasMetadataDictionary])
      {
        goto LABEL_30;
      }

      v62 = [v27 metadataDictionary];
      if (v62)
      {
        v63 = v62;
        v64 = [objc_opt_self() dictionaryWithCodableMetadata_];

        v111 = 0;
        sub_1D15A3E58();

        if (v111)
        {
          v110 = v111;
          goto LABEL_31;
        }

LABEL_30:
        v110 = sub_1D159BDE4(MEMORY[0x1E69E7CC0]);
LABEL_31:
        HKCodableSummaryCurrentValue.queryConfiguration.getter(&v111);
        v65 = v115;
        v99 = v26;
        v100 = v31;
        if (v115 <= 0xFDu)
        {
          v66 = v42;
          v67 = v109;
          if ((v115 & 0xF8) == 0x20)
          {
            v97 = v114;
            v98 = v112;
            v95 = v111;
            v96 = v113;
            v94 = [v26 categoryValue];
            v68 = MEMORY[0x1E6968130];
            v69 = v66;
            sub_1D149E4EC(v31, v66, &qword_1EE05B520, MEMORY[0x1E6968130]);
            v70 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0);
            *(v24 + 24) = v70;
            *(v24 + 32) = &protocol witness table for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
            v72 = boxed_opaque_existential_1 + *(v70 + 32);
            *v72 = 2;
            v73 = *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0) + 24);
            v103(&v72[v73], 1, 1, v104);
            *v72 = v105;
            *(v72 + 1) = v101;
            v72[16] = v106;
            sub_1D149E480(v69, &v72[v73], &qword_1EE05B520, v68);
            v106 = sub_1D159BDE4(MEMORY[0x1E69E7CC0]);
            v74 = v94;
            *boxed_opaque_existential_1 = v67;
            boxed_opaque_existential_1[1] = v74;
            type metadata accessor for MostRecentSampleSnidgetStringBuilder();
            v75 = v67;
            v76 = swift_allocObject();
            v76[2] = v25;
            v77 = objc_opt_self();
            v78 = v75;
            v79 = v108;
            v80 = [v77 sharedInstanceForHealthStore_];
            v76[3] = v79;
            v76[4] = v80;

            sub_1D14A0624(v95, v98, v96, v97, v65);
            *(boxed_opaque_existential_1 + *(v70 + 36)) = v76;
            *(boxed_opaque_existential_1 + 16) = v65 & 1;
            boxed_opaque_existential_1[3] = v110;
            v81 = v100;
LABEL_36:
            sub_1D14A0470(v81, &qword_1EE05B520, v68);
            return;
          }

          sub_1D14A0624(v111, v112, v113, v114, v115);
          v42 = v66;
        }

        v82 = [v26 categoryValue];
        v68 = MEMORY[0x1E6968130];
        sub_1D149E4EC(v31, v42, &qword_1EE05B520, MEMORY[0x1E6968130]);
        v83 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0);
        *(v24 + 24) = v83;
        *(v24 + 32) = &protocol witness table for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter;
        v84 = __swift_allocate_boxed_opaque_existential_1(v24);
        v85 = v84 + *(v83 + 32);
        *v85 = 2;
        v86 = *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0) + 24);
        v103(&v85[v86], 1, 1, v104);
        *v85 = v105;
        *(v85 + 1) = v101;
        v85[16] = v106;
        sub_1D149E480(v42, &v85[v86], &qword_1EE05B520, v68);
        sub_1D159BDE4(MEMORY[0x1E69E7CC0]);
        v87 = v109;
        *v84 = v109;
        v84[1] = v82;
        type metadata accessor for MostRecentSampleSnidgetStringBuilder();
        v88 = swift_allocObject();
        v88[2] = v25;
        v89 = objc_opt_self();
        v90 = v87;
        v91 = v108;
        v92 = [v89 sharedInstanceForHealthStore_];
        v88[3] = v91;
        v88[4] = v92;

        *(v84 + *(v83 + 36)) = v88;
        *(v84 + 16) = 0;
        v84[3] = v110;
        v81 = v100;
        goto LABEL_36;
      }

      goto LABEL_40;
    }

    v111 = 0;
    v112 = 0xE000000000000000;
    sub_1D15A47D8();

    v111 = 0xD000000000000028;
    v112 = 0x80000001D15BE730;
    v37 = [a2 kindRawValue];
    if (v37)
    {
      v38 = v37;
      v39 = sub_1D15A3F38();
      v41 = v40;
    }

    else
    {
      v41 = 0xE700000000000000;
      v39 = 0x6E776F6E6B6E55;
    }

    v44 = v106;
    v43 = v107;
    MEMORY[0x1D388A330](v39, v41);

    v46 = v111;
    v45 = v112;
    sub_1D15A3238();

    v47 = sub_1D15A3248();
    v48 = sub_1D15A4318();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v116 = v9;
      v52 = v51;
      v111 = v51;
      *v49 = 136315394;
      *(v49 + 4) = sub_1D1479780(0xD000000000000034, 0x80000001D15AE380, &v111);
      *(v49 + 12) = 2112;
      sub_1D14A04CC();
      swift_allocError();
      *v53 = v46;
      v53[1] = v45;

      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 14) = v54;
      *v50 = v54;
      _os_log_impl(&dword_1D1446000, v47, v48, "[%s]: Error: %@", v49, 0x16u);
      sub_1D14A0470(v50, &qword_1EE0564C0, sub_1D14A0574);
      MEMORY[0x1D388BF00](v50, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1D388BF00](v52, -1, -1);
      MEMORY[0x1D388BF00](v49, -1, -1);

      (*(v43 + 8))(v44, v116);
    }

    else
    {

      (*(v43 + 8))(v44, v9);
    }

    sub_1D14A04CC();
    swift_allocError();
    *v55 = v46;
    v55[1] = v45;
    swift_willThrow();
  }
}

BOOL _s19HealthVisualization52CategoryCodableCurrentValueSnidgetViewModelExtractorV8MetadataV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D15A22A8();
  v60 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E6968130];
  sub_1D14A0520(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v51 - v8;
  sub_1D14A09A8(0, &qword_1EC630528, &qword_1EE05B520, v6);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = sub_1D15A26A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E6969530];
  sub_1D14A0520(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51 - v18;
  sub_1D14A09A8(0, &qword_1EE0594A8, &qword_1EE05B7F8, v16);
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v51 - v22;
  if (*a1 != *a2)
  {
    return 0;
  }

  v24 = a2[16];
  if (a1[16])
  {
    if (!a2[16])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v55 = v11;
  v56 = v4;
  v25 = a2;
  v26 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  v27 = *(v26 + 24);
  v28 = a1;
  v29 = *(v21 + 48);
  v30 = MEMORY[0x1E6969530];
  v52 = v28;
  v53 = v26;
  sub_1D149E4EC(&v28[v27], v23, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  v54 = v25;
  sub_1D149E4EC(&v25[v27], &v23[v29], &qword_1EE05B7F8, v30);
  v31 = *(v13 + 48);
  if (v31(v23, 1, v12) == 1)
  {
    if (v31(&v23[v29], 1, v12) == 1)
    {
      sub_1D14A0470(v23, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
      goto LABEL_15;
    }

LABEL_13:
    v32 = &qword_1EE0594A8;
    v33 = &qword_1EE05B7F8;
    v34 = MEMORY[0x1E6969530];
    v35 = v23;
LABEL_21:
    sub_1D14A0A0C(v35, v32, v33, v34);
    return 0;
  }

  sub_1D149E4EC(v23, v19, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  if (v31(&v23[v29], 1, v12) == 1)
  {
    (*(v13 + 8))(v19, v12);
    goto LABEL_13;
  }

  (*(v13 + 32))(v15, &v23[v29], v12);
  sub_1D14A0A68(&qword_1EC630538, MEMORY[0x1E6969530]);
  v36 = sub_1D15A3EE8();
  v37 = *(v13 + 8);
  v37(v15, v12);
  v37(v19, v12);
  sub_1D14A0470(v23, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v38 = *(v53 + 28);
  v39 = *(v59 + 48);
  v40 = MEMORY[0x1E6968130];
  v41 = v55;
  sub_1D149E4EC(&v52[v38], v55, &qword_1EE05B520, MEMORY[0x1E6968130]);
  sub_1D149E4EC(&v54[v38], v41 + v39, &qword_1EE05B520, v40);
  v42 = v60;
  v43 = *(v60 + 48);
  v44 = v56;
  if (v43(v41, 1, v56) != 1)
  {
    v45 = v58;
    sub_1D149E4EC(v41, v58, &qword_1EE05B520, MEMORY[0x1E6968130]);
    if (v43(v41 + v39, 1, v44) == 1)
    {
      (*(v42 + 8))(v45, v44);
      goto LABEL_20;
    }

    v47 = v41 + v39;
    v48 = v57;
    (*(v42 + 32))(v57, v47, v44);
    sub_1D14A0A68(&qword_1EC630530, MEMORY[0x1E6968130]);
    v49 = sub_1D15A3EE8();
    v50 = *(v42 + 8);
    v50(v48, v44);
    v50(v45, v44);
    sub_1D14A0470(v41, &qword_1EE05B520, MEMORY[0x1E6968130]);
    return (v49 & 1) != 0;
  }

  if (v43(v41 + v39, 1, v44) != 1)
  {
LABEL_20:
    v32 = &qword_1EC630528;
    v33 = &qword_1EE05B520;
    v34 = MEMORY[0x1E6968130];
    v35 = v41;
    goto LABEL_21;
  }

  sub_1D14A0470(v41, &qword_1EE05B520, MEMORY[0x1E6968130]);
  return 1;
}

unint64_t sub_1D14A040C()
{
  result = qword_1EC630518;
  if (!qword_1EC630518)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC630518);
  }

  return result;
}

uint64_t sub_1D14A0470(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D14A0520(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D14A04CC()
{
  result = qword_1EC630520;
  if (!qword_1EC630520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630520);
  }

  return result;
}

void sub_1D14A0520(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D14A0574()
{
  result = qword_1EE05ACD0;
  if (!qword_1EE05ACD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE05ACD0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1D14A0624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xFDu)
  {
    return sub_1D148D7A8(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1D14A0638(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D14A0680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D14A06F4()
{
  result = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D14A0770(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D14A07B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D14A0830()
{
  sub_1D149D5DC();
  if (v0 <= 0x3F)
  {
    sub_1D14A0520(319, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1D14A0520(319, &qword_1EE05B520, MEMORY[0x1E6968130]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D14A0914(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D14A095C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D14A09A8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D14A0520(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D14A0A0C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D14A09A8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D14A0A68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D14A0AB0@<X0>(void *a1@<X0>, void *a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1D15A23F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v31 - v13;
  sub_1D14A0F04();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v20 = *a3;
  v38 = *a3;
  v35 = a2;
  sub_1D14A1FE8(a1, a2, &v38, &v31 - v18);
  v21 = [a1 behavior];
  LODWORD(a2) = [v21 chartsRelativeData];

  if (!a2)
  {
    return sub_1D14A0F5C(v19, a4);
  }

  sub_1D1491780(v19, v16);
  if ((*(v10 + 48))(v16, 1, v9) == 1)
  {
    sub_1D14A0FC0(v16);
    return sub_1D14A0F5C(v19, a4);
  }

  v33 = v9;
  v34 = v10;
  v23 = v36;
  v32 = *(v10 + 32);
  v32(v36, v16, v9);
  if (v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = [*(v4 + 24) unitForChartingDisplayType_];
    if (!v24)
    {
      v24 = [v35 _unit];
    }
  }

  v26 = v33;
  v25 = v34;
  (*(v34 + 16))(v37, v23, v33);
  v27 = v20;
  v28 = COERCE_DOUBLE(sub_1D14A1764(a1, v35, v24));
  if (v29)
  {
    goto LABEL_10;
  }

  if (v28 == 1.79769313e308)
  {
    v38 = [objc_opt_self() labelColor];
    sub_1D149D81C();
    v30 = v37;
    sub_1D15A2418();
    v38 = sub_1D15A3058();
    sub_1D149D7C8();
    sub_1D15A2418();

    v26 = v33;
    v25 = v34;
    (*(v34 + 8))(v36, v33);
LABEL_15:
    sub_1D14A0FC0(v19);
    goto LABEL_16;
  }

  v26 = v33;
  v25 = v34;
  v23 = v36;
  if (v28 == -1.79769313e308)
  {
    v38 = [objc_opt_self() secondaryLabelColor];
    sub_1D149D81C();
    v30 = v37;
    sub_1D15A2418();
    v38 = sub_1D15A3058();
    sub_1D149D7C8();
    sub_1D15A2418();

    (*(v25 + 8))(v23, v26);
    goto LABEL_15;
  }

LABEL_10:

  (*(v25 + 8))(v23, v26);
  sub_1D14A0FC0(v19);
  v30 = v37;
LABEL_16:
  v32(a4, v30, v26);
  return (*(v25 + 56))(a4, 0, 1, v26);
}

void sub_1D14A0F04()
{
  if (!qword_1EE05AAE0)
  {
    sub_1D15A23F8();
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05AAE0);
    }
  }
}

uint64_t sub_1D14A0F5C(uint64_t a1, uint64_t a2)
{
  sub_1D14A0F04();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D14A0FC0(uint64_t a1)
{
  sub_1D14A0F04();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D14A101C(void *a1, void *a2, void **a3)
{
  v6 = *a3;
  if (*a3)
  {
    v7 = *a3;
  }

  else
  {
    v7 = [*(v3 + 24) unitForChartingDisplayType_];
    if (!v7)
    {
      v7 = [a2 _unit];
    }
  }

  v8 = v6;
  v9 = sub_1D14A1764(a1, a2, v7);
  if (v10)
  {
  }

  else
  {
    v11 = *&v9;

    if (v11 == 1.79769313e308 || v11 == -1.79769313e308)
    {
      return 1;
    }
  }

  return 0;
}

void *StatisticsSnidgetStringBuilder.__allocating_init(healthStore:unitPreferenceController:viewControllerFactory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *StatisticsSnidgetStringBuilder.init(healthStore:unitPreferenceController:viewControllerFactory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

id sub_1D14A1194()
{
  v0 = [objc_opt_self() countUnit];

  return v0;
}

void *_s19HealthVisualization30StatisticsSnidgetStringBuilderC11healthStore24unitPreferenceControllerACSo08HKHealthH0C_So06HKUnitjK0CSgtcfC_0(void *a1, id a2)
{
  v4 = swift_allocObject();
  v4[2] = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstanceForHealthStore_];
  v4[4] = v7;
  if (!a2)
  {
    v8 = v7;
    a2 = [v8 createHKUnitPreferenceController];
  }

  v4[3] = a2;
  return v4;
}

void *_s19HealthVisualization30StatisticsSnidgetStringBuilderC11healthStore24unitPreferenceControllerACSo08HKHealthH0C_So06HKUnitjK0CSgtcfc_0(void *a1, id a2)
{
  v2[2] = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstanceForHealthStore_];
  v2[4] = v7;
  if (!a2)
  {
    v8 = v7;
    a2 = [v8 createHKUnitPreferenceController];
  }

  v2[3] = a2;
  return v2;
}

void *_s19HealthVisualization30StatisticsSnidgetStringBuilderC11healthStoreACSo08HKHealthH0C_tcfC_0(void *a1)
{
  v2 = swift_allocObject();
  v2[2] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sharedInstanceForHealthStore_];
  v2[4] = v5;
  v6 = v5;
  v7 = [v6 createHKUnitPreferenceController];

  v2[3] = v7;
  return v2;
}

void *_s19HealthVisualization30StatisticsSnidgetStringBuilderC11healthStoreACSo08HKHealthH0C_tcfc_0(void *a1)
{
  v1[2] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sharedInstanceForHealthStore_];
  v1[4] = v5;
  v6 = v5;
  v7 = [v6 createHKUnitPreferenceController];

  v1[3] = v7;
  return v1;
}

uint64_t _s19HealthVisualization30StatisticsSnidgetStringBuilderCfD_0()
{

  return swift_deallocClassInstance();
}

void *SnidgetStringBuilder.init(healthStore:unitPreferenceController:viewControllerFactory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void *SnidgetStringBuilder.init(healthStore:unitPreferenceController:)(void *a1, id a2)
{
  v2[2] = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstanceForHealthStore_];
  v2[4] = v7;
  if (!a2)
  {
    v8 = v7;
    a2 = [v8 createHKUnitPreferenceController];
  }

  v2[3] = a2;
  return v2;
}

void *SnidgetStringBuilder.init(healthStore:)(void *a1)
{
  v1[2] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sharedInstanceForHealthStore_];
  v1[4] = v5;
  v6 = v5;
  v7 = [v6 createHKUnitPreferenceController];

  v1[3] = v7;
  return v1;
}

id sub_1D14A16E4(void **a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v5 = [*(v3 + 24) unitForChartingDisplayType_];
    if (!v5)
    {
      v5 = [a3 _unit];
    }
  }

  v7 = v4;
  return v5;
}

uint64_t sub_1D14A1764(void *a1, void *a2, void *a3)
{
  v7 = *v3;
  v8 = sub_1D15A3268();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 objectType];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();

  if (!v14)
  {
    [a2 _value];
    return v17;
  }

  if ([a2 isCompatibleWithUnit_])
  {
    v15 = [a1 behavior];
    v16 = [v15 chartsRelativeData];

    if (v16)
    {
      [a2 _baselineRelativeDoubleValueForUnit_];
    }

    else
    {
      [a2 doubleValueForUnit_];
    }

    return v17;
  }

  sub_1D15A31E8();
  v18 = a3;
  v19 = a1;
  v20 = sub_1D15A3248();
  v21 = sub_1D15A4318();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41[0] = v40;
    *v22 = 136446722;
    v41[1] = v7;
    swift_getMetatypeMetadata();
    v23 = sub_1D15A3F68();
    v25 = v9;
    v26 = sub_1D1479780(v23, v24, v41);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v27 = [v18 unitString];
    v28 = sub_1D15A3F38();
    v30 = v29;

    v31 = sub_1D1479780(v28, v30, v41);

    *(v22 + 14) = v31;
    *(v22 + 22) = 2080;
    v32 = [v19 displayTypeIdentifierString];
    v33 = sub_1D15A3F38();
    v35 = v34;

    v36 = sub_1D1479780(v33, v35, v41);

    *(v22 + 24) = v36;
    _os_log_impl(&dword_1D1446000, v20, v21, "[%{public}s] Preferred Unit %s isn't compatible with asked for quantity type: %s", v22, 0x20u);
    v37 = v40;
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v37, -1, -1);
    MEMORY[0x1D388BF00](v22, -1, -1);

    (*(v25 + 8))(v12, v8);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  return 0;
}

id sub_1D14A1B10(void *a1, double a2)
{
  v3 = [a1 presentation];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v5 = [v3 adjustedValueForDaemonValue_];

  return v5;
}

uint64_t sub_1D14A1BA4(void *a1, void *a2, uint64_t *a3)
{
  v13 = *a3;
  v6 = (*(*v3 + 128))(&v13, a1, a2);
  v7 = sub_1D14A1764(a1, a2, v6);
  if (v8)
  {

    return 0;
  }

  else
  {
    v10 = (*(*v3 + 144))(a1, *&v7);
    [v10 doubleValue];
    v12 = v11;

    return v12;
  }
}

uint64_t sub_1D14A1C8C(void *a1, void *a2, uint64_t *a3)
{
  v14 = *a3;
  v6 = (*(*v3 + 128))(&v14, a1, a2);
  v7 = sub_1D14A1764(a1, a2, v6);
  if (v8)
  {
    v9 = v7;

    return v9;
  }

  else
  {
    v11 = (*(*v3 + 144))(a1, *&v7);
    [v11 doubleValue];
    v13 = v12;

    return v13;
  }
}

uint64_t sub_1D14A1D7C()
{
  v0 = sub_1D15A2458();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  sub_1D15A2448();
  v9 = sub_1D15A3058();
  sub_1D149D7C8();
  sub_1D15A2468();
  v9 = [objc_opt_self() labelColor];
  sub_1D149D81C();
  sub_1D15A2468();
  (*(v1 + 16))(v3, v6, v0);

  sub_1D15A2408();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_1D14A1F1C()
{
  if (qword_1EE059700 != -1)
  {
    swift_once();
  }

  sub_1D15A2438();
  sub_1D14A1D7C();
}

void sub_1D14A1FE8(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, id a4@<X8>)
{
  v9 = *v4;
  v10 = sub_1D15A3268();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *a3;
  v15 = (*(v9 + 128))(&v46, a1, a2, v12);
  v16 = sub_1D14A1764(a1, a2, v15);
  if (v17)
  {
    sub_1D15A31E8();
    v18 = a1;
    v19 = sub_1D15A3248();
    v20 = sub_1D15A4318();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      v46 = v9;
      *v21 = 136446466;
      swift_getMetatypeMetadata();
      v22 = sub_1D15A3F68();
      v24 = sub_1D1479780(v22, v23, &v45);
      v44 = a4;
      v25 = v24;

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = [v18 displayTypeIdentifierString];
      v27 = sub_1D15A3F38();
      v29 = v28;

      v30 = sub_1D1479780(v27, v29, &v45);

      *(v21 + 14) = v30;
      a4 = v44;
      _os_log_impl(&dword_1D1446000, v19, v20, "[%{public}s] Failed to create string for quantity type: %s", v21, 0x16u);
      v31 = v43;
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v31, -1, -1);
      MEMORY[0x1D388BF00](v21, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v14, v10);
    v40 = sub_1D15A23F8();
    (*(*(v40 - 8) + 56))(a4, 1, 1, v40);
  }

  else
  {
    v32 = (*(*v4 + 144))(a1, *&v16);
    v33 = v15;
    v44 = [a1 hk:v33 valueFormatterForUnit:?];
    v34 = v4[3];
    v35 = sub_1D15A3048();
    v36 = sub_1D15A3068();
    v37 = [v44 attributedStringFromValue:v32 displayType:a1 unit:v33 unitController:v34 valueFont:v35 unitFont:v36];

    if (v37)
    {
      sub_1D15A2428();

      v38 = sub_1D15A23F8();
      v39 = *(*(v38 - 8) + 56);

      v39(a4, 0, 1, v38);
    }

    else
    {
      v41 = sub_1D15A23F8();
      (*(*(v41 - 8) + 56))(a4, 1, 1, v41);

      v42 = v44;
    }
  }
}

uint64_t sub_1D14A2490@<X0>(char *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v38 = a6;
  v11 = sub_1D15A2458();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v37[1] = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1491C64();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D15A22A8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149D54C();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = *a2;
  v37[0] = a3;
  *v22 = a3;
  v25 = v22;
  v22[8] = a4 & 1;
  v27 = *(v26 + 56);
  sub_1D149D62C(a5, &v22[v27]);
  if (v23)
  {
    sub_1D149D62C(v25 + v27, v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_1D14A36F0(v15, sub_1D1491C64);
LABEL_20:
      v34 = 1;
      v28 = v38;
      goto LABEL_25;
    }

    (*(v17 + 32))(v19, v15, v16);
    v29 = [objc_opt_self() hk_mediumMonthDayDateIntervalFormatter];
    if (!v29)
    {
      (*(v17 + 8))(v19, v16);
      goto LABEL_20;
    }

    v30 = v29;
    v31 = sub_1D15A2228();
    v32 = [v30 stringFromDateInterval_];

    if (!v32)
    {
      (*(v17 + 8))(v19, v16);

      goto LABEL_20;
    }

    v33 = v25;
    sub_1D15A3F38();

    (*(v17 + 8))(v19, v16);
    v28 = v38;
LABEL_24:

    sub_1D15A2448();
    sub_1D15A2408();
    v39 = sub_1D15A3068();
    sub_1D149D7C8();
    sub_1D15A2418();
    v39 = [objc_opt_self() secondaryLabelColor];
    sub_1D149D81C();
    sub_1D15A2418();

    v34 = 0;
    v25 = v33;
    goto LABEL_25;
  }

  if (v24 <= 4)
  {
    v28 = v38;
    if (v24)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v28 = v38;
    if (v24 > 7)
    {
      v34 = 1;
      if (v24 != 9)
      {
        goto LABEL_25;
      }
    }

    else if (v24 != 6)
    {
LABEL_21:
      v33 = v25;
      if (qword_1EE059700 != -1)
      {
        swift_once();
      }

      sub_1D15A2438();

      goto LABEL_24;
    }
  }

  v34 = 1;
  if ((a4 & 1) == 0 && v37[0] >= 2)
  {
    goto LABEL_21;
  }

LABEL_25:
  sub_1D14A36F0(v25, sub_1D149D54C);
  v35 = sub_1D15A23F8();
  return (*(*(v35 - 8) + 56))(v28, v34, 1, v35);
}

uint64_t sub_1D14A2A30()
{
  v0 = sub_1D15A2458();
  MEMORY[0x1EEE9AC00](v0 - 8);

  sub_1D15A2448();
  sub_1D15A2408();
  sub_1D15A3068();
  sub_1D149D7C8();
  sub_1D15A2418();
  [objc_opt_self() secondaryLabelColor];
  sub_1D149D81C();
  return sub_1D15A2418();
}

uint64_t sub_1D14A2B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D15A2458();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D15A22A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1491C64();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  (*(v6 + 16))(&v23 - v14, a1, v5, v13);
  (*(v6 + 56))(v15, 0, 1, v5);
  sub_1D149D62C(v15, v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1D14A36F0(v15, sub_1D1491C64);
LABEL_8:
    sub_1D14A36F0(v11, sub_1D1491C64);
    v20 = 1;
    goto LABEL_9;
  }

  (*(v6 + 32))(v8, v11, v5);
  v16 = [objc_opt_self() hk_mediumMonthDayDateIntervalFormatter];
  if (!v16)
  {
LABEL_7:
    (*(v6 + 8))(v8, v5);
    v11 = v15;
    goto LABEL_8;
  }

  v17 = v16;
  v18 = sub_1D15A2228();
  v19 = [v17 stringFromDateInterval_];

  if (!v19)
  {

    goto LABEL_7;
  }

  sub_1D15A3F38();

  (*(v6 + 8))(v8, v5);
  sub_1D14A36F0(v15, sub_1D1491C64);

  sub_1D15A2448();
  sub_1D15A2408();
  v24 = sub_1D15A3068();
  sub_1D149D7C8();
  sub_1D15A2418();
  v24 = [objc_opt_self() secondaryLabelColor];
  sub_1D149D81C();
  sub_1D15A2418();

  v20 = 0;
LABEL_9:
  v21 = sub_1D15A23F8();
  return (*(*(v21 - 8) + 56))(a2, v20, 1, v21);
}

HealthVisualization::LocalizationOverride __swiftcall LocalizationOverride.init(valueOverrideLocalizedStringKey:valueOverrideLocalizedStringTable:)(Swift::String_optional valueOverrideLocalizedStringKey, Swift::String_optional valueOverrideLocalizedStringTable)
{
  *v2 = valueOverrideLocalizedStringKey;
  v2[1] = valueOverrideLocalizedStringTable;
  result.valueOverrideLocalizedStringTable = valueOverrideLocalizedStringTable;
  result.valueOverrideLocalizedStringKey = valueOverrideLocalizedStringKey;
  return result;
}

uint64_t LocalizationOverride.valueOverrideLocalizedStringKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LocalizationOverride.valueOverrideLocalizedStringTable.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1D14A2F88()
{
  if (*v0)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_1D14A2FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001FLL && 0x80000001D15BE9A0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D15BE9C0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D15A4BA8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D14A30A8(uint64_t a1)
{
  v2 = sub_1D14A37FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14A30E4(uint64_t a1)
{
  v2 = sub_1D14A37FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocalizationOverride.encode(to:)(void *a1)
{
  sub_1D14A3850(0, &qword_1EC630540, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14A37FC();
  sub_1D15A4CE8();
  v13 = 0;
  v9 = v11[3];
  sub_1D15A4AA8();
  if (!v9)
  {
    v12 = 1;
    sub_1D15A4AA8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t LocalizationOverride.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D14A3850(0, &qword_1EC630550, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14A37FC();
  sub_1D15A4CD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_1D15A49E8();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_1D15A49E8();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void *SnidgetStringBuilder.__allocating_init(healthStore:unitPreferenceController:viewControllerFactory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *SnidgetStringBuilder.__allocating_init(healthStore:unitPreferenceController:)(void *a1, id a2)
{
  v4 = swift_allocObject();
  v4[2] = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstanceForHealthStore_];
  v4[4] = v7;
  if (!a2)
  {
    v8 = v7;
    a2 = [v8 createHKUnitPreferenceController];
  }

  v4[3] = a2;
  return v4;
}

void *SnidgetStringBuilder.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  v2[2] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sharedInstanceForHealthStore_];
  v2[4] = v5;
  v6 = v5;
  v7 = [v6 createHKUnitPreferenceController];

  v2[3] = v7;
  return v2;
}

uint64_t SnidgetStringBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D14A36F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s19HealthVisualization20LocalizationOverrideV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1D15A4BA8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_1D15A4BA8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D14A37FC()
{
  result = qword_1EC630548;
  if (!qword_1EC630548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630548);
  }

  return result;
}

void sub_1D14A3850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D14A37FC();
    v7 = a3(a1, &type metadata for LocalizationOverride.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL _s19HealthVisualization21StringBuilderUnitModeO2eeoiySbAC_ACtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_1D14A0574();
      v4 = v3;
      v5 = v2;
      v6 = sub_1D15A4598();

      return v6 & 1;
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_1D14A3930(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D14A398C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D14A39F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D14A3A40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D14A3A94(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D14A3AAC(void *result, int a2)
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

unint64_t sub_1D14A3D38()
{
  result = qword_1EC630558;
  if (!qword_1EC630558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630558);
  }

  return result;
}

unint64_t sub_1D14A3D90()
{
  result = qword_1EC630560;
  if (!qword_1EC630560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630560);
  }

  return result;
}

unint64_t sub_1D14A3DE8()
{
  result = qword_1EC630568;
  if (!qword_1EC630568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630568);
  }

  return result;
}

HealthVisualization::StatisticsQueryConfiguration __swiftcall StatisticsQueryConfiguration.init(dateRange:statisticsOptions:anchorDate:aggregationInterval:)(HealthVisualization::DateRange dateRange, Swift::OpaquePointer statisticsOptions, HealthVisualization::AnchorDate anchorDate, HealthVisualization::StatisticsInterval aggregationInterval)
{
  v5 = *anchorDate;
  *v4 = dateRange;
  *(v4 + 8) = statisticsOptions;
  *(v4 + 16) = v5;
  *(v4 + 17) = aggregationInterval;
  result.statisticsOptions = statisticsOptions;
  result.anchorDate = anchorDate;
  result.dateRange = dateRange;
  return result;
}

unint64_t sub_1D14A3E7C()
{
  v1 = 0x676E615265746164;
  v2 = 0x6144726F68636E61;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D14A3F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D14A4A60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D14A3F34(uint64_t a1)
{
  v2 = sub_1D14A45D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14A3F70(uint64_t a1)
{
  v2 = sub_1D14A45D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StatisticsQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D14A4724(0, &qword_1EE056328, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v17 = *(v1 + 1);
  v10 = v1[16];
  v15 = v1[17];
  v16 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14A45D8();
  sub_1D15A4CE8();
  v25 = v9;
  v24 = 0;
  sub_1D147903C();
  sub_1D15A4B38();
  if (!v2)
  {
    v11 = v15;
    v12 = v16;
    v18 = v17;
    v23 = 1;
    sub_1D14A462C();
    sub_1D14A4788(&qword_1EE056880, sub_1D14A467C);
    sub_1D15A4B38();
    v22 = v12;
    v21 = 2;
    sub_1D148D93C();
    sub_1D15A4B38();
    v20 = v11;
    v19 = 3;
    sub_1D14A46D0();
    sub_1D15A4B38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StatisticsQueryConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D14A4724(0, &qword_1EE05AC60, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14A45D8();
  sub_1D15A4CD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_1D14790F4();
  sub_1D15A4A78();
  v10 = v22;
  sub_1D14A462C();
  v20 = 1;
  sub_1D14A4788(&qword_1EE05ADC0, sub_1D14A47F4);
  sub_1D15A4A78();
  v11 = v15;
  v18 = 2;
  sub_1D148DC18();
  sub_1D15A4A78();
  HIDWORD(v14) = v19;
  v16 = 3;
  sub_1D14A4848();
  sub_1D15A4A78();
  (*(v7 + 8))(v9, v6);
  v13 = v17;
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = BYTE4(v14);
  *(a2 + 17) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s19HealthVisualization28StatisticsQueryConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  if ((sub_1D1477464(*a1, *a2) & 1) == 0 || (sub_1D1488F9C(v2, v5) & 1) == 0 || (sub_1D1477670(v3, v6) & 1) == 0)
  {
    return 0;
  }

  return sub_1D147783C(v4, v7);
}

unint64_t sub_1D14A45D8()
{
  result = qword_1EE05AFD0;
  if (!qword_1EE05AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AFD0);
  }

  return result;
}

void sub_1D14A462C()
{
  if (!qword_1EE05ADC8)
  {
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05ADC8);
    }
  }
}

unint64_t sub_1D14A467C()
{
  result = qword_1EE05A688;
  if (!qword_1EE05A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A688);
  }

  return result;
}

unint64_t sub_1D14A46D0()
{
  result = qword_1EE058E50;
  if (!qword_1EE058E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E50);
  }

  return result;
}

void sub_1D14A4724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D14A45D8();
    v7 = a3(a1, &type metadata for StatisticsQueryConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D14A4788(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D14A462C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D14A47F4()
{
  result = qword_1EE05B780;
  if (!qword_1EE05B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B780);
  }

  return result;
}

unint64_t sub_1D14A4848()
{
  result = qword_1EE05B1D0;
  if (!qword_1EE05B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B1D0);
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

uint64_t sub_1D14A48B0(uint64_t a1, int a2)
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

uint64_t sub_1D14A48F8(uint64_t result, int a2, int a3)
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

unint64_t sub_1D14A495C()
{
  result = qword_1EC630570;
  if (!qword_1EC630570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630570);
  }

  return result;
}

unint64_t sub_1D14A49B4()
{
  result = qword_1EE05AFC0;
  if (!qword_1EE05AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AFC0);
  }

  return result;
}

unint64_t sub_1D14A4A0C()
{
  result = qword_1EE05AFC8;
  if (!qword_1EE05AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AFC8);
  }

  return result;
}

uint64_t sub_1D14A4A60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E615265746164 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D15BE9F0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144726F68636E61 && a2 == 0xEA00000000006574 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D15BEA10 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t MostRecentTimePeriodQueryOperation.result.getter()
{

  sub_1D15A2D28();
}

uint64_t sub_1D14A4C30(uint64_t a1)
{
  sub_1D14A7D58();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14A7FF0(a1, v4);
  return sub_1D14A4CBC(v4);
}

uint64_t sub_1D14A4CBC(uint64_t a1)
{

  sub_1D15A2D38();

  return sub_1D14A80DC(a1);
}

id sub_1D14A4D28()
{
  v1 = qword_1EE057CF8;
  v2 = *(v0 + qword_1EE057CF8);
  if (v2)
  {
    v3 = *(v0 + qword_1EE057CF8);
  }

  else
  {
    v4 = sub_1D14A4D88();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D14A4D88()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  sub_1D1496034();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D15AE100;
  v4 = objc_opt_self();
  v5 = sub_1D15A2618();
  v6 = [v4 predicateForSamplesWithStartDate:0 endDate:v5 options:0];

  *(v3 + 32) = v6;
  v25 = v3;
  v7 = *&v1[qword_1EE057CD8];
  if (v7)
  {
    v8 = v7;
    MEMORY[0x1D388A400]();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D15A40E8();
    }

    sub_1D15A4108();
  }

  sub_1D1453BA0(0, &qword_1EE056788);
  v9 = sub_1D15A40A8();

  v24 = [objc_opt_self() andPredicateWithSubpredicates_];

  v10 = *&v1[qword_1EE057CF0];
  v11 = [v1 name];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D15A3F38();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = v2 + class metadata base offset for MostRecentTimePeriodQueryOperation;
  v17 = *(v2 + class metadata base offset for MostRecentTimePeriodQueryOperation);
  v18 = *(v16 + 8);
  type metadata accessor for MostRecentSampleQueryOperation();
  v19 = *&v1[qword_1EE0681B8];
  v20 = *&v1[qword_1EE0681C0];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v17;
  v22[3] = v18;
  v22[4] = v21;
  return MostRecentSampleQueryOperation.__allocating_init(sampleType:predicate:name:queryQualityOfService:healthStore:resultHandler:)(v10, v24, v13, v15, v19, v20, sub_1D14A8054, v22);
}

id MostRecentTimePeriodQueryOperation.__allocating_init(sampleType:endDate:predicate:name:queryQualityOfService:healthStore:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = sub_1D14A7A94(a1, a2, a3, a4, a5, a6, a7);

  return v16;
}

id MostRecentTimePeriodQueryOperation.init(sampleType:endDate:predicate:name:queryQualityOfService:healthStore:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_1D14A7A94(a1, a2, a3, a4, a5, a6, a7);

  return v10;
}

Swift::Void __swiftcall MostRecentTimePeriodQueryOperation.main()()
{
  sub_1D14A7D58();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1487B04();
  v4 = swift_allocError();
  *v5 = 2;
  *v3 = v4;
  swift_storeEnumTagMultiPayload();
  sub_1D14A4CBC(v3);
  v6._countAndFlagsBits = 0x676E696E6E7572;
  v6._object = 0xE700000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v6, v7);
  v8 = *(v0 + qword_1EE057CE8);
  v9 = sub_1D14A4D28();
  [v8 addOperation_];
}

void sub_1D14A5238(void *a1)
{
  v1 = a1;
  MostRecentTimePeriodQueryOperation.main()();
}

Swift::Void __swiftcall MostRecentTimePeriodQueryOperation.cleanUp()()
{
  sub_1D14A7D58();
  *&v2 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([v0 isCancelled])
  {
    sub_1D1487B04();
    v5 = swift_allocError();
    *v6 = 3;
    *v4 = v5;
    swift_storeEnumTagMultiPayload();
    sub_1D14A4CBC(v4);
    v7._countAndFlagsBits = 0x656C6C65636E6163;
    v7._object = 0xE900000000000064;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v7, v8);
  }

  [*&v0[qword_1EE057CE8] cancelAllOperations];
}

id MostRecentTimePeriodQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D14A5448()
{

  v1 = qword_1EE0681B0;
  v2 = sub_1D15A26A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_1EE0681C8);
}

id MostRecentTimePeriodQueryOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D14A5558(uint64_t a1)
{

  v2 = qword_1EE0681B0;
  v3 = sub_1D15A26A8();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_1EE0681C8);
}

void sub_1D14A5658(void *a1, char a2)
{
  sub_1D1455AC0(0, &qword_1EE056238, sub_1D14A7D58, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  sub_1D14A7D58();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ([v13 isCancelled])
    {

      v14._object = 0x80000001D15BDC90;
      v14._countAndFlagsBits = 0xD00000000000002DLL;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v14, v15);
LABEL_5:

      return;
    }

    v16 = [v13 isFinished];

    if (v16)
    {
      goto LABEL_5;
    }

    sub_1D14A58E8(a1, a2 & 1, v6);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {

      sub_1D14A8064(v6, &qword_1EE056238, sub_1D14A7D58);
    }

    else
    {
      v17 = sub_1D14A81A0(v6, v11, sub_1D14A7D58);
      MEMORY[0x1EEE9AC00](v17);
      *(&v18 - 2) = v13;
      *(&v18 - 1) = v11;
      sub_1D15A2DA8();

      sub_1D14A80DC(v11);
    }
  }
}

uint64_t sub_1D14A58E8@<X0>(void *a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v4 = v3;
  sub_1D14A8138();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  if (a2)
  {
    swift_getErrorValue();
    v15 = a1;
    v16._countAndFlagsBits = sub_1D15A4C08();
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    NSOperation.logErrorString(_:withInfo:)(v16, v17);

    *a3 = a1;
    sub_1D14A7D58();
    v20 = v19;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
  }

  if (!a1)
  {
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v21 = v12;
    sub_1D15A47D8();

    v42._countAndFlagsBits = 0xD00000000000001DLL;
    v42._object = 0x80000001D15BEBB0;
    v22 = [*(v4 + qword_1EE057CF0) identifier];
    v23 = sub_1D15A3F38();
    v25 = v24;

    MEMORY[0x1D388A330](v23, v25);

    v26._countAndFlagsBits = 0x64656873696E6966;
    v26._object = 0xE800000000000000;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v26, v42);

    v27 = *(v21 + 48);
    *v14 = 0;
    v28 = qword_1EE0681B0;
    v29 = sub_1D15A26A8();
    v30 = *(v29 - 8);
    (*(v30 + 16))(&v14[v27], v4 + v28, v29);
    sub_1D14A81A0(v14, v10, sub_1D14A8138);
    v31 = *v10;
    v32 = *(v21 + 48);
    sub_1D14A7DC8();
    v34 = *(v33 + 48);
    *a3 = v31;
    (*(v30 + 32))(&a3[v34], &v10[v32], v29);
    sub_1D14A7D58();
    v20 = v35;
    goto LABEL_6;
  }

  v18 = sub_1D14A5D7C(a1);
  v37 = *(v4 + qword_1EE0681C8);
  *(v4 + qword_1EE0681C8) = v18;
  v38 = v18;

  [*(v4 + qword_1EE057CE8) addOperation_];
  sub_1D14A8208(a1);

  sub_1D14A7D58();
  v40 = *(*(v39 - 8) + 56);

  return v40(a3, 1, 1, v39);
}

uint64_t sub_1D14A5CF4(uint64_t a1, uint64_t a2)
{
  sub_1D14A7D58();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14A7FF0(a2, v5);
  return sub_1D14A4CBC(v5);
}

id sub_1D14A5D7C(void *a1)
{
  v3 = v1;
  v5 = *MEMORY[0x1E69E7D40] & *v3;
  v6 = sub_1D15A22A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + qword_1EE057CD8);
  result = sub_1D14A7158(a1, v9);
  if (!v2)
  {
    v36 = v5;
    v37 = a1;
    v38 = 0;
    sub_1D1496034();
    v12 = swift_allocObject();
    v39 = xmmword_1D15AE100;
    *(v12 + 16) = xmmword_1D15AE100;
    v13 = objc_opt_self();
    v14 = sub_1D15A2228();
    v15 = [v13 predicateForSamplesWithinDateInterval:v14 options:0];

    *(v12 + 32) = v15;
    v40 = v12;
    if (v10)
    {
      v16 = v10;
      MEMORY[0x1D388A400]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D15A40E8();
      }

      sub_1D15A4108();
    }

    sub_1D1453BA0(0, &qword_1EE056788);
    v17 = sub_1D15A40A8();

    v35 = [objc_opt_self() andPredicateWithSubpredicates_];

    (*(v7 + 8))(v9, v6);
    v18 = *(v3 + qword_1EE057CF0);
    v19 = swift_allocObject();
    *(v19 + 16) = v39;
    sub_1D1453BA0(0, &qword_1EE05AD48);
    swift_getKeyPath();
    v34 = v18;
    *(v19 + 32) = sub_1D15A43D8();
    v20 = [v3 name];
    if (v20)
    {
      v21 = v20;
      *&v39 = sub_1D15A3F38();
      v23 = v22;
    }

    else
    {
      *&v39 = 0;
      v23 = 0;
    }

    v25 = *(v36 + class metadata base offset for MostRecentTimePeriodQueryOperation);
    v24 = *(v36 + class metadata base offset for MostRecentTimePeriodQueryOperation + 8);
    type metadata accessor for SampleQueryOperation();
    v26 = *(v3 + qword_1EE0681B8);
    v27 = *(v3 + qword_1EE0681C0);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = v25;
    v29[3] = v24;
    v30 = v37;
    v29[4] = v28;
    v29[5] = v30;
    v31 = v27;
    v32 = v30;
    return SampleQueryOperation.__allocating_init(sampleType:predicate:limit:sortDescriptors:name:queryQualityOfService:healthStore:resultHandler:)(v34, v35, 0, v19, v39, v23, v26, v31, sub_1D14A8214, v29);
  }

  return result;
}

uint64_t static MostRecentTimePeriodQuerySupport.predicateForAllSamples(onDayOf:additionalPredicate:)(void *a1, void *a2)
{
  v5 = sub_1D15A22A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D14A7158(a1, v8);
  if (!v2)
  {
    sub_1D1496034();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D15AE100;
    v11 = objc_opt_self();
    v12 = sub_1D15A2228();
    v13 = [v11 predicateForSamplesWithinDateInterval:v12 options:0];

    *(v10 + 32) = v13;
    v18 = v10;
    if (a2)
    {
      v14 = a2;
      MEMORY[0x1D388A400]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D15A40E8();
      }

      sub_1D15A4108();
    }

    sub_1D1453BA0(0, &qword_1EE056788);
    v15 = sub_1D15A40A8();

    v16 = [objc_opt_self() andPredicateWithSubpredicates_];

    (*(v6 + 8))(v8, v5);
    return v16;
  }

  return result;
}

uint64_t static MostRecentTimePeriodQuerySupport.sortDescriptorsForSamples.getter()
{
  sub_1D1496034();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D15AE100;
  sub_1D1453BA0(0, &qword_1EE05AD48);
  swift_getKeyPath();
  *(v0 + 32) = sub_1D15A43D8();
  return v0;
}

void sub_1D14A6404(void *a1, char a2, uint64_t a3, void *a4)
{
  sub_1D14A8138();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v31 - v12);
  sub_1D14A7D58();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if ([v18 isCancelled])
    {

      v19._object = 0x80000001D15BDC90;
      v19._countAndFlagsBits = 0xD00000000000002DLL;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v19, v20);
LABEL_5:

      return;
    }

    v31 = a4;
    v21 = [v18 isFinished];

    if (v21)
    {
      goto LABEL_5;
    }

    if (a2)
    {
      *v16 = a1;
      swift_storeEnumTagMultiPayload();
      v22 = a1;
    }

    else
    {
      sub_1D1453BA0(0, &qword_1EE05B568);
      v23 = sub_1D15A48A8();
      v24 = v31;
      v25 = static MostRecentTimePeriodQuerySupport.totalDuration(for:referenceSample:)(v23, v31);

      *v13 = v25;
      static MostRecentTimePeriodQuerySupport.timestamp(sample:)(v24);
      sub_1D14A81A0(v13, v10, sub_1D14A8138);
      v26 = *v10;
      v27 = *(v8 + 48);
      sub_1D14A7DC8();
      v29 = *(v28 + 48);
      *v16 = v26;
      v30 = sub_1D15A26A8();
      (*(*(v30 - 8) + 32))(&v16[v29], &v10[v27], v30);
      v22 = swift_storeEnumTagMultiPayload();
    }

    MEMORY[0x1EEE9AC00](v22);
    *(&v31 - 2) = v18;
    *(&v31 - 1) = v16;
    sub_1D15A2DA8();

    sub_1D14A80DC(v16);
  }
}

double static MostRecentTimePeriodQuerySupport.totalDuration(for:referenceSample:)(unint64_t a1, void *a2)
{
  v4 = sub_1D15A3268();
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D15A26A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D15A22A8();
  v9 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (a1 >> 62)
  {
    v15 = 0.0;
    if (!sub_1D15A4708())
    {
      return v15;
    }

LABEL_3:
    sub_1D14A7158(a2, v14);
    v46 = v9;
    v16 = objc_opt_self();
    sub_1D1453BA0(0, &qword_1EE05B568);
    v17 = sub_1D15A40A8();
    sub_1D15A2288();
    v18 = sub_1D15A2618();
    v19 = *(v6 + 8);
    v19(v8, v5);
    v45 = v14;
    sub_1D15A2258();
    v20 = sub_1D15A2618();
    v19(v8, v5);
    v21 = [v16 coalesceTimePeriodsFromSamples:v17 strictStartDate:v18 strictEndDate:v20];

    v22 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v23 = sub_1D15A40C8();

      v24 = *(v23 + 16);
      if (v24)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
      v24 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v24)
      {
LABEL_5:
        v49 = v22;
        sub_1D14A7954(0, v24, 0);
        v25 = v49;
        v47 = *(v46 + 16);
        v26 = *(v46 + 80);
        v44 = v23;
        v27 = v23 + ((v26 + 32) & ~v26);
        v28 = *(v46 + 72);
        v29 = (v46 + 8);
        do
        {
          v30 = v48;
          v47(v11, v27, v48);
          sub_1D15A2298();
          v32 = v31;
          (*v29)(v11, v30);
          v49 = v25;
          v34 = *(v25 + 16);
          v33 = *(v25 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_1D14A7954((v33 > 1), v34 + 1, 1);
            v25 = v49;
          }

          *(v25 + 16) = v34 + 1;
          *(v25 + 8 * v34 + 32) = v32;
          v27 += v28;
          --v24;
        }

        while (v24);

LABEL_12:
        v35 = *(v25 + 16);
        v36 = v46;
        if (v35)
        {
          if (v35 > 3)
          {
            v37 = v35 & 0x7FFFFFFFFFFFFFFCLL;
            v38 = (v25 + 48);
            v15 = 0.0;
            v39 = v35 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v15 = v15 + *(v38 - 2) + *(v38 - 1) + *v38 + v38[1];
              v38 += 4;
              v39 -= 4;
            }

            while (v39);
            if (v35 == v37)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v37 = 0;
            v15 = 0.0;
          }

          v40 = v35 - v37;
          v41 = (v25 + 8 * v37 + 32);
          do
          {
            v42 = *v41++;
            v15 = v15 + v42;
            --v40;
          }

          while (v40);
        }

        else
        {
          v15 = 0.0;
        }

LABEL_21:

        (*(v36 + 8))(v45, v48);
        return v15;
      }
    }

    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v15 = 0.0;
  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  return v15;
}

void static MostRecentTimePeriodQuerySupport.timestamp(sample:)(void *a1)
{
  v2 = sub_1D15A26A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v24 - v8;
  v10 = [a1 sampleType];
  v11 = [v10 identifier];

  v12 = sub_1D15A3F38();
  v14 = v13;

  if (sub_1D15A3F38() == v12 && v15 == v14)
  {
  }

  else
  {
    v17 = sub_1D15A4BA8();

    if ((v17 & 1) == 0)
    {
      v25 = [a1 endDate];
      sub_1D15A2668();
      v18 = v25;

      return;
    }
  }

  v19 = [a1 endDate];
  sub_1D15A2668();

  v20 = [a1 _creationDate];
  sub_1D15A2668();

  LOBYTE(v20) = sub_1D15A2638();
  v21 = *(v3 + 8);
  v21(v5, v2);
  v21(v9, v2);
  if (v20)
  {
    v22 = [a1 endDate];
  }

  else
  {
    v22 = [a1 _creationDate];
  }

  v23 = v22;
  sub_1D15A2668();
}

uint64_t sub_1D14A7074(uint64_t a1, uint64_t a2)
{
  sub_1D14A7D58();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14A7FF0(a2, v6);
  sub_1D14A4CBC(v6);
  v7 = [*(a1 + qword_1EE057CF0) identifier];
  v8 = sub_1D15A3F38();
  v10 = v9;

  v11._countAndFlagsBits = 0x64656873696E6966;
  v11._object = 0xE800000000000000;
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v11, v12);
}

uint64_t sub_1D14A7158@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v46 = sub_1D15A2838();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455AC0(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - v6;
  v7 = sub_1D15A2848();
  v42 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D15A26A8();
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  sub_1D15A2818();
  v22 = [a1 endDate];
  sub_1D15A2668();

  sub_1D15A2728();
  v48 = *(v12 + 8);
  v49 = v12 + 8;
  v48(v18, v11);
  v23 = *(v8 + 8);
  v41 = v8 + 8;
  v23(v10, v7);
  sub_1D15A2818();
  v25 = v45;
  v24 = v46;
  (*(v3 + 104))(v45, *MEMORY[0x1E6969A48], v46);
  v26 = v47;
  v50 = v21;
  sub_1D15A27F8();
  (*(v3 + 8))(v25, v24);
  v27 = v43;
  v28 = v44;
  v23(v10, v42);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1D14A8064(v26, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_1D15A47D8();
    MEMORY[0x1D388A330](0xD00000000000003CLL, 0x80000001D15BEAD0);
    MEMORY[0x1D388A330](2108704, 0xE300000000000000);
    MEMORY[0x1D388A330](0xD00000000000001CLL, 0x80000001D15BEB10);
    MEMORY[0x1D388A330](10272, 0xE200000000000000);
    v53 = 209;
    v29 = sub_1D15A4B68();
    MEMORY[0x1D388A330](v29);

    MEMORY[0x1D388A330](0xD000000000000034, 0x80000001D15BEB30);
    v30 = v51;
    v31 = v52;
    sub_1D1487F34();
    swift_allocError();
    *v32 = v30;
    v32[1] = v31;
    v32[2] = 0x2000000000000000;
    swift_willThrow();
    return (v48)(v50, v27);
  }

  else
  {
    v34 = v38;
    (*(v28 + 32))(v38, v26, v27);
    v35 = *(v28 + 16);
    v36 = v50;
    v35(v18, v50, v27);
    v35(v39, v34, v27);
    sub_1D15A2268();
    v37 = v48;
    v48(v34, v27);
    return v37(v36, v27);
  }
}

id static MostRecentTimePeriodQuerySupport.predicateForAllSamples(dateInterval:additionalPredicate:)(uint64_t a1, void *a2)
{
  sub_1D1496034();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D15AE100;
  v4 = objc_opt_self();
  v5 = sub_1D15A2228();
  v6 = [v4 predicateForSamplesWithinDateInterval:v5 options:0];

  *(v3 + 32) = v6;
  if (a2)
  {
    v7 = a2;
    MEMORY[0x1D388A400]();
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D15A40E8();
    }

    sub_1D15A4108();
  }

  sub_1D1453BA0(0, &qword_1EE056788);
  v8 = sub_1D15A40A8();

  v9 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v9;
}

char *sub_1D14A7854(char *a1, int64_t a2, char a3)
{
  result = sub_1D151C2B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D14A7874(char *a1, int64_t a2, char a3)
{
  result = sub_1D151C3D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D14A7894(char *a1, int64_t a2, char a3)
{
  result = sub_1D145D080(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D14A78B4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D151C4F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D14A78D4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D151C528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D14A78F4(char *a1, int64_t a2, char a3)
{
  result = sub_1D151C750(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D14A7914(void *a1, int64_t a2, char a3)
{
  result = sub_1D151C888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D14A7934(void *a1, int64_t a2, char a3)
{
  result = sub_1D151C9E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D14A7954(char *a1, int64_t a2, char a3)
{
  result = sub_1D151CB40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D14A7974(char *a1, int64_t a2, char a3)
{
  result = sub_1D151CC5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D14A7994(void *a1, int64_t a2, char a3)
{
  result = sub_1D151CD88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D14A79B4(char *a1, int64_t a2, char a3)
{
  result = sub_1D151CED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D14A79D4(char *a1, int64_t a2, char a3)
{
  result = sub_1D151CFFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D14A79F4(char *a1, int64_t a2, char a3)
{
  result = sub_1D151D124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D14A7A14(size_t a1, int64_t a2, char a3)
{
  result = sub_1D151D258(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D14A7A34(char *a1, int64_t a2, char a3)
{
  result = sub_1D151D28C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D14A7A54(size_t a1, int64_t a2, char a3)
{
  result = sub_1D151D39C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D14A7A74(size_t a1, int64_t a2, char a3)
{
  result = sub_1D151D3D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_1D14A7A94(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v34 = a6;
  v32[1] = a4;
  ObjectType = swift_getObjectType();
  sub_1D14A7D58();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = qword_1EE057CE0;
  sub_1D1487B04();
  v18 = swift_allocError();
  *v19 = 0;
  *v16 = v18;
  swift_storeEnumTagMultiPayload();
  sub_1D1455AC0(0, &qword_1EE0593F8, sub_1D14A7D58, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v7[v17] = sub_1D15A2D68();
  v20 = qword_1EE057CE8;
  v21 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  [v21 setMaxConcurrentOperationCount_];
  *&v8[v20] = v21;
  *&v8[qword_1EE057CF8] = 0;
  *&v8[qword_1EE0681C8] = 0;
  *&v8[qword_1EE057CF0] = a1;
  v22 = qword_1EE0681B0;
  v23 = sub_1D15A26A8();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v8[v22], a2, v23);
  *&v8[qword_1EE057CD8] = a3;
  *&v8[qword_1EE0681B8] = v34;
  *&v8[qword_1EE0681C0] = a7;
  v35.receiver = v8;
  v35.super_class = ObjectType;
  v25 = a1;
  v26 = a7;
  v27 = a3;
  v28 = objc_msgSendSuper2(&v35, sel_init);
  v29 = v28;
  if (a5)
  {
    v30 = sub_1D15A3EF8();
  }

  else
  {
    v30 = 0;
  }

  [v28 setName_];

  (*(v24 + 8))(a2, v23);
  return v28;
}

void sub_1D14A7D58()
{
  if (!qword_1EE056240)
  {
    sub_1D14A7DC8();
    sub_1D148F3FC();
    v0 = sub_1D15A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056240);
    }
  }
}

void sub_1D14A7DC8()
{
  if (!qword_1EE0567E8)
  {
    sub_1D15A26A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0567E8);
    }
  }
}

unint64_t sub_1D14A7E64()
{
  result = qword_1EC630578;
  if (!qword_1EC630578)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC630578);
  }

  return result;
}

uint64_t sub_1D14A7EAC()
{
  result = sub_1D15A26A8();
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

uint64_t sub_1D14A7FF0(uint64_t a1, uint64_t a2)
{
  sub_1D14A7D58();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D14A8064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1455AC0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D14A80DC(uint64_t a1)
{
  sub_1D14A7D58();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D14A8138()
{
  if (!qword_1EE0567E0)
  {
    sub_1D15A26A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0567E0);
    }
  }
}

uint64_t sub_1D14A81A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14A822C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1D14A80DC(a1);

  return sub_1D14A7FF0(v3, a1);
}

uint64_t SummaryModelDerivedContent.init(content:sharableModelReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for SummaryModelDerivedContent();
  *(a4 + *(result + 28)) = a2;
  return result;
}

void sub_1D14A83A4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1D14A871C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D14A842C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1D14A8568(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_1D14A871C()
{
  if (!qword_1EE056898)
  {
    sub_1D15A2BB8();
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056898);
    }
  }
}

uint64_t TimeBasedDistributionChartModel.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartModel() + 32);
  v4 = sub_1D15A3268();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TimeBasedDistributionChartModel.init(flavor:configuration:design:textSupport:logger:)@<X0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = a1 & 1;
  sub_1D1450E94(a2, (a6 + 8));
  v10 = type metadata accessor for TimeBasedDistributionChartModel();
  sub_1D14AAD50(a3, &a6[v10[6]], type metadata accessor for TimeBasedDistributionChartDesign);
  sub_1D1450E94(a4, &a6[v10[7]]);
  v11 = v10[8];
  v12 = sub_1D15A3268();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a6[v11], a5, v12);
}

uint64_t sub_1D14A8984(uint64_t a1, void *a2)
{
  v100 = type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay(0);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v109 = v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D15A2458();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1D15A23F8();
  v110 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for TimeBasedDistributionChartPoint.Skeleton(0);
  MEMORY[0x1EEE9AC00](v95);
  v108 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D15A3268();
  v107 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v102 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + *(type metadata accessor for TimeBasedDistribution() + 20));
  v12 = v11[2];
  v105 = a2;
  v103 = v9;
  v112 = v11;
  if (v12)
  {
    v115 = MEMORY[0x1E69E7CC0];
    sub_1D14A7914(0, v12, 0);
    v13 = v115;
    v14 = (v11 + 8);
    do
    {
      v114 = v14[-2];
      v15 = v14[-1].i64[0];
      v16 = v14[-1].i8[8];
      v17 = v14[-1].i8[9];
      v18 = v14->i64[0];
      v115 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);

      if (v20 >= v19 >> 1)
      {
        sub_1D14A7914((v19 > 1), v20 + 1, 1);
        v13 = v115;
      }

      *(v13 + 16) = v20 + 1;
      *&v21 = vdupq_laneq_s64(v114, 1).u64[0];
      v22 = v13 + 48 * v20;
      *(&v21 + 1) = v15;
      *(v22 + 32) = vdupq_lane_s64(v114.i64[0], 0);
      *(v22 + 48) = v21;
      *(v22 + 64) = v16;
      *(v22 + 65) = v17;
      *(v22 + 72) = v18;
      v14 = (v14 + 40);
      --v12;
    }

    while (v12);
    a2 = v105;
    v9 = v103;
    v11 = v112;
  }

  else if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    v23 = MEMORY[0x1E69E7CC8];
    goto LABEL_9;
  }

  sub_1D14AA7B0();
  v23 = sub_1D15A4968();
LABEL_9:
  v115 = v23;

  sub_1D14AA810(v24, 1, &v115);
  v111 = 0;

  v25 = 0;
  v26 = v115;
  v27 = v11[2];
  v28 = MEMORY[0x1E69E7CC0];
  v113 = v115;
LABEL_10:
  v29 = &v11[5 * v25];
  while (v27 != v25)
  {
    if (v25 >= v11[2])
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    ++v25;
    v30 = (v29 + 5);
    v31 = *(v29 + 57);
    v29 += 5;
    if (v31)
    {
      v33 = *(v30 - 1);
      v32 = *v30;
      v34 = v30[1];
      v35 = *(v30 + 16);
      v36 = v30[3];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v28;
      v114.i64[0] = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D14A78F4(0, *(v28 + 16) + 1, 1);
        v28 = v115;
      }

      v39 = *(v28 + 16);
      v38 = *(v28 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1D14A78F4((v38 > 1), v39 + 1, 1);
        v28 = v115;
      }

      *(v28 + 16) = v39 + 1;
      v40 = v28 + 40 * v39;
      v26 = v113;
      *(v40 + 32) = v114.i64[0];
      *(v40 + 40) = v32;
      *(v40 + 48) = v34;
      *(v40 + 56) = v35;
      *(v40 + 57) = 1;
      *(v40 + 64) = v36;
      a2 = v105;
      v11 = v112;
      goto LABEL_10;
    }
  }

  v92 = *(v28 + 16);

  v41 = a2[4];
  v42 = a2[5];
  v91[2] = a2 + 1;
  __swift_project_boxed_opaque_existential_1(a2 + 1, v41);
  v43 = (*(*(v42 + 8) + 8))(*a2, v41);
  v114.i64[0] = *(v43 + 16);
  if (v114.i64[0])
  {
    v111 = v43;
    v45 = 0;
    v91[1] = a2 + 2;
    v94 = (v110 + 4);
    v93 = (v110 + 2);
    v112 = (v107 + 8);
    v46 = MEMORY[0x1E69E7CC0];
    *&v44 = 136446210;
    v101 = v44;
    v47 = v102;
    while (1)
    {
      if (!*(v26 + 16) || (v48 = sub_1D148011C(*(v111 + 8 * v45 + 32)), (v49 & 1) == 0))
      {
        sub_1D15A3218();
        v62 = sub_1D15A3248();
        v63 = sub_1D15A4328();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v115 = v110;
          *v64 = v101;
          v119 = type metadata accessor for TimeBasedDistributionChartModel();
          sub_1D14AAC00();
          v65 = sub_1D15A3F68();
          v67 = v45;
          v68 = v47;
          v69 = a2;
          v70 = v9;
          v71 = v46;
          v72 = sub_1D1479780(v65, v66, &v115);

          *(v64 + 4) = v72;
          v46 = v71;
          v9 = v70;
          a2 = v69;
          v47 = v68;
          v45 = v67;
          _os_log_impl(&dword_1D1446000, v62, v63, "[%{public}s] Expected to have bucket for each component range.", v64, 0xCu);
          v73 = v110;
          __swift_destroy_boxed_opaque_existential_1(v110);
          v26 = v113;
          MEMORY[0x1D388BF00](v73, -1, -1);
          MEMORY[0x1D388BF00](v64, -1, -1);
        }

        (*v112)(v47, v9);
        goto LABEL_22;
      }

      v110 = v46;
      v50 = *(v26 + 56) + 40 * v48;
      v106 = *v50;
      v51 = *(v50 + 16);
      v52 = *(v50 + 24);
      v53 = *(v50 + 25);
      v54 = *(v50 + 32);
      v55 = type metadata accessor for TimeBasedDistributionChartModel();
      v56 = (a2 + *(v55 + 28));
      v57 = v56[3];
      v58 = v56[4];
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v104 = v51;
      v115 = v51;
      v116 = v52;
      v117 = v53;
      v118 = v54;
      v59 = *(v58 + 8);
      v107 = v54;
      swift_bridgeObjectRetain_n();
      v59(&v115, v57, v58);

      if ((v52 & 1) == 0)
      {
        if (v53)
        {
          break;
        }
      }

      sub_1D15A2448();
      v74 = v96;
      sub_1D15A2408();
      a2 = v105;

      sub_1D14AAC48();
      sub_1D15A2418();
      type metadata accessor for TimeBasedDistributionChartDesign();
      if (v52)
      {
        v75 = 0;
        v61 = 1;
      }

      else
      {
        v61 = 0;
        v75 = v104;
      }

LABEL_41:
      v77 = v106;

      sub_1D14AAC9C();
      sub_1D15A2418();
      if ((v61 & 2) == 2)
      {
        v78 = 36;
      }

      else
      {
        v78 = 40;
      }

      v79 = a2 + *(v55 + 24);
      v80 = *&v79[*(type metadata accessor for TimeBasedDistributionChartDesign() + v78)];

      v81 = v108;
      *v108 = v61;
      *(v81 + 1) = v75;
      v82 = v95;
      v83 = *(v95 + 24);
      v84 = v97;
      (*v94)(&v81[v83], v74, v97);
      *&v81[*(v82 + 28)] = v80;
      LOBYTE(v82) = *v81;
      v85 = v77;
      v86 = v100;
      v87 = v109;
      (*v93)(v109 + *(v100 + 28), &v81[v83], v84);
      *v87 = v82;
      *(v87 + 8) = v75;
      *(v87 + 16) = v85;
      *(v87 + *(v86 + 32)) = v80;

      v46 = v110;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1D148BFF4(0, v46[2] + 1, 1, v46);
      }

      v47 = v102;
      v9 = v103;
      v26 = v113;
      v89 = v46[2];
      v88 = v46[3];
      if (v89 >= v88 >> 1)
      {
        v46 = sub_1D148BFF4(v88 > 1, v89 + 1, 1, v46);
      }

      sub_1D14AACF0(v108, type metadata accessor for TimeBasedDistributionChartPoint.Skeleton);
      v46[2] = v89 + 1;
      sub_1D14AAD50(v109, v46 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v89, type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay);
LABEL_22:
      if (v114.i64[0] == ++v45)
      {

        return v46;
      }
    }

    v60 = v105 + *(v55 + 24);
    if (v60[*(type metadata accessor for TimeBasedDistributionChartDesign() + 92)] == 1 && sub_1D15A3F98() >= 4)
    {
      if (!v45 || v92 > 1 || v45 == *(v111 + 16) - 1)
      {
        goto LABEL_30;
      }
    }

    else if (v92 > 1)
    {
LABEL_30:
      v61 = 2;
LABEL_40:
      sub_1D15A2448();
      v74 = v96;
      sub_1D15A2408();

      v75 = v104;
      v115 = v76;
      sub_1D14AAC48();
      sub_1D15A2418();
      a2 = v105;
      goto LABEL_41;
    }

    v61 = 3;
    goto LABEL_40;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t type metadata accessor for TimeBasedDistributionChartModel()
{
  result = qword_1EC630598;
  if (!qword_1EC630598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D14A94F8(uint64_t a1, void *a2)
{
  v101 = type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek(0);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v112 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D15A2458();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D15A23F8();
  v8 = *(v7 - 8);
  v113 = v7;
  v114 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v104 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for TimeBasedDistributionChartPoint.Skeleton(0);
  MEMORY[0x1EEE9AC00](v103);
  v102 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1D15A3268();
  v111 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v107 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(type metadata accessor for TimeBasedDistribution() + 20));
  v13 = v12[1].i64[0];
  v116 = v12;
  v117 = a2;
  if (v13)
  {
    v119 = MEMORY[0x1E69E7CC0];
    sub_1D14A7914(0, v13, 0);
    v14 = v119;
    v15 = v12 + 4;
    do
    {
      v118 = v15[-2];
      v16 = v15[-1].i64[0];
      v17 = v15[-1].i8[8];
      v18 = v15[-1].i8[9];
      v19 = v15->i64[0];
      v119 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);

      if (v21 >= v20 >> 1)
      {
        sub_1D14A7914((v20 > 1), v21 + 1, 1);
        v14 = v119;
      }

      *(v14 + 16) = v21 + 1;
      *&v22 = vdupq_laneq_s64(v118, 1).u64[0];
      v23 = v14 + 48 * v21;
      *(&v22 + 1) = v16;
      *(v23 + 32) = vdupq_lane_s64(v118.i64[0], 0);
      *(v23 + 48) = v22;
      *(v23 + 64) = v17;
      *(v23 + 65) = v18;
      *(v23 + 72) = v19;
      v15 = (v15 + 40);
      --v13;
    }

    while (v13);
    v12 = v116;
    a2 = v117;
  }

  else if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    v24 = MEMORY[0x1E69E7CC8];
    goto LABEL_9;
  }

  sub_1D14AA7B0();
  v24 = sub_1D15A4968();
LABEL_9:
  v119 = v24;

  sub_1D14AA810(v25, 1, &v119);
  v118.i64[0] = 0;

  v26 = 0;
  v27 = v119;
  v28 = v12[1].i64[0];
  v29 = MEMORY[0x1E69E7CC0];
  v108 = v119;
LABEL_10:
  v30 = &v12->i64[5 * v26];
  while (v28 != v26)
  {
    if (v26 >= v12[1].i64[0])
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    ++v26;
    v31 = v30 + 5;
    v32 = *(v30 + 57);
    v30 += 5;
    if (v32)
    {
      v34 = *(v31 - 1);
      v33 = *v31;
      v35 = v31[1];
      v36 = *(v31 + 16);
      v37 = v31[3];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D14A78F4(0, *(v29 + 16) + 1, 1);
        v29 = v119;
      }

      v40 = *(v29 + 16);
      v39 = *(v29 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D14A78F4((v39 > 1), v40 + 1, 1);
        v29 = v119;
      }

      *(v29 + 16) = v40 + 1;
      v41 = v29 + 40 * v40;
      *(v41 + 32) = v34;
      *(v41 + 40) = v33;
      *(v41 + 48) = v35;
      *(v41 + 56) = v36;
      *(v41 + 57) = 1;
      *(v41 + 64) = v37;
      v12 = v116;
      a2 = v117;
      v27 = v108;
      goto LABEL_10;
    }
  }

  v96 = *(v29 + 16);

  v42 = a2[4];
  v43 = a2[5];
  v95[1] = a2 + 1;
  __swift_project_boxed_opaque_existential_1(a2 + 1, v42);
  v44 = (*(*(v43 + 8) + 8))(*a2, v42);
  v46 = v44;
  v116 = *(v44 + 16);
  if (v116)
  {
    v47 = 0;
    v95[0] = a2 + 2;
    v98 = (v114 + 4);
    v97 = (v114 + 2);
    v114 = (v111 + 8);
    v48 = MEMORY[0x1E69E7CC0];
    *&v45 = 136446210;
    v106 = v45;
    v49 = v107;
    v99 = v44;
    while (1)
    {
      if (*(v27 + 16))
      {
        v50 = sub_1D148011C(*(v46 + 8 * v47 + 32));
        if (v51)
        {
          break;
        }
      }

      sub_1D15A3218();
      v64 = sub_1D15A3248();
      v65 = sub_1D15A4328();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v118.i64[0] = v48;
        v68 = v67;
        v119 = v67;
        *v66 = v106;
        v123 = type metadata accessor for TimeBasedDistributionChartModel();
        sub_1D14AAC00();
        v69 = sub_1D15A3F68();
        v71 = sub_1D1479780(v69, v70, &v119);

        *(v66 + 4) = v71;
        a2 = v117;
        _os_log_impl(&dword_1D1446000, v64, v65, "[%{public}s] Expected to have bucket for each component range.", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        v72 = v68;
        v48 = v118.i64[0];
        MEMORY[0x1D388BF00](v72, -1, -1);
        MEMORY[0x1D388BF00](v66, -1, -1);
      }

      (*v114)(v49, v115);
LABEL_22:
      if (v116 == ++v47)
      {

        return v48;
      }
    }

    v118.i64[0] = v48;
    v52 = *(v27 + 56) + 40 * v50;
    v111 = *v52;
    v53 = *(v52 + 16);
    v54 = *(v52 + 24);
    v55 = *(v52 + 25);
    v56 = *(v52 + 32);
    v57 = type metadata accessor for TimeBasedDistributionChartModel();
    v58 = (a2 + *(v57 + 28));
    v59 = v58[3];
    v60 = v58[4];
    __swift_project_boxed_opaque_existential_1(v58, v59);
    v109 = v53;
    v110 = v56;
    v119 = v53;
    v120 = v54;
    v121 = v55;
    v122 = v56;
    v61 = *(v60 + 8);
    swift_bridgeObjectRetain_n();
    v61(&v119, v59, v60);

    if ((v54 & 1) != 0 || !v55)
    {
      sub_1D15A2448();
      v73 = v104;
      sub_1D15A2408();
      v74 = v117;

      sub_1D14AAC48();
      sub_1D15A2418();
      type metadata accessor for TimeBasedDistributionChartDesign();
      if (v54)
      {
        v75 = 0;
        v63 = 1;
      }

      else
      {
        v63 = 0;
        v75 = v109;
      }

      v76 = v102;
      goto LABEL_42;
    }

    v62 = v117 + *(v57 + 24);
    if (v62[*(type metadata accessor for TimeBasedDistributionChartDesign() + 92)] == 1 && sub_1D15A3F98() >= 4)
    {
      if (!v47 || v96 > 1 || v47 == *(v99 + 16) - 1)
      {
        goto LABEL_30;
      }
    }

    else if (v96 > 1)
    {
LABEL_30:
      v63 = 2;
LABEL_41:
      sub_1D15A2448();
      v73 = v104;
      sub_1D15A2408();

      v75 = v109;
      v119 = v77;
      sub_1D14AAC48();
      sub_1D15A2418();
      v76 = v102;
      v74 = v117;
LABEL_42:

      sub_1D14AAC9C();
      sub_1D15A2418();
      if ((v63 & 2) == 2)
      {
        v78 = 36;
      }

      else
      {
        v78 = 40;
      }

      v79 = v74 + *(v57 + 24);
      v80 = *(v79 + *(type metadata accessor for TimeBasedDistributionChartDesign() + v78));

      *v76 = v63;
      *(v76 + 8) = v75;
      v81 = v103;
      v82 = *(v103 + 24);
      (*v98)(v76 + v82, v73, v113);
      *(v76 + *(v81 + 28)) = v80;
      v83 = *v76;
      if (qword_1EC62FF30 != -1)
      {
        swift_once();
      }

      v84 = [qword_1EC63D5F8 shortStandaloneWeekdaySymbols];
      if (!v84)
      {
        goto LABEL_62;
      }

      v85 = v84;
      v86 = sub_1D15A40C8();

      if ((v111 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v111 >= *(v86 + 16))
      {
        goto LABEL_61;
      }

      v87 = v86 + 16 * v111;
      v89 = *(v87 + 32);
      v88 = *(v87 + 40);

      v90 = v101;
      v91 = v112;
      (*v97)(v112 + *(v101 + 28), v76 + v82, v113);
      *v91 = v83;
      *(v91 + 8) = v75;
      *(v91 + 16) = v89;
      *(v91 + 24) = v88;
      *(v91 + *(v90 + 32)) = v80;

      v48 = v118.i64[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1D148C028(0, v48[2] + 1, 1, v48);
      }

      v49 = v107;
      a2 = v117;
      v46 = v99;
      v93 = v48[2];
      v92 = v48[3];
      if (v93 >= v92 >> 1)
      {
        v48 = sub_1D148C028(v92 > 1, v93 + 1, 1, v48);
      }

      sub_1D14AACF0(v76, type metadata accessor for TimeBasedDistributionChartPoint.Skeleton);
      v48[2] = v93 + 1;
      sub_1D14AAD50(v112, v48 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v93, type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek);
      v27 = v108;
      goto LABEL_22;
    }

    v63 = 3;
    goto LABEL_41;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t TimeBasedDistributionChartModel.componentRangeLowerBoundOrder()()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(*(v2 + 8) + 8))(*v0, v1);
}

void TimeBasedDistributionChartModel.determineYAxisRange(chartPoints:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TimeBasedDistributionChartModel();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v34 - v8;
  v35[0] = a1;
  swift_getKeyPath();
  sub_1D14AA518();
  sub_1D14AA580();
  v10 = sub_1D15A4038();

  v11 = *(v10 + 16);
  if (v11)
  {
    sub_1D14AA5D8(v10 + 40 * v11 - 8, v34);

    sub_1D1450E94(v34, v35);
    v12 = v36;
    v13 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v13 + 8))(v34, v12, v13);
    if (LOBYTE(v34[0]) >= 2u)
    {
      v27 = v36;
      v28 = v37;
      if (LOBYTE(v34[0]) == 2)
      {
        __swift_project_boxed_opaque_existential_1(v35, v36);
        v16 = (*(v28 + 16))(v27, v28);
        v17 = v2 + *(v4 + 24);
        v18 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 88);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v35, v36);
        v16 = (*(v28 + 16))(v27, v28);
        v17 = v2 + *(v4 + 24);
        v18 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 84);
      }
    }

    else
    {
      v14 = v36;
      v15 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v16 = (*(v15 + 16))(v14, v15);
      v17 = v2 + *(v4 + 24);
      v18 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 80);
    }

    v29 = v16 * *&v17[v18];
    v30 = v2[4];
    v31 = v2[5];
    __swift_project_boxed_opaque_existential_1(v2 + 1, v30);
    v32 = COERCE_DOUBLE((*(v31 + 24))(v30, v31));
    if (v33)
    {
      v32 = 0.0;
    }

    if (v29 <= v32)
    {
      v29 = v32;
    }

    if (v29 < 0.0)
    {
      __break(1u);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v35);
    }
  }

  else
  {

    sub_1D14AA63C(v2, v9, type metadata accessor for TimeBasedDistributionChartModel);
    v19 = sub_1D15A3248();
    v20 = sub_1D15A4328();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35[0] = v22;
      *v21 = 136446210;
      sub_1D14AA63C(v9, v6, type metadata accessor for TimeBasedDistributionChartModel);
      v23 = sub_1D15A3F68();
      v25 = v24;
      sub_1D14AACF0(v9, type metadata accessor for TimeBasedDistributionChartModel);
      v26 = sub_1D1479780(v23, v25, v35);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1D1446000, v19, v20, "[%{public}s] Unable to determine max, returning basic scale", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D388BF00](v22, -1, -1);
      MEMORY[0x1D388BF00](v21, -1, -1);
    }

    else
    {

      sub_1D14AACF0(v9, type metadata accessor for TimeBasedDistributionChartModel);
    }
  }
}