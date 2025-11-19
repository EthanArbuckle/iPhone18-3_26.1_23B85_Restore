uint64_t sub_1E59A3720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59A3784(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E59A382C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E59A389C()
{
  sub_1E59A396C();
  if (v0 <= 0x3F)
  {
    sub_1E5A29E74();
    if (v1 <= 0x3F)
    {
      sub_1E5898B54();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E59A396C()
{
  if (!qword_1ECFFF568)
  {
    sub_1E591CBE8();
    v0 = sub_1E5A2BD24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECFFF568);
    }
  }
}

unint64_t sub_1E59A39DC()
{
  result = qword_1ECFFF570;
  if (!qword_1ECFFF570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF570);
  }

  return result;
}

unint64_t sub_1E59A3A34()
{
  result = qword_1ECFFF578;
  if (!qword_1ECFFF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF578);
  }

  return result;
}

unint64_t sub_1E59A3A8C()
{
  result = qword_1ECFFF580;
  if (!qword_1ECFFF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF580);
  }

  return result;
}

uint64_t sub_1E59A3AE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001E5A46C30 == a2;
  if (v3 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6564496E616C70 && a2 == 0xEE00726569666974 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5A468F0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A46C50 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t StretchGoalPlanArtworkView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5A2B7E4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = sub_1E59A3DC8;
  a1[3] = 0;
  return result;
}

uint64_t sub_1E59A3DC8@<X0>(void *a1@<X8>)
{
  v87 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7F8, &unk_1E5A35EE0);
  v1 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v90 = &v83[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v83[-v4];
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v83[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v83[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v83[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v83[-v12];
  sub_1E5A2B8A4();
  sub_1E5A2B894();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v14 = swift_allocObject();
  v86 = xmmword_1E5A2C930;
  *(v14 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4D8 != -1)
  {
    swift_once();
  }

  *(v14 + 32) = sub_1E5A2B744();
  *(v14 + 40) = v15;
  if (qword_1ECFFB4E0 != -1)
  {
    swift_once();
  }

  *(v14 + 48) = sub_1E5A2B744();
  *(v14 + 56) = v16;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v17 = sub_1E5A2ABB4();
  v18 = *(v17 + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1E5A2A9B4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 104);
  v23 = v99;
  v24 = v19;
  v92 = v20;
  v94 = v22;
  v85 = v21 + 104;
  (v22)(&v99[v18], v19);
  sub_1E5A2AAA4();
  *v23 = v25;
  v23[1] = v26;
  v23[2] = v27;
  v23[3] = v28;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v29 = swift_allocObject();
  v93 = xmmword_1E5A303B0;
  *(v29 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4A0 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  *(v29 + 32) = sub_1E5A2B744();
  *(v29 + 40) = v30;
  if (qword_1ECFFB498 != -1)
  {
    swift_once();
  }

  v97 = v13;
  swift_retain_n();
  *(v29 + 48) = sub_1E5A2B744();
  *(v29 + 56) = v31;
  if (qword_1ECFFB4A8 != -1)
  {
    swift_once();
  }

  v91 = qword_1ED0264C8;
  swift_retain_n();
  *(v29 + 64) = sub_1E5A2B744();
  *(v29 + 72) = v32;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD800, &qword_1E5A35EF0);
  v34 = v99;
  v35 = &v99[*(v33 + 52)];
  v36 = v104;
  *v35 = v103;
  *(v35 + 1) = v36;
  *(v35 + 4) = v105;
  *&v34[*(v33 + 56)] = 256;
  sub_1E5A2A5F4();
  sub_1E5A2B804();
  sub_1E5A2A5B4();
  v37 = &v34[*(v98 + 36)];
  v38 = v107;
  *v37 = v106;
  v37[1] = v38;
  v37[2] = v108;
  v39 = v95;
  v40 = &v95[*(v17 + 20)];
  v84 = v24;
  v94(v40, v24, v92);
  sub_1E5A2AAA4();
  *v39 = v41;
  v39[1] = v42;
  v39[2] = v43;
  v39[3] = v44;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v45 = swift_allocObject();
  *(v45 + 16) = v93;
  *(v45 + 32) = sub_1E5A2B744();
  *(v45 + 40) = v46;
  *(v45 + 48) = sub_1E5A2B744();
  *(v45 + 56) = v47;
  *(v45 + 64) = sub_1E5A2B744();
  *(v45 + 72) = v48;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v49 = v39 + *(v33 + 52);
  v50 = v110;
  *v49 = v109;
  *(v49 + 1) = v50;
  *(v49 + 4) = v111;
  *(v39 + *(v33 + 56)) = 256;
  sub_1E5A2A5F4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v51 = v98;
  v52 = (v39 + *(v98 + 36));
  v53 = v113;
  *v52 = v112;
  v52[1] = v53;
  v52[2] = v114;
  v54 = v96;
  v94(&v96[*(v17 + 20)], v84, v92);
  sub_1E5A2AAA4();
  *v54 = v55;
  v54[1] = v56;
  v54[2] = v57;
  v54[3] = v58;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v59 = swift_allocObject();
  *(v59 + 16) = v93;
  *(v59 + 32) = sub_1E5A2B744();
  *(v59 + 40) = v60;
  *(v59 + 48) = sub_1E5A2B744();
  *(v59 + 56) = v61;
  *(v59 + 64) = sub_1E5A2B744();
  *(v59 + 72) = v62;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v63 = v54 + *(v33 + 52);
  v64 = v116;
  *v63 = v115;
  *(v63 + 1) = v64;
  *(v63 + 4) = v117;
  *(v54 + *(v33 + 56)) = 256;
  sub_1E5A2A5F4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v65 = (v54 + *(v51 + 36));
  v66 = v119;
  *v65 = v118;
  v65[1] = v66;
  v65[2] = v120;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v67 = swift_allocObject();
  *(v67 + 16) = v86;
  if (qword_1ECFFB4E8 != -1)
  {
    swift_once();
  }

  sub_1E5A2B434();
  *(v67 + 32) = sub_1E5A2B744();
  *(v67 + 40) = v68;
  sub_1E5A2B434();
  *(v67 + 48) = sub_1E5A2B744();
  *(v67 + 56) = v69;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v70 = v100;
  v71 = v88;
  sub_1E591D234(v99, v88);
  v72 = v95;
  v73 = v89;
  sub_1E591D234(v95, v89);
  v74 = v96;
  v75 = v90;
  sub_1E591D234(v96, v90);
  v76 = v121;
  v77 = v87;
  *v87 = v70;
  v78 = v101;
  *(v77 + 3) = v102;
  *(v77 + 1) = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF598, &unk_1E5A3DC70);
  sub_1E591D234(v71, v77 + v79[12]);
  sub_1E591D234(v73, v77 + v79[16]);
  sub_1E591D234(v75, v77 + v79[20]);
  v80 = v77 + v79[24];
  *v80 = v76;
  v81 = v122;
  *(v80 + 24) = v123;
  *(v80 + 8) = v81;

  sub_1E591D2A4(v74);
  sub_1E591D2A4(v72);
  sub_1E591D2A4(v99);

  sub_1E591D2A4(v75);
  sub_1E591D2A4(v73);
  sub_1E591D2A4(v71);
}

uint64_t sub_1E59A4758@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5A2B7E4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = sub_1E59A3DC8;
  a1[3] = 0;
  return result;
}

unint64_t sub_1E59A47A4()
{
  result = qword_1ECFFF588;
  if (!qword_1ECFFF588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF590, &unk_1E5A3DC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF588);
  }

  return result;
}

FitnessWorkoutPlan::WorkoutPlanModalitySelection __swiftcall WorkoutPlanModalitySelection.init(modalityIdentifier:preferredDurations:preferredWeekdays:)(Swift::String modalityIdentifier, Swift::OpaquePointer preferredDurations, Swift::OpaquePointer preferredWeekdays)
{
  *v3 = modalityIdentifier;
  *(v3 + 16) = preferredDurations;
  *(v3 + 24) = preferredWeekdays;
  result.modalityIdentifier = modalityIdentifier;
  result.preferredWeekdays = preferredWeekdays;
  result.preferredDurations = preferredDurations;
  return result;
}

uint64_t WorkoutPlanModalitySelection.modalityIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_1E59A4854()
{
  v1 = 0xD000000000000011;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_1E59A48A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E59A54AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E59A48D0(uint64_t a1)
{
  v2 = sub_1E59A4B90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59A490C(uint64_t a1)
{
  v2 = sub_1E59A4B90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanModalitySelection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF5A0, &unk_1E5A3DC80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59A4B90();
  sub_1E5A2C224();
  LOBYTE(v19) = 0;
  v12 = v17;
  sub_1E5A2C064();
  if (!v12)
  {
    v13 = v15;
    v19 = v16;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
    sub_1E59A4EFC(&qword_1ECFFF5B0);
    sub_1E5A2C0B4();
    v19 = v13;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF5B8, &qword_1E5A3DC90);
    sub_1E59A4F68(&qword_1ECFFF5C0, sub_1E58C2944);
    sub_1E5A2C0B4();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E59A4B90()
{
  result = qword_1ECFFF5A8;
  if (!qword_1ECFFF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF5A8);
  }

  return result;
}

uint64_t WorkoutPlanModalitySelection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF5C8, &qword_1E5A3DC98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59A4B90();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  v11 = sub_1E5A2BF94();
  v13 = v12;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
  v20 = 1;
  sub_1E59A4EFC(&qword_1ECFFF5D0);
  sub_1E5A2BFE4();
  v18 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF5B8, &qword_1E5A3DC90);
  v20 = 2;
  sub_1E59A4F68(&qword_1ECFFF5D8, sub_1E58C7514);
  sub_1E5A2BFE4();
  (*(v6 + 8))(v9, v5);
  v14 = v21;
  v15 = v18;
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E59A4EFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF178, &qword_1E5A3C800);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E59A4F68(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF5B8, &qword_1E5A3DC90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static WorkoutPlanModalitySelection.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1E5A2C114() & 1) == 0 || (sub_1E595C8C0(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1E595C8C4(v3, v4);
}

uint64_t WorkoutPlanModalitySelection.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x1E6932DE0](v7);
      --v5;
    }

    while (v5);
  }

  result = MEMORY[0x1E6932DE0](*(v3 + 16));
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = (v3 + 32);
    do
    {
      v11 = *v10++;
      result = MEMORY[0x1E6932DE0](v11);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t WorkoutPlanModalitySelection.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x1E6932DE0](v7);
      --v5;
    }

    while (v5);
  }

  MEMORY[0x1E6932DE0](*(v3 + 16));
  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = (v3 + 32);
    do
    {
      v10 = *v9++;
      MEMORY[0x1E6932DE0](v10);
      --v8;
    }

    while (v8);
  }

  return sub_1E5A2C204();
}

uint64_t sub_1E59A51E4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x1E6932DE0](v7);
      --v5;
    }

    while (v5);
  }

  MEMORY[0x1E6932DE0](*(v3 + 16));
  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = (v3 + 32);
    do
    {
      v10 = *v9++;
      MEMORY[0x1E6932DE0](v10);
      --v8;
    }

    while (v8);
  }

  return sub_1E5A2C204();
}

uint64_t sub_1E59A5298(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1E5A2C114() & 1) == 0 || (sub_1E595C8C0(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1E595C8C4(v3, v4);
}

unint64_t sub_1E59A5330()
{
  result = qword_1ECFFF5E0;
  if (!qword_1ECFFF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF5E0);
  }

  return result;
}

unint64_t sub_1E59A53A8()
{
  result = qword_1ECFFF5E8;
  if (!qword_1ECFFF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF5E8);
  }

  return result;
}

unint64_t sub_1E59A5400()
{
  result = qword_1ECFFF5F0;
  if (!qword_1ECFFF5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF5F0);
  }

  return result;
}

unint64_t sub_1E59A5458()
{
  result = qword_1ECFFF5F8;
  if (!qword_1ECFFF5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF5F8);
  }

  return result;
}

uint64_t sub_1E59A54AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E5A45E20 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A46C70 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A46C90 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t CustomPlanView.init(store:index:actionButtonViewBuilder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330);
  result = sub_1E5A2A654();
  *a5 = result;
  a5[1] = v11;
  a5[3] = a4;
  a5[4] = a2;
  a5[2] = a3;
  return result;
}

uint64_t CustomPlanView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF600, &qword_1E5A3DED0);
  v39 = *(v30 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v29 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF608, &qword_1E5A3DED8);
  v38 = *(a1 + 16);
  v37 = *(a1 + 24);
  v46 = v38;
  v47 = v37;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  v7 = sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v57 = MEMORY[0x1E697EBF8];
  v36 = MEMORY[0x1E697E858];
  v54 = swift_getWitnessTable();
  v55 = MEMORY[0x1E697E5D8];
  v8 = swift_getWitnessTable();
  v46 = v7;
  v47 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = v7;
  v47 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_1E5A2A774();
  v9 = sub_1E5A2A6C4();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v29 - v14;
  v15 = *(v2 + 16);
  v58[0] = *v2;
  v58[1] = v15;
  v59 = *(v2 + 32);
  v46 = sub_1E5A2B7E4();
  v47 = v16;
  v48 = sub_1E59A5C50;
  v49 = 0;
  v50 = 0x3FFC71C71C71C71CLL;
  LOWORD(v51) = 0;
  sub_1E5A2B7A4();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF610, &qword_1E5A3DEE0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF618, &qword_1E5A3DEE8);
  v19 = sub_1E59A6BD0();
  v28 = sub_1E59A6C88();
  v20 = MEMORY[0x1E6981CD8];
  sub_1E5A2B3A4();
  v41 = v38;
  v42 = v37;
  v43 = v58;
  sub_1E5A2B7E4();
  v46 = v17;
  v47 = v20;
  v48 = v18;
  v49 = v18;
  v50 = v19;
  v51 = MEMORY[0x1E6981CD0];
  v52 = v28;
  v53 = v28;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = v30;
  sub_1E5A2B314();
  (*(v39 + 8))(v6, v22);
  v23 = swift_getWitnessTable();
  v44 = v21;
  v45 = v23;
  v24 = swift_getWitnessTable();
  v25 = v31;
  sub_1E58B41DC(v12, v9, v24);
  v26 = *(v35 + 8);
  v26(v12, v9);
  sub_1E58B41DC(v25, v9, v24);
  return (v26)(v25, v9);
}

uint64_t sub_1E59A5C50@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE210, &unk_1E5A3E030);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v46 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v46 - v12);
  v14 = sub_1E5A2AA24();
  LOBYTE(v53) = 0;
  sub_1E594AFF4(&v67);
  v61 = *&v68[16];
  v62 = *&v68[32];
  v59 = v67;
  v60 = *v68;
  v64[2] = *&v68[16];
  v64[3] = *&v68[32];
  v64[4] = *&v68[48];
  v64[1] = *v68;
  v63 = *&v68[48];
  v64[0] = v67;
  sub_1E58BABA0(&v59, &v65, &qword_1ECFFE218, &unk_1E5A392F0);
  sub_1E58BAD14(v64, &qword_1ECFFE218, &unk_1E5A392F0);
  *(&v52[2] + 7) = v60;
  *(&v52[4] + 7) = v61;
  *(&v52[6] + 7) = v62;
  *(&v52[8] + 7) = v63;
  *(v52 + 7) = v59;
  v51 = v53;
  *v13 = sub_1E5A2B7E4();
  v13[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE220, &qword_1E5A3E040);
  sub_1E59A61E4(v13 + *(v16 + 44));
  sub_1E5A2A5F4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE228, &qword_1E5A39300);
  v18 = (v13 + *(v17 + 36));
  v19 = *&v52[13];
  *v18 = *&v52[11];
  v18[1] = v19;
  v18[2] = *&v52[15];
  sub_1E5A2A5F4();
  v21 = v20 * -0.5;
  sub_1E5A2A5F4();
  v23 = (v13 + *(v3 + 44));
  *v23 = v21;
  v23[1] = v22 * -0.5;
  *v10 = sub_1E5A2B7E4();
  v10[1] = v24;
  sub_1E59A61E4(v10 + *(v16 + 44));
  sub_1E5A2A5F4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v25 = (v10 + *(v17 + 36));
  v26 = v54;
  *v25 = v53;
  v25[1] = v26;
  v25[2] = v55;
  sub_1E5A2A5F4();
  v28 = v27 * -0.25;
  sub_1E5A2A5F4();
  v30 = (v10 + *(v3 + 44));
  *v30 = v28;
  v30[1] = v29 * 0.5;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4E8 != -1)
  {
    swift_once();
  }

  sub_1E5A2B434();
  *(v31 + 32) = sub_1E5A2B744();
  *(v31 + 40) = v32;
  sub_1E5A2B434();
  *(v31 + 48) = sub_1E5A2B744();
  *(v31 + 56) = v33;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v34 = v49;
  sub_1E58BABA0(v13, v49, &qword_1ECFFE210, &unk_1E5A3E030);
  v35 = v10;
  v47 = v10;
  v36 = v50;
  sub_1E58BABA0(v35, v50, &qword_1ECFFE210, &unk_1E5A3E030);
  v37 = v56;
  v65 = v14;
  v66[0] = v51;
  v48 = v14;
  *&v66[17] = *&v52[2];
  *&v66[1] = *v52;
  *&v66[65] = *&v52[8];
  *&v66[49] = *&v52[6];
  *&v66[33] = *&v52[4];
  v38 = *(&v52[9] + 7);
  *&v66[80] = *(&v52[9] + 7);
  v39 = *&v66[64];
  *(a1 + 64) = *&v66[48];
  *(a1 + 80) = v39;
  *(a1 + 96) = v38;
  v40 = *v66;
  *a1 = v65;
  *(a1 + 16) = v40;
  v41 = *&v66[32];
  *(a1 + 32) = *&v66[16];
  *(a1 + 48) = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF6B8, &qword_1E5A3E048);
  sub_1E58BABA0(v34, a1 + v42[12], &qword_1ECFFE210, &unk_1E5A3E030);
  sub_1E58BABA0(v36, a1 + v42[16], &qword_1ECFFE210, &unk_1E5A3E030);
  v43 = a1 + v42[20];
  *v43 = v37;
  v44 = v57;
  *(v43 + 24) = v58;
  *(v43 + 8) = v44;
  sub_1E58BABA0(&v65, &v67, &qword_1ECFFE238, &qword_1E5A39310);

  sub_1E58BAD14(v47, &qword_1ECFFE210, &unk_1E5A3E030);
  sub_1E58BAD14(v13, &qword_1ECFFE210, &unk_1E5A3E030);

  sub_1E58BAD14(v36, &qword_1ECFFE210, &unk_1E5A3E030);
  sub_1E58BAD14(v34, &qword_1ECFFE210, &unk_1E5A3E030);
  *&v68[33] = *&v52[4];
  *&v68[49] = *&v52[6];
  *v69 = *&v52[8];
  *&v68[1] = *v52;
  v67 = v48;
  v68[0] = v51;
  *&v69[15] = *(&v52[9] + 7);
  *&v68[17] = *&v52[2];
  return sub_1E58BAD14(&v67, &qword_1ECFFE238, &qword_1E5A39310);
}

uint64_t sub_1E59A61E4@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE240, &qword_1E5A39318);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v54 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51 - v5;
  v7 = *MEMORY[0x1E697F480];
  v8 = sub_1E5A2A9B4();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  sub_1E5A2B8A4();
  sub_1E5A2B894();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v9 = swift_allocObject();
  v55 = xmmword_1E5A303B0;
  *(v9 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4C8 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  *(v9 + 32) = sub_1E5A2B744();
  *(v9 + 40) = v10;
  if (qword_1ECFFB4C0 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  *(v9 + 48) = sub_1E5A2B744();
  *(v9 + 56) = v11;
  if (qword_1ECFFB4D0 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  *(v9 + 64) = sub_1E5A2B744();
  *(v9 + 72) = v12;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v13 = &v6[*(v1 + 52)];
  v14 = *&v81[67];
  *v13 = *&v81[59];
  *(v13 + 1) = v14;
  *(v13 + 4) = v82;
  *&v6[*(v1 + 56)] = 256;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v15 = swift_allocObject();
  *(v15 + 16) = v55;
  *(v15 + 32) = sub_1E5A2B744();
  *(v15 + 40) = v16;
  *(v15 + 48) = sub_1E5A2B744();
  *(v15 + 56) = v17;
  *(v15 + 64) = sub_1E5A2B744();
  *(v15 + 72) = v18;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v52 = v83;
  v19 = v84;
  v20 = v85;
  v51 = v86;
  v21 = v87;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *&v81[27] = v91;
  *&v81[35] = v92;
  *&v81[43] = v93;
  *&v81[51] = v94;
  *&v81[3] = v88;
  *&v81[11] = v89;
  *&v81[19] = v90;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v22 = swift_allocObject();
  *(v22 + 16) = v55;
  *(v22 + 32) = sub_1E5A2B744();
  *(v22 + 40) = v23;
  *(v22 + 48) = sub_1E5A2B744();
  *(v22 + 56) = v24;
  *(v22 + 64) = sub_1E5A2B744();
  *(v22 + 72) = v25;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v26 = v95;
  v27 = v96;
  v28 = v97;
  v29 = v98;
  v30 = v99;
  sub_1E5A2B804();
  sub_1E5A2A764();
  *&v80[54] = v103;
  *&v80[70] = v104;
  *&v80[86] = v105;
  *&v80[102] = v106;
  *&v80[6] = v100;
  *&v80[22] = v101;
  *&v80[38] = v102;
  v31 = v54;
  sub_1E58BABA0(v6, v54, &qword_1ECFFE240, &qword_1E5A39318);
  v32 = v53;
  sub_1E58BABA0(v31, v53, &qword_1ECFFE240, &qword_1E5A39318);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE248, &qword_1E5A39320);
  v34 = (v32 + *(v33 + 48));
  v35 = v52;
  *&v56 = v52;
  *(&v56 + 1) = v19;
  *&v57 = v20;
  v36 = v51;
  *(&v57 + 1) = v51;
  *&v58[0] = v21;
  WORD4(v58[0]) = 256;
  *(v58 + 10) = *v81;
  *(&v58[4] + 10) = *&v81[32];
  *(&v58[5] + 10) = *&v81[40];
  *(&v58[6] + 10) = *&v81[48];
  *(&v58[7] + 1) = *&v81[55];
  *(&v58[1] + 10) = *&v81[8];
  *(&v58[2] + 10) = *&v81[16];
  *(&v58[3] + 10) = *&v81[24];
  v37 = v58[3];
  v34[4] = v58[2];
  v34[5] = v37;
  v38 = v58[1];
  v34[2] = v58[0];
  v34[3] = v38;
  v39 = v58[7];
  v34[8] = v58[6];
  v34[9] = v39;
  v40 = v58[5];
  v34[6] = v58[4];
  v34[7] = v40;
  v41 = v57;
  *v34 = v56;
  v34[1] = v41;
  v42 = (v32 + *(v33 + 64));
  *&v59 = v26;
  *(&v59 + 1) = v27;
  *&v60 = v28;
  *(&v60 + 1) = v29;
  *&v61[0] = v30;
  WORD4(v61[0]) = 256;
  *(&v61[5] + 10) = *&v80[80];
  *(&v61[4] + 10) = *&v80[64];
  *(&v61[6] + 10) = *&v80[96];
  *(&v61[7] + 1) = *&v80[110];
  *(v61 + 10) = *v80;
  *(&v61[1] + 10) = *&v80[16];
  *(&v61[2] + 10) = *&v80[32];
  *(&v61[3] + 10) = *&v80[48];
  v43 = v60;
  *v42 = v59;
  v42[1] = v43;
  v44 = v61[0];
  v45 = v61[1];
  v46 = v61[3];
  v42[4] = v61[2];
  v42[5] = v46;
  v42[2] = v44;
  v42[3] = v45;
  v47 = v61[4];
  v48 = v61[5];
  v49 = v61[7];
  v42[8] = v61[6];
  v42[9] = v49;
  v42[6] = v47;
  v42[7] = v48;
  sub_1E58BABA0(&v56, v71, &qword_1ECFFE250, &qword_1E5A39328);
  sub_1E58BABA0(&v59, v71, &qword_1ECFFE250, &qword_1E5A39328);
  sub_1E58BAD14(v6, &qword_1ECFFE240, &qword_1E5A39318);
  v62[0] = v26;
  v62[1] = v27;
  v62[2] = v28;
  v62[3] = v29;
  v62[4] = v30;
  v63 = 256;
  v68 = *&v80[64];
  v69 = *&v80[80];
  *v70 = *&v80[96];
  *&v70[14] = *&v80[110];
  v64 = *v80;
  v65 = *&v80[16];
  v66 = *&v80[32];
  v67 = *&v80[48];
  sub_1E58BAD14(v62, &qword_1ECFFE250, &qword_1E5A39328);
  v71[0] = v35;
  v71[1] = v19;
  v71[2] = v20;
  v71[3] = v36;
  v71[4] = v21;
  v72 = 256;
  v77 = *&v81[32];
  v78 = *&v81[40];
  *v79 = *&v81[48];
  *&v79[14] = *&v81[55];
  v73 = *v81;
  v74 = *&v81[8];
  v75 = *&v81[16];
  v76 = *&v81[24];
  sub_1E58BAD14(v71, &qword_1ECFFE250, &qword_1E5A39328);
  return sub_1E58BAD14(v31, &qword_1ECFFE240, &qword_1E5A39318);
}

uint64_t sub_1E59A697C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *a1;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  sub_1E5A2A074();
  v9 = v8;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF618, &qword_1E5A3DEE8) + 36));
  v11 = *(sub_1E5A2A754() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1E5A2A9B4();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  *v10 = v9;
  *(v10 + 1) = v9;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  *a2 = v15;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 41) = v7;
}

uint64_t sub_1E59A6AAC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *a1;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF618, &qword_1E5A3DEE8) + 36));
  v9 = *(sub_1E5A2A754() + 20);
  v10 = *MEMORY[0x1E697F468];
  v11 = sub_1E5A2A9B4();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #8.0 }

  *v8 = _Q0;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  *a2 = v18;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 41) = v7;
}

unint64_t sub_1E59A6BD0()
{
  result = qword_1ECFFF620;
  if (!qword_1ECFFF620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF610, &qword_1E5A3DEE0);
    sub_1E58CD164(&qword_1ECFFF628, &qword_1ECFFF630, &unk_1E5A3DEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF620);
  }

  return result;
}

unint64_t sub_1E59A6C88()
{
  result = qword_1ECFFF638;
  if (!qword_1ECFFF638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF618, &qword_1E5A3DEE8);
    sub_1E59A6BD0();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF638);
  }

  return result;
}

uint64_t sub_1E59A6D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v45 = a1;
  v49 = a4;
  v6 = sub_1E5A2AC84();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF608, &qword_1E5A3DED8);
  v57 = a2;
  v58 = a3;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  v39 = sub_1E5A2B864();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1E5A2B604();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = sub_1E5A2A6C4();
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v17 = sub_1E5A2A6C4();
  v40 = *(v17 - 8);
  v18 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  v34 = swift_getWitnessTable();
  v55 = v34;
  v56 = MEMORY[0x1E697EBF8];
  v35 = swift_getWitnessTable();
  v53 = v35;
  v54 = MEMORY[0x1E697E5D8];
  v36 = swift_getWitnessTable();
  v57 = v17;
  v58 = v36;
  v37 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v34 - v27;
  sub_1E5A2AA34();
  v50 = v43;
  v51 = v44;
  v52 = v45;
  sub_1E5A2B5F4();
  sub_1E5A2B7F4();
  sub_1E5A2B2E4();
  (*(v42 + 8))(v12, v9);
  sub_1E5A2B324();
  (*(v41 + 8))(v16, v13);
  v29 = v46;
  sub_1E5A2AC74();
  v30 = v36;
  sub_1E5A2B224();
  (*(v47 + 8))(v29, v48);
  (*(v40 + 8))(v20, v17);
  v57 = v17;
  v58 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E58B41DC(v25, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v32 = *(v22 + 8);
  v32(v25, OpaqueTypeMetadata2);
  sub_1E58B41DC(v28, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v32)(v28, OpaqueTypeMetadata2);
}

uint64_t sub_1E59A738C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a4;
  v7 = sub_1E5A2BA14();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A2B994();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v80 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2B9C4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v76 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v81 = &v73 - v18;
  v19 = sub_1E5A29EB4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = sub_1E5A2BB14();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v74 = *(a2 - 8);
  v23 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a2;
  v98 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v77 = *(OpaqueTypeMetadata2 - 8);
  v26 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v82 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v79 = &v73 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF608, &qword_1E5A3DED8);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v78 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v73 - v34;
  v87 = a2;
  v88 = a3;
  sub_1E59A7C90(a1, &v73 - v34);
  LOBYTE(a3) = sub_1E5A2AD94();
  sub_1E5A2A424();
  v73 = v30;
  v36 = *(v30 + 36);
  v75 = v35;
  v37 = &v35[v36];
  *v37 = a3;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  v43 = a1[2];
  v42 = a1[3];
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v44 = qword_1EE2D33E0;
  v45 = a1[1];
  swift_getKeyPath();

  v46 = v44;
  sub_1E5A2B944();

  v47 = sub_1E5A2BB64();
  v48 = a1[4];
  v43(v47);

  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A303B0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_1E5A2BA84();
  v50 = qword_1EE2D33E0;
  v51 = a1[1];
  swift_getKeyPath();

  v52 = v50;
  sub_1E5A2B944();

  v53 = sub_1E5A2BB64();
  v54 = MEMORY[0x1E69E6158];
  *(inited + 48) = v53;
  *(inited + 56) = v55;
  *(inited + 72) = v54;
  *(inited + 80) = 0x6973736572706D69;
  v56 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v56;
  strcpy((inited + 128), "impressionType");
  *(inited + 168) = v54;
  *(inited + 143) = -18;
  *(inited + 144) = 0x6E6F74747562;
  *(inited + 152) = 0xE600000000000000;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v57 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v57);
  v58 = v81;
  sub_1E5A2B9D4();
  v59 = sub_1E5A2B9E4();
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  v60 = v84;
  sub_1E5A2B9F4();
  v61 = v82;
  v63 = v87;
  v62 = v88;
  v64 = v90;
  sub_1E5A2B014();
  (*(v85 + 8))(v60, v86);
  sub_1E58BAD14(v58, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v74 + 8))(v64, v63);
  v97 = v63;
  v98 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v79;
  v67 = OpaqueTypeMetadata2;
  sub_1E58B41DC(v61, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v68 = v77;
  v69 = *(v77 + 8);
  v69(v61, v67);
  v70 = v75;
  v71 = v78;
  sub_1E58BABA0(v75, v78, &qword_1ECFFF608, &qword_1E5A3DED8);
  v95 = 0;
  v96 = 1;
  v97 = v71;
  v98 = &v95;
  (*(v68 + 16))(v61, v66, v67);
  v99 = v61;
  v94[0] = v73;
  v94[1] = MEMORY[0x1E6981840];
  v94[2] = v67;
  v91 = sub_1E59A8D08();
  v92 = MEMORY[0x1E6981838];
  v93 = OpaqueTypeConformance2;
  sub_1E597DC00(&v97, 3uLL, v94);
  v69(v66, v67);
  sub_1E58BAD14(v70, &qword_1ECFFF608, &qword_1E5A3DED8);
  v69(v61, v67);
  return sub_1E58BAD14(v71, &qword_1ECFFF608, &qword_1E5A3DED8);
}

uint64_t sub_1E59A7C90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v145 = a2;
  v155 = sub_1E5A2AEB4();
  v154 = *(v155 - 8);
  v3 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v153 = v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF668, &qword_1E5A3DFF8);
  v5 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162);
  v156 = v126 - v6;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF670, &qword_1E5A3E000);
  v141 = *(v142 - 8);
  v7 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v140 = v126 - v8;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF678, &qword_1E5A3E008);
  v9 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v144 = v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v139 = v126 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v143 = v126 - v14;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF680, &unk_1E5A3E010);
  v15 = *(*(v161 - 8) + 64);
  MEMORY[0x1EEE9AC00](v161);
  v160 = v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v159 = v126 - v18;
  v165 = sub_1E5A2A684();
  v19 = *(v165 - 8);
  v20 = v19[8];
  MEMORY[0x1EEE9AC00](v165);
  v164 = v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v163 = v126 - v23;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF688, &unk_1E5A44C60);
  v24 = *(*(v158 - 8) + 64);
  MEMORY[0x1EEE9AC00](v158);
  v157 = v126 - v25;
  v26 = sub_1E5A29EB4();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E5A2BB14();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF690, &qword_1E5A3E020);
  v136 = *(v137 - 8);
  v34 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v135 = v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v166 = v126 - v37;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v38 = qword_1EE2D33E0;
  v39 = *(a1 + 8);
  swift_getKeyPath();
  v152 = a1;

  v40 = v38;
  sub_1E5A2B944();

  v41 = sub_1E5A2AF64();
  v43 = v42;
  v151 = v33;
  v45 = v44;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v46 = sub_1E5A2AFA4();
  v48 = v47;
  v150 = v29;
  v50 = v49;
  v52 = v51;

  sub_1E58B3C9C(v41, v43, v45 & 1);

  v148 = v46;
  *&v173 = v46;
  *(&v173 + 1) = v48;
  v147 = v48;
  LODWORD(v146) = v50 & 1;
  LOBYTE(v174) = v50 & 1;
  v149 = v52;
  *(&v174 + 1) = v52;
  v53 = *MEMORY[0x1E697E6E8];
  v54 = v19[13];
  v55 = v163;
  v56 = v165;
  v54(v163, *MEMORY[0x1E697E6E8], v165);
  v57 = *MEMORY[0x1E697E728];
  v58 = v164;
  v54(v164, *MEMORY[0x1E697E728], v56);
  v59 = sub_1E59A8E44();
  result = sub_1E5A2BA64();
  if (result)
  {
    v133 = v53;
    v134 = v59;
    v61 = v19[4];
    v132 = v19 + 13;
    v62 = v159;
    v61(v159, v55, v56);
    v131 = v54;
    v63 = v161;
    v61((v62 + *(v161 + 48)), v58, v56);
    v64 = v160;
    sub_1E58BABA0(v62, v160, &qword_1ECFFF680, &unk_1E5A3E010);
    v65 = *(v63 + 48);
    v130 = v57;
    v66 = v157;
    v61(v157, v64, v56);
    v67 = v19[1];
    v126[1] = v19 + 1;
    v67(v64 + v65, v56);
    sub_1E59A8E9C(v62, v64);
    v68 = v66 + *(v158 + 36);
    v69 = v64 + *(v63 + 48);
    v129 = v19 + 4;
    v128 = v61;
    v61(v68, v69, v56);
    v127 = v67;
    v67(v64, v56);
    v126[2] = sub_1E58CD164(&qword_1ECFFF6A0, &qword_1ECFFF688, &unk_1E5A44C60);
    sub_1E5A2B164();
    sub_1E58BAD14(v66, &qword_1ECFFF688, &unk_1E5A44C60);
    sub_1E58B3C9C(v148, v147, v146);

    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    v149 = v167;
    v148 = v169;
    v147 = v171;
    v146 = v172;
    v182 = 1;
    v181 = v168;
    v180 = v170;
    sub_1E5A2BA84();
    v70 = qword_1EE2D33E0;
    v71 = *(v152 + 8);
    swift_getKeyPath();

    v72 = v70;
    sub_1E5A2B944();

    v73 = sub_1E5A2AF64();
    v75 = v74;
    LOBYTE(v67) = v76;
    sub_1E5A2AEC4();
    sub_1E5A2AE54();
    sub_1E5A2AEA4();

    v77 = v154;
    v78 = v153;
    v79 = v155;
    (*(v154 + 104))(v153, *MEMORY[0x1E6980EA8], v155);
    sub_1E5A2AEE4();

    (*(v77 + 8))(v78, v79);
    v80 = sub_1E5A2AFA4();
    v82 = v81;
    LOBYTE(v77) = v83;

    sub_1E58B3C9C(v73, v75, v67 & 1);

    LODWORD(v173) = sub_1E5A2ABA4();
    v84 = sub_1E5A2AF84();
    v86 = v85;
    LOBYTE(v75) = v87;
    v89 = v88;
    v90 = v77 & 1;
    v91 = v164;
    sub_1E58B3C9C(v80, v82, v90);

    v92 = *(v162 + 36);
    v93 = *MEMORY[0x1E6981DB8];
    v94 = sub_1E5A2B814();
    v95 = v156;
    v96 = v93;
    v97 = v165;
    (*(*(v94 - 8) + 104))(&v156[v92], v96, v94);
    *v95 = v84;
    *(v95 + 8) = v86;
    *(v95 + 16) = v75 & 1;
    *(v95 + 24) = v89;
    v98 = v163;
    v99 = v131;
    v131(v163, v133, v97);
    v99(v91, v130, v97);
    result = sub_1E5A2BA64();
    if (result)
    {
      v100 = v159;
      v101 = v128;
      v128(v159, v98, v97);
      v102 = v161;
      v101(v100 + *(v161 + 48), v91, v97);
      v103 = v160;
      sub_1E58BABA0(v100, v160, &qword_1ECFFF680, &unk_1E5A3E010);
      v104 = *(v102 + 48);
      v105 = v157;
      v101(v157, v103, v97);
      v106 = v103 + v104;
      v107 = v127;
      v127(v106, v97);
      sub_1E59A8E9C(v100, v103);
      v101(v105 + *(v158 + 36), (v103 + *(v102 + 48)), v97);
      v107(v103, v97);
      sub_1E59A8F0C();
      v108 = v140;
      sub_1E5A2B164();
      sub_1E58BAD14(v105, &qword_1ECFFF688, &unk_1E5A44C60);
      sub_1E58BAD14(v95, &qword_1ECFFF668, &qword_1E5A3DFF8);
      sub_1E5A2B7F4();
      sub_1E5A2A764();
      v109 = v139;
      (*(v141 + 32))(v139, v108, v142);
      v110 = (v109 + *(v138 + 36));
      v111 = v178;
      v110[4] = v177;
      v110[5] = v111;
      v110[6] = v179;
      v112 = v174;
      *v110 = v173;
      v110[1] = v112;
      v113 = v176;
      v110[2] = v175;
      v110[3] = v113;
      v114 = v143;
      sub_1E58A35A8(v109, v143);
      v115 = v136;
      v116 = *(v136 + 16);
      v117 = v135;
      v118 = v137;
      v116(v135, v166, v137);
      LOBYTE(v101) = v182;
      v119 = v181;
      LODWORD(v165) = v180;
      v120 = v144;
      sub_1E58BABA0(v114, v144, &qword_1ECFFF678, &qword_1E5A3E008);
      v121 = v145;
      v116(v145, v117, v118);
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF6B0, &qword_1E5A3E028);
      v123 = &v121[*(v122 + 48)];
      *v123 = 0;
      v123[8] = v101;
      *(v123 + 2) = v149;
      v123[24] = v119;
      *(v123 + 4) = v148;
      v123[40] = v165;
      v124 = v146;
      *(v123 + 6) = v147;
      *(v123 + 7) = v124;
      sub_1E58BABA0(v120, &v121[*(v122 + 64)], &qword_1ECFFF678, &qword_1E5A3E008);
      sub_1E58BAD14(v114, &qword_1ECFFF678, &qword_1E5A3E008);
      v125 = *(v115 + 8);
      v125(v166, v118);
      sub_1E58BAD14(v120, &qword_1ECFFF678, &qword_1E5A3E008);
      return (v125)(v117, v118);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E59A8CA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1E59A8D08()
{
  result = qword_1ECFFF640;
  if (!qword_1ECFFF640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF608, &qword_1E5A3DED8);
    sub_1E59A8D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF640);
  }

  return result;
}

unint64_t sub_1E59A8D94()
{
  result = qword_1ECFFF648;
  if (!qword_1ECFFF648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF650, &qword_1E5A3DFE8);
    sub_1E58CD164(&qword_1ECFFF658, &qword_1ECFFF660, &qword_1E5A3DFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF648);
  }

  return result;
}

unint64_t sub_1E59A8E44()
{
  result = qword_1ECFFF698;
  if (!qword_1ECFFF698)
  {
    sub_1E5A2A684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF698);
  }

  return result;
}

uint64_t sub_1E59A8E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF680, &unk_1E5A3E010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E59A8F0C()
{
  result = qword_1ECFFF6A8;
  if (!qword_1ECFFF6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF668, &qword_1E5A3DFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF6A8);
  }

  return result;
}

uint64_t sub_1E59A8FB8(int a1)
{
  v2 = type metadata accessor for EditItem();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E5A2B934();

  v7 = &v6[*(v3 + 44)];
  v9 = *v7;
  v8 = *(v7 + 1);

  sub_1E59A9338(v6);
  if (v8)
  {
    HIDWORD(v19) = a1;
    swift_getKeyPath();
    sub_1E5A2B934();

    v10 = *(v20 + 16) + 1;
    v11 = (v20 + 48);
    while (--v10)
    {
      v12 = *(v11 - 2);
      v13 = v11[2];
      v14 = v11[5];
      v15 = v11[6];
      if (*(v11 - 1) != v9 || v8 != *v11)
      {
        v11 += 9;
        if ((sub_1E5A2C114() & 1) == 0)
        {
          continue;
        }
      }

      v17 = sub_1E59FA5FC(HIDWORD(v19), v15);

      return v17 & 1;
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1E59A9188()
{
  v0 = type metadata accessor for EditItem();
  v1 = *(*(v0 - 1) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  swift_getKeyPath();
  sub_1E5A2B934();

  v7 = v6[v0[6]];
  sub_1E59A9338(v6);
  if (v7 == 7)
  {
    swift_getKeyPath();
    sub_1E5A2B934();

    v8 = v3[v0[10]];
    sub_1E59A9338(v3);
    v9 = v8 == 7;
  }

  else
  {
    v9 = 0;
  }

  swift_getKeyPath();
  sub_1E5A2B934();

  v10 = *&v3[v0[9] + 8];

  sub_1E59A9338(v3);
  swift_getKeyPath();
  sub_1E5A2B934();

  v11 = v3[v0[7] + 8];
  sub_1E59A9338(v3);
  if (v9)
  {
  }

  else if (v10)
  {

    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1E59A9338(uint64_t a1)
{
  v2 = type metadata accessor for EditItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E59A93A4()
{
  if (*v0)
  {
    result = 0x666C656873;
  }

  else
  {
    result = 0x7972656C6C6167;
  }

  *v0;
  return result;
}

uint64_t sub_1E59A93DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972656C6C6167 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x666C656873 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

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

uint64_t sub_1E59A94B4(uint64_t a1)
{
  v2 = sub_1E59A9948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59A94F0(uint64_t a1)
{
  v2 = sub_1E59A9948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59A952C(uint64_t a1)
{
  v2 = sub_1E59A99F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59A9568(uint64_t a1)
{
  v2 = sub_1E59A99F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59A95A4(uint64_t a1)
{
  v2 = sub_1E59A999C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59A95E0(uint64_t a1)
{
  v2 = sub_1E59A999C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SectionType.hashValue.getter(char a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1 & 1);
  return sub_1E5A2C204();
}

uint64_t SectionType.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF6C0, &qword_1E5A3E090);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF6C8, &qword_1E5A3E098);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF6D0, &qword_1E5A3E0A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59A9948();
  sub_1E5A2C224();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1E59A999C();
    sub_1E5A2C024();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1E59A99F0();
    sub_1E5A2C024();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_1E59A9948()
{
  result = qword_1ECFFF6D8;
  if (!qword_1ECFFF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF6D8);
  }

  return result;
}

unint64_t sub_1E59A999C()
{
  result = qword_1ECFFF6E0;
  if (!qword_1ECFFF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF6E0);
  }

  return result;
}

unint64_t sub_1E59A99F0()
{
  result = qword_1ECFFF6E8;
  if (!qword_1ECFFF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF6E8);
  }

  return result;
}

uint64_t sub_1E59A9A60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E59A9AAC(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1E59A9AAC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF730, &qword_1E5A3E400);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF738, &qword_1E5A3E408);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF740, &qword_1E5A3E410);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59A9948();
  v15 = v32;
  sub_1E5A2C214();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_1E5A2C004();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_1E58BC5B4();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_1E5A2BE84();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v24 = &type metadata for SectionType;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_1E59A999C();
    sub_1E5A2BF44();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1E59A99F0();
    sub_1E5A2BF44();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_1E59A9F6C()
{
  result = qword_1ECFFF6F0;
  if (!qword_1ECFFF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF6F0);
  }

  return result;
}

unint64_t sub_1E59AA004()
{
  result = qword_1ECFFF6F8;
  if (!qword_1ECFFF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF6F8);
  }

  return result;
}

unint64_t sub_1E59AA05C()
{
  result = qword_1ECFFF700;
  if (!qword_1ECFFF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF700);
  }

  return result;
}

unint64_t sub_1E59AA0B4()
{
  result = qword_1ECFFF708;
  if (!qword_1ECFFF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF708);
  }

  return result;
}

unint64_t sub_1E59AA10C()
{
  result = qword_1ECFFF710;
  if (!qword_1ECFFF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF710);
  }

  return result;
}

unint64_t sub_1E59AA164()
{
  result = qword_1ECFFF718;
  if (!qword_1ECFFF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF718);
  }

  return result;
}

unint64_t sub_1E59AA1BC()
{
  result = qword_1ECFFF720;
  if (!qword_1ECFFF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF720);
  }

  return result;
}

unint64_t sub_1E59AA214()
{
  result = qword_1ECFFF728;
  if (!qword_1ECFFF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF728);
  }

  return result;
}

uint64_t ActiveWorkoutPlanWorkoutLocalState.init()@<X0>(uint64_t a1@<X8>)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkout();
  v3 = *(*(active - 8) + 56);

  return v3(a1, 1, 1, active);
}

uint64_t sub_1E59AA2E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59AA358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59AA3E8(uint64_t a1)
{
  v2 = sub_1E59AA5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59AA424(uint64_t a1)
{
  v2 = sub_1E59AA5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActiveWorkoutPlanWorkoutLocalState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF748, &qword_1E5A3E418);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59AA5C4();
  sub_1E5A2C224();
  type metadata accessor for ActiveWorkoutPlanWorkout();
  sub_1E590CE9C(&qword_1ECFFD4C0);
  sub_1E5A2C054();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E59AA5C4()
{
  result = qword_1ECFFF750;
  if (!qword_1ECFFF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF750);
  }

  return result;
}

uint64_t ActiveWorkoutPlanWorkoutLocalState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF758, &qword_1E5A3E420);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutLocalState();
  v12 = *(*(active - 8) + 64);
  MEMORY[0x1EEE9AC00](active - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActiveWorkoutPlanWorkout();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59AA5C4();
  v17 = v22;
  sub_1E5A2C214();
  if (!v17)
  {
    v18 = v21;
    sub_1E590CE9C(&qword_1ECFFD500);
    sub_1E5A2BF84();
    (*(v20 + 8))(v10, v7);
    sub_1E59AA358(v6, v14);
    sub_1E59AA8F4(v14, v18);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E59AAF24(v14, type metadata accessor for ActiveWorkoutPlanWorkoutLocalState);
}

uint64_t type metadata accessor for ActiveWorkoutPlanWorkoutLocalState()
{
  result = qword_1ECFFF760;
  if (!qword_1ECFFF760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E59AA8F4(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkoutLocalState();
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1E59AA970(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF748, &qword_1E5A3E418);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59AA5C4();
  sub_1E5A2C224();
  type metadata accessor for ActiveWorkoutPlanWorkout();
  sub_1E590CE9C(&qword_1ECFFD4C0);
  sub_1E5A2C054();
  return (*(v3 + 8))(v6, v2);
}

BOOL _s18FitnessWorkoutPlan06ActivebcB10LocalStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkout();
  v5 = *(active - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](active);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF788, &qword_1E5A3E5E8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v22 - v15;
  v18 = *(v17 + 56);
  sub_1E59AA2E0(a1, &v22 - v15);
  sub_1E59AA2E0(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, active) != 1)
  {
    sub_1E59AA2E0(v16, v12);
    if (v19(&v16[v18], 1, active) != 1)
    {
      sub_1E5969FD8(&v16[v18], v8);
      v21 = static ActiveWorkoutPlanWorkout.== infix(_:_:)(v12, v8);
      sub_1E59AAF24(v8, type metadata accessor for ActiveWorkoutPlanWorkout);
      sub_1E59AAF24(v12, type metadata accessor for ActiveWorkoutPlanWorkout);
      sub_1E58BAD14(v16, &qword_1ECFFC2A0, &qword_1E5A30640);
      return (v21 & 1) != 0;
    }

    sub_1E59AAF24(v12, type metadata accessor for ActiveWorkoutPlanWorkout);
LABEL_6:
    sub_1E58BAD14(v16, &qword_1ECFFF788, &qword_1E5A3E5E8);
    return 0;
  }

  if (v19(&v16[v18], 1, active) != 1)
  {
    goto LABEL_6;
  }

  sub_1E58BAD14(v16, &qword_1ECFFC2A0, &qword_1E5A30640);
  return 1;
}

void sub_1E59AADA0()
{
  sub_1E590CF78();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1E59AAE20()
{
  result = qword_1ECFFF770;
  if (!qword_1ECFFF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF770);
  }

  return result;
}

unint64_t sub_1E59AAE78()
{
  result = qword_1ECFFF778;
  if (!qword_1ECFFF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF778);
  }

  return result;
}

unint64_t sub_1E59AAED0()
{
  result = qword_1ECFFF780;
  if (!qword_1ECFFF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF780);
  }

  return result;
}

uint64_t sub_1E59AAF24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 CreatePersonalizedWorkoutPlanButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t CreatePersonalizedWorkoutPlanButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v92 = a4;
  v85 = a3;
  v90 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC338, &unk_1E5A3E5F0);
  v84 = *(v89 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v78 - v8;
  v88 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v91 = *(v88 - 8);
  v9 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v78 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78 - v21;
  PersonalizedWorkoutPlanButtonAction = type metadata accessor for CreatePersonalizedWorkoutPlanButtonAction();
  v24 = *(*(PersonalizedWorkoutPlanButtonAction - 8) + 64);
  MEMORY[0x1EEE9AC00](PersonalizedWorkoutPlanButtonAction - 8);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v4;
  v28 = v4[1];
  v30 = v4[2];
  v29 = v4[3];
  sub_1E59AC360(v92, v26, type metadata accessor for CreatePersonalizedWorkoutPlanButtonAction);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC140, &qword_1E5A3B010);
  result = (*(*(v31 - 8) + 48))(v26, 2, v31);
  if (result)
  {
    if (result != 1)
    {
      result = type metadata accessor for CreatePersonalizedWorkoutPlanButtonState();
      *(v90 + *(result + 24) + 1) = 1;
    }
  }

  else
  {
    v80 = v12;
    v81 = v27;
    v82 = v30;
    v92 = v28;
    v34 = v86;
    v33 = v87;
    v35 = v89;
    sub_1E58D6730(v26, v22);
    sub_1E593B564(v22, v19);
    if ((*(v91 + 48))(v19, 1, v88) == 1)
    {
      sub_1E58D67F4(v22);
      return sub_1E58D67F4(v19);
    }

    else
    {
      v88 = v29;
      v79 = v22;
      v36 = v15;
      sub_1E593CD50(v19, v15);
      v37 = *(v90 + *(type metadata accessor for CreatePersonalizedWorkoutPlanButtonState() + 36));
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v39 = v38[12];
      v40 = v38[16];
      v41 = v38[20];
      v42 = v38[24];
      if (v37 == 1)
      {
        v43 = &v34[v42];
        v93 = 1;
        sub_1E59AB7B4();
        sub_1E5A2BE14();
        sub_1E5A2BC94();
        v44 = *MEMORY[0x1E6999B60];
        v45 = sub_1E5A2B924();
        (*(*(v45 - 8) + 104))(&v34[v40], v44, v45);
        v46 = *MEMORY[0x1E6999B40];
        v47 = sub_1E5A2B914();
        (*(*(v47 - 8) + 104))(&v34[v41], v46, v47);
        v48 = v80;
        sub_1E59AC360(v36, v80, type metadata accessor for PersonalizedWorkoutPlanCandidate);
        v49 = (*(v91 + 80) + 48) & ~*(v91 + 80);
        v50 = v34;
        v51 = swift_allocObject();
        v52 = v82;
        v53 = v92;
        v51[2] = v81;
        v51[3] = v53;
        v54 = v88;
        v51[4] = v52;
        v51[5] = v54;
        sub_1E593CD50(v48, v51 + v49);
        *v43 = &unk_1E5A3E618;
        *(v43 + 1) = v51;
        v55 = v84;
        v56 = v35;
        (*(v84 + 104))(v34, *MEMORY[0x1E6999AD8], v35);
        v57 = v85;
        v58 = *v85;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_1E58E73CC(0, v58[2] + 1, 1, v58);
        }

        v59 = v79;
        v61 = v58[2];
        v60 = v58[3];
        v62 = v61 + 1;
        if (v61 >= v60 >> 1)
        {
          v58 = sub_1E58E73CC(v60 > 1, v61 + 1, 1, v58);
        }

        v63 = v36;
      }

      else
      {
        v64 = v33;
        v65 = &v33[v42];
        v94 = 0;
        sub_1E59AB7B4();
        sub_1E5A2BE14();
        sub_1E5A2BC94();
        v66 = *MEMORY[0x1E6999B50];
        v67 = sub_1E5A2B924();
        (*(*(v67 - 8) + 104))(&v64[v40], v66, v67);
        v68 = *MEMORY[0x1E6999B40];
        v69 = sub_1E5A2B914();
        (*(*(v69 - 8) + 104))(&v64[v41], v68, v69);
        v90 = v36;
        v70 = v83;
        sub_1E59AC360(v36, v83, type metadata accessor for PersonalizedWorkoutPlanCandidate);
        v71 = (*(v91 + 80) + 48) & ~*(v91 + 80);
        v50 = v64;
        v72 = swift_allocObject();
        v73 = v82;
        v74 = v92;
        v72[2] = v81;
        v72[3] = v74;
        v75 = v88;
        v72[4] = v73;
        v72[5] = v75;
        sub_1E593CD50(v70, v72 + v71);
        *v65 = &unk_1E5A3E608;
        *(v65 + 1) = v72;
        v55 = v84;
        v56 = v35;
        (*(v84 + 104))(v64, *MEMORY[0x1E6999AD8], v35);
        v57 = v85;
        v58 = *v85;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_1E58E73CC(0, v58[2] + 1, 1, v58);
        }

        v59 = v79;
        v61 = v58[2];
        v76 = v58[3];
        v62 = v61 + 1;
        v63 = v90;
        if (v61 >= v76 >> 1)
        {
          v77 = v90;
          v58 = sub_1E58E73CC(v76 > 1, v61 + 1, 1, v58);
          v63 = v77;
        }
      }

      sub_1E59AC910(v63, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      sub_1E58D67F4(v59);
      v58[2] = v62;
      result = (*(v55 + 32))(v58 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v61, v50, v56);
      *v57 = v58;
    }
  }

  return result;
}

unint64_t sub_1E59AB7B4()
{
  result = qword_1ECFFF790;
  if (!qword_1ECFFF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF790);
  }

  return result;
}

uint64_t sub_1E59AB808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v8 = *(*(type metadata accessor for CreatePersonalizedWorkoutPlanButtonAction() - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  sub_1E5A2BC84();
  v6[8] = sub_1E5A2BC74();
  v10 = sub_1E5A2BC54();
  v6[9] = v10;
  v6[10] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E59AB908, v10, v9);
}

uint64_t sub_1E59AB908()
{
  v1 = v0[7];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC140, &qword_1E5A3B010);
  (*(*(v2 - 8) + 56))(v1, 2, 2, v2);
  v3 = *(MEMORY[0x1E6999AF0] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFF7B8, &unk_1E5A3E758);
  *v4 = v0;
  v4[1] = sub_1E59ABA0C;
  v6 = v0[7];
  v7 = v0[2];

  return MEMORY[0x1EEE01A40](v6, v5);
}

uint64_t sub_1E59ABA0C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 56);
  v7 = *v0;

  sub_1E59AC910(v3, type metadata accessor for CreatePersonalizedWorkoutPlanButtonAction);
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E59ABB64, v5, v4);
}

uint64_t sub_1E59ABB64()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_1E59AC360(v0[5], v1, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  v3 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E59ABCBC;
  v6 = v0[6];
  v7 = v0[4];

  return v9(v6);
}

uint64_t sub_1E59ABCBC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 104) = v0;

  sub_1E58D67F4(v4);
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = sub_1E59ABE8C;
  }

  else
  {
    v8 = sub_1E59ABE14;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E59ABE14()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E59ABE8C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_1E59ABF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a3;
  v6[4] = a6;
  v6[2] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  sub_1E5A2BC84();
  v6[6] = sub_1E5A2BC74();
  v9 = sub_1E5A2BC54();
  v6[7] = v9;
  v6[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E59ABFD8, v9, v8);
}

uint64_t sub_1E59ABFD8()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_1E59AC360(v0[4], v1, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  v3 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1E59AC130;
  v6 = v0[5];
  v7 = v0[3];

  return v9(v6);
}

uint64_t sub_1E59AC130()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 80) = v0;

  sub_1E58D67F4(v4);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1E59AC2F4;
  }

  else
  {
    v8 = sub_1E59AC288;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E59AC288()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E59AC2F4()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1E59AC360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E59AC3C8(uint64_t a1)
{
  v4 = *(type metadata accessor for PersonalizedWorkoutPlanCandidate() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E58CD5C8;

  return sub_1E59ABF04(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for PersonalizedWorkoutPlanCandidate() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 40);

  v6 = sub_1E5A29E74();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2, v6);
  v8 = *(v0 + v2 + v1[7] + 8);

  v9 = *(v0 + v2 + v1[8] + 8);

  v10 = *(v0 + v2 + v1[9]);

  v11 = *(v0 + v2 + v1[10]);

  v12 = v0 + v2 + v1[11];
  v13 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v7(v12 + *(v13 + 20), v6);
    v14 = *(v12 + *(v13 + 24));
  }

  return swift_deallocObject();
}

uint64_t sub_1E59AC678(uint64_t a1)
{
  v4 = *(type metadata accessor for PersonalizedWorkoutPlanCandidate() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E58CECB4;

  return sub_1E59AB808(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1E59AC850(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E59AC8BC()
{
  result = qword_1ECFFF7B0;
  if (!qword_1ECFFF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF7B0);
  }

  return result;
}

uint64_t sub_1E59AC910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ArchivedWorkoutPlansFeature.init(environment:sectionType:fetchItemForPlaceholders:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v4;
  v5 = a1[5];
  *(a3 + 64) = a1[4];
  *(a3 + 80) = v5;
  v6 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 104) = a2 & 1;
  sub_1E5A2A374();
  sub_1E5A2A314();
  sub_1E5A2A384();
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  sub_1E58B1C48();
  sub_1E58B1C9C();
  sub_1E58B1CF0();
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  sub_1E5A2A124();
  swift_getWitnessTable();
  sub_1E5A2A154();
  sub_1E5A2A264();

  sub_1E5A2A254();
  v7 = sub_1E5A2A144();

  *(a3 + 96) = v7;
  return result;
}

uint64_t ArchivedWorkoutPlansFeature.environment.getter@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v26 = v2[2];
  v27 = v4;
  v6 = v2[5];
  v28 = v2[4];
  v5 = v28;
  v29 = v6;
  v8 = v2[1];
  v25[0] = *v2;
  v7 = v25[0];
  v25[1] = v8;
  a2[2] = v26;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  *a2 = v7;
  a2[1] = v8;
  v9 = sub_1E5A2A374();
  v23 = a1[2];
  v10 = sub_1E5A2A314();
  v11 = a1[3];
  v12 = a1[7];
  v13 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v14 = a1[8];
  v15 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v16 = sub_1E58B1C48();
  v17 = sub_1E58B1C9C();
  v18 = sub_1E58B1CF0();
  v19 = a1[9];
  v20 = a1[13];
  v24[0] = v9;
  v24[1] = v23;
  v24[2] = v10;
  v24[3] = &type metadata for WorkoutPlanItemContext;
  v24[4] = v11;
  v24[5] = v12;
  v24[6] = v13;
  v24[7] = v14;
  v24[8] = v15;
  v24[9] = v16;
  v24[10] = v17;
  v24[11] = v18;
  v24[12] = v19;
  v24[13] = v20;
  v21 = type metadata accessor for ArchivedWorkoutPlansEnvironment();
  return (*(*(v21 - 8) + 16))(v24, v25, v21);
}

BOOL sub_1E59ACD58(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a2 >> 5;
  if (v4 > 3)
  {
    v11 = a4 & 0xE0;
    v12 = ((a3 ^ a1) & 1) == 0;
    if (v11 != 192)
    {
      v12 = 0;
    }

    v13 = a4 > 0xDFu && ((a3 ^ a1) & 1) == 0;
    if (v4 == 6)
    {
      v13 = v12;
    }

    v14 = ((a3 ^ a1) & 1) == 0;
    if (v11 != 128)
    {
      v14 = 0;
    }

    v15 = v11 == 160 && ((a3 ^ a1) & 1) == 0;
    if (v4 == 4)
    {
      v15 = v14;
    }

    if ((a2 >> 5) <= 5u)
    {
      return v15;
    }

    else
    {
      return v13;
    }
  }

  else
  {
    v5 = a4 & 0xE0;
    v6 = ((a3 ^ a1) & 1) == 0;
    if (v5 != 64)
    {
      v6 = 0;
    }

    v7 = ((a3 ^ a1) & 1) == 0;
    if (v5 != 96)
    {
      v7 = 0;
    }

    if (v4 != 2)
    {
      v6 = v7;
    }

    v8 = ((a3 ^ a1) & 1) == 0;
    if (a4 >= 0x20u)
    {
      v8 = 0;
    }

    v9 = ((a4 ^ a2) & 1) == 0;
    if (a1 != a3)
    {
      v9 = 0;
    }

    if (v5 != 32)
    {
      v9 = 0;
    }

    if (!(a2 >> 5))
    {
      v9 = v8;
    }

    if ((a2 >> 5) <= 1u)
    {
      return v9;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1E59ACE54(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = a3 >> 5;
  if (v4 > 3)
  {
    if ((a3 >> 5) > 5u)
    {
      if (v4 == 6)
      {
        v5 = 6;
      }

      else
      {
        v5 = 7;
      }
    }

    else if (v4 == 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }

    goto LABEL_16;
  }

  if ((a3 >> 5) > 1u)
  {
    if (v4 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    goto LABEL_16;
  }

  if (!(a3 >> 5))
  {
    v5 = 0;
LABEL_16:
    MEMORY[0x1E6932DE0](v5);
    v7 = a2 & 1;
    return MEMORY[0x1E6932DE0](v7);
  }

  MEMORY[0x1E6932DE0](1);
  MEMORY[0x1E6932DE0](a2);
  v7 = a3 & 1;
  return MEMORY[0x1E6932DE0](v7);
}

uint64_t sub_1E59ACF14(uint64_t a1, unsigned __int8 a2)
{
  sub_1E5A2C1B4();
  sub_1E59ACE54(v5, a1, a2);
  return sub_1E5A2C204();
}

uint64_t sub_1E59ACFB4()
{
  sub_1E5A2C1B4();
  sub_1E59ACE54(v2, *v0, *(v0 + 8));
  return sub_1E5A2C204();
}

uint64_t ArchivedWorkoutPlansFeature.reduce(localState:sharedState:sideEffects:action:)(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v273 = a4;
  v270 = a3;
  v271 = a2;
  v263 = a1;
  v7 = sub_1E5A2A024();
  v266 = *(v7 - 8);
  v267 = v7;
  v8 = v266[8];
  MEMORY[0x1EEE9AC00](v7);
  v264 = &v250 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = v9;
  MEMORY[0x1EEE9AC00](v10);
  WitnessTable = &v250 - v11;
  v13 = a5[2];
  v12 = a5[3];
  v14 = a5[5];
  v15 = a5[7];
  v16 = a5[8];
  v17 = sub_1E58B1C48();
  v18 = sub_1E58B1C9C();
  v19 = sub_1E58B1CF0();
  v20 = a5[9];
  v21 = a5[11];
  v275 = a5;
  v22 = a5[13];
  v281 = v13;
  v282 = v12;
  v284 = v13;
  v285 = &type metadata for WorkoutPlanItemContext;
  v286 = v12;
  v287 = v14;
  v283 = v14;
  v279 = v15;
  v280 = v20;
  v288 = v15;
  v289 = v16;
  v276 = v16;
  v277 = v22;
  v261 = v18;
  v262 = v17;
  v290 = v17;
  v291 = v18;
  v23 = v19;
  v292 = v19;
  v293 = v20;
  v278 = v21;
  v294 = v21;
  v295 = v22;
  v24 = type metadata accessor for ArchivedWorkoutPlansAction();
  v272 = sub_1E5A2B8C4();
  v274 = *(v272 - 8);
  v25 = *(v274 + 64);
  MEMORY[0x1EEE9AC00](v272);
  v269 = &v250 - v26;
  v27 = sub_1E5A2A1F4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v260 = &v250 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v250 - v31;
  v33 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v250 - v35;
  v37 = v5[5];
  v308 = v5[4];
  *v309 = v37;
  *&v309[9] = *(v5 + 89);
  v38 = v5[1];
  v304 = *v5;
  v305 = v38;
  v39 = v5[3];
  v306 = v5[2];
  v307 = v39;
  (*(v40 + 16))(&v250 - v35, v273, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v47 = v264;
    v48 = v267;
    v49 = v266;
    if (!EnumCaseMultiPayload)
    {
      v106 = *v36;
      v107 = WitnessTable;
      MEMORY[0x1E6930C30](*v36, 0);
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v271 = v108[12];
      v109 = v108[16];
      v273 = v108[20];
      v110 = v269;
      v263 = &v269[v108[24]];
      v302 = v106;
      v303 = v309[24] | 0x20;
      v111 = v275;
      v112 = v275[4];
      v258 = v109;
      v259 = v112;
      v113 = v275[10];
      v260 = v275[6];
      v261 = v113;
      v262 = v275[12];
      v284 = v281;
      v285 = v282;
      v286 = v112;
      v287 = v283;
      v288 = v260;
      v114 = v279;
      v289 = v279;
      v290 = v276;
      v291 = v280;
      v292 = v113;
      v293 = v278;
      v294 = v262;
      v295 = v277;
      type metadata accessor for ArchivedWorkoutPlansFeature.TaskIdentifier();
      swift_getWitnessTable();
      sub_1E5A2BF24();
      v115 = *MEMORY[0x1E6999B60];
      v116 = sub_1E5A2B924();
      (*(*(v116 - 8) + 104))(&v110[v258], v115, v116);
      (v49[2])(v47, v107, v48);
      v117 = (*(v49 + 80) + 217) & ~*(v49 + 80);
      v118 = swift_allocObject();
      v119 = v282;
      *(v118 + 16) = v281;
      *(v118 + 24) = v119;
      v120 = v283;
      *(v118 + 32) = v259;
      *(v118 + 40) = v120;
      *(v118 + 48) = v260;
      *(v118 + 56) = v114;
      v121 = v280;
      *(v118 + 64) = v276;
      *(v118 + 72) = v121;
      v122 = v278;
      *(v118 + 80) = v261;
      *(v118 + 88) = v122;
      v123 = v277;
      *(v118 + 96) = v262;
      *(v118 + 104) = v123;
      v124 = *v309;
      *(v118 + 176) = v308;
      *(v118 + 192) = v124;
      *(v118 + 201) = *&v309[9];
      v125 = v305;
      *(v118 + 112) = v304;
      *(v118 + 128) = v125;
      v126 = v307;
      *(v118 + 144) = v306;
      *(v118 + 160) = v126;
      (v49[4])(v118 + v117, v47, v48);
      v127 = v263;
      *v263 = &unk_1E5A3E7D0;
      *(v127 + 1) = v118;
      (*(*(v111 - 1) + 16))(&v284, &v304, v111);
      sub_1E5A2BC94();
      v128 = *MEMORY[0x1E6999B48];
      v129 = sub_1E5A2B914();
      (*(*(v129 - 8) + 104))(&v110[v273], v128, v129);
      (*(v274 + 104))(v110, *MEMORY[0x1E6999AD8], v272);
      sub_1E5A2BC44();
      sub_1E5A2BC34();
      return (v49[1])(WitnessTable, v48);
    }

    if (EnumCaseMultiPayload != 1)
    {
      v130 = sub_1E5A2A374();
      v131 = sub_1E5A2A314();
      v132 = sub_1E5A2A384();
      v133 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
      v134 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
      v135 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
      v284 = v130;
      v285 = v281;
      v286 = v131;
      v136 = v283;
      v287 = &type metadata for WorkoutPlanItemContext;
      v288 = v282;
      v289 = v283;
      v290 = v132;
      v137 = v278;
      v138 = v279;
      v291 = v279;
      v292 = v133;
      v139 = v277;
      v293 = v276;
      v294 = v134;
      v295 = v262;
      v296 = v261;
      v297 = v23;
      v298 = v280;
      v299 = v278;
      v300 = v135;
      v301 = v277;
      sub_1E5A2A244();
      v140 = sub_1E5A2BD84();
      (*(*(v140 - 8) + 40))(v263, v36, v140);
      v141 = v275[6];
      v142 = v275[10];
      v143 = v275[12];
      v284 = v275[4];
      v285 = v136;
      v286 = v141;
      v287 = v138;
      v288 = v142;
      v289 = v137;
      v290 = v143;
      v291 = v139;
      result = type metadata accessor for ArchivedWorkoutPlansState();
      *(v271 + *(result + 88)) = 3;
      return result;
    }

    v50 = *(v36 + 1);
    v267 = *v36;
    WitnessTable = v50;
    LODWORD(v273) = v36[16];
    v51 = v275;
    v52 = v275[4];
    v53 = v275[6];
    v54 = v275[10];
    v55 = v275[12];
    v56 = v283;
    v284 = v52;
    v285 = v283;
    v58 = v278;
    v57 = v279;
    v286 = v53;
    v287 = v279;
    v288 = v54;
    v289 = v278;
    v59 = v277;
    v290 = v55;
    v291 = v277;
    if (*(v271 + *(type metadata accessor for ArchivedWorkoutPlansState() + 88)) != 3)
    {
      return sub_1E591CB8C();
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v61 = v60[12];
    v264 = v60[16];
    v271 = v60[20];
    v62 = v56;
    v63 = v269;
    v265 = &v269[v60[24]];
    v266 = v61;
    v302 = v309[24];
    v303 = 96;
    v284 = v281;
    v285 = v282;
    v286 = v52;
    v287 = v62;
    v288 = v53;
    v289 = v57;
    v64 = v276;
    v290 = v276;
    v291 = v280;
    v292 = v54;
    v293 = v58;
    v294 = v55;
    v295 = v59;
    type metadata accessor for ArchivedWorkoutPlansFeature.TaskIdentifier();
    v65 = v58;
    swift_getWitnessTable();
    sub_1E5A2BF24();
    v66 = *MEMORY[0x1E6999B50];
    v67 = sub_1E5A2B924();
    (*(*(v67 - 8) + 104))(&v63[v264], v66, v67);
    v68 = swift_allocObject();
    v69 = v282;
    *(v68 + 16) = v281;
    *(v68 + 24) = v69;
    v70 = v283;
    *(v68 + 32) = v52;
    *(v68 + 40) = v70;
    v72 = v279;
    v71 = v280;
    *(v68 + 48) = v53;
    *(v68 + 56) = v72;
    *(v68 + 64) = v64;
    *(v68 + 72) = v71;
    *(v68 + 80) = v54;
    *(v68 + 88) = v65;
    v73 = v277;
    *(v68 + 96) = v55;
    *(v68 + 104) = v73;
    v74 = *v309;
    *(v68 + 176) = v308;
    *(v68 + 192) = v74;
    *(v68 + 201) = *&v309[9];
    v75 = v305;
    *(v68 + 112) = v304;
    *(v68 + 128) = v75;
    v76 = v307;
    *(v68 + 144) = v306;
    *(v68 + 160) = v76;
    v77 = WitnessTable;
    *(v68 + 224) = v267;
    *(v68 + 232) = v77;
    *(v68 + 240) = v273;
    v78 = v265;
    *v265 = &unk_1E5A3E7C0;
    *(v78 + 1) = v68;
    (*(*(v51 - 1) + 16))(&v284, &v304, v51);
    sub_1E5A2BC94();
    v79 = *MEMORY[0x1E6999B48];
    v80 = sub_1E5A2B914();
    (*(*(v80 - 8) + 104))(&v63[v271], v79, v80);
    (*(v274 + 104))(v63, *MEMORY[0x1E6999AD8], v272);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    v42 = v275;
    if (EnumCaseMultiPayload == 3)
    {
      v43 = v275[6];
      v44 = v275[10];
      v45 = v275[12];
      v284 = v275[4];
      v285 = v283;
      v286 = v43;
      v287 = v279;
      v288 = v44;
      v289 = v278;
      v290 = v45;
      v291 = v277;
      result = type metadata accessor for ArchivedWorkoutPlansState();
      *(v271 + *(result + 88)) = 0;
    }

    else
    {
      v144 = *(v28 + 16);
      v265 = (v28 + 16);
      v266 = v144;
      (v144)(v32, v271, v27);
      v284 = v281;
      v145 = v283;
      v285 = &type metadata for WorkoutPlanItemContext;
      v286 = v282;
      v287 = v283;
      v288 = v279;
      v146 = v279;
      v289 = v276;
      v290 = v262;
      v291 = v261;
      v292 = v23;
      v264 = v27;
      v147 = v278;
      v293 = v280;
      v294 = v278;
      v273 = v32;
      v148 = v277;
      v295 = v277;
      v149 = type metadata accessor for ArchivedWorkoutPlansLocalState();
      v150 = v42[4];
      v267 = *&v263[*(v149 + 116)];
      WitnessTable = v150;
      v151 = v42[6];
      v152 = v42[10];
      v153 = v42[12];
      v284 = v150;
      v285 = v145;
      v286 = v151;
      v287 = v146;
      v154 = v146;
      v288 = v152;
      v289 = v147;
      v155 = v152;
      v262 = v152;
      v263 = v153;
      v290 = v153;
      v291 = v148;
      v156 = v153;
      *(v271 + *(type metadata accessor for ArchivedWorkoutPlansState() + 88)) = 2;
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v158 = v157[16];
      v257 = v157[12];
      v258 = v158;
      v259 = v157[20];
      v159 = v157[24];
      v261 = v28;
      v160 = v269;
      v271 = &v269[v159];
      v302 = v309[24];
      v303 = 0;
      v284 = v281;
      v285 = v282;
      v286 = WitnessTable;
      v287 = v145;
      v288 = v151;
      v289 = v154;
      v290 = v276;
      v291 = v280;
      v292 = v155;
      v293 = v147;
      v294 = v156;
      v295 = v148;
      type metadata accessor for ArchivedWorkoutPlansFeature.TaskIdentifier();
      swift_getWitnessTable();
      sub_1E5A2BF24();
      sub_1E5A2BC94();
      v161 = *MEMORY[0x1E6999B60];
      v162 = sub_1E5A2B924();
      (*(*(v162 - 8) + 104))(&v160[v258], v161, v162);
      v163 = *MEMORY[0x1E6999B48];
      v164 = sub_1E5A2B914();
      (*(*(v164 - 8) + 104))(&v259[v160], v163, v164);
      v165 = v260;
      v166 = v264;
      (v266)(v260, v273, v264);
      v167 = v261;
      v168 = (*(v261 + 80) + 232) & ~*(v261 + 80);
      v169 = swift_allocObject();
      v170 = v282;
      *(v169 + 16) = v281;
      *(v169 + 24) = v170;
      v171 = v283;
      *(v169 + 32) = WitnessTable;
      *(v169 + 40) = v171;
      v172 = v279;
      *(v169 + 48) = v151;
      *(v169 + 56) = v172;
      v173 = v280;
      *(v169 + 64) = v276;
      *(v169 + 72) = v173;
      v174 = v278;
      *(v169 + 80) = v262;
      *(v169 + 88) = v174;
      *(v169 + 96) = v263;
      *(v169 + 104) = v148;
      v175 = *v309;
      *(v169 + 176) = v308;
      *(v169 + 192) = v175;
      *(v169 + 201) = *&v309[9];
      v176 = v305;
      *(v169 + 112) = v304;
      *(v169 + 128) = v176;
      v177 = v307;
      *(v169 + 144) = v306;
      *(v169 + 160) = v177;
      *(v169 + 224) = v267;
      (*(v167 + 32))(v169 + v168, v165, v166);
      v178 = v271;
      *v271 = &unk_1E5A3E7E0;
      *(v178 + 8) = v169;
      (*(v274 + 104))(v160, *MEMORY[0x1E6999AD8], v272);
      (*(*(v275 - 1) + 16))(&v284, &v304);
      sub_1E5A2BC44();
      sub_1E5A2BC34();
      return (*(v167 + 8))(v273, v166);
    }

    return result;
  }

  v81 = v275;
  if (EnumCaseMultiPayload == 5)
  {
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v83 = v82[16];
    v263 = v82[12];
    v264 = v83;
    v84 = v82[20];
    v85 = v269;
    v273 = &v269[v82[24]];
    v302 = v309[24];
    v303 = 64;
    v86 = v81[4];
    v265 = v84;
    v266 = v86;
    v87 = v81[10];
    v267 = v81[6];
    WitnessTable = v87;
    v271 = v81[12];
    v284 = v281;
    v285 = v282;
    v88 = v283;
    v286 = v86;
    v287 = v283;
    v89 = v279;
    v90 = v280;
    v288 = v267;
    v289 = v279;
    v91 = v276;
    v92 = v277;
    v290 = v276;
    v291 = v280;
    v93 = v278;
    v292 = v87;
    v293 = v278;
    v294 = v271;
    v295 = v277;
    type metadata accessor for ArchivedWorkoutPlansFeature.TaskIdentifier();
    swift_getWitnessTable();
    sub_1E5A2BF24();
    sub_1E5A2BC94();
    v94 = *MEMORY[0x1E6999B50];
    v95 = sub_1E5A2B924();
    (*(*(v95 - 8) + 104))(&v85[v264], v94, v95);
    v96 = *MEMORY[0x1E6999B48];
    v97 = sub_1E5A2B914();
    (*(*(v97 - 8) + 104))(&v265[v85], v96, v97);
    v98 = swift_allocObject();
    v99 = v282;
    *(v98 + 16) = v281;
    *(v98 + 24) = v99;
    v100 = v267;
    *(v98 + 32) = v266;
    *(v98 + 40) = v88;
    *(v98 + 48) = v100;
    *(v98 + 56) = v89;
    *(v98 + 64) = v91;
    *(v98 + 72) = v90;
    *(v98 + 80) = WitnessTable;
    *(v98 + 88) = v93;
    *(v98 + 96) = v271;
    *(v98 + 104) = v92;
    v101 = *v309;
    *(v98 + 176) = v308;
    *(v98 + 192) = v101;
    *(v98 + 201) = *&v309[9];
    v102 = v305;
    *(v98 + 112) = v304;
    *(v98 + 128) = v102;
    v103 = v307;
    *(v98 + 144) = v306;
    *(v98 + 160) = v103;
    v104 = v273;
    v105 = v274;
    *v273 = &unk_1E5A3E7B0;
    *(v104 + 8) = v98;
    (*(v105 + 104))(v85, *MEMORY[0x1E6999AD8], v272);
    (*(*(v81 - 1) + 16))(&v284, &v304, v81);
LABEL_11:
    sub_1E5A2BC44();
    return sub_1E5A2BC34();
  }

  v179 = v275[4];
  v180 = v275[6];
  v181 = v275[10];
  v182 = v275[12];
  v284 = v179;
  v285 = v283;
  v183 = v278;
  v286 = v180;
  v287 = v279;
  v288 = v181;
  v289 = v278;
  v184 = v182;
  v185 = v277;
  v290 = v182;
  v291 = v277;
  result = type metadata accessor for ArchivedWorkoutPlansState();
  v186 = *(result + 88);
  if (*(v271 + *(result + 104)) != 1 || *(v271 + v186) == 1)
  {
    *(v271 + v186) = 2;
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v188 = v183;
    v189 = v179;
    v257 = v180;
    v258 = v179;
    v190 = v187;
    v191 = v187[12];
    v261 = v187[16];
    v192 = v180;
    v262 = v187[20];
    v193 = v269;
    v263 = &v269[v187[24]];
    v273 = v309[24];
    v302 = v309[24];
    v303 = -32;
    v195 = v281;
    v194 = v282;
    v284 = v281;
    v285 = v282;
    v286 = v189;
    v287 = v283;
    v288 = v192;
    v289 = v279;
    v290 = v276;
    v291 = v280;
    v292 = v181;
    v293 = v188;
    v256 = v184;
    v294 = v184;
    v295 = v185;
    v271 = type metadata accessor for ArchivedWorkoutPlansFeature.TaskIdentifier();
    WitnessTable = swift_getWitnessTable();
    sub_1E5A2BF24();
    sub_1E5A2BC94();
    LODWORD(v266) = *MEMORY[0x1E6999B60];
    v196 = v266;
    v265 = sub_1E5A2B924();
    v197 = *(v265 - 1);
    v264 = *(v197 + 104);
    v267 = v197 + 104;
    (v264)(&v193[v261], v196, v265);
    v198 = *MEMORY[0x1E6999B40];
    v260 = sub_1E5A2B914();
    v199 = *(v260 - 1);
    v259 = *(v199 + 104);
    v261 = v199 + 104;
    (v259)(&v193[v262], v198, v260);
    v200 = swift_allocObject();
    v200[2] = v195;
    v200[3] = v194;
    v202 = v257;
    v201 = v258;
    v203 = v283;
    v200[4] = v258;
    v200[5] = v203;
    v204 = v279;
    v200[6] = v202;
    v200[7] = v204;
    v205 = v280;
    v200[8] = v276;
    v200[9] = v205;
    v206 = v278;
    v200[10] = v181;
    v200[11] = v206;
    v207 = v277;
    v200[12] = v256;
    v200[13] = v207;
    v208 = v263;
    *v263 = &unk_1E5A3E770;
    *(v208 + 1) = v200;
    LODWORD(v263) = *MEMORY[0x1E6999AD8];
    v209 = *(v274 + 104);
    v274 += 104;
    v262 = v209;
    v209(v193);
    v255 = sub_1E5A2BC44();
    sub_1E5A2BC34();
    v210 = v190[12];
    v211 = v190[16];
    v212 = v190[20];
    v252 = &v193[v190[24]];
    v253 = v181;
    v302 = v273;
    v303 = 0x80;
    sub_1E5A2BF24();
    sub_1E5A2BC94();
    (v264)(&v193[v211], v266, v265);
    v254 = *MEMORY[0x1E6999B48];
    (v259)(&v193[v212]);
    v213 = swift_allocObject();
    v214 = v282;
    *(v213 + 16) = v281;
    *(v213 + 24) = v214;
    *(v213 + 32) = v201;
    *(v213 + 40) = v203;
    *(v213 + 48) = v202;
    v216 = v279;
    v215 = v280;
    v217 = v276;
    *(v213 + 56) = v279;
    *(v213 + 64) = v217;
    *(v213 + 72) = v215;
    *(v213 + 80) = v181;
    v218 = v277;
    v219 = v256;
    *(v213 + 88) = v278;
    *(v213 + 96) = v219;
    *(v213 + 104) = v218;
    v220 = *v309;
    *(v213 + 176) = v308;
    *(v213 + 192) = v220;
    *(v213 + 201) = *&v309[9];
    v221 = v305;
    *(v213 + 112) = v304;
    *(v213 + 128) = v221;
    v222 = v307;
    *(v213 + 144) = v306;
    *(v213 + 160) = v222;
    v223 = v252;
    *v252 = &unk_1E5A3E780;
    *(v223 + 1) = v213;
    (v262)(v193, v263, v272);
    v224 = *(v275 - 1);
    v251 = *(v224 + 16);
    v252 = (v224 + 16);
    v251(&v284, &v304);
    sub_1E5A2BC34();
    v225 = v190[12];
    v226 = v190[16];
    v227 = v190[20];
    v250 = &v193[v190[24]];
    v302 = v273;
    v303 = -96;
    sub_1E5A2BF24();
    sub_1E5A2BC94();
    (v264)(&v193[v226], v266, v265);
    (v259)(&v193[v227], v254, v260);
    v228 = swift_allocObject();
    v229 = v282;
    *(v228 + 16) = v281;
    *(v228 + 24) = v229;
    v230 = v283;
    *(v228 + 32) = v258;
    *(v228 + 40) = v230;
    *(v228 + 48) = v257;
    *(v228 + 56) = v216;
    v231 = v280;
    *(v228 + 64) = v217;
    *(v228 + 72) = v231;
    v232 = v277;
    v233 = v278;
    *(v228 + 80) = v253;
    *(v228 + 88) = v233;
    *(v228 + 96) = v219;
    *(v228 + 104) = v232;
    v234 = *v309;
    *(v228 + 176) = v308;
    *(v228 + 192) = v234;
    *(v228 + 201) = *&v309[9];
    v235 = v305;
    *(v228 + 112) = v304;
    *(v228 + 128) = v235;
    v236 = v307;
    *(v228 + 144) = v306;
    *(v228 + 160) = v236;
    v237 = v250;
    *v250 = &unk_1E5A3E790;
    *(v237 + 1) = v228;
    (v262)(v193, v263, v272);
    (v251)(&v284, &v304, v275);
    sub_1E5A2BC34();
    v238 = v190[12];
    v239 = v190[16];
    v240 = v190[20];
    v241 = &v193[v190[24]];
    v302 = v273;
    v303 = -64;
    sub_1E5A2BF24();
    sub_1E5A2BC94();
    (v264)(&v193[v239], v266, v265);
    (v259)(&v193[v240], v254, v260);
    v242 = swift_allocObject();
    v243 = v282;
    *(v242 + 16) = v281;
    *(v242 + 24) = v243;
    v244 = v283;
    *(v242 + 32) = v258;
    *(v242 + 40) = v244;
    v245 = v279;
    *(v242 + 48) = v257;
    *(v242 + 56) = v245;
    v246 = v280;
    *(v242 + 64) = v276;
    *(v242 + 72) = v246;
    *(v242 + 80) = v253;
    *(v242 + 88) = v233;
    *(v242 + 96) = v256;
    *(v242 + 104) = v232;
    v247 = *v309;
    *(v242 + 176) = v308;
    *(v242 + 192) = v247;
    *(v242 + 201) = *&v309[9];
    v248 = v305;
    *(v242 + 112) = v304;
    *(v242 + 128) = v248;
    v249 = v307;
    *(v242 + 144) = v306;
    *(v242 + 160) = v249;
    *v241 = &unk_1E5A3E7A0;
    *(v241 + 1) = v242;
    (v262)(v193, v263, v272);
    (v251)(&v284, &v304, v275);
    return sub_1E5A2BC34();
  }

  return result;
}

uint64_t sub_1E59AE844(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[81] = v56;
  v8[80] = v55;
  v8[79] = v54;
  v8[78] = v53;
  v8[77] = v52;
  v8[76] = v51;
  v8[75] = v50;
  v8[74] = v49;
  v8[73] = a8;
  v8[72] = a7;
  v8[71] = a6;
  v8[70] = a5;
  v8[69] = a4;
  v8[68] = a2;
  v8[67] = a1;
  v12 = sub_1E58B1C48();
  v8[82] = v12;
  v13 = sub_1E58B1C9C();
  v8[83] = v13;
  v44 = v13;
  v14 = sub_1E58B1CF0();
  v8[84] = v14;
  v43 = v14;
  v8[52] = a5;
  v8[53] = &type metadata for WorkoutPlanItemContext;
  v8[54] = a6;
  v8[55] = a8;
  v8[56] = v50;
  v8[57] = v51;
  v8[58] = v12;
  v8[59] = v13;
  v8[60] = v14;
  v8[61] = v52;
  v8[62] = v54;
  v8[63] = v56;
  v15 = type metadata accessor for ArchivedWorkoutPlansAction();
  v8[85] = v15;
  v16 = *(v15 - 8);
  v8[86] = v16;
  v17 = *(v16 + 64) + 15;
  v8[87] = swift_task_alloc();
  v18 = sub_1E5A2A374();
  v8[88] = v18;
  v19 = sub_1E5A2A314();
  v8[89] = v19;
  v20 = sub_1E5A2A384();
  v8[90] = v20;
  v21 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v8[91] = v21;
  v22 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v8[92] = v22;
  v23 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  v8[2] = v18;
  v8[93] = v23;
  v8[3] = a5;
  v8[4] = v19;
  v8[5] = &type metadata for WorkoutPlanItemContext;
  v8[6] = a6;
  v8[7] = a8;
  v8[8] = v20;
  v8[9] = v50;
  v8[10] = v21;
  v8[11] = v51;
  v8[12] = v22;
  v8[13] = v12;
  v8[14] = v44;
  v8[15] = v43;
  v8[16] = v52;
  v8[17] = v54;
  v8[18] = v23;
  v8[19] = v56;
  v24 = sub_1E5A2A244();
  v8[94] = v24;
  v25 = sub_1E5A2BD84();
  v8[95] = v25;
  v26 = *(v25 - 8);
  v8[96] = v26;
  v27 = *(v26 + 64) + 15;
  v8[97] = swift_task_alloc();
  v28 = *(v24 - 8);
  v8[98] = v28;
  v29 = *(v28 + 64) + 15;
  v8[99] = swift_task_alloc();
  v30 = *(*(sub_1E5A2BD84() - 8) + 64) + 15;
  v8[100] = swift_task_alloc();
  v31 = sub_1E5A2A164();
  v8[101] = v31;
  v32 = *(v31 - 8);
  v8[102] = v32;
  v33 = *(v32 + 64) + 15;
  v8[103] = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB588, &qword_1E5A2CAF0) - 8) + 64) + 15;
  v8[104] = swift_task_alloc();
  v35 = sub_1E5A2A1F4();
  v8[105] = v35;
  v36 = *(v35 - 8);
  v8[106] = v36;
  v37 = *(v36 + 64) + 15;
  v8[107] = swift_task_alloc();
  v8[108] = sub_1E5A2BC84();
  v8[109] = sub_1E5A2BC74();
  v38 = a2[1];
  v47 = (*a2 + **a2);
  v39 = (*a2)[1];
  v40 = swift_task_alloc();
  v8[110] = v40;
  *v40 = v8;
  v40[1] = sub_1E59AED90;

  return v47(a3);
}

uint64_t sub_1E59AED90(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 880);
  v7 = *v2;
  v5[111] = a1;
  v5[112] = v1;

  v8 = v4[109];
  v9 = v4[108];
  v10 = sub_1E5A2BC54();
  if (v3)
  {
    v12 = sub_1E59B014C;
  }

  else
  {
    v5[113] = v10;
    v5[114] = v11;
    v12 = sub_1E59AEF04;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1E59AEF04()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 672);
  v6 = *(v0 + 648);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 568);
  v11 = *(v0 + 560);
  *(v0 + 512) = *(v0 + 888);
  *(v0 + 304) = v4;
  *(v0 + 312) = v11;
  *(v0 + 320) = v3;
  *(v0 + 328) = &type metadata for WorkoutPlanItemContext;
  *(v0 + 336) = v10;
  *(v0 + 344) = v9;
  *(v0 + 352) = v2;
  *(v0 + 360) = v8;
  *(v0 + 368) = v1;
  *(v0 + 376) = *(v0 + 656);
  *(v0 + 392) = v5;
  *(v0 + 400) = v7;
  *(v0 + 408) = v6;
  sub_1E5A2A0E4();
  sub_1E5A2BC44();
  swift_getWitnessTable();
  if (sub_1E5A2BD54())
  {
    v12 = *(v0 + 888);

    sub_1E59B63BC();
    v13 = swift_allocError();
    *v14 = 1;
    swift_willThrow();
    *(v0 + 976) = v13;
    if (qword_1ECFFB470 != -1)
    {
      swift_once();
    }

    v15 = sub_1E5A2A3D4();
    __swift_project_value_buffer(v15, qword_1ED026480);
    v16 = v13;
    v17 = sub_1E5A2A3B4();
    v18 = sub_1E5A2BD64();
    MEMORY[0x1E69331F0](v13);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v13;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1E5897000, v17, v18, "Failed to fetch recent workout plans section: %@", v19, 0xCu);
      sub_1E59B6328(v20);
      MEMORY[0x1E6933430](v20, -1, -1);
      MEMORY[0x1E6933430](v19, -1, -1);
    }

    v23 = *(v0 + 696);
    v24 = *(v0 + 680);

    swift_storeEnumTagMultiPayload();
    v25 = *(MEMORY[0x1E6999AF0] + 4);
    v26 = swift_task_alloc();
    *(v0 + 984) = v26;
    v27 = sub_1E5A2B8E4();
    *v26 = v0;
    v26[1] = sub_1E59AFEDC;
    v28 = *(v0 + 696);
    v29 = *(v0 + 536);

    return MEMORY[0x1EEE01A40](v28, v27);
  }

  else
  {
    v63 = *(v0 + 888);
    v30 = *(v0 + 856);
    v31 = *(v0 + 848);
    v47 = *(v0 + 840);
    v52 = *(v0 + 832);
    v32 = *(v0 + 816);
    v56 = *(v0 + 824);
    v57 = *(v0 + 808);
    v59 = *(v0 + 800);
    v33 = *(v0 + 744);
    v34 = *(v0 + 736);
    v54 = *(v0 + 728);
    v58 = *(v0 + 720);
    v61 = *(v0 + 712);
    v50 = *(v0 + 672);
    v51 = *(v0 + 664);
    v35 = *(v0 + 656);
    v36 = *(v0 + 648);
    v48 = *(v0 + 632);
    v49 = *(v0 + 616);
    v53 = *(v0 + 608);
    v55 = *(v0 + 600);
    v37 = *(v0 + 584);
    v60 = *(v0 + 568);
    v62 = *(v0 + 560);
    v38 = *(v0 + 552);
    v65 = *(*(v0 + 544) + 96);
    *(v0 + 160) = *(v0 + 704);
    *(v0 + 920) = v65;
    *(v0 + 168) = v62;
    *(v0 + 176) = v61;
    *(v0 + 184) = &type metadata for WorkoutPlanItemContext;
    *(v0 + 192) = v60;
    *(v0 + 200) = v37;
    *(v0 + 208) = v58;
    *(v0 + 216) = v55;
    *(v0 + 224) = v54;
    *(v0 + 232) = v53;
    *(v0 + 240) = v34;
    *(v0 + 248) = v35;
    *(v0 + 256) = v51;
    *(v0 + 264) = v50;
    *(v0 + 272) = v49;
    *(v0 + 280) = v48;
    *(v0 + 288) = v33;
    *(v0 + 296) = v36;
    v39 = sub_1E5A2A124();
    sub_1E5A2C104();
    v40 = *(*(v39 - 8) + 72);
    v41 = *(*(v39 - 8) + 80);
    swift_allocObject();
    v42 = sub_1E5A2BC14();
    *(v0 + 928) = v42;
    (*(v31 + 16))(v30, v38, v47);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF840, &qword_1E5A3E980);
    (*(*(v43 - 8) + 56))(v52, 1, 1, v43);
    (*(v32 + 104))(v56, *MEMORY[0x1E699D7D8], v57);
    (*(*(v37 - 8) + 56))(v59, 1, 1, v37);
    sub_1E5A2A0F4();
    sub_1E5A2BC44();
    v44 = *(MEMORY[0x1E699D7A0] + 4);
    v64 = (*MEMORY[0x1E699D7A0] + MEMORY[0x1E699D7A0]);
    v45 = swift_task_alloc();
    *(v0 + 936) = v45;
    *v45 = v0;
    v45[1] = sub_1E59AF554;

    return v64(v42);
  }
}

uint64_t sub_1E59AF554()
{
  v1 = *v0;
  v2 = *(*v0 + 936);
  v3 = *(*v0 + 928);
  v7 = *v0;

  v4 = *(v1 + 912);
  v5 = *(v1 + 904);

  return MEMORY[0x1EEE6DFA0](sub_1E59AF698, v5, v4);
}

uint64_t sub_1E59AF698()
{
  v1 = *(v0 + 752);
  v2 = swift_task_alloc();
  v3 = *(MEMORY[0x1E699D7A8] + 4);
  v13 = (*MEMORY[0x1E699D7A8] + MEMORY[0x1E699D7A8]);
  *(v0 + 944) = v2;
  v4 = *(v0 + 576);
  v5 = *(v0 + 592);
  v6 = *(v0 + 608);
  v7 = *(v0 + 624);
  v8 = *(v0 + 640);
  v2[1] = *(v0 + 560);
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v6;
  v2[5] = v7;
  v2[6] = v8;
  v9 = swift_task_alloc();
  *(v0 + 952) = v9;
  v10 = sub_1E5A2BC44();
  *(v0 + 960) = v10;
  *v9 = v0;
  v9[1] = sub_1E59AF7A8;
  v11 = *(v0 + 920);

  return v13(v0 + 520, sub_1E59B6390, v2, v10);
}

uint64_t sub_1E59AF7A8()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v4 = *v1;

  if (v0)
  {

    JUMPOUT(0x1E69331F0);
  }

  v5 = v2[118];

  v6 = v2[114];
  v7 = v2[113];

  return MEMORY[0x1EEE6DFA0](sub_1E59AF8E4, v7, v6);
}

uint64_t sub_1E59AF8E4()
{
  v1 = v0[120];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[94];
  v0[66] = v0[65];
  swift_getWitnessTable();
  sub_1E5A2BD44();
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    (*(v0[96] + 8))(v0[97], v0[95]);

    sub_1E59B63BC();
    v5 = swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v0[122] = v5;
    if (qword_1ECFFB470 != -1)
    {
      swift_once();
    }

    v7 = sub_1E5A2A3D4();
    __swift_project_value_buffer(v7, qword_1ED026480);
    v8 = v5;
    v9 = sub_1E5A2A3B4();
    v10 = sub_1E5A2BD64();
    MEMORY[0x1E69331F0](v5);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v5;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1E5897000, v9, v10, "Failed to fetch recent workout plans section: %@", v11, 0xCu);
      sub_1E59B6328(v12);
      MEMORY[0x1E6933430](v12, -1, -1);
      MEMORY[0x1E6933430](v11, -1, -1);
    }

    v15 = v0[87];
    v16 = v0[85];

    swift_storeEnumTagMultiPayload();
    v17 = *(MEMORY[0x1E6999AF0] + 4);
    v18 = swift_task_alloc();
    v0[123] = v18;
    v19 = sub_1E5A2B8E4();
    *v18 = v0;
    v20 = sub_1E59AFEDC;
  }

  else
  {
    v21 = v0[99];
    v22 = v0[98];
    v23 = v0[94];
    v24 = v0[87];
    v25 = v0[85];
    (*(v22 + 32))(v21, v0[97], v23);

    (*(v22 + 16))(v24, v21, v23);
    (*(v22 + 56))(v24, 0, 1, v23);
    swift_storeEnumTagMultiPayload();
    v26 = *(MEMORY[0x1E6999AF0] + 4);
    v18 = swift_task_alloc();
    v0[121] = v18;
    v19 = sub_1E5A2B8E4();
    *v18 = v0;
    v20 = sub_1E59AFC70;
  }

  v18[1] = v20;
  v27 = v0[87];
  v28 = v0[67];

  return MEMORY[0x1EEE01A40](v27, v19);
}

uint64_t sub_1E59AFC70()
{
  v1 = *v0;
  v2 = *(*v0 + 968);
  v3 = *(*v0 + 696);
  v4 = *(*v0 + 688);
  v5 = *(*v0 + 680);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 912);
  v7 = *(v1 + 904);

  return MEMORY[0x1EEE6DFA0](sub_1E59AFDF4, v7, v6);
}

uint64_t sub_1E59AFDF4()
{
  v1 = v0[109];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[94];

  (*(v3 + 8))(v2, v4);
  v5 = v0[107];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[100];
  v9 = v0[99];
  v10 = v0[97];
  v11 = v0[87];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E59AFEDC()
{
  v1 = *(*v0 + 984);
  v2 = *(*v0 + 872);
  v3 = *(*v0 + 864);
  v4 = *(*v0 + 696);
  v5 = *(*v0 + 688);
  v6 = *(*v0 + 680);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v8 = sub_1E5A2BC54();

  return MEMORY[0x1EEE6DFA0](sub_1E59B007C, v8, v7);
}

uint64_t sub_1E59B007C()
{
  v1 = v0[122];
  v2 = v0[109];

  MEMORY[0x1E69331F0](v1);
  v3 = v0[107];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[100];
  v7 = v0[99];
  v8 = v0[97];
  v9 = v0[87];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E59B014C()
{
  v1 = v0[112];
  v0[122] = v1;
  if (qword_1ECFFB470 != -1)
  {
    swift_once();
  }

  v2 = sub_1E5A2A3D4();
  __swift_project_value_buffer(v2, qword_1ED026480);
  v3 = v1;
  v4 = sub_1E5A2A3B4();
  v5 = sub_1E5A2BD64();
  MEMORY[0x1E69331F0](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1E5897000, v4, v5, "Failed to fetch recent workout plans section: %@", v6, 0xCu);
    sub_1E59B6328(v7);
    MEMORY[0x1E6933430](v7, -1, -1);
    MEMORY[0x1E6933430](v6, -1, -1);
  }

  v10 = v0[87];
  v11 = v0[85];

  swift_storeEnumTagMultiPayload();
  v12 = *(MEMORY[0x1E6999AF0] + 4);
  v13 = swift_task_alloc();
  v0[123] = v13;
  v14 = sub_1E5A2B8E4();
  *v13 = v0;
  v13[1] = sub_1E59AFEDC;
  v15 = v0[87];
  v16 = v0[67];

  return MEMORY[0x1EEE01A40](v15, v14);
}

uint64_t sub_1E59B0334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = v46;
  v8[46] = v47;
  v8[43] = v44;
  v8[44] = v45;
  v8[41] = v42;
  v8[42] = v43;
  v8[39] = a8;
  v8[40] = v41;
  v8[37] = a6;
  v8[38] = a7;
  v8[35] = a4;
  v8[36] = a5;
  v8[34] = a1;
  v36 = sub_1E58B1C48();
  v12 = sub_1E58B1C9C();
  v35 = sub_1E58B1CF0();
  v8[20] = a4;
  v8[21] = &type metadata for WorkoutPlanItemContext;
  v8[22] = a5;
  v8[23] = a7;
  v8[24] = v41;
  v8[25] = v42;
  v8[26] = v36;
  v8[27] = v12;
  v8[28] = v35;
  v8[29] = v43;
  v8[30] = v45;
  v8[31] = v47;
  v13 = type metadata accessor for ArchivedWorkoutPlansAction();
  v8[47] = v13;
  v14 = *(v13 - 8);
  v8[48] = v14;
  v15 = *(v14 + 64) + 15;
  v8[49] = swift_task_alloc();
  v16 = sub_1E5A2A374();
  v17 = sub_1E5A2A314();
  v18 = sub_1E5A2A384();
  v19 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v20 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v21 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  v8[2] = v16;
  v8[3] = a4;
  v8[4] = v17;
  v8[5] = &type metadata for WorkoutPlanItemContext;
  v8[6] = a5;
  v8[7] = a7;
  v8[8] = v18;
  v8[9] = v41;
  v8[10] = v19;
  v8[11] = v42;
  v8[12] = v20;
  v8[13] = v36;
  v8[14] = v12;
  v8[15] = v35;
  v8[16] = v43;
  v8[17] = v45;
  v8[18] = v21;
  v8[19] = v47;
  v22 = sub_1E5A2A244();
  v8[50] = v22;
  v23 = sub_1E5A2BD84();
  v8[51] = v23;
  v24 = *(v23 - 8);
  v8[52] = v24;
  v25 = *(v24 + 64) + 15;
  v8[53] = swift_task_alloc();
  v26 = *(v22 - 8);
  v8[54] = v26;
  v27 = *(v26 + 64) + 15;
  v8[55] = swift_task_alloc();
  v8[56] = sub_1E5A2BC84();
  v28 = sub_1E5A2BC74();
  v29 = *(a2 + 96);
  v8[57] = v28;
  v8[58] = v29;
  v30 = *(MEMORY[0x1E699D798] + 4);
  v39 = (*MEMORY[0x1E699D798] + MEMORY[0x1E699D798]);
  v31 = swift_task_alloc();
  v8[59] = v31;
  *v31 = v8;
  v31[1] = sub_1E59B06DC;

  return v39(a3);
}

uint64_t sub_1E59B06DC()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;

  v5 = *(v2 + 456);
  v6 = *(v2 + 448);
  if (v0)
  {
    MEMORY[0x1E69331F0](v0);
    v7 = sub_1E5A2BC54();
    v9 = v8;
    v10 = sub_1E59B6584;
  }

  else
  {
    v7 = sub_1E5A2BC54();
    v9 = v11;
    v10 = sub_1E59B0860;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t sub_1E59B0860()
{
  v1 = *(v0 + 400);
  v2 = swift_task_alloc();
  v3 = *(v0 + 280);
  v4 = *(v0 + 296);
  v5 = *(v0 + 312);
  v6 = *(v0 + 328);
  v7 = *(v0 + 344);
  v8 = *(v0 + 360);
  v9 = *(MEMORY[0x1E699D7A8] + 4);
  v14 = (*MEMORY[0x1E699D7A8] + MEMORY[0x1E699D7A8]);
  *(v0 + 480) = v2;
  v2[1] = v3;
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v6;
  v2[5] = v7;
  v2[6] = v8;
  v10 = swift_task_alloc();
  *(v0 + 488) = v10;
  v11 = sub_1E5A2BC44();
  *(v0 + 496) = v11;
  *v10 = v0;
  v10[1] = sub_1E59B0974;
  v12 = *(v0 + 464);

  return v14(v0 + 256, sub_1E59B6410, v2, v11);
}

uint64_t sub_1E59B0974()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;

  if (v0)
  {

    JUMPOUT(0x1E69331F0);
  }

  v5 = v2[60];
  v7 = v2[56];
  v6 = v2[57];

  v9 = sub_1E5A2BC54();
  v2[63] = v9;
  v2[64] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E59B0ACC, v9, v8);
}

uint64_t sub_1E59B0ACC()
{
  v1 = v0[62];
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[50];
  v0[33] = v0[32];
  swift_getWitnessTable();
  sub_1E5A2BD44();
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = v0[57];
    v7 = v0[52];
    v6 = v0[53];
    v8 = v0[51];

    (*(v7 + 8))(v6, v8);

    v9 = v0[55];
    v10 = v0[53];
    v11 = v0[49];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v15 = v0[54];
    v14 = v0[55];
    v17 = v0[49];
    v16 = v0[50];
    v18 = v0[47];
    (*(v15 + 32))(v14, v0[53], v16);

    (*(v15 + 16))(v17, v14, v16);
    (*(v15 + 56))(v17, 0, 1, v16);
    swift_storeEnumTagMultiPayload();
    v19 = *(MEMORY[0x1E6999AF0] + 4);
    v20 = swift_task_alloc();
    v0[65] = v20;
    v21 = sub_1E5A2B8E4();
    *v20 = v0;
    v20[1] = sub_1E59B0D00;
    v22 = v0[49];
    v23 = v0[34];

    return MEMORY[0x1EEE01A40](v22, v21);
  }
}

uint64_t sub_1E59B0D00()
{
  v1 = *v0;
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 392);
  v4 = *(*v0 + 384);
  v5 = *(*v0 + 376);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 512);
  v7 = *(v1 + 504);

  return MEMORY[0x1EEE6DFA0](sub_1E59B0E84, v7, v6);
}

uint64_t sub_1E59B0E84()
{
  v1 = v0[57];
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[50];

  (*(v3 + 8))(v2, v4);
  v5 = v0[55];
  v6 = v0[53];
  v7 = v0[49];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E59B0F30@<X0>(uint64_t *a1@<X8>)
{
  sub_1E5A2A374();
  sub_1E5A2A314();
  sub_1E5A2A384();
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  sub_1E58B1C48();
  sub_1E58B1C9C();
  sub_1E58B1CF0();
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  sub_1E5A2A124();
  sub_1E5A2BC44();
  sub_1E5A2A244();
  swift_getWitnessTable();
  result = sub_1E5A2BBC4();
  *a1 = result;
  return result;
}

uint64_t sub_1E59B11C8@<X0>(uint64_t a1@<X8>)
{
  sub_1E5A2A374();
  sub_1E5A2A314();
  sub_1E5A2A384();
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  sub_1E58B1C48();
  sub_1E58B1C9C();
  sub_1E58B1CF0();
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  sub_1E5A2A124();
  sub_1E5A2A104();
  v1 = sub_1E5A2A244();
  return (*(*(v1 - 8) + 56))(a1, 0, 1, v1);
}

uint64_t sub_1E59B143C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = sub_1E5A2BC84();
  *(v5 + 48) = sub_1E5A2BC74();
  v10 = *(a2 + 80);
  v11 = *(a2 + 88);
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5 & 1;
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v5 + 56) = v13;
  *v13 = v5;
  v13[1] = sub_1E59B1578;

  return v15(v5 + 16);
}

uint64_t sub_1E59B1578()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v14 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_1E5A2BC54();
    v8 = v7;
    v9 = sub_1E59B1720;
  }

  else
  {
    v10 = *(v2 + 40);
    v11 = *(v2 + 48);
    v6 = sub_1E5A2BC54();
    v8 = v12;
    v9 = sub_1E59B16BC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_1E59B16BC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E59B1720()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1E59B1784(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E5A2BC84();
  v2[3] = sub_1E5A2BC74();
  v4 = *(a2 + 72);
  v8 = (*(a2 + 64) + **(a2 + 64));
  v5 = *(*(a2 + 64) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1E58E4890;

  return v8();
}

uint64_t sub_1E59B1890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a1;
  v13 = sub_1E58B1C48();
  v14 = sub_1E58B1C9C();
  v15 = sub_1E58B1CF0();
  v8[2] = a2;
  v8[3] = &type metadata for WorkoutPlanItemContext;
  v8[4] = a3;
  v8[5] = a5;
  v8[6] = a7;
  v8[7] = a8;
  v8[8] = v13;
  v8[9] = v14;
  v8[10] = v15;
  v8[11] = v24;
  v8[12] = v25;
  v8[13] = v26;
  v16 = type metadata accessor for ArchivedWorkoutPlansAction();
  v8[15] = v16;
  v17 = *(v16 - 8);
  v8[16] = v17;
  v18 = *(v17 + 64) + 15;
  v8[17] = swift_task_alloc();
  sub_1E5A2BC84();
  v8[18] = sub_1E5A2BC74();
  v20 = sub_1E5A2BC54();
  v8[19] = v20;
  v8[20] = v19;

  return MEMORY[0x1EEE6DFA0](sub_1E59B1A08, v20, v19);
}

uint64_t sub_1E59B1A08()
{
  v1 = v0[17];
  v2 = v0[15];
  swift_storeEnumTagMultiPayload();
  v3 = *(MEMORY[0x1E6999AF0] + 4);
  v4 = swift_task_alloc();
  v0[21] = v4;
  v5 = sub_1E5A2B8E4();
  *v4 = v0;
  v4[1] = sub_1E59B1AC8;
  v6 = v0[17];
  v7 = v0[14];

  return MEMORY[0x1EEE01A40](v6, v5);
}

uint64_t sub_1E59B1AC8()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v5 = *(*v0 + 120);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 160);
  v7 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E59B1C4C, v7, v6);
}

uint64_t sub_1E59B1C4C()
{
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E59B1CB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E58CECB4;

  return sub_1E59B1890(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E59B1DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[71] = v43;
  v8[70] = v42;
  v8[69] = v41;
  v8[68] = v40;
  v8[67] = v39;
  v8[66] = v38;
  v8[65] = a8;
  v8[63] = a6;
  v8[64] = a7;
  v8[61] = a4;
  v8[62] = a5;
  v8[59] = a2;
  v8[60] = a3;
  v8[58] = a1;
  v13 = sub_1E58B1C48();
  v8[72] = v13;
  v14 = sub_1E58B1C9C();
  v8[73] = v14;
  v34 = v14;
  v15 = sub_1E58B1CF0();
  v8[74] = v15;
  v33 = v15;
  v8[34] = a3;
  v8[35] = &type metadata for WorkoutPlanItemContext;
  v8[36] = a4;
  v8[37] = a6;
  v8[38] = a8;
  v8[39] = v38;
  v8[40] = v13;
  v8[41] = v14;
  v8[42] = v15;
  v8[43] = v39;
  v8[44] = v41;
  v8[45] = v43;
  v16 = type metadata accessor for ArchivedWorkoutPlansAction();
  v8[75] = v16;
  v17 = *(v16 - 8);
  v8[76] = v17;
  v18 = *(v17 + 64) + 15;
  v8[77] = swift_task_alloc();
  v19 = sub_1E5A2A374();
  v8[78] = v19;
  v20 = sub_1E5A2A314();
  v8[79] = v20;
  v21 = sub_1E5A2A384();
  v22 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v8[80] = v22;
  v23 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v8[81] = v23;
  v24 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  v8[2] = v19;
  v8[3] = a3;
  v8[4] = v20;
  v8[5] = &type metadata for WorkoutPlanItemContext;
  v8[6] = a4;
  v8[7] = a6;
  v8[8] = v21;
  v8[9] = a8;
  v8[10] = v22;
  v8[11] = v38;
  v8[12] = v23;
  v8[13] = v13;
  v8[14] = v34;
  v8[15] = v33;
  v8[16] = v39;
  v8[17] = v41;
  v8[18] = v24;
  v8[19] = v43;
  v8[82] = sub_1E5A2A124();
  v25 = sub_1E5A2BD84();
  v8[83] = v25;
  v26 = *(v25 - 8);
  v8[84] = v26;
  v27 = *(v26 + 64) + 15;
  v8[85] = swift_task_alloc();
  v8[86] = sub_1E5A2BC84();
  v8[87] = sub_1E5A2BC74();
  v28 = *(a2 + 24);
  v36 = (*(a2 + 16) + **(a2 + 16));
  v29 = *(*(a2 + 16) + 4);
  v30 = swift_task_alloc();
  v8[88] = v30;
  *v30 = v8;
  v30[1] = sub_1E59B2188;

  return v36(v8 + 51);
}

uint64_t sub_1E59B2188()
{
  v1 = *v0;
  v2 = *(*v0 + 704);
  v3 = *(*v0 + 696);
  v4 = *(*v0 + 688);
  v8 = *v0;

  v6 = sub_1E5A2BC54();
  *(v1 + 712) = v6;
  *(v1 + 720) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E59B22D0, v6, v5);
}

uint64_t sub_1E59B22D0()
{
  v1 = v0[54];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 51, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[49] = swift_getAssociatedTypeWitness();
  v0[50] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 46);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 51);
  v6 = v0[86];
  v7 = sub_1E5A2BC74();
  v0[91] = v7;
  v8 = v0[50];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 46), v0[49]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[92] = v10;
  *v10 = v0;
  v10[1] = sub_1E59B24A8;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 99, v7, v11);
}

uint64_t sub_1E59B24A8()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v8 = *v1;
  *(*v1 + 744) = v0;

  if (!v0)
  {
    v5 = v2[91];

    v6 = v2[90];
    v7 = v2[89];

    return MEMORY[0x1EEE6DFA0](sub_1E59B25C4, v7, v6);
  }

  return result;
}

uint64_t sub_1E59B25C4()
{
  if (*(v0 + 792) == 1)
  {
    v1 = *(v0 + 696);
    v2 = *(v0 + 680);
    v3 = *(v0 + 616);

    __swift_destroy_boxed_opaque_existential_1((v0 + 368));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 656);
    *(v0 + 752) = *(*(v0 + 472) + 96);
    swift_getWitnessTable();
    sub_1E5A2A154();
    swift_getWitnessTable();
    v8 = sub_1E5A2BC54();

    return MEMORY[0x1EEE6DFA0](sub_1E59B26FC, v8, v7);
  }
}

uint64_t sub_1E59B26FC()
{
  v1 = v0[94];
  v0[95] = sub_1E5A2A134();
  v2 = v0[90];
  v3 = v0[89];

  return MEMORY[0x1EEE6DFA0](sub_1E59B2768, v3, v2);
}

uint64_t sub_1E59B2768()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 656);
  *(v0 + 448) = *(v0 + 760);
  sub_1E5A2BC44();
  swift_getWitnessTable();
  sub_1E5A2BD44();

  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
    v4 = *(v0 + 616);
    v5 = *(v0 + 600);
    swift_storeEnumTagMultiPayload();
    v6 = *(MEMORY[0x1E6999AF0] + 4);
    v7 = swift_task_alloc();
    *(v0 + 784) = v7;
    v8 = sub_1E5A2B8E4();
    *v7 = v0;
    v7[1] = sub_1E59B2C70;
    v9 = *(v0 + 616);
    v10 = *(v0 + 464);

    return MEMORY[0x1EEE01A40](v9, v8);
  }

  else
  {
    v11 = *(v0 + 680);
    v12 = *(v0 + 656);
    v34 = *(v0 + 648);
    v35 = *(v0 + 744);
    v30 = *(v0 + 632);
    v13 = *(v0 + 624);
    v32 = *(v0 + 640);
    v33 = *(v0 + 592);
    v14 = *(v0 + 568);
    v15 = *(v0 + 528);
    v16 = *(v0 + 520);
    v17 = *(v0 + 480);
    v31 = *(v0 + 576);
    v26 = *(v0 + 488);
    v27 = *(v0 + 504);
    v28 = *(v0 + 536);
    v29 = *(v0 + 552);
    v18 = sub_1E5A2A114();
    (*(v3 + 8))(v11, v12);
    *(v0 + 456) = v18;
    v19 = swift_task_alloc();
    *(v19 + 16) = v17;
    *(v19 + 24) = v26;
    *(v19 + 40) = v27;
    *(v19 + 56) = v16;
    *(v19 + 64) = v15;
    *(v19 + 72) = v28;
    *(v19 + 88) = v29;
    *(v19 + 104) = v14;
    *(v0 + 160) = v13;
    *(v0 + 168) = v17;
    *(v0 + 176) = v30;
    *(v0 + 184) = &type metadata for WorkoutPlanItemContext;
    *(v0 + 192) = v26;
    *(v0 + 200) = v16;
    *(v0 + 208) = v32;
    *(v0 + 216) = v15;
    *(v0 + 224) = v34;
    *(v0 + 232) = v31;
    *(v0 + 248) = v33;
    *(v0 + 256) = v28;
    *(v0 + 264) = v14;
    sub_1E5A2A0E4();
    sub_1E5A2BC44();
    swift_getWitnessTable();
    v20 = sub_1E5A2BBC4();

    v21 = sub_1E591CAE0(v20);
    *(v0 + 768) = v21;

    v22 = *(MEMORY[0x1E699D7B0] + 4);
    v36 = (*MEMORY[0x1E699D7B0] + MEMORY[0x1E699D7B0]);
    v23 = swift_task_alloc();
    *(v0 + 776) = v23;
    *v23 = v0;
    v23[1] = sub_1E59B2B24;
    v24 = *(v0 + 752);

    return v36(v21);
  }
}

uint64_t sub_1E59B2B24()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 776);
  v5 = *v1;

  v6 = *(v2 + 768);
  if (v0)
  {
    MEMORY[0x1E69331F0](v0);

    v7 = *(v3 + 720);
    v8 = *(v3 + 712);
    v9 = sub_1E59B2ED0;
  }

  else
  {

    v7 = *(v3 + 720);
    v8 = *(v3 + 712);
    v9 = sub_1E59B6548;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E59B2C70()
{
  v1 = *v0;
  v2 = *(*v0 + 784);
  v3 = *(*v0 + 616);
  v4 = *(*v0 + 608);
  v5 = *(*v0 + 600);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 720);
  v7 = *(v1 + 712);

  return MEMORY[0x1EEE6DFA0](sub_1E59B2DF4, v7, v6);
}

uint64_t sub_1E59B2DF4()
{
  v1 = v0[86];
  v2 = sub_1E5A2BC74();
  v0[91] = v2;
  v3 = v0[50];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 46), v0[49]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[92] = v5;
  *v5 = v0;
  v5[1] = sub_1E59B24A8;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 99, v2, v6);
}

uint64_t sub_1E59B2ED0()
{
  v1 = v0[77];
  v2 = v0[75];
  swift_storeEnumTagMultiPayload();
  v3 = *(MEMORY[0x1E6999AF0] + 4);
  v4 = swift_task_alloc();
  v0[98] = v4;
  v5 = sub_1E5A2B8E4();
  *v4 = v0;
  v4[1] = sub_1E59B2C70;
  v6 = v0[77];
  v7 = v0[58];

  return MEMORY[0x1EEE01A40](v6, v5);
}

uint64_t sub_1E59B2F90(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v13 = *(v1 + 80);
  v14 = *(v1 + 64);
  v10 = *(v1 + 96);
  v9 = *(v1 + 104);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E58CECB4;

  return sub_1E59B1DC0(a1, v1 + 112, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1E59B3090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[71] = v43;
  v8[70] = v42;
  v8[69] = v41;
  v8[68] = v40;
  v8[67] = v39;
  v8[66] = v38;
  v8[65] = a8;
  v8[63] = a6;
  v8[64] = a7;
  v8[61] = a4;
  v8[62] = a5;
  v8[59] = a2;
  v8[60] = a3;
  v8[58] = a1;
  v13 = sub_1E58B1C48();
  v8[72] = v13;
  v14 = sub_1E58B1C9C();
  v8[73] = v14;
  v34 = v14;
  v15 = sub_1E58B1CF0();
  v8[74] = v15;
  v33 = v15;
  v8[34] = a3;
  v8[35] = &type metadata for WorkoutPlanItemContext;
  v8[36] = a4;
  v8[37] = a6;
  v8[38] = a8;
  v8[39] = v38;
  v8[40] = v13;
  v8[41] = v14;
  v8[42] = v15;
  v8[43] = v39;
  v8[44] = v41;
  v8[45] = v43;
  v16 = type metadata accessor for ArchivedWorkoutPlansAction();
  v8[75] = v16;
  v17 = *(v16 - 8);
  v8[76] = v17;
  v18 = *(v17 + 64) + 15;
  v8[77] = swift_task_alloc();
  v19 = sub_1E5A2A374();
  v8[78] = v19;
  v20 = sub_1E5A2A314();
  v8[79] = v20;
  v21 = sub_1E5A2A384();
  v22 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v8[80] = v22;
  v23 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v8[81] = v23;
  v24 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  v8[2] = v19;
  v8[3] = a3;
  v8[4] = v20;
  v8[5] = &type metadata for WorkoutPlanItemContext;
  v8[6] = a4;
  v8[7] = a6;
  v8[8] = v21;
  v8[9] = a8;
  v8[10] = v22;
  v8[11] = v38;
  v8[12] = v23;
  v8[13] = v13;
  v8[14] = v34;
  v8[15] = v33;
  v8[16] = v39;
  v8[17] = v41;
  v8[18] = v24;
  v8[19] = v43;
  v8[82] = sub_1E5A2A124();
  v25 = sub_1E5A2BD84();
  v8[83] = v25;
  v26 = *(v25 - 8);
  v8[84] = v26;
  v27 = *(v26 + 64) + 15;
  v8[85] = swift_task_alloc();
  v8[86] = sub_1E5A2BC84();
  v8[87] = sub_1E5A2BC74();
  v28 = *(a2 + 40);
  v36 = (*(a2 + 32) + **(a2 + 32));
  v29 = *(*(a2 + 32) + 4);
  v30 = swift_task_alloc();
  v8[88] = v30;
  *v30 = v8;
  v30[1] = sub_1E59B3458;

  return v36(v8 + 51);
}

uint64_t sub_1E59B3458()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 704);
  v5 = *v1;
  v3[89] = v0;

  v6 = v3[87];
  v7 = v3[86];
  v8 = sub_1E5A2BC54();
  if (v2)
  {
    v10 = sub_1E59B41C0;
  }

  else
  {
    v3[90] = v8;
    v3[91] = v9;
    v10 = sub_1E59B35C0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1E59B35C0()
{
  v1 = v0[54];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 51, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[49] = swift_getAssociatedTypeWitness();
  v0[50] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 46);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 51);
  v6 = v0[86];
  v7 = sub_1E5A2BC74();
  v0[92] = v7;
  v8 = v0[50];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 46), v0[49]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[93] = v10;
  *v10 = v0;
  v10[1] = sub_1E59B3798;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 100, v7, v11);
}

uint64_t sub_1E59B3798()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v8 = *v1;
  *(*v1 + 752) = v0;

  if (!v0)
  {
    v5 = v2[92];

    v6 = v2[91];
    v7 = v2[90];

    return MEMORY[0x1EEE6DFA0](sub_1E59B38B4, v7, v6);
  }

  return result;
}

uint64_t sub_1E59B38B4()
{
  if (*(v0 + 800) == 1)
  {
    v1 = *(v0 + 696);
    v2 = *(v0 + 680);
    v3 = *(v0 + 616);

    __swift_destroy_boxed_opaque_existential_1((v0 + 368));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 656);
    *(v0 + 760) = *(*(v0 + 472) + 96);
    swift_getWitnessTable();
    sub_1E5A2A154();
    swift_getWitnessTable();
    v8 = sub_1E5A2BC54();

    return MEMORY[0x1EEE6DFA0](sub_1E59B39EC, v8, v7);
  }
}

uint64_t sub_1E59B39EC()
{
  v1 = v0[95];
  v0[96] = sub_1E5A2A134();
  v2 = v0[91];
  v3 = v0[90];

  return MEMORY[0x1EEE6DFA0](sub_1E59B3A58, v3, v2);
}

uint64_t sub_1E59B3A58()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 656);
  *(v0 + 448) = *(v0 + 768);
  sub_1E5A2BC44();
  swift_getWitnessTable();
  sub_1E5A2BD44();

  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
    v4 = *(v0 + 616);
    v5 = *(v0 + 600);
    swift_storeEnumTagMultiPayload();
    v6 = *(MEMORY[0x1E6999AF0] + 4);
    v7 = swift_task_alloc();
    *(v0 + 792) = v7;
    v8 = sub_1E5A2B8E4();
    *v7 = v0;
    v7[1] = sub_1E59B3F60;
    v9 = *(v0 + 616);
    v10 = *(v0 + 464);

    return MEMORY[0x1EEE01A40](v9, v8);
  }

  else
  {
    v11 = *(v0 + 680);
    v12 = *(v0 + 656);
    v34 = *(v0 + 648);
    v35 = *(v0 + 752);
    v30 = *(v0 + 632);
    v13 = *(v0 + 624);
    v32 = *(v0 + 640);
    v33 = *(v0 + 592);
    v14 = *(v0 + 568);
    v15 = *(v0 + 528);
    v16 = *(v0 + 520);
    v17 = *(v0 + 480);
    v31 = *(v0 + 576);
    v26 = *(v0 + 488);
    v27 = *(v0 + 504);
    v28 = *(v0 + 536);
    v29 = *(v0 + 552);
    v18 = sub_1E5A2A114();
    (*(v3 + 8))(v11, v12);
    *(v0 + 456) = v18;
    v19 = swift_task_alloc();
    *(v19 + 16) = v17;
    *(v19 + 24) = v26;
    *(v19 + 40) = v27;
    *(v19 + 56) = v16;
    *(v19 + 64) = v15;
    *(v19 + 72) = v28;
    *(v19 + 88) = v29;
    *(v19 + 104) = v14;
    *(v0 + 160) = v13;
    *(v0 + 168) = v17;
    *(v0 + 176) = v30;
    *(v0 + 184) = &type metadata for WorkoutPlanItemContext;
    *(v0 + 192) = v26;
    *(v0 + 200) = v16;
    *(v0 + 208) = v32;
    *(v0 + 216) = v15;
    *(v0 + 224) = v34;
    *(v0 + 232) = v31;
    *(v0 + 248) = v33;
    *(v0 + 256) = v28;
    *(v0 + 264) = v14;
    sub_1E5A2A0E4();
    sub_1E5A2BC44();
    swift_getWitnessTable();
    v20 = sub_1E5A2BBC4();

    v21 = sub_1E591CAE0(v20);
    *(v0 + 776) = v21;

    v22 = *(MEMORY[0x1E699D7B0] + 4);
    v36 = (*MEMORY[0x1E699D7B0] + MEMORY[0x1E699D7B0]);
    v23 = swift_task_alloc();
    *(v0 + 784) = v23;
    *v23 = v0;
    v23[1] = sub_1E59B3E14;
    v24 = *(v0 + 760);

    return v36(v21);
  }
}

uint64_t sub_1E59B3E14()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 784);
  v5 = *v1;

  v6 = *(v2 + 776);
  if (v0)
  {
    MEMORY[0x1E69331F0](v0);

    v7 = *(v3 + 728);
    v8 = *(v3 + 720);
    v9 = sub_1E59B423C;
  }

  else
  {

    v7 = *(v3 + 728);
    v8 = *(v3 + 720);
    v9 = sub_1E59B654C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E59B3F60()
{
  v1 = *v0;
  v2 = *(*v0 + 792);
  v3 = *(*v0 + 616);
  v4 = *(*v0 + 608);
  v5 = *(*v0 + 600);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 728);
  v7 = *(v1 + 720);

  return MEMORY[0x1EEE6DFA0](sub_1E59B40E4, v7, v6);
}

uint64_t sub_1E59B40E4()
{
  v1 = v0[86];
  v2 = sub_1E5A2BC74();
  v0[92] = v2;
  v3 = v0[50];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 46), v0[49]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[93] = v5;
  *v5 = v0;
  v5[1] = sub_1E59B3798;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 100, v2, v6);
}

uint64_t sub_1E59B41C0()
{
  v1 = v0[87];
  v2 = v0[85];
  v3 = v0[77];

  v4 = v0[1];
  v5 = v0[89];

  return v4();
}

uint64_t sub_1E59B423C()
{
  v1 = v0[77];
  v2 = v0[75];
  swift_storeEnumTagMultiPayload();
  v3 = *(MEMORY[0x1E6999AF0] + 4);
  v4 = swift_task_alloc();
  v0[99] = v4;
  v5 = sub_1E5A2B8E4();
  *v4 = v0;
  v4[1] = sub_1E59B3F60;
  v6 = v0[77];
  v7 = v0[58];

  return MEMORY[0x1EEE01A40](v6, v5);
}

uint64_t sub_1E59B42FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v13 = *(v1 + 80);
  v14 = *(v1 + 64);
  v10 = *(v1 + 96);
  v9 = *(v1 + 104);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E58CECB4;

  return sub_1E59B3090(a1, v1 + 112, v3, v4, v5, v6, v7, v8);
}

double sub_1E59B43FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X7>, _OWORD *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = a5;
  v45 = a3;
  v47 = a2;
  v48 = a1;
  v49 = a6;
  v65 = a11;
  v50 = a7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFF850, &qword_1E5A3E988);
  v43 = *(v44 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v39 - v14;
  v15 = sub_1E5A2A374();
  v46 = v15;
  v16 = sub_1E5A2A314();
  v17 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v18 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v19 = sub_1E58B1C48();
  v20 = sub_1E58B1C9C();
  v21 = sub_1E58B1CF0();
  *&v52 = v15;
  v22 = v47;
  *(&v52 + 1) = v47;
  v53 = v16;
  v54 = &type metadata for WorkoutPlanItemContext;
  v55 = a3;
  v56 = a4;
  v23 = a4;
  v24 = v17;
  v57 = v17;
  v58 = v51;
  v59 = v18;
  v60 = v19;
  v61 = v20;
  v62 = v21;
  v63 = v50;
  v64 = v65;
  v41 = sub_1E5A2A1A4();
  v40 = *(v41 - 8);
  v25 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v27 = &v39 - v26;
  *&v52 = v46;
  *(&v52 + 1) = v22;
  v53 = v16;
  v54 = &type metadata for WorkoutPlanItemContext;
  v55 = v45;
  v56 = v23;
  v57 = v24;
  v58 = v51;
  v59 = v18;
  v60 = v19;
  v61 = v20;
  v62 = v21;
  v63 = v50;
  v64 = v65;
  v28 = sub_1E5A2A0E4();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v39 - v31;
  (*(v33 + 16))(&v39 - v31, v48, v28, v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v43;
    v27 = v42;
    v35 = v44;
    (*(v43 + 32))(v42, v32, v44);
    sub_1E5A2A1B4();
  }

  else
  {
    v34 = v40;
    v35 = v41;
    (*(v40 + 32))(v27, v32, v41);
    MEMORY[0x1E6930DB0](&v52, v35);
  }

  (*(v34 + 8))(v27, v35);
  result = *&v52;
  v37 = v53;
  v38 = v49;
  *v49 = v52;
  *(v38 + 16) = v37;
  return result;
}

uint64_t sub_1E59B47FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[71] = v43;
  v8[70] = v42;
  v8[69] = v41;
  v8[68] = v40;
  v8[67] = v39;
  v8[66] = v38;
  v8[65] = a8;
  v8[63] = a6;
  v8[64] = a7;
  v8[61] = a4;
  v8[62] = a5;
  v8[59] = a2;
  v8[60] = a3;
  v8[58] = a1;
  v13 = sub_1E58B1C48();
  v8[72] = v13;
  v14 = sub_1E58B1C9C();
  v8[73] = v14;
  v34 = v14;
  v15 = sub_1E58B1CF0();
  v8[74] = v15;
  v33 = v15;
  v8[34] = a3;
  v8[35] = &type metadata for WorkoutPlanItemContext;
  v8[36] = a4;
  v8[37] = a6;
  v8[38] = a8;
  v8[39] = v38;
  v8[40] = v13;
  v8[41] = v14;
  v8[42] = v15;
  v8[43] = v39;
  v8[44] = v41;
  v8[45] = v43;
  v16 = type metadata accessor for ArchivedWorkoutPlansAction();
  v8[75] = v16;
  v17 = *(v16 - 8);
  v8[76] = v17;
  v18 = *(v17 + 64) + 15;
  v8[77] = swift_task_alloc();
  v19 = sub_1E5A2A374();
  v8[78] = v19;
  v20 = sub_1E5A2A314();
  v8[79] = v20;
  v21 = sub_1E5A2A384();
  v22 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v8[80] = v22;
  v23 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v8[81] = v23;
  v24 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  v8[2] = v19;
  v8[3] = a3;
  v8[4] = v20;
  v8[5] = &type metadata for WorkoutPlanItemContext;
  v8[6] = a4;
  v8[7] = a6;
  v8[8] = v21;
  v8[9] = a8;
  v8[10] = v22;
  v8[11] = v38;
  v8[12] = v23;
  v8[13] = v13;
  v8[14] = v34;
  v8[15] = v33;
  v8[16] = v39;
  v8[17] = v41;
  v8[18] = v24;
  v8[19] = v43;
  v8[82] = sub_1E5A2A124();
  v25 = sub_1E5A2BD84();
  v8[83] = v25;
  v26 = *(v25 - 8);
  v8[84] = v26;
  v27 = *(v26 + 64) + 15;
  v8[85] = swift_task_alloc();
  v8[86] = sub_1E5A2BC84();
  v8[87] = sub_1E5A2BC74();
  v28 = *(a2 + 56);
  v36 = (*(a2 + 48) + **(a2 + 48));
  v29 = *(*(a2 + 48) + 4);
  v30 = swift_task_alloc();
  v8[88] = v30;
  *v30 = v8;
  v30[1] = sub_1E59B4BC4;

  return v36(v8 + 51);
}

uint64_t sub_1E59B4BC4()
{
  v1 = *v0;
  v2 = *(*v0 + 704);
  v3 = *(*v0 + 696);
  v4 = *(*v0 + 688);
  v8 = *v0;

  v6 = sub_1E5A2BC54();
  *(v1 + 712) = v6;
  *(v1 + 720) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E59B4D0C, v6, v5);
}

uint64_t sub_1E59B4D0C()
{
  v1 = v0[54];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 51, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[49] = swift_getAssociatedTypeWitness();
  v0[50] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 46);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 51);
  v6 = v0[86];
  v7 = sub_1E5A2BC74();
  v0[91] = v7;
  v8 = v0[50];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 46), v0[49]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[92] = v10;
  *v10 = v0;
  v10[1] = sub_1E59B4EE4;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 99, v7, v11);
}

uint64_t sub_1E59B4EE4()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v8 = *v1;
  *(*v1 + 744) = v0;

  if (!v0)
  {
    v5 = v2[91];

    v6 = v2[90];
    v7 = v2[89];

    return MEMORY[0x1EEE6DFA0](sub_1E59B5000, v7, v6);
  }

  return result;
}

uint64_t sub_1E59B5000()
{
  if (*(v0 + 792) == 1)
  {
    v1 = *(v0 + 696);
    v2 = *(v0 + 680);
    v3 = *(v0 + 616);

    __swift_destroy_boxed_opaque_existential_1((v0 + 368));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 656);
    *(v0 + 752) = *(*(v0 + 472) + 96);
    swift_getWitnessTable();
    sub_1E5A2A154();
    swift_getWitnessTable();
    v8 = sub_1E5A2BC54();

    return MEMORY[0x1EEE6DFA0](sub_1E59B5138, v8, v7);
  }
}

uint64_t sub_1E59B5138()
{
  v1 = v0[94];
  v0[95] = sub_1E5A2A134();
  v2 = v0[90];
  v3 = v0[89];

  return MEMORY[0x1EEE6DFA0](sub_1E59B51A4, v3, v2);
}

uint64_t sub_1E59B51A4()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 656);
  *(v0 + 448) = *(v0 + 760);
  sub_1E5A2BC44();
  swift_getWitnessTable();
  sub_1E5A2BD44();

  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
    v4 = *(v0 + 616);
    v5 = *(v0 + 600);
    swift_storeEnumTagMultiPayload();
    v6 = *(MEMORY[0x1E6999AF0] + 4);
    v7 = swift_task_alloc();
    *(v0 + 784) = v7;
    v8 = sub_1E5A2B8E4();
    *v7 = v0;
    v7[1] = sub_1E59B56AC;
    v9 = *(v0 + 616);
    v10 = *(v0 + 464);

    return MEMORY[0x1EEE01A40](v9, v8);
  }

  else
  {
    v11 = *(v0 + 680);
    v12 = *(v0 + 656);
    v34 = *(v0 + 648);
    v35 = *(v0 + 744);
    v30 = *(v0 + 632);
    v13 = *(v0 + 624);
    v32 = *(v0 + 640);
    v33 = *(v0 + 592);
    v14 = *(v0 + 568);
    v15 = *(v0 + 528);
    v16 = *(v0 + 520);
    v17 = *(v0 + 480);
    v31 = *(v0 + 576);
    v26 = *(v0 + 488);
    v27 = *(v0 + 504);
    v28 = *(v0 + 536);
    v29 = *(v0 + 552);
    v18 = sub_1E5A2A114();
    (*(v3 + 8))(v11, v12);
    *(v0 + 456) = v18;
    v19 = swift_task_alloc();
    *(v19 + 16) = v17;
    *(v19 + 24) = v26;
    *(v19 + 40) = v27;
    *(v19 + 56) = v16;
    *(v19 + 64) = v15;
    *(v19 + 72) = v28;
    *(v19 + 88) = v29;
    *(v19 + 104) = v14;
    *(v0 + 160) = v13;
    *(v0 + 168) = v17;
    *(v0 + 176) = v30;
    *(v0 + 184) = &type metadata for WorkoutPlanItemContext;
    *(v0 + 192) = v26;
    *(v0 + 200) = v16;
    *(v0 + 208) = v32;
    *(v0 + 216) = v15;
    *(v0 + 224) = v34;
    *(v0 + 232) = v31;
    *(v0 + 248) = v33;
    *(v0 + 256) = v28;
    *(v0 + 264) = v14;
    sub_1E5A2A0E4();
    sub_1E5A2BC44();
    swift_getWitnessTable();
    v20 = sub_1E5A2BBC4();

    v21 = sub_1E591CAE0(v20);
    *(v0 + 768) = v21;

    v22 = *(MEMORY[0x1E699D7B0] + 4);
    v36 = (*MEMORY[0x1E699D7B0] + MEMORY[0x1E699D7B0]);
    v23 = swift_task_alloc();
    *(v0 + 776) = v23;
    *v23 = v0;
    v23[1] = sub_1E59B5560;
    v24 = *(v0 + 752);

    return v36(v21);
  }
}

uint64_t sub_1E59B5560()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 776);
  v5 = *v1;

  v6 = *(v2 + 768);
  if (v0)
  {
    MEMORY[0x1E69331F0](v0);

    v7 = *(v3 + 720);
    v8 = *(v3 + 712);
    v9 = sub_1E59B590C;
  }

  else
  {

    v7 = *(v3 + 720);
    v8 = *(v3 + 712);
    v9 = sub_1E59B6550;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E59B56AC()
{
  v1 = *v0;
  v2 = *(*v0 + 784);
  v3 = *(*v0 + 616);
  v4 = *(*v0 + 608);
  v5 = *(*v0 + 600);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 720);
  v7 = *(v1 + 712);

  return MEMORY[0x1EEE6DFA0](sub_1E59B5830, v7, v6);
}

uint64_t sub_1E59B5830()
{
  v1 = v0[86];
  v2 = sub_1E5A2BC74();
  v0[91] = v2;
  v3 = v0[50];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 46), v0[49]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[92] = v5;
  *v5 = v0;
  v5[1] = sub_1E59B4EE4;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 99, v2, v6);
}

uint64_t sub_1E59B590C()
{
  v1 = v0[77];
  v2 = v0[75];
  swift_storeEnumTagMultiPayload();
  v3 = *(MEMORY[0x1E6999AF0] + 4);
  v4 = swift_task_alloc();
  v0[98] = v4;
  v5 = sub_1E5A2B8E4();
  *v4 = v0;
  v4[1] = sub_1E59B56AC;
  v6 = v0[77];
  v7 = v0[58];

  return MEMORY[0x1EEE01A40](v6, v5);
}

uint64_t sub_1E59B59CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v13 = *(v1 + 80);
  v14 = *(v1 + 64);
  v10 = *(v1 + 96);
  v9 = *(v1 + 104);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E58CECB4;

  return sub_1E59B47FC(a1, v1 + 112, v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[19];

  v4 = v0[21];

  v5 = v0[23];

  v6 = v0[25];

  v7 = v0[26];

  return swift_deallocObject();
}

uint64_t sub_1E59B5B34(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v13 = *(v1 + 80);
  v14 = *(v1 + 64);
  v10 = *(v1 + 96);
  v9 = *(v1 + 104);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E58CECB4;

  return sub_1E59B1784(a1, v1 + 112);
}

uint64_t sub_1E59B5C34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v15 = *(v1 + 56);
  v16 = *(v1 + 40);
  v13 = *(v1 + 88);
  v14 = *(v1 + 72);
  v7 = *(v1 + 104);
  v8 = *(v1 + 224);
  v9 = *(v1 + 232);
  v10 = *(v1 + 240);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E58CD5C8;

  return sub_1E59B143C(a1, v1 + 112, v8, v9, v10);
}

uint64_t sub_1E59B5D58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v15 = *(v1 + 72);
  v16 = *(v1 + 56);
  v14 = *(v1 + 88);
  v9 = *(v1 + 104);
  v10 = *(sub_1E5A2A024() - 8);
  v11 = (*(v10 + 80) + 217) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E58CECB4;

  return sub_1E59B0334(a1, v1 + 112, v1 + v11, v4, v5, v6, v7, v8);
}

uint64_t sub_1E59B5EA4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v17 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v15 = *(v1 + 64);
  v16 = *(v1 + 48);
  v14 = *(v1 + 80);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  v9 = *(sub_1E5A2A1F4() - 8);
  v10 = (*(v9 + 80) + 232) & ~*(v9 + 80);
  v11 = *(v1 + 224);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E58CECB4;

  return sub_1E59AE844(a1, (v1 + 112), v11, v1 + v10, v17, v4, v5, v6);
}

uint64_t sub_1E59B60FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E59B6164(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1E59B61AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E59B6234(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 9))
  {
    return (*a1 + 121);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E59B6288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 8) = 0;
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1E59B6328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC3A8, &qword_1E5A308B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E59B63BC()
{
  result = qword_1ECFFF848;
  if (!qword_1ECFFF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF848);
  }

  return result;
}

uint64_t sub_1E59B643C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v11 = *(v1 + 104);
  v9 = *(v1 + 72);
  v10 = *(v1 + 88);
  v8 = *(v1 + 56);
  return sub_1E59B0F30(a1);
}

uint64_t sub_1E59B64A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  v13 = *(v1 + 104);
  v11 = *(v1 + 72);
  v12 = *(v1 + 88);
  v10 = *(v1 + 56);
  return sub_1E59B11C8(a1);
}

double sub_1E59B6504@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  return sub_1E59B43FC(a1, v2[2], v2[3], v2[7], v2[8], a2, v2[9], v2[10], v2[11], v2[12], v2[13]);
}

__n128 ArchivedWorkoutPlansEnvironment.init(fetchWorkoutPlanTemplateItemDescriptors:makeActiveWorkoutPlanUpdatedStream:makeCatalogUpdatedStream:makeWorkoutPlansUpdatedStream:navigateToArchivedWorkoutPlans:navigateToWorkoutPlanTemplate:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t sub_1E59B65AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1E59B6604(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E59B664C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1E59B66BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7(v6);
  return sub_1E5A2B714();
}

uint64_t PersonalizedWorkoutPlansView.init(store:buildYourOwnActionButtonViewBuilder:buildPersonalizedActionButtonViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  swift_storeEnumTagMultiPayload();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = type metadata accessor for PersonalizedWorkoutPlansView();
  v20 = a9 + v19[13];
  *v20 = sub_1E58D2CB8;
  *(v20 + 1) = v18;
  v20[16] = 0;
  v21 = v19[14];

  sub_1E59B6A08(a3, a4, a7, a8, a10, a11);
  v22 = a9 + v19[15];
  sub_1E59B6B7C(a5, a6, a7, a8, a10, a11);
}

uint64_t sub_1E59B68E0()
{
  sub_1E5A2AB24();
  sub_1E59C97C0(&qword_1EE2CFAF0, MEMORY[0x1E697FCB0]);
  return sub_1E5A2C264();
}

uint64_t sub_1E59B6960(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE258, &unk_1E5A39330);
  sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330);

  return sub_1E5A2A4F4();
}

uint64_t sub_1E59B6A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  swift_getFunctionTypeMetadata2();
  return sub_1E5A2A034();
}

uint64_t (*sub_1E59B6AC4(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 16);
  swift_getFunctionTypeMetadata2();
  sub_1E5A2A054();
  sub_1E5A2A044();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = v6;
  return sub_1E59C9808;
}

uint64_t sub_1E59B6B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  swift_getFunctionTypeMetadata();
  return sub_1E5A2A034();
}

uint64_t (*sub_1E59B6C5C(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v2 = *(a1 + 60);
  v3 = *(a1 + 24);
  *&v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  *(&v6 + 1) = MEMORY[0x1E69E6530];
  swift_getFunctionTypeMetadata();
  sub_1E5A2A054();
  sub_1E5A2A044();
  v4 = swift_allocObject();
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = v3;
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = v6;
  return sub_1E59C95FC;
}

uint64_t sub_1E59B6D30(uint64_t a1)
{
  sub_1E59B6960(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v6 == 1)
  {
    sub_1E59B6960(a1);
    swift_getKeyPath();
    sub_1E5A2B944();

    v2 = 13;
    if (v5 >= 2u)
    {
      v2 = 3;
    }

    if (v5 - 2 >= 3)
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1E59B6960(a1);
    swift_getKeyPath();
    sub_1E5A2B944();

    if (v4 - 2 >= 3)
    {
      if (v4 >= 2u)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E59B6E58(uint64_t a1)
{
  sub_1E59B6960(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v4 != 1)
  {
    return 1;
  }

  sub_1E59B6960(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v3 >= 2u)
  {
    return 1;
  }

  else
  {
    return 12;
  }
}

double sub_1E59B6F18(uint64_t a1)
{
  sub_1E59B6960(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  result = 20.0;
  if (v2 < 2u)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_1E59B6F80(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for PersonalizedWorkoutPlanCandidates();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E59B6960(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1E58BAD14(v13, &qword_1ECFFE260, &qword_1E5A39370);
    }

    else if (EnumCaseMultiPayload != 3)
    {
      return 1;
    }

    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE278, &unk_1E5A3CAA0) + 48);
    sub_1E594D3DC(v13, v17);
    v21 = sub_1E5A29E34();
    (*(*(v21 - 8) + 8))(&v13[v20], v21);
  }

  else
  {
    sub_1E594D3DC(v13, v17);
  }

  v22 = *&v17[*(v14 + 20)];
  v23 = *(v22 + 16);
  if (!v23)
  {
    v19 = 0;
LABEL_16:
    sub_1E599AFF0(v17, type metadata accessor for PersonalizedWorkoutPlanCandidates);
    return v19;
  }

  v24 = 0;
  v25 = v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v26 = *(v3 + 72);
  while (1)
  {
    sub_1E599AF88(v25, v9, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    sub_1E599AF88(v9, v6, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v27 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
    v28 = (*(*(v27 - 8) + 48))(v6, 1, v27) == 1;
    sub_1E599AFF0(v6, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    result = sub_1E599AFF0(v9, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v30 = __OFADD__(v24, v28);
    v24 += v28;
    if (v30)
    {
      break;
    }

    v25 += v26;
    if (!--v23)
    {
      v19 = v24 > 0;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E59B72F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_1E59B6960(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E58D5C24(v8, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v5;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC108, &unk_1E5A37F50) + 48);
      v11 = *v5;
      v12 = sub_1E5A29E34();
      (*(*(v12 - 8) + 8))(&v5[v10], v12);
      return v11;
    }

    sub_1E58BAD14(v5, &qword_1ECFFC100, &qword_1E5A2FE90);
  }

  return 0;
}

uint64_t sub_1E59B7484@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v24 = a1[3];
  v25 = a1[5];
  v3 = type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v5 = sub_1E5A29E74();
  v22 = MEMORY[0x1E69E3B40];
  v37 = v4;
  v38 = v5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v41 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v6 = sub_1E5A2B494();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  *&v14 = a1[2];
  *(&v14 + 1) = v24;
  *&v15 = a1[4];
  *(&v15 + 1) = v25;
  v28 = v14;
  v29 = v15;
  v30 = v26;
  v16 = swift_getWitnessTable();
  v37 = v3;
  v38 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = swift_getWitnessTable();
  v34 = v16;
  v35 = v17;
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x1E6981E60];
  v18 = swift_getWitnessTable();
  sub_1E5A2B484();
  v31 = v18;
  v19 = swift_getWitnessTable();
  sub_1E58B41DC(v10, v6, v19);
  v20 = *(v7 + 8);
  v20(v10, v6);
  sub_1E58B41DC(v13, v6, v19);
  return (v20)(v13, v6);
}

uint64_t sub_1E59B7890@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *, uint64_t)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v164 = a1;
  v163 = a6;
  v141 = a2;
  v175 = a2;
  v176 = a3;
  v140 = a4;
  v177 = a4;
  v178 = a5;
  v8 = type metadata accessor for PersonalizedWorkoutPlansView();
  OpaqueTypeConformance2 = *(v8 - 8);
  v138 = *(OpaqueTypeConformance2 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v137 = &v131 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v11 = sub_1E5A29E74();
  v155 = a3;
  v156 = a5;
  v12 = type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  WitnessTable = swift_getWitnessTable();
  v175 = v12;
  v176 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v16 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  v175 = v10;
  v176 = v11;
  v144 = v11;
  v142 = OpaqueTypeMetadata2;
  v177 = OpaqueTypeMetadata2;
  v178 = v15;
  v179 = v16;
  v17 = sub_1E5A2B6F4();
  v146 = *(v17 - 8);
  v18 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v143 = (&v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v145 = &v131 - v21;
  v175 = v12;
  v176 = WitnessTable;
  v165 = WitnessTable;
  v22 = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v23 = sub_1E5A2B864();
  v162 = v17;
  v24 = sub_1E5A2AA84();
  v151 = *(v24 - 8);
  v25 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v150 = &v131 - v26;
  v160 = v23;
  v136 = *(v23 - 8);
  v27 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v149 = &v131 - v29;
  v148 = sub_1E5A2A734();
  v152 = *(v148 - 8);
  v30 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v135 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v147 = &v131 - v34;
  v166 = swift_checkMetadataState();
  v132 = *(v166 - 8);
  v35 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v37 = (&v131 - v36);
  v133 = *(v22 - 8);
  v38 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v134 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v131 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v154 = &v131 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v153 = &v131 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v131 - v50;
  v52 = type metadata accessor for PersonalizedWorkoutPlanCandidates();
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v55 = &v131 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v24;
  v159 = sub_1E5A2AA84();
  v158 = *(v159 - 8);
  v56 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v131 - v57;
  v58 = v8;
  v59 = v8;
  v60 = v164;
  sub_1E59B6960(v59);
  swift_getKeyPath();
  sub_1E5A2B944();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1E58BAD14(v51, &qword_1ECFFE260, &qword_1E5A39370);
      v62 = v165;
      v63 = v166;
    }

    else
    {
      v62 = v165;
      v63 = v166;
      if (EnumCaseMultiPayload != 3)
      {
        v64 = sub_1E59B6960(v58);
        v144 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
        v65 = *(v144 - 8);
        v143 = *(v65 + 56);
        v145 = (v65 + 56);
        v66 = v147;
        v143(v147, 1, 1, v144);
        v67 = sub_1E59B6C5C(v58);
        PersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)(v64, v66, 0, v67, v68, v155, v156, v37);
        v69 = v135;
        sub_1E5A2A724();
        v70 = v154;
        sub_1E5A2B394();
        v142 = *(v152 + 8);
        v152 += 8;
        v142(v69, v148);
        v140 = v43;
        v141 = *(v132 + 8);
        v141(v37, v166);
        v175 = v166;
        v176 = v62;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        sub_1E58B41DC(v70, v22, OpaqueTypeConformance2);
        v71 = v133;
        v72 = *(v133 + 8);
        v146 = v133 + 8;
        v138 = v72;
        v72(v70, v22);
        v73 = v58;
        v74 = sub_1E59B6960(v58);
        v75 = v147;
        v63 = v166;
        v143(v147, 1, 1, v144);
        v76 = sub_1E59B6C5C(v73);
        PersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)(v74, v75, 1, v76, v77, v155, v156, v37);
        sub_1E5A2A724();
        v78 = v140;
        sub_1E5A2B394();
        v142(v69, v148);
        v141(v37, v63);
        v79 = v154;
        v80 = OpaqueTypeConformance2;
        sub_1E58B41DC(v78, v22, OpaqueTypeConformance2);
        v81 = v78;
        v82 = v138;
        v138(v78, v22);
        v83 = *(v71 + 16);
        v83(v78, v153, v22);
        v175 = v78;
        v84 = v134;
        v83(v134, v79, v22);
        v176 = v84;
        v174[0] = v22;
        v174[1] = v22;
        v172 = v80;
        v173 = v80;
        v62 = v165;
        sub_1E597DC00(&v175, 2uLL, v174);
        v82(v84, v22);
        v82(v81, v22);
        v85 = v82;
        v86 = v160;
        v87 = swift_getWitnessTable();
        v170 = v63;
        v171 = v62;
        v169 = swift_getOpaqueTypeConformance2();
        v88 = swift_getWitnessTable();
        v89 = v150;
        v90 = v149;
        sub_1E595EBC0(v149, v86);
        v167 = v87;
        v168 = v88;
        v91 = v161;
        swift_getWitnessTable();
        v92 = v157;
        sub_1E595EBC0(v89, v91);
        (*(v151 + 8))(v89, v91);
        (*(v136 + 8))(v90, v86);
        v85(v154, v22);
        v85(v153, v22);
        v93 = v92;
LABEL_9:
        v101 = v159;
        v102 = v158;
        goto LABEL_12;
      }
    }

    v97 = swift_getWitnessTable();
    v175 = v63;
    v176 = v62;
    v174[12] = swift_getOpaqueTypeConformance2();
    v98 = swift_getWitnessTable();
    v174[10] = v97;
    v174[11] = v98;
    v99 = v161;
    v100 = swift_getWitnessTable();
    v93 = v157;
    sub_1E595ECB8(v100, v99, MEMORY[0x1E6981E70]);
    goto LABEL_9;
  }

  v94 = v137;
  v95 = OpaqueTypeConformance2;
  v96 = v140;
  if (EnumCaseMultiPayload)
  {
    v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE278, &unk_1E5A3CAA0) + 48);
    sub_1E594D3DC(v51, v55);
    v104 = sub_1E5A29E34();
    (*(*(v104 - 8) + 8))(&v51[v103], v104);
  }

  else
  {
    sub_1E594D3DC(v51, v55);
  }

  v105 = v166;
  sub_1E590B0C8();
  sub_1E599AFF0(v55, type metadata accessor for PersonalizedWorkoutPlanCandidates);
  v106 = v94;
  v107 = v60;
  v108 = v94;
  v109 = v58;
  (*(v95 + 16))(v106, v107, v58);
  v110 = v95;
  v111 = (*(v95 + 80) + 48) & ~*(v95 + 80);
  v112 = swift_allocObject();
  v113 = v155;
  *(v112 + 2) = v141;
  *(v112 + 3) = v113;
  v114 = v156;
  *(v112 + 4) = v96;
  *(v112 + 5) = v114;
  (*(v110 + 32))(&v112[v111], v108, v109);
  type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v175 = v105;
  v176 = v165;
  v115 = swift_getOpaqueTypeConformance2();
  sub_1E59C97C0(&qword_1ECFFF270, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  sub_1E59C97C0(&qword_1ECFFF278, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  v116 = v143;
  sub_1E5A2B6D4();
  v174[4] = v115;
  v117 = v162;
  v118 = swift_getWitnessTable();
  v119 = v145;
  sub_1E58B41DC(v116, v117, v118);
  v120 = *(v146 + 8);
  v120(v116, v117);
  sub_1E58B41DC(v119, v117, v118);
  v121 = v160;
  v122 = swift_getWitnessTable();
  v123 = v150;
  sub_1E595ECB8(v116, v121, v117);
  v174[2] = v122;
  v174[3] = v118;
  v124 = v161;
  swift_getWitnessTable();
  v93 = v157;
  sub_1E595EBC0(v123, v124);
  (*(v151 + 8))(v123, v124);
  v125 = v116;
  v63 = v166;
  v120(v125, v117);
  v126 = v119;
  v62 = v165;
  v120(v126, v117);
  v101 = v159;
  v102 = v158;
LABEL_12:
  v127 = swift_getWitnessTable();
  v175 = v63;
  v176 = v62;
  v174[9] = swift_getOpaqueTypeConformance2();
  v128 = swift_getWitnessTable();
  v174[7] = v127;
  v174[8] = v128;
  v174[5] = swift_getWitnessTable();
  v174[6] = MEMORY[0x1E6981E60];
  v129 = swift_getWitnessTable();
  sub_1E58B41DC(v93, v101, v129);
  return (*(v102 + 8))(v93, v101);
}

uint64_t sub_1E59B8BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v85 = a1;
  v100 = a7;
  v12 = sub_1E5A2BA14();
  v98 = *(v12 - 8);
  v99 = v12;
  v13 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2B994();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v96 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E5A29E74();
  v83 = *(v18 - 8);
  v84 = v18;
  v19 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v87 = &v81 - v23;
  v24 = sub_1E5A2B9C4();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v101 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v95 = &v81 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v81 - v32;
  v34 = type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  v94 = *(v34 - 8);
  v35 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = (&v81 - v36);
  WitnessTable = swift_getWitnessTable();
  v86 = v34;
  v102 = v34;
  v103 = WitnessTable;
  v90 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = *(OpaqueTypeMetadata2 - 8);
  v39 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v88 = &v81 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v89 = &v81 - v42;
  v102 = a3;
  v103 = a4;
  v43 = a4;
  v104 = a5;
  v105 = a6;
  v44 = a6;
  v45 = type metadata accessor for PersonalizedWorkoutPlansView();
  v46 = sub_1E59B6960(v45);
  v47 = a2;
  sub_1E599AF88(a2, v33, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  v48 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  (*(*(v48 - 1) + 56))(v33, 0, 1, v48);
  v49 = sub_1E59B6C5C(v45);
  v92 = v37;
  v50 = v37;
  v51 = v85;
  PersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)(v46, v33, v85, v49, v52, v43, v44, v50);
  *(v47 + v48[11]);
  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A3C8E0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v54 = (v47 + v48[5]);
  v55 = MEMORY[0x1E69E6158];
  v56 = v54[1];
  *(inited + 48) = *v54;
  *(inited + 56) = v56;
  *(inited + 72) = v55;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x70756B636F6CLL;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v55;
  *(inited + 128) = 0x6973736572706D69;
  v57 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v51;
  *(inited + 168) = v57;
  *(inited + 176) = 0x64496F636572;
  *(inited + 184) = 0xE600000000000000;
  v58 = v87;
  sub_1E58BABA0(v47 + v48[9], v87, &qword_1ECFFD900, &qword_1E5A39BB0);
  v59 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
  {

    sub_1E58BAD14(v58, &qword_1ECFFD900, &qword_1E5A39BB0);
    v60 = (inited + 192);
    *(inited + 216) = v55;
LABEL_5:
    *v60 = 0;
    v67 = 0xE000000000000000;
    goto LABEL_6;
  }

  v62 = v82;
  v61 = v83;
  v63 = v58 + *(v59 + 20);
  v64 = v84;
  (*(v83 + 16))(v82, v63, v84);

  sub_1E599AFF0(v58, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  v65 = sub_1E5A29E44();
  v67 = v66;
  (*(v61 + 8))(v62, v64);
  v60 = (inited + 192);
  *(inited + 216) = v55;
  if (!v67)
  {
    goto LABEL_5;
  }

  *v60 = v65;
LABEL_6:
  *(inited + 200) = v67;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v68 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v68);
  v69 = v95;
  sub_1E5A2B9D4();
  v70 = sub_1E5A2B9E4();
  (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
  v71 = v97;
  sub_1E5A2B9F4();
  v72 = v88;
  v73 = v86;
  v74 = v90;
  v75 = v92;
  sub_1E5A2B014();
  (*(v98 + 8))(v71, v99);
  sub_1E58BAD14(v69, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v94 + 8))(v75, v73);
  v102 = v73;
  v103 = v74;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = v89;
  v78 = OpaqueTypeMetadata2;
  sub_1E58B41DC(v72, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v79 = *(v93 + 8);
  v79(v72, v78);
  sub_1E58B41DC(v77, v78, OpaqueTypeConformance2);
  return (v79)(v77, v78);
}

uint64_t sub_1E59B94F0@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v38 = a3;
  v34 = a2 + 3;
  v35 = a2 + 5;
  v32 = a2[2];
  v33 = a2[4];
  v3 = type metadata accessor for CustomPlanView();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v31 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v28 = sub_1E5A2AA84();
  v6 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  v55 = v5;
  v56 = MEMORY[0x1E69E6158];
  v57 = v28;
  v58 = v6;
  v59 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v29 = sub_1E5A2AA84();
  v30 = sub_1E5A2AA84();
  sub_1E5A2AA84();
  v7 = sub_1E5A2B494();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  *&v15 = v32;
  *(&v15 + 1) = *v34;
  *&v16 = v33;
  *(&v16 + 1) = *v35;
  v40 = v16;
  v39 = v15;
  v41 = v37;
  v42 = v36;
  v55 = v3;
  v56 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v3;
  v56 = WitnessTable;
  v18 = swift_getOpaqueTypeConformance2();
  v53 = v18;
  v54 = MEMORY[0x1E6981E60];
  v52 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v50 = v18;
  v51 = v19;
  v20 = swift_getWitnessTable();
  v48 = OpaqueTypeConformance2;
  v49 = v20;
  v21 = swift_getWitnessTable();
  v46 = MEMORY[0x1E6981E60];
  v47 = v18;
  v22 = swift_getWitnessTable();
  v44 = v21;
  v45 = v22;
  v23 = swift_getWitnessTable();
  sub_1E5A2B484();
  v43 = v23;
  v24 = swift_getWitnessTable();
  sub_1E58B41DC(v11, v7, v24);
  v25 = *(v8 + 8);
  v25(v11, v7);
  sub_1E58B41DC(v14, v7, v24);
  return (v25)(v14, v7);
}

uint64_t sub_1E59B9988@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v164 = a2;
  v189 = a1;
  v186 = a7;
  v11 = type metadata accessor for CustomPlanView();
  WitnessTable = swift_getWitnessTable();
  v251 = v11;
  *&v252 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = sub_1E5A2AA84();
  v170 = *(v14 - 8);
  v15 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v177 = &v152 - v16;
  v171 = a3;
  v172 = a5;
  v251 = a3;
  *&v252 = a4;
  v157 = a4;
  *(&v252 + 1) = a5;
  v253 = a6;
  v165 = a6;
  v17 = type metadata accessor for PersonalizedWorkoutPlansView();
  v163 = *(v17 - 8);
  v156 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v162 = &v152 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v20 = sub_1E5A2AA84();
  v21 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  v251 = v19;
  *&v252 = MEMORY[0x1E69E6158];
  v192 = v20;
  *(&v252 + 1) = v20;
  v253 = v21;
  v254 = MEMORY[0x1E69E6168];
  v22 = sub_1E5A2B6F4();
  v160 = *(v22 - 8);
  v23 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v159 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v158 = &v152 - v26;
  v161 = *(OpaqueTypeMetadata2 - 8);
  v27 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v173 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v174 = &v152 - v31;
  v181 = OpaqueTypeMetadata2;
  v188 = v32;
  v33 = sub_1E5A2AA84();
  v167 = *(v33 - 8);
  v34 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v166 = &v152 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v178 = &v152 - v37;
  v193 = v11;
  v251 = v11;
  *&v252 = WitnessTable;
  v191 = WitnessTable;
  v38 = swift_getOpaqueTypeMetadata2();
  v187 = v33;
  v39 = sub_1E5A2AA84();
  v176 = *(v39 - 8);
  v40 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v175 = &v152 - v41;
  v42 = sub_1E5A2A734();
  v153 = *(v42 - 8);
  v154 = v42;
  v43 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v152 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v38;
  v155 = *(v38 - 8);
  v46 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v169 = &v152 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v168 = &v152 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v152 - v53;
  v55 = type metadata accessor for PersonalizedWorkoutPlanCandidates();
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v152 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v14;
  v59 = sub_1E5A2AA84();
  v183 = *(v59 - 8);
  v184 = v59;
  v60 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v182 = &v152 - v61;
  v179 = v17;
  sub_1E59B6960(v17);
  swift_getKeyPath();
  sub_1E5A2B944();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v63 = MEMORY[0x1E6981E60];
  v190 = v39;
  if (EnumCaseMultiPayload <= 1)
  {
    v74 = v162;
    v75 = v163;
    v76 = v165;
    v77 = v164;
    if (EnumCaseMultiPayload)
    {
      v107 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE278, &unk_1E5A3CAA0) + 48);
      sub_1E594D3DC(v54, v58);
      v108 = sub_1E5A29E34();
      (*(*(v108 - 8) + 8))(&v54[v107], v108);
    }

    else
    {
      sub_1E594D3DC(v54, v58);
    }

    if (*(*&v58[*(v55 + 20)] + 16))
    {
      v109 = v77;
      v110 = *&v58[*(v55 + 20)];

      sub_1E599AFF0(v58, type metadata accessor for PersonalizedWorkoutPlanCandidates);
      v111 = v179;
      (*(v75 + 16))(v74, v189, v179);
      v112 = (*(v75 + 80) + 48) & ~*(v75 + 80);
      v113 = v112 + v156;
      v114 = swift_allocObject();
      v115 = v157;
      *(v114 + 2) = v171;
      *(v114 + 3) = v115;
      *(v114 + 4) = v172;
      *(v114 + 5) = v76;
      (*(v75 + 32))(&v114[v112], v74, v111);
      v114[v113] = v109;
      v189 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
      v116 = v191;
      v251 = v193;
      *&v252 = v191;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v221 = MEMORY[0x1E6981E60];
      v117 = swift_getWitnessTable();
      sub_1E59C97C0(&qword_1ECFFF280, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
      sub_1E59C97C0(&qword_1ECFFF288, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
      v118 = v159;
      sub_1E5A2B6D4();
      v219 = v117;
      v119 = v188;
      v120 = swift_getWitnessTable();
      v121 = v158;
      sub_1E58B41DC(v118, v119, v120);
      v122 = *(v160 + 8);
      v122(v118, v119);
      sub_1E58B41DC(v121, v119, v120);
      v123 = v178;
      sub_1E595ECB8(v118, v181, v119);
      v122(v118, v119);
      v122(v121, v119);
    }

    else
    {
      sub_1E599AFF0(v58, type metadata accessor for PersonalizedWorkoutPlanCandidates);
      v124 = v173;
      sub_1E59BAE80(0, v179, v173);
      v116 = v191;
      v251 = v193;
      *&v252 = v191;
      v125 = swift_getOpaqueTypeConformance2();
      v126 = v174;
      v127 = v181;
      sub_1E58B41DC(v124, v181, v125);
      v128 = *(v161 + 8);
      v128(v124, v127);
      sub_1E58B41DC(v126, v127, v125);
      v208 = v125;
      v209 = MEMORY[0x1E6981E60];
      v207 = swift_getWitnessTable();
      swift_getWitnessTable();
      v123 = v178;
      sub_1E595EBC0(v124, v127);
      v128(v124, v127);
      v128(v126, v127);
    }

    v129 = v193;
    v251 = v193;
    *&v252 = v116;
    v130 = swift_getOpaqueTypeConformance2();
    v217 = v130;
    v218 = MEMORY[0x1E6981E60];
    v216 = swift_getWitnessTable();
    v131 = swift_getWitnessTable();
    v214 = v130;
    v215 = v131;
    v132 = v116;
    v133 = v187;
    v134 = swift_getWitnessTable();
    v135 = v166;
    sub_1E58B41DC(v123, v133, v134);
    v251 = v129;
    *&v252 = v132;
    v136 = swift_getOpaqueTypeConformance2();
    v137 = v175;
    sub_1E595ECB8(v135, v180, v133);
    v212 = v136;
    v213 = v134;
    v138 = v190;
    swift_getWitnessTable();
    v210 = MEMORY[0x1E6981E60];
    v211 = v130;
    swift_getWitnessTable();
    v73 = v182;
    sub_1E595EBC0(v137, v138);
    (*(v176 + 8))(v137, v138);
    v139 = *(v167 + 8);
    v139(v135, v133);
    v139(v178, v133);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1E58BAD14(v54, &qword_1ECFFE260, &qword_1E5A39370);
    v78 = v173;
    sub_1E59BAE80(0, v179, v173);
    v79 = v193;
    v80 = v191;
    v251 = v193;
    *&v252 = v191;
    v81 = swift_getOpaqueTypeConformance2();
    v82 = v174;
    v83 = v181;
    sub_1E58B41DC(v78, v181, v81);
    v189 = *(v161 + 8);
    v189(v78, v83);
    sub_1E58B41DC(v82, v83, v81);
    sub_1E595ECB8(v78, MEMORY[0x1E6981E70], v83);
    v251 = v79;
    *&v252 = v80;
    v84 = swift_getOpaqueTypeConformance2();
    v249 = v81;
    v250 = v63;
    v248 = swift_getWitnessTable();
    v85 = swift_getWitnessTable();
    v246 = v81;
    v247 = v85;
    v86 = swift_getWitnessTable();
    v244 = v84;
    v245 = v86;
    swift_getWitnessTable();
    v242 = v63;
    v243 = v81;
    v87 = v185;
    swift_getWitnessTable();
    v73 = v182;
    v88 = v177;
    sub_1E595ECB8(v177, v39, v87);
    (*(v170 + 8))(v88, v87);
    v89 = v189;
    v189(v173, v83);
    v89(v174, v83);
  }

  else
  {
    v64 = v193;
    if (EnumCaseMultiPayload == 3)
    {
      v65 = v191;
      v251 = v193;
      *&v252 = v191;
      v66 = swift_getOpaqueTypeConformance2();
      v67 = v177;
      sub_1E595EBC0(v66, MEMORY[0x1E6981E70]);
      v251 = v64;
      *&v252 = v65;
      v68 = swift_getOpaqueTypeConformance2();
      v229 = v66;
      v230 = v63;
      v228 = swift_getWitnessTable();
      v69 = swift_getWitnessTable();
      v226 = v66;
      v227 = v69;
      v70 = swift_getWitnessTable();
      v224 = v68;
      v225 = v70;
      v71 = v190;
      swift_getWitnessTable();
      v222 = v63;
      v223 = v66;
      v72 = v185;
      swift_getWitnessTable();
      v73 = v182;
      sub_1E595ECB8(v67, v71, v72);
      (*(v170 + 8))(v67, v72);
    }

    else
    {
      v90 = v179;
      v91 = sub_1E59B6960(v179);
      v92 = sub_1E59B6AC4(v90);
      CustomPlanView.init(store:index:actionButtonViewBuilder:)(v91, 0, v92, v93, &v251);
      v203 = v251;
      v204 = v252;
      v205 = v253;
      v206 = v254;
      sub_1E5A2A724();
      v94 = swift_checkMetadataState();
      v95 = v169;
      v96 = v191;
      sub_1E5A2B394();
      (*(v153 + 8))(v45, v154);

      v251 = v94;
      *&v252 = v96;
      v97 = swift_getOpaqueTypeConformance2();
      v98 = v168;
      v99 = v180;
      sub_1E58B41DC(v95, v180, v97);
      v189 = *(v155 + 8);
      v189(v95, v99);
      sub_1E58B41DC(v98, v99, v97);
      v251 = v94;
      *&v252 = v96;
      v100 = swift_getOpaqueTypeConformance2();
      v201 = v100;
      v202 = MEMORY[0x1E6981E60];
      v200 = swift_getWitnessTable();
      v101 = swift_getWitnessTable();
      v198 = v100;
      v199 = v101;
      v102 = swift_getWitnessTable();
      v103 = v175;
      sub_1E595EBC0(v95, v99);
      v196 = v97;
      v197 = v102;
      v104 = v190;
      swift_getWitnessTable();
      v194 = MEMORY[0x1E6981E60];
      v195 = v100;
      swift_getWitnessTable();
      v73 = v182;
      sub_1E595EBC0(v103, v104);
      (*(v176 + 8))(v103, v104);
      v105 = v180;
      v106 = v189;
      v189(v169, v180);
      v106(v168, v105);
    }
  }

  v140 = v193;
  v141 = v191;
  v251 = v193;
  *&v252 = v191;
  v142 = swift_getOpaqueTypeConformance2();
  v251 = v140;
  *&v252 = v141;
  v143 = swift_getOpaqueTypeConformance2();
  v240 = v143;
  v144 = MEMORY[0x1E6981E60];
  v241 = MEMORY[0x1E6981E60];
  v239 = swift_getWitnessTable();
  v145 = swift_getWitnessTable();
  v237 = v143;
  v238 = v145;
  v146 = swift_getWitnessTable();
  v235 = v142;
  v236 = v146;
  v147 = swift_getWitnessTable();
  v233 = v144;
  v234 = v143;
  v148 = swift_getWitnessTable();
  v231 = v147;
  v232 = v148;
  v149 = v184;
  v150 = swift_getWitnessTable();
  sub_1E58B41DC(v73, v149, v150);
  return (*(v183 + 8))(v73, v149);
}

uint64_t sub_1E59BAE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = sub_1E5A2BA14();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5A2B994();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A29EB4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A2BB14();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = sub_1E5A2B9C4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v50 = &v50 - v20;
  v21 = *(a2 + 16);
  v22 = *(a2 + 32);
  v23 = type metadata accessor for CustomPlanView();
  WitnessTable = swift_getWitnessTable();
  v53 = v23;
  v68 = v23;
  *&v69 = WitnessTable;
  v56 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  v25 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v54 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v55 = &v50 - v28;
  v29 = sub_1E59B6960(a2);
  v30 = sub_1E59B6AC4(a2);
  CustomPlanView.init(store:index:actionButtonViewBuilder:)(v29, a1, v30, v31, &v68);
  v64 = v68;
  v65 = v69;
  v66 = v70;
  v67 = v71;
  v58 = a1;
  sub_1E5A2B9A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A303B0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v33 = qword_1EE2D33E0;
  sub_1E59B6960(a2);
  swift_getKeyPath();
  sub_1E5A2B944();

  v34 = sub_1E5A2BB64();
  v35 = MEMORY[0x1E69E6158];
  *(inited + 48) = v34;
  *(inited + 56) = v36;
  *(inited + 72) = v35;
  *(inited + 80) = 0x6973736572706D69;
  v37 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = v58;
  *(inited + 120) = v37;
  strcpy((inited + 128), "impressionType");
  *(inited + 168) = v35;
  *(inited + 143) = -18;
  *(inited + 144) = 0x70756B636F6CLL;
  *(inited + 152) = 0xE600000000000000;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v38);
  v39 = v50;
  sub_1E5A2B9D4();
  v40 = sub_1E5A2B9E4();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  v41 = v60;
  sub_1E5A2B9F4();
  v42 = swift_checkMetadataState();
  v43 = v54;
  v44 = v56;
  sub_1E5A2B014();
  (*(v61 + 8))(v41, v62);
  sub_1E58BAD14(v39, &qword_1ECFFB550, &qword_1E5A304B0);

  v68 = v42;
  *&v69 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v55;
  v47 = OpaqueTypeMetadata2;
  sub_1E58B41DC(v43, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v48 = *(v57 + 8);
  v48(v43, v47);
  sub_1E58B41DC(v46, v47, OpaqueTypeConformance2);
  return (v48)(v46, v47);
}

uint64_t sub_1E59BB590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a8;
  v45 = a3;
  v41 = a5;
  v42 = a6;
  v39 = a4;
  v47 = a2;
  v40 = a1;
  v43 = a7;
  v10 = type metadata accessor for CustomPlanView();
  WitnessTable = swift_getWitnessTable();
  v49 = v10;
  v50 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v15 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38[-v20];
  v22 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v38[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_1E5A2AA84();
  v48 = *(v26 - 8);
  v27 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v38[-v28];
  sub_1E599AF88(v47, v25, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  v30 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  if ((*(*(v30 - 8) + 48))(v25, 1, v30) == 1)
  {
    if (v39 == 1)
    {
      v31 = v40;
    }

    else
    {
      v31 = 0;
    }

    v49 = v41;
    v50 = v42;
    v51 = v43;
    v52 = v44;
    v32 = type metadata accessor for PersonalizedWorkoutPlansView();
    sub_1E59BAE80(v31, v32, v18);
    v49 = v10;
    v50 = WitnessTable;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E58B41DC(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v47 = WitnessTable;
    v45 = a9;
    v34 = *(v46 + 8);
    v34(v18, OpaqueTypeMetadata2);
    sub_1E58B41DC(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    sub_1E595EBC0(v15, OpaqueTypeMetadata2);
    v34(v15, OpaqueTypeMetadata2);
    v34(v21, OpaqueTypeMetadata2);
    WitnessTable = v47;
  }

  else
  {
    v49 = v10;
    v50 = WitnessTable;
    v35 = swift_getOpaqueTypeConformance2();
    sub_1E595ECB8(v35, OpaqueTypeMetadata2, MEMORY[0x1E6981E70]);
    sub_1E599AFF0(v25, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  }

  v49 = v10;
  v50 = WitnessTable;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = MEMORY[0x1E6981E60];
  v36 = swift_getWitnessTable();
  sub_1E58B41DC(v29, v26, v36);
  return (*(v48 + 8))(v29, v26);
}

uint64_t PersonalizedWorkoutPlansView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v98 = *(a1 - 8);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v97 = v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  v106 = a1;
  *&v94 = *(a1 + 24);
  *&v95 = *(a1 + 40);
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  WitnessTable = swift_getWitnessTable();
  v152 = v4;
  v153 = WitnessTable;
  v103 = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v7 = sub_1E5A29E74();
  v152 = v4;
  v153 = WitnessTable;
  v107 = MEMORY[0x1E69E3B40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = MEMORY[0x1E69E6338];
  v9 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v10 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  v152 = v6;
  v153 = v7;
  v154 = OpaqueTypeMetadata2;
  v155 = v9;
  v156 = v10;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v11 = sub_1E5A2B494();
  v104 = MEMORY[0x1E6981F48];
  v12 = swift_getWitnessTable();
  v152 = v4;
  v153 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = MEMORY[0x1E69819D0];
  v13 = swift_getWitnessTable();
  v149 = v12;
  v150 = v13;
  v14 = MEMORY[0x1E697F968];
  v147 = swift_getWitnessTable();
  v148 = MEMORY[0x1E6981E60];
  v101 = v14;
  v146 = swift_getWitnessTable();
  v102 = MEMORY[0x1E6981600];
  v15 = swift_getWitnessTable();
  v152 = v11;
  v153 = v15;
  v86 = MEMORY[0x1E697D318];
  v91 = swift_getOpaqueTypeMetadata2();
  v152 = v11;
  v153 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2B734();
  v16 = sub_1E59926B8();
  v90 = MEMORY[0x1E697DA90];
  v17 = swift_getWitnessTable();
  v89 = MEMORY[0x1E697D7B8];
  v18 = swift_getWitnessTable();
  v144 = v17;
  v145 = v18;
  v143 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v140 = v16;
  v141 = v19;
  v142 = MEMORY[0x1E6981E60];
  v87 = MEMORY[0x1E697D6F0];
  swift_getWitnessTable();
  v20 = sub_1E5A2B604();
  v105 = MEMORY[0x1E6981870];
  v21 = swift_getWitnessTable();
  v152 = v20;
  v153 = v21;
  swift_getOpaqueTypeMetadata2();
  v85 = sub_1E5A2BD84();
  v83[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8D8, &unk_1E5A3EA80);
  v22 = *(v106 + 32);
  v92 = *(v106 + 16);
  v93 = v22;
  v23 = type metadata accessor for CustomPlanView();
  v24 = swift_getWitnessTable();
  v152 = v23;
  v153 = v24;
  swift_getOpaqueTypeMetadata2();
  v152 = v23;
  v153 = v24;
  swift_getOpaqueTypeMetadata2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v26 = sub_1E5A2AA84();
  v27 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  v152 = v25;
  v153 = MEMORY[0x1E69E6158];
  v154 = v26;
  v155 = v27;
  v156 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v83[0] = sub_1E5A2AA84();
  v84 = sub_1E5A2AA84();
  v28 = sub_1E5A2B494();
  v152 = v23;
  v153 = v24;
  v29 = swift_getOpaqueTypeConformance2();
  v152 = v23;
  v153 = v24;
  v30 = swift_getOpaqueTypeConformance2();
  v138 = v30;
  v31 = MEMORY[0x1E6981E60];
  v139 = MEMORY[0x1E6981E60];
  v137 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v135 = v30;
  v136 = v32;
  v33 = swift_getWitnessTable();
  v133 = v29;
  v134 = v33;
  v34 = swift_getWitnessTable();
  v131 = v31;
  v132 = v30;
  v35 = swift_getWitnessTable();
  v129 = v34;
  v130 = v35;
  v128 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v152 = v28;
  v153 = v36;
  swift_getOpaqueTypeMetadata2();
  v152 = v28;
  v153 = v36;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2B734();
  v37 = sub_1E59C8D30();
  v38 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v126 = v38;
  v127 = v39;
  v125 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v122 = v37;
  v123 = v40;
  v124 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  v41 = sub_1E5A2B604();
  v42 = swift_getWitnessTable();
  v152 = v41;
  v153 = v42;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v107 = sub_1E5A2B864();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8E8, &qword_1E5A3EA98);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v43 = sub_1E5A2A474();
  v44 = swift_getWitnessTable();
  v152 = v43;
  v153 = v44;
  swift_getOpaqueTypeMetadata2();
  v152 = v43;
  v153 = v44;
  swift_getOpaqueTypeConformance2();
  v45 = sub_1E5A2A4B4();
  v46 = swift_getWitnessTable();
  v152 = v45;
  v153 = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v152 = v45;
  v153 = v46;
  v48 = swift_getOpaqueTypeConformance2();
  v152 = v47;
  v153 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v50 = sub_1E5A2AD04();
  v152 = v47;
  v153 = v48;
  v51 = swift_getOpaqueTypeConformance2();
  v152 = v49;
  v153 = v50;
  v52 = MEMORY[0x1E697CC08];
  v154 = v51;
  v155 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  v53 = sub_1E59C8DE8();
  v152 = v49;
  v153 = v50;
  v154 = v51;
  v155 = v52;
  v54 = swift_getOpaqueTypeConformance2();
  v119 = v53;
  v120 = v54;
  v121 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2BD84();
  v88 = sub_1E5A2AA84();
  sub_1E5A2AA84();
  v55 = sub_1E5A2B494();
  v91 = *(v55 - 8);
  v56 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v58 = v83 - v57;
  v59 = sub_1E5A2A6C4();
  v103 = *(v59 - 8);
  v60 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v89 = v83 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v90 = v83 - v63;
  *&v64 = v92;
  *&v65 = v93;
  *(&v64 + 1) = v94;
  *(&v65 + 1) = v95;
  v94 = v64;
  v95 = v65;
  v108 = v64;
  v109 = v65;
  v66 = v96;
  v110 = v96;
  v67 = swift_getWitnessTable();
  v118 = swift_getWitnessTable();
  v68 = swift_getWitnessTable();
  v116 = v67;
  v117 = v68;
  v114 = swift_getWitnessTable();
  v115 = MEMORY[0x1E6981E60];
  v69 = swift_getWitnessTable();
  sub_1E5A2B484();
  v70 = v97;
  v71 = v98;
  v72 = v66;
  v73 = v106;
  (*(v98 + 16))(v97, v72, v106);
  v74 = (*(v71 + 80) + 48) & ~*(v71 + 80);
  v75 = swift_allocObject();
  v76 = v95;
  *(v75 + 16) = v94;
  *(v75 + 32) = v76;
  (*(v71 + 32))(v75 + v74, v70, v73);
  v113 = v69;
  v77 = swift_getWitnessTable();
  v78 = v89;
  sub_1E5A2B364();

  (*(v91 + 8))(v58, v55);
  v111 = v77;
  v112 = MEMORY[0x1E69805D0];
  v79 = swift_getWitnessTable();
  v80 = v90;
  sub_1E58B41DC(v78, v59, v79);
  v81 = *(v103 + 8);
  v81(v78, v59);
  sub_1E58B41DC(v80, v59, v79);
  return (v81)(v80, v59);
}

uint64_t sub_1E59BC8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v290 = a5;
  v298 = a2;
  v299 = a4;
  v292 = a1;
  v293 = a3;
  v288 = a6;
  v294 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8E8, &qword_1E5A3EA98);
  v6 = type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  WitnessTable = swift_getWitnessTable();
  v344 = v6;
  v345 = WitnessTable;
  v297 = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v9 = sub_1E5A29E74();
  v344 = v6;
  v345 = WitnessTable;
  v302 = MEMORY[0x1E69E3B40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v296 = MEMORY[0x1E69E6338];
  v11 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v12 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  v344 = v8;
  v345 = v9;
  v346 = OpaqueTypeMetadata2;
  v347 = v11;
  v348 = v12;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v13 = sub_1E5A2B494();
  v291 = MEMORY[0x1E6981F48];
  v14 = swift_getWitnessTable();
  v344 = v6;
  v345 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v286 = MEMORY[0x1E69819D0];
  v15 = swift_getWitnessTable();
  v341 = v14;
  v342 = v15;
  v300 = MEMORY[0x1E697F968];
  v339 = swift_getWitnessTable();
  v340 = MEMORY[0x1E6981E60];
  v338 = swift_getWitnessTable();
  v301 = MEMORY[0x1E6981600];
  v289 = v13;
  v287 = swift_getWitnessTable();
  v344 = v13;
  v345 = v287;
  v295 = MEMORY[0x1E697D318];
  v284 = swift_getOpaqueTypeMetadata2();
  v16 = type metadata accessor for CustomPlanView();
  v17 = swift_getWitnessTable();
  v344 = v16;
  v345 = v17;
  swift_getOpaqueTypeMetadata2();
  v344 = v16;
  v345 = v17;
  swift_getOpaqueTypeMetadata2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v19 = sub_1E5A2AA84();
  v20 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  v344 = v18;
  v345 = MEMORY[0x1E69E6158];
  v346 = v19;
  v347 = v20;
  v348 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v283 = sub_1E5A2AA84();
  v285 = sub_1E5A2AA84();
  v296 = sub_1E5A2B494();
  v344 = v16;
  v345 = v17;
  v21 = swift_getOpaqueTypeConformance2();
  v344 = v16;
  v345 = v17;
  v22 = swift_getOpaqueTypeConformance2();
  v336 = v22;
  v23 = MEMORY[0x1E6981E60];
  v337 = MEMORY[0x1E6981E60];
  v335 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v333 = v22;
  v334 = v24;
  v25 = swift_getWitnessTable();
  v331 = v21;
  v332 = v25;
  v26 = swift_getWitnessTable();
  v329 = v23;
  v330 = v22;
  v27 = swift_getWitnessTable();
  v327 = v26;
  v328 = v27;
  v326 = swift_getWitnessTable();
  v28 = v296;
  v286 = swift_getWitnessTable();
  v344 = v28;
  v345 = v286;
  v285 = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v29 = sub_1E5A2A474();
  v30 = swift_getWitnessTable();
  v344 = v29;
  v345 = v30;
  swift_getOpaqueTypeMetadata2();
  v344 = v29;
  v345 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = sub_1E5A2A4B4();
  v32 = swift_getWitnessTable();
  v344 = v31;
  v345 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v344 = v31;
  v345 = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v344 = v33;
  v345 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v36 = sub_1E5A2AD04();
  v344 = v33;
  v345 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v344 = v35;
  v345 = v36;
  v346 = v37;
  v38 = MEMORY[0x1E697CC08];
  v347 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  v39 = sub_1E5A2B734();
  v40 = sub_1E59C8DE8();
  v344 = v35;
  v345 = v36;
  v346 = v37;
  v347 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v323 = v40;
  v324 = v41;
  v325 = MEMORY[0x1E6981E60];
  v283 = MEMORY[0x1E697D6F0];
  v42 = swift_getWitnessTable();
  v248 = v39;
  v245 = v42;
  v43 = sub_1E5A2B604();
  v252 = *(v43 - 8);
  v44 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v247 = &v236 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v246 = &v236 - v47;
  v291 = v48;
  v297 = sub_1E5A2BD84();
  v256 = *(v297 - 8);
  v49 = v256[8];
  MEMORY[0x1EEE9AC00](v297);
  v253 = &v236 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v278 = &v236 - v52;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  v344 = v289;
  v345 = v287;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  v53 = sub_1E5A2B734();
  v54 = sub_1E59926B8();
  v284 = MEMORY[0x1E697DA90];
  v55 = swift_getWitnessTable();
  v56 = swift_getWitnessTable();
  v321 = v55;
  v322 = v56;
  v320 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v317 = v54;
  v318 = v57;
  v319 = MEMORY[0x1E6981E60];
  v243 = swift_getWitnessTable();
  v244 = v53;
  v58 = sub_1E5A2B604();
  v287 = v58;
  v59 = swift_getWitnessTable();
  v344 = v58;
  v282 = v59;
  v345 = v59;
  v289 = swift_getOpaqueTypeMetadata2();
  v294 = sub_1E5A2BD84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8D8, &unk_1E5A3EA80);
  v344 = v296;
  v345 = v286;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  v60 = sub_1E5A2B734();
  v61 = sub_1E59C8D30();
  v62 = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v315 = v62;
  v316 = v63;
  v314 = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  v311 = v61;
  v312 = v64;
  v313 = MEMORY[0x1E6981E60];
  v65 = swift_getWitnessTable();
  v255 = v60;
  v261 = v65;
  v66 = sub_1E5A2B604();
  v67 = v292;
  v68 = swift_getWitnessTable();
  v344 = v66;
  v267 = v68;
  v345 = v68;
  v69 = swift_getOpaqueTypeMetadata2();
  v70 = v294;
  swift_getTupleTypeMetadata2();
  v71 = sub_1E5A2B864();
  v72 = sub_1E5A2AA84();
  v285 = *(v72 - 8);
  v73 = *(v285 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v284 = &v236 - v74;
  v300 = v71;
  v269 = *(v71 - 8);
  v75 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v268 = &v236 - v77;
  v254 = sub_1E5A2A684();
  v260 = *(v254 - 8);
  v78 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v254);
  v259 = &v236 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v258 = &v236 - v81;
  v82 = v290;
  v83 = swift_checkMetadataState();
  v263 = *(v83 - 8);
  v264 = v83;
  v84 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v281 = &v236 - v85;
  v270 = v69;
  v265 = *(v69 - 8);
  v86 = *(v265 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v266 = &v236 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v262 = &v236 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v283 = &v236 - v92;
  v93 = sub_1E5A2BA14();
  v274 = *(v93 - 8);
  v275 = v93;
  v94 = *(v274 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v273 = &v236 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1E5A2B994();
  v97 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96 - 8);
  v272 = &v236 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  v99 = *(*(v237 - 8) + 64);
  MEMORY[0x1EEE9AC00](v237);
  v238 = &v236 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v236 - v102;
  v104 = sub_1E5A29EB4();
  v105 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104 - 8);
  v271 = &v236 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E5A2BB14();
  v108 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107 - 8);
  v110 = &v236 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v111);
  v112 = sub_1E5A2B9C4();
  v113 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112 - 8);
  v279 = &v236 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v115);
  v250 = &v236 - v116;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  v118 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117 - 8);
  v257 = &v236 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v120);
  v249 = &v236 - v121;
  v277 = swift_checkMetadataState();
  v241 = *(v277 - 8);
  v122 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v277);
  v251 = &v236 - v123;
  v124 = *(v289 - 8);
  v125 = v124[8];
  MEMORY[0x1EEE9AC00](v126);
  v242 = &v236 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v128);
  v239 = &v236 - v129;
  MEMORY[0x1EEE9AC00](v130);
  v240 = &v236 - v131;
  v280 = *(v70 - 8);
  v132 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v276 = &v236 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v135);
  v286 = &v236 - v136;
  v301 = v72;
  v137 = sub_1E5A2AA84();
  v295 = *(v137 - 8);
  v296 = v137;
  v138 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v287 = &v236 - v139;
  v344 = v298;
  v345 = v293;
  v346 = v299;
  v347 = v82;
  v302 = type metadata accessor for PersonalizedWorkoutPlansView();
  sub_1E59B6960(v302);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (!v310)
  {
    v141 = swift_getWitnessTable();
    v309[35] = swift_getWitnessTable();
    v142 = swift_getWitnessTable();
    v309[33] = v141;
    v309[34] = v142;
    v143 = v301;
    v144 = swift_getWitnessTable();
    v145 = v287;
    sub_1E595ECB8(v144, v143, MEMORY[0x1E6981E70]);
    goto LABEL_24;
  }

  if (v310 == 1)
  {
    if (sub_1E59B72F8(v302))
    {
      v140 = v253;
      (*(v252 + 56))(v253, 1, 1, v291);
      swift_getWitnessTable();
    }

    else
    {
      v161 = sub_1E5A2AA34();
      MEMORY[0x1EEE9AC00](v161);
      v162 = v293;
      *(&v236 - 6) = v298;
      *(&v236 - 5) = v162;
      *(&v236 - 4) = v299;
      *(&v236 - 3) = v82;
      *(&v236 - 2) = v67;
      v163 = v247;
      sub_1E5A2B5F4();
      v164 = v291;
      v165 = swift_getWitnessTable();
      v166 = v246;
      sub_1E58B41DC(v163, v164, v165);
      v167 = v252;
      v168 = *(v252 + 8);
      v168(v163, v164);
      sub_1E58B41DC(v166, v164, v165);
      v168(v166, v164);
      v140 = v253;
      (*(v167 + 32))(v253, v163, v164);
      (*(v167 + 56))(v140, 0, 1, v164);
    }

    v169 = v297;
    v170 = v278;
    sub_1E598D20C(v140, v278);
    v171 = v256[1];
    v171(v140, v169);
    v309[27] = swift_getWitnessTable();
    v172 = swift_getWitnessTable();
    sub_1E58B41DC(v170, v169, v172);
    v173 = v300;
    v174 = v140;
    v175 = swift_getWitnessTable();
    v176 = v284;
    sub_1E595ECB8(v174, v173, v169);
    v309[25] = v175;
    v309[26] = v172;
    v177 = v301;
    swift_getWitnessTable();
    v178 = v287;
    sub_1E595EBC0(v176, v177);
    (*(v285 + 8))(v176, v177);
    v171(v174, v169);
    v171(v278, v169);
    v145 = v178;
    goto LABEL_24;
  }

  v256 = v124;
  v146 = sub_1E59B6F80(v302);
  v278 = v110;
  if (v146)
  {
    v147 = sub_1E5A2AA34();
    MEMORY[0x1EEE9AC00](v147);
    v148 = v293;
    *(&v236 - 6) = v298;
    *(&v236 - 5) = v148;
    *(&v236 - 4) = v299;
    *(&v236 - 3) = v82;
    *(&v236 - 2) = v67;
    swift_checkMetadataState();
    sub_1E5A2B5F4();
    sub_1E5A2B9B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E5A303B0;
    *(inited + 32) = 1701667182;
    v253 = (inited + 32);
    *(inited + 40) = 0xE400000000000000;
    sub_1E5A2BA84();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v150 = qword_1EE2D33E0;
    v151 = v302;
    sub_1E59B6960(v302);
    swift_getKeyPath();
    sub_1E5A2B944();

    *(inited + 48) = sub_1E5A2BB64();
    *(inited + 56) = v152;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 80) = 0x6973736572706D69;
    *(inited + 88) = 0xEF7865646E496E6FLL;
    sub_1E59B6960(v151);
    swift_getKeyPath();
    sub_1E5A2B944();

    v153 = v238;
    sub_1E58D5C24(v103, v238);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v181 = 0;
      v180 = v294;
      v155 = v282;
      v156 = v289;
      v157 = v249;
    }

    else
    {
      v155 = v282;
      v156 = v289;
      v157 = v249;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          sub_1E58BAD14(v153, &qword_1ECFFC100, &qword_1E5A2FE90);
          v181 = 0;
          v180 = v294;
          goto LABEL_20;
        }

        v158 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC108, &unk_1E5A37F50) + 48);
        v159 = *v153;
        v160 = sub_1E5A29E34();
        (*(*(v160 - 8) + 8))(&v153[v158], v160);
      }

      else
      {
        v159 = *v153;
      }

      v181 = v159;
      v180 = v294;
    }

LABEL_20:
    *(inited + 96) = v181;
    *(inited + 120) = MEMORY[0x1E69E6530];
    strcpy((inited + 128), "impressionType");
    *(inited + 168) = MEMORY[0x1E69E6158];
    *(inited + 143) = -18;
    *(inited + 144) = 0x666C656873;
    *(inited + 152) = 0xE500000000000000;
    sub_1E590DF48(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
    swift_arrayDestroy();
    sub_1E5A2B984();
    v182 = MEMORY[0x1E69E7CC0];
    sub_1E590DF48(MEMORY[0x1E69E7CC0]);
    sub_1E590DF48(v182);
    sub_1E5A2B9D4();
    v183 = sub_1E5A2B9E4();
    (*(*(v183 - 8) + 56))(v157, 0, 1, v183);
    v184 = v273;
    sub_1E5A2BA04();
    v185 = v239;
    v186 = v277;
    v187 = v251;
    sub_1E5A2B014();
    (*(v274 + 8))(v184, v275);
    sub_1E58BAD14(v157, &qword_1ECFFB550, &qword_1E5A304B0);
    (*(v241 + 8))(v187, v186);
    v344 = v186;
    v345 = v155;
    v188 = swift_getOpaqueTypeConformance2();
    v189 = v240;
    sub_1E58B41DC(v185, v156, v188);
    v190 = v256;
    v191 = v256[1];
    v191(v185, v156);
    v192 = v242;
    sub_1E58B41DC(v189, v156, v188);
    v191(v189, v156);
    v179 = v276;
    (v190[4])(v276, v192, v156);
    (v190[7])(v179, 0, 1, v156);
    goto LABEL_21;
  }

  v179 = v276;
  (v256[7])(v276, 1, 1, v289);
  v344 = v277;
  v345 = v282;
  swift_getOpaqueTypeConformance2();
  v180 = v294;
LABEL_21:
  v193 = v254;
  sub_1E598D20C(v179, v286);
  v194 = *(v280 + 8);
  v289 = v280 + 8;
  v256 = v194;
  (v194)(v179, v180);
  v195 = sub_1E5A2AA34();
  MEMORY[0x1EEE9AC00](v195);
  v197 = v292;
  v196 = v293;
  *(&v236 - 6) = v298;
  *(&v236 - 5) = v196;
  v198 = v290;
  *(&v236 - 4) = v299;
  *(&v236 - 3) = v198;
  *(&v236 - 2) = v197;
  swift_checkMetadataState();
  sub_1E5A2B5F4();
  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  v199 = swift_initStackObject();
  *(v199 + 16) = xmmword_1E5A303B0;
  *(v199 + 32) = 1701667182;
  *(v199 + 40) = 0xE400000000000000;
  v200 = v258;
  sub_1E58CD1AC(v258);
  v202 = v259;
  v201 = v260;
  (*(v260 + 104))(v259, *MEMORY[0x1E697E6C0], v193);
  sub_1E5A2A674();
  v203 = *(v201 + 8);
  v203(v202, v193);
  v203(v200, v193);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v204 = qword_1EE2D33E0;
  sub_1E59B6960(v302);
  swift_getKeyPath();
  sub_1E5A2B944();

  *(v199 + 48) = sub_1E5A2BB64();
  *(v199 + 56) = v205;
  v206 = MEMORY[0x1E69E6158];
  *(v199 + 72) = MEMORY[0x1E69E6158];
  *(v199 + 80) = 0x6973736572706D69;
  *(v199 + 88) = 0xEF7865646E496E6FLL;
  *(v199 + 96) = 0;
  *(v199 + 120) = MEMORY[0x1E69E6530];
  strcpy((v199 + 128), "impressionType");
  *(v199 + 168) = v206;
  *(v199 + 143) = -18;
  *(v199 + 144) = 0x666C656873;
  *(v199 + 152) = 0xE500000000000000;
  sub_1E590DF48(v199);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v207 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v207);
  v208 = v257;
  sub_1E5A2B9D4();
  v209 = sub_1E5A2B9E4();
  (*(*(v209 - 8) + 56))(v208, 0, 1, v209);
  v210 = v273;
  sub_1E5A2B9F4();
  v211 = v262;
  v212 = v264;
  v213 = v267;
  v214 = v281;
  sub_1E5A2B014();
  (*(v274 + 8))(v210, v275);
  sub_1E58BAD14(v208, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v263 + 8))(v214, v212);
  v344 = v212;
  v345 = v213;
  v215 = swift_getOpaqueTypeConformance2();
  v216 = v283;
  v217 = v270;
  sub_1E58B41DC(v211, v270, v215);
  v218 = v265;
  v219 = *(v265 + 8);
  v299 = v265 + 8;
  v302 = v219;
  v219(v211, v217);
  v220 = v276;
  v221 = v294;
  (*(v280 + 16))(v276, v286, v294);
  v344 = v220;
  v222 = v266;
  (*(v218 + 16))(v266, v216, v217);
  v345 = v222;
  v309[0] = v221;
  v309[1] = v217;
  v307 = v277;
  v308 = v282;
  v306 = swift_getOpaqueTypeConformance2();
  v307 = swift_getWitnessTable();
  v308 = v215;
  v223 = v268;
  sub_1E597DC00(&v344, 2uLL, v309);
  v302(v222, v217);
  (v256)(v220, v221);
  v224 = v300;
  v225 = swift_getWitnessTable();
  v305 = swift_getWitnessTable();
  v226 = swift_getWitnessTable();
  v227 = v284;
  sub_1E595EBC0(v223, v224);
  v303 = v225;
  v304 = v226;
  v228 = v301;
  swift_getWitnessTable();
  v229 = v287;
  sub_1E595EBC0(v227, v228);
  (*(v285 + 8))(v227, v228);
  (*(v269 + 8))(v223, v224);
  v302(v283, v217);
  v145 = v229;
  (v256)(v286, v294);
LABEL_24:
  v230 = MEMORY[0x1E6981E60];
  v231 = swift_getWitnessTable();
  v309[32] = swift_getWitnessTable();
  v232 = swift_getWitnessTable();
  v309[30] = v231;
  v309[31] = v232;
  v309[28] = swift_getWitnessTable();
  v309[29] = v230;
  v233 = v296;
  v234 = swift_getWitnessTable();
  sub_1E58B41DC(v145, v233, v234);
  return (*(v295 + 8))(v145, v233);
}

uint64_t sub_1E59BEF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a3;
  v26 = a5;
  v28 = a1;
  v29 = a4;
  v27 = a2;
  v30 = a6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  v33[22] = swift_getOpaqueTypeMetadata2();
  v33[23] = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v33[24] = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v6 = sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  v33[19] = swift_getOpaqueTypeConformance2();
  v33[17] = WitnessTable;
  v33[18] = swift_getWitnessTable();
  v24[2] = MEMORY[0x1E697F968];
  v33[15] = swift_getWitnessTable();
  v33[16] = MEMORY[0x1E6981E60];
  v33[14] = swift_getWitnessTable();
  v24[1] = MEMORY[0x1E6981600];
  v8 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v33[20] = v6;
  v33[21] = v8;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  v9 = sub_1E5A2B734();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v33[2] = v27;
  v33[3] = v25;
  v33[4] = v29;
  v33[5] = v26;
  v33[6] = v28;
  v32[2] = v27;
  v32[3] = v25;
  v32[4] = v29;
  v32[5] = v26;
  v32[6] = v28;
  v17 = sub_1E59926B8();
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v33[12] = v18;
  v33[13] = v19;
  v33[11] = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  sub_1E59B66BC(sub_1E59C9270, v33, sub_1E59C9288, v32, v31);
  v33[8] = v17;
  v33[9] = v20;
  v33[10] = MEMORY[0x1E6981E60];
  v21 = swift_getWitnessTable();
  sub_1E58B41DC(v13, v9, v21);
  v22 = *(v10 + 8);
  v22(v13, v9);
  sub_1E58B41DC(v16, v9, v21);
  return (v22)(v16, v9);
}

uint64_t sub_1E59BF4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v28 = a4;
  v26 = a2;
  v27 = a1;
  v29 = a6;
  type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v48 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v7 = sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = WitnessTable;
  v42 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v40 = MEMORY[0x1E6981E60];
  v38 = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v44 = v7;
  v45 = v9;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  v10 = sub_1E5A2B494();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v30 = v26;
  v31 = a3;
  v32 = v28;
  v33 = v25;
  v34 = v27;
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v36 = v18;
  v37 = v19;
  v20 = swift_getWitnessTable();
  sub_1E5A2B484();
  v35 = v20;
  v21 = swift_getWitnessTable();
  sub_1E58B41DC(v14, v10, v21);
  v22 = *(v11 + 8);
  v22(v14, v10);
  sub_1E58B41DC(v17, v10, v21);
  return (v22)(v17, v10);
}

uint64_t sub_1E59BF9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a4;
  v85 = a5;
  v82 = a2;
  v83 = a3;
  v80 = a1;
  v81 = a6;
  v75 = sub_1E5A2B764();
  v73 = *(v75 - 1);
  v6 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1E5A2B774();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  WitnessTable = swift_getWitnessTable();
  v94 = v11;
  v95 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v14 = sub_1E5A29E74();
  v94 = v11;
  v95 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v17 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  v94 = v13;
  v95 = v14;
  v96 = OpaqueTypeMetadata2;
  v97 = v16;
  v98 = v17;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v18 = sub_1E5A2B494();
  v19 = swift_getWitnessTable();
  v94 = v11;
  v95 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = swift_getWitnessTable();
  v91 = v19;
  v92 = v20;
  v89 = swift_getWitnessTable();
  v90 = MEMORY[0x1E6981E60];
  v88 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v22 = sub_1E5A2B854();
  v70 = *(v22 - 8);
  v23 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v68 = &v66 - v26;
  v27 = sub_1E5A2AB24();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v76 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v18;
  v95 = v21;
  v30 = swift_getOpaqueTypeMetadata2();
  v71 = v18;
  v94 = v18;
  v95 = v21;
  swift_getOpaqueTypeConformance2();
  v66 = v30;
  v31 = sub_1E5A2A494();
  v67 = *(v31 - 8);
  v32 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v66 - v36;
  v38 = sub_1E5A2AA84();
  v78 = *(v38 - 8);
  v79 = v38;
  v39 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v77 = &v66 - v40;
  v94 = v82;
  v95 = v83;
  v96 = v84;
  v97 = v85;
  v41 = type metadata accessor for PersonalizedWorkoutPlansView();
  v42 = v80;
  sub_1E59B6960(v41);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v94 > 1u)
  {
    v51 = v74;
    *v74 = xmmword_1E5A3EA30;
    (*(v73 + 104))(v51, *MEMORY[0x1E697D748], v75);
    sub_1E59B6F18(v41);
    v52 = v72;
    sub_1E5A2B784();
    v53 = sub_1E59B6D30(v41);
    v75 = sub_1E59E9100(v52, v53);
    sub_1E5A2AA34();
    sub_1E59B6F18(v41);
    MEMORY[0x1EEE9AC00](v54);
    v55 = v83;
    *(&v66 - 6) = v82;
    *(&v66 - 5) = v55;
    v56 = v85;
    *(&v66 - 4) = v84;
    *(&v66 - 3) = v56;
    sub_1E59B68E0();
    v65 = v21;
    v57 = v69;
    sub_1E5A2B844();
    v58 = swift_getWitnessTable();
    v59 = v68;
    sub_1E58B41DC(v57, v22, v58);
    v47 = *(v70 + 8);
    v47(v57, v22);
    sub_1E58B41DC(v59, v22, v58);
    swift_getWitnessTable();
    v48 = v77;
    sub_1E595ECB8(v57, v31, v22);
    v47(v57, v22);
    v49 = v59;
    v50 = v22;
  }

  else
  {
    sub_1E5A2AA34();
    sub_1E59B6F18(v41);
    v75 = &v66;
    MEMORY[0x1EEE9AC00](v43);
    v44 = v83;
    *(&v66 - 6) = v82;
    *(&v66 - 5) = v44;
    v45 = v85;
    *(&v66 - 4) = v84;
    *(&v66 - 3) = v45;
    v65 = v42;
    sub_1E59B68E0();
    sub_1E5A2A484();
    v46 = swift_getWitnessTable();
    sub_1E58B41DC(v34, v31, v46);
    v47 = *(v67 + 8);
    v47(v34, v31);
    sub_1E58B41DC(v37, v31, v46);
    swift_getWitnessTable();
    v48 = v77;
    sub_1E595EBC0(v34, v31);
    v47(v34, v31);
    v49 = v37;
    v50 = v31;
  }

  v47(v49, v50);
  v60 = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  v86 = v60;
  v87 = v61;
  v62 = v79;
  v63 = swift_getWitnessTable();
  sub_1E58B41DC(v48, v62, v63);
  return (*(v78 + 8))(v48, v62);
}

uint64_t sub_1E59C046C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v34 = a2;
  v35 = a4;
  v36 = a1;
  v37 = a3;
  v38 = a5;
  v5 = type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v46 = sub_1E5A29E74();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v49 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v7 = sub_1E5A2B494();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v30 = &v29 - v9;
  v11 = swift_getWitnessTable();
  v45 = v5;
  v46 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = swift_getWitnessTable();
  v42 = v11;
  v43 = v12;
  v40 = swift_getWitnessTable();
  v41 = MEMORY[0x1E6981E60];
  v39 = swift_getWitnessTable();
  v13 = v7;
  v14 = swift_getWitnessTable();
  v45 = v7;
  v46 = v14;
  v31 = v14;
  v32 = MEMORY[0x1E697D318];
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  v45 = v36;
  v46 = v34;
  OpaqueTypeMetadata2 = v37;
  v48 = v35;
  v23 = type metadata accessor for PersonalizedWorkoutPlansView();
  sub_1E59B7484(v23, v10);
  sub_1E5A2AD64();
  sub_1E59B6D30(v23);
  sub_1E59B6E58(v23);
  sub_1E59B6F18(v23);
  sub_1E5A2B7F4();
  v24 = v31;
  v25 = v30;
  sub_1E5A2B274();
  (*(v33 + 8))(v25, v13);
  v45 = v13;
  v46 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  sub_1E58B41DC(v19, v15, v26);
  v27 = *(v16 + 8);
  v27(v19, v15);
  sub_1E58B41DC(v22, v15, v26);
  return (v27)(v22, v15);
}

uint64_t sub_1E59C096C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a4;
  v29 = a1;
  v30 = a6;
  v7 = type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v9 = sub_1E5A29E74();
  v24 = MEMORY[0x1E69E3B40];
  v37 = v8;
  v38 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v41 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v10 = sub_1E5A2B494();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v37 = v27;
  v38 = a3;
  OpaqueTypeMetadata2 = v28;
  v40 = v26;
  v18 = type metadata accessor for PersonalizedWorkoutPlansView();
  sub_1E59B7484(v18, v14);
  v19 = swift_getWitnessTable();
  v37 = v7;
  v38 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = swift_getWitnessTable();
  v34 = v19;
  v35 = v20;
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x1E6981E60];
  v31 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  sub_1E58B41DC(v14, v10, v21);
  v22 = *(v11 + 8);
  v22(v14, v10);
  sub_1E58B41DC(v17, v10, v21);
  return (v22)(v17, v10);
}

__n128 sub_1E59C0D2C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5A2AA34();
  v19 = 0;
  sub_1E59C0E98(a1, a2, a3, a4, a5, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v21, __src, sizeof(v21));
  sub_1E58BABA0(__dst, v16, &qword_1ECFFF268, &unk_1E5A3EBC0);
  sub_1E58BAD14(v21, &qword_1ECFFF268, &unk_1E5A3EBC0);
  memcpy(&v18[7], __dst, 0x120uLL);
  LOBYTE(a5) = v19;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *a6 = v12;
  *(a6 + 8) = 0x4014000000000000;
  *(a6 + 16) = a5;
  memcpy((a6 + 17), v18, 0x127uLL);
  v13 = __src[5];
  *(a6 + 376) = __src[4];
  *(a6 + 392) = v13;
  *(a6 + 408) = __src[6];
  v14 = __src[1];
  *(a6 + 312) = __src[0];
  *(a6 + 328) = v14;
  result = __src[3];
  *(a6 + 344) = __src[2];
  *(a6 + 360) = result;
  return result;
}

uint64_t sub_1E59C0E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v66 = a6;
  v67 = sub_1E5A2AEB4();
  v11 = *(v67 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A29EB4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E5A2BB14();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v22 = qword_1EE2D33E0;
  v107 = a2;
  v108 = a3;
  v109 = a4;
  v110 = a5;
  v62 = type metadata accessor for PersonalizedWorkoutPlansView();
  sub_1E59B6960(v62);
  swift_getKeyPath();
  v57[3] = v17;
  sub_1E5A2B944();

  v57[2] = v21;
  v23 = sub_1E5A2AF64();
  v25 = v24;
  v27 = v26;
  sub_1E5A2AE84();
  sub_1E5A2AE24();
  v57[1] = a1;

  v61 = *MEMORY[0x1E6980EA8];
  v28 = v11;
  v29 = *(v11 + 104);
  v59 = v11 + 104;
  v60 = v29;
  v30 = v65;
  v31 = v67;
  v29(v65);
  sub_1E5A2AEE4();

  v58 = *(v28 + 8);
  v58(v30, v31);
  v63 = sub_1E5A2AFA4();
  v64 = v32;
  v69 = v33;
  v35 = v34;

  sub_1E58B3C9C(v23, v25, v27 & 1);

  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v68 = v35 & 1;
  v128 = v35 & 1;
  sub_1E5A2BA84();
  v36 = qword_1EE2D33E0;
  sub_1E59B6960(v62);
  swift_getKeyPath();
  sub_1E5A2B944();

  v37 = sub_1E5A2AF64();
  v39 = v38;
  v41 = v40;
  sub_1E5A2AE04();
  v42 = v67;
  v60(v30, v61, v67);
  sub_1E5A2AEE4();

  v58(v30, v42);
  v43 = sub_1E5A2AFA4();
  v45 = v44;
  LOBYTE(v42) = v46;

  sub_1E58B3C9C(v37, v39, v41 & 1);

  LODWORD(v107) = sub_1E5A2ABA4();
  v47 = sub_1E5A2AF84();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_1E58B3C9C(v43, v45, v42 & 1);

  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v51 &= 1u;
  v54 = v63;
  v55 = v64;
  *&v78 = v63;
  *(&v78 + 1) = v69;
  LOBYTE(v79) = v68;
  *(&v79 + 1) = *v127;
  DWORD1(v79) = *&v127[3];
  *(&v79 + 1) = v64;
  v84 = v124;
  v85 = v125;
  v86 = v126;
  v80 = v120;
  v81 = v121;
  v82 = v122;
  v83 = v123;
  v70[6] = v124;
  v70[7] = v125;
  v70[2] = v120;
  v70[3] = v121;
  v70[4] = v122;
  v70[5] = v123;
  v70[0] = v78;
  v70[1] = v79;
  *&v87 = v47;
  *(&v87 + 1) = v49;
  LOBYTE(v88) = v51;
  *(&v88 + 1) = *v118;
  DWORD1(v88) = *&v118[3];
  *(&v88 + 1) = v53;
  v93 = v75;
  v94 = v76;
  v95 = v77;
  v89 = v71;
  v90 = v72;
  v91 = v73;
  v92 = v74;
  v70[12] = v72;
  v70[13] = v73;
  v70[10] = v88;
  v70[11] = v71;
  v70[14] = v74;
  v70[15] = v75;
  v70[16] = v76;
  v70[17] = v77;
  v119 = v51;
  v70[8] = v126;
  v70[9] = v87;
  memcpy(v66, v70, 0x120uLL);
  v96[0] = v47;
  v96[1] = v49;
  v97 = v51;
  *v98 = *v118;
  *&v98[3] = *&v118[3];
  v99 = v53;
  v104 = v75;
  v105 = v76;
  v106 = v77;
  v100 = v71;
  v101 = v72;
  v102 = v73;
  v103 = v74;
  sub_1E58BABA0(&v78, &v107, &qword_1ECFFB4F8, &unk_1E5A2C940);
  sub_1E58BABA0(&v87, &v107, &qword_1ECFFB4F8, &unk_1E5A2C940);
  sub_1E58BAD14(v96, &qword_1ECFFB4F8, &unk_1E5A2C940);
  v107 = v54;
  v108 = v69;
  LOBYTE(v109) = v68;
  *(&v109 + 1) = *v127;
  HIDWORD(v109) = *&v127[3];
  v110 = v55;
  v115 = v124;
  v116 = v125;
  v117 = v126;
  v111 = v120;
  v112 = v121;
  v113 = v122;
  v114 = v123;
  return sub_1E58BAD14(&v107, &qword_1ECFFB4F8, &unk_1E5A2C940);
}