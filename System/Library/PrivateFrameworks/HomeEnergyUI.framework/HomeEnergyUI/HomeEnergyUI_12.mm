uint64_t sub_20D91EAD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_20D974168();
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B590, &qword_20D97DD88);
  return sub_20D91DF94(v3, v4, v6, v5, a1 + *(v7 + 44));
}

void sub_20D91EB78()
{
  type metadata accessor for UtilityRateInfoSnapshotManager();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UtilityRateInfoSnapshot();
    if (v1 <= 0x3F)
    {
      sub_20D7E63C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_20D91EC14()
{
  result = qword_27C83B550;
  if (!qword_27C83B550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B538, &qword_20D97DC78);
    sub_20D91ECA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B550);
  }

  return result;
}

unint64_t sub_20D91ECA0()
{
  result = qword_27C83B558;
  if (!qword_27C83B558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B518, &qword_20D97DC50);
    sub_20D91ED58();
    sub_20D7EBC4C(&qword_281124E40, &qword_27C838FD8, &qword_20D977990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B558);
  }

  return result;
}

unint64_t sub_20D91ED58()
{
  result = qword_27C83B560;
  if (!qword_27C83B560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B510, &qword_20D97DC48);
    sub_20D91EDE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B560);
  }

  return result;
}

unint64_t sub_20D91EDE4()
{
  result = qword_27C83B568;
  if (!qword_27C83B568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B508, &qword_20D97DC40);
    sub_20D91EE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B568);
  }

  return result;
}

unint64_t sub_20D91EE70()
{
  result = qword_27C83B570;
  if (!qword_27C83B570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B500, &qword_20D97DC38);
    sub_20D91EEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B570);
  }

  return result;
}

unint64_t sub_20D91EEFC()
{
  result = qword_27C83B578;
  if (!qword_27C83B578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B4F8, &qword_20D97DC30);
    sub_20D91EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B578);
  }

  return result;
}

unint64_t sub_20D91EF88()
{
  result = qword_27C83B580;
  if (!qword_27C83B580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B4F0, &qword_20D97DC28);
    sub_20D7EBC4C(&qword_27C83B588, &qword_27C83B4E8, &qword_20D97DC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B580);
  }

  return result;
}

unint64_t sub_20D91F06C()
{
  result = qword_281124FA0;
  if (!qword_281124FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B5A0, &qword_20D97DDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124FA0);
  }

  return result;
}

uint64_t CircularUtilityRateInfoView.init(widgetStartDate:infoSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA8, &qword_20D976EA0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for CircularUtilityRateInfoView(0);
  v7 = *(v6 + 20);
  v8 = sub_20D972628();
  (*(*(v8 - 8) + 32))(a3 + v7, a1, v8);
  v9 = a3 + *(v6 + 24);

  return sub_20D817AEC(a2, v9);
}

uint64_t CircularUtilityRateInfoView.body.getter()
{
  v1 = sub_20D9726E8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_20D975058();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B5C0, &qword_20D97DDF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-v7];
  v9 = type metadata accessor for CircularUtilityRateInfoView.BaseView(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for CircularUtilityRateInfoView(0);
  v14 = v0 + *(v13 + 24);
  if (*(v14 + *(type metadata accessor for UtilityRateInfoSnapshot() + 44)) == 6)
  {
    v15 = *(v13 + 20);
    v16 = sub_20D972628();
    (*(*(v16 - 8) + 16))(v12, v0 + v15, v16);
    sub_20D91FE18(v14, &v12[v9[5]], type metadata accessor for UtilityRateInfoSnapshot);
    *&v12[v9[6]] = 0x4041800000000000;
    *&v12[v9[7]] = 0xC008000000000000;
    sub_20D91FE18(v12, v8, type metadata accessor for CircularUtilityRateInfoView.BaseView);
    swift_storeEnumTagMultiPayload();
    sub_20D91FE80();
    sub_20D91FED8();
    sub_20D9741B8();
    return sub_20D91FF2C(v12);
  }

  else
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v18 = qword_28112ABE8;
    sub_20D9726B8();
    *v8 = sub_20D975108();
    v8[1] = v19;
    swift_storeEnumTagMultiPayload();
    sub_20D91FE80();
    sub_20D91FED8();
    return sub_20D9741B8();
  }
}

uint64_t sub_20D91F510@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v3 = sub_20D9744B8();
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B610, &qword_20D97DF68);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v44 - v12;
  v13 = sub_20D974E68();
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = *(v51 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v49 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = &v44 - v17;
  sub_20D974E58();
  v18 = type metadata accessor for CircularUtilityRateInfoView.BaseView(0);
  v19 = v18[5];
  UtilityRateInfoSnapshot.peakSymbol.getter();
  UtilityRateInfoSnapshot.attributedPeak.getter(&v59);
  v20 = v62;
  if (v62 != 1)
  {
    v44 = v3;
    v45 = a1;
    v21 = v60;
    v22 = v61;
    v46 = v11;
    v23 = v59;
    v54 = v59;
    v55 = v60 & 1;
    v56 = v61;
    v57 = v62;
    v58 = v63;
    PeakPeriodAttributes.variableValue.getter();
    v24 = v23;
    v11 = v46;
    v25 = v22;
    a1 = v45;
    v3 = v44;
    sub_20D8EE800(v24, v21, v25, v20);
  }

  v26 = sub_20D9749A8();
  v27 = *(a1 + v18[6]);
  v28 = v47;
  (*(v47 + 104))(v6, *MEMORY[0x277CE0A50], v3);
  v29 = MEMORY[0x20F3225C0](0x6F72504653, 0xE500000000000000, v6, v27);
  (*(v28 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();
  v31 = sub_20D974918();
  v32 = *(a1 + v18[7]);
  v59 = v26;
  v60 = KeyPath;
  v61 = v29;
  v62 = v31;
  v63 = 0;
  v64 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B618, &qword_20D97DFA0);
  sub_20D9201F8();
  v33 = v50;
  sub_20D9747D8();

  v35 = v51;
  v34 = v52;
  v36 = *(v51 + 16);
  v37 = v48;
  v38 = v49;
  v36(v49, v48, v52);
  v39 = v11;
  sub_20D7EB7E8(v33, v11, &qword_27C83B610, &qword_20D97DF68);
  v40 = v53;
  v36(v53, v38, v34);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B638, &qword_20D97DFB8);
  sub_20D7EB7E8(v39, &v40[*(v41 + 48)], &qword_27C83B610, &qword_20D97DF68);
  sub_20D7E3944(v33, &qword_27C83B610, &qword_20D97DF68);
  v42 = *(v35 + 8);
  v42(v37, v34);
  sub_20D7E3944(v39, &qword_27C83B610, &qword_20D97DF68);
  return (v42)(v38, v34);
}

uint64_t sub_20D91F9A4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_20D974C48();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B608, &qword_20D97DF60);
  return sub_20D91F510(v1, a1 + *(v4 + 44));
}

uint64_t sub_20D91F9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v41 - v9;
  v46 = sub_20D974E68();
  v42 = *(v46 - 8);
  v10 = v42;
  v11 = *(v42 + 64);
  v12 = MEMORY[0x28223BE20](v46);
  v44 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = &v41 - v14;
  sub_20D974E58();
  v49 = a1;
  v50 = a2;
  sub_20D7E1EF8();

  v15 = sub_20D9745C8();
  v17 = v16;
  v19 = v18;
  sub_20D974488();
  v20 = sub_20D974558();
  v22 = v21;
  v24 = v23;

  sub_20D7EADC0(v15, v17, v19 & 1);

  sub_20D974918();
  v25 = sub_20D974508();
  v27 = v26;
  LOBYTE(v15) = v28;
  v30 = v29;

  sub_20D7EADC0(v20, v22, v24 & 1);

  v49 = v25;
  v50 = v27;
  v51 = v15 & 1;
  v52 = v30;
  v31 = v45;
  sub_20D9747D8();
  sub_20D7EADC0(v25, v27, v15 & 1);

  v32 = *(v10 + 16);
  v33 = v43;
  v34 = v44;
  v35 = v46;
  v32(v44, v43, v46);
  v36 = v47;
  sub_20D7EB7E8(v31, v47, &qword_27C838F18, &unk_20D977860);
  v37 = v48;
  v32(v48, v34, v35);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4B8, &qword_20D97DBC0);
  sub_20D7EB7E8(v36, &v37[*(v38 + 48)], &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v31, &qword_27C838F18, &unk_20D977860);
  v39 = *(v42 + 8);
  v39(v33, v35);
  sub_20D7E3944(v36, &qword_27C838F18, &unk_20D977860);
  return (v39)(v34, v35);
}

uint64_t sub_20D91FD78@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_20D974C48();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4B0, &qword_20D97DFC0);
  return sub_20D91F9F0(v4, v3, a1 + *(v6 + 44));
}

uint64_t sub_20D91FE18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20D91FE80()
{
  result = qword_27C83B5C8;
  if (!qword_27C83B5C8)
  {
    type metadata accessor for CircularUtilityRateInfoView.BaseView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B5C8);
  }

  return result;
}

unint64_t sub_20D91FED8()
{
  result = qword_27C83B5D0;
  if (!qword_27C83B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B5D0);
  }

  return result;
}

uint64_t sub_20D91FF2C(uint64_t a1)
{
  v2 = type metadata accessor for CircularUtilityRateInfoView.BaseView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20D91FFCC()
{
  sub_20D91C5D8();
  if (v0 <= 0x3F)
  {
    sub_20D972628();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UtilityRateInfoSnapshot();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_20D920068()
{
  result = qword_27C83B5E8;
  if (!qword_27C83B5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B5F0, &qword_20D97DE80);
    sub_20D91FE80();
    sub_20D91FED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B5E8);
  }

  return result;
}

uint64_t sub_20D92012C()
{
  result = sub_20D972628();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UtilityRateInfoSnapshot();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_20D9201F8()
{
  result = qword_27C83B620;
  if (!qword_27C83B620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B618, &qword_20D97DFA0);
    sub_20D920284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B620);
  }

  return result;
}

unint64_t sub_20D920284()
{
  result = qword_27C83B628;
  if (!qword_27C83B628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B630, &unk_20D97DFA8);
    sub_20D7EB274();
    sub_20D7EBC4C(&qword_281126F60, &qword_27C83A110, &qword_20D97CC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B628);
  }

  return result;
}

uint64_t type metadata accessor for HistoricalUsageSummaryChart()
{
  result = qword_281125B40;
  if (!qword_281125B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D9203B0()
{
  result = type metadata accessor for HistoricalUsageSnapshot();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20D92046C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a1;
  v56 = a2;
  v54 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v6 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HistoricalUsageSnapshot();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D9726E8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_20D975058();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = type metadata accessor for HistoricalUsageSummaryChart();
  v18 = (a4 + v17[7]);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v19 = qword_28112ABE8;
  sub_20D9726B8();
  v20 = v19;
  *v18 = sub_20D975108();
  v18[1] = v21;
  v22 = (a4 + v17[8]);
  sub_20D974FE8();
  sub_20D9726B8();
  *v22 = sub_20D975108();
  v22[1] = v23;
  v24 = (a4 + v17[9]);
  sub_20D974FE8();
  sub_20D9726B8();
  *v24 = sub_20D975108();
  v24[1] = v25;
  v26 = (a4 + v17[10]);
  sub_20D974FE8();
  sub_20D9726B8();
  *v26 = sub_20D975108();
  v26[1] = v27;
  v28 = v55;
  sub_20D9259AC(v55, a4, type metadata accessor for HistoricalUsageSnapshot);
  v29 = v56;
  sub_20D9259AC(v56, a4 + v17[5], type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
  v30 = (a4 + v17[6]);
  v31 = a3[11];
  v30[10] = a3[10];
  v30[11] = v31;
  v30[12] = a3[12];
  v32 = a3[7];
  v30[6] = a3[6];
  v30[7] = v32;
  v33 = a3[9];
  v30[8] = a3[8];
  v30[9] = v33;
  v34 = a3[3];
  v30[2] = a3[2];
  v30[3] = v34;
  v35 = a3[5];
  v30[4] = a3[4];
  v30[5] = v35;
  v36 = a3[1];
  *v30 = *a3;
  v30[1] = v36;
  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v37 = sub_20D9734F8();
  __swift_project_value_buffer(v37, qword_28112AB78);
  sub_20D9259AC(v28, v12, type metadata accessor for HistoricalUsageSnapshot);
  sub_20D9259AC(v29, v8, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
  v38 = sub_20D9734D8();
  v39 = sub_20D975478();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v57[0] = v41;
    *v40 = 136315394;
    v42 = HistoricalUsageSnapshot.description.getter();
    v44 = v43;
    sub_20D92592C(v12, type metadata accessor for HistoricalUsageSnapshot);
    v45 = sub_20D7F4DC8(v42, v44, v57);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    v46 = &v8[*(v54 + 52)];
    v47 = sub_20D9725F8();
    v49 = v48;
    sub_20D92592C(v8, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
    v50 = sub_20D7F4DC8(v47, v49, v57);

    *(v40 + 14) = v50;
    _os_log_impl(&dword_20D7C9000, v38, v39, "HistoricalUsageSummaryChart init w/ snapshot: %s containing %s)", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v41, -1, -1);
    MEMORY[0x20F324260](v40, -1, -1);

    sub_20D92592C(v56, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
    v51 = v28;
  }

  else
  {

    sub_20D92592C(v29, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
    sub_20D92592C(v28, type metadata accessor for HistoricalUsageSnapshot);
    sub_20D92592C(v8, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
    v51 = v12;
  }

  return sub_20D92592C(v51, type metadata accessor for HistoricalUsageSnapshot);
}

uint64_t sub_20D920A6C@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B658, &qword_20D97E048);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  sub_20D920C84(0, &v20 - v14);
  sub_20D920C84(1, v13);
  v16 = v3[2];
  v16(v10, v15, v2);
  v16(v7, v13, v2);
  v16(a1, v10, v2);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B660, &unk_20D97E050);
  v16(&a1[*(v17 + 48)], v7, v2);
  v18 = v3[1];
  v18(v13, v2);
  v18(v15, v2);
  v18(v7, v2);
  return (v18)(v10, v2);
}

uint64_t sub_20D920C84@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v225) = a1;
  v189 = a2;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v3 = *(*(v186 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v186);
  v185 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v182 = &v171 - v6;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v7 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v187 = &v171 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABD8, &qword_20D97C9F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v224 = &v171 - v11;
  v12 = type metadata accessor for HistoricalUsageSummaryChart();
  v13 = v12 - 8;
  v208 = *(v12 - 8);
  v14 = *(v208 + 64);
  MEMORY[0x28223BE20](v12);
  v209 = v15;
  v210 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B668, &qword_20D97E060);
  v212 = *(v213 - 8);
  v16 = *(v212 + 64);
  MEMORY[0x28223BE20](v213);
  v211 = &v171 - v17;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B670, &qword_20D97E068);
  v215 = *(v222 - 8);
  v18 = *(v215 + 64);
  MEMORY[0x28223BE20](v222);
  v214 = &v171 - v19;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B678, &qword_20D97E070);
  v176 = *(v177 - 8);
  v20 = *(v176 + 64);
  MEMORY[0x28223BE20](v177);
  v223 = &v171 - v21;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B680, &qword_20D97E078);
  v180 = *(v183 - 8);
  v22 = *(v180 + 64);
  MEMORY[0x28223BE20](v183);
  v178 = &v171 - v23;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B688, &unk_20D97E080);
  v181 = *(v184 - 8);
  v24 = *(v181 + 64);
  MEMORY[0x28223BE20](v184);
  v179 = &v171 - v25;
  v219 = sub_20D972208();
  v218 = *(v219 - 8);
  v26 = *(v218 + 8);
  MEMORY[0x28223BE20](v219);
  v173 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_20D972248();
  v216 = *(v217 - 8);
  v28 = *(v216 + 64);
  MEMORY[0x28223BE20](v217);
  v172 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_20D9722C8();
  v202 = *(v203 - 8);
  v30 = *(v202 + 64);
  MEMORY[0x28223BE20](v203);
  v201 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_20D972378();
  v198 = *(v199 - 8);
  v32 = *(v198 + 64);
  MEMORY[0x28223BE20](v199);
  v196 = &v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20D972188();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v195 = &v171 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20D972838();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v197 = &v171 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20D9727D8();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v194 = &v171 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20D9726E8();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v190 = &v171 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v49 = &v171 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v53 = &v171 - v52;
  v54 = sub_20D972408();
  v193 = *(v54 - 8);
  v55 = *(v193 + 64);
  v56 = MEMORY[0x28223BE20](v54);
  v191 = &v171 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v192 = &v171 - v58;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v204 = *(v207 - 8);
  v59 = *(v204 + 64);
  v60 = MEMORY[0x28223BE20](v207);
  v206 = &v171 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = v61;
  MEMORY[0x28223BE20](v60);
  v63 = &v171 - v62;
  v64 = sub_20D972628();
  v65 = *(v64 - 8);
  v66 = *(v65 + 64);
  v67 = MEMORY[0x28223BE20](v64);
  v200 = &v171 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x28223BE20](v67);
  v221 = &v171 - v70;
  MEMORY[0x28223BE20](v69);
  v72 = &v171 - v71;
  v73 = v2;
  v74 = v2 + *(v13 + 28);
  v231 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v232 = v65;
  v75 = v231[13];
  v76 = *(v65 + 16);
  v230 = v74;
  v227 = v76;
  v228 = (v65 + 16);
  v76(v72, (v74 + v75), v64);
  v175 = v72;
  v220 = v73;
  if (v225)
  {
    sub_20D7EB7E8(v230 + v75, v63, &qword_27C839550, &qword_20D979C30);
  }

  else
  {
    v77 = v73 + *(type metadata accessor for HistoricalUsageSnapshot() + 48);
    sub_20D972D98();
  }

  v78 = v221;
  v229 = v63;
  v226 = v64;
  v227(v221, v63, v64);
  v174 = swift_allocBox();
  (*(v216 + 56))(v53, 1, 1, v217);
  (*(v218 + 7))(v49, 1, 1, v219);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  sub_20D972178();
  v79 = v191;
  sub_20D972268();
  v80 = v196;
  sub_20D972358();
  v81 = v192;
  sub_20D972298();
  (*(v198 + 8))(v80, v199);
  v82 = *(v193 + 8);
  v82(v79, v54);
  v83 = v201;
  sub_20D9722A8();
  sub_20D972258();
  (*(v202 + 8))(v83, v203);
  v82(v81, v54);
  v84 = v78;
  v85 = v230;
  v86 = v230 + v231[16];
  sub_20D972788();
  sub_20D9723F8();
  v87 = *(type metadata accessor for HistoricalUsageSnapshot() + 48);
  v88 = v220;
  LOBYTE(v82) = sub_20D972D68();
  sub_20D972DB8();
  if (v82)
  {
    v90 = -v89;
  }

  else
  {
    v90 = v89;
  }

  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v91 = sub_20D9734F8();
  __swift_project_value_buffer(v91, qword_28112AB78);
  v92 = v200;
  v93 = v226;
  v227(v200, v84, v226);
  v94 = sub_20D9734D8();
  v95 = sub_20D975478();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v203 = v87;
    v98 = v93;
    v202 = v97;
    v233 = v97;
    *v96 = 136315906;
    *(v96 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D98A6F0, &v233);
    *(v96 + 12) = 2080;
    if (v225)
    {
      v99 = 1936287860;
    }

    else
    {
      v99 = 1953718636;
    }

    v100 = sub_20D7F4DC8(v99, 0xE400000000000000, &v233);

    *(v96 + 14) = v100;
    *(v96 + 22) = 2080;
    v101 = v88;
    v102 = v172;
    sub_20D972218();
    v103 = v173;
    sub_20D9721E8();
    v104 = sub_20D9725E8();
    v105 = v92;
    v107 = v106;
    (*(v218 + 1))(v103, v219);
    v108 = v102;
    v88 = v101;
    (*(v216 + 8))(v108, v217);
    (*(v232 + 8))(v105, v98);
    v109 = sub_20D7F4DC8(v104, v107, &v233);

    *(v96 + 24) = v109;
    *(v96 + 32) = 2080;
    *&v237 = v90;
    sub_20D7E6420();
    v110 = sub_20D974F18();
    v112 = sub_20D7F4DC8(v110, v111, &v233);

    *(v96 + 34) = v112;
    _os_log_impl(&dword_20D7C9000, v94, v95, "%s drawing %s week, starting on %s with an average of %s kWh", v96, 0x2Au);
    v113 = v202;
    swift_arrayDestroy();
    v85 = v230;
    MEMORY[0x20F324260](v113, -1, -1);
    MEMORY[0x20F324260](v96, -1, -1);
  }

  else
  {

    (*(v232 + 8))(v92, v93);
  }

  v114 = sub_20D972E38();
  if (*(v85 + v231[9]))
  {
    v115 = *(v85 + v231[9]);
  }

  else
  {
    v115 = MEMORY[0x277D84F90];
  }

  v233 = v114;

  v116 = sub_20D95B09C(v115);
  MEMORY[0x28223BE20](v116);
  v117 = v229;
  v169 = v229;
  v238 = sub_20D8A392C(sub_20D92598C, (&v171 - 4), v118);
  swift_getKeyPath();
  v119 = v88;
  v120 = v210;
  sub_20D9259AC(v119, v210, type metadata accessor for HistoricalUsageSummaryChart);
  v121 = v206;
  sub_20D7EB7E8(v117, v206, &qword_27C839550, &qword_20D979C30);
  v122 = (*(v208 + 80) + 16) & ~*(v208 + 80);
  v123 = v122 + v209;
  v124 = (*(v204 + 80) + v122 + v209 + 1) & ~*(v204 + 80);
  v125 = (v205 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
  v126 = swift_allocObject();
  sub_20D925A14(v120, v126 + v122);
  *(v126 + v123) = v225 & 1;
  sub_20D7EAF18(v121, v126 + v124, &qword_27C839550, &qword_20D979C30);
  *(v126 + v125) = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B690, &qword_20D97E0C8);
  sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0);
  sub_20D925CA0(&qword_281126E38);
  v169 = sub_20D925B9C();
  v127 = v211;
  sub_20D973888();
  v128 = sub_20D7EBC4C(&qword_281125038, &qword_27C83B668, &qword_20D97E060);
  v129 = v214;
  v130 = v213;
  sub_20D974608();
  (*(v212 + 8))(v127, v130);
  v237 = *(v230 + v231[14]);
  v131 = sub_20D9739E8();
  v132 = *(v131 - 8);
  v133 = *(v132 + 56);
  v134 = v224;
  v231 = (v132 + 56);
  v133(v224, 1, 1, v131);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE60, &qword_20D97CB98);
  v233 = v130;
  v234 = v128;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v137 = sub_20D90AF8C(&qword_281124C30, &qword_27C83AE60, &qword_20D97CB98);
  v138 = v222;
  v230 = v135;
  v225 = OpaqueTypeConformance2;
  sub_20D974628();
  sub_20D7E3944(v134, &qword_27C83ABD8, &qword_20D97C9F8);
  (*(v215 + 8))(v129, v138);
  v139 = v229;
  v140 = &v229[*(v207 + 36)];
  sub_20D925CA0(&qword_281126E30);
  v141 = v139;
  v142 = v226;
  result = sub_20D974FC8();
  if (result)
  {
    v144 = v182;
    v219 = v137;
    v145 = v227;
    v227(v182, v141, v142);
    v146 = v186;
    v145(v144 + *(v186 + 48), v140, v142);
    v147 = v185;
    sub_20D7EB7E8(v144, v185, &unk_27C83C750, &unk_20D978DD0);
    v227 = v131;
    v148 = *(v146 + 48);
    v149 = v232;
    v218 = v133;
    v150 = *(v232 + 32);
    v151 = v187;
    v150(v187, v147, v142);
    v152 = *(v149 + 8);
    v152(v147 + v148, v142);
    v228 = v152;
    v232 = v149 + 8;
    sub_20D7EAF18(v144, v147, &unk_27C83C750, &unk_20D978DD0);
    v153 = v188;
    v150((v151 + *(v188 + 36)), v147 + *(v146 + 48), v142);
    v152(v147, v142);
    v154 = v224;
    v218(v224, 1, 1, v227);
    v233 = v222;
    v234 = v230;
    v235 = v225;
    v236 = v219;
    v155 = swift_getOpaqueTypeConformance2();
    v156 = sub_20D90AF8C(&qword_281124C38, &qword_27C83A698, &qword_20D97CB80);
    v157 = v178;
    v158 = v177;
    v159 = v223;
    sub_20D974618();
    sub_20D7E3944(v154, &qword_27C83ABD8, &qword_20D97C9F8);
    sub_20D7E3944(v151, &qword_27C83A698, &qword_20D97CB80);
    v160 = (*(v176 + 8))(v159, v158);
    v231 = &v171;
    MEMORY[0x28223BE20](v160);
    v169 = v220;
    v170 = v174;
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B698, &unk_20D97E130);
    v233 = v158;
    v234 = v153;
    v235 = v155;
    v236 = v156;
    v162 = swift_getOpaqueTypeConformance2();
    v163 = sub_20D7EBC4C(&qword_281125030, &qword_27C83B698, &unk_20D97E130);
    v164 = v179;
    v165 = v183;
    sub_20D9745E8();
    (*(v180 + 8))(v157, v165);
    v233 = v165;
    v234 = v161;
    v235 = v162;
    v236 = v163;
    swift_getOpaqueTypeConformance2();
    v166 = v184;
    sub_20D9746B8();
    (*(v181 + 8))(v164, v166);
    v167 = v226;
    v168 = v228;
    v228(v221, v226);
    v168(v175, v167);
    sub_20D7E3944(v229, &qword_27C839550, &qword_20D979C30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D9225E8()
{
  v0 = sub_20D972628();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x20F320D90](v3);
  sub_20D925CA0(&qword_281126E30);
  v6 = sub_20D974FA8();
  v7 = *(v1 + 8);
  v8 = v7(v5, v0);
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    MEMORY[0x20F320D90](v8);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30) + 36);
    v9 = sub_20D972548();
    v7(v5, v0);
  }

  return v9 & 1;
}

uint64_t sub_20D922760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v144 = a4;
  v156 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6B0, &qword_20D97E160);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v123 = v117 - v12;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B120, &unk_20D97E120);
  v126 = *(v127 - 8);
  v13 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v125 = v117 - v14;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6B8, &qword_20D97E168);
  v152 = *(v154 - 8);
  v15 = *(v152 + 64);
  MEMORY[0x28223BE20](v154);
  v124 = v117 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B118, &unk_20D97D100);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v155 = v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v153 = v117 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6C0, &qword_20D97E170);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v117[1] = v117 - v24;
  v149 = sub_20D973978();
  v148 = *(v149 - 8);
  v25 = *(v148 + 64);
  v26 = MEMORY[0x28223BE20](v149);
  v122 = v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v117[0] = v117 - v28;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FA8, &unk_20D97E110);
  v120 = *(v121 - 8);
  v29 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v119 = v117 - v30;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A120, &qword_20D97B278);
  v140 = *(v141 - 8);
  v31 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v118 = v117 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B110, &unk_20D97D0F0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v150 = v117 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v159 = v117 - v37;
  v139 = sub_20D973788();
  v138 = *(v139 - 8);
  v38 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v137 = v117 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_20D972838();
  v135 = *(v136 - 8);
  v40 = *(v135 + 64);
  MEMORY[0x28223BE20](v136);
  v131 = v117 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_20D972AF8();
  v133 = *(v134 - 8);
  v42 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v44 = v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = v117 - v47;
  v157 = sub_20D972628();
  v49 = *(v157 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v157);
  v129 = v117 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0D8, &unk_20D97E0D0);
  v52 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v54 = v117 - v53;
  v130 = v117 - v53;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0D0, &unk_20D97D0B0);
  v146 = *(v147 - 8);
  v55 = *(v146 + 64);
  v56 = MEMORY[0x28223BE20](v147);
  v145 = v117 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v59 = v117 - v58;
  v143 = type metadata accessor for HistoricalUsageSummaryChart();
  v60 = a2;
  v61 = a2 + v143[5];
  v62 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v63 = (fabs(*(v61 + *(v62 + 56))) + fabs(*(v61 + *(v62 + 56) + 8))) / 50.0;
  v151 = a3;
  v64 = a3;
  v65 = v60;
  v66 = sub_20D9238D4(a1, v64, v54, v63);
  v128 = *(v61 + *(v62 + 60));
  v67 = v129;
  MEMORY[0x20F320D90](v66);
  v68 = v157;
  (*(v49 + 16))(v48, v144, v157);
  (*(v49 + 56))(v48, 0, 1, v68);
  v142 = type metadata accessor for HistoricalUsageSnapshot();
  v69 = *(v142 + 48);
  v158 = v65;
  sub_20D972E58();
  v70 = v131;
  sub_20D972E68();
  LOBYTE(v68) = sub_20D972B18();
  (*(v135 + 8))(v70, v136);
  (*(v133 + 8))(v44, v134);
  sub_20D7E3944(v48, &qword_27C8389E8, &qword_20D9768D0);
  v71 = v137;
  sub_20D973768();
  v160 = v128;
  v161 = v67;
  v162 = v68 & 1;
  sub_20D974C48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0E0, &unk_20D97D0C0);
  sub_20D9102F0();
  sub_20D910610();
  v72 = v140;
  v144 = v59;
  v73 = v141;
  v74 = v130;
  sub_20D973588();
  (*(v138 + 8))(v71, v139);
  sub_20D7E3944(v74, &qword_27C83B0D8, &unk_20D97E0D0);
  (*(v49 + 8))(v67, v157);
  v75 = sub_20D972C28();
  v76 = 1;
  v77 = MEMORY[0x277CBB450];
  if (v75)
  {
    v78 = MEMORY[0x277CBB450];
    v79 = MEMORY[0x277CE0F78];
    v80 = MEMORY[0x277CE0F60];
    v81 = (v158 + v143[9]);
    v83 = *v81;
    v82 = v81[1];
    v168 = v83;
    v169 = v82;
    v167 = a6;
    sub_20D7E1EF8();
    sub_20D973708();
    v84 = v117[0];
    sub_20D973968();
    if (v151)
    {
      sub_20D972BC8();
      if (v85 < 0.0)
      {
        if (qword_281126F30 != -1)
        {
          swift_once();
        }

        v86 = qword_28112ABF8;

        goto LABEL_10;
      }

      v87 = [objc_opt_self() systemYellowColor];
    }

    else
    {
      v87 = [objc_opt_self() systemGrayColor];
    }

    v88 = v87;
    v86 = sub_20D974888();
LABEL_10:
    v168 = v86;
    v89 = v119;
    v90 = v149;
    sub_20D9735B8();

    (*(v148 + 8))(v84, v90);
    sub_20D973B38();
    v168 = v90;
    v169 = v79;
    v77 = v78;
    v170 = v78;
    v171 = v80;
    swift_getOpaqueTypeConformance2();
    v91 = v118;
    v92 = v121;
    sub_20D973628();
    sub_20D90D3D8(&v167);
    (*(v120 + 8))(v89, v92);
    (*(v72 + 32))(v159, v91, v73);
    v76 = 0;
  }

  v93 = 1;
  (*(v72 + 56))(v159, v76, 1, v73);
  v94 = v154;
  v95 = v153;
  v96 = v152;
  if (*(v158 + *(v142 + 44)) == 1)
  {
    v97 = (v158 + v143[10]);
    v99 = *v97;
    v98 = v97[1];
    v168 = v99;
    v169 = v98;
    v164 = 0;
    sub_20D7E1EF8();
    sub_20D973708();
    v100 = v122;
    sub_20D973968();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6C8, &qword_20D97E178);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_20D979110;
    v102 = 0.0;
    if (v151)
    {
      v102 = 5.0;
    }

    *(v101 + 32) = v102;
    sub_20D973B38();
    v103 = v125;
    v104 = v149;
    sub_20D973628();
    sub_20D90D3D8(&v168);
    (*(v148 + 8))(v100, v104);
    v105 = [objc_opt_self() systemGrayColor];
    v163 = sub_20D974888();
    v164 = v104;
    v165 = v77;
    swift_getOpaqueTypeConformance2();
    v106 = v124;
    v107 = v127;
    sub_20D9735B8();

    (*(v126 + 8))(v103, v107);
    (*(v96 + 32))(v95, v106, v94);
    v93 = 0;
  }

  (*(v96 + 56))(v95, v93, 1, v94);
  v108 = v146;
  v109 = v145;
  v110 = v144;
  v111 = v147;
  (*(v146 + 16))(v145, v144, v147);
  v164 = v109;
  v112 = v159;
  v113 = v150;
  sub_20D7EB7E8(v159, v150, &qword_27C83B110, &unk_20D97D0F0);
  v165 = v113;
  v114 = v155;
  sub_20D7EB7E8(v95, v155, &qword_27C83B118, &unk_20D97D100);
  v166 = v114;
  sub_20D8EF37C(&v164, v156);
  sub_20D7E3944(v95, &qword_27C83B118, &unk_20D97D100);
  sub_20D7E3944(v112, &qword_27C83B110, &unk_20D97D0F0);
  v115 = *(v108 + 8);
  v115(v110, v111);
  sub_20D7E3944(v114, &qword_27C83B118, &unk_20D97D100);
  sub_20D7E3944(v113, &qword_27C83B110, &unk_20D97D0F0);
  return (v115)(v109, v111);
}

uint64_t sub_20D9238D4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  LODWORD(v220) = a2;
  v227 = a3;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6D0, &unk_20D97E180);
  v8 = *(*(v219 - 8) + 64);
  MEMORY[0x28223BE20](v219);
  v218 = v187 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0E8, &unk_20D97E0E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v187 - v12;
  v236 = sub_20D974118();
  v241 = *(v236 - 8);
  v14 = *(v241 + 64);
  MEMORY[0x28223BE20](v236);
  v235 = v187 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6C0, &qword_20D97E170);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v211 = v187 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v210 = v187 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v187 - v23;
  MEMORY[0x28223BE20](v22);
  v209 = v187 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v187 - v28;
  v228 = sub_20D972628();
  v30 = *(v228 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v228);
  v33 = v187 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A128, &qword_20D97B280);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v221 = v187 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v204 = v187 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = (v187 - v40);
  v231 = sub_20D9738B8();
  v238 = *(v231 - 8);
  v42 = *(v238 + 64);
  v43 = MEMORY[0x28223BE20](v231);
  v208 = v187 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v217 = v187 - v46;
  MEMORY[0x28223BE20](v45);
  v202 = v187 - v47;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B100, &unk_20D97D0E0);
  v239 = *(v232 - 8);
  v48 = *(v239 + 64);
  v49 = MEMORY[0x28223BE20](v232);
  v207 = v187 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v216 = v187 - v52;
  MEMORY[0x28223BE20](v51);
  v200 = v187 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0F8, &unk_20D97E0F0);
  v240 = *(v54 - 8);
  v55 = *(v240 + 64);
  v56 = MEMORY[0x28223BE20](v54);
  v205 = v187 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v215 = v187 - v59;
  MEMORY[0x28223BE20](v58);
  v199 = v187 - v60;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0F0, &unk_20D97D0D0);
  v224 = *(v234 - 8);
  v61 = *(v224 + 64);
  v62 = MEMORY[0x28223BE20](v234);
  v206 = (v187 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = MEMORY[0x28223BE20](v62);
  v212 = v187 - v65;
  MEMORY[0x28223BE20](v64);
  v203 = v187 - v66;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6D8, &qword_20D97E190);
  v225 = *(v226 - 8);
  v67 = *(v225 + 64);
  v68 = MEMORY[0x28223BE20](v226);
  v201 = v187 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v214 = v187 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v213 = v187 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v223 = v187 - v75;
  MEMORY[0x28223BE20](v74);
  v230 = v187 - v76;
  v237 = a1;
  v229 = sub_20D972C28();
  v77 = type metadata accessor for HistoricalUsageSummaryChart();
  v78 = (v5 + v77[7]);
  v80 = *v78;
  v79 = v78[1];
  v233 = v54;
  v222 = v79;
  if (v220)
  {
    v220 = v13;
    v210 = v24;
    v205 = v80;
    v242 = v80;
    v243 = v79;

    MEMORY[0x20F320D90](v81);
    v82 = v5 + v77[5];
    v83 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v84 = (v82 + *(v83 + 20));
    v85 = v30;
    v86 = v82 + *(v83 + 64);
    v87 = v41;
    v88 = sub_20D9727D8();
    v89 = *(v88 - 8);
    v90 = *(v89 + 16);
    v198 = v86;
    v195 = v89 + 16;
    v194 = v90;
    v90(v29, v86, v88);
    v91 = *(v89 + 56);
    v197 = v88;
    v196 = v89 + 56;
    v193 = v91;
    v91(v29, 0, 1, v88);
    v92 = sub_20D7E1EF8();
    v206 = v87;
    v201 = v84;
    v221 = v92;
    sub_20D9736F8();
    v208 = v29;
    sub_20D7E3944(v29, &qword_27C839548, &unk_20D979C20);
    v93 = *(v85 + 8);
    v207 = v33;
    v211 = (v85 + 8);
    v192 = v93;
    (v93)(v33);
    v94 = (v5 + v77[8]);
    v95 = v94[1];
    v191 = *v94;
    v242 = v191;
    v243 = v95;

    if (v229)
    {
      sub_20D972C18();
    }

    else
    {
      v96 = a4;
    }

    v112 = v233;
    v246 = v96;
    sub_20D973708();
    v113 = v202;
    sub_20D973898();
    v114 = (v5 + v77[6]);
    v242 = *(v114 + 2);
    v115 = MEMORY[0x277CE1318];
    v116 = MEMORY[0x277CBB400];
    v117 = MEMORY[0x277CE1310];
    v118 = v200;
    v119 = v231;
    sub_20D9735B8();
    v120 = *(v238 + 8);
    v238 += 8;
    v206 = v120;
    v120(v113, v119);
    v242 = v119;
    v243 = v115;
    v244 = v116;
    v245 = v117;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v122 = v199;
    v123 = v232;
    sub_20D973618();
    v124 = *(v239 + 8);
    v239 += 8;
    v200 = v124;
    (v124)(v118, v123);
    v242 = v123;
    v243 = OpaqueTypeConformance2;
    v202 = OpaqueTypeConformance2;
    v125 = swift_getOpaqueTypeConformance2();
    v126 = v203;
    sub_20D9735E8();
    v127 = *(v240 + 8);
    v240 += 8;
    v190 = v127;
    v127(v122, v112);
    v209 = v114;
    v128 = *(v114 + 1);
    v129 = v241;
    v130 = *(v241 + 104);
    v131 = v235;
    v189 = *MEMORY[0x277CE0118];
    v132 = v236;
    v188 = v130;
    v130(v235);
    v242 = v112;
    v243 = v125;
    v199 = v125;
    v133 = swift_getOpaqueTypeConformance2();
    v134 = v234;
    v187[1] = v133;
    sub_20D9735A8();
    v135 = *(v129 + 8);
    v241 = v129 + 8;
    v187[0] = v135;
    v135(v131, v132);
    v136 = *(v224 + 8);
    v137 = v136(v126, v134);
    v242 = v205;
    v243 = v222;
    v138 = v207;
    MEMORY[0x20F320D90](v137);
    v139 = v208;
    v140 = v197;
    v194(v208, v198, v197);
    v193(v139, 0, 1, v140);
    sub_20D9736F8();
    v141 = v139;
    v142 = v228;
    sub_20D7E3944(v141, &qword_27C839548, &unk_20D979C20);
    v192(v138, v142);

    v242 = v191;
    v243 = v95;
    if (v229)
    {
      sub_20D972BE8();
      a4 = v143;
    }

    v246 = -a4;
    sub_20D973708();

    v144 = v217;
    sub_20D973898();
    v242 = *(v209 + 3);
    v145 = v216;
    v146 = v231;
    sub_20D9735B8();
    v206(v144, v146);
    v147 = v215;
    v148 = v232;
    sub_20D973618();
    (v200)(v145, v148);
    v149 = v212;
    v150 = v233;
    sub_20D9735E8();
    v190(v147, v150);
    v152 = v235;
    v151 = v236;
    v188(v235, v189, v236);
    v153 = v223;
    v154 = v234;
    sub_20D9735A8();
    (v187[0])(v152, v151);
    v136(v149, v154);
    v155 = v225;
    v156 = *(v225 + 16);
    v157 = v213;
    v158 = v226;
    v156(v213, v230, v226);
    v159 = v214;
    v156(v214, v153, v158);
    v160 = v218;
    v156(v218, v157, v158);
    v161 = v219;
    v162 = *(v219 + 48);
    v156(&v160[v162], v159, v158);
    v163 = *(v155 + 32);
    v164 = v220;
    v163(v220, v160, v158);
    v163(v164 + *(v161 + 48), &v160[v162], v158);
    v165 = *(v155 + 8);
    v165(v223, v158);
    v165(v230, v158);
    v165(v159, v158);
    v165(v157, v158);
    sub_20D7D8584(v164, v227);
  }

  else
  {
    v242 = v80;
    v243 = v79;

    MEMORY[0x20F320D90](v97);
    v98 = v5 + v77[5];
    v99 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v100 = *(v99 + 20);
    v101 = v30;
    v102 = *(v99 + 64);
    v103 = sub_20D9727D8();
    v104 = v5;
    v105 = *(v103 - 8);
    (*(v105 + 16))(v29, v98 + v102, v103);
    (*(v105 + 56))(v29, 0, 1, v103);
    sub_20D7E1EF8();
    sub_20D9736F8();
    sub_20D7E3944(v29, &qword_27C839548, &unk_20D979C20);
    (*(v101 + 8))(v33, v228);

    v230 = v77;
    v106 = v104;
    v107 = (v104 + v77[8]);
    v109 = *v107;
    v108 = v107[1];
    v242 = *v107;
    v243 = v108;

    if (v229)
    {
      sub_20D972C18();
      v246 = v110;
      sub_20D973708();
      v242 = v109;
      v243 = v108;
      sub_20D972BE8();
      a4 = v111;
    }

    else
    {
      v246 = a4;
      sub_20D973708();
      v242 = v109;
      v243 = v108;
    }

    v166 = v224;
    v167 = v233;
    v246 = -a4;
    sub_20D973708();

    v168 = v208;
    sub_20D9738A8();
    v169 = v231;
    v170 = v106 + *(v230 + 6);
    v242 = *(v170 + 160);
    v171 = MEMORY[0x277CE1318];
    v172 = MEMORY[0x277CBB400];
    v173 = MEMORY[0x277CE1310];
    v174 = v207;
    sub_20D9735B8();
    (*(v238 + 8))(v168, v169);
    v242 = v169;
    v243 = v171;
    v244 = v172;
    v245 = v173;
    v175 = swift_getOpaqueTypeConformance2();
    v176 = v205;
    v177 = v232;
    sub_20D973618();
    (*(v239 + 8))(v174, v177);
    v242 = v177;
    v243 = v175;
    v178 = swift_getOpaqueTypeConformance2();
    v179 = v206;
    sub_20D9735E8();
    (*(v240 + 8))(v176, v167);
    v180 = *(v170 + 8);
    v181 = v241;
    v183 = v235;
    v182 = v236;
    (*(v241 + 104))(v235, *MEMORY[0x277CE0118], v236);
    v242 = v167;
    v243 = v178;
    swift_getOpaqueTypeConformance2();
    v184 = v201;
    v185 = v234;
    sub_20D9735A8();
    (*(v181 + 8))(v183, v182);
    (*(v166 + 8))(v179, v185);
    (*(v225 + 32))(v227, v184, v226);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6E0, &qword_20D97E198);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_20D924FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[2] = a2;
  v25[3] = a3;
  v4 = sub_20D973738();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v25[1] = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D973688();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  v13 = sub_20D9727B8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20D9736A8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  (*(v14 + 104))(v17, *MEMORY[0x277CC9968], v13);
  v20 = a1 + *(type metadata accessor for HistoricalUsageSummaryChart() + 20);
  v21 = *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 64);
  v22 = sub_20D9727D8();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v12, v20 + v21, v22);
  (*(v23 + 56))(v12, 0, 1, v22);
  sub_20D973698();
  sub_20D7E3944(v12, &qword_27C839548, &unk_20D979C20);
  (*(v14 + 8))(v17, v13);

  sub_20D973678();
  sub_20D973728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6A0, &qword_20D97E140);
  sub_20D925CF4();
  return sub_20D973988();
}

uint64_t sub_20D925334@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v55 = a1;
  v57 = a2;
  v2 = sub_20D9737E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D973858();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D972408();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFA0, &unk_20D97E150);
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v45 - v18;
  v20 = sub_20D972628();
  v54 = *(v20 - 8);
  v21 = *(v54 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6A8, &qword_20D97E148);
  v56 = *(v24 - 8);
  v25 = *(v56 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v45 - v26;
  v28 = swift_projectBox();
  if (sub_20D9739C8())
  {
    v29 = v57;
    v30 = *(v56 + 56);

    return v30(v29, 1, 1, v24);
  }

  else
  {
    v47 = v12;
    v48 = v27;
    v32 = v52;
    v55 = v24;
    v46 = v15;
    sub_20D9739B8();
    if ((*(v54 + 48))(v19, 1, v20) == 1)
    {
      sub_20D7E3944(v19, &qword_27C8389E8, &qword_20D9768D0);
      v33 = 1;
      v34 = v57;
      v36 = v47;
      v35 = v48;
      v37 = v53;
    }

    else
    {
      v38 = v54;
      (*(v54 + 32))(v23, v19, v20);
      swift_beginAccess();
      v39 = v51;
      (*(v51 + 16))(v11, v28, v32);
      v40 = sub_20D9723C8();
      v42 = v41;
      (*(v39 + 8))(v11, v32);
      v58 = v40;
      v59 = v42;
      sub_20D973848();
      sub_20D9737D8();
      sub_20D7E1EF8();
      v43 = v46;
      sub_20D9736C8();
      (*(v38 + 8))(v23, v20);
      v37 = v53;
      v36 = v47;
      v35 = v48;
      (*(v53 + 32))(v48, v43, v47);
      v33 = 0;
      v34 = v57;
    }

    v44 = v55;
    (*(v37 + 56))(v35, v33, 1, v36);
    sub_20D7EAF18(v35, v34, &qword_27C83B6A8, &qword_20D97E148);
    return (*(v56 + 56))(v34, 0, 1, v44);
  }
}

uint64_t sub_20D9258DC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D974088();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B650, &qword_20D97E040);
  return sub_20D920A6C((a1 + *(v2 + 44)));
}

uint64_t sub_20D92592C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D9259AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D925A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageSummaryChart();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D925A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HistoricalUsageSummaryChart() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30) - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20D922760(a1, v2 + v6, v10, (v2 + v9), a2, v11);
}

unint64_t sub_20D925B9C()
{
  result = qword_281125078;
  if (!qword_281125078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B690, &qword_20D97E0C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B0D8, &unk_20D97E0D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B0E0, &unk_20D97D0C0);
    sub_20D9102F0();
    sub_20D910610();
    swift_getOpaqueTypeConformance2();
    sub_20D910724();
    sub_20D910828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125078);
  }

  return result;
}

uint64_t sub_20D925CA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20D972628();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D925CF4()
{
  result = qword_281125050;
  if (!qword_281125050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B6A0, &qword_20D97E140);
    sub_20D925D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125050);
  }

  return result;
}

unint64_t sub_20D925D78()
{
  result = qword_281125048;
  if (!qword_281125048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B6A8, &qword_20D97E148);
    sub_20D7EBC4C(&qword_281125058, &qword_27C83AFA0, &unk_20D97E150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125048);
  }

  return result;
}

uint64_t LollipopSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v65 = type metadata accessor for LollipopSelectionView(0);
  v70 = *(v65 - 8);
  v2 = *(v70 + 64);
  MEMORY[0x28223BE20](v65);
  v71 = v3;
  v72 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B700, &qword_20D97E1B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v62 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B708, &qword_20D97E1B8);
  v8 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v10 = &v62 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B710, &qword_20D97E1C0);
  v11 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v69 = &v62 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B718, &qword_20D97E1C8);
  v13 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v15 = &v62 - v14;
  v16 = sub_20D973D58();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20D90287C();
  v23 = v22;
  v24 = *(v1 + *(type metadata accessor for HistoricalUsageChart() + 44));
  v68 = v16;
  v66 = v17;
  if (v24 == 1)
  {
    (*(v17 + 104))(v20, *MEMORY[0x277CDF988], v16);
  }

  else
  {
    sub_20D8EF784(v20);
  }

  *v7 = sub_20D974168();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B720, &unk_20D97E1D0);
  sub_20D92640C(v1, v21, v23, v20, &v7[*(v25 + 44)]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D97A6F0;
  v27 = sub_20D974328();
  *(inited + 32) = v27;
  v28 = sub_20D974348();
  *(inited + 33) = v28;
  v29 = sub_20D974368();
  *(inited + 34) = v29;
  v30 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v27)
  {
    v30 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v28)
  {
    v30 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v29)
  {
    v30 = sub_20D974358();
  }

  v31 = v1 + *(v65 + 32);
  v32 = *(v31 + 184);
  sub_20D973AD8();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_20D7EAF18(v7, v10, &qword_27C83B700, &qword_20D97E1B0);
  v41 = &v10[*(v63 + 36)];
  *v41 = v30;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = sub_20D974338();
  v43 = *(v31 + 192);
  sub_20D973AD8();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v69;
  sub_20D7EAF18(v10, v69, &qword_27C83B708, &qword_20D97E1B8);
  v53 = v52 + *(v64 + 36);
  *v53 = v42;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  v54 = sub_20D974C48();
  v56 = v55;
  v57 = v72;
  sub_20D92B140(v1, v72, type metadata accessor for LollipopSelectionView);
  v58 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v59 = swift_allocObject();
  sub_20D92B0D8(v57, v59 + v58, type metadata accessor for LollipopSelectionView);
  sub_20D7EAF18(v52, v15, &qword_27C83B710, &qword_20D97E1C0);
  v60 = &v15[*(v67 + 36)];
  *v60 = sub_20D927904;
  v60[1] = v59;
  v60[2] = v54;
  v60[3] = v56;
  sub_20D7EAF18(v15, v73, &qword_27C83B718, &qword_20D97E1C8);
  return (*(v66 + 8))(v20, v68);
}

uint64_t sub_20D92640C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v153 = a4;
  v149 = a3;
  v146 = a5;
  v147 = a2;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  v9 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v140 = &v125 - v10;
  v11 = sub_20D974458();
  v150 = *(v11 - 8);
  v151 = v11;
  v12 = *(v150 + 64);
  MEMORY[0x28223BE20](v11);
  v148 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B820, &qword_20D97E4A0);
  v141 = *(v142 - 8);
  v14 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v139 = &v125 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B828, &qword_20D97E4A8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v145 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v143 = &v125 - v20;
  v154 = type metadata accessor for LollipopSelectionView.TappedUsageLollipopView(0);
  v21 = *(*(v154 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v154);
  v132 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v133 = &v125 - v24;
  v137 = sub_20D972C58();
  v136 = *(v137 - 8);
  v25 = *(v136 + 64);
  v26 = MEMORY[0x28223BE20](v137);
  v134 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v135 = &v125 - v28;
  v29 = type metadata accessor for LollipopSelectionView.ImportExportLollipopView(0);
  v30 = *(*(v29 - 1) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v130 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v131 = &v125 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B830, &qword_20D97E4B0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v125 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B838, &qword_20D97E4B8);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v125 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B840, &qword_20D97E4C0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = &v125 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B848, &qword_20D97E4C8);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v138 = &v125 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = &v125 - v50;
  v52 = type metadata accessor for LollipopSelectionView(0);
  v53 = *(a1 + *(v52 + 24));
  v152 = a1;
  v155 = v51;
  if (v53 != 1)
  {
    v54 = v52;
    v125 = v38;
    v126 = v41;
    v128 = v34;
    v129 = v42;
    v127 = v37;
    v55 = type metadata accessor for HistoricalUsageChart();
    v56 = v136;
    v57 = *(v136 + 16);
    v58 = a1 + *(v54 + 20);
    if (*(a1 + v55[11]) == 1)
    {
      v59 = v137;
      v57(v135, v58, v137);
      v60 = (a1 + v55[6]);
      v61 = (a1 + v55[7]);
      v62 = v45;
      if (*(v60 + 8) == 1)
      {
        if (v61[8])
        {
          sub_20D972BC8();
          v5 = v63;
          sub_20D972C18();
          v7 = fabs(v64);
          sub_20D972BE8();
          v66 = v65;
          v67 = 1;
          goto LABEL_24;
        }

LABEL_19:
        v76 = *v61;
        result = sub_20D972B28();
        if ((v76 & 0x8000000000000000) == 0)
        {
          if (v76 < *(result + 16))
          {
            v5 = *(result + 8 * v76 + 32);

            result = sub_20D972B58();
            if (v76 < *(result + 16))
            {
              v6 = *(result + 8 * v76 + 32);

              result = sub_20D972B48();
              if (v76 < *(result + 16))
              {
                goto LABEL_23;
              }

              goto LABEL_41;
            }

LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (!v61[8])
      {
        goto LABEL_19;
      }

      v76 = *v60;
      result = sub_20D972B38();
      if ((v76 & 0x8000000000000000) != 0)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (v76 >= *(result + 16))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v5 = *(result + 8 * v76 + 32);

      result = sub_20D972B78();
      if (v76 >= *(result + 16))
      {
LABEL_46:
        __break(1u);
        return result;
      }

      v6 = *(result + 8 * v76 + 32);

      result = sub_20D972B68();
      v69 = *(result + 16);
      if (v76 < v69)
      {
LABEL_23:
        v7 = fabs(v6);
        v66 = *(result + 8 * v76 + 32);

        v67 = 0;
LABEL_24:
        v6 = fabs(v66);
        v78 = sub_20D904440();
        v80 = v79;
        if (qword_27C838710 != -1)
        {
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      v45 = v134;
      v62 = v137;
      v57(v134, v58, v137);
      v29 = sub_20D90EB2C();
      v59 = v68;
      v69 = (a1 + v55[7]);
      if (*(v69 + 8) == 1)
      {
        v70 = (a1 + v55[6]);
        v71 = *v70;
        v72 = *(v70 + 8);

        v73 = v56;
        if (v72)
        {
          sub_20D972BC8();
          v5 = v74;
          v75 = v154;
LABEL_29:
          v89 = v132;
          (*(v73 + 32))(v132, v45, v62);
          *(v89 + v75[5]) = 0;
          v90 = (v89 + v75[6]);
          *v90 = v29;
          v90[1] = v59;
          *(v89 + v75[7]) = v5;
          v91 = v133;
          sub_20D92B0D8(v89, v133, type metadata accessor for LollipopSelectionView.TappedUsageLollipopView);
          sub_20D92B140(v91, v127, type metadata accessor for LollipopSelectionView.TappedUsageLollipopView);
          swift_storeEnumTagMultiPayload();
          sub_20D92B1A8();
          sub_20D92B090(&qword_27C83B868, type metadata accessor for LollipopSelectionView.TappedUsageLollipopView);
          sub_20D9741B8();
          v87 = type metadata accessor for LollipopSelectionView.TappedUsageLollipopView;
          v88 = v91;
          goto LABEL_30;
        }

        result = sub_20D972B38();
        if ((v71 & 0x8000000000000000) != 0)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v75 = v154;
        if (v71 >= *(result + 16))
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_28:
        v5 = *(result + 8 * v71 + 32);

        goto LABEL_29;
      }
    }

    v73 = v56;
    v71 = *v69;

    result = sub_20D972B28();
    if ((v71 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v75 = v154;
    v56 = v129;
    v61 = &v160;
    if (v71 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  swift_storeEnumTagMultiPayload();
  sub_20D92B264();
  sub_20D92B090(&qword_27C83B860, type metadata accessor for LollipopSelectionView.ImportExportLollipopView);
  sub_20D9741B8();
  sub_20D7EB7E8(v45, v37, &qword_27C83B840, &qword_20D97E4C0);
  swift_storeEnumTagMultiPayload();
  sub_20D92B1A8();
  sub_20D92B090(&qword_27C83B868, type metadata accessor for LollipopSelectionView.TappedUsageLollipopView);
  sub_20D9741B8();
  sub_20D7E3944(v45, &qword_27C83B840, &qword_20D97E4C0);
  while (1)
  {
    v156 = v147;
    v157 = v149;
    sub_20D7E1EF8();

    v92 = sub_20D9745C8();
    v94 = v93;
    v96 = v95;
    sub_20D974388();
    v98 = v150;
    v97 = v151;
    v99 = v148;
    (*(v150 + 104))(v148, *MEMORY[0x277CE0A10], v151);
    sub_20D974478();

    (*(v98 + 8))(v99, v97);
    v59 = sub_20D974558();
    v101 = v100;
    v56 = v102;

    sub_20D7EADC0(v92, v94, v96 & 1);

    v103 = *(v152 + *(type metadata accessor for HistoricalUsageChart() + 44));
    v104 = objc_opt_self();
    v105 = &selRef_secondaryLabelColor;
    if (!v103)
    {
      v105 = &selRef_labelColor;
    }

    v106 = [v104 *v105];
    v107 = sub_20D974888();
    v67 = v107;
    v156 = v107;
    v29 = sub_20D974518();
    v62 = v108;
    v110 = v109;
    v112 = v111;
    sub_20D7EADC0(v59, v101, v56 & 1);

    v156 = v29;
    v157 = v62;
    v113 = v110 & 1;
    LOBYTE(v158) = v110 & 1;
    v159 = v112;
    v78 = sub_20D973D58();
    sub_20D92B090(&qword_281127030, MEMORY[0x277CDFA28]);
    v80 = v153;
    if (sub_20D974FD8())
    {
      break;
    }

    __break(1u);
LABEL_36:
    swift_once();
LABEL_25:
    v82 = qword_27C840E40;
    v81 = *algn_27C840E48;
    v83 = v130;
    (*(v56 + 32))(v130, v135, v59);
    *(v83 + v29[5]) = v67;
    *(v83 + v29[6]) = v5;
    *(v83 + v29[7]) = v7;
    *(v83 + v29[8]) = v6;
    v84 = (v83 + v29[9]);
    *v84 = v78;
    v84[1] = v80;
    v85 = (v83 + v29[10]);
    *v85 = v82;
    v85[1] = v81;
    v86 = v131;
    sub_20D92B0D8(v83, v131, type metadata accessor for LollipopSelectionView.ImportExportLollipopView);
    sub_20D92B140(v86, v126, type metadata accessor for LollipopSelectionView.ImportExportLollipopView);
    swift_storeEnumTagMultiPayload();
    sub_20D92B264();
    sub_20D92B090(&qword_27C83B860, type metadata accessor for LollipopSelectionView.ImportExportLollipopView);

    sub_20D9741B8();
    sub_20D7EB7E8(v62, v127, &qword_27C83B840, &qword_20D97E4C0);
    swift_storeEnumTagMultiPayload();
    sub_20D92B1A8();
    sub_20D92B090(&qword_27C83B868, type metadata accessor for LollipopSelectionView.TappedUsageLollipopView);
    sub_20D9741B8();
    sub_20D7E3944(v62, &qword_27C83B840, &qword_20D97E4C0);
    v87 = type metadata accessor for LollipopSelectionView.ImportExportLollipopView;
    v88 = v86;
LABEL_30:
    sub_20D92B2B8(v88, v87);
  }

  v114 = v140;
  (*(*(v78 - 8) + 16))(v140, v80, v78);
  v115 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
  v116 = v139;
  v117 = v144;
  sub_20D974778();
  sub_20D7E3944(v114, &qword_27C839080, &qword_20D977AC0);
  sub_20D7EADC0(v29, v62, v113);

  v156 = MEMORY[0x277CE0BD8];
  v157 = v117;
  v158 = MEMORY[0x277CE0BC8];
  v159 = v115;
  swift_getOpaqueTypeConformance2();
  v118 = v143;
  v119 = v142;
  sub_20D9747D8();
  (*(v141 + 8))(v116, v119);
  v120 = v155;
  v121 = v138;
  sub_20D7EB7E8(v155, v138, &qword_27C83B848, &qword_20D97E4C8);
  v122 = v145;
  sub_20D7EB7E8(v118, v145, &qword_27C83B828, &qword_20D97E4A8);
  v123 = v146;
  sub_20D7EB7E8(v121, v146, &qword_27C83B848, &qword_20D97E4C8);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B870, &qword_20D97E4D0);
  sub_20D7EB7E8(v122, v123 + *(v124 + 48), &qword_27C83B828, &qword_20D97E4A8);
  sub_20D7E3944(v118, &qword_27C83B828, &qword_20D97E4A8);
  sub_20D7E3944(v120, &qword_27C83B848, &qword_20D97E4C8);
  sub_20D7E3944(v122, &qword_27C83B828, &qword_20D97E4A8);
  return sub_20D7E3944(v121, &qword_27C83B848, &qword_20D97E4C8);
}

uint64_t sub_20D927508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v35 = a3;
  v36 = sub_20D973C48();
  v4 = *(v36 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v36);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LollipopSelectionView(0);
  v7 = v6 - 8;
  v32 = *(v6 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7F8, &qword_20D97E488);
  v10 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v12 = &v30 - v11;
  v13 = a2 + *(v7 + 40);
  v31 = a2;
  v14 = *(v13 + 200);
  v15 = *(sub_20D973DE8() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_20D974118();
  (*(*(v17 - 8) + 104))(&v12[v15], v16, v17);
  *v12 = v14;
  *(v12 + 1) = v14;
  v30 = *(v13 + 168);
  v18 = v30;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B800, &qword_20D97E490);
  *&v12[*(v19 + 52)] = v18;
  *&v12[*(v19 + 56)] = 256;
  sub_20D92B140(a2, v9, type metadata accessor for LollipopSelectionView);
  v20 = v33;
  (*(v4 + 16))(v33, v37, v36);
  v21 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v22 = v4;
  v23 = (v21 + v8 + *(v4 + 80)) & ~*(v4 + 80);
  v24 = swift_allocObject();
  sub_20D92B0D8(v9, v24 + v21, type metadata accessor for LollipopSelectionView);
  (*(v22 + 32))(v24 + v23, v20, v36);
  v25 = &v12[*(v34 + 36)];
  *v25 = sub_20D92A6D8;
  v25[1] = v24;
  v25[2] = 0;
  v25[3] = 0;

  sub_20D973C38();
  v38 = v26;
  v39 = v27;
  sub_20D92B140(v31, v9, type metadata accessor for LollipopSelectionView);
  v28 = swift_allocObject();
  sub_20D92B0D8(v9, v28 + v21, type metadata accessor for LollipopSelectionView);
  type metadata accessor for CGSize(0);
  sub_20D92AFD8();
  sub_20D92B090(&qword_27C83B220, type metadata accessor for CGSize);
  sub_20D974848();

  return sub_20D7E3944(v12, &qword_27C83B7F8, &qword_20D97E488);
}

uint64_t sub_20D927904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LollipopSelectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D927508(a1, v6, a2);
}

uint64_t sub_20D9279A0(uint64_t a1)
{
  sub_20D973C38();
  v2 = (a1 + *(type metadata accessor for LollipopSelectionView(0) + 28));
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B818, &qword_20D97E498);
  return sub_20D974B28();
}

uint64_t sub_20D927A28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = (a3 + *(type metadata accessor for LollipopSelectionView(0) + 28));
  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B818, &qword_20D97E498);
  return sub_20D974B28();
}

uint64_t sub_20D927AA4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20D972BC8();
  v6 = v5 < 0.0;
  v7 = (v2 + a1[6]);
  v9 = *v7;
  v8 = v7[1];
  v10 = fabs(*(v2 + a1[7]));
  LOBYTE(v7) = *(v2 + a1[5]);
  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = 0xD000000000000010;
  *(a2 + 32) = 0x800000020D98A7F0;
  *(a2 + 40) = v7;
  *(a2 + 41) = v6 & ~v7;
}

uint64_t sub_20D927B38@<X0>(char *a1@<X8>)
{
  v79 = a1;
  v1 = sub_20D972018();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v73 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D971FC8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v78 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v66 - v11;
  v12 = sub_20D974458();
  v70 = *(v12 - 8);
  v71 = v12;
  v13 = *(v70 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B390, &qword_20D97D7D0);
  v16 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v18 = &v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3E8, &qword_20D97E3E0);
  v75 = *(v19 - 8);
  v76 = v19;
  v20 = *(v75 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v74 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v80 = &v66 - v23;
  if (qword_27C838738 != -1)
  {
    swift_once();
  }

  v81 = qword_27C83B6F0;
  v82 = *algn_27C83B6F8;
  sub_20D7E1EF8();

  v24 = sub_20D9745C8();
  v26 = v25;
  v28 = v27;
  v68 = v29;
  v30 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3A0, &unk_20D97D7E0) + 36)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v32 = *MEMORY[0x277CE0B48];
  v33 = sub_20D974538();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v30 + v31, v32, v33);
  (*(v34 + 56))(v30 + v31, 0, 1, v33);
  *v30 = swift_getKeyPath();
  *v18 = v24;
  *(v18 + 1) = v26;
  v18[16] = v28 & 1;
  *(v18 + 3) = v68;
  sub_20D974488();
  LODWORD(v68) = *MEMORY[0x277CE0A10];
  v35 = v70;
  v36 = v71;
  v67 = *(v70 + 104);
  v67(v15);
  v37 = sub_20D974478();

  v38 = *(v35 + 8);
  v38(v15, v36);
  KeyPath = swift_getKeyPath();
  v40 = &v18[*(v69 + 36)];
  *v40 = KeyPath;
  v40[1] = v37;
  sub_20D9743F8();
  sub_20D92B524(&qword_27C83B3A8, &qword_27C83B390, &qword_20D97D7D0, sub_20D919DD8);
  sub_20D974708();
  sub_20D7E3944(v18, &qword_27C83B390, &qword_20D97D7D0);
  sub_20D92A060();
  sub_20D972008();
  sub_20D971FD8();
  v41 = sub_20D9745B8();
  v43 = v42;
  LOBYTE(v33) = v44;
  sub_20D974428();
  (v67)(v15, v68, v36);
  sub_20D974478();

  v38(v15, v36);
  v45 = sub_20D974558();
  v47 = v46;
  LOBYTE(v35) = v48;

  sub_20D7EADC0(v41, v43, v33 & 1);

  sub_20D9743F8();
  v49 = sub_20D9744F8();
  v51 = v50;
  LOBYTE(v41) = v52;
  v54 = v53;
  sub_20D7EADC0(v45, v47, v35 & 1);

  v81 = v49;
  v82 = v51;
  v83 = v41 & 1;
  v84 = v54;
  v55 = v77;
  sub_20D9747D8();
  sub_20D7EADC0(v49, v51, v41 & 1);

  v57 = v74;
  v56 = v75;
  v58 = *(v75 + 16);
  v59 = v80;
  v60 = v76;
  v58(v74, v80, v76);
  v61 = v78;
  sub_20D7EB7E8(v55, v78, &qword_27C838F18, &unk_20D977860);
  v62 = v79;
  v58(v79, v57, v60);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7C0, &qword_20D97E450);
  sub_20D7EB7E8(v61, &v62[*(v63 + 48)], &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v55, &qword_27C838F18, &unk_20D977860);
  v64 = *(v56 + 8);
  v64(v59, v60);
  sub_20D7E3944(v61, &qword_27C838F18, &unk_20D977860);
  return (v64)(v57, v60);
}

uint64_t sub_20D9282A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7A8, &qword_20D97E3D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  *v7 = sub_20D974168();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7B0, &qword_20D97E3D8);
  sub_20D927B38(&v7[*(v8 + 44)]);
  v9 = *MEMORY[0x277CDF998];
  v10 = sub_20D973D58();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_20D92B090(&qword_281127030, MEMORY[0x277CDFA28]);
  result = sub_20D974FD8();
  if (result)
  {
    sub_20D7EBC4C(&qword_27C83B7B8, &qword_27C83B7A8, &qword_20D97E3D0);
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    sub_20D974778();
    sub_20D7E3944(v3, &qword_27C839080, &qword_20D977AC0);
    return sub_20D7E3944(v7, &qword_27C83B7A8, &qword_20D97E3D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D928514@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  v2 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v4 = &v13 - v3;
  sub_20D972BE8();
  v6 = v5 > 0.0;
  sub_20D972C18();
  v8 = v7 >= 0.0;
  v9 = sub_20D974088();
  v19 = 0;
  sub_20D9288BC(v1, v8, v6, &v30);
  v25 = v35;
  v26 = v36;
  v27[0] = v37[0];
  *(v27 + 10) = *(v37 + 10);
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v20 = v30;
  v21 = v31;
  v28[5] = v35;
  v28[6] = v36;
  v29[0] = v37[0];
  *(v29 + 10) = *(v37 + 10);
  v28[2] = v32;
  v28[3] = v33;
  v28[4] = v34;
  v28[0] = v30;
  v28[1] = v31;
  sub_20D7EB7E8(&v20, &v16, &qword_27C83B790, &qword_20D97E3C0);
  sub_20D7E3944(v28, &qword_27C83B790, &qword_20D97E3C0);
  *&v18[103] = v26;
  *&v18[87] = v25;
  *&v18[39] = v22;
  *&v18[23] = v21;
  *&v18[119] = v27[0];
  *&v18[129] = *(v27 + 10);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[7] = v20;
  *&v17[97] = *&v18[96];
  *&v17[113] = *&v18[112];
  *&v17[129] = *&v18[128];
  *&v17[33] = *&v18[32];
  *&v17[49] = *&v18[48];
  *&v17[65] = *&v18[64];
  *&v17[81] = *&v18[80];
  *&v17[1] = *v18;
  *&v16 = v9;
  *(&v16 + 1) = 0x402E000000000000;
  v17[0] = v19;
  v17[145] = BYTE9(v27[1]);
  *&v17[17] = *&v18[16];
  v10 = *MEMORY[0x277CDFA10];
  v11 = sub_20D973D58();
  (*(*(v11 - 8) + 104))(v4, v10, v11);
  sub_20D92B090(&qword_281127030, MEMORY[0x277CDFA28]);
  result = sub_20D974FD8();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B798, &qword_20D97E3C8);
    sub_20D7EBC4C(&qword_27C83B7A0, &qword_27C83B798, &qword_20D97E3C8);
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    sub_20D974778();
    sub_20D7E3944(v4, &qword_27C839080, &qword_20D977AC0);
    v37[1] = *&v17[112];
    v37[2] = *&v17[128];
    v38 = *&v17[144];
    v34 = *&v17[48];
    v35 = *&v17[64];
    v36 = *&v17[80];
    v37[0] = *&v17[96];
    v30 = v16;
    v31 = *v17;
    v32 = *&v17[16];
    v33 = *&v17[32];
    return sub_20D7E3944(&v30, &qword_27C83B798, &qword_20D97E3C8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D9288BC@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for LollipopSelectionView.ImportExportLollipopView(0);
  v8 = *(a1 + v7[5]);
  if (v8 != 1)
  {
    v37 = 0;
    v38 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v10 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = (a1 + v7[9]);
    v39 = *v15;
    v12 = *(a1 + v7[7]);
    v36 = 0x800000020D98A7F0;
    v11 = v15[1];

    v14 = 1;
    v13 = 0xD000000000000010;
    if ((a3 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (qword_27C838708 != -1)
  {
    swift_once();
  }

  v37 = *(a1 + v7[6]);
  v38 = qword_27C840E30;
  v41 = 0x800000020D98A830;
  v9 = *algn_27C840E38;

  v40 = 0xD000000000000013;
  v10 = 1;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_5:
  v39 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v36 = 0;
  v14 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (v8)
  {
    v16 = (a1 + v7[10]);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(a1 + v7[8]);
    v20 = 0x800000020D98A810;
    v21 = v14;
    v22 = v13;

    v24 = v19;
    v25 = v23;
    v26 = v18;
    v13 = v22;
    v14 = v21;
    v27 = 0xD000000000000012;
    v28 = 1;
    goto LABEL_12;
  }

LABEL_11:
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v27 = 0;
  v20 = 0;
  v28 = 0;
LABEL_12:
  *a4 = v38;
  *(a4 + 8) = v9;
  v29 = v9;
  v34 = v9;
  *(a4 + 16) = v37;
  *(a4 + 24) = v40;
  *(a4 + 32) = v41;
  *(a4 + 40) = v10;
  *(a4 + 48) = v39;
  *(a4 + 56) = v11;
  v33 = v11;
  *(a4 + 64) = v12;
  *(a4 + 72) = v13;
  *(a4 + 80) = v36;
  *(a4 + 88) = v14;
  *(a4 + 96) = v26;
  *(a4 + 104) = v25;
  *(a4 + 112) = v24;
  *(a4 + 120) = v27;
  *(a4 + 128) = v20;
  *(a4 + 136) = v28;
  v30 = v26;
  v31 = v25;
  sub_20D929E8C(v38, v29);
  sub_20D929E8C(v39, v33);
  sub_20D929E8C(v30, v31);
  sub_20D929ED0(v30, v31);
  sub_20D929ED0(v39, v33);

  return sub_20D929ED0(v38, v34);
}

uint64_t sub_20D928BD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3E0, &unk_20D97D8C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v71 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v70 = (&v57 - v7);
  v63 = sub_20D974458();
  v61 = *(v63 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v59 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B888, &qword_20D97E578);
  v10 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v12 = &v57 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B890, &qword_20D97E580);
  v67 = *(v69 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v60 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B898, &qword_20D97E588);
  v16 = *(v15 - 8);
  v66 = v15 - 8;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8);
  v68 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v64 = &v57 - v21;
  MEMORY[0x28223BE20](v20);
  v65 = &v57 - v22;
  v58 = a1;
  v23 = a1[1];
  v73 = *a1;
  v74 = v23;
  sub_20D7E1EF8();

  v24 = sub_20D9745C8();
  v26 = v25;
  LOBYTE(v23) = v27;
  v29 = v28;
  v30 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3A0, &unk_20D97D7E0) + 36)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v32 = *MEMORY[0x277CE0B48];
  v33 = sub_20D974538();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v30 + v31, v32, v33);
  (*(v34 + 56))(v30 + v31, 0, 1, v33);
  *v30 = swift_getKeyPath();
  *v12 = v24;
  *(v12 + 1) = v26;
  v12[16] = v23 & 1;
  *(v12 + 3) = v29;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B8A0, &unk_20D97E590) + 36)] = 256;
  sub_20D974488();
  v35 = v61;
  v36 = v59;
  v37 = v63;
  (*(v61 + 104))(v59, *MEMORY[0x277CE0A10], v63);
  v38 = sub_20D974478();

  (*(v35 + 8))(v36, v37);
  KeyPath = swift_getKeyPath();
  v40 = &v12[*(v62 + 36)];
  *v40 = KeyPath;
  v40[1] = v38;
  sub_20D9743F8();
  sub_20D92B524(&qword_27C83B8A8, &qword_27C83B888, &qword_20D97E578, sub_20D92B5D4);
  v41 = v60;
  sub_20D974708();
  sub_20D7E3944(v12, &qword_27C83B888, &qword_20D97E578);
  v42 = v58;
  LOBYTE(v32) = *(v58 + 40);
  v43 = objc_opt_self();
  v44 = &selRef_secondaryLabelColor;
  if ((v32 & 1) == 0)
  {
    v44 = &selRef_labelColor;
  }

  v45 = [v43 *v44];
  v46 = sub_20D974888();
  v47 = v64;
  (*(v67 + 32))(v64, v41, v69);
  v48 = v65;
  *(v47 + *(v66 + 44)) = v46;
  sub_20D7EAF18(v47, v48, &qword_27C83B898, &qword_20D97E588);
  v49 = sub_20D974088();
  v50 = v70;
  *v70 = v49;
  *(v50 + 8) = 0x4010000000000000;
  *(v50 + 16) = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3F0, &qword_20D97D8D0);
  sub_20D92924C(v42, v50 + *(v51 + 44));
  v52 = v68;
  sub_20D7EB7E8(v48, v68, &qword_27C83B898, &qword_20D97E588);
  v53 = v71;
  sub_20D7EB7E8(v50, v71, &qword_27C83B3E0, &unk_20D97D8C0);
  v54 = v72;
  sub_20D7EB7E8(v52, v72, &qword_27C83B898, &qword_20D97E588);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B8B8, &unk_20D97E5A0);
  sub_20D7EB7E8(v53, v54 + *(v55 + 48), &qword_27C83B3E0, &unk_20D97D8C0);
  sub_20D7E3944(v50, &qword_27C83B3E0, &unk_20D97D8C0);
  sub_20D7E3944(v48, &qword_27C83B898, &qword_20D97E588);
  sub_20D7E3944(v53, &qword_27C83B3E0, &unk_20D97D8C0);
  return sub_20D7E3944(v52, &qword_27C83B898, &qword_20D97E588);
}

uint64_t sub_20D92924C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_20D974458();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D971FC8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v68 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v67 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B400, &qword_20D97D8E8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v64 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B408, &qword_20D97D8F0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v66 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v70 = &v64 - v26;
  v71 = a1;
  if (*(a1 + 41))
  {
    v65 = v3;
    if (qword_27C838770 != -1)
    {
      swift_once();
    }

    v27 = qword_27C840E88;
    v28 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40) + 36));
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
    v30 = *MEMORY[0x277CE1050];
    v31 = sub_20D9749F8();
    (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
    *v28 = swift_getKeyPath();
    *v21 = v27;

    v32 = sub_20D974908();
    KeyPath = swift_getKeyPath();
    v34 = (v21 + *(v17 + 36));
    *v34 = KeyPath;
    v34[1] = v32;
    v35 = v21;
    v36 = v70;
    sub_20D92B660(v35, v70);
    (*(v18 + 56))(v36, 0, 1, v17);
    v3 = v65;
  }

  else
  {
    (*(v18 + 56))(&v64 - v26, 1, 1, v17);
  }

  v37 = *(v71 + 16);
  v38 = 0.1;
  if (v37 >= 10.0)
  {
    v38 = 1.0;
  }

  sub_20D88D380(0, v11, v37, *&v38);
  v39 = sub_20D9745B8();
  v41 = v40;
  v43 = v42;
  sub_20D974428();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0A10], v3);
  sub_20D974478();

  (*(v4 + 8))(v7, v3);
  v44 = sub_20D974558();
  v46 = v45;
  v48 = v47;

  sub_20D7EADC0(v39, v41, v43 & 1);

  sub_20D9743F8();
  v49 = sub_20D9744F8();
  v51 = v50;
  LOBYTE(v41) = v52;
  v54 = v53;
  sub_20D7EADC0(v44, v46, v48 & 1);

  v74 = v49;
  v75 = v51;
  v76 = v41 & 1;
  v77 = v54;
  v55 = *(v71 + 24);
  v56 = *(v71 + 32);
  v72 = 0xD000000000000015;
  v73 = 0x800000020D98A930;
  MEMORY[0x20F323340](v55, v56);

  MEMORY[0x20F323340](0xD000000000000014, 0x800000020D98A950);

  v57 = v67;
  sub_20D9747D8();

  sub_20D7EADC0(v49, v51, v41 & 1);

  v58 = v70;
  v59 = v66;
  sub_20D7EB7E8(v70, v66, &qword_27C83B408, &qword_20D97D8F0);
  v60 = v68;
  sub_20D7EB7E8(v57, v68, &qword_27C838F18, &unk_20D977860);
  v61 = v69;
  sub_20D7EB7E8(v59, v69, &qword_27C83B408, &qword_20D97D8F0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B410, &qword_20D97D8F8);
  sub_20D7EB7E8(v60, v61 + *(v62 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v57, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v58, &qword_27C83B408, &qword_20D97D8F0);
  sub_20D7E3944(v60, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v59, &qword_27C83B408, &qword_20D97D8F0);
}

uint64_t sub_20D9298E4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6 = *v1;
  v7[0] = v3;
  *(v7 + 10) = *(v1 + 26);
  *a1 = sub_20D974168();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B880, &unk_20D97E568);
  return sub_20D928BD4(&v6, a1 + *(v4 + 44));
}

void sub_20D929978()
{
  type metadata accessor for HistoricalUsageChart();
  if (v0 <= 0x3F)
  {
    sub_20D972C58();
    if (v1 <= 0x3F)
    {
      sub_20D929A24();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D929A24()
{
  if (!qword_27C83B738)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_20D974B58();
    if (!v1)
    {
      atomic_store(v0, &qword_27C83B738);
    }
  }
}

unint64_t sub_20D929A7C()
{
  result = qword_27C83B740;
  if (!qword_27C83B740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B718, &qword_20D97E1C8);
    sub_20D929B34();
    sub_20D7EBC4C(&qword_27C83B760, &qword_27C83B768, &qword_20D97E268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B740);
  }

  return result;
}

unint64_t sub_20D929B34()
{
  result = qword_27C83B748;
  if (!qword_27C83B748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B710, &qword_20D97E1C0);
    sub_20D929BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B748);
  }

  return result;
}

unint64_t sub_20D929BC0()
{
  result = qword_27C83B750;
  if (!qword_27C83B750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B708, &qword_20D97E1B8);
    sub_20D7EBC4C(&qword_27C83B758, &qword_27C83B700, &qword_20D97E1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B750);
  }

  return result;
}

uint64_t sub_20D929CC0()
{
  result = sub_20D972C58();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20D929D90()
{
  result = sub_20D972C58();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20D929E8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_20D929ED0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_20D929F14()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108();
  qword_27C83B6F0 = result;
  *algn_27C83B6F8 = v6;
  return result;
}

uint64_t sub_20D92A060()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v41 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D975058();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7C8, &unk_20D97E458);
  v37 = *(v39 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839980, &qword_20D97A4D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7D0, &qword_20D97E468);
  v33 = *(v36 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v36);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7D8, &qword_20D97E470);
  v17 = *(v16 - 8);
  v34 = v16;
  v35 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v21 = sub_20D975038();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7E0, &qword_20D97E478);
  v38 = *(v23 - 8);
  v24 = *(v38 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v33 - v25;
  v27 = [objc_opt_self() hours];
  sub_20D92A68C();
  sub_20D971CA8();
  sub_20D975028();
  sub_20D975018();
  v42 = 24;
  sub_20D85CBD0();
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  sub_20D971CE8();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839700, &qword_20D97E480);
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  sub_20D972138();
  sub_20D971C38();
  (*(v37 + 8))(v8, v39);
  sub_20D7E3944(v12, &qword_27C839980, &qword_20D97A4D0);
  (*(v33 + 8))(v15, v36);
  sub_20D7EBC4C(&qword_27C83B7F0, &qword_27C83B7D8, &qword_20D97E470);
  v29 = v34;
  sub_20D971CF8();
  (*(v35 + 8))(v20, v29);
  sub_20D975008();

  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v30 = qword_28112ABE8;
  sub_20D9726B8();
  v31 = sub_20D975108();
  (*(v38 + 8))(v26, v23);
  return v31;
}

unint64_t sub_20D92A68C()
{
  result = qword_27C83B7E8;
  if (!qword_27C83B7E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C83B7E8);
  }

  return result;
}

uint64_t sub_20D92A6D8()
{
  v1 = *(type metadata accessor for LollipopSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_20D973C48() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_20D9279A0(v0 + v2);
}

uint64_t objectdestroyTm_5()
{
  v79 = type metadata accessor for LollipopSelectionView(0);
  v82 = *(*(v79 - 1) + 80);
  v80 = *(*(v79 - 1) + 64);
  v81 = (v82 + 16) & ~v82;
  v83 = v0;
  v1 = v0 + v81;
  v2 = *(v1 + 8);

  v3 = type metadata accessor for HistoricalUsageSnapshot();
  v4 = v3[5];
  v5 = sub_20D972628();
  v84 = *(v5 - 8);
  v6 = *(v84 + 8);
  v6((v1 + v4), v5);
  v6((v1 + v3[6]), v5);
  v6((v1 + v3[7]), v5);
  v6((v1 + v3[8]), v5);
  v7 = v3[9];
  v8 = sub_20D971D98();
  v9 = *(*(v8 - 8) + 8);
  v9(v1 + v7, v8);
  v9(v1 + v3[10], v8);
  v10 = v3[12];
  v11 = sub_20D972E88();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v12 = v1 + v3[13];
  v13 = sub_20D972AF8();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v15 = v14[5];
  v16 = sub_20D9727B8();
  (*(*(v16 - 8) + 8))(v12 + v15, v16);
  v17 = (v12 + v14[7]);
  v6(v17, v5);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v6(&v17[*(v18 + 36)], v5);
  v19 = (v12 + v14[8]);
  v6(v19, v5);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v6(&v19[*(v20 + 36)], v5);
  v21 = *(v12 + v14[9]);

  v22 = *(v12 + v14[10]);

  v23 = v14[11];
  v24 = *(v84 + 48);
  if (!v24((v12 + v23), 1, v5))
  {
    v6((v12 + v23), v5);
  }

  v25 = *(v12 + v14[12]);

  v26 = (v12 + v14[13]);
  v6(v26, v5);
  v6(&v26[*(v18 + 36)], v5);
  v27 = *(v12 + v14[14] + 16);

  v28 = v14[16];
  v29 = sub_20D9727D8();
  (*(*(v29 - 8) + 8))(v12 + v28, v29);
  v6((v1 + v3[14]), v5);
  v30 = *(v1 + v3[15]);

  v31 = type metadata accessor for HistoricalUsageChart();
  v32 = (v1 + v31[8]);
  v33 = *v32;

  v34 = *(v32 + 1);

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  v6(&v32[*(v35 + 32)], v5);
  v36 = (v1 + v31[9]);
  v37 = *v36;

  v38 = *(v36 + 1);

  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270) + 32);
  if (!v24(&v36[v39], 1, v5))
  {
    v6(&v36[v39], v5);
  }

  v40 = (v1 + v31[10]);
  v41 = v40[2];

  v42 = v40[3];

  v43 = v40[4];

  v44 = v40[5];

  v45 = v40[6];

  v46 = v40[7];

  v47 = v40[8];

  v48 = v40[20];

  v49 = v40[21];

  v6((v1 + v31[12]), v5);
  v50 = *(v1 + v31[13] + 16);

  v51 = *(v1 + v31[14] + 16);

  v52 = v31[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = sub_20D973D58();
    (*(*(v53 - 8) + 8))(v1 + v52, v53);
  }

  else
  {
    v54 = *(v1 + v52);
  }

  v55 = v31[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = sub_20D973B18();
    (*(*(v56 - 8) + 8))(v1 + v55, v56);
  }

  else
  {
    v57 = *(v1 + v55);
  }

  v58 = v31[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA8, &unk_20D97E1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = sub_20D973D78();
    (*(*(v59 - 8) + 8))(v1 + v58, v59);
  }

  else
  {
    v60 = *(v1 + v58);
  }

  v61 = v31[18];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v62 - 8) + 8))(v1 + v61, v62);
  v63 = v79[5];
  v64 = sub_20D972C58();
  (*(*(v64 - 8) + 8))(v1 + v63, v64);
  v65 = (v1 + v79[7]);
  v66 = *v65;

  v67 = v65[1];

  v68 = (v1 + v79[8]);
  v69 = v68[2];

  v70 = v68[3];

  v71 = v68[4];

  v72 = v68[5];

  v73 = v68[6];

  v74 = v68[7];

  v75 = v68[8];

  v76 = v68[20];

  v77 = v68[21];

  return MEMORY[0x2821FE8E8](v83, v81 + v80, v82 | 7);
}

uint64_t sub_20D92AF58(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for LollipopSelectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D927A28(a1, a2, v6);
}

unint64_t sub_20D92AFD8()
{
  result = qword_27C83B808;
  if (!qword_27C83B808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B7F8, &qword_20D97E488);
    sub_20D7EBC4C(&qword_27C83B810, &qword_27C83B800, &qword_20D97E490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B808);
  }

  return result;
}

uint64_t sub_20D92B090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D92B0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D92B140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20D92B1A8()
{
  result = qword_27C83B850;
  if (!qword_27C83B850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B840, &qword_20D97E4C0);
    sub_20D92B264();
    sub_20D92B090(&qword_27C83B860, type metadata accessor for LollipopSelectionView.ImportExportLollipopView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B850);
  }

  return result;
}

unint64_t sub_20D92B264()
{
  result = qword_27C83B858;
  if (!qword_27C83B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B858);
  }

  return result;
}

uint64_t sub_20D92B2B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20D92B32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_20D92B374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20D92B3D0()
{
  result = qword_27C83B878;
  if (!qword_27C83B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B878);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA6HStackVyAA05TupleC0Vy010HomeEnergyB0017LollipopSelectionC0V014SelectedAmountC0VSg_A2RtGG_s19PartialRangeThroughVyAFGQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839080, &qword_20D977AC0);
  sub_20D7EBC4C(a4, a2, a3);
  sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D92B524(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D92B5D4()
{
  result = qword_27C83B8B0;
  if (!qword_27C83B8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B8A0, &unk_20D97E590);
    sub_20D919DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B8B0);
  }

  return result;
}

uint64_t sub_20D92B660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B400, &qword_20D97D8E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20D92B6D0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_20D92B738@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D974048();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_20D7EB7E8(v2, &v17 - v11, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973D58();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

void UtilityRemoveBanner.init(utilityName:message:imageURL:removeProviderFunction:host:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v34 = a8;
  v35 = a1;
  v38 = a6;
  v39 = a7;
  v36 = a4;
  v37 = a5;
  v12 = sub_20D9744B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a3;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for UtilityRemoveBanner();
  v18 = a9 + v17[5];
  v40 = 1;
  sub_20D974A38();
  v19 = v42;
  v32 = v41;
  *v18 = v41;
  *(v18 + 1) = v19;
  v20 = v17[7];
  *(a9 + v20) = 2;
  v21 = (a9 + v17[8]);
  *v21 = 0;
  v21[1] = 0;
  v22 = v17[11];
  swift_unknownObjectWeakInit();
  v23 = v17[12];
  v41 = 0x3FF0000000000000;
  (*(v13 + 104))(v16, *MEMORY[0x277CE0A68], v12);
  sub_20D7E6420();
  v24 = v34;
  sub_20D973B68();
  v25 = v35;
  if (!a2)
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (a2)
  {
    v26 = a2;
  }

  v27 = (a9 + v17[9]);
  v28 = (a9 + v17[10]);
  v29 = (a9 + v17[6]);
  *v29 = v25;
  v29[1] = v26;
  *(a9 + v20) = v33;
  v30 = v37;
  *v27 = v36;
  v27[1] = v30;
  v31 = v39;
  *v28 = v38;
  v28[1] = v31;
  swift_unknownObjectWeakAssign();
  if (!a2)
  {
    LOBYTE(v41) = v32;
    v42 = v19;
    v40 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
    sub_20D974A58();
  }
}

void UtilityRemoveBanner.init(utilityName:stringMessage:imageURL:removeProviderFunction:host:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, void *a10)
{
  v40 = a7;
  v41 = a8;
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v37 = a4;
  v34 = a10;
  v35 = a1;
  v12 = sub_20D9744B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for UtilityRemoveBanner();
  v18 = a9 + v17[5];
  v42 = 1;
  sub_20D974A38();
  v19 = v43;
  v20 = v44;
  *v18 = v43;
  *(v18 + 1) = v20;
  *(a9 + v17[7]) = 2;
  v21 = v17[11];
  swift_unknownObjectWeakInit();
  v22 = v17[12];
  v43 = 0x3FF0000000000000;
  (*(v13 + 104))(v16, *MEMORY[0x277CE0A68], v12);
  sub_20D7E6420();
  v23 = v34;
  sub_20D973B68();
  v24 = v35;
  if (!a2)
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (a2)
  {
    v25 = a2;
  }

  v26 = (a9 + v17[8]);
  v27 = (a9 + v17[9]);
  v28 = (a9 + v17[10]);
  v29 = (a9 + v17[6]);
  *v29 = v24;
  v29[1] = v25;
  v30 = v37;
  *v26 = v36;
  v26[1] = v30;
  v31 = v39;
  *v27 = v38;
  v27[1] = v31;
  v32 = v41;
  *v28 = v40;
  v28[1] = v32;
  swift_unknownObjectWeakAssign();
  if (!a2)
  {
    LOBYTE(v43) = v19;
    v44 = v20;
    v42 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
    sub_20D974A58();
  }
}

uint64_t UtilityRemoveBanner.init(utilityName:message:imageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v28 = a2;
  v9 = sub_20D9744B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for UtilityRemoveBanner();
  v16 = a6 + v15[5];
  v31 = 1;
  sub_20D974A38();
  v17 = v33;
  *v16 = v32;
  *(v16 + 1) = v17;
  v18 = v15[7];
  *(a6 + v18) = 2;
  v19 = (a6 + v15[8]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a6 + v15[9]);
  v21 = (a6 + v15[10]);
  *v21 = 0;
  v21[1] = 0;
  v22 = v15[11];
  swift_unknownObjectWeakInit();
  v23 = v15[12];
  v32 = 0x3FF0000000000000;
  (*(v10 + 104))(v13, *MEMORY[0x277CE0A68], v9);
  sub_20D7E6420();
  result = sub_20D973B68();
  v25 = (a6 + v15[6]);
  v26 = v28;
  *v25 = a1;
  v25[1] = v26;
  *(a6 + v18) = v14;
  v27 = v30;
  *v20 = v29;
  v20[1] = v27;
  return result;
}

uint64_t UtilityRemoveBanner.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B8D0, &qword_20D97E650);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B8D8, &qword_20D97E658);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B8E0, &qword_20D97E660);
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v42);
  v13 = &v42 - v12;
  v14 = type metadata accessor for UtilityRemoveBanner();
  v15 = (v1 + *(v14 + 20));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v45) = v16;
  *(&v45 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A48();
  v18 = 1;
  if (LOBYTE(v44) == 1)
  {
    sub_20D92C3F0(v5);
    *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B8E8, &unk_20D97E668) + 36)] = 256;
    v19 = sub_20D974318();
    sub_20D973AD8();
    v20 = &v5[*(v2 + 36)];
    *v20 = v19;
    *(v20 + 1) = v21;
    *(v20 + 2) = v22;
    *(v20 + 3) = v23;
    *(v20 + 4) = v24;
    v20[40] = 0;
    sub_20D974C48();
    sub_20D973E08();
    sub_20D7EAF18(v5, v9, &qword_27C83B8D0, &qword_20D97E650);
    v25 = &v9[*(v6 + 36)];
    v26 = v50;
    *(v25 + 4) = v49;
    *(v25 + 5) = v26;
    *(v25 + 6) = v51;
    v27 = v46;
    *v25 = v45;
    *(v25 + 1) = v27;
    v28 = v48;
    *(v25 + 2) = v47;
    *(v25 + 3) = v28;
    v29 = sub_20D974C48();
    v31 = v30;
    v32 = &v13[*(v42 + 36)];
    v33 = *(v14 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
    v34 = v44 * 24.0;
    v35 = *(sub_20D973DE8() + 20);
    v36 = *MEMORY[0x277CE0118];
    v37 = sub_20D974118();
    (*(*(v37 - 8) + 104))(v32 + v35, v36, v37);
    *v32 = v34;
    v32[1] = v34;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD0, &unk_20D97BFC0);
    v39 = v32 + *(v38 + 52);
    sub_20D974C08();
    *(v32 + *(v38 + 56)) = 256;
    v40 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD8, &qword_20D977990) + 36));
    *v40 = v29;
    v40[1] = v31;
    sub_20D7EAF18(v9, v13, &qword_27C83B8D8, &qword_20D97E658);
    sub_20D7EAF18(v13, v43, &qword_27C83B8E0, &qword_20D97E660);
    v18 = 0;
  }

  return (*(v10 + 56))(v43, v18, 1, v42);
}

uint64_t sub_20D92C3F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27[1] = a1;
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B968, &qword_20D97E818);
  v3 = *(*(v27[0] - 8) + 64);
  MEMORY[0x28223BE20](v27[0]);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B970, &qword_20D97E820);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B958, &qword_20D97E810);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  v14 = sub_20D973D58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D92B738(v18);
  v19 = sub_20D973D38();
  (*(v15 + 8))(v18, v14);
  v20 = sub_20D974168();
  if (v19)
  {
    *v13 = v20;
    *(v13 + 1) = 0;
    v13[16] = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B980, &qword_20D97E830);
    sub_20D92EA08(v2, &v13[*(v21 + 44)]);
    v22 = &qword_27C83B958;
    v23 = &qword_20D97E810;
    sub_20D7EB7E8(v13, v9, &qword_27C83B958, &qword_20D97E810);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C83B950, &qword_27C83B958, &qword_20D97E810);
    sub_20D7EBC4C(&qword_27C83B960, &qword_27C83B968, &qword_20D97E818);
    sub_20D9741B8();
    v24 = v13;
  }

  else
  {
    *v5 = v20;
    *(v5 + 1) = 0x4028000000000000;
    v5[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B978, &qword_20D97E828);
    sub_20D92F01C(v2, &v5[*(v25 + 44)]);
    v22 = &qword_27C83B968;
    v23 = &qword_20D97E818;
    sub_20D7EB7E8(v5, v9, &qword_27C83B968, &qword_20D97E818);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C83B950, &qword_27C83B958, &qword_20D97E810);
    sub_20D7EBC4C(&qword_27C83B960, &qword_27C83B968, &qword_20D97E818);
    sub_20D9741B8();
    v24 = v5;
  }

  return sub_20D7E3944(v24, v22, v23);
}

uint64_t sub_20D92C794@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  v2 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v67 = &v55 - v3;
  v4 = type metadata accessor for UtilityRemoveBanner();
  v5 = v4 - 8;
  v64 = *(v4 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9B8, &qword_20D97E878);
  v7 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9C0, &qword_20D97E880);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = &v55 - v11;
  v12 = sub_20D9726E8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_20D975058();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_20D975038();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  sub_20D975028();
  sub_20D975018();
  v18 = (v1 + *(v5 + 32));
  v19 = *v18;
  v20 = v18[1];
  sub_20D975008();
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v21 = qword_28112ABE8;
  sub_20D9726B8();
  v22 = v21;
  v23 = sub_20D975108();
  v62 = v24;
  v63 = v23;
  sub_20D974FE8();
  sub_20D9726B8();
  v25 = sub_20D975108();
  v60 = v26;
  v61 = v25;
  sub_20D974FE8();
  sub_20D9726B8();
  v27 = sub_20D975108();
  v29 = v28;
  sub_20D974FE8();
  sub_20D9726B8();
  v30 = sub_20D975108();
  v32 = v31;
  sub_20D9304C0(v1, &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v34 = (v6 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = sub_20D930524(&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v33);
  v38 = (v36 + v34);
  v39 = v62;
  *v38 = v63;
  v38[1] = v39;
  v40 = (v36 + v35);
  *v40 = v27;
  v40[1] = v29;
  v41 = (v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8));
  v42 = v60;
  *v41 = v61;
  v41[1] = v42;
  MEMORY[0x28223BE20](v37);
  *(&v55 - 2) = v30;
  *(&v55 - 1) = v32;
  v43 = v65;
  sub_20D974A88();

  v44 = sub_20D9748A8();
  v45 = v66;
  *(v43 + *(v66 + 36)) = v44;
  v46 = *MEMORY[0x277CDFA10];
  v47 = sub_20D973D58();
  v48 = v67;
  (*(*(v47 - 8) + 104))(v67, v46, v47);
  sub_20D9308D4(&qword_281127030, MEMORY[0x277CDFA28]);
  result = sub_20D974FD8();
  if (result)
  {
    v50 = sub_20D930640();
    v51 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    v52 = v55;
    v53 = v58;
    sub_20D974778();
    sub_20D7E3944(v48, &qword_27C839080, &qword_20D977AC0);
    sub_20D7E3944(v43, &qword_27C83B9B8, &qword_20D97E878);
    v68 = v45;
    v69 = v53;
    v70 = v50;
    v71 = v51;
    swift_getOpaqueTypeConformance2();
    v54 = v57;
    sub_20D9747D8();
    return (*(v56 + 8))(v52, v54);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20D92CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a2;
  v39 = a3;
  v11 = type metadata accessor for UtilityRemoveBanner();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v11);
  if (qword_2811270D8 != -1)
  {
    swift_once();
  }

  v13 = sub_20D9734F8();
  __swift_project_value_buffer(v13, qword_2811270E0);
  v14 = sub_20D9734D8();
  v15 = sub_20D975448();
  if (os_log_type_enabled(v14, v15))
  {
    v36 = a4;
    v16 = a6;
    v17 = v11;
    v18 = a1;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20D7C9000, v14, v15, "Tapped 'Remove' button in Remove Provider Panel", v19, 2u);
    v20 = v19;
    a1 = v18;
    v11 = v17;
    a6 = v16;
    MEMORY[0x20F324260](v20, -1, -1);
  }

  if (*(a1 + *(v11 + 40)))
  {
    sub_20D9304C0(a1, &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v22 = swift_allocObject();
    sub_20D930524(&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v23 = sub_20D975078();
    v24 = sub_20D975078();
    v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

    v26 = swift_allocObject();
    v26[2] = a6;
    v26[3] = a7;
    v26[4] = &unk_20D97E8A0;
    v26[5] = v22;

    v27 = sub_20D975078();
    aBlock[4] = sub_20D9307F0;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20D92B6D0;
    aBlock[3] = &block_descriptor_3;
    v28 = _Block_copy(aBlock);

    v29 = objc_opt_self();
    v30 = [v29 actionWithTitle:v27 style:2 handler:v28];
    _Block_release(v28);

    [v25 addAction_];
    [v25 setPreferredAction_];
    if (qword_27C8383C8 != -1)
    {
      swift_once();
    }

    v31 = sub_20D975078();
    v32 = [v29 actionWithTitle:v31 style:1 handler:0];

    [v25 addAction_];
    v33 = *(v11 + 44);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      [Strong presentViewController:v25 animated:1 completion:0];
    }
  }
}

uint64_t sub_20D92D31C()
{
  v0[2] = sub_20D9752E8();
  v0[3] = sub_20D9752D8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20D92D3C8;

  return sub_20D92D504();
}

uint64_t sub_20D92D3C8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D930AC8, v5, v4);
}

uint64_t sub_20D92D504()
{
  v1[4] = v0;
  sub_20D9752E8();
  v1[5] = sub_20D9752D8();
  v3 = sub_20D975298();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_20D92D59C, v3, v2);
}

uint64_t sub_20D92D59C()
{
  v1 = v0[4];
  v2 = type metadata accessor for UtilityRemoveBanner();
  v0[8] = v2;
  v3 = (v1 + *(v2 + 40));
  v4 = *v3;
  v0[9] = *v3;
  v0[10] = v3[1];
  if (v4)
  {

    v10 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_20D92D6F4;

    return v10();
  }

  else
  {
    v8 = v0[5];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_20D92D6F4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 97) = a1;

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_20D92D81C, v5, v4);
}

uint64_t sub_20D92D81C()
{
  v1 = *(v0 + 97);
  v2 = *(v0 + 40);

  if (v1 == 1)
  {
    v3 = *(v0 + 32) + *(*(v0 + 64) + 20);
    v4 = *(v3 + 8);
    *(v0 + 16) = *v3;
    v6 = *(v0 + 72);
    v5 = *(v0 + 80);
    *(v0 + 24) = v4;
    *(v0 + 96) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
    sub_20D974A58();
    sub_20D7DD774(v6);
  }

  else
  {
    v7 = *(v0 + 80);
    sub_20D7DD774(*(v0 + 72));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_20D92D910@<X0>(uint64_t a1@<X8>)
{
  sub_20D7E1EF8();

  result = sub_20D9745C8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_20D92D97C()
{
  v1 = sub_20D9726E8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_20D975058();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v5 = qword_28112ABE8;
  sub_20D9726B8();
  sub_20D975108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20D979110;
  v7 = (v0 + *(type metadata accessor for UtilityRemoveBanner() + 24));
  v9 = *v7;
  v8 = v7[1];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_20D84E340();
  *(v6 + 32) = v9;
  *(v6 + 40) = v8;

  v10 = sub_20D9750C8();
  v12 = v11;

  v29 = v12;
  sub_20D7E1EF8();
  v13 = sub_20D9745C8();
  v15 = v14;
  v17 = v16;
  sub_20D974388();
  sub_20D9743A8();

  v18 = sub_20D974558();
  v20 = v19;
  LOBYTE(v6) = v21;

  sub_20D7EADC0(v13, v15, v17 & 1);

  v22 = [objc_opt_self() labelColor];
  sub_20D974888();
  v23 = sub_20D974518();
  v25 = v24;
  v27 = v26;
  sub_20D7EADC0(v18, v20, v6 & 1);

  sub_20D9747D8();
  sub_20D7EADC0(v23, v25, v27 & 1);
}

uint64_t sub_20D92DCD4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9E0, &qword_20D97E8C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v66 - v5;
  v7 = sub_20D974458();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  v16 = type metadata accessor for UtilityRemoveBanner();
  v17 = *(v1 + *(v16 + 28));
  if (v17 != 2)
  {
    v70 = v17 & 1;
    v71 = UtilityRemoveString.description.getter();
    v72 = v41;
    sub_20D7E1EF8();
    v42 = sub_20D9745C8();
    v68 = v12;
    v69 = a1;
    v43 = v42;
    v45 = v44;
    v66 = v15;
    v47 = v46;
    sub_20D974388();
    (*(v8 + 104))(v11, *MEMORY[0x277CE0A10], v7);
    sub_20D974478();
    v67 = v3;

    (*(v8 + 8))(v11, v7);
    v48 = sub_20D974558();
    v50 = v49;
    v52 = v51;

    sub_20D7EADC0(v43, v45, v47 & 1);

    v53 = [objc_opt_self() secondaryLabelColor];
    v71 = sub_20D974888();
    v54 = sub_20D974518();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_20D7EADC0(v48, v50, v52 & 1);

    v71 = v54;
    v72 = v56;
    LOBYTE(v43) = v58 & 1;
    v73 = v58 & 1;
    v74 = v60;
    v61 = v66;
    sub_20D9747D8();
    sub_20D7EADC0(v54, v56, v43);

    sub_20D7EB7E8(v61, v6, &qword_27C838F18, &unk_20D977860);
    swift_storeEnumTagMultiPayload();
    sub_20D809130();
    v39 = v69;
    sub_20D9741B8();
    v40 = v61;
    goto LABEL_5;
  }

  v18 = (v1 + *(v16 + 32));
  v19 = v18[1];
  if (v19)
  {
    v71 = *v18;
    v72 = v19;
    sub_20D7E1EF8();
    v69 = a1;

    v20 = sub_20D9745C8();
    v66 = v6;
    v67 = v3;
    v22 = v21;
    v68 = v12;
    v24 = v23;
    sub_20D974388();
    (*(v8 + 104))(v11, *MEMORY[0x277CE0A10], v7);
    sub_20D974478();
    v25 = v15;

    (*(v8 + 8))(v11, v7);
    v26 = sub_20D974558();
    v28 = v27;
    v30 = v29;

    sub_20D7EADC0(v20, v22, v24 & 1);

    v31 = [objc_opt_self() secondaryLabelColor];
    v71 = sub_20D974888();
    v32 = sub_20D974518();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_20D7EADC0(v26, v28, v30 & 1);

    v71 = v32;
    v72 = v34;
    v73 = v36 & 1;
    v74 = v38;
    sub_20D9747D8();
    sub_20D7EADC0(v32, v34, v36 & 1);

    sub_20D7EB7E8(v25, v66, &qword_27C838F18, &unk_20D977860);
    swift_storeEnumTagMultiPayload();
    sub_20D809130();
    v39 = v69;
    sub_20D9741B8();
    v40 = v25;
LABEL_5:
    sub_20D7E3944(v40, &qword_27C838F18, &unk_20D977860);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9E8, &unk_20D97E8D0);
    return (*(*(v62 - 8) + 56))(v39, 0, 1, v62);
  }

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9E8, &unk_20D97E8D0);
  v65 = *(*(v64 - 8) + 56);

  return v65(a1, 1, 1, v64);
}

uint64_t UtilityRemoveString.description.getter()
{
  v1 = sub_20D9726E8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_20D975058();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (*v0)
  {
    sub_20D974FE8();
    if (qword_281126E98 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v5 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t sub_20D92E564(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  if (qword_2811270D8 != -1)
  {
    swift_once();
  }

  v13 = sub_20D9734F8();
  __swift_project_value_buffer(v13, qword_2811270E0);

  v14 = sub_20D9734D8();
  v15 = sub_20D975448();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_20D7F4DC8(a2, a3, &v24);
    _os_log_impl(&dword_20D7C9000, v14, v15, "alert %s tapped...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x20F324260](v17, -1, -1);
    MEMORY[0x20F324260](v16, -1, -1);
  }

  v18 = sub_20D975318();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  sub_20D9752E8();

  v19 = sub_20D9752D8();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = a4;
  v20[5] = a5;
  sub_20D82D02C(0, 0, v12, &unk_20D97E8B8, v20);
}

uint64_t sub_20D92E7BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_20D9752E8();
  v4[3] = sub_20D9752D8();
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_20D92E8CC;

  return v9();
}

uint64_t sub_20D92E8CC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D803568, v5, v4);
}

uint64_t sub_20D92EA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B988, &qword_20D97E838);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v56 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B990, &qword_20D97E840);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v60 = sub_20D974B78();
  v14 = *(v60 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v60);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B998, &qword_20D97E848);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v66 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v56 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9A0, &unk_20D97E850);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v65 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v56 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v63 = &v56 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v62 = &v56 - v37;
  sub_20D92D97C();
  v64 = v32;
  sub_20D92DCD4(v32);
  if (*(a1 + *(type metadata accessor for UtilityRemoveBanner() + 40)))
  {
    sub_20D974B68();
    sub_20D92C794(v13);
    v59 = v3;
    v38 = v14[2];
    v39 = v18;
    v40 = v18;
    v41 = v60;
    v38(v40, v20, v60);
    v57 = v4;
    v58 = v26;
    v42 = v61;
    sub_20D7EB7E8(v13, v61, &qword_27C83B990, &qword_20D97E840);
    v38(v7, v39, v41);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9B0, &unk_20D97E868);
    sub_20D7EB7E8(v42, &v7[*(v43 + 48)], &qword_27C83B990, &qword_20D97E840);
    sub_20D7E3944(v13, &qword_27C83B990, &qword_20D97E840);
    v44 = v14[1];
    v44(v20, v41);
    v45 = v42;
    v4 = v57;
    v26 = v58;
    sub_20D7E3944(v45, &qword_27C83B990, &qword_20D97E840);
    v44(v39, v41);
    v3 = v59;
    sub_20D7EAF18(v7, v26, &qword_27C83B988, &qword_20D97E838);
    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  (*(v4 + 56))(v26, v46, 1, v3);
  v48 = v62;
  v47 = v63;
  sub_20D7EB7E8(v62, v63, &qword_27C838F18, &unk_20D977860);
  v50 = v64;
  v49 = v65;
  sub_20D7EB7E8(v64, v65, &qword_27C83B9A0, &unk_20D97E850);
  v51 = v66;
  sub_20D7EB7E8(v26, v66, &qword_27C83B998, &qword_20D97E848);
  v52 = v26;
  v53 = v67;
  sub_20D7EB7E8(v47, v67, &qword_27C838F18, &unk_20D977860);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9A8, &qword_20D97E860);
  sub_20D7EB7E8(v49, v53 + *(v54 + 48), &qword_27C83B9A0, &unk_20D97E850);
  sub_20D7EB7E8(v51, v53 + *(v54 + 64), &qword_27C83B998, &qword_20D97E848);
  sub_20D7E3944(v52, &qword_27C83B998, &qword_20D97E848);
  sub_20D7E3944(v50, &qword_27C83B9A0, &unk_20D97E850);
  sub_20D7E3944(v48, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v51, &qword_27C83B998, &qword_20D97E848);
  sub_20D7E3944(v49, &qword_27C83B9A0, &unk_20D97E850);
  return sub_20D7E3944(v47, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D92F01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9F0, &qword_20D97E8E0);
  v4 = *(v70 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v70);
  v7 = &v64 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9F8, &unk_20D97E8E8);
  v8 = *(*(v67 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v67);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392F0, &unk_20D9783E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA00, &qword_20D97E8F8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v69 = &v64 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA08, &qword_20D97E900);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v71 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v64 - v30;
  *v31 = sub_20D974078();
  *(v31 + 1) = 0x402C000000000000;
  v31[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA10, &qword_20D97E908);
  sub_20D92F5E0(a1, &v31[*(v32 + 44)], 37.0);
  if (*(a1 + *(type metadata accessor for UtilityRemoveBanner() + 40)))
  {
    sub_20D974B68();
    v33 = sub_20D974328();
    v66 = a2;
    v34 = v33;
    sub_20D973AD8();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392F8, &qword_20D9783F0) + 36)];
    *v43 = v34;
    *(v43 + 1) = v36;
    *(v43 + 2) = v38;
    *(v43 + 3) = v40;
    *(v43 + 4) = v42;
    v43[40] = 0;
    v44 = sub_20D974348();
    sub_20D973AD8();
    v45 = &v19[*(v13 + 36)];
    *v45 = v44;
    *(v45 + 1) = v46;
    *(v45 + 2) = v47;
    *(v45 + 3) = v48;
    *(v45 + 4) = v49;
    v45[40] = 0;
    sub_20D92C794(v12);
    v50 = sub_20D974348();
    sub_20D973AD8();
    v51 = &v12[*(v67 + 36)];
    *v51 = v50;
    *(v51 + 1) = v52;
    *(v51 + 2) = v53;
    *(v51 + 3) = v54;
    *(v51 + 4) = v55;
    v51[40] = 0;
    sub_20D7EB7E8(v19, v17, &qword_27C8392F0, &unk_20D9783E0);
    v67 = v24;
    v65 = v4;
    v56 = v68;
    sub_20D7EB7E8(v12, v68, &qword_27C83B9F8, &unk_20D97E8E8);
    sub_20D7EB7E8(v17, v7, &qword_27C8392F0, &unk_20D9783E0);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA20, &qword_20D97E920);
    sub_20D7EB7E8(v56, &v7[*(v57 + 48)], &qword_27C83B9F8, &unk_20D97E8E8);
    sub_20D7E3944(v12, &qword_27C83B9F8, &unk_20D97E8E8);
    sub_20D7E3944(v19, &qword_27C8392F0, &unk_20D9783E0);
    v58 = v56;
    v4 = v65;
    a2 = v66;
    v24 = v67;
    sub_20D7E3944(v58, &qword_27C83B9F8, &unk_20D97E8E8);
    sub_20D7E3944(v17, &qword_27C8392F0, &unk_20D9783E0);
    v59 = v69;
    sub_20D7EAF18(v7, v69, &qword_27C83B9F0, &qword_20D97E8E0);
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v59 = v69;
  }

  (*(v4 + 56))(v59, v60, 1, v70);
  v61 = v71;
  sub_20D7EB7E8(v31, v71, &qword_27C83BA08, &qword_20D97E900);
  sub_20D7EB7E8(v59, v24, &qword_27C83BA00, &qword_20D97E8F8);
  sub_20D7EB7E8(v61, a2, &qword_27C83BA08, &qword_20D97E900);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA18, &unk_20D97E910);
  sub_20D7EB7E8(v24, a2 + *(v62 + 48), &qword_27C83BA00, &qword_20D97E8F8);
  sub_20D7E3944(v59, &qword_27C83BA00, &qword_20D97E8F8);
  sub_20D7E3944(v31, &qword_27C83BA08, &qword_20D97E900);
  sub_20D7E3944(v24, &qword_27C83BA00, &qword_20D97E8F8);
  return sub_20D7E3944(v61, &qword_27C83BA08, &qword_20D97E900);
}

uint64_t sub_20D92F5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA28, &qword_20D97E928);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA30, &unk_20D97E930);
  v12 = *(*(v36 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v36);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v35 - v23;
  v25 = *(type metadata accessor for UtilityRemoveBanner() + 36);
  v37 = a1;
  v26 = (a1 + v25);
  if (v26[1])
  {
    v27 = *v26;
    v28 = v26[1];
  }

  sub_20D9721B8();

  sub_20D7EB7E8(v24, v22, &qword_27C838B78, &qword_20D97A5A0);
  *(swift_allocObject() + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA38, &qword_20D97E940);
  sub_20D930924(&qword_27C83BA40, &qword_27C83BA38, &qword_20D97E940, sub_20D9309A0);
  sub_20D973AA8();
  sub_20D974C48();
  sub_20D973C18();
  v29 = &v17[*(v36 + 36)];
  v30 = v40;
  *v29 = v39;
  *(v29 + 1) = v30;
  *(v29 + 2) = v41;
  *v11 = sub_20D974168();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA58, &qword_20D97E950);
  sub_20D92FCBC(&v11[*(v31 + 44)]);
  sub_20D7EB7E8(v17, v15, &qword_27C83BA30, &unk_20D97E930);
  sub_20D7EB7E8(v11, v9, &qword_27C83BA28, &qword_20D97E928);
  v32 = v38;
  sub_20D7EB7E8(v15, v38, &qword_27C83BA30, &unk_20D97E930);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA60, &qword_20D97E958);
  sub_20D7EB7E8(v9, v32 + *(v33 + 48), &qword_27C83BA28, &qword_20D97E928);
  sub_20D7E3944(v11, &qword_27C83BA28, &qword_20D97E928);
  sub_20D7E3944(v17, &qword_27C83BA30, &unk_20D97E930);
  sub_20D7E3944(v24, &qword_27C838B78, &qword_20D97A5A0);
  sub_20D7E3944(v9, &qword_27C83BA28, &qword_20D97E928);
  return sub_20D7E3944(v15, &qword_27C83BA30, &unk_20D97E930);
}

uint64_t sub_20D92F9E8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_20D9749C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA50, &qword_20D97E948);
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  if (sub_20D973D28())
  {
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
    v13 = sub_20D974A08();

    (*(v5 + 8))(v8, v4);
    v14 = a2 * 0.225;
    v15 = &v12[*(v9 + 36)];
    v16 = *(sub_20D973DE8() + 20);
    v17 = *MEMORY[0x277CE0118];
    v18 = sub_20D974118();
    (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
    *v15 = v14;
    v15[1] = v14;
    *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550) + 36)) = 256;
    *v12 = v13;
    *(v12 + 1) = 0;
    *(v12 + 8) = 1;
    sub_20D930A58(v12, a1);
    return (*(v22 + 56))(a1, 0, 1, v9);
  }

  else
  {
    v20 = *(v22 + 56);

    return v20(a1, 1, 1, v9);
  }
}

uint64_t sub_20D92FCBC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9A0, &unk_20D97E850);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  sub_20D92D97C();
  sub_20D92DCD4(v8);
  sub_20D7EB7E8(v15, v13, &qword_27C838F18, &unk_20D977860);
  sub_20D7EB7E8(v8, v6, &qword_27C83B9A0, &unk_20D97E850);
  sub_20D7EB7E8(v13, a1, &qword_27C838F18, &unk_20D977860);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA68, &qword_20D97E960);
  sub_20D7EB7E8(v6, a1 + *(v16 + 48), &qword_27C83B9A0, &unk_20D97E850);
  sub_20D7E3944(v8, &qword_27C83B9A0, &unk_20D97E850);
  sub_20D7E3944(v15, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v6, &qword_27C83B9A0, &unk_20D97E850);
  return sub_20D7E3944(v13, &qword_27C838F18, &unk_20D977860);
}

HomeEnergyUI::UtilityRemoveString_optional __swiftcall UtilityRemoveString.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t type metadata accessor for UtilityRemoveBanner()
{
  result = qword_27C83B8F8;
  if (!qword_27C83B8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20D92FF44()
{
  result = qword_27C83B8F0;
  if (!qword_27C83B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B8F0);
  }

  return result;
}

void sub_20D92FFC0()
{
  sub_20D7F8490();
  if (v0 <= 0x3F)
  {
    sub_20D930124(319, &qword_281124D80, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_20D930124(319, &qword_27C83B908, &type metadata for UtilityRemoveString, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20D930124(319, &qword_281124C28, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20D7E6360();
          if (v4 <= 0x3F)
          {
            sub_20D7E63C4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_20D930124(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20D930184()
{
  result = qword_27C83B920;
  if (!qword_27C83B920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B8E0, &qword_20D97E660);
    sub_20D93023C();
    sub_20D7EBC4C(&qword_281124E40, &qword_27C838FD8, &qword_20D977990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B920);
  }

  return result;
}

unint64_t sub_20D93023C()
{
  result = qword_27C83B928;
  if (!qword_27C83B928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B8D8, &qword_20D97E658);
    sub_20D9302C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B928);
  }

  return result;
}

unint64_t sub_20D9302C8()
{
  result = qword_27C83B930;
  if (!qword_27C83B930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B8D0, &qword_20D97E650);
    sub_20D930354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B930);
  }

  return result;
}

unint64_t sub_20D930354()
{
  result = qword_27C83B938;
  if (!qword_27C83B938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B8E8, &unk_20D97E668);
    sub_20D9303E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B938);
  }

  return result;
}

unint64_t sub_20D9303E0()
{
  result = qword_27C83B940;
  if (!qword_27C83B940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B948, &qword_20D97E808);
    sub_20D7EBC4C(&qword_27C83B950, &qword_27C83B958, &qword_20D97E810);
    sub_20D7EBC4C(&qword_27C83B960, &qword_27C83B968, &qword_20D97E818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B940);
  }

  return result;
}

uint64_t sub_20D9304C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRemoveBanner();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D930524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRemoveBanner();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20D930588()
{
  v1 = *(type metadata accessor for UtilityRemoveBanner() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20D92CEDC(v0 + v2, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_20D930638@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_20D92D910(a1);
}

unint64_t sub_20D930640()
{
  result = qword_27C83B9C8;
  if (!qword_27C83B9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B9B8, &qword_20D97E878);
    sub_20D7EBC4C(&qword_27C83B9D0, &qword_27C83B9D8, &unk_20D97E888);
    sub_20D7EBC4C(&qword_281126F60, &qword_27C83A110, &qword_20D97CC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B9C8);
  }

  return result;
}

uint64_t sub_20D930724()
{
  v1 = *(type metadata accessor for UtilityRemoveBanner() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_20D805810;

  return sub_20D92D31C();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D930814(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D7EB52C;

  return sub_20D92E7BC(a1, v4, v5, v7);
}

uint64_t sub_20D9308D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D930924(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D9309A0()
{
  result = qword_27C83BA48;
  if (!qword_27C83BA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BA50, &qword_20D97E948);
    sub_20D7F0198();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BA48);
  }

  return result;
}

uint64_t sub_20D930A58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA50, &qword_20D97E948);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HistoricalUsageEnergyTip.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = *v1;
  v4 = sub_20D87A568();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  *a1 = sub_20D974168();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA70, &qword_20D97E980);
  sub_20D932380(v2, v4, v6, v8, v10, a1 + *(v11 + 44));

  LOBYTE(v4) = sub_20D974328();
  sub_20D973AD8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA78, &qword_20D97E988) + 36);
  *v20 = v4;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  LOBYTE(v4) = sub_20D974338();
  sub_20D973AD8();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA80, &qword_20D97E990) + 36);
  *v29 = v4;
  *(v29 + 8) = v22;
  *(v29 + 16) = v24;
  *(v29 + 24) = v26;
  *(v29 + 32) = v28;
  *(v29 + 40) = 0;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA88, &qword_20D97E998) + 36)) = 256;
  LOBYTE(v4) = sub_20D974318();
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA90, &qword_20D97E9A0) + 36);
  *v30 = v4;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  *(v30 + 40) = 1;
  v31 = sub_20D974C48();
  v33 = v32;
  v34 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA98, &qword_20D97E9A8) + 36));
  LODWORD(v4) = *(type metadata accessor for HistoricalUsageEnergyTip() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  sub_20D973B78();
  v35 = *(sub_20D973DE8() + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_20D974118();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = v43 * 24.0;
  v34[1] = v43 * 24.0;
  v38 = [objc_opt_self() systemOrangeColor];
  sub_20D974888();
  v39 = sub_20D974948();

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B800, &qword_20D97E490);
  *(v34 + *(v40 + 52)) = v39;
  *(v34 + *(v40 + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BAA0, &qword_20D97E9B0);
  v42 = (v34 + *(result + 36));
  *v42 = v31;
  v42[1] = v33;
  return result;
}

uint64_t sub_20D930DBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = *v1;
  v4 = sub_20D87A568();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  *a1 = sub_20D974168();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA70, &qword_20D97E980);
  sub_20D932380(v2, v4, v6, v8, v10, a1 + *(v11 + 44));

  LOBYTE(v4) = sub_20D974328();
  sub_20D973AD8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA78, &qword_20D97E988) + 36);
  *v20 = v4;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  LOBYTE(v4) = sub_20D974338();
  sub_20D973AD8();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA80, &qword_20D97E990);
  v30 = a1 + *(result + 36);
  *v30 = v4;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_20D930F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v61 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB20, &qword_20D97EB18);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v62 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = &v52 - v6;
  v56 = sub_20D974458();
  v7 = *(v56 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v56);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9726E8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_20D975058();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_20D9740E8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB28, &qword_20D97EB20);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB30, &qword_20D97EB28);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v58 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v57 = &v52 - v25;
  sub_20D9740D8();
  sub_20D9740C8();
  sub_20D9749B8();
  sub_20D9740A8();

  sub_20D9740C8();
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v26 = qword_28112ABE8;
  sub_20D9726B8();
  sub_20D975108();
  sub_20D9740B8();

  sub_20D9740C8();
  sub_20D974108();
  v55 = sub_20D9745A8();
  v54 = v27;
  v29 = v28;
  v53 = v30;
  sub_20D974C48();
  sub_20D973E08();
  v31 = v29 & 1;
  v70 = v29 & 1;
  sub_20D974488();
  v32 = v56;
  (*(v7 + 104))(v10, *MEMORY[0x277CE0A10], v56);
  v33 = sub_20D974478();

  (*(v7 + 8))(v10, v32);
  KeyPath = swift_getKeyPath();
  v35 = &v20[*(v17 + 36)];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v37 = *MEMORY[0x277CE0B48];
  v38 = sub_20D974538();
  v39 = *(v38 - 8);
  (*(v39 + 104))(v35 + v36, v37, v38);
  (*(v39 + 56))(v35 + v36, 0, 1, v38);
  *v35 = swift_getKeyPath();
  v40 = v54;
  *v20 = v55;
  *(v20 + 1) = v40;
  v20[16] = v31;
  *(v20 + 3) = v53;
  v41 = v68;
  *(v20 + 6) = v67;
  *(v20 + 7) = v41;
  *(v20 + 8) = v69;
  v42 = v64;
  *(v20 + 2) = v63;
  *(v20 + 3) = v42;
  v43 = v66;
  *(v20 + 4) = v65;
  *(v20 + 5) = v43;
  *(v20 + 18) = KeyPath;
  *(v20 + 19) = v33;
  sub_20D932C3C();
  v44 = v57;
  sub_20D9747D8();
  sub_20D7E3944(v20, &qword_27C83BB28, &qword_20D97EB20);
  v45 = v60;
  sub_20D931660(v60);
  v46 = v58;
  sub_20D7EB7E8(v44, v58, &qword_27C83BB30, &qword_20D97EB28);
  v47 = v62;
  sub_20D7EB7E8(v45, v62, &qword_27C83BB20, &qword_20D97EB18);
  v48 = v61;
  sub_20D7EB7E8(v46, v61, &qword_27C83BB30, &qword_20D97EB28);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB50, &unk_20D97EBA0);
  v50 = v48 + *(v49 + 48);
  *v50 = 0;
  *(v50 + 8) = 1;
  sub_20D7EB7E8(v47, v48 + *(v49 + 64), &qword_27C83BB20, &qword_20D97EB18);
  sub_20D7E3944(v45, &qword_27C83BB20, &qword_20D97EB18);
  sub_20D7E3944(v44, &qword_27C83BB30, &qword_20D97EB28);
  sub_20D7E3944(v47, &qword_27C83BB20, &qword_20D97EB18);
  return sub_20D7E3944(v46, &qword_27C83BB30, &qword_20D97EB28);
}

uint64_t sub_20D931660@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  v1 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v3 = &v34 - v2;
  v4 = type metadata accessor for HistoricalUsageEnergyTip();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB58, &qword_20D97EBB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB60, &unk_20D97EBB8);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v34 = &v34 - v13;
  sub_20D9749B8();
  v14 = sub_20D9745D8();
  v16 = v15;
  v40 = v14;
  v41 = v15;
  v18 = v17 & 1;
  LOBYTE(v42) = v17 & 1;
  v43 = v19;
  sub_20D932DAC(v39, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_20D932E10(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_20D974748();
  v22 = v7;

  sub_20D7EADC0(v14, v16, v18);

  v23 = sub_20D974398();
  KeyPath = swift_getKeyPath();
  v25 = &v10[*(v7 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = *MEMORY[0x277CDFA10];
  v27 = sub_20D973D58();
  (*(*(v27 - 8) + 104))(v3, v26, v27);
  sub_20D7F8AB0();
  result = sub_20D974FD8();
  if (result)
  {
    v29 = sub_20D932ED4();
    v30 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    v31 = v34;
    v32 = v37;
    sub_20D974778();
    sub_20D7E3944(v3, &qword_27C839080, &qword_20D977AC0);
    sub_20D7E3944(v10, &qword_27C83BB58, &qword_20D97EBB0);
    v40 = v22;
    v41 = v32;
    v42 = v29;
    v43 = v30;
    swift_getOpaqueTypeConformance2();
    v33 = v36;
    sub_20D9747D8();
    return (*(v35 + 8))(v31, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D931AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a3;
  v85 = a4;
  v89 = a5;
  v7 = sub_20D974458();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v88 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v76 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v86 = &v76 - v19;
  MEMORY[0x28223BE20](v18);
  v90 = &v76 - v20;
  v91 = a1;
  v92 = a2;
  v83 = sub_20D7E1EF8();

  v21 = sub_20D9745C8();
  v23 = v22;
  v25 = v24;
  sub_20D974428();
  v82 = *MEMORY[0x277CE0A10];
  v26 = v8[13];
  v80 = v8 + 13;
  v81 = v26;
  v77 = v7;
  v26(v11);
  v76 = v11;
  sub_20D974478();

  v27 = v8[1];
  v78 = v8 + 1;
  v79 = v27;
  v27(v11, v7);
  v28 = sub_20D974558();
  v30 = v29;
  LOBYTE(v11) = v31;

  sub_20D7EADC0(v21, v23, v25 & 1);

  sub_20D9743F8();
  v32 = sub_20D9744F8();
  v34 = v33;
  LOBYTE(v23) = v35;
  sub_20D7EADC0(v28, v30, v11 & 1);

  v36 = objc_opt_self();
  v37 = [v36 systemOrangeColor];
  sub_20D974888();
  sub_20D974948();

  v38 = sub_20D974508();
  v40 = v39;
  LOBYTE(v11) = v41;

  sub_20D7EADC0(v32, v34, v23 & 1);

  v42 = [v36 quaternaryLabelColor];
  sub_20D974888();
  v43 = sub_20D974948();

  v91 = v43;
  v44 = sub_20D974518();
  v46 = v45;
  LOBYTE(v32) = v47;
  v49 = v48;
  sub_20D7EADC0(v38, v40, v11 & 1);

  v91 = v44;
  v92 = v46;
  v93 = v32 & 1;
  v94 = v49;
  sub_20D9747D8();
  sub_20D7EADC0(v44, v46, v32 & 1);

  v91 = v84;
  v92 = v85;

  v50 = sub_20D9745C8();
  v52 = v51;
  LOBYTE(v38) = v53;
  sub_20D974398();
  v54 = v76;
  v55 = v77;
  v81(v76, v82, v77);
  sub_20D974478();

  v79(v54, v55);
  v56 = sub_20D974558();
  v58 = v57;
  LOBYTE(v49) = v59;

  sub_20D7EADC0(v50, v52, v38 & 1);

  v60 = [v36 secondaryLabelColor];
  v91 = sub_20D974888();
  v61 = sub_20D974518();
  v63 = v62;
  LOBYTE(v38) = v64;
  v66 = v65;
  sub_20D7EADC0(v56, v58, v49 & 1);

  v91 = v61;
  v92 = v63;
  v93 = v38 & 1;
  v94 = v66;
  v67 = v86;
  sub_20D9747D8();
  sub_20D7EADC0(v61, v63, v38 & 1);

  v68 = v90;
  v69 = v87;
  sub_20D7EB7E8(v90, v87, &qword_27C838F18, &unk_20D977860);
  v70 = v67;
  v71 = v67;
  v72 = v88;
  sub_20D7EB7E8(v70, v88, &qword_27C838F18, &unk_20D977860);
  v73 = v89;
  sub_20D7EB7E8(v69, v89, &qword_27C838F18, &unk_20D977860);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839160, &unk_20D977DF0);
  sub_20D7EB7E8(v72, v73 + *(v74 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v71, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v68, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v72, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v69, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D932198@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_20D974168();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839150, &qword_20D97EAC0);
  return sub_20D931AA0(v3, v4, v6, v5, a1 + *(v7 + 44));
}

uint64_t sub_20D932210(unsigned __int8 *a1)
{
  v2 = *a1;
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v3 = [qword_28112ABE8 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_20D975098();

    v5 = sub_20D975078();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  if (v6)
  {
    v7 = sub_20D975398();
    v8 = sub_20D975078();
    [v6 setObject:v7 forKey:v8];
  }

  v10 = *(a1 + 1);
  v11 = *(a1 + 2);
  v12 = a1[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB70, &qword_20D97EBC8);
  return sub_20D974B28();
}

uint64_t sub_20D932380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a2;
  v30 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB00, &qword_20D97EAC8);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  *v17 = sub_20D974088();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB08, &qword_20D97EAD0);
  sub_20D930F14(a1, &v17[*(v18 + 44)]);
  v19 = objc_opt_self();
  v20 = [v19 systemOrangeColor];
  sub_20D974888();
  v21 = sub_20D974948();

  KeyPath = swift_getKeyPath();
  v23 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB10, &qword_20D97EB08) + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  v24 = [v19 quaternaryLabelColor];
  sub_20D974888();
  v25 = sub_20D974948();

  *&v17[*(v11 + 44)] = v25;
  sub_20D7EB7E8(v17, v15, &qword_27C83BB00, &qword_20D97EAC8);
  sub_20D7EB7E8(v15, a6, &qword_27C83BB00, &qword_20D97EAC8);
  v26 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB18, &qword_20D97EB10) + 48));
  v27 = v30;
  *v26 = v29;
  v26[1] = a3;
  v26[2] = v27;
  v26[3] = a5;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_20D7E3944(v17, &qword_27C83BB00, &qword_20D97EAC8);

  return sub_20D7E3944(v15, &qword_27C83BB00, &qword_20D97EAC8);
}

uint64_t type metadata accessor for HistoricalUsageEnergyTip()
{
  result = qword_27C83BAA8;
  if (!qword_27C83BAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D93263C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20D930DBC(a2);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA88, &qword_20D97E998) + 36)) = 256;
  v4 = sub_20D974318();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA90, &qword_20D97E9A0) + 36);
  *v5 = v4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  v6 = sub_20D974C48();
  v8 = v7;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA98, &qword_20D97E9A8) + 36));
  v10 = *(a1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  sub_20D973B78();
  v11 = *(sub_20D973DE8() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_20D974118();
  (*(*(v13 - 8) + 104))(v9 + v11, v12, v13);
  *v9 = v19 * 24.0;
  v9[1] = v19 * 24.0;
  v14 = [objc_opt_self() systemOrangeColor];
  sub_20D974888();
  v15 = sub_20D974948();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B800, &qword_20D97E490);
  *(v9 + *(v16 + 52)) = v15;
  *(v9 + *(v16 + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BAA0, &qword_20D97E9B0);
  v18 = (v9 + *(result + 36));
  *v18 = v6;
  v18[1] = v8;
  return result;
}

void sub_20D93283C()
{
  sub_20D9328E8();
  if (v0 <= 0x3F)
  {
    sub_20D7F8490();
    if (v1 <= 0x3F)
    {
      sub_20D7E63C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D9328E8()
{
  if (!qword_27C83BAB8)
  {
    v0 = sub_20D974B58();
    if (!v1)
    {
      atomic_store(v0, &qword_27C83BAB8);
    }
  }
}

unint64_t sub_20D932938()
{
  result = qword_27C83BAC0;
  if (!qword_27C83BAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BA98, &qword_20D97E9A8);
    sub_20D932AD4(&qword_27C83BAC8, &qword_27C83BA90, &qword_20D97E9A0, sub_20D932A1C);
    sub_20D7EBC4C(&qword_27C83BAF8, &qword_27C83BAA0, &qword_20D97E9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BAC0);
  }

  return result;
}

unint64_t sub_20D932A1C()
{
  result = qword_27C83BAD0;
  if (!qword_27C83BAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BA88, &qword_20D97E998);
    sub_20D932AD4(&qword_27C83BAD8, &qword_27C83BA80, &qword_20D97E990, sub_20D932B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BAD0);
  }

  return result;
}

uint64_t sub_20D932AD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D932B58()
{
  result = qword_27C83BAE0;
  if (!qword_27C83BAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BA78, &qword_20D97E988);
    sub_20D7EBC4C(&qword_27C83BAE8, &qword_27C83BAF0, &qword_20D97EA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BAE0);
  }

  return result;
}

unint64_t sub_20D932C3C()
{
  result = qword_27C83BB38;
  if (!qword_27C83BB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BB28, &qword_20D97EB20);
    sub_20D932CF4();
    sub_20D7EBC4C(&qword_281126F50, &qword_27C83A108, &unk_20D97B230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BB38);
  }

  return result;
}

unint64_t sub_20D932CF4()
{
  result = qword_27C83BB40;
  if (!qword_27C83BB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BB48, &qword_20D97EB98);
    sub_20D8E3FD8();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BB40);
  }

  return result;
}

uint64_t sub_20D932DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageEnergyTip();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D932E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageEnergyTip();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D932E74()
{
  v1 = *(type metadata accessor for HistoricalUsageEnergyTip() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_20D932210(v2);
}

unint64_t sub_20D932ED4()
{
  result = qword_27C83BB68;
  if (!qword_27C83BB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BB58, &qword_20D97EBB0);
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BB68);
  }

  return result;
}

uint64_t UtilityRateInfoWidgetView.init(snapshot:homeName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_20D9726E8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_20D975058();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_20D936D10(a1, a4, type metadata accessor for UtilityRateInfoSnapshot);
  if (!a3)
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v12 = qword_28112ABE8;
    sub_20D9726B8();
    a2 = sub_20D975108();
    a3 = v13;
  }

  sub_20D936D78(a1, type metadata accessor for UtilityRateInfoSnapshot);
  result = type metadata accessor for UtilityRateInfoWidgetView(0);
  v15 = (a4 + *(result + 20));
  *v15 = a2;
  v15[1] = a3;
  return result;
}

uint64_t UtilityRateInfoWidgetView.init(snapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D9726E8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_20D975058();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for UtilityRateInfoSnapshot();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D936D10(a1, v11, type metadata accessor for UtilityRateInfoSnapshot);
  sub_20D936D10(v11, a2, type metadata accessor for UtilityRateInfoSnapshot);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v12 = qword_28112ABE8;
  sub_20D9726B8();
  v13 = sub_20D975108();
  v15 = v14;
  sub_20D936D78(a1, type metadata accessor for UtilityRateInfoSnapshot);
  sub_20D936D78(v11, type metadata accessor for UtilityRateInfoSnapshot);
  result = type metadata accessor for UtilityRateInfoWidgetView(0);
  v17 = (a2 + *(result + 20));
  *v17 = v13;
  v17[1] = v15;
  return result;
}

uint64_t UtilityRateInfoWidgetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB78, &qword_20D97EBE0);
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v49);
  v6 = &v43 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB80, &qword_20D97EBE8);
  v7 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v47 = &v43 - v8;
  v43 = sub_20D9742A8();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v43);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB88, &qword_20D97EBF0);
  v13 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v15 = &v43 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB90, &qword_20D97EBF8);
  v16 = *(v46 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v46);
  v19 = &v43 - v18;
  if (*(v2 + *(type metadata accessor for UtilityRateInfoSnapshot() + 44)) == 6)
  {
    *v15 = sub_20D9742F8();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB98, &qword_20D97EC00);
    sub_20D933ADC(v2, &v15[*(v20 + 44)]);
    sub_20D974298();
    sub_20D974C48();
    v21 = sub_20D7EBC4C(&qword_27C83BBA0, &qword_27C83BB88, &qword_20D97EBF0);
    v22 = v44;
    v23 = MEMORY[0x277CE1428];
    sub_20D9747C8();
    (*(v9 + 8))(v12, v43);
    sub_20D7E3944(v15, &qword_27C83BB88, &qword_20D97EBF0);
    v24 = v46;
    (*(v16 + 16))(v47, v19, v46);
    swift_storeEnumTagMultiPayload();
    *&v54 = v22;
    *(&v54 + 1) = v23;
    *&v55 = v21;
    *(&v55 + 1) = MEMORY[0x277CE1410];
    swift_getOpaqueTypeConformance2();
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BBA8, &qword_20D97EC08);
    v26 = sub_20D936E9C(&qword_27C83BBB0, &qword_27C83BBA8, &qword_20D97EC08, sub_20D933FA4);
    *&v54 = v25;
    *(&v54 + 1) = MEMORY[0x277CE1428];
    *&v55 = v26;
    *(&v55 + 1) = MEMORY[0x277CE1410];
    swift_getOpaqueTypeConformance2();
    sub_20D9741B8();
    return (*(v16 + 8))(v19, v24);
  }

  else
  {
    v28 = sub_20D936804();
    v30 = v29;
    v32 = v31;
    v33 = v3;
    v35 = v34;
    v36 = sub_20D974318();
    v53 = 1;
    *&v50 = v28;
    *(&v50 + 1) = v30;
    *&v51 = v32;
    *(&v51 + 1) = v35;
    v52[0] = v36;
    memset(&v52[8], 0, 32);
    v52[40] = 1;
    sub_20D974298();
    sub_20D974C48();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BBA8, &qword_20D97EC08);
    v38 = sub_20D936E9C(&qword_27C83BBB0, &qword_27C83BBA8, &qword_20D97EC08, sub_20D933FA4);
    v39 = MEMORY[0x277CE1428];
    sub_20D9747C8();
    (*(v9 + 8))(v12, v43);
    v57[0] = *&v52[16];
    *(v57 + 9) = *&v52[25];
    v55 = v51;
    v56 = *v52;
    v54 = v50;
    sub_20D7E3944(&v54, &qword_27C83BBA8, &qword_20D97EC08);
    v40 = v49;
    (*(v33 + 16))(v47, v6, v49);
    swift_storeEnumTagMultiPayload();
    v41 = sub_20D7EBC4C(&qword_27C83BBA0, &qword_27C83BB88, &qword_20D97EBF0);
    *&v50 = v44;
    *(&v50 + 1) = v39;
    *&v51 = v41;
    v42 = MEMORY[0x277CE1410];
    *(&v51 + 1) = MEMORY[0x277CE1410];
    swift_getOpaqueTypeConformance2();
    *&v50 = v37;
    *(&v50 + 1) = v39;
    *&v51 = v38;
    *(&v51 + 1) = v42;
    swift_getOpaqueTypeConformance2();
    sub_20D9741B8();
    return (*(v33 + 8))(v6, v40);
  }
}

uint64_t sub_20D933ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for UtilityRateView(0);
  v4 = *(*(v3 - 1) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v72 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v71 = v68 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v70 = v68 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (v68 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (v68 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = (v68 - v17);
  v19 = (a1 + *(type metadata accessor for UtilityRateInfoWidgetView(0) + 20));
  v21 = *v19;
  v20 = v19[1];
  sub_20D936D10(a1, v18 + v3[5], type metadata accessor for UtilityRateInfoSnapshot);
  v22 = qword_281125B78;
  swift_bridgeObjectRetain_n();
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = xmmword_281125B90;
  v24 = xmmword_281125BA0;
  v74[2] = xmmword_281125BA0;
  v74[3] = xmmword_281125BB0;
  v25 = xmmword_281125BD0;
  v26 = xmmword_281125BE0;
  v74[6] = xmmword_281125BE0;
  v74[7] = xmmword_281125BF0;
  v27 = xmmword_281125BB0;
  v28 = xmmword_281125BC0;
  v74[4] = xmmword_281125BC0;
  v74[5] = xmmword_281125BD0;
  v29 = xmmword_281125C30;
  v74[12] = xmmword_281125C40;
  v30 = unk_281125C10;
  v31 = xmmword_281125C20;
  v74[10] = xmmword_281125C20;
  v74[11] = xmmword_281125C30;
  v32 = xmmword_281125BF0;
  v33 = xmmword_281125C00;
  v74[8] = xmmword_281125C00;
  v74[9] = unk_281125C10;
  v34 = xmmword_281125B80;
  v74[0] = xmmword_281125B80;
  v74[1] = xmmword_281125B90;
  *v18 = v21;
  v18[1] = v20;
  v35 = (v18 + v3[6]);
  v35[10] = v31;
  v35[11] = v29;
  v35[12] = xmmword_281125C40;
  v35[6] = v26;
  v35[7] = v32;
  v35[8] = v33;
  v35[9] = v30;
  v35[2] = v24;
  v35[3] = v27;
  v35[4] = v28;
  v35[5] = v25;
  *v35 = v34;
  v35[1] = v23;
  *(v18 + v3[7]) = 1;
  *(v18 + v3[8]) = 1;
  sub_20D936D10(a1, v16 + v3[5], type metadata accessor for UtilityRateInfoSnapshot);
  v36 = xmmword_281125B90;
  v37 = xmmword_281125BA0;
  v75[2] = xmmword_281125BA0;
  v75[3] = xmmword_281125BB0;
  v38 = xmmword_281125BD0;
  v39 = xmmword_281125BE0;
  v75[6] = xmmword_281125BE0;
  v75[7] = xmmword_281125BF0;
  v40 = xmmword_281125BB0;
  v41 = xmmword_281125BC0;
  v75[4] = xmmword_281125BC0;
  v75[5] = xmmword_281125BD0;
  v42 = xmmword_281125C30;
  v75[12] = xmmword_281125C40;
  v43 = unk_281125C10;
  v44 = xmmword_281125C20;
  v75[10] = xmmword_281125C20;
  v75[11] = xmmword_281125C30;
  v45 = xmmword_281125BF0;
  v46 = xmmword_281125C00;
  v75[8] = xmmword_281125C00;
  v75[9] = unk_281125C10;
  v47 = xmmword_281125B80;
  v75[0] = xmmword_281125B80;
  v75[1] = xmmword_281125B90;
  *v16 = v21;
  v16[1] = v20;
  v68[1] = v20;
  v48 = (v16 + v3[6]);
  v48[10] = v44;
  v48[11] = v42;
  v48[12] = xmmword_281125C40;
  v48[6] = v39;
  v48[7] = v45;
  v48[8] = v46;
  v48[9] = v43;
  v48[2] = v37;
  v48[3] = v40;
  v48[4] = v41;
  v48[5] = v38;
  *v48 = v47;
  v48[1] = v36;
  *(v16 + v3[7]) = 1;
  *(v16 + v3[8]) = 0;
  sub_20D936D10(a1, v13 + v3[5], type metadata accessor for UtilityRateInfoSnapshot);
  v49 = xmmword_281125B90;
  v50 = xmmword_281125BA0;
  v76[2] = xmmword_281125BA0;
  v76[3] = xmmword_281125BB0;
  v51 = xmmword_281125BD0;
  v52 = xmmword_281125BE0;
  v76[6] = xmmword_281125BE0;
  v76[7] = xmmword_281125BF0;
  v53 = xmmword_281125BB0;
  v54 = xmmword_281125BC0;
  v76[4] = xmmword_281125BC0;
  v76[5] = xmmword_281125BD0;
  v55 = xmmword_281125C30;
  v76[12] = xmmword_281125C40;
  v56 = unk_281125C10;
  v57 = xmmword_281125C20;
  v76[10] = xmmword_281125C20;
  v76[11] = xmmword_281125C30;
  v58 = xmmword_281125BF0;
  v59 = xmmword_281125C00;
  v76[8] = xmmword_281125C00;
  v76[9] = unk_281125C10;
  v60 = xmmword_281125B80;
  v76[0] = xmmword_281125B80;
  v76[1] = xmmword_281125B90;
  *v13 = v21;
  v13[1] = v20;
  v61 = (v13 + v3[6]);
  v61[10] = v57;
  v61[11] = v55;
  v61[12] = xmmword_281125C40;
  v61[6] = v52;
  v61[7] = v58;
  v61[8] = v59;
  v61[9] = v56;
  v61[2] = v50;
  v61[3] = v53;
  v61[4] = v54;
  v61[5] = v51;
  *v61 = v60;
  v61[1] = v49;
  *(v13 + v3[7]) = 0;
  *(v13 + v3[8]) = 0;
  v62 = v70;
  sub_20D936D10(v18, v70, type metadata accessor for UtilityRateView);
  v63 = v71;
  sub_20D936D10(v16, v71, type metadata accessor for UtilityRateView);
  v64 = v72;
  sub_20D936D10(v13, v72, type metadata accessor for UtilityRateView);
  v65 = v69;
  sub_20D936D10(v62, v69, type metadata accessor for UtilityRateView);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC60, &qword_20D97EDF8);
  sub_20D936D10(v63, v65 + *(v66 + 48), type metadata accessor for UtilityRateView);
  sub_20D936D10(v64, v65 + *(v66 + 64), type metadata accessor for UtilityRateView);

  sub_20D85D690(v74, v73);
  sub_20D85D690(v75, v73);
  sub_20D85D690(v76, v73);
  sub_20D936D78(v13, type metadata accessor for UtilityRateView);
  sub_20D936D78(v16, type metadata accessor for UtilityRateView);
  sub_20D936D78(v18, type metadata accessor for UtilityRateView);
  sub_20D936D78(v64, type metadata accessor for UtilityRateView);
  sub_20D936D78(v63, type metadata accessor for UtilityRateView);
  return sub_20D936D78(v62, type metadata accessor for UtilityRateView);
}

unint64_t sub_20D933FA4()
{
  result = qword_27C83BBB8;
  if (!qword_27C83BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BBB8);
  }

  return result;
}

uint64_t sub_20D933FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v81 = a3;
  v82 = a4;
  v79 = a5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BBF8, &qword_20D97ED88);
  v7 = *(*(v75 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v75);
  v78 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = v70 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  v11 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v87 = v70 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v13 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v15 = v70 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC00, &qword_20D97ED90);
  v74 = *(v76 - 8);
  v16 = *(v74 + 64);
  v17 = MEMORY[0x28223BE20](v76);
  v73 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = v70 - v19;
  v88 = a1;
  v89 = a2;
  v20 = sub_20D7E1EF8();

  v80 = v20;
  v21 = sub_20D9745C8();
  v23 = v22;
  v25 = v24;
  sub_20D9744A8();
  v26 = sub_20D974558();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_20D7EADC0(v21, v23, v25 & 1);

  v88 = v26;
  v89 = v28;
  v90 = v30 & 1;
  v91 = v32;
  v86 = v15;
  sub_20D9747D8();
  sub_20D7EADC0(v26, v28, v30 & 1);

  v33 = *MEMORY[0x277CDFA00];
  v34 = sub_20D973D58();
  v35 = *(v34 - 8);
  v36 = *(v35 + 104);
  v37 = v35 + 104;
  v36(v87, v33, v34);
  v38 = sub_20D9308D4(&qword_281127030, MEMORY[0x277CDFA28]);
  result = sub_20D974FD8();
  if (result)
  {
    v40 = sub_20D809130();
    v71 = v34;
    v72 = v36;
    v41 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    v42 = v87;
    v70[1] = v40;
    v70[0] = v41;
    v43 = v86;
    sub_20D974778();
    sub_20D7E3944(v42, &qword_27C839080, &qword_20D977AC0);
    sub_20D7E3944(v43, &qword_27C838F18, &unk_20D977860);
    v88 = v81;
    v89 = v82;

    v44 = sub_20D9745C8();
    v46 = v45;
    v48 = v47;
    v82 = v37;
    sub_20D974468();
    v49 = sub_20D974558();
    v81 = v38;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    sub_20D7EADC0(v44, v46, v48 & 1);

    v88 = v50;
    v89 = v52;
    v90 = v54 & 1;
    v91 = v56;
    sub_20D9747D8();
    sub_20D7EADC0(v50, v52, v54 & 1);

    v72(v42, *MEMORY[0x277CDF9F0], v71);
    result = sub_20D974FD8();
    if (result)
    {
      v57 = v77;
      v59 = v86;
      v58 = v87;
      sub_20D974778();
      sub_20D7E3944(v58, &qword_27C839080, &qword_20D977AC0);
      sub_20D7E3944(v59, &qword_27C838F18, &unk_20D977860);
      v60 = v74;
      *(v57 + *(v75 + 36)) = 256;
      v61 = *(v60 + 16);
      v62 = v73;
      v63 = v76;
      v61(v73, v85, v76);
      v64 = v78;
      sub_20D7EB7E8(v57, v78, &qword_27C83BBF8, &qword_20D97ED88);
      v65 = v79;
      v61(v79, v62, v63);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC08, &qword_20D97ED98);
      v67 = &v65[v66[12]];
      *v67 = 0;
      v67[8] = 1;
      sub_20D7EB7E8(v64, &v65[v66[16]], &qword_27C83BBF8, &qword_20D97ED88);
      v68 = &v65[v66[20]];
      *v68 = 0;
      v68[8] = 1;
      sub_20D7E3944(v57, &qword_27C83BBF8, &qword_20D97ED88);
      v69 = *(v60 + 8);
      v69(v85, v63);
      sub_20D7E3944(v64, &qword_27C83BBF8, &qword_20D97ED88);
      return (v69)(v62, v63);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D934708@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_20D974168();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BBF0, &qword_20D97ED80);
  return sub_20D933FF8(v3, v4, v6, v5, (a1 + *(v7 + 44)));
}

uint64_t sub_20D934784@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC10, &qword_20D97EDA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC18, &qword_20D97EDA8);
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC20, &qword_20D97EDB0);
  v11 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v13 = &v37 - v12;
  v38 = type metadata accessor for UtilityRateView(0);
  v14 = v1 + *(v38 + 20);
  UtilityRateInfoSnapshot.statusAndAdviceTextPlusSymbol.getter(v44);
  LODWORD(v14) = v44[0];
  v16 = v45;
  v15 = v46;
  v18 = v47;
  v17 = v48;
  *v6 = sub_20D974168();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v19 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC28, &unk_20D97EDB8) + 44)];
  v42 = v2;
  sub_20D934B44(v2, v16, v15, v18, v17, v14, v19);

  sub_20D7EBC4C(&qword_27C83BC30, &qword_27C83BC10, &qword_20D97EDA0);
  sub_20D9746B8();
  sub_20D7E3944(v6, &qword_27C83BC10, &qword_20D97EDA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  LOBYTE(v16) = sub_20D974348();
  *(inited + 32) = v16;
  v21 = sub_20D974368();
  *(inited + 33) = v21;
  v22 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v16)
  {
    v22 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v21)
  {
    v22 = sub_20D974358();
  }

  (*(v40 + 32))(v13, v10, v41);
  v23 = &v13[*(v39 + 36)];
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  v24 = sub_20D974328();
  v25 = *(v42 + *(v38 + 24) + 80);
  sub_20D973AD8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v43;
  sub_20D7EAF18(v13, v43, &qword_27C83BC20, &qword_20D97EDB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC38, &qword_20D97EDC8);
  v36 = v34 + *(result + 36);
  *v36 = v24;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_20D934B44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v60) = a6;
  *&v66 = a4;
  v68 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v58 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC40, &qword_20D97EDD0);
  v14 = *(v61 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v61);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v58 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC48, &qword_20D97EDD8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v65 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v67 = &v58 - v24;
  v25 = *a1;
  v26 = a1[1];
  v27 = type metadata accessor for UtilityRateView(0);
  v63 = *(a1 + v27[7]);
  v64 = v26;

  *(&v66 + 1) = a5;

  v62 = sub_20D974338();
  v28 = *(a1 + v27[6] + 88);
  sub_20D973AD8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  LOBYTE(v85) = 0;
  if ((v60 & 1) != 0 && *(a1 + v27[8]) == 1)
  {
    v37 = v58;
    sub_20D935028(v58);
    sub_20D974C58();
    sub_20D973E08();
    sub_20D7EAF18(v37, v18, &qword_27C838F18, &unk_20D977860);
    v38 = v61;
    v39 = &v18[*(v61 + 36)];
    v40 = v90;
    *(v39 + 4) = v89;
    *(v39 + 5) = v40;
    *(v39 + 6) = v91;
    v41 = v86;
    *v39 = v85;
    *(v39 + 1) = v41;
    v42 = v88;
    *(v39 + 2) = v87;
    *(v39 + 3) = v42;
    v43 = v18;
    v44 = v59;
    sub_20D7EAF18(v43, v59, &qword_27C83BC40, &qword_20D97EDD0);
    v45 = v44;
    v46 = v67;
    sub_20D7EAF18(v45, v67, &qword_27C83BC40, &qword_20D97EDD0);
    (*(v14 + 56))(v46, 0, 1, v38);
  }

  else
  {
    v46 = v67;
    (*(v14 + 56))(v67, 1, 1, v61);
  }

  v47 = v65;
  sub_20D7EB7E8(v46, v65, &qword_27C83BC48, &qword_20D97EDD8);
  *&v69 = v25;
  v60 = a3;
  v61 = v25;
  v48 = v64;
  *(&v69 + 1) = v64;
  *&v70 = v68;
  *(&v70 + 1) = a3;
  v49 = v66;
  v71 = v66;
  v51 = v62;
  v50 = v63;
  LOBYTE(v72) = v63;
  BYTE8(v72) = v62;
  *&v73 = v30;
  *(&v73 + 1) = v32;
  *&v74 = v34;
  *(&v74 + 1) = v36;
  v75 = 0;
  *(a7 + 96) = 0;
  v52 = v74;
  *(a7 + 64) = v73;
  *(a7 + 80) = v52;
  v53 = v70;
  *a7 = v69;
  *(a7 + 16) = v53;
  v54 = v72;
  *(a7 + 32) = v71;
  *(a7 + 48) = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC50, &qword_20D97EDE0);
  sub_20D7EB7E8(v47, a7 + *(v55 + 48), &qword_27C83BC48, &qword_20D97EDD8);
  v56 = a7 + *(v55 + 64);
  *v56 = 0;
  *(v56 + 8) = 1;
  sub_20D7EB7E8(&v69, v76, &qword_27C83BC58, &unk_20D97EDE8);
  sub_20D7E3944(v67, &qword_27C83BC48, &qword_20D97EDD8);
  sub_20D7E3944(v47, &qword_27C83BC48, &qword_20D97EDD8);
  v76[0] = v61;
  v76[1] = v48;
  v76[2] = v68;
  v76[3] = v60;
  v77 = v49;
  v78 = v50;
  v79 = v51;
  v80 = v30;
  v81 = v32;
  v82 = v34;
  v83 = v36;
  v84 = 0;
  return sub_20D7E3944(v76, &qword_27C83BC58, &unk_20D97EDE8);
}

uint64_t sub_20D935028@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_20D974458();
  v47 = *(v1 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v1);
  v46 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D9744B8();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D9740E8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_20D9740D8();
  sub_20D9740C8();
  v10 = *(type metadata accessor for UtilityRateView(0) + 20);
  UtilityRateInfoSnapshot.peakSymbol.getter();
  UtilityRateInfoSnapshot.attributedPeak.getter(&v54);
  v11 = v57;
  if (v57 != 1)
  {
    v43 = v4;
    v44 = v1;
    v13 = v55;
    v12 = v56;
    v14 = v54;
    v49 = v54;
    v50 = v55 & 1;
    v51 = v56;
    v52 = v57;
    v53 = v58;
    PeakPeriodAttributes.variableValue.getter();
    v15 = v13;
    v16 = v12;
    v4 = v43;
    v1 = v44;
    sub_20D8EE800(v14, v15, v16, v11);
  }

  sub_20D9749A8();
  sub_20D9740A8();

  sub_20D9740C8();
  sub_20D974108();
  v17 = sub_20D9745A8();
  v19 = v18;
  v21 = v20;
  v22 = v45;
  (*(v45 + 104))(v7, *MEMORY[0x277CE0A50], v4);
  MEMORY[0x20F3225C0](0, 0xE000000000000000, v7, 44.0);
  (*(v22 + 8))(v7, v4);
  v24 = v46;
  v23 = v47;
  (*(v47 + 104))(v46, *MEMORY[0x277CE0A10], v1);
  sub_20D974478();

  (*(v23 + 8))(v24, v1);
  v25 = sub_20D974558();
  v27 = v26;
  v29 = v28;

  sub_20D7EADC0(v17, v19, v21 & 1);

  sub_20D9743D8();
  v30 = sub_20D9744F8();
  v32 = v31;
  v34 = v33;
  sub_20D7EADC0(v25, v27, v29 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20D977210;
  *(v35 + 32) = sub_20D974938();
  *(v35 + 40) = sub_20D974928();
  v54 = MEMORY[0x20F322D80](v35);
  v36 = sub_20D974518();
  v38 = v37;
  LOBYTE(v23) = v39;
  v41 = v40;
  sub_20D7EADC0(v30, v32, v34 & 1);

  v54 = v36;
  v55 = v38;
  LOBYTE(v56) = v23 & 1;
  v57 = v41;
  sub_20D9747D8();
  sub_20D7EADC0(v36, v38, v23 & 1);
}

uint64_t sub_20D935520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC90, &qword_20D97EEA0);
  v3 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v124 = &v107 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC98, &unk_20D97EEA8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v127 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v126 = &v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v107 - v12;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  v14 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v16 = &v107 - v15;
  v17 = sub_20D974458();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCA0, &qword_20D97EEB8);
  v22 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v115 = &v107 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCA8, &qword_20D97EEC0);
  v119 = *(v24 - 8);
  v25 = *(v119 + 64);
  MEMORY[0x28223BE20](v24);
  v116 = &v107 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCB0, &qword_20D97EEC8);
  v120 = *(v27 - 8);
  v28 = *(v120 + 64);
  MEMORY[0x28223BE20](v27);
  v117 = &v107 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCB8, &qword_20D97EED0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v114 = &v107 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCC0, &qword_20D97EED8);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v123 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v133 = &v107 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCC8, &qword_20D97EEE0);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v122 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v121 = &v107 - v43;
  sub_20D936378(&v107 - v43);
  v44 = *(a1 + 48);
  v130 = v18;
  v131 = v17;
  v129 = v21;
  if (v44)
  {
    v108 = v24;
    v109 = v31;
    v110 = v27;
    v111 = v30;
    v112 = v13;
    v113 = a1;
    v45 = *(a1 + 16);
    v46 = *(a1 + 24);
    *&v139 = v45;
    *(&v139 + 1) = v46;
    sub_20D7E1EF8();

    v47 = sub_20D9745C8();
    v49 = v48;
    v51 = v50;
    sub_20D974438();
    (*(v18 + 104))(v21, *MEMORY[0x277CE0A10], v17);
    sub_20D974478();

    (*(v18 + 8))(v21, v17);
    v52 = sub_20D974558();
    v54 = v53;
    v56 = v55;
    v58 = v57;

    sub_20D7EADC0(v47, v49, v51 & 1);

    *&v139 = v52;
    *(&v139 + 1) = v54;
    LOBYTE(v140) = v56 & 1;
    *(&v140 + 1) = v58;
    v59 = *MEMORY[0x277CDF9D8];
    v60 = sub_20D973D58();
    (*(*(v60 - 8) + 104))(v16, v59, v60);
    sub_20D9308D4(&qword_281127030, MEMORY[0x277CDFA28]);
    result = sub_20D974FD8();
    if ((result & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    v62 = v115;
    sub_20D974778();
    sub_20D7E3944(v16, &qword_27C839080, &qword_20D977AC0);
    sub_20D7EADC0(v52, v54, v56 & 1);

    v63 = [objc_opt_self() labelColor];
    v64 = sub_20D974888();
    KeyPath = swift_getKeyPath();
    v66 = v118;
    v67 = (v62 + *(v118 + 36));
    *v67 = KeyPath;
    v67[1] = v64;
    v68 = *MEMORY[0x277CE09A0];
    v69 = sub_20D9743C8();
    v70 = *(v69 - 8);
    v71 = v112;
    (*(v70 + 104))(v112, v68, v69);
    (*(v70 + 56))(v71, 0, 1, v69);
    v72 = sub_20D937244();
    v73 = v116;
    sub_20D9746F8();
    sub_20D7E3944(v71, &qword_27C838C08, &qword_20D977450);
    sub_20D7E3944(v62, &qword_27C83BCA0, &qword_20D97EEB8);
    sub_20D9743F8();
    *&v139 = v66;
    *(&v139 + 1) = v72;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v75 = v117;
    v76 = v108;
    sub_20D974708();
    (*(v119 + 8))(v73, v76);
    *&v139 = v76;
    *(&v139 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v77 = v114;
    v78 = v110;
    sub_20D9747D8();
    (*(v120 + 8))(v75, v78);
    sub_20D7EAF18(v77, v133, &qword_27C83BCB8, &qword_20D97EED0);
    v79 = 0;
    a1 = v113;
    v30 = v111;
    v31 = v109;
  }

  else
  {
    v79 = 1;
  }

  (*(v31 + 56))(v133, v79, 1, v30);
  v80 = *(a1 + 40);
  *&v139 = *(a1 + 32);
  *(&v139 + 1) = v80;
  sub_20D7E1EF8();

  v81 = sub_20D9745C8();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  sub_20D974488();
  v88 = v129;
  v89 = v130;
  v90 = v131;
  (*(v130 + 104))(v129, *MEMORY[0x277CE0A18], v131);
  v91 = sub_20D974478();

  (*(v89 + 8))(v88, v90);
  v92 = swift_getKeyPath();
  v138 = v85 & 1;
  *&v134 = v81;
  *(&v134 + 1) = v83;
  LOBYTE(v135) = v85 & 1;
  *(&v135 + 1) = v87;
  LOWORD(v136) = 256;
  *(&v136 + 1) = v92;
  v137 = v91;
  v93 = *MEMORY[0x277CDFA00];
  v94 = sub_20D973D58();
  (*(*(v94 - 8) + 104))(v16, v93, v94);
  sub_20D9308D4(&qword_281127030, MEMORY[0x277CDFA28]);
  result = sub_20D974FD8();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCD0, &qword_20D97EF18);
    sub_20D937038();
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    v95 = v124;
    sub_20D974778();
    sub_20D7E3944(v16, &qword_27C839080, &qword_20D977AC0);
    v139 = v134;
    v140 = v135;
    v141 = v136;
    v142 = v137;
    sub_20D7E3944(&v139, &qword_27C83BCD0, &qword_20D97EF18);
    v96 = [objc_opt_self() secondaryLabelColor];
    v97 = sub_20D974888();
    v98 = swift_getKeyPath();
    v99 = (v95 + *(v125 + 36));
    *v99 = v98;
    v99[1] = v97;
    sub_20D9370F0();
    v100 = v126;
    sub_20D9747D8();
    sub_20D7E3944(v95, &qword_27C83BC90, &qword_20D97EEA0);
    v101 = v121;
    v102 = v122;
    sub_20D7EB7E8(v121, v122, &qword_27C83BCC8, &qword_20D97EEE0);
    v103 = v123;
    sub_20D7EB7E8(v133, v123, &qword_27C83BCC0, &qword_20D97EED8);
    v104 = v127;
    sub_20D7EB7E8(v100, v127, &qword_27C83BC98, &unk_20D97EEA8);
    v105 = v128;
    sub_20D7EB7E8(v102, v128, &qword_27C83BCC8, &qword_20D97EEE0);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCE8, &qword_20D97EF58);
    sub_20D7EB7E8(v103, v105 + *(v106 + 48), &qword_27C83BCC0, &qword_20D97EED8);
    sub_20D7EB7E8(v104, v105 + *(v106 + 64), &qword_27C83BC98, &unk_20D97EEA8);
    sub_20D7E3944(v100, &qword_27C83BC98, &unk_20D97EEA8);
    sub_20D7E3944(v133, &qword_27C83BCC0, &qword_20D97EED8);
    sub_20D7E3944(v101, &qword_27C83BCC8, &qword_20D97EEE0);
    sub_20D7E3944(v104, &qword_27C83BC98, &unk_20D97EEA8);
    sub_20D7E3944(v103, &qword_27C83BCC0, &qword_20D97EED8);
    return sub_20D7E3944(v102, &qword_27C83BCC8, &qword_20D97EEE0);
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_20D936378@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  v2 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v4 = &v34 - v3;
  v5 = sub_20D974458();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCA0, &qword_20D97EEB8);
  v10 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v34 - v11;
  v12 = *v1;
  v13 = v1[1];
  v39 = v12;
  v40 = v13;
  sub_20D7E1EF8();

  v14 = sub_20D9745C8();
  v16 = v15;
  v18 = v17;
  sub_20D974498();
  (*(v6 + 104))(v9, *MEMORY[0x277CE0A10], v5);
  sub_20D974478();

  (*(v6 + 8))(v9, v5);
  v19 = sub_20D974558();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_20D7EADC0(v14, v16, v18 & 1);

  v39 = v19;
  v40 = v21;
  v41 = v23 & 1;
  v42 = v25;
  v26 = *MEMORY[0x277CDFA00];
  v27 = sub_20D973D58();
  (*(*(v27 - 8) + 104))(v4, v26, v27);
  sub_20D9308D4(&qword_281127030, MEMORY[0x277CDFA28]);
  result = sub_20D974FD8();
  if (result)
  {
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    v29 = v36;
    sub_20D974778();
    sub_20D7E3944(v4, &qword_27C839080, &qword_20D977AC0);
    sub_20D7EADC0(v19, v21, v23 & 1);

    v30 = [objc_opt_self() labelColor];
    v31 = sub_20D974888();
    KeyPath = swift_getKeyPath();
    v33 = (v29 + *(v37 + 36));
    *v33 = KeyPath;
    v33[1] = v31;
    sub_20D937244();
    sub_20D9747D8();
    return sub_20D7E3944(v29, &qword_27C83BCA0, &qword_20D97EEB8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D93678C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_20D974168();
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC88, &qword_20D97EE98);
  return sub_20D935520(v6, a1 + *(v4 + 44));
}

uint64_t sub_20D936804()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  v5 = v4;
  v6 = sub_20D975108();
  sub_20D974FE8();
  sub_20D9726B8();
  sub_20D975108();
  return v6;
}

uint64_t sub_20D9369FC()
{
  result = type metadata accessor for UtilityRateInfoSnapshot();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20D936A70()
{
  result = qword_27C83BBD0;
  if (!qword_27C83BBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BBD8, &qword_20D97EC90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BB88, &qword_20D97EBF0);
    sub_20D7EBC4C(&qword_27C83BBA0, &qword_27C83BB88, &qword_20D97EBF0);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BBA8, &qword_20D97EC08);
    sub_20D936E9C(&qword_27C83BBB0, &qword_27C83BBA8, &qword_20D97EC08, sub_20D933FA4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BBD0);
  }

  return result;
}

uint64_t sub_20D936C38()
{
  result = type metadata accessor for UtilityRateInfoSnapshot();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20D936D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D936D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_20D936DF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_20D936E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20D936E9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D936F20()
{
  result = qword_27C83BC80;
  if (!qword_27C83BC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BC20, &qword_20D97EDB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BC10, &qword_20D97EDA0);
    sub_20D7EBC4C(&qword_27C83BC30, &qword_27C83BC10, &qword_20D97EDA0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BC80);
  }

  return result;
}

unint64_t sub_20D937038()
{
  result = qword_27C83BCD8;
  if (!qword_27C83BCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BCD0, &qword_20D97EF18);
    sub_20D91F06C();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BCD8);
  }

  return result;
}

unint64_t sub_20D9370F0()
{
  result = qword_27C83BCE0;
  if (!qword_27C83BCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BC90, &qword_20D97EEA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BCD0, &qword_20D97EF18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839080, &qword_20D977AC0);
    sub_20D937038();
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BCE0);
  }

  return result;
}

unint64_t sub_20D937244()
{
  result = qword_27C83BCF0;
  if (!qword_27C83BCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BCA0, &qword_20D97EEB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839080, &qword_20D977AC0);
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BCF0);
  }

  return result;
}

uint64_t GridForecastSnapshotManager.setTestingSnapshot(type:error:gridID:locationCity:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t a1))
{
  v119 = a2;
  v114 = a4;
  v115 = a6;
  v112 = a3;
  v113 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v104 - v9;
  v116 = sub_20D9729D8();
  v111 = *(v116 - 8);
  v11 = *(v111 + 64);
  v12 = MEMORY[0x28223BE20](v116);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v104 - v15;
  v17 = type metadata accessor for GridForecastSnapshotType(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v110 = (&v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v104 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v104 - v24;
  v26 = type metadata accessor for GridForecastSnapshot(0);
  v27 = *(*(v26 - 1) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v117 = &v104 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v104 - v34;
  MEMORY[0x28223BE20](v33);
  v118 = &v104 - v36;
  LODWORD(v119) = *v119;
  sub_20D86CC5C(a1, v25, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D86DC2C(v25, type metadata accessor for GridForecastSnapshotType);
    v68 = v23;
    v109 = v23;
    v110 = type metadata accessor for GridForecastSnapshotType;
    sub_20D86CC5C(a1, v23, type metadata accessor for GridForecastSnapshotType);
    static EnergyWindows.mockNoCleanEnergyWindows()(v16);
    v69 = v112;
    if (!v114)
    {
      v69 = 0;
    }

    v112 = v69;
    v70 = 0xE000000000000000;
    if (v114)
    {
      v71 = v114;
    }

    else
    {
      v71 = 0xE000000000000000;
    }

    v107 = v71;
    v72 = v113;
    if (!v115)
    {
      v72 = 0;
    }

    v113 = v72;
    v73 = v111;
    if (v115)
    {
      v70 = v115;
    }

    v108 = v70;
    sub_20D86CC5C(v68, v35, type metadata accessor for GridForecastSnapshotType);
    v74 = *(v73 + 16);
    v75 = v116;
    v74(&v35[v26[5]], v16, v116);
    v76 = &v35[v26[6]];
    v77 = v107;
    *v76 = v112;
    *(v76 + 1) = v77;
    v78 = &v35[v26[7]];
    v79 = v108;
    *v78 = v113;
    *(v78 + 1) = v79;
    v35[v26[9]] = v119;
    v74(v10, v16, v75);
    (*(v73 + 56))(v10, 0, 1, v75);

    v80 = sub_20D87934C(v10);
    sub_20D7E3944(v10, &qword_27C838A00, &qword_20D976750);
    v122[0] = v80;
    v81 = sub_20D8797EC(v122);

    (*(v73 + 8))(v16, v75);
    sub_20D86DC2C(v109, v110);
    *&v35[v26[8]] = v81;
    v82 = v35;
    v55 = v118;
    sub_20D86CCC4(v82, v118);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v83 = sub_20D9734F8();
    __swift_project_value_buffer(v83, qword_28112AC00);
    v84 = v120;

    v85 = sub_20D9734D8();
    v86 = sub_20D975448();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v122[0] = v88;
      *v87 = 136315650;
      *(v87 + 4) = sub_20D7F4DC8(0xD000000000000033, 0x800000020D98ADC0, v122);
      *(v87 + 12) = 2080;
      *(v87 + 14) = sub_20D7F4DC8(*(v84 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v84 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v122);
      *(v87 + 22) = 2080;
      swift_beginAccess();
      v89 = GridForecastSnapshot.description.getter();
      v91 = sub_20D7F4DC8(v89, v90, v122);

      *(v87 + 24) = v91;
      _os_log_impl(&dword_20D7C9000, v85, v86, "%s(%s): CL: %s", v87, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v88, -1, -1);
      MEMORY[0x20F324260](v87, -1, -1);
    }

    swift_beginAccess();
    v92 = v117;
    sub_20D86CC5C(v55, v117, type metadata accessor for GridForecastSnapshot);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v121 = v84;
    sub_20D890058();
    sub_20D972848();

    sub_20D86DC2C(v92, type metadata accessor for GridForecastSnapshot);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v109 = v25;
    v38 = *(v25 + 2);

    v39 = a1;
    v40 = v110;
    v108 = type metadata accessor for GridForecastSnapshotType;
    sub_20D86CC5C(v39, v110, type metadata accessor for GridForecastSnapshotType);
    static EnergyWindows.mockNoCleanEnergyWindows()(v14);
    v41 = v112;
    if (!v114)
    {
      v41 = 0;
    }

    v112 = v41;
    v42 = 0xE000000000000000;
    if (v114)
    {
      v43 = v114;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    v105 = v43;
    v44 = v113;
    if (!v115)
    {
      v44 = 0;
    }

    v113 = v44;
    if (v115)
    {
      v42 = v115;
    }

    v106 = v42;
    sub_20D86CC5C(v40, v30, type metadata accessor for GridForecastSnapshotType);
    v45 = v111;
    v46 = *(v111 + 16);
    v47 = &v30[v26[5]];
    v107 = v14;
    v48 = v116;
    v46(v47, v14, v116);
    v49 = &v30[v26[6]];
    v50 = v105;
    *v49 = v112;
    *(v49 + 1) = v50;
    v51 = &v30[v26[7]];
    v52 = v106;
    *v51 = v113;
    *(v51 + 1) = v52;
    v30[v26[9]] = v119;
    v46(v10, v14, v48);
    (*(v45 + 56))(v10, 0, 1, v48);

    v53 = sub_20D87934C(v10);
    sub_20D7E3944(v10, &qword_27C838A00, &qword_20D976750);
    v122[0] = v53;
    v54 = sub_20D8797EC(v122);

    (*(v45 + 8))(v107, v48);
    sub_20D86DC2C(v110, v108);
    *&v30[v26[8]] = v54;
    v55 = v118;
    sub_20D86CCC4(v30, v118);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v56 = sub_20D9734F8();
    __swift_project_value_buffer(v56, qword_28112AC00);
    v57 = v120;

    v58 = sub_20D9734D8();
    v59 = sub_20D975448();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v122[0] = v61;
      *v60 = 136315650;
      *(v60 + 4) = sub_20D7F4DC8(0xD000000000000033, 0x800000020D98ADC0, v122);
      *(v60 + 12) = 2080;
      *(v60 + 14) = sub_20D7F4DC8(*(v57 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v57 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v122);
      *(v60 + 22) = 2080;
      swift_beginAccess();
      v62 = GridForecastSnapshot.description.getter();
      v64 = sub_20D7F4DC8(v62, v63, v122);

      *(v60 + 24) = v64;
      _os_log_impl(&dword_20D7C9000, v58, v59, "%s(%s): F: %s", v60, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v61, -1, -1);
      MEMORY[0x20F324260](v60, -1, -1);
    }

    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    swift_beginAccess();
    v66 = v117;
    sub_20D86CC5C(v55, v117, type metadata accessor for GridForecastSnapshot);
    v67 = swift_getKeyPath();
    MEMORY[0x28223BE20](v67);
    v121 = v57;
    sub_20D890058();
    sub_20D972848();

    sub_20D86DC2C(v66, type metadata accessor for GridForecastSnapshot);
    sub_20D7E3944(&v109[v65], &qword_27C8389F8, &qword_20D978460);
LABEL_31:
    v94 = type metadata accessor for GridForecastSnapshot;
    v95 = v55;
    return sub_20D86DC2C(v95, v94);
  }

  v96 = v25;
  if ((sub_20D972ED8() & 1) == 0)
  {
    v97 = v120;
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v98 = sub_20D9734F8();
    __swift_project_value_buffer(v98, qword_28112AC00);

    v99 = sub_20D9734D8();
    v100 = sub_20D975458();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v122[0] = v102;
      *v101 = 136315394;
      *(v101 + 4) = sub_20D7F4DC8(0xD000000000000033, 0x800000020D98ADC0, v122);
      *(v101 + 12) = 2080;
      *(v101 + 14) = sub_20D7F4DC8(*(v97 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v97 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v122);
      _os_log_impl(&dword_20D7C9000, v99, v100, "%s(%s): This method is only for location & fixed snapshots", v101, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v102, -1, -1);
      MEMORY[0x20F324260](v101, -1, -1);
    }

    v94 = type metadata accessor for GridForecastSnapshotType;
    v95 = v96;
    return sub_20D86DC2C(v95, v94);
  }

  result = sub_20D975738();
  __break(1u);
  return result;
}

void sub_20D938134()
{
  sub_20D864F8C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DynamicEnergyUsagesCalculations(319);
    if (v1 <= 0x3F)
    {
      sub_20D93EB94(319, &qword_27C83BD18, &type metadata for HistoricalUsageIntervalView.FilterButtonsType, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_20D93EAD8(319, &qword_27C83BD20, &qword_27C83B158, &qword_20D97D260, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20D938268(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_20D95DA9C(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_20D9755E8();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_20D95DA9C((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_20D93E67C(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_20D93E67C(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
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
  return result;
}

uint64_t sub_20D938484@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD30, &qword_20D97F050);
  v3 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v151 = &v129 - v4;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD38, &qword_20D97F058);
  v5 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v157 = &v129 - v6;
  v7 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v152 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v129 - v11;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD40, &qword_20D97F060);
  v13 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v15 = &v129 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD48, &qword_20D97F068);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v158 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v156 = &v129 - v20;
  v21 = type metadata accessor for FilterButtonsAndPickerView(0);
  v148 = *(v21 - 1);
  v22 = *(v148 + 64);
  MEMORY[0x28223BE20](v21);
  v149 = v23;
  v150 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20D9741E8();
  v144 = *(v24 - 8);
  v145 = v24;
  v25 = *(v144 + 64);
  MEMORY[0x28223BE20](v24);
  v142 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_20D974458();
  v136 = *(v138 - 8);
  v27 = *(v136 + 64);
  MEMORY[0x28223BE20](v138);
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD50, &qword_20D97F070);
  v30 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v32 = &v129 - v31;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD58, &qword_20D97F078);
  v33 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v35 = &v129 - v34;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD60, &qword_20D97F080);
  v36 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v147 = &v129 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD68, &qword_20D97F088);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v143 = &v129 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD70, &qword_20D97F090);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v153 = &v129 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = *(a1 + v21[9]);
  v161 = &v129 - v47;
  if (v46 == 1)
  {
    v133 = v39;
    v134 = v38;
    v129 = v12;
    v130 = v15;
    if (qword_27C838740 != -1)
    {
      swift_once();
    }

    v162 = qword_27C840E50;
    v163 = *algn_27C840E58;
    v135 = v21;
    v48 = a1 + v21[6];
    v49 = *v48;
    v131 = *(v48 + 1);
    v132 = v49;
    v141 = v48[16];
    *&v167 = v49;
    *(&v167 + 1) = v131;
    LOBYTE(v168) = v141;

    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD98, &qword_20D97F0A8);
    sub_20D974B48();
    v167 = v164;
    LOBYTE(v168) = v165;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BDA0, &qword_20D97F0B0);
    sub_20D913F54();
    sub_20D7EBC4C(&qword_27C83BDA8, &qword_27C83BDA0, &qword_20D97F0B0);
    sub_20D7E1EF8();
    v50 = a1;
    sub_20D974AF8();
    sub_20D974428();
    v51 = v136;
    v52 = v138;
    (*(v136 + 104))(v29, *MEMORY[0x277CE0A10], v138);
    v53 = sub_20D974478();

    (*(v51 + 8))(v29, v52);
    KeyPath = swift_getKeyPath();
    v55 = &v32[*(v137 + 36)];
    *v55 = KeyPath;
    v55[1] = v53;
    sub_20D9743D8();
    sub_20D93DF48();
    sub_20D974708();
    sub_20D7E3944(v32, &qword_27C83BD50, &qword_20D97F070);
    v56 = sub_20D974958();
    v57 = swift_getKeyPath();
    v58 = &v35[*(v140 + 36)];
    *v58 = v57;
    v58[1] = v56;
    v59 = v142;
    sub_20D9741D8();
    sub_20D93E02C();
    v60 = v147;
    v61 = v145;
    sub_20D974738();
    (*(v144 + 8))(v59, v61);
    sub_20D7E3944(v35, &qword_27C83BD58, &qword_20D97F078);
    LOBYTE(v56) = sub_20D974338();
    sub_20D973AD8();
    v62 = v60 + *(v146 + 36);
    *v62 = v56;
    *(v62 + 8) = v63;
    *(v62 + 16) = v64;
    *(v62 + 24) = v65;
    *(v62 + 32) = v66;
    *(v62 + 40) = 0;
    v67 = v131;
    v68 = v132;
    *&v167 = v132;
    *(&v167 + 1) = v131;
    LOBYTE(v168) = v141;
    MEMORY[0x20F322CD0](&v164, v139);
    LOBYTE(v167) = v164;
    a1 = v50;
    v69 = v50;
    v70 = v150;
    sub_20D93E120(v69, v150, type metadata accessor for FilterButtonsAndPickerView);
    v71 = (*(v148 + 80) + 16) & ~*(v148 + 80);
    v72 = swift_allocObject();
    sub_20D93EDF0(v70, v72 + v71, type metadata accessor for FilterButtonsAndPickerView);
    sub_20D93E208();
    sub_20D913FF0();
    v73 = v143;
    sub_20D974848();

    sub_20D7E3944(v60, &qword_27C83BD60, &qword_20D97F080);
    v75 = v133;
    v74 = v134;
    v76 = v161;
    (*(v133 + 32))(v161, v73, v134);
    (*(v75 + 56))(v76, 0, 1, v74);
    *&v167 = v68;
    *(&v167 + 1) = v67;
    LOBYTE(v168) = v141;
    MEMORY[0x20F322CD0](&v164, v139);
    if ((v164 & 1) == 0)
    {

      v21 = v135;
LABEL_13:
      v108 = a1;
      v109 = a1 + v21[8];
      v110 = *v109;
      v111 = *(v109 + 2);
      LOBYTE(v109) = v109[24];
      v167 = v110;
      *&v168 = v111;
      BYTE8(v168) = v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
      sub_20D974B48();
      v113 = *(&v164 + 1);
      v112 = v164;
      v114 = v165;
      v115 = v166;
      v116 = v129;
      sub_20D93E120(v108 + v21[5], v129, type metadata accessor for DynamicEnergyUsagesCalculations);
      v117 = *v108;

      v118 = v130;
      sub_20D939B54(v112, v113, v114, v115, v116, v117, v130);
      v119 = &qword_27C83BD40;
      v120 = &qword_20D97F060;
      sub_20D7EB7E8(v118, v157, &qword_27C83BD40, &qword_20D97F060);
      swift_storeEnumTagMultiPayload();
      sub_20D7EBC4C(&qword_27C83BD80, &qword_27C83BD40, &qword_20D97F060);
      sub_20D7EBC4C(&qword_27C83BD88, &qword_27C83BD30, &qword_20D97F050);
      v121 = v156;
      sub_20D9741B8();
      v122 = v118;
      goto LABEL_16;
    }

    v77 = sub_20D9757C8();

    v78 = v159;
    v21 = v135;
    if (v77)
    {
      goto LABEL_13;
    }
  }

  else
  {
    (*(v39 + 56))();
    v78 = v159;
  }

  v79 = a1 + v21[7];
  v80 = *v79;
  v81 = *(v79 + 2);
  LOBYTE(v79) = v79[24];
  v167 = v80;
  *&v168 = v81;
  BYTE8(v168) = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
  sub_20D974B48();
  v150 = *(&v164 + 1);
  v159 = v164;
  v82 = v165;
  v83 = v21;
  v84 = v166;
  v85 = v152;
  sub_20D93E120(a1 + v83[5], v152, type metadata accessor for DynamicEnergyUsagesCalculations);
  v86 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  v87 = MEMORY[0x277D84F98];
  v88 = v78[12];
  v89 = v151;
  *&v151[v88] = MEMORY[0x277D84F98];
  v149 = v78[13];
  *(v89 + v149) = v87;
  *(v89 + v78[14]) = MEMORY[0x277D84F90];
  v90 = v78;
  v91 = (v89 + v78[15]);
  if (qword_27C838450 != -1)
  {
    swift_once();
  }

  v92 = unk_27C839870;
  v177 = xmmword_27C839880;
  v178 = xmmword_27C839890;
  v93 = xmmword_27C839890;
  v179 = xmmword_27C8398A0;
  v94 = xmmword_27C839830;
  v95 = xmmword_27C839840;
  v173 = xmmword_27C839840;
  v174 = xmmword_27C839850;
  v96 = xmmword_27C839850;
  v97 = xmmword_27C839860;
  v175 = xmmword_27C839860;
  v176 = unk_27C839870;
  v98 = xmmword_27C8397F0;
  v99 = xmmword_27C839800;
  v169 = xmmword_27C839800;
  v170 = xmmword_27C839810;
  v100 = xmmword_27C839810;
  v101 = xmmword_27C839820;
  v171 = xmmword_27C839820;
  v172 = xmmword_27C839830;
  v102 = xmmword_27C8397E0;
  v167 = xmmword_27C8397E0;
  v168 = xmmword_27C8397F0;
  v91[10] = xmmword_27C839880;
  v91[11] = v93;
  v91[12] = xmmword_27C8398A0;
  v91[6] = v95;
  v91[7] = v96;
  v91[8] = v97;
  v91[9] = v92;
  v91[2] = v99;
  v91[3] = v100;
  v91[4] = v101;
  v91[5] = v94;
  *v91 = v102;
  v91[1] = v98;
  sub_20D93E120(v85, v89 + v90[9], type metadata accessor for DynamicEnergyUsagesCalculations);
  v103 = v150;
  *v89 = v159;
  *(v89 + 8) = v103;
  *(v89 + 16) = v82;
  *(v89 + 24) = v84;
  *(v89 + v90[10]) = v86;
  *(v89 + v90[11]) = 0;
  *(v89 + v90[16]) = &unk_28249BD58;
  v104 = v85;
  if (*(v85 + *(type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0) + 36)))
  {
    sub_20D85D690(&v167, &v164);

    v106 = sub_20D93DDC8(v105, 0, 2);

    *(v89 + v88) = v106;

    v107 = sub_20D972D08();

    sub_20D93EF00(v104, type metadata accessor for DynamicEnergyUsagesCalculations);
    *(v89 + v149) = v107;
  }

  else
  {
    sub_20D85D690(&v167, &v164);
    sub_20D93EF00(v85, type metadata accessor for DynamicEnergyUsagesCalculations);
  }

  v121 = v156;
  v119 = &qword_27C83BD30;
  v120 = &qword_20D97F050;
  sub_20D7EB7E8(v89, v157, &qword_27C83BD30, &qword_20D97F050);
  swift_storeEnumTagMultiPayload();
  sub_20D7EBC4C(&qword_27C83BD80, &qword_27C83BD40, &qword_20D97F060);
  sub_20D7EBC4C(&qword_27C83BD88, &qword_27C83BD30, &qword_20D97F050);
  sub_20D9741B8();
  v122 = v89;
LABEL_16:
  sub_20D7E3944(v122, v119, v120);
  v123 = v161;
  v124 = v153;
  sub_20D7EB7E8(v161, v153, &qword_27C83BD70, &qword_20D97F090);
  v125 = v158;
  sub_20D7EB7E8(v121, v158, &qword_27C83BD48, &qword_20D97F068);
  v126 = v160;
  sub_20D7EB7E8(v124, v160, &qword_27C83BD70, &qword_20D97F090);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD90, &qword_20D97F0A0);
  sub_20D7EB7E8(v125, v126 + *(v127 + 48), &qword_27C83BD48, &qword_20D97F068);
  sub_20D7E3944(v121, &qword_27C83BD48, &qword_20D97F068);
  sub_20D7E3944(v123, &qword_27C83BD70, &qword_20D97F090);
  sub_20D7E3944(v125, &qword_27C83BD48, &qword_20D97F068);
  return sub_20D7E3944(v124, &qword_27C83BD70, &qword_20D97F090);
}

uint64_t sub_20D939458@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BDD8, &qword_20D97F128);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BDE0, &qword_20D97F130);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v32 = &v31 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  sub_20D9740F8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v17 = qword_28112ABE8;
  *v5 = sub_20D9745A8();
  *(v5 + 1) = v18;
  v5[16] = v19 & 1;
  *(v5 + 3) = v20;
  *(v5 + 16) = 257;
  v21 = sub_20D913F54();
  v35 = MEMORY[0x277CE0BD8];
  v36 = &type metadata for HistoricalUsageIntervalView.FilterButtonsType;
  v37 = MEMORY[0x277CE0BC8];
  v38 = v21;
  swift_getOpaqueTypeConformance2();
  sub_20D9747D8();
  v22 = *(v2 + 8);
  v22(v5, v1);
  sub_20D9740F8();
  *v5 = sub_20D9745A8();
  *(v5 + 1) = v23;
  v5[16] = v24 & 1;
  *(v5 + 3) = v25;
  *(v5 + 16) = 256;
  sub_20D9747D8();
  v22(v5, v1);
  v26 = v32;
  sub_20D7EB7E8(v16, v32, &qword_27C83BDE0, &qword_20D97F130);
  v27 = v33;
  sub_20D7EB7E8(v14, v33, &qword_27C83BDE0, &qword_20D97F130);
  v28 = v34;
  sub_20D7EB7E8(v26, v34, &qword_27C83BDE0, &qword_20D97F130);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BDE8, &qword_20D97F138);
  sub_20D7EB7E8(v27, v28 + *(v29 + 48), &qword_27C83BDE0, &qword_20D97F130);
  sub_20D7E3944(v14, &qword_27C83BDE0, &qword_20D97F130);
  sub_20D7E3944(v16, &qword_27C83BDE0, &qword_20D97F130);
  sub_20D7E3944(v27, &qword_27C83BDE0, &qword_20D97F130);
  return sub_20D7E3944(v26, &qword_27C83BDE0, &qword_20D97F130);
}

uint64_t sub_20D939874(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2)
  {
    v4 = sub_20D9757C8();

    if ((v4 & 1) == 0)
    {
      if (qword_281125088 != -1)
      {
        swift_once();
      }

      v5 = sub_20D9734F8();
      __swift_project_value_buffer(v5, qword_28112AB78);
      v6 = sub_20D9734D8();
      v7 = sub_20D975478();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *&v20 = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, &v20);
        _os_log_impl(&dword_20D7C9000, v6, v7, "%s clearing pricing index", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x20F324260](v9, -1, -1);
        MEMORY[0x20F324260](v8, -1, -1);
      }

      v10 = *(type metadata accessor for FilterButtonsAndPickerView(0) + 32);
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v11 = sub_20D9734F8();
  __swift_project_value_buffer(v11, qword_28112AB78);
  v12 = sub_20D9734D8();
  v13 = sub_20D975478();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v20 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, &v20);
    _os_log_impl(&dword_20D7C9000, v12, v13, "%s clearing grid quality index", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  v10 = *(type metadata accessor for FilterButtonsAndPickerView(0) + 28);
LABEL_14:
  v16 = (a3 + v10);
  v17 = *v16;
  v18 = *(v16 + 2);
  LOBYTE(v16) = *(v16 + 24);
  v20 = v17;
  v21 = v18;
  v22 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
  return sub_20D974B28();
}

uint64_t sub_20D939B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD40, &qword_20D97F060);
  v15 = MEMORY[0x277D84F98];
  v33 = v14[12];
  *(a7 + v33) = MEMORY[0x277D84F98];
  v34 = v14[13];
  *(a7 + v34) = v15;
  *(a7 + v14[14]) = MEMORY[0x277D84F90];
  v16 = (a7 + v14[15]);
  if (qword_27C838450 != -1)
  {
    swift_once();
  }

  v17 = unk_27C839870;
  v36[10] = xmmword_27C839880;
  v36[11] = xmmword_27C839890;
  v18 = xmmword_27C839890;
  v36[12] = xmmword_27C8398A0;
  v19 = xmmword_27C839830;
  v20 = xmmword_27C839840;
  v36[6] = xmmword_27C839840;
  v36[7] = xmmword_27C839850;
  v21 = xmmword_27C839850;
  v22 = xmmword_27C839860;
  v36[8] = xmmword_27C839860;
  v36[9] = unk_27C839870;
  v23 = xmmword_27C8397F0;
  v24 = xmmword_27C839800;
  v36[2] = xmmword_27C839800;
  v36[3] = xmmword_27C839810;
  v25 = xmmword_27C839810;
  v26 = xmmword_27C839820;
  v36[4] = xmmword_27C839820;
  v36[5] = xmmword_27C839830;
  v27 = xmmword_27C8397E0;
  v36[0] = xmmword_27C8397E0;
  v36[1] = xmmword_27C8397F0;
  v16[10] = xmmword_27C839880;
  v16[11] = v18;
  v16[12] = xmmword_27C8398A0;
  v16[6] = v20;
  v16[7] = v21;
  v16[8] = v22;
  v16[9] = v17;
  v16[2] = v24;
  v16[3] = v25;
  v16[4] = v26;
  v16[5] = v19;
  *v16 = v27;
  v16[1] = v23;
  sub_20D93E120(a5, a7 + v14[9], type metadata accessor for DynamicEnergyUsagesCalculations);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + v14[10]) = &type metadata for FilterButtonsAndPickerView.PricingFilterButton;
  *(a7 + v14[11]) = a6;
  if (a6)
  {
    sub_20D85D690(v36, v35);

    v29 = sub_20D938268(v28);

    v35[0] = v29;

    sub_20D93D554(v35);

    *(a7 + v14[16]) = v35[0];
  }

  else
  {
    *(a7 + v14[16]) = MEMORY[0x277D84F90];
    sub_20D85D690(v36, v35);
  }

  v30 = *(a5 + *(type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0) + 32));
  if (!v30)
  {
    return sub_20D93EF00(a5, type metadata accessor for DynamicEnergyUsagesCalculations);
  }

  *(a7 + v33) = sub_20D93DDC8(v30, 0, 4);

  v31 = sub_20D972D08();

  result = sub_20D93EF00(a5, type metadata accessor for DynamicEnergyUsagesCalculations);
  *(a7 + v34) = v31;
  return result;
}

uint64_t sub_20D939E24()
{
  v3 = *v0;
  v4 = *(v0 + 2);
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
  sub_20D974B48();
  return v2;
}

uint64_t sub_20D939E8C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D974158();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD28, &qword_20D97F048);
  return sub_20D938484(v1, a1 + *(v3 + 44));
}

uint64_t sub_20D939EFC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A590, &qword_20D97B800);
  v36 = v6;
  v7 = *(a1 + 16);
  v34 = sub_20D7EBC4C(&qword_27C83BEC8, &qword_27C83A590, &qword_20D97B800);
  v43 = v6;
  v44 = MEMORY[0x277D83B88];
  v45 = v7;
  v46 = v34;
  v47 = MEMORY[0x277D83B98];
  v8 = sub_20D974BB8();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v32 = &KeyPath - v10;
  v11 = sub_20D973DA8();
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v33 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v37 = &KeyPath - v15;
  v16 = *(a1 + 64);
  v31 = v2;
  v43 = *(v2 + v16);
  KeyPath = swift_getKeyPath();
  (*(v4 + 16))(&KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v19 = *(a1 + 24);
  *(v18 + 16) = v7;
  *(v18 + 24) = v19;
  (*(v4 + 32))(v18 + v17, &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v20 = *(v19 + 8);

  v21 = v32;
  sub_20D974B98();
  sub_20D974338();
  v22 = *(v31 + *(a1 + 60) + 104);
  v42 = v20;
  WitnessTable = swift_getWitnessTable();
  v24 = v33;
  sub_20D974818();
  (*(v38 + 8))(v21, v8);
  v40 = WitnessTable;
  v41 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v25 = v35;
  v26 = *(v35 + 16);
  v27 = v37;
  v26(v37, v24, v11);
  v28 = *(v25 + 8);
  v28(v24, v11);
  v26(v39, v27, v11);
  return (v28)(v27, v11);
}

uint64_t sub_20D93A344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v37 = a4;
  v6 = *(a3 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  v14 = *v11;
  v36 = v15;
  v16 = type metadata accessor for FilterButtonsAndPickerView.CategoryFilterButtonsView();
  v34 = *(*(a2 + v16[16]) + 16);
  v35 = v14;
  v17 = *(a2 + v16[13]);
  if (*(v17 + 16) && (v18 = sub_20D8D4AC0(v14), (v19 & 1) != 0))
  {
    v33 = 0;
    v32 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    v32 = 0;
    v33 = 1;
  }

  v20 = sub_20D939E24();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a2 + v16[9];
  v31 = *(v27 + *(type metadata accessor for DynamicEnergyUsagesCalculations(0) + 24));
  (*(v36 + 16))(v35, v34, v32, v33, v20, v22, v24, v26 & 1, v31, a3, v36);
  v28 = v6[2];
  v28(v13, v10, a3);
  v29 = v6[1];
  v29(v10, a3);
  v28(v37, v13, a3);
  return (v29)(v13, a3);
}

double sub_20D93A56C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v11 = a3;
  if (qword_27C838450 != -1)
  {
    v35 = a2;
    v37 = a8;
    v38 = a4;
    swift_once();
    a2 = v35;
    a4 = v38;
    a8 = v37;
    v11 = a3;
  }

  v43 = a2;
  v48[10] = xmmword_27C839880;
  v48[11] = xmmword_27C839890;
  v48[12] = xmmword_27C8398A0;
  v48[6] = xmmword_27C839840;
  v48[7] = xmmword_27C839850;
  v48[8] = xmmword_27C839860;
  v48[9] = unk_27C839870;
  v48[2] = xmmword_27C839800;
  v48[3] = xmmword_27C839810;
  v48[4] = xmmword_27C839820;
  v48[5] = xmmword_27C839830;
  v48[0] = xmmword_27C8397E0;
  v48[1] = xmmword_27C8397F0;
  *&v45[150] = unk_27C839870;
  *&v45[166] = xmmword_27C839880;
  *&v45[182] = xmmword_27C839890;
  *&v45[198] = xmmword_27C8398A0;
  *&v45[86] = xmmword_27C839830;
  *&v45[102] = xmmword_27C839840;
  *&v45[118] = xmmword_27C839850;
  *&v45[134] = xmmword_27C839860;
  *&v45[22] = xmmword_27C8397F0;
  *&v45[38] = xmmword_27C839800;
  *&v45[54] = xmmword_27C839810;
  *&v45[70] = xmmword_27C839820;
  *&v45[6] = xmmword_27C8397E0;
  v47 = a4 & 1;
  v46 = a8 & 1;
  if (a4)
  {
    sub_20D85D690(v48, v44);
    v14 = 0xE300000000000000;
    v15 = 7104878;
  }

  else
  {
    sub_20D85D690(v48, v44);
    v15 = sub_20D9757A8();
    v14 = v16;
  }

  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v17 = sub_20D9734F8();
  __swift_project_value_buffer(v17, qword_28112AB78);

  v18 = sub_20D9734D8();
  v19 = sub_20D975478();

  if (os_log_type_enabled(v18, v19))
  {
    v39 = v11;
    v20 = swift_slowAlloc();
    v40 = a5;
    v21 = swift_slowAlloc();
    v44[0] = v21;
    *v20 = 136315906;
    *(v20 + 4) = sub_20D7F4DC8(0xD00000000000003FLL, 0x800000020D98AF70, v44);
    *(v20 + 12) = 2048;
    *(v20 + 14) = a1;
    *(v20 + 22) = 2048;
    v22 = v43;
    *(v20 + 24) = v43;
    *(v20 + 32) = 2080;
    v23 = sub_20D7F4DC8(v15, v14, v44);

    *(v20 + 34) = v23;
    _os_log_impl(&dword_20D7C9000, v18, v19, "PricingFilterButton:%s %ld (of %ld): %s", v20, 0x2Au);
    swift_arrayDestroy();
    v24 = v21;
    a5 = v40;
    MEMORY[0x20F324260](v24, -1, -1);
    v25 = v20;
    v11 = v39;
    MEMORY[0x20F324260](v25, -1, -1);
  }

  else
  {

    v22 = v43;
  }

  v26 = *&v45[176];
  *(a9 + 218) = *&v45[160];
  *(a9 + 234) = v26;
  *(a9 + 250) = *&v45[192];
  v27 = *&v45[112];
  *(a9 + 154) = *&v45[96];
  *(a9 + 170) = v27;
  v28 = *&v45[144];
  *(a9 + 186) = *&v45[128];
  *(a9 + 202) = v28;
  v29 = *&v45[48];
  *(a9 + 90) = *&v45[32];
  *(a9 + 106) = v29;
  v30 = *&v45[80];
  *(a9 + 122) = *&v45[64];
  *(a9 + 138) = v30;
  result = *v45;
  v32 = *&v45[16];
  *(a9 + 58) = *v45;
  v33 = v47;
  v34 = v46;
  *a9 = a1;
  *(a9 + 8) = v22;
  *(a9 + 16) = v11;
  *(a9 + 24) = v33;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v34;
  *(a9 + 57) = a10 & 1;
  *(a9 + 264) = *&v45[206];
  *(a9 + 74) = v32;
  return result;
}

uint64_t sub_20D93A92C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  memcpy(v48, v1, sizeof(v48));
  v6 = v48[0];
  v40 = *&v48[0];
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = *(&v48[0] + 1);
  PeakPeriodAttributes.variableValue.getter();
  v7 = sub_20D9749A8();
  v49 = *&v48[1];
  v50 = BYTE8(v48[1]);
  v40 = v6;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = *(&v6 + 1);
  v8 = PeakPeriodAttributes.peakName.getter();
  v37 = v9;
  v38 = v8;

  v47[0] = v48[2];
  *(v47 + 9) = *(&v48[2] + 9);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
  MEMORY[0x20F322CD0](&v45, v10);
  v11 = v45;
  v12 = v46;
  v13 = *&v48[5];
  v14 = BYTE9(v48[3]);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B150, &qword_20D97D200);
  swift_storeEnumTagMultiPayload();
  v15 = v2[5];
  *(v5 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  swift_storeEnumTagMultiPayload();
  *(v5 + v2[6]) = v6;
  v16 = v5 + v2[7];
  *v16 = v49;
  v16[8] = v50;
  v17 = (v5 + v2[8]);
  v18 = v37;
  *v17 = v38;
  v17[1] = v18;
  *(v5 + v2[9]) = v7;
  v19 = v5 + v2[10];
  *v19 = v11;
  v19[8] = v12;
  *(v5 + v2[11]) = v13;
  *(v5 + v2[12]) = 0;
  *(v5 + v2[13]) = v14;
  v20 = v2[14];
  v21 = qword_27C838450;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = unk_27C839870;
  v47[10] = xmmword_27C839880;
  v47[11] = xmmword_27C839890;
  v23 = xmmword_27C839890;
  v47[12] = xmmword_27C8398A0;
  v24 = xmmword_27C839830;
  v25 = xmmword_27C839840;
  v47[6] = xmmword_27C839840;
  v47[7] = xmmword_27C839850;
  v26 = xmmword_27C839850;
  v27 = xmmword_27C839860;
  v47[8] = xmmword_27C839860;
  v47[9] = unk_27C839870;
  v28 = xmmword_27C8397F0;
  v29 = xmmword_27C839800;
  v47[2] = xmmword_27C839800;
  v47[3] = xmmword_27C839810;
  v30 = xmmword_27C839810;
  v31 = xmmword_27C839820;
  v47[4] = xmmword_27C839820;
  v47[5] = xmmword_27C839830;
  v32 = xmmword_27C8397E0;
  v47[0] = xmmword_27C8397E0;
  v47[1] = xmmword_27C8397F0;
  v33 = (v5 + v20);
  v33[10] = xmmword_27C839880;
  v33[11] = v23;
  v33[12] = xmmword_27C8398A0;
  v33[6] = v25;
  v33[7] = v26;
  v33[8] = v27;
  v33[9] = v22;
  v33[2] = v29;
  v33[3] = v30;
  v33[4] = v31;
  v33[5] = v24;
  *v33 = v32;
  v33[1] = v28;
  v34 = swift_allocObject();
  memcpy((v34 + 16), v48, 0x110uLL);
  sub_20D85D690(v47, &v40);
  sub_20D93EF68(v48, &v40);
  sub_20D93EEB8(&qword_27C83BED8, type metadata accessor for FilterButtonsAndPickerView.UsageFilterView);
  sub_20D974748();

  return sub_20D93EF00(v5, type metadata accessor for FilterButtonsAndPickerView.UsageFilterView);
}

uint64_t sub_20D93AD10(uint64_t a1)
{
  v17[0] = *(a1 + 32);
  *(v17 + 9) = *(a1 + 41);
  *v14 = *(a1 + 32);
  *(&v14[1] + 1) = *(a1 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
  MEMORY[0x20F322CD0](&v15);
  v2 = *a1;
  if ((v16 & 1) != 0 || v15 != v2)
  {
    if (qword_281125088 != -1)
    {
      swift_once();
    }

    v8 = sub_20D9734F8();
    __swift_project_value_buffer(v8, qword_28112AB78);
    sub_20D93EF68(a1, v14);
    v9 = sub_20D9734D8();
    v10 = sub_20D975478();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, v14);
      *(v11 + 12) = 2048;
      *(v11 + 14) = v2;
      sub_20D93EFA0(a1);
      _os_log_impl(&dword_20D7C9000, v9, v10, "%s setting selected index to %ld", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F324260](v12, -1, -1);
      MEMORY[0x20F324260](v11, -1, -1);
    }

    else
    {
      sub_20D93EFA0(a1);
    }

    *v14 = v17[0];
    *(&v14[1] + 1) = *(v17 + 9);
    v15 = v2;
    v16 = 0;
  }

  else
  {
    if (qword_281125088 != -1)
    {
      swift_once();
    }

    v3 = sub_20D9734F8();
    __swift_project_value_buffer(v3, qword_28112AB78);
    v4 = sub_20D9734D8();
    v5 = sub_20D975478();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, v14);
      _os_log_impl(&dword_20D7C9000, v4, v5, "%s clearing selected index", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x20F324260](v7, -1, -1);
      MEMORY[0x20F324260](v6, -1, -1);
    }

    *v14 = v17[0];
    *(&v14[1] + 1) = *(v17 + 9);
    v15 = 0;
    v16 = 1;
  }

  return sub_20D974B28();
}

uint64_t sub_20D93B03C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  sub_20D7EB7E8(v1 + *(v12 + 40), v11, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973D58();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_20D93B244@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  sub_20D7EB7E8(v1 + *(v12 + 44), v11, &qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973B18();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_20D93B44C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  if (qword_27C838450 != -1)
  {
    swift_once();
  }

  v16 = unk_27C839870;
  v45[10] = xmmword_27C839880;
  v45[11] = xmmword_27C839890;
  v17 = xmmword_27C839890;
  v45[12] = xmmword_27C8398A0;
  v18 = xmmword_27C839830;
  v19 = xmmword_27C839840;
  v45[6] = xmmword_27C839840;
  v45[7] = xmmword_27C839850;
  v20 = xmmword_27C839850;
  v21 = xmmword_27C839860;
  v45[8] = xmmword_27C839860;
  v45[9] = unk_27C839870;
  v22 = xmmword_27C8397F0;
  v23 = xmmword_27C839800;
  v45[2] = xmmword_27C839800;
  v45[3] = xmmword_27C839810;
  v24 = xmmword_27C839810;
  v25 = xmmword_27C839820;
  v45[4] = xmmword_27C839820;
  v45[5] = xmmword_27C839830;
  v26 = xmmword_27C8397E0;
  v45[0] = xmmword_27C8397E0;
  v45[1] = xmmword_27C8397F0;
  *(a9 + 224) = xmmword_27C839880;
  *(a9 + 240) = v17;
  *(a9 + 256) = xmmword_27C8398A0;
  *(a9 + 160) = v19;
  *(a9 + 176) = v20;
  *(a9 + 192) = v21;
  *(a9 + 208) = v16;
  *(a9 + 96) = v23;
  *(a9 + 112) = v24;
  *(a9 + 128) = v25;
  *(a9 + 144) = v18;
  *(a9 + 64) = v26;
  *(a9 + 80) = v22;
  v27 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  v28 = *(v27 + 40);
  *(a9 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v29 = *(v27 + 44);
  *(a9 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  swift_storeEnumTagMultiPayload();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10 & 1;
  v30 = a2;
  v31 = a1;
  sub_20D85D690(v45, v44);
  if (a4)
  {
    v32 = 0xE300000000000000;
    v33 = 7104878;
  }

  else
  {
    v33 = sub_20D9757A8();
    v32 = v34;
  }

  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v35 = sub_20D9734F8();
  __swift_project_value_buffer(v35, qword_28112AB78);

  v36 = sub_20D9734D8();
  v37 = sub_20D975478();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v38 = 136315906;
    *(v38 + 4) = sub_20D7F4DC8(0xD00000000000003FLL, 0x800000020D98AF70, v44);
    *(v38 + 12) = 2048;
    *(v38 + 14) = v31;
    *(v38 + 22) = 2048;
    *(v38 + 24) = v30;
    *(v38 + 32) = 2080;
    v40 = sub_20D7F4DC8(v33, v32, v44);

    *(v38 + 34) = v40;
    _os_log_impl(&dword_20D7C9000, v36, v37, "GridQualityFilterButton:%s %ld (of %ld): %s", v38, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v39, -1, -1);
    MEMORY[0x20F324260](v38, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_20D93B7D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  v96 = *(v4 - 8);
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_20D973D58();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  MEMORY[0x28223BE20](v6);
  v93 = &v77[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = sub_20D973B18();
  v9 = *(v92 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v92);
  v13 = &v77[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v77[-v14];
  v16 = type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v77[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BED0, &qword_20D97F380);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v77[-v24];
  v26 = *v2;
  if (*v2 == 2)
  {
    v86 = 2;
    v87 = v25;
    v97 = v23;
    v88 = v22;
    v90 = &v77[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v35 = *(v2 + 16);
    v84 = *(v2 + 24);
    v36 = sub_20D8E52A0(2);
    v82 = v37;
    v83 = v36;
    v91 = a1;
    v89 = v5;
    v85 = v35;
    if (qword_281126F20 != -1)
    {
      swift_once();
      v81 = 2;
      v30 = &qword_28112ABF0;
      goto LABEL_14;
    }

    v30 = &qword_28112ABF0;
    v34 = 2;
LABEL_13:
    v81 = v34;
    goto LABEL_14;
  }

  if (v26 == 1)
  {
    v86 = 1;
    v87 = v25;
    v97 = v23;
    v88 = v22;
    v90 = &v77[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v31 = *(v2 + 16);
    v84 = *(v2 + 24);
    v32 = sub_20D8E52A0(1);
    v82 = v33;
    v83 = v32;
    v91 = a1;
    v89 = v5;
    v85 = v31;
    if (qword_281124D98 != -1)
    {
      swift_once();
      v81 = 1;
      v30 = &qword_28112AB68;
LABEL_14:
      v80 = *v30;

      v38 = *(v2 + 48);
      v39 = *(v2 + 56);
      v100 = *(v2 + 32);
      *&v101 = v38;
      BYTE8(v101) = v39;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
      MEMORY[0x20F322CD0](&v98, v40);
      v79 = v98;
      v78 = v99;
      sub_20D93B244(v15);
      v41 = v13;
      v42 = v13;
      v43 = v92;
      (*(v9 + 104))(v42, *MEMORY[0x277CDF3C0], v92);
      v44 = sub_20D973B08();
      v45 = *(v9 + 8);
      v45(v41, v43);
      v45(v15, v43);
      v46 = v93;
      sub_20D93B03C(v93);
      v47 = sub_20D973D38();
      (*(v94 + 8))(v46, v95);
      v48 = sub_20D8E5420(v44 & 1, v47 & 1, v81);
      v49 = *(v2 + 57);
      *v19 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B150, &qword_20D97D200);
      swift_storeEnumTagMultiPayload();
      v50 = v16[5];
      *(v19 + v50) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
      swift_storeEnumTagMultiPayload();
      v51 = v85;
      *(v19 + v16[6]) = v86;
      v52 = v19 + v16[7];
      *v52 = v51;
      v52[8] = v84;
      v53 = (v19 + v16[8]);
      v54 = v82;
      *v53 = v83;
      v53[1] = v54;
      v55 = v79;
      *(v19 + v16[9]) = v80;
      v56 = v19 + v16[10];
      *v56 = v55;
      v56[8] = v78;
      *(v19 + v16[11]) = v48;
      *(v19 + v16[12]) = 1;
      *(v19 + v16[13]) = v49;
      v57 = (v19 + v16[14]);
      if (qword_27C838450 != -1)
      {
        swift_once();
      }

      v58 = unk_27C839870;
      v110 = xmmword_27C839880;
      v111 = xmmword_27C839890;
      v59 = xmmword_27C839890;
      v112 = xmmword_27C8398A0;
      v60 = xmmword_27C839830;
      v61 = xmmword_27C839840;
      v106 = xmmword_27C839840;
      v107 = xmmword_27C839850;
      v62 = xmmword_27C839850;
      v63 = xmmword_27C839860;
      v108 = xmmword_27C839860;
      v109 = unk_27C839870;
      v64 = xmmword_27C8397F0;
      v65 = xmmword_27C839800;
      v102 = xmmword_27C839800;
      v103 = xmmword_27C839810;
      v66 = xmmword_27C839810;
      v67 = xmmword_27C839820;
      v104 = xmmword_27C839820;
      v105 = xmmword_27C839830;
      v68 = xmmword_27C8397E0;
      v100 = xmmword_27C8397E0;
      v101 = xmmword_27C8397F0;
      v57[10] = xmmword_27C839880;
      v57[11] = v59;
      v57[12] = xmmword_27C8398A0;
      v57[6] = v61;
      v57[7] = v62;
      v57[8] = v63;
      v57[9] = v58;
      v57[2] = v65;
      v57[3] = v66;
      v57[4] = v67;
      v57[5] = v60;
      *v57 = v68;
      v57[1] = v64;
      v69 = v90;
      sub_20D93E120(v2, v90, type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton);
      v70 = (*(v96 + 80) + 16) & ~*(v96 + 80);
      v71 = swift_allocObject();
      sub_20D93EDF0(v69, v71 + v70, type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton);
      sub_20D85D690(&v100, &v98);
      sub_20D93EEB8(&qword_27C83BED8, type metadata accessor for FilterButtonsAndPickerView.UsageFilterView);
      v72 = v87;
      sub_20D974748();

      sub_20D93EF00(v19, type metadata accessor for FilterButtonsAndPickerView.UsageFilterView);
      v73 = v91;
      v74 = v88;
      (*(v97 + 32))(v91, v72, v88);
      return (*(v97 + 56))(v73, 0, 1, v74);
    }

    v30 = &qword_28112AB68;
    v34 = 1;
    goto LABEL_13;
  }

  if (!v26)
  {
    v86 = 0;
    v87 = v25;
    v97 = v23;
    v88 = v22;
    v90 = &v77[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v27 = *(v2 + 16);
    v84 = *(v2 + 24);
    v28 = sub_20D8E52A0(0);
    v82 = v29;
    v83 = v28;
    v91 = a1;
    v89 = v5;
    v85 = v27;
    if (qword_27C838750 != -1)
    {
      swift_once();
    }

    v81 = 0;
    v30 = &qword_27C840E70;
    goto LABEL_14;
  }

  v76 = *(v23 + 56);

  return v76(a1, 1, 1);
}

uint64_t sub_20D93C048(uint64_t a1)
{
  v2 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
  MEMORY[0x20F322CD0](&v30);
  v11 = *a1;
  if ((v31 & 1) != 0 || v30 != v11)
  {
    if (qword_281125088 != -1)
    {
      swift_once();
    }

    v17 = sub_20D9734F8();
    __swift_project_value_buffer(v17, qword_28112AB78);
    sub_20D93E120(a1, v5, type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton);
    v18 = sub_20D9734D8();
    v19 = sub_20D975478();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      v29[1] = v10;
      v32 = v29[0];
      *v20 = 136315394;
      *(v20 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, &v32);
      *(v20 + 12) = 2048;
      v21 = v11;
      v22 = v9;
      v23 = v8;
      v24 = v7;
      v25 = v6;
      v26 = *v5;
      sub_20D93EF00(v5, type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton);
      *(v20 + 14) = v26;
      v6 = v25;
      v7 = v24;
      v8 = v23;
      v9 = v22;
      v11 = v21;
      _os_log_impl(&dword_20D7C9000, v18, v19, "%s setting selected index to %ld", v20, 0x16u);
      v27 = v29[0];
      __swift_destroy_boxed_opaque_existential_0(v29[0]);
      MEMORY[0x20F324260](v27, -1, -1);
      MEMORY[0x20F324260](v20, -1, -1);
    }

    else
    {
      sub_20D93EF00(v5, type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton);
    }

    v32 = v6;
    v33 = v7;
    v34 = v8;
    v35 = v9;
    v30 = v11;
    v31 = 0;
  }

  else
  {
    if (qword_281125088 != -1)
    {
      swift_once();
    }

    v12 = sub_20D9734F8();
    __swift_project_value_buffer(v12, qword_28112AB78);
    v13 = sub_20D9734D8();
    v14 = sub_20D975478();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, &v32);
      _os_log_impl(&dword_20D7C9000, v13, v14, "%s clearing selected index", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x20F324260](v16, -1, -1);
      MEMORY[0x20F324260](v15, -1, -1);
    }

    v32 = v6;
    v33 = v7;
    v34 = v8;
    v35 = v9;
    v30 = 0;
    v31 = 1;
  }

  return sub_20D974B28();
}

uint64_t sub_20D93C414@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF10, &qword_20D97F490);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF18, &qword_20D97F498);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF20, &qword_20D97F4A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v39 - v14;
  v39[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF28, &qword_20D97F4A8);
  v16 = *(*(v39[0] - 8) + 64);
  MEMORY[0x28223BE20](v39[0]);
  v18 = v39 - v17;
  *v6 = sub_20D974088();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF30, &qword_20D97F4B0);
  sub_20D93C8C0(v2, &v6[*(v19 + 44)]);
  v20 = sub_20D974388();
  KeyPath = swift_getKeyPath();
  v22 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF38, &qword_20D97F4B8) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  *&v6[*(v3 + 36)] = sub_20D974248();
  sub_20D9743F8();
  sub_20D93F284();
  sub_20D974708();
  sub_20D7E3944(v6, &qword_27C83BF10, &qword_20D97F490);
  *&v11[*(v8 + 44)] = sub_20D93CF2C();
  v23 = type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
  v24 = v23;
  v25 = v2 + v23[10];
  if ((*(v25 + 8) & 1) != 0 || *v25 != *(v2 + v23[6]))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_20D979110;
    v30 = [objc_opt_self() tertiarySystemFillColor];
    *(v29 + 32) = sub_20D974888();
    v26 = MEMORY[0x20F322D80](v29);
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    v26 = *(v2 + v23[11]);

    v27 = 0x657463656C65532ELL;
    v28 = 0xE900000000000064;
  }

  v31 = sub_20D974318();
  sub_20D7EAF18(v11, v15, &qword_27C83BF18, &qword_20D97F498);
  v32 = &v15[*(v12 + 36)];
  *v32 = v26;
  v32[8] = v31;
  v33 = *(v2 + v24[14] + 152);
  v34 = &v18[*(v39[0] + 36)];
  v35 = *(sub_20D973DE8() + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_20D974118();
  (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
  *v34 = v33;
  *(v34 + 1) = v33;
  *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550) + 36)] = 256;
  sub_20D7EAF18(v15, v18, &qword_27C83BF20, &qword_20D97F4A0);
  v39[2] = 0;
  v39[3] = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000003ELL, 0x800000020D98AFB0);
  MEMORY[0x20F323340](*(v2 + v24[8]), *(v2 + v24[8] + 8));
  MEMORY[0x20F323340](v27, v28);

  sub_20D93F420();
  sub_20D9747D8();

  return sub_20D7E3944(v18, &qword_27C83BF28, &qword_20D97F4A8);
}

uint64_t sub_20D93C8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF88, &qword_20D97F4D0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v37 - v10;
  v37[6] = a1;
  v37[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF90, &qword_20D97F4D8);
  sub_20D93F6E8();
  sub_20D974A18();
  v12 = sub_20D974348();
  v13 = &v11[*(v5 + 44)];
  *v13 = v12;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  v13[40] = 1;
  v14 = sub_20D93CD08();
  v16 = v15;
  v17 = sub_20D974378();
  v18 = *(a1 + *(type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0) + 56) + 144);
  sub_20D973AD8();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v39) = 0;
  v38 = 0;
  LOBYTE(a1) = sub_20D974308();
  LOBYTE(v45[0]) = 1;
  sub_20D7EB7E8(v11, v9, &qword_27C83BF88, &qword_20D97F4D0);
  sub_20D7EB7E8(v9, a2, &qword_27C83BF88, &qword_20D97F4D0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFB0, &qword_20D97F4E8);
  v28 = a2 + *(v27 + 48);
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = (a2 + *(v27 + 64));
  *&v39 = v14;
  *(&v39 + 1) = v16;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = MEMORY[0x277D84F90];
  LOBYTE(v41) = v17;
  *(&v41 + 1) = v20;
  *&v42 = v22;
  *(&v42 + 1) = v24;
  *&v43 = v26;
  BYTE8(v43) = 0;
  LOBYTE(v44[0]) = a1;
  *(v44 + 8) = 0u;
  *(&v44[1] + 8) = 0u;
  BYTE8(v44[2]) = 1;
  v30 = v39;
  v31 = v40;
  v32 = v42;
  v29[2] = v41;
  v29[3] = v32;
  *v29 = v30;
  v29[1] = v31;
  v33 = v43;
  v34 = v44[0];
  v35 = v44[1];
  *(v29 + 105) = *(&v44[1] + 9);
  v29[5] = v34;
  v29[6] = v35;
  v29[4] = v33;
  sub_20D7EB7E8(&v39, v45, &qword_27C83BFB8, &qword_20D97F4F0);
  sub_20D7E3944(v11, &qword_27C83BF88, &qword_20D97F4D0);
  v45[0] = v14;
  v45[1] = v16;
  v46 = 0;
  v47 = MEMORY[0x277D84F90];
  v48 = v17;
  v49 = v20;
  v50 = v22;
  v51 = v24;
  v52 = v26;
  v53 = 0;
  v54 = a1;
  v55 = 0u;
  v56 = 0u;
  v57 = 1;
  sub_20D7E3944(v45, &qword_27C83BFB8, &qword_20D97F4F0);
  return sub_20D7E3944(v9, &qword_27C83BF88, &qword_20D97F4D0);
}

uint64_t sub_20D93CBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C48, &qword_20D977500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = *(a1 + *(type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0) + 36));
  sub_20D974198();
  v9 = sub_20D9741A8();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = sub_20D9749E8();
  sub_20D7E3944(v7, &qword_27C838C48, &qword_20D977500);
  v11 = sub_20D974248();
  result = sub_20D974258();
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 12) = result;
  return result;
}

uint64_t sub_20D93CD08()
{
  v1 = sub_20D9726E8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E0, &unk_20D97D7B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
  if (*(v0 + *(v8 + 52)) == 1)
  {
    v9 = v0 + *(v8 + 28);
    if (*(v9 + 8))
    {
      return 11565;
    }

    else
    {
      v12[1] = *v9;
      sub_20D9726A8();
      sub_20D85CBD0();
      sub_20D972058();
      sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0);
      sub_20D975588();
      (*(v4 + 8))(v7, v3);
      return v12[2];
    }
  }

  else
  {
    if (qword_27C838748 != -1)
    {
      swift_once();
    }

    v10 = qword_27C840E60;
  }

  return v10;
}

uint64_t sub_20D93CF2C()
{
  v1 = v0;
  v2 = sub_20D973B18();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = sub_20D974138();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  sub_20D90851C(&v30 - v14);
  v16 = v9[13];
  v36 = *MEMORY[0x277CE0220];
  v35 = v16;
  v16(v13);
  v17 = sub_20D973B08();
  v18 = v9[1];
  v18(v13, v8);
  v37 = v18;
  v18(v15, v8);
  if (v17)
  {
    v30 = type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
    v19 = v1 + v30[5];
    sub_20D9084F4(v7);
    v21 = v33;
    v20 = v34;
    (*(v33 + 104))(v34, *MEMORY[0x277CDF3C0], v2);
    v31 = sub_20D973B08();
    v32 = v1;
    v22 = *(v21 + 8);
    v22(v20, v2);
    v22(v7, v2);
    v1 = v32;
    if (v31)
    {
      v23 = v32 + v30[10];
      if ((*(v23 + 8) & 1) == 0 && *v23 == *(v32 + v30[6]))
      {
        return sub_20D9748E8();
      }
    }
  }

  sub_20D90851C(v15);
  v35(v13, v36, v8);
  v25 = sub_20D973B08();
  v26 = v37;
  v37(v13, v8);
  v26(v15, v8);
  if (v25)
  {
    v27 = type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
    v28 = v1 + *(v27 + 40);
    if ((*(v28 + 8) & 1) == 0 && *v28 == *(v1 + *(v27 + 24)))
    {
      return sub_20D974918();
    }
  }

  v29 = [objc_opt_self() labelColor];
  return sub_20D974888();
}