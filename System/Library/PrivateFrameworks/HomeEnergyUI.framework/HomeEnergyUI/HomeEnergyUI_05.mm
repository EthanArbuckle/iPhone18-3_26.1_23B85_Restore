uint64_t sub_20D855370(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_20D855470, 0, 0);
}

uint64_t sub_20D855470()
{
  v77 = v0;
  if (!*(v0 + 144))
  {
LABEL_8:
    v18 = *(v0 + 128);
    sub_20D855EB0(*(v0 + 80), *(v0 + 48), type metadata accessor for HistoricalUsageWidgetCommon.Home);
    v19 = sub_20D9734D8();
    v20 = sub_20D975458();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 80);
    v23 = *(v0 + 48);
    if (v21)
    {
      v24 = *(v0 + 32);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v76 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_20D7F4DC8(0xD00000000000002BLL, 0x800000020D984A80, &v76);
      *(v25 + 12) = 2080;
      v27 = (v23 + *(v24 + 20));
      v28 = *v27;
      v29 = v27[1];

      sub_20D855E50(v23, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      v30 = sub_20D7F4DC8(v28, v29, &v76);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_20D7C9000, v19, v20, "%s Onboarded site can not be found for home'%s': ignoring", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v26, -1, -1);
      MEMORY[0x20F324260](v25, -1, -1);
    }

    else
    {

      sub_20D855E50(v23, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    }

    v31 = v22;
    goto LABEL_14;
  }

  v1 = *(v0 + 144);

  v2 = sub_20D972C88();

  if ((v2 & 1) == 0)
  {

    goto LABEL_8;
  }

  if (qword_281125098 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  __swift_project_value_buffer(*(v0 + 120), qword_2811250A0);
  sub_20D855EB0(v3, v4, type metadata accessor for HistoricalUsageWidgetCommon.Home);

  v5 = sub_20D9734D8();
  v6 = sub_20D975478();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 56);
  if (v7)
  {
    v75 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v76 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_20D7F4DC8(0xD00000000000002BLL, 0x800000020D984A80, &v76);
    *(v9 + 12) = 2080;
    v11 = sub_20D972C68();
    v13 = sub_20D7F4DC8(v11, v12, &v76);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2080;
    v14 = (v8 + *(v75 + 20));
    v15 = *v14;
    v16 = v14[1];

    sub_20D855E50(v8, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    v17 = sub_20D7F4DC8(v15, v16, &v76);

    *(v9 + 24) = v17;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s Site %s onboarded for '%s', adding to dict...", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  else
  {

    sub_20D855E50(v8, type metadata accessor for HistoricalUsageWidgetCommon.Home);
  }

  v32 = *(v0 + 80);

  sub_20D854B08(v33, v32);

  v31 = v32;
LABEL_14:
  sub_20D855E50(v31, type metadata accessor for HistoricalUsageWidgetCommon.Home);
  v34 = *(v0 + 112) + 1;
  if (v34 == *(v0 + 88))
  {
    if (qword_281125098 != -1)
    {
      swift_once();
    }

    v35 = sub_20D9734F8();
    __swift_project_value_buffer(v35, qword_2811250A0);
    v36 = *(v0 + 16);

    v37 = sub_20D9734D8();
    v38 = sub_20D975478();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v76 = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_20D7F4DC8(0xD00000000000002BLL, 0x800000020D984A80, &v76);
      *(v39 + 12) = 2048;
      *(v39 + 14) = *(v36 + 16);

      _os_log_impl(&dword_20D7C9000, v37, v38, "%s found %ld onboarded homes+sites", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x20F324260](v40, -1, -1);
      MEMORY[0x20F324260](v39, -1, -1);
    }

    else
    {
    }

    v62 = *(v0 + 72);
    v61 = *(v0 + 80);
    v64 = *(v0 + 56);
    v63 = *(v0 + 64);
    v65 = *(v0 + 48);

    v66 = *(v0 + 8);

    return v66(v36);
  }

  else
  {
    *(v0 + 112) = v34;
    sub_20D855EB0(*(v0 + 24) + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + *(v0 + 104) * v34, *(v0 + 80), type metadata accessor for HistoricalUsageWidgetCommon.Home);
    if (qword_2811270D8 != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 72);
    v42 = *(v0 + 80);
    v43 = *(v0 + 64);
    v44 = sub_20D9734F8();
    *(v0 + 120) = v44;
    *(v0 + 128) = __swift_project_value_buffer(v44, qword_2811270E0);
    sub_20D855EB0(v42, v41, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    sub_20D855EB0(v42, v43, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    v45 = sub_20D9734D8();
    v46 = sub_20D975478();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 64);
    v49 = *(v0 + 72);
    if (v47)
    {
      v50 = *(v0 + 32);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v76 = v52;
      *v51 = 136315650;
      *(v51 + 4) = sub_20D7F4DC8(0xD00000000000002BLL, 0x800000020D984A80, &v76);
      *(v51 + 12) = 2080;
      v53 = (v49 + *(v50 + 20));
      v54 = *v53;
      v55 = v53[1];

      sub_20D855E50(v49, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      v56 = sub_20D7F4DC8(v54, v55, &v76);

      *(v51 + 14) = v56;
      *(v51 + 22) = 2080;
      v57 = sub_20D972648();
      v59 = v58;
      sub_20D855E50(v48, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      v60 = sub_20D7F4DC8(v57, v59, &v76);

      *(v51 + 24) = v60;
      _os_log_impl(&dword_20D7C9000, v45, v46, "%s checking '%s'/%s for onboarded EnergySite...", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v52, -1, -1);
      MEMORY[0x20F324260](v51, -1, -1);
    }

    else
    {

      sub_20D855E50(v48, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      sub_20D855E50(v49, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    }

    v68 = *(v0 + 80);
    v69 = sub_20D972648();
    v71 = v70;
    v72 = *(MEMORY[0x277D07650] + 4);
    v73 = swift_task_alloc();
    *(v0 + 136) = v73;
    *v73 = v0;
    v73[1] = sub_20D855370;
    v74 = *(v0 + 96);

    return MEMORY[0x28215C940](v69, v71);
  }
}

unint64_t sub_20D855D94()
{
  result = qword_27C839670;
  if (!qword_27C839670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839670);
  }

  return result;
}

uint64_t sub_20D855DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D855E50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D855EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20D855F38()
{
  result = qword_281124E10;
  if (!qword_281124E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8396B0, &qword_20D979680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8396B8, &qword_20D979688);
    type metadata accessor for HistoricalUsageWidgetView(255);
    sub_20D84F314(qword_2811261A0, type metadata accessor for HistoricalUsageWidgetView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for RectangularLockHistoricalUsageView();
    sub_20D84F314(qword_281125258, type metadata accessor for RectangularLockHistoricalUsageView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E10);
  }

  return result;
}

unint64_t sub_20D8560D0()
{
  result = qword_281124E18;
  if (!qword_281124E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839688, &qword_20D979658);
    type metadata accessor for CircularHistoricalUsageView(255);
    sub_20D84F314(&qword_281125FA0, type metadata accessor for CircularHistoricalUsageView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E18);
  }

  return result;
}

uint64_t sub_20D856258()
{
  result = sub_20D972698();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20D8562F4()
{
  sub_20D974EA8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HistoricalUsageEntryCommon(319);
    if (v1 <= 0x3F)
    {
      sub_20D856390();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D856390()
{
  if (!qword_281124C28)
  {
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, &qword_281124C28);
    }
  }
}

void sub_20D856408()
{
  sub_20D972628();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HistoricalUsageSnapshot();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_20D8564AC()
{
  result = qword_281124DF0;
  if (!qword_281124DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8396D0, &qword_20D979880);
    sub_20D855F38();
    sub_20D8560D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124DF0);
  }

  return result;
}

uint64_t sub_20D856550(unsigned int *a1)
{
  v2 = sub_20D972A08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_20D972968();
  (*(v3 + 104))(v7, *a1, v2);
  sub_20D8577E0(&qword_281127118, MEMORY[0x277D17F30]);
  sub_20D975208();
  sub_20D975208();
  if (v13[2] == v13[0] && v13[3] == v13[1])
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_20D9757C8();
  }

  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);

  return v10 & 1;
}

uint64_t EnergyWindow.description.getter()
{
  v0 = sub_20D972A08();
  v37 = *(v0 - 8);
  v1 = *(v37 + 64);
  MEMORY[0x28223BE20](v0);
  v36 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  sub_20D972988();
  v18 = *(v11 + 48);
  if (v18(v9, 1, v10) == 1)
  {
    v7 = v9;
LABEL_5:
    sub_20D7DFFB8(v7);
    return 0xD000000000000017;
  }

  v34 = v0;
  v35 = v15;
  v19 = *(v11 + 32);
  v19(v17, v9, v10);
  sub_20D972978();
  if (v18(v7, 1, v10) == 1)
  {
    (*(v11 + 8))(v17, v10);
    goto LABEL_5;
  }

  v21 = v35;
  v19(v35, v7, v10);
  v22 = v21;
  result = sub_20D972458();
  v24 = v23 / 3600.0;
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v25 = v24;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0x6957796772656E45, 0xEE00203A776F646ELL);
  v26 = v36;
  sub_20D972968();
  v27 = v34;
  sub_20D975728();
  (*(v37 + 8))(v26, v27);
  MEMORY[0x20F323340](0x6E696E6E61707320, 0xEA00000000002067);
  v38 = v25;
  v28 = sub_20D9757A8();
  MEMORY[0x20F323340](v28);

  MEMORY[0x20F323340](0x6F72662073726820, 0xEA0000000000206DLL);
  v29 = sub_20D9725F8();
  MEMORY[0x20F323340](v29);

  MEMORY[0x20F323340](544175136, 0xE400000000000000);
  v30 = sub_20D9725F8();
  MEMORY[0x20F323340](v30);

  v31 = v39;
  v32 = *(v11 + 8);
  v32(v22, v10);
  v32(v17, v10);
  return v31;
}

uint64_t EnergyWindow.id.getter()
{
  v0 = sub_20D972698();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D972688();
  v5 = sub_20D972648();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t EnergyWindow.displayWindow.getter()
{
  if (EnergyWindow.isCleanEnergy.getter())
  {
    return 1;
  }

  return EnergyWindow.isStrainedEnergy.getter();
}

BOOL EnergyWindow.isEntireEnergyForecastLength.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - v5;
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_20D972988();
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_20D7DFFB8(v16);
    return 0;
  }

  v17 = v6;
  v18 = *(v8 + 32);
  v18(v14, v17, v7);
  sub_20D972978();
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v14, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v18(v12, v4, v7);
  sub_20D972458();
  v21 = v20;
  v22 = sub_20D973048();
  v23 = v22(v21);

  v24 = *(v8 + 8);
  v24(v12, v7);
  v24(v14, v7);
  return v23 > 11;
}

BOOL EnergyWindow.containsDate(referenceDate:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - v7;
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  sub_20D972988();
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    v18 = v8;
LABEL_5:
    sub_20D7DFFB8(v18);
    return 0;
  }

  v27[1] = a1;
  v19 = v8;
  v20 = *(v10 + 32);
  v20(v16, v19, v9);
  sub_20D972978();
  if (v17(v6, 1, v9) == 1)
  {
    (*(v10 + 8))(v16, v9);
    v18 = v6;
    goto LABEL_5;
  }

  v20(v14, v6, v9);
  sub_20D972458();
  v23 = v22;
  sub_20D972458();
  v25 = v24;
  v26 = *(v10 + 8);
  v26(v14, v9);
  v26(v16, v9);
  return v25 > 0.0 && v23 <= 0.0;
}

BOOL EnergyWindow.endsAfterDate(referenceDate:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D972978();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20D7DFFB8(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    sub_20D972458();
    v11 = v10;
    (*(v5 + 8))(v8, v4);
    return v11 > 0.0;
  }
}

uint64_t static EnergyWindow.mockCleanNowPlusFourHoursWindow()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_20D9750E8();
  v34 = *(v1 - 8);
  v35 = v1;
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972488();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D9725C8();
  MEMORY[0x20F31FDD0](v14);
  sub_20D8577E0(&qword_281127748, MEMORY[0x277CC94A0]);
  sub_20D972608();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = *(v10 + 8);
  v16(v13, v9);
  v17 = v37;
  v32 = v36;
  v18 = sub_20D972578();
  MEMORY[0x20F31FDD0](v18);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v20 = v36;
  v19 = v37;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD000000000000043, 0x800000020D984AD0);
  MEMORY[0x20F323340](v32, v17);
  MEMORY[0x20F323340](0x22202020200A2C22, 0xEF22203A22646E65);
  MEMORY[0x20F323340](v20, v19);
  MEMORY[0x20F323340](0xD000000000000019, 0x800000020D984B20);
  v21 = v33;
  sub_20D9750D8();
  v22 = sub_20D9750A8();
  v24 = v23;

  result = (*(v34 + 8))(v21, v35);
  if (v24 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v26 = sub_20D971C68();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    sub_20D971C58();
    v29 = sub_20D972998();
    sub_20D8577E0(&qword_27C8396D8, MEMORY[0x277D17E98]);
    v30 = v31;
    sub_20D971C48();
    sub_20D857828(v22, v24);

    return (*(*(v29 - 8) + 56))(v30, 0, 1, v29);
  }

  return result;
}

uint64_t sub_20D8577E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D857828(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20D84D374(a1, a2);
  }

  return a1;
}

uint64_t static EnergyWindow.mockDirtyNowPlusEightHoursWindow()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_20D9750E8();
  v34 = *(v1 - 8);
  v35 = v1;
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972488();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D9725C8();
  MEMORY[0x20F31FDD0](v14);
  sub_20D8577E0(&qword_281127748, MEMORY[0x277CC94A0]);
  sub_20D972608();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = *(v10 + 8);
  v16(v13, v9);
  v17 = v37;
  v32 = v36;
  v18 = sub_20D972578();
  MEMORY[0x20F31FDD0](v18);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v20 = v36;
  v19 = v37;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD000000000000043, 0x800000020D984AD0);
  MEMORY[0x20F323340](v32, v17);
  MEMORY[0x20F323340](0x22202020200A2C22, 0xEF22203A22646E65);
  MEMORY[0x20F323340](v20, v19);
  MEMORY[0x20F323340](0xD00000000000001ALL, 0x800000020D984B40);
  v21 = v33;
  sub_20D9750D8();
  v22 = sub_20D9750A8();
  v24 = v23;

  result = (*(v34 + 8))(v21, v35);
  if (v24 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v26 = sub_20D971C68();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    sub_20D971C58();
    v29 = sub_20D972998();
    sub_20D8577E0(&qword_27C8396D8, MEMORY[0x277D17E98]);
    v30 = v31;
    sub_20D971C48();
    sub_20D857828(v22, v24);

    return (*(*(v29 - 8) + 56))(v30, 0, 1, v29);
  }

  return result;
}

uint64_t static EnergyWindow.mockReduceNowPlusFourHoursWindow()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_20D9750E8();
  v34 = *(v1 - 8);
  v35 = v1;
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972488();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D9725C8();
  MEMORY[0x20F31FDD0](v14);
  sub_20D8577E0(&qword_281127748, MEMORY[0x277CC94A0]);
  sub_20D972608();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = *(v10 + 8);
  v16(v13, v9);
  v17 = v37;
  v32 = v36;
  v18 = sub_20D972578();
  MEMORY[0x20F31FDD0](v18);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v20 = v36;
  v19 = v37;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD000000000000043, 0x800000020D984AD0);
  MEMORY[0x20F323340](v32, v17);
  MEMORY[0x20F323340](0x22202020200A2C22, 0xEF22203A22646E65);
  MEMORY[0x20F323340](v20, v19);
  MEMORY[0x20F323340](0xD00000000000001BLL, 0x800000020D984B60);
  v21 = v33;
  sub_20D9750D8();
  v22 = sub_20D9750A8();
  v24 = v23;

  result = (*(v34 + 8))(v21, v35);
  if (v24 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v26 = sub_20D971C68();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    sub_20D971C58();
    v29 = sub_20D972998();
    sub_20D8577E0(&qword_27C8396D8, MEMORY[0x277D17E98]);
    v30 = v31;
    sub_20D971C48();
    sub_20D857828(v22, v24);

    return (*(*(v29 - 8) + 56))(v30, 0, 1, v29);
  }

  return result;
}

uint64_t HistoricalUsageSnapshot.summaryUsageOrSurplusForInterval(starting:useShortText:gridQualityIndex:pricingIndex:)@<X0>(int a1@<W1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v54 = a2;
  v55 = a3;
  v53 = a1;
  v51 = sub_20D971F38();
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v42 - v7;
  v8 = sub_20D975058();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D971F48();
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v11);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D975038();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v42 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20D971FC8();
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = *(v47 + 64);
  MEMORY[0x28223BE20](v17);
  v46 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20D972AF8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v42 - v26;
  v28 = *(type metadata accessor for HistoricalUsageSnapshot() + 48);
  sub_20D972DB8();
  v30 = v29;
  sub_20D972E58();
  (*(v21 + 104))(v25, *MEMORY[0x277D075B0], v20);
  sub_20D85CF44(&qword_2811250F0, MEMORY[0x277D075D8]);
  sub_20D975208();
  sub_20D975208();
  if (v58 == v56 && v59 == v57)
  {
    v31 = *(v21 + 8);
    v31(v25, v20);
    v31(v27, v20);

    return sub_20D88D380(0, v55, v30, COERCE__INT64(1.0));
  }

  v32 = sub_20D9757C8();
  v33 = *(v21 + 8);
  v33(v25, v20);
  v33(v27, v20);

  if ((v32 & 1) != 0 || (v53 & 1) == 0)
  {
    return sub_20D88D380(0, v55, v30, COERCE__INT64(1.0));
  }

  v34 = v46;
  sub_20D88D380(0, v46, v30, COERCE__INT64(1.0));
  sub_20D975028();
  sub_20D975018();
  v35 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  sub_20D85CF44(&qword_281126E58, MEMORY[0x277CC8B88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
  sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098);
  v36 = v43;
  v37 = v45;
  sub_20D9755D8();
  sub_20D974FF8();
  (*(v44 + 8))(v36, v37);
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v38 = qword_28112ABE8;
  v39 = sub_20D9726E8();
  (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
  v58 = v35;
  sub_20D85CF44(&qword_281126E60, MEMORY[0x277CC8B58]);
  v40 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
  sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0);
  sub_20D9755D8();
  sub_20D971FB8();
  return (*(v47 + 8))(v34, v48);
}

uint64_t HistoricalUsageSnapshot.summaryDailyUsageOrSurplusTrendShort(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v93 = a2;
  v3 = sub_20D9726E8();
  v4 = *(v3 - 8);
  v81 = v3;
  v82 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E0, &unk_20D97D7B0);
  v73 = *(v74 - 8);
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v71 - v8;
  v83 = sub_20D971F38();
  v9 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v84 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = &v71 - v13;
  v14 = sub_20D975058();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v92 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_20D971F48();
  v77 = *(v78 - 8);
  v17 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v75 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_20D971FC8();
  v79 = *(v80 - 8);
  v19 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v76 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20D975038();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v91 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for HistoricalUsageSnapshot();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20D972628();
  v87 = *(v28 - 8);
  v88 = v28;
  v29 = *(v87 + 64);
  MEMORY[0x28223BE20](v28);
  v86 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20D972AF8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v71 - v37;
  v39 = *(v24 + 48);
  v90 = v2;
  sub_20D972E58();
  (*(v32 + 104))(v36, *MEMORY[0x277D075B8], v31);
  sub_20D85CF44(&qword_2811250F0, MEMORY[0x277D075D8]);
  sub_20D975208();
  sub_20D975208();
  if (v96 == v94 && v97 == v95)
  {
    v40 = *(v32 + 8);
    v40(v36, v31);
    v40(v38, v31);
  }

  else
  {
    v41 = sub_20D9757C8();
    v42 = *(v32 + 8);
    v42(v36, v31);
    v42(v38, v31);

    if ((v41 & 1) == 0)
    {
      return sub_20D971F28();
    }
  }

  v44 = v86;
  v43 = v87;
  v45 = v88;
  (*(v87 + 16))(v86, v89, v88);
  sub_20D85CC88(v90, v27, type metadata accessor for HistoricalUsageSnapshot);
  v46 = *(v24 + 44);
  v47 = *(v24 + 48);
  v48 = v27[v46];
  if (v48 == 1)
  {
    if ((sub_20D972D68() & 1) == 0)
    {
      sub_20D972D88();
      v57 = v56;
      sub_20D85CEE4(v27, type metadata accessor for HistoricalUsageSnapshot);
      (*(v43 + 8))(v44, v45);
      v52 = rint(v57);
      if (v52 < 0.0)
      {
LABEL_17:
        sub_20D975028();
        sub_20D975018();
        v58 = v76;
        sub_20D88D380(0, v76, -v52, COERCE__INT64(1.0));
        v59 = MEMORY[0x277D84F90];
        v96 = MEMORY[0x277D84F90];
        sub_20D85CF44(&qword_281126E58, MEMORY[0x277CC8B88]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
        sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098);
        v60 = v75;
        v61 = v78;
        sub_20D9755D8();
        sub_20D974FF8();
        (*(v77 + 8))(v60, v61);
        (*(v79 + 8))(v58, v80);
LABEL_26:
        sub_20D975018();
        sub_20D975048();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v67 = qword_28112ABE8;
        (*(v82 + 56))(v85, 1, 1, v81);
        v96 = v59;
        sub_20D85CF44(&qword_281126E60, MEMORY[0x277CC8B58]);
        v68 = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
        sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0);
        sub_20D9755D8();
        return sub_20D971FB8();
      }

      if (v52 > 0.0)
      {
LABEL_25:
        sub_20D975028();
        sub_20D975018();
        v64 = v76;
        sub_20D88D380(0, v76, v52, COERCE__INT64(1.0));
        v59 = MEMORY[0x277D84F90];
        v96 = MEMORY[0x277D84F90];
        sub_20D85CF44(&qword_281126E58, MEMORY[0x277CC8B88]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
        sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098);
        v65 = v75;
        v66 = v78;
        sub_20D9755D8();
        sub_20D974FF8();
        (*(v77 + 8))(v65, v66);
        (*(v79 + 8))(v64, v80);
        goto LABEL_26;
      }

LABEL_29:
      sub_20D974FE8();
      if (qword_281126E98 == -1)
      {
LABEL_30:
        v69 = qword_28112ABE8;
        (*(v82 + 56))(v85, 1, 1, v81);
        v96 = MEMORY[0x277D84F90];
        sub_20D85CF44(&qword_281126E60, MEMORY[0x277CC8B58]);
        v70 = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
        sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0);
        sub_20D9755D8();
        return sub_20D971FB8();
      }

LABEL_32:
      swift_once();
      goto LABEL_30;
    }

    sub_20D972D78();
    v50 = v49;
    v51 = 0;
  }

  else
  {
    v51 = sub_20D972E18();
    v50 = 0.0;
  }

  sub_20D85CEE4(v27, type metadata accessor for HistoricalUsageSnapshot);
  (*(v43 + 8))(v44, v45);
  if (v48)
  {
    v52 = rint(v50);
    if (v52 < 0.0)
    {
      goto LABEL_17;
    }

    if (v52 > 0.0)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if ((v51 & 0x8000000000000000) == 0)
  {
    if (!v51)
    {
      goto LABEL_29;
    }

    sub_20D975028();
    sub_20D975018();
    v94 = v51;
    sub_20D9726A8();
    sub_20D85CBD0();
    v53 = v72;
    sub_20D972058();
    sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0);
    v54 = v74;
    sub_20D975588();
    (*(v73 + 8))(v53, v54);
    sub_20D975008();

LABEL_22:
    sub_20D975018();
    sub_20D975048();
    if (qword_281126E98 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  sub_20D975028();
  result = sub_20D975018();
  if (v51 != 0x8000000000000000)
  {
    v94 = -v51;
    sub_20D9726A8();
    sub_20D85CBD0();
    v62 = v72;
    sub_20D972058();
    sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0);
    v63 = v74;
    sub_20D975588();
    (*(v73 + 8))(v62, v63);
    sub_20D975008();

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t HistoricalUsageSnapshot.getUIDateStringForRange(for:)(char *a1)
{
  v68 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v1 = *(*(v63 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v63);
  v62 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v60 = &v58 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v5 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v61 = &v58 - v6;
  v67 = sub_20D972628();
  v59 = *(v67 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v67);
  v70 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972378();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D972838();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_20D9727D8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_20D9726E8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v58 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v58 - v24;
  v26 = sub_20D972518();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v58 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v58 - v35;
  v37 = sub_20D972248();
  (*(*(v37 - 8) + 56))(v25, 1, 1, v37);
  v38 = sub_20D972208();
  (*(*(v38 - 8) + 56))(v21, 1, 1, v38);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  v39 = v68;
  sub_20D9724B8();
  sub_20D9724A8();
  v40 = *(v27 + 8);
  v40(v31, v26);
  v41 = v64;
  sub_20D972358();
  sub_20D9724E8();
  (*(v65 + 8))(v41, v66);
  v65 = v27 + 8;
  v66 = v26;
  v40(v34, v26);
  v42 = &v69[*(type metadata accessor for HistoricalUsageSnapshot() + 48)];
  sub_20D972E68();
  v69 = v36;
  sub_20D972508();
  v43 = v70;
  v44 = &v39[*(v71 + 36)];
  sub_20D972568();
  sub_20D85CF44(&qword_281126E30, MEMORY[0x277CC9578]);
  v45 = v67;
  result = sub_20D974FC8();
  if (result)
  {
    v48 = v59;
    v47 = v60;
    v49 = *(v59 + 16);
    v49(v60, v39, v45);
    v50 = v63;
    v49((v47 + *(v63 + 48)), v43, v45);
    v51 = v62;
    sub_20D7EB7E8(v47, v62, &unk_27C83C750, &unk_20D978DD0);
    v52 = *(v50 + 48);
    v53 = *(v48 + 32);
    v54 = v61;
    v53(v61, v51, v45);
    v68 = v40;
    v55 = *(v48 + 8);
    v55(v51 + v52, v45);
    sub_20D829514(v47, v51);
    v53((v54 + *(v71 + 36)), v51 + *(v50 + 48), v45);
    v55(v51, v45);
    v56 = v69;
    v57 = sub_20D9724F8();
    sub_20D7E3944(v54, &qword_27C839550, &qword_20D979C30);
    v55(v70, v45);
    (v68)(v56, v66);
    return v57;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HistoricalUsageSnapshot.summaryUsageOrSurplusForInterval(calculations:useShortText:gridQualityIndex:pricingIndex:)@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v65 = a1;
  v63 = sub_20D971F38();
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v52 - v8;
  v9 = sub_20D975058();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D971F48();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v55 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D975038();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v54 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20D971FC8();
  v59 = *(v18 - 8);
  v60 = v18;
  v19 = *(v59 + 64);
  MEMORY[0x28223BE20](v18);
  v58 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20D972AF8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v52 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v52 - v30;
  v32 = *(type metadata accessor for HistoricalUsageSnapshot() + 48);
  v67 = v2;
  sub_20D972E58();
  v33 = sub_20D8DE378();
  v66 = *(v22 + 8);
  v66(v31, v21);
  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v34 = sub_20D9734F8();
  __swift_project_value_buffer(v34, qword_28112AB78);
  v35 = sub_20D9734D8();
  v36 = sub_20D975478();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v53 = a2;
    v39 = v38;
    v70[0] = v38;
    *v37 = 136315394;
    *(v37 + 4) = sub_20D7F4DC8(0xD00000000000005ALL, 0x800000020D984C00, v70);
    *(v37 + 12) = 2048;
    *(v37 + 14) = v33;
    _os_log_impl(&dword_20D7C9000, v35, v36, "%s kWh: %f", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v40 = v39;
    a2 = v53;
    MEMORY[0x20F324260](v40, -1, -1);
    MEMORY[0x20F324260](v37, -1, -1);
  }

  sub_20D972E58();
  (*(v22 + 104))(v26, *MEMORY[0x277D075B0], v21);
  sub_20D85CF44(&qword_2811250F0, MEMORY[0x277D075D8]);
  sub_20D975208();
  sub_20D975208();
  if (v70[0] == v68 && v70[1] == v69)
  {
    v41 = v66;
    v66(v26, v21);
    v41(v29, v21);

    return sub_20D88D380(0, a2, v33, COERCE__INT64(1.0));
  }

  v42 = sub_20D9757C8();
  v43 = v66;
  v66(v26, v21);
  v43(v29, v21);

  if ((v42 & 1) != 0 || (v65 & 1) == 0)
  {
    return sub_20D88D380(0, a2, v33, COERCE__INT64(1.0));
  }

  v44 = v58;
  sub_20D88D380(0, v58, v33, COERCE__INT64(1.0));
  sub_20D975028();
  sub_20D975018();
  v45 = MEMORY[0x277D84F90];
  v70[0] = MEMORY[0x277D84F90];
  sub_20D85CF44(&qword_281126E58, MEMORY[0x277CC8B88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
  sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098);
  v46 = v55;
  v47 = v57;
  sub_20D9755D8();
  sub_20D974FF8();
  (*(v56 + 8))(v46, v47);
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v48 = qword_28112ABE8;
  v49 = sub_20D9726E8();
  (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
  v70[0] = v45;
  sub_20D85CF44(&qword_281126E60, MEMORY[0x277CC8B58]);
  v50 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
  sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0);
  sub_20D9755D8();
  sub_20D971FB8();
  return (*(v59 + 8))(v44, v60);
}

uint64_t HistoricalUsageSnapshot.numericalDailyUsageOrSurplusTrend(starting:calculations:useShortText:gridQualityFilterIndex:pricingFilterIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v66[0] = a7;
  v67 = a6;
  v66[1] = a5;
  v68 = a4;
  v80 = a3;
  v83 = a1;
  v84 = a2;
  v86 = a8;
  v8 = sub_20D972018();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_20D972168();
  v74 = *(v76 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v72 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D9726E8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v69 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E0, &unk_20D97D7B0);
  v73 = *(v75 - 8);
  v16 = *(v73 + 64);
  v17 = MEMORY[0x28223BE20](v75);
  v70 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = v66 - v19;
  v20 = type metadata accessor for HistoricalUsageSnapshot();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v79 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v66 - v25;
  v27 = sub_20D972628();
  v81 = *(v27 - 8);
  v28 = *(v81 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v78 = v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v82 = v66 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396F0, &unk_20D97D7C0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = v66 - v34;
  v36 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = v66 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = v66 - v42;
  sub_20D7EB7E8(v84, v35, &qword_27C8396F0, &unk_20D97D7C0);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    v44 = v20;
    v45 = v85;
    sub_20D7E3944(v35, &qword_27C8396F0, &unk_20D97D7C0);
    sub_20D7EB7E8(v83, v26, &qword_27C8389E8, &qword_20D9768D0);
    v46 = v81;
    if ((*(v81 + 48))(v26, 1, v27) == 1)
    {
      sub_20D7E3944(v26, &qword_27C8389E8, &qword_20D9768D0);
      return sub_20D971F28();
    }

    v53 = v82;
    (*(v46 + 32))(v82, v26, v27);
    v54 = v78;
    (*(v46 + 16))(v78, v53, v27);
    v55 = v79;
    sub_20D85CC88(v45, v79, type metadata accessor for HistoricalUsageSnapshot);
    v56 = *(v44 + 48);
    v57 = *(v55 + *(v44 + 44));
    if (v57 == 1)
    {
      LODWORD(v85) = 1;
      if (sub_20D972D68())
      {
        sub_20D972D78();
        v47 = v58;
        v48 = 0;
        v51 = 0;
        v49 = 0.0;
      }

      else
      {
        sub_20D972D88();
        v49 = v59;
        v51 = 0;
        v47 = 0.0;
        v48 = 1;
      }

      LOBYTE(v57) = v85;
    }

    else
    {
      v51 = sub_20D972E18();
      v49 = 0.0;
      v48 = 1;
      v47 = 0.0;
    }

    sub_20D85CEE4(v55, type metadata accessor for HistoricalUsageSnapshot);
    v60 = *(v46 + 8);
    v60(v54, v27);
    v60(v82, v27);
    if ((v57 & 1) == 0)
    {
LABEL_15:
      if (v48)
      {
        v87 = v51;
        sub_20D9726A8();
        sub_20D85CBD0();
        v61 = v70;
        sub_20D972058();
        v62 = v72;
        sub_20D972158();
        v63 = v71;
        v64 = v75;
        MEMORY[0x20F320200](v62, v75);
        (*(v74 + 8))(v62, v76);
        v65 = *(v73 + 8);
        v65(v61, v64);
        sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0);
        sub_20D975588();
        v65(v63, v64);
        sub_20D972008();
        return sub_20D971FD8();
      }

      return sub_20D971F28();
    }
  }

  else
  {
    sub_20D85CC24(v35, v43);
    sub_20D85CC88(v43, v41, type metadata accessor for DynamicEnergyUsagesCalculations);
    sub_20D85CCF0(v41, *(v85 + *(v20 + 44)), &v88);
    v47 = v88;
    v48 = v89;
    v49 = v90;
    v50 = v91;
    v51 = v92;
    sub_20D85CEE4(v43, type metadata accessor for DynamicEnergyUsagesCalculations);
    if ((v50 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v48)
  {
    return sub_20D85B278(v80 & 1, v86, v49);
  }

  else
  {
    return sub_20D85B278(v80 & 1, v86, v47);
  }
}

uint64_t sub_20D85B278@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v35 = a1;
  v36 = a2;
  v4 = sub_20D972018();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972168();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9757B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D9726E8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839700, &qword_20D97E480);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v32 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v32 - v27;
  if (v35)
  {
    v37 = a3;
    sub_20D9726A8();
    sub_20D7E6420();
    sub_20D972118();
    (*(v12 + 104))(v15, *MEMORY[0x277D84670], v11);
    MEMORY[0x20F3202E0](v15, 0x3FF0000000000000, 0, v18);
    (*(v12 + 8))(v15, v11);
    v29 = *(v19 + 8);
    v29(v23, v18);
    sub_20D972158();
    MEMORY[0x20F3202C0](v10, v18);
    (*(v32 + 8))(v10, v33);
    v29(v26, v18);
    sub_20D7EBC4C(&qword_27C839708, &qword_27C839700, &qword_20D97E480);
    sub_20D974F28();
    v29(v28, v18);
    sub_20D972008();
    return sub_20D971FD8();
  }

  else
  {
    v31 = v36;

    return sub_20D88D380(1, v31, a3, COERCE__INT64(1.0));
  }
}

uint64_t HistoricalUsageSnapshot.summaryDailyUsageOrSurplusTrend(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a1;
  v121 = a2;
  v3 = sub_20D9726E8();
  v110 = *(v3 - 8);
  v111 = v3;
  v4 = *(v110 + 64);
  MEMORY[0x28223BE20](v3);
  v105 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E0, &unk_20D97D7B0);
  v107 = *(v108 - 8);
  v6 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v97 - v7;
  v8 = sub_20D972018();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v115 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_20D971F18();
  v11 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_20D971F38();
  v13 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v114 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v113 = &v97 - v17;
  v18 = sub_20D975058();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v120 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_20D971F48();
  v100 = *(v101 - 8);
  v21 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_20D971FC8();
  v103 = *(v104 - 8);
  v23 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20D975038();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v109 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v118 = &v97 - v30;
  v31 = type metadata accessor for HistoricalUsageSnapshot();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20D972628();
  v116 = *(v35 - 8);
  v36 = *(v116 + 64);
  MEMORY[0x28223BE20](v35);
  v122 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20D972AF8();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v97 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v97 - v44;
  v46 = v2;
  v117 = *(v31 + 48);
  sub_20D972E58();
  (*(v39 + 104))(v43, *MEMORY[0x277D075B0], v38);
  sub_20D85CF44(&qword_2811250F8, MEMORY[0x277D075D8]);
  v47 = sub_20D974FD8();
  v48 = *(v39 + 8);
  v48(v43, v38);
  v48(v45, v38);
  if (v47)
  {
    return sub_20D971F28();
  }

  v50 = v116;
  (*(v116 + 16))(v122, v119, v35);
  sub_20D85CC88(v46, v34, type metadata accessor for HistoricalUsageSnapshot);
  v51 = *(v31 + 44);
  v52 = *(v31 + 48);
  v53 = v34[v51];
  if (v53 != 1)
  {
    v56 = sub_20D972E18();
    v55 = 0.0;
    goto LABEL_7;
  }

  if (sub_20D972D68())
  {
    sub_20D972D78();
    v55 = v54;
    v56 = 0;
LABEL_7:
    sub_20D85CEE4(v34, type metadata accessor for HistoricalUsageSnapshot);
    (*(v50 + 8))(v122, v35);
    v57 = v53 ^ 1;
    v58 = 0.0;
    goto LABEL_9;
  }

  v59 = v50;
  v57 = 1;
  v60 = v122;
  sub_20D972D88();
  v58 = v61;
  sub_20D85CEE4(v34, type metadata accessor for HistoricalUsageSnapshot);
  (*(v59 + 8))(v60, v35);
  v56 = 0;
  v55 = 0.0;
LABEL_9:
  v62 = v118;
  sub_20D972D98();
  v63 = HistoricalUsageSnapshot.getUIDateStringForRange(for:)(v62);
  v65 = v64;
  sub_20D7E3944(v62, &qword_27C839550, &qword_20D979C30);
  if (!v53)
  {
    if (v56 < 0)
    {
      if (v56 == 0x8000000000000000)
      {
        __break(1u);
LABEL_38:
        swift_once();
        goto LABEL_35;
      }

      v123 = -v56;
      sub_20D9726A8();
      sub_20D85CBD0();
      v82 = v106;
      sub_20D972058();
      sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0);
      v83 = v108;
      sub_20D975588();
      (*(v107 + 8))(v82, v83);
      v84 = v124;
      v85 = v125;
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      sub_20D971FF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_20D977210;
      v86 = MEMORY[0x277D837D0];
      *(v75 + 56) = MEMORY[0x277D837D0];
      v77 = sub_20D84E340();
      *(v75 + 32) = v84;
      *(v75 + 40) = v85;
      *(v75 + 96) = v86;
    }

    else
    {
      if (!v56)
      {
        goto LABEL_34;
      }

      v123 = v56;
      sub_20D9726A8();
      sub_20D85CBD0();
      v71 = v106;
      sub_20D972058();
      sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0);
      v72 = v108;
      sub_20D975588();
      (*(v107 + 8))(v71, v72);
      v73 = v124;
      v74 = v125;
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      sub_20D971FF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_20D977210;
      v76 = MEMORY[0x277D837D0];
      *(v75 + 56) = MEMORY[0x277D837D0];
      v77 = sub_20D84E340();
      *(v75 + 32) = v73;
      *(v75 + 40) = v74;
      *(v75 + 96) = v76;
    }

    *(v75 + 104) = v77;
    *(v75 + 64) = v77;
    *(v75 + 72) = v63;
    *(v75 + 80) = v65;
    sub_20D9750C8();

    sub_20D972008();
    return sub_20D971FD8();
  }

  if ((v57 & 1) == 0)
  {
    v78 = rint(v55);
    if (v78 >= 0.0)
    {
      if (v78 <= 0.0)
      {
        goto LABEL_34;
      }

      sub_20D975028();
      sub_20D975018();
      v92 = v102;
      sub_20D88D380(0, v102, v78, COERCE__INT64(1.0));
      v124 = MEMORY[0x277D84F90];
      sub_20D85CF44(&qword_281126E58, MEMORY[0x277CC8B88]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
      sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098);
      v93 = v99;
      v94 = v101;
      sub_20D9755D8();
      sub_20D974FF8();
      (*(v100 + 8))(v93, v94);
      (*(v103 + 8))(v92, v104);
    }

    else
    {
      sub_20D975028();
      sub_20D975018();
      v79 = v102;
      sub_20D88D380(0, v102, -v78, COERCE__INT64(1.0));
      v124 = MEMORY[0x277D84F90];
      sub_20D85CF44(&qword_281126E58, MEMORY[0x277CC8B88]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
      sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098);
      v80 = v99;
      v81 = v101;
      sub_20D9755D8();
      sub_20D974FF8();
      (*(v100 + 8))(v80, v81);
      (*(v103 + 8))(v79, v104);
    }

    sub_20D975018();
    sub_20D975008();

    sub_20D975018();
    sub_20D975048();
    if (qword_281126E98 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v66 = rint(v58);
  if (v66 < 0.0)
  {
    v67 = v102;
    sub_20D88D380(0, v102, -v66, COERCE__INT64(1.0));
    sub_20D971F08();
    (*(v103 + 8))(v67, v104);
    sub_20D85CF44(&qword_27C8396F8, MEMORY[0x277CC8B30]);
    v68 = sub_20D9751A8();
    v70 = v69;
    if (qword_281126E98 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

  if (v66 > 0.0)
  {
    v87 = v102;
    sub_20D88D380(0, v102, v66, COERCE__INT64(1.0));
    sub_20D971F08();
    (*(v103 + 8))(v87, v104);
    sub_20D85CF44(&qword_27C8396F8, MEMORY[0x277CC8B30]);
    v68 = sub_20D9751A8();
    v70 = v88;
    if (qword_281126E98 == -1)
    {
LABEL_28:
      sub_20D971FF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_20D977210;
      v90 = MEMORY[0x277D837D0];
      *(v89 + 56) = MEMORY[0x277D837D0];
      v91 = sub_20D84E340();
      *(v89 + 32) = v68;
      *(v89 + 40) = v70;
      *(v89 + 96) = v90;
      *(v89 + 104) = v91;
      *(v89 + 64) = v91;
      *(v89 + 72) = v63;
      *(v89 + 80) = v65;
      sub_20D9750C8();

      sub_20D972008();
      return sub_20D971FD8();
    }

LABEL_39:
    swift_once();
    goto LABEL_28;
  }

LABEL_34:
  sub_20D975028();
  sub_20D975018();
  sub_20D975008();

  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    goto LABEL_38;
  }

LABEL_35:
  v95 = qword_28112ABE8;
  (*(v110 + 56))(v113, 1, 1, v111);
  v124 = MEMORY[0x277D84F90];
  sub_20D85CF44(&qword_281126E60, MEMORY[0x277CC8B58]);
  v96 = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
  sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0);
  sub_20D9755D8();
  return sub_20D971FB8();
}

unint64_t sub_20D85CBD0()
{
  result = qword_281126ED0;
  if (!qword_281126ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126ED0);
  }

  return result;
}

uint64_t sub_20D85CC24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D85CC88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D85CCF0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v6 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
    v7 = a1 + *(v6 + 28);
    v8 = *(v7 + 8);
    if (v8 && (*v7 - *(a1 + *(v6 + 24))) / v8 < 0.0)
    {
      v9 = sub_20D8DE5D4();
      v10 = 0;
      v11 = 0;
      v12 = 0.0;
    }

    else
    {
      v12 = sub_20D8DE6AC();
      v11 = 0;
      v9 = 0.0;
      v10 = 1;
    }
  }

  else
  {
    v11 = sub_20D8DE784();
    v12 = 0.0;
    v10 = 1;
    v9 = 0.0;
  }

  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v13 = sub_20D9734F8();
  __swift_project_value_buffer(v13, qword_28112AB78);
  v14 = sub_20D9734D8();
  v15 = sub_20D975448();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134219008;
    *(v16 + 4) = v9;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v12;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v11;
    *(v16 + 32) = 1024;
    *(v16 + 34) = v10;
    *(v16 + 38) = 1024;
    *(v16 + 40) = a2 & 1;
    _os_log_impl(&dword_20D7C9000, v14, v15, "deltaNetExports: %f, deltaNetImports: %f, avgDailyNetImportPercentChange: %ld, isCurrentIntervalConsumption %{BOOL}d), isSurplusSite: %{BOOL}d", v16, 0x2Cu);
    MEMORY[0x20F324260](v16, -1, -1);
  }

  result = sub_20D85CEE4(a1, type metadata accessor for DynamicEnergyUsagesCalculations);
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;
  *(a3 + 24) = a2 & 1;
  *(a3 + 32) = v11;
  return result;
}

uint64_t sub_20D85CEE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D85CF44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D85D068()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20D979110;
  *(v0 + 32) = sub_20D974908();
  result = MEMORY[0x20F322D80](v0);
  qword_28112ABB0 = result;
  return result;
}

uint64_t sub_20D85D0D8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20D977210;
  *(v3 + 32) = sub_20D974938();
  *(v3 + 40) = sub_20D974928();
  result = MEMORY[0x20F322D80](v3);
  *a2 = result;
  return result;
}

uint64_t sub_20D85D144()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20D979110;
  if (qword_281124DA0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_28112AB70;

  result = MEMORY[0x20F322D80](v0);
  qword_28112ABB8 = result;
  return result;
}

double HistoricalUsageChartMetrics.init(chartTickWidth:barCornerRadius:barImportGradient:barExportGradient:barAvoidGradient:barLabelFont:barLabelColor:barLabelSelectedColor:chartTickColor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  *(a8 + 72) = xmmword_20D9798D0;
  *(a8 + 88) = xmmword_20D9798E0;
  *(a8 + 104) = xmmword_20D9798F0;
  *(a8 + 120) = xmmword_20D979900;
  *(a8 + 136) = xmmword_20D979910;
  *(a8 + 152) = 0x4018000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20D979110;
  v21 = objc_opt_self();
  v22 = [v21 systemGray3Color];
  *(v20 + 32) = sub_20D974888();
  *(a8 + 160) = MEMORY[0x20F322D80](v20);
  v23 = [v21 secondarySystemFillColor];
  *(a8 + 168) = sub_20D974888();
  result = -16.0;
  *(a8 + 176) = xmmword_20D979920;
  *(a8 + 192) = xmmword_20D979930;
  *a8 = a9;
  *(a8 + 8) = a10;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7;
  return result;
}

double sub_20D85D350@<D0>(uint64_t a1@<X8>)
{
  if (qword_27C838438 != -1)
  {
    swift_once();
  }

  v2 = qword_27C840C70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20D979110;

  *(v3 + 32) = sub_20D974908();
  v4 = MEMORY[0x20F322D80](v3);
  sub_20D974498();
  sub_20D9743D8();
  v5 = sub_20D974448();

  v6 = objc_opt_self();
  v7 = [v6 secondaryLabelColor];
  v8 = sub_20D974888();
  v9 = sub_20D974918();
  v10 = [v6 secondaryLabelColor];
  v11 = sub_20D974888();
  if (qword_281125B70 != -1)
  {
    swift_once();
  }

  v12 = qword_28112ABB8;
  *(a1 + 72) = xmmword_20D9798D0;
  *(a1 + 88) = xmmword_20D9798E0;
  *(a1 + 104) = xmmword_20D9798F0;
  *(a1 + 120) = xmmword_20D979900;
  *(a1 + 136) = xmmword_20D979910;
  *(a1 + 152) = 0x4018000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20D979110;

  v14 = [v6 systemGray3Color];
  *(v13 + 32) = sub_20D974888();
  *(a1 + 160) = MEMORY[0x20F322D80](v13);
  v15 = [v6 secondarySystemFillColor];
  *(a1 + 168) = sub_20D974888();
  *(a1 + 176) = xmmword_20D979920;
  *(a1 + 192) = xmmword_20D979930;
  result = 1.0;
  *a1 = xmmword_20D979940;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v12;
  *(a1 + 40) = v5;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v11;
  return result;
}

uint64_t static HistoricalUsageChartMetrics.watchChartMetrics.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27C838448 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = xmmword_27C8397A0;
  v15[10] = xmmword_27C8397B0;
  v15[11] = xmmword_27C8397C0;
  v2 = xmmword_27C8397C0;
  v15[12] = xmmword_27C8397D0;
  v3 = xmmword_27C839760;
  v4 = xmmword_27C839770;
  v15[6] = xmmword_27C839770;
  v15[7] = xmmword_27C839780;
  v5 = xmmword_27C839780;
  v6 = xmmword_27C839790;
  v15[8] = xmmword_27C839790;
  v15[9] = xmmword_27C8397A0;
  v7 = xmmword_27C839720;
  v8 = xmmword_27C839730;
  v15[2] = xmmword_27C839730;
  v15[3] = xmmword_27C839740;
  v9 = xmmword_27C839740;
  v10 = xmmword_27C839750;
  v15[4] = xmmword_27C839750;
  v15[5] = xmmword_27C839760;
  v11 = xmmword_27C839710;
  v15[0] = xmmword_27C839710;
  v15[1] = xmmword_27C839720;
  a1[10] = xmmword_27C8397B0;
  a1[11] = v2;
  a1[12] = xmmword_27C8397D0;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = v6;
  a1[9] = v1;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v3;
  *a1 = v11;
  a1[1] = v7;
  return sub_20D85D690(v15, &v14);
}

double sub_20D85D6C8()
{
  if (qword_281125B58 != -1)
  {
    swift_once();
  }

  v0 = qword_28112ABA8;
  v1 = qword_281125B60;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_28112ABB0;
  v3 = qword_281125B70;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABB8;

  v5 = sub_20D974488();
  v6 = objc_opt_self();
  v7 = [v6 tertiaryLabelColor];
  v8 = sub_20D974888();
  v9 = [v6 labelColor];
  v10 = sub_20D974888();
  v11 = [v6 tertiaryLabelColor];
  v12 = sub_20D974888();
  *(&xmmword_27C839820 + 8) = xmmword_20D9798D0;
  *(&xmmword_27C839830 + 8) = xmmword_20D9798E0;
  *(&xmmword_27C839840 + 8) = xmmword_20D9798F0;
  *(&xmmword_27C839850 + 8) = xmmword_20D979900;
  *(&xmmword_27C839860 + 8) = xmmword_20D979910;
  qword_27C839878 = 0x4018000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20D979110;
  v14 = [v6 systemGray3Color];
  *(v13 + 32) = sub_20D974888();
  *&xmmword_27C839880 = MEMORY[0x20F322D80](v13);
  v15 = [v6 secondarySystemFillColor];
  *(&xmmword_27C839880 + 1) = sub_20D974888();
  xmmword_27C839890 = xmmword_20D979920;
  xmmword_27C8398A0 = xmmword_20D979930;
  result = 1.0;
  xmmword_27C8397E0 = xmmword_20D979940;
  *&xmmword_27C8397F0 = v0;
  *(&xmmword_27C8397F0 + 1) = v2;
  *&xmmword_27C839800 = v4;
  *(&xmmword_27C839800 + 1) = v5;
  *&xmmword_27C839810 = v8;
  *(&xmmword_27C839810 + 1) = v10;
  *&xmmword_27C839820 = v12;
  return result;
}

uint64_t static HistoricalUsageChartMetrics.iOSDetailMetrics.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27C838450 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = unk_27C839870;
  v15[10] = xmmword_27C839880;
  v15[11] = xmmword_27C839890;
  v2 = xmmword_27C839890;
  v15[12] = xmmword_27C8398A0;
  v3 = xmmword_27C839830;
  v4 = xmmword_27C839840;
  v15[6] = xmmword_27C839840;
  v15[7] = xmmword_27C839850;
  v5 = xmmword_27C839850;
  v6 = xmmword_27C839860;
  v15[8] = xmmword_27C839860;
  v15[9] = unk_27C839870;
  v7 = xmmword_27C8397F0;
  v8 = xmmword_27C839800;
  v15[2] = xmmword_27C839800;
  v15[3] = xmmword_27C839810;
  v9 = xmmword_27C839810;
  v10 = xmmword_27C839820;
  v15[4] = xmmword_27C839820;
  v15[5] = xmmword_27C839830;
  v11 = xmmword_27C8397E0;
  v15[0] = xmmword_27C8397E0;
  v15[1] = xmmword_27C8397F0;
  a1[10] = xmmword_27C839880;
  a1[11] = v2;
  a1[12] = xmmword_27C8398A0;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = v6;
  a1[9] = v1;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v3;
  *a1 = v11;
  a1[1] = v7;
  return sub_20D85D690(v15, &v14);
}

double sub_20D85DA0C()
{
  if (qword_281125B58 != -1)
  {
    swift_once();
  }

  v0 = qword_28112ABA8;
  v1 = qword_281125B60;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_28112ABB0;
  v3 = qword_281125B70;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABB8;

  sub_20D974498();
  sub_20D9743D8();
  v5 = sub_20D974448();

  v6 = sub_20D974968();
  v7 = sub_20D974958();
  v8 = objc_opt_self();
  v9 = [v8 tertiaryLabelColor];
  v10 = sub_20D974888();
  *(&xmmword_281125BC0 + 8) = xmmword_20D9798D0;
  *(&xmmword_281125BD0 + 8) = xmmword_20D9798E0;
  *(&xmmword_281125BE0 + 8) = xmmword_20D9798F0;
  *(&xmmword_281125BF0 + 8) = xmmword_20D979900;
  *(&xmmword_281125C00 + 8) = xmmword_20D979910;
  qword_281125C18 = 0x4018000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20D979110;
  v12 = [v8 systemGray3Color];
  *(v11 + 32) = sub_20D974888();
  *&xmmword_281125C20 = MEMORY[0x20F322D80](v11);
  v13 = [v8 secondarySystemFillColor];
  *(&xmmword_281125C20 + 1) = sub_20D974888();
  xmmword_281125C30 = xmmword_20D979920;
  xmmword_281125C40 = xmmword_20D979930;
  result = 0.0;
  xmmword_281125B80 = xmmword_20D979950;
  *&xmmword_281125B90 = v0;
  *(&xmmword_281125B90 + 1) = v2;
  *&xmmword_281125BA0 = v4;
  *(&xmmword_281125BA0 + 1) = v5;
  *&xmmword_281125BB0 = v6;
  *(&xmmword_281125BB0 + 1) = v7;
  *&xmmword_281125BC0 = v10;
  return result;
}

uint64_t static HistoricalUsageChartMetrics.iOSSummaryMetrics.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_281125B78 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = unk_281125C10;
  v15[10] = xmmword_281125C20;
  v15[11] = xmmword_281125C30;
  v2 = xmmword_281125C30;
  v15[12] = xmmword_281125C40;
  v3 = xmmword_281125BD0;
  v4 = xmmword_281125BE0;
  v15[6] = xmmword_281125BE0;
  v15[7] = xmmword_281125BF0;
  v5 = xmmword_281125BF0;
  v6 = xmmword_281125C00;
  v15[8] = xmmword_281125C00;
  v15[9] = unk_281125C10;
  v7 = xmmword_281125B90;
  v8 = xmmword_281125BA0;
  v15[2] = xmmword_281125BA0;
  v15[3] = xmmword_281125BB0;
  v9 = xmmword_281125BB0;
  v10 = xmmword_281125BC0;
  v15[4] = xmmword_281125BC0;
  v15[5] = xmmword_281125BD0;
  v11 = xmmword_281125B80;
  v15[0] = xmmword_281125B80;
  v15[1] = xmmword_281125B90;
  a1[10] = xmmword_281125C20;
  a1[11] = v2;
  a1[12] = xmmword_281125C40;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = v6;
  a1[9] = v1;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v3;
  *a1 = v11;
  a1[1] = v7;
  return sub_20D85D690(v15, &v14);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_20D85DD78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D85DDC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall HistoricalUsageSnapshotManager.testHistoricalUsageUpdates()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  if (sub_20D972ED8())
  {
    v5 = sub_20D975318();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v0;

    sub_20D82D02C(0, 0, v4, &unk_20D979A68, v6);
  }

  else
  {
    if (qword_2811250E8 != -1)
    {
      swift_once();
    }

    v7 = sub_20D9734F8();
    __swift_project_value_buffer(v7, qword_28112AB90);
    v12 = sub_20D9734D8();
    v8 = sub_20D975458();
    if (os_log_type_enabled(v12, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984DC0, &v13);
      _os_log_impl(&dword_20D7C9000, v12, v8, "%s is only available on Internal builds", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F324260](v10, -1, -1);
      MEMORY[0x20F324260](v9, -1, -1);
    }

    else
    {
      v11 = v12;
    }
  }
}

uint64_t sub_20D85E094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = *(type metadata accessor for HistoricalUsageSnapshot() - 8);
  v4[4] = v5;
  v6 = *(v5 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D85E168, 0, 0);
}

uint64_t sub_20D85E168()
{
  v11 = v0;
  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[8] = __swift_project_value_buffer(v1, qword_28112AB90);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984DC0, &v10);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: rotating HUSnapshot every 3 seconds", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  else
  {
  }

  v6 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  v0[9] = 0x800000020D984DC0;
  v0[10] = v6;
  v0[11] = 0;
  v7 = *(MEMORY[0x277D857E8] + 4);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_20D85E34C;

  return MEMORY[0x282200480](3000000000);
}

uint64_t sub_20D85E34C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_20D85E8A4;
  }

  else
  {
    v3 = sub_20D85E460;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20D85E460(uint64_t a1)
{
  v40 = v1;
  if (qword_27C8385D8 != -1)
  {
    a1 = swift_once();
  }

  v2 = *(off_27C83A188 + 2);
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = v1[11] % v2;
  if (v3 < 0)
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v38 = v1[11];
  v4 = v1[13];
  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[3];
  sub_20D7FCF94(off_27C83A188 + ((*(v1[4] + 80) + 32) & ~*(v1[4] + 80)) + *(v1[4] + 72) * v3, v6);
  sub_20D7FCF94(v6, v8);
  swift_getKeyPath();
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v1[2] = v9;
  sub_20D85EC14();
  sub_20D972848();

  sub_20D7FEF04(v8);
  sub_20D7FCF94(v6, v7);
  v11 = sub_20D9734D8();
  v12 = sub_20D975478();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v1[9];
    v14 = v1[7];
    v15 = v1[5];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, v13, v39);
    *(v16 + 12) = 2080;
    v18 = HistoricalUsageSnapshot.description.getter();
    v20 = v19;
    sub_20D7FEF04(v15);
    v21 = sub_20D7F4DC8(v18, v20, v39);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_20D7C9000, v11, v12, "%s: New snapshot = %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v17, -1, -1);
    MEMORY[0x20F324260](v16, -1, -1);

    v22 = v14;
  }

  else
  {
    v23 = v1[7];
    v24 = v1[5];

    sub_20D7FEF04(v24);
    v22 = v23;
  }

  sub_20D7FEF04(v22);
  if (v38 < 19)
  {
    v1[11] = v38 + 1;
    v25 = *(MEMORY[0x277D857E8] + 4);
    v26 = swift_task_alloc();
    v1[12] = v26;
    *v26 = v1;
    v26[1] = sub_20D85E34C;
    a1 = 3000000000;

    return MEMORY[0x282200480](a1);
  }

  v27 = v1[8];
  v28 = sub_20D9734D8();
  v29 = sub_20D975478();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v1[9];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, v30, v39);
    _os_log_impl(&dword_20D7C9000, v28, v29, "%s: No longer rotating HUSnapshots", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x20F324260](v32, -1, -1);
    MEMORY[0x20F324260](v31, -1, -1);
  }

  v34 = v1[6];
  v33 = v1[7];
  v35 = v1[5];

  v36 = v1[1];

  return v36();
}

uint64_t sub_20D85E8A4()
{
  v23 = v0;
  v1 = v0[8];
  v2 = sub_20D9734D8();
  v3 = sub_20D975458();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  if (v4)
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, v6, &v22);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: Could not loop", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  if (v0[11] >= 20)
  {
    v11 = v0[8];
    v12 = sub_20D9734D8();
    v13 = sub_20D975478();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[9];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, v14, &v22);
      _os_log_impl(&dword_20D7C9000, v12, v13, "%s: No longer rotating HUSnapshots", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x20F324260](v16, -1, -1);
      MEMORY[0x20F324260](v15, -1, -1);
    }

    v18 = v0[6];
    v17 = v0[7];
    v19 = v0[5];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v9 = *(MEMORY[0x277D857E8] + 4);
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_20D85E34C;

    return MEMORY[0x282200480](3000000000);
  }
}

uint64_t sub_20D85EB44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D7EB52C;

  return sub_20D85E094(a1, v4, v5, v6);
}

unint64_t sub_20D85EC14()
{
  result = qword_27C839520;
  if (!qword_27C839520)
  {
    type metadata accessor for HistoricalUsageSnapshotManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839520);
  }

  return result;
}

unint64_t GridForecastError.description.getter()
{
  v1 = 0xD000000000000014;
  v2 = *v0;
  if (v2 > 5)
  {
    v6 = 0xD000000000000018;
    if (v2 != 10)
    {
      v6 = 0xD000000000000015;
    }

    if (v2 == 9)
    {
      v6 = 0xD000000000000014;
    }

    v7 = 0xD000000000000011;
    if (v2 == 7)
    {
      v7 = 0xD000000000000016;
    }

    if (v2 == 6)
    {
      v7 = 0xD00000000000001BLL;
    }

    if (*v0 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0xD00000000000001CLL;
    v4 = 0xD00000000000001DLL;
    if (v2 == 4)
    {
      v4 = 0xD000000000000014;
    }

    if (v2 != 3)
    {
      v3 = v4;
    }

    if (v2 == 1)
    {
      v1 = 0xD000000000000012;
    }

    if (!*v0)
    {
      v1 = 0xD000000000000015;
    }

    if (*v0 <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_20D85EDB8(uint64_t a1, uint64_t a2)
{
  (*(a2 + 96))(&var1);
  v2 = 0x616C732E69666977;
  v3 = 0xD000000000000016;
  if (var1 != 3)
  {
    v3 = 0;
  }

  if (var1 != 7)
  {
    v2 = v3;
  }

  if (var1 == 8)
  {
    return 0xD000000000000016;
  }

  else
  {
    return v2;
  }
}

uint64_t GridForecastError.mediumUIString.getter()
{
  v1 = *v0;
  if (v1 <= 5)
  {
    if (*v0 > 2u)
    {
      if (v1 - 4 >= 2)
      {
        if (qword_281126E98 == -1)
        {
          return sub_20D971FF8();
        }
      }

      else if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else if (v1 - 1 >= 2)
    {
      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    goto LABEL_30;
  }

  if (*v0 > 8u)
  {
    if (v1 == 9)
    {
      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else if (v1 == 10)
    {
      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    goto LABEL_30;
  }

  if (v1 == 6)
  {
    if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    goto LABEL_30;
  }

  if (v1 == 7)
  {
    if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    goto LABEL_30;
  }

  if (qword_281126E98 != -1)
  {
LABEL_30:
    swift_once();
  }

  return sub_20D971FF8();
}

HomeEnergyUI::GridForecastError_optional __swiftcall GridForecastError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20D85F388(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D85F668();
  v5 = sub_20D7DDF10();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t sub_20D85F3E8()
{
  result = qword_27C8398B0;
  if (!qword_27C8398B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8398B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GridForecastError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GridForecastError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20D85F668()
{
  result = qword_2811269F0;
  if (!qword_2811269F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811269F0);
  }

  return result;
}

uint64_t static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v161 = a2;
  v156 = a3;
  v141 = sub_20D9727D8();
  v140 = *(v141 - 8);
  v4 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v139 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v142 = &v119 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v138 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v136 = &v119 - v14;
  v127 = sub_20D971EA8();
  v126 = *(v127 - 8);
  v15 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v137 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_20D972E88();
  v134 = *(v135 - 8);
  v17 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v133 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v19 = *(*(v132 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v132);
  v131 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = &v119 - v22;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v23 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v130 = &v119 - v24;
  v150 = sub_20D972C58();
  v148 = *(v150 - 8);
  v25 = *(v148 + 8);
  v26 = MEMORY[0x28223BE20](v150);
  v123 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v122 = &v119 - v28;
  v160 = sub_20D972AF8();
  v29 = *(v160 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v160);
  v145 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v153 = &v119 - v33;
  v159 = sub_20D972838();
  v154 = *(v159 - 8);
  v34 = *(v154 + 64);
  v35 = MEMORY[0x28223BE20](v159);
  v146 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v119 - v37;
  v39 = sub_20D972628();
  v40 = *(v39 - 8);
  v157 = v39;
  v158 = v40;
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v147 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v155 = &v119 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v121 = &v119 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v152 = &v119 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v120 = &v119 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v151 = &v119 - v53;
  MEMORY[0x28223BE20](v52);
  v55 = &v119 - v54;
  LODWORD(v144) = *a1;
  if (qword_27C8385F8 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for HistoricalUsageSnapshot();
  v57 = __swift_project_value_buffer(v56, qword_27C83A1C0);
  v59 = v57[1];
  v143 = *v57;
  v58 = v143;
  v60 = v56[9];

  sub_20D971D78();
  v61 = v56[12];
  sub_20D972E68();
  v125 = v29;
  v149 = v55;
  v62 = *(v29 + 16);
  v63 = v153;
  v62(v153, v161, v160);
  v64 = sub_20D972E38();
  v65 = v156;
  *v156 = v58;
  v65[1] = v59;
  *(v65 + v56[16]) = v144;
  *(v65 + v56[11]) = 0;
  v62(v145, v63, v160);
  v66 = v56;
  v67 = *(v154 + 16);
  v144 = v38;
  v67(v146, v38, v159);
  v68 = v56[12];

  v124 = v64;
  v161 = v68;
  sub_20D972E28();
  v69 = sub_20D972E38();
  v70 = v65;
  if (*(v69 + 16))
  {
    v71 = v148;
    v72 = v122;
    v73 = v150;
    (*(v148 + 2))(v122, v69 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), v150);

    v75 = v120;
    MEMORY[0x20F320DF0](v74);
    (*(v71 + 1))(v72, v73);
    v76 = v157;
    v77 = v158;
    (*(v158 + 32))(v151, v75, v157);
  }

  else
  {

    v76 = v157;
    v77 = v158;
    (*(v158 + 16))(v151, v149, v157);
  }

  v78 = v66[9];
  sub_20D972DA8();
  v79 = sub_20D972E38();
  v80 = *(v79 + 16);
  v81 = v152;
  if (v80)
  {
    v82 = v148;
    v83 = v123;
    v84 = v150;
    (*(v148 + 2))(v123, v79 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 9) * (v80 - 1), v150);

    v86 = v121;
    MEMORY[0x20F320DF0](v85);
    (*(v82 + 1))(v83, v84);
    v77 = v158;
    (*(v158 + 32))(v81, v86, v76);
  }

  else
  {

    (*(v77 + 16))(v81, v149, v76);
  }

  v87 = v66[10];
  sub_20D972DA8();
  v88 = v70 + v66[5];
  sub_20D971D78();
  v89 = v70 + v66[6];
  sub_20D971D78();
  v90 = v70 + v66[7];
  sub_20D971D78();
  v91 = v70 + v66[8];
  sub_20D971D78();
  v92 = v155;
  sub_20D971D78();
  v93 = v147;
  sub_20D971D48();
  sub_20D865490(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if (result)
  {
    v95 = *(v77 + 32);
    v146 = (v77 + 32);
    v96 = v93;
    v97 = v129;
    v95(v129, v92, v76);
    v98 = v77;
    v99 = v132;
    v95((v97 + *(v132 + 48)), v96, v76);
    v100 = v131;
    sub_20D7EB7E8(v97, v131, &unk_27C83C750, &unk_20D978DD0);
    v101 = *(v99 + 48);
    v150 = v66;
    v102 = v130;
    v95(v130, v100, v76);
    v103 = *(v98 + 8);
    v145 = v103;
    (v103)(v100 + v101, v76);
    sub_20D7EAF18(v97, v100, &unk_27C83C750, &unk_20D978DD0);
    v104 = v102 + *(v128 + 36);
    v105 = v100 + *(v99 + 48);
    v148 = v95;
    v95(v104, v105, v76);
    v147 = (v98 + 8);
    (v103)(v100, v76);
    v106 = v156;
    v107 = v133;
    (*(v134 + 16))(v133, v156 + v161, v135);
    v108 = v155;
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v102, v107, v108, v106 + *(v150 + 52));
    v109 = v154;
    v110 = v140;
    v111 = v141;
    (*(v140 + 56))(v136, 1, 1, v141);
    (*(v109 + 56))(v138, 1, 1, v159);
    v112 = v106;
    v113 = v137;
    sub_20D971E98();
    v114 = v139;
    sub_20D972E48();
    v115 = v142;
    sub_20D972748();
    (*(v110 + 8))(v114, v111);
    v116 = v157;
    result = (*(v158 + 48))(v115, 1, v157);
    if (result != 1)
    {

      (*(v126 + 8))(v113, v127);
      v117 = v145;
      (v145)(v152, v116);
      v117(v151, v116);
      (*(v125 + 8))(v153, v160);
      (*(v109 + 8))(v144, v159);
      v117(v149, v116);
      v118 = v150;
      result = (v148)(v112 + *(v150 + 56), v115, v116);
      *(v112 + *(v118 + 60)) = MEMORY[0x277D84FA0];
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D860588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v331 = a1;
  v315 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v304 = &v276 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v302 = &v276 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v301 = &v276 - v11;
  v292 = sub_20D971EA8();
  v291 = *(v292 - 8);
  v12 = *(v291 + 64);
  MEMORY[0x28223BE20](v292);
  v303 = &v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v14 = *(*(v300 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v300);
  v299 = &v276 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v297 = &v276 - v17;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v18 = *(*(v296 - 8) + 64);
  MEMORY[0x28223BE20](v296);
  v298 = &v276 - v19;
  v20 = type metadata accessor for HistoricalUsageSnapshot();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v313 = &v276 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_20D972838();
  v312 = *(v316 - 8);
  v23 = *(v312 + 64);
  v24 = MEMORY[0x28223BE20](v316);
  v307 = &v276 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v317 = &v276 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398C8, &qword_20D979E20);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v352 = &v276 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v351 = &v276 - v31;
  v325 = sub_20D9727D8();
  v323 = *(v325 - 8);
  v32 = *(v323 + 64);
  MEMORY[0x28223BE20](v325);
  v324 = &v276 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = sub_20D972AF8();
  v360 = *(v364 - 8);
  v34 = *(v360 + 64);
  v35 = MEMORY[0x28223BE20](v364);
  v305 = &v276 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v311 = &v276 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v327 = &v276 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v346 = &v276 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v348 = &v276 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v347 = &v276 - v46;
  MEMORY[0x28223BE20](v45);
  v365 = &v276 - v47;
  v322 = sub_20D9727B8();
  v321 = *(v322 - 8);
  v48 = *(v321 + 64);
  MEMORY[0x28223BE20](v322);
  v320 = &v276 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_20D972C58();
  v356 = *(v50 - 8);
  v51 = *(v356 + 64);
  v52 = MEMORY[0x28223BE20](v50);
  v290 = &v276 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v289 = &v276 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v286 = &v276 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v362 = &v276 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v361 = &v276 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v64 = &v276 - v63;
  v65 = MEMORY[0x28223BE20](v62);
  v355 = &v276 - v66;
  MEMORY[0x28223BE20](v65);
  v68 = &v276 - v67;
  v367 = sub_20D972628();
  v328 = *(v367 - 8);
  v69 = *(v328 + 64);
  v70 = MEMORY[0x28223BE20](v367);
  v306 = &v276 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v70);
  v288 = &v276 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v310 = &v276 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v287 = &v276 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v309 = &v276 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v285 = &v276 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v314 = &v276 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v345 = &v276 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v366 = &v276 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v326 = &v276 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v319 = &v276 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v94 = &v276 - v93;
  MEMORY[0x28223BE20](v92);
  v96 = &v276 - v95;
  v97 = sub_20D972E88();
  v98 = *(v97 - 8);
  v99 = *(v98 + 64);
  v100 = MEMORY[0x28223BE20](v97);
  v295 = &v276 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100);
  v103 = &v276 - v102;
  v318 = v20;
  v104 = *(v20 + 48);
  v105 = *(v98 + 16);
  v294 = v98 + 16;
  v293 = v105;
  v105(&v276 - v102, (v2 + v104), v97);
  v106 = sub_20D972E38();
  if (!*(v106 + 16))
  {

    (*(v98 + 8))(v103, v97);
    return sub_20D8654D8(v2, v315, type metadata accessor for HistoricalUsageSnapshot);
  }

  v354 = v103;
  v277 = v98;
  v283 = v97;
  v284 = v2;
  v107 = v356;
  v108 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v109 = *(v356 + 16);
  v363 = v106;
  v335 = v108;
  v337 = v356 + 16;
  v336 = v109;
  v110 = (v109)(v68, v106 + v108, v50);
  MEMORY[0x20F320DF0](v110);
  v111 = *(v107 + 8);
  v349 = v50;
  v342 = v107 + 8;
  v341 = v111;
  v111(v68, v50);
  v112 = *(v328 + 32);
  v353 = v328 + 32;
  v350 = v112;
  v112(v96, v94, v367);
  v113 = v360;
  v114 = v360 + 16;
  v115 = *(v360 + 16);
  v116 = v364;
  v117 = v365;
  v115(v365, v331, v364);
  v118 = (*(v113 + 88))(v117, v116);
  v119 = v118 == *MEMORY[0x277D075B8];
  v282 = v96;
  v281 = v114;
  v280 = v115;
  if (v119 || v118 == *MEMORY[0x277D075C8])
  {
    (*(v321 + 104))(v320, *MEMORY[0x277CC9968], v322);
    v126 = v324;
    sub_20D972E48();
    v121 = v319;
    sub_20D972718();
    v124 = *(v323 + 8);
    v125 = (v323 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v128 = v325;
    v124(v126, v325);
    v339 = 0;
    v329 = *MEMORY[0x277D075D0];
  }

  else
  {
    v329 = *MEMORY[0x277D075D0];
    v120 = v325;
    v121 = v319;
    if (v118 == v329)
    {
      v122 = v118;
      (*(v321 + 104))(v320, *MEMORY[0x277CC9968], v322);
      v123 = v324;
      sub_20D972E48();
      sub_20D973098();
      v124 = *(v323 + 8);
      v125 = (v323 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v124(v123, v120);
      v339 = 1;
      v329 = v122;
      v126 = v123;
    }

    else
    {
      v129 = *(v321 + 104);
      v130 = (v323 + 8);
      if (v118 == *MEMORY[0x277D075C0])
      {
        v129(v320, *MEMORY[0x277CC9998], v322);
        v131 = v324;
        sub_20D972E48();
        sub_20D972FF8();
        v124 = *v130;
        v125 = v130 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        (*v130)(v131, v120);
        v126 = v131;
        v339 = 1;
      }

      else
      {
        v129(v320, *MEMORY[0x277CC9968], v322);
        v132 = v324;
        sub_20D972E48();
        sub_20D972718();
        v133 = *v130;
        v125 = v130 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        (*v130)(v132, v120);
        v126 = v132;
        v124 = v133;
        (*(v360 + 8))(v365, v364);
        v339 = 0;
      }
    }

    v128 = v120;
  }

  sub_20D972E48();
  v134 = v349;
  v135 = sub_20D9730B8();

  v279 = v124;
  v278 = v125;
  v124(v126, v128);
  v136 = v328 + 16;
  v343 = *(v328 + 16);
  v343(v326, v121, v367);
  v137 = MEMORY[0x277D84F90];
  sub_20D8D6850(MEMORY[0x277D84F90]);
  sub_20D8D6850(v137);
  sub_20D8D6850(v137);
  v365 = v137;
  sub_20D8D6850(v137);
  result = sub_20D972C48();
  v138 = 0;
  v363 = 0;
  v357 = (v360 + 104);
  v330 = v135;
  v139 = *(v135 + 16);
  v358 = (v360 + 8);
  v338 = *MEMORY[0x277D075B0];
  v332 = v356 + 32;
  v308 = *MEMORY[0x277D075C0];
  v344 = v136;
  v334 = (v136 - 8);
  v140 = v364;
  v340 = v64;
  v333 = v139;
LABEL_13:
  v141 = v352;
  v142 = v351;
  if (v138 == v139)
  {
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D0, &qword_20D979E28);
    (*(*(v143 - 8) + 56))(v141, 1, 1, v143);
    v360 = v139;
  }

  else
  {
    if ((v138 & 0x8000000000000000) != 0)
    {
      goto LABEL_115;
    }

    v144 = v330;
    if (v138 >= *(v330 + 16))
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D0, &qword_20D979E28);
    v146 = v144;
    v147 = v145;
    v148 = *(v145 - 8);
    sub_20D7EB7E8(v146 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v138, v141, &qword_27C8398D0, &qword_20D979E28);
    v360 = v138 + 1;
    (*(v148 + 56))(v141, 0, 1, v147);
  }

  sub_20D7EAF18(v141, v142, &qword_27C8398C8, &qword_20D979E20);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D0, &qword_20D979E28);
  if ((*(*(v149 - 8) + 48))(v142, 1, v149) != 1)
  {
    v150 = *(v142 + *(v149 + 48));
    v151 = v350(v366, v142, v367);
    MEMORY[0x28223BE20](v151);
    v152 = v363;
    sub_20D864AB8(v355, sub_20D865474, v150, v64);
    v153 = *(v150 + 16);

    v154 = v153;
    if (v339)
    {
      v155 = v153;
    }

    else
    {
      v155 = 1.0;
    }

    v156 = v347;
    sub_20D972E58();
    v157 = *v357;
    v158 = v348;
    (*v357)(v348, v338, v140);
    sub_20D865490(&qword_2811250F0, MEMORY[0x277D075D8]);
    sub_20D975208();
    sub_20D975208();
    v363 = v152;
    v359 = v153;
    if (v370 == v368 && v371 == v369)
    {
      v159 = 1;
    }

    else
    {
      v159 = sub_20D9757C8();
    }

    v160 = *v358;
    v161 = v364;
    (*v358)(v158, v364);
    v160(v156, v161);

    if (v159)
    {
      v157(v346, v329, v161);
      sub_20D975208();
      sub_20D975208();
      v162 = v345;
      v64 = v340;
      if (v370 == v368 && v371 == v369)
      {
        v160(v346, v161);

        v163 = -1;
LABEL_36:
        v155 = ceil(v154 / 24.0);
        goto LABEL_37;
      }

      v164 = sub_20D9757C8();
      v160(v346, v161);

      v163 = -1;
      if (v164)
      {
        goto LABEL_36;
      }

      v165 = v364;
      v157(v327, v308, v364);
      sub_20D975208();
      sub_20D975208();
      if (v370 == v368 && v371 == v369)
      {
        v160(v327, v165);

        goto LABEL_36;
      }

      v166 = sub_20D9757C8();
      v160(v327, v165);

      if (v166)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v162 = v345;
      v64 = v340;
      v163 = -1;
    }

LABEL_37:
    v343(v162, v366, v367);
    sub_20D972C18();
    sub_20D972BE8();
    v167 = sub_20D972BB8();
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
    result = sub_20D975758();
    v168 = 0;
    v169 = 1 << *(v167 + 32);
    if (v169 < 64)
    {
      v170 = ~(-1 << v169);
    }

    else
    {
      v170 = -1;
    }

    for (i = v170 & *(v167 + 64); i; *(result + 16) = v180)
    {
      v172 = __clz(__rbit64(i));
      i &= i - 1;
      v173 = v172 | (v168 << 6);
LABEL_47:
      v176 = *(*(v167 + 48) + 8 * v173);
      v177 = *(*(v167 + 56) + 8 * v173);
      *(result + 64 + ((v173 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v173;
      *(*(result + 48) + 8 * v173) = v176;
      *(*(result + 56) + 8 * v173) = v177 / v155;
      v178 = *(result + 16);
      v179 = __OFADD__(v178, 1);
      v180 = v178 + 1;
      if (v179)
      {
        __break(1u);
        goto LABEL_112;
      }
    }

    v174 = v168;
    while (1)
    {
      v168 = v174 + 1;
      if (__OFADD__(v174, 1))
      {
        break;
      }

      if (v168 >= ((v169 + 63) >> 6))
      {

        v181 = sub_20D972BA8();
        result = sub_20D975758();
        v182 = 0;
        v183 = 1 << *(v181 + 32);
        if (v183 < 64)
        {
          v184 = ~(-1 << v183);
        }

        else
        {
          v184 = -1;
        }

        v185 = v184 & *(v181 + 64);
        if (v185)
        {
          while (1)
          {
            v186 = __clz(__rbit64(v185));
            v185 &= v185 - 1;
            v187 = v186 | (v182 << 6);
LABEL_60:
            v190 = *(*(v181 + 48) + 8 * v187);
            v191 = *(*(v181 + 56) + 8 * v187);
            *(result + 64 + ((v187 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v187;
            *(*(result + 48) + 8 * v187) = v190;
            *(*(result + 56) + 8 * v187) = v191 / v155;
            v192 = *(result + 16);
            v179 = __OFADD__(v192, 1);
            v193 = v192 + 1;
            if (v179)
            {
              break;
            }

            *(result + 16) = v193;
            if (!v185)
            {
              goto LABEL_55;
            }
          }

LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

LABEL_55:
        v188 = v182;
        while (1)
        {
          v182 = v188 + 1;
          if (__OFADD__(v188, 1))
          {
            break;
          }

          if (v182 >= ((v183 + 63) >> 6))
          {

            v194 = sub_20D972B98();
            result = sub_20D975758();
            v195 = 0;
            v196 = 1 << *(v194 + 32);
            if (v196 < 64)
            {
              v197 = ~(-1 << v196);
            }

            else
            {
              v197 = -1;
            }

            v198 = v197 & *(v194 + 64);
            if (!v198)
            {
LABEL_68:
              v201 = v195;
              while (1)
              {
                v195 = v201 + 1;
                if (__OFADD__(v201, 1))
                {
                  goto LABEL_99;
                }

                if (v195 >= ((v196 + 63) >> 6))
                {

                  v207 = sub_20D972B88();
                  result = sub_20D975758();
                  v208 = 0;
                  v209 = 1 << *(v207 + 32);
                  if (v209 < 64)
                  {
                    v210 = ~(-1 << v209);
                  }

                  else
                  {
                    v210 = -1;
                  }

                  v211 = v210 & *(v207 + 64);
                  v134 = v349;
                  if (!v211)
                  {
LABEL_81:
                    v214 = v208;
                    while (1)
                    {
                      v208 = v214 + 1;
                      if (__OFADD__(v214, 1))
                      {
                        goto LABEL_100;
                      }

                      if (v208 >= ((v209 + 63) >> 6))
                      {

                        v220 = v361;
                        sub_20D972C48();
                        v336(v362, v220, v134);
                        v221 = v365;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v221 = sub_20D8D428C(0, *(v221 + 2) + 1, 1, v221);
                        }

                        v140 = v364;
                        v139 = v333;
                        v223 = *(v221 + 2);
                        v222 = *(v221 + 3);
                        if (v223 >= v222 >> 1)
                        {
                          v365 = sub_20D8D428C(v222 > 1, v223 + 1, 1, v221);
                        }

                        else
                        {
                          v365 = v221;
                        }

                        v224 = v341;
                        v341(v361, v134);
                        v224(v64, v134);
                        v225 = v365;
                        *(v365 + 2) = v223 + 1;
                        (*(v356 + 32))(&v225[v335 + *(v356 + 72) * v223], v362, v134);
                        result = (*v334)(v366, v367);
                        v138 = v360;
                        goto LABEL_13;
                      }

                      v215 = *(v207 + 64 + 8 * v208);
                      ++v214;
                      if (v215)
                      {
                        v211 = (v215 - 1) & v215;
                        v213 = __clz(__rbit64(v215)) | (v208 << 6);
                        goto LABEL_86;
                      }
                    }
                  }

                  while (1)
                  {
                    v212 = __clz(__rbit64(v211));
                    v211 &= v211 - 1;
                    v213 = v212 | (v208 << 6);
LABEL_86:
                    v216 = *(*(v207 + 48) + 8 * v213);
                    v217 = *(*(v207 + 56) + 8 * v213);
                    *(result + 64 + ((v213 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v213;
                    *(*(result + 48) + 8 * v213) = v216;
                    *(*(result + 56) + 8 * v213) = v217 / v155;
                    v218 = *(result + 16);
                    v179 = __OFADD__(v218, 1);
                    v219 = v218 + 1;
                    if (v179)
                    {
                      goto LABEL_114;
                    }

                    *(result + 16) = v219;
                    if (!v211)
                    {
                      goto LABEL_81;
                    }
                  }
                }

                v202 = *(v194 + 64 + 8 * v195);
                ++v201;
                if (v202)
                {
                  v198 = (v202 - 1) & v202;
                  v200 = __clz(__rbit64(v202)) | (v195 << 6);
                  goto LABEL_73;
                }
              }
            }

            while (1)
            {
              v199 = __clz(__rbit64(v198));
              v198 &= v198 - 1;
              v200 = v199 | (v195 << 6);
LABEL_73:
              v203 = *(*(v194 + 48) + 8 * v200);
              v204 = *(*(v194 + 56) + 8 * v200);
              *(result + 64 + ((v200 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v200;
              *(*(result + 48) + 8 * v200) = v203;
              *(*(result + 56) + 8 * v200) = v204 / v155;
              v205 = *(result + 16);
              v179 = __OFADD__(v205, 1);
              v206 = v205 + 1;
              if (v179)
              {
                goto LABEL_113;
              }

              *(result + 16) = v206;
              if (!v198)
              {
                goto LABEL_68;
              }
            }
          }

          v189 = *(v181 + 64 + 8 * v182);
          ++v188;
          if (v189)
          {
            v185 = (v189 - 1) & v189;
            v187 = __clz(__rbit64(v189)) | (v182 << 6);
            goto LABEL_60;
          }
        }

LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v175 = *(v167 + 64 + 8 * v168);
      ++v174;
      if (v175)
      {
        i = (v175 - 1) & v175;
        v173 = __clz(__rbit64(v175)) | (v168 << 6);
        goto LABEL_47;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

  v163 = *(v284 + 8);
  v363 = *v284;
  if (*(v365 + 2))
  {
    v226 = v286;
    v336(v286, &v365[v335], v134);
    v227 = v163;

    v229 = v285;
    MEMORY[0x20F320DF0](v228);
    v341(v226, v134);
    v350(v314, v229, v367);
  }

  else
  {
LABEL_101:
    v343(v314, v282, v367);
    v227 = v163;
  }

  v230 = v318;
  v231 = v313;
  sub_20D972E68();
  v232 = v311;
  v233 = v364;
  v234 = v280;
  v280(v311, v331, v364);
  v235 = *(v284 + v230[11]);
  v236 = v230[16];
  v237 = *(v284 + v230[15]);
  *v231 = v363;
  v231[1] = v227;
  *(v231 + v236) = 6;
  *(v231 + v230[11]) = v235;
  v234(v305, v232, v233);
  (*(v312 + 16))(v307, v317, v316);
  v366 = v230[12];

  v362 = v237;

  sub_20D972E28();
  v238 = sub_20D972E38();
  if (*(v238 + 16))
  {
    v239 = v289;
    v336(v289, (v238 + v335), v134);

    v241 = v287;
    MEMORY[0x20F320DF0](v240);
    v341(v239, v134);
    v242 = v241;
    v243 = v367;
    v244 = v350;
    v350(v309, v242, v367);
    v245 = v310;
  }

  else
  {

    v243 = v367;
    v343(v309, v314, v367);
    v245 = v310;
    v244 = v350;
  }

  v246 = v318;
  v247 = v318[9];
  sub_20D972DA8();
  v248 = sub_20D972E38();
  v249 = *(v248 + 16);
  if (v249)
  {
    v250 = v290;
    v336(v290, (v248 + v335 + *(v356 + 72) * (v249 - 1)), v134);

    v252 = v288;
    MEMORY[0x20F320DF0](v251);
    v341(v250, v134);
    v244(v245, v252, v243);
  }

  else
  {

    v343(v245, v314, v243);
  }

  v253 = v246[10];
  sub_20D972DA8();
  v254 = v231 + v246[5];
  sub_20D971D78();
  v255 = v231 + v246[6];
  sub_20D971D78();
  v256 = v231 + v246[7];
  sub_20D971D78();
  v257 = v231 + v246[8];
  sub_20D971D78();
  v258 = v326;
  sub_20D971D78();
  v259 = v306;
  sub_20D971D48();
  sub_20D865490(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if ((result & 1) == 0)
  {
    goto LABEL_117;
  }

  v260 = v297;
  v244(v297, v258, v243);
  v261 = v300;
  v244((v260 + *(v300 + 48)), v259, v367);
  v262 = v299;
  sub_20D7EB7E8(v260, v299, &unk_27C83C750, &unk_20D978DD0);
  v263 = *(v261 + 48);
  v264 = v298;
  v244(v298, v262, v367);
  v265 = *(v328 + 8);
  v265(v262 + v263, v367);
  sub_20D7EAF18(v260, v262, &unk_27C83C750, &unk_20D978DD0);
  v244((v264 + *(v296 + 36)), (v262 + *(v261 + 48)), v367);
  v363 = v265;
  v265(v262, v367);
  v266 = v313;
  v267 = v295;
  v293(v295, &v366[v313], v283);
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v264, v267, v258, v266 + v318[13]);
  v268 = v325;
  (*(v323 + 56))(v301, 1, 1, v325);
  v269 = v312;
  (*(v312 + 56))(v302, 1, 1, v316);
  v270 = v303;
  v271 = v367;
  sub_20D971E98();
  v272 = v324;
  sub_20D972E48();
  v273 = v304;
  sub_20D972748();
  v279(v272, v268);
  result = (*(v328 + 48))(v273, 1, v271);
  if (result != 1)
  {

    (*(v291 + 8))(v270, v292);
    v274 = v363;
    v363(v310, v271);
    v274(v309, v271);
    (*v358)(v311, v364);
    (*(v269 + 8))(v317, v316);
    v274(v314, v271);
    v341(v355, v349);
    (*(v321 + 8))(v320, v322);
    v274(v319, v271);
    v274(v282, v271);
    (*(v277 + 8))(v354, v283);
    v275 = v318;
    v350((v266 + v318[14]), v273, v271);
    *(v266 + v275[15]) = v362;
    return sub_20D81E5E0(v266, v315);
  }

LABEL_118:
  __break(1u);
  return result;
}

uint64_t HistoricalUsageSnapshot.ekSiteID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HistoricalUsageSnapshot.snapshotStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot() + 20);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.firstDataStartDayDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot() + 24);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.lastDayOfDataInSnapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot() + 28);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.lastDataStartDayDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot() + 32);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.firstDataDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot() + 36);
  v4 = sub_20D971D98();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.lastDataDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot() + 40);
  v4 = sub_20D971D98();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.energyTrends.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot() + 48);
  v4 = sub_20D972E88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.gridQualityLaunchDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HistoricalUsageSnapshot() + 56);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HistoricalUsageSnapshot.error.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HistoricalUsageSnapshot();
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t static HistoricalUsageSnapshot.dynamicSnapshotNoSubintervals(interval:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v160 = a1;
  v155 = a2;
  v2 = sub_20D9727D8();
  v140 = *(v2 - 8);
  v141 = v2;
  v3 = *(v140 + 64);
  MEMORY[0x28223BE20](v2);
  v139 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v142 = &v118 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v138 = &v118 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v136 = &v118 - v13;
  v127 = sub_20D971EA8();
  v126 = *(v127 - 8);
  v14 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v137 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_20D972E88();
  v134 = *(v135 - 8);
  v16 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v133 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v18 = *(*(v132 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v132);
  v131 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v129 = &v118 - v21;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v22 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v130 = &v118 - v23;
  v149 = sub_20D972C58();
  v147 = *(v149 - 8);
  v24 = *(v147 + 8);
  v25 = MEMORY[0x28223BE20](v149);
  v122 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v121 = &v118 - v27;
  v159 = sub_20D972AF8();
  v28 = *(v159 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v159);
  v144 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v152 = &v118 - v32;
  v158 = sub_20D972838();
  v153 = *(v158 - 8);
  v33 = *(v153 + 64);
  v34 = MEMORY[0x28223BE20](v158);
  v145 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v118 - v36;
  v38 = sub_20D972628();
  v39 = *(v38 - 8);
  v156 = v38;
  v157 = v39;
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v146 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v154 = &v118 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v120 = &v118 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v151 = &v118 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v119 = &v118 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v150 = &v118 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = &v118 - v53;
  if (qword_27C8385F8 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for HistoricalUsageSnapshot();
  v56 = __swift_project_value_buffer(v55, qword_27C83A1C0);
  v58 = v56[1];
  v143 = *v56;
  v57 = v143;
  v59 = v55[9];

  sub_20D971D78();
  v148 = v54;
  v60 = v55[12];
  sub_20D972E68();
  v125 = v28;
  v61 = *(v28 + 16);
  v62 = v152;
  v61(v152, v160, v159);
  v63 = sub_20D972E38();
  v64 = v155;
  *v155 = v57;
  v64[1] = v58;
  *(v64 + v55[16]) = 6;
  *(v64 + v55[11]) = 0;
  v61(v144, v62, v159);
  v65 = v55;
  v66 = *(v153 + 16);
  v124 = v37;
  v66(v145, v37, v158);
  v67 = v55[12];

  v123 = v63;
  v160 = v67;
  sub_20D972E28();
  v68 = sub_20D972E38();
  v69 = v64;
  if (*(v68 + 16))
  {
    v70 = v147;
    v71 = v121;
    v72 = v149;
    (*(v147 + 2))(v121, v68 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v149);

    v74 = v119;
    MEMORY[0x20F320DF0](v73);
    (*(v70 + 1))(v71, v72);
    v75 = v156;
    v76 = v157;
    (*(v157 + 32))(v150, v74, v156);
  }

  else
  {

    v75 = v156;
    v76 = v157;
    (*(v157 + 16))(v150, v148, v156);
  }

  v77 = v65[9];
  sub_20D972DA8();
  v78 = sub_20D972E38();
  v79 = *(v78 + 16);
  v80 = v151;
  if (v79)
  {
    v81 = v147;
    v82 = v122;
    v83 = v149;
    (*(v147 + 2))(v122, v78 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 9) * (v79 - 1), v149);

    v85 = v120;
    MEMORY[0x20F320DF0](v84);
    (*(v81 + 1))(v82, v83);
    v76 = v157;
    (*(v157 + 32))(v80, v85, v75);
  }

  else
  {

    (*(v76 + 16))(v80, v148, v75);
  }

  v86 = v65[10];
  sub_20D972DA8();
  v87 = v69 + v65[5];
  sub_20D971D78();
  v88 = v69 + v65[6];
  sub_20D971D78();
  v89 = v69 + v65[7];
  sub_20D971D78();
  v90 = v69 + v65[8];
  sub_20D971D78();
  v91 = v154;
  sub_20D971D78();
  v92 = v146;
  sub_20D971D48();
  sub_20D865490(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if (result)
  {
    v94 = *(v76 + 32);
    v145 = (v76 + 32);
    v95 = v92;
    v96 = v129;
    v94(v129, v91, v75);
    v97 = v76;
    v98 = v132;
    v94((v96 + *(v132 + 48)), v95, v75);
    v99 = v131;
    sub_20D7EB7E8(v96, v131, &unk_27C83C750, &unk_20D978DD0);
    v100 = *(v98 + 48);
    v149 = v65;
    v101 = v130;
    v94(v130, v99, v75);
    v102 = *(v97 + 8);
    v144 = v102;
    (v102)(v99 + v100, v75);
    sub_20D7EAF18(v96, v99, &unk_27C83C750, &unk_20D978DD0);
    v103 = v101 + *(v128 + 36);
    v104 = v99 + *(v98 + 48);
    v147 = v94;
    v94(v103, v104, v75);
    v146 = (v97 + 8);
    (v102)(v99, v75);
    v105 = v155;
    v106 = v133;
    (*(v134 + 16))(v133, v155 + v160, v135);
    v107 = v154;
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v101, v106, v107, v105 + *(v149 + 52));
    v108 = v153;
    v110 = v140;
    v109 = v141;
    (*(v140 + 56))(v136, 1, 1, v141);
    (*(v108 + 56))(v138, 1, 1, v158);
    v111 = v105;
    v112 = v137;
    sub_20D971E98();
    v113 = v139;
    sub_20D972E48();
    v114 = v142;
    sub_20D972748();
    (*(v110 + 8))(v113, v109);
    v115 = v156;
    result = (*(v157 + 48))(v114, 1, v156);
    if (result != 1)
    {

      (*(v126 + 8))(v112, v127);
      v116 = v144;
      (v144)(v151, v115);
      v116(v150, v115);
      (*(v125 + 8))(v152, v159);
      (*(v108 + 8))(v124, v158);
      v116(v148, v115);
      v117 = v149;
      result = (v147)(v111 + *(v149 + 56), v114, v115);
      *(v111 + *(v117 + 60)) = MEMORY[0x277D84FA0];
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t HistoricalUsageSnapshot.description.getter()
{
  v1 = v0;
  v54 = sub_20D972208();
  v51 = *(v54 - 8);
  v2 = *(v51 + 64);
  MEMORY[0x28223BE20](v54);
  v47[0] = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_20D972248();
  v50 = *(v53 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v53);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20D972628();
  v49 = *(v52 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v52);
  v48 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972AF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for HistoricalUsageSnapshot();
  v14 = *(v0 + v55[16]);
  if (v14 <= 2)
  {
    v18 = 0x800000020D985280;
    v19 = 0xD000000000000012;
    if (v14 != 1)
    {
      v19 = 0xD000000000000017;
      v18 = 0x800000020D985260;
    }

    v20 = v14 == 0;
    if (*(v0 + v55[16]))
    {
      v16 = v19;
    }

    else
    {
      v16 = 0xD000000000000013;
    }

    if (v20)
    {
      v17 = 0x800000020D9852A0;
    }

    else
    {
      v17 = v18;
    }
  }

  else if (*(v0 + v55[16]) > 4u)
  {
    v21 = 0;
    if (v14 != 5)
    {
      goto LABEL_20;
    }

    v17 = 0xEB00000000726F72;
    v16 = 0x726520726568744FLL;
  }

  else
  {
    v15 = v14 == 3;
    if (v14 == 3)
    {
      v16 = 0xD00000000000001DLL;
    }

    else
    {
      v16 = 0xD000000000000021;
    }

    if (v15)
    {
      v17 = 0x800000020D985240;
    }

    else
    {
      v17 = 0x800000020D985210;
    }
  }

  v58 = v16;
  v59 = v17;
  sub_20D7E1EF8();
  sub_20D975538();
  v21 = v22;

LABEL_20:
  v23 = 0xE000000000000000;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xA3A5355485BLL, 0xE600000000000000);
  v47[1] = v55[12];
  sub_20D972E58();
  sub_20D972AE8();
  (*(v10 + 8))(v13, v9);
  v24 = sub_20D975128();
  v26 = v25;

  MEMORY[0x20F323340](v24, v26);

  if (v21)
  {
    v27 = sub_20D975128();
    v29 = v28;

    v56 = 0x3A726F72726520;
    v57 = 0xE700000000000000;
    MEMORY[0x20F323340](v27, v29);

    MEMORY[0x20F323340](32, 0xE100000000000000);

    v30 = v56;
    v23 = v57;
  }

  else
  {
    v30 = 0;
  }

  MEMORY[0x20F323340](v30, v23);

  MEMORY[0x20F323340](0x6469657469730A20, 0xE90000000000003ALL);
  MEMORY[0x20F323340](*v0, v0[1]);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D9851D0);
  v31 = v55;
  if (*(v0 + v55[11]))
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (*(v0 + v55[11]))
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  MEMORY[0x20F323340](v32, v33);

  MEMORY[0x20F323340](0xD000000000000015, 0x800000020D9851F0);
  v34 = *(sub_20D972E38() + 16);

  v56 = v34;
  v35 = sub_20D9757A8();
  MEMORY[0x20F323340](v35);

  MEMORY[0x20F323340](0x3A65676E61720A20, 0xE800000000000000);
  v36 = v0 + v31[9];
  v37 = v48;
  sub_20D971D78();
  sub_20D972218();
  v38 = v47[0];
  sub_20D9721E8();
  v39 = sub_20D9725E8();
  v41 = v40;
  v51 = *(v51 + 8);
  (v51)(v38, v54);
  v50 = *(v50 + 8);
  (v50)(v6, v53);
  v49 = *(v49 + 8);
  (v49)(v37, v52);
  MEMORY[0x20F323340](v39, v41);

  MEMORY[0x20F323340](2108704, 0xE300000000000000);
  v42 = v1 + v55[10];
  sub_20D971D78();
  sub_20D972218();
  sub_20D9721E8();
  v43 = sub_20D9725E8();
  v45 = v44;
  (v51)(v38, v54);
  (v50)(v6, v53);
  (v49)(v37, v52);
  MEMORY[0x20F323340](v43, v45);

  MEMORY[0x20F323340](93, 0xE100000000000000);
  return v58;
}

unint64_t HistoricalUsageError.description.getter()
{
  v1 = *v0;
  v2 = 0x726520726568744FLL;
  if (v1 == 4)
  {
    v2 = 0xD000000000000021;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001DLL;
  }

  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v1 != 1)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20D8647E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v23 = a1;
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972BB8();
  v10 = sub_20D972BB8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v9;
  sub_20D865230(v10, sub_20D865460, 0, isUniquelyReferenced_nonNull_native, &v25);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v22[1] = v25;
    v12 = sub_20D972BA8();
    v13 = sub_20D972BA8();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v25 = v12;
    sub_20D865230(v13, sub_20D865460, 0, v14, &v25);
    v24 = a2;
    v22[0] = v25;
    v15 = sub_20D972B98();
    v16 = sub_20D972B98();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v25 = v15;
    sub_20D865230(v16, sub_20D865460, 0, v17, &v25);
    v18 = sub_20D972B88();
    v19 = sub_20D972B88();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v25 = v18;
    sub_20D865230(v19, sub_20D865460, 0, v20, &v25);
    (*(v5 + 16))(v8, v23, v4);
    sub_20D972C18();
    sub_20D972C18();
    sub_20D972BE8();
    sub_20D972BE8();
    return sub_20D972C48();
  }

  return result;
}

uint64_t sub_20D864AB8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v21 = a2;
  v8 = sub_20D972C58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v9 + 16))(a4, a1, v8);
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = (v9 + 8);
    v16 = v9;
    v17 = (v9 + 32);
    v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v20 = *(v16 + 72);
    while (1)
    {
      v21(a4, v18);
      if (v4)
      {
        break;
      }

      (*v15)(a4, v8);
      result = (*v17)(a4, v12, v8);
      v18 += v20;
      if (!--v14)
      {
        return result;
      }
    }

    return (*v15)(a4, v8);
  }

  return result;
}

HomeEnergyUI::HistoricalUsageError_optional __swiftcall HistoricalUsageError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_20D864C88()
{
  v1 = *v0;
  v2 = 0x726520726568744FLL;
  if (v1 == 4)
  {
    v2 = 0xD000000000000021;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001DLL;
  }

  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v1 != 1)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20D864D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D8651DC();
  v5 = sub_20D7DDF10();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t type metadata accessor for HistoricalUsageSnapshot()
{
  result = qword_2811272C0;
  if (!qword_2811272C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20D864E04()
{
  result = qword_27C8398B8;
  if (!qword_27C8398B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8398B8);
  }

  return result;
}

void sub_20D864E80()
{
  sub_20D972628();
  if (v0 <= 0x3F)
  {
    sub_20D971D98();
    if (v1 <= 0x3F)
    {
      sub_20D972E88();
      if (v2 <= 0x3F)
      {
        type metadata accessor for HistoricalUsageSnapshotDerivedInfo(319);
        if (v3 <= 0x3F)
        {
          sub_20D864F8C();
          if (v4 <= 0x3F)
          {
            sub_20D86503C();
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

void sub_20D864F8C()
{
  if (!qword_281124BE0)
  {
    sub_20D864FE8();
    v0 = sub_20D975388();
    if (!v1)
    {
      atomic_store(v0, &qword_281124BE0);
    }
  }
}

unint64_t sub_20D864FE8()
{
  result = qword_2811267D8;
  if (!qword_2811267D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811267D8);
  }

  return result;
}

void sub_20D86503C()
{
  if (!qword_2811267E0[0])
  {
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, qword_2811267E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for HistoricalUsageError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HistoricalUsageError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20D8651DC()
{
  result = qword_27C8398C0;
  if (!qword_27C8398C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8398C0);
  }

  return result;
}

uint64_t sub_20D865230(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_11:
    v14 = (v13 << 9) | (8 * __clz(__rbit64(v10)));
    v15 = *(*(a1 + 56) + v14);
    v36[0] = *(*(a1 + 48) + v14);
    v36[1] = v15;
    a2(v35, v36);
    v16 = v35[0];
    v17 = *&v35[1];
    v18 = *a5;
    v19 = sub_20D8D4AC0(v35[0]);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (v18[3] >= v24)
    {
      if ((a4 & 1) == 0)
      {
        v32 = v19;
        sub_20D8D60B4();
        v19 = v32;
      }
    }

    else
    {
      sub_20D908AC8(v24, a4 & 1);
      v26 = *a5;
      v19 = sub_20D8D4AC0(v16);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v10 &= v10 - 1;
    v28 = *a5;
    if (v25)
    {
      *(v28[7] + 8 * v19) = v17 + *(v28[7] + 8 * v19);
    }

    else
    {
      v28[(v19 >> 6) + 8] |= 1 << v19;
      *(v28[6] + 8 * v19) = v16;
      *(v28[7] + 8 * v19) = v17;
      v29 = v28[2];
      v23 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v28[2] = v30;
    }

    a4 = 1;
    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_20D9757F8();
  __break(1u);
  return result;
}

double sub_20D865460@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_20D865490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D8654D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id UtilityConfigurationHelper.config.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t UtilityConfigurationHelper.init(config:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v30 = sub_20D84B8EC(&unk_28249A5E8);
  swift_arrayDestroy();
  v3 = a1;
  v4 = sub_20D8657CC();
  v29 = v3;

  v5 = *(v4 + 2);

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = 40 * v7;
  while (v5 != v7)
  {
    if (v7 >= *(v4 + 2))
    {
      __break(1u);
      return result;
    }

    ++v7;
    v11 = v10 + 40;
    v12 = v4[v10 + 64];
    v10 += 40;
    if (v12)
    {
      v13 = *&v4[v11 - 8];
      v14 = *&v4[v11];
      v15 = *&v4[v11 + 8];
      v16 = *&v4[v11 + 16];

      result = swift_isUniquelyReferenced_nonNull_native();
      v28 = v13;
      if ((result & 1) == 0)
      {
        result = sub_20D95D9B8(0, v9[2] + 1, 1);
      }

      v18 = v9[2];
      v17 = v9[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_20D95D9B8((v17 > 1), v18 + 1, 1);
      }

      v9[2] = v18 + 1;
      v19 = &v9[5 * v18];
      v19[4] = v28;
      v19[5] = v14;
      v19[6] = v15;
      v19[7] = v16;
      *(v19 + 64) = 1;
      goto LABEL_2;
    }
  }

  v20 = v9[2];
  if (v20)
  {
    sub_20D95D9D8(0, v20, 0);
    v21 = v9 + 7;
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v24 = *(v8 + 16);
      v25 = *(v8 + 24);

      if (v24 >= v25 >> 1)
      {
        sub_20D95D9D8((v25 > 1), v24 + 1, 1);
      }

      *(v8 + 16) = v24 + 1;
      v26 = v8 + 16 * v24;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      v21 += 5;
      --v20;
    }

    while (v20);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v27 = sub_20D81A0F4(v8);

  *a2 = v29;
  a2[1] = v4;
  a2[2] = v27;
  a2[3] = v30;
  return result;
}

char *sub_20D8657CC()
{
  v0 = sub_20D9731E8();
  v1 = MEMORY[0x277D84F90];
  if (!v0)
  {
    return v1;
  }

  v2 = v0;
  v31 = MEMORY[0x277D84F90];
  v3 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20D975748())
  {
    v5 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F323850](v6, v2);
      }

      else
      {
        if (v6 >= *(v3 + 16))
        {
          goto LABEL_33;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (sub_20D9733E8() == 0x7972746E756F43 && v10 == 0xE700000000000000)
      {
      }

      else
      {
        v11 = sub_20D9757C8();

        if (v11)
        {
        }

        else
        {
          sub_20D9756D8();
          v12 = *(v31 + 16);
          sub_20D975708();
          sub_20D975718();
          sub_20D9756E8();
        }
      }

      ++v6;
      if (v9 == i)
      {
        v13 = v31;
        v5 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_20:

  if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

  v14 = sub_20D975748();
  if (!v14)
  {
LABEL_36:

    return MEMORY[0x277D84F90];
  }

LABEL_23:
  result = sub_20D95D9B8(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v1 = v5;
    v17 = v13;
    v30 = v14;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x20F323850](v16, v17);
      }

      else
      {
        v18 = *(v17 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = sub_20D9733D8();
      v22 = v21;
      v23 = sub_20D9733E8();
      v25 = v24;
      v26 = sub_20D9733F8();

      v28 = *(v1 + 16);
      v27 = *(v1 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_20D95D9B8((v27 > 1), v28 + 1, 1);
      }

      ++v16;
      *(v1 + 16) = v28 + 1;
      v29 = v1 + 40 * v28;
      *(v29 + 32) = v20;
      *(v29 + 40) = v22;
      *(v29 + 48) = v23;
      *(v29 + 56) = v25;
      *(v29 + 64) = v26 & 1;
      v17 = v13;
    }

    while (v30 != v16);

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t UtilityConfigurationHelper.init(fields:required:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_20D84B8EC(&unk_28249A6C8);
  swift_arrayDestroy();
  a3[3] = v6;
  *a3 = 0;
  a3[1] = a1;
  v7 = sub_20D81A0F4(a2);

  a3[2] = v7;
  return result;
}

uint64_t UtilityConfigurationHelper.name.getter()
{
  if (!*v0)
  {
    return 0;
  }

  result = sub_20D9731D8();
  if (!v2)
  {
    return sub_20D9731B8();
  }

  return result;
}

uint64_t UtilityConfigurationHelper.longName.getter()
{
  if (*v0)
  {
    return sub_20D9731B8();
  }

  else
  {
    return 0;
  }
}

uint64_t UtilityConfigurationHelper.otpLength.getter()
{
  if (*v0)
  {
    return sub_20D973198();
  }

  else
  {
    return 0;
  }
}

uint64_t UtilityConfigurationHelper.OAuthURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    return sub_20D9731C8();
  }

  v4 = sub_20D9721C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 1, 1, v4);
}

uint64_t UtilityConfigurationHelper.logoURL.getter()
{
  if (!*v0)
  {
    return 0;
  }

  v1 = sub_20D9731A8();
  v2 = sub_20D973168();

  v3 = sub_20D9732E8();
  return v3;
}

uint64_t UtilityConfigurationHelper.termsAndConditions.getter()
{
  if (*v0)
  {
    return sub_20D973188();
  }

  else
  {
    return 0;
  }
}

void *UtilityConfigurationHelper.sections.getter()
{
  if (!*v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = sub_20D973178();
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = v1;
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_31:

    return v2;
  }

  while (1)
  {
    v58 = v2;
    result = sub_20D95D9F8(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      break;
    }

    v2 = v58;
    v49 = v3;
    if ((v3 & 0xC000000000000001) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E0, &unk_20D979E40);
      v6 = 0;
      v3 = &v55;
      while (1)
      {
        MEMORY[0x20F323850](v6, v49);
        v56[0] = 0x726564616568;
        v56[1] = 0xE600000000000000;
        v56[2] = sub_20D973348();
        v56[3] = v7;
        v56[5] = MEMORY[0x277D837D0];
        v57[0] = 0x73646C656966;
        v57[1] = 0xE600000000000000;
        v8 = sub_20D973338();
        v57[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
        v57[2] = v8;
        v9 = sub_20D975778();

        sub_20D866390(v56, &v52);
        v10 = v52;
        v11 = v53;
        v12 = sub_20D8D4A48(v52, v53);
        if (v13)
        {
          break;
        }

        *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
        v14 = (v9[6] + 16 * v12);
        *v14 = v10;
        v14[1] = v11;
        sub_20D7E39A4(v54, (v9[7] + 32 * v12));
        v15 = v9[2];
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          goto LABEL_27;
        }

        v9[2] = v17;
        sub_20D866390(v57, &v52);
        v18 = v52;
        v19 = v53;
        v20 = sub_20D8D4A48(v52, v53);
        if (v21)
        {
          break;
        }

        *(v9 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
        v22 = (v9[6] + 16 * v20);
        *v22 = v18;
        v22[1] = v19;
        sub_20D7E39A4(v54, (v9[7] + 32 * v20));
        v23 = v9[2];
        v16 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v16)
        {
          goto LABEL_27;
        }

        v9[2] = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EB0, &qword_20D979E50);
        swift_arrayDestroy();
        swift_unknownObjectRelease();
        v58 = v2;
        v26 = *(v2 + 16);
        v25 = *(v2 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_20D95D9F8((v25 > 1), v26 + 1, 1);
          v2 = v58;
        }

        ++v6;
        *(v2 + 16) = v26 + 1;
        *(v2 + 8 * v26 + 32) = v9;
        if (v4 == v6)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

    else
    {
      v27 = (v3 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E0, &unk_20D979E40);
      while (1)
      {
        v28 = *v27;
        v3 = 0xE600000000000000;
        v50[0] = 0x726564616568;
        v50[1] = 0xE600000000000000;
        v29 = v28;
        v50[2] = sub_20D973348();
        v50[3] = v30;
        v50[5] = MEMORY[0x277D837D0];
        v51[0] = 0x73646C656966;
        v51[1] = 0xE600000000000000;
        v31 = sub_20D973338();
        v51[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
        v51[2] = v31;
        v32 = sub_20D975778();

        sub_20D866390(v50, &v52);
        v33 = v52;
        v34 = v53;
        v35 = sub_20D8D4A48(v52, v53);
        if (v36)
        {
          break;
        }

        v3 = (v32 + 8);
        *(v32 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v35;
        v37 = (v32[6] + 16 * v35);
        *v37 = v33;
        v37[1] = v34;
        sub_20D7E39A4(v54, (v32[7] + 32 * v35));
        v38 = v32[2];
        v16 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v16)
        {
          goto LABEL_29;
        }

        v32[2] = v39;
        sub_20D866390(v51, &v52);
        v40 = v52;
        v41 = v53;
        v42 = sub_20D8D4A48(v52, v53);
        if (v43)
        {
          break;
        }

        *(v3 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
        v44 = (v32[6] + 16 * v42);
        *v44 = v40;
        v44[1] = v41;
        sub_20D7E39A4(v54, (v32[7] + 32 * v42));
        v45 = v32[2];
        v16 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v16)
        {
          goto LABEL_29;
        }

        v32[2] = v46;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EB0, &qword_20D979E50);
        swift_arrayDestroy();

        v58 = v2;
        v48 = *(v2 + 16);
        v47 = *(v2 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_20D95D9F8((v47 > 1), v48 + 1, 1);
          v2 = v58;
        }

        *(v2 + 16) = v48 + 1;
        *(v2 + 8 * v48 + 32) = v32;
        ++v27;
        if (!--v4)
        {
          goto LABEL_31;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v4 = sub_20D975748();
    if (!v4)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t UtilityConfigurationHelper.isPasswordlessEnabled()()
{
  if (*v0)
  {
    v2 = *(MEMORY[0x277D18150] + 4);
    v6 = (*MEMORY[0x277D18150] + MEMORY[0x277D18150]);
    v3 = swift_task_alloc();
    *(v1 + 16) = v3;
    *v3 = v1;
    v3[1] = sub_20D80F3B0;

    return v6();
  }

  else
  {
    v5 = *(v1 + 8);

    return v5(0);
  }
}

uint64_t TAFField.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TAFField.formKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall TAFField.init(_:)(HomeEnergyUI::TAFField *__return_ptr retstr, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;

  MEMORY[0x20F323340](0x6C6562616C2DLL, 0xE600000000000000);
  retstr->label = a2;
  retstr->formKey._countAndFlagsBits = countAndFlagsBits;
  retstr->formKey._object = object;
  retstr->required = 1;
}

uint64_t sub_20D866390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EB0, &qword_20D979E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D866400(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20D866448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20D8664AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_20D8664F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GridForecastSnapshot.updateEnergyIndicatorStatus(referenceTime:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v27[-v6];
  v8 = type metadata accessor for GridForecastSnapshot(0);
  if (*(v0 + *(v8 + 36)) != 12)
  {
    return 11565;
  }

  v9 = *(v8 + 20);
  v10 = sub_20D9729C8();
  if (!v10)
  {
    v18 = sub_20D972998();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    goto LABEL_12;
  }

  v11 = v10;
  MEMORY[0x28223BE20](v10);
  sub_20D871194(sub_20D86E170, v11, v7);

  v12 = sub_20D972998();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
LABEL_12:
    sub_20D7E3944(v7, &qword_27C838E48, &qword_20D977670);
LABEL_13:
    v19 = sub_20D9729C8();
    if (v19)
    {
      v20 = v19;
      MEMORY[0x28223BE20](v19);
      sub_20D871194(sub_20D80534C, v20, v5);

      v21 = sub_20D972998();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v5, 1, v21) != 1)
      {
        v23 = EnergyWindow.isStrainedEnergy.getter();
        (*(v22 + 8))(v5, v21);
        if (v23)
        {
          if (qword_27C838378 != -1)
          {
            swift_once();
          }

          v15 = qword_27C8389D0;
          v24 = qword_27C838750;

          if (v24 != -1)
          {
            swift_once();
          }

          v16 = &qword_27C840E70;
          goto LABEL_28;
        }

LABEL_23:
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v15 = sub_20D971FF8();
        if (qword_281124D98 != -1)
        {
          swift_once();
        }

        v16 = &qword_28112AB68;
        goto LABEL_28;
      }
    }

    else
    {
      v25 = sub_20D972998();
      (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
    }

    sub_20D7E3944(v5, &qword_27C838E48, &qword_20D977670);
    goto LABEL_23;
  }

  v14 = EnergyWindow.isCleanEnergy.getter();
  (*(v13 + 8))(v7, v12);
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v15 = sub_20D971FF8();
  if (qword_281126F20 != -1)
  {
    swift_once();
  }

  v16 = &qword_28112ABF0;
LABEL_28:
  v26 = *v16;

  return v15;
}

Swift::Bool __swiftcall GridForecastSnapshot.shouldShowNotificationButton()()
{
  v1 = type metadata accessor for GridForecastSnapshotType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D86CC5C(v0, v4, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v6 = *(v4 + 2);

      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7E3944(&v4[*(v7 + 64)], &qword_27C8389F8, &qword_20D978460);
    }

    v8 = *(v0 + *(type metadata accessor for GridForecastSnapshot(0) + 36));
    if (v8 == 12 || !sub_20D7E0AEC(v8, &unk_282497008))
    {
      return 1;
    }
  }

  else
  {
    sub_20D86DC2C(v4, type metadata accessor for GridForecastSnapshotType);
  }

  return 0;
}

uint64_t sub_20D866C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_20D972EC8();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = sub_20D972A78();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = sub_20D972698();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v14 = type metadata accessor for GridForecastSnapshot(0);
  v4[22] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v16 = type metadata accessor for GridForecastSnapshotType(0);
  v4[27] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D866E94, 0, 0);
}

uint64_t sub_20D866E94()
{
  v152 = v0;
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v140 = v0[31];
  v145 = v0[27];
  v2 = v0[22];
  v3 = v0[18];
  v137 = v0[17];
  v4 = v0[10];
  sub_20D971FF8();
  v147 = v5;
  sub_20D971FF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20D979110;
  v7 = (v4 + *(v2 + 28));
  v8 = *v7;
  v9 = v7[1];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_20D84E340();
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;

  sub_20D9750C8();

  v0[8] = 0xD00000000000003FLL;
  v0[9] = 0x800000020D984820;
  (*(v3 + 56))(v140, 1, 1, v137);
  sub_20D86CC5C(v4, v1, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D86DC2C(v0[28], type metadata accessor for GridForecastSnapshotType);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v41 = v0[26];
    v42 = v0[10];
    v43 = sub_20D9734F8();
    __swift_project_value_buffer(v43, qword_28112AC00);
    sub_20D86CC5C(v42, v41, type metadata accessor for GridForecastSnapshot);
    v44 = sub_20D9734D8();
    v45 = sub_20D975448();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[26];
    if (v46)
    {
      v48 = v0[22];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v150 = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v150);
      *(v49 + 12) = 2080;
      v51 = (v47 + *(v48 + 24));
      v52 = *v51;
      v53 = v51[1];

      sub_20D86DC2C(v47, type metadata accessor for GridForecastSnapshot);
      v54 = sub_20D7F4DC8(v52, v53, &v150);

      *(v49 + 14) = v54;
      _os_log_impl(&dword_20D7C9000, v44, v45, "%s: called on CL snapshot for %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v50, -1, -1);
      MEMORY[0x20F324260](v49, -1, -1);
    }

    else
    {

      sub_20D86DC2C(v47, type metadata accessor for GridForecastSnapshot);
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = v0[30];
    v11 = v0[31];
    v13 = v0[28];

    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
    sub_20D7E2A54(v13 + *(v16 + 64), v12);
    sub_20D86DFE8(v12, v11);
    if (v14)
    {

      v147 = v14;
    }

    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v17 = v0[25];
    v18 = v0[10];
    v19 = sub_20D9734F8();
    __swift_project_value_buffer(v19, qword_28112AC00);
    sub_20D86CC5C(v18, v17, type metadata accessor for GridForecastSnapshot);

    v20 = sub_20D9734D8();
    v21 = sub_20D975448();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = 0x3E6C696E3CLL;
      v23 = v0[31];
      v24 = v0[18];
      v138 = v0[17];
      v25 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v150 = v141;
      *v25 = 136315906;
      *(v25 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v150);
      *(v25 + 12) = 2080;
      if (v14)
      {
        v26 = v15;
      }

      else
      {
        v26 = 0x3E6C696E3CLL;
      }

      v27 = 0xE500000000000000;
      if (!v14)
      {
        v14 = 0xE500000000000000;
      }

      v28 = sub_20D7F4DC8(v26, v14, &v150);

      *(v25 + 14) = v28;
      *(v25 + 22) = 2080;
      swift_beginAccess();
      if (!(*(v24 + 48))(v23, 1, v138))
      {
        v29 = v0[21];
        v30 = v0[17];
        v31 = v0[18];
        (*(v31 + 16))(v29, v0[31], v30);
        v22 = sub_20D972648();
        v27 = v32;
        (*(v31 + 8))(v29, v30);
      }

      v33 = v0[30];
      v34 = v0[25];
      v35 = v0[22];
      v36 = sub_20D7F4DC8(v22, v27, &v150);

      *(v25 + 24) = v36;
      *(v25 + 32) = 2080;
      v37 = (v34 + *(v35 + 24));
      v38 = *v37;
      v39 = v37[1];

      sub_20D86DC2C(v34, type metadata accessor for GridForecastSnapshot);
      v40 = sub_20D7F4DC8(v38, v39, &v150);

      *(v25 + 34) = v40;
      _os_log_impl(&dword_20D7C9000, v20, v21, "%s: called on Fixed snapshot %s:%s for %s", v25, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v141, -1, -1);
      MEMORY[0x20F324260](v25, -1, -1);

      sub_20D7E3944(v33, &qword_27C8389F8, &qword_20D978460);
    }

    else
    {
      v70 = v0[30];
      v71 = v0[25];

      sub_20D86DC2C(v71, type metadata accessor for GridForecastSnapshot);
      sub_20D7E3944(v70, &qword_27C8389F8, &qword_20D978460);
    }

LABEL_28:
    v0[32] = v147;
    v72 = v0[31];
    v73 = v0[29];
    v74 = v0[17];
    v75 = v0[18];
    swift_beginAccess();
    sub_20D7EB7E8(v72, v73, &qword_27C8389F8, &qword_20D978460);
    v76 = *(v75 + 48);
    v77 = v76(v73, 1, v74);
    v78 = v0[29];
    if (v77 == 1)
    {
      sub_20D7E3944(v0[29], &qword_27C8389F8, &qword_20D978460);
      if (qword_281127100 != -1)
      {
        swift_once();
      }

      v79 = sub_20D9734F8();
      __swift_project_value_buffer(v79, qword_28112AC00);
      v80 = sub_20D9734D8();
      v81 = sub_20D975448();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v150 = v83;
        *v82 = 136315138;
        *(v82 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v150);
        _os_log_impl(&dword_20D7C9000, v80, v81, "%s creating notification for current location", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v83);
        MEMORY[0x20F324260](v83, -1, -1);
        MEMORY[0x20F324260](v82, -1, -1);
      }
    }

    else
    {
      (*(v0[18] + 32))(v0[20], v0[29], v0[17]);
      v84 = sub_20D972648();
      v150 = 0x3D6469656D6F6826;
      v151 = 0xE800000000000000;
      MEMORY[0x20F323340](v84);

      MEMORY[0x20F323340](v150, v151);

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      v85 = v0[19];
      v86 = v0[20];
      v87 = v0[17];
      v88 = v0[18];
      v89 = sub_20D9734F8();
      __swift_project_value_buffer(v89, qword_28112AC00);
      (*(v88 + 16))(v85, v86, v87);
      v90 = sub_20D9734D8();
      v91 = sub_20D975448();
      v92 = os_log_type_enabled(v90, v91);
      v93 = v0[19];
      v94 = v0[20];
      v95 = v0[17];
      v96 = v0[18];
      if (v92)
      {
        v142 = v76;
        v97 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v150 = v136;
        *v97 = 136315394;
        *(v97 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v150);
        *(v97 + 12) = 2080;
        v98 = sub_20D972648();
        v99 = v95;
        v135 = v95;
        v100 = v98;
        v102 = v101;
        v103 = *(v96 + 8);
        v103(v93, v99);
        v104 = sub_20D7F4DC8(v100, v102, &v150);

        *(v97 + 14) = v104;
        _os_log_impl(&dword_20D7C9000, v90, v91, "%s creating notification for homeID: %s", v97, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v136, -1, -1);
        v105 = v97;
        v76 = v142;
        MEMORY[0x20F324260](v105, -1, -1);

        v103(v94, v135);
      }

      else
      {

        v106 = *(v96 + 8);
        v106(v93, v95);
        v106(v94, v95);
      }
    }

    v107 = v0[31];
    v108 = v0[17];
    v139 = v0[9];
    v143 = v0[8];
    if (!v76(v107, 1, v108))
    {
      v109 = v0[21];
      v110 = v0[18];
      (*(v110 + 16))(v109, v107, v108);
      sub_20D972648();
      (*(v110 + 8))(v109, v108);
    }

    v111 = v0[22];
    v112 = v0[16];
    v113 = v0[12];
    v114 = v0[13];
    v115 = v0[10];
    v116 = v0[11];
    (*(v113 + 104))(v114, *MEMORY[0x277D07360], v116);
    sub_20D972EB8();
    (*(v113 + 8))(v114, v116);

    sub_20D972A68();
    sub_20D972AA8();
    v0[33] = sub_20D972A98();
    v117 = (v115 + *(v111 + 24));
    v118 = *v117;
    v119 = v117[1];
    v120 = *(MEMORY[0x277D07568] + 4);
    v148 = (*MEMORY[0x277D07568] + MEMORY[0x277D07568]);
    v121 = swift_task_alloc();
    v0[34] = v121;
    *v121 = v0;
    v121[1] = sub_20D867EBC;
    v122 = v0[16];

    return v148(v118, v119, v122);
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v55 = v0[24];
  v56 = v0[10];
  v57 = sub_20D9734F8();
  __swift_project_value_buffer(v57, qword_28112AC00);
  sub_20D86CC5C(v56, v55, type metadata accessor for GridForecastSnapshot);
  v58 = sub_20D9734D8();
  v59 = sub_20D975458();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v0[31];
  v62 = v0[24];
  if (v60)
  {
    v63 = v0[22];
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v150 = v65;
    *v64 = 136315394;
    *(v64 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v150);
    *(v64 + 12) = 2080;
    v66 = (v62 + *(v63 + 24));
    v67 = *v66;
    v68 = v66[1];

    sub_20D86DC2C(v62, type metadata accessor for GridForecastSnapshot);
    v69 = sub_20D7F4DC8(v67, v68, &v150);

    *(v64 + 14) = v69;
    _os_log_impl(&dword_20D7C9000, v58, v59, "%s: called on Static snapshot for %s - WHAT?", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v65, -1, -1);
    MEMORY[0x20F324260](v64, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v62, type metadata accessor for GridForecastSnapshot);
  }

  sub_20D7E3944(v61, &qword_27C8389F8, &qword_20D978460);
  v125 = v0[30];
  v124 = v0[31];
  v127 = v0[28];
  v126 = v0[29];
  v129 = v0[25];
  v128 = v0[26];
  v131 = v0[23];
  v130 = v0[24];
  v133 = v0[20];
  v132 = v0[21];
  v144 = v0[19];
  v146 = v0[16];
  v149 = v0[13];

  v134 = v0[1];

  return v134();
}

uint64_t sub_20D867EBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v8 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  if (v1)
  {
    v5 = sub_20D868364;
  }

  else
  {
    v6 = v3[33];

    v5 = sub_20D867FD8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20D867FD8()
{
  v43 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[10];
  v3 = sub_20D9734F8();
  __swift_project_value_buffer(v3, qword_28112AC00);
  sub_20D86CC5C(v2, v1, type metadata accessor for GridForecastSnapshot);
  v4 = sub_20D9734D8();
  v5 = sub_20D975448();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[35];
    v8 = v0[22];
    v7 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v42);
    *(v9 + 12) = 2080;
    v11 = (v7 + *(v8 + 24));
    v12 = *v11;
    v13 = v11[1];

    sub_20D86DC2C(v7, type metadata accessor for GridForecastSnapshot);
    v14 = sub_20D7F4DC8(v12, v13, &v42);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    v15 = sub_20D972A38();
    v17 = sub_20D7F4DC8(v15, v16, &v42);

    *(v9 + 24) = v17;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: for %s status = %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  else
  {
    v18 = v0[23];

    sub_20D86DC2C(v18, type metadata accessor for GridForecastSnapshot);
  }

  v19 = v0[35];
  v20 = sub_20D972A48();
  v21 = sub_20D972A48();
  v22 = v0[32];
  v24 = v0[15];
  v23 = v0[16];
  v25 = v0[14];
  if (v20 == v21)
  {
    v26 = v0[10];
    sub_20D868694(1);

    (*(v24 + 8))(v23, v25);
  }

  else
  {
    (*(v24 + 8))(v0[16], v0[14]);
  }

  sub_20D7E3944(v0[31], &qword_27C8389F8, &qword_20D978460);
  v28 = v0[30];
  v27 = v0[31];
  v30 = v0[28];
  v29 = v0[29];
  v32 = v0[25];
  v31 = v0[26];
  v34 = v0[23];
  v33 = v0[24];
  v36 = v0[20];
  v35 = v0[21];
  v39 = v0[19];
  v40 = v0[16];
  v41 = v0[13];

  v37 = v0[1];

  return v37();
}

uint64_t sub_20D868364()
{
  v37 = v0;
  v1 = v0[33];

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v3 = sub_20D9734F8();
  __swift_project_value_buffer(v3, qword_28112AC00);
  v4 = v2;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[36];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9853E0, &v36);
    *(v9 + 12) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: error: %@", v9, 0x16u);
    sub_20D7E3944(v10, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  else
  {
  }

  v14 = sub_20D972A48();
  v15 = sub_20D972A48();
  v16 = v0[32];
  v18 = v0[15];
  v17 = v0[16];
  v19 = v0[14];
  if (v14 == v15)
  {
    v20 = v0[10];
    sub_20D868694(1);

    (*(v18 + 8))(v17, v19);
  }

  else
  {
    (*(v18 + 8))(v0[16], v0[14]);
  }

  sub_20D7E3944(v0[31], &qword_27C8389F8, &qword_20D978460);
  v22 = v0[30];
  v21 = v0[31];
  v24 = v0[28];
  v23 = v0[29];
  v26 = v0[25];
  v25 = v0[26];
  v28 = v0[23];
  v27 = v0[24];
  v30 = v0[20];
  v29 = v0[21];
  v33 = v0[19];
  v34 = v0[16];
  v35 = v0[13];

  v31 = v0[1];

  return v31();
}

void sub_20D868694(int a1)
{
  v2 = v1;
  v71 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v65 - v5;
  v6 = type metadata accessor for GridForecastSnapshot(0);
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v65 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v65 - v20;
  v22 = type metadata accessor for GridForecastSnapshotType(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D86CC5C(v2, v25, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D86DC2C(v25, type metadata accessor for GridForecastSnapshotType);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v40 = sub_20D9734F8();
    __swift_project_value_buffer(v40, qword_28112AC00);
    v41 = sub_20D9734D8();
    v42 = sub_20D975448();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v71;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v72 = v46;
      *v45 = 136315394;
      *(v45 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9853C0, &v72);
      *(v45 + 12) = 1024;
      *(v45 + 14) = v44 & 1;
      _os_log_impl(&dword_20D7C9000, v41, v42, "%s: called for CL snapshot to %{BOOL}d", v45, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x20F324260](v46, -1, -1);
      MEMORY[0x20F324260](v45, -1, -1);
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v28 = *(v25 + 1);
    v27 = *(v25 + 2);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
    sub_20D7E2A54(&v25[*(v29 + 64)], v21);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v30 = sub_20D9734F8();
    __swift_project_value_buffer(v30, qword_28112AC00);
    sub_20D7EB7E8(v21, v19, &qword_27C8389F8, &qword_20D978460);

    v31 = sub_20D9734D8();
    v32 = sub_20D975448();

    if (os_log_type_enabled(v31, v32))
    {
      v66 = v32;
      v67 = v31;
      v68 = v2;
      v33 = 0x3E6C696E3CLL;
      v34 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v72 = v65;
      *v34 = 136315906;
      *(v34 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9853C0, &v72);
      *(v34 + 12) = 2080;
      if (v27)
      {
        v35 = v28;
      }

      else
      {
        v35 = 0x3E6C696E3CLL;
      }

      if (!v27)
      {
        v27 = 0xE500000000000000;
      }

      v36 = sub_20D7F4DC8(v35, v27, &v72);

      *(v34 + 14) = v36;
      *(v34 + 22) = 2080;
      sub_20D7EB7E8(v19, v16, &qword_27C8389F8, &qword_20D978460);
      v37 = sub_20D972698();
      v38 = *(v37 - 8);
      if ((*(v38 + 48))(v16, 1, v37) == 1)
      {
        sub_20D7E3944(v16, &qword_27C8389F8, &qword_20D978460);
        v39 = 0xE500000000000000;
      }

      else
      {
        v33 = sub_20D972648();
        v39 = v57;
        (*(v38 + 8))(v16, v37);
      }

      v2 = v68;
      v56 = v70;
      sub_20D7E3944(v19, &qword_27C8389F8, &qword_20D978460);
      v58 = sub_20D7F4DC8(v33, v39, &v72);

      *(v34 + 24) = v58;
      *(v34 + 32) = 1024;
      v44 = v71;
      *(v34 + 34) = v71 & 1;
      v59 = v67;
      _os_log_impl(&dword_20D7C9000, v67, v66, "%s: called for Fixed snapshot %s:%s  to %{BOOL}d", v34, 0x26u);
      v60 = v65;
      swift_arrayDestroy();
      MEMORY[0x20F324260](v60, -1, -1);
      MEMORY[0x20F324260](v34, -1, -1);

      sub_20D7E3944(v21, &qword_27C8389F8, &qword_20D978460);
      goto LABEL_27;
    }

    sub_20D7E3944(v19, &qword_27C8389F8, &qword_20D978460);
    sub_20D7E3944(v21, &qword_27C8389F8, &qword_20D978460);
    v44 = v71;
LABEL_23:
    v56 = v70;
LABEL_27:
    v61 = v69;
    v62 = sub_20D975318();
    (*(*(v62 - 8) + 56))(v56, 1, 1, v62);
    sub_20D86CC5C(v2, v9, type metadata accessor for GridForecastSnapshot);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
    *(v64 + 24) = 0;
    sub_20D86CCC4(v9, v64 + v63);
    *(v64 + v63 + v7) = v44 & 1;
    sub_20D82D02C(0, 0, v56, &unk_20D979F60, v64);

    return;
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v47 = sub_20D9734F8();
  __swift_project_value_buffer(v47, qword_28112AC00);
  sub_20D86CC5C(v2, v11, type metadata accessor for GridForecastSnapshot);
  v48 = sub_20D9734D8();
  v49 = sub_20D975458();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v72 = v51;
    *v50 = 136315394;
    *(v50 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9853C0, &v72);
    *(v50 + 12) = 2080;
    v52 = &v11[*(v6 + 24)];
    v53 = *v52;
    v54 = v52[1];

    sub_20D86DC2C(v11, type metadata accessor for GridForecastSnapshot);
    v55 = sub_20D7F4DC8(v53, v54, &v72);

    *(v50 + 14) = v55;
    _os_log_impl(&dword_20D7C9000, v48, v49, "%s: called for Static snapshot for %s - WHAT?", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v51, -1, -1);
    MEMORY[0x20F324260](v50, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v11, type metadata accessor for GridForecastSnapshot);
  }
}

uint64_t sub_20D868FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 1055) = a5;
  *(v5 + 928) = a4;
  return MEMORY[0x2822009F8](sub_20D869010, 0, 0);
}

uint64_t sub_20D869010()
{
  *(v0 + 936) = sub_20D9752E8();
  *(v0 + 944) = sub_20D9752D8();
  v2 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D8690A8, v2, v1);
}

uint64_t sub_20D8690A8()
{
  v1 = *(v0 + 944);

  if (qword_281125EB8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_20D869140, 0, 0);
}

uint64_t sub_20D869140()
{
  v1 = *(v0 + 936);
  *(v0 + 952) = sub_20D9752D8();
  v3 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D8691CC, v3, v2);
}

uint64_t sub_20D8691CC()
{
  v1 = *(v0 + 952);

  *(v0 + 960) = qword_281125EC0;

  return MEMORY[0x2822009F8](sub_20D869240, 0, 0);
}

uint64_t sub_20D869240()
{
  v1 = *(v0 + 936);
  *(v0 + 968) = sub_20D9752D8();
  v3 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D8692CC, v3, v2);
}

uint64_t sub_20D8692CC()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 1055);
  v4 = *(v0 + 928);

  sub_20D84AA34(v4, v3);

  return MEMORY[0x2822009F8](sub_20D869354, 0, 0);
}

uint64_t sub_20D869354()
{
  *(v0 + 634) = *(v0 + 976);
  *(v0 + 652) = *(v0 + 316);
  *(v0 + 649) = *(v0 + 313);
  *(v0 + 668) = *(v0 + 620);
  *(v0 + 665) = *(v0 + 617);
  *(v0 + 700) = *(v0 + 924);
  *(v0 + 697) = *(v0 + 921);
  *(v0 + 732) = *(v0 + 1009);
  *(v0 + 729) = *(v0 + 1006);
  *(v0 + 746) = *(v0 + 982);
  *(v0 + 762) = *(v0 + 988);
  *(v0 + 796) = *(v0 + 1016);
  *(v0 + 793) = *(v0 + 1013);
  *(v0 + 812) = *(v0 + 1023);
  *(v0 + 809) = *(v0 + 1020);
  *(v0 + 828) = *(v0 + 1030);
  *(v0 + 825) = *(v0 + 1027);
  *(v0 + 842) = *(v0 + 994);
  *(v0 + 858) = *(v0 + 1000);
  *(v0 + 876) = *(v0 + 1037);
  *(v0 + 873) = *(v0 + 1034);
  *(v0 + 892) = *(v0 + 1044);
  *(v0 + 889) = *(v0 + 1041);
  *(v0 + 908) = *(v0 + 1051);
  *(v0 + 905) = *(v0 + 1048);
  *(v0 + 632) = 513;
  *(v0 + 638) = *(v0 + 980);
  *(v0 + 648) = 1;
  *(v0 + 664) = 1;
  *(v0 + 696) = 1;
  *(v0 + 728) = 1;
  *(v0 + 744) = 1;
  *(v0 + 750) = *(v0 + 986);
  *(v0 + 760) = 1;
  *(v0 + 761) = *(v0 + 1055);
  *(v0 + 766) = *(v0 + 992);
  *(v0 + 792) = 1;
  *(v0 + 808) = 1;
  *(v0 + 824) = 1;
  *(v0 + 840) = 1;
  *(v0 + 846) = *(v0 + 998);
  *(v0 + 856) = 1;
  *(v0 + 745) = 2;
  *(v0 + 841) = 2;
  *(v0 + 857) = 2;
  *(v0 + 862) = *(v0 + 1004);
  *(v0 + 872) = 1;
  *(v0 + 888) = 1;
  *(v0 + 904) = 1;
  *(v0 + 920) = 1;
  *(v0 + 624) = 0;
  *(v0 + 640) = 0;
  *(v0 + 656) = 0;
  *(v0 + 688) = 0;
  *(v0 + 672) = 0u;
  *(v0 + 720) = 0;
  *(v0 + 704) = 0u;
  *(v0 + 736) = 0;
  *(v0 + 752) = 0;
  *(v0 + 784) = 0;
  *(v0 + 768) = 0u;
  *(v0 + 800) = 0;
  *(v0 + 816) = 0;
  *(v0 + 832) = 0;
  *(v0 + 848) = 0;
  *(v0 + 864) = 0;
  *(v0 + 880) = 0;
  *(v0 + 896) = 0;
  *(v0 + 912) = 0;
  nullsub_5(v0 + 624);
  type metadata accessor for HEUIFAnalyticsEvent();
  v1 = swift_allocObject();
  sub_20D7E3AF0(v0 + 320);
  *(v1 + 16) = 11;
  memcpy((v0 + 16), (v0 + 320), 0x129uLL);
  memcpy((v1 + 24), (v0 + 624), 0x129uLL);
  sub_20D7E3944(v0 + 16, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D8696C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridForecastSnapshot(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_20D975318();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_20D86CC5C(v2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridForecastSnapshot);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_20D86CCC4(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_20D82D02C(0, 0, v10, a2, v13);
}

uint64_t sub_20D869870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = sub_20D972698();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for GridForecastSnapshot(0);
  v4[19] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v10 = type metadata accessor for GridForecastSnapshotType(0);
  v4[24] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D869A10, 0, 0);
}

uint64_t sub_20D869A10()
{
  v106 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[14];
  (*(v0[16] + 56))(v0[28], 1, 1, v0[15]);
  sub_20D86CC5C(v3, v2, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D86DC2C(v0[25], type metadata accessor for GridForecastSnapshotType);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v35 = v0[23];
    v36 = v0[14];
    v37 = sub_20D9734F8();
    __swift_project_value_buffer(v37, qword_28112AC00);
    sub_20D86CC5C(v36, v35, type metadata accessor for GridForecastSnapshot);
    v38 = sub_20D9734D8();
    v39 = sub_20D975448();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[23];
    if (v40)
    {
      v42 = v0[19];
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v105 = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v105);
      *(v43 + 12) = 2080;
      v45 = (v41 + *(v42 + 24));
      v46 = *v45;
      v47 = v45[1];

      sub_20D86DC2C(v41, type metadata accessor for GridForecastSnapshot);
      v48 = sub_20D7F4DC8(v46, v47, &v105);

      *(v43 + 14) = v48;
      _os_log_impl(&dword_20D7C9000, v38, v39, "%s: called CL snapshot for %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v44, -1, -1);
      MEMORY[0x20F324260](v43, -1, -1);
    }

    else
    {

      sub_20D86DC2C(v41, type metadata accessor for GridForecastSnapshot);
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[25];

    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
    sub_20D7E2A54(v7 + *(v10 + 64), v5);
    sub_20D86DFE8(v5, v6);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v11 = v0[22];
    v12 = v0[14];
    v13 = sub_20D9734F8();
    __swift_project_value_buffer(v13, qword_28112AC00);
    sub_20D86CC5C(v12, v11, type metadata accessor for GridForecastSnapshot);

    v14 = sub_20D9734D8();
    v15 = sub_20D975448();

    if (os_log_type_enabled(v14, v15))
    {
      v101 = v15;
      v16 = 0x3E6C696E3CLL;
      v17 = v0[28];
      v18 = v0[16];
      v100 = v0[15];
      v19 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v105 = v102;
      *v19 = 136315906;
      *(v19 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v105);
      *(v19 + 12) = 2080;
      if (v9)
      {
        v20 = v8;
      }

      else
      {
        v20 = 0x3E6C696E3CLL;
      }

      v21 = 0xE500000000000000;
      if (!v9)
      {
        v9 = 0xE500000000000000;
      }

      v22 = sub_20D7F4DC8(v20, v9, &v105);

      *(v19 + 14) = v22;
      *(v19 + 22) = 2080;
      swift_beginAccess();
      if (!(*(v18 + 48))(v17, 1, v100))
      {
        v23 = v0[18];
        v24 = v0[15];
        v25 = v0[16];
        (*(v25 + 16))(v23, v0[28], v24);
        v16 = sub_20D972648();
        v21 = v26;
        (*(v25 + 8))(v23, v24);
      }

      v27 = v0[27];
      v28 = v0[22];
      v29 = v0[19];
      v30 = sub_20D7F4DC8(v16, v21, &v105);

      *(v19 + 24) = v30;
      *(v19 + 32) = 2080;
      v31 = (v28 + *(v29 + 24));
      v32 = *v31;
      v33 = v31[1];

      sub_20D86DC2C(v28, type metadata accessor for GridForecastSnapshot);
      v34 = sub_20D7F4DC8(v32, v33, &v105);

      *(v19 + 34) = v34;
      _os_log_impl(&dword_20D7C9000, v14, v101, "%s: called Fixed snapshot %s:%s for %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v102, -1, -1);
      MEMORY[0x20F324260](v19, -1, -1);

      sub_20D7E3944(v27, &qword_27C8389F8, &qword_20D978460);
    }

    else
    {
      v64 = v0[27];
      v65 = v0[22];

      sub_20D86DC2C(v65, type metadata accessor for GridForecastSnapshot);
      sub_20D7E3944(v64, &qword_27C8389F8, &qword_20D978460);
    }

LABEL_24:
    v66 = v0[28];
    v67 = v0[26];
    v68 = v0[15];
    v69 = v0[16];
    swift_beginAccess();
    sub_20D7EB7E8(v66, v67, &qword_27C8389F8, &qword_20D978460);
    v70 = (*(v69 + 48))(v67, 1, v68);
    v71 = v0[26];
    v72 = v0[19];
    if (v70 == 1)
    {
      v73 = v0[14];
      sub_20D7E3944(v0[26], &qword_27C8389F8, &qword_20D978460);
      sub_20D972AA8();
      v0[29] = sub_20D972A98();
      v74 = (v73 + *(v72 + 24));
      v75 = *v74;
      v76 = v74[1];
      v77 = *(MEMORY[0x277D07578] + 4);
      v103 = (*MEMORY[0x277D07578] + MEMORY[0x277D07578]);
      v78 = swift_task_alloc();
      v0[30] = v78;
      *v78 = v0;
      v78[1] = sub_20D86A4A8;

      return v103(v75, v76);
    }

    else
    {
      v80 = v0[14];
      (*(v0[16] + 32))(v0[17], v0[26], v0[15]);
      sub_20D972AA8();
      v0[32] = sub_20D972A98();
      v81 = (v80 + *(v72 + 24));
      v82 = *v81;
      v83 = v81[1];
      v84 = sub_20D972648();
      v86 = v85;
      v0[33] = v85;
      v87 = *(MEMORY[0x277D07570] + 4);
      v104 = (*MEMORY[0x277D07570] + MEMORY[0x277D07570]);
      v88 = swift_task_alloc();
      v0[34] = v88;
      *v88 = v0;
      v88[1] = sub_20D86A5CC;

      return v104(v82, v83, v84, v86);
    }
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v49 = v0[21];
  v50 = v0[14];
  v51 = sub_20D9734F8();
  __swift_project_value_buffer(v51, qword_28112AC00);
  sub_20D86CC5C(v50, v49, type metadata accessor for GridForecastSnapshot);
  v52 = sub_20D9734D8();
  v53 = sub_20D975458();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v0[28];
  v56 = v0[21];
  if (v54)
  {
    v57 = v0[19];
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v105 = v59;
    *v58 = 136315394;
    *(v58 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v105);
    *(v58 + 12) = 2080;
    v60 = (v56 + *(v57 + 24));
    v61 = *v60;
    v62 = v60[1];

    sub_20D86DC2C(v56, type metadata accessor for GridForecastSnapshot);
    v63 = sub_20D7F4DC8(v61, v62, &v105);

    *(v58 + 14) = v63;
    _os_log_impl(&dword_20D7C9000, v52, v53, "%s: called Static snapshot for %s - WHAT?", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v59, -1, -1);
    MEMORY[0x20F324260](v58, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v56, type metadata accessor for GridForecastSnapshot);
  }

  sub_20D7E3944(v55, &qword_27C8389F8, &qword_20D978460);
  v90 = v0[27];
  v89 = v0[28];
  v92 = v0[25];
  v91 = v0[26];
  v94 = v0[22];
  v93 = v0[23];
  v96 = v0[20];
  v95 = v0[21];
  v98 = v0[17];
  v97 = v0[18];

  v99 = v0[1];

  return v99();
}

uint64_t sub_20D86A4A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[30];
  v9 = *v2;
  v4[31] = v1;

  if (v1)
  {
    v6 = sub_20D86B058;
  }

  else
  {
    v7 = v4[29];

    v6 = sub_20D86AA6C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20D86A5CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = v1;
  v5 = v3[34];
  v6 = v3[33];
  v7 = v3[32];
  v10 = *v2;
  v4[35] = v1;

  if (v1)
  {
    v8 = sub_20D86AD98;
  }

  else
  {
    v8 = sub_20D86A728;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20D86A728()
{
  v35 = v0;
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[12];
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = v0[14];
  v4 = sub_20D9734F8();
  __swift_project_value_buffer(v4, qword_28112AC00);
  sub_20D86CC5C(v3, v2, type metadata accessor for GridForecastSnapshot);
  v5 = sub_20D9734D8();
  v6 = sub_20D975448();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[28];
  v9 = v0[20];
  if (v7)
  {
    v10 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v34);
    *(v11 + 12) = 2080;
    v13 = (v9 + *(v10 + 24));
    v14 = *v13;
    v15 = v13[1];

    sub_20D86DC2C(v9, type metadata accessor for GridForecastSnapshot);
    v16 = sub_20D7F4DC8(v14, v15, &v34);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2080;
    v17 = sub_20D972A38();
    v19 = sub_20D7F4DC8(v17, v18, &v34);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: for %s status = %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v11, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v9, type metadata accessor for GridForecastSnapshot);
  }

  sub_20D7E3944(v8, &qword_27C8389F8, &qword_20D978460);
  v20 = sub_20D972A48();
  if (v20 == sub_20D972A48())
  {
    v21 = v0[14];
    sub_20D868694(0);
  }

  v23 = v0[27];
  v22 = v0[28];
  v25 = v0[25];
  v24 = v0[26];
  v27 = v0[22];
  v26 = v0[23];
  v29 = v0[20];
  v28 = v0[21];
  v31 = v0[17];
  v30 = v0[18];

  v32 = v0[1];

  return v32();
}

uint64_t sub_20D86AA6C()
{
  v35 = v0;
  v1 = v0[9];
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = v0[14];
  v4 = sub_20D9734F8();
  __swift_project_value_buffer(v4, qword_28112AC00);
  sub_20D86CC5C(v3, v2, type metadata accessor for GridForecastSnapshot);
  v5 = sub_20D9734D8();
  v6 = sub_20D975448();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[28];
  v9 = v0[20];
  if (v7)
  {
    v10 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v34);
    *(v11 + 12) = 2080;
    v13 = (v9 + *(v10 + 24));
    v14 = *v13;
    v15 = v13[1];

    sub_20D86DC2C(v9, type metadata accessor for GridForecastSnapshot);
    v16 = sub_20D7F4DC8(v14, v15, &v34);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2080;
    v17 = sub_20D972A38();
    v19 = sub_20D7F4DC8(v17, v18, &v34);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: for %s status = %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v11, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v9, type metadata accessor for GridForecastSnapshot);
  }

  sub_20D7E3944(v8, &qword_27C8389F8, &qword_20D978460);
  v20 = sub_20D972A48();
  if (v20 == sub_20D972A48())
  {
    v21 = v0[14];
    sub_20D868694(0);
  }

  v23 = v0[27];
  v22 = v0[28];
  v25 = v0[25];
  v24 = v0[26];
  v27 = v0[22];
  v26 = v0[23];
  v29 = v0[20];
  v28 = v0[21];
  v31 = v0[17];
  v30 = v0[18];

  v32 = v0[1];

  return v32();
}

uint64_t sub_20D86AD98()
{
  v26 = v0;
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[35];
  sub_20D7E3944(v0[28], &qword_27C8389F8, &qword_20D978460);
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC00);
  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v25);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: error: %@", v6, 0x16u);
    sub_20D7E3944(v7, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  else
  {
  }

  v11 = sub_20D972A48();
  if (v11 == sub_20D972A48())
  {
    v12 = v0[14];
    sub_20D868694(0);
  }

  v14 = v0[27];
  v13 = v0[28];
  v16 = v0[25];
  v15 = v0[26];
  v18 = v0[22];
  v17 = v0[23];
  v20 = v0[20];
  v19 = v0[21];
  v22 = v0[17];
  v21 = v0[18];

  v23 = v0[1];

  return v23();
}

uint64_t sub_20D86B058()
{
  v27 = v0;
  v1 = v0[29];

  v2 = v0[31];
  sub_20D7E3944(v0[28], &qword_27C8389F8, &qword_20D978460);
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v3 = sub_20D9734F8();
  __swift_project_value_buffer(v3, qword_28112AC00);
  v4 = v2;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D985390, &v26);
    *(v7 + 12) = 2112;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: error: %@", v7, 0x16u);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  else
  {
  }

  v12 = sub_20D972A48();
  if (v12 == sub_20D972A48())
  {
    v13 = v0[14];
    sub_20D868694(0);
  }

  v15 = v0[27];
  v14 = v0[28];
  v17 = v0[25];
  v16 = v0[26];
  v19 = v0[22];
  v18 = v0[23];
  v21 = v0[20];
  v20 = v0[21];
  v23 = v0[17];
  v22 = v0[18];

  v24 = v0[1];

  return v24();
}

Swift::String_optional __swiftcall GridForecastSnapshot.homeGridForecastLocation(useHomeName:)(Swift::Bool useHomeName)
{
  v3 = type metadata accessor for GridForecastSnapshotType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D86CC5C(v1, v6, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D86DC2C(v6, type metadata accessor for GridForecastSnapshotType);
    v10 = type metadata accessor for GridForecastSnapshot(0);
LABEL_7:
    v11 = (v1 + *(v10 + 28));
    v9 = *v11;
    v8 = v11[1];

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v10 = type metadata accessor for GridForecastSnapshot(0);
    if (*(v1 + *(v10 + 36)) != 12)
    {
      v8 = 0xE200000000000000;
      v9 = 11565;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v8 = *(v6 + 2);
  if (useHomeName)
  {
    v9 = *(v6 + 1);
  }

  else
  {
    v12 = *(v6 + 2);

    v13 = (v1 + *(type metadata accessor for GridForecastSnapshot(0) + 28));
    v9 = *v13;
    v8 = v13[1];
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
  sub_20D7E3944(&v6[*(v14 + 64)], &qword_27C8389F8, &qword_20D978460);
LABEL_11:
  v15 = v9;
  v16 = v8;
  result.value._object = v16;
  result.value._countAndFlagsBits = v15;
  return result;
}

uint64_t sub_20D86B490(uint64_t a1, int a2, uint64_t a3)
{
  v41 = a2;
  v42 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v40[-v10];
  v12 = sub_20D972998();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for GridForecastSnapshot(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v40[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v22) = *(v3 + *(v19 + 36));
  if (v22 == 12)
  {
    v23 = v3 + *(v19 + 20);
    v24 = sub_20D9729C8();
    if (v24)
    {
      v25 = v24;
      MEMORY[0x28223BE20](v24);
      *&v40[-16] = v42;
      sub_20D871194(sub_20D86E18C, v25, v11);

      if ((*(v13 + 48))(v11, 1, v12) != 1)
      {
        (*(v13 + 32))(v16, v11, v12);
        (*(v13 + 16))(v9, v16, v12);
        (*(v13 + 56))(v9, 0, 1, v12);
        a3 = sub_20D86CF28(v42, v9, v41);
        sub_20D7E3944(v9, &qword_27C838E48, &qword_20D977670);
        (*(v13 + 8))(v16, v12);
        return a3;
      }
    }

    else
    {
      (*(v13 + 56))(v11, 1, 1, v12);
    }

    sub_20D7E3944(v11, &qword_27C838E48, &qword_20D977670);

    return a3;
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v26 = sub_20D9734F8();
  __swift_project_value_buffer(v26, qword_28112AC00);
  sub_20D86CC5C(v3, v21, type metadata accessor for GridForecastSnapshot);
  v27 = sub_20D9734D8();
  v28 = sub_20D975478();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v22;
    v22 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43[0] = v31;
    *v22 = 136315650;
    *(v22 + 4) = sub_20D7F4DC8(0xD000000000000039, 0x800000020D985350, v43);
    *(v22 + 12) = 2080;
    v32 = GridForecastSnapshotType.description.getter();
    v34 = v33;
    sub_20D86DC2C(v21, type metadata accessor for GridForecastSnapshot);
    v35 = sub_20D7F4DC8(v32, v34, v43);

    *(v22 + 14) = v35;
    *(v22 + 22) = 2112;
    sub_20D84D14C();
    swift_allocError();
    *v36 = v29;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 24) = v37;
    *v30 = v37;
    _os_log_impl(&dword_20D7C9000, v27, v28, "%s No advice (variant): GFSnapshot (%s) has error: %@", v22, 0x20u);
    sub_20D7E3944(v30, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v30, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v31, -1, -1);
    v38 = v22;
    LOBYTE(v22) = v29;
    MEMORY[0x20F324260](v38, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v21, type metadata accessor for GridForecastSnapshot);
  }

  LOBYTE(v43[0]) = v22;
  return GridForecastError.mediumUIString.getter();
}

Swift::Bool __swiftcall GridForecastSnapshot.showLocationGlyph()()
{
  v1 = type metadata accessor for GridForecastSnapshotType(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  if (*(v0 + *(type metadata accessor for GridForecastSnapshot(0) + 36)) != 12)
  {
    return 0;
  }

  sub_20D86CC5C(v0, v7, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = 1;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1 || (sub_20D86CC5C(v7, v5, type metadata accessor for GridForecastSnapshotType), *v5 != 3))
    {
      v9 = 0;
    }
  }

  sub_20D86DC2C(v7, type metadata accessor for GridForecastSnapshotType);
  return v9;
}

uint64_t GridForecastSnapshot.widgetGridForecastMainAdvice(referenceTime:)(uint64_t a1)
{
  v3 = type metadata accessor for GridForecastSnapshot(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  v17 = sub_20D972998();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(v3 + 36)) == 12)
  {
    v22 = v1 + *(v3 + 20);
    v23 = sub_20D9729C8();
    if (v23)
    {
      v24 = v23;
      MEMORY[0x28223BE20](v23);
      sub_20D871194(sub_20D86CF08, v24, v16);

      if ((*(v18 + 48))(v16, 1, v17) != 1)
      {
        (*(v18 + 32))(v21, v16, v17);
        (*(v18 + 16))(v14, v21, v17);
        (*(v18 + 56))(v14, 0, 1, v17);
        v25 = sub_20D86CF28(a1, v14, 3);
        sub_20D7E3944(v14, &qword_27C838E48, &qword_20D977670);
        (*(v18 + 8))(v21, v17);
        return v25;
      }
    }

    else
    {
      (*(v18 + 56))(v16, 1, 1, v17);
    }

    sub_20D7E3944(v16, &qword_27C838E48, &qword_20D977670);
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    return sub_20D971FF8();
  }

  else
  {
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v27 = sub_20D9734F8();
    __swift_project_value_buffer(v27, qword_28112AC00);
    sub_20D86CC5C(v1, v9, type metadata accessor for GridForecastSnapshot);
    sub_20D86CC5C(v1, v7, type metadata accessor for GridForecastSnapshot);
    v28 = sub_20D9734D8();
    v29 = sub_20D975478();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40[0] = v32;
      *v30 = 136315650;
      *(v30 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9852C0, v40);
      *(v30 + 12) = 2080;
      v33 = GridForecastSnapshotType.description.getter();
      v35 = v34;
      sub_20D86DC2C(v9, type metadata accessor for GridForecastSnapshot);
      v36 = sub_20D7F4DC8(v33, v35, v40);

      *(v30 + 14) = v36;
      *(v30 + 22) = 2112;
      v37 = v7[*(v3 + 36)];
      if (v37 == 12)
      {
        sub_20D86DC2C(v7, type metadata accessor for GridForecastSnapshot);
        v38 = 0;
      }

      else
      {
        sub_20D84D14C();
        swift_allocError();
        *v39 = v37;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        sub_20D86DC2C(v7, type metadata accessor for GridForecastSnapshot);
      }

      *(v30 + 24) = v38;
      *v31 = v38;
      _os_log_impl(&dword_20D7C9000, v28, v29, "%s No advice: GFSnapshot (%s) has error: %@", v30, 0x20u);
      sub_20D7E3944(v31, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v31, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v32, -1, -1);
      MEMORY[0x20F324260](v30, -1, -1);
    }

    else
    {

      sub_20D86DC2C(v7, type metadata accessor for GridForecastSnapshot);
      sub_20D86DC2C(v9, type metadata accessor for GridForecastSnapshot);
    }

    return 11565;
  }
}

uint64_t sub_20D86C1A8(uint64_t a1, int a2)
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = sub_20D971FF8();
  v5 = sub_20D86B490(a1, a2, v4);

  return v5;
}

uint64_t GridForecastSnapshot.createPillAdvice(referenceTime:)(uint64_t a1)
{
  v3 = type metadata accessor for GridForecastSnapshot(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v37 - v12;
  v14 = sub_20D972998();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(v3 + 36)) == 12)
  {
    v19 = v1 + *(v3 + 20);
    v20 = sub_20D9729C8();
    if (v20)
    {
      v21 = v20;
      MEMORY[0x28223BE20](v20);
      sub_20D871194(sub_20D86E18C, v21, v13);

      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        (*(v15 + 32))(v18, v13, v14);
        if (EnergyWindow.containsDate(referenceDate:)(a1))
        {
          if (EnergyWindow.isCleanEnergy.getter())
          {
            if (qword_281126E98 != -1)
            {
              swift_once();
            }

            v22 = sub_20D971FF8();
          }

          else
          {
            if (qword_27C838378 != -1)
            {
              swift_once();
            }

            v22 = qword_27C8389D0;
          }

          (*(v15 + 8))(v18, v14);
          return v22;
        }

        (*(v15 + 8))(v18, v14);
        goto LABEL_17;
      }
    }

    else
    {
      (*(v15 + 56))(v13, 1, 1, v14);
    }

    sub_20D7E3944(v13, &qword_27C838E48, &qword_20D977670);
LABEL_17:
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    return sub_20D971FF8();
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v23 = sub_20D9734F8();
  __swift_project_value_buffer(v23, qword_28112AC00);
  sub_20D86CC5C(v1, v9, type metadata accessor for GridForecastSnapshot);
  sub_20D86CC5C(v1, v7, type metadata accessor for GridForecastSnapshot);
  v24 = sub_20D9734D8();
  v25 = sub_20D975478();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37[0] = v28;
    *v26 = 136315650;
    *(v26 + 4) = sub_20D7F4DC8(0xD000000000000020, 0x800000020D9852F0, v37);
    *(v26 + 12) = 2080;
    v29 = GridForecastSnapshotType.description.getter();
    v31 = v30;
    sub_20D86DC2C(v9, type metadata accessor for GridForecastSnapshot);
    v32 = sub_20D7F4DC8(v29, v31, v37);

    *(v26 + 14) = v32;
    *(v26 + 22) = 2112;
    v33 = v7[*(v3 + 36)];
    if (v33 == 12)
    {
      sub_20D86DC2C(v7, type metadata accessor for GridForecastSnapshot);
      v34 = 0;
    }

    else
    {
      sub_20D84D14C();
      swift_allocError();
      *v36 = v33;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      sub_20D86DC2C(v7, type metadata accessor for GridForecastSnapshot);
    }

    *(v26 + 24) = v34;
    *v27 = v34;
    _os_log_impl(&dword_20D7C9000, v24, v25, "%s No advice: GFSnapshot (%s) has error: %@", v26, 0x20u);
    sub_20D7E3944(v27, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v27, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v28, -1, -1);
    MEMORY[0x20F324260](v26, -1, -1);
  }

  else
  {

    sub_20D86DC2C(v7, type metadata accessor for GridForecastSnapshot);
    sub_20D86DC2C(v9, type metadata accessor for GridForecastSnapshot);
  }

  return 0;
}

uint64_t sub_20D86C984(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = sub_20D971FF8();
  v7 = sub_20D86B490(a1, a4, v6);

  return v7;
}

uint64_t sub_20D86CAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_20D975318();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_20D86CC5C(v4, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridForecastSnapshot);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_20D86CCC4(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_20D82D02C(0, 0, v11, a4, v14);
}

uint64_t sub_20D86CC5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D86CCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridForecastSnapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D86CD28(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastSnapshot(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D805810;

  return sub_20D866C30(a1, v6, v7, v1 + v5);
}

uint64_t sub_20D86CE18(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastSnapshot(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D805810;

  return sub_20D869870(a1, v6, v7, v1 + v5);
}

uint64_t sub_20D86CF28(uint64_t a1, uint64_t a2, int a3)
{
  v104 = a3;
  v101 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v105 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v96 - v8;
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v103 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v96 - v16;
  MEMORY[0x28223BE20](v15);
  v106 = &v96 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v96 - v21;
  v23 = sub_20D972998();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v102 = (&v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v28 = &v96 - v27;
  v29 = a2;
  v31 = v30;
  sub_20D7EB7E8(v29, v22, &qword_27C838E48, &qword_20D977670);
  v32 = &qword_281127000;
  if ((*(v31 + 48))(v22, 1, v23) == 1)
  {
    sub_20D7E3944(v22, &qword_27C838E48, &qword_20D977670);
LABEL_7:
    if (v32[32] != -1)
    {
      swift_once();
    }

    v37 = sub_20D9734F8();
    __swift_project_value_buffer(v37, qword_28112AC00);
    v38 = sub_20D9734D8();
    v39 = sub_20D975478();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v107 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_20D7F4DC8(0xD000000000000021, 0x800000020D985320, &v107);
      _os_log_impl(&dword_20D7C9000, v38, v39, "%s: No clean window given.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x20F324260](v41, -1, -1);
      MEMORY[0x20F324260](v40, -1, -1);
    }

    return 11565;
  }

  (*(v31 + 32))(v28, v22, v23);
  sub_20D972988();
  v33 = *(v11 + 48);
  if (v33(v9, 1, v10) == 1)
  {
    (*(v31 + 8))(v28, v23);
    sub_20D7E3944(v9, &qword_27C8389E8, &qword_20D9768D0);
    goto LABEL_7;
  }

  v99 = v17;
  v100 = v23;
  v34 = *(v11 + 32);
  v35 = v106;
  v34(v106, v9, v10);
  v36 = v105;
  sub_20D972978();
  if (v33(v36, 1, v10) == 1)
  {
    (*(v11 + 8))(v35, v10);
    (*(v31 + 8))(v28, v100);
    sub_20D7E3944(v36, &qword_27C8389E8, &qword_20D9768D0);
    v32 = &qword_281127000;
    goto LABEL_7;
  }

  v98 = v11;
  v43 = v10;
  v34(v99, v36, v10);
  v44 = v101;
  v45 = v28;
  if (EnergyWindow.containsDate(referenceDate:)(v101))
  {
    v46 = EnergyWindow.isCleanEnergy.getter();
    v47 = v98;
    v49 = v102;
    v48 = v103;
    if (v46)
    {
      LODWORD(v105) = 1;
    }

    else
    {
      LODWORD(v105) = EnergyWindow.isStrainedEnergy.getter();
    }

    v50 = v100;
  }

  else
  {
    LODWORD(v105) = 0;
    v50 = v100;
    v47 = v98;
    v49 = v102;
    v48 = v103;
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v51 = sub_20D9734F8();
  __swift_project_value_buffer(v51, qword_28112AC00);
  (*(v47 + 16))(v48, v44, v10);
  (*(v31 + 16))(v49, v28, v50);
  v52 = sub_20D9734D8();
  v53 = sub_20D975478();
  v54 = os_log_type_enabled(v52, v53);
  v97 = v31;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v103 = v28;
    v56 = v55;
    v102 = swift_slowAlloc();
    v107 = v102;
    *v56 = 136315906;
    *(v56 + 4) = sub_20D7F4DC8(0xD000000000000021, 0x800000020D985320, &v107);
    *(v56 + 12) = 2080;
    v57 = sub_20D9725F8();
    v58 = v47;
    v59 = v57;
    v61 = v60;
    v62 = *(v58 + 8);
    v62(v48, v43);
    v63 = sub_20D7F4DC8(v59, v61, &v107);

    *(v56 + 14) = v63;
    *(v56 + 22) = 2080;
    if (v105)
    {
      v64 = 20041;
    }

    else
    {
      v64 = 0x6E6920544F4ELL;
    }

    if (v105)
    {
      v65 = 0xE200000000000000;
    }

    else
    {
      v65 = 0xE600000000000000;
    }

    v66 = sub_20D7F4DC8(v64, v65, &v107);

    *(v56 + 24) = v66;
    *(v56 + 32) = 2080;
    v67 = EnergyWindow.description.getter();
    v69 = v68;
    v70 = *(v97 + 8);
    v70(v49, v50);
    v71 = sub_20D7F4DC8(v67, v69, &v107);

    *(v56 + 34) = v71;
    v72 = v53;
    v73 = v62;
    _os_log_impl(&dword_20D7C9000, v52, v72, "%s: date %s is %s the clean window: %s", v56, 0x2Au);
    v74 = v102;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v74, -1, -1);
    v75 = v56;
    v45 = v103;
    MEMORY[0x20F324260](v75, -1, -1);

    v76 = v43;
  }

  else
  {

    v77 = *(v31 + 8);
    v77(v49, v50);
    v73 = *(v47 + 8);
    v78 = v48;
    v70 = v77;
    v73(v78, v43);
    v76 = v43;
  }

  v79 = v106;
  if (v104 > 2u)
  {
    if (v104 != 3)
    {
      v80 = v45;
      if (v105)
      {
        v89 = EnergyWindow.isCleanEnergy.getter();
        v82 = qword_281126E98;
        if (v89)
        {
          v83 = v73;
          v84 = "e is strained until %@.";
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v85 = qword_28112ABE8;
          v86 = 0xD000000000000020;
          goto LABEL_48;
        }

LABEL_55:
        v83 = v73;
        if (v82 != -1)
        {
          swift_once();
        }

        v85 = qword_28112ABE8;
        v90 = 0x800000020D982380;
        v86 = 0xD000000000000012;
        goto LABEL_58;
      }

      v92 = "h a strained Energy Window";
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v93 = qword_28112ABE8;
      v94 = 0xD000000000000023;
LABEL_62:
      v87 = sub_20D88D048(v94, v92 | 0x8000000000000000, v79, 0x617A696C61636F4CLL, 0xEB00000000656C62, v93);
      v73(v99, v76);
      v73(v79, v76);
      goto LABEL_63;
    }
  }

  else if (v104 - 1 >= 2)
  {
    v80 = v45;
    if (v105)
    {
      v81 = EnergyWindow.isCleanEnergy.getter();
      v82 = qword_281126E98;
      if (v81)
      {
        v83 = v73;
        v84 = "Strained until %@.";
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v85 = qword_28112ABE8;
        v86 = 0xD000000000000011;
LABEL_48:
        v90 = v84 | 0x8000000000000000;
LABEL_58:
        v95 = v99;
        v87 = sub_20D88D048(v86, v90, v99, 0x617A696C61636F4CLL, 0xEB00000000656C62, v85);
        v83(v95, v76);
        v83(v79, v76);
LABEL_63:
        v88 = v80;
        goto LABEL_64;
      }

      goto LABEL_55;
    }

    v92 = "Cleaner until %@";
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v93 = qword_28112ABE8;
    v94 = 0xD000000000000014;
    goto LABEL_62;
  }

  if ((v105 & 1) == 0)
  {
    if (qword_281126E98 == -1)
    {
LABEL_42:
      v87 = sub_20D971FF8();
      v73(v99, v76);
      v73(v79, v76);
      v88 = v45;
LABEL_64:
      v70(v88, v100);
      return v87;
    }

LABEL_65:
    swift_once();
    goto LABEL_42;
  }

  if (EnergyWindow.isCleanEnergy.getter())
  {
    if (qword_281126E98 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_65;
  }

  if (qword_27C838378 != -1)
  {
    swift_once();
  }

  v91 = qword_27C8389D0;

  v73(v99, v76);
  v73(v79, v76);
  v70(v45, v100);
  return v91;
}

uint64_t sub_20D86DC2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20D86DC8C(uint64_t a1)
{
  result = sub_20D86DCB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20D86DCB4()
{
  result = qword_281127380;
  if (!qword_281127380)
  {
    type metadata accessor for GridForecastSnapshot(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127380);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for GridForecastSnapshot(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  type metadata accessor for GridForecastSnapshotType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(v6 + 16);

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v10 = sub_20D972698();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  v12 = v1[5];
  v13 = sub_20D9729D8();
  (*(*(v13 - 8) + 8))(v6 + v12, v13);
  v14 = *(v6 + v1[6] + 8);

  v15 = *(v6 + v1[7] + 8);

  v16 = *(v6 + v1[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D86DEF8(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastSnapshot(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D7EB52C;

  return sub_20D866C30(a1, v6, v7, v1 + v5);
}

uint64_t sub_20D86DFE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D86E058(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastSnapshot(0) - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D805810;

  return sub_20D868FEC(a1, v5, v6, v7, v8);
}

uint64_t static EnergyWindows.mockCleanEnergyWindows(_:)@<X0>(uint64_t a1@<X8>, _BYTE *a2@<X0>)
{
  v2 = *a2;
  if (v2 > 3)
  {
    if (*a2 > 5u)
    {
      if (v2 == 6)
      {
        return static EnergyWindows.mockNowReduceEnergyWindows()(a1);
      }

      else
      {
        return static EnergyWindows.mockCleanOverlappingEnergyWindows()(a1);
      }
    }

    else if (v2 == 4)
    {
      return static EnergyWindows.mockPastCleanEnergyWindows()(a1);
    }

    else
    {
      return static EnergyWindows.mockWidgetSnapshotEnergyWindows()(a1);
    }
  }

  else if (*a2 > 1u)
  {
    if (v2 == 2)
    {
      return static EnergyWindows.mockSoonCleanEnergyWindows()(a1);
    }

    else
    {
      return static EnergyWindows.mockFutureCleanEnergyWindows()(a1);
    }
  }

  else if (*a2)
  {
    return static EnergyWindows.mockNowCleanEnergyWindows()(a1);
  }

  else
  {
    return static EnergyWindows.mockNoCleanEnergyWindows()(a1);
  }
}

uint64_t static EnergyWindows.mockWidgetSnapshotEnergyWindows()@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_20D9750E8();
  v54 = *(v1 - 8);
  v55 = v1;
  v2 = *(v54 + 64);
  MEMORY[0x28223BE20](v1);
  v53 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972488();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  MEMORY[0x28223BE20](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v58 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v46 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v46 - v24;
  sub_20D972FE8();
  sub_20D973028();
  v59 = v25;
  sub_20D81A220(v25, v23);
  v26 = v10[6];
  v60 = v9;
  v56 = v26;
  v57 = v10 + 6;
  if (v26(v23, 1, v9) == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v27 = sub_20D972438();
  MEMORY[0x20F31FDD0](v27);
  v28 = sub_20D873054(&qword_281127748, MEMORY[0x277CC94A0]);
  sub_20D972608();
  v25 = *(v5 + 1);
  (v25)(v8, v4);
  v29 = v10[1];
  v30 = v60;
  v29(v16, v60);
  v48 = v63;
  v50 = v64;
  sub_20D973028();
  v31 = sub_20D972578();
  MEMORY[0x20F31FDD0](v31);
  sub_20D972608();
  (v25)(v8, v4);
  v29(v14, v30);
  v47 = v63;
  v49 = v64;
  sub_20D973028();
  v32 = sub_20D972578();
  MEMORY[0x20F31FDD0](v32);
  v46[1] = v28;
  sub_20D972608();
  v51 = v5 + 8;
  (v25)(v8, v4);
  v29(v14, v30);
  v33 = v63;
  v5 = v64;
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000007ELL, 0x800000020D985410);
  v34 = v58;
  sub_20D81A220(v59, v58);
  if (v56(v34, 1, v30) == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  MEMORY[0x20F31FDD0]();
  sub_20D972608();
  (v25)(v8, v4);
  v29(v34, v60);
  MEMORY[0x20F323340](v61, v62);

  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v35 = v48;
  v36 = v50;
  MEMORY[0x20F323340](v48, v50);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D9854B0);
  MEMORY[0x20F323340](v35, v36);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v37 = v47;
  v38 = v49;
  MEMORY[0x20F323340](v47, v49);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985530);
  MEMORY[0x20F323340](v37, v38);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  MEMORY[0x20F323340](v33, v5);
  MEMORY[0x20F323340](0xD0000000000000CDLL, 0x800000020D9855B0);
  v5 = v53;
  sub_20D9750D8();
  v39 = sub_20D9750A8();
  v41 = v40;

  (*(v54 + 8))(v5, v55);
  v25 = 0xD000000000000013;
  if (v41 >> 60 != 15)
  {
    v42 = sub_20D971C68();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    sub_20D971C58();
    sub_20D9729D8();
    sub_20D873054(&qword_281127120, MEMORY[0x277D17ED0]);
    sub_20D971C48();
    sub_20D7E3944(v59, &qword_27C8389E8, &qword_20D9768D0);

    sub_20D857828(v39, v41);
  }

LABEL_7:
  __break(1u);

  v63 = 0;
  v64 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](v25 + 14, 0x800000020D9856C0);
  MEMORY[0x20F323340](v25 + 2, 0x800000020D9856F0);
  v61 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  sub_20D975728();
  result = sub_20D975738();
  __break(1u);
  return result;
}

uint64_t static EnergyWindows.mockNowCleanEnergyWindows()@<X0>(uint64_t a1@<X8>)
{
  v40[1] = a1;
  v1 = sub_20D9750E8();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v1);
  v48 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972488();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D973028();
  v14 = sub_20D972578();
  MEMORY[0x20F31FDD0](v14);
  sub_20D873054(&qword_281127748, MEMORY[0x277CC94A0]);
  sub_20D972608();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = *(v10 + 8);
  v16(v13, v9);
  v47 = v52;
  v43 = v53;
  sub_20D973028();
  v17 = sub_20D972578();
  MEMORY[0x20F31FDD0](v17);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v46 = v52;
  v42 = v53;
  sub_20D973028();
  v18 = sub_20D972578();
  MEMORY[0x20F31FDD0](v18);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v45 = v52;
  v41 = v53;
  sub_20D973028();
  v19 = sub_20D972578();
  MEMORY[0x20F31FDD0](v19);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v20 = v53;
  v44 = v52;
  sub_20D973028();
  v21 = sub_20D972578();
  MEMORY[0x20F31FDD0](v21);
  v22 = v42;
  sub_20D972608();
  v23 = v8;
  v24 = v20;
  v15(v23, v4);
  v16(v13, v9);
  v25 = v41;
  v26 = v43;
  v27 = v52;
  v28 = v53;
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000007ELL, 0x800000020D985410);
  MEMORY[0x20F323340](v47, v26);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v29 = v46;
  MEMORY[0x20F323340](v46, v22);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985710);
  MEMORY[0x20F323340](v29, v22);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v30 = v45;
  MEMORY[0x20F323340](v45, v25);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985790);
  MEMORY[0x20F323340](v30, v25);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v31 = v44;
  MEMORY[0x20F323340](v44, v24);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D9854B0);
  MEMORY[0x20F323340](v31, v24);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  MEMORY[0x20F323340](v27, v28);
  MEMORY[0x20F323340](0xD0000000000000CDLL, 0x800000020D9855B0);
  v32 = v48;
  sub_20D9750D8();
  v33 = sub_20D9750A8();
  v35 = v34;

  (*(v49 + 8))(v32, v50);
  if (v35 >> 60 == 15)
  {
    __break(1u);
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_20D975678();
    MEMORY[0x20F323340](0xD00000000000001BLL, 0x800000020D985810);
    MEMORY[0x20F323340](0xD000000000000015, 0x800000020D9856F0);
    v51 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    sub_20D975728();
    result = sub_20D975738();
    __break(1u);
  }

  else
  {
    v36 = sub_20D971C68();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    sub_20D971C58();
    sub_20D9729D8();
    sub_20D873054(&qword_281127120, MEMORY[0x277D17ED0]);
    sub_20D971C48();

    sub_20D857828(v33, v35);
  }

  return result;
}

uint64_t static EnergyWindows.mockSoonCleanEnergyWindows()@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_20D9750E8();
  v64 = *(v1 - 8);
  v65 = v1;
  v2 = *(v64 + 64);
  MEMORY[0x28223BE20](v1);
  v63 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972488();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D9725C8();
  MEMORY[0x20F31FDD0](v14);
  sub_20D873054(&qword_281127748, MEMORY[0x277CC94A0]);
  sub_20D972608();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = *(v10 + 8);
  v16(v13, v9);
  v62 = v70;
  v68 = v71;
  v17 = sub_20D972578();
  MEMORY[0x20F31FDD0](v17);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v61 = v70;
  v52 = v71;
  sub_20D973028();
  v18 = sub_20D972578();
  MEMORY[0x20F31FDD0](v18);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v60 = v70;
  v51 = v71;
  sub_20D973028();
  v19 = sub_20D972578();
  MEMORY[0x20F31FDD0](v19);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v20 = v71;
  v59 = v70;
  sub_20D973028();
  v21 = sub_20D972578();
  MEMORY[0x20F31FDD0](v21);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v58 = v70;
  v53 = v71;
  sub_20D973028();
  v22 = sub_20D972578();
  MEMORY[0x20F31FDD0](v22);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v57 = v70;
  v67 = v71;
  sub_20D973028();
  v23 = sub_20D972578();
  MEMORY[0x20F31FDD0](v23);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v56 = v70;
  v66 = v71;
  sub_20D973028();
  v24 = sub_20D972578();
  MEMORY[0x20F31FDD0](v24);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v54 = v71;
  v55 = v70;
  sub_20D973028();
  v25 = sub_20D972578();
  MEMORY[0x20F31FDD0](v25);
  v26 = v52;
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v27 = v51;
  v28 = v70;
  v29 = v71;
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000007FLL, 0x800000020D985830);
  MEMORY[0x20F323340](v62, v68);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v30 = v61;
  MEMORY[0x20F323340](v61, v26);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D9858B0);
  MEMORY[0x20F323340](v30, v26);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v31 = v60;
  MEMORY[0x20F323340](v60, v27);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985930);
  MEMORY[0x20F323340](v31, v27);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v32 = v59;
  MEMORY[0x20F323340](v59, v20);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D9859B0);
  v62 = v20;
  v33 = v20;
  v34 = v53;
  MEMORY[0x20F323340](v32, v33);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v35 = v58;
  MEMORY[0x20F323340](v58, v34);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985A30);
  MEMORY[0x20F323340](v35, v34);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v36 = v57;
  v37 = v67;
  MEMORY[0x20F323340](v57, v67);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985530);
  MEMORY[0x20F323340](v36, v37);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v38 = v56;
  v39 = v66;
  MEMORY[0x20F323340](v56, v66);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985AB0);
  MEMORY[0x20F323340](v38, v39);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v41 = v54;
  v40 = v55;
  MEMORY[0x20F323340](v55, v54);
  MEMORY[0x20F323340](0xD000000000000073, 0x800000020D985B30);
  MEMORY[0x20F323340](v40, v41);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  MEMORY[0x20F323340](v28, v29);
  MEMORY[0x20F323340](0xD0000000000000CDLL, 0x800000020D9855B0);
  v42 = v63;
  sub_20D9750D8();
  v43 = sub_20D9750A8();
  v45 = v44;

  (*(v64 + 8))(v42, v65);
  if (v45 >> 60 == 15)
  {
    __break(1u);
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_20D975678();
    MEMORY[0x20F323340](0xD00000000000001CLL, 0x800000020D985BB0);
    MEMORY[0x20F323340](0xD000000000000015, 0x800000020D9856F0);
    v69 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    sub_20D975728();
    result = sub_20D975738();
    __break(1u);
  }

  else
  {
    v46 = sub_20D971C68();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    sub_20D971C58();
    sub_20D9729D8();
    sub_20D873054(&qword_281127120, MEMORY[0x277D17ED0]);
    sub_20D971C48();

    sub_20D857828(v43, v45);
  }

  return result;
}

uint64_t static EnergyWindows.mockPastCleanEnergyWindows()@<X0>(uint64_t a1@<X8>)
{
  v32[1] = a1;
  v1 = sub_20D9750E8();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v1);
  v36 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972488();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D973028();
  v14 = sub_20D972578();
  MEMORY[0x20F31FDD0](v14);
  sub_20D873054(&qword_281127748, MEMORY[0x277CC94A0]);
  sub_20D972608();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = *(v10 + 8);
  v16(v13, v9);
  v35 = v40;
  v33 = v41;
  sub_20D973028();
  v17 = sub_20D972578();
  MEMORY[0x20F31FDD0](v17);
  sub_20D972608();
  v15(v8, v4);
  v16(v13, v9);
  v18 = v41;
  v34 = v40;
  sub_20D973028();
  v19 = sub_20D972578();
  MEMORY[0x20F31FDD0](v19);
  sub_20D972608();
  v15(v8, v4);
  v20 = v33;
  v16(v13, v9);
  v21 = v40;
  v22 = v41;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000007ELL, 0x800000020D985410);
  MEMORY[0x20F323340](v35, v20);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  v23 = v34;
  MEMORY[0x20F323340](v34, v18);
  MEMORY[0x20F323340](0xD000000000000074, 0x800000020D985710);
  MEMORY[0x20F323340](v23, v18);
  MEMORY[0x20F323340](0xD000000000000013, 0x800000020D985490);
  MEMORY[0x20F323340](v21, v22);
  MEMORY[0x20F323340](0xD0000000000000CDLL, 0x800000020D9855B0);
  v24 = v36;
  sub_20D9750D8();
  v25 = sub_20D9750A8();
  v27 = v26;

  (*(v37 + 8))(v24, v38);
  if (v27 >> 60 == 15)
  {
    __break(1u);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_20D975678();
    MEMORY[0x20F323340](0xD00000000000001CLL, 0x800000020D985BD0);
    MEMORY[0x20F323340](0xD000000000000015, 0x800000020D9856F0);
    v39 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    sub_20D975728();
    result = sub_20D975738();
    __break(1u);
  }

  else
  {
    v28 = sub_20D971C68();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_20D971C58();
    sub_20D9729D8();
    sub_20D873054(&qword_281127120, MEMORY[0x277D17ED0]);
    sub_20D971C48();

    sub_20D857828(v25, v27);
  }

  return result;
}