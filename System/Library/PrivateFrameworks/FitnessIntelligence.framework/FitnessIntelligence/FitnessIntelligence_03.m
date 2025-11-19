uint64_t sub_1B4992584()
{
  v1 = v0[5];
  sub_1B4992854(v0[3], v1);
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4992680;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return sub_1B4CBEC54(v6, v4);
}

uint64_t sub_1B4992680(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  sub_1B49933E8(*(v4 + 40));
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49927F0, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_1B49927F0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1B4992854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B49928B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B0, &unk_1B4D1AA60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v83 - v4;
  v6 = sub_1B4D1777C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v83 - v12;
  v14 = type metadata accessor for DateRangeDescriptor();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WorkoutState();
  v106[3] = v17;
  v106[4] = &protocol witness table for WorkoutState;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v106);
  sub_1B4992854(a1, boxed_opaque_existential_1);
  v19 = sub_1B4CAC70C(boxed_opaque_existential_1);
  v20 = *(v19 + 2);
  v21 = 32;
  do
  {
    if (!v20)
    {

      if (qword_1EDC36EF8 != -1)
      {
        swift_once();
      }

      v53 = sub_1B4D17F6C();
      __swift_project_value_buffer(v53, qword_1EDC36F00);
      v54 = sub_1B4D17F5C();
      v55 = sub_1B4D1873C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v103[0] = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_1B49558AC(0xD000000000000022, 0x80000001B4D4EF90, v103);
        _os_log_impl(&dword_1B4953000, v54, v55, "%s does not support this workout state", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        MEMORY[0x1B8C7DDA0](v57, -1, -1);
        MEMORY[0x1B8C7DDA0](v56, -1, -1);
      }

      v48 = sub_1B4C94A9C(MEMORY[0x1E69E7CC0]);
      goto LABEL_28;
    }

    v22 = *&v19[v21];
    v21 += 8;
    --v20;
  }

  while (v22 != 1);
  v84 = v10;
  v88 = v5;

  v101 = [*(boxed_opaque_existential_1 + *(v17 + 24)) effectiveTypeIdentifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B40, &qword_1B4D1B2B8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B48, &unk_1B4D1B2C0);
  v98 = v23;
  v24 = *(v23 - 8);
  v90 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v94 = v13;
  v92 = v17;
  v91 = v26;
  *(v26 + 16) = xmmword_1B4D1AA70;
  v27 = *(v23 + 48);
  v97 = v26 + v25;
  v28 = v26 + v25 + v27;
  *(v26 + v25) = 0;
  v29 = *(v17 + 36);
  v85 = v7;
  v30 = *(v7 + 16);
  v31 = v29;
  v96 = v29;
  v30(v28, boxed_opaque_existential_1 + v29, v6);
  swift_storeEnumTagMultiPayload();
  v32 = v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
  v34 = swift_allocObject();
  v99 = boxed_opaque_existential_1;
  v35 = v34;
  v95 = xmmword_1B4D1A800;
  *(v34 + 16) = xmmword_1B4D1A800;
  *(v34 + 32) = v101;
  v36 = type metadata accessor for WorkoutPropertiesQuery();
  v93 = v14;
  v37 = v32;
  v38 = v36;
  v39 = (v28 + v36[5]);
  v40 = MEMORY[0x1E69E7CC0];
  *v39 = MEMORY[0x1E69E7CC0];
  v39[1] = v40;
  v39[2] = v40;
  v39[3] = v35;
  v39[4] = v40;
  v39[5] = v40;
  *(v28 + v36[6]) = v40;
  *(v28 + v36[7]) = &unk_1F2CB8438;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  swift_storeEnumTagMultiPayload();
  v42 = v97 + v90 + *(v98 + 48);
  *(v97 + v90) = 1;
  v43 = v99 + v31;
  v44 = v100;
  v90 = v37;
  v89 = v30;
  v30(v100, v43, v37);
  swift_storeEnumTagMultiPayload();
  v87 = v33;
  v45 = swift_allocObject();
  *(v45 + 16) = v95;
  *(v45 + 32) = v101;
  sub_1B4993450(v44, v42);
  v46 = (v42 + v38[5]);
  *v46 = v40;
  v46[1] = v40;
  v46[2] = v40;
  v46[3] = v45;
  v47 = v99;
  v46[4] = v40;
  v46[5] = v40;
  *(v42 + v38[6]) = v40;
  v86 = v38;
  *(v42 + v38[7]) = &unk_1F2CB8460;
  v100 = Descriptor;
  swift_storeEnumTagMultiPayload();
  v48 = sub_1B4C94A9C(v91);
  swift_setDeallocating();
  swift_arrayDestroy();
  v49 = v94;
  swift_deallocClassInstance();
  v105 = v48;
  v50 = v92;
  v51 = *(v47 + *(v92 + 48));
  sub_1B4D1770C();
  DayOfWeek.init(from:)(v49, v103);
  v52 = LOBYTE(v103[0]);
  if (LOBYTE(v103[0]) <= 3u)
  {
    if (LOBYTE(v103[0]) <= 1u && !LOBYTE(v103[0]))
    {
LABEL_24:

      goto LABEL_27;
    }

LABEL_17:
    v58 = sub_1B4D18DCC();

    if ((v58 & 1) == 0)
    {
      if (v52 == 1)
      {
        goto LABEL_24;
      }

      v75 = sub_1B4D18DCC();

      if ((v75 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    v76 = v88;
    v89(v88, v47 + v96, v90);
    swift_storeEnumTagMultiPayload();
    v77 = swift_allocObject();
    *(v77 + 16) = v95;
    *(v77 + 32) = v101;
    v78 = v86;
    v79 = (v76 + v86[5]);
    v80 = MEMORY[0x1E69E7CC0];
    *v79 = MEMORY[0x1E69E7CC0];
    v79[1] = v80;
    v79[2] = v80;
    v79[3] = v77;
    v79[4] = v80;
    v79[5] = v80;
    *(v76 + v78[6]) = v80;
    *(v76 + v78[7]) = &unk_1F2CB8488;
    v81 = v100;
    swift_storeEnumTagMultiPayload();
    (*(*(v81 - 1) + 56))(v76, 0, 1, v81);
    sub_1B49CA980(v76, 2);
    v48 = v105;
    goto LABEL_28;
  }

  if (LOBYTE(v103[0]) <= 5u || LOBYTE(v103[0]) == 6)
  {
    goto LABEL_17;
  }

  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v59 = sub_1B4D17F6C();
  __swift_project_value_buffer(v59, qword_1EDC36F00);
  sub_1B497558C(v106, v103);
  v60 = sub_1B4D17F5C();
  v61 = sub_1B4D186FC();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v90;
  v64 = v85;
  if (v62)
  {
    v65 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v102 = v101;
    *v65 = 136315138;
    v66 = __swift_project_boxed_opaque_existential_1(v103, v104);
    v67 = v84;
    v89(v84, &v66[*(v50 + 36)], v63);
    v68 = *(__swift_project_boxed_opaque_existential_1(v103, v104) + *(v50 + 48));
    sub_1B4D1770C();
    v69 = *(v64 + 8);
    v69(v67, v63);
    sub_1B49934B4(&qword_1EB8A6B58, MEMORY[0x1E6969530]);
    v70 = sub_1B4D18D5C();
    v72 = v71;
    v69(v49, v63);
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    v73 = sub_1B49558AC(v70, v72, &v102);

    *(v65 + 4) = v73;
    _os_log_impl(&dword_1B4953000, v60, v61, "Failed to create day fact. Today: %s", v65, 0xCu);
    v74 = v101;
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    MEMORY[0x1B8C7DDA0](v74, -1, -1);
    MEMORY[0x1B8C7DDA0](v65, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v103);
  }

LABEL_28:
  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  return v48;
}

uint64_t sub_1B49933E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4993450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateRangeDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49934B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.TemplateString.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD0000000000000C0;
  }

  else
  {
    result = 0xD000000000000090;
  }

  *v0;
  return result;
}

uint64_t sub_1B49935A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD0000000000000C0;
  }

  else
  {
    v4 = 0xD000000000000090;
  }

  if (v3)
  {
    v5 = "elow my 28-day baseline.";
  }

  else
  {
    v5 = "_type> workouts.";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD0000000000000C0;
  }

  else
  {
    v7 = 0xD000000000000090;
  }

  if (*a2)
  {
    v8 = "_type> workouts.";
  }

  else
  {
    v8 = "elow my 28-day baseline.";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4993654()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49936D4()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4993740()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49937BC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B499381C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD0000000000000C0;
  }

  else
  {
    v2 = 0xD000000000000090;
  }

  if (*v1)
  {
    v3 = "_type> workouts.";
  }

  else
  {
    v3 = "elow my 28-day baseline.";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id WorkoutVoiceMilestoneWorkoutDistanceFact.placeholders()()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D1B2D0;
  sub_1B4993B98(v1, v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1B4993BFC(v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1B4993C60;
  *(v8 + 24) = v7;
  *(v5 + 32) = 0xD00000000000001CLL;
  *(v5 + 40) = 0x80000001B4D4EFC0;
  *(v5 + 48) = sub_1B4993CDC;
  *(v5 + 56) = v8;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  [*(v1 + v2[7]) effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v10 = result;
    v11 = sub_1B4D1818C();
    v13 = v12;

    strcpy((v5 + 80), "activity_type");
    *(v5 + 94) = -4864;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v5 + 96) = sub_1B4993DFC;
    *(v5 + 104) = v14;
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    v23[1] = *(v1 + v2[8]);
    v15 = sub_1B4D18D5C();
    v17 = v16;
    strcpy((v5 + 128), "workout_count");
    *(v5 + 142) = -4864;
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v17;
    *(v5 + 144) = sub_1B4994004;
    *(v5 + 152) = v18;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    v19 = *(v1 + v2[6]);
    v20 = *&aThisDaythisWee[8 * v19];
    v21 = qword_1B4D1B420[v19];
    *(v5 + 176) = 0xD000000000000015;
    *(v5 + 184) = 0x80000001B4D4EFE0;
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    *(v5 + 192) = sub_1B4994004;
    *(v5 + 200) = v22;
    *(v5 + 208) = 0;
    *(v5 + 216) = 0;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4993B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4993BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4993C60()
{
  v1 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  return sub_1B4D133E8(v2 + *(v1 + 20), *(v2 + *(v1 + 28)), 0, 1);
}

uint64_t sub_1B4993CDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact() + 24)) >= 4u)
  {

    v5 = 0;
  }

  else
  {
    v3 = sub_1B4D18DCC();

    v5 = (v3 & 1) == 0;
  }

  *a1 = v5;
  return result;
}

unint64_t sub_1B4993E08()
{
  result = qword_1EB8A6B68;
  if (!qword_1EB8A6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6B68);
  }

  return result;
}

unint64_t sub_1B4993E60()
{
  result = qword_1EB8A6B70;
  if (!qword_1EB8A6B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6B78, &qword_1B4D1B380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6B70);
  }

  return result;
}

unint64_t sub_1B4993EC8()
{
  result = qword_1EB8A6B80;
  if (!qword_1EB8A6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6B80);
  }

  return result;
}

unint64_t sub_1B4993F20()
{
  result = qword_1EB8A6B88;
  if (!qword_1EB8A6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6B88);
  }

  return result;
}

unint64_t sub_1B4993F74(uint64_t a1)
{
  result = sub_1B4993F9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4993F9C()
{
  result = qword_1EB8A6B90;
  if (!qword_1EB8A6B90)
  {
    type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6B90);
  }

  return result;
}

uint64_t sub_1B4994558(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B49945C8()
{
  result = qword_1EB8A6BC0;
  if (!qword_1EB8A6BC0)
  {
    type metadata accessor for WorkoutMetricsFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6BC0);
  }

  return result;
}

unint64_t sub_1B4994624()
{
  result = qword_1EB8A6BC8;
  if (!qword_1EB8A6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6BC8);
  }

  return result;
}

uint64_t sub_1B4994684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4994724, 0, 0);
}

uint64_t sub_1B4994724()
{
  v1 = v0[6];
  sub_1B4992854(v0[4], v1);
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B4994820;
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[2];
  v6 = v0[3];

  return sub_1B4C98A0C(v7, v6, v4);
}

uint64_t sub_1B4994820(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v7 = *v1;

  sub_1B49933E8(v4);

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t type metadata accessor for PerfectWeekRingStatusFact()
{
  result = qword_1EB8A6BF8;
  if (!qword_1EB8A6BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4994A30()
{
  v1 = 0x68546B6165727473;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1B4994AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4995660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4994AF4(uint64_t a1)
{
  v2 = sub_1B4995190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4994B30(uint64_t a1)
{
  v2 = sub_1B4995190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerfectWeekRingStatusFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6BD0, &qword_1B4D1B680);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4995190();
  sub_1B4D18EFC();
  v11 = *v3;
  v17[15] = 0;
  sub_1B4D18CEC();
  if (!v2)
  {
    v12 = type metadata accessor for PerfectWeekRingStatusFact();
    v13 = v12[5];
    v17[14] = 1;
    type metadata accessor for RingProgressType();
    sub_1B49951E4(&qword_1EB8A6BE0);
    sub_1B4D18D0C();
    v14 = *(v3 + v12[6]);
    v17[13] = 2;
    sub_1B4D18CCC();
    v15 = *(v3 + v12[7]);
    v17[12] = 3;
    sub_1B4D18CCC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PerfectWeekRingStatusFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for RingProgressType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6BE8, &qword_1B4D1B688);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for PerfectWeekRingStatusFact();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v16 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B4995190();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  v18 = v22;
  v28 = 0;
  *v15 = sub_1B4D18BEC();
  v27 = 1;
  sub_1B49951E4(&qword_1EB8A6BF0);
  sub_1B4D18C0C();
  sub_1B4995228(v7, v15 + v12[5]);
  v26 = 2;
  *(v15 + v12[6]) = sub_1B4D18BCC() & 1;
  v25 = 3;
  v20 = sub_1B4D18BCC();
  (*(v18 + 8))(v11, v23);
  *(v15 + v12[7]) = v20 & 1;
  sub_1B499528C(v15, v21, type metadata accessor for PerfectWeekRingStatusFact);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return sub_1B49952F4(v15, type metadata accessor for PerfectWeekRingStatusFact);
}

uint64_t _s19FitnessIntelligence25PerfectWeekRingStatusFactV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for PerfectWeekRingStatusFact();
  if ((static RingProgressType.== infix(_:_:)(a1 + v4[5], a2 + v4[5]) & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    v5 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1B4995190()
{
  result = qword_1EB8A6BD8;
  if (!qword_1EB8A6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6BD8);
  }

  return result;
}

uint64_t sub_1B49951E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RingProgressType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4995228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingProgressType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B499528C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49952F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B499537C()
{
  result = type metadata accessor for RingProgressType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerfectWeekRingStatusFact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PerfectWeekRingStatusFact.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B499555C()
{
  result = qword_1EB8A6C08;
  if (!qword_1EB8A6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C08);
  }

  return result;
}

unint64_t sub_1B49955B4()
{
  result = qword_1EB8A6C10;
  if (!qword_1EB8A6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C10);
  }

  return result;
}

unint64_t sub_1B499560C()
{
  result = qword_1EB8A6C18;
  if (!qword_1EB8A6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C18);
  }

  return result;
}

uint64_t sub_1B4995660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68546B6165727473 && a2 == 0xEE006B6565577369;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F000 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F020 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F040 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

uint64_t LocalizedDate.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  v8 = *(a1 + 8);
  *&v9 = *a1;
  *(&v9 + 1) = HIDWORD(*a1);
  v10 = v9;
  *&v9 = v8;
  *(&v9 + 1) = SHIDWORD(v8);
  *a2 = v10;
  *(a2 + 16) = v9;
  *(a2 + 32) = *(a1 + 16);
  v11 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40));
  if (v11[1])
  {
    v12 = *v11;
    v13 = v11[1];

    sub_1B4D1797C();

    sub_1B4995924(a1);
  }

  else
  {
    sub_1B4995924(a1);
    v14 = sub_1B4D179BC();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  v15 = type metadata accessor for LocalizedDate();
  return sub_1B4995980(v7, a2 + *(v15 + 36));
}

uint64_t sub_1B4995924(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4995980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LocalizedDate.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  sub_1B4995D8C(qword_1EDC3C9B0);
  return sub_1B4D17DAC();
}

void sub_1B4995A84(_DWORD *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v24 - v6;
  v8 = sub_1B4D179BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  if (*a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v13 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *a1 = v13;
  v14 = a2[1];
  if (v14 < 0xFFFFFFFF80000000)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1[1] = v14;
  v15 = a2[2];
  if (v15 < 0xFFFFFFFF80000000)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  a1[2] = v15;
  v16 = a2[3];
  if (v16 < 0xFFFFFFFF80000000)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  a1[3] = v16;
  v17 = a2[4];
  if (v17 < 0xFFFFFFFF80000000)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    return;
  }

  a1[4] = v17;
  v18 = type metadata accessor for LocalizedDate();
  sub_1B4995E7C(a2 + *(v18 + 36), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B4995EEC(v7);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v19 = sub_1B4D1798C();
    v21 = v20;
    (*(v9 + 8))(v12, v8);
    v22 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40));
    v23 = v22[1];

    *v22 = v19;
    v22[1] = v21;
  }
}

uint64_t sub_1B4995D8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4995DD0()
{
  type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  sub_1B4995D8C(qword_1EDC3C9B0);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4995E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4995EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

FitnessIntelligence::VitalsDay::BaselineComparison_optional __swiftcall VitalsDay.BaselineComparison.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B499607C()
{
  v1 = *v0;
  v2 = 0x7461527472616568;
  v3 = 0x7461726970736572;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x656C7341656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79784F646F6F6C62;
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

uint64_t sub_1B4996138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4996A90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B499616C(uint64_t a1)
{
  v2 = sub_1B4996768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49961A8(uint64_t a1)
{
  v2 = sub_1B4996768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VitalsDay.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C30, &qword_1B4D1B880);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v20 = v1[2];
  v21 = v10;
  v11 = v1[3];
  v18 = v1[4];
  v19 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4996768();
  sub_1B4D18EFC();
  v31 = v9;
  v30 = 0;
  sub_1B49967BC();
  sub_1B4D18D0C();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = v19;
  v13 = v20;
  v15 = v18;
  v29 = v21;
  v28 = 1;
  sub_1B4D18D0C();
  v27 = v13;
  v26 = 2;
  sub_1B4D18D0C();
  v25 = v14;
  v24 = 3;
  sub_1B4D18D0C();
  v23 = v15;
  v22 = 4;
  sub_1B4D18D0C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t VitalsDay.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C48, &qword_1B4D1B888);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4996768();
  sub_1B4D18EEC();
  if (!v2)
  {
    v27 = 0;
    sub_1B4996810();
    sub_1B4D18C0C();
    v11 = v28;
    v25 = 1;
    sub_1B4D18C0C();
    v18 = v11;
    v12 = v26;
    v23 = 2;
    sub_1B4D18C0C();
    v17 = v12;
    LOBYTE(v12) = v24;
    v21 = 3;
    sub_1B4D18C0C();
    v16 = v22;
    v19 = 4;
    sub_1B4D18C0C();
    (*(v6 + 8))(v9, v5);
    v14 = v20;
    v15 = v17;
    *a2 = v18;
    a2[1] = v15;
    a2[2] = v12;
    a2[3] = v16;
    a2[4] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t _s19FitnessIntelligence9VitalsDayV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  a3.i32[0] = *a1;
  a4.i32[0] = *a2;
  return vminv_u16(vceq_s16((vmovl_u8(a3).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL))) & (*(a1 + 4) == *(a2 + 4));
}

unint64_t sub_1B4996768()
{
  result = qword_1EB8A6C38;
  if (!qword_1EB8A6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C38);
  }

  return result;
}

unint64_t sub_1B49967BC()
{
  result = qword_1EB8A6C40;
  if (!qword_1EB8A6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C40);
  }

  return result;
}

unint64_t sub_1B4996810()
{
  result = qword_1EB8A6C50;
  if (!qword_1EB8A6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C50);
  }

  return result;
}

unint64_t sub_1B4996868()
{
  result = qword_1EB8A6C58;
  if (!qword_1EB8A6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C58);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VitalsDay(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[5])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VitalsDay(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1B499698C()
{
  result = qword_1EB8A6C60;
  if (!qword_1EB8A6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C60);
  }

  return result;
}

unint64_t sub_1B49969E4()
{
  result = qword_1EB8A6C68;
  if (!qword_1EB8A6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C68);
  }

  return result;
}

unint64_t sub_1B4996A3C()
{
  result = qword_1EB8A6C70;
  if (!qword_1EB8A6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C70);
  }

  return result;
}

uint64_t sub_1B4996A90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461527472616568 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79784F646F6F6C62 && a2 == 0xEB000000006E6567 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461726970736572 && a2 == 0xEF6574615279726FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F060 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C7341656D6974 && a2 == 0xEA00000000007065)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

unint64_t sub_1B4996C64()
{
  result = qword_1EB8A6C78;
  if (!qword_1EB8A6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C78);
  }

  return result;
}

uint64_t sub_1B4996CD0(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF13C(0, v4, 0);
  v5 = v19;
  v8 = *(type metadata accessor for WorkoutSplit() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v17, v9);
    if (v3)
    {
      break;
    }

    v11 = v17;
    v12 = v18;
    v19 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1B4BCF13C((v13 > 1), v14 + 1, 1);
      v5 = v19;
    }

    *(v5 + 16) = v14 + 1;
    v15 = v5 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4996E40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF19C(0, v1, 0);
    v3 = v33;
    v4 = v2 + 64;
    v5 = -1 << *(v2 + 32);
    v6 = sub_1B4D188DC();
    v7 = 0;
    v8 = *(v2 + 36);
    v27 = v2 + 72;
    v28 = v1;
    v29 = v8;
    v30 = v2 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (v8 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v31 = v7;
      v11 = *(*(v2 + 48) + 8 * v6);
      v12 = v2;
      v13 = *(*(v2 + 56) + 8 * v6);
      v14 = v11;

      v15 = sub_1B4CC15A8(v32, v14, v13);

      v32[1] = v15;
      v16 = v32[0];
      v33 = v3;
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B4BCF19C((v17 > 1), v18 + 1, 1);
        v3 = v33;
      }

      *(v3 + 16) = v18 + 1;
      v19 = v3 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      v9 = 1 << *(v12 + 32);
      if (v6 >= v9)
      {
        goto LABEL_24;
      }

      v2 = v12;
      v4 = v30;
      v20 = *(v30 + 8 * v10);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      v8 = v29;
      if (v29 != *(v2 + 36))
      {
        goto LABEL_26;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v9 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (v27 + 8 * v10);
        while (v23 < (v9 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_1B497CD6C(v6, v29, 0);
            v9 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        sub_1B497CD6C(v6, v29, 0);
      }

LABEL_4:
      v7 = v31 + 1;
      v6 = v9;
      if (v31 + 1 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
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
}

uint64_t sub_1B49970B4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1B4BCEF9C(0, v11, 0);
  v12 = v22;
  v13 = *(type metadata accessor for DistanceSampleIntervalRecord() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1B4BCEF9C(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_1B498B270(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_1EB8A6CE8, &qword_1B4D44B80);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B49972E4(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v9 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v9 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v9 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v10 = *(v4 + 16);
  v11 = __OFADD__(v10, v3);
  v12 = v10 + v3;
  if (!v11)
  {
    *(v4 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B499740C(uint64_t result)
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

  result = sub_1B4A1D7C4(result, v12, 1, v3);
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

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_1B49974F8(uint64_t result)
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

  result = sub_1B4A1D8C4(result, v12, 1, v3);
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

  memcpy((v3 + 40 * v8 + 32), (v6 + 32), 40 * v2);

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

uint64_t sub_1B499766C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B4A1DC00(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B4997760(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B4A1DD0C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B49978F8(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v13 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v14 = *(result - 8);
  if (v13 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = *(v14 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v17 = *(v6 + 16);
  v18 = __OFADD__(v17, v5);
  v19 = v17 + v5;
  if (!v18)
  {
    *(v6 + 16) = v19;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B4997ACC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B4997C10(uint64_t result)
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

  result = sub_1B4A1E31C(result, v12, 1, v3);
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

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

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

void sub_1B4997CFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1B4A1E31C(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 16 * v16 + 32), (a2 + 16 * a3), 16 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1B4997E10(uint64_t result)
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

  result = sub_1B4A1E6E4(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

double sub_1B4997EFC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v33 = type metadata accessor for LocationCoordinate();
    v14 = *(v33 - 8);
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = (v16 - 8);
    v31 = (v16 + 8);
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v30 = *(v14 + 72);
    v34 = v16;
    v32 = v17;
    do
    {
      v36 = v13;
      v24 = *(v33 + 28);
      v25 = v15;
      v15(v12, a2, v6);
      sub_1B49A2254();
      v26 = sub_1B4D180EC();
      v35 = *v18;
      v35(v12, v6);
      if (v26)
      {
        v20 = v29;
        v25(v29, a2, v6);
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        sub_1B4D1744C();
        v21 = v35;
        v35(v20, v6);
        (*v31)(a2, v19 + v24, v6);
        sub_1B4D1742C();
        v23 = v22;
        v21(v12, v6);
        a3 = a3 + v23;
      }

      else
      {
        (*v31)(a2, v19 + v24, v6);
      }

      v19 += v30;
      v13 = v36 - 1;
      v15 = v32;
    }

    while (v36 != 1);
  }

  return a3;
}

uint64_t WorkoutReplayer.init(workout:initialRings:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B496F398(a1, a3);

  return sub_1B496F398(a2, a3 + 40);
}

uint64_t WorkoutReplayer.moments(unitManager:)(void *a1)
{
  v2 = v1;
  v109 = 0;
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v106 = v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v104 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v104 - v16;
  v19 = v1[3];
  v18 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v19);
  (*(v18 + 88))(v19, v18);
  v20 = v5 + 6;
  v108 = v5[6];
  if (v108(v17, 1, v4) == 1)
  {
    sub_1B4975024(v17, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v21 = 0;
  }

  else
  {
    v104[0] = v14;
    v22 = v1[3];
    v23 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v22);
    v24 = *(v23 + 80);
    v25 = v23;
    v20 = v5 + 6;
    v14 = v104[0];
    v24(v22, v25);
    sub_1B4D176FC();
    v21 = v26;
    v27 = v5;
    v28 = v5[1];
    v28(v8, v4);
    v28(v17, v4);
    v5 = v27;
  }

  v29 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  v30 = v2[3];
  v31 = v2[4];
  v32 = __swift_project_boxed_opaque_existential_1(v2, v30);
  sub_1B49A79FC(v32, v29, v30, v31);
  v34 = *(v33 + 16);
  v35 = 32;
  v107 = v5;
  while (v34)
  {
    v36 = *(v33 + v35);
    v35 += 8;
    --v34;
    if (v36 == 35)
    {

      v37 = v2[3];
      v38 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v37);
      v39 = (*(v38 + 56))(v37, v38);
      v40 = [a1 userDistanceHKUnitForActivityType_];
      sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
      v41 = [objc_opt_self() mileUnit];
      v42 = sub_1B4D187AC();

      v43 = objc_opt_self();
      v44 = &selRef_miles;
      if ((v42 & 1) == 0)
      {
        v44 = &selRef_kilometers;
      }

      v45 = [v43 *v44];

      v46 = v2[3];
      v47 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v46);
      v48 = WorkoutRepresentable.splits(userDistanceUnit:)(v45, v46, v47);
      MEMORY[0x1EEE9AC00](v48);
      v104[-2] = v2;
      v49 = v109;
      v50 = sub_1B4996CD0(sub_1B49A2000, &v104[-4], v48);
      v109 = v49;

      goto LABEL_30;
    }
  }

  v51 = v2[3];
  v52 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v51);
  (*(v52 + 88))(v51, v52);
  if (v108(v14, 1, v4) == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v53 = 0;
    v54 = -30.0;
  }

  else
  {
    v55 = v2[3];
    v56 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v55);
    (*(v56 + 80))(v55, v56);
    sub_1B4D176FC();
    v58 = v57;
    v59 = v5[1];
    v59(v8, v4);
    v59(v14, v4);
    v54 = v58 + -30.0;
    if (v54 > 600.0)
    {
      v60 = 0;
      while (1)
      {
        v53 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_73;
        }

        ++v60;
        if (v54 <= v53 * 600.0 + 600.0)
        {
          v61 = 0;
          goto LABEL_19;
        }
      }
    }

    v53 = 0;
  }

  v61 = 1;
LABEL_19:
  v112 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF13C(0, v53 & ~(v53 >> 63), 0);
  if (v53 < 0)
  {
    goto LABEL_75;
  }

  v50 = v112;
  v105 = v8;
  v104[1] = v20;
  if (v53)
  {
    v62 = 1;
    v63 = 600.0;
    while (v54 > v63)
    {
      v112 = v50;
      v65 = *(v50 + 16);
      v64 = *(v50 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_1B4BCF13C((v64 > 1), v65 + 1, 1);
        v50 = v112;
      }

      v66 = v62 * 600.0 + 600.0;
      *(v50 + 16) = v65 + 1;
      v67 = v50 + 16 * v65;
      *(v67 + 32) = v63;
      *(v67 + 40) = 2;
      ++v62;
      v63 = v66;
      if (v62 - v53 == 1)
      {
        if (v54 <= v66)
        {
          goto LABEL_29;
        }

LABEL_63:
        while (!__OFADD__(v53, 1))
        {
          v112 = v50;
          v102 = *(v50 + 16);
          v101 = *(v50 + 24);
          if (v102 >= v101 >> 1)
          {
            sub_1B4BCF13C((v101 > 1), v102 + 1, 1);
            v50 = v112;
          }

          v103 = v50 + 16 * v102;
          *(v103 + 32) = v66;
          v66 = (v53 + 1) * 600.0 + 600.0;
          *(v50 + 16) = v102 + 1;
          *(v103 + 40) = 2;
          ++v53;
          if (v54 <= v66)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_71;
      }
    }

    goto LABEL_70;
  }

  if ((v61 & 1) == 0)
  {
    v66 = 600.0;
    goto LABEL_63;
  }

LABEL_29:
  v8 = v105;
LABEL_30:
  v68 = v2[3];
  v69 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v68);
  v70 = v106;
  (*(v69 + 88))(v68, v69);
  v71 = v108(v70, 1, v4);
  v72 = v107;
  if (v71 == 1)
  {
    sub_1B4975024(v70, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v53 = 0;
    v73 = -30.0;
  }

  else
  {
    v74 = v2[3];
    v75 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v74);
    (*(v75 + 80))(v74, v75);
    sub_1B4D176FC();
    v77 = v76;
    v78 = v72[1];
    v78(v8, v4);
    v78(v70, v4);
    v73 = v77 + -30.0;
    if (v73 > 30.0)
    {
      v79 = 0;
      while (1)
      {
        v53 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          break;
        }

        ++v79;
        if (v73 <= v53 * 30.0 + 30.0)
        {
          v80 = 0;
          goto LABEL_39;
        }
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v53 = 0;
  }

  v80 = 1;
LABEL_39:
  v81 = MEMORY[0x1E69E7CC0];
  v112 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF13C(0, v53 & ~(v53 >> 63), 0);
  if (v53 < 0)
  {
    goto LABEL_74;
  }

  v82 = v112;
  if (v53)
  {
    v83 = 1;
    v84 = 30.0;
    do
    {
      if (v73 <= v84)
      {
        __break(1u);
        goto LABEL_69;
      }

      v112 = v82;
      v86 = *(v82 + 16);
      v85 = *(v82 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_1B4BCF13C((v85 > 1), v86 + 1, 1);
        v82 = v112;
      }

      v87 = v83 * 30.0 + 30.0;
      *(v82 + 16) = v86 + 1;
      v88 = v82 + 16 * v86;
      *(v88 + 32) = v84;
      *(v88 + 40) = 3;
      ++v83;
      v84 = v87;
    }

    while (v83 - v53 != 1);
    v81 = MEMORY[0x1E69E7CC0];
    if (v73 <= v87)
    {
      goto LABEL_49;
    }

LABEL_51:
    while (!__OFADD__(v53, 1))
    {
      v112 = v82;
      v93 = *(v82 + 16);
      v92 = *(v82 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_1B4BCF13C((v92 > 1), v93 + 1, 1);
        v82 = v112;
      }

      v94 = v82 + 16 * v93;
      *(v94 + 32) = v87;
      v87 = (v53 + 1) * 30.0 + 30.0;
      *(v82 + 16) = v93 + 1;
      *(v94 + 40) = 3;
      ++v53;
      if (v73 <= v87)
      {
        goto LABEL_49;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v87 = 30.0;
  if ((v80 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_49:
  v112 = v81;
  v89 = v2[3];
  v90 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v89);
  v91 = (*(v90 + 56))(v89, v90);
  LOBYTE(v89) = [v91 supportsWorkoutVoiceMotivationProgressMoments];

  if (v89)
  {
    sub_1B499740C(v50);
  }

  else
  {
  }

  v95 = v2[3];
  v96 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v95);
  v97 = (*(v96 + 56))(v95, v96);
  v98 = [v97 supportsWorkoutVoiceMotivationBreakthroughMoments];

  if (v98)
  {
    sub_1B499740C(v82);
  }

  else
  {
  }

  v111 = v112;

  v53 = v109;
  sub_1B499F8FC(&v111);
  if (!v53)
  {

    v110 = &unk_1F2CB8550;
    sub_1B499740C(v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C88, &qword_1B4D1BBC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1A800;
    *(inited + 32) = v21;
    *(inited + 40) = 1;
    sub_1B499740C(inited);
    return v110;
  }

LABEL_76:

  __break(1u);
  return result;
}

uint64_t sub_1B4998D28@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for WorkoutSplit() + 24);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 80))(v10, v11);
  sub_1B4D176FC();
  v13 = v12;
  result = (*(v5 + 8))(v8, v4);
  *a2 = v13;
  *(a2 + 8) = 2;
  return result;
}

uint64_t WorkoutReplayer.state(for:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v257 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v273 = &v244 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v272 = &v244 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v300 = &v244 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v301 = &v244 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v299 = &v244 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v298 = &v244 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v296 = &v244 - v24;
  v271 = sub_1B4D179EC();
  v270 = *(v271 - 8);
  v25 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v271);
  v297 = &v244 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_1B4D177CC();
  v268 = *(v269 - 8);
  v27 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v269);
  v295 = &v244 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for HKActivitySummaryRepresentable();
  v255 = *(v256 - 8);
  v29 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v256);
  v294 = &v244 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v287 = &v244 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v291 = &v244 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v293 = &v244 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v267 = &v244 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v285 = &v244 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v284 = &v244 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v283 = &v244 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v292 = &v244 - v48;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v49 = *(v290 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v290);
  v52 = &v244 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v277 = &v244 - v54;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v266 = *(v289 - 8);
  v55 = *(v266 + 64);
  MEMORY[0x1EEE9AC00](v289);
  v288 = &v244 - v56;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v264 = *(v265 - 8);
  v57 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v265);
  v286 = &v244 - v58;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v262 = *(v263 - 8);
  v59 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v263);
  v282 = &v244 - v60;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v260 = *(v261 - 8);
  v61 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v261);
  v281 = &v244 - v62;
  v63 = sub_1B4D1777C();
  v64 = *(v63 - 8);
  v65 = v64[8];
  MEMORY[0x1EEE9AC00](v63);
  v280 = &v244 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v244 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v276 = &v244 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v253 = &v244 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v252 = &v244 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v279 = &v244 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v278 = &v244 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v250 = &v244 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v244 - v84;
  v86 = 0.0;
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  v87 = v2[3];
  v88 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v87);
  (*(v88 + 88))(v87, v88);
  v302 = v64[6];
  v303 = v64 + 6;
  v89 = v302(v85, 1, v63);
  v304 = v63;
  if (v89 == 1)
  {
    sub_1B4975024(v85, &qword_1EB8A6790, &qword_1B4D1BBC0);
  }

  else
  {
    v275 = v69;
    v90 = v63;
    v91 = v2[3];
    v92 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v91);
    v93 = *(v92 + 80);
    v274 = v52;
    v94 = v49;
    v95 = v276;
    v93(v91, v92);
    sub_1B4D176FC();
    v86 = v96;
    v97 = v64[1];
    v98 = v95;
    v49 = v94;
    v52 = v274;
    v97(v98, v90);
    v99 = v90;
    v69 = v275;
    v97(v85, v99);
  }

  if (v86 < a2)
  {
    a2 = v86;
  }

  v100 = v2[3];
  v101 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v100);
  v258 = (*(v101 + 104))(v100, v101);
  sub_1B499AF30(v281, a2);
  sub_1B499B278(v282, a2);
  sub_1B499B958(v286, a2);
  sub_1B499BC94(v288);
  v102 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  v103 = v3[3];
  v104 = v3[4];
  v105 = __swift_project_boxed_opaque_existential_1(v3, v103);
  sub_1B49A79FC(v105, v102, v103, v104);
  v249 = v106;
  v107 = objc_opt_self();
  v108 = [v107 minutes];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  v109 = [v107 seconds];
  v110 = v290;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v112 = v111;
  v254 = v49;
  v113 = *(v49 + 8);
  v247 = v49 + 8;
  v246 = v113;
  v113(v52, v110);
  v114 = a2 - v112;
  if (a2 - v112 < 0.0)
  {
    v114 = 0.0;
  }

  sub_1B499C124(v292, v114, a2);
  v115 = v3[3];
  v116 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v115);
  (*(v116 + 80))(v115, v116);
  v117 = v276;
  sub_1B4D1770C();
  v274 = v64;
  v118 = v64[1];
  v119 = v304;
  v118(v69, v304);
  v120 = v3[3];
  v121 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v120);
  v122 = (*(v121 + 216))(v120, v121);
  MEMORY[0x1EEE9AC00](v122);
  v123 = v117;
  *(&v244 - 2) = v117;
  v248 = sub_1B499E244(sub_1B49A2020, (&v244 - 4), v124);
  v118(v117, v119);
  v126 = v3[3];
  v125 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v126);
  (*(v125 + 80))(v126, v125);
  sub_1B4D1770C();
  v118(v69, v119);
  v127 = v3[3];
  v128 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v127);
  v129 = (*(v128 + 232))(v127, v128);
  MEMORY[0x1EEE9AC00](v129);
  *(&v244 - 2) = v123;
  sub_1B499E458(sub_1B49A2040, (&v244 - 4), v130, type metadata accessor for LocationCoordinate, type metadata accessor for LocationCoordinate, type metadata accessor for LocationCoordinate, sub_1B4BCF17C);
  v245 = v131;
  v244 = 0;
  v275 = v118;
  v118(v123, v119);
  sub_1B499C5FC(v293);
  sub_1B499CAF8(v294, a2);
  v132 = v3[3];
  v133 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v132);
  (*(v133 + 24))(v132, v133);
  v134 = v3[3];
  v135 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v134);
  v251 = (*(v135 + 56))(v134, v135);
  v136 = v3[3];
  v137 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v136);
  v138 = v250;
  (*(v137 + 88))(v136, v137);
  v139 = v302(v138, 1, v119);
  v259 = v64 + 1;
  if (v139 != 1)
  {
    v143 = v3[3];
    v144 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v143);
    (*(v144 + 80))(v143, v144);
    sub_1B4D176FC();
    v146 = v145;
    v147 = v123;
    v141 = v275;
    (v275)(v147, v119);
    v141(v138, v119);
    v140 = v252;
    if (a2 != v146)
    {
      goto LABEL_12;
    }

LABEL_14:
    v142 = 3;
    goto LABEL_15;
  }

  sub_1B4975024(v138, &qword_1EB8A6790, &qword_1B4D1BBC0);
  v140 = v252;
  v141 = v275;
  if (a2 == 0.0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v142 = 2;
LABEL_15:
  v250 = v142;
  v148 = v3[3];
  v149 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v148);
  (*(v149 + 64))(v148, v149);
  v252 = sub_1B499DC34();
  v150 = v3[3];
  v151 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v150);
  (*(v151 + 80))(v150, v151);
  v152 = v3[3];
  v153 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v152);
  v154 = v278;
  (*(v153 + 80))(v152, v153);
  v155 = *(v274 + 7);
  v156 = v154;
  v157 = v304;
  v155(v156, 0, 1, v304);
  v158 = v3[3];
  v159 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v158);
  (*(v159 + 88))(v158, v159);
  if (v302(v140, 1, v157) == 1)
  {
    sub_1B4975024(v140, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v160 = a2 == 0.0;
  }

  else
  {
    v161 = v3[3];
    v162 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v161);
    v163 = v276;
    (*(v162 + 80))(v161, v162);
    sub_1B4D176FC();
    v165 = v164;
    v141(v163, v157);
    v141(v140, v157);
    v160 = a2 == v165;
  }

  v166 = v248;
  if (v160)
  {
    v167 = v3[3];
    v168 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v167);
    (*(v168 + 88))(v167, v168);
    v170 = v304;
  }

  else
  {
    v169 = v155;
    v170 = v304;
    v169(v279, 1, 1, v304);
  }

  v171 = type metadata accessor for WeatherCondition();
  (*(*(v171 - 8) + 56))(v296, 1, 1, v171);
  v172 = v260;
  v173 = v291;
  v174 = v261;
  (*(v260 + 16))(v291, v281, v261);
  (*(v172 + 56))(v173, 0, 1, v174);
  v175 = v262;
  v176 = *(v262 + 16);
  v177 = v298;
  v178 = v282;
  v179 = v263;
  v176(v298, v282, v263);
  v180 = *(v175 + 56);
  v180(v177, 0, 1, v179);
  v181 = v299;
  v176(v299, v178, v179);
  v180(v181, 0, 1, v179);
  v182 = v264;
  v183 = v301;
  v184 = v265;
  (*(v264 + 16))(v301, v286, v265);
  (*(v182 + 56))(v183, 0, 1, v184);
  v185 = v266;
  v186 = v283;
  v187 = v289;
  (*(v266 + 16))(v283, v288, v289);
  v188 = *(v185 + 56);
  v188(v186, 0, 1, v187);
  sub_1B499C124(v284, 0.0, a2);
  v188(v285, 1, 1, v187);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  (*(*(v189 - 8) + 56))(v300, 1, 1, v189);
  sub_1B4974FBC(v293, v287, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v190 = v3[3];
  v191 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v190);
  v192 = v253;
  (*(v191 + 88))(v190, v191);
  if (v302(v192, 1, v170) == 1)
  {
    sub_1B4975024(v192, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v193 = a2 == 0.0;
  }

  else
  {
    v194 = v170;
    v195 = v3[3];
    v196 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v195);
    v197 = v188;
    v198 = v192;
    v199 = v276;
    (*(v196 + 80))(v195, v196);
    sub_1B4D176FC();
    v201 = v200;
    v202 = v275;
    (v275)(v199, v194);
    v203 = v198;
    v188 = v197;
    v202(v203, v194);
    v193 = a2 == v201;
  }

  v204 = v273;
  v205 = v257;
  if (v193)
  {
    v206 = v3[3];
    v207 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v206);
    v208 = (*(v207 + 224))(v206, v207);
  }

  else
  {
    v208 = sub_1B4C945C0(MEMORY[0x1E69E7CC0]);
  }

  v276 = v208;
  v209 = v290;
  v210 = sub_1B4C94F3C(MEMORY[0x1E69E7CC0]);
  v211 = v272;
  sub_1B49A22B8(v294, v272, type metadata accessor for HKActivitySummaryRepresentable);
  (*(v255 + 56))(v211, 0, 1, v256);
  sub_1B4974FBC(v292, v267, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v212 = *(v249 + 16);
  v213 = 32;
  while (v212)
  {
    v214 = *(v249 + v213);
    v213 += 8;
    --v212;
    if (v214 == 35)
    {

      v215 = 1;
      v216 = v254;
      goto LABEL_32;
    }
  }

  v216 = v254;
  (*(v254 + 16))(v204, v277, v209);
  v215 = 0;
LABEL_32:
  v217 = *(v216 + 56);
  (v217)(v204, v215, 1, v209);
  v218 = type metadata accessor for WorkoutState();
  v219 = v205 + v218[21];
  v188(v219, 1, 1, v289);
  v302 = (v205 + v218[22]);
  v217();
  (*(v268 + 16))(v205, v295, v269);
  *(v205 + v218[6]) = v251;
  *(v205 + v218[5]) = v250;
  (*(v270 + 16))(v205 + v218[7], v297, v271);
  *(v205 + v218[8]) = v252;
  (*(v274 + 2))(v205 + v218[9], v280, v304);
  sub_1B4974FBC(v278, v205 + v218[10], &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4974FBC(v279, v205 + v218[11], &qword_1EB8A6790, &qword_1B4D1BBC0);
  *(v205 + v218[12]) = a2;
  v220 = v258;
  *(v205 + v218[13]) = v258;
  sub_1B4974FBC(v296, v205 + v218[14], &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  sub_1B4974FBC(v291, v205 + v218[15], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v298, v205 + v218[16], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v299, v205 + v218[17], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v301, v205 + v218[18], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4974FBC(v283, v205 + v218[19], &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v284, v205 + v218[20], &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v285, v205 + v218[23], &qword_1EB8A6CC8, &unk_1B4D464B0);
  *(v205 + v218[24]) = 0;
  sub_1B4974FBC(v300, v205 + v218[25], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4974FBC(v287, v205 + v218[26], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v166 >> 62)
  {
    v221 = sub_1B4D18ABC();
    v303 = v219;
    if (v221)
    {
      goto LABEL_34;
    }

LABEL_47:
    v235 = v220;

    v223 = MEMORY[0x1E69E7CC0];
    goto LABEL_48;
  }

  v221 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v303 = v219;
  if (!v221)
  {
    goto LABEL_47;
  }

LABEL_34:
  v305 = MEMORY[0x1E69E7CC0];
  v222 = v220;
  sub_1B4BCF1BC(0, v221 & ~(v221 >> 63), 0);
  if (v221 < 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v223 = v305;
  if ((v166 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v221; ++i)
    {
      v225 = MEMORY[0x1B8C7CD90](i, v166);
      v305 = v223;
      v227 = *(v223 + 16);
      v226 = *(v223 + 24);
      if (v227 >= v226 >> 1)
      {
        sub_1B4BCF1BC((v226 > 1), v227 + 1, 1);
        v223 = v305;
      }

      *(v223 + 16) = v227 + 1;
      *(v223 + 8 * v227 + 32) = v225;
    }
  }

  else
  {
    v228 = 32;
    do
    {
      v229 = *(v166 + v228);
      v305 = v223;
      v230 = *(v223 + 16);
      v231 = *(v223 + 24);
      v232 = v229;
      if (v230 >= v231 >> 1)
      {
        v233 = v231 > 1;
        v234 = v232;
        sub_1B4BCF1BC(v233, v230 + 1, 1);
        v232 = v234;
        v223 = v305;
      }

      *(v223 + 16) = v230 + 1;
      *(v223 + 8 * v230 + 32) = v232;
      v228 += 8;
      --v221;
    }

    while (v221);
  }

  v220 = v258;
LABEL_48:
  *(v205 + v218[27]) = v223;
  v236 = sub_1B4BAF044(v276);

  *(v205 + v218[28]) = v236;
  v237 = v244;
  sub_1B4996E40(v210);
  v239 = v238;

  if (*(v239 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F0, &qword_1B4D1BC20);
    v240 = sub_1B4D18AEC();
  }

  else
  {
    v240 = MEMORY[0x1E69E7CC8];
  }

  v305 = v240;

  sub_1B499F570(v241, 1, &v305);
  if (!v237)
  {

    *(v205 + v218[29]) = v305;
    sub_1B4975024(v287, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v300, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    sub_1B4975024(v285, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B4975024(v284, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B4975024(v283, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B4975024(v301, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v299, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    sub_1B4975024(v298, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    sub_1B4975024(v291, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v296, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
    sub_1B4975024(v279, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4975024(v278, &qword_1EB8A6790, &qword_1B4D1BBC0);
    (v275)(v280, v304);
    (*(v270 + 8))(v297, v271);
    (*(v268 + 8))(v295, v269);
    sub_1B49A2320(v294, type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4975024(v293, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v292, &qword_1EB8A6CC8, &unk_1B4D464B0);
    v246(v277, v290);
    (*(v266 + 8))(v288, v289);
    (*(v264 + 8))(v286, v265);
    (*(v262 + 8))(v282, v263);
    (*(v260 + 8))(v281, v261);
    *(v205 + v218[30]) = v245;
    v242 = v205 + v218[31];
    *v242 = xmmword_1B4D1A640;
    *(v242 + 16) = 0u;
    *(v242 + 32) = 0u;
    *(v242 + 48) = 0u;
    *(v242 + 64) = 0u;
    *(v242 + 80) = 0;
    sub_1B498B270(v272, v205 + v218[32], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    *(v205 + v218[33]) = 0;
    sub_1B49A205C(v267, v303, &qword_1EB8A6CC8, &unk_1B4D464B0);
    return sub_1B49A205C(v273, v302, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  }

LABEL_54:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B499AF30@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v7 = WorkoutRepresentable.distanceQuantityType()();
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = v2[3];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v9);
  v11 = (*(v10 + 264))(v8, v9, v10);
  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_22;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v13)
  {
LABEL_4:

LABEL_5:
    v12 = MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v14 = sub_1B49E6974(v12);

    if (!v14)
    {
      break;
    }

    v27[4] = a1;
    MEMORY[0x1EEE9AC00](v15);
    v27[2] = v3;
    *&v27[3] = a2;
    v16 = sub_1B499E244(sub_1B49A24A8, v27, v14);
    v12 = v16;
    if (v16 >> 62)
    {
      v3 = sub_1B4D18ABC();
      if (!v3)
      {
LABEL_25:

        v26 = [objc_opt_self() miles];
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        return sub_1B4D1741C();
      }
    }

    else
    {
      v3 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_25;
      }
    }

    v8 = 0;
    a2 = 0.0;
    a1 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1B8C7CD90](v8, v12);
      }

      else
      {
        if (v8 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v17 = *(v12 + 8 * v8 + 32);
      }

      v18 = v17;
      v19 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v20 = [v17 quantity];
      v21 = [objc_opt_self() mileUnit];
      [v20 doubleValueForUnit_];
      v23 = v22;

      a2 = a2 + v23;
      ++v8;
      if (v19 == v3)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v25 = sub_1B4D18ABC();

    if (!v25)
    {
      goto LABEL_4;
    }
  }

  [objc_opt_self() miles];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);

  return sub_1B4D1741C();
}

void sub_1B499B278(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v57 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v55 = *(v13 - 8);
  v56 = v13;
  v14 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v17 = sub_1B499EE0C();
  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = v17;
  v20 = v2[3];
  v19 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v20);
  v21 = (*(v19 + 264))(v18, v20, v19);
  v22 = v21;
  if (!(v21 >> 62))
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v23)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v43 = sub_1B4D18ABC();

  if (!v43)
  {
LABEL_4:

LABEL_5:
    v22 = MEMORY[0x1E69E7CC0];
  }

LABEL_6:
  v24 = sub_1B49E6974(v22);

  if (v24)
  {
    if (v24 >> 62)
    {
      v25 = sub_1B4D18ABC();
      if (v25)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_9:
        MEMORY[0x1EEE9AC00](v25);
        *(&v54 - 2) = v3;
        *(&v54 - 1) = a2;
        v26 = 0;
        sub_1B499E244(sub_1B49A2484, (&v54 - 4), v24);

        v58 = sub_1B49EE87C(v27);
        sub_1B499FA54(&v58);

        v28 = v58;
        if (v58 < 0 || (v58 & 0x4000000000000000) != 0)
        {
          v29 = sub_1B4D18ABC();
          if (v29)
          {
LABEL_12:
            v30 = __OFSUB__(v29, 1);
            v31 = v29 - 1;
            if (v30)
            {
              __break(1u);
            }

            else if ((v28 & 0xC000000000000001) == 0)
            {
              if ((v31 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v31 < *(v28 + 16))
              {
                v32 = *(v28 + 8 * v31 + 32);
                goto LABEL_17;
              }

              __break(1u);
              goto LABEL_45;
            }

            v32 = MEMORY[0x1B8C7CD90](v31, v28);
LABEL_17:
            v26 = v32;

            v33 = [v26 quantity];
            v34 = objc_opt_self();
            v35 = [v34 meterUnit];
            v36 = [v34 secondUnit];
            v37 = [v35 unitDividedByUnit_];

            [v33 doubleValueForUnit_];
            v39 = v38;

            if (v39 > 0.0)
            {
              if (qword_1EDC36E80 == -1)
              {
LABEL_19:
                v40 = qword_1EDC36E88;
                type metadata accessor for UnitPace();
                v41 = v40;
                sub_1B4D1741C();
                if (qword_1EB8A6478 != -1)
                {
                  swift_once();
                }

                v42 = v56;
                sub_1B4D1745C();

                (*(v55 + 8))(v16, v42);
                return;
              }

LABEL_45:
              swift_once();
              goto LABEL_19;
            }

            goto LABEL_38;
          }
        }

        else
        {
          v29 = *(v58 + 16);
          if (v29)
          {
            goto LABEL_12;
          }
        }

        v26 = 0;
LABEL_38:
        if (qword_1EB8A6478 != -1)
        {
          swift_once();
        }

        v52 = qword_1EB8AC490;
        type metadata accessor for UnitPace();
        v53 = v52;
        sub_1B4D1741C();

        return;
      }
    }
  }

  sub_1B499AF30(v9, a2);
  v44 = [objc_opt_self() meters];
  sub_1B4D1745C();

  v45 = *(v6 + 8);
  v45(v9, v5);
  sub_1B4D1742C();
  if (v46 <= 0.0)
  {
    if (qword_1EB8A6478 != -1)
    {
      swift_once();
    }

    v50 = qword_1EB8AC490;
    type metadata accessor for UnitPace();
    v51 = v50;
    sub_1B4D1741C();
  }

  else
  {
    sub_1B4D1742C();
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    v47 = qword_1EDC36E88;
    type metadata accessor for UnitPace();
    v48 = v47;
    sub_1B4D1741C();
    if (qword_1EB8A6478 != -1)
    {
      swift_once();
    }

    v49 = v56;
    sub_1B4D1745C();
    (*(v55 + 8))(v16, v49);
  }

  v45(v12, v5);
}

uint64_t sub_1B499B958@<X0>(unint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
  v8 = MEMORY[0x1B8C7CB40](*MEMORY[0x1E696BC38]);
  v9 = (*(v7 + 264))(v8, v6, v7);

  v10 = sub_1B49E6974(v9);

  if (v10)
  {
    MEMORY[0x1EEE9AC00](v11);
    v29[2] = v3;
    *&v29[3] = a2;
    v12 = sub_1B499E244(sub_1B49A24A8, v29, v10);
    v13 = v12;
    if (v12 >> 62)
    {
      goto LABEL_19;
    }

    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = a1; v14; i = a1)
    {
      v15 = 0;
      a1 = v13 & 0xC000000000000001;
      v16 = 0.0;
      while (1)
      {
        if (a1)
        {
          v17 = MEMORY[0x1B8C7CD90](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v17 = *(v13 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v20 = [v17 quantity];
        v21 = [objc_opt_self() largeCalorieUnit];
        [v20 doubleValueForUnit_];
        v23 = v22;

        v16 = v16 + v23;
        ++v15;
        if (v19 == v14)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v14 = sub_1B4D18ABC();
    }

LABEL_20:

    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v27 = qword_1EDC36DF8;
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v28 = v27;
    return sub_1B4D1741C();
  }

  else
  {
    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDC36DF8;
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v25 = v24;

    return sub_1B4D1741C();
  }
}

uint64_t sub_1B499BC94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31[1] = a1;
  v3 = sub_1B4D1777C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = v1[3];
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
  v13 = MEMORY[0x1B8C7CB40](*MEMORY[0x1E696BD30]);
  v14 = (*(v12 + 264))(v13, v11, v12);

  v15 = sub_1B49E6974(v14);

  if (v15)
  {
    v16 = v2[3];
    v17 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v16);
    (*(v17 + 80))(v16, v17);
    sub_1B4D1770C();
    v18 = *(v4 + 8);
    v19 = v18(v7, v3);
    MEMORY[0x1EEE9AC00](v19);
    v31[-2] = v10;

    v32 = sub_1B49EE87C(v20);
    sub_1B499FAD0(sub_1B49A2464, &v31[-4]);

    v21 = v32;
    if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
    {
      if (sub_1B4D18ABC())
      {
        goto LABEL_5;
      }
    }

    else if (*(v32 + 16))
    {
LABEL_5:
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1B8C7CD90](0, v21);
LABEL_8:
        v23 = v22;

        v24 = [v23 quantity];

        v25 = [objc_opt_self() _countPerMinuteUnit];
        [v24 doubleValueForUnit_];

        if (qword_1EDC36DD8 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

      if (*(v21 + 16))
      {
        v22 = *(v21 + 32);
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_20;
    }

    if (qword_1EDC36DD8 == -1)
    {
LABEL_16:
      v29 = qword_1EDC36DE0;
      sub_1B498AFB8(0, &qword_1EDC378B8, 0x1E696B038);
      v30 = v29;
      sub_1B4D1741C();
      return v18(v10, v3);
    }

LABEL_21:
    swift_once();
    goto LABEL_16;
  }

  if (qword_1EDC36DD8 != -1)
  {
LABEL_20:
    swift_once();
  }

  v26 = qword_1EDC36DE0;
  sub_1B498AFB8(0, &qword_1EDC378B8, 0x1E696B038);
  v27 = v26;

  return sub_1B4D1741C();
}

uint64_t sub_1B499C124@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v8);
  sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
  v10 = MEMORY[0x1B8C7CB40](*MEMORY[0x1E696BD30]);
  v11 = (*(v9 + 264))(v10, v8, v9);

  v12 = sub_1B49E6974(v11);

  if (!v12)
  {
    goto LABEL_25;
  }

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= 1)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v13 = sub_1B4D18ABC();
  if (v13 < 1)
  {
LABEL_24:

LABEL_25:
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
    v38 = *(*(v37 - 8) + 56);

    return v38(a1, 1, 1, v37);
  }

LABEL_4:
  MEMORY[0x1EEE9AC00](v13);
  v44[2] = v4;
  *&v44[3] = a2;
  *&v44[4] = a3;
  v14 = sub_1B499E244(sub_1B49A2440, v44, v12);
  v15 = v14;
  if (v14 >> 62)
  {
    v16 = sub_1B4D18ABC();
    if (v16)
    {
LABEL_6:
      v45 = a1;
      v46 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF15C(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
        __break(1u);
        goto LABEL_36;
      }

      v17 = v46;
      v18 = objc_opt_self();
      for (i = 0; i != v16; ++i)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1B8C7CD90](i, v15);
        }

        else
        {
          v20 = *(v15 + 8 * i + 32);
        }

        v21 = v20;
        v22 = [v20 quantity];
        v23 = [v18 _countPerMinuteUnit];
        [v22 doubleValueForUnit_];
        v25 = v24;

        v46 = v17;
        v27 = *(v17 + 16);
        v26 = *(v17 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1B4BCF15C((v26 > 1), v27 + 1, 1);
          v17 = v46;
        }

        *(v17 + 16) = v27 + 1;
        *(v17 + 8 * v27 + 32) = v25;
      }

      a1 = v45;
      v28 = *(v17 + 16);
      if (v28)
      {
        goto LABEL_15;
      }

LABEL_30:
      v30 = 0.0;
      goto LABEL_31;
    }
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_6;
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
  v28 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v28)
  {
    goto LABEL_30;
  }

LABEL_15:
  if (v28 > 3)
  {
    v29 = v28 & 0x7FFFFFFFFFFFFFFCLL;
    v31 = (v17 + 48);
    v30 = 0.0;
    v32 = v28 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v33 = *v31;
      v30 = v30 + *(v31 - 2) + *(v31 - 1) + *v31 + v31[1];
      v31 += 4;
      v32 -= 4;
    }

    while (v32);
    if (v28 == v29)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0.0;
  }

  v34 = v28 - v29;
  v35 = (v17 + 8 * v29 + 32);
  do
  {
    v36 = *v35++;
    v30 = v30 + v36;
    --v34;
  }

  while (v34);
LABEL_31:

  if (v30 / v28 > 0.0)
  {
    if (qword_1EDC36DD8 == -1)
    {
LABEL_33:
      v40 = qword_1EDC36DE0;
      sub_1B498AFB8(0, &qword_1EDC378B8, 0x1E696B038);
      v41 = v40;
      sub_1B4D1741C();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
      return (*(*(v42 - 8) + 56))(a1, 0, 1, v42);
    }

LABEL_36:
    swift_once();
    goto LABEL_33;
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  return (*(*(v43 - 8) + 56))(a1, 1, 1, v43);
}

uint64_t sub_1B499C5FC@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v34 - v8;
  v9 = sub_1B4D1777C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v18 = v1[3];
  v17 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v18);
  (*(v17 + 80))(v18, v17);
  sub_1B4D1770C();
  v19 = *(v10 + 8);
  v19(v13, v9);
  v20 = v1[3];
  v21 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v20);
  v22 = (*(v21 + 232))(v20, v21);
  v39 = v16;
  sub_1B499E458(sub_1B49A24C8, v38, v22, type metadata accessor for LocationCoordinate, type metadata accessor for LocationCoordinate, type metadata accessor for LocationCoordinate, sub_1B4BCF17C);
  v24 = v23;
  v19(v16, v9);
  if (*(v24 + 16))
  {
    v25 = type metadata accessor for LocationCoordinate();
    v26 = v37;
    (*(v6 + 16))(v37, v24 + *(v25 + 28) + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80)), v5);
    v27 = *(v6 + 56);
    v27(v26, 0, 1, v5);
    v28 = v35;
    (*(v6 + 32))(v35, v26, v5);
  }

  else
  {
    v27 = *(v6 + 56);
    v29 = v37;
    v27(v37, 1, 1, v5);
    v30 = [objc_opt_self() byte_1E7C111E9];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v28 = v35;
    sub_1B4D1741C();
    if ((*(v6 + 48))(v29, 1, v5) != 1)
    {
      sub_1B4975024(v37, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    }
  }

  sub_1B4997EFC(v24, v28, 0.0);

  v31 = [objc_opt_self() meters];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v32 = v36;
  sub_1B4D1741C();
  v27(v32, 0, 1, v5);
  return (*(v6 + 8))(v28, v5);
}

uint64_t sub_1B499CAF8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v169 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v174 = &v163 - v7;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v8 = *(v171 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v164 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v163 = &v163 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v163 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v173 = &v163 - v17;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v179 = *(v187 - 8);
  v18 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v166 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v177 = &v163 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v182 = &v163 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v165 = &v163 - v26;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v178 = *(v188 - 8);
  v27 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v172 = &v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v181 = &v163 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v184 = &v163 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v186 = &v163 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v163 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v163 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v163 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v185 = &v163 - v48;
  v49 = v2[8];
  v50 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v49);
  (*(v50 + 32))(v49, v50);
  v51 = *(v40 + 48);
  v52 = v51(v38, 1, v39);
  v170 = v8;
  v175 = v40;
  if (v52 == 1)
  {
    v53 = v39;
    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v54 = qword_1EDC36DF8;
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v55 = v54;
    sub_1B4D1741C();
    v56 = v51(v38, 1, v53);
    v57 = v53;
    v40 = v175;
    if (v56 != 1)
    {
      sub_1B4975024(v38, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    }
  }

  else
  {
    (*(v40 + 32))(v46, v38, v39);
    v57 = v39;
  }

  sub_1B499B958(v43, a2);
  sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  sub_1B4D1743C();
  v58 = *(v40 + 8);
  v58(v43, v57);
  v168 = v40 + 8;
  v167 = v58;
  v58(v46, v57);
  v59 = objc_opt_self();
  v60 = [v59 seconds];
  v61 = sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  v62 = [v59 minutes];
  v63 = v184;
  v64 = v188;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v66 = v65;
  v67 = v65;
  v68 = v178;
  v69 = (v178 + 8);
  v180 = *(v178 + 8);
  v180(v63, v64);
  if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v66 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v66 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_21;
  }

  v176 = v57;
  v70 = v3[8];
  v71 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v70);
  v72 = *(v71 + 48);
  v73 = v165;
  v74 = v71;
  v75 = v188;
  v72(v70, v74);
  v76 = *(v68 + 48);
  if (v76(v73, 1, v75) == 1)
  {
    v77 = [v59 minutes];
    v78 = v172;
    sub_1B4D1741C();
    v79 = v76(v73, 1, v75);
    v80 = v78;
    v68 = v170;
    if (v79 != 1)
    {
      sub_1B4975024(v73, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    }
  }

  else
  {
    v80 = v172;
    (*(v68 + 32))(v172, v73, v75);
    v68 = v170;
  }

  v81 = [v59 minutes];
  v82 = v184;
  sub_1B4D1741C();
  sub_1B4D1743C();
  v83 = v82;
  v84 = v180;
  v180(v83, v75);
  v84(v80, v75);
  v85 = v3[8];
  v86 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v85);
  v87 = v173;
  (*(v86 + 56))(v85, v86);
  v88 = v87;
  v57 = v179;
  v89 = *(v179 + 48);
  v64 = v187;
  v90 = v89(v88, 1, v187);
  v172 = v69;
  if (v90 == 1)
  {
    v91 = v68;
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v92 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v93 = v92;
    sub_1B4D1741C();
    v94 = v173;
    v95 = v187;
    v96 = v89(v173, 1, v187);
    v68 = v91;
    v64 = v95;
    v57 = v179;
    v61 = v174;
    if (v96 != 1)
    {
      sub_1B4975024(v94, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    }
  }

  else
  {
    (*(v57 + 32))(v177, v88, v64);
    v61 = v174;
  }

  v97 = [v59 hours];
  v98 = v184;
  v99 = v188;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v180(v98, v99);
  if (qword_1EDC36E70 != -1)
  {
    goto LABEL_29;
  }

LABEL_21:
  v100 = qword_1EDC36E78;
  type metadata accessor for UnitCount();
  v101 = v100;
  v102 = v166;
  sub_1B4D1741C();
  v103 = v177;
  sub_1B4D1743C();
  v104 = *(v57 + 8);
  v104(v102, v64);
  v184 = (v57 + 8);
  v177 = v104;
  v104(v103, v64);
  v105 = v3[8];
  v106 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v105);
  (*(v106 + 112))(v105, v106);
  v107 = *(v68 + 48);
  v108 = v171;
  if (v107(v61, 1, v171) == 1)
  {
    v109 = [objc_opt_self() miles];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v110 = v163;
    sub_1B4D1741C();
    v111 = v164;
    sub_1B499AF30(v164, a2);
    sub_1B4D1743C();
    v112 = *(v68 + 8);
    v112(v111, v108);
    v113 = v174;
    v112(v110, v108);
    v114 = v68;
    if (v107(v113, 1, v108) != 1)
    {
      sub_1B4975024(v113, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    }
  }

  else
  {
    (*(v68 + 32))(v183, v61, v108);
    v114 = v68;
  }

  v116 = v3[8];
  v115 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v116);
  (*(*(v115 + 8) + 8))(&v189, v116);
  v174 = v189;
  v117 = v3[8];
  v118 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v117);
  v119 = *(v118 + 64);
  v120 = type metadata accessor for HKActivitySummaryRepresentable();
  v121 = v169;
  v122 = v169 + v120[7];
  v119(v117, v118);
  v123 = v120[8];
  v124 = v175;
  v125 = v176;
  (*(v175 + 16))(v121 + v123, v185, v176);
  (*(v124 + 56))(v121 + v123, 0, 1, v125);
  v126 = v3[8];
  v127 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v126);
  v128 = v121 + v120[9];
  (*(v127 + 72))(v126, v127);
  v129 = v3[8];
  v130 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v129);
  v131 = v121 + v120[10];
  (*(v130 + 40))(v129, v130);
  v132 = v3[8];
  v133 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v132);
  v134 = v121 + v120[11];
  (*(v133 + 80))(v132, v133);
  v135 = v120[12];
  v136 = v178;
  v137 = v188;
  (*(v178 + 16))(v121 + v135, v181, v188);
  (*(v136 + 56))(v121 + v135, 0, 1, v137);
  v138 = v3[8];
  v139 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v138);
  v140 = v121 + v120[13];
  (*(v139 + 88))(v138, v139);
  v141 = v120[14];
  v142 = v179;
  v143 = v187;
  (*(v179 + 16))(v121 + v141, v182, v187);
  (*(v142 + 56))(v121 + v141, 0, 1, v143);
  v144 = v3[8];
  v145 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v144);
  v146 = v121 + v120[15];
  (*(v145 + 96))(v144, v145);
  v147 = v3[8];
  v148 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v147);
  v149 = v121 + v120[16];
  (*(v148 + 104))(v147, v148);
  v150 = v120[17];
  (*(v114 + 16))(v121 + v150, v183, v108);
  (*(v114 + 56))(v121 + v150, 0, 1, v108);
  v151 = v3[8];
  v152 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v151);
  v153 = (*(v152 + 120))(v151, v152);
  LOBYTE(v152) = v154;
  v155 = v108;
  v156 = v3[8];
  v157 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v156);
  LOBYTE(v150) = (*(v157 + 128))(v156, v157);
  (*(v114 + 8))(v183, v155);
  (v177)(v182, v187);
  v158 = v180;
  v159 = v188;
  v180(v181, v188);
  v158(v186, v159);
  result = v167(v185, v176);
  v161 = v120[19];
  v162 = v121 + v120[18];
  *(v121 + 8) = 0;
  *(v121 + 16) = 0;
  *v121 = v174;
  *(v121 + 24) = 1;
  *v162 = v153;
  *(v162 + 8) = v152 & 1;
  *(v121 + v161) = v150;
  return result;
}

uint64_t sub_1B499DC34()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = (*(v3 + 56))(v2, v3);
  v5 = [v4 effectiveTypeIdentifier];

  v6 = v5 - 16;
  if ((v5 - 16) <= 0x37)
  {
    if (((1 << v6) & 0x800410000011) != 0)
    {
      if (qword_1EB8A5FE0 == -1)
      {
      }

LABEL_32:
      swift_once();
    }

    if (((1 << v6) & 0xC0001000000100) != 0)
    {
      if (qword_1EB8A5FE0 == -1)
      {
LABEL_5:
        v7 = qword_1EB8F3A90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D10, &qword_1B4D1BC98);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B4D1A800;
        v9 = qword_1EB8A5FD8;

        if (v9 != -1)
        {
          swift_once();
        }

        v10 = word_1EB8F3A70;
        v11 = HIBYTE(word_1EB8F3A70);
        v12 = byte_1EB8F3A72;
        v13 = byte_1EB8F3A88;
        *(inited + 32) = qword_1EB8F3A68;
        *(inited + 40) = v10;
        *(inited + 41) = v11;
        *(inited + 42) = v12;
        *(inited + 48) = xmmword_1EB8F3A78;
        *(inited + 64) = v13;
LABEL_8:
        sub_1B49974F8(inited);
        return v7;
      }

LABEL_33:
      swift_once();
      goto LABEL_5;
    }

    if (v5 == 37)
    {
      v15 = v1[3];
      v16 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v15);
      v17 = (*(v16 + 56))(v15, v16);
      v18 = [v17 isIndoor];

      if (v18)
      {
        if (qword_1EB8A5FE0 == -1)
        {
          goto LABEL_5;
        }

        goto LABEL_33;
      }

LABEL_24:
      if (qword_1EB8A5FE8 == -1)
      {
      }

      goto LABEL_32;
    }
  }

  if (v5 == 13)
  {
    v19 = v1[3];
    v20 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v19);
    v21 = (*(v20 + 56))(v19, v20);
    v22 = [v21 isIndoor];

    if (v22)
    {
      if (qword_1EB8A5FE0 != -1)
      {
        swift_once();
      }

      v7 = qword_1EB8F3A90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D10, &qword_1B4D1BC98);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B4D1AA70;
      v23 = qword_1EB8A5FB8;

      if (v23 != -1)
      {
        swift_once();
      }

      v24 = word_1EB8F39D0;
      v25 = HIBYTE(word_1EB8F39D0);
      v26 = byte_1EB8F39D2;
      v27 = byte_1EB8F39E8;
      *(inited + 32) = qword_1EB8F39C8;
      *(inited + 40) = v24;
      *(inited + 41) = v25;
      *(inited + 42) = v26;
      *(inited + 48) = xmmword_1EB8F39D8;
      *(inited + 64) = v27;
      if (qword_1EB8A5FC0 != -1)
      {
        swift_once();
      }

      v28 = word_1EB8F39F8;
      v29 = HIBYTE(word_1EB8F39F8);
      v30 = byte_1EB8F39FA;
      v31 = byte_1EB8F3A10;
      *(inited + 72) = qword_1EB8F39F0;
      *(inited + 80) = v28;
      *(inited + 81) = v29;
      *(inited + 82) = v30;
      *(inited + 88) = xmmword_1EB8F3A00;
      *(inited + 104) = v31;
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v32 = sub_1B4D17F6C();
  __swift_project_value_buffer(v32, qword_1EDC3CED0);
  sub_1B49A218C(v1, v45);
  v33 = sub_1B4D17F5C();
  v34 = sub_1B4D1872C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44 = v36;
    *v35 = 136315138;
    v37 = v46;
    v38 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v39 = (*(v38 + 56))(v37, v38);
    [v39 effectiveTypeIdentifier];

    type metadata accessor for HKWorkoutActivityType(0);
    v40 = sub_1B4D181AC();
    v42 = v41;
    sub_1B49A21C4(v45);
    v43 = sub_1B49558AC(v40, v42, &v44);

    *(v35 + 4) = v43;
    _os_log_impl(&dword_1B4953000, v33, v34, "Unexpecteded workout type found %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1B8C7DDA0](v36, -1, -1);
    MEMORY[0x1B8C7DDA0](v35, -1, -1);
  }

  else
  {

    sub_1B49A21C4(v45);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B499E244(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B4D18ABC())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x1B8C7CD90](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1B4D189EC();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_1B4D18A2C();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_1B4D18A3C();
        sub_1B4D189FC();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

void sub_1B499E458(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v25 = a7;
  v30 = a6;
  v32 = a1;
  v33 = a2;
  v10 = a4(0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v28 = *(a3 + 16);
  if (v28)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v26 = a5;
    v27 = a3;
    while (v16 < *(a3 + 16))
    {
      v18 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v19 = *(v31 + 72);
      sub_1B49A22B8(a3 + v18 + v19 * v16, v15, a5);
      v20 = v32(v15);
      if (v7)
      {
        sub_1B49A2320(v15, a5);

        goto LABEL_15;
      }

      if (v20)
      {
        sub_1B49A2380(v15, v29, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25(0, *(v17 + 16) + 1, 1);
          v17 = v34;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          v25(v22 > 1, v23 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v23 + 1;
        sub_1B49A2380(v29, v17 + v18 + v23 * v19, v30);
        a5 = v26;
        a3 = v27;
      }

      else
      {
        sub_1B49A2320(v15, a5);
      }

      if (v28 == ++v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_1B499E6FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = result;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = *(a3 + 16);
    v15 = result;
    while (v8 < *(a3 + 16))
    {
      v16 = *(a3 + v8 + 32);
      result = v7(&v16);
      if (v4)
      {

        goto LABEL_15;
      }

      if (result)
      {
        v12 = v16;
        result = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((result & 1) == 0)
        {
          result = a4(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        if (v11 >= v10 >> 1)
        {
          result = a4(v10 > 1, v11 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v11 + 1;
        *(v9 + v11 + 32) = v12;
        v6 = v14;
        v7 = v15;
      }

      if (v6 == ++v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

BOOL sub_1B499E86C(id *a1, void **a2)
{
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = [*a1 startDate];
  sub_1B4D1775C();

  sub_1B4D176FC();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v9, v4);
  v15 = fabs(v13);
  v16 = [v10 startDate];
  sub_1B4D1775C();

  sub_1B4D176FC();
  v18 = v17;
  v14(v9, v4);
  return v15 < fabs(v18);
}

BOOL sub_1B499E9DC(id *a1, void *a2, double a3, double a4)
{
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = *a1;
  v18 = [*a1 startDate];
  sub_1B4D1775C();

  v19 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v19);
  (*(v20 + 80))(v19, v20);
  sub_1B4D176FC();
  v22 = v21;
  v23 = *(v9 + 8);
  v23(v12, v8);
  v23(v16, v8);
  if (v22 < a3)
  {
    return 0;
  }

  v25 = [v17 endDate];
  sub_1B4D1775C();

  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  (*(v27 + 80))(v26, v27);
  sub_1B4D176FC();
  v29 = v28;
  v23(v12, v8);
  v23(v16, v8);
  return v29 <= a4;
}

uint64_t sub_1B499EC28(id *a1, void *a2)
{
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  v16 = [*a1 startDate];
  sub_1B4D1775C();

  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  (*(v18 + 80))(v17, v18);
  sub_1B4D1770C();
  v19 = *(v5 + 8);
  v19(v8, v4);
  sub_1B49A23E8();
  LOBYTE(a2) = sub_1B4D1811C();
  v19(v11, v4);
  v19(v15, v4);
  return a2 & 1;
}

uint64_t sub_1B499EE0C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 56))(v1, v2);
  v4 = [v3 effectiveTypeIdentifier];

  result = 0;
  if (v4 > 36)
  {
    if (v4 == 37)
    {
      v6 = MEMORY[0x1E696BD98];
    }

    else
    {
      if (v4 != 52)
      {
        return result;
      }

      v6 = MEMORY[0x1E696BE10];
    }
  }

  else if (v4 == 13)
  {
    v6 = MEMORY[0x1E696BCB8];
  }

  else
  {
    if (v4 != 35)
    {
      return result;
    }

    v6 = MEMORY[0x1E696BD80];
  }

  sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
  return MEMORY[0x1B8C7CB40](*v6);
}

uint64_t sub_1B499EEF8(id *a1)
{
  v2 = sub_1B4D1777C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4D174EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*a1 dateInterval];
  sub_1B4D174AC();

  sub_1B4D174BC();
  (*(v8 + 8))(v12, v7);
  sub_1B49A23E8();
  LOBYTE(v13) = sub_1B4D1811C();
  (*(v3 + 8))(v6, v2);
  return v13 & 1;
}

double sub_1B499F0C0()
{
  qword_1EB8F39A0 = 0;
  word_1EB8F39A8 = 256;
  byte_1EB8F39AA = 2;
  result = 2.9;
  xmmword_1EB8F39B0 = xmmword_1B4D1BB70;
  byte_1EB8F39C0 = 0;
  return result;
}

double sub_1B499F0F0()
{
  qword_1EB8F39C8 = 1;
  word_1EB8F39D0 = 256;
  byte_1EB8F39D2 = 0;
  result = 150.0;
  xmmword_1EB8F39D8 = xmmword_1B4D1BB80;
  byte_1EB8F39E8 = 0;
  return result;
}

double sub_1B499F120()
{
  qword_1EB8F39F0 = 2;
  word_1EB8F39F8 = 256;
  byte_1EB8F39FA = 1;
  result = 200.0;
  xmmword_1EB8F3A00 = xmmword_1B4D1BB90;
  byte_1EB8F3A10 = 1;
  return result;
}

void sub_1B499F154()
{
  qword_1EB8F3A18 = 5;
  word_1EB8F3A20 = 0;
  byte_1EB8F3A22 = 3;
  xmmword_1EB8F3A28 = 0uLL;
  byte_1EB8F3A38 = 2;
}

double sub_1B499F180()
{
  qword_1EB8F3A40 = 3;
  word_1EB8F3A48 = 256;
  byte_1EB8F3A4A = 3;
  result = 180.0;
  xmmword_1EB8F3A50 = xmmword_1B4D1BBA0;
  byte_1EB8F3A60 = 0;
  return result;
}

double sub_1B499F1B0()
{
  qword_1EB8F3A68 = 4;
  word_1EB8F3A70 = 256;
  byte_1EB8F3A72 = 3;
  result = 5000.0;
  xmmword_1EB8F3A78 = xmmword_1B4D1BBB0;
  byte_1EB8F3A88 = 0;
  return result;
}

double sub_1B499F1E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D10, &qword_1B4D1BC98);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B4D1AA70;
  if (qword_1EB8A5FC8 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  v1 = word_1EB8F3A20;
  v2 = HIBYTE(word_1EB8F3A20);
  v3 = byte_1EB8F3A22;
  v4 = byte_1EB8F3A38;
  *(v0 + 32) = qword_1EB8F3A18;
  *(v0 + 40) = v1;
  *(v0 + 41) = v2;
  *(v0 + 42) = v3;
  *(v0 + 48) = xmmword_1EB8F3A28;
  *(v0 + 64) = v4;
  if (qword_1EB8A5FD0 != -1)
  {
    v11 = v0;
    swift_once();
    v0 = v11;
  }

  v5 = word_1EB8F3A48;
  v6 = HIBYTE(word_1EB8F3A48);
  v7 = byte_1EB8F3A4A;
  v8 = byte_1EB8F3A60;
  *(v0 + 72) = qword_1EB8F3A40;
  *(v0 + 80) = v5;
  *(v0 + 81) = v6;
  *(v0 + 82) = v7;
  result = *&xmmword_1EB8F3A50;
  *(v0 + 88) = xmmword_1EB8F3A50;
  *(v0 + 104) = v8;
  qword_1EB8F3A90 = v0;
  return result;
}

uint64_t sub_1B499F31C()
{
  if (qword_1EB8A5FE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB8F3A90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D10, &qword_1B4D1BC98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1B2D0;
  v2 = qword_1EB8A5FD8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = word_1EB8F3A70;
  v4 = HIBYTE(word_1EB8F3A70);
  v5 = byte_1EB8F3A72;
  v6 = byte_1EB8F3A88;
  *(inited + 32) = qword_1EB8F3A68;
  *(inited + 40) = v3;
  *(inited + 41) = v4;
  *(inited + 42) = v5;
  *(inited + 48) = xmmword_1EB8F3A78;
  *(inited + 64) = v6;
  if (qword_1EB8A5FB0 != -1)
  {
    swift_once();
  }

  v7 = word_1EB8F39A8;
  v8 = HIBYTE(word_1EB8F39A8);
  v9 = byte_1EB8F39AA;
  v10 = byte_1EB8F39C0;
  *(inited + 72) = qword_1EB8F39A0;
  *(inited + 80) = v7;
  *(inited + 81) = v8;
  *(inited + 82) = v9;
  *(inited + 88) = xmmword_1EB8F39B0;
  *(inited + 104) = v10;
  if (qword_1EB8A5FB8 != -1)
  {
    swift_once();
  }

  v11 = word_1EB8F39D0;
  v12 = HIBYTE(word_1EB8F39D0);
  v13 = byte_1EB8F39D2;
  v14 = byte_1EB8F39E8;
  *(inited + 112) = qword_1EB8F39C8;
  *(inited + 120) = v11;
  *(inited + 121) = v12;
  *(inited + 122) = v13;
  *(inited + 128) = xmmword_1EB8F39D8;
  *(inited + 144) = v14;
  if (qword_1EB8A5FC0 != -1)
  {
    swift_once();
  }

  v15 = word_1EB8F39F8;
  v16 = HIBYTE(word_1EB8F39F8);
  v17 = byte_1EB8F39FA;
  v18 = byte_1EB8F3A10;
  *(inited + 152) = qword_1EB8F39F0;
  *(inited + 160) = v15;
  *(inited + 161) = v16;
  *(inited + 162) = v17;
  *(inited + 168) = xmmword_1EB8F3A00;
  *(inited + 184) = v18;
  result = sub_1B49974F8(inited);
  qword_1EB8F3A98 = v0;
  return result;
}

void sub_1B499F570(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_23;
  }

  LOBYTE(v6) = a2;
  v7 = a1[4];
  v8 = a1[5];
  v9 = v7;

  if (!v7)
  {
    goto LABEL_23;
  }

  v10 = *a3;
  v11 = sub_1B49E9E4C(v9);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_1B49865A8(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_1B49E9E4C(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D08, &qword_1B4D1BC90);
    v11 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v17)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v22 = v11;
  sub_1B4989BA0();
  v11 = v22;
  if (v17)
  {
LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v23[6] + 8 * v11) = v9;
  *(v23[7] + 8 * v11) = v8;
  v24 = v23[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D08, &qword_1B4D1BC90);
    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](39, 0xE100000000000000);
    sub_1B4D18A9C();
    __break(1u);
    return;
  }

  v23[2] = v25;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v26 = 1;
    while (v26 < a1[2])
    {
      v27 = *(v6 - 1);
      v8 = *v6;
      v9 = v27;

      if (!v27)
      {
        goto LABEL_23;
      }

      v28 = *a3;
      v29 = sub_1B49E9E4C(v9);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_25;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_1B49865A8(v33, 1);
        v34 = *a3;
        v29 = sub_1B49E9E4C(v9);
        if ((v17 & 1) != (v35 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v17)
      {
        goto LABEL_9;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v36[6] + 8 * v29) = v9;
      *(v36[7] + 8 * v29) = v8;
      v37 = v36[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_26;
      }

      ++v26;
      v36[2] = v38;
      v6 += 2;
      if (v4 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1B499F8FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE250(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B4D18D4C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 2);
          if (v13 >= *v12)
          {
            break;
          }

          v14 = v12[24];
          *(v12 + 1) = *v12;
          *v12 = v13;
          v12[8] = v14;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D28, &qword_1B4D1BCB0);
      v8 = sub_1B4D1844C();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    sub_1B49A00C0(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B499FA54(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B4CDF47C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B499FB68(v6);
  return sub_1B4D189FC();
}

uint64_t sub_1B499FAD0(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1B4CDF47C(v6);
    *v3 = v6;
  }

  v9 = *(v6 + 16);
  sub_1B499FC7C(a1, a2);
  return sub_1B4D189FC();
}

void sub_1B499FB68(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B4D18D4C();
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
        sub_1B498AFB8(0, &qword_1EDC36DD0, 0x1E696C358);
        v6 = sub_1B4D1844C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1B49A0664(v8, v9, a1, v4);
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
    sub_1B499FDA0(0, v2, 1, a1);
  }
}

void sub_1B499FC7C(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = sub_1B4D18D4C();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B498AFB8(0, &qword_1EDC36DD0, 0x1E696C358);
        v9 = sub_1B4D1844C();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_1B49A0ED4(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1B499FFC0(0, v5, 1, a1);
  }
}

void sub_1B499FDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_1B4D1777C();
  v8 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *v15;
      v20 = v17;
      v21 = v19;
      v22 = [v20 startDate];
      sub_1B4D1775C();

      v23 = [v21 startDate];
      v24 = v35;
      sub_1B4D1775C();

      LOBYTE(v23) = sub_1B4D1773C();
      v25 = *v14;
      v26 = v24;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v28;
      v15 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B499FFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

uint64_t sub_1B49A00C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1B4CDDE84(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1B49A15A0((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_117;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_118;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_119;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *v13 >= *(v13 - 2);
        ++v16;
        v13 += 2;
        if ((((v10 < v15) ^ v17) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v18 = 16 * v7 - 16;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = (v22 + v18);
            v25 = *(v22 + v11);
            v26 = *(v22 + v11 + 8);
            if (v11 != v18 || v23 >= v24 + 1)
            {
              *v23 = *v24;
            }

            v21 = v22 + v18;
            *v21 = v25;
            *(v21 + 8) = v26;
          }

          ++v20;
          v18 -= 16;
          v11 += 16;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B4A1D58C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1B4A1D58C((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_60:
          if (v42)
          {
            goto LABEL_107;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_109;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_114;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v36 < 2)
        {
          goto LABEL_115;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_75:
        if (v60)
        {
          goto LABEL_111;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_1B49A15A0((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_103;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_104;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_105;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_106;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_108;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_110;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_116;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7 - 16;
  v29 = v9 - v7;
LABEL_33:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 16);
    if (v32 >= *v31)
    {
LABEL_32:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v27)
    {
      break;
    }

    v33 = *(v31 + 24);
    *(v31 + 16) = *v31;
    *v31 = v32;
    *(v31 + 8) = v33;
    v31 -= 16;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

void sub_1B49A0664(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v117 = a1;
  v126 = sub_1B4D1777C();
  v9 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v124 = &v111 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v17 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
    }

    else
    {
LABEL_121:
      v106 = sub_1B4CDDE84(a4);
    }

    v127 = v106;
    v107 = *(v106 + 2);
    if (v107 >= 2)
    {
      while (*v17)
      {
        a4 = *&v106[16 * v107];
        v108 = v106;
        v109 = *&v106[16 * v107 + 24];
        sub_1B49A179C((*v17 + 8 * a4), (*v17 + 8 * *&v106[16 * v107 + 16]), (*v17 + 8 * v109), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v109 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1B4CDDE84(v108);
        }

        if (v107 - 2 >= *(v108 + 2))
        {
          goto LABEL_115;
        }

        v110 = &v108[16 * v107];
        *v110 = a4;
        v110[1] = v109;
        v127 = v108;
        sub_1B4CDDDF8(v107 - 1);
        v106 = v127;
        v107 = *(v127 + 2);
        if (v107 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v15 = 0;
  v123 = (v12 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  v116 = a4;
  v112 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v121 = v14;
      v114 = v16;
      v115 = v6;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v120 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = v19;
      v23 = v21;
      v24 = [v22 startDate];
      v25 = v124;
      sub_1B4D1775C();

      v26 = [v23 startDate];
      v27 = v125;
      sub_1B4D1775C();

      LODWORD(v122) = sub_1B4D1773C();
      v28 = *v123;
      v29 = v126;
      (*v123)(v27, v126);
      v28(v25, v29);

      v113 = v17;
      v30 = (v17 + 2);
      while (1)
      {
        v15 = v121;
        if (v121 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *v5;
        v33 = v31;
        v34 = [v32 startDate];
        v35 = v124;
        sub_1B4D1775C();

        v36 = [v33 startDate];
        v37 = v125;
        sub_1B4D1775C();

        LODWORD(v36) = sub_1B4D1773C() & 1;
        v38 = v37;
        v39 = v126;
        v28(v38, v126);
        v28(v35, v39);

        ++v30;
        v5 += 8;
        if ((v122 & 1) != v36)
        {
          v15 = (v30 - 1);
          break;
        }
      }

      v16 = v114;
      v6 = v115;
      a4 = v116;
      v17 = v113;
      v40 = v120;
      if (v122)
      {
        if (v15 < v113)
        {
          goto LABEL_118;
        }

        a3 = v112;
        if (v113 < v15)
        {
          v41 = 8 * v15 - 8;
          v42 = v15;
          v43 = v113;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v44 = *(v45 + v40);
              *(v45 + v40) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            v43 = (v43 + 1);
            v41 -= 8;
            v40 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        a3 = v112;
      }
    }

    v46 = a3[1];
    if (v15 < v46)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v47 = (v17 + a4);
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v47)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v62 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v62;
    }

    else
    {
      v16 = sub_1B4A1D58C(0, *(v62 + 2) + 1, 1, v62);
    }

    a4 = *(v16 + 2);
    v63 = *(v16 + 3);
    v5 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v16 = sub_1B4A1D58C((v63 > 1), a4 + 1, 1, v16);
    }

    *(v16 + 2) = v5;
    v64 = &v16[16 * a4];
    *(v64 + 4) = v17;
    *(v64 + 5) = v15;
    v65 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v66 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v67 = *(v16 + 4);
          v68 = *(v16 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_56:
          if (v70)
          {
            goto LABEL_105;
          }

          v83 = &v16[16 * v5];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_108;
          }

          v89 = &v16[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_112;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v93 = &v16[16 * v5];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_70:
        if (v88)
        {
          goto LABEL_107;
        }

        v96 = &v16[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_110;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v66 - 1;
        if (v66 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v104 = v16;
        v5 = *&v16[16 * a4 + 32];
        v17 = *&v16[16 * v66 + 40];
        sub_1B49A179C((*a3 + 8 * v5), (*a3 + 8 * *&v16[16 * v66 + 32]), (*a3 + 8 * v17), v65);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v17 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1B4CDDE84(v104);
        }

        if (a4 >= *(v104 + 2))
        {
          goto LABEL_102;
        }

        v105 = &v104[16 * a4];
        *(v105 + 4) = v5;
        *(v105 + 5) = v17;
        v127 = v104;
        a4 = &v127;
        sub_1B4CDDDF8(v66);
        v16 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v16[16 * v5 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_103;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_104;
      }

      v78 = &v16[16 * v5];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_106;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_109;
      }

      if (v82 >= v74)
      {
        v100 = &v16[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_113;
        }

        if (v69 < v103)
        {
          v66 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v116;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v114 = v16;
  v115 = v6;
  v122 = *a3;
  v48 = v122 + 8 * v15 - 8;
  v113 = v17;
  a4 = v17 - v15;
  v118 = v47;
LABEL_29:
  v120 = v48;
  v121 = v15;
  v49 = *(v122 + 8 * v15);
  v119 = a4;
  v50 = v48;
  while (1)
  {
    v51 = *v50;
    v5 = v49;
    v52 = v51;
    v53 = [v5 startDate];
    v54 = v124;
    sub_1B4D1775C();

    v55 = [v52 startDate];
    v56 = v125;
    sub_1B4D1775C();

    LOBYTE(v55) = sub_1B4D1773C();
    v57 = *v123;
    v58 = v56;
    v59 = v126;
    (*v123)(v58, v126);
    v57(v54, v59);

    if ((v55 & 1) == 0)
    {
LABEL_28:
      v15 = v121 + 1;
      v48 = v120 + 8;
      a4 = v119 - 1;
      if ((v121 + 1) != v118)
      {
        goto LABEL_29;
      }

      v15 = v118;
      v16 = v114;
      v6 = v115;
      a3 = v112;
      v17 = v113;
      goto LABEL_36;
    }

    if (!v122)
    {
      break;
    }

    v60 = *v50;
    v49 = *(v50 + 8);
    *v50 = v49;
    *(v50 + 8) = v60;
    v50 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

void sub_1B49A0ED4(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(id *, id *), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1B4A1D58C(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_1B4A1D58C((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_1B49A1C38(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1B4CDDE84(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_1B4CDDDF8(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
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
  v12 = sub_1B4CDDE84(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_1B49A1C38(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1B4CDDE84(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_1B4CDDDF8(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_1B49A15A0(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 2 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 8);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 2;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 2;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 2 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v19 = v6 - 2;
    v5 -= 2;
    v20 = v15;
    do
    {
      v21 = v5 + 2;
      v22 = *(v20 - 2);
      v20 -= 2;
      if (v22 < *v19)
      {
        if (v21 != v6)
        {
          *v5 = *v19;
        }

        if (v15 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v21 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 2;
      v15 = v20;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v23 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v23))
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

uint64_t sub_1B49A179C(id *a1, id *a2, id *a3, void **a4)
{
  v57 = sub_1B4D1777C();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v50 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v58 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v59 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > v58)
    {
      v51 = (v8 + 8);
LABEL_27:
      v50 = a1;
      v31 = a1 - 1;
      v32 = a3 - 1;
      v33 = v59;
      v52 = a1 - 1;
      do
      {
        v34 = a4;
        v35 = v32;
        v36 = v32 + 1;
        v37 = *--v33;
        v38 = *v31;
        v39 = v37;
        v54 = v39;
        v40 = v38;
        v53 = v40;
        v41 = [v39 startDate];
        v42 = v55;
        sub_1B4D1775C();

        v43 = [v40 startDate];
        v44 = v56;
        sub_1B4D1775C();

        LOBYTE(v43) = sub_1B4D1773C();
        v45 = *v51;
        v46 = v44;
        v47 = v57;
        (*v51)(v46, v57);
        v45(v42, v47);

        if (v43)
        {
          a4 = v34;
          a3 = v35;
          v48 = v52;
          if (v36 != v50)
          {
            *v35 = *v52;
          }

          if (v59 <= v34 || (a1 = v48, v48 <= v58))
          {
            a1 = v48;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v34;
        if (v36 != v59)
        {
          *v35 = *v33;
        }

        v32 = v35 - 1;
        v59 = v33;
        v31 = v52;
      }

      while (v33 > v34);
      v59 = v33;
      a1 = v50;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v59 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v58 = a1;
        v18 = *a4;
        v19 = *a2;
        v20 = v18;
        v21 = [v19 startDate];
        v22 = v55;
        sub_1B4D1775C();

        v23 = [v20 startDate];
        v24 = v56;
        sub_1B4D1775C();

        LOBYTE(v23) = sub_1B4D1773C();
        v25 = *v17;
        v26 = v24;
        v27 = v57;
        (*v17)(v26, v57);
        v25(v22, v27);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v58;
        v30 = v58 == a2++;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v58;
      v30 = v58 == a4++;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v59 - a4));
  }

  return 1;
}

uint64_t sub_1B49A1C38(id *__src, id *a2, id *a3, uint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = &v52[-v17 + 7];
        if (&v52[-v17] >= 0)
        {
          v43 = &v52[-v17];
        }

        if (v7 < v17 || v7 >= v17 + (v43 & 0xFFFFFFFFFFFFFFF8) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = (v17 + 8);
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = &v52[v25];
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = (v5 + 1);
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= &v14[v44 & 0xFFFFFFFFFFFFFFF8] || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

uint64_t sub_1B49A205C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1B49A20E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B49A2128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B49A21F4()
{
  v1 = *(v0 + 16);
  sub_1B4D1777C();
  sub_1B49A23E8();
  return sub_1B4D1811C() & 1;
}

unint64_t sub_1B49A2254()
{
  result = qword_1EDC37878;
  if (!qword_1EDC37878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37878);
  }

  return result;
}

uint64_t sub_1B49A22B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49A2320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49A2380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B49A23E8()
{
  result = qword_1EB8A6D20;
  if (!qword_1EB8A6D20)
  {
    sub_1B4D1777C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6D20);
  }

  return result;
}

uint64_t sub_1B49A24E4(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v33 = v1;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF4BC(0, v6, 0);
    v8 = -1 << *(a1 + 32);
    v31 = a1 + 64;
    v32 = v38;
    result = sub_1B4D188DC();
    v9 = result;
    v10 = 0;
    v35 = *(a1 + 36);
    v28 = a1 + 72;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v31 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      if (v35 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v13 = *(*(a1 + 48) + 8 * v9);
      v14 = *(*(a1 + 56) + 8 * v9);

      v36 = v14;
      v37 = v13;
      MEMORY[0x1EEE9AC00](v15);
      *(&v28 - 2) = &v37;
      *(&v28 - 1) = &v36;
      sub_1B49A6BC0(&qword_1EB8A6DA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
      v16 = v33;
      sub_1B4D17DAC();
      if (v16)
      {
      }

      v33 = 0;

      v17 = v32;
      v38 = v32;
      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B4BCF4BC(v18 > 1, v19 + 1, 1);
        v17 = v38;
      }

      *(v17 + 16) = v19 + 1;
      v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v32 = v17;
      result = sub_1B49A6C5C(v34, v17 + v20 + *(v29 + 72) * v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_27;
      }

      v21 = *(v31 + 8 * v12);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_28;
      }

      if (v35 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v22 = v21 & (-2 << (v9 & 0x3F));
      if (v22)
      {
        v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v25 = (v28 + 8 * v12);
        while (v24 < (v11 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1B497CD6C(v9, v35, 0);
            v11 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_1B497CD6C(v9, v35, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v6)
      {
        return v32;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t FitnessPlusProperty.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  sub_1B49A6BC0(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49A295C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for FitnessPlusBestWorkoutProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B49A6D24(a2, v11, type metadata accessor for FitnessPlusBestWorkoutProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6D88, &unk_1B4D208C0);
  type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  v19 = v7;
  sub_1B49A6BC0(&qword_1EB8A6DE0, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
  sub_1B4D17DAC();
  sub_1B49A6CC4(v11, type metadata accessor for FitnessPlusBestWorkoutProperty);
  sub_1B4975024(v7, &qword_1EB8A6D88, &unk_1B4D208C0);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B49A205C(v15, a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
}

uint64_t sub_1B49A2BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for FitnessPlusAverageHeartRateProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B49A6D24(a2, v11, type metadata accessor for FitnessPlusAverageHeartRateProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6D78, &unk_1B4D1BCC0);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B49A6BC0(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B49A6CC4(v11, type metadata accessor for FitnessPlusAverageHeartRateProperty);
  sub_1B4975024(v7, &qword_1EB8A6D78, &unk_1B4D1BCC0);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B49A205C(v15, a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
}

uint64_t sub_1B49A2E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for FitnessPlusCaloriesProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B49A6D24(a2, v11, type metadata accessor for FitnessPlusCaloriesProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6D68, &qword_1B4D208D0);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B49A6BC0(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B49A6CC4(v11, type metadata accessor for FitnessPlusCaloriesProperty);
  sub_1B4975024(v7, &qword_1EB8A6D68, &qword_1B4D208D0);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B49A205C(v15, a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
}

uint64_t sub_1B49A30D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for FitnessPlusDurationProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B49A6D24(a2, v11, type metadata accessor for FitnessPlusDurationProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6858, &qword_1B4D1AB70);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B49A6BC0(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B49A6CC4(v11, type metadata accessor for FitnessPlusDurationProperty);
  sub_1B4975024(v7, &qword_1EB8A6858, &qword_1B4D1AB70);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B49A205C(v15, a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
}

uint64_t sub_1B49A334C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v68 = a1;
  v64 = type metadata accessor for FitnessPlusDurationProperty(0);
  v6 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for FitnessPlusCaloriesProperty(0);
  v8 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FitnessPlusAverageHeartRateProperty(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v60 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v61 = &v59 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v62 = &v59 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v63 = &v59 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v59 - v27;
  v29 = type metadata accessor for FitnessPlusBestWorkoutProperty(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v36 = &v59 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v37;
  (*(v37 + 16))(v36, a2, a3);
  if (swift_dynamicCast())
  {
    v38 = sub_1B49A6BC0(&qword_1EB8A6D80, type metadata accessor for FitnessPlusBestWorkoutProperty);
    v39 = v70;
    sub_1B49A3C44(a3, v29, v38, v28);
    if (!v39)
    {
      v40 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v40 - 8) + 56))(v28, 0, 1, v40);
      sub_1B49A205C(v28, v68, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    }

    sub_1B49A6CC4(v33, type metadata accessor for FitnessPlusBestWorkoutProperty);
    return (*(v71 + 8))(v36, a3);
  }

  v41 = v70;
  if (swift_dynamicCast())
  {
    v42 = v13;
    v43 = sub_1B49A6BC0(&qword_1EB8A6D70, type metadata accessor for FitnessPlusAverageHeartRateProperty);
    sub_1B49A3C44(a3, v10, v43, v26);
    if (!v41)
    {
      v44 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v44 - 8) + 56))(v26, 0, 1, v44);
      sub_1B49A205C(v26, v68, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    }

    v45 = type metadata accessor for FitnessPlusAverageHeartRateProperty;
LABEL_17:
    sub_1B49A6CC4(v42, v45);
    return (*(v71 + 8))(v36, a3);
  }

  v46 = v66;
  v42 = v67;
  if (swift_dynamicCast())
  {
    v47 = sub_1B49A6BC0(&qword_1EB8A6D60, type metadata accessor for FitnessPlusCaloriesProperty);
    v48 = v63;
    sub_1B49A3C44(a3, v46, v47, v63);
    if (!v41)
    {
      v49 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      sub_1B49A205C(v48, v68, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    }

    v45 = type metadata accessor for FitnessPlusCaloriesProperty;
    goto LABEL_17;
  }

  v50 = v64;
  v42 = v65;
  if (swift_dynamicCast())
  {
    v51 = sub_1B49A6BC0(&qword_1EB8A6D58, type metadata accessor for FitnessPlusDurationProperty);
    v52 = v62;
    sub_1B49A3C44(a3, v50, v51, v62);
    if (!v41)
    {
      v53 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
      sub_1B49A205C(v52, v68, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    }

    v45 = type metadata accessor for FitnessPlusDurationProperty;
    goto LABEL_17;
  }

  if (swift_dynamicCast())
  {

    v55 = sub_1B49A50D0();
    v56 = v61;
    sub_1B49A3C44(a3, &type metadata for FitnessPlusCountByTrainerProperty, v55, v61);
    if (v41)
    {
      return (*(v71 + 8))(v36, a3);
    }

LABEL_24:
    v58 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v58 - 8) + 56))(v56, 0, 1, v58);
    sub_1B49A205C(v56, v68, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    return (*(v71 + 8))(v36, a3);
  }

  if (!swift_dynamicCast())
  {
    sub_1B49A4D28();
    swift_allocError();
    swift_willThrow();
    return (*(v71 + 8))(v36, a3);
  }

  v57 = sub_1B49A507C();
  v56 = v60;
  sub_1B49A3C44(a3, &type metadata for FitnessPlusWorkoutCountProperty, v57, v60);
  if (!v41)
  {
    goto LABEL_24;
  }

  return (*(v71 + 8))(v36, a3);
}

uint64_t sub_1B49A3C44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v37 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32[1] = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v8 = swift_getAssociatedTypeWitness();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v33 = v32 - v10;
  v11 = sub_1B4D1880C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v32 - v15;
  v17 = *(*(a1 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v20, v38, a1);
  v26 = swift_dynamicCast();
  v27 = *(v21 + 56);
  if (v26)
  {
    v27(v16, 0, 1, a2);
    (*(v21 + 32))(v24, v16, a2);
    v28 = v33;
    (*(v6 + 64))(a2, v6);
    v29 = v36;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 32))(v29);
    (*(v35 + 8))(v28, v29);
    return (*(v21 + 8))(v24, a2);
  }

  else
  {
    v27(v16, 1, 1, a2);
    (*(v12 + 8))(v16, v11);
    sub_1B49A4D28();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t static FitnessPlusPropertySerialization.from(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_1B498FC0C(a1, a2);
  sub_1B4D17BDC();
  sub_1B49A6BC0(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  result = sub_1B4D17D7C();
  if (!v3)
  {
    static FitnessPlusPropertySerialization.from(_:)(v12, a3);
    return sub_1B49A6CC4(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  }

  return result;
}

uint64_t static FitnessPlusPropertySerialization.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v104 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v98 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v102 = (&v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v98 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v100 = *(v19 - 8);
  v101 = v19;
  v20 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v98 - v21;
  v22 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = (&v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v98 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v98 - v31;
  sub_1B4974FBC(a1, &v98 - v31, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v33 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
  {
    sub_1B49A4D28();
    swift_allocError();
    return swift_willThrow();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B49A6C5C(v32, v28, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      sub_1B49A6D24(v28, v25, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      v61 = *v25;
      sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v63 = [ObjCClassFromMetadata baseUnit];
      v64 = v99;
      sub_1B4D1741C();
      v66 = v25[1];
      v65 = v25[2];

      v67 = [ObjCClassFromMetadata baseUnit];
      v68 = type metadata accessor for FitnessPlusBestWorkoutProperty(0);
      v69 = v104;
      v104[3] = v68;
      v69[4] = sub_1B49A6BC0(&qword_1EB8A6D80, type metadata accessor for FitnessPlusBestWorkoutProperty);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
      v71 = v101;
      sub_1B4D1745C();

      (*(v100 + 8))(v64, v71);
      sub_1B49A6CC4(v25, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      sub_1B49A6CC4(v28, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0);
      v72 = (boxed_opaque_existential_1 + *(result + 28));
      *v72 = v66;
      v72[1] = v65;
      return result;
    }

    v36 = v103;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B49A6C5C(v32, v103, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v37 = v102;
      sub_1B49A6D24(v36, v102, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v38 = v37[1];
      v39 = *v37;
      sub_1B498AFB8(0, &qword_1EDC378B8, 0x1E696B038);
      v40 = swift_getObjCClassFromMetadata();
      v41 = [v40 baseUnit];
      v42 = type metadata accessor for FitnessPlusAverageHeartRateProperty(0);
      v43 = v104;
      v104[3] = v42;
      v43[4] = sub_1B49A6BC0(&qword_1EB8A6D70, type metadata accessor for FitnessPlusAverageHeartRateProperty);
      v44 = __swift_allocate_boxed_opaque_existential_1(v43);
      sub_1B4D1741C();
      v45 = v37[3];
      v46 = [v40 baseUnit];
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
    }

    else
    {
      sub_1B49A6C5C(v32, v103, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v37 = v102;
      sub_1B49A6D24(v36, v102, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v38 = v37[1];
      v88 = *v37;
      sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
      v40 = swift_getObjCClassFromMetadata();
      v89 = [v40 baseUnit];
      v90 = type metadata accessor for FitnessPlusCaloriesProperty(0);
      v91 = v104;
      v104[3] = v90;
      v91[4] = sub_1B49A6BC0(&qword_1EB8A6D60, type metadata accessor for FitnessPlusCaloriesProperty);
      v44 = __swift_allocate_boxed_opaque_existential_1(v91);
      sub_1B4D1741C();
      v92 = v37[3];
      v93 = [v40 baseUnit];
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
    }

    v48 = v44 + v47[8];
    sub_1B4D1741C();
    v49 = v37[4];
    v50 = [v40 baseUnit];
    v51 = v44 + v47[9];
    sub_1B4D1741C();
    v52 = v37[2];
    v53 = [v40 baseUnit];
    v54 = v44 + v47[10];
    sub_1B4D1741C();
    v55 = v37[5];
    v56 = [v40 baseUnit];
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v36 = v103;
    sub_1B49A6C5C(v32, v103, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    v37 = v102;
    sub_1B49A6D24(v36, v102, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    v38 = v37[1];
    v73 = *v37;
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v74 = swift_getObjCClassFromMetadata();
    v75 = [v74 baseUnit];
    v76 = type metadata accessor for FitnessPlusDurationProperty(0);
    v77 = v104;
    v104[3] = v76;
    v77[4] = sub_1B49A6BC0(&qword_1EB8A6D58, type metadata accessor for FitnessPlusDurationProperty);
    v44 = __swift_allocate_boxed_opaque_existential_1(v77);
    sub_1B4D1741C();
    v78 = v37[3];
    v79 = [v74 baseUnit];
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
    v80 = v44 + v47[8];
    sub_1B4D1741C();
    v81 = v37[4];
    v82 = [v74 baseUnit];
    v83 = v44 + v47[9];
    sub_1B4D1741C();
    v84 = v37[2];
    v85 = [v74 baseUnit];
    v86 = v44 + v47[10];
    sub_1B4D1741C();
    v87 = v37[5];
    v56 = [v74 baseUnit];
LABEL_15:
    v94 = v56;
    v95 = v44 + v47[11];
    sub_1B4D1741C();
    sub_1B49A6CC4(v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    result = sub_1B49A6CC4(v36, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    *(v44 + v47[7]) = v38;
    return result;
  }

  if (EnumCaseMultiPayload == 4)
  {
    sub_1B49A6C5C(v32, v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    sub_1B49A6D24(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    v57 = v105;
    sub_1B49A4D7C(v10, v106);
    result = sub_1B49A6CC4(v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    if (!v57)
    {
      v58 = v106[0];
      v59 = v106[1];
      v60 = v104;
      v104[3] = &type metadata for FitnessPlusCountByTrainerProperty;
      result = sub_1B49A50D0();
      v60[4] = result;
      *v60 = v58;
      v60[1] = v59;
    }
  }

  else
  {
    sub_1B49A6C5C(v32, v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    v96 = *v6;
    sub_1B49A6CC4(v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    v97 = v104;
    v104[3] = &type metadata for FitnessPlusWorkoutCountProperty;
    result = sub_1B49A507C();
    v97[4] = result;
    *v97 = v96;
  }

  return result;
}

unint64_t sub_1B49A4D28()
{
  result = qword_1EB8A6D40;
  if (!qword_1EB8A6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6D40);
  }

  return result;
}

uint64_t sub_1B49A4D7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(*a1 + 16);
  v34 = a2;
  if (v12)
  {
    v33 = a1;
    v38 = MEMORY[0x1E69E7CC0];
    v35 = v12;
    sub_1B4BCEDBC(0, v12, 0);
    v13 = 0;
    v14 = v38;
    v36 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15 = v7;
    while (v13 < *(v11 + 16))
    {
      sub_1B49A6D24(v36 + *(v15 + 72) * v13, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
      sub_1B49A54E0(v10, v37);
      if (v3)
      {
        sub_1B49A6CC4(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
        sub_1B49A6CC4(v33, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
      }

      v3 = 0;
      v16 = v11;
      v17 = v10;
      sub_1B49A6CC4(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
      v19 = v37[0];
      v18 = v37[1];
      v38 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v32 = v15;
        sub_1B4BCEDBC((v20 > 1), v21 + 1, 1);
        v22 = v21 + 1;
        v15 = v32;
        v14 = v38;
      }

      ++v13;
      *(v14 + 16) = v22;
      v23 = v14 + 16 * v21;
      *(v23 + 32) = v19;
      *(v23 + 40) = v18;
      v11 = v16;
      v10 = v17;
      if (v35 == v13)
      {
        a1 = v33;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E8, &unk_1B4D1AC00);
      v24 = sub_1B4D18AEC();
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC8];
    }

    v37[0] = v24;

    sub_1B49A60BC(v26, 1, v37);
    if (!v3)
    {

      v27 = v37[0];
      v28 = a1;
      v29 = a1[1];
      result = sub_1B49A6CC4(v28, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
      v30 = v34;
      *v34 = v27;
      v30[1] = v29;
      return result;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1B49A507C()
{
  result = qword_1EB8A6D48;
  if (!qword_1EB8A6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6D48);
  }

  return result;
}

unint64_t sub_1B49A50D0()
{
  result = qword_1EB8A6D50;
  if (!qword_1EB8A6D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6D50);
  }

  return result;
}

unint64_t sub_1B49A5148()
{
  result = qword_1EB8A6D90;
  if (!qword_1EB8A6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6D90);
  }

  return result;
}

uint64_t sub_1B49A51F4()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  sub_1B49A6BC0(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49A52F0()
{
  v2 = *v0;
  v3 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  sub_1B49A6BC0(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49A53A0()
{
  v2 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  sub_1B49A6BC0(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49A5450(void *a1, uint64_t a2)
{
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = a1[2];

  a1[1] = v5;
  a1[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  result = sub_1B4D1742C();
  *a1 = v8;
  return result;
}

uint64_t sub_1B49A54E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v44 - v5;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v44 - v19;
  v21 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  v47 = a1;
  sub_1B4974FBC(a1 + *(v46 + 20), v20, &qword_1EB8A6DB0, &unk_1B4D462F0);
  v26 = *(v22 + 48);
  if (v26(v20, 1, v21) == 1)
  {
    v27 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    v28 = &v25[*(v21 + 20)];
    sub_1B4D17BBC();
    if (v26(v20, 1, v21) != 1)
    {
      sub_1B4975024(v20, &qword_1EB8A6DB0, &unk_1B4D462F0);
    }
  }

  else
  {
    sub_1B49A6C5C(v20, v25, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  }

  sub_1B4974FBC(v25, v16, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v29 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  if ((*(*(v29 - 8) + 48))(v16, 1, v29) == 1)
  {
    sub_1B49A6CC4(v25, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
    v53 = 0u;
    v54 = 0u;
  }

  else
  {
    sub_1B49A6C5C(v16, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    v30 = *v12;

    sub_1B49A6CC4(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    *(&v54 + 1) = &type metadata for FitnessPlusTrainerIdentifiers;
    *&v53 = v30;
    sub_1B49A6CC4(v25, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  if (!swift_dynamicCast())
  {
    v52 = 0;
    goto LABEL_14;
  }

  v31 = v52;
  if (!v52)
  {
LABEL_14:

    sub_1B49A6C08();
    swift_allocError();
    *v38 = 0;
    return swift_willThrow();
  }

  v32 = v50;
  sub_1B4974FBC(v47 + *(v46 + 24), v50, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v33 = v49;
  v34 = *(v48 + 48);
  if (v34(v32, 1, v49) == 1)
  {
    v35 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
    v36 = v51;
    (*(*(v35 - 8) + 56))(v51, 1, 1, v35);
    v37 = v36 + *(v33 + 20);
    sub_1B4D17BBC();
    if (v34(v32, 1, v33) != 1)
    {
      sub_1B4975024(v32, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
    }
  }

  else
  {
    v36 = v51;
    sub_1B49A6C5C(v32, v51, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  }

  v40 = v55;
  sub_1B49A5B5C(v36, &v53);
  sub_1B49A6CC4(v36, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  if (!v40)
  {
    result = swift_dynamicCast();
    if (result)
    {
      v41 = v52;
      v42 = v45;
      *v45 = v31;
      v42[1] = v41;
      return result;
    }

    sub_1B49A6C08();
    swift_allocError();
    *v43 = 1;
    swift_willThrow();
  }
}

uint64_t sub_1B49A5B5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - v13;
  sub_1B4974FBC(a1, &v19 - v13, &qword_1EB8A6DC8, &unk_1B4D20350);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  result = (*(*(v15 - 8) + 48))(v14, 1, v15);
  if (result == 1)
  {
    v17 = 0;
    v18 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    sub_1B49A6C5C(v14, v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B49A6D24(v10, v7, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    v17 = *v7;
    sub_1B49A6CC4(v7, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    result = sub_1B49A6CC4(v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    v18 = &type metadata for CountPropertyValue;
  }

  *a2 = v17;
  a2[3] = v18;
  return result;
}