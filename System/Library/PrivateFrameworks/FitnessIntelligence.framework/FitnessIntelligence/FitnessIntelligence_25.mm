unint64_t sub_1B4BC2EE4()
{
  result = qword_1EB8ABF18;
  if (!qword_1EB8ABF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF18);
  }

  return result;
}

uint64_t sub_1B4BC2F38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4BC2FB4()
{
  result = qword_1EB8ABF20;
  if (!qword_1EB8ABF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF20);
  }

  return result;
}

unint64_t sub_1B4BC3008(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutState();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4992854(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD18, &qword_1B4D394C0);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD20, &unk_1B4D388B0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B4D1A800;
  v11 = *(v3 + 44);
  v12 = sub_1B4D1777C();
  (*(*(v12 - 8) + 16))(v10 + v9, &v6[v11], v12);
  sub_1B49AA7C0(v6);
  type metadata accessor for FitnessContextQueryDescriptor();
  swift_storeEnumTagMultiPayload();
  v13 = sub_1B4C96AD0(v10);
  swift_setDeallocating();
  sub_1B4975024(v10 + v9, &qword_1EB8ABD20, &unk_1B4D388B0);
  swift_deallocClassInstance();
  return v13;
}

uint64_t sub_1B4BC31C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BC3268, 0, 0);
}

uint64_t sub_1B4BC3268()
{
  v1 = v0[5];
  sub_1B4992854(v0[3], v1);
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4BA4908;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return sub_1B4BB82E0(v6, v4, v5);
}

uint64_t FitnessPlusProperties.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v61 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v82 = *(v9 - 8);
  v10 = *(v82 + 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v73 = &v61 - v15;
  v16 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  v20 = *(v83 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v85 = (&v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v84 = &v61 - v25;
  v26 = *(a1 + 16);
  v27 = *(v26 + 16);
  if (v27)
  {
    v62 = a2;
    v63 = v24;
    v95 = MEMORY[0x1E69E7CC0];
    v64 = v27;
    v71 = v26;
    result = sub_1B4BCED1C(0, v27, 0);
    v29 = 0;
    v30 = v71;
    v70 = v71 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v31 = v95;
    v69 = (v17 + 48);
    v67 = (v82 + 12);
    v66 = v9;
    v82 = v16;
    v68 = v12;
    v65 = v20;
    while (v29 < *(v30 + 16))
    {
      v32 = v9;
      v81 = v31;
      v33 = v84;
      sub_1B4BC408C(v70 + *(v20 + 72) * v29, v84);
      v34 = v33;
      v35 = v85;
      sub_1B4BC408C(v34, v85);
      v36 = v35[1];
      v80 = *v35;
      v79 = v36;
      v37 = v73;
      sub_1B4974FBC(v35 + *(v83 + 28), v73, &qword_1EB8A7DC8, &qword_1B4D202B8);
      v38 = *v69;
      if ((*v69)(v37, 1, v16) == 1)
      {
        v39 = v72;
        sub_1B4D17BBC();
        v40 = (v39 + v16[5]);
        *v40 = 0;
        v40[1] = 0;
        v41 = (v39 + v16[6]);
        *v41 = 0;
        v41[1] = 0;
        v42 = v39 + v16[7];
        *v42 = 0;
        *(v42 + 8) = 1;
        v43 = (v39 + v16[8]);
        *v43 = 0;
        v43[1] = 0;
        v44 = v82[9];
        v45 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
        (*(*(v45 - 8) + 56))(v39 + v44, 1, 1, v45);
        if (v38(v37, 1, v82) != 1)
        {
          sub_1B4975024(v37, &qword_1EB8A7DC8, &qword_1B4D202B8);
        }
      }

      else
      {
        v39 = v72;
        sub_1B4BC4228(v37, v72, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      }

      FitnessPlusPropertyDimensions.init(_:)(v39, &v86);
      if (v2)
      {
        sub_1B4BC40F0(v85, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
        sub_1B4BC40F0(v84, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
        sub_1B4BC40F0(v63, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
      }

      v78 = v86;
      v77 = BYTE1(v86);
      v74 = *(&v86 + 1);
      v76 = v87;
      v75 = v88;
      v46 = v89;
      sub_1B4974FBC(v85 + *(v83 + 32), v8, &qword_1EB8A7DB8, &unk_1B4D27B10);
      v47 = *v67;
      if ((*v67)(v8, 1, v9) == 1)
      {
        v48 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
        v49 = v68;
        (*(*(v48 - 8) + 56))(v68, 1, 1, v48);
        v50 = v49 + *(v32 + 20);
        sub_1B4D17BBC();
        if (v47(v8, 1, v32) != 1)
        {
          sub_1B4975024(v8, &qword_1EB8A7DB8, &unk_1B4D27B10);
        }
      }

      else
      {
        v49 = v68;
        sub_1B4BC4228(v8, v68, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
      }

      static FitnessPlusPropertySerialization.from(_:)(v49, &v86);
      sub_1B4BC40F0(v85, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
      sub_1B4BC40F0(v49, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
      sub_1B496F398(&v86, v93);
      *&v90 = v80;
      *(&v90 + 1) = v79;
      LOBYTE(v91) = v78;
      BYTE1(v91) = v77;
      *(&v91 + 1) = v74;
      LOBYTE(v92) = v76;
      BYTE1(v92) = v75;
      *(&v92 + 1) = v46;
      result = sub_1B4BC40F0(v84, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
      v31 = v81;
      v95 = v81;
      v52 = *(v81 + 16);
      v51 = *(v81 + 24);
      if (v52 >= v51 >> 1)
      {
        result = sub_1B4BCED1C((v51 > 1), v52 + 1, 1);
        v31 = v95;
      }

      ++v29;
      *(v31 + 16) = v52 + 1;
      v53 = v31 + 88 * v52;
      v54 = v91;
      *(v53 + 32) = v90;
      *(v53 + 48) = v54;
      v55 = v92;
      v56 = v93[0];
      v57 = v93[1];
      *(v53 + 112) = v94;
      *(v53 + 80) = v56;
      *(v53 + 96) = v57;
      *(v53 + 64) = v55;
      v9 = v66;
      v16 = v82;
      v20 = v65;
      v30 = v71;
      if (v64 == v29)
      {
        v58 = v31;
        v24 = v63;
        a2 = v62;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v59 = *v24;
    v60 = v24[1];
    result = sub_1B4BC40F0(v24, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
    *a2 = v59;
    a2[1] = v60;
    a2[2] = v58;
  }

  return result;
}

uint64_t FitnessPlusProperties.protobuf()()
{
  v3 = *v0;
  v1 = *(v0 + 2);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  sub_1B4BC41E0(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC3CA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  v28 = *(v29 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a2;
  *a1 = a2;
  a1[1] = a3;
  v31 = a3;
  v13 = *(a4 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v27 = a1;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF6FC(0, v13, 0);
    v14 = v48;
    v15 = a4 + 32;
    while (1)
    {
      v33 = v5;
      v32 = v13;
      sub_1B4B9C8D4(v15, v41);
      v16 = v42;
      v17 = v43;
      v18 = v44;
      v19 = v45;
      v20 = v46;
      v21 = sub_1B497558C(&v47, &v40);
      v34[0] = v30;
      v34[1] = v31;
      v35 = v16;
      v36 = v17;
      v37 = v18;
      v38 = v19;
      v39 = v20;
      MEMORY[0x1EEE9AC00](v21);
      *(&v27 - 2) = v34;
      sub_1B4BC41E0(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);

      v22 = v33;
      sub_1B4D17DAC();
      v5 = v22;
      if (v22)
      {
        break;
      }

      sub_1B4B9C930(v41);
      sub_1B4B9C930(v34);
      v48 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B4BCF6FC(v23 > 1, v24 + 1, 1);
        v14 = v48;
      }

      *(v14 + 16) = v24 + 1;
      sub_1B4BC4228(v12, v14 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
      v15 += 88;
      v13 = v32 - 1;
      if (v32 == 1)
      {
        a1 = v27;
        goto LABEL_9;
      }
    }

    sub_1B4B9C930(v41);
    sub_1B4B9C930(v34);
  }

  else
  {
LABEL_9:
    v26 = a1[2];

    a1[2] = v14;
  }

  return result;
}

uint64_t sub_1B4BC3FBC()
{
  v3 = *v0;
  v1 = *(v0 + 2);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  sub_1B4BC41E0(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC408C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BC40F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4BC41E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4BC4228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BC42A8(char a1)
{
  result = 0x6B726F5774736542;
  switch(a1)
  {
    case 1:
      v3 = 1735290700;
      goto LABEL_21;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 7:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0x75444B3574736542;
      break;
    case 5:
      result = 0x444B303174736542;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 8:
      v3 = 1953718598;
LABEL_21:
      result = v3 | 0x74736500000000;
      break;
    case 9:
      result = 0x726F577473726946;
      break;
    case 10:
      result = 0x74756F6B726F5737;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x5265766F4D77654ELL;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x74636566726550;
      break;
    case 17:
    case 18:
      result = 0xD00000000000001CLL;
      break;
    case 19:
      result = 0xD000000000000023;
      break;
    case 20:
      result = 0xD000000000000020;
      break;
    case 21:
      result = 0xD000000000000028;
      break;
    case 22:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t static WorkoutVoiceGreatestElevationGainFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BC4C04(v3, v1, v2);
}

uint64_t static WorkoutVoiceGreatestElevationGainFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49AA274;

  return sub_1B4BC54B0(a1, a3, a4);
}

uint64_t sub_1B4BC4670()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  __swift_allocate_value_buffer(v0, qword_1EB8F3B10);
  __swift_project_value_buffer(v0, qword_1EB8F3B10);
  v1 = [objc_opt_self() feet];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  return sub_1B4D1741C();
}

uint64_t WorkoutVoiceGreatestElevationGainFact.QueryIdentifier.init(rawValue:)@<X0>(char *a1@<X8>)
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

unint64_t WorkoutVoiceGreatestElevationGainFact.QueryIdentifier.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_1B4BC47C4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

id WorkoutVoiceGreatestElevationGainFact.makePrompt(promptFormatter:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v34 - v7;
  v9 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
  v10 = v9[5];
  v11 = *(a1 + 16);
  FIUnitManager.userMeasurementUnitForElevation()(v12);
  v14 = v13;
  sub_1B4D1745C();
  v15 = sub_1B4D12160();
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v16 = sub_1B4D1878C();
  v18 = v17;

  (*(v5 + 8))(v8, v4);
  v19 = *(v2 + v9[7]);
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v21 = result;
    v22 = sub_1B4D1818C();
    v24 = v23;

    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000002ELL, 0x80000001B4D62D80);
    MEMORY[0x1B8C7C620](v22, v24);

    MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE900000000000020);
    v25 = *(v2 + v9[6]);
    v26 = 0xE800000000000000;
    v27 = 0x7961642073696874;
    v28 = 0xEA00000000006874;
    v29 = 0x6E6F6D2073696874;
    v30 = 0xE900000000000072;
    v31 = 0x6165792073696874;
    if (v25 != 3)
    {
      v31 = 1919252069;
      v30 = 0xE400000000000000;
    }

    if (v25 != 2)
    {
      v29 = v31;
      v28 = v30;
    }

    if (*(v2 + v9[6]))
    {
      v27 = 0x6565772073696874;
      v26 = 0xE90000000000006BLL;
    }

    if (*(v2 + v9[6]) <= 1u)
    {
      v32 = v27;
    }

    else
    {
      v32 = v29;
    }

    if (*(v2 + v9[6]) <= 1u)
    {
      v33 = v26;
    }

    else
    {
      v33 = v28;
    }

    MEMORY[0x1B8C7C620](v32, v33);

    MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D624B0);
    MEMORY[0x1B8C7C620](v16, v18);

    return v34[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4BC4B00(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BC4C04(v3, v1, v2);
}

uint64_t sub_1B4BC4B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49DD034;

  return sub_1B4BC54B0(a1, a3, a4);
}

unint64_t sub_1B4BC4C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateRangeDescriptor();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v86 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v90 = v75 - v14;
  v89 = type metadata accessor for WorkoutPropertiesQuery();
  v15 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v17 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B4D1777C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v28, a1, a2, v26);
  v29 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  sub_1B49A79FC(v28, v29, a2, a3);
  v31 = *(v30 + 16);
  v32 = 32;
  while (v31)
  {
    v33 = *(v30 + v32);
    v32 += 8;
    --v31;
    if (v33 == 10)
    {
      v78 = v9;
      v84 = v23;

      v34 = v18;
      v35 = v22;
      v36 = v28;
      (*(a3 + 80))(a2, a3);
      v81 = v19;
      v75[0] = *(v19 + 16);
      (v75[0])(v17, v35, v34);
      v37 = v88;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1B4D1A800;
      v39 = *(a3 + 56);
      v83 = v36;
      v85 = a2;
      v40 = v39(a2, a3);
      v41 = [v40 effectiveTypeIdentifier];

      *(v38 + 32) = v41;
      v42 = v89;
      v43 = &v17[*(v89 + 20)];
      v44 = MEMORY[0x1E69E7CC0];
      *v43 = MEMORY[0x1E69E7CC0];
      *(v43 + 1) = v44;
      *(v43 + 2) = v44;
      *(v43 + 3) = v38;
      *(v43 + 4) = v44;
      *(v43 + 5) = v44;
      *&v17[*(v42 + 24)] = v44;
      *&v17[*(v42 + 28)] = &unk_1F2CBD0F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE38, &qword_1B4D390F0);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8ABE40, &qword_1B4D390F8);
      v46 = *(*(v45 - 8) + 72);
      v47 = (*(*(v45 - 8) + 80) + 32) & ~*(*(v45 - 8) + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1B4D1AA70;
      v76 = v48;
      v77 = v45;
      v49 = (v48 + v47);
      v50 = *(v45 + 48);
      *v49 = 0;
      sub_1B49BFE58(v17, &v49[v50], type metadata accessor for WorkoutPropertiesQuery);
      v75[1] = type metadata accessor for FitnessContextQueryDescriptor();
      swift_storeEnumTagMultiPayload();
      v51 = &v49[v46];
      *v51 = 1;
      v52 = v90;
      v79 = v35;
      v82 = v34;
      (v75[0])(v90, v35, v34);
      swift_storeEnumTagMultiPayload();
      v53 = v87;
      (*(v87 + 56))(v52, 0, 1, v37);
      v54 = v52;
      v55 = v86;
      sub_1B4974FBC(v54, v86, &qword_1EB8A67A8, &qword_1B4D1E060);
      v56 = *(v53 + 48);
      v57 = v56(v55, 1, v37);
      v80 = v17;
      if (v57 == 1)
      {
        v58 = v78;
        sub_1B49BFE58(v17, v78, type metadata accessor for DateRangeDescriptor);
        if (v56(v55, 1, v37) != 1)
        {
          sub_1B4975024(v55, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v58 = v78;
        sub_1B4BC6CC4(v55, v78, type metadata accessor for DateRangeDescriptor);
      }

      v65 = &v51[*(v77 + 48)];
      v67 = *v43;
      v66 = *(v43 + 1);
      v68 = *(v43 + 2);
      v69 = *(v43 + 3);
      v70 = *(v43 + 4);
      v71 = *(v43 + 5);
      sub_1B49BFE58(v58, v65, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v58, type metadata accessor for DateRangeDescriptor);
      v72 = v89;
      v73 = (v65 + *(v89 + 20));
      *v73 = v67;
      v73[1] = v66;
      v73[2] = v68;
      v73[3] = v69;
      v73[4] = v70;
      v73[5] = v71;
      *(v65 + *(v72 + 24)) = MEMORY[0x1E69E7CC0];
      *(v65 + *(v72 + 28)) = &unk_1F2CBD0F0;
      sub_1B4975024(v90, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v64 = sub_1B4C982A0(v76);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v80, type metadata accessor for WorkoutPropertiesQuery);
      (*(v81 + 8))(v79, v82);
      v23 = v84;
      a2 = v85;
      v28 = v83;
      goto LABEL_14;
    }
  }

  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v59 = sub_1B4D17F6C();
  __swift_project_value_buffer(v59, qword_1EDC36F00);
  v60 = sub_1B4D17F5C();
  v61 = sub_1B4D1873C();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v91 = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_1B49558AC(0xD000000000000025, 0x80000001B4D62B40, &v91);
    _os_log_impl(&dword_1B4953000, v60, v61, "%s does not support this workout state", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x1B8C7DDA0](v63, -1, -1);
    MEMORY[0x1B8C7DDA0](v62, -1, -1);
  }

  v64 = sub_1B4C982A0(MEMORY[0x1E69E7CC0]);
LABEL_14:
  (*(v23 + 8))(v28, a2);
  return v64;
}

uint64_t sub_1B4BC54B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[321] = a3;
  v3[320] = a2;
  v3[319] = a1;
  v4 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
  v3[322] = v4;
  v5 = *(v4 - 8);
  v3[323] = v5;
  v6 = *(v5 + 64) + 15;
  v3[324] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABF50, &qword_1B4D395F8);
  v3[325] = v7;
  v8 = *(v7 - 8);
  v3[326] = v8;
  v9 = *(v8 + 64) + 15;
  v3[327] = swift_task_alloc();
  v3[328] = swift_task_alloc();
  v10 = sub_1B4D1777C();
  v3[329] = v10;
  v11 = *(v10 - 8);
  v3[330] = v11;
  v12 = *(v11 + 64) + 15;
  v3[331] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00) - 8) + 64) + 15;
  v3[332] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3[333] = v14;
  v15 = *(v14 - 8);
  v3[334] = v15;
  v16 = *(v15 + 64) + 15;
  v3[335] = swift_task_alloc();
  v3[336] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v3[337] = swift_task_alloc();
  v3[338] = swift_task_alloc();
  v18 = type metadata accessor for WorkoutState();
  v3[339] = v18;
  v19 = *(v18 - 8);
  v3[340] = v19;
  v20 = *(v19 + 64) + 15;
  v3[341] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BC5794, 0, 0);
}

uint64_t sub_1B4BC5794()
{
  v137 = v0;
  v1 = *(v0 + 2720);
  v2 = *(v0 + 2712);
  v3 = *(v0 + 2704);
  sub_1B4974FBC(*(v0 + 2560), v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_1B4975024(*(v0 + 2704), &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_15:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v31 = sub_1B4D17F6C();
    __swift_project_value_buffer(v31, qword_1EDC36F00);
    v32 = sub_1B4D17F5C();
    v33 = sub_1B4D1873C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      __dst[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1B49558AC(0xD000000000000025, 0x80000001B4D62B40, __dst);
      _os_log_impl(&dword_1B4953000, v32, v33, "Context or snapshots don't exist for %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1B8C7DDA0](v35, -1, -1);
      MEMORY[0x1B8C7DDA0](v34, -1, -1);
    }

LABEL_20:
    v134 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v133 = v4;
  v5 = *(v0 + 2552);
  sub_1B4BC6CC4(*(v0 + 2704), *(v0 + 2728), type metadata accessor for WorkoutState);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *(v0 + 2536) = &type metadata for WorkoutVoiceGreatestElevationGainFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABF58, &qword_1B4D39600);
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v8;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  (*(v7 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v6, v7);

  v9 = *(v0 + 2504);
  if (!v9)
  {
    v22 = *(v0 + 2728);
LABEL_14:
    sub_1B49BFEC0(v22, type metadata accessor for WorkoutState);
    goto LABEL_15;
  }

  v10 = *(v0 + 2488);
  v132 = *(v0 + 2496);
  v12 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 2552), v12);
  *(v0 + 2544) = &type metadata for WorkoutVoiceGreatestElevationGainFact.QueryIdentifier;
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v13;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D4BED0);

  (*(v11 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v12, v11);

  v14 = *(v0 + 2528);
  v15 = *(v0 + 2728);
  if (!v14)
  {
    sub_1B49BFEC0(v15, type metadata accessor for WorkoutState);

    goto LABEL_15;
  }

  v16 = *(v0 + 2512);
  v17 = *(v0 + 2520);
  v18 = *(v0 + 2672);
  v19 = *(v0 + 2664);
  v20 = *(v0 + 2656);
  sub_1B4974FBC(v15 + *(*(v0 + 2712) + 104), v20, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v18 + 48))(v20, 1, v19) == 1)
  {
    v21 = *(v0 + 2656);
    sub_1B49BFEC0(*(v0 + 2728), type metadata accessor for WorkoutState);

    sub_1B4975024(v21, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    goto LABEL_15;
  }

  v130 = v17;
  v131 = v16;
  v23 = *(v0 + 2680);
  (*(*(v0 + 2672) + 32))(*(v0 + 2688), *(v0 + 2656), *(v0 + 2664));
  v24 = [objc_opt_self() feet];
  sub_1B4D1745C();

  if (qword_1EB8A6448 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 2680);
  v26 = *(v0 + 2672);
  v27 = *(v0 + 2664);
  __swift_project_value_buffer(v27, qword_1EB8F3B10);
  sub_1B49A2254();
  v28 = sub_1B4D1810C();
  v29 = *(v26 + 8);
  v29(v25, v27);
  if ((v28 & 1) == 0)
  {
    v30 = *(v0 + 2728);
    v29(*(v0 + 2688), *(v0 + 2664));

    v22 = v30;
    goto LABEL_14;
  }

  *(v0 + 2376) = 0u;
  *(v0 + 2392) = 0u;
  *(v0 + 2360) = 0u;
  sub_1B4CE3B10((v0 + 2360), v14, __dst);
  v128 = v29;
  if (LOBYTE(__dst[1]))
  {
    v48 = 0;
  }

  else
  {
    v48 = __dst[0];
  }

  sub_1B4CE3B10((v0 + 2360), v9, __dst);
  if (LOBYTE(__dst[1]))
  {
    v49 = 0;
  }

  else
  {
    v49 = __dst[0];
  }

  v50 = MEMORY[0x1E69E7CC0];
  if (v48 >= 20)
  {
    v50 = sub_1B4A1E07C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    if (v52 >= v51 >> 1)
    {
      v50 = sub_1B4A1E07C((v51 > 1), v52 + 1, 1, v50);
    }

    *(v50 + 2) = v52 + 1;
    v50[v52 + 32] = 4;
  }

  if (v49 >= 10)
  {
    v53 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1B4A1E07C(0, *(v53 + 2) + 1, 1, v53);
    }

    v54 = v53;
    v56 = *(v53 + 2);
    v55 = *(v53 + 3);
    if (v56 >= v55 >> 1)
    {
      v54 = sub_1B4A1E07C((v55 > 1), v56 + 1, 1, v53);
    }

    v127 = v54;
    *(v54 + 2) = v56 + 1;
    v54[v56 + 32] = 3;
  }

  else
  {
    if (!*(v50 + 2))
    {

      if (qword_1EDC36EF8 != -1)
      {
        swift_once();
      }

      v90 = sub_1B4D17F6C();
      __swift_project_value_buffer(v90, qword_1EDC36F00);
      v91 = sub_1B4D17F5C();
      v92 = sub_1B4D1873C();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        __dst[0] = v94;
        *v93 = 136315650;
        *(v93 + 4) = sub_1B49558AC(0xD000000000000025, 0x80000001B4D62B40, __dst);
        *(v93 + 12) = 2048;
        *(v93 + 14) = v48;
        *(v93 + 22) = 2048;
        *(v93 + 24) = v49;
        _os_log_impl(&dword_1B4953000, v91, v92, "didn't meet min workouts requirement for %s. Number for ever %ld, this year %ld", v93, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v94);
        MEMORY[0x1B8C7DDA0](v94, -1, -1);
        MEMORY[0x1B8C7DDA0](v93, -1, -1);
      }

      v95 = *(v0 + 2728);
      v128(*(v0 + 2688), *(v0 + 2664));
      sub_1B49BFEC0(v95, type metadata accessor for WorkoutState);
      goto LABEL_20;
    }

    v127 = v50;
  }

  v129 = (v0 + 2104);
  v57 = *(v0 + 2728);
  v58 = *(v0 + 2712);
  v59 = *(v0 + 2648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1B4D1A800;
  *(v60 + 32) = sub_1B4D1779C();
  v121 = v60 + 32;
  v126 = v60;
  *(v60 + 40) = v61;
  v62 = *(v57 + *(v58 + 48));
  v63 = v57 + *(v58 + 36);
  sub_1B4D1770C();
  v64 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v124 = *(v0 + 2712);
  v125 = *(v0 + 2728);
  v65 = *(v0 + 2640);
  v122 = *(v0 + 2632);
  v123 = *(v0 + 2648);
  v66 = sub_1B4D1796C();
  __swift_project_value_buffer(v66, qword_1EDC3CE48);
  v67 = sub_1B4D178CC();
  v68 = _HKCacheIndexFromDate();

  (*(v65 + 8))(v123, v122);
  sub_1B496F4FC((v0 + 2232));
  *(v0 + 2104) = v68;
  *(v0 + 2112) = v131;
  *(v0 + 2120) = v130;
  *(v0 + 2128) = v14;
  *(v0 + 2136) = v10;
  *(v0 + 2144) = v132;
  *(v0 + 2152) = v9;
  *(v0 + 2160) = v68;
  *(v0 + 2168) = v68;
  v69 = MEMORY[0x1E69E7CC0];
  *(v0 + 2176) = MEMORY[0x1E69E7CC0];
  *(v0 + 2184) = v68;
  *(v0 + 2192) = v68;
  *(v0 + 2200) = v69;
  *(v0 + 2208) = v68;
  *(v0 + 2216) = v68;
  *(v0 + 2224) = v69;
  nullsub_1(v129);
  sub_1B496F4FC((v0 + 1976));
  v70 = *(v0 + 2056);
  *(v0 + 1128) = *(v0 + 2040);
  *(v0 + 1144) = v70;
  v71 = *(v0 + 2088);
  *(v0 + 1160) = *(v0 + 2072);
  *(v0 + 1176) = v71;
  v72 = *(v0 + 1992);
  *(v0 + 1064) = *(v0 + 1976);
  *(v0 + 1080) = v72;
  v73 = *(v0 + 2024);
  *(v0 + 1096) = *(v0 + 2008);
  *(v0 + 1112) = v73;
  v74 = *(v0 + 2232);
  v75 = *(v0 + 2248);
  v76 = *(v0 + 2280);
  *(v0 + 840) = *(v0 + 2264);
  *(v0 + 856) = v76;
  *(v0 + 808) = v74;
  *(v0 + 824) = v75;
  v77 = *(v0 + 2296);
  v78 = *(v0 + 2312);
  v79 = *(v0 + 2344);
  *(v0 + 904) = *(v0 + 2328);
  *(v0 + 920) = v79;
  *(v0 + 872) = v77;
  *(v0 + 888) = v78;
  v80 = *v129;
  v81 = *(v0 + 2120);
  v82 = *(v0 + 2152);
  *(v0 + 968) = *(v0 + 2136);
  *(v0 + 984) = v82;
  *(v0 + 936) = v80;
  *(v0 + 952) = v81;
  v83 = *(v0 + 2168);
  v84 = *(v0 + 2184);
  v85 = *(v0 + 2216);
  *(v0 + 1032) = *(v0 + 2200);
  *(v0 + 1048) = v85;
  *(v0 + 1000) = v83;
  *(v0 + 1016) = v84;
  *(v0 + 800) = v68;
  *(v0 + 2432) = v124;
  *(v0 + 2440) = &protocol witness table for WorkoutState;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2408));
  sub_1B49BFE58(v125, boxed_opaque_existential_1, type metadata accessor for WorkoutState);
  memcpy(__dst, (v0 + 800), 0x188uLL);
  static LegacySnapshot.make(from:snapshot:)(v0 + 2408, __dst, __src);
  v87 = *(v0 + 2712);
  v88 = *(v0 + 2696);
  v89 = *(v0 + 2568);
  sub_1B4975024(v0 + 2408, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  memcpy((v0 + 408), __src, 0x188uLL);
  sub_1B4974FBC(v89, v88, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if (v133(v88, 1, v87) == 1)
  {
    sub_1B4975024(*(v0 + 2696), &qword_1EB8A6A98, &unk_1B4D1CBE0);
    *(v0 + 2448) = 0u;
    *(v0 + 2464) = 0u;
    *(v0 + 2480) = 0;
  }

  else
  {
    v96 = *(v0 + 2696);
    *(v0 + 2472) = *(v0 + 2712);
    *(v0 + 2480) = &protocol witness table for WorkoutState;
    v97 = __swift_allocate_boxed_opaque_existential_1((v0 + 2448));
    sub_1B4BC6CC4(v96, v97, type metadata accessor for WorkoutState);
  }

  memcpy(__dst, (v0 + 800), 0x188uLL);
  static LegacySnapshot.make(from:snapshot:)(v0 + 2448, __dst, __src);
  v98 = *(v0 + 2728);
  v99 = *(v0 + 2712);
  sub_1B4B68220(v0 + 800);
  sub_1B4975024(v0 + 2448, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  memcpy((v0 + 1584), __src, 0x188uLL);
  v100 = [*(v98 + *(v99 + 24)) effectiveTypeIdentifier];
  memcpy((v0 + 1192), (v0 + 1584), 0x188uLL);
  nullsub_1(v0 + 1192);
  memcpy((v0 + 16), (v0 + 1192), 0x188uLL);
  v101 = vdupq_n_s64(v100);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_1F2CB8B20, v101), vceqq_s64(unk_1F2CB8B30, v101)))) & 1) != 0 || qword_1F2CB8B40 == v100 || qword_1F2CB8B48 == v100)
  {
    v105 = *(v0 + 2608);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABF60, &qword_1B4D39608);
    v106 = *(v105 + 72);
    v107 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v108 = swift_allocObject();
    sub_1B4C90D6C(v126, v127, v100, 18, (v0 + 408), (v0 + 16), (v108 + v107));
    v109 = *(v0 + 2624);
    v110 = *(v0 + 2616);
    v111 = *(v0 + 2584);
    v112 = *(v0 + 2576);

    sub_1B4B68220(v0 + 1584);
    sub_1B4B68220(v0 + 408);

    sub_1B4974FBC(v108 + v107, v109, &qword_1EB8ABF50, &qword_1B4D395F8);
    sub_1B4BC6C54(v109, v110);
    v113 = (*(v111 + 48))(v110, 1, v112);
    v114 = *(v0 + 2616);
    if (v113 == 1)
    {
      sub_1B4975024(v114, &qword_1EB8ABF50, &qword_1B4D395F8);
      v104 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1B4BC6CC4(v114, *(v0 + 2592), type metadata accessor for WorkoutVoiceGreatestElevationGainFact);
      v115 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_1B4A1E1D4(0, v115[2] + 1, 1, v115);
      }

      v117 = v115[2];
      v116 = v115[3];
      v118 = v115;
      if (v117 >= v116 >> 1)
      {
        v118 = sub_1B4A1E1D4(v116 > 1, v117 + 1, 1, v115);
      }

      v119 = *(v0 + 2592);
      v120 = *(v0 + 2584);
      *(v118 + 16) = v117 + 1;
      v104 = v118;
      sub_1B4BC6CC4(v119, v118 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v117, type metadata accessor for WorkoutVoiceGreatestElevationGainFact);
    }

    v128(*(v0 + 2688), *(v0 + 2664));
    swift_setDeallocating();
    sub_1B4975024(v108 + v107, &qword_1EB8ABF50, &qword_1B4D395F8);
    swift_deallocClassInstance();
  }

  else
  {
    v102 = *(v0 + 2688);
    v103 = *(v0 + 2664);
    sub_1B4B68220(v0 + 1584);
    sub_1B4B68220(v0 + 408);

    swift_setDeallocating();
    sub_1B497CBA8(v121);
    swift_deallocClassInstance();
    v128(v102, v103);
    v104 = MEMORY[0x1E69E7CC0];
  }

  v134 = v104;
  sub_1B49BFEC0(*(v0 + 2728), type metadata accessor for WorkoutState);
LABEL_21:
  v36 = *(v0 + 2728);
  v37 = *(v0 + 2704);
  v38 = *(v0 + 2696);
  v39 = *(v0 + 2688);
  v40 = *(v0 + 2680);
  v41 = *(v0 + 2656);
  v42 = *(v0 + 2648);
  v43 = *(v0 + 2624);
  v44 = *(v0 + 2616);
  v45 = *(v0 + 2592);

  v46 = *(v0 + 8);

  return v46(v134);
}

unint64_t sub_1B4BC6A68()
{
  result = qword_1EB8ABF28;
  if (!qword_1EB8ABF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF28);
  }

  return result;
}

unint64_t sub_1B4BC6ABC(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BC6AEC();
  result = sub_1B4BC6B40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BC6AEC()
{
  result = qword_1EB8ABF30;
  if (!qword_1EB8ABF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF30);
  }

  return result;
}

unint64_t sub_1B4BC6B40()
{
  result = qword_1EB8ABF38;
  if (!qword_1EB8ABF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF38);
  }

  return result;
}

uint64_t sub_1B4BC6B98(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BC6C00(&qword_1EB8ABF40);
  result = sub_1B4BC6C00(&qword_1EB8ABF48);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4BC6C00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BC6C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABF50, &qword_1B4D395F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BC6CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t WorkoutVoiceTranscript.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (v11)
  {
    v25[0] = a2;
    v25[1] = v2;
    v26 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    result = sub_1B4BCEFBC(0, v11, 0);
    v13 = 0;
    v14 = v30;
    v15 = *(v6 + 80);
    v28 = v6;
    v29 = v10 + ((v15 + 32) & ~v15);
    v27 = v10;
    while (v13 < *(v10 + 16))
    {
      sub_1B4BC756C(v29 + *(v6 + 72) * v13, v9);
      v16 = *v9;
      v17 = v9[1];
      v18 = sub_1B4D18B1C();
      if (v18)
      {
        if (v18 != 1)
        {
          sub_1B4BC75D0();
          swift_allocError();
          swift_willThrow();
          sub_1B4BC7624(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
          sub_1B4BC7624(v26, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
        }

        v19 = 1;
      }

      else
      {
        v19 = 0;
      }

      v20 = v9[2];
      v21 = v9[3];

      result = sub_1B4BC7624(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
      v30 = v14;
      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1B4BCEFBC((v22 > 1), v23 + 1, 1);
        v14 = v30;
      }

      *(v14 + 16) = v23 + 1;
      v24 = v14 + 24 * v23;
      *(v24 + 32) = v19;
      ++v13;
      *(v24 + 40) = v20;
      *(v24 + 48) = v21;
      v10 = v27;
      v6 = v28;
      if (v11 == v13)
      {
        result = sub_1B4BC7624(v26, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
        *v25[0] = v14;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1B4BC7624(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
    *a2 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t WorkoutVoiceTranscript.protobuf()()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript(0);
  sub_1B4BC780C(&qword_1EB8A8A00, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC7078(void *a1, uint64_t a2)
{
  v24 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0);
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v22 = a1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF71C(0, v8, 0);
    v9 = v25;
    v10 = sub_1B4BC780C(&qword_1EB8A8828, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
    v23 = v10;
    v11 = (a2 + 48);
    do
    {
      v12 = *(v11 - 16);
      v13 = *(v11 - 1);
      v14 = *v11;
      MEMORY[0x1EEE9AC00](v10);
      *(&v21 - 32) = v15;
      *(&v21 - 3) = v16;
      *(&v21 - 2) = v14;

      sub_1B4D17DAC();

      v25 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B4BCF71C(v17 > 1, v18 + 1, 1);
        v9 = v25;
      }

      *(v9 + 16) = v18 + 1;
      v10 = sub_1B4BC7854(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18);
      v11 += 3;
      --v8;
    }

    while (v8);
    a1 = v22;
  }

  v19 = *a1;

  *a1 = v9;
  return result;
}

uint64_t sub_1B4BC72A0(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = 1919251317;
  }

  else
  {
    v7 = 0x6E61747369737361;
  }

  if (a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE900000000000074;
  }

  v9 = a1[1];

  *a1 = v7;
  a1[1] = v8;
  v10 = a1[3];

  a1[2] = a3;
  a1[3] = a4;
  return result;
}

uint64_t *sub_1B4BC7334(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v8 = sub_1B4BC7798();
  v9 = &v12;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4BC780C(&qword_1EB8A8A00, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
    v9 = sub_1B4D17D6C();
    sub_1B4BC7624(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
  }

  return v9;
}

uint64_t sub_1B4BC7478@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B256C4(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4BC74AC()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript(0);
  sub_1B4BC780C(&qword_1EB8A8A00, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC756C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4BC75D0()
{
  result = qword_1EB8ABF68;
  if (!qword_1EB8ABF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF68);
  }

  return result;
}

uint64_t sub_1B4BC7624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B4BC7744()
{
  result = qword_1EB8ABF70;
  if (!qword_1EB8ABF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF70);
  }

  return result;
}

unint64_t sub_1B4BC7798()
{
  result = qword_1EB8ABF78;
  if (!qword_1EB8ABF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF78);
  }

  return result;
}

uint64_t sub_1B4BC780C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4BC7854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t static WorkoutVoiceFastestRecordFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BC8C78(v3, v1, v2);
}

uint64_t static WorkoutVoiceFastestRecordFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49AA274;

  return sub_1B4BC9510(a1, a3, a4);
}

void sub_1B4BC79D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4D1742C();
  v2 = v1;
  if (v1 >= 1.0)
  {
    v4 = [*(v0 + 16) numberFormatter];
    v5 = v4;
    if (v2 >= 100.0)
    {
      if (v4)
      {
        [v4 setMaximumFractionDigits_];
        goto LABEL_9;
      }

LABEL_14:
      __break(1u);
      return;
    }

    if (v4)
    {
      [v4 setMaximumFractionDigits_];
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = [*(v0 + 16) numberFormatter];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v3;
  [v3 setMaximumFractionDigits_];
LABEL_9:
}

uint64_t WorkoutVoiceFastestRecordFact.QueryIdentifier.init(rawValue:)@<X0>(char *a1@<X8>)
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

unint64_t WorkoutVoiceFastestRecordFact.QueryIdentifier.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_1B4BC7B7C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

id WorkoutVoiceFastestRecordFact.makePrompt(promptFormatter:)(uint64_t a1)
{
  v99 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v92 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v97 = *(v6 - 8);
  v98 = v6;
  v7 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v92 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v92 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v100 = *(v13 - 8);
  v101 = v13;
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v92 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v92 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v92 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = *v1;
  if (v32 != 19)
  {
LABEL_4:
    if ((v32 & 0xFC) == 0x10)
    {
      return 0;
    }

    v34 = v1;
    v35 = type metadata accessor for WorkoutVoiceFastestRecordFact();
    sub_1B4974FBC(&v1[v35[6]], v12, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v37 = v100;
    v36 = v101;
    if ((*(v100 + 6))(v12, 1, v101) == 1)
    {
      v38 = &qword_1EB8A6CC0;
      v39 = &unk_1B4D1BC00;
      v40 = v12;
LABEL_13:
      sub_1B4975024(v40, v38, v39);
      return 0;
    }

    v51 = v96;
    v37[4](v96, v12, v36);
    sub_1B4974FBC(&v1[v35[5]], v5, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v53 = v97;
    v52 = v98;
    if ((*(v97 + 48))(v5, 1, v98) == 1)
    {
      (v37[1])(v51, v36);
      v38 = &qword_1EB8A6C90;
      v39 = &unk_1B4D1BBD0;
      v40 = v5;
      goto LABEL_13;
    }

    v66 = v95;
    (*(v53 + 32))(v95, v5, v52);
    v67 = sub_1B4D1232C();
    sub_1B4BC79D0();
    v68 = v67[2];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v69 = sub_1B4D1878C();
    v71 = v70;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    v72 = *(sub_1B4D18F8C() - 8);
    v73 = *(v72 + 72);
    v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v76 = sub_1B4BCA7BC(v75);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v77 = sub_1B4D15F5C(v66, v76);
    v79 = v78;

    v102 = 0;
    v103 = 0xE000000000000000;
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD000000000000013, 0x80000001B4D62DB0);
    MEMORY[0x1B8C7C620](v69, v71);

    MEMORY[0x1B8C7C620](0x2061206E6920, 0xE600000000000000);
    [*&v34[v35[9]] effectiveTypeIdentifier];
    result = FILocalizedNameForIndoorAgnosticActivityType();
    if (result)
    {
      v80 = result;
      v81 = sub_1B4D1818C();
      v83 = v82;

      MEMORY[0x1B8C7C620](v81, v83);

      MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE900000000000020);
      v84 = v34[v35[8]];
      if (v84 <= 1)
      {
        v86 = v97;
        v85 = v98;
        v88 = v100;
        v87 = v101;
        if (v84)
        {
          v89 = 0x6565772073696874;
          v90 = 0xE90000000000006BLL;
        }

        else
        {
          v89 = 0x7961642073696874;
          v90 = 0xE800000000000000;
        }
      }

      else
      {
        v86 = v97;
        v85 = v98;
        v88 = v100;
        v87 = v101;
        if (v84 == 2)
        {
          v89 = 0x6E6F6D2073696874;
          v90 = 0xEA00000000006874;
        }

        else if (v84 == 3)
        {
          v89 = 0x6165792073696874;
          v90 = 0xE900000000000072;
        }

        else
        {
          v90 = 0xE400000000000000;
          v89 = 1919252069;
        }
      }

      MEMORY[0x1B8C7C620](v89, v90);

      MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D62DD0);
      MEMORY[0x1B8C7C620](v77, v79);

      v91 = v102;
      (*(v86 + 8))(v95, v85);
      v88[1](v96, v87);
      return v91;
    }

    goto LABEL_40;
  }

  v93 = v17;
  v94 = &v92 - v31;
  v33 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  sub_1B4974FBC(&v1[v33[7]], v24, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1B4975024(v24, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    LOBYTE(v32) = *v1;
    goto LABEL_4;
  }

  v101 = v26;
  v41 = *(v26 + 32);
  v42 = v94;
  v41(v94, v24, v25);
  v43 = v33[9];
  v100 = v1;
  v44 = *&v1[v43];
  if (FIPaceFormatForWorkoutActivityType() == 4)
  {
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    sub_1B4D1742C();
    (*(v101 + 8))(v29, v25);
    v45 = [objc_opt_self() metersPerSecond];
    sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
    sub_1B4D1741C();
    v46 = sub_1B4D13D94(v20, v44, 1);
    v48 = v47;
    v102 = 0;
    v103 = 0xE000000000000000;
    sub_1B4D1896C();

    v102 = 0xD000000000000010;
    v103 = 0x80000001B4D62DF0;
    MEMORY[0x1B8C7C620](v46, v48);

    v50 = v102;
    v49 = v103;
    (*(v93 + 8))(v20, v16);
  }

  else
  {
    v55 = sub_1B4D13AE8(v42, v44, 2);
    v57 = v56;
    v102 = 0;
    v103 = 0xE000000000000000;
    sub_1B4D1896C();

    v102 = 0x7020612068746977;
    v103 = 0xEF20666F20656361;
    MEMORY[0x1B8C7C620](v55, v57);

    v50 = v102;
    v49 = v103;
  }

  v102 = 0;
  v103 = 0xE000000000000000;
  sub_1B4D1896C();

  v102 = 0xD000000000000013;
  v103 = 0x80000001B4D62DB0;
  [v44 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  v58 = v100;
  if (result)
  {
    v59 = result;
    v60 = sub_1B4D1818C();
    v62 = v61;

    MEMORY[0x1B8C7C620](v60, v62);

    MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE900000000000020);
    v63 = v58[v33[8]];
    if (v63 <= 1)
    {
      if (v58[v33[8]])
      {
        v64 = 0x6565772073696874;
        v65 = 0xE90000000000006BLL;
      }

      else
      {
        v64 = 0x7961642073696874;
        v65 = 0xE800000000000000;
      }
    }

    else if (v63 == 2)
    {
      v64 = 0x6E6F6D2073696874;
      v65 = 0xEA00000000006874;
    }

    else if (v63 == 3)
    {
      v64 = 0x6165792073696874;
      v65 = 0xE900000000000072;
    }

    else
    {
      v65 = 0xE400000000000000;
      v64 = 1919252069;
    }

    MEMORY[0x1B8C7C620](v64, v65);

    MEMORY[0x1B8C7C620](8236, 0xE200000000000000);
    MEMORY[0x1B8C7C620](v50, v49);

    v91 = v102;
    (*(v101 + 8))(v94, v25);
    return v91;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1B4BC8820(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BC8C78(v3, v1, v2);
}

uint64_t sub_1B4BC8860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49DD034;

  return sub_1B4BC9510(a1, a3, a4);
}

uint64_t sub_1B4BC8924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-v9];
  v11 = type metadata accessor for WorkoutState();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BCAE38(a1, v14, type metadata accessor for WorkoutState);
  sub_1B4974FBC(&v14[*(v11 + 60)], v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B49BFEC0(v14, type metadata accessor for WorkoutState);
    sub_1B4975024(v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v7 + 32))(v10, v5, v6);
  v16 = *&v14[*(v11 + 24)];
  sub_1B49BFEC0(v14, type metadata accessor for WorkoutState);
  v17 = [v16 effectiveTypeIdentifier];

  if (v17 == 13)
  {
    MEMORY[0x1EEE9AC00](v18);
    v19 = &v22[-32];
    *&v22[-16] = v10;
    v20 = &unk_1F2CB8CB8;
  }

  else
  {
    if (v17 != 37 && v17 != 71)
    {
      (*(v7 + 8))(v10, v6);
      return MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1EEE9AC00](v18);
    v19 = &v22[-32];
    *&v22[-16] = v10;
    v20 = &unk_1F2CB8CE8;
  }

  v21 = sub_1B499E6A4(sub_1B4BCAE18, v19, v20);
  (*(v7 + 8))(v10, v6);
  return v21;
}

unint64_t sub_1B4BC8C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateRangeDescriptor();
  v80 = *(v6 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v71 - v14);
  v83 = type metadata accessor for WorkoutPropertiesQuery();
  v16 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1B4D1777C();
  v18 = *(v85 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v27, a1, a2, v25);
  v28 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  sub_1B49A79FC(v27, v28, a2, a3);
  v30 = *(v29 + 16);
  v31 = 32;
  while (v30)
  {
    v32 = *(v29 + v31);
    v31 += 8;
    --v30;
    if (v32 == 8)
    {
      v77 = v22;

      v33 = *(a3 + 80);
      v82 = v21;
      v34 = v27;
      v33(a2, a3);
      v74 = *(v18 + 16);
      v75 = v18;
      v35 = v15;
      v37 = v84;
      v36 = v85;
      v74(v84, v82, v85);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1B4D1A800;
      v39 = *(a3 + 56);
      v76 = v34;
      v78 = a2;
      v40 = v39(a2, a3);
      v41 = [v40 effectiveTypeIdentifier];

      *(v38 + 32) = v41;
      v42 = v83;
      v43 = (v37 + *(v83 + 20));
      v44 = MEMORY[0x1E69E7CC0];
      *v43 = MEMORY[0x1E69E7CC0];
      v43[1] = v44;
      v43[2] = v44;
      v43[3] = v38;
      v43[4] = v44;
      v43[5] = v44;
      *(v37 + *(v42 + 24)) = v44;
      *(v37 + *(v42 + 28)) = &unk_1F2CBCFD0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFC8, &qword_1B4D39838);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFD0, &qword_1B4D39840);
      v45 = (*(*(v79 - 8) + 80) + 32) & ~*(*(v79 - 8) + 80);
      v72 = *(*(v79 - 8) + 72);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1B4D1AA70;
      v73 = v46;
      v47 = v46 + v45;
      *(v46 + v45) = 0;
      v74(v35, v82, v36);
      swift_storeEnumTagMultiPayload();
      v48 = v80;
      (*(v80 + 56))(v35, 0, 1, v6);
      v74 = v35;
      sub_1B4974FBC(v35, v12, &qword_1EB8A67A8, &qword_1B4D1E060);
      v49 = *(v48 + 48);
      if (v49(v12, 1, v6) == 1)
      {
        v50 = v37;
        v51 = v81;
        sub_1B4BCAE38(v50, v81, type metadata accessor for DateRangeDescriptor);
        if (v49(v12, 1, v6) != 1)
        {
          sub_1B4975024(v12, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v51 = v81;
        sub_1B4BCAEA0(v12, v81, type metadata accessor for DateRangeDescriptor);
      }

      v58 = v47 + *(v79 + 48);
      v60 = *v43;
      v59 = v43[1];
      v61 = v43[2];
      v62 = v43[3];
      v64 = v43[4];
      v63 = v43[5];
      sub_1B4BCAE38(v51, v58, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v51, type metadata accessor for DateRangeDescriptor);
      v65 = v83;
      v66 = (v58 + *(v83 + 20));
      *v66 = v60;
      v66[1] = v59;
      v66[2] = v61;
      v66[3] = v62;
      v66[4] = v64;
      v66[5] = v63;
      *(v58 + *(v65 + 24)) = MEMORY[0x1E69E7CC0];
      *(v58 + *(v65 + 28)) = &unk_1F2CBCFD0;
      sub_1B4975024(v74, &qword_1EB8A67A8, &qword_1B4D1E060);
      type metadata accessor for FitnessContextQueryDescriptor();
      swift_storeEnumTagMultiPayload();
      v67 = (v47 + v72);
      v68 = *(v79 + 48);
      *v67 = 1;
      v69 = v84;
      sub_1B4BCAE38(v84, &v67[v68], type metadata accessor for WorkoutPropertiesQuery);
      swift_storeEnumTagMultiPayload();
      v57 = sub_1B4C97980(v73);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v69, type metadata accessor for WorkoutPropertiesQuery);
      (*(v75 + 8))(v82, v85);
      v22 = v77;
      a2 = v78;
      v27 = v76;
      goto LABEL_14;
    }
  }

  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v52 = sub_1B4D17F6C();
  __swift_project_value_buffer(v52, qword_1EDC36F00);
  v53 = sub_1B4D17F5C();
  v54 = sub_1B4D1873C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v86 = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_1B49558AC(0xD00000000000001DLL, 0x80000001B4D62E10, &v86);
    _os_log_impl(&dword_1B4953000, v53, v54, "%s does not support this workout state", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x1B8C7DDA0](v56, -1, -1);
    MEMORY[0x1B8C7DDA0](v55, -1, -1);
  }

  v57 = sub_1B4C97980(MEMORY[0x1E69E7CC0]);
LABEL_14:
  (*(v22 + 8))(v27, a2);
  return v57;
}

uint64_t sub_1B4BC9510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[315] = a3;
  v3[314] = a2;
  v3[313] = a1;
  v4 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  v3[316] = v4;
  v5 = *(v4 - 8);
  v3[317] = v5;
  v6 = *(v5 + 64) + 15;
  v3[318] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFB0, &qword_1B4D39820);
  v3[319] = v7;
  v8 = *(v7 - 8);
  v3[320] = v8;
  v9 = *(v8 + 64) + 15;
  v3[321] = swift_task_alloc();
  v3[322] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3[323] = v10;
  v11 = *(v10 - 8);
  v3[324] = v11;
  v12 = *(v11 + 64) + 15;
  v3[325] = swift_task_alloc();
  v3[326] = swift_task_alloc();
  v13 = sub_1B4D1777C();
  v3[327] = v13;
  v14 = *(v13 - 8);
  v3[328] = v14;
  v15 = *(v14 + 64) + 15;
  v3[329] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v3[330] = swift_task_alloc();
  v3[331] = swift_task_alloc();
  v17 = type metadata accessor for WorkoutState();
  v3[332] = v17;
  v18 = *(v17 - 8);
  v3[333] = v18;
  v19 = *(v18 + 64) + 15;
  v3[334] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BC97BC, 0, 0);
}

uint64_t sub_1B4BC97BC()
{
  v147 = v0;
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2656);
  v3 = *(v0 + 2648);
  sub_1B4974FBC(*(v0 + 2512), v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_1B4975024(*(v0 + 2648), &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_14:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v56 = sub_1B4D17F6C();
    __swift_project_value_buffer(v56, qword_1EDC36F00);
    v57 = sub_1B4D17F5C();
    v58 = sub_1B4D1873C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      __dst[0] = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_1B49558AC(0xD00000000000001DLL, 0x80000001B4D62E10, __dst);
      _os_log_impl(&dword_1B4953000, v57, v58, "Context or snapshots don't exist for %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x1B8C7DDA0](v60, -1, -1);
      MEMORY[0x1B8C7DDA0](v59, -1, -1);
    }

    v61 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v142 = v4;
  v5 = *(v0 + 2504);
  sub_1B4BCAEA0(*(v0 + 2648), *(v0 + 2672), type metadata accessor for WorkoutState);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *(v0 + 2488) = &type metadata for WorkoutVoiceFastestRecordFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFB8, &qword_1B4D39828);
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v8;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  (*(v7 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v6, v7);

  v9 = *(v0 + 2456);
  if (!v9)
  {
    sub_1B49BFEC0(*(v0 + 2672), type metadata accessor for WorkoutState);
    goto LABEL_14;
  }

  v10 = *(v0 + 2440);
  v11 = *(v0 + 2448);
  v13 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 2504), v13);
  *(v0 + 2496) = &type metadata for WorkoutVoiceFastestRecordFact.QueryIdentifier;
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v14;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D4BED0);

  (*(v12 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v13, v12);

  v15 = *(v0 + 2480);
  v16 = *(v0 + 2672);
  if (!v15)
  {
    sub_1B49BFEC0(v16, type metadata accessor for WorkoutState);
LABEL_13:

    goto LABEL_14;
  }

  v140 = v11;
  v17 = (v0 + 1976);
  v18 = (v0 + 2104);
  v19 = v0 + 2232;
  v20 = *(v0 + 2464);
  v139 = *(v0 + 2472);
  v21 = sub_1B4CAC70C(v16);
  v22 = *(v21 + 2);
  v23 = 32;
  do
  {
    if (!v22)
    {
      v55 = *(v0 + 2672);

      sub_1B49BFEC0(v55, type metadata accessor for WorkoutState);

      goto LABEL_13;
    }

    v24 = *&v21[v23];
    v23 += 8;
    --v22;
  }

  while (v24 != 8);
  v134 = v20;
  v136 = v15;
  v138 = v10;
  v125 = (v0 + 2400);
  v25 = *(v0 + 2672);
  v26 = *(v0 + 2656);
  v27 = *(v0 + 2632);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B4D1A800;
  *(v28 + 32) = sub_1B4D1779C();
  *(v28 + 40) = v29;
  v135 = v28;
  v30 = *(v25 + *(v26 + 48));
  v31 = v25 + *(v26 + 36);
  sub_1B4D1770C();
  v32 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v130 = *(v0 + 2672);
    v132 = *(v0 + 2656);
    v33 = *(v0 + 2624);
    v126 = *(v0 + 2616);
    v128 = *(v0 + 2632);
    v34 = sub_1B4D1796C();
    __swift_project_value_buffer(v34, qword_1EDC3CE48);
    v35 = sub_1B4D178CC();
    v36 = _HKCacheIndexFromDate();

    (*(v33 + 8))(v128, v126);
    sub_1B496F4FC(v19);
    *(v0 + 2104) = v36;
    *(v0 + 2112) = v134;
    *(v0 + 2120) = v139;
    *(v0 + 2128) = v136;
    *(v0 + 2136) = v138;
    *(v0 + 2144) = v140;
    *(v0 + 2152) = v9;
    *(v0 + 2160) = v36;
    *(v0 + 2168) = v36;
    v37 = MEMORY[0x1E69E7CC0];
    *(v0 + 2176) = MEMORY[0x1E69E7CC0];
    *(v0 + 2184) = v36;
    *(v0 + 2192) = v36;
    *(v0 + 2200) = v37;
    *(v0 + 2208) = v36;
    *(v0 + 2216) = v36;
    *(v0 + 2224) = v37;
    nullsub_1(v18);
    sub_1B496F4FC(v17);
    v38 = *(v17 + 5);
    *(v0 + 1128) = *(v17 + 4);
    *(v0 + 1144) = v38;
    v39 = *(v17 + 7);
    *(v0 + 1160) = *(v17 + 6);
    *(v0 + 1176) = v39;
    v40 = *(v17 + 1);
    *(v0 + 1064) = *v17;
    *(v0 + 1080) = v40;
    v41 = *(v17 + 3);
    *(v0 + 1096) = *(v17 + 2);
    *(v0 + 1112) = v41;
    v42 = *v19;
    v43 = *(v19 + 16);
    v44 = *(v19 + 48);
    *(v0 + 840) = *(v19 + 32);
    *(v0 + 856) = v44;
    *(v0 + 808) = v42;
    *(v0 + 824) = v43;
    v45 = *(v19 + 64);
    v46 = *(v19 + 80);
    v47 = *(v19 + 112);
    *(v0 + 904) = *(v19 + 96);
    *(v0 + 920) = v47;
    *(v0 + 872) = v45;
    *(v0 + 888) = v46;
    v48 = *v18;
    v49 = v18[1];
    v50 = v18[3];
    *(v0 + 968) = v18[2];
    *(v0 + 984) = v50;
    *(v0 + 936) = v48;
    *(v0 + 952) = v49;
    v51 = v18[4];
    v52 = v18[5];
    v53 = v18[7];
    *(v0 + 1032) = v18[6];
    *(v0 + 1048) = v53;
    *(v0 + 1000) = v51;
    *(v0 + 1016) = v52;
    *(v0 + 800) = v36;
    *(v0 + 2384) = v132;
    *(v0 + 2392) = &protocol witness table for WorkoutState;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2360));
    sub_1B4BCAE38(v130, boxed_opaque_existential_1, type metadata accessor for WorkoutState);
    memcpy(__dst, (v0 + 800), sizeof(__dst));
    static LegacySnapshot.make(from:snapshot:)(v0 + 2360, __dst, __src);
    v73 = *(v0 + 2656);
    v74 = *(v0 + 2640);
    v75 = *(v0 + 2520);
    sub_1B4975024(v0 + 2360, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
    memcpy((v0 + 408), __src, 0x188uLL);
    sub_1B4974FBC(v75, v74, &qword_1EB8A6A98, &unk_1B4D1CBE0);
    v76 = v142(v74, 1, v73);
    if (v76 == 1)
    {
      sub_1B4975024(*(v0 + 2640), &qword_1EB8A6A98, &unk_1B4D1CBE0);
      v77 = v0 + 2400;
      *v125 = 0u;
      *(v0 + 2416) = 0u;
      *(v0 + 2432) = 0;
    }

    else
    {
      v78 = *(v0 + 2640);
      *(v0 + 2424) = *(v0 + 2656);
      *(v0 + 2432) = &protocol witness table for WorkoutState;
      v77 = v0 + 2400;
      v79 = __swift_allocate_boxed_opaque_existential_1(v125);
      sub_1B4BCAEA0(v78, v79, type metadata accessor for WorkoutState);
    }

    memcpy(__dst, (v0 + 800), sizeof(__dst));
    static LegacySnapshot.make(from:snapshot:)(v77, __dst, __src);
    v80 = *(v0 + 2672);
    v134 = 0;
    v81 = *(v0 + 2656);
    sub_1B4B68220(v0 + 800);
    sub_1B4975024(v77, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
    memcpy((v0 + 1192), __src, 0x188uLL);
    v133 = *(v80 + *(v81 + 24));
    v82 = sub_1B4BC8924(v80);
    v19 = *(v82 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v83 = (v82 + 32);
      v137 = (*(v0 + 2592) + 8);
      v138 = objc_opt_self();
      do
      {
        v141 = v9;
        v84 = *(v0 + 2608);
        v85 = *(v0 + 2600);
        v86 = *(v0 + 2584);
        v87 = *v83;
        v142 = (v83 + 1);
        LOBYTE(v146) = *v83;
        DistanceReference.rawValue.getter();
        v88 = [v138 kilometers];
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        sub_1B4D1741C();
        sub_1B4BCAD44();
        v89 = sub_1B4D1816C();
        v90 = *v137;
        (*v137)(v85, v86);
        v90(v84, v86);
        if (v89)
        {
          goto LABEL_31;
        }

        v91 = *(v0 + 2608);
        v92 = *(v0 + 2600);
        v93 = *(v0 + 2584);
        LOBYTE(v146) = v87;
        DistanceReference.rawValue.getter();
        v94 = [v138 kilometers];
        sub_1B4D1741C();
        v95 = sub_1B4D1816C();
        v90(v92, v93);
        v90(v91, v93);
        if (v95)
        {
LABEL_31:
          v9 = v141;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1B4A1E0B8(0, *(v141 + 2) + 1, 1, v141);
          }

          ++v83;
          v97 = *(v9 + 2);
          v96 = *(v9 + 3);
          if (v97 >= v96 >> 1)
          {
            v9 = sub_1B4A1E0B8((v96 > 1), v97 + 1, 1, v9);
          }

          *(v9 + 2) = v97 + 1;
          v9[v97 + 32] = v87;
        }

        else
        {
          v9 = v141;
          ++v83;
        }

        --v19;
      }

      while (v19);
    }

    v18 = MEMORY[0x1E69E7CC0];
    v146 = MEMORY[0x1E69E7CC0];
    v139 = *(v9 + 2);
    if (!v139)
    {
      break;
    }

    v136 = *(v0 + 2560);
    v98 = *(v0 + 2536);
    memcpy((v0 + 1584), (v0 + 1192), 0x188uLL);
    nullsub_1(v0 + 1584);
    memcpy((v0 + 16), (v0 + 1584), 0x188uLL);
    v99 = 0;
    v100 = v9 + 32;
    v127 = v98;
    v129 = (v98 + 48);
    v17 = &qword_1EB8ABFB0;
    v32 = &qword_1B4D39820;
    v101 = v133;
    v140 = v9;
    v131 = v9 + 32;
    while (v99 < *(v9 + 2))
    {
      v102 = v32;
      v103 = v17;
      v143 = v99;
      v104 = v99[v100];
      v105 = [v101 effectiveTypeIdentifier];
      v106 = v105;
      v107 = &unk_1F2CB8C68;
      if ((v104 - 16) <= 2)
      {
        v107 = *(&off_1E7C118E0 + (v104 - 16));
      }

      v142 = (v143 + 1);
      v108 = v107[2];
      v109 = 4;
      do
      {
        if (!v108)
        {

          v19 = v18;
          v17 = v103;
          v32 = v102;
          goto LABEL_39;
        }

        v110 = v107[v109++];
        --v108;
      }

      while (v110 != v105);
      v111 = v101;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFC0, &qword_1B4D39830);
      v112 = *(v136 + 72);
      v113 = (*(v136 + 80) + 32) & ~*(v136 + 80);
      v114 = swift_allocObject();
      v138 = v111;
      sub_1B4C8FB08(v135, &unk_1F2CB8D18, v106, v104, (v0 + 408), (v0 + 16), v138, (v114 + v113));
      v134 = 0;
      v115 = *(v0 + 2576);
      v116 = *(v0 + 2568);
      v117 = *(v0 + 2528);
      v17 = v103;
      v118 = v103;
      v32 = v102;
      sub_1B4974FBC(v114 + v113, v115, v118, v102);
      sub_1B4BCADA8(v115, v116);
      v119 = (*v129)(v116, 1, v117);
      v120 = *(v0 + 2568);
      if (v119 == 1)
      {
        sub_1B4975024(v120, v17, v102);
        v19 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B4BCAEA0(v120, *(v0 + 2544), type metadata accessor for WorkoutVoiceFastestRecordFact);
        v19 = MEMORY[0x1E69E7CC0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1B4A1E090(0, *(MEMORY[0x1E69E7CC0] + 16) + 1, 1, MEMORY[0x1E69E7CC0]);
        }

        v122 = *(v19 + 16);
        v121 = *(v19 + 24);
        if (v122 >= v121 >> 1)
        {
          v19 = sub_1B4A1E090(v121 > 1, v122 + 1, 1, v19);
        }

        v123 = *(v0 + 2544);
        *(v19 + 16) = v122 + 1;
        sub_1B4BCAEA0(v123, v19 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v122, type metadata accessor for WorkoutVoiceFastestRecordFact);
      }

      v101 = v133;
      swift_setDeallocating();
      sub_1B4975024(v114 + v113, v17, v102);
      swift_deallocClassInstance();

      v9 = v140;
      v18 = MEMORY[0x1E69E7CC0];
      v100 = v131;
LABEL_39:
      sub_1B4997A48(v19);
      v99 = v142;
      if (v142 == v139)
      {

        sub_1B4B68220(v0 + 408);
        v61 = v146;
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_58:
    swift_once();
  }

  sub_1B4B68220(v0 + 408);
  v61 = MEMORY[0x1E69E7CC0];
LABEL_56:
  v124 = *(v0 + 2672);

  sub_1B4B68220(v0 + 1192);
  sub_1B49BFEC0(v124, type metadata accessor for WorkoutState);
LABEL_19:
  v62 = *(v0 + 2672);
  v63 = *(v0 + 2648);
  v64 = *(v0 + 2640);
  v65 = *(v0 + 2632);
  v66 = *(v0 + 2608);
  v67 = *(v0 + 2600);
  v68 = *(v0 + 2576);
  v69 = *(v0 + 2568);
  v70 = *(v0 + 2544);

  v71 = *(v0 + 8);

  return v71(v61);
}

uint64_t sub_1B4BCA7BC(uint64_t a1)
{
  v2 = sub_1B4D18F8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7058, &qword_1B4D1CCA8);
    v10 = sub_1B4D1892C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v35 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    v33 = v9;
    v34 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v14 * v11, v2);
      v16 = *(v10 + 40);
      sub_1B4BCACFC(&qword_1EB8A7060, MEMORY[0x1E696A1C0]);
      v17 = sub_1B4D1807C();
      v18 = -1 << *(v10 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v38 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        do
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v19 * v14, v2);
          sub_1B4BCACFC(&qword_1EB8A7068, MEMORY[0x1E696A1C0]);
          v25 = sub_1B4D1816C();
          v26 = *v15;
          (*v15)(v6, v2);
          if (v25)
          {
            v26(v39, v2);
            v12 = v24;
            v9 = v33;
            goto LABEL_4;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v38 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          v12 = v24;
        }

        while (((1 << v19) & v21) != 0);
        v9 = v33;
      }

      v27 = v39;
      *(v38 + 8 * v20) = v22 | v21;
      result = (*v34)(*(v10 + 48) + v19 * v14, v27, v2);
      v29 = *(v10 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v10 + 16) = v31;
LABEL_4:
      v11 = v36 + 1;
      if (v36 + 1 == v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1B4BCAAE4()
{
  result = qword_1EB8ABF80;
  if (!qword_1EB8ABF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF80);
  }

  return result;
}

unint64_t sub_1B4BCAB38(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BCAB68();
  result = sub_1B4BCABBC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BCAB68()
{
  result = qword_1EB8ABF88;
  if (!qword_1EB8ABF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF88);
  }

  return result;
}

unint64_t sub_1B4BCABBC()
{
  result = qword_1EB8ABF90;
  if (!qword_1EB8ABF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF90);
  }

  return result;
}

unint64_t sub_1B4BCAC14()
{
  result = qword_1EB8ABF98;
  if (!qword_1EB8ABF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF98);
  }

  return result;
}

uint64_t sub_1B4BCAC68(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BCACFC(&qword_1EB8ABFA0, type metadata accessor for WorkoutVoiceFastestRecordFact);
  result = sub_1B4BCACFC(&qword_1EB8ABFA8, type metadata accessor for WorkoutVoiceFastestRecordFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4BCACFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4BCAD44()
{
  result = qword_1EDC3CB38;
  if (!qword_1EDC3CB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CB38);
  }

  return result;
}

uint64_t sub_1B4BCADA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFB0, &qword_1B4D39820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BCAE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BCAEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t DateRangeDescriptor.analyticsKey.getter()
{
  v1 = type metadata accessor for DateRangeDescriptor();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B94680(v0, v4);
  v5 = 0x646F547261466F73;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
      v5 = 0x6968547261466F73;
      break;
    case 4u:
      v5 = 0x6B6565577473616CLL;
      break;
    case 5u:
      v5 = 0x746E6F4D7473616CLL;
      break;
    case 6u:
      v5 = 0x726165597473616CLL;
      break;
    case 7u:
      v5 = 0xD000000000000010;
      break;
    case 8u:
      v5 = 0xD000000000000011;
      break;
    case 9u:
      v5 = 0xD000000000000010;
      break;
    case 0xAu:
      v5 = 0x726968547473616CLL;
      break;
    case 0xBu:
      v5 = 0x747869537473616CLL;
      break;
    case 0xCu:
      v5 = 0x656E694E7473616CLL;
      break;
    case 0xDu:
      v5 = 0x577869537473616CLL;
      break;
    case 0xEu:
      v5 = 0x72756F467473616CLL;
      break;
    case 0xFu:
      v5 = 0x656D69546C6C61;
      break;
    default:
      break;
  }

  v6 = sub_1B4D1777C();
  (*(*(v6 - 8) + 8))(v4, v6);
  return v5;
}

uint64_t type metadata accessor for DateRangeDescriptor()
{
  result = qword_1EDC3CEF8;
  if (!qword_1EDC3CEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DateRangeDescriptor.dateInterval()@<X0>(uint64_t a1@<X8>)
{
  v291 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v270 = &v244 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v268 = &v244 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v267 = &v244 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v266 = &v244 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v265 = &v244 - v11;
  v293 = sub_1B4D1796C();
  v287 = *(v293 - 8);
  v12 = *(v287 + 64);
  MEMORY[0x1EEE9AC00](v293);
  v269 = &v244 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v263 = &v244 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v262 = &v244 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v261 = &v244 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v260 = &v244 - v21;
  v292 = sub_1B4D1794C();
  v288 = *(v292 - 8);
  v22 = *(v288 + 64);
  MEMORY[0x1EEE9AC00](v292);
  v264 = &v244 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v280 = &v244 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v279 = &v244 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v278 = &v244 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v277 = &v244 - v31;
  v296 = sub_1B4D1777C();
  v297 = *(v296 - 8);
  v32 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v296);
  v250 = &v244 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v259 = &v244 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v249 = &v244 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v281 = &v244 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v248 = &v244 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v286 = &v244 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v247 = &v244 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v285 = &v244 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v246 = &v244 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v284 = &v244 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v245 = &v244 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v283 = &v244 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v274 = &v244 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v257 = &v244 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v258 = &v244 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v273 = &v244 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v254 = &v244 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v255 = &v244 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v276 = &v244 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v256 = &v244 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v272 = &v244 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v252 = &v244 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v253 = &v244 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v271 = &v244 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v244 - v81;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v244 - v84;
  MEMORY[0x1EEE9AC00](v86);
  v275 = &v244 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v251 = &v244 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v244 - v91;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v244 - v94;
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v244 - v97;
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v244 - v100;
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v244 - v103;
  MEMORY[0x1EEE9AC00](v105);
  v282 = &v244 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v289 = &v244 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v290 = &v244 - v110;
  v111 = type metadata accessor for DateRangeDescriptor();
  v112 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v244 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B94680(v294, v114);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v182 = v297;
      v183 = v290;
      v184 = v296;
      (*(v297 + 32))(v290, v114, v296);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v293, qword_1EDC3CE48);
      v185 = sub_1B4D178CC();
      v186 = sub_1B4D1771C();
      v187 = v183;
      v188 = [v185 hk:v186 startOfFitnessWeekBeforeDate:?];

      v189 = v289;
      sub_1B4D1775C();

      v190 = *(v182 + 16);
      v190(v282, v189, v184);
      v190(v104, v187, v184);
      v120 = v291;
      sub_1B4D174CC();
      v191 = *(v182 + 8);
      v191(v189, v184);
      v191(v187, v184);
      goto LABEL_37;
    case 2u:
      v173 = v297;
      v174 = v296;
      (*(v297 + 32))(v101, v114, v296);
      v175 = v295;
      Date.beginningOfMonth()(v98);
      if (v175)
      {
        return (*(v173 + 8))(v101, v174);
      }

      v225 = *(v173 + 16);
      v225(v290, v98, v174);
      v225(v289, v101, v174);
      v226 = v291;
      sub_1B4D174CC();
      v227 = *(v173 + 8);
      v227(v98, v174);
      v227(v101, v174);
      v228 = sub_1B4D174EC();
      return (*(*(v228 - 8) + 56))(v226, 0, 1, v228);
    case 3u:
      v177 = v297;
      v178 = v296;
      (*(v297 + 32))(v95, v114, v296);
      v179 = v295;
      Date.beginningOfYear()(v92);
      if (v179)
      {
        return (*(v177 + 8))(v95, v178);
      }

      v229 = *(v177 + 16);
      v229(v290, v92, v178);
      v229(v289, v95, v178);
      v155 = v291;
      sub_1B4D174CC();
      v230 = *(v177 + 8);
      v230(v92, v178);
      v230(v95, v178);
      goto LABEL_74;
    case 4u:
      v146 = v297;
      v147 = v251;
      v139 = v296;
      (*(v297 + 32))(v251, v114, v296);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v148 = __swift_project_value_buffer(v293, qword_1EDC3CE48);
      v149 = v295;
      Date.endOfLastWeek(calendar:)(v148, v275);
      if (v149)
      {
        return (*(v146 + 8))(v147, v139);
      }

      v150 = sub_1B4D178CC();
      v151 = sub_1B4D1771C();
      v152 = [v150 hk:v151 startOfFitnessWeekBeforeDate:?];

      v153 = v290;
      sub_1B4D1775C();

      v154 = *(v146 + 16);
      v154(v289, v153, v139);
      v154(v282, v275, v139);
      v155 = v291;
      sub_1B4D174CC();
      v156 = *(v146 + 8);
      v156(v153, v139);
      v157 = v275;
      goto LABEL_66;
    case 5u:
      (*(v297 + 32))(v85, v114, v296);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v193 = __swift_project_value_buffer(v293, qword_1EDC3CE48);
      v194 = v295;
      Date.endOfLastMonth(calendar:)(v193, v82);
      v195 = v271;
      if (v194)
      {
        return (*(v297 + 8))(v85, v296);
      }

      Date.beginningOfMonth()(v271);
      v237 = v297;
      v238 = *(v297 + 16);
      v239 = v195;
      v240 = v296;
      v238(v290, v239, v296);
      v238(v289, v82, v240);
      v155 = v291;
      sub_1B4D174CC();
      v241 = *(v237 + 8);
      v241(v271, v240);
      v241(v82, v240);
      v241(v85, v240);
      goto LABEL_74;
    case 6u:
      v164 = v297;
      v165 = v253;
      v166 = v296;
      (*(v297 + 32))(v253, v114, v296);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v202 = __swift_project_value_buffer(v293, qword_1EDC3CE48);
      v168 = v252;
      v203 = v295;
      Date.endOfLastYear(calendar:)(v202, v252);
      v204 = v272;
      if (v203)
      {
        return (*(v164 + 8))(v165, v166);
      }

      Date.beginningOfYear()(v272);
      v205 = *(v164 + 16);
      v205(v290, v204, v166);
      v205(v289, v168, v166);
      v155 = v291;
      sub_1B4D174CC();
      v172 = *(v164 + 8);
      v172(v272, v166);
      goto LABEL_73;
    case 7u:
      v146 = v297;
      v147 = v256;
      v139 = v296;
      (*(v297 + 32))(v256, v114, v296);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v180 = __swift_project_value_buffer(v293, qword_1EDC3CE48);
      v181 = v295;
      Date.thisDayLastWeek(calendar:)(v180, v276);
      if (v181)
      {
        return (*(v146 + 8))(v147, v139);
      }

      v231 = sub_1B4D178CC();
      v232 = sub_1B4D1771C();
      v233 = [v231 hk:v232 startOfFitnessWeekBeforeDate:?];

      v234 = v290;
      sub_1B4D1775C();

      v235 = *(v146 + 16);
      v235(v289, v234, v139);
      v235(v282, v276, v139);
      v155 = v291;
      sub_1B4D174CC();
      v156 = *(v146 + 8);
      v156(v234, v139);
      v157 = v276;
      goto LABEL_66;
    case 8u:
      v164 = v297;
      v165 = v255;
      v166 = v296;
      (*(v297 + 32))(v255, v114, v296);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v212 = __swift_project_value_buffer(v293, qword_1EDC3CE48);
      v168 = v254;
      v213 = v295;
      Date.thisDayLastMonth(calendar:)(v212, v254);
      v214 = v273;
      if (v213)
      {
        return (*(v164 + 8))(v165, v166);
      }

      Date.beginningOfMonth()(v273);
      v242 = *(v164 + 16);
      v242(v290, v214, v166);
      v242(v289, v168, v166);
      v155 = v291;
      sub_1B4D174CC();
      v172 = *(v164 + 8);
      v172(v273, v166);
      goto LABEL_73;
    case 9u:
      v164 = v297;
      v165 = v258;
      v166 = v296;
      (*(v297 + 32))(v258, v114, v296);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v167 = __swift_project_value_buffer(v293, qword_1EDC3CE48);
      v168 = v257;
      v169 = v295;
      Date.thisDayLastYear(calendar:)(v167, v257);
      v170 = v274;
      if (v169)
      {
        return (*(v164 + 8))(v165, v166);
      }

      Date.beginningOfYear()(v274);
      v171 = *(v164 + 16);
      v171(v290, v170, v166);
      v171(v289, v168, v166);
      v155 = v291;
      sub_1B4D174CC();
      v172 = *(v164 + 8);
      v172(v274, v166);
LABEL_73:
      v172(v168, v166);
      v172(v165, v166);
      goto LABEL_74;
    case 0xAu:
      v138 = v297;
      v139 = v296;
      v294 = *(v297 + 32);
      v294(v283, v114, v296);
      v206 = v288;
      (*(v288 + 104))(v277, *MEMORY[0x1E6969A48], v292);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v207 = v293;
      v208 = __swift_project_value_buffer(v293, qword_1EDC3CE48);
      v209 = v287;
      v210 = v260;
      (*(v287 + 16))(v260, v208, v207);
      v211 = v265;
      sub_1B4D1790C();
      if ((*(v138 + 48))(v211, 1, v139) == 1)
      {
        sub_1B4975024(v211, &qword_1EB8A6790, &qword_1B4D1BBC0);
        sub_1B4B15124();
        swift_allocError();
        swift_willThrow();
        (*(v209 + 8))(v210, v207);
        (*(v206 + 8))(v277, v292);
        return (*(v138 + 8))(v283, v139);
      }

      (*(v209 + 8))(v210, v207);
      (*(v206 + 8))(v277, v292);
      v222 = v245;
      v294(v245, v211, v139);
      v223 = *(v138 + 16);
      v223(v290, v222, v139);
      v224 = v289;
      v147 = v283;
      goto LABEL_65;
    case 0xBu:
      v138 = v297;
      v139 = v296;
      v294 = *(v297 + 32);
      v294(v284, v114, v296);
      v140 = v288;
      (*(v288 + 104))(v278, *MEMORY[0x1E6969A48], v292);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v141 = v293;
      v142 = __swift_project_value_buffer(v293, qword_1EDC3CE48);
      v143 = v287;
      v144 = v261;
      (*(v287 + 16))(v261, v142, v141);
      v145 = v266;
      sub_1B4D1790C();
      if ((*(v138 + 48))(v145, 1, v139) == 1)
      {
        sub_1B4975024(v145, &qword_1EB8A6790, &qword_1B4D1BBC0);
        sub_1B4B15124();
        swift_allocError();
        swift_willThrow();
        (*(v143 + 8))(v144, v141);
        (*(v140 + 8))(v278, v292);
        return (*(v138 + 8))(v284, v139);
      }

      (*(v143 + 8))(v144, v141);
      (*(v140 + 8))(v278, v292);
      v222 = v246;
      v294(v246, v145, v139);
      v223 = *(v138 + 16);
      v223(v290, v222, v139);
      v224 = v289;
      v147 = v284;
      goto LABEL_65;
    case 0xCu:
      v138 = v297;
      v139 = v296;
      v294 = *(v297 + 32);
      v294(v285, v114, v296);
      v158 = v288;
      (*(v288 + 104))(v279, *MEMORY[0x1E6969A48], v292);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v159 = v293;
      v160 = __swift_project_value_buffer(v293, qword_1EDC3CE48);
      v161 = v287;
      v162 = v262;
      (*(v287 + 16))(v262, v160, v159);
      v163 = v267;
      sub_1B4D1790C();
      if ((*(v138 + 48))(v163, 1, v139) == 1)
      {
        sub_1B4975024(v163, &qword_1EB8A6790, &qword_1B4D1BBC0);
        sub_1B4B15124();
        swift_allocError();
        swift_willThrow();
        (*(v161 + 8))(v162, v159);
        (*(v158 + 8))(v279, v292);
        return (*(v138 + 8))(v285, v139);
      }

      (*(v161 + 8))(v162, v159);
      (*(v158 + 8))(v279, v292);
      v222 = v247;
      v294(v247, v163, v139);
      v223 = *(v138 + 16);
      v223(v290, v222, v139);
      v224 = v289;
      v147 = v285;
      goto LABEL_65;
    case 0xDu:
      v138 = v297;
      v139 = v296;
      v294 = *(v297 + 32);
      v294(v286, v114, v296);
      v196 = v288;
      (*(v288 + 104))(v280, *MEMORY[0x1E6969A48], v292);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v197 = v293;
      v198 = __swift_project_value_buffer(v293, qword_1EDC3CE48);
      v199 = v287;
      v200 = v263;
      (*(v287 + 16))(v263, v198, v197);
      v201 = v268;
      sub_1B4D1790C();
      if ((*(v138 + 48))(v201, 1, v139) == 1)
      {
        sub_1B4975024(v201, &qword_1EB8A6790, &qword_1B4D1BBC0);
        sub_1B4B15124();
        swift_allocError();
        swift_willThrow();
        (*(v199 + 8))(v200, v197);
        (*(v196 + 8))(v280, v292);
        return (*(v138 + 8))(v286, v139);
      }

      (*(v199 + 8))(v200, v197);
      (*(v196 + 8))(v280, v292);
      v222 = v248;
      v294(v248, v201, v139);
      v223 = *(v138 + 16);
      v223(v290, v222, v139);
      v224 = v289;
      v147 = v286;
LABEL_65:
      v223(v224, v147, v139);
      v155 = v291;
      sub_1B4D174CC();
      v156 = *(v138 + 8);
      v157 = v222;
LABEL_66:
      v156(v157, v139);
      v156(v147, v139);
      goto LABEL_74;
    case 0xEu:
      v294 = *(v297 + 32);
      v294(v281, v114, v296);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v122 = v293;
      v123 = __swift_project_value_buffer(v293, qword_1EDC3CE48);
      v124 = sub_1B4D178CC();
      v125 = sub_1B4D1771C();
      v126 = [v124 hk:v125 startOfFitnessWeekBeforeDate:?];

      v127 = v259;
      sub_1B4D1775C();

      v128 = v288;
      v129 = v264;
      v130 = v292;
      (*(v288 + 104))(v264, *MEMORY[0x1E6969A10], v292);
      v131 = v287;
      v132 = *(v287 + 16);
      v133 = v269;
      v286 = v123;
      v132(v269, v123, v122);
      v134 = v270;
      sub_1B4D1790C();
      if ((*(v297 + 48))(v134, 1, v296) == 1)
      {
        sub_1B4975024(v134, &qword_1EB8A6790, &qword_1B4D1BBC0);
        sub_1B4B15124();
        swift_allocError();
        swift_willThrow();
        (*(v131 + 8))(v133, v122);
        (*(v128 + 8))(v129, v130);
        v135 = *(v297 + 8);
        v136 = v296;
        v135(v127, v296);
        return (v135)(v281, v136);
      }

      else
      {
        v215 = v122;
        v216 = v295;
        (*(v131 + 8))(v133, v215);
        (*(v128 + 8))(v129, v130);
        v217 = *(v297 + 8);
        v218 = v296;
        v217(v127, v296);
        v219 = v249;
        v294(v249, v134, v218);
        v220 = v250;
        v221 = v281;
        Date.endOfLastWeek(calendar:)(v286, v250);
        if (v216)
        {
          v217(v219, v218);
          return (v217)(v221, v218);
        }

        else
        {
          v236 = *(v297 + 16);
          v236(v290, v219, v218);
          v236(v289, v220, v218);
          v155 = v291;
          sub_1B4D174CC();
          v217(v220, v218);
          v217(v219, v218);
          v217(v281, v218);
LABEL_74:
          v243 = sub_1B4D174EC();
          return (*(*(v243 - 8) + 56))(v155, 0, 1, v243);
        }
      }

    case 0xFu:
      v176 = sub_1B4D174EC();
      (*(*(v176 - 8) + 56))(v291, 1, 1, v176);
      return (*(v297 + 8))(v114, v296);
    default:
      v115 = v297;
      v116 = v290;
      v117 = v296;
      (*(v297 + 32))(v290, v114, v296);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v293, qword_1EDC3CE48);
      v118 = v289;
      sub_1B4D1782C();
      v119 = *(v115 + 16);
      v119(v282, v118, v117);
      v119(v104, v116, v117);
      v120 = v291;
      sub_1B4D174CC();
      v121 = *(v115 + 8);
      v121(v118, v117);
      v121(v116, v117);
LABEL_37:
      v192 = sub_1B4D174EC();
      return (*(*(v192 - 8) + 56))(v120, 0, 1, v192);
  }
}

uint64_t DateRangeDescriptor.hash(into:)()
{
  v1 = sub_1B4D1777C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateRangeDescriptor();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B94680(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 32))(v5, v9, v1);
  MEMORY[0x1B8C7D290](EnumCaseMultiPayload);
  sub_1B4BCE39C(&qword_1EB8A72A8, MEMORY[0x1E6969530]);
  sub_1B4D1808C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t DateRangeDescriptor.hashValue.getter()
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BCD6D8()
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BCD71C()
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t _s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v140 = a2;
  v3 = sub_1B4D1777C();
  v4 = *(v3 - 8);
  v141 = v3;
  v142 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v129 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v128 = &v114 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v114 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v114 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v114 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v114 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v123 = &v114 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v122 = &v114 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v114 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v114 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v119 = &v114 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v118 = &v114 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v117 = &v114 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v116 = &v114 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v115 = &v114 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v114 = &v114 - v36;
  v37 = type metadata accessor for DateRangeDescriptor();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v139 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v138 = &v114 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v137 = &v114 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v136 = &v114 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v135 = &v114 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v134 = &v114 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v133 = &v114 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v132 = &v114 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v131 = &v114 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v130 = &v114 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v114 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v114 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v114 - v65;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v114 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v114 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v114 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE0, &qword_1B4D39918);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76 - 8);
  v79 = &v114 - v78;
  v81 = *(v80 + 56);
  sub_1B4B94680(a1, &v114 - v78);
  v82 = v81;
  sub_1B4B94680(v140, &v79[v81]);
  v83 = v79;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B4B94680(v79, v72);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v103 = v141;
        v102 = v142;
        v104 = v115;
        (*(v142 + 32))(v115, &v79[v82], v141);
        v91 = sub_1B4D1774C();
        v105 = *(v102 + 8);
        v105(v104, v103);
        v105(v72, v103);
        goto LABEL_35;
      }

      v60 = v72;
      goto LABEL_43;
    case 2u:
      sub_1B4B94680(v79, v69);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v94 = v141;
        v93 = v142;
        v95 = v116;
        (*(v142 + 32))(v116, &v79[v82], v141);
        v91 = sub_1B4D1774C();
        v96 = *(v93 + 8);
        v96(v95, v94);
        v96(v69, v94);
        goto LABEL_35;
      }

      v60 = v69;
      goto LABEL_43;
    case 3u:
      sub_1B4B94680(v79, v66);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v98 = v141;
        v97 = v142;
        v99 = v117;
        (*(v142 + 32))(v117, &v79[v82], v141);
        v91 = sub_1B4D1774C();
        v100 = *(v97 + 8);
        v100(v99, v98);
        v100(v66, v98);
        goto LABEL_35;
      }

      v60 = v66;
      goto LABEL_43;
    case 4u:
      sub_1B4B94680(v79, v63);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_39;
      }

      v89 = v141;
      v88 = v142;
      v90 = v118;
      (*(v142 + 32))(v118, &v79[v82], v141);
      v91 = sub_1B4D1774C();
      v92 = *(v88 + 8);
      v92(v90, v89);
      goto LABEL_38;
    case 5u:
      sub_1B4B94680(v79, v60);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_43;
      }

      v84 = v142;
      v85 = *(v142 + 32);
      v86 = &v79[v82];
      v101 = &v143;
      goto LABEL_30;
    case 6u:
      v60 = v130;
      sub_1B4B94680(v79, v130);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_43;
      }

      v84 = v142;
      v85 = *(v142 + 32);
      v86 = &v79[v82];
      v101 = &v144;
      goto LABEL_30;
    case 7u:
      v60 = v131;
      sub_1B4B94680(v79, v131);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_43;
      }

      v84 = v142;
      v85 = *(v142 + 32);
      v86 = &v79[v82];
      v101 = &v145;
LABEL_30:
      v87 = *(v101 - 32);
      goto LABEL_33;
    case 8u:
      v63 = v132;
      sub_1B4B94680(v79, v132);
      if (swift_getEnumCaseMultiPayload() != 8)
      {
LABEL_39:
        v60 = v63;
        goto LABEL_43;
      }

      v89 = v141;
      v107 = v142;
      v108 = v122;
      (*(v142 + 32))(v122, &v79[v82], v141);
      v91 = sub_1B4D1774C();
      v92 = *(v107 + 8);
      v92(v108, v89);
LABEL_38:
      v106 = v63;
LABEL_34:
      v92(v106, v89);
      goto LABEL_35;
    case 9u:
      v60 = v133;
      sub_1B4B94680(v79, v133);
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_43;
      }

      v84 = v142;
      v85 = *(v142 + 32);
      v86 = &v79[v82];
      v87 = v123;
      goto LABEL_33;
    case 0xAu:
      v60 = v134;
      sub_1B4B94680(v79, v134);
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_43;
      }

      v84 = v142;
      v85 = *(v142 + 32);
      v86 = &v79[v82];
      v87 = v124;
      goto LABEL_33;
    case 0xBu:
      v60 = v135;
      sub_1B4B94680(v79, v135);
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_43;
      }

      v84 = v142;
      v85 = *(v142 + 32);
      v86 = &v79[v82];
      v87 = v125;
      goto LABEL_33;
    case 0xCu:
      v60 = v136;
      sub_1B4B94680(v79, v136);
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_43;
      }

      v84 = v142;
      v85 = *(v142 + 32);
      v86 = &v79[v82];
      v87 = v126;
      goto LABEL_33;
    case 0xDu:
      v60 = v137;
      sub_1B4B94680(v79, v137);
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_43;
      }

      v84 = v142;
      v85 = *(v142 + 32);
      v86 = &v79[v82];
      v87 = v127;
      goto LABEL_33;
    case 0xEu:
      v60 = v138;
      sub_1B4B94680(v79, v138);
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_43;
      }

      v84 = v142;
      v85 = *(v142 + 32);
      v86 = &v79[v82];
      v87 = v128;
      goto LABEL_33;
    case 0xFu:
      v60 = v139;
      sub_1B4B94680(v79, v139);
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_43;
      }

      v84 = v142;
      v85 = *(v142 + 32);
      v86 = &v79[v82];
      v87 = v129;
LABEL_33:
      v89 = v141;
      v85(v87, v86, v141);
      v91 = sub_1B4D1774C();
      v92 = *(v84 + 8);
      v92(v87, v89);
      v106 = v60;
      goto LABEL_34;
    default:
      sub_1B4B94680(v79, v75);
      if (swift_getEnumCaseMultiPayload())
      {
        v60 = v75;
LABEL_43:
        (*(v142 + 8))(v60, v141);
        sub_1B4975024(v79, &qword_1EB8ABFE0, &qword_1B4D39918);
        v91 = 0;
      }

      else
      {
        v111 = v141;
        v110 = v142;
        v112 = v114;
        (*(v142 + 32))(v114, &v79[v82], v141);
        v91 = sub_1B4D1774C();
        v113 = *(v110 + 8);
        v113(v112, v111);
        v113(v75, v111);
LABEL_35:
        sub_1B49CA284(v83);
      }

      return v91 & 1;
  }
}

uint64_t sub_1B4BCE39C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B4BCE3E4()
{
  sub_1B4BCE49C(319, &qword_1EDC3CE60);
  if (v0 <= 0x3F)
  {
    sub_1B4BCE49C(319, &qword_1EDC3CE70);
    if (v1 <= 0x3F)
    {
      sub_1B4BCE49C(319, &qword_1EDC3CE68);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1B4BCE49C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B4D1777C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t RingsProperties.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = *(a1 + 16);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v28 = a2;
    v29 = v9;
    v33 = MEMORY[0x1E69E7CC0];
    result = sub_1B4BCEB88(0, v13, 0);
    v16 = 0;
    v14 = v33;
    v30 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (v16 < *(v12 + 16))
    {
      sub_1B4BCEBA8(v30 + *(v5 + 72) * v16, v11);
      v17 = v31;
      sub_1B4BCEBA8(v11, v31);
      RingsPropertyRecord.init(_:)(v17, v32);
      if (v2)
      {
        sub_1B4BCEC0C(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
        sub_1B4BCEC0C(v29, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
      }

      v18 = v12;
      v19 = v5;
      result = sub_1B4BCEC0C(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
      v33 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1B4BCEB88((v20 > 1), v21 + 1, 1);
        v14 = v33;
      }

      ++v16;
      *(v14 + 16) = v21 + 1;
      v22 = (v14 + (v21 << 6));
      v23 = v32[0];
      v24 = v32[1];
      v25 = v32[3];
      v22[4] = v32[2];
      v22[5] = v25;
      v22[2] = v23;
      v22[3] = v24;
      v5 = v19;
      v12 = v18;
      if (v13 == v16)
      {
        a2 = v28;
        v9 = v29;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v26 = *v9;
    v27 = v9[1];
    result = sub_1B4BCEC0C(v9, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    *a2 = v26;
    a2[1] = v27;
    a2[2] = v14;
  }

  return result;
}

uint64_t RingsProperties.protobuf()()
{
  v3 = *v0;
  v1 = *(v0 + 2);
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  sub_1B4BCF87C(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BCE814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  v27 = a3;
  *a1 = a2;
  a1[1] = a3;
  v13 = *(a4 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v23 = a1;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF73C(0, v13, 0);
    v14 = v36;
    v15 = a4 + 32;
    while (1)
    {
      sub_1B4B6F2FC(v15, v32);
      v16 = v33;
      v17 = v34;
      v18 = sub_1B497558C(&v35, &v31);
      v28[0] = v26;
      v28[1] = v27;
      v29 = v16;
      v30 = v17;
      MEMORY[0x1EEE9AC00](v18);
      *(&v23 - 2) = v28;
      sub_1B4BCF87C(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
      sub_1B4D17DAC();
      if (v4)
      {
        break;
      }

      sub_1B4B6F358(v32);
      sub_1B4B6F358(v28);
      v36 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B4BCF73C(v19 > 1, v20 + 1, 1);
        v14 = v36;
      }

      *(v14 + 16) = v20 + 1;
      sub_1B4BCF8C4(v12, v14 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20);
      v15 += 64;
      if (!--v13)
      {
        a1 = v23;
        goto LABEL_9;
      }
    }

    sub_1B4B6F358(v32);
    sub_1B4B6F358(v28);
  }

  else
  {
LABEL_9:
    v22 = a1[2];

    a1[2] = v14;
  }

  return result;
}

uint64_t sub_1B4BCEA98()
{
  v3 = *v0;
  v1 = *(v0 + 2);
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  sub_1B4BCF87C(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  return sub_1B4D17DAC();
}

char *sub_1B4BCEB68(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD68A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEB88(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD6994(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B4BCEBA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BCEC0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1B4BCECFC(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD6AA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCED1C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD6BC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCED3C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD6CF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCED5C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD6D18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCED7C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD6D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCED9C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD6D68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCEDBC(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD6D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCEDDC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD6EC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEDFC(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD6EEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEE1C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD6FFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEE3C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD7108(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEE5C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD720C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEE7C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD7310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCEE9C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD7414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCEEBC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD7438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCEEDC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD745C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCEEFC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD7484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCEF1C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD74A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCEF3C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD74CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCEF5C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD74F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCEF7C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD7514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCEF9C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD7538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEFBC(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD755C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEFDC(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD767C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCEFFC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD7690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF01C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD76B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF03C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD76DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF05C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD7704(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF07C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD772C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF09C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD7874(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF0BC(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD79A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF0DC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD79CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF0FC(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD79F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF11C(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD7B00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF13C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD7C48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF15C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD7D48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF17C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD7E4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF19C(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD7E74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF1BC(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD7FA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF1DC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD7FCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF1FC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD7FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF21C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD801C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF23C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD8040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF25C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD8064(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF27C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD8088(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF29C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD80AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF2BC(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD7754(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF2DC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD80C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF2FC(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD80E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF31C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD80F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF33C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD810C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF35C(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD821C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF37C(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD8240(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF39C(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD8264(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF3BC(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD8398(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF3DC(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD83BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF3FC(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD83E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF41C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD8538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF43C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD854C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF45C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD8658(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF47C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD8680(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF49C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD86A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF4BC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD86D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF4DC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD86F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF4FC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD8720(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF51C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD8748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF53C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD8770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF55C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD8798(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF57C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD87C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF59C(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD87E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF5BC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD891C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF5DC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD8B28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF5FC(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD8B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF61C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD8C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF63C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD8D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF65C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD8E6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF67C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD8E94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF69C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD8EBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF6BC(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD8EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF6DC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD9050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF6FC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD9078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF71C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD90A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF73C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD90C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF75C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD90F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF77C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD9118(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF79C(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD9140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF7BC(char *a1, int64_t a2, char a3)
{
  result = sub_1B4CD9260(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF7DC(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD9360(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF7FC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD9494(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF81C(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD94BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF83C(void *a1, int64_t a2, char a3)
{
  result = sub_1B4CD95F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4BCF85C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4CD9614(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B4BCF87C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4BCF8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ActivityAchievementAward.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v97 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v94 = &v92 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v92 - v9;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v92 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v92 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v92 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7048, &qword_1B4D1CC00);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v92 - v28;
  v30 = sub_1B4D175FC();
  v99 = *(v30 - 8);
  v100 = v30;
  v31 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v98 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v101 = &v92 - v34;
  v35 = sub_1B4D1796C();
  v36 = *(*(v35 - 8) + 56);
  v95 = v29;
  v36(v29, 1, 1, v35);
  v37 = sub_1B4D179BC();
  v38 = *(*(v37 - 8) + 56);
  v96 = v25;
  v38(v25, 1, 1, v37);
  v102 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v39 = v102[8];
  v40 = a1;
  sub_1B4BD15DC(a1 + v39, v10);
  v41 = *(v12 + 48);
  if (v41(v10, 1, v11) == 1)
  {
    *v21 = 0;
    v21[2] = 0;
    v42 = v21 + *(v11 + 28);
    sub_1B4D17BBC();
    if (v41(v10, 1, v11) != 1)
    {
      sub_1B4BD164C(v10);
    }
  }

  else
  {
    sub_1B4BD1990(v10, v21, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  }

  v43 = *v21;
  sub_1B4BD1930(v21, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  v44 = v94;
  sub_1B4BD15DC(v40 + v39, v94);
  if (v41(v44, 1, v11) == 1)
  {
    *v18 = 0;
    *(v18 + 2) = 0;
    v45 = &v18[*(v11 + 28)];
    sub_1B4D17BBC();
    if (v41(v44, 1, v11) != 1)
    {
      sub_1B4BD164C(v44);
    }
  }

  else
  {
    sub_1B4BD1990(v44, v18, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  }

  v46 = *(v18 + 1);
  sub_1B4BD1930(v18, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  v47 = v40;
  v48 = v40 + v39;
  v49 = v97;
  sub_1B4BD15DC(v48, v97);
  if (v41(v49, 1, v11) == 1)
  {
    *v15 = 0;
    *(v15 + 2) = 0;
    v50 = &v15[*(v11 + 28)];
    sub_1B4D17BBC();
    v51 = v41(v49, 1, v11);
    v52 = v99;
    if (v51 != 1)
    {
      sub_1B4BD164C(v49);
    }
  }

  else
  {
    sub_1B4BD1990(v49, v15, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
    v52 = v99;
  }

  v53 = *(v15 + 2);
  sub_1B4BD1930(v15, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  v54 = v101;
  sub_1B4D175DC();
  v55 = v102;
  v56 = v40 + v102[9];
  if (*(v56 + 8))
  {
    v57 = 0;
    v58 = v100;
    v59 = v98;
  }

  else
  {
    v60 = (v40 + v102[10]);
    v57 = v60[1];
    v58 = v100;
    v59 = v98;
    if (v57)
    {
      v61 = *v56;
      v62 = *v60;
      v63 = v60[1];

      v64 = sub_1B4D1817C();

      v65 = [objc_opt_self() unitFromString_];

      v57 = [objc_opt_self() quantityWithUnit:v65 doubleValue:v61];
    }
  }

  v66 = v47 + v55[11];
  if (*(v66 + 8))
  {
    v67 = 0;
  }

  else
  {
    v68 = (v47 + v55[12]);
    v67 = v68[1];
    if (v67)
    {
      v69 = *v66;
      v70 = *v68;
      v71 = v68[1];

      v72 = sub_1B4D1817C();

      v73 = [objc_opt_self() unitFromString_];

      v67 = [objc_opt_self() quantityWithUnit:v73 doubleValue:v69];
      v54 = v101;
    }
  }

  v74 = *v47;
  v75 = *(v47 + 8);
  (*(v52 + 16))(v59, v54, v58);
  if (*(v47 + 24) == 1)
  {
    v76 = *(v47 + 16);
    v100 = v57;
    v101 = v67;
    v77 = v59;
    v78 = v47;
    LODWORD(v99) = v76 != 0;
    v79 = v54;
    v80 = *(v52 + 8);

    v80(v79, v58);
    v81 = *(v47 + 28);
    v82 = (v47 + v102[13]);
    v84 = *v82;
    v83 = v82[1];

    sub_1B4BD1930(v78, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
    v85 = v93;
    *v93 = v74;
    *(v85 + 1) = v75;
    v86 = type metadata accessor for ActivityAchievementAward();
    result = (*(v52 + 32))(&v85[v86[5]], v77, v58);
    v85[v86[6]] = v99;
    *&v85[v86[7]] = v81;
    v88 = v101;
    *&v85[v86[8]] = v100;
    *&v85[v86[9]] = v88;
    v89 = &v85[v86[10]];
    *v89 = v84;
    *(v89 + 1) = v83;
  }

  else
  {
    sub_1B4BD16B4();
    swift_allocError();
    *v90 = 0;
    swift_willThrow();

    v91 = *(v52 + 8);
    v91(v59, v58);
    v91(v54, v58);
    return sub_1B4BD1930(v47, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
  }

  return result;
}

uint64_t ActivityAchievementAward.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  sub_1B4BD1A18(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BD0310(uint64_t a1, uint64_t *a2)
{
  v62 = a1;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActivityAchievementAward();
  v9 = v8[5];
  v10 = sub_1B4D1759C();
  if (v11 & 1) != 0 || (v12 = v10, v13 = sub_1B4D175AC(), (v14) || (v15 = v13, v16 = sub_1B4D1757C(), (v17))
  {
    sub_1B4BD16B4();
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }

  else
  {
    v20 = a2[1];
    v59 = *a2;
    v60 = v16;
    v21 = v62;
    v22 = *(v62 + 8);

    v61 = &v59;
    *v21 = v59;
    *(v21 + 8) = v20;
    MEMORY[0x1EEE9AC00](v23);
    *(&v59 - 4) = v12;
    *(&v59 - 3) = v15;
    *(&v59 - 2) = v60;
    sub_1B4BD1A18(&qword_1EB8AC020, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
    sub_1B4D17DAC();
    v24 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
    v25 = *(v24 + 32);
    sub_1B4BD164C(v21 + v25);
    sub_1B4BD1990(v7, v21 + v25, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
    v26 = v21 + v25;
    v27 = v21;
    result = (*(v4 + 56))(v26, 0, 1, v3);
    *(v21 + 16) = *(a2 + v8[6]);
    *(v21 + 24) = 1;
    v28 = *(a2 + v8[7]);
    if (HIDWORD(v28))
    {
      __break(1u);
    }

    else
    {
      *(v21 + 28) = v28;
      v29 = *(a2 + v8[8]);
      v30 = 0x1FA925000;
      v31 = v24;
      if (v29)
      {
        v32 = v29;
        [v32 _value];
        v33 = v27 + *(v24 + 36);
        *v33 = v34;
        *(v33 + 8) = 0;
        v35 = [v32 _unit];
        v36 = [v35 unitString];

        v37 = sub_1B4D1818C();
        v39 = v38;

        v27 = v62;
        v40 = (v27 + v31[10]);
        v41 = v40[1];

        v30 = 0x1FA925000uLL;
        *v40 = v37;
        v40[1] = v39;
      }

      v42 = *(a2 + v8[9]);
      if (v42)
      {
        v43 = v30;
        v44 = v42;
        [v44 (v43 + 2168)];
        v45 = v27 + v31[11];
        *v45 = v46;
        *(v45 + 8) = 0;
        v47 = [v44 _unit];
        v48 = [v47 unitString];

        v49 = sub_1B4D1818C();
        v51 = v50;

        v27 = v62;
        v52 = (v27 + v31[12]);
        v53 = v52[1];

        *v52 = v49;
        v52[1] = v51;
      }

      v54 = (a2 + v8[10]);
      v55 = v54[1];
      if (v55)
      {
        v56 = *v54;
        v57 = (v27 + v31[13]);
        v58 = v57[1];

        *v57 = v56;
        v57[1] = v55;
      }
    }
  }

  return result;
}

_DWORD *sub_1B4BD070C(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *result = a2;
  if (a3 < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result[1] = a3;
  if (a4 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a4 <= 0x7FFFFFFF)
  {
    result[2] = a4;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B4BD077C(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4BD1A18(&qword_1EB8AC018, type metadata accessor for ActivityAchievementAward);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4BD1A18(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
    v1 = sub_1B4D17D6C();
    sub_1B4BD1930(v7, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
  }

  return v1;
}

uint64_t sub_1B4BD08FC()
{
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  sub_1B4BD1A18(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
  return sub_1B4D17DAC();
}

uint64_t AwardsContext.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for ActivityAchievementAward();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B4D1777C();
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = v56[8];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v27 = a1[1];
  v55 = &v51 - v28;
  sub_1B4D176CC();
  v29 = a1[2];
  v54 = v25;
  sub_1B4D176CC();
  v30 = *a1;
  v31 = *(*a1 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  v58 = a1;
  v52 = a2;
  v53 = v20;
  if (v31)
  {
    v63 = MEMORY[0x1E69E7CC0];
    v59 = v31;
    v61 = v30;
    result = sub_1B4BCED5C(0, v31, 0);
    v34 = 0;
    v32 = v63;
    v35 = v61;
    v60 = v61 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (v34 < *(v35 + 16))
    {
      sub_1B4BD18C8(v60 + *(v6 + 72) * v34, v11, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      v36 = v62;
      sub_1B4BD18C8(v11, v62, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      ActivityAchievementAward.init(_:)(v36, v16);
      if (v2)
      {
        sub_1B4BD1930(v11, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
        v39 = v57;
        v40 = v56[1];
        v40(v54, v57);
        v40(v55, v39);
        sub_1B4BD1930(v58, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
      }

      sub_1B4BD1930(v11, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      v63 = v32;
      v38 = *(v32 + 16);
      v37 = *(v32 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1B4BCED5C(v37 > 1, v38 + 1, 1);
        v32 = v63;
      }

      ++v34;
      *(v32 + 16) = v38 + 1;
      result = sub_1B4BD1990(v16, v32 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v38, type metadata accessor for ActivityAchievementAward);
      v35 = v61;
      if (v59 == v34)
      {
        v20 = v53;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v42 = v55;
    v41 = v56;
    v43 = v56[2];
    v44 = v57;
    v43(v51, v55, v57);
    v45 = v20;
    v46 = v54;
    v43(v45, v54, v44);
    v47 = type metadata accessor for AwardsContext();
    v48 = v52;
    v49 = v52 + *(v47 + 20);
    sub_1B4D174CC();
    v50 = v41[1];
    v50(v46, v44);
    v50(v42, v44);
    result = sub_1B4BD1930(v58, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
    *v48 = v32;
  }

  return result;
}

uint64_t AwardsContext.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  sub_1B4BD1A18(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BD0F40(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ActivityAchievementAward();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4D1777C();
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v17 = *(*a2 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v36 = a2;
    v37 = a1;
    v47 = MEMORY[0x1E69E7CC0];
    result = sub_1B4BCF75C(0, v17, 0);
    v20 = 0;
    v18 = v47;
    v42 = v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v21 = v38;
    while (v20 < *(v16 + 16))
    {
      v22 = sub_1B4BD18C8(v42 + *(v7 + 72) * v20, v21, type metadata accessor for ActivityAchievementAward);
      MEMORY[0x1EEE9AC00](v22);
      *(&v36 - 2) = v21;
      sub_1B4BD1A18(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      sub_1B4D17DAC();
      if (v3)
      {
        sub_1B4BD1930(v21, type metadata accessor for ActivityAchievementAward);
      }

      v45 = 0;
      v23 = v16;
      v24 = v7;
      sub_1B4BD1930(v21, type metadata accessor for ActivityAchievementAward);
      v47 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1B4BCF75C(v25 > 1, v26 + 1, 1);
        v21 = v38;
        v18 = v47;
      }

      ++v20;
      *(v18 + 16) = v26 + 1;
      result = sub_1B4BD1990(v46, v18 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v26, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      v7 = v24;
      v16 = v23;
      v3 = v45;
      if (v17 == v20)
      {
        a1 = v37;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v45 = v2;
LABEL_11:
    v27 = *a1;

    *a1 = v18;
    v28 = *(type metadata accessor for AwardsContext() + 20);
    v29 = v39;
    sub_1B4D174DC();
    sub_1B4D176DC();
    v31 = v30;
    v32 = v41;
    v33 = *(v40 + 8);
    v33(v29, v41);
    a1[1] = v31;
    sub_1B4D174BC();
    sub_1B4D176DC();
    v35 = v34;
    result = (v33)(v29, v32);
    a1[2] = v35;
  }

  return result;
}

uint64_t sub_1B4BD139C(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4BD1A18(&qword_1EB8AC010, type metadata accessor for AwardsContext);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4BD1A18(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
    v1 = sub_1B4D17D6C();
    sub_1B4BD1930(v7, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  }

  return v1;
}

uint64_t sub_1B4BD151C()
{
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  sub_1B4BD1A18(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BD15DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BD164C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4BD16B4()
{
  result = qword_1EB8ABFF0;
  if (!qword_1EB8ABFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABFF0);
  }

  return result;
}

unint64_t sub_1B4BD1874()
{
  result = qword_1EB8AC008;
  if (!qword_1EB8AC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC008);
  }

  return result;
}

uint64_t sub_1B4BD18C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BD1930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4BD1990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BD1A18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HighestDailyStepCountAnniversaryFact.init(stepCount:dateEarned:yearsAgoEarned:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for HighestDailyStepCountAnniversaryFact();
  v8 = *(v7 + 20);
  v9 = sub_1B4D1777C();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t type metadata accessor for HighestDailyStepCountAnniversaryFact()
{
  result = qword_1EB8AC040;
  if (!qword_1EB8AC040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static HighestDailyStepCountAnniversaryFact.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for HighestDailyStepCountAnniversaryFact();
  v5 = *(v4 + 20);
  return (sub_1B4D1774C() & 1) != 0 && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
}

uint64_t sub_1B4BD1BF0()
{
  v1 = 0x6E72614565746164;
  if (*v0 != 1)
  {
    v1 = 0x6F67417372616579;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E756F4370657473;
  }
}

uint64_t sub_1B4BD1C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4BD25B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4BD1C88(uint64_t a1)
{
  v2 = sub_1B4BD1ED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BD1CC4(uint64_t a1)
{
  v2 = sub_1B4BD1ED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HighestDailyStepCountAnniversaryFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC028, &qword_1B4D39A90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BD1ED4();
  sub_1B4D18EFC();
  v11 = *v3;
  v16[15] = 0;
  sub_1B4D18CEC();
  if (!v2)
  {
    v12 = type metadata accessor for HighestDailyStepCountAnniversaryFact();
    v13 = *(v12 + 20);
    v16[14] = 1;
    sub_1B4D1777C();
    sub_1B49B1198(&qword_1EDC37820);
    sub_1B4D18D0C();
    v14 = *(v3 + *(v12 + 24));
    v16[13] = 2;
    sub_1B4D18CEC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B4BD1ED4()
{
  result = qword_1EB8AC030;
  if (!qword_1EB8AC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC030);
  }

  return result;
}

uint64_t HighestDailyStepCountAnniversaryFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1B4D1777C();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC038, &qword_1B4D39A98);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v24 - v9;
  v11 = type metadata accessor for HighestDailyStepCountAnniversaryFact();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BD1ED4();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = a1;
  v17 = v28;
  v16 = v29;
  v18 = v30;
  v34 = 0;
  v19 = sub_1B4D18BEC();
  v25 = v14;
  *v14 = v19;
  v33 = 1;
  sub_1B49B1198(&qword_1EB8A6FB8);
  sub_1B4D18C0C();
  v20 = *(v16 + 32);
  v21 = v25;
  v24 = *(v11 + 20);
  v20(v25 + v24, v7, v18);
  v32 = 2;
  v22 = sub_1B4D18BEC();
  (*(v17 + 8))(v10, v31);
  *(v21 + *(v11 + 24)) = v22;
  sub_1B4BD2288(v21, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return sub_1B4BD22EC(v21);
}

uint64_t sub_1B4BD2288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighestDailyStepCountAnniversaryFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BD22EC(uint64_t a1)
{
  v2 = type metadata accessor for HighestDailyStepCountAnniversaryFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1B4BD2378(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  return (sub_1B4D1774C() & 1) != 0 && *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
}

uint64_t sub_1B4BD241C()
{
  result = sub_1B4D1777C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4BD24AC()
{
  result = qword_1EB8AC050;
  if (!qword_1EB8AC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC050);
  }

  return result;
}

unint64_t sub_1B4BD2504()
{
  result = qword_1EB8AC058;
  if (!qword_1EB8AC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC058);
  }

  return result;
}

unint64_t sub_1B4BD255C()
{
  result = qword_1EB8AC060;
  if (!qword_1EB8AC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC060);
  }

  return result;
}

uint64_t sub_1B4BD25B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E756F4370657473 && a2 == 0xE900000000000074;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E72614565746164 && a2 == 0xEA00000000006465 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F67417372616579 && a2 == 0xEE0064656E726145)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

FitnessIntelligence::AnnounceUtteranceSource_optional __swiftcall AnnounceUtteranceSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AnnounceUtteranceSource.rawValue.getter()
{
  v1 = 0x6F6E6E4169726973;
  if (*v0 != 1)
  {
    v1 = 0x6D6165727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746365726964;
  }
}

uint64_t sub_1B4BD27A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6E6E4169726973;
  v4 = 0xEC00000065636E75;
  if (v2 != 1)
  {
    v3 = 0x6D6165727473;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746365726964;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6F6E6E4169726973;
  v8 = 0xEC00000065636E75;
  if (*a2 != 1)
  {
    v7 = 0x6D6165727473;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746365726964;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

unint64_t sub_1B4BD28B4()
{
  result = qword_1EB8AC068;
  if (!qword_1EB8AC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC068);
  }

  return result;
}

uint64_t sub_1B4BD2908()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BD29AC()
{
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4BD2A3C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4BD2AE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEC00000065636E75;
  v5 = 0x6F6E6E4169726973;
  if (v2 != 1)
  {
    v5 = 0x6D6165727473;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746365726964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1B4BD2C08()
{
  result = qword_1EB8AC070;
  if (!qword_1EB8AC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC070);
  }

  return result;
}

uint64_t WorkoutProperties.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v75 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v94 = *(v10 - 8);
  v11 = v94[8];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v84 = &v75 - v16;
  v85 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v93 = *(v85 - 8);
  v17 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  v19 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v21 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v115 = &v75 - v24;
  v25 = *a1;
  v89 = a1[1];
  v90 = v25;
  v26 = a1[2];
  v27 = *(v26 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  v75 = a2;
  v76 = a1;
  if (!v27)
  {
    result = MEMORY[0x1E69E7CC0];
    v61 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v61)
    {
LABEL_27:

      result = sub_1B4BD3A2C(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      v64 = MEMORY[0x1E69E7CC0];
LABEL_28:
      v74 = v89;
      *a2 = v90;
      a2[1] = v74;
      a2[2] = v64;
      return result;
    }

LABEL_19:
    *&v102[0] = v28;
    v62 = result;
    sub_1B4BCECFC(0, v61, 0);
    v94 = v62;
    v63 = (v62 + 4);
    v64 = *&v102[0];
    for (i = v61 - 1; ; --i)
    {
      sub_1B498ADFC(v63, &v96);
      v103 = v97;
      v104 = v98;
      v105 = v99;
      v106 = v100;
      sub_1B496F398(&v101, &v111 + 8);
      *&v107 = v90;
      *(&v107 + 1) = v89;
      v108 = v103;
      v109 = v104;
      v110 = v105;
      *&v111 = v106;
      *&v102[0] = v64;
      v67 = *(v64 + 16);
      v66 = *(v64 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1B4BCECFC((v66 > 1), v67 + 1, 1);
        v64 = *&v102[0];
      }

      *(v64 + 16) = v67 + 1;
      v68 = (v64 + 112 * v67);
      v69 = v107;
      v70 = v109;
      v68[3] = v108;
      v68[4] = v70;
      v68[2] = v69;
      v71 = v110;
      v72 = v111;
      v73 = v113;
      v68[7] = v112;
      v68[8] = v73;
      v68[5] = v71;
      v68[6] = v72;
      if (!i)
      {
        break;
      }

      v63 += 112;
    }

    sub_1B4BD3A2C(v76, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);

    a2 = v75;
    goto LABEL_28;
  }

  v29 = v9;
  v30 = v23;
  v81 = v10;
  v86 = v29;
  v114 = MEMORY[0x1E69E7CC0];
  v92 = v27;
  result = sub_1B4BCECFC(0, v27, 0);
  v32 = v85;
  if (*(v26 + 16))
  {
    v33 = 0;
    result = v114;
    v34 = v26 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v82 = (v93 + 48);
    v87 = (v94 + 6);
    v77 = *(v30 + 72);
    v78 = v26;
    v79 = v92 - 1;
    v80 = v13;
    while (1)
    {
      v93 = v3;
      v94 = result;
      v88 = v34;
      v35 = v115;
      sub_1B4BD39C8(v34, v115);
      sub_1B4BD39C8(v35, v21);
      v36 = *v21;
      v91 = v21[1];
      v92 = v36;
      v37 = v84;
      sub_1B4974FBC(v21 + *(v95 + 28), v84, &qword_1EB8A7CE8, &qword_1B4D201A0);
      v38 = *v82;
      if ((*v82)(v37, 1, v32) == 1)
      {
        v39 = v83;
        sub_1B4D17BBC();
        v40 = (v39 + v32[5]);
        *v40 = 0;
        v40[1] = 0;
        v41 = (v39 + v32[6]);
        *v41 = 0;
        v41[1] = 0;
        v42 = v39 + v32[7];
        *v42 = 0;
        *(v42 + 8) = 1;
        v43 = v39 + v32[8];
        *v43 = 0;
        *(v43 + 8) = 1;
        v44 = (v39 + v32[9]);
        *v44 = 0;
        v44[1] = 0;
        v45 = (v39 + v32[10]);
        *v45 = 0;
        v45[1] = 0;
        if (v38(v37, 1, v32) != 1)
        {
          sub_1B4975024(v37, &qword_1EB8A7CE8, &qword_1B4D201A0);
        }
      }

      else
      {
        v39 = v83;
        sub_1B4BD3B80(v37, v83, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      }

      v46 = v93;
      WorkoutPropertyDimensions.init(_:)(v39, &v96);
      v3 = v46;
      if (v46)
      {
        sub_1B4BD3A2C(v21, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
        sub_1B4BD3A2C(v115, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
        sub_1B4BD3A2C(v76, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      }

      v103 = v96;
      v104 = v97;
      v105 = v98;
      v106 = v99;
      v47 = v86;
      sub_1B4974FBC(v21 + *(v95 + 32), v86, &qword_1EB8A7CD8, &unk_1B4D20190);
      v48 = *v87;
      v49 = v81;
      if ((*v87)(v47, 1, v81) == 1)
      {
        v50 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
        v51 = v80;
        (*(*(v50 - 8) + 56))(v80, 1, 1, v50);
        v52 = v51 + *(v49 + 20);
        sub_1B4D17BBC();
        if (v48(v47, 1, v49) != 1)
        {
          sub_1B4975024(v86, &qword_1EB8A7CD8, &unk_1B4D20190);
        }
      }

      else
      {
        v51 = v80;
        sub_1B4BD3B80(v47, v80, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
      }

      sub_1B4BEEFE8(v51, v102);
      v32 = v85;
      sub_1B4BD3A2C(v21, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
      sub_1B4BD3A2C(v51, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
      sub_1B496F398(v102, &v111 + 8);
      *&v107 = v92;
      *(&v107 + 1) = v91;
      v108 = v103;
      v109 = v104;
      v110 = v105;
      *&v111 = v106;
      sub_1B4BD3A2C(v115, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
      result = v94;
      v114 = v94;
      v54 = v94[2];
      v53 = v94[3];
      if (v54 >= v53 >> 1)
      {
        sub_1B4BCECFC((v53 > 1), v54 + 1, 1);
        result = v114;
      }

      *(result + 16) = v54 + 1;
      v55 = (result + 112 * v54);
      v56 = v107;
      v57 = v109;
      v55[3] = v108;
      v55[4] = v57;
      v55[2] = v56;
      v58 = v110;
      v59 = v111;
      v60 = v113;
      v55[7] = v112;
      v55[8] = v60;
      v55[5] = v58;
      v55[6] = v59;
      if (v79 == v33)
      {
        break;
      }

      v34 = v88 + v77;
      if (++v33 >= *(v78 + 16))
      {
        goto LABEL_29;
      }
    }

    a2 = v75;
    a1 = v76;
    v28 = MEMORY[0x1E69E7CC0];
    v61 = *(result + 16);
    if (!v61)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t WorkoutProperties.protobuf()()
{
  v3 = *v0;
  v1 = *(v0 + 2);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  sub_1B4BD3B38(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BD3610(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  v27 = a3;
  *a1 = a2;
  a1[1] = a3;
  v13 = *(a4 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v23 = a1;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF77C(0, v13, 0);
    v14 = v42;
    v15 = a4 + 32;
    v43 = v13 - 1;
    while (1)
    {
      sub_1B498ADFC(v15, v35);
      v38 = v35[1];
      v39 = v35[2];
      v40 = v35[3];
      v41 = v36;
      v16 = sub_1B497558C(&v37, &v34);
      v29[0] = v26;
      v29[1] = v27;
      v30 = v38;
      v31 = v39;
      v32 = v40;
      v33 = v41;
      MEMORY[0x1EEE9AC00](v16);
      *(&v23 - 2) = v29;
      sub_1B498B0D4(&v38, &v28);
      sub_1B4BD3B38(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
      sub_1B4D17DAC();
      if (v4)
      {
        sub_1B498AE58(v35);
        sub_1B498AE58(v29);
      }

      v17 = v12;
      sub_1B498AE58(v35);
      sub_1B498AE58(v29);
      v42 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B4BCF77C(v18 > 1, v19 + 1, 1);
        v14 = v42;
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v12 = v17;
      sub_1B4BD3B80(v17, v20, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
      if (!v43)
      {
        break;
      }

      --v43;
      v15 += 112;
    }

    a1 = v23;
  }

  v22 = a1[2];

  a1[2] = v14;
  return result;
}

uint64_t sub_1B4BD38F8()
{
  v3 = *v0;
  v1 = *(v0 + 2);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  sub_1B4BD3B38(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BD39C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BD3A2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4BD3B38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4BD3B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t static WorkoutVoiceLongestDistanceFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BD53CC(v3, v1, v2);
}

uint64_t static WorkoutVoiceLongestDistanceFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49AA274;

  return sub_1B4BD6434(a1, a3, a4);
}

uint64_t WorkoutVoiceLongestDistanceFact.QueryIdentifier.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutVoiceLongestDistanceFact.QueryIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000019;
  v2 = 0xD000000000000015;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ALL;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_1B4BD3DE0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BD3E90()
{
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4BD3F2C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BD3FD8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return WorkoutVoiceLongestDistanceFact.QueryIdentifier.init(rawValue:)(a1);
}

void sub_1B4BD3FE4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000019;
  v3 = "e of <distance_milestone>.";
  v4 = "lastSixWeeksWorkoutProperties";
  v5 = 0xD000000000000015;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v4 = "ness_plus_modality> workout.";
  }

  if (*v1)
  {
    v2 = 0xD00000000000001ALL;
    v3 = "rmatted_average_duration>.";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_1B4BD4054@<X0>(char *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v9 = *a1;
  v10 = [objc_opt_self() meters];
  v11 = type metadata accessor for WorkoutVoiceLongestDistanceFact();
  v12 = v11[5];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1741C();
  v13 = *(a4 + *(type metadata accessor for WorkoutState() + 24));
  *a5 = 17;
  a5[v11[6]] = v9;
  *&a5[v11[7]] = v13;
  v14 = &a5[v11[8]];
  *v14 = a2;
  v14[1] = a3;
  (*(*(v11 - 1) + 56))(a5, 0, 1, v11);
  v15 = v13;
}

id WorkoutVoiceLongestDistanceFact.makePrompt(promptFormatter:)()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutVoiceLongestDistanceFact();
  v3 = *(v0 + v2[7]);
  v4 = sub_1B4D133E8(v0 + v2[5], v3, 0, 1);
  v6 = v5;
  [v3 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v8 = result;
    v9 = sub_1B4D1818C();
    v11 = v10;

    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD000000000000031, 0x80000001B4D62E30);
    MEMORY[0x1B8C7C620](v9, v11);

    MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE900000000000020);
    v12 = *(v1 + v2[6]);
    if (v12 <= 1)
    {
      if (*(v1 + v2[6]))
      {
        v13 = 0xE90000000000006BLL;
        v14 = 0x6565772073696874;
      }

      else
      {
        v13 = 0xE800000000000000;
        v14 = 0x7961642073696874;
      }
    }

    else if (v12 == 2)
    {
      v13 = 0xEA00000000006874;
      v14 = 0x6E6F6D2073696874;
    }

    else if (v12 == 3)
    {
      v13 = 0xE900000000000072;
      v14 = 0x6165792073696874;
    }

    else
    {
      v13 = 0xE400000000000000;
      v14 = 1919252069;
    }

    MEMORY[0x1B8C7C620](v14, v13);

    MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D62E70);
    MEMORY[0x1B8C7C620](v4, v6);

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4BD43BC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BD53CC(v3, v1, v2);
}

uint64_t sub_1B4BD43FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49DD034;

  return sub_1B4BD6434(a1, a3, a4);
}

uint64_t sub_1B4BD44C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void *a5@<X4>, const void *a6@<X5>, void (*a7)(uint64_t *, uint64_t *, uint64_t, uint64_t, unint64_t, double)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v107 = a8;
  v122 = a6;
  v124 = a5;
  v112 = a1;
  v114 = a9;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v14 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v105 - v17;
  if (*(a2 + 16))
  {
    v18 = *(a2 + 16);
    v106 = a7;
    v19 = (a2 + 32);
    v108 = (v15 + 8);
    *&v16 = 136315394;
    v118 = v16;
    *&v16 = 136316418;
    v113 = v16;
    v121 = a3;
    v123 = a4;
    for (i = v18; i; --i)
    {
      v21 = *v19;
      v126 = v19 + 1;
      memcpy(v129, v124, sizeof(v129));
      LOBYTE(v127) = v21;
      v128 = a4;
      *&result = COERCE_DOUBLE(sub_1B4C91D08(v129, &v127, &v128, a3));
      if (v9)
      {
        return result;
      }

      v25 = v24;
      if (v24)
      {
        v26 = *&result;
        v27 = v23;
        memcpy(v130, v122, 0x188uLL);
        if (sub_1B4B6D850(v130) == 1)
        {
        }

        else
        {
          memcpy(v129, v130, sizeof(v129));
          LOBYTE(v127) = v21;
          v128 = a4;
          v28 = COERCE_DOUBLE(sub_1B4C91D08(v129, &v127, &v128, a3));
          v31 = v30;
          v125 = i;
          if (!v30)
          {

            if (qword_1EDC36EF8 != -1)
            {
              swift_once();
            }

            v46 = sub_1B4D17F6C();
            __swift_project_value_buffer(v46, qword_1EDC36F00);
            v39 = sub_1B4D17F5C();
            v47 = sub_1B4D1870C();
            if (!os_log_type_enabled(v39, v47))
            {

              goto LABEL_114;
            }

            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v127 = v43;
            *v42 = v118;
            if (v123 > 0x11u)
            {
              if (v123 == 18)
              {
                v48 = 0xE90000000000006ELL;
                v49 = 0x6F69746176656C65;
                goto LABEL_99;
              }

              if (v123 == 19)
              {
                v48 = 0xE400000000000000;
                v49 = 1701011824;
                goto LABEL_99;
              }
            }

            else
            {
              if (v123 == 16)
              {
                v48 = 0xE800000000000000;
                v49 = 0x736569726F6C6163;
                goto LABEL_99;
              }

              if (v123 == 17)
              {
                v48 = 0xE800000000000000;
                v49 = 0x65636E6174736964;
LABEL_99:
                v96 = sub_1B49558AC(v49, v48, &v127);

                *(v42 + 4) = v96;
                *(v42 + 12) = 2080;
                v97 = 0xE90000000000006BLL;
                v98 = 0xE900000000000072;
                v99 = 0x6165792073696874;
                if (v21 != 3)
                {
                  v99 = 1919252069;
                  v98 = 0xE400000000000000;
                }

                if (v21 == 2)
                {
                  v99 = 0x6E6F6D2073696874;
                  v98 = 0xEA00000000006874;
                }

                v100 = 0x7961642073696874;
                if (v21)
                {
                  v100 = 0x6565772073696874;
                }

                else
                {
                  v97 = 0xE800000000000000;
                }

                if (v21 <= 1)
                {
                  v101 = v100;
                }

                else
                {
                  v101 = v99;
                }

                if (v21 <= 1)
                {
                  v102 = v97;
                }

                else
                {
                  v102 = v98;
                }

                v103 = sub_1B49558AC(v101, v102, &v127);

                *(v42 + 14) = v103;
                v78 = v47;
                v79 = v39;
                v80 = "factType %s no value in previous snapshot timescale %s";
                goto LABEL_113;
              }
            }

            v129[0] = 0x2874736574736166;
            v129[1] = 0xE800000000000000;
            v128 = v123;
            DistanceReference.rawValue.getter();
            sub_1B4BD7738();
            v95 = sub_1B4D18D5C();
            MEMORY[0x1B8C7C620](v95);

            (*v108)(v116, v117);
            MEMORY[0x1B8C7C620](41, 0xE100000000000000);
            v49 = v129[0];
            v48 = v129[1];
            goto LABEL_99;
          }

          v119 = v28;
          v120 = v29;
          if (v29 == v27 && v30 == v25 || (sub_1B4D18DCC() & 1) != 0 || v119 == v26)
          {
            if (qword_1EDC36EF8 != -1)
            {
              swift_once();
            }

            v32 = sub_1B4D17F6C();
            __swift_project_value_buffer(v32, qword_1EDC36F00);

            v33 = sub_1B4D17F5C();
            v34 = sub_1B4D1870C();

            LODWORD(v115) = v34;
            if (os_log_type_enabled(v33, v34))
            {
              v35 = swift_slowAlloc();
              v110 = swift_slowAlloc();
              v111 = v33;
              v127 = v110;
              *v35 = v113;
              v109 = v35;
              if (v123 > 0x11u)
              {
                if (v123 == 18)
                {
                  v36 = 0xE90000000000006ELL;
                  v37 = 0x6F69746176656C65;
                  goto LABEL_86;
                }

                if (v123 == 19)
                {
                  v36 = 0xE400000000000000;
                  v37 = 1701011824;
                  goto LABEL_86;
                }
              }

              else
              {
                if (v123 == 16)
                {
                  v36 = 0xE800000000000000;
                  v37 = 0x736569726F6C6163;
                  goto LABEL_86;
                }

                if (v123 == 17)
                {
                  v36 = 0xE800000000000000;
                  v37 = 0x65636E6174736964;
LABEL_86:
                  v85 = sub_1B49558AC(v37, v36, &v127);

                  v86 = v109;
                  *(v109 + 4) = v85;
                  *(v86 + 12) = 2048;
                  v87 = v120;
                  *(v86 + 14) = v119;
                  *(v86 + 22) = 2048;
                  *(v86 + 24) = v26;
                  *(v86 + 32) = 2080;
                  v88 = sub_1B49558AC(v87, v31, &v127);

                  *(v86 + 34) = v88;
                  *(v86 + 42) = 2080;
                  v89 = sub_1B49558AC(v27, v25, &v127);

                  *(v86 + 44) = v89;
                  *(v86 + 52) = 2080;
                  if (v21 <= 1)
                  {
                    LOBYTE(a4) = v123;
                    if (v21)
                    {
                      v91 = 0x6565772073696874;
                      v90 = 0xE90000000000006BLL;
                    }

                    else
                    {
                      v90 = 0xE800000000000000;
                      v91 = 0x7961642073696874;
                    }
                  }

                  else
                  {
                    LOBYTE(a4) = v123;
                    if (v21 == 2)
                    {
                      v90 = 0xEA00000000006874;
                      v91 = 0x6E6F6D2073696874;
                    }

                    else if (v21 == 3)
                    {
                      v90 = 0xE900000000000072;
                      v91 = 0x6165792073696874;
                    }

                    else
                    {
                      v90 = 0xE400000000000000;
                      v91 = 1919252069;
                    }
                  }

                  v92 = sub_1B49558AC(v91, v90, &v127);

                  *(v86 + 54) = v92;
                  v93 = v111;
                  _os_log_impl(&dword_1B4953000, v111, v115, "factType %s oldRecordValue %f newRecordValue %f oldId %s newID %s timescale %s", v86, 0x3Eu);
                  v94 = v110;
                  swift_arrayDestroy();
                  MEMORY[0x1B8C7DDA0](v94, -1, -1);
                  MEMORY[0x1B8C7DDA0](v86, -1, -1);

                  a3 = v121;
                  i = v125;
                  goto LABEL_4;
                }
              }

              v129[0] = 0x2874736574736166;
              v129[1] = 0xE800000000000000;
              v128 = v123;
              v82 = v116;
              DistanceReference.rawValue.getter();
              sub_1B4BD7738();
              v83 = sub_1B4D18D5C();
              v105 = v84;
              MEMORY[0x1B8C7C620](v83);

              (*v108)(v82, v117);
              MEMORY[0x1B8C7C620](41, 0xE100000000000000);
              v37 = v129[0];
              v36 = v129[1];
              goto LABEL_86;
            }

            LOBYTE(a4) = v123;
            i = v125;
            a3 = v121;
          }

          else
          {
            if (qword_1EDC36EF8 != -1)
            {
              swift_once();
            }

            v50 = sub_1B4D17F6C();
            __swift_project_value_buffer(v50, qword_1EDC36F00);

            v115 = sub_1B4D17F5C();
            v51 = sub_1B4D1873C();

            LODWORD(v111) = v51;
            v52 = v51;
            v53 = v115;
            if (os_log_type_enabled(v115, v52))
            {
              v54 = swift_slowAlloc();
              v110 = swift_slowAlloc();
              v129[0] = v110;
              *v54 = v113;
              LOBYTE(v127) = v123;
              v55 = WorkoutRecordFactType.description.getter();
              v109 = sub_1B49558AC(v55, v56, v129);

              *(v54 + 4) = v109;
              *(v54 + 12) = 2048;
              v57 = v120;
              *(v54 + 14) = v119;
              *(v54 + 22) = 2048;
              *(v54 + 24) = v26;
              *(v54 + 32) = 2080;
              v58 = sub_1B49558AC(v57, v31, v129);

              *(v54 + 34) = v58;
              *(v54 + 42) = 2080;
              *(v54 + 44) = sub_1B49558AC(v27, v25, v129);
              *(v54 + 52) = 2080;
              v59 = 0xE90000000000006BLL;
              v60 = 0xE900000000000072;
              v61 = 0x6165792073696874;
              if (v21 != 3)
              {
                v61 = 1919252069;
                v60 = 0xE400000000000000;
              }

              if (v21 == 2)
              {
                v61 = 0x6E6F6D2073696874;
                v60 = 0xEA00000000006874;
              }

              v62 = 0x7961642073696874;
              if (v21)
              {
                v62 = 0x6565772073696874;
              }

              else
              {
                v59 = 0xE800000000000000;
              }

              if (v21 <= 1)
              {
                v63 = v62;
              }

              else
              {
                v63 = v61;
              }

              if (v21 <= 1)
              {
                v64 = v59;
              }

              else
              {
                v64 = v60;
              }

              v65 = sub_1B49558AC(v63, v64, v129);

              *(v54 + 54) = v65;
              v66 = v115;
              _os_log_impl(&dword_1B4953000, v115, v111, "[NEW RECORD] factType %s oldRecordValue %f newRecordValue %f oldId %s newID %s timescale %s", v54, 0x3Eu);
              v67 = v110;
              swift_arrayDestroy();
              MEMORY[0x1B8C7DDA0](v67, -1, -1);
              MEMORY[0x1B8C7DDA0](v54, -1, -1);

              a3 = v121;
            }

            else
            {
            }

            v129[0] = v27;
            v129[1] = v25;
            MEMORY[0x1EEE9AC00](v68);
            *(&v105 - 2) = v129;
            v81 = sub_1B49B1748(sub_1B4AE535C, (&v105 - 4), v112);
            LOBYTE(a4) = v123;
            if (v81)
            {
              LOBYTE(v129[0]) = v123;
              LOBYTE(v127) = v21;
              v106(v129, &v127, a3, v27, v25, v26);
              *&result = COERCE_DOUBLE();
              return result;
            }

            i = v125;
          }
        }
      }

      else
      {
        v125 = i;
        if (qword_1EDC36EF8 != -1)
        {
          swift_once();
        }

        v38 = sub_1B4D17F6C();
        __swift_project_value_buffer(v38, qword_1EDC36F00);
        v39 = sub_1B4D17F5C();
        v40 = sub_1B4D1870C();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = a4;
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v127 = v43;
          *v42 = v118;
          if (v41 > 0x11u)
          {
            if (v41 == 18)
            {
              v44 = 0xE90000000000006ELL;
              v45 = 0x6F69746176656C65;
            }

            else
            {
              if (v41 != 19)
              {
                goto LABEL_57;
              }

              v44 = 0xE400000000000000;
              v45 = 1701011824;
            }
          }

          else if (v41 == 16)
          {
            v44 = 0xE800000000000000;
            v45 = 0x736569726F6C6163;
          }

          else
          {
            if (v41 == 17)
            {
              v44 = 0xE800000000000000;
              v45 = 0x65636E6174736964;
              goto LABEL_60;
            }

LABEL_57:
            v129[0] = 0x2874736574736166;
            v129[1] = 0xE800000000000000;
            v128 = v123;
            DistanceReference.rawValue.getter();
            sub_1B4BD7738();
            v69 = sub_1B4D18D5C();
            MEMORY[0x1B8C7C620](v69);

            (*v108)(v116, v117);
            MEMORY[0x1B8C7C620](41, 0xE100000000000000);
            v45 = v129[0];
            v44 = v129[1];
          }

LABEL_60:
          v70 = sub_1B49558AC(v45, v44, &v127);

          *(v42 + 4) = v70;
          *(v42 + 12) = 2080;
          v71 = 0xE90000000000006BLL;
          v72 = 0xE900000000000072;
          v73 = 0x6165792073696874;
          if (v21 != 3)
          {
            v73 = 1919252069;
            v72 = 0xE400000000000000;
          }

          if (v21 == 2)
          {
            v73 = 0x6E6F6D2073696874;
            v72 = 0xEA00000000006874;
          }

          v74 = 0x7961642073696874;
          if (v21)
          {
            v74 = 0x6565772073696874;
          }

          else
          {
            v71 = 0xE800000000000000;
          }

          if (v21 <= 1)
          {
            v75 = v74;
          }

          else
          {
            v75 = v73;
          }

          if (v21 <= 1)
          {
            v76 = v71;
          }

          else
          {
            v76 = v72;
          }

          v77 = sub_1B49558AC(v75, v76, &v127);

          *(v42 + 14) = v77;
          v78 = v40;
          v79 = v39;
          v80 = "factType %s no value in current snapshot timescale %s";
LABEL_113:
          _os_log_impl(&dword_1B4953000, v79, v78, v80, v42, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B8C7DDA0](v43, -1, -1);
          MEMORY[0x1B8C7DDA0](v42, -1, -1);

          a3 = v121;
LABEL_114:
          LOBYTE(a4) = v123;
          i = v125;
          goto LABEL_4;
        }

        i = v125;
      }

LABEL_4:
      v19 = v126;
    }
  }

  v104 = type metadata accessor for WorkoutVoiceLongestDistanceFact();
  *&result = COERCE_DOUBLE((*(*(v104 - 8) + 56))(v114, 1, 1, v104));
  return result;
}

unint64_t sub_1B4BD53CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateRangeDescriptor();
  v165 = *(v6 - 8);
  v7 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v149 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v147 = &v135 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v145 = &v135 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v144 = &v135 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v148 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v135 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v146 = &v135 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v159 = &v135 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v135 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v135 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v143 = &v135 - v32;
  MEMORY[0x1EEE9AC00](v33);
  Descriptor = &v135 - v34;
  v163 = type metadata accessor for WorkoutPropertiesQuery();
  v35 = *(*(v163 - 8) + 64);
  MEMORY[0x1EEE9AC00](v163);
  v37 = &v135 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1B4D1777C();
  v160 = *(v166 - 8);
  v38 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a2 - 8);
  v41 = *(v40 + 64);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v135 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v45, a1, a2, v43);
  v46 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  sub_1B49A79FC(v45, v46, a2, a3);
  v48 = *(v47 + 16);
  v49 = 32;
  while (v48)
  {
    v50 = *(v47 + v49);
    v49 += 8;
    --v48;
    if (v50 == 1)
    {
      v136 = v27;
      v141 = v30;
      v142 = v20;
      v139 = v40;

      v51 = *(a3 + 80);
      v157 = v6;
      v52 = v164;
      v51(a2, a3);
      v54 = v160 + 16;
      v53 = *(v160 + 16);
      v53(v37, v52, v166);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1B4D1A800;
      v56 = (*(a3 + 56))(a2, a3);
      v57 = [v56 effectiveTypeIdentifier];

      *(v55 + 32) = v57;
      v58 = v163;
      v59 = v37;
      v60 = &v37[*(v163 + 20)];
      v61 = MEMORY[0x1E69E7CC0];
      *v60 = MEMORY[0x1E69E7CC0];
      *(v60 + 1) = v61;
      *(v60 + 2) = v61;
      *(v60 + 3) = v55;
      *(v60 + 4) = v61;
      *(v60 + 5) = v61;
      *(v59 + *(v58 + 24)) = v61;
      *(v59 + *(v58 + 28)) = &unk_1F2CBD090;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCC0, &qword_1B4D38750);
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCC8, &unk_1B4D38758);
      v62 = (*(*(v162 - 8) + 80) + 32) & ~*(*(v162 - 8) + 80);
      v153 = *(*(v162 - 8) + 72);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1B4D1B2D0;
      v137 = v63;
      v161 = v63 + v62;
      *(v63 + v62) = 0;
      v65 = v157;
      v64 = Descriptor;
      v66 = v165;
      v155 = v53;
      v156 = v54;
      v53(Descriptor, v52, v166);
      swift_storeEnumTagMultiPayload();
      v151 = *(v66 + 56);
      v152 = v66 + 56;
      v151(v64, 0, 1, v65);
      v67 = v143;
      sub_1B4974FBC(v64, v143, &qword_1EB8A67A8, &qword_1B4D1E060);
      v68 = *(v66 + 48);
      v69 = v68(v67, 1, v65);
      v165 = v66 + 48;
      v154 = v68;
      v140 = a2;
      v138 = v45;
      v150 = v59;
      if (v69 == 1)
      {
        v70 = v144;
        sub_1B4B58794(v59, v144, type metadata accessor for DateRangeDescriptor);
        if (v68(v67, 1, v65) != 1)
        {
          sub_1B4975024(v67, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v70 = v144;
        sub_1B4BD779C(v67, v144, type metadata accessor for DateRangeDescriptor);
      }

      v77 = v161;
      v78 = v161 + *(v162 + 48);
      v79 = *v60;
      v80 = *(v60 + 1);
      v82 = *(v60 + 2);
      v81 = *(v60 + 3);
      v84 = *(v60 + 4);
      v83 = *(v60 + 5);
      sub_1B4B58794(v70, v78, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v70, type metadata accessor for DateRangeDescriptor);
      v85 = v163;
      v86 = (v78 + *(v163 + 20));
      *v86 = v79;
      v86[1] = v80;
      v86[2] = v82;
      v86[3] = v81;
      v86[4] = v84;
      v86[5] = v83;
      *(v78 + *(v85 + 24)) = MEMORY[0x1E69E7CC0];
      *(v78 + *(v85 + 28)) = &unk_1F2CBD090;
      sub_1B4975024(Descriptor, &qword_1EB8A67A8, &qword_1B4D1E060);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      swift_storeEnumTagMultiPayload();
      v87 = v77 + v153;
      *(v77 + v153) = 1;
      v88 = v141;
      v155(v141, v164, v166);
      v89 = v157;
      swift_storeEnumTagMultiPayload();
      v151(v88, 0, 1, v89);
      v90 = v88;
      v91 = v136;
      sub_1B4974FBC(v90, v136, &qword_1EB8A67A8, &qword_1B4D1E060);
      v92 = v154;
      if (v154(v91, 1, v89) == 1)
      {
        v93 = v145;
        sub_1B4B58794(v150, v145, type metadata accessor for DateRangeDescriptor);
        if (v92(v91, 1, v89) != 1)
        {
          sub_1B4975024(v91, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v93 = v145;
        sub_1B4BD779C(v91, v145, type metadata accessor for DateRangeDescriptor);
      }

      v94 = v87 + *(v162 + 48);
      v95 = *v60;
      v96 = *(v60 + 1);
      v97 = *(v60 + 2);
      v98 = *(v60 + 3);
      v99 = *(v60 + 4);
      v100 = *(v60 + 5);
      sub_1B4B58794(v93, v94, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v93, type metadata accessor for DateRangeDescriptor);
      v101 = v163;
      v102 = (v94 + *(v163 + 20));
      *v102 = v95;
      v102[1] = v96;
      v102[2] = v97;
      v102[3] = v98;
      v102[4] = v99;
      v102[5] = v100;
      *(v94 + *(v101 + 24)) = MEMORY[0x1E69E7CC0];
      *(v94 + *(v101 + 28)) = &unk_1F2CBD090;
      sub_1B4975024(v141, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v103 = (v161 + 2 * v153);
      *v103 = 2;
      v104 = v159;
      v155(v159, v164, v166);
      swift_storeEnumTagMultiPayload();
      v151(v104, 0, 1, v89);
      v105 = v104;
      v106 = v146;
      sub_1B4974FBC(v105, v146, &qword_1EB8A67A8, &qword_1B4D1E060);
      v107 = v154;
      if (v154(v106, 1, v89) == 1)
      {
        v108 = v147;
        sub_1B4B58794(v150, v147, type metadata accessor for DateRangeDescriptor);
        if (v107(v106, 1, v89) != 1)
        {
          sub_1B4975024(v106, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v108 = v147;
        sub_1B4BD779C(v106, v147, type metadata accessor for DateRangeDescriptor);
      }

      v109 = &v103[*(v162 + 48)];
      v110 = *v60;
      v111 = *(v60 + 1);
      v112 = *(v60 + 2);
      v113 = *(v60 + 3);
      v114 = *(v60 + 4);
      v115 = *(v60 + 5);
      sub_1B4B58794(v108, v109, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v108, type metadata accessor for DateRangeDescriptor);
      v116 = v163;
      v117 = (v109 + *(v163 + 20));
      *v117 = v110;
      v117[1] = v111;
      v117[2] = v112;
      v117[3] = v113;
      v117[4] = v114;
      v117[5] = v115;
      *(v109 + *(v116 + 24)) = MEMORY[0x1E69E7CC0];
      *(v109 + *(v116 + 28)) = &unk_1F2CBD090;
      sub_1B4975024(v159, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v118 = (v161 + 3 * v153);
      *v118 = 3;
      v119 = v142;
      v155(v142, v164, v166);
      swift_storeEnumTagMultiPayload();
      v151(v119, 0, 1, v89);
      v120 = v119;
      v121 = v148;
      sub_1B4974FBC(v120, v148, &qword_1EB8A67A8, &qword_1B4D1E060);
      v122 = v154;
      if (v154(v121, 1, v89) == 1)
      {
        v123 = v149;
        sub_1B4B58794(v150, v149, type metadata accessor for DateRangeDescriptor);
        v124 = v122(v121, 1, v89);
        v45 = v138;
        if (v124 != 1)
        {
          sub_1B4975024(v121, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v123 = v149;
        sub_1B4BD779C(v121, v149, type metadata accessor for DateRangeDescriptor);
        v45 = v138;
      }

      v125 = &v118[*(v162 + 48)];
      v126 = *v60;
      v127 = *(v60 + 1);
      v128 = *(v60 + 2);
      v129 = *(v60 + 3);
      v130 = *(v60 + 4);
      v131 = *(v60 + 5);
      sub_1B4B58794(v123, v125, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v123, type metadata accessor for DateRangeDescriptor);
      v132 = v163;
      v133 = (v125 + *(v163 + 20));
      *v133 = v126;
      v133[1] = v127;
      v133[2] = v128;
      v133[3] = v129;
      v133[4] = v130;
      v133[5] = v131;
      *(v125 + *(v132 + 24)) = MEMORY[0x1E69E7CC0];
      *(v125 + *(v132 + 28)) = &unk_1F2CBD090;
      sub_1B4975024(v142, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v76 = sub_1B4C97B64(v137);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v150, type metadata accessor for WorkoutPropertiesQuery);
      (*(v160 + 8))(v164, v166);
      a2 = v140;
      v40 = v139;
      goto LABEL_26;
    }
  }

  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v71 = sub_1B4D17F6C();
  __swift_project_value_buffer(v71, qword_1EDC36F00);
  v72 = sub_1B4D17F5C();
  v73 = sub_1B4D1873C();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v167 = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D62970, &v167);
    _os_log_impl(&dword_1B4953000, v72, v73, "%s does not support this workout state", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x1B8C7DDA0](v75, -1, -1);
    MEMORY[0x1B8C7DDA0](v74, -1, -1);
  }

  v76 = sub_1B4C97B64(MEMORY[0x1E69E7CC0]);
LABEL_26:
  (*(v40 + 8))(v45, a2);
  return v76;
}

uint64_t sub_1B4BD6434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[323] = a3;
  v3[322] = a2;
  v3[321] = a1;
  v4 = type metadata accessor for WorkoutVoiceLongestDistanceFact();
  v3[324] = v4;
  v5 = *(v4 - 8);
  v3[325] = v5;
  v6 = *(v5 + 64) + 15;
  v3[326] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC0A0, &qword_1B4D39EC8);
  v3[327] = v7;
  v8 = *(v7 - 8);
  v3[328] = v8;
  v9 = *(v8 + 64) + 15;
  v3[329] = swift_task_alloc();
  v3[330] = swift_task_alloc();
  v10 = sub_1B4D1777C();
  v3[331] = v10;
  v11 = *(v10 - 8);
  v3[332] = v11;
  v12 = *(v11 + 64) + 15;
  v3[333] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v3[334] = swift_task_alloc();
  v3[335] = swift_task_alloc();
  v14 = type metadata accessor for WorkoutState();
  v3[336] = v14;
  v15 = *(v14 - 8);
  v3[337] = v15;
  v16 = *(v15 + 64) + 15;
  v3[338] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BD666C, 0, 0);
}

uint64_t sub_1B4BD666C()
{
  v118 = v0;
  v1 = *(v0 + 2696);
  v2 = *(v0 + 2688);
  v3 = *(v0 + 2680);
  sub_1B4974FBC(*(v0 + 2576), v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_1B4975024(*(v0 + 2680), &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_22:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v58 = sub_1B4D17F6C();
    __swift_project_value_buffer(v58, qword_1EDC36F00);
    v59 = sub_1B4D17F5C();
    v60 = sub_1B4D1873C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      __dst[0] = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D62970, __dst);
      _os_log_impl(&dword_1B4953000, v59, v60, "Context or snapshots don't exist for %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x1B8C7DDA0](v62, -1, -1);
      MEMORY[0x1B8C7DDA0](v61, -1, -1);
    }

    v63 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v5 = *(v0 + 2568);
  sub_1B4BD779C(*(v0 + 2680), *(v0 + 2704), type metadata accessor for WorkoutState);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *(v0 + 2536) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67F8, &qword_1B4D1AB10);
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v8;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4E570);

  (*(v7 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v6, v7);

  v9 = *(v0 + 2456);
  if (!v9)
  {
    v56 = *(v0 + 2704);
LABEL_21:
    sub_1B49BFEC0(v56, type metadata accessor for WorkoutState);
    goto LABEL_22;
  }

  v115 = *(v0 + 2440);
  v114 = *(v0 + 2448);
  v10 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 2568), v10);
  *(v0 + 2544) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v12;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D4E0D0);

  (*(v11 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v10, v11);

  v13 = *(v0 + 2480);
  if (!v13)
  {
    v57 = *(v0 + 2704);
LABEL_20:

    v56 = v57;
    goto LABEL_21;
  }

  v113 = *(v0 + 2464);
  v112 = *(v0 + 2472);
  v14 = v5[3];
  v15 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 2568), v14);
  *(v0 + 2552) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v16;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  (*(v15 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v14, v15);

  v17 = *(v0 + 2504);
  if (!v17)
  {
    v57 = *(v0 + 2704);
LABEL_19:

    goto LABEL_20;
  }

  v18 = *(v0 + 2488);
  v111 = *(v0 + 2496);
  v20 = v5[3];
  v19 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 2568), v20);
  *(v0 + 2560) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v21;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D4BED0);

  (*(v19 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v20, v19);

  v22 = *(v0 + 2528);
  if (!v22)
  {
    v57 = *(v0 + 2704);
LABEL_18:

    goto LABEL_19;
  }

  v23 = *(v0 + 2512);
  v110 = *(v0 + 2520);
  v24 = sub_1B4CAC70C(*(v0 + 2704));
  v25 = *(v24 + 2);
  v26 = 32;
  do
  {
    if (!v25)
    {
      v57 = *(v0 + 2704);

      goto LABEL_18;
    }

    v27 = *&v24[v26];
    v26 += 8;
    --v25;
  }

  while (v27 != 1);
  v103 = (v0 + 2104);
  v107 = v23;
  v108 = v22;
  v100 = (v0 + 2400);
  v28 = *(v0 + 2704);
  v29 = *(v0 + 2688);
  v30 = *(v0 + 2664);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B4D1A800;
  *(v31 + 32) = sub_1B4D1779C();
  *(v31 + 40) = v32;
  v109 = v31;
  v33 = *(v28 + *(v29 + 48));
  v34 = v28 + *(v29 + 36);
  sub_1B4D1770C();
  v104 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v105 = *(v0 + 2688);
  v106 = *(v0 + 2704);
  v35 = *(v0 + 2656);
  v101 = *(v0 + 2648);
  v102 = *(v0 + 2664);
  v36 = sub_1B4D1796C();
  __swift_project_value_buffer(v36, qword_1EDC3CE48);
  v37 = sub_1B4D178CC();
  v38 = _HKCacheIndexFromDate();

  (*(v35 + 8))(v102, v101);
  sub_1B496F4FC((v0 + 2232));
  *(v0 + 2104) = v38;
  *(v0 + 2112) = v107;
  *(v0 + 2120) = v110;
  *(v0 + 2128) = v108;
  *(v0 + 2136) = v18;
  *(v0 + 2144) = v111;
  *(v0 + 2152) = v17;
  *(v0 + 2160) = v113;
  *(v0 + 2168) = v112;
  *(v0 + 2176) = v13;
  *(v0 + 2184) = v115;
  *(v0 + 2192) = v114;
  *(v0 + 2200) = v9;
  *(v0 + 2208) = v38;
  *(v0 + 2216) = v38;
  *(v0 + 2224) = MEMORY[0x1E69E7CC0];
  nullsub_1(v103);
  sub_1B496F4FC((v0 + 1976));
  v39 = *(v0 + 2056);
  *(v0 + 1128) = *(v0 + 2040);
  *(v0 + 1144) = v39;
  v40 = *(v0 + 2088);
  *(v0 + 1160) = *(v0 + 2072);
  *(v0 + 1176) = v40;
  v41 = *(v0 + 1992);
  *(v0 + 1064) = *(v0 + 1976);
  *(v0 + 1080) = v41;
  v42 = *(v0 + 2024);
  *(v0 + 1096) = *(v0 + 2008);
  *(v0 + 1112) = v42;
  v43 = *(v0 + 2232);
  v44 = *(v0 + 2248);
  v45 = *(v0 + 2280);
  *(v0 + 840) = *(v0 + 2264);
  *(v0 + 856) = v45;
  *(v0 + 808) = v43;
  *(v0 + 824) = v44;
  v46 = *(v0 + 2296);
  v47 = *(v0 + 2312);
  v48 = *(v0 + 2344);
  *(v0 + 904) = *(v0 + 2328);
  *(v0 + 920) = v48;
  *(v0 + 872) = v46;
  *(v0 + 888) = v47;
  v49 = *v103;
  v50 = *(v0 + 2120);
  v51 = *(v0 + 2152);
  *(v0 + 968) = *(v0 + 2136);
  *(v0 + 984) = v51;
  *(v0 + 936) = v49;
  *(v0 + 952) = v50;
  v52 = *(v0 + 2168);
  v53 = *(v0 + 2184);
  v54 = *(v0 + 2216);
  *(v0 + 1032) = *(v0 + 2200);
  *(v0 + 1048) = v54;
  *(v0 + 1000) = v52;
  *(v0 + 1016) = v53;
  *(v0 + 800) = v38;
  *(v0 + 2384) = v105;
  *(v0 + 2392) = &protocol witness table for WorkoutState;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2360));
  sub_1B4B58794(v106, boxed_opaque_existential_1, type metadata accessor for WorkoutState);
  memcpy(__dst, (v0 + 800), 0x188uLL);
  static LegacySnapshot.make(from:snapshot:)(v0 + 2360, __dst, __src);
  v73 = *(v0 + 2688);
  v74 = *(v0 + 2672);
  v75 = *(v0 + 2584);
  sub_1B4975024(v0 + 2360, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  memcpy((v0 + 408), __src, 0x188uLL);
  sub_1B4974FBC(v75, v74, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v76 = v4(v74, 1, v73);
  if (v76 == 1)
  {
    sub_1B4975024(*(v0 + 2672), &qword_1EB8A6A98, &unk_1B4D1CBE0);
    v77 = v0 + 2400;
    *v100 = 0u;
    *(v0 + 2416) = 0u;
    *(v0 + 2432) = 0;
  }

  else
  {
    v78 = *(v0 + 2672);
    *(v0 + 2424) = *(v0 + 2688);
    *(v0 + 2432) = &protocol witness table for WorkoutState;
    v77 = v0 + 2400;
    v79 = __swift_allocate_boxed_opaque_existential_1(v100);
    sub_1B4BD779C(v78, v79, type metadata accessor for WorkoutState);
  }

  memcpy(__dst, (v0 + 800), 0x188uLL);
  static LegacySnapshot.make(from:snapshot:)(v77, __dst, __src);
  v80 = *(v0 + 2704);
  v81 = *(v0 + 2688);
  sub_1B4B68220(v0 + 800);
  sub_1B4975024(v77, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  memcpy((v0 + 1584), __src, 0x188uLL);
  v82 = [*(v80 + *(v81 + 24)) effectiveTypeIdentifier];
  memcpy((v0 + 1192), (v0 + 1584), 0x188uLL);
  nullsub_1(v0 + 1192);
  memcpy((v0 + 16), (v0 + 1192), 0x188uLL);
  v83 = swift_task_alloc();
  *(v83 + 16) = v80;
  v84 = vdupq_n_s64(v82);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_1F2CB8AC8, v84), vceqq_s64(unk_1F2CB8AD8, v84)))) & 1) != 0 || qword_1F2CB8AE8 == v82 || unk_1F2CB8AF0 == v82 || qword_1F2CB8AF8 == v82)
  {
    v85 = *(v0 + 2624);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC0A8, &unk_1B4D39ED0);
    v86 = *(v85 + 72);
    v87 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v88 = swift_allocObject();
    sub_1B4BD44C0(v109, &unk_1F2CB8D40, v82, 17, (v0 + 408), (v0 + 16), sub_1B4BD76C0, v83, v88 + v87);
    v89 = *(v0 + 2640);
    v90 = *(v0 + 2632);
    v91 = *(v0 + 2600);
    v92 = *(v0 + 2592);

    sub_1B4B68220(v0 + 1584);
    sub_1B4B68220(v0 + 408);
    sub_1B4974FBC(v88 + v87, v89, &qword_1EB8AC0A0, &qword_1B4D39EC8);
    sub_1B4BD76C8(v89, v90);
    v93 = (*(v91 + 48))(v90, 1, v92);
    v94 = *(v0 + 2632);
    if (v93 == 1)
    {
      sub_1B4975024(v94, &qword_1EB8AC0A0, &qword_1B4D39EC8);
      v63 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1B4BD779C(v94, *(v0 + 2608), type metadata accessor for WorkoutVoiceLongestDistanceFact);
      v63 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_1B4A1E1AC(0, v63[2] + 1, 1, v63);
      }

      v96 = v63[2];
      v95 = v63[3];
      if (v96 >= v95 >> 1)
      {
        v63 = sub_1B4A1E1AC(v95 > 1, v96 + 1, 1, v63);
      }

      v97 = *(v0 + 2608);
      v98 = *(v0 + 2600);
      v63[2] = v96 + 1;
      sub_1B4BD779C(v97, v63 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v96, type metadata accessor for WorkoutVoiceLongestDistanceFact);
    }

    swift_setDeallocating();
    sub_1B4975024(v88 + v87, &qword_1EB8AC0A0, &qword_1B4D39EC8);
    swift_deallocClassInstance();
  }

  else
  {

    sub_1B4B68220(v0 + 1584);
    sub_1B4B68220(v0 + 408);
    v63 = MEMORY[0x1E69E7CC0];
  }

  v99 = *(v0 + 2704);

  sub_1B49BFEC0(v99, type metadata accessor for WorkoutState);
LABEL_27:
  v64 = *(v0 + 2704);
  v65 = *(v0 + 2680);
  v66 = *(v0 + 2672);
  v67 = *(v0 + 2664);
  v68 = *(v0 + 2640);
  v69 = *(v0 + 2632);
  v70 = *(v0 + 2608);

  v71 = *(v0 + 8);

  return v71(v63);
}

unint64_t sub_1B4BD74D4()
{
  result = qword_1EB8AC078;
  if (!qword_1EB8AC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC078);
  }

  return result;
}

unint64_t sub_1B4BD7528(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BD7558();
  result = sub_1B4BD75AC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BD7558()
{
  result = qword_1EB8AC080;
  if (!qword_1EB8AC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC080);
  }

  return result;
}

unint64_t sub_1B4BD75AC()
{
  result = qword_1EB8AC088;
  if (!qword_1EB8AC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC088);
  }

  return result;
}

uint64_t sub_1B4BD7604(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BD766C(&qword_1EB8AC090);
  result = sub_1B4BD766C(&qword_1EB8AC098);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4BD766C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutVoiceLongestDistanceFact();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BD76C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC0A0, &qword_1B4D39EC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4BD7738()
{
  result = qword_1EB8AB2C8;
  if (!qword_1EB8AB2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB2C8);
  }

  return result;
}

uint64_t sub_1B4BD779C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

FitnessIntelligence::DeviceInferenceAvailability::UnavailableReason_optional __swiftcall DeviceInferenceAvailability.UnavailableReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DeviceInferenceAvailability.UnavailableReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C62616E45746F6ELL;
  v3 = 0xD000000000000018;
  v4 = 0x5364696C61766E69;
  if (v1 != 4)
  {
    v4 = 0x726568746FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7964616552746F6ELL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B4BD7944()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

void sub_1B4BD7A5C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0x6C62616E45746F6ELL;
  v5 = 0x80000001B4D48E90;
  v6 = 0xD000000000000018;
  v7 = 0xEC00000065746174;
  v8 = 0x5364696C61766E69;
  if (v2 != 4)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x7964616552746F6ELL;
  if (v2 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x80000001B4D48E70;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t static DeviceInferenceAvailability.ComponentAvailability.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;

      v5 = sub_1B4BD7BB4(v4, v2);

      return v5 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1B4BD7BB4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v30 = v9;
  v31 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    sub_1B4D18E8C();
    sub_1B4D1820C();

    v17 = sub_1B4D18EDC();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v32 = v12;
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(a2 + 48) + v19);
      if (v21 <= 2)
      {
        break;
      }

      if (v21 == 3)
      {
        v22 = 0xD000000000000018;
        v23 = 0x80000001B4D48E90;
        if (v15 <= 2)
        {
          goto LABEL_24;
        }
      }

      else if (v21 == 4)
      {
        v22 = 0x5364696C61766E69;
        v23 = 0xEC00000065746174;
        if (v15 <= 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v23 = 0xE500000000000000;
        v22 = 0x726568746FLL;
        if (v15 <= 2)
        {
          goto LABEL_24;
        }
      }

LABEL_38:
      v26 = 0x5364696C61766E69;
      if (v15 != 4)
      {
        v26 = 0x726568746FLL;
      }

      v27 = 0xEC00000065746174;
      if (v15 != 4)
      {
        v27 = 0xE500000000000000;
      }

      if (v15 == 3)
      {
        v28 = 0xD000000000000018;
      }

      else
      {
        v28 = v26;
      }

      if (v15 == 3)
      {
        v25 = 0x80000001B4D48E90;
      }

      else
      {
        v25 = v27;
      }

      if (v22 == v28)
      {
        goto LABEL_51;
      }

LABEL_52:
      v29 = sub_1B4D18DCC();

      if (v29)
      {
        goto LABEL_60;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

    if (!*(*(a2 + 48) + v19))
    {
      v22 = 0x6C62616E45746F6ELL;
      v23 = 0xEA00000000006465;
      if (v15 <= 2)
      {
        goto LABEL_24;
      }

      goto LABEL_38;
    }

    if (v21 == 1)
    {
      v22 = 0x7964616552746F6ELL;
    }

    else
    {
      v22 = 0xD000000000000011;
    }

    if (v21 == 1)
    {
      v23 = 0xE800000000000000;
    }

    else
    {
      v23 = 0x80000001B4D48E70;
    }

    if (v15 > 2)
    {
      goto LABEL_38;
    }

LABEL_24:
    if (v15)
    {
      if (v15 == 1)
      {
        v24 = 0x7964616552746F6ELL;
      }

      else
      {
        v24 = 0xD000000000000011;
      }

      if (v15 == 1)
      {
        v25 = 0xE800000000000000;
      }

      else
      {
        v25 = 0x80000001B4D48E70;
      }

      if (v22 == v24)
      {
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    v25 = 0xEA00000000006465;
    if (v22 != 0x6C62616E45746F6ELL)
    {
      goto LABEL_52;
    }

LABEL_51:
    if (v23 != v25)
    {
      goto LABEL_52;
    }

LABEL_60:
    v9 = v30;
    v3 = v31;
    v8 = v32;
  }

  while (v32);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4BD7FE0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1B4D18E8C();

    sub_1B4D1820C();
    v17 = sub_1B4D18EDC();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1B4D18DCC() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4BD8198(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;

      v5 = sub_1B4BD7BB4(v4, v2);

      return v5 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

void *DeviceInferenceAvailability.init(generativeModels:siri:selectedVoiceAsset:locale:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  *a5 = *result;
  a5[1] = v5;
  a5[2] = v6;
  a5[3] = v7;
  return result;
}

BOOL _s19FitnessIntelligence27DeviceInferenceAvailabilityV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  if (!*a1)
  {

    if (v6)
    {
      return 0;
    }

    if (v2)
    {
      goto LABEL_5;
    }

LABEL_13:

    if (v5)
    {
      return 0;
    }

    if (v4)
    {
      goto LABEL_8;
    }

LABEL_15:

    if (!v8)
    {

      goto LABEL_17;
    }

    return 0;
  }

  if (!v6)
  {
    goto LABEL_22;
  }

  v9 = *a2;

  v11 = sub_1B4BD7BB4(v10, v6);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_22;
  }

  v13 = sub_1B4BD7BB4(v12, v5);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (!v8)
  {
    goto LABEL_22;
  }

  v15 = sub_1B4BD7BB4(v14, v8);

  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (v3)
  {
    if (v7)
    {

      v17 = sub_1B4BD7BB4(v16, v7);

      return (v17 & 1) != 0;
    }

    goto LABEL_22;
  }

  if (v7)
  {
LABEL_22:

    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

unint64_t sub_1B4BD8414()
{
  result = qword_1EDC3CC48;
  if (!qword_1EDC3CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CC48);
  }

  return result;
}

uint64_t sub_1B4BD8468(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B4BD84C4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B4BD8538(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1B4BD8588(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B4BD85DC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B4BD85F4(void *result, int a2)
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

uint64_t DateRangeDescriptor.init(_:)(uint64_t a1)
{
  v2 = *a1;
  switch(*(a1 + 8))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      v3 = *a1;
      sub_1B4D176CC();
      sub_1B4BD89D0(a1);
      type metadata accessor for DateRangeDescriptor();
      result = swift_storeEnumTagMultiPayload();
      break;
    default:
      sub_1B4BD897C();
      swift_allocError();
      swift_willThrow();
      result = sub_1B4BD89D0(a1);
      break;
  }

  return result;
}

unint64_t sub_1B4BD897C()
{
  result = qword_1EB8AC0B0;
  if (!qword_1EB8AC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0B0);
  }

  return result;
}

uint64_t sub_1B4BD89D0(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateRangeDescriptor.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  sub_1B4BD8CB0(&qword_1EDC3C268);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BD8AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DateRangeDescriptor();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B94680(a2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v5 + 32))(v8, v12, v4);
  sub_1B4D176DC();
  v15 = v14;
  result = (*(v5 + 8))(v8, v4);
  *a1 = v15;
  *(a1 + 8) = byte_1B4D3A180[EnumCaseMultiPayload];
  return result;
}

uint64_t sub_1B4BD8CB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BD8CF4()
{
  type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  sub_1B4BD8CB0(&qword_1EDC3C268);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4BD8DB4()
{
  result = qword_1EB8AC0B8;
  if (!qword_1EB8AC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0B8);
  }

  return result;
}

void static WorkoutCountByRoundedDistancePropertyGenerator.from(_:for:)(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v75 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v84 = *(v14 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v75 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v82 = &v75 - v25;
  if (*a2 != 17)
  {
    goto LABEL_8;
  }

  v83 = a3;
  v27 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v28 = (*(v26 + 56))(v27, v26);
  v29 = [v28 effectiveTypeIdentifier];

  a3 = v83;
  v30 = vdupq_n_s64(v29);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_1F2CBAAC0, v30), vceqq_s64(unk_1F2CBAAD0, v30)))) & 1) == 0 && qword_1F2CBAAE0 != v29 && unk_1F2CBAAE8 != v29 && qword_1F2CBAAF0 != v29)
  {
    goto LABEL_8;
  }

  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  (*(v32 + 120))(v31, v32);
  v33 = v84;
  if ((*(v84 + 48))(v13, 1, v14) == 1)
  {
    sub_1B4BD9624(v13);
    a3 = v83;
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v34 = *(v33 + 32);
  v35 = v82;
  v78 = v33 + 32;
  v76 = v17;
  v77 = v34;
  v34(v82, v13, v14);
  v36 = objc_opt_self();
  v37 = [v36 kilometers];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v39 = v38;
  v42 = *(v33 + 8);
  v40 = v33 + 8;
  v41 = v42;
  v42(v23, v14);
  v43 = floor(v39);
  v81 = v36;
  v44 = [v36 miles];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v46 = v45;
  v42(v23, v14);
  v47 = floor(v46);
  if (v43 == v47)
  {
    v41(v35, v14);
    v48 = v83;
    *v83 = 0;
    v48[1] = 0;
    return;
  }

  v79 = v41;
  v80 = v40;
  v49 = MEMORY[0x1E69E7CC0];
  v50 = v81;
  v51 = v77;
  v52 = v76;
  if (v43 > 0.0)
  {
    v53 = [v81 kilometers];
    sub_1B499221C();
    sub_1B4D1741C();
    v54 = sub_1B4A1E48C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v56 = *(v54 + 2);
    v55 = *(v54 + 3);
    v49 = v54;
    if (v56 >= v55 >> 1)
    {
      v49 = sub_1B4A1E48C(v55 > 1, v56 + 1, 1, v54);
    }

    *(v49 + 2) = v56 + 1;
    v51(&v49[((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v56], v20, v14);
  }

  if (v47 <= 0.0)
  {
    v58 = v49;
  }

  else
  {
    v57 = [v50 miles];
    sub_1B499221C();
    sub_1B4D1741C();
    v58 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_1B4A1E48C(0, *(v49 + 2) + 1, 1, v49);
    }

    v60 = *(v58 + 2);
    v59 = *(v58 + 3);
    if (v60 >= v59 >> 1)
    {
      v58 = sub_1B4A1E48C(v59 > 1, v60 + 1, 1, v58);
    }

    *(v58 + 2) = v60 + 1;
    v51(&v58[((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v60], v52, v14);
  }

  v61 = *(v58 + 2);
  if (v61)
  {
    v87 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF5BC(0, v61, 0);
    v62 = v87;
    v63 = v84 + 16;
    v84 = *(v84 + 16);
    v64 = *(v63 + 64);
    v77 = v58;
    v65 = &v58[(v64 + 32) & ~v64];
    v78 = *(v63 + 56);
    do
    {
      v66 = v63;
      (v84)(v23, v65, v14);
      v67 = *(v86 + 48);
      v68 = [v81 meters];
      sub_1B4D1745C();

      v79(v23, v14);
      *&v9[v67] = 1;
      v87 = v62;
      v70 = *(v62 + 16);
      v69 = *(v62 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1B4BCF5BC(v69 > 1, v70 + 1, 1);
        v62 = v87;
      }

      *(v62 + 16) = v70 + 1;
      sub_1B4BD968C(v9, v62 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v70);
      v65 += v78;
      --v61;
      v63 = v66;
    }

    while (v61);

    if (*(v62 + 16))
    {
      goto LABEL_28;
    }

LABEL_30:
    v71 = MEMORY[0x1E69E7CC8];
    goto LABEL_31;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_30;
  }

LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B8, &qword_1B4D1ABD0);
  v71 = sub_1B4D18AEC();
LABEL_31:
  v72 = v82;
  v87 = v71;

  sub_1B4BD96FC(v73, 1, &v87);
  v79(v72, v14);

  v74 = v83;
  *v83 = v87;
  v74[1] = 0;
}

uint64_t sub_1B4BD9624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4BD968C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B4BD96FC(uint64_t a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = v56 - v16;
  v61 = *(a1 + 16);
  if (!v61)
  {
    goto LABEL_22;
  }

  v56[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v60 = *(v15 + 72);
  v62 = a1;
  v56[0] = v19;
  sub_1B4BD9CCC(a1 + v19, v56 - v16);
  v57 = v8;
  v63 = *(v8 + 32);
  v64 = v7;
  v63(v11, v17, v7);
  v59 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_1B49E9B90(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_1B49848E0(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_1B49E9B90(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_1B4D18E1C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v33 = v22;
  sub_1B4988BC4();
  v22 = v33;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v67 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v57 + 8))(v11, v64);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v34 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v35 = v34[6];
  v58 = *(v57 + 72);
  v36 = v22;
  v63((v35 + v58 * v22), v11, v64);
  *(v34[7] + 8 * v36) = v20;
  v37 = v34[2];
  v26 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (!v26)
  {
    v34[2] = v38;
    v39 = v62;
    if (v61 == 1)
    {
LABEL_22:

      return;
    }

    v40 = v62 + v60 + v56[0];
    v41 = 1;
    while (v41 < *(v39 + 16))
    {
      sub_1B4BD9CCC(v40, v17);
      v63(v11, v17, v64);
      v42 = *&v17[v59];
      v43 = *a3;
      v44 = sub_1B49E9B90(v11);
      v46 = v43[2];
      v47 = (v45 & 1) == 0;
      v26 = __OFADD__(v46, v47);
      v48 = v46 + v47;
      if (v26)
      {
        goto LABEL_23;
      }

      v49 = v45;
      if (v43[3] < v48)
      {
        sub_1B49848E0(v48, 1);
        v50 = *a3;
        v44 = sub_1B49E9B90(v11);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v49)
      {
        goto LABEL_9;
      }

      v52 = *a3;
      *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v53 = v44;
      v63((v52[6] + v58 * v44), v11, v64);
      *(v52[7] + 8 * v53) = v42;
      v54 = v52[2];
      v26 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v41;
      v52[2] = v55;
      v40 += v60;
      v39 = v62;
      if (v61 == v41)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](39, 0xE100000000000000);
  sub_1B4D18A9C();
  __break(1u);
}

unint64_t sub_1B4BD9C2C(uint64_t a1)
{
  result = sub_1B4A2FCF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BD9C58()
{
  result = qword_1EDC38298[0];
  if (!qword_1EDC38298[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC0C0, &qword_1B4D3A1B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38298);
  }

  return result;
}

uint64_t sub_1B4BD9CCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CacheIndex.date(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v5 = v20 - v4;
  v6 = sub_1B4D175FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x1EEE9AC00])();
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  v14 = *v1;
  v15 = _HKActivityCacheDateComponentsFromCacheIndex();
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = v15;
  sub_1B4D1756C();

  (*(v7 + 32))(v13, v11, v6);
  sub_1B4D178FC();
  (*(v7 + 8))(v13, v6);
  v17 = sub_1B4D1777C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v5, 1, v17) == 1)
  {
    sub_1B497A590(v5);
LABEL_4:
    sub_1B4BD9F8C();
    swift_allocError();
    return swift_willThrow();
  }

  return (*(v18 + 32))(a1, v5, v17);
}

unint64_t sub_1B4BD9F8C()
{
  result = qword_1EB8AC0C8;
  if (!qword_1EB8AC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0C8);
  }

  return result;
}

uint64_t CacheIndex.dateComponents(for:)@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  result = CacheIndex.date(for:)(v8);
  if (!v2)
  {
    v21 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
    v10 = sub_1B4D1794C();
    v11 = *(v10 - 8);
    v12 = v11;
    v20 = v5;
    v13 = *(v11 + 72);
    v14 = *(v11 + 80);
    v19[1] = a1;
    v15 = (v14 + 32) & ~v14;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B4D223E0;
    v17 = v16 + v15;
    v18 = *(v12 + 104);
    v18(v17, *MEMORY[0x1E6969A50], v10);
    v18(v17 + v13, *MEMORY[0x1E6969A68], v10);
    v19[0] = v4;
    v18(v17 + 2 * v13, *MEMORY[0x1E6969A78], v10);
    v18(v17 + 3 * v13, *MEMORY[0x1E6969A10], v10);
    v18(v17 + 4 * v13, *MEMORY[0x1E6969AB0], v10);
    v18(v17 + 5 * v13, *MEMORY[0x1E6969A48], v10);
    sub_1B49B56B4(v16);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1B4D1788C();

    return (*(v20 + 8))(v8, v19[0]);
  }

  return result;
}