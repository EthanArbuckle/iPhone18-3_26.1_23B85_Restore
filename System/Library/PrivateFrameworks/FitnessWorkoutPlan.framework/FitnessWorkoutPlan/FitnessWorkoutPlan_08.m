unint64_t sub_1E594C9F8()
{
  result = qword_1ECFFE208;
  if (!qword_1ECFFE208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE208);
  }

  return result;
}

__n128 PersonalizedWorkoutPlansFeature.init(environment:placement:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = a2;
  return result;
}

uint64_t PersonalizedWorkoutPlansFeature.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1E594CB84()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x1E6932DE0](0);
  }

  MEMORY[0x1E6932DE0](v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E594CBE8()
{
  v1 = *v0;
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x1E6932DE0](0);
  }

  return MEMORY[0x1E6932DE0](v1);
}

uint64_t sub_1E594CC30()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x1E6932DE0](0);
  }

  MEMORY[0x1E6932DE0](v1);
  return sub_1E5A2C204();
}

uint64_t PersonalizedWorkoutPlansFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3, char a4)
{
  v69 = a3;
  v66 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v65 - v8;
  v10 = type metadata accessor for PersonalizedWorkoutPlanCandidates();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE268, &qword_1E5A39378);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC360, &qword_1E5A30870);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v65 - v23;
  v25 = *(v4 + 16);
  if ((a4 & 1) == 0)
  {
    v35 = v4;
    v33 = *v4;
    v34 = v35[1];
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v37 = v36[12];
    v38 = v36[16];
    v39 = v36[20];
    v40 = &v24[v36[24]];
    v70 = 3;
    sub_1E594D440();
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v41 = *MEMORY[0x1E6999B50];
    v42 = sub_1E5A2B924();
    (*(*(v42 - 8) + 104))(&v24[v38], v41, v42);
    v43 = *MEMORY[0x1E6999B48];
    v44 = sub_1E5A2B914();
    (*(*(v44 - 8) + 104))(&v24[v39], v43, v44);
    v45 = swift_allocObject();
    *(v45 + 16) = v33;
    *(v45 + 24) = v34;
    *(v45 + 32) = v25;
    *v40 = &unk_1E5A39398;
    *(v40 + 1) = v45;
    (*(v19 + 104))(v24, *MEMORY[0x1E6999AD8], v18);
    v46 = v69;
    v47 = *v69;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_1E58E7384(0, v47[2] + 1, 1, v47);
    }

    v49 = v47[2];
    v48 = v47[3];
    v50 = v49 + 1;
    if (v49 < v48 >> 1)
    {
      goto LABEL_9;
    }

LABEL_18:
    v47 = sub_1E58E7384(v48 > 1, v50, 1, v47);
LABEL_9:
    v47[2] = v50;
    result = (*(v19 + 32))(v47 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v49, v24, v18);
    *v46 = v47;
    return result;
  }

  v26 = *(v4 + 16);
  v65 = v22;
  v27 = type metadata accessor for PersonalizedWorkoutPlansState();
  sub_1E594D36C(v66 + *(v27 + 20), v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v52 = 1;
    v53 = v25;
    v29 = v67;
    v32 = v68;
    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E594D3DC(v9, v13);
    v29 = v67;
    v32 = v68;
    goto LABEL_12;
  }

  v29 = v67;
  if (EnumCaseMultiPayload == 1)
  {
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE278, &unk_1E5A3CAA0) + 48);
    sub_1E594D3DC(v9, v13);
    v31 = sub_1E5A29E34();
    (*(*(v31 - 8) + 8))(&v9[v30], v31);
    v32 = v68;
LABEL_12:
    sub_1E594D3DC(v13, v17);
    v52 = 0;
    v53 = v26;
    goto LABEL_14;
  }

  sub_1E58BAD14(v9, &qword_1ECFFE260, &qword_1E5A39370);
  v52 = 1;
  v53 = v26;
  v32 = v68;
LABEL_14:
  (*(v29 + 56))(v17, v52, 1, v32);
  v54 = (*(v29 + 48))(v17, 1, v32);
  result = sub_1E58BAD14(v17, &qword_1ECFFE268, &qword_1E5A39378);
  if (v54 == 1)
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v56 = v55[12];
    v57 = v55[16];
    v58 = v55[20];
    v59 = v65;
    v60 = &v65[v55[24]];
    v71 = v53;
    sub_1E594D440();
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v61 = *MEMORY[0x1E6999B50];
    v62 = sub_1E5A2B924();
    (*(*(v62 - 8) + 104))(&v59[v57], v61, v62);
    v63 = *MEMORY[0x1E6999B48];
    v64 = sub_1E5A2B914();
    (*(*(v64 - 8) + 104))(&v59[v58], v63, v64);
    *v60 = &unk_1E5A39380;
    *(v60 + 1) = 0;
    (*(v19 + 104))(v59, *MEMORY[0x1E6999AD8], v18);
    v46 = v69;
    v47 = *v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_1E58E7384(0, v47[2] + 1, 1, v47);
    }

    v49 = v47[2];
    v48 = v47[3];
    v50 = v49 + 1;
    v24 = v65;
    if (v49 < v48 >> 1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1E594D36C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E594D3DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidates();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E594D440()
{
  result = qword_1ECFFE270;
  if (!qword_1ECFFE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE270);
  }

  return result;
}

uint64_t sub_1E594D494(uint64_t a1, int *a2)
{
  v2[2] = sub_1E5A2BC84();
  v2[3] = sub_1E5A2BC74();
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1E594D5A4;

  return v7();
}

uint64_t sub_1E594D5A4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1E5A2BC54();

  return MEMORY[0x1EEE6DFA0](sub_1E58E791C, v5, v4);
}

uint64_t sub_1E594D6E0()
{
  *(v0 + 16) = sub_1E5A2BC84();
  *(v0 + 24) = sub_1E5A2BC74();
  *(v0 + 40) = 0;
  v1 = *(MEMORY[0x1E6999AF0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE288, &qword_1E5A394C8);
  *v2 = v0;
  v2[1] = sub_1E594D7C0;

  return MEMORY[0x1EEE01A40](v0 + 40, v3);
}

uint64_t sub_1E594D7C0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1E5A2BC54();

  return MEMORY[0x1EEE6DFA0](sub_1E58E49EC, v5, v4);
}

uint64_t sub_1E594D908(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E58CD5C8;

  return sub_1E594D494(a1, v4);
}

unint64_t sub_1E594D9BC()
{
  result = qword_1EE2D0890;
  if (!qword_1EE2D0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0890);
  }

  return result;
}

unint64_t sub_1E594DA14()
{
  result = qword_1EE2D0898[0];
  if (!qword_1EE2D0898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D0898);
  }

  return result;
}

unint64_t sub_1E594DA6C()
{
  result = qword_1EE2CFAA8;
  if (!qword_1EE2CFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFAA8);
  }

  return result;
}

unint64_t sub_1E594DAC4()
{
  result = qword_1EE2D0950[0];
  if (!qword_1EE2D0950[0])
  {
    type metadata accessor for PersonalizedWorkoutPlansState();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D0950);
  }

  return result;
}

uint64_t sub_1E594DB1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1E594DB64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizedWorkoutPlansFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PersonalizedWorkoutPlansFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E594DD08(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E594DD1C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_1E594DD40()
{
  result = qword_1ECFFE280;
  if (!qword_1ECFFE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE280);
  }

  return result;
}

FitnessWorkoutPlan::WorkoutPlanCandidateVariation_optional __swiftcall WorkoutPlanCandidateVariation.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t sub_1E594DDBC()
{
  result = qword_1ECFFE290;
  if (!qword_1ECFFE290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE298, &qword_1E5A39530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE290);
  }

  return result;
}

unint64_t sub_1E594DEE4()
{
  result = qword_1ECFFE2A0;
  if (!qword_1ECFFE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE2A0);
  }

  return result;
}

unint64_t sub_1E594DF48()
{
  result = qword_1ECFFE2A8;
  if (!qword_1ECFFE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE2A8);
  }

  return result;
}

uint64_t sub_1E594DF9C()
{
  v0 = sub_1E5A2A3D4();
  __swift_allocate_value_buffer(v0, qword_1ED026480);
  __swift_project_value_buffer(v0, qword_1ED026480);
  return sub_1E5A2A3C4();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t static WorkoutPlanEquipment.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

FitnessWorkoutPlan::WorkoutPlanEquipment __swiftcall WorkoutPlanEquipment.init(identifier:name:)(Swift::String identifier, Swift::String name)
{
  *v2 = identifier;
  v2[1] = name;
  result.name = name;
  result.identifier = identifier;
  return result;
}

uint64_t WorkoutPlanEquipment.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WorkoutPlanEquipment.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1E594E11C(uint64_t a1)
{
  v2 = sub_1E594E3CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E594E158(uint64_t a1)
{
  v2 = sub_1E594E3CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static WorkoutPlanEquipment.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E5A2C114(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E5A2C114();
    }
  }

  return result;
}

uint64_t WorkoutPlanEquipment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE2B0, &qword_1E5A39630);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E594E3CC();
  sub_1E5A2C224();
  v16 = 0;
  v12 = v14[3];
  sub_1E5A2C064();
  if (!v12)
  {
    v15 = 1;
    sub_1E5A2C064();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E594E3CC()
{
  result = qword_1ECFFE2B8;
  if (!qword_1ECFFE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE2B8);
  }

  return result;
}

uint64_t WorkoutPlanEquipment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE2C0, &qword_1E5A39638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E594E3CC();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1E5A2BF94();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1E5A2BF94();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutPlanEquipment.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2BB74();

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanEquipment.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

unint64_t sub_1E594E708()
{
  result = qword_1ECFFE2C8;
  if (!qword_1ECFFE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE2C8);
  }

  return result;
}

unint64_t sub_1E594E780()
{
  result = qword_1ECFFE2D0;
  if (!qword_1ECFFE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE2D0);
  }

  return result;
}

unint64_t sub_1E594E7D8()
{
  result = qword_1ECFFE2D8;
  if (!qword_1ECFFE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE2D8);
  }

  return result;
}

unint64_t sub_1E594E830()
{
  result = qword_1ECFFE2E0;
  if (!qword_1ECFFE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE2E0);
  }

  return result;
}

uint64_t DurationSelectionView.init(store:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  result = sub_1E5A2A654();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E594E91C(uint64_t a1)
{
  v3 = type metadata accessor for EditItem();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(v1 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v11 = &v7[*(v4 + 44)];
  v13 = *v11;
  v12 = v11[1];

  sub_1E58D26E4(v7, type metadata accessor for EditItem);
  if (!v12)
  {
    goto LABEL_7;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v14 = v23;
  if (!*(v23 + 16))
  {

    goto LABEL_6;
  }

  v15 = sub_1E58EF508(v13, v12);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_6:

LABEL_7:
    v20 = 1;
    return v20 & 1;
  }

  v18 = *(*(v14 + 56) + (v15 << 6) + 8);

  v19 = sub_1E59E8F3C(v8, v9, v18);

  v20 = v19 ^ 1;
  return v20 & 1;
}

uint64_t DurationSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  v2 = *(*(v20[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v20[0]);
  v4 = v20 - v3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE2E8, &qword_1E5A39900);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v8 = v20 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE2F0, &unk_1E5A39908);
  v9 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v11 = v20 - v10;
  v12 = v1[1];
  v23 = *v1;
  v24 = v12;
  sub_1E5950DF0(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC670, &unk_1E5A37DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE2F8, &unk_1E5A39918);
  sub_1E58EF58C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE300, &unk_1E5A39928);
  v14 = sub_1E58CD164(&qword_1ECFFE308, &qword_1ECFFE300, &unk_1E5A39928);
  v25 = v13;
  v26 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B714();
  sub_1E5A2ADF4();
  sub_1E5951008();
  v15 = v22;
  sub_1E5A2B134();
  (*(v5 + 8))(v8, v15);
  v16 = v21;
  v27[0] = sub_1E5A2B414();
  *&v11[*(v16 + 36)] = sub_1E5A2B634();
  v17 = *MEMORY[0x1E697E728];
  v18 = sub_1E5A2A684();
  (*(*(v18 - 8) + 104))(v4, v17, v18);
  sub_1E5951118();
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E5951170();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E5A2B164();
    sub_1E58BAD14(v4, &qword_1ECFFCE80, &qword_1E5A35BC0);
    return sub_1E58BAD14(v11, &qword_1ECFFE2F0, &unk_1E5A39908);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E594EEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A2AAC4();
  v16 = *(v4 - 8);
  v17 = v4;
  v5 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE300, &unk_1E5A39928);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  sub_1E5A2AD64();
  v18 = a1;
  v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE320, &qword_1E5A399E8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE328, &qword_1E5A399F0);
  v14 = sub_1E58CD164(&qword_1ECFFE330, &qword_1ECFFE328, &qword_1E5A399F0);
  v20 = v13;
  v21 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A4C4();
  sub_1E5A2AAB4();
  LOBYTE(a1) = sub_1E5A2AD84();
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != a1)
  {
    sub_1E5A2AD74();
  }

  sub_1E58CD164(&qword_1ECFFE308, &qword_1ECFFE300, &unk_1E5A39928);
  sub_1E5A2B234();
  (*(v16 + 8))(v7, v17);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1E594F18C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE328, &qword_1E5A399F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  *v7 = sub_1E5A2A934();
  *(v7 + 1) = 0x4024000000000000;
  v7[16] = 0;
  v8 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE338, &qword_1E5A399F8) + 44)];
  sub_1E594F2B4(a1, a2);
  sub_1E58CD164(&qword_1ECFFE330, &qword_1ECFFE328, &qword_1E5A399F0);
  sub_1E5A2B204();
  return sub_1E58BAD14(v7, &qword_1ECFFE328, &qword_1E5A399F0);
}

uint64_t sub_1E594F2B4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1E5A2B934();

  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v17[3] = v16;

  sub_1E58F011C(v17);
  v4 = *(*(&v13 + 1) + 16);
  if (!v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v12 = v5;
    sub_1E595129C(&v12);

    swift_getKeyPath();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE340, &qword_1E5A39A48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE348, &qword_1E5A39A50);
    sub_1E58CD164(&qword_1ECFFE350, &qword_1ECFFE340, &qword_1E5A39A48);
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE358, &qword_1E5A39A58);
    v9 = sub_1E5A2AD04();
    v10 = sub_1E5951C28();
    *&v13 = v8;
    *(&v13 + 1) = v9;
    *&v14 = v10;
    *(&v14 + 1) = MEMORY[0x1E697CC08];
    swift_getOpaqueTypeConformance2();
    return sub_1E5A2B6E4();
  }

  v5 = sub_1E5A20774(v4, 0);
  v6 = sub_1E5A22DDC(&v12, (v5 + 32), v4, *(&v13 + 1));

  sub_1E58D26C0();
  if (v6 == v4)
  {
    goto LABEL_5;
  }

  __break(1u);
  MEMORY[0x1E69331F0](v5);

  __break(1u);
  return result;
}

uint64_t sub_1E594F52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = sub_1E5A2ACE4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v30 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E5A2AD04();
  v32 = *(v31 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE368, &unk_1E5A39A60);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE358, &qword_1E5A39A58);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  v22 = *(a1 + 16);
  v41 = *a1;
  v42 = v22;
  v43 = *(a1 + 32);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v24 = *(a1 + 16);
  *(v23 + 32) = *a1;
  *(v23 + 48) = v24;
  *(v23 + 64) = *(a1 + 32);
  v34 = a2;
  v35 = a3;
  v36 = &v41;

  sub_1E5951D7C(&v41, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE378, &qword_1E5A39A70);
  sub_1E5951DD8();
  sub_1E5A2B574();
  sub_1E58CD164(&qword_1ECFFE370, &qword_1ECFFE368, &unk_1E5A39A60);
  sub_1E58EFCE8();
  sub_1E5A2B0C4();
  (*(v14 + 8))(v17, v13);
  v37 = a2;
  v38 = a3;
  v39[0] = v41;
  v39[1] = v42;
  v40 = v43;
  LOBYTE(a1) = sub_1E594E91C(v39);
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = a1 & 1;
  v27 = &v21[*(v18 + 36)];
  *v27 = KeyPath;
  v27[1] = sub_1E5939210;
  v27[2] = v26;
  sub_1E5A2ACD4();
  sub_1E5A2ACF4();
  sub_1E5951C28();
  v28 = v31;
  sub_1E5A2B244();
  (*(v32 + 8))(v12, v28);
  return sub_1E58BAD14(v21, &qword_1ECFFE358, &qword_1E5A39A58);
}

uint64_t sub_1E594F930(uint64_t a1, uint64_t a2, double *a3)
{
  v4 = type metadata accessor for WorkoutPlanCreationAction();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a3 / 60.0;
  if (COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    v10[8] = 0;
    *v8 = 7;
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *(v8 + 3) = v9;
    v8[32] = 0;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 88) = 0u;
    *(v8 + 104) = 0u;
    *(v8 + 120) = 0u;
    *(v8 + 136) = 0u;
    *(v8 + 152) = 0u;
    *(v8 + 168) = 0u;
    *(v8 + 46) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1E5A2B954();
    return sub_1E58D26E4(v8, type metadata accessor for WorkoutPlanCreationAction);
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_1E594FA7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_1E5A2B7E4();
  a4[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE398, &qword_1E5A39AF0);
  sub_1E594FB44(a1, a2, a3, (a4 + *(v9 + 44)));
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v10 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE378, &qword_1E5A39A70) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

uint64_t sub_1E594FB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v49 = a4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE3A0, &qword_1E5A39AF8);
  v7 = *(*(v48 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v48);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v45 - v10;
  v11 = type metadata accessor for EditItem();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();

  sub_1E5A2B934();

  v16 = &v15[*(v12 + 36)];
  v17 = *v16;
  v18 = v16[8];
  sub_1E58D26E4(v15, type metadata accessor for EditItem);
  if ((v18 & 1) != 0 || ((v19 = *a3, v20 = *(a3 + 24), v21 = *(a3 + 32), sub_1E5A2BD04(), v19 - v20 <= v22) ? (v23 = v22 > v19 + v21) : (v23 = 1), v23))
  {
    if (qword_1ECFFB488 != -1)
    {
      swift_once();
    }

    v24 = &qword_1ED0264A8;
  }

  else
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v24 = &qword_1ED026498;
  }

  v47 = *v24;

  KeyPath = swift_getKeyPath();
  v61 = xmmword_1E5A398E0;
  v45 = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  v26 = *(a3 + 16);
  *(v25 + 32) = *a3;
  *(v25 + 48) = v26;
  *(v25 + 64) = *(a3 + 32);

  sub_1E5951D7C(a3, &v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE3A8, &qword_1E5A39B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE3B0, &qword_1E5A39B58);
  sub_1E5951EDC();
  sub_1E5951FBC();
  v27 = v51;
  sub_1E5A2B6E4();
  sub_1E5A2ADA4();
  sub_1E5A2A424();
  v65 = v28;
  v66 = v29;
  v67 = v30;
  v68 = v31;
  v69 = 0;
  v32 = v27 + *(v48 + 36);
  sub_1E5A2AC04();
  v48 = sub_1E5A2AA24();
  v53 = 1;
  sub_1E595073C(a3, a1, a2, &v63);
  v57 = v64[2];
  v58 = *&v64[3];
  v55 = v64[0];
  v56 = v64[1];
  v54 = v63;
  v59[2] = v64[1];
  v59[3] = v64[2];
  v60 = *&v64[3];
  v59[0] = v63;
  v59[1] = v64[0];
  sub_1E58BABA0(&v54, &v61, &qword_1ECFFE3E0, &qword_1E5A39B68);
  sub_1E58BAD14(v59, &qword_1ECFFE3E0, &qword_1E5A39B68);
  *(&v52[1] + 7) = v55;
  *(&v52[2] + 7) = v56;
  *(&v52[3] + 7) = v57;
  *(&v52[4] + 7) = v58;
  *(v52 + 7) = v54;
  v33 = v53;
  v34 = v50;
  sub_1E58BABA0(v27, v50, &qword_1ECFFE3A0, &qword_1E5A39AF8);
  v35 = v49;
  v36 = v47;
  *v49 = KeyPath;
  v35[1] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE3E8, &qword_1E5A39B70);
  sub_1E58BABA0(v34, v35 + *(v37 + 48), &qword_1ECFFE3A0, &qword_1E5A39AF8);
  v38 = (v35 + *(v37 + 64));
  v39 = v48;
  v61 = v48;
  LOBYTE(v62[0]) = v33;
  *(v62 + 1) = v52[0];
  *(&v62[1] + 1) = v52[1];
  *(&v62[2] + 1) = v52[2];
  *(&v62[3] + 1) = v52[3];
  v62[4] = *(&v52[3] + 15);
  v40 = v62[0];
  *v38 = v48;
  v38[1] = v40;
  v41 = v62[1];
  v42 = v62[2];
  v43 = v62[4];
  v38[4] = v62[3];
  v38[5] = v43;
  v38[2] = v41;
  v38[3] = v42;

  sub_1E58BABA0(&v61, &v63, &qword_1ECFFE3F0, &qword_1E5A39B78);
  sub_1E58BAD14(v51, &qword_1ECFFE3A0, &qword_1E5A39AF8);
  v63 = v39;
  LOBYTE(v64[0]) = v33;
  *(&v64[1] + 1) = v52[1];
  *(&v64[2] + 1) = v52[2];
  *(&v64[3] + 1) = v52[3];
  v64[4] = *(&v52[3] + 15);
  *(v64 + 1) = v52[0];
  sub_1E58BAD14(&v63, &qword_1ECFFE3F0, &qword_1E5A39B78);
  sub_1E58BAD14(v34, &qword_1ECFFE3A0, &qword_1E5A39AF8);
}

uint64_t sub_1E59500DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  *a5 = sub_1E5A2AA24();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE400, &qword_1E5A39B88);
  sub_1E59501BC(v9, a2, a3, a4, a5 + *(v10 + 44));
  sub_1E5A2B884();
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE3B0, &qword_1E5A39B58);
  v16 = a5 + *(result + 36);
  *v16 = v9 * 22.5 * 0.0174532925;
  *(v16 + 8) = v12;
  *(v16 + 16) = v14;
  return result;
}

uint64_t sub_1E59501BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a2;
  v56[1] = a1;
  v62 = a5;
  v7 = type metadata accessor for EditItem();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v56[0] = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v56 - v11;
  v13 = sub_1E5A2B6A4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE408, &qword_1E5A39B90);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v56 - v20;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE410, &qword_1E5A39B98);
  v22 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v24 = v56 - v23;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE418, &qword_1E5A39BA0);
  v25 = *(*(v58 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v58);
  v61 = v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v56 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v60 = v56 - v31;
  v32 = *MEMORY[0x1E697F468];
  v33 = sub_1E5A2A9B4();
  (*(*(v33 - 8) + 104))(v16, v32, v33);
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  sub_1E5952074(v16, v21);
  v34 = &v21[*(v18 + 44)];
  v35 = v68;
  *v34 = v67;
  *(v34 + 1) = v35;
  *(v34 + 2) = v69;
  v36 = *a4;
  v38 = *(a4 + 24);
  v37 = *(a4 + 32);
  swift_getKeyPath();

  sub_1E5A2B934();

  v39 = &v12[*(v7 + 28)];
  v40 = *v39;
  LOBYTE(v18) = v39[8];
  sub_1E58D26E4(v12, type metadata accessor for EditItem);
  if ((v18 & 1) != 0 || (sub_1E5A2BD04(), v36 - v38 > v42) || v42 > v36 + v37)
  {
    v41 = sub_1E5A2B454();
  }

  else
  {
    v41 = sub_1E5A2B404();
  }

  v43 = v41;
  sub_1E58F0054(v21, v24, &qword_1ECFFE408, &qword_1E5A39B90);
  *&v24[*(v57 + 36)] = v43;
  v65 = v59;
  v66 = a3;
  v44 = *(a4 + 16);
  v63[0] = *a4;
  v63[1] = v44;
  v64 = *(a4 + 32);
  v45 = 0.0;
  if ((sub_1E594E91C(v63) & 1) == 0)
  {
    swift_getKeyPath();

    v46 = v56[0];
    sub_1E5A2B934();

    v47 = v46 + *(v7 + 28);
    v48 = *v47;
    v49 = *(v47 + 8);
    sub_1E58D26E4(v46, type metadata accessor for EditItem);
    if ((v49 & 1) != 0 || (sub_1E5A2BD04(), v36 - v38 > v50) || (v45 = 1.0, v50 > v36 + v37))
    {
      v45 = 0.4;
    }
  }

  sub_1E58F0054(v24, v30, &qword_1ECFFE410, &qword_1E5A39B98);
  *&v30[*(v58 + 36)] = v45;
  v51 = v60;
  sub_1E58F0054(v30, v60, &qword_1ECFFE418, &qword_1E5A39BA0);
  v52 = v61;
  sub_1E58BABA0(v51, v61, &qword_1ECFFE418, &qword_1E5A39BA0);
  v53 = v62;
  sub_1E58BABA0(v52, v62, &qword_1ECFFE418, &qword_1E5A39BA0);
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE420, &qword_1E5A39BA8) + 48);
  *v54 = 0;
  *(v54 + 8) = 1;
  sub_1E58BAD14(v51, &qword_1ECFFE418, &qword_1E5A39BA0);
  return sub_1E58BAD14(v52, &qword_1ECFFE418, &qword_1E5A39BA0);
}

double sub_1E595073C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EditItem();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E59508D0(a1, a3, v29);
  v27 = a2;
  v28 = a3;
  v12 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v12;
  v26 = *(a1 + 32);
  if (sub_1E594E91C(v25))
  {
    v13 = sub_1E5A2B454();
  }

  else
  {
    swift_getKeyPath();

    sub_1E5A2B934();

    v14 = &v11[*(v8 + 28)];
    v15 = *v14;
    v16 = v14[8];
    sub_1E58D26E4(v11, type metadata accessor for EditItem);
    if ((v16 & 1) != 0 || ((v17 = *a1, v18 = *(a1 + 24), v19 = *(a1 + 32), sub_1E5A2BD04(), v17 - v18 <= v20) ? (v21 = v20 > v17 + v19) : (v21 = 1), v21))
    {
      v13 = sub_1E5A2B444();
    }

    else
    {
      v13 = sub_1E5A2B404();
    }
  }

  v22 = v29[1];
  *a4 = v29[0];
  *(a4 + 16) = v22;
  result = *&v30;
  v24 = v31;
  *(a4 + 32) = v30;
  *(a4 + 48) = v24;
  *(a4 + 64) = v13;
  return result;
}

uint64_t sub_1E59508D0@<X0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1E5A29EB4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A2BB14();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE3F8, &qword_1E5A39B80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v47 - v14;
  v16 = sub_1E5A2A974();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  sub_1E5A2A964();
  sub_1E5A2A954();
  v18 = *a1 / 60.0;
  if (COERCE__INT64(fabs(v18)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v52 = v9;
  v53 = a2;
  v55 = v18;
  sub_1E5A2A944();
  sub_1E5A2A954();
  sub_1E5A2A994();
  v19 = sub_1E5A2AFB4();
  v21 = v20;
  v23 = v22;
  sub_1E5A2AE44();
  a1 = sub_1E5A2AE34();
  v47 = *(*(a1 - 1) + 56);
  v47(v15, 1, 1, a1);
  sub_1E5A2AE74();
  sub_1E58BAD14(v15, &qword_1ECFFE3F8, &qword_1E5A39B80);
  v24 = sub_1E5A2AFA4();
  v49 = v25;
  v50 = v24;
  v48 = v26;
  v51 = v27;

  sub_1E58B3C9C(v19, v21, v23 & 1);

  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
LABEL_9:
    swift_once();
  }

  v28 = qword_1EE2D33E0;
  swift_getKeyPath();
  v29 = v28;
  sub_1E5A2B944();

  v55 = sub_1E5A2BB64();
  v56 = v30;
  sub_1E58D1C80();
  v31 = sub_1E5A2AFD4();
  v33 = v32;
  v35 = v34;
  sub_1E5A2AE44();
  v47(v15, 1, 1, a1);
  sub_1E5A2AE74();
  sub_1E58BAD14(v15, &qword_1ECFFE3F8, &qword_1E5A39B80);
  v36 = sub_1E5A2AFA4();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  sub_1E58B3C9C(v31, v33, v35 & 1);

  v43 = v48 & 1;
  v54 = v48 & 1;
  LOBYTE(v55) = v48 & 1;
  v57 = v40 & 1;
  v45 = v49;
  v44 = v50;
  *a3 = v50;
  *(a3 + 8) = v45;
  *(a3 + 16) = v43;
  *(a3 + 24) = v51;
  *(a3 + 32) = v36;
  *(a3 + 40) = v38;
  *(a3 + 48) = v40 & 1;
  *(a3 + 56) = v42;
  sub_1E594C9E8(v44, v45, v43);

  sub_1E594C9E8(v36, v38, v40 & 1);

  sub_1E58B3C9C(v36, v38, v40 & 1);

  sub_1E58B3C9C(v44, v45, v54);
}

uint64_t sub_1E5950DF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5A2BB14();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2D33E0;
  swift_getKeyPath();
  v7 = v6;
  sub_1E5A2B944();

  v8 = sub_1E5A2AF64();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  LOBYTE(v6) = v12 & 1;
  v15 = sub_1E5A2ADC4();
  result = sub_1E5A2A424();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v6;
  *(a1 + 24) = v14;
  *(a1 + 96) = v25;
  *(a1 + 112) = v26;
  *(a1 + 128) = v27;
  *(a1 + 32) = v21;
  *(a1 + 48) = v22;
  *(a1 + 64) = v23;
  *(a1 + 80) = v24;
  *(a1 + 144) = v15;
  *(a1 + 152) = v17;
  *(a1 + 160) = v18;
  *(a1 + 168) = v19;
  *(a1 + 176) = v20;
  *(a1 + 184) = 0;
  return result;
}

unint64_t sub_1E5951008()
{
  result = qword_1ECFFE310;
  if (!qword_1ECFFE310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE2E8, &qword_1E5A39900);
    sub_1E58EF58C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE300, &unk_1E5A39928);
    sub_1E58CD164(&qword_1ECFFE308, &qword_1ECFFE300, &unk_1E5A39928);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE310);
  }

  return result;
}

unint64_t sub_1E5951118()
{
  result = qword_1ECFFBF40;
  if (!qword_1ECFFBF40)
  {
    sub_1E5A2A684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBF40);
  }

  return result;
}

unint64_t sub_1E5951170()
{
  result = qword_1ECFFE318;
  if (!qword_1ECFFE318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE2F0, &unk_1E5A39908);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE2E8, &qword_1E5A39900);
    sub_1E5951008();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFC6B8, &qword_1ECFFC6C0, &qword_1E5A31900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE318);
  }

  return result;
}

uint64_t sub_1E595129C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A22778(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = sub_1E5A2C0E4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 32];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 2))
          {
            break;
          }

          v14 = *(v13 + 4);
          v15 = *(v13 + 5);
          v16 = *v13;
          *(v13 + 24) = *(v13 - 1);
          v17 = *(v13 + 3);
          *(v13 + 40) = v16;
          *(v13 + 7) = *(v13 + 2);
          *(v13 - 2) = v11;
          *(v13 - 1) = v14;
          *v13 = v15;
          *(v13 + 8) = v17;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1E5A2BC24();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_1E5951404(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1E5951404(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1E5A21290(v7);
      v7 = result;
    }

    v92 = (v7 + 16);
    v93 = *(v7 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v7 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_1E59519E4((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v99 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6);
      v10 = (*a3 + 40 * v8);
      v12 = *v10;
      v11 = v10 + 10;
      v13 = v12;
      v14 = v8 + 2;
      v15 = v9;
      while (v5 != v14)
      {
        v16 = *v11;
        v11 += 5;
        v17 = v16 >= v15;
        ++v14;
        v15 = v16;
        if ((((v9 < v13) ^ v17) & 1) == 0)
        {
          v6 = v14 - 1;
          if (v9 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 40 * v6 - 16;
        v19 = 40 * v8 + 24;
        v20 = v6;
        v21 = v8;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v19);
            v23 = *(v30 + v19 - 24);
            v24 = v30 + v18;
            v25 = *(v22 - 2);
            v26 = *(v22 - 1);
            v27 = *v22;
            v28 = *(v24 + 8);
            v29 = *(v24 - 8);
            *(v22 - 24) = *(v24 - 24);
            *(v22 - 8) = v29;
            *(v22 + 1) = v28;
            *(v24 - 24) = v23;
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
            *v24 = v27;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 16);
    v44 = *(v7 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1E58E6258((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v46;
    v47 = v7 + 32;
    v48 = (v7 + 32 + 16 * v45);
    *v48 = v8;
    v48[1] = v6;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 32);
          v51 = *(v7 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v7 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v7 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        sub_1E59519E4((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v7 + 16);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v7 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v7 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v99;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v6 - 40;
  v33 = v8 - v6;
LABEL_30:
  v34 = *(v31 + 40 * v6);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = v36 + 40;
    if (v34 >= *v36)
    {
LABEL_29:
      ++v6;
      v32 += 40;
      --v33;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v36 + 48);
    v39 = *(v36 + 56);
    v40 = *(v36 + 64);
    v41 = *(v36 + 16);
    *v37 = *v36;
    *(v36 + 56) = v41;
    v42 = *(v36 + 32);
    *v36 = v34;
    *(v36 + 8) = v38;
    *(v36 + 16) = v39;
    *(v36 + 24) = v40;
    v36 -= 40;
    *(v37 + 32) = v42;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1E59519E4(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 5;
    v5 -= 40;
    v18 = v12;
    do
    {
      v19 = (v5 + 40);
      v20 = *(v18 - 40);
      v18 -= 40;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          v23 = *v17;
          v24 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v23;
          *(v5 + 16) = v24;
        }

        if (v12 <= v4 || (v6 -= 5, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v12)
      {
        v21 = *v18;
        v22 = *(v18 + 16);
        *(v5 + 32) = *(v18 + 32);
        *v5 = v21;
        *(v5 + 16) = v22;
      }

      v5 -= 40;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v25 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v26 = (v25 >> 4) + (v25 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v26])
  {
    memmove(v6, v4, 40 * v26);
  }

  return 1;
}

unint64_t sub_1E5951C28()
{
  result = qword_1ECFFE360;
  if (!qword_1ECFFE360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE358, &qword_1E5A39A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE368, &unk_1E5A39A60);
    sub_1E58CD164(&qword_1ECFFE370, &qword_1ECFFE368, &unk_1E5A39A60);
    sub_1E58EFCE8();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFDB28, &qword_1ECFFDB30, &qword_1E5A36B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE360);
  }

  return result;
}

unint64_t sub_1E5951DD8()
{
  result = qword_1ECFFE380;
  if (!qword_1ECFFE380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE378, &qword_1E5A39A70);
    sub_1E58CD164(&qword_1ECFFE388, &qword_1ECFFE390, &qword_1E5A39A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE380);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

unint64_t sub_1E5951EDC()
{
  result = qword_1ECFFE3B8;
  if (!qword_1ECFFE3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE3A8, &qword_1E5A39B50);
    sub_1E5951F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE3B8);
  }

  return result;
}

unint64_t sub_1E5951F68()
{
  result = qword_1ECFFE3C0;
  if (!qword_1ECFFE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE3C0);
  }

  return result;
}

unint64_t sub_1E5951FBC()
{
  result = qword_1ECFFE3C8;
  if (!qword_1ECFFE3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE3B0, &qword_1E5A39B58);
    sub_1E58CD164(&qword_1ECFFE3D0, &qword_1ECFFE3D8, &qword_1E5A39B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE3C8);
  }

  return result;
}

uint64_t sub_1E5952074(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A2B6A4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59520D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1E590DEE8(0, v1, 0);
  v2 = v27;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1E5A2BDE4();
  v7 = result;
  v8 = 0;
  v24 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v25 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v26 = *v11;
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1E590DEE8((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    v15 = (v27 + 32 * v13);
    v15[4] = v26;
    v15[5] = v12;
    v16 = MEMORY[0x1E69E7CC0];
    v15[6] = MEMORY[0x1E69E7CC0];
    v15[7] = v16;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v10);
    if ((v17 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v7 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1E5901D04(v7, v25, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1E5901D04(v7, v25, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v24)
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

uint64_t sub_1E595230C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1E590DEA8(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1E5A2BDE4();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 32 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1E590DEA8((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
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
          result = sub_1E5901D04(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1E5901D04(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
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

uint64_t WorkoutPlanCreationScheduleRequest.init(modalityIdentifiers:planIdentifier:recommendationMetrics:totalDailyDuration:variation:weekCount:weekdays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v15 = sub_1E59520D8(a1);

  v16 = sub_1E591CA10(v15);

  *a8 = v16;
  v17 = type metadata accessor for WorkoutPlanCreationScheduleRequest();
  v18 = v17[5];
  v19 = sub_1E5A29E74();
  (*(*(v19 - 8) + 32))(a8 + v18, a2, v19);
  result = sub_1E595418C(a3, a8 + v17[6]);
  *(a8 + v17[7]) = a4;
  *(a8 + v17[8]) = a5;
  *(a8 + v17[9]) = a6;
  *(a8 + v17[10]) = a7;
  return result;
}

uint64_t WorkoutPlanCreationScheduleRequest.modalityIdentifiers.getter()
{
  v1 = sub_1E595230C(*v0);
  v2 = sub_1E591C978(v1);

  return v2;
}

uint64_t WorkoutPlanCreationScheduleRequest.planIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlanCreationScheduleRequest() + 20);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutPlanCreationScheduleRequest.recommendationMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutPlanCreationScheduleRequest() + 24);

  return sub_1E59541FC(v3, a1);
}

uint64_t WorkoutPlanCreationScheduleRequest.weekdays.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlanCreationScheduleRequest() + 40));
}

uint64_t WorkoutPlanCreationScheduleRequest.init(modalitySelections:planIdentifier:recommendationMetrics:totalDailyDuration:variation:weekCount:weekdays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v15 = type metadata accessor for WorkoutPlanCreationScheduleRequest();
  v16 = v15[5];
  v17 = sub_1E5A29E74();
  (*(*(v17 - 8) + 32))(&a8[v16], a2, v17);
  result = sub_1E595418C(a3, &a8[v15[6]]);
  *&a8[v15[7]] = a4;
  a8[v15[8]] = a5;
  *&a8[v15[9]] = a6;
  *&a8[v15[10]] = a7;
  return result;
}

unint64_t sub_1E59528D0()
{
  v1 = *v0;
  v2 = 0x6E6564496E616C70;
  v3 = 0x6E756F436B656577;
  if (v1 != 5)
  {
    v3 = 0x737961646B656577;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6F69746169726176;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1E59529CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5954798(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E59529F4(uint64_t a1)
{
  v2 = sub_1E595426C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5952A30(uint64_t a1)
{
  v2 = sub_1E595426C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationScheduleRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE428, &qword_1E5A39BB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E595426C();
  sub_1E5A2C224();
  v18 = *v3;
  HIBYTE(v17) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE438, &qword_1E5A39BC0);
  sub_1E595438C(&qword_1ECFFE440, sub_1E59542C0);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v11 = type metadata accessor for WorkoutPlanCreationScheduleRequest();
    v12 = v11[5];
    LOBYTE(v18) = 1;
    sub_1E5A29E74();
    sub_1E59544A0(&qword_1ECFFC7F8, MEMORY[0x1E69695A8]);
    sub_1E5A2C0B4();
    v13 = v11[6];
    LOBYTE(v18) = 2;
    type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
    sub_1E59544A0(&qword_1ECFFE450, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
    sub_1E5A2C054();
    v14 = *(v3 + v11[7]);
    LOBYTE(v18) = 3;
    sub_1E5A2C094();
    LOBYTE(v18) = *(v3 + v11[8]);
    HIBYTE(v17) = 4;
    sub_1E58F8F9C();
    sub_1E5A2C0B4();
    v15 = *(v3 + v11[9]);
    LOBYTE(v18) = 5;
    sub_1E5A2C094();
    v18 = *(v3 + v11[10]);
    HIBYTE(v17) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE458, &qword_1E5A39BC8);
    sub_1E5954314(&qword_1ECFFE460, sub_1E58C2944);
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WorkoutPlanCreationScheduleRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - v5;
  v7 = sub_1E5A29E74();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE468, &qword_1E5A39BD0);
  v33 = *(v31 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v28 - v12;
  v14 = type metadata accessor for WorkoutPlanCreationScheduleRequest();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v19 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E595426C();
  v34 = v13;
  v20 = v35;
  sub_1E5A2C214();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v35 = v10;
  v29 = v6;
  v21 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE438, &qword_1E5A39BC0);
  v37 = 0;
  sub_1E595438C(&qword_1ECFFE470, sub_1E5954404);
  v22 = v31;
  sub_1E5A2BFE4();
  v23 = v17;
  *v17 = v38;
  LOBYTE(v38) = 1;
  sub_1E59544A0(&qword_1ECFFC818, MEMORY[0x1E69695A8]);
  v24 = v35;
  sub_1E5A2BFE4();
  v28 = v7;
  (*(v21 + 32))(v23 + v14[5], v24, v7);
  type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  LOBYTE(v38) = 2;
  sub_1E59544A0(&qword_1ECFFE480, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  v25 = v29;
  sub_1E5A2BF84();
  sub_1E595418C(v25, v23 + v14[6]);
  LOBYTE(v38) = 3;
  *(v23 + v14[7]) = sub_1E5A2BFC4();
  v37 = 4;
  sub_1E58F98EC();
  sub_1E5A2BFE4();
  v26 = v33;
  *(v23 + v14[8]) = v38;
  LOBYTE(v38) = 5;
  *(v23 + v14[9]) = sub_1E5A2BFC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE458, &qword_1E5A39BC8);
  v37 = 6;
  sub_1E5954314(&qword_1ECFFE488, sub_1E58C7514);
  sub_1E5A2BFE4();
  (*(v26 + 8))(v34, v22);
  *(v23 + v14[10]) = v38;
  sub_1E59549FC(v23, v30, type metadata accessor for WorkoutPlanCreationScheduleRequest);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_1E5954ACC(v23, type metadata accessor for WorkoutPlanCreationScheduleRequest);
}

uint64_t WorkoutPlanCreationScheduleRequest.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  sub_1E58B91E8(a1, *v1);
  v13 = type metadata accessor for WorkoutPlanCreationScheduleRequest();
  v14 = v13[5];
  sub_1E5A29E74();
  sub_1E59544A0(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  sub_1E59541FC(v2 + v13[6], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    sub_1E5954A64(v12, v8, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
    sub_1E5A2C1D4();
    MEMORY[0x1E6932DE0](*v8);
    v15 = v8 + *(v4 + 20);
    sub_1E5A2BA44();
    sub_1E5953800(a1, *(v8 + *(v4 + 24)));
    sub_1E5954ACC(v8, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  }

  MEMORY[0x1E6932DE0](*(v2 + v13[7]));
  MEMORY[0x1E6932DE0](*(v2 + v13[8]));
  MEMORY[0x1E6932DE0](*(v2 + v13[9]));
  return sub_1E58BAD7C(a1, *(v2 + v13[10]));
}

uint64_t WorkoutPlanCreationScheduleRequest.hashValue.getter()
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationScheduleRequest.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E595377C()
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationScheduleRequest.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E59537C0()
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationScheduleRequest.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E5953800(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E6932DE0](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v5 += 5;

      sub_1E5A2BB74();
      MEMORY[0x1E6932DE0](v8);
      sub_1E5A2BB74();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E59538AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v42 - v10;
  v11 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v42 - v22;
  v24 = *(a2 + 16);
  result = MEMORY[0x1E6932DE0](v24);
  if (v24)
  {
    v26 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v27 = *(v17 + 72);
    v28 = (v12 + 48);
    v29 = v27;
    v44 = (v49 + 48);
    v45 = v28;
    v46 = v21;
    v42 = v27;
    do
    {
      sub_1E59549FC(v26, v23, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
      sub_1E59549FC(v23, v21, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
      if ((*v28)(v21, 1, v11) == 1)
      {
        MEMORY[0x1E6932DE0](0);
        result = sub_1E5954ACC(v23, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
      }

      else
      {
        sub_1E5954A64(v21, v15, type metadata accessor for PersonalizedWorkoutPlanCandidate);
        MEMORY[0x1E6932DE0](1);
        v30 = sub_1E5A29E74();
        sub_1E59544A0(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
        v49 = v30;
        sub_1E5A2BA44();
        v31 = &v15[v11[5]];
        v32 = *v31;
        v33 = *(v31 + 1);
        sub_1E5A2BB74();
        v34 = &v15[v11[6]];
        v35 = *v34;
        v36 = *(v34 + 1);
        sub_1E5A2BB74();
        sub_1E58F9DDC(a1, *&v15[v11[7]]);
        sub_1E58FA3DC(a1, *&v15[v11[8]]);
        v37 = v47;
        sub_1E59541FC(&v15[v11[9]], v47);
        v38 = v48;
        if ((*v44)(v37, 1, v48) == 1)
        {
          sub_1E5A2C1D4();
        }

        else
        {
          v39 = v43;
          sub_1E5954A64(v37, v43, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
          sub_1E5A2C1D4();
          MEMORY[0x1E6932DE0](*v39);
          v40 = v39 + *(v38 + 20);
          sub_1E5A2BA44();
          sub_1E5953800(a1, *(v39 + *(v38 + 24)));
          v41 = v39;
          v29 = v42;
          sub_1E5954ACC(v41, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
        }

        MEMORY[0x1E6932DE0](*&v15[v11[10]]);
        MEMORY[0x1E6932DE0](v15[v11[11]]);
        sub_1E5954ACC(v23, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
        result = sub_1E5954ACC(v15, type metadata accessor for PersonalizedWorkoutPlanCandidate);
        v28 = v45;
        v21 = v46;
      }

      v26 += v29;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t _s18FitnessWorkoutPlan0bC23CreationScheduleRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v28 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE4D0, &unk_1E5A3DBC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if ((sub_1E58B5D34(*a1, *a2) & 1) == 0)
  {
    goto LABEL_19;
  }

  v17 = type metadata accessor for WorkoutPlanCreationScheduleRequest();
  v18 = v17[5];
  if ((sub_1E5A29E54() & 1) == 0)
  {
    goto LABEL_19;
  }

  v19 = v17[6];
  v20 = *(v13 + 48);
  sub_1E59541FC(a1 + v19, v16);
  sub_1E59541FC(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_1E59541FC(v16, v12);
    if (v21(&v16[v20], 1, v4) != 1)
    {
      sub_1E5954A64(&v16[v20], v8, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      if (*v12 == *v8)
      {
        v25 = *(v4 + 20);
        if (sub_1E5A29E54())
        {
          v26 = sub_1E595AC4C(*(v12 + *(v4 + 24)), *(v8 + *(v4 + 24)));
          sub_1E5954ACC(v8, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
          sub_1E5954ACC(v12, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
          sub_1E58BAD14(v16, &qword_1ECFFD900, &qword_1E5A39BB0);
          if (v26)
          {
            goto LABEL_6;
          }

LABEL_19:
          v22 = 0;
          return v22 & 1;
        }
      }

      sub_1E5954ACC(v8, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      sub_1E5954ACC(v12, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      v23 = &qword_1ECFFD900;
      v24 = &qword_1E5A39BB0;
LABEL_18:
      sub_1E58BAD14(v16, v23, v24);
      goto LABEL_19;
    }

    sub_1E5954ACC(v12, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
LABEL_12:
    v23 = &qword_1ECFFE4D0;
    v24 = &unk_1E5A3DBC0;
    goto LABEL_18;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1E58BAD14(v16, &qword_1ECFFD900, &qword_1E5A39BB0);
LABEL_6:
  if (*(a1 + v17[7]) != *(a2 + v17[7]) || *(a1 + v17[8]) != *(a2 + v17[8]) || *(a1 + v17[9]) != *(a2 + v17[9]))
  {
    goto LABEL_19;
  }

  v22 = sub_1E58BAD74(*(a1 + v17[10]), *(a2 + v17[10]));
  return v22 & 1;
}

uint64_t type metadata accessor for WorkoutPlanCreationScheduleRequest()
{
  result = qword_1ECFFE498;
  if (!qword_1ECFFE498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E595418C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59541FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E595426C()
{
  result = qword_1ECFFE430;
  if (!qword_1ECFFE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE430);
  }

  return result;
}

unint64_t sub_1E59542C0()
{
  result = qword_1ECFFE448;
  if (!qword_1ECFFE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE448);
  }

  return result;
}

uint64_t sub_1E5954314(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE458, &qword_1E5A39BC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E595438C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE438, &qword_1E5A39BC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5954404()
{
  result = qword_1ECFFE478;
  if (!qword_1ECFFE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE478);
  }

  return result;
}

uint64_t sub_1E59544A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E5954510()
{
  sub_1E5954620(319, &qword_1ECFFE4A8, sub_1E591CB94);
  if (v0 <= 0x3F)
  {
    sub_1E5A29E74();
    if (v1 <= 0x3F)
    {
      sub_1E5898B54();
      if (v2 <= 0x3F)
      {
        sub_1E5954620(319, &qword_1ECFFE4B0, sub_1E58D1B2C);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E5954620(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1E5A2BD24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E5954694()
{
  result = qword_1ECFFE4B8;
  if (!qword_1ECFFE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE4B8);
  }

  return result;
}

unint64_t sub_1E59546EC()
{
  result = qword_1ECFFE4C0;
  if (!qword_1ECFFE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE4C0);
  }

  return result;
}

unint64_t sub_1E5954744()
{
  result = qword_1ECFFE4C8;
  if (!qword_1ECFFE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE4C8);
  }

  return result;
}

uint64_t sub_1E5954798(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E5A468D0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6564496E616C70 && a2 == 0xEE00726569666974 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5A468F0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A46910 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E756F436B656577 && a2 == 0xE900000000000074 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737961646B656577 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E59549FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5954A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5954ACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL PersonalizedWorkoutPlanCandidateType.isPersonalized.getter()
{
  v1 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E590B588(v0, v4);
  v5 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) == 1;
  sub_1E5955008(v4, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  return v6;
}

uint64_t sub_1E5954C00()
{
  if (*v0)
  {
    result = 0x6C616E6F73726570;
  }

  else
  {
    result = 0x6D6F74737563;
  }

  *v0;
  return result;
}

uint64_t sub_1E5954C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E6F73726570 && a2 == 0xEC00000064657A69)
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

uint64_t sub_1E5954D1C(uint64_t a1)
{
  v2 = sub_1E595578C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5954D58(uint64_t a1)
{
  v2 = sub_1E595578C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5954D94(uint64_t a1)
{
  v2 = sub_1E5955834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5954DD0(uint64_t a1)
{
  v2 = sub_1E5955834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5954E0C(uint64_t a1)
{
  v2 = sub_1E59557E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5954E48(uint64_t a1)
{
  v2 = sub_1E59557E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizedWorkoutPlanCandidateType.id.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E590B588(v1, v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return 0x6D6F74737563;
  }

  sub_1E5955EE4(v10, v6, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  v12 = sub_1E5A29E44();
  sub_1E5955008(v6, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  return v12;
}

uint64_t sub_1E5955008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PersonalizedWorkoutPlanCandidateType.candidate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E590B588(v1, v6);
  v7 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E5955008(v6, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v9 = 1;
  }

  else
  {
    sub_1E5955EE4(v6, a1, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    v9 = 0;
  }

  return (*(v8 + 56))(a1, v9, 1, v7);
}

uint64_t sub_1E59551A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E590B588(v4, v14);
  result = (*(v7 + 48))(v14, 1, v6);
  if (result == 1)
  {
    v16 = 0xE600000000000000;
    v17 = 0x6D6F74737563;
  }

  else
  {
    sub_1E5955EE4(v14, v11, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    v17 = sub_1E5A29E44();
    v16 = v18;
    result = sub_1E5955008(v11, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  }

  *a2 = v17;
  a2[1] = v16;
  return result;
}

uint64_t PersonalizedWorkoutPlanCandidateType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE4D8, &qword_1E5A39E10);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v28 - v4;
  v5 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE4E0, &qword_1E5A39E18);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE4E8, &qword_1E5A39E20);
  v17 = *(v36 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v20 = &v28 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E595578C();
  sub_1E5A2C224();
  sub_1E590B588(v35, v16);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    v37 = 0;
    sub_1E5955834();
    v22 = v36;
    sub_1E5A2C024();
    (*(v29 + 8))(v12, v30);
    return (*(v17 + 8))(v20, v22);
  }

  else
  {
    v24 = v31;
    sub_1E5955EE4(v16, v31, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    v38 = 1;
    sub_1E59557E0();
    v25 = v32;
    v26 = v36;
    sub_1E5A2C024();
    sub_1E59568AC(&qword_1ECFFC158, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    v27 = v34;
    sub_1E5A2C0B4();
    (*(v33 + 8))(v25, v27);
    sub_1E5955008(v24, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    return (*(v17 + 8))(v20, v26);
  }
}

unint64_t sub_1E595578C()
{
  result = qword_1ECFFE4F0;
  if (!qword_1ECFFE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE4F0);
  }

  return result;
}

unint64_t sub_1E59557E0()
{
  result = qword_1ECFFE4F8;
  if (!qword_1ECFFE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE4F8);
  }

  return result;
}

unint64_t sub_1E5955834()
{
  result = qword_1ECFFE500;
  if (!qword_1ECFFE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE500);
  }

  return result;
}

uint64_t PersonalizedWorkoutPlanCandidateType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE508, &qword_1E5A39E28);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE510, &qword_1E5A39E30);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE518, &unk_1E5A39E38);
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1E595578C();
  v25 = v58;
  sub_1E5A2C214();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v58 = v16;
  v49 = v20;
  v50 = v22;
  v27 = v55;
  v26 = v56;
  v28 = sub_1E5A2C004();
  v29 = (2 * *(v28 + 16)) | 1;
  v60 = v28;
  v61 = v28 + 32;
  v62 = 0;
  v63 = v29;
  v30 = sub_1E58BC5B4();
  v31 = v12;
  v32 = v15;
  if (v30 == 2 || v62 != v63 >> 1)
  {
    v35 = sub_1E5A2BE84();
    swift_allocError();
    v37 = v36;
    v38 = v31;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v37 = v58;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v57 + 8))(v15, v38);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  if (v30)
  {
    v64 = 1;
    sub_1E59557E0();
    v33 = v27;
    sub_1E5A2BF44();
    v34 = v57;
    v42 = v26;
    v43 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
    sub_1E59568AC(&qword_1ECFFC188, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    v44 = v49;
    v45 = v53;
    sub_1E5A2BFE4();
    (*(v54 + 8))(v33, v45);
    (*(v34 + 8))(v32, v31);
    swift_unknownObjectRelease();
    (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
    v46 = v50;
    sub_1E5955EE4(v44, v50, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  }

  else
  {
    v64 = 0;
    sub_1E5955834();
    sub_1E5A2BF44();
    v41 = v57;
    v42 = v26;
    (*(v52 + 8))(v11, v51);
    (*(v41 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v47 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
    v46 = v50;
    (*(*(v47 - 8) + 56))(v50, 1, 1, v47);
  }

  sub_1E5955EE4(v46, v42, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_1E5955EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PersonalizedWorkoutPlanCandidateType.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E590B588(v2, v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return MEMORY[0x1E6932DE0](0);
  }

  sub_1E5955EE4(v12, v8, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  MEMORY[0x1E6932DE0](1);
  PersonalizedWorkoutPlanCandidate.hash(into:)(a1);
  return sub_1E5955008(v8, type metadata accessor for PersonalizedWorkoutPlanCandidate);
}

uint64_t PersonalizedWorkoutPlanCandidateType.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1E5A2C1B4();
  sub_1E590B588(v1, v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    MEMORY[0x1E6932DE0](0);
  }

  else
  {
    sub_1E5955EE4(v10, v6, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    MEMORY[0x1E6932DE0](1);
    PersonalizedWorkoutPlanCandidate.hash(into:)(v13);
    sub_1E5955008(v6, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  }

  return sub_1E5A2C204();
}

uint64_t sub_1E59562A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E590B588(v4, v14);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    return MEMORY[0x1E6932DE0](0);
  }

  sub_1E5955EE4(v14, v11, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  MEMORY[0x1E6932DE0](1);
  PersonalizedWorkoutPlanCandidate.hash(into:)(a1);
  return sub_1E5955008(v11, type metadata accessor for PersonalizedWorkoutPlanCandidate);
}

uint64_t sub_1E5956420(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1E5A2C1B4();
  sub_1E590B588(v4, v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    MEMORY[0x1E6932DE0](0);
  }

  else
  {
    sub_1E5955EE4(v13, v10, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    MEMORY[0x1E6932DE0](1);
    PersonalizedWorkoutPlanCandidate.hash(into:)(v16);
    sub_1E5955008(v10, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  }

  return sub_1E5A2C204();
}

BOOL _s18FitnessWorkoutPlan012PersonalizedbC13CandidateTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE568, &qword_1E5A3A268);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_1E590B588(a1, &v22 - v16);
  sub_1E590B588(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1E590B588(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_1E5955EE4(&v17[v18], v8, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      v20 = _s18FitnessWorkoutPlan012PersonalizedbC9CandidateV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_1E5955008(v8, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      sub_1E5955008(v12, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      sub_1E5955008(v17, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
      return v20;
    }

    sub_1E5955008(v12, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1E5956C0C(v17);
    return 0;
  }

  sub_1E5955008(v17, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  return 1;
}

uint64_t sub_1E59568AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5956950()
{
  result = qword_1ECFFE528;
  if (!qword_1ECFFE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE528);
  }

  return result;
}

unint64_t sub_1E59569A8()
{
  result = qword_1ECFFE530;
  if (!qword_1ECFFE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE530);
  }

  return result;
}

unint64_t sub_1E5956A00()
{
  result = qword_1ECFFE538;
  if (!qword_1ECFFE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE538);
  }

  return result;
}

unint64_t sub_1E5956A58()
{
  result = qword_1ECFFE540;
  if (!qword_1ECFFE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE540);
  }

  return result;
}

unint64_t sub_1E5956AB0()
{
  result = qword_1ECFFE548;
  if (!qword_1ECFFE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE548);
  }

  return result;
}

unint64_t sub_1E5956B08()
{
  result = qword_1ECFFE550;
  if (!qword_1ECFFE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE550);
  }

  return result;
}

unint64_t sub_1E5956B60()
{
  result = qword_1ECFFE558;
  if (!qword_1ECFFE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE558);
  }

  return result;
}

unint64_t sub_1E5956BB8()
{
  result = qword_1ECFFE560;
  if (!qword_1ECFFE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE560);
  }

  return result;
}

uint64_t sub_1E5956C0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE568, &qword_1E5A3A268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ArtworkContainerRelativeFrame(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E5956D40@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE570, &qword_1E5A3A300);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE578, &qword_1E5A3A308);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - v13;
  if (a2)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE580, &qword_1E5A3A310);
    (*(*(v15 - 8) + 16))(v14, a1, v15);
    swift_storeEnumTagMultiPayload();
    v16 = sub_1E595702C();
    v22 = v15;
    v23 = v16;
    swift_getOpaqueTypeConformance2();
    return sub_1E5A2AA74();
  }

  else
  {
    sub_1E5A2AD64();
    sub_1E5A2B7E4();
    v21[0] = a1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE580, &qword_1E5A3A310);
    v19 = sub_1E595702C();
    v21[1] = a3;
    v20 = v19;
    sub_1E5A2B274();
    (*(v7 + 16))(v14, v10, v6);
    swift_storeEnumTagMultiPayload();
    v22 = v18;
    v23 = v20;
    swift_getOpaqueTypeConformance2();
    sub_1E5A2AA74();
    return (*(v7 + 8))(v10, v6);
  }
}

unint64_t sub_1E595702C()
{
  result = qword_1ECFFE588;
  if (!qword_1ECFFE588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE580, &qword_1E5A3A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE588);
  }

  return result;
}

unint64_t sub_1E5957090()
{
  result = qword_1ECFFE590;
  if (!qword_1ECFFE590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE598, &qword_1E5A3A318);
    sub_1E595702C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE580, &qword_1E5A3A310);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE590);
  }

  return result;
}

uint64_t RepeatReplaceAlertDetailView.init(locale:planDetail:dateComponentsFormatter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E5A29EB4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for RepeatReplaceAlertDetailView();
  result = sub_1E5957230(a2, a4 + *(v9 + 20));
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for RepeatReplaceAlertDetailView()
{
  result = qword_1ECFFE5A8;
  if (!qword_1ECFFE5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5957230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviousPlanDetail();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5957294@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E5A2B7E4();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE5A0, &qword_1E5A3A320);
  return sub_1E5957994(v1, (a1 + *(v4 + 44)));
}

uint64_t RepeatReplaceAlertDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E5A2B7E4();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE5A0, &qword_1E5A3A320);
  return sub_1E5957994(v1, (a1 + *(v4 + 44)));
}

uint64_t sub_1E5957354(uint64_t a1, unsigned __int8 a2)
{
  if (a1)
  {
    sub_1E5A2BE64();
    v3 = 0xE600000000000000;
    v4 = 0xE800000000000000;
    v5 = 0x5941445255544153;
    if (a2 != 5)
    {
      v5 = 0x5941444E5553;
      v4 = 0xE600000000000000;
    }

    v6 = 0xE800000000000000;
    v7 = 0x5941445352554854;
    if (a2 != 3)
    {
      v7 = 0x594144495246;
      v6 = 0xE600000000000000;
    }

    if (a2 <= 4u)
    {
      v4 = v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = 0xE700000000000000;
    v9 = 0x59414453455554;
    if (a2 != 1)
    {
      v9 = 0x414453454E444557;
      v8 = 0xE900000000000059;
    }

    if (a2)
    {
      v3 = v8;
    }

    else
    {
      v9 = 0x5941444E4F4DLL;
    }

    if (a2 <= 2u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (a2 <= 2u)
    {
      v11 = v3;
    }

    else
    {
      v11 = v4;
    }

    MEMORY[0x1E69327A0](v10, v11);

    v12 = 0x80000001E5A469B0;
    v13 = 0xD000000000000013;
  }

  else
  {
    sub_1E5A2BE64();
    v14 = 0xE600000000000000;
    v15 = 0xE800000000000000;
    v16 = 0x5941445255544153;
    if (a2 != 5)
    {
      v16 = 0x5941444E5553;
      v15 = 0xE600000000000000;
    }

    v17 = 0xE800000000000000;
    v18 = 0x5941445352554854;
    if (a2 != 3)
    {
      v18 = 0x594144495246;
      v17 = 0xE600000000000000;
    }

    if (a2 <= 4u)
    {
      v15 = v17;
    }

    else
    {
      v18 = v16;
    }

    v19 = 0xE700000000000000;
    v20 = 0x59414453455554;
    if (a2 != 1)
    {
      v20 = 0x414453454E444557;
      v19 = 0xE900000000000059;
    }

    if (a2)
    {
      v14 = v19;
    }

    else
    {
      v20 = 0x5941444E4F4DLL;
    }

    if (a2 <= 2u)
    {
      v21 = v20;
    }

    else
    {
      v21 = v18;
    }

    if (a2 <= 2u)
    {
      v22 = v14;
    }

    else
    {
      v22 = v15;
    }

    MEMORY[0x1E69327A0](v21, v22);

    v13 = 0xD000000000000016;
    v12 = 0x80000001E5A469D0;
  }

  MEMORY[0x1E69327A0](v13, v12);
  return 0;
}

uint64_t sub_1E59575B0(char *a1)
{
  v33 = sub_1E5A29EB4();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5A2BB14();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;

  sub_1E5959814(&v34);
  v10 = v34;
  v11 = *(v34 + 2);
  if (v11)
  {
    v34 = MEMORY[0x1E69E7CC0];
    v29 = v1;
    sub_1E590DEA8(0, v11, 0);
    v1 = v29;
    v12 = 0;
    v13 = v34;
    v14 = *(v10 + 2);
    v28 = v3;
    v30 = (v3 + 16);
    v31 = v14;
    while (v31 != v12)
    {
      if (v12 >= *(v10 + 2))
      {
        goto LABEL_15;
      }

      sub_1E5957354(v12, v10[v12 + 32]);
      sub_1E5A2BB24();
      if (qword_1EE2CFA28 != -1)
      {
        swift_once();
      }

      v15 = qword_1EE2D33E0;
      (*v30)(v32, v1, v33);
      v16 = v15;
      v17 = v9;
      v18 = sub_1E5A2BB64();
      v20 = v19;
      v34 = v13;
      v3 = *(v13 + 2);
      v21 = *(v13 + 3);
      if (v3 >= v21 >> 1)
      {
        sub_1E590DEA8((v21 > 1), v3 + 1, 1);
        v1 = v29;
        v13 = v34;
      }

      ++v12;
      *(v13 + 2) = v3 + 1;
      v22 = &v13[16 * v3];
      *(v22 + 4) = v18;
      *(v22 + 5) = v20;
      v9 = v17;
      if (v11 == v12)
      {

        v3 = v28;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v34 = v13;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
LABEL_16:
    swift_once();
  }

  v23 = qword_1EE2D33E0;
  (*(v3 + 16))(v32, v1, v33);
  v24 = v23;
  sub_1E5A2BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB988, &qword_1E5A3A470);
  sub_1E58CD164(&qword_1ECFFE600, &qword_1ECFFB988, &qword_1E5A3A470);
  v25 = sub_1E5A2BA54();

  return v25;
}

uint64_t sub_1E5957994@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v76 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v75 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v75 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v75 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v75 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v75 - v21;
  *&v114 = 0;
  BYTE8(v114) = 1;
  sub_1E5958210(a1, &v115);
  sub_1E5A2B6B4();
  v22[*(v5 + 44)] = sub_1E5A2AD64();
  v79 = v22;
  *&v103 = 0;
  BYTE8(v103) = 1;
  sub_1E5958730(a1, &v104);
  sub_1E5A2B6B4();
  v20[*(v5 + 44)] = sub_1E5A2AD64();
  v78 = v20;
  *&v92 = 0;
  BYTE8(v92) = 1;
  sub_1E5958DD0(a1, &v93);
  sub_1E5A2B6B4();
  v17[*(v5 + 44)] = sub_1E5A2AD64();
  *&v81 = 0;
  BYTE8(v81) = 1;
  sub_1E595935C(a1, &v82);
  v80 = v14;
  sub_1E58BABA0(v22, v14, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v23 = v11;
  v77 = v11;
  sub_1E58BABA0(v20, v11, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v24 = v76;
  sub_1E58BABA0(v17, v76, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v25 = v125;
  v127[10] = v124;
  v127[11] = v125;
  v26 = v126;
  v127[12] = v126;
  v27 = v120;
  v28 = v121;
  v127[6] = v120;
  v127[7] = v121;
  v30 = v122;
  v29 = v123;
  v127[8] = v122;
  v127[9] = v123;
  v31 = v116;
  v32 = v117;
  v127[2] = v116;
  v127[3] = v117;
  v34 = v118;
  v33 = v119;
  v127[4] = v118;
  v127[5] = v119;
  v36 = v114;
  v35 = v115;
  v127[0] = v114;
  v127[1] = v115;
  a2[10] = v124;
  a2[11] = v25;
  a2[12] = v26;
  a2[6] = v27;
  a2[7] = v28;
  a2[8] = v30;
  a2[9] = v29;
  a2[2] = v31;
  a2[3] = v32;
  a2[4] = v34;
  a2[5] = v33;
  *a2 = v36;
  a2[1] = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE5D0, &qword_1E5A3A3B0);
  sub_1E58BABA0(v14, a2 + v37[12], &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v38 = v37[16];
  v39 = v112;
  v128[8] = v111;
  v128[9] = v112;
  v40 = v113[0];
  v129[0] = v113[0];
  *(v129 + 9) = *(v113 + 9);
  v41 = v107;
  v42 = v108;
  v128[4] = v107;
  v128[5] = v108;
  v43 = v109;
  v44 = v110;
  v128[6] = v109;
  v128[7] = v110;
  v45 = v103;
  v46 = v104;
  v128[0] = v103;
  v128[1] = v104;
  v47 = v105;
  v48 = v106;
  v128[2] = v105;
  v128[3] = v106;
  v49 = (a2 + v38);
  v49[8] = v111;
  v49[9] = v39;
  v49[10] = v40;
  *(v49 + 169) = *(v113 + 9);
  v49[4] = v41;
  v49[5] = v42;
  v49[6] = v43;
  v49[7] = v44;
  *v49 = v45;
  v49[1] = v46;
  v49[2] = v47;
  v49[3] = v48;
  sub_1E58BABA0(v23, a2 + v37[20], &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v50 = v37[24];
  v51 = v101;
  v130[8] = v100;
  v130[9] = v101;
  v52 = v102[0];
  v131[0] = v102[0];
  *(v131 + 11) = *(v102 + 11);
  v53 = v98;
  v54 = v99;
  v130[6] = v98;
  v130[7] = v99;
  v55 = v96;
  v56 = v97;
  v130[4] = v96;
  v130[5] = v97;
  v57 = v92;
  v58 = v93;
  v130[0] = v92;
  v130[1] = v93;
  v59 = v94;
  v60 = v95;
  v130[2] = v94;
  v130[3] = v95;
  v61 = (a2 + v50);
  v61[8] = v100;
  v61[9] = v51;
  v61[10] = v52;
  *(v61 + 171) = *(v102 + 11);
  v61[4] = v55;
  v61[5] = v56;
  v61[6] = v53;
  v61[7] = v54;
  *v61 = v57;
  v61[1] = v58;
  v61[2] = v59;
  v61[3] = v60;
  sub_1E58BABA0(v24, a2 + v37[28], &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v62 = v37[32];
  v63 = v90;
  v132[8] = v89;
  v132[9] = v90;
  v64 = v91[0];
  v133[0] = v91[0];
  *(v133 + 9) = *(v91 + 9);
  v65 = v85;
  v66 = v86;
  v132[4] = v85;
  v132[5] = v86;
  v67 = v87;
  v68 = v88;
  v132[6] = v87;
  v132[7] = v88;
  v69 = v81;
  v70 = v82;
  v132[0] = v81;
  v132[1] = v82;
  v71 = v83;
  v72 = v84;
  v132[2] = v83;
  v132[3] = v84;
  v73 = (a2 + v62);
  v73[8] = v89;
  v73[9] = v63;
  v73[10] = v64;
  *(v73 + 169) = *(v91 + 9);
  v73[4] = v65;
  v73[5] = v66;
  v73[6] = v67;
  v73[7] = v68;
  *v73 = v69;
  v73[1] = v70;
  v73[2] = v71;
  v73[3] = v72;
  sub_1E58BABA0(v127, v140, &qword_1ECFFE5D8, &qword_1E5A3A3B8);
  sub_1E58BABA0(v128, v140, &qword_1ECFFE5E0, &qword_1E5A3A3C0);
  sub_1E58BABA0(v130, v140, &qword_1ECFFE5E8, &qword_1E5A3A3C8);
  sub_1E58BABA0(v132, v140, &qword_1ECFFE5E0, &qword_1E5A3A3C0);
  sub_1E58BAD14(v17, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  sub_1E58BAD14(v78, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  sub_1E58BAD14(v79, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v134[8] = v89;
  v134[9] = v90;
  v135[0] = v91[0];
  *(v135 + 9) = *(v91 + 9);
  v134[4] = v85;
  v134[5] = v86;
  v134[6] = v87;
  v134[7] = v88;
  v134[0] = v81;
  v134[1] = v82;
  v134[2] = v83;
  v134[3] = v84;
  sub_1E58BAD14(v134, &qword_1ECFFE5E0, &qword_1E5A3A3C0);
  sub_1E58BAD14(v24, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v136[8] = v100;
  v136[9] = v101;
  v137[0] = v102[0];
  *(v137 + 11) = *(v102 + 11);
  v136[4] = v96;
  v136[5] = v97;
  v136[6] = v98;
  v136[7] = v99;
  v136[0] = v92;
  v136[1] = v93;
  v136[2] = v94;
  v136[3] = v95;
  sub_1E58BAD14(v136, &qword_1ECFFE5E8, &qword_1E5A3A3C8);
  sub_1E58BAD14(v77, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v138[8] = v111;
  v138[9] = v112;
  v139[0] = v113[0];
  *(v139 + 9) = *(v113 + 9);
  v138[4] = v107;
  v138[5] = v108;
  v138[6] = v109;
  v138[7] = v110;
  v138[0] = v103;
  v138[1] = v104;
  v138[2] = v105;
  v138[3] = v106;
  sub_1E58BAD14(v138, &qword_1ECFFE5E0, &qword_1E5A3A3C0);
  sub_1E58BAD14(v80, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v140[10] = v124;
  v140[11] = v125;
  v140[12] = v126;
  v140[6] = v120;
  v140[7] = v121;
  v140[9] = v123;
  v140[8] = v122;
  v140[2] = v116;
  v140[3] = v117;
  v140[5] = v119;
  v140[4] = v118;
  v140[1] = v115;
  v140[0] = v114;
  return sub_1E58BAD14(v140, &qword_1ECFFE5D8, &qword_1E5A3A3B8);
}

unint64_t sub_1E5958128()
{
  result = sub_1E5A29EB4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PreviousPlanDetail();
    if (v2 <= 0x3F)
    {
      result = sub_1E59581C4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1E59581C4()
{
  result = qword_1EE2CFA30;
  if (!qword_1EE2CFA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2CFA30);
  }

  return result;
}

uint64_t sub_1E5958210@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A29EB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2BB14();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE2D33E0;
  (*(v5 + 16))(v8, a1, v4);
  v12 = v11;
  v13 = sub_1E5A2AF64();
  v57 = v14;
  v58 = v13;
  v15 = v14;
  v17 = v16;
  v60 = v18;
  KeyPath = swift_getKeyPath();
  v61 = sub_1E5A2AED4();
  v19 = swift_getKeyPath();
  v20 = v17 & 1;
  LOBYTE(v99) = v17 & 1;
  v56 = v17 & 1;
  LOBYTE(v92) = 0;
  v21 = sub_1E5A2AB84();
  v49 = sub_1E5A2AA34();
  v22 = a1 + *(type metadata accessor for RepeatReplaceAlertDetailView() + 20);
  v23 = type metadata accessor for PreviousPlanDetail();
  v99 = sub_1E59575B0(*(v22 + *(v23 + 40)));
  v100 = v24;
  sub_1E58D1C80();
  v25 = sub_1E5A2AFD4();
  v27 = v26;
  LOBYTE(v11) = v28;
  v55 = v29;
  v53 = swift_getKeyPath();
  v54 = sub_1E5A2AED4();
  v52 = swift_getKeyPath();
  LOBYTE(v11) = v11 & 1;
  LOBYTE(v99) = v11;
  LOBYTE(v92) = 0;
  v51 = sub_1E5A2ABA4();
  v50 = swift_getKeyPath();
  v30 = sub_1E5A2AA44();
  *&v86 = v58;
  *(&v86 + 1) = v15;
  LOBYTE(v87) = v20;
  *(&v87 + 1) = *v81;
  DWORD1(v87) = *&v81[3];
  *(&v87 + 1) = v60;
  *&v88 = KeyPath;
  *(&v88 + 1) = 2;
  LOBYTE(v89) = 0;
  *(&v89 + 1) = *v80;
  DWORD1(v89) = *&v80[3];
  *(&v89 + 1) = v19;
  *&v90 = v61;
  DWORD2(v90) = v21;
  v31 = v49;
  v91 = v49;
  v76 = v88;
  v77 = v89;
  v78 = v90;
  v74 = v86;
  v75 = v87;
  *&v92 = v25;
  *(&v92 + 1) = v27;
  LOBYTE(v93) = v11;
  DWORD1(v93) = *&v83[3];
  v32 = *v83;
  *(&v93 + 1) = *v83;
  v34 = v54;
  v33 = v55;
  *(&v93 + 1) = v55;
  v36 = v52;
  v35 = v53;
  *&v94 = v53;
  *(&v94 + 1) = 2;
  LOBYTE(v95) = 0;
  DWORD1(v95) = *&v82[3];
  *(&v95 + 1) = *v82;
  *(&v95 + 1) = v52;
  *&v96 = v54;
  v37 = v51;
  DWORD2(v96) = v51;
  v38 = v50;
  *&v97 = v50;
  WORD4(v97) = 2;
  BYTE10(v97) = 1;
  HIBYTE(v97) = v85;
  *(&v97 + 11) = v84;
  v98 = v30;
  *&v79[0] = v49;
  *(&v79[6] + 1) = v30;
  *(&v79[5] + 8) = v97;
  *(&v79[4] + 8) = v96;
  *(&v79[3] + 8) = v95;
  *(&v79[2] + 8) = v94;
  *(&v79[1] + 8) = v93;
  *(v79 + 8) = v92;
  v39 = v86;
  v40 = v87;
  v41 = v89;
  a2[2] = v88;
  a2[3] = v41;
  *a2 = v39;
  a2[1] = v40;
  v42 = v78;
  v43 = v79[0];
  v44 = v79[2];
  a2[6] = v79[1];
  a2[7] = v44;
  a2[4] = v42;
  a2[5] = v43;
  v45 = v79[3];
  v46 = v79[4];
  v47 = v79[6];
  a2[10] = v79[5];
  a2[11] = v47;
  a2[8] = v45;
  a2[9] = v46;
  v99 = v25;
  v100 = v27;
  v101 = v11;
  *v102 = v32;
  *&v102[3] = *&v83[3];
  v103 = v33;
  v104 = v35;
  v105 = 2;
  v106 = 0;
  *v107 = *v82;
  *&v107[3] = *&v82[3];
  v108 = v36;
  v109 = v34;
  v110 = v37;
  v111 = v38;
  v112 = 2;
  v113 = 1;
  v115 = v85;
  v114 = v84;
  v116 = v30;
  sub_1E58BABA0(&v86, v62, &qword_1ECFFE610, &qword_1E5A3A480);
  sub_1E58BABA0(&v92, v62, &qword_1ECFFE618, &qword_1E5A3A488);
  sub_1E58BAD14(&v99, &qword_1ECFFE618, &qword_1E5A3A488);
  v62[0] = v58;
  v62[1] = v57;
  v63 = v56;
  *v64 = *v81;
  *&v64[3] = *&v81[3];
  v65 = v60;
  v66 = KeyPath;
  v67 = 2;
  v68 = 0;
  *v69 = *v80;
  *&v69[3] = *&v80[3];
  v70 = v19;
  v71 = v61;
  v72 = v21;
  v73 = v31;
  return sub_1E58BAD14(v62, &qword_1ECFFE610, &qword_1E5A3A480);
}

uint64_t sub_1E5958730@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A2BAF4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E5A29EB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A2BB14();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE2D33E0;
  v62 = *(v7 + 16);
  v63 = v6;
  v62(v10, a1, v6);
  v14 = v13;
  v15 = sub_1E5A2AF64();
  v70 = v16;
  v71 = v15;
  v17 = a1;
  v19 = v18;
  v21 = v20;
  KeyPath = swift_getKeyPath();
  v72 = sub_1E5A2AED4();
  v68 = swift_getKeyPath();
  v67 = v19 & 1;
  LOBYTE(v102) = v19 & 1;
  LOBYTE(v97) = 0;
  v22 = sub_1E5A2AB84();
  v23 = type metadata accessor for RepeatReplaceAlertDetailView();
  v24 = *(v23 + 20);
  v64 = v17;
  v25 = v17 + v24;
  result = type metadata accessor for PreviousPlanDetail();
  v27 = *(v25 + *(result + 44));
  v28 = v27[2];
  if (!v28)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v28 == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v65 = v22;
  v66 = v21;
  v30 = v27[4];
  v29 = v27[5];
  if (v30 == v29)
  {
    v31 = *(v64 + *(v23 + 24));
    [v31 setUnitsStyle_];
    [v31 setAllowedUnits_];
    sub_1E5A2BD04();
    v32 = [v31 stringFromTimeInterval_];
    if (v32)
    {
      v33 = v32;
      v34 = sub_1E5A2BB44();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0xE000000000000000;
    }
  }

  else
  {
    sub_1E5A2BAE4();
    sub_1E5A2BAD4();
    v102 = v30;
    sub_1E5A2BAB4();
    sub_1E5A2BAD4();
    v102 = v29;
    sub_1E5A2BAB4();
    sub_1E5A2BAD4();
    sub_1E5A2BB04();
    v37 = qword_1EE2D33E0;
    v62(v10, v64, v63);
    v38 = v37;
    v34 = sub_1E5A2BB64();
    v36 = v39;
  }

  v102 = v34;
  v103 = v36;
  sub_1E58D1C80();
  v40 = sub_1E5A2AFD4();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = swift_getKeyPath();
  v64 = sub_1E5A2AED4();
  v48 = swift_getKeyPath();
  v49 = v44 & 1;
  v119 = v44 & 1;
  v117 = 0;
  v50 = sub_1E5A2ABA4();
  v51 = swift_getKeyPath();
  *&v93 = v71;
  *(&v93 + 1) = v70;
  LOBYTE(v94) = v67;
  *(&v94 + 1) = v121[0];
  DWORD1(v94) = *(v121 + 3);
  *(&v94 + 1) = v66;
  *&v95 = KeyPath;
  *(&v95 + 1) = 2;
  LOBYTE(v96[0]) = 0;
  *(v96 + 1) = *v120;
  DWORD1(v96[0]) = *&v120[3];
  *(&v96[0] + 1) = v68;
  *&v96[1] = v72;
  DWORD2(v96[1]) = v65;
  *(v87 + 12) = *(v96 + 12);
  v86 = v95;
  v87[0] = v96[0];
  v84 = v93;
  v85 = v94;
  *&v97 = v40;
  *(&v97 + 1) = v42;
  LOBYTE(v98) = v49;
  DWORD1(v98) = *&v118[3];
  *(&v98 + 1) = *v118;
  *(&v98 + 1) = v46;
  *&v99 = v47;
  *(&v99 + 1) = 2;
  LOBYTE(v100) = 0;
  DWORD1(v100) = *&v116[3];
  *(&v100 + 1) = *v116;
  v52 = v48;
  *(&v100 + 1) = v48;
  v53 = v64;
  *&v101[0] = v64;
  DWORD2(v101[0]) = v50;
  *&v101[1] = v51;
  BYTE8(v101[1]) = 2;
  v88 = v97;
  v89 = v98;
  *(v92 + 9) = *(v101 + 9);
  v91 = v100;
  v92[0] = v101[0];
  v90 = v99;
  v54 = v94;
  *a2 = v93;
  a2[1] = v54;
  v55 = v86;
  v56 = v87[0];
  v57 = v88;
  a2[4] = v87[1];
  a2[5] = v57;
  a2[2] = v55;
  a2[3] = v56;
  v58 = v89;
  v59 = v90;
  *(a2 + 153) = *(v92 + 9);
  v60 = v92[0];
  a2[8] = v91;
  a2[9] = v60;
  a2[6] = v58;
  a2[7] = v59;
  v102 = v40;
  v103 = v42;
  v104 = v49;
  *v105 = *v118;
  *&v105[3] = *&v118[3];
  v106 = v46;
  v107 = v47;
  v108 = 2;
  v109 = 0;
  *v110 = *v116;
  *&v110[3] = *&v116[3];
  v111 = v52;
  v112 = v53;
  v113 = v50;
  v114 = v51;
  v115 = 2;
  sub_1E58BABA0(&v93, v73, &qword_1ECFFE5F0, &qword_1E5A3A460);
  sub_1E58BABA0(&v97, v73, &qword_1ECFFE5F8, &qword_1E5A3A468);
  sub_1E58BAD14(&v102, &qword_1ECFFE5F8, &qword_1E5A3A468);
  v73[0] = v71;
  v73[1] = v70;
  v74 = v67;
  *v75 = v121[0];
  *&v75[3] = *(v121 + 3);
  v76 = v66;
  v77 = KeyPath;
  v78 = 2;
  v79 = 0;
  *v80 = *v120;
  *&v80[3] = *&v120[3];
  v81 = v68;
  v82 = v72;
  v83 = v65;
  return sub_1E58BAD14(v73, &qword_1ECFFE5F0, &qword_1E5A3A460);
}

uint64_t sub_1E5958DD0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A29EB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2BB14();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE2D33E0;
  v12 = *(v5 + 16);
  v12(v8, a1, v4);
  v13 = v11;
  v14 = sub_1E5A2AF64();
  v48 = v15;
  v49 = v14;
  LOBYTE(v11) = v16;
  v51 = v17;
  KeyPath = swift_getKeyPath();
  v50 = sub_1E5A2AED4();
  v46 = swift_getKeyPath();
  v44 = v11 & 1;
  LOBYTE(v85) = v11 & 1;
  LOBYTE(v80) = 0;
  v45 = sub_1E5A2AB84();
  v18 = a1 + *(type metadata accessor for RepeatReplaceAlertDetailView() + 20);
  v85 = *(v18 + *(type metadata accessor for PreviousPlanDetail() + 48));
  sub_1E5A2BA84();
  v19 = qword_1EE2D33E0;
  v12(v8, a1, v4);
  v20 = v19;
  sub_1E5A2BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB988, &qword_1E5A3A470);
  sub_1E58CD164(&qword_1ECFFE600, &qword_1ECFFB988, &qword_1E5A3A470);
  v21 = sub_1E5A2BA54();
  v23 = v22;

  v85 = v21;
  v86 = v23;
  sub_1E58D1C80();
  v24 = sub_1E5A2AFD4();
  v26 = v25;
  LOBYTE(v19) = v27;
  v29 = v28;
  v30 = swift_getKeyPath();
  v43 = sub_1E5A2AED4();
  v31 = swift_getKeyPath();
  LOBYTE(v21) = v19 & 1;
  LOBYTE(v85) = v19 & 1;
  LOBYTE(v80) = 0;
  LODWORD(v19) = sub_1E5A2ABA4();
  v32 = swift_getKeyPath();
  *&v76 = v49;
  *(&v76 + 1) = v48;
  LOBYTE(v77) = v44;
  *(&v77 + 1) = *v75;
  DWORD1(v77) = *&v75[3];
  *(&v77 + 1) = v51;
  *&v78 = KeyPath;
  *(&v78 + 1) = 2;
  LOBYTE(v79[0]) = 0;
  *(v79 + 1) = *v74;
  DWORD1(v79[0]) = *&v74[3];
  *(&v79[0] + 1) = v46;
  *&v79[1] = v50;
  DWORD2(v79[1]) = v45;
  *(v66 + 12) = *(v79 + 12);
  v65 = v78;
  v66[0] = v79[0];
  v63 = v76;
  v64 = v77;
  *&v80 = v24;
  *(&v80 + 1) = v26;
  LOBYTE(v81) = v21;
  DWORD1(v81) = *(v73 + 3);
  *(&v81 + 1) = v73[0];
  *(&v81 + 1) = v29;
  *&v82 = v30;
  *(&v82 + 1) = 3;
  LOBYTE(v83) = 0;
  DWORD1(v83) = *&v72[3];
  *(&v83 + 1) = *v72;
  v33 = v31;
  *(&v83 + 1) = v31;
  v34 = v43;
  *&v84[0] = v43;
  DWORD2(v84[0]) = v19;
  *&v84[1] = v32;
  WORD4(v84[1]) = 2;
  BYTE10(v84[1]) = 1;
  v67 = v80;
  v68 = v81;
  *(v71 + 11) = *(v84 + 11);
  v70 = v83;
  v71[0] = v84[0];
  v69 = v82;
  v35 = v77;
  *a2 = v76;
  a2[1] = v35;
  v36 = v65;
  v37 = v66[0];
  v38 = v67;
  a2[4] = v66[1];
  a2[5] = v38;
  a2[2] = v36;
  a2[3] = v37;
  v39 = v68;
  v40 = v69;
  *(a2 + 155) = *(v71 + 11);
  v41 = v71[0];
  a2[8] = v70;
  a2[9] = v41;
  a2[6] = v39;
  a2[7] = v40;
  v85 = v24;
  v86 = v26;
  v87 = v21;
  *v88 = v73[0];
  *&v88[3] = *(v73 + 3);
  v89 = v29;
  v90 = v30;
  v91 = 3;
  v92 = 0;
  *v93 = *v72;
  *&v93[3] = *&v72[3];
  v94 = v33;
  v95 = v34;
  v96 = v19;
  v97 = v32;
  v98 = 2;
  v99 = 1;
  sub_1E58BABA0(&v76, v52, &qword_1ECFFE5F0, &qword_1E5A3A460);
  sub_1E58BABA0(&v80, v52, &qword_1ECFFE608, &qword_1E5A3A478);
  sub_1E58BAD14(&v85, &qword_1ECFFE608, &qword_1E5A3A478);
  v52[0] = v49;
  v52[1] = v48;
  v53 = v44;
  *v54 = *v75;
  *&v54[3] = *&v75[3];
  v55 = v51;
  v56 = KeyPath;
  v57 = 2;
  v58 = 0;
  *v59 = *v74;
  *&v59[3] = *&v74[3];
  v60 = v46;
  v61 = v50;
  v62 = v45;
  return sub_1E58BAD14(v52, &qword_1ECFFE5F0, &qword_1E5A3A460);
}

uint64_t sub_1E595935C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A29EB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2BB14();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE2D33E0;
  (*(v5 + 16))(v8, a1, v4);
  v12 = v11;
  v13 = sub_1E5A2AF64();
  v49 = v14;
  v50 = v15;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  v44 = sub_1E5A2AED4();
  v47 = swift_getKeyPath();
  v45 = v17 & 1;
  LOBYTE(v80[0]) = v17 & 1;
  LOBYTE(v75) = 0;
  v46 = sub_1E5A2AB84();
  v18 = type metadata accessor for RepeatReplaceAlertDetailView();
  v19 = a1 + *(v18 + 20);
  v20 = *(v19 + *(type metadata accessor for PreviousPlanDetail() + 36));
  v21 = *(a1 + *(v18 + 24));
  [v21 setUnitsStyle_];
  [v21 setAllowedUnits_];
  sub_1E5A2BCF4();
  v22 = [v21 stringFromTimeInterval_];
  if (v22)
  {
    v23 = v22;
    v43 = sub_1E5A2BB44();
    v25 = v24;
  }

  else
  {
    v43 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = swift_getKeyPath();
  v27 = sub_1E5A2AED4();
  v28 = swift_getKeyPath();
  v92 = 0;
  v91 = 0;
  v29 = sub_1E5A2ABA4();
  v30 = swift_getKeyPath();
  *&v71 = v13;
  *(&v71 + 1) = v49;
  LOBYTE(v72) = v45;
  *(&v72 + 1) = v94[0];
  DWORD1(v72) = *(v94 + 3);
  v42 = v13;
  *(&v72 + 1) = v50;
  *&v73 = KeyPath;
  *(&v73 + 1) = 2;
  LOBYTE(v74[0]) = 0;
  *(v74 + 1) = *v93;
  DWORD1(v74[0]) = *&v93[3];
  v31 = v43;
  v32 = v44;
  *(&v74[0] + 1) = v47;
  *&v74[1] = v44;
  DWORD2(v74[1]) = v46;
  *(v65 + 12) = *(v74 + 12);
  v64 = v73;
  v65[0] = v74[0];
  v62 = v71;
  v63 = v72;
  *&v75 = v43;
  *(&v75 + 1) = v25;
  LOBYTE(v76) = 0;
  v33 = MEMORY[0x1E69E7CC0];
  *(&v76 + 1) = MEMORY[0x1E69E7CC0];
  *&v77 = v26;
  *(&v77 + 1) = 2;
  LOBYTE(v78) = 0;
  *(&v78 + 1) = v28;
  *&v79[0] = v27;
  DWORD2(v79[0]) = v29;
  *&v79[1] = v30;
  BYTE8(v79[1]) = 2;
  v66 = v75;
  v67 = v76;
  *(v70 + 9) = *(v79 + 9);
  v69 = v78;
  v70[0] = v79[0];
  v68 = v77;
  v34 = v72;
  *a2 = v71;
  a2[1] = v34;
  v35 = v64;
  v36 = v65[0];
  v37 = v66;
  a2[4] = v65[1];
  a2[5] = v37;
  a2[2] = v35;
  a2[3] = v36;
  v38 = v67;
  v39 = v68;
  *(a2 + 153) = *(v70 + 9);
  v40 = v70[0];
  a2[8] = v69;
  a2[9] = v40;
  a2[6] = v38;
  a2[7] = v39;
  v80[0] = v31;
  v80[1] = v25;
  v81 = 0;
  v82 = v33;
  v83 = v26;
  v84 = 2;
  v85 = 0;
  v86 = v28;
  v87 = v27;
  v88 = v29;
  v89 = v30;
  v90 = 2;
  sub_1E58BABA0(&v71, v51, &qword_1ECFFE5F0, &qword_1E5A3A460);
  sub_1E58BABA0(&v75, v51, &qword_1ECFFE5F8, &qword_1E5A3A468);
  sub_1E58BAD14(v80, &qword_1ECFFE5F8, &qword_1E5A3A468);
  v51[0] = v42;
  v51[1] = v49;
  v52 = v45;
  *v53 = v94[0];
  *&v53[3] = *(v94 + 3);
  v54 = v50;
  v55 = KeyPath;
  v56 = 2;
  v57 = 0;
  *v58 = *v93;
  *&v58[3] = *&v93[3];
  v59 = v47;
  v60 = v32;
  v61 = v46;
  return sub_1E58BAD14(v51, &qword_1ECFFE5F0, &qword_1E5A3A460);
}

uint64_t sub_1E5959814(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A2278C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1E5A2C0E4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1E5A2BC24();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1E58D1F98(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t PersonalizedWorkoutPlansEnvironment.init(resolvePersonalizedWorkoutPlanCandidates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CreateWorkoutPlanButtonEnvironment.init(navigateToPlanCreation:showWorkoutPlanCreationPrompt:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E5959970(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E59599B8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t static WorkoutPlanTrainer.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t WorkoutPlanTrainer.init(artworks:identifier:informalName:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t WorkoutPlanTrainer.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t WorkoutPlanTrainer.informalName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t WorkoutPlanTrainer.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_1E5959AE4()
{
  v1 = 0x736B726F77747261;
  v2 = 0x6C616D726F666E69;
  if (*v0 != 2)
  {
    v2 = 1701667182;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
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

uint64_t sub_1E5959B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E595AA10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5959B8C(uint64_t a1)
{
  v2 = sub_1E595A6C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5959BC8(uint64_t a1)
{
  v2 = sub_1E595A6C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5959C08(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E5959C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E5959C80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E5959CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t WorkoutPlanTrainer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE620, &qword_1E5A3A540);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v15[5] = v1[2];
  v15[6] = v9;
  v12 = v1[5];
  v15[3] = v1[4];
  v15[4] = v11;
  v15[1] = v1[6];
  v15[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E595A6C4();

  sub_1E5A2C224();
  v20 = v10;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE630, &qword_1E5A3A548);
  sub_1E595A718(&qword_1ECFFE638, &qword_1ECFFE640);
  sub_1E5A2C0B4();

  if (!v2)
  {
    v18 = 1;
    sub_1E5A2C064();
    v17 = 2;
    sub_1E5A2C034();
    v16 = 3;
    sub_1E5A2C064();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t WorkoutPlanTrainer.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE648, &qword_1E5A3A550);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E595A6C4();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE630, &qword_1E5A3A548);
  v31 = 0;
  sub_1E595A718(&qword_1ECFFE650, &qword_1ECFFE658);
  sub_1E5A2BFE4();
  v11 = v32;
  v30 = 1;
  v12 = sub_1E5A2BF94();
  v27 = v13;
  v25 = v12;
  v29 = 2;
  v24 = sub_1E5A2BF64();
  v26 = v14;
  v28 = 3;
  v15 = sub_1E5A2BF94();
  v18 = v17;
  v19 = v15;
  (*(v6 + 8))(v9, v5);
  v20 = v24;
  v21 = v25;
  *a2 = v11;
  a2[1] = v21;
  v22 = v26;
  a2[2] = v27;
  a2[3] = v20;
  a2[4] = v22;
  a2[5] = v19;
  a2[6] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutPlanTrainer.hash(into:)(__int128 *a1)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  sub_1E58B892C(a1, *v1);
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v6)
  {
    sub_1E5A2BB74();
  }

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanTrainer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_1E5A2C1B4();
  sub_1E58B892C(v9, v1);
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v6)
  {
    sub_1E5A2BB74();
  }

  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E595A430(__int128 *a1)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  sub_1E58B892C(a1, *v1);
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v6)
  {
    sub_1E5A2BB74();
  }

  return sub_1E5A2BB74();
}

uint64_t sub_1E595A4D8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_1E5A2C1B4();
  sub_1E58B892C(v9, v1);
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v6)
  {
    sub_1E5A2BB74();
  }

  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC7TrainerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((sub_1E58B4D88(*a1, *a2) & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v10 && (v3 == v8 && v5 == v10 || (sub_1E5A2C114() & 1) != 0))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_10:
  if (v13 == v9 && v14 == v11)
  {
    return 1;
  }

  return sub_1E5A2C114();
}

unint64_t sub_1E595A6C4()
{
  result = qword_1ECFFE628;
  if (!qword_1ECFFE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE628);
  }

  return result;
}

uint64_t sub_1E595A718(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE630, &qword_1E5A3A548);
    sub_1E595A7A0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E595A7A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutPlanArtwork();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E595A7E4()
{
  result = qword_1ECFFE660;
  if (!qword_1ECFFE660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE660);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E595A854(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1E595A89C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E595A90C()
{
  result = qword_1ECFFE668;
  if (!qword_1ECFFE668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE668);
  }

  return result;
}

unint64_t sub_1E595A964()
{
  result = qword_1ECFFE670;
  if (!qword_1ECFFE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE670);
  }

  return result;
}

unint64_t sub_1E595A9BC()
{
  result = qword_1ECFFE678;
  if (!qword_1ECFFE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE678);
  }

  return result;
}

uint64_t sub_1E595AA10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B726F77747261 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616D726F666E69 && a2 == 0xEC000000656D614ELL || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t PersonalizedWorkoutPlanCandidates.init(workoutPlans:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v5 = a2 + *(v4 + 20);
  sub_1E5A29E64();
  *a2 = 0;
  *(a2 + *(v4 + 24)) = MEMORY[0x1E69E7CC0];
  result = type metadata accessor for PersonalizedWorkoutPlanCandidates();
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1E595ABF0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E595AC4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10 = *i;
      if (*(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3))
      {
        if (v6 != v9)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_1E5A2C114();
        result = 0;
        if ((v12 & 1) == 0 || v6 != v9)
        {
          return result;
        }
      }

      v14 = v5 == v8 && v7 == v10;
      if (!v14 && (sub_1E5A2C114() & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1E595AD48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    while (1)
    {
      v6 = (v4 + 72 * v3);
      v7 = v6[1];
      v26 = *v6;
      *v27 = v7;
      v8 = v6[3];
      *&v27[16] = v6[2];
      v28 = v8;
      v29 = *(v6 + 8);
      v9 = (v5 + 72 * v3);
      v33 = *(v9 + 8);
      v10 = v9[3];
      *&v31[16] = v9[2];
      v32 = v10;
      v11 = v9[1];
      v30 = *v9;
      *v31 = v11;
      v12 = *(v26 + 16);
      if (v12 != *(v30 + 16))
      {
        break;
      }

      if (v12 && v26 != v30)
      {
        v13 = (v26 + 32);
        v14 = (v30 + 32);
        while (*v13 == *v14)
        {
          ++v13;
          ++v14;
          if (!--v12)
          {
            goto LABEL_11;
          }
        }

        return 0;
      }

LABEL_11:
      v15 = *(&v26 + 1) == *(&v30 + 1) && *v27 == *v31;
      if (!v15 && (sub_1E5A2C114() & 1) == 0 || *&v27[8] != *&v31[8] && (sub_1E5A2C114() & 1) == 0)
      {
        return 0;
      }

      ++v3;
      v16 = 0xEF6E776F646C6F6FLL;
      v17 = 0x436C7566646E694DLL;
      switch(v27[24])
      {
        case 1:
          v16 = 0xE400000000000000;
          v17 = 1701998403;
          break;
        case 2:
          v16 = 0xE700000000000000;
          v18 = 1818458435;
          goto LABEL_28;
        case 3:
          v16 = 0xE500000000000000;
          v17 = 0x65636E6144;
          break;
        case 4:
          v16 = 0xE300000000000000;
          v17 = 7238994;
          break;
        case 5:
          v16 = 0xE700000000000000;
          v18 = 1802264919;
LABEL_28:
          v17 = v18 | 0x676E6900000000;
          break;
        case 6:
          v16 = 0xE400000000000000;
          v17 = 1414089032;
          break;
        case 7:
          v16 = 0xEA0000000000676ELL;
          v17 = 0x69786F626B63696BLL;
          break;
        case 8:
          v16 = 0xEA00000000006E6FLL;
          v17 = 0x697461746964654DLL;
          break;
        case 9:
          v16 = 0xE700000000000000;
          v17 = 0x736574616C6950;
          break;
        case 0xA:
          v16 = 0xE600000000000000;
          v17 = 0x676E69776F52;
          break;
        case 0xB:
          v16 = 0xE800000000000000;
          v17 = 0x6874676E65727453;
          break;
        case 0xC:
          v16 = 0xE90000000000006CLL;
          v17 = 0x6C696D6461657254;
          break;
        case 0xD:
          v16 = 0xE400000000000000;
          v17 = 1634168665;
          break;
        default:
          break;
      }

      v19 = 0x436C7566646E694DLL;
      v20 = 0xEF6E776F646C6F6FLL;
      switch(v31[24])
      {
        case 1:
          v20 = 0xE400000000000000;
          v19 = 1701998403;
          break;
        case 2:
          v20 = 0xE700000000000000;
          v21 = 1818458435;
          goto LABEL_43;
        case 3:
          v20 = 0xE500000000000000;
          v19 = 0x65636E6144;
          break;
        case 4:
          v20 = 0xE300000000000000;
          v19 = 7238994;
          break;
        case 5:
          v20 = 0xE700000000000000;
          v21 = 1802264919;
LABEL_43:
          v19 = v21 | 0x676E6900000000;
          break;
        case 6:
          v20 = 0xE400000000000000;
          v19 = 1414089032;
          break;
        case 7:
          v20 = 0xEA0000000000676ELL;
          v19 = 0x69786F626B63696BLL;
          break;
        case 8:
          v20 = 0xEA00000000006E6FLL;
          v19 = 0x697461746964654DLL;
          break;
        case 9:
          v20 = 0xE700000000000000;
          v19 = 0x736574616C6950;
          break;
        case 0xA:
          v20 = 0xE600000000000000;
          v19 = 0x676E69776F52;
          break;
        case 0xB:
          v20 = 0xE800000000000000;
          v19 = 0x6874676E65727453;
          break;
        case 0xC:
          v20 = 0xE90000000000006CLL;
          v19 = 0x6C696D6461657254;
          break;
        case 0xD:
          v20 = 0xE400000000000000;
          v19 = 1634168665;
          break;
        default:
          break;
      }

      if (v17 == v19 && v16 == v20)
      {
        sub_1E591B3E0(&v26, v25);
        sub_1E591B3E0(&v30, v25);
      }

      else
      {
        v22 = sub_1E5A2C114();
        sub_1E591B3E0(&v26, v25);
        sub_1E591B3E0(&v30, v25);

        if ((v22 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      if (v28 != v32 && (sub_1E5A2C114() & 1) == 0)
      {
LABEL_57:
        sub_1E58C3164(&v30);
        sub_1E58C3164(&v26);
        return 0;
      }

      v23 = sub_1E58BAD74(v29, v33);
      sub_1E58C3164(&v30);
      sub_1E58C3164(&v26);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      if (v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1E595B21C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1E5A2C114() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1E595B2AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E595B308(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE568, &qword_1E5A3A268);
  v7 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v36 - v8;
  v10 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v36 - v17;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v37 = &v36 - v17;
  v38 = v18;
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v24 = (v4 + 48);
  v41 = *(v16 + 72);
  while (1)
  {
    sub_1E595C7F8(v22, v19, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    sub_1E595C7F8(v23, v15, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v25 = *(v42 + 48);
    sub_1E595C7F8(v19, v9, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    sub_1E595C7F8(v15, &v9[v25], type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v26 = *v24;
    v27 = v43;
    if ((*v24)(v9, 1, v43) != 1)
    {
      break;
    }

    sub_1E595C860(v15, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    sub_1E595C860(v19, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    if (v26(&v9[v25], 1, v43) != 1)
    {
      goto LABEL_14;
    }

    sub_1E595C860(v9, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
LABEL_5:
    v23 += v41;
    v22 += v41;
    if (!--v20)
    {
      return 1;
    }
  }

  v28 = v15;
  v29 = v24;
  v30 = v38;
  sub_1E595C7F8(v9, v38, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  v31 = v27;
  v32 = v29;
  if (v26(&v9[v25], 1, v31) != 1)
  {
    v33 = &v9[v25];
    v34 = v39;
    sub_1E5954A64(v33, v39, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    v40 = _s18FitnessWorkoutPlan012PersonalizedbC9CandidateV2eeoiySbAC_ACtFZ_0(v30, v34);
    sub_1E595C860(v34, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    v15 = v28;
    sub_1E595C860(v28, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v19 = v37;
    sub_1E595C860(v37, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    sub_1E595C860(v30, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    sub_1E595C860(v9, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v24 = v32;
    if (!v40)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_1E595C860(v28, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  sub_1E595C860(v37, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  sub_1E595C860(v30, type metadata accessor for PersonalizedWorkoutPlanCandidate);
LABEL_14:
  sub_1E5956C0C(v9);
  return 0;
}

uint64_t PersonalizedWorkoutPlanCandidates.workoutPlans.getter()
{
  v1 = *(v0 + *(type metadata accessor for PersonalizedWorkoutPlanCandidates() + 20));
}

uint64_t PersonalizedWorkoutPlanCandidates.init(workoutPlans:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E5954A64(a2, a3, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  result = type metadata accessor for PersonalizedWorkoutPlanCandidates();
  *(a3 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1E595B850()
{
  if (*v0)
  {
    result = 0x5074756F6B726F77;
  }

  else
  {
    result = 0x7363697274656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E595B894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7363697274656DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5074756F6B726F77 && a2 == 0xEC000000736E616CLL)
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

uint64_t sub_1E595B974(uint64_t a1)
{
  v2 = sub_1E595BC08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E595B9B0(uint64_t a1)
{
  v2 = sub_1E595BC08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizedWorkoutPlanCandidates.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE680, &qword_1E5A3A810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E595BC08();
  sub_1E5A2C224();
  v14 = 0;
  type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  sub_1E595C670(&qword_1ECFFE450, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for PersonalizedWorkoutPlanCandidates() + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE690, &qword_1E5A3A818);
    sub_1E595BFCC(&qword_1ECFFE698, &qword_1ECFFE6A0);
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E595BC08()
{
  result = qword_1ECFFE688;
  if (!qword_1ECFFE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE688);
  }

  return result;
}

uint64_t PersonalizedWorkoutPlanCandidates.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE6A8, &qword_1E5A3A820);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for PersonalizedWorkoutPlanCandidates();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E595BC08();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v22;
  v17 = v14;
  v27 = 0;
  sub_1E595C670(&qword_1ECFFE480, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  v18 = v23;
  sub_1E5A2BFE4();
  sub_1E5954A64(v24, v17, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE690, &qword_1E5A3A818);
  v26 = 1;
  sub_1E595BFCC(&qword_1ECFFE6B0, &qword_1ECFFE6B8);
  sub_1E5A2BFE4();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v25;
  sub_1E595C7F8(v17, v21, type metadata accessor for PersonalizedWorkoutPlanCandidates);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E595C860(v17, type metadata accessor for PersonalizedWorkoutPlanCandidates);
}

uint64_t sub_1E595BFCC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE690, &qword_1E5A3A818);
    sub_1E595C670(a2, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PersonalizedWorkoutPlanCandidates.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v5 = *(v4 + 20);
  if ((sub_1E5A29E54() & 1) == 0 || (sub_1E595AC4C(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for PersonalizedWorkoutPlanCandidates() + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1E595B308(v7, v8);
}

uint64_t PersonalizedWorkoutPlanCandidates.hash(into:)(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x1E6932DE0](*v1);
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v5 = *(v4 + 20);
  sub_1E5A29E74();
  sub_1E595C670(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  sub_1E5953800(a1, *(v2 + *(v4 + 24)));
  v6 = *(v2 + *(type metadata accessor for PersonalizedWorkoutPlanCandidates() + 20));

  return sub_1E59538AC(a1, v6);
}

uint64_t PersonalizedWorkoutPlanCandidates.hashValue.getter()
{
  v1 = v0;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v0);
  v2 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v3 = *(v2 + 20);
  sub_1E5A29E74();
  sub_1E595C670(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  sub_1E5953800(v6, *(v1 + *(v2 + 24)));
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidates();
  sub_1E59538AC(v6, *(v1 + *(v4 + 20)));
  return sub_1E5A2C204();
}

uint64_t sub_1E595C2F4(uint64_t a1)
{
  v3 = v1;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v1);
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v5 = *(v4 + 20);
  sub_1E5A29E74();
  sub_1E595C670(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  sub_1E5953800(v7, *(v3 + *(v4 + 24)));
  sub_1E59538AC(v7, *(v3 + *(a1 + 20)));
  return sub_1E5A2C204();
}

uint64_t sub_1E595C3D4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  MEMORY[0x1E6932DE0](*v2);
  v6 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v7 = *(v6 + 20);
  sub_1E5A29E74();
  sub_1E595C670(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  sub_1E5953800(a1, *(v4 + *(v6 + 24)));
  v8 = *(v4 + *(a2 + 20));

  return sub_1E59538AC(a1, v8);
}

uint64_t sub_1E595C4A8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v2);
  v5 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v6 = *(v5 + 20);
  sub_1E5A29E74();
  sub_1E595C670(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  sub_1E5953800(v8, *(v4 + *(v5 + 24)));
  sub_1E59538AC(v8, *(v4 + *(a2 + 20)));
  return sub_1E5A2C204();
}

uint64_t sub_1E595C584(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v7 = *(v6 + 20);
  if ((sub_1E5A29E54() & 1) == 0 || (sub_1E595AC4C(*(a1 + *(v6 + 24)), *(a2 + *(v6 + 24))) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);

  return sub_1E595B308(v9, v10);
}

uint64_t sub_1E595C670(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E595C6F4()
{
  result = qword_1ECFFE6C0;
  if (!qword_1ECFFE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE6C0);
  }

  return result;
}

unint64_t sub_1E595C74C()
{
  result = qword_1ECFFE6C8;
  if (!qword_1ECFFE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE6C8);
  }

  return result;
}

unint64_t sub_1E595C7A4()
{
  result = qword_1ECFFE6D0;
  if (!qword_1ECFFE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE6D0);
  }

  return result;
}

uint64_t sub_1E595C7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E595C860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ActivitySelectionView.init(store:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  result = sub_1E5A2A654();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E595C958(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v6 = *(v15 + 16) + 1;
  v7 = (v15 + 48);
  while (--v6)
  {
    v8 = *(v7 - 2);
    v9 = v7[1];
    v10 = v7[2];
    v11 = v7[5];
    v12 = v7[6];
    if (*(v7 - 1) != a1 || *v7 != a2)
    {
      v7 += 9;
      if ((sub_1E5A2C114() & 1) == 0)
      {
        continue;
      }
    }

    return v9;
  }

  return 0;
}

uint64_t sub_1E595CA9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v6 = (v15 + 96);
  v7 = *(v15 + 16) + 1;
  while (--v7)
  {
    v8 = *(v6 - 8);
    v9 = *(v6 - 4);
    v10 = *(v6 - 2);
    v11 = *(v6 - 1);
    v12 = *v6;
    if (*(v6 - 7) != a1 || *(v6 - 6) != a2)
    {
      v6 += 9;
      if ((sub_1E5A2C114() & 1) == 0)
      {
        continue;
      }
    }

    return v10;
  }

  return 0;
}

uint64_t sub_1E595CBE4()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  if (v30)
  {
    v29[0] = v30;
    v2 = WorkoutPlanSchedule.modalityIdentifiers()();

    v3 = v2 + 56;
    v4 = 1 << v2[32];
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 7);
    v7 = (v4 + 63) >> 6;
    v28 = v2;

    v9 = 0;
    for (i = MEMORY[0x1E69E7CC0]; v6; *(v24 + 48) = v25)
    {
LABEL_11:
      while (1)
      {
        v12 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v13 = (*(v28 + 6) + ((v9 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];
        swift_getKeyPath();

        sub_1E5A2B934();

        v16 = v35;
        v17 = *(v35 + 16);
        if (v17)
        {
          break;
        }

LABEL_6:

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v18 = 32;
      while (1)
      {
        v30 = *(v16 + v18);
        v20 = *(v16 + v18 + 32);
        v19 = *(v16 + v18 + 48);
        v21 = *(v16 + v18 + 16);
        v34 = *(v16 + v18 + 64);
        v32 = v20;
        v33 = v19;
        v31 = v21;
        if (__PAIR128__(v21, *(&v30 + 1)) == __PAIR128__(v14, v15) || (sub_1E5A2C114() & 1) != 0)
        {
          break;
        }

        v18 += 72;
        if (!--v17)
        {
          goto LABEL_6;
        }
      }

      sub_1E591B3E0(&v30, v29);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E58E6CF4(0, *(i + 16) + 1, 1, i);
        i = result;
      }

      v23 = *(i + 16);
      v22 = *(i + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1E58E6CF4((v22 > 1), v23 + 1, 1, i);
        i = result;
      }

      *(i + 16) = v23 + 1;
      v24 = i + 72 * v23;
      *(v24 + 32) = v30;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      *(v24 + 96) = v34;
      *(v24 + 64) = v26;
      *(v24 + 80) = v27;
    }

LABEL_7:
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        return i;
      }

      v6 = *&v3[8 * v11];
      ++v9;
      if (v6)
      {
        v9 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t ActivitySelectionView.body.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1E5A2BC84();

  v3 = sub_1E5A2BC74();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E85E0];
  v4[2] = v3;
  v4[3] = v5;
  v4[4] = v2;
  v4[5] = v1;

  v6 = sub_1E5A2BC74();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v2;
  v7[5] = v1;
  sub_1E5A2B684();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE6D8, &qword_1E5A3AA38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE6E0, &qword_1E5A3AA40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE6E8, &qword_1E5A3AA48);
  sub_1E58CD164(&qword_1ECFFE6F0, &qword_1ECFFE6D8, &qword_1E5A3AA38);
  sub_1E58CD164(&qword_1ECFFE6F8, &qword_1ECFFE6E0, &qword_1E5A3AA40);
  sub_1E595E5E8();
  return sub_1E5A2B5E4();
}

uint64_t sub_1E595D0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v78 = a3;
  v70 = sub_1E5A2A6A4();
  v69 = *(v70 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v68 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5A29EB4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63[1] = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A2BB14();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63[0] = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE730, &qword_1E5A3ABB0);
  v66 = *(v67 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE738, &qword_1E5A3ABB8);
  v75 = *(v15 - 8);
  v76 = v15;
  v16 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v64 = v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE740, &qword_1E5A3ABC0);
  v19 = *(*(v18 - 8) + 64);
  v20 = (MEMORY[0x1EEE9AC00])(v18 - 8);
  v77 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v74 = v63 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE748, &qword_1E5A3ABC8);
  v72 = *(v71 - 8);
  v23 = *(v72 + 64);
  v24 = (MEMORY[0x1EEE9AC00])(v71);
  v73 = v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v63 - v26;
  v28 = a1;
  v86 = a1;
  v87 = a2;
  *&v83 = sub_1E595CBE4();

  sub_1E592B124(&v83);

  v86 = v83;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE750, &unk_1E5A3ABF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC0F0, &unk_1E5A37CB0);
  sub_1E58CD164(&qword_1ECFFE758, &qword_1ECFFE750, &unk_1E5A3ABF0);
  sub_1E58CD164(&qword_1ECFFC0F8, &qword_1ECFFC0F0, &unk_1E5A37CB0);
  sub_1E5A2B6E4();
  v86 = a1;
  v87 = a2;
  v29 = *(sub_1E595CBE4() + 16);

  swift_getKeyPath();
  sub_1E5A2B934();

  v30 = *(v83 + 16);

  if (v29 >= v30)
  {
    v54 = 1;
    v51 = v75;
    v53 = v76;
    v52 = v74;
    v40 = v71;
  }

  else
  {
    sub_1E5A2BC84();

    v31 = sub_1E5A2BC74();
    v32 = swift_allocObject();
    v33 = MEMORY[0x1E69E85E0];
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v28;
    v32[5] = a2;

    v34 = sub_1E5A2BC74();
    v35 = swift_allocObject();
    v35[2] = v34;
    v35[3] = v33;
    v35[4] = v28;
    v35[5] = a2;
    v36 = sub_1E5A2B684();
    *&v37 = MEMORY[0x1EEE9AC00](v36);
    v83 = v37;
    v84 = v38;
    v85 = v39;
    sub_1E5A2BA84();
    v40 = v71;
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v41 = qword_1EE2D33E0;
    swift_getKeyPath();
    v42 = v41;
    sub_1E5A2B944();

    v79 = sub_1E5A2AF64();
    v80 = v43;
    v81 = v44 & 1;
    v82 = v45;
    sub_1E595EA98();
    v46 = v65;
    sub_1E5A2B5D4();
    v47 = v68;
    sub_1E5A2A694();
    sub_1E58CD164(&qword_1ECFFE770, &qword_1ECFFE730, &qword_1E5A3ABB0);
    v48 = v64;
    v49 = v67;
    v50 = v70;
    sub_1E5A2B0D4();
    (*(v69 + 8))(v47, v50);
    (*(v66 + 8))(v46, v49);
    v52 = v74;
    v51 = v75;
    v53 = v76;
    (*(v75 + 32))(v74, v48, v76);
    v54 = 0;
  }

  (*(v51 + 56))(v52, v54, 1, v53);
  v56 = v72;
  v55 = v73;
  v57 = *(v72 + 16);
  v57(v73, v27, v40);
  v58 = v77;
  sub_1E589EDFC(v52, v77);
  v59 = v78;
  v57(v78, v55, v40);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE760, &qword_1E5A3AC00);
  sub_1E589EDFC(v58, &v59[*(v60 + 48)]);
  sub_1E589EE6C(v52);
  v61 = *(v56 + 8);
  v61(v27, v40);
  sub_1E589EE6C(v58);
  return (v61)(v55, v40);
}

uint64_t sub_1E595DA28@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for EditItem();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E5A2B934();

  v7 = &v6[*(v3 + 44)];
  v9 = *v7;
  v8 = *(v7 + 1);

  result = sub_1E58D26E4(v6, type metadata accessor for EditItem);
  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0xE000000000000000;
  if (v8)
  {
    v12 = v8;
  }

  *a1 = v11;
  a1[1] = v12;
  return result;
}

uint64_t sub_1E595DB0C(uint64_t *a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationAction();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  v7 = a1[1];
  v9[8] = 1;
  *v5 = 7;
  *(v5 + 1) = v6;
  *(v5 + 2) = v7;
  *(v5 + 3) = 0;
  v5[32] = 1;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 46) = 0;
  swift_storeEnumTagMultiPayload();

  sub_1E5A2B954();
  return sub_1E58D26E4(v5, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E595DC10()
{
  swift_getKeyPath();
  sub_1E5A2B934();

  v1 = v2;

  sub_1E592B124(&v1);

  v2 = v1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE750, &unk_1E5A3ABF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC0F0, &unk_1E5A37CB0);
  sub_1E58CD164(&qword_1ECFFE758, &qword_1ECFFE750, &unk_1E5A3ABF0);
  sub_1E58CD164(&qword_1ECFFC0F8, &qword_1ECFFC0F0, &unk_1E5A37CB0);
  return sub_1E5A2B6E4();
}

uint64_t sub_1E595DDC8(__int128 *a1)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 8);
  v2 = *a1;
  v3 = a1[1];
  return sub_1E5A2B504();
}

uint64_t sub_1E595DE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  sub_1E58D1C80();

  result = sub_1E5A2AFD4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1E595DEA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE718, &unk_1E5A3AB30);
  sub_1E595E6AC();
  return sub_1E5A2B504();
}

uint64_t sub_1E595DF44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1E595DEA8();
}

uint64_t sub_1E595DF4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5A2BB14();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2D33E0;
  swift_getKeyPath();
  v7 = v6;
  sub_1E5A2B944();

  result = sub_1E5A2AF64();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_1E595E0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE728, &qword_1E5A3AB58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC030, &unk_1E5A2FCC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v34 - v11);
  v13 = type metadata accessor for EditItem();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E5A2B934();

  v18 = &v17[*(v14 + 44)];
  v19 = *v18;
  v20 = v18[1];

  sub_1E58D26E4(v17, type metadata accessor for EditItem);
  if (v20)
  {
    v35 = a1;
    v36 = a2;
    sub_1E595C958(v19, v20);
    v21 = sub_1E5A2B4A4();
    v35 = a1;
    v36 = a2;
    v22 = sub_1E595E808(v19, v20);

    v23 = (v12 + *(v9 + 36));
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC068, &qword_1E5A3AB50) + 28);
    v25 = *MEMORY[0x1E69816E0];
    v26 = sub_1E5A2B4D4();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    *v23 = swift_getKeyPath();
    *v12 = v21;
    v12[1] = v22;
    sub_1E595E730(v12, v8);
    swift_storeEnumTagMultiPayload();
    sub_1E58D1CF0();
  }

  else
  {
    v27 = sub_1E5A2B4A4();
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v28 = qword_1ED026498;
    v29 = (v12 + *(v9 + 36));
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC068, &qword_1E5A3AB50) + 28);
    v31 = *MEMORY[0x1E69816E0];
    v32 = sub_1E5A2B4D4();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = swift_getKeyPath();
    *v12 = v27;
    v12[1] = v28;
    sub_1E595E730(v12, v8);
    swift_storeEnumTagMultiPayload();
    sub_1E58D1CF0();
  }

  sub_1E5A2AA74();
  return sub_1E595E7A0(v12);
}

double sub_1E595E47C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EditItem();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E5A2B934();

  v11 = &v10[*(v7 + 44)];
  v13 = *v11;
  v12 = v11[1];

  sub_1E58D26E4(v10, type metadata accessor for EditItem);
  if (v12)
  {
    *&v23 = a1;
    *(&v23 + 1) = a2;
    v14 = sub_1E595CA9C(v13, v12);
    v16 = v15;

    *&v20 = v14;
    *(&v20 + 1) = v16;
    *&v21 = 0;
    *(&v21 + 1) = MEMORY[0x1E69E7CC0];
    v22 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 1;
  }

  sub_1E5A2AA74();
  result = *&v23;
  v18 = v24;
  v19 = v25;
  *a3 = v23;
  *(a3 + 16) = v18;
  *(a3 + 32) = v19;
  return result;
}

unint64_t sub_1E595E5E8()
{
  result = qword_1ECFFE700;
  if (!qword_1ECFFE700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE6E8, &qword_1E5A3AA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE700);
  }

  return result;
}

uint64_t sub_1E595E69C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1E595DF4C(a1);
}

unint64_t sub_1E595E6AC()
{
  result = qword_1ECFFE720;
  if (!qword_1ECFFE720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE718, &unk_1E5A3AB30);
    sub_1E58D1CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE720);
  }

  return result;
}

uint64_t sub_1E595E730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC030, &unk_1E5A2FCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E595E7A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC030, &unk_1E5A2FCC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E595E808(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v6 = *(v18 + 16) + 1;
  v7 = v18 + 48;
  do
  {
    if (!--v6)
    {

      goto LABEL_16;
    }

    v8 = *(v7 - 16);
    v9 = *(v7 + 16);
    v10 = *(v7 + 24);
    v11 = *(v7 + 40);
    v12 = *(v7 + 48);
    if (*(v7 - 8) == a1 && *v7 == a2)
    {
      break;
    }

    v7 += 72;
  }

  while ((sub_1E5A2C114() & 1) == 0);

  if (WorkoutPlanCatalogModalityKind.rawValue.getter() == 0x697461746964654DLL && v14 == 0xEA00000000006E6FLL)
  {

LABEL_13:
    if (qword_1ECFFB480 != -1)
    {
      swift_once();
    }

    v16 = &qword_1ED0264A0;
    return *v16;
  }

  v15 = sub_1E5A2C114();

  if (v15)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v16 = &qword_1ED026498;
  return *v16;
}

uint64_t sub_1E595EA50@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1E595DA28(a1);
}

uint64_t sub_1E595EA70(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1E595DB0C(a1);
}

uint64_t sub_1E595EA90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1E595DC10();
}

unint64_t sub_1E595EA98()
{
  result = qword_1ECFFE768;
  if (!qword_1ECFFE768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE748, &qword_1E5A3ABC8);
    sub_1E58CD164(&qword_1ECFFC0F8, &qword_1ECFFC0F0, &unk_1E5A37CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE768);
  }

  return result;
}

uint64_t sub_1E595EB68@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);

  result = sub_1E5A2B4A4();
  *a1 = result;
  return result;
}

uint64_t sub_1E595EBC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A2AA64();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E5A2AA74();
}

uint64_t sub_1E595ECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E5A2AA64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E5A2AA74();
}

uint64_t ActiveWorkoutPlanWorkoutView.init(store:artworkViewBuilder:primaryActionButtonViewBuilder:secondaryActionButtonViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  swift_storeEnumTagMultiPayload();
  active = type metadata accessor for ActiveWorkoutPlanWorkoutView();
  v16 = a6 + active[21];
  *v16 = xmmword_1E5A3AC30;
  *(v16 + 2) = 0x4020000000000000;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = a6 + active[17];
  *v18 = sub_1E58D2CB8;
  *(v18 + 1) = v17;
  v18[16] = 0;
  v19 = active[18];

  sub_1E595F03C();
  v20 = active[19];

  v21 = sub_1E595F19C(a3, a4, a7, a8, a9, a10, a11, a12);
  v22 = active[20];
  a5(v21);

  return (*(*(a9 - 8) + 56))(a6 + v22, 0, 1, a9);
}

uint64_t sub_1E595EF94(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7B8, qword_1E5A3AD50);
  sub_1E58CD164(&qword_1EE2CFA90, &qword_1ECFFE7B8, qword_1E5A3AD50);

  return sub_1E5A2A4F4();
}

uint64_t sub_1E595F03C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  swift_getFunctionTypeMetadata3();
  return sub_1E5A2A034();
}

uint64_t sub_1E595F0E4(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  swift_getFunctionTypeMetadata3();
  sub_1E5A2A054();
  sub_1E5A2A044();
  return v4;
}

uint64_t sub_1E595F19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v16[7] = a8;
  v16[8] = a1;
  v16[9] = a2;
  sub_1E5A2BD84();
  swift_getFunctionTypeMetadata1();
  return sub_1E5A2A034();
}

uint64_t (*sub_1E595F270(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 76);
  v3 = *(a1 + 24);
  sub_1E5A2BD84();
  swift_getFunctionTypeMetadata1();
  sub_1E5A2A054();
  sub_1E5A2A044();
  v4 = swift_allocObject();
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = v3;
  v5 = *(a1 + 48);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = v5;
  *(v4 + 64) = v7;
  return sub_1E596A71C;
}

uint64_t sub_1E595F328()
{
  v0 = sub_1E5A29D24();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1E5A2BBA4();
  sub_1E5A29D14();
  return sub_1E5A29D04();
}

uint64_t sub_1E595F3CC(uint64_t a1)
{
  sub_1E595EF94(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v5 > 2u)
  {
    sub_1E5A2A734();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB580, &qword_1E5A30510);
    v1 = *(sub_1E5A2A734() - 8);
    v2 = *(v1 + 72);
    v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    *(swift_allocObject() + 16) = xmmword_1E5A2C920;
    sub_1E5A2A724();
  }

  sub_1E596A1D8(&qword_1ECFFB568, MEMORY[0x1E697EA58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB570, &unk_1E5A2CA80);
  sub_1E58CD164(&qword_1ECFFB578, &qword_1ECFFB570, &unk_1E5A2CA80);
  return sub_1E5A2BDD4();
}

uint64_t sub_1E595F598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v31 = MEMORY[0x1E699DB38];
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29[1] = MEMORY[0x1E6981460];
  v50 = v4;
  v51 = MEMORY[0x1E6981CD0];
  v52 = OpaqueTypeConformance2;
  v53 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_1E5969788();
  sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE780, &qword_1E5A3AC78);
  sub_1E5A2AA84();
  v6 = sub_1E5A2B494();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - v8;
  v10 = sub_1E5A2A6C4();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v30 = v29 - v15;
  v36 = v3;
  v37 = *(v35 + 24);
  v38 = v4;
  v39 = *(v35 + 48);
  v40 = v2;
  WitnessTable = swift_getWitnessTable();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7D8, &qword_1E5A3AE20);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7E0, &qword_1E5A3AE28);
  v19 = sub_1E58CD164(&qword_1ECFFE7E8, &qword_1ECFFE7D8, &qword_1E5A3AE20);
  OpaqueTypeMetadata2 = v17;
  v47 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v17;
  v47 = MEMORY[0x1E6981CD8];
  v48 = v18;
  v49 = v18;
  v50 = v19;
  v51 = MEMORY[0x1E6981CD0];
  v52 = v20;
  v53 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v44 = WitnessTable;
  v45 = v21;
  v22 = swift_getWitnessTable();
  sub_1E5A2B484();
  sub_1E595EF94(v35);
  swift_getKeyPath();
  sub_1E5A2B944();

  v43 = v22;
  v23 = swift_getWitnessTable();
  MEMORY[0x1E6931F70](&OpaqueTypeMetadata2, v6, &type metadata for ArtworkContainerRelativeFrame, v23);
  (*(v32 + 8))(v9, v6);
  v24 = sub_1E596A2C8();
  v41 = v23;
  v42 = v24;
  v25 = swift_getWitnessTable();
  v26 = v30;
  sub_1E58B41DC(v13, v10, v25);
  v27 = *(v33 + 8);
  v27(v13, v10);
  sub_1E58B41DC(v26, v10, v25);
  return (v27)(v26, v10);
}

uint64_t sub_1E595FAE0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v125 = a6;
  v126 = a7;
  v123 = a4;
  v124 = a1;
  v122 = a8;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
  v11 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v100 - v12;
  v114 = *(a2 - 1);
  v13 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v112 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = a2;
  v132 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v131 = a2;
  v132 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = MEMORY[0x1E6981CD8];
  v131 = a2;
  v132 = MEMORY[0x1E6981CD8];
  v133 = OpaqueTypeMetadata2;
  v134 = OpaqueTypeMetadata2;
  v19 = MEMORY[0x1E6981CD0];
  v135 = a5;
  v136 = MEMORY[0x1E6981CD0];
  v137 = OpaqueTypeConformance2;
  v138 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeMetadata2();
  v108 = *(v20 - 8);
  v21 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v106 = &v100 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v131 = a2;
  v132 = v18;
  v133 = OpaqueTypeMetadata2;
  v134 = OpaqueTypeMetadata2;
  v135 = a5;
  v136 = v19;
  v137 = OpaqueTypeConformance2;
  v138 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_1E5969788();
  v109 = v20;
  v131 = v20;
  v132 = v23;
  v104 = v23;
  v103 = v24;
  v133 = v24;
  v134 = v25;
  v102 = v25;
  v26 = sub_1E5A2B5C4();
  v113 = *(v26 - 8);
  v27 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v111 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v110 = &v100 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE780, &qword_1E5A3AC78);
  v101 = *(v31 - 8);
  v32 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v100 = &v100 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v100 - v36;
  active = type metadata accessor for ActiveWorkoutPlanWorkout();
  v39 = *(active - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](active);
  v115 = (&v100 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = v26;
  v117 = v31;
  v42 = sub_1E5A2AA84();
  v119 = *(v42 - 8);
  v120 = v42;
  v43 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v118 = &v100 - v44;
  v131 = a2;
  v132 = a3;
  v116 = a3;
  v133 = v123;
  v134 = a5;
  v135 = v125;
  v136 = v126;
  v45 = type metadata accessor for ActiveWorkoutPlanWorkoutView();
  sub_1E595EF94(v45);
  swift_getKeyPath();
  sub_1E5A2B934();

  if ((*(v39 + 48))(v37, 1, active) == 1)
  {
    sub_1E58BAD14(v37, &qword_1ECFFC2A0, &qword_1E5A30640);
    v46 = [objc_opt_self() tertiarySystemFillColor];
    v129 = sub_1E5A2B474();
    v130 = 256;
    v47 = sub_1E5A2B7A4();
    v115 = &v100;
    MEMORY[0x1EEE9AC00](v47);
    v48 = v116;
    *(&v100 - 8) = a2;
    *(&v100 - 7) = v48;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7D8, &qword_1E5A3AE20);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7E0, &qword_1E5A3AE28);
    v51 = sub_1E58CD164(&qword_1ECFFE7E8, &qword_1ECFFE7D8, &qword_1E5A3AE20);
    v131 = v49;
    v132 = v51;
    v52 = swift_getOpaqueTypeConformance2();
    v97 = v52;
    v98 = v52;
    v53 = MEMORY[0x1E6981CD0];
    v95 = v51;
    v96 = MEMORY[0x1E6981CD0];
    v94 = v50;
    v54 = v100;
    v55 = MEMORY[0x1E6981CD8];
    sub_1E5A2B3A4();

    v56 = v53;
    v57 = v121;
    swift_getWitnessTable();
    v131 = v49;
    v132 = v55;
    v133 = v50;
    v134 = v50;
    v135 = v51;
    v136 = v56;
    v137 = v52;
    v138 = v52;
    swift_getOpaqueTypeConformance2();
    v58 = v118;
    v59 = v117;
    sub_1E595ECB8(v54, v57, v117);
    (*(v101 + 8))(v54, v59);
  }

  else
  {
    v60 = v115;
    sub_1E5969FD8(v37, v115);
    v61 = sub_1E595F0E4(v45);
    v62 = *MEMORY[0x1E699DC58];
    v63 = sub_1E5A2A0D4();
    v64 = v107;
    (*(*(v63 - 8) + 104))(v107, v62, v63);
    swift_storeEnumTagMultiPayload();
    v105 = *(type metadata accessor for ActiveWorkoutPlanArtwork() + 20);
    v65 = v60;
    v66 = v60 + v105;
    v67 = v112;
    v61(v65, v64, v66);

    sub_1E58BAD14(v64, &qword_1ECFFD7C8, &qword_1E5A35E28);
    v68 = sub_1E5A2B7A4();
    v107 = &v100;
    MEMORY[0x1EEE9AC00](v68);
    v99 = v126;
    MEMORY[0x1EEE9AC00](v69);
    *(&v100 - 8) = a2;
    *(&v100 - 7) = v70;
    v71 = swift_checkMetadataState();
    v97 = OpaqueTypeConformance2;
    v98 = OpaqueTypeConformance2;
    v95 = a5;
    v96 = MEMORY[0x1E6981CD0];
    v94 = v71;
    v72 = v106;
    sub_1E5A2B3A4();
    (*(v114 + 8))(v67, a2);
    v73 = v111;
    v74 = v109;
    sub_1E5A2B2A4();
    (*(v108 + 8))(v72, v74);
    v75 = v121;
    WitnessTable = swift_getWitnessTable();
    v77 = v110;
    sub_1E58B41DC(v73, v75, WitnessTable);
    v78 = *(v113 + 8);
    v78(v73, v75);
    sub_1E58B41DC(v77, v75, WitnessTable);
    v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7D8, &qword_1E5A3AE20);
    v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7E0, &qword_1E5A3AE28);
    v81 = sub_1E58CD164(&qword_1ECFFE7E8, &qword_1ECFFE7D8, &qword_1E5A3AE20);
    v131 = v79;
    v132 = v81;
    v82 = swift_getOpaqueTypeConformance2();
    v131 = v79;
    v132 = MEMORY[0x1E6981CD8];
    v133 = v80;
    v134 = v80;
    v135 = v81;
    v83 = MEMORY[0x1E6981CD0];
    v136 = MEMORY[0x1E6981CD0];
    v137 = v82;
    v138 = v82;
    swift_getOpaqueTypeConformance2();
    v58 = v118;
    sub_1E595EBC0(v73, v75);
    v78(v73, v75);
    v84 = v77;
    v56 = v83;
    v78(v84, v75);
    sub_1E58E7804(v115, type metadata accessor for ActiveWorkoutPlanWorkout);
  }

  v85 = swift_getWitnessTable();
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7D8, &qword_1E5A3AE20);
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7E0, &qword_1E5A3AE28);
  v88 = sub_1E58CD164(&qword_1ECFFE7E8, &qword_1ECFFE7D8, &qword_1E5A3AE20);
  v131 = v86;
  v132 = v88;
  v89 = swift_getOpaqueTypeConformance2();
  v131 = v86;
  v132 = MEMORY[0x1E6981CD8];
  v133 = v87;
  v134 = v87;
  v135 = v88;
  v136 = v56;
  v137 = v89;
  v138 = v89;
  v90 = swift_getOpaqueTypeConformance2();
  v127 = v85;
  v128 = v90;
  v91 = v120;
  v92 = swift_getWitnessTable();
  sub_1E58B41DC(v58, v91, v92);
  return (*(v119 + 8))(v58, v91);
}

uint64_t sub_1E596084C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a2;
  v19 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1E5A2A094();
  sub_1E5A2B024();
  v18 = a2;
  v19 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E58B41DC(v11, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v16 = *(v8 + 8);
  v16(v11, OpaqueTypeMetadata2);
  sub_1E58B41DC(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v16)(v14, OpaqueTypeMetadata2);
}

uint64_t sub_1E59609E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a8;
  v27 = a2;
  v28 = a1;
  v29 = a9;
  v30 = a3;
  v31 = a6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = v26;
  v22 = *(v27 + *(type metadata accessor for ActiveWorkoutPlanWorkoutView() + 84) + 16);
  sub_1E5A2B024();
  v30 = a3;
  v31 = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E58B41DC(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v24 = *(v15 + 8);
  v24(v18, OpaqueTypeMetadata2);
  sub_1E58B41DC(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v24)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_1E5960BAC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  sub_1E5A2A094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7D8, &qword_1E5A3AE20);
  sub_1E58CD164(&qword_1ECFFE7E8, &qword_1ECFFE7D8, &qword_1E5A3AE20);
  return sub_1E5A2B024();
}

uint64_t sub_1E5960C68(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v2 = *(a2 + *(type metadata accessor for ActiveWorkoutPlanWorkoutView() + 84) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7D8, &qword_1E5A3AE20);
  sub_1E58CD164(&qword_1ECFFE7E8, &qword_1ECFFE7D8, &qword_1E5A3AE20);
  return sub_1E5A2B024();
}

uint64_t sub_1E5960D44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE788, &qword_1E5A3AC80);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE790, &qword_1E5A3AC88);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE798, &unk_1E5A3B790);
  v44 = v42;
  v45 = v43;
  v26 = a1[6];
  v38 = v26;
  v39 = MEMORY[0x1E69E6168];
  v25 = a1 + 5;
  v24 = a1[3];
  v36 = v24;
  v37 = MEMORY[0x1E69E6158];
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  v3 = a1[4];
  sub_1E5A2BD84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v46 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v4 = sub_1E5A2B604();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = sub_1E5A2A6C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  sub_1E5A2AA34();
  *&v16 = a1[2];
  *(&v16 + 1) = v24;
  *&v17 = v3;
  *(&v17 + 1) = *v25;
  v29 = v16;
  v30 = v17;
  v18 = a1[7];
  v31 = v26;
  v32 = v18;
  v33 = v27;
  sub_1E5A2B5F4();
  sub_1E5A2B7F4();
  WitnessTable = swift_getWitnessTable();
  sub_1E5A2B2E4();
  (*(v23 + 8))(v7, v4);
  v34 = WitnessTable;
  v35 = MEMORY[0x1E697EBF8];
  v19 = swift_getWitnessTable();
  sub_1E58B41DC(v12, v8, v19);
  v20 = *(v9 + 8);
  v20(v12, v8);
  sub_1E58B41DC(v15, v8, v19);
  return (v20)(v15, v8);
}

uint64_t sub_1E596121C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v260 = a7;
  v248 = a2;
  v249 = a5;
  v276 = a1;
  v247 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v12 = sub_1E5A2BD84();
  swift_getTupleTypeMetadata2();
  v13 = sub_1E5A2B864();
  v224 = *(v13 - 8);
  v14 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v223 = v210 - v15;
  v222 = *(v12 - 8);
  v16 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v221 = v210 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v250 = v210 - v20;
  v329 = a3;
  v330 = MEMORY[0x1E69E6158];
  v331 = a6;
  v332 = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  v225 = v12;
  swift_getTupleTypeMetadata2();
  v21 = sub_1E5A2B864();
  v210[1] = swift_getWitnessTable();
  v210[2] = v21;
  v22 = sub_1E5A2B604();
  v267 = v11;
  swift_getTupleTypeMetadata2();
  v23 = sub_1E5A2B864();
  v214 = *(v23 - 8);
  v24 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v213 = v210 - v25;
  v218 = v22;
  v211 = *(v22 - 8);
  v26 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v212 = v210 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v220 = v210 - v30;
  active = type metadata accessor for ActiveWorkoutPlanWorkout();
  v280 = *(active - 8);
  v31 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](active);
  v219 = v210 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = v13;
  v33 = sub_1E5A2AA84();
  v265 = *(v33 - 8);
  v266 = v33;
  v34 = *(v265 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v263 = v210 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v262 = v210 - v37;
  v275 = sub_1E5A2AEB4();
  v274 = *(v275 - 8);
  v38 = *(v274 + 64);
  MEMORY[0x1EEE9AC00](v275);
  v273 = v210 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v238 = v210 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v231 = v210 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v258 = v210 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v210 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7C0, &unk_1E5A3ADD0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v235 = v210 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v272 = v210 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v57 = v210 - v56;
  v58 = sub_1E5A29CF4();
  v270 = *(v58 - 8);
  v271 = v58;
  v59 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v232 = v210 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v257 = v210 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v65 = v210 - v64;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7F8, &unk_1E5A3AE30);
  v66 = *(*(v233 - 8) + 64);
  MEMORY[0x1EEE9AC00](v233);
  v256 = v210 - v67;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE800, &qword_1E5A3B6C0);
  v68 = *(*(v237 - 8) + 64);
  MEMORY[0x1EEE9AC00](v237);
  v236 = v210 - v69;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE790, &qword_1E5A3AC88);
  v70 = *(*(v259 - 8) + 64);
  MEMORY[0x1EEE9AC00](v259);
  v261 = v210 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v234 = v210 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v277 = v210 - v75;
  v329 = v248;
  v215 = a3;
  v216 = a4;
  v330 = a3;
  v331 = a4;
  v332 = v249;
  v217 = a6;
  v333 = a6;
  v334 = v260;
  v76 = type metadata accessor for ActiveWorkoutPlanWorkoutView();
  sub_1E595EF94(v76);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v329 == 1)
  {
    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    v245 = 0;
    v246 = v358;
    v243 = v362;
    v244 = v360;
    LOBYTE(v319) = 1;
    LOBYTE(v302) = v359;
    LOBYTE(v338) = v361;
    v239 = 1;
    v240 = v359;
    v241 = v361;
    v242 = v363;
    LOBYTE(v329) = 0;
  }

  else
  {
    v246 = 0;
    v243 = 0;
    v244 = 0;
    v241 = 0;
    v242 = 0;
    v239 = 0;
    v240 = 0;
    v245 = 1;
  }

  sub_1E595EF94(v76);
  swift_getKeyPath();
  sub_1E5A2B934();

  v77 = *(v280 + 48);
  v78 = active;
  v280 += 48;
  v269 = v77;
  v79 = v77(v49, 1, active);
  v278 = v76;
  v264 = v23;
  if (v79 == 1)
  {
    sub_1E58BAD14(v49, &qword_1ECFFC2A0, &qword_1E5A30640);
    v81 = v270;
    v80 = v271;
    v255 = *(v270 + 56);
    v255(v57, 1, 1, v271);
    sub_1E595F328();
    if ((*(v81 + 48))(v57, 1, v80) != 1)
    {
      sub_1E58BAD14(v57, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
    }
  }

  else
  {
    v82 = *(v78 + 32);
    v84 = v270;
    v83 = v271;
    (*(v270 + 16))(v57, &v49[v82], v271);
    sub_1E58E7804(v49, type metadata accessor for ActiveWorkoutPlanWorkout);
    v255 = *(v84 + 56);
    v255(v57, 0, 1, v83);
    (*(v84 + 32))(v65, v57, v83);
  }

  v85 = sub_1E5A2AFC4();
  v87 = v86;
  v89 = v88;
  sub_1E5A2AEF4();
  sub_1E5A2AE24();

  v90 = v274;
  v91 = *(v274 + 104);
  v92 = v273;
  v253 = *MEMORY[0x1E6980EA8];
  v93 = v275;
  v254 = v274 + 104;
  v252 = v91;
  v91(v273);
  sub_1E5A2AEE4();

  v94 = *(v90 + 8);
  v274 = v90 + 8;
  v251 = v94;
  v94(v92, v93);
  v95 = sub_1E5A2AFA4();
  v97 = v96;
  LOBYTE(v92) = v98;
  v230 = v99;

  sub_1E58B3C9C(v85, v87, v89 & 1);

  v100 = v256;
  v101 = (v256 + *(v233 + 36));
  v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE808, &qword_1E5A3AE40) + 28);
  v103 = *MEMORY[0x1E6980FD8];
  v104 = sub_1E5A2AF94();
  v105 = *(v104 - 8);
  (*(v105 + 104))(v101 + v102, v103, v104);
  (*(v105 + 56))(v101 + v102, 0, 1, v104);
  *v101 = swift_getKeyPath();
  *v100 = v95;
  *(v100 + 8) = v97;
  *(v100 + 16) = v92 & 1;
  *(v100 + 24) = v230;
  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v106 = qword_1ED026498;
  v107 = v236;
  sub_1E58F0054(v100, v236, &qword_1ECFFE7F8, &unk_1E5A3AE30);
  *(v107 + *(v237 + 36)) = v106;
  KeyPath = swift_getKeyPath();
  v109 = v107;
  v110 = v234;
  sub_1E58F0054(v109, v234, &qword_1ECFFE800, &qword_1E5A3B6C0);
  v111 = v110 + *(v259 + 36);
  *v111 = KeyPath;
  *(v111 + 8) = 1;
  *(v111 + 16) = 0;
  sub_1E58F0054(v110, v277, &qword_1ECFFE790, &qword_1E5A3AC88);

  v112 = v278;
  sub_1E595EF94(v278);
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v233 = v364;
  v234 = v366;
  v236 = v369;
  v237 = v368;
  v357 = 1;
  v355 = v365;
  v353 = v367;
  sub_1E595EF94(v112);
  swift_getKeyPath();
  v113 = v258;
  sub_1E5A2B934();

  v114 = active;
  v115 = v269(v113, 1, active);
  v116 = v272;
  v117 = v257;
  if (v115 == 1)
  {
    sub_1E58BAD14(v113, &qword_1ECFFC2A0, &qword_1E5A30640);
    v119 = v270;
    v118 = v271;
    v255(v116, 1, 1, v271);
    sub_1E595F328();
    if ((*(v119 + 48))(v116, 1, v118) != 1)
    {
      sub_1E58BAD14(v116, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
    }
  }

  else
  {
    v120 = *(v114 + 24);
    v122 = v270;
    v121 = v271;
    (*(v270 + 16))(v272, v113 + v120, v271);
    sub_1E58E7804(v113, type metadata accessor for ActiveWorkoutPlanWorkout);
    v255(v116, 0, 1, v121);
    (*(v122 + 32))(v117, v116, v121);
  }

  v123 = sub_1E5A2AFC4();
  v125 = v124;
  v127 = v126;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v128 = v273;
  v129 = v275;
  v252(v273, v253, v275);
  sub_1E5A2AEE4();

  v251(v128, v129);
  v130 = sub_1E5A2AFA4();
  v256 = v131;
  v257 = v130;
  LODWORD(v230) = v132;
  v258 = v133;

  sub_1E58B3C9C(v123, v125, v127 & 1);

  v272 = swift_getKeyPath();
  v134 = v278;
  sub_1E595EF94(v278);
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v226 = v370;
  v227 = v372;
  v228 = v375;
  v229 = v374;
  v351 = 1;
  v349 = v371;
  v347 = v373;
  sub_1E595EF94(v134);
  swift_getKeyPath();
  v135 = v231;
  sub_1E5A2B934();

  v136 = active;
  if (v269(v135, 1, active) == 1)
  {
    sub_1E58BAD14(v135, &qword_1ECFFC2A0, &qword_1E5A30640);
    v138 = v270;
    v137 = v271;
    v139 = v235;
    v255(v235, 1, 1, v271);
    sub_1E595F328();
    if ((*(v138 + 48))(v139, 1, v137) != 1)
    {
      sub_1E58BAD14(v139, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
    }
  }

  else
  {
    v141 = v270;
    v140 = v271;
    v142 = v135 + *(v136 + 28);
    v143 = v235;
    (*(v270 + 16))(v235, v142, v271);
    sub_1E58E7804(v135, type metadata accessor for ActiveWorkoutPlanWorkout);
    v255(v143, 0, 1, v140);
    (*(v141 + 32))(v232, v143, v140);
  }

  v144 = sub_1E5A2AFC4();
  v146 = v145;
  v148 = v147;
  sub_1E5A2AE14();
  v149 = v273;
  v150 = v275;
  v252(v273, v253, v275);
  sub_1E5A2AEE4();

  v251(v149, v150);
  v151 = sub_1E5A2AFA4();
  v153 = v152;
  v155 = v154;

  sub_1E58B3C9C(v144, v146, v148 & 1);

  LODWORD(v329) = sub_1E5A2ABA4();
  v274 = sub_1E5A2AF84();
  v273 = v156;
  LODWORD(v270) = v157;
  v275 = v158;
  sub_1E58B3C9C(v151, v153, v155 & 1);

  v271 = swift_getKeyPath();
  v159 = v276;
  sub_1E595EF94(v278);
  swift_getKeyPath();
  v160 = v238;
  sub_1E5A2B934();

  v161 = active;
  if (v269(v160, 1, active) == 1)
  {
    sub_1E58BAD14(v160, &qword_1ECFFC2A0, &qword_1E5A30640);
LABEL_23:
    v177 = v278;
    sub_1E595EF94(v278);
    swift_getKeyPath();
    sub_1E5A2B944();

    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    v178 = v376;
    v179 = v378;
    v180 = v380;
    v181 = v381;
    LOBYTE(v295) = 1;
    LOBYTE(v356[0]) = v377;
    LOBYTE(v354[0]) = v379;
    v182 = *(v177 + 80);
    v345 = v260;
    v183 = v225;
    WitnessTable = swift_getWitnessTable();
    v185 = &v159[v182];
    v186 = v250;
    sub_1E58B41DC(v185, v183, WitnessTable);
    v329 = 0;
    LOBYTE(v330) = v295;
    *(&v330 + 1) = v290[0];
    HIDWORD(v330) = *(v290 + 3);
    v331 = v178;
    LOBYTE(v332) = v356[0];
    *(&v332 + 1) = v283;
    HIDWORD(v332) = *(&v283 + 3);
    v333 = v179;
    LOBYTE(v334) = v354[0];
    *(&v334 + 1) = v312;
    HIDWORD(v334) = *(&v312 + 3);
    v335 = v180;
    v336 = v181;
    v319 = &v329;
    v187 = v221;
    v188 = v222;
    (*(v222 + 16))(v221, v186, v183);
    v320 = v187;
    v302 = v267;
    v303 = v183;
    v338 = sub_1E594C9F8();
    v339 = WitnessTable;
    v189 = v223;
    sub_1E597DC00(&v319, 2uLL, &v302);
    v190 = *(v188 + 8);
    v190(v187, v183);
    v191 = v264;
    swift_getWitnessTable();
    v192 = v268;
    swift_getWitnessTable();
    v176 = v262;
    sub_1E595ECB8(v189, v191, v192);
    (*(v224 + 8))(v189, v192);
    v190(v250, v183);
    goto LABEL_24;
  }

  v162 = v219;
  sub_1E5969FD8(v160, v219);
  if (*(v162 + *(v161 + 44)) != 1)
  {
    sub_1E58E7804(v162, type metadata accessor for ActiveWorkoutPlanWorkout);
    goto LABEL_23;
  }

  sub_1E595EF94(v278);
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2B7E4();
  v163 = sub_1E5A2A5B4();
  v269 = v376;
  v278 = v378;
  v280 = v380;
  active = v381;
  LOBYTE(v295) = 1;
  LOBYTE(v356[0]) = v377;
  LOBYTE(v354[0]) = v379;
  MEMORY[0x1EEE9AC00](v163);
  v165 = v215;
  v164 = v216;
  v210[-8] = v248;
  v210[-7] = v165;
  v210[-6] = v164;
  v166 = v217;
  v210[-5] = v249;
  v210[-4] = v166;
  v210[-3] = v260;
  v210[-2] = v159;
  v210[-1] = v162;
  sub_1E5A2AA24();
  v167 = v212;
  sub_1E5A2B5F4();
  v168 = v218;
  v169 = swift_getWitnessTable();
  v170 = v220;
  sub_1E58B41DC(v167, v168, v169);
  v171 = v211;
  v172 = *(v211 + 8);
  v172(v167, v168);
  v276 = v172;
  v329 = 0;
  LOBYTE(v330) = v295;
  *(&v330 + 1) = v290[0];
  HIDWORD(v330) = *(v290 + 3);
  v331 = v269;
  LOBYTE(v332) = v356[0];
  *(&v332 + 1) = v283;
  HIDWORD(v332) = *(&v283 + 3);
  v333 = v278;
  LOBYTE(v334) = v354[0];
  *(&v334 + 1) = v312;
  HIDWORD(v334) = *(&v312 + 3);
  v335 = v280;
  v336 = active;
  v319 = &v329;
  (*(v171 + 16))(v167, v170, v168);
  v320 = v167;
  v302 = v267;
  v303 = v168;
  v338 = sub_1E594C9F8();
  v339 = v169;
  v173 = v213;
  sub_1E597DC00(&v319, 2uLL, &v302);
  v172(v167, v168);
  v174 = v264;
  swift_getWitnessTable();
  swift_getWitnessTable();
  v175 = v262;
  sub_1E595EBC0(v173, v174);
  (*(v214 + 8))(v173, v174);
  (v276)(v220, v168);
  v176 = v175;
  sub_1E58E7804(v162, type metadata accessor for ActiveWorkoutPlanWorkout);
LABEL_24:
  v329 = 0;
  v330 = v239;
  v331 = v246;
  v332 = v240;
  v333 = v244;
  v334 = v241;
  v335 = v243;
  v336 = v242;
  v337 = v245;
  v338 = &v329;
  v193 = v261;
  sub_1E596A334(v277, v261);
  v319 = 0;
  LOBYTE(v320) = v357;
  *(&v320 + 1) = v356[0];
  HIDWORD(v320) = *(v356 + 3);
  v321 = v233;
  v322 = v355;
  *v323 = v354[0];
  *&v323[3] = *(v354 + 3);
  v324 = v234;
  v325 = v353;
  *v326 = *v352;
  *&v326[3] = *&v352[3];
  v327 = v237;
  v328 = v236;
  v339 = v193;
  v340 = &v319;
  v194 = v257;
  v312 = v257;
  v313 = v256;
  v195 = v230 & 1;
  v314 = v230 & 1;
  LODWORD(v280) = v230 & 1;
  v315 = v258;
  v316 = v272;
  v317 = 2;
  v318 = 0;
  v302 = 0;
  LOBYTE(v303) = v351;
  *(&v303 + 1) = *v350;
  HIDWORD(v303) = *&v350[3];
  v304 = v226;
  v305 = v349;
  *v306 = *v348;
  *&v306[3] = *&v348[3];
  v307 = v227;
  v308 = v347;
  *&v309[3] = *&v346[3];
  *v309 = *v346;
  v310 = v229;
  v311 = v228;
  v341 = &v312;
  v342 = &v302;
  v196 = v274;
  v295 = v274;
  v197 = v273;
  v296 = v273;
  v297 = v270 & 1;
  v198 = v176;
  v199 = v270 & 1;
  v298 = v275;
  v299 = v271;
  v300 = 2;
  v301 = 0;
  v343 = &v295;
  v200 = v263;
  (*(v265 + 16))(v263, v198, v266);
  v344 = v200;
  v201 = v194;
  v202 = v256;
  sub_1E594C9E8(v201, v256, v195);

  sub_1E594C9E8(v196, v197, v199);

  v290[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE788, &qword_1E5A3AC80);
  v290[1] = v259;
  v203 = v267;
  v290[2] = v267;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE798, &unk_1E5A3B790);
  v292 = v203;
  v293 = v291;
  v204 = v266;
  v294 = v266;
  v283 = sub_1E596A3A4();
  v284 = sub_1E596A428();
  v205 = sub_1E594C9F8();
  v285 = v205;
  v286 = sub_1E596A650();
  v287 = v205;
  v288 = v286;
  v206 = swift_getWitnessTable();
  v207 = swift_getWitnessTable();
  v281 = v206;
  v282 = v207;
  v289 = swift_getWitnessTable();
  sub_1E597DC00(&v338, 7uLL, v290);
  sub_1E58B3C9C(v196, v197, v199);

  sub_1E58B3C9C(v257, v202, v280);

  v208 = *(v265 + 8);
  v208(v262, v204);
  sub_1E58BAD14(v277, &qword_1ECFFE790, &qword_1E5A3AC88);
  v208(v263, v204);
  sub_1E58B3C9C(v295, v296, v297);

  sub_1E58B3C9C(v312, v313, v314);

  return sub_1E58BAD14(v261, &qword_1ECFFE790, &qword_1E5A3AC88);
}

uint64_t sub_1E596306C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v60 = a6;
  v54 = a2;
  v63 = a9;
  v15 = sub_1E5A2BD84();
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v62 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v61 = v52 - v19;
  v52[0] = sub_1E5A2BD84();
  v20 = *(v52[0] - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v52[0]);
  v23 = v52 - v22;
  v69 = a4;
  v70 = MEMORY[0x1E69E6158];
  v71 = a7;
  v72 = MEMORY[0x1E69E6168];
  v24 = sub_1E5A2B5C4();
  v57 = sub_1E5A2BD84();
  v56 = *(v57 - 8);
  v25 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v58 = v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v52 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v55 = v52 - v31;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v72 = v60;
  v52[1] = a7;
  v73 = a7;
  v74 = a8;
  v59 = a8;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutView();
  v60 = a1;
  v32 = sub_1E595F270(active);
  v33 = &v54[*(type metadata accessor for ActiveWorkoutPlanWorkout() + 20)];
  v35 = *v33;
  v34 = v33[1];
  v32(*v33, v34);

  v36 = *(a4 - 1);
  v37 = 1;
  if ((*(v36 + 48))(v23, 1, a4) == 1)
  {
    a4 = v52[0];
  }

  else
  {
    v69 = v35;
    v70 = v34;

    sub_1E5A2B2A4();

    v37 = 0;
    v20 = v36;
  }

  (*(v20 + 8))(v23, a4);
  (*(*(v24 - 8) + 56))(v29, v37, 1, v24);
  v68[3] = swift_getWitnessTable();
  v38 = v57;
  WitnessTable = swift_getWitnessTable();
  v40 = v55;
  sub_1E58B41DC(v29, v38, WitnessTable);
  v41 = v56;
  v54 = *(v56 + 8);
  (v54)(v29, v38);
  v42 = *(active + 80);
  v68[2] = v59;
  v43 = v65;
  v44 = swift_getWitnessTable();
  v45 = v61;
  sub_1E58B41DC(v60 + v42, v43, v44);
  v46 = v58;
  (*(v41 + 16))(v58, v40, v38);
  v69 = v46;
  v47 = v64;
  v48 = v62;
  (*(v64 + 16))(v62, v45, v43);
  v70 = v48;
  v68[0] = v38;
  v68[1] = v43;
  v66 = WitnessTable;
  v67 = v44;
  sub_1E597DC00(&v69, 2uLL, v68);
  v49 = *(v47 + 8);
  v49(v45, v43);
  v50 = v54;
  (v54)(v40, v38);
  v49(v48, v43);
  return v50(v46, v38);
}

uint64_t sub_1E5963600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a1;
  v44 = a2;
  v48 = a6;
  v9 = sub_1E5A2B5B4();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v40 - v14;
  v15 = sub_1E5A2B604();
  v40 = *(v15 - 8);
  v16 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  v22 = sub_1E5A2AA84();
  v46 = *(v22 - 8);
  v47 = v22;
  v23 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v45 = &v40 - v24;
  sub_1E595EF94(a3);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v51 == 1)
  {
    v25 = sub_1E5A2AA34();
    MEMORY[0x1EEE9AC00](v25);
    *(&v40 - 5) = *(a3 + 16);
    *(&v40 - 8) = *(a3 + 32);
    *(&v40 - 7) = a4;
    *(&v40 - 3) = *(a3 + 40);
    *(&v40 - 4) = *(a3 + 56);
    *(&v40 - 3) = a5;
    v26 = v44;
    *(&v40 - 2) = v43;
    *(&v40 - 1) = v26;
    sub_1E5A2B5F4();
    WitnessTable = swift_getWitnessTable();
    sub_1E58B41DC(v18, v15, WitnessTable);
    v28 = *(v40 + 8);
    v28(v18, v15);
    sub_1E58B41DC(v21, v15, WitnessTable);
    swift_getWitnessTable();
    v29 = v45;
    sub_1E595EBC0(v18, v15);
    v28(v18, v15);
    v28(v21, v15);
  }

  else
  {
    v30 = sub_1E5A2A934();
    MEMORY[0x1EEE9AC00](v30);
    *(&v40 - 5) = *(a3 + 16);
    *(&v40 - 8) = *(a3 + 32);
    *(&v40 - 7) = a4;
    *(&v40 - 3) = *(a3 + 40);
    *(&v40 - 4) = *(a3 + 56);
    *(&v40 - 3) = a5;
    v31 = v44;
    *(&v40 - 2) = v43;
    *(&v40 - 1) = v31;
    sub_1E5A2B5A4();
    v32 = swift_getWitnessTable();
    v33 = v41;
    sub_1E58B41DC(v12, v9, v32);
    v34 = *(v42 + 8);
    v34(v12, v9);
    sub_1E58B41DC(v33, v9, v32);
    swift_getWitnessTable();
    v29 = v45;
    sub_1E595ECB8(v12, v15, v9);
    v34(v12, v9);
    v34(v33, v9);
  }

  v35 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v49 = v35;
  v50 = v36;
  v37 = v47;
  v38 = swift_getWitnessTable();
  sub_1E58B41DC(v29, v37, v38);
  return (*(v46 + 8))(v29, v37);
}

uint64_t sub_1E5963B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v21 - v17;
  v16();
  sub_1E58B41DC(v15, a6, a10);
  v19 = *(v11 + 8);
  v19(v15, a6);
  sub_1E58B41DC(v18, a6, a10);
  return (v19)(v18, a6);
}

uint64_t ActiveWorkoutPlanWorkoutView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v108 = sub_1E5A2A734();
  v107 = *(v108 - 8);
  v3 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = *(a1 - 1);
  v5 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v103 = v7;
  v104 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC208, &qword_1E5A30408);
  v9 = a1[5];
  v134 = a1[2];
  v8 = v134;
  v135 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v134 = v8;
  v135 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = MEMORY[0x1E6981CD8];
  v134 = v8;
  v135 = MEMORY[0x1E6981CD8];
  v136 = OpaqueTypeMetadata2;
  v137 = OpaqueTypeMetadata2;
  v13 = MEMORY[0x1E6981CD0];
  v138 = v9;
  v139 = MEMORY[0x1E6981CD0];
  v140 = OpaqueTypeConformance2;
  v141 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeMetadata2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v101 = v8;
  v134 = v8;
  v135 = v12;
  v136 = OpaqueTypeMetadata2;
  v137 = OpaqueTypeMetadata2;
  v102 = v9;
  v138 = v9;
  v139 = v13;
  v140 = OpaqueTypeConformance2;
  v141 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v17 = sub_1E5969788();
  v134 = v14;
  v135 = v15;
  v136 = v16;
  v137 = v17;
  sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE780, &qword_1E5A3AC78);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE788, &qword_1E5A3AC80);
  v135 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE790, &qword_1E5A3AC88);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v136 = v18;
  v137 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE798, &unk_1E5A3B790);
  v138 = v18;
  v139 = v137;
  v19 = a1[3];
  v20 = a1[6];
  v113 = a1;
  v99 = v19;
  v130 = v19;
  v131 = MEMORY[0x1E69E6158];
  v100 = v20;
  v132 = v20;
  v133 = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  *&v98 = a1[4];
  sub_1E5A2BD84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v140 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2B5B4();
  sub_1E5A2AA84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7A0, &unk_1E5A3ACA0);
  sub_1E5A2A6C4();
  v112 = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v128 = WitnessTable;
  v129 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1E58CD164(&qword_1ECFFE7A8, &qword_1ECFFE7A0, &unk_1E5A3ACA0);
  v126 = v23;
  v127 = v24;
  v111 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v25 = sub_1E5A2B594();
  v26 = sub_1E5A2A714();
  v110 = MEMORY[0x1E697D680];
  v27 = swift_getWitnessTable();
  v28 = sub_1E596A1D8(&qword_1ECFFC220, MEMORY[0x1E697C248]);
  v134 = v25;
  v135 = v26;
  v136 = v27;
  v137 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v134 = v25;
  v135 = v26;
  v136 = v27;
  v137 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v134 = v29;
  v135 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  active = type metadata accessor for ActiveWorkoutPlanWorkout();
  v134 = v29;
  v135 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_1E596A1D8(&qword_1ECFFE7B0, type metadata accessor for ActiveWorkoutPlanWorkout);
  v134 = v31;
  v135 = active;
  v136 = v33;
  v137 = v34;
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  v35 = sub_1E5A2B734();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC210, &qword_1E5A30410);
  v37 = sub_1E58CD164(&qword_1ECFFC218, &qword_1ECFFC210, &qword_1E5A30410);
  v134 = v36;
  v135 = v26;
  v136 = v37;
  v137 = v28;
  v38 = swift_getOpaqueTypeConformance2();
  v125 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v122 = v38;
  v123 = v39;
  v124 = MEMORY[0x1E6981E60];
  v40 = swift_getWitnessTable();
  v134 = v35;
  v135 = v40;
  swift_getOpaqueTypeMetadata2();
  v134 = v35;
  v135 = v40;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B604();
  v41 = sub_1E5A2B494();
  v95 = *(v41 - 8);
  v42 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v91 - v43;
  v45 = sub_1E5A2A6C4();
  v96 = *(v45 - 8);
  v46 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v94 = &v91 - v47;
  v92 = swift_getWitnessTable();
  v121 = v92;
  v97 = v41;
  v93 = swift_getWitnessTable();
  v119 = v93;
  v120 = MEMORY[0x1E69805D0];
  v48 = swift_getWitnessTable();
  v134 = v45;
  v135 = v48;
  v116 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v91 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v91 - v55;
  v109 = v57;
  v112 = sub_1E5A2AA84();
  v111 = *(v112 - 8);
  v58 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v91 - v59;
  v60 = v113;
  v61 = v114;
  sub_1E595EF94(v113);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v134)
  {
    MEMORY[0x1EEE9AC00](v62);
    *&v63 = v101;
    *(&v63 + 1) = v99;
    v91 = v63;
    *&v64 = v98;
    *(&v64 + 1) = v102;
    v98 = v64;
    *(&v91 - 4) = v63;
    *(&v91 - 3) = v64;
    v65 = *(v60 + 56);
    v101 = v56;
    v66 = v100;
    *(&v91 - 4) = v100;
    *(&v91 - 3) = v65;
    *(&v91 - 2) = v61;
    sub_1E5A2B484();
    v99 = v50;
    v67 = v44;
    v68 = v105;
    v69 = *(v105 + 16);
    v102 = v45;
    v70 = v104;
    v69(v104, v61, v60);
    v71 = (*(v68 + 80) + 64) & ~*(v68 + 80);
    v72 = swift_allocObject();
    v73 = v98;
    *(v72 + 16) = v91;
    *(v72 + 32) = v73;
    *(v72 + 48) = v66;
    *(v72 + 56) = v65;
    v74 = v70;
    v45 = v102;
    v75 = v53;
    v76 = v116;
    (*(v68 + 32))(v72 + v71, v74, v60);
    v77 = v94;
    v78 = v97;
    sub_1E5A2B364();

    (*(v95 + 8))(v67, v78);
    v79 = v106;
    sub_1E595F3CC(v60);
    sub_1E5A2B394();
    (*(v107 + 8))(v79, v108);
    (*(v96 + 8))(v77, v45);
    v134 = v45;
    v135 = v76;
    v80 = swift_getOpaqueTypeConformance2();
    v81 = v101;
    v82 = v109;
    sub_1E58B41DC(v75, v109, v80);
    v83 = *(v99 + 8);
    v83(v75, v82);
    v84 = v81;
    sub_1E58B41DC(v81, v82, v80);
    v85 = v110;
    sub_1E595ECB8(v75, MEMORY[0x1E6981E70], v82);
    v83(v75, v82);
    v83(v84, v82);
  }

  else
  {
    v134 = v45;
    v135 = v116;
    v86 = swift_getOpaqueTypeConformance2();
    v85 = v110;
    sub_1E595EBC0(v86, MEMORY[0x1E6981E70]);
  }

  v134 = v45;
  v135 = v116;
  v87 = swift_getOpaqueTypeConformance2();
  v117 = MEMORY[0x1E6981E60];
  v118 = v87;
  v88 = v112;
  v89 = swift_getWitnessTable();
  sub_1E58B41DC(v85, v88, v89);
  return (*(v111 + 8))(v85, v88);
}