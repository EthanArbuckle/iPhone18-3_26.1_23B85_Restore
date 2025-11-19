unint64_t sub_1E5BD5E28()
{
  result = qword_1EE2C63A0;
  if (!qword_1EE2C63A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040738, &unk_1E5C042D0);
    sub_1E5BD62D4(&qword_1EE2C62E8, MEMORY[0x1E697CC80]);
    sub_1E5B5FC8C(&qword_1EE2C62F0, &qword_1ED03EB00, &qword_1E5C042E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C63A0);
  }

  return result;
}

unint64_t sub_1E5BD5F10()
{
  result = qword_1EE2C6380;
  if (!qword_1EE2C6380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040710, &qword_1E5C042A8);
    sub_1E5B5FC8C(&qword_1EE2C62C0, &qword_1ED040708, &qword_1E5C042A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6380);
  }

  return result;
}

unint64_t sub_1E5BD5FC8()
{
  result = qword_1EE2C6398;
  if (!qword_1EE2C6398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040720, &qword_1E5C042B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040710, &qword_1E5C042A8);
    sub_1E5BF68D4();
    sub_1E5BD5F10();
    sub_1E5BD62D4(&qword_1EE2C62F8, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1EE2C6350, &qword_1ED040750, &qword_1E5C042F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6398);
  }

  return result;
}

unint64_t sub_1E5BD610C()
{
  result = qword_1ED040758;
  if (!qword_1ED040758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040740, &qword_1E5C042E8);
    sub_1E5BD5FC8();
    sub_1E5B5FC8C(&qword_1ED040760, &qword_1ED040768, &qword_1E5C04300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040758);
  }

  return result;
}

unint64_t sub_1E5BD61C4()
{
  result = qword_1EE2C6370;
  if (!qword_1EE2C6370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040748, &qword_1E5C042F0);
    sub_1E5BD5FC8();
    sub_1E5B5FC8C(&qword_1EE2C63D0, &qword_1ED040770, &qword_1E5C04308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6370);
  }

  return result;
}

uint64_t sub_1E5BD627C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6784();
  *a1 = result;
  return result;
}

uint64_t sub_1E5BD62A8(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E5BF6794();
}

uint64_t sub_1E5BD62D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5BD631C()
{
  result = qword_1ED040780;
  if (!qword_1ED040780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040778, &qword_1E5C04310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040720, &qword_1E5C042B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040740, &qword_1E5C042E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040748, &qword_1E5C042F0);
    sub_1E5BD5FC8();
    sub_1E5BD610C();
    sub_1E5BD61C4();
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1EE2C6300, &qword_1ED040788, &qword_1E5C04348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040780);
  }

  return result;
}

uint64_t sub_1E5BD64A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v31 = a1;
  v8 = sub_1E5BF64B4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1E5BF6F94();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v13 = sub_1E5BF69D4();
  v28 = v14;
  v29 = v13;
  v26 = v15;
  v27 = v16;
  sub_1E5BF6614();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4 & 1;
  sub_1E5B5F5EC();
  v18 = sub_1E5BF6D34();
  v25 = v24;
  v24[1] = v32;
  v19 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040790, &unk_1E5C04460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5B5FC8C(&qword_1ED040798, &qword_1ED040790, &unk_1E5C04460);
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
  v20 = v26;
  v21 = v29;
  v22 = v28;
  sub_1E5BF6B04();
  sub_1E5B7AD08(v21, v22, v20 & 1);
}

uint64_t sub_1E5BD68D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, _BYTE *a4@<X8>)
{
  v40 = a3;
  v41 = a2;
  v39 = a1;
  v43 = a4;
  v4 = sub_1E5BF6494();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v36 - v23;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v12 + 48))(v24, 1, v11);
  if (result != 1)
  {
    sub_1E5B7AD6C(v24, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
    sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v27 = v42;
    (*(v42 + 56))(v18, 0, 1, v4);
    v28 = *(v7 + 48);
    sub_1E5B7ADDC(v20, v10);
    sub_1E5B7ADDC(v18, &v10[v28]);
    v29 = *(v27 + 48);
    if (v29(v10, 1, v4) == 1)
    {
      sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v20, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v29(&v10[v28], 1, v4) == 1)
      {
        result = sub_1E5B5F804(v10, &qword_1ED03E5E8, &unk_1E5BF9600);
        v30 = 1;
LABEL_10:
        v26 = v30 & 1;
        goto LABEL_11;
      }
    }

    else
    {
      v31 = v38;
      sub_1E5B7ADDC(v10, v38);
      if (v29(&v10[v28], 1, v4) != 1)
      {
        v32 = &v10[v28];
        v33 = v37;
        (*(v27 + 32))(v37, v32, v4);
        sub_1E5B7AE4C();
        v34 = v27;
        v30 = sub_1E5BF6F14();
        v35 = *(v34 + 8);
        v35(v33, v4);
        sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v20, &qword_1ED03E5E8, &unk_1E5BF9600);
        v35(v31, v4);
        result = sub_1E5B5F804(v10, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_10;
      }

      sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v20, &qword_1ED03E5E8, &unk_1E5BF9600);
      (*(v27 + 8))(v31, v4);
    }

    result = sub_1E5B5F804(v10, &qword_1ED03E790, &qword_1E5BF9150);
    v30 = 0;
    goto LABEL_10;
  }

  v26 = 0;
LABEL_11:
  *v43 = v26;
  return result;
}

uint64_t sub_1E5BD6E48(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13[-v8];
  sub_1E5BF65D4();
  v10 = sub_1E5BF65E4();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  v14 = a1;
  v15 = a2;
  v16 = a3 & 1;
  sub_1E5B5F5EC();
  return sub_1E5BF6C74();
}

uint64_t sub_1E5BD6FA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

uint64_t sub_1E5BD7068@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1E5BD7250@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1E5BD7468@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5BD7250(a1);
}

uint64_t sub_1E5BD7474()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1E5BD6FA4();
}

uint64_t sub_1E5BD7480@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5BD7068(a1);
}

__n128 StartWorkoutButtonEnvironment.init(requireNewSessionsAllowed:resolveWorkoutDetail:fetchResumeTime:fetchSwappablePlannedWorkoutTitle:fetchFuturePlannedWorkoutDate:requestStartWorkout:requestStartWorkoutSwappingPlannedWorkout:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

uint64_t sub_1E5BD74D0()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6570704177656976;
  }
}

uint64_t sub_1E5BD7538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BD7CE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BD7560(uint64_t a1)
{
  v2 = sub_1E5BD7AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD759C(uint64_t a1)
{
  v2 = sub_1E5BD7AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BD75D8(uint64_t a1)
{
  v2 = sub_1E5BD7B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD7614(uint64_t a1)
{
  v2 = sub_1E5BD7B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BD7650(uint64_t a1)
{
  v2 = sub_1E5BD7B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD768C(uint64_t a1)
{
  v2 = sub_1E5BD7B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BD76C8(uint64_t a1)
{
  v2 = sub_1E5BD7BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD7704(uint64_t a1)
{
  v2 = sub_1E5BD7BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingButtonAction.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0407A0, &qword_1E5C04520);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0407A8, &qword_1E5C04528);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0407B0, &qword_1E5C04530);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0407B8, &qword_1E5C04538);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BD7AC0();
  sub_1E5BF7524();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1E5BD7B68();
      sub_1E5BF7394();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1E5BD7B14();
      v21 = v27;
      sub_1E5BF7394();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1E5BD7BBC();
    sub_1E5BF7394();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

unint64_t sub_1E5BD7AC0()
{
  result = qword_1ED0407C0;
  if (!qword_1ED0407C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407C0);
  }

  return result;
}

unint64_t sub_1E5BD7B14()
{
  result = qword_1ED0407C8;
  if (!qword_1ED0407C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407C8);
  }

  return result;
}

unint64_t sub_1E5BD7B68()
{
  result = qword_1ED0407D0;
  if (!qword_1ED0407D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407D0);
  }

  return result;
}

unint64_t sub_1E5BD7BBC()
{
  result = qword_1ED0407D8;
  if (!qword_1ED0407D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407D8);
  }

  return result;
}

uint64_t sub_1E5BD7C28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5BD7E08(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SharingButtonAction.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BD7CE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C086B0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5C086D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5BD7E08(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040830, &qword_1E5C04968);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040838, &qword_1E5C04970);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040840, &qword_1E5C04978);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040848, &unk_1E5C04980);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E5BD7AC0();
  v18 = v39;
  sub_1E5BF7514();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1E5BF7374();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1E5B7FB04();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1E5BD7B68();
          sub_1E5BF72C4();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_1E5BD7B14();
        v29 = v15;
        sub_1E5BF72C4();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1E5BD7BBC();
        v29 = v15;
        sub_1E5BF72C4();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1E5BF7284();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v27 = &type metadata for SharingButtonAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

unint64_t sub_1E5BD837C()
{
  result = qword_1ED0407E0;
  if (!qword_1ED0407E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407E0);
  }

  return result;
}

unint64_t sub_1E5BD8424()
{
  result = qword_1ED0407E8;
  if (!qword_1ED0407E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407E8);
  }

  return result;
}

unint64_t sub_1E5BD847C()
{
  result = qword_1ED0407F0;
  if (!qword_1ED0407F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407F0);
  }

  return result;
}

unint64_t sub_1E5BD84D4()
{
  result = qword_1ED0407F8;
  if (!qword_1ED0407F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0407F8);
  }

  return result;
}

unint64_t sub_1E5BD852C()
{
  result = qword_1ED040800;
  if (!qword_1ED040800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040800);
  }

  return result;
}

unint64_t sub_1E5BD8584()
{
  result = qword_1ED040808;
  if (!qword_1ED040808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040808);
  }

  return result;
}

unint64_t sub_1E5BD85DC()
{
  result = qword_1ED040810;
  if (!qword_1ED040810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040810);
  }

  return result;
}

unint64_t sub_1E5BD8634()
{
  result = qword_1ED040818;
  if (!qword_1ED040818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040818);
  }

  return result;
}

unint64_t sub_1E5BD868C()
{
  result = qword_1ED040820;
  if (!qword_1ED040820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040820);
  }

  return result;
}

unint64_t sub_1E5BD86E4()
{
  result = qword_1ED040828;
  if (!qword_1ED040828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040828);
  }

  return result;
}

uint64_t SharingButtonEnvironment.init(resolveSharingDetail:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1E5BD8740()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t StartWorkoutModalPresentation.init(store:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t StartWorkoutModalPresentation.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040850, &qword_1E5C04A00);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040858, &qword_1E5C04A08) + 36);
  *v9 = sub_1E5BD8968;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040860, &qword_1E5C04A10) + 36);
  *v11 = sub_1E5BD8968;
  *(v11 + 8) = v10;
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040868, &qword_1E5C04A18) + 36);
  *v13 = sub_1E5BD8968;
  *(v13 + 8) = v12;
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v5;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040870, &qword_1E5C04A20) + 36);
  *v15 = sub_1E5BD8968;
  *(v15 + 8) = v14;
  *(v15 + 16) = 0;
  return swift_retain_n();
}

uint64_t sub_1E5BD8970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040850, &qword_1E5C04A00);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040858, &qword_1E5C04A08) + 36);
  *v9 = sub_1E5BD8FF8;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040860, &qword_1E5C04A10) + 36);
  *v11 = sub_1E5BD8FF8;
  *(v11 + 8) = v10;
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040868, &qword_1E5C04A18) + 36);
  *v13 = sub_1E5BD8FF8;
  *(v13 + 8) = v12;
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v5;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040870, &qword_1E5C04A20) + 36);
  *v15 = sub_1E5BD8FF8;
  *(v15 + 8) = v14;
  *(v15 + 16) = 0;
  return swift_retain_n();
}

uint64_t View.startWorkoutModalPresentation(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;

  MEMORY[0x1E6937280](v7, a3, &type metadata for StartWorkoutModalPresentation, a4);
}

unint64_t sub_1E5BD8BC0()
{
  result = qword_1EE2C6360;
  if (!qword_1EE2C6360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040870, &qword_1E5C04A20);
    sub_1E5BD8C4C();
    sub_1E5BD8F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6360);
  }

  return result;
}

unint64_t sub_1E5BD8C4C()
{
  result = qword_1EE2C6368;
  if (!qword_1EE2C6368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040868, &qword_1E5C04A18);
    sub_1E5BD8CD8();
    sub_1E5BD8EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6368);
  }

  return result;
}

unint64_t sub_1E5BD8CD8()
{
  result = qword_1EE2C6378;
  if (!qword_1EE2C6378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040860, &qword_1E5C04A10);
    sub_1E5BD8D64();
    sub_1E5BD8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6378);
  }

  return result;
}

unint64_t sub_1E5BD8D64()
{
  result = qword_1EE2C63A8;
  if (!qword_1EE2C63A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040858, &qword_1E5C04A08);
    sub_1E5BD8DF0();
    sub_1E5BD8E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C63A8);
  }

  return result;
}

unint64_t sub_1E5BD8DF0()
{
  result = qword_1EE2C6318;
  if (!qword_1EE2C6318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040850, &qword_1E5C04A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6318);
  }

  return result;
}

unint64_t sub_1E5BD8E54()
{
  result = qword_1EE2C7258[0];
  if (!qword_1EE2C7258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C7258);
  }

  return result;
}

unint64_t sub_1E5BD8EA8()
{
  result = qword_1EE2C65D8[0];
  if (!qword_1EE2C65D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C65D8);
  }

  return result;
}

unint64_t sub_1E5BD8EFC()
{
  result = qword_1EE2C6548[0];
  if (!qword_1EE2C6548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C6548);
  }

  return result;
}

unint64_t sub_1E5BD8F50()
{
  result = qword_1EE2C6470;
  if (!qword_1EE2C6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6470);
  }

  return result;
}

unint64_t sub_1E5BD8FA4()
{
  result = qword_1EE2C65D0;
  if (!qword_1EE2C65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C65D0);
  }

  return result;
}

uint64_t CondensedVStack.init(limit:height:spacing:condensedHeight:condensedSpacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t CondensedVStack.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22[3] = a2;
  v8 = sub_1E5BF66C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v14;
  v16 = *v6;
  v17 = v6[1];
  v18 = v6[2];
  v19 = v6[3];
  v20 = v6[4];
  sub_1E5BDA7A4(&qword_1EE2C63B8);
  sub_1E5BF7104();
  sub_1E5BF7144();
  sub_1E5BF7134();
  sub_1E5BF7104();
  sub_1E5BF7144();
  sub_1E5BF7134();
  sub_1E5BF7104();
  sub_1E5BF7144();
  if (sub_1E5BF7134() >= v16)
  {
    (*(v9 + 16))(v13, a5, v8);
    sub_1E5BD92E0(1);
    sub_1E5BF7104();
    sub_1E5BF7144();
    sub_1E5BF7134();
    return (*(v9 + 8))(v15, v8);
  }

  else
  {
    sub_1E5BF7104();
    sub_1E5BF7144();
    return sub_1E5BF7134();
  }
}

uint64_t sub_1E5BD92E0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  v3 = sub_1E5BF66C4();
  sub_1E5BDA7A4(&qword_1EE2C63B8);
  result = sub_1E5BF7114();
  if (__OFSUB__(result, v2))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1E5BF7104();
  sub_1E5BF7144();
  sub_1E5BF7124();
  if (v5)
  {
    sub_1E5BF7144();
  }

  else
  {
    v7 = v4;
  }

  result = sub_1E5BF7104();
  if (v7 >= v6)
  {
    sub_1E5BF7184();
    return (*(*(v3 - 8) + 8))(v1, v3);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1E5BD9444(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1E5BF66C4();
    sub_1E5BDA7A4(&qword_1EE2C63B8);
    sub_1E5BF7144();
    sub_1E5BF7104();
    sub_1E5BDA7A4(&qword_1ED0408A0);
    sub_1E5BF6F04();
    if (v4)
    {
      sub_1E5BF7104();
    }

    else
    {
      v6 = v3;
    }

    result = sub_1E5BF7104();
    if (v6 >= v5)
    {
      sub_1E5BF7184();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5BD95A4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1E5BF66C4();
    sub_1E5BDA7A4(&qword_1EE2C63B8);
    sub_1E5BF7104();
    sub_1E5BF7144();
    sub_1E5BF7124();
    if (v4)
    {
      sub_1E5BF7144();
    }

    else
    {
      v6 = v3;
    }

    result = sub_1E5BF7144();
    if (v5 >= v6)
    {
      sub_1E5BF7184();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

void (*sub_1E5BD97C0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E5BF65A4();
  return sub_1E5BD9848;
}

void sub_1E5BD9848(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1E5BD9894(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v126 = sub_1E5BF66B4();
  v116 = *(v126 - 8);
  v11 = *(v116 + 64);
  v12 = MEMORY[0x1EEE9AC00](v126);
  *&v123 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  *&v122 = &v103 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v124 = (&v103 - v16);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040880, &unk_1E5C056B0);
  v17 = *(*(v125 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v125);
  v114 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v112 = &v103 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v113 = &v103 - v22;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040888, &qword_1E5C04BB8);
  v23 = *(*(v119 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v119);
  v26 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v115 = &v103 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v103 - v29;
  v31 = sub_1E5BF66C4();
  v120 = *(v31 - 8);
  v32 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v117 = &v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040890, &unk_1E5C056C0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v121 = &v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v103 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v103 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v103 - v44;
  v46 = *v5;
  v47 = *(v5 + 8);
  v48 = *(v5 + 16);
  v49 = *(v5 + 24);
  v50 = *(v5 + 32);
  sub_1E5BDA7A4(&qword_1EE2C63B8);
  sub_1E5BF7104();
  sub_1E5BF7144();
  v118 = a1;
  if (sub_1E5BF7134() < v46)
  {
    v51 = v120;
    v52 = v121;
    (*(v120 + 16))(v121, v118, v31);
    sub_1E5BDA734(v52, v43);
    (*(v51 + 32))(v117, v43, v31);
    sub_1E5BDA7A4(&qword_1EE2C63C0);
    sub_1E5BF7004();
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040898, &qword_1E5C055A0) + 36);
    sub_1E5BF7144();
    if (*&v26[v53] == v127[0])
    {
      v54 = v52;
      v55 = 0;
      v56 = v119;
LABEL_15:
      v76 = (v56 + 36);
LABEL_28:
      v102 = *v76;
      sub_1E5B5F804(v54, &qword_1ED040890, &unk_1E5C056C0);
      *&v26[v102] = v55;
      return sub_1E5B5F804(v26, &qword_1ED040888, &qword_1E5C04BB8);
    }

    v68 = 0;
    v124 = (v116 + 16);
    v69 = (v116 + 32);
    v122 = v47;
    v70 = v114;
    while (1)
    {
      v71 = sub_1E5BF7194();
      v72 = v123;
      v73 = v126;
      (*v124)(COERCE_DOUBLE(*&v123));
      v71(v127, 0);
      sub_1E5BF7154();
      v74 = *(v125 + 48);
      *v70 = v68;
      result = (*v69)(&v70[v74], COERCE_DOUBLE(*&v72), v73);
      v55 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      v129.origin.x = a2;
      v129.origin.y = a3;
      v129.size.width = a4;
      v129.size.height = a5;
      CGRectGetMinX(v129);
      v130.origin.x = a2;
      v130.origin.y = a3;
      v130.size.width = a4;
      v130.size.height = a5;
      CGRectGetMinY(v130);
      v131.origin.x = a2;
      v131.origin.y = a3;
      v131.size.width = a4;
      v131.size.height = a5;
      CGRectGetWidth(v131);
      sub_1E5BF6DC4();
      LOBYTE(v127[0]) = 0;
      v128 = 0;
      sub_1E5BF66A4();
      sub_1E5B5F804(v70, &qword_1ED040880, &unk_1E5C056B0);
      sub_1E5BF7144();
      ++v68;
      if (*&v26[v53] == v127[0])
      {
        v56 = v119;
        v54 = v121;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v111 = v40;
  v57 = v118;
  sub_1E5BF7104();
  sub_1E5BF7144();
  if (v46 >= sub_1E5BF7134())
  {
    v50 = v48;
  }

  sub_1E5BF7104();
  sub_1E5BF7144();
  if (v46 >= sub_1E5BF7134())
  {
    v58 = v47;
  }

  else
  {
    v58 = v49;
  }

  v59 = v120;
  v60 = *(v120 + 16);
  v61 = v117;
  v108 = v120 + 16;
  v107 = v60;
  v60(v117, v57, v31);
  sub_1E5BD9444(2);
  v109 = v45;
  sub_1E5BDA734(v45, v43);
  v62 = *(v59 + 32);
  v110 = v43;
  v120 = v59 + 32;
  v106 = v62;
  v62(v61, v43, v31);
  v105 = sub_1E5BDA7A4(&qword_1EE2C63C0);
  sub_1E5BF7004();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040898, &qword_1E5C055A0);
  v63 = *(v104 + 36);
  v114 = v31;
  sub_1E5BF7144();
  if (*&v30[v63] != v127[0])
  {
    v77 = 0;
    *&v123 = v116 + 16;
    v78 = (v116 + 32);
    v103 = v50;
    v121 = *&v58;
    v79 = v113;
    while (1)
    {
      v80 = sub_1E5BF7194();
      v81 = v124;
      v82 = v126;
      (**&v123)(v124);
      v80(v127, 0);
      sub_1E5BF7154();
      v83 = *(v125 + 48);
      *v79 = v77;
      result = (*v78)(&v79[v83], v81, v82);
      v64 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      v132.origin.x = a2;
      v132.origin.y = a3;
      v132.size.width = a4;
      v132.size.height = a5;
      CGRectGetMinX(v132);
      v133.origin.x = a2;
      v133.origin.y = a3;
      v133.size.width = a4;
      v133.size.height = a5;
      CGRectGetMinY(v133);
      v134.origin.x = a2;
      v134.origin.y = a3;
      v134.size.width = a4;
      v134.size.height = a5;
      CGRectGetWidth(v134);
      sub_1E5BF6DC4();
      LOBYTE(v127[0]) = 0;
      v128 = 0;
      sub_1E5BF66A4();
      sub_1E5B5F804(v79, &qword_1ED040880, &unk_1E5C056B0);
      sub_1E5BF7144();
      ++v77;
      if (*&v30[v63] == v127[0])
      {
        v66 = v119;
        v65 = v116;
        v67 = v118;
        goto LABEL_20;
      }
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v64 = 0;
  v65 = v116;
  v66 = v119;
  v67 = v118;
LABEL_20:
  v85 = *(v66 + 36);
  v84 = v66 + 36;
  sub_1E5B5F804(v109, &qword_1ED040890, &unk_1E5C056C0);
  *&v30[v85] = v64;
  sub_1E5B5F804(v30, &qword_1ED040888, &qword_1E5C04BB8);
  v135.origin.x = a2;
  v135.origin.y = a3;
  v135.size.width = a4;
  v135.size.height = a5;
  Width = CGRectGetWidth(v135);
  v87 = v114;
  sub_1E5BF7104();
  sub_1E5BF7144();
  result = sub_1E5BF7134();
  v88 = result - 2;
  v89 = v111;
  v90 = v117;
  v91 = v110;
  if (__OFSUB__(result, 2))
  {
    goto LABEL_32;
  }

  v119 = v84;
  v107(v117, v67, v87);
  sub_1E5BD95A4(v88);
  sub_1E5BDA734(v89, v91);
  v106(v90, v91, v87);
  v92 = v115;
  sub_1E5BF7004();
  v93 = v89;
  v94 = *(v104 + 36);
  sub_1E5BF7144();
  if (*&v92[v94] == v127[0])
  {
    v55 = 0;
    v26 = v92;
    v54 = v93;
LABEL_27:
    v76 = v119;
    goto LABEL_28;
  }

  v95 = 0;
  v124 = (v65 + 16);
  v96 = (v65 + 32);
  v123 = (Width + -20.0) * 0.5;
  v121 = *&v58;
  v97 = v112;
  while (1)
  {
    v98 = sub_1E5BF7194();
    v99 = v122;
    v100 = v126;
    (*v124)(*&v122);
    v98(v127, 0);
    sub_1E5BF7154();
    v101 = *(v125 + 48);
    *v97 = v95;
    result = (*v96)(&v97[v101], *&v99, v100);
    v55 = v95 + 1;
    if (__OFADD__(v95, 1))
    {
      break;
    }

    v136.origin.x = a2;
    v136.origin.y = a3;
    v136.size.width = a4;
    v136.size.height = a5;
    CGRectGetMinX(v136);
    v137.origin.x = a2;
    v137.origin.y = a3;
    v137.size.width = a4;
    v137.size.height = a5;
    CGRectGetMinY(v137);
    sub_1E5BF6DC4();
    LOBYTE(v127[0]) = 0;
    v128 = 0;
    sub_1E5BF66A4();
    sub_1E5B5F804(v97, &qword_1ED040880, &unk_1E5C056B0);
    sub_1E5BF7144();
    ++v95;
    if (*&v92[v94] == v127[0])
    {
      v26 = v92;
      v54 = v111;
      goto LABEL_27;
    }
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1E5BDA610()
{
  result = qword_1ED040878;
  if (!qword_1ED040878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040878);
  }

  return result;
}

unint64_t sub_1E5BDA668()
{
  result = qword_1EE2C6358;
  if (!qword_1EE2C6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6358);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5BDA6D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5BDA6F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1E5BDA734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040890, &unk_1E5C056C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BDA7A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E5BF66C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5BDA7FC()
{
  v1 = 0x6F70707553746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6E776F44746F6ELL;
  }
}

uint64_t sub_1E5BDA870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BDB908(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BDA898(uint64_t a1)
{
  v2 = sub_1E5BDADE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BDA8D4(uint64_t a1)
{
  v2 = sub_1E5BDADE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BDA910(uint64_t a1)
{
  v2 = sub_1E5BDAEE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BDA94C(uint64_t a1)
{
  v2 = sub_1E5BDAEE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BDA988(uint64_t a1)
{
  v2 = sub_1E5BDAE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BDA9C4(uint64_t a1)
{
  v2 = sub_1E5BDAE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BDAA00(uint64_t a1)
{
  v2 = sub_1E5BDAE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BDAA3C(uint64_t a1)
{
  v2 = sub_1E5BDAE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DownloadError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408A8, &qword_1E5C04BC0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408B0, &qword_1E5C04BC8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408B8, &qword_1E5C04BD0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408C0, &qword_1E5C04BD8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BDADE4();
  sub_1E5BF7524();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1E5BDAE8C();
      v12 = v26;
      sub_1E5BF7394();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1E5BDAE38();
      v12 = v29;
      sub_1E5BF7394();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1E5BDAEE0();
    sub_1E5BF7394();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1E5BDADE4()
{
  result = qword_1ED0408C8;
  if (!qword_1ED0408C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0408C8);
  }

  return result;
}

unint64_t sub_1E5BDAE38()
{
  result = qword_1ED0408D0;
  if (!qword_1ED0408D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0408D0);
  }

  return result;
}

unint64_t sub_1E5BDAE8C()
{
  result = qword_1ED0408D8;
  if (!qword_1ED0408D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0408D8);
  }

  return result;
}

unint64_t sub_1E5BDAEE0()
{
  result = qword_1ED0408E0;
  if (!qword_1ED0408E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0408E0);
  }

  return result;
}

uint64_t DownloadError.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

uint64_t DownloadError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408E8, &qword_1E5C04BE0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408F0, &qword_1E5C04BE8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0408F8, &qword_1E5C04BF0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040900, &unk_1E5C04BF8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E5BDADE4();
  v20 = v43;
  sub_1E5BF7514();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1E5BF7374();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1E5B7FB04();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1E5BF7284();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
      *v30 = &type metadata for DownloadError;
      sub_1E5BF72D4();
      sub_1E5BF7274();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1E5BDAE8C();
          sub_1E5BF72C4();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1E5BDAE38();
          v33 = v22;
          sub_1E5BF72C4();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1E5BDAEE0();
        sub_1E5BF72C4();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_1E5BDB54C()
{
  result = qword_1ED040908;
  if (!qword_1ED040908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040908);
  }

  return result;
}

unint64_t sub_1E5BDB5F4()
{
  result = qword_1ED040910;
  if (!qword_1ED040910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040910);
  }

  return result;
}

unint64_t sub_1E5BDB64C()
{
  result = qword_1ED040918;
  if (!qword_1ED040918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040918);
  }

  return result;
}

unint64_t sub_1E5BDB6A4()
{
  result = qword_1ED040920;
  if (!qword_1ED040920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040920);
  }

  return result;
}

unint64_t sub_1E5BDB6FC()
{
  result = qword_1ED040928;
  if (!qword_1ED040928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040928);
  }

  return result;
}

unint64_t sub_1E5BDB754()
{
  result = qword_1ED040930;
  if (!qword_1ED040930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040930);
  }

  return result;
}

unint64_t sub_1E5BDB7AC()
{
  result = qword_1ED040938;
  if (!qword_1ED040938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040938);
  }

  return result;
}

unint64_t sub_1E5BDB804()
{
  result = qword_1ED040940;
  if (!qword_1ED040940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040940);
  }

  return result;
}

unint64_t sub_1E5BDB85C()
{
  result = qword_1ED040948;
  if (!qword_1ED040948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040948);
  }

  return result;
}

unint64_t sub_1E5BDB8B4()
{
  result = qword_1ED040950;
  if (!qword_1ED040950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040950);
  }

  return result;
}

uint64_t sub_1E5BDB908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6E776F44746F6ELL && a2 == 0xED0000646564616FLL;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C086F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5BDBA34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingButtonFeature.TaskIdentifier();
  v5 = *(*(v4 - 8) + 16);
  v5(v7, a1, v4);
  v5(v8, a2, v4);
  LOBYTE(a2) = MEMORY[0x1E6937980](v7, v8);
  sub_1E5B6E230(v8);
  sub_1E5B6E230(v7);
  return a2 & 1;
}

uint64_t sub_1E5BDBAF8(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 16))(v4, v2, a2);
  MEMORY[0x1E6937C10](0);
  sub_1E5BF7244();
  return sub_1E5B6E230(v4);
}

uint64_t sub_1E5BDBB74(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5BDBAF8(v3, a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BDBBC4(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  sub_1E5BDBAF8(v4, a2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BDBC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1E5BDBA34(a1, a2);
}

__n128 SharingButtonFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t SharingButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v59 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040958, &unk_1E5C05090);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - v12;
  v14 = *(*(a5 + 16) - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v51 - v20;
  if (a4)
  {
    v23 = *(a5 + 24);
    if (a4 == 1)
    {
      v24 = type metadata accessor for SharingButtonState();
      v25 = *(v24 + 48);
      sub_1E5BBAFA8(a2 + v25);
      v26 = *(v24 + 40);
      v27 = sub_1E5BF6494();
      v28 = *(v27 - 8);
      (*(v28 + 16))(a2 + v25, a2 + v26, v27);
      (*(v28 + 56))(a2 + v25, 0, 1, v27);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
      v30 = *(*(v29 - 8) + 56);
      v31 = a2 + v25;
      v32 = 0;
    }

    else
    {
      v50 = *(type metadata accessor for SharingButtonState() + 48);
      sub_1E5BBAFA8(a2 + v50);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
      v30 = *(*(v29 - 8) + 56);
      v31 = a2 + v50;
      v32 = 1;
    }

    return v30(v31, v32, 1, v29);
  }

  else
  {
    v33 = v5[1];
    v55 = *v5;
    v56 = v33;
    v34 = *(v14 + 16);
    v58 = v18;
    v35 = v19;
    v53 = v21;
    v34(&v51 - v20, a2, v19);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v57 = v36[12];
    v37 = v36[20];
    v51 = v36[16];
    v52 = v37;
    v54 = &v13[v36[24]];
    v38 = *(a5 + 24);
    v39 = *(v38 + 24);
    sub_1E5BF72B4();
    v40 = type metadata accessor for SharingButtonFeature.TaskIdentifier();
    swift_getWitnessTable();
    sub_1E5BF72B4();
    (*(*(v40 - 8) + 8))(v60, v40);
    v41 = *MEMORY[0x1E6999B50];
    v42 = sub_1E5BF6E24();
    (*(*(v42 - 8) + 104))(&v13[v51], v41, v42);
    v43 = *MEMORY[0x1E6999B40];
    v44 = sub_1E5BF6E14();
    (*(*(v44 - 8) + 104))(&v13[v52], v43, v44);
    v34(v17, v22, v35);
    v45 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v46 = swift_allocObject();
    *(v46 + 2) = v35;
    *(v46 + 3) = v38;
    v47 = v56;
    *(v46 + 4) = v55;
    *(v46 + 5) = v47;
    (*(v14 + 32))(&v46[v45], v17, v35);
    v48 = v54;
    *v54 = &unk_1E5C050A8;
    *(v48 + 1) = v46;

    sub_1E5B6C8B8();
    (*(v53 + 104))(v13, *MEMORY[0x1E6999AD8], v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED040960, &qword_1E5C050B0);
    sub_1E5BF7034();
    return (*(v14 + 8))(v22, v35);
  }
}

uint64_t sub_1E5BDC198(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E5BF7084();
  v4[3] = sub_1E5BF7074();
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1E5B6F8E4;

  return v10(a4);
}

uint64_t sub_1E5BDC2B4(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[2] - 8) + 80) + 48) & ~*(*(v1[2] - 8) + 80);
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5B6D9A0;

  return sub_1E5BDC198(a1, v6, v7, v1 + v5);
}

unint64_t sub_1E5BDC3C4()
{
  result = qword_1EE2C7248;
  if (!qword_1EE2C7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7248);
  }

  return result;
}

unint64_t sub_1E5BDC41C()
{
  result = qword_1EE2C7250;
  if (!qword_1EE2C7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7250);
  }

  return result;
}

uint64_t sub_1E5BDC48C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5BDC4E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5BDC51C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E5BDC564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5BDC5D0(uint64_t a1)
{
  v2 = sub_1E5BDC898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BDC60C(uint64_t a1)
{
  v2 = sub_1E5BDC898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BDC648(uint64_t a1)
{
  v2 = sub_1E5BDC8EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BDC684(uint64_t a1)
{
  v2 = sub_1E5BDC8EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicLibraryButtonAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0409E8, &qword_1E5C05230);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0409F0, &qword_1E5C05238);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BDC898();
  sub_1E5BF7524();
  sub_1E5BDC8EC();
  sub_1E5BF7394();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1E5BDC898()
{
  result = qword_1ED0409F8;
  if (!qword_1ED0409F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0409F8);
  }

  return result;
}

unint64_t sub_1E5BDC8EC()
{
  result = qword_1ED040A00;
  if (!qword_1ED040A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A00);
  }

  return result;
}

uint64_t DynamicLibraryButtonAction.hashValue.getter()
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](0);
  return sub_1E5BF7504();
}

uint64_t DynamicLibraryButtonAction.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A08, &qword_1E5C05240);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A10, &unk_1E5C05248);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BDC898();
  sub_1E5BF7514();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_1E5BF7374();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_1E5B7FB14() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_1E5BF7284();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v19 = &type metadata for DynamicLibraryButtonAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1E5BDC8EC();
  sub_1E5BF72C4();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1E5BDCD10(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0409E8, &qword_1E5C05230);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0409F0, &qword_1E5C05238);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BDC898();
  sub_1E5BF7524();
  sub_1E5BDC8EC();
  sub_1E5BF7394();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1E5BDCEEC()
{
  result = qword_1ED040A18;
  if (!qword_1ED040A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A18);
  }

  return result;
}

unint64_t sub_1E5BDCF74()
{
  result = qword_1ED040A20;
  if (!qword_1ED040A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A20);
  }

  return result;
}

unint64_t sub_1E5BDCFCC()
{
  result = qword_1ED040A28;
  if (!qword_1ED040A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A28);
  }

  return result;
}

unint64_t sub_1E5BDD024()
{
  result = qword_1ED040A30;
  if (!qword_1ED040A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A30);
  }

  return result;
}

unint64_t sub_1E5BDD07C()
{
  result = qword_1ED040A38;
  if (!qword_1ED040A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A38);
  }

  return result;
}

unint64_t sub_1E5BDD0D4()
{
  result = qword_1ED040A40;
  if (!qword_1ED040A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A40);
  }

  return result;
}

uint64_t RemoveLibraryItemEnvironment.init(resolveBookmark:resolveDownloadStatus:requestRemoveBookmark:cancelDownload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[4] = a5;
  a9[5] = a6;
  a9[2] = a3;
  a9[3] = a4;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_1E5BDD13C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t HorizontalOverflowLayout.init(limit:horizontalSpacing:verticalSpacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

double HorizontalOverflowLayout.sizeThatFits(proposal:subviews:cache:)(char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v66) = a2;
  v64 = a1;
  v67 = sub_1E5BF66B4();
  v60 = *(v67 - 8);
  v7 = *(v60 + 64);
  v8 = MEMORY[0x1EEE9AC00](v67);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v56 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040898, &qword_1E5C055A0);
  v12 = *(*(v63 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v63);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - v16;
  v18 = sub_1E5BF66C4();
  v65 = *(v18 - 8);
  v19 = v65[8];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v56 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v56 - v26;
  v28 = *v5;
  v29 = *(v5 + 1);
  v30 = v5[2];
  if (LOBYTE(v66))
  {
    v31 = 10.0;
  }

  else
  {
    v31 = *&v64;
  }

  v69 = *v5;
  v70 = v29;
  v71 = v30;
  sub_1E5BDD850(a5);
  v69 = v28;
  v70 = v29;
  v71 = v30;
  v64 = v25;
  sub_1E5BDD9CC(a5, v25);
  v32 = v65[2];
  v62 = v27;
  v58 = v65 + 2;
  v57 = v32;
  v32(v22, v27, v18);
  v33 = sub_1E5BDA7A4(&qword_1EE2C63C0);
  v59 = v22;
  v56 = v33;
  sub_1E5BF7004();
  v34 = *(v63 + 36);
  sub_1E5BDA7A4(&qword_1EE2C63B8);
  sub_1E5BF7144();
  v35 = 0.0;
  if (*&v17[v34] != *&v69)
  {
    v36 = (v60 + 16);
    v66 = v31;
    v37 = (v60 + 8);
    do
    {
      v38 = sub_1E5BF7194();
      v39 = v67;
      (*v36)(v11);
      v38(&v69, 0);
      sub_1E5BF7154();
      LOBYTE(v69) = 0;
      v68 = 1;
      sub_1E5BF6694();
      v41 = v40;
      (*v37)(v11, v39);
      if (v35 <= v41)
      {
        v35 = v41;
      }

      sub_1E5BF7144();
    }

    while (*&v17[v34] != *&v69);
  }

  sub_1E5B5F804(v17, &qword_1ED040898, &qword_1E5C055A0);
  v57(v59, v64, v18);
  sub_1E5BF7004();
  v42 = *(v63 + 36);
  sub_1E5BF7144();
  v43 = v61;
  if (*&v15[v42] != *&v69)
  {
    v44 = (v60 + 16);
    v45 = (v60 + 8);
    v46 = 0.0;
    v47 = v67;
    do
    {
      v48 = sub_1E5BF7194();
      (*v44)(v43);
      v48(&v69, 0);
      sub_1E5BF7154();
      LOBYTE(v69) = 0;
      v68 = 1;
      sub_1E5BF6694();
      v50 = v49;
      (*v45)(v43, v47);
      v46 = v46 + v30 + v50;
      sub_1E5BF7144();
    }

    while (*&v15[v42] != *&v69);
  }

  sub_1E5B5F804(v15, &qword_1ED040898, &qword_1E5C055A0);
  v51 = v62;
  sub_1E5BF7104();
  sub_1E5BF7144();
  v52 = sub_1E5BF7134();
  v53 = v64;
  if (v52 > 0)
  {
    sub_1E5BF7104();
    sub_1E5BF7144();
    sub_1E5BF7134();
  }

  sub_1E5BF7104();
  sub_1E5BF7144();
  sub_1E5BF7134();
  v54 = v65[1];
  v54(v53, v18);
  v54(v51, v18);
  return v31;
}

uint64_t sub_1E5BDD850(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E5BF66C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  if (*v2 < 1)
  {
    (*(v5 + 16))(v8, a1, v4);
    v11 = 0;
  }

  else
  {
    sub_1E5BDA7A4(&qword_1EE2C63B8);
    sub_1E5BF7104();
    sub_1E5BF7144();
    v10 = sub_1E5BF7134();
    (*(v5 + 16))(v8, a1, v4);
    if (v10 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  return sub_1E5BDDD74(v11);
}

uint64_t sub_1E5BDD9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  if (*v3 < 1)
  {
    v9 = sub_1E5BF66C4();
    v10 = *(*(v9 - 8) + 16);

    return v10(a2, a1, v9);
  }

  else
  {
    v7 = sub_1E5BF66C4();
    sub_1E5BDA7A4(&qword_1EE2C63B8);
    sub_1E5BF7104();
    sub_1E5BF7144();
    if (sub_1E5BF7134() >= v6)
    {
      result = sub_1E5BF7144();
      if (v11 < v6)
      {
        __break(1u);
      }

      else
      {
        return sub_1E5BF7184();
      }
    }

    else
    {
      return (*(*(v7 - 8) + 16))(a2, a1, v7);
    }
  }

  return result;
}

uint64_t sub_1E5BDDB60(uint64_t a1)
{
  v3 = sub_1E5BF66C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (*v1 < 1)
  {
    sub_1E5BDA7A4(&qword_1EE2C63B8);
    sub_1E5BF7104();
    sub_1E5BF7144();
    return sub_1E5BF7134();
  }

  else
  {
    v11 = *(v1 + 8);
    sub_1E5BDA7A4(&qword_1EE2C63B8);
    sub_1E5BF7104();
    sub_1E5BF7144();
    if (sub_1E5BF7134() >= v8)
    {
      v12 = v8;
      v13 = v11;
      sub_1E5BDD9CC(a1, v7);
      sub_1E5BF7104();
      sub_1E5BF7144();
      v10 = sub_1E5BF7134();
      (*(v4 + 8))(v7, v3);
      result = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1E5BDDD74(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1E5BF66C4();
    sub_1E5BDA7A4(&qword_1EE2C63B8);
    sub_1E5BF7104();
    sub_1E5BF7144();
    sub_1E5BF7124();
    if (v4)
    {
      sub_1E5BF7144();
    }

    else
    {
      v6 = v3;
    }

    result = sub_1E5BF7104();
    if (v6 >= v5)
    {
      sub_1E5BF7184();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

void (*sub_1E5BDDECC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E5BF65A4();
  return sub_1E5BD9848;
}

void sub_1E5BDDF54(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v107 = sub_1E5BF66B4();
  v93 = *(v107 - 8);
  v11 = *(v93 + 64);
  v12 = MEMORY[0x1EEE9AC00](v107);
  v103 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v104 = (&v82 - v14);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040880, &unk_1E5C056B0);
  v15 = *(*(v106 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v106);
  v83 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v82 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040888, &qword_1E5C04BB8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v82 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040890, &unk_1E5C056C0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v99 = &v82 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v97 = &v82 - v34;
  v35 = sub_1E5BF66C4();
  v96 = *(v35 - 8);
  v36 = v96[8];
  v37 = MEMORY[0x1EEE9AC00](v35);
  v98 = &v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v82 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v44 = *(v5 + 8);
  v43 = *(v5 + 16);
  v109 = *v5;
  v42 = v109;
  v110 = v44;
  v111 = v43;
  v105 = &v82 - v45;
  sub_1E5BDD850(a1);
  v109 = v42;
  v110 = v44;
  v111 = v43;
  v95 = v41;
  sub_1E5BDD9CC(a1, v41);
  v109 = v42;
  v110 = v44;
  v111 = v43;
  v46 = sub_1E5BDDB60(a1);
  v112.origin.x = a2;
  v112.origin.y = a3;
  v112.size.width = a4;
  v112.size.height = a5;
  Height = CGRectGetHeight(v112);
  if (__OFSUB__(v46, 1))
  {
    goto LABEL_18;
  }

  v48 = Height;
  v92 = v24;
  v113.origin.x = a2;
  v113.origin.y = a3;
  v113.size.width = a4;
  v113.size.height = a5;
  Width = CGRectGetWidth(v113);
  if (__OFSUB__(v42, 1))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v50 = Width;
  v51 = (v48 - v43 * (v46 - 1)) / v46;
  v52 = v96;
  v53 = v96[2];
  v54 = v97;
  v90 = v96 + 2;
  v89 = v53;
  v53(v97, v105, v35);
  v55 = v54;
  v56 = v99;
  sub_1E5BDA734(v55, v99);
  v57 = v52[4];
  v88 = v52 + 4;
  v87 = v57;
  v57(v98, v56, v35);
  v86 = sub_1E5BDA7A4(&qword_1EE2C63C0);
  sub_1E5BF7004();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040898, &qword_1E5C055A0);
  v58 = *(v85 + 36);
  sub_1E5BDA7A4(&qword_1EE2C63B8);
  sub_1E5BF7144();
  v59 = *&v26[v58] == v109;
  v84 = v20;
  v94 = v31;
  v91 = v51;
  if (!v59)
  {
    v61 = 0;
    v102 = (v93 + 16);
    v62 = (v93 + 32);
    v100 = v51;
    v101 = (v50 - v44 * (v42 - 1)) / v42;
    while (1)
    {
      v63 = sub_1E5BF7194();
      v64 = v19;
      v65 = v104;
      v66 = v107;
      (*v102)(v104);
      v63(&v109, 0);
      sub_1E5BF7154();
      v67 = *(v106 + 48);
      *v64 = v61;
      (*v62)(&v64[v67], v65, v66);
      v60 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      v114.origin.x = a2;
      v114.origin.y = a3;
      v114.size.width = a4;
      v114.size.height = a5;
      CGRectGetMinX(v114);
      v115.origin.x = a2;
      v115.origin.y = a3;
      v115.size.width = a4;
      v115.size.height = a5;
      CGRectGetMinY(v115);
      sub_1E5BF6DC4();
      LOBYTE(v109) = 0;
      v108 = 0;
      sub_1E5BF66A4();
      sub_1E5B5F804(v64, &qword_1ED040880, &unk_1E5C056B0);
      sub_1E5BF7144();
      ++v61;
      v19 = v64;
      if (*&v26[v58] == v109)
      {
        v20 = v84;
        v31 = v94;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v60 = 0;
LABEL_9:
  v68 = *(v20 + 36);
  sub_1E5B5F804(v97, &qword_1ED040890, &unk_1E5C056C0);
  *&v26[v68] = v60;
  sub_1E5B5F804(v26, &qword_1ED040888, &qword_1E5C04BB8);
  v69 = v95;
  v89(v31, v95, v35);
  v70 = v99;
  sub_1E5BDA734(v31, v99);
  v87(v98, v70, v35);
  v71 = v92;
  sub_1E5BF7004();
  v72 = *(v85 + 36);
  sub_1E5BF7144();
  if (*(v71 + v72) != v109)
  {
    v74 = 0;
    v104 = (v93 + 16);
    v102 = (v93 + 32);
    v101 = v91;
    v75 = v83;
    while (1)
    {
      v76 = sub_1E5BF7194();
      v77 = v103;
      v78 = v107;
      (*v104)(v103);
      v76(&v109, 0);
      sub_1E5BF7154();
      v79 = *(v106 + 48);
      *v75 = v74;
      (*v102)(&v75[v79], v77, v78);
      v73 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      v116.origin.x = a2;
      v116.origin.y = a3;
      v116.size.width = a4;
      v116.size.height = a5;
      CGRectGetMinX(v116);
      v117.origin.x = a2;
      v117.origin.y = a3;
      v117.size.width = a4;
      v117.size.height = a5;
      CGRectGetMinY(v117);
      sub_1E5BF7104();
      sub_1E5BF7144();
      sub_1E5BF7134();
      v118.origin.x = a2;
      v118.origin.y = a3;
      v118.size.width = a4;
      v118.size.height = a5;
      CGRectGetWidth(v118);
      sub_1E5BF6DC4();
      LOBYTE(v109) = 0;
      v108 = 0;
      sub_1E5BF66A4();
      sub_1E5B5F804(v75, &qword_1ED040880, &unk_1E5C056B0);
      sub_1E5BF7144();
      ++v74;
      if (*(v71 + v72) == v109)
      {
        v20 = v84;
        v69 = v95;
        goto LABEL_15;
      }
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v73 = 0;
LABEL_15:
  v80 = *(v20 + 36);
  sub_1E5B5F804(v94, &qword_1ED040890, &unk_1E5C056C0);
  v81 = v96[1];
  v81(v69, v35);
  *(v71 + v80) = v73;
  sub_1E5B5F804(v71, &qword_1ED040888, &qword_1E5C04BB8);
  v81(v105, v35);
}

unint64_t sub_1E5BDE9C8()
{
  result = qword_1EE2C6D38[0];
  if (!qword_1EE2C6D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C6D38);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HorizontalOverflowLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HorizontalOverflowLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1E5BDEA8C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 56);
  type metadata accessor for DynamicLibraryButtonFeature();
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();

  return sub_1E5BF6614();
}

uint64_t sub_1E5BDEB3C(uint64_t a1)
{
  v1 = *(a1 + 100);
  v2 = *(a1 + 24);
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6544();
  sub_1E5BF6534();
  return v4;
}

uint64_t sub_1E5BDEB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  *(v19 + 48) = a7;
  *(v19 + 56) = a8;
  *(v19 + 64) = a9;
  *(v19 + 80) = a10;
  *(v19 + 88) = a11;
  *(v19 + 96) = a1;
  *(v19 + 104) = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E5BF6524();
}

uint64_t (*sub_1E5BDEC6C(uint64_t a1))(char a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 32);
  swift_getFunctionTypeMetadata1();
  sub_1E5BF6544();
  sub_1E5BF6534();
  v4 = swift_allocObject();
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 32) = v3;
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 56) = *(a1 + 56);
  *(v4 + 72) = *(a1 + 72);
  *(v4 + 88) = *(a1 + 88);
  *(v4 + 96) = v6;
  return sub_1E5BE1384;
}

uint64_t sub_1E5BDED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  *(v19 + 48) = a7;
  *(v19 + 56) = a8;
  *(v19 + 64) = a9;
  *(v19 + 80) = a10;
  *(v19 + 88) = a11;
  *(v19 + 96) = a1;
  *(v19 + 104) = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A48, &qword_1E5C056D0);
  swift_getFunctionTypeMetadata1();
  return sub_1E5BF6524();
}

uint64_t (*sub_1E5BDEE24(uint64_t a1))(uint64_t a1)
{
  v2 = *(a1 + 108);
  v3 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A48, &qword_1E5C056D0);
  swift_getFunctionTypeMetadata1();
  sub_1E5BF6544();
  sub_1E5BF6534();
  v4 = swift_allocObject();
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 40) = v3;
  v5 = *(a1 + 64);
  *(v4 + 48) = *(a1 + 48);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 80);
  *(v4 + 96) = v7;
  return sub_1E5BE13BC;
}

uint64_t sub_1E5BDEEEC(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 48);
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6544();
  sub_1E5BF6534();
  return v4;
}

uint64_t DynamicLibraryButton.init(store:bookmarkViewBuilder:bookmarkedViewBuilder:downloadingViewBuilder:downloadedViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a10;
  *(v19 + 24) = a11;
  *(v19 + 32) = a12;
  *(v19 + 40) = a13;
  *(v19 + 48) = a14;
  *(v19 + 56) = a15;
  *(v19 + 64) = a16;
  *(v19 + 80) = a17;
  *(v19 + 88) = a18;
  *(v19 + 96) = a1;
  *(v19 + 104) = a2;
  type metadata accessor for DynamicLibraryButtonFeature();

  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  *a7 = sub_1E5BF6604();
  *(a7 + 8) = v20;
  *(a7 + 16) = v21 & 1;
  v22 = type metadata accessor for DynamicLibraryButton();
  v23 = v22[25];

  swift_getFunctionTypeMetadata0();
  sub_1E5BF6524();
  v24 = v22[26];

  sub_1E5BDEB8C(a3, a4, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  v25 = v22[27];

  sub_1E5BDED34(a5, a6, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  v26 = v22[28];
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6524();
}

uint64_t sub_1E5BDF21C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  return v1();
}

uint64_t DynamicLibraryButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v45 = *(a1 - 8);
  v52 = *(v45 + 64);
  v4 = (MEMORY[0x1EEE9AC00])(a1);
  v47 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v4 + 40);
  v43 = &v69;
  v55 = *(v4 + 24);
  v54 = *(v4 + 32);
  sub_1E5BF6874();
  v38 = *(a1 + 48);
  v6 = v38;
  sub_1E5BF6874();
  v40 = sub_1E5BF6874();
  v41 = sub_1E5BF6874();
  sub_1E5BF6874();
  v44 = sub_1E5BF6BD4();
  v49 = *(v44 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v37 = &v36 - v8;
  v48 = sub_1E5BF66E4();
  v51 = *(v48 - 8);
  v9 = *(v51 + 64);
  v10 = (MEMORY[0x1EEE9AC00])(v48);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v36 - v13;
  v39 = *(a1 + 16);
  v12.i64[0] = v39;
  v14 = vzip1q_s64(v12, v55);
  v57 = v54;
  v56 = v14;
  v14.i64[0] = v6;
  v16 = *(a1 + 72);
  v15 = *(a1 + 80);
  v17 = *(a1 + 88);
  v60 = v15;
  v61 = v17;
  v62 = v2;
  v74 = v16;
  v75 = v15;
  v54 = *(a1 + 56);
  v18 = *(a1 + 64);
  v58 = vzip1q_s64(v14, v54);
  v59 = v18;
  WitnessTable = swift_getWitnessTable();
  v73 = v17;
  v19 = swift_getWitnessTable();
  v70 = v16;
  v71 = v19;
  v68 = swift_getWitnessTable();
  *v43 = v54.i64[1];
  v20 = swift_getWitnessTable();
  v66 = v54.i64[1];
  v67 = v20;
  v21 = swift_getWitnessTable();
  sub_1E5BF6BC4();
  v22 = v45;
  v23 = v47;
  (*(v45 + 16))(v47, v2, a1);
  v24 = (*(v22 + 80) + 96) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v39;
  *(v25 + 24) = v55;
  v26 = v38;
  *(v25 + 40) = v50;
  *(v25 + 48) = v26;
  *(v25 + 56) = v54;
  *(v25 + 72) = v16;
  *(v25 + 80) = v15;
  *(v25 + 88) = v17;
  (*(v22 + 32))(v25 + v24, v23, a1);
  v65 = v21;
  v27 = v44;
  v28 = swift_getWitnessTable();
  v29 = v42;
  v30 = v37;
  sub_1E5BF6B44();

  (*(v49 + 8))(v30, v27);
  v63 = v28;
  v64 = MEMORY[0x1E69805D0];
  v31 = v48;
  v32 = swift_getWitnessTable();
  v33 = v46;
  sub_1E5B64D48(v29, v31, v32);
  v34 = *(v51 + 8);
  v34(v29, v31);
  sub_1E5B64D48(v33, v31, v32);
  return (v34)(v33, v31);
}

uint64_t sub_1E5BDF82C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, char *a12)
{
  v263 = a8;
  v264 = a1;
  v260 = a7;
  v258 = a9;
  v268 = a12;
  v223 = *(a6 - 1);
  v17 = *(v223 + 64);
  v269 = a10;
  v18 = MEMORY[0x1EEE9AC00](a1);
  v222 = &v218 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v221 = &v218 - v21;
  v227 = *(v22 - 8);
  v23 = *(v227 + 64);
  v24 = MEMORY[0x1EEE9AC00](v20);
  v226 = &v218 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v225 = &v218 - v26;
  v261 = v27;
  v28 = sub_1E5BF6874();
  v229 = *(v28 - 8);
  v29 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v228 = &v218 - v30;
  v265 = v31;
  v32 = sub_1E5BF6874();
  v230 = *(v32 - 8);
  v33 = *(v230 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v231 = &v218 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v237 = &v218 - v37;
  v236 = *(a4 - 8);
  v38 = *(v236 + 64);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v220 = &v218 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v224 = &v218 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v235 = &v218 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v234 = &v218 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v243 = &v218 - v47;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  v48 = *(*(v238 - 8) + 64);
  MEMORY[0x1EEE9AC00](v238);
  v239 = &v218 - v49;
  v257 = v32;
  v50 = sub_1E5BF6874();
  v242 = *(v50 - 8);
  v51 = *(v242 + 64);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v241 = &v218 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v240 = &v218 - v54;
  v256 = v55;
  v56 = sub_1E5BF6874();
  v246 = *(v56 - 8);
  v57 = *(v246 + 64);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v245 = &v218 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v248 = &v218 - v61;
  v250 = *(a3 - 8);
  v62 = *(v250 + 64);
  v63 = MEMORY[0x1EEE9AC00](v60);
  v249 = &v218 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v262 = &v218 - v65;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  v66 = *(*(v259 - 8) + 64);
  v67 = MEMORY[0x1EEE9AC00](v259);
  v219 = &v218 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v218 = &v218 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v233 = &v218 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v232 = &v218 - v74;
  MEMORY[0x1EEE9AC00](v73);
  v251 = &v218 - v75;
  v266 = a3;
  v255 = v56;
  v76 = sub_1E5BF6874();
  v253 = *(v76 - 8);
  v254 = v76;
  v77 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v252 = &v218 - v78;
  v332[0] = a2;
  v332[1] = a3;
  v332[2] = a4;
  v332[3] = a5;
  v79 = a6;
  v80 = v260;
  v332[4] = a6;
  v332[5] = v260;
  v81 = v263;
  v82 = v268;
  v332[6] = v263;
  v332[7] = v269;
  v332[8] = a11;
  v332[9] = v268;
  v83 = type metadata accessor for DynamicLibraryButton();
  sub_1E5BDEA8C(v83);
  v244 = a2;
  v270 = a2;
  v271 = v266;
  v247 = a4;
  v272 = a4;
  v273 = v261;
  v84 = v79;
  v274 = v79;
  v275 = v80;
  v276 = v81;
  v277 = v269;
  v267 = a11;
  v85 = v82;
  v86 = v251;
  v278 = a11;
  v279 = v85;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      if ((*v86 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v88 = *v86;
      v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
      v90 = sub_1E5BF6464();
      (*(*(v90 - 8) + 8))(&v86[v89], v90);
      if (v88 != 1)
      {
LABEL_5:
        v91 = sub_1E5BDEB3C(v83);
        v92 = v249;
        v91();

        v93 = v262;
        v94 = v266;
        v95 = v81;
        sub_1E5B64D48(v92, v266, v81);
        v96 = *(v250 + 8);
        v96(v92, v94);
        sub_1E5B64D48(v93, v94, v95);
        v97 = v269;
        v330 = v269;
        v331 = v267;
        WitnessTable = swift_getWitnessTable();
        v329 = v268;
        v98 = swift_getWitnessTable();
        v326 = v97;
        v327 = v98;
        v99 = v256;
        swift_getWitnessTable();
        sub_1E5BE15D0(v92, v99, v94);
        v96(v92, v94);
        v96(v262, v94);
LABEL_38:
        v205 = v255;
        v131 = v252;
        v206 = v269;
        v324 = v269;
        v325 = v267;
        v322 = swift_getWitnessTable();
        v323 = v268;
        v207 = swift_getWitnessTable();
        v320 = v206;
        v321 = v207;
        v318 = swift_getWitnessTable();
        v130 = v263;
        v319 = v263;
        v208 = swift_getWitnessTable();
        v209 = v245;
        v210 = v248;
        sub_1E5B64D48(v248, v205, v208);
        sub_1E5BE15D0(v209, v266, v205);
        v211 = *(v246 + 8);
        v211(v209, v205);
        v211(v210, v205);
        goto LABEL_39;
      }

LABEL_7:
      v100 = sub_1E5BDEA8C(v83);
      MEMORY[0x1EEE9AC00](v100);
      v101 = v266;
      *(&v218 - 10) = v244;
      *(&v218 - 9) = v101;
      v102 = v260;
      v103 = v261;
      *(&v218 - 8) = v247;
      *(&v218 - 7) = v103;
      v262 = v84;
      *(&v218 - 6) = v84;
      *(&v218 - 5) = v102;
      v105 = v268;
      v104 = v269;
      *(&v218 - 4) = v81;
      *(&v218 - 3) = v104;
      *(&v218 - 2) = v267;
      *(&v218 - 1) = v105;
      swift_getKeyPath();
      v106 = v239;
      sub_1E5BF6E34();

      v107 = swift_getEnumCaseMultiPayload();
      if (v107 <= 2)
      {
        if (!v107)
        {
          v108 = *v106 | (*(v106 + 4) << 32);
          if ((*(v106 + 5) & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_15;
        }

        if (v107 == 1)
        {
          v108 = *v106 | (*(v106 + 4) << 32);
          v109 = *(v106 + 5);
          v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
          v111 = sub_1E5BF6464();
          (*(*(v111 - 8) + 8))(v106 + v110, v111);
          if (v109 != 1)
          {
LABEL_11:
            sub_1E5BDEE24(v83);
            LOBYTE(v332[0]) = BYTE4(v108) & 1;
            v113 = *(v112 + 96);
            v114 = *(v112 + 104);
            LODWORD(v332[0]) = v108;
            BYTE4(v332[0]) = BYTE4(v108) & 1;
            v115 = v226;
            v113(v332);

            v116 = v225;
            v117 = v261;
            v118 = v267;
            sub_1E5B64D48(v115, v261, v267);
            v119 = *(v227 + 8);
            v119(v115, v117);
            sub_1E5B64D48(v116, v117, v118);
            v120 = v228;
            v121 = v269;
            sub_1E5BE15D0(v115, v247, v117);
            v294 = v121;
            v295 = v118;
            v122 = v265;
            swift_getWitnessTable();
            sub_1E5BE14D8(v120, v122);
            (*(v229 + 8))(v120, v122);
            v119(v115, v117);
            v119(v116, v117);
LABEL_35:
            v139 = v230;
            goto LABEL_36;
          }

LABEL_15:
          if (v108)
          {
            v132 = sub_1E5BDEEEC(v83);
            v133 = v222;
            v132();

            v134 = v221;
            v135 = v262;
            sub_1E5B64D48(v133, v262, v105);
            v136 = *(v223 + 8);
            v136(v133, v135);
            sub_1E5B64D48(v134, v135, v105);
            v306 = v269;
            v137 = v267;
            v307 = v267;
            v138 = v265;
            swift_getWitnessTable();
            sub_1E5BE15D0(v133, v138, v135);
            v136(v133, v135);
            v136(v134, v135);
            v118 = v137;
            v139 = v230;
LABEL_36:
            v304 = v269;
            v305 = v118;
            v302 = swift_getWitnessTable();
            v303 = v105;
            v193 = v257;
            v194 = swift_getWitnessTable();
            v195 = v231;
            v196 = v237;
            sub_1E5B64D48(v237, v193, v194);
            v165 = v240;
            sub_1E5BE15D0(v195, v247, v193);
            v197 = *(v139 + 8);
            v198 = v195;
            v166 = v267;
            v197(v198, v193);
            v197(v196, v193);
LABEL_37:
            v199 = v269;
            v300 = v269;
            v301 = v166;
            v298 = swift_getWitnessTable();
            v299 = v105;
            v200 = swift_getWitnessTable();
            v296 = v199;
            v297 = v200;
            v201 = v256;
            v202 = swift_getWitnessTable();
            v203 = v241;
            sub_1E5B64D48(v165, v201, v202);
            sub_1E5BE14D8(v203, v201);
            v204 = *(v242 + 8);
            v204(v203, v201);
            v204(v165, v201);
            goto LABEL_38;
          }

          sub_1E5BDEC6C(v83);
          v168 = v167;
          v169 = sub_1E5BDEA8C(v83);
          MEMORY[0x1EEE9AC00](v169);
          v170 = v266;
          *(&v218 - 10) = v244;
          *(&v218 - 9) = v170;
          v172 = v261;
          v171 = v262;
          *(&v218 - 8) = v247;
          *(&v218 - 7) = v172;
          *(&v218 - 6) = v171;
          v173 = v263;
          *(&v218 - 5) = v260;
          *(&v218 - 4) = v173;
          v174 = v267;
          *(&v218 - 3) = v269;
          *(&v218 - 2) = v174;
          *(&v218 - 1) = v105;
          swift_getKeyPath();
          v175 = v218;
          sub_1E5BF6E34();

          v176 = v219;
          sub_1E5BE1314(v175, v219);
          v177 = swift_getEnumCaseMultiPayload();
          if (v177 <= 2)
          {
            if (!v177)
            {
              v179 = *v176;
              goto LABEL_34;
            }

            if (v177 == 1)
            {
              v178 = v176;
              v179 = *v176;
              v180 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
              v181 = sub_1E5BF6464();
              (*(*(v181 - 8) + 8))(&v178[v180], v181);
LABEL_34:
              v182 = *(v168 + 96);
              v183 = *(v168 + 104);
              LOBYTE(v332[0]) = v179;
              v184 = v220;
              v182(v332);

              v185 = v224;
              v186 = v247;
              v187 = v269;
              sub_1E5B64D48(v184, v247, v269);
              v188 = *(v236 + 8);
              v188(v184, v186);
              v189 = v235;
              sub_1E5B64D48(v185, v186, v187);
              v190 = v228;
              v191 = v267;
              sub_1E5BE14D8(v189, v186);
              v292 = v187;
              v293 = v191;
              v192 = v265;
              swift_getWitnessTable();
              v105 = v268;
              sub_1E5BE14D8(v190, v192);
              (*(v229 + 8))(v190, v192);
              v188(v189, v186);
              v188(v224, v186);
              v118 = v191;
              goto LABEL_35;
            }

            sub_1E5B5F804(v176, &qword_1ED03E238, &unk_1E5BF8A10);
          }

          v179 = 0;
          goto LABEL_34;
        }

        sub_1E5B5F804(v106, &qword_1ED03E260, &qword_1E5BF9190);
      }

      sub_1E5BDEC6C(v83);
      v141 = v140;
      v142 = sub_1E5BDEA8C(v83);
      MEMORY[0x1EEE9AC00](v142);
      v143 = v266;
      *(&v218 - 10) = v244;
      *(&v218 - 9) = v143;
      v145 = v261;
      v144 = v262;
      *(&v218 - 8) = v247;
      *(&v218 - 7) = v145;
      *(&v218 - 6) = v144;
      v146 = v263;
      *(&v218 - 5) = v260;
      *(&v218 - 4) = v146;
      v147 = v267;
      *(&v218 - 3) = v269;
      *(&v218 - 2) = v147;
      *(&v218 - 1) = v105;
      swift_getKeyPath();
      v148 = v232;
      sub_1E5BF6E34();

      v149 = v233;
      sub_1E5BE1314(v148, v233);
      v150 = swift_getEnumCaseMultiPayload();
      if (v150 > 2)
      {
        v153 = 0;
        v152 = v235;
        v156 = v236;
      }

      else
      {
        v152 = v235;
        v151 = v236;
        if (v150)
        {
          if (v150 == 1)
          {
            v153 = *v149;
            v154 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
            v155 = sub_1E5BF6464();
            (*(*(v155 - 8) + 8))(&v149[v154], v155);
          }

          else
          {
            sub_1E5B5F804(v149, &qword_1ED03E238, &unk_1E5BF8A10);
            v153 = 0;
          }
        }

        else
        {
          v153 = *v149;
        }

        v156 = v151;
      }

      v157 = *(v141 + 96);
      v158 = *(v141 + 104);
      LOBYTE(v332[0]) = v153;
      v159 = v234;
      v157(v332);

      v160 = v243;
      v161 = v247;
      v162 = v269;
      sub_1E5B64D48(v159, v247, v269);
      v163 = *(v156 + 8);
      v163(v159, v161);
      sub_1E5B64D48(v160, v161, v162);
      v290 = v162;
      v164 = v267;
      v291 = v267;
      v288 = swift_getWitnessTable();
      v105 = v268;
      v289 = v268;
      swift_getWitnessTable();
      v165 = v240;
      sub_1E5BE14D8(v152, v161);
      v166 = v164;
      v163(v152, v161);
      v163(v243, v161);
      goto LABEL_37;
    }

    sub_1E5B5F804(v86, &qword_1ED03E238, &unk_1E5BF8A10);
  }

  v123 = sub_1E5BDEB3C(v83);
  v124 = v249;
  v123();

  v125 = v262;
  v126 = v266;
  sub_1E5B64D48(v124, v266, v81);
  v127 = *(v250 + 8);
  v127(v124, v126);
  sub_1E5B64D48(v125, v126, v81);
  v128 = v269;
  v286 = v269;
  v287 = v267;
  v284 = swift_getWitnessTable();
  v285 = v268;
  v129 = swift_getWitnessTable();
  v282 = v128;
  v130 = v81;
  v283 = v129;
  v280 = swift_getWitnessTable();
  v281 = v81;
  swift_getWitnessTable();
  v131 = v252;
  sub_1E5BE14D8(v124, v126);
  v127(v124, v126);
  v127(v262, v126);
LABEL_39:
  v212 = v269;
  v316 = v269;
  v317 = v267;
  v314 = swift_getWitnessTable();
  v315 = v268;
  v213 = swift_getWitnessTable();
  v312 = v212;
  v313 = v213;
  v310 = swift_getWitnessTable();
  v311 = v130;
  v214 = swift_getWitnessTable();
  v308 = v130;
  v309 = v214;
  v215 = v254;
  v216 = swift_getWitnessTable();
  sub_1E5B64D48(v131, v215, v216);
  return (*(v253 + 8))(v131, v215);
}

uint64_t sub_1E5BE0FB4()
{
  v0 = type metadata accessor for DynamicLibraryButton();
  sub_1E5BDEA8C(v0);
  sub_1E5BF6E44();
}

uint64_t sub_1E5BE101C()
{
  v6 = v0[2];
  v1 = v0[9];
  v3 = v0[10];
  v2 = v0[11];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  v4 = *(*(type metadata accessor for DynamicLibraryButton() - 8) + 80);
  return sub_1E5BE0FB4();
}

uint64_t sub_1E5BE10F4(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5BE114C(void *a1)
{
  v2 = a1[2];
  v3 = a1[7];
  type metadata accessor for DynamicLibraryButtonFeature();
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6624();
  if (v5 <= 0x3F)
  {
    v6 = a1[3];
    swift_getFunctionTypeMetadata0();
    result = sub_1E5BF6544();
    if (v7 <= 0x3F)
    {
      v8 = a1[4];
      swift_getFunctionTypeMetadata1();
      result = sub_1E5BF6544();
      if (v9 <= 0x3F)
      {
        v10 = a1[5];
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A48, &qword_1E5C056D0);
        swift_getFunctionTypeMetadata1();
        result = sub_1E5BF6544();
        if (v11 <= 0x3F)
        {
          v12 = a1[6];
          swift_getFunctionTypeMetadata0();
          result = sub_1E5BF6544();
          if (v13 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E5BE1314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BE1384(char a1)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1E5BE13BC(uint64_t a1)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = a1;
  v6 = BYTE4(a1) & 1;
  return v2(&v5);
}

uint64_t sub_1E5BE1408(unsigned int *a1)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  return v2(*a1 | (*(a1 + 4) << 32));
}

uint64_t sub_1E5BE144C(unsigned __int8 *a1)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  return v2(*a1);
}

uint64_t DynamicLibraryButtonEnvironment.init(resolveBookmark:resolveDownloadStatus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E5BE1484()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5BE14D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5BF6854();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E5BF6864();
}

uint64_t sub_1E5BE15D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E5BF6854();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E5BF6864();
}

uint64_t sub_1E5BE16C8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for SharingButtonFeature();
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();

  return sub_1E5BF6614();
}

uint64_t ShareLinkPicker.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  type metadata accessor for SharingButtonFeature();
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6604();
  *a5 = result;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13 & 1;
  return result;
}

uint64_t ShareLinkPicker.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[0] = a1;
  v22[1] = a3;
  swift_getWitnessTable();
  v5 = sub_1E5BF6884();
  WitnessTable = swift_getWitnessTable();
  v30 = v5;
  v31 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E5BF6874();
  v7 = sub_1E5BF6BD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  v15 = *(v3 + 16);
  v16 = *v3;
  v23 = *(a2 + 16);
  v24 = v16;
  v25 = v15;
  v26 = v22[0];
  v30 = v5;
  v31 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = WitnessTable;
  v29 = OpaqueTypeConformance2;
  v18 = swift_getWitnessTable();
  sub_1E5BF6BC4();
  v27 = v18;
  v19 = swift_getWitnessTable();
  sub_1E5B64D48(v11, v7, v19);
  v20 = *(v8 + 8);
  v20(v11, v7);
  sub_1E5B64D48(v14, v7, v19);
  return (v20)(v14, v7);
}

uint64_t sub_1E5BE1AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v68 = a6;
  v67 = a5;
  v73 = a4;
  v76 = a3;
  v77 = a2;
  v75 = a7;
  v66 = sub_1E5BF6384();
  v65 = *(v66 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ShareLinkPicker();
  swift_getWitnessTable();
  v10 = sub_1E5BF6884();
  WitnessTable = swift_getWitnessTable();
  v85 = v10;
  v86 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v58 - v16;
  v17 = swift_checkMetadataState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A50, &unk_1E5C06070);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v58 - v27;
  v59 = type metadata accessor for SharingDetail();
  v29 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v69 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = OpaqueTypeMetadata2;
  v31 = sub_1E5BF6874();
  v71 = *(v31 - 8);
  v72 = v31;
  v32 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v70 = &v58 - v33;
  v60 = a1;
  v85 = a1;
  v86 = v77;
  v87 = v76 & 1;
  v34 = swift_checkMetadataState();
  sub_1E5BE16C8(v34);
  v78 = v67;
  v79 = v68;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E5BE29EC(v28, v69);
    goto LABEL_6;
  }

  v36 = v69;
  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5B5F804(v28, &qword_1ED040A50, &unk_1E5C06070);
LABEL_8:
    sub_1E5B64D48(v73, v17, WitnessTable);
    sub_1E5B64D48(v24, v17, WitnessTable);
    v85 = v17;
    v86 = WitnessTable;
    swift_getOpaqueTypeConformance2();
    v52 = v70;
    sub_1E5BE14D8(v21, v17);
    v53 = *(v18 + 8);
    v53(v21, v17);
    v53(v24, v17);
    goto LABEL_9;
  }

  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED040A58, &qword_1E5C05940) + 48);
  sub_1E5BE29EC(v28, v36);
  v38 = sub_1E5BF6464();
  (*(*(v38 - 8) + 8))(&v28[v37], v38);
LABEL_6:
  v39 = v74;
  v40 = v60;
  v41 = v77;
  v82 = v60;
  v83 = v77;
  v42 = v76 & 1;
  v84 = v76 & 1;
  sub_1E5BE16C8(v34);
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  *(v43 + 24) = v41;
  *(v43 + 32) = v42;
  sub_1E5B5F5EC();
  sub_1E5BF6D34();
  v44 = v65;
  v45 = v69;
  v46 = v64;
  v47 = v66;
  (*(v65 + 16))(v64, v69 + *(v59 + 20), v66);
  sub_1E5BE2A5C(v45);
  v48 = v62;
  sub_1E5BF6A54();

  (*(v44 + 8))(v46, v47);
  v85 = v17;
  v86 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v61;
  sub_1E5B64D48(v48, v39, OpaqueTypeConformance2);
  v51 = *(v63 + 8);
  v51(v48, v39);
  sub_1E5B64D48(v50, v39, OpaqueTypeConformance2);
  v52 = v70;
  sub_1E5BE15D0(v48, v17, v39);
  v51(v48, v39);
  v51(v50, v39);
LABEL_9:
  v85 = v17;
  v86 = WitnessTable;
  v54 = swift_getOpaqueTypeConformance2();
  v80 = WitnessTable;
  v81 = v54;
  v55 = v72;
  v56 = swift_getWitnessTable();
  sub_1E5B64D48(v52, v55, v56);
  return (*(v71 + 8))(v52, v55);
}

uint64_t sub_1E5BE2334@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v52 = a5;
  v5 = *a1;
  v6 = sub_1E5BF6494();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  v9 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v43 - v24;
  v26 = *(v5 + *MEMORY[0x1E6999B70]);
  v27 = *(v26 + 16);
  v28 = *(v26 + 24);
  v53 = v27;
  v54 = v28;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v13 + 48))(v25, 1, v12);
  if (result != 1)
  {
    sub_1E5B7AD6C(v25, v21);
    v55 = v46;
    v56 = v47;
    v57 = v48 & 1;
    v31 = type metadata accessor for ShareLinkPicker();
    v32 = sub_1E5BE16C8(v31);
    MEMORY[0x1EEE9AC00](v32);
    *(&v43 - 2) = v27;
    *(&v43 - 1) = v28;
    swift_getKeyPath();
    sub_1E5BF6E34();

    v34 = v50;
    v33 = v51;
    (*(v50 + 56))(v18, 0, 1, v51);
    v35 = *(v49 + 48);
    sub_1E5B7ADDC(v21, v11);
    sub_1E5B7ADDC(v18, &v11[v35]);
    v36 = *(v34 + 48);
    if (v36(v11, 1, v33) == 1)
    {
      sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v21, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v36(&v11[v35], 1, v33) == 1)
      {
        result = sub_1E5B5F804(v11, &qword_1ED03E5E8, &unk_1E5BF9600);
        v37 = 1;
LABEL_10:
        v30 = v37 & 1;
        goto LABEL_11;
      }
    }

    else
    {
      v38 = v45;
      sub_1E5B7ADDC(v11, v45);
      if (v36(&v11[v35], 1, v33) != 1)
      {
        v39 = &v11[v35];
        v40 = v44;
        (*(v34 + 32))(v44, v39, v33);
        sub_1E5B7AE4C();
        v41 = v38;
        v37 = sub_1E5BF6F14();
        v42 = *(v34 + 8);
        v42(v40, v33);
        sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v21, &qword_1ED03E5E8, &unk_1E5BF9600);
        v42(v41, v33);
        result = sub_1E5B5F804(v11, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_10;
      }

      sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v21, &qword_1ED03E5E8, &unk_1E5BF9600);
      (*(v34 + 8))(v38, v33);
    }

    result = sub_1E5B5F804(v11, &qword_1ED03E790, &qword_1E5BF9150);
    v37 = 0;
    goto LABEL_10;
  }

  v30 = 0;
LABEL_11:
  *v52 = v30;
  return result;
}

_BYTE *sub_1E5BE28C4@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t View.sharingLinkPicker<A>(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  ShareLinkPicker.init(store:)(a1, a2, a4, a6, &v16);
  v14 = v16;
  v15 = v17;
  v12 = type metadata accessor for ShareLinkPicker();
  MEMORY[0x1E6937280](&v14, a3, v12, a5);
  return sub_1E5B5C0A8();
}

uint64_t sub_1E5BE29EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingDetail();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BE2A5C(uint64_t a1)
{
  v2 = type metadata accessor for SharingDetail();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*DynamicLibraryButtonState.bookmarkState.modify(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t (*DynamicLibraryButtonState.downloadState.modify(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t DynamicLibraryButtonState.init(identifier:locale:isSubscribed:bookmarkState:downloadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v12 = type metadata accessor for DynamicLibraryButtonState();
  v13 = v12[9];
  v14 = sub_1E5BF64B4();
  (*(*(v14 - 8) + 32))(a7 + v13, a2, v14);
  sub_1E5B5F8D4(a3, a7 + v12[10], &qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5B5F8D4(a4, a7 + v12[11], &qword_1ED03E238, &unk_1E5BF8A10);
  return sub_1E5B5F8D4(a5, a7 + v12[12], &qword_1ED03E260, &qword_1E5BF9190);
}

uint64_t static DynamicLibraryButtonState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) + 8);
  if ((sub_1E5BF6F14() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for DynamicLibraryButtonState();
  if ((MEMORY[0x1E6936BF0](a1 + v7[9], a2 + v7[9]) & 1) == 0)
  {
    return 0;
  }

  v8 = v7[10];
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v9 = v7[11];
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v10 = v7[12];
  sub_1E5B695CC();

  return sub_1E5BF6DE4();
}

uint64_t sub_1E5BE2E10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xED00006574617453 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5BE2FD8(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x7263736275537369;
  v3 = 0x6B72616D6B6F6F62;
  if (a1 != 3)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656C61636F6CLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5BE3094(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5BE2FD8(*v1);
}

uint64_t sub_1E5BE30A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5BE2E10(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5BE30D0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E5BE47A0();
  *a2 = result;
  return result;
}

uint64_t sub_1E5BE30FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BE3150(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DynamicLibraryButtonState.encode(to:)(void *a1, uint64_t a2)
{
  v18[0] = a2;
  v3 = *(a2 + 24);
  v18[2] = *(a2 + 16);
  type metadata accessor for DynamicLibraryButtonState.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1E5BF7434();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF7524();
  v23 = 0;
  v10 = *(v3 + 16);
  v11 = v18[3];
  sub_1E5BF7424();
  if (v11)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v13 = v5;
  v14 = *(v18[0] + 36);
  v22 = 1;
  sub_1E5BF64B4();
  sub_1E5BBDC78(&qword_1ED03E5C8);
  sub_1E5BF7424();
  v15 = *(v18[0] + 40);
  v21 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5B6968C(&qword_1ED03E5D0);
  sub_1E5BF7424();
  v16 = *(v18[0] + 44);
  v20 = 3;
  sub_1E5BF7424();
  v17 = *(v18[0] + 48);
  v19 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  sub_1E5B696FC(&qword_1ED03E5D8);
  sub_1E5BF7424();
  return (*(v13 + 8))(v8, v4);
}

uint64_t DynamicLibraryButtonState.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 24);
  sub_1E5BF6EF4();
  v7 = *(a2 + 36);
  sub_1E5BF64B4();
  sub_1E5BBDC78(&qword_1ED03E5F0);
  sub_1E5BF6EF4();
  v8 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BF6DF4();
  v9 = v3 + *(a2 + 44);
  sub_1E5BF6DF4();
  v10 = *(a2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  sub_1E5B69638();
  return sub_1E5BF6DF4();
}

uint64_t DynamicLibraryButtonState.hashValue.getter(uint64_t a1)
{
  sub_1E5BF74B4();
  DynamicLibraryButtonState.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t DynamicLibraryButtonState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  v7 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v42 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  v9 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v42 - v12;
  v54 = sub_1E5BF64B4();
  v51 = *(v54 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a2 - 8);
  v15 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DynamicLibraryButtonState.CodingKeys();
  swift_getWitnessTable();
  v58 = sub_1E5BF7384();
  v53 = *(v58 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v20 = &v42 - v19;
  v55 = a2;
  v52 = a3;
  v21 = type metadata accessor for DynamicLibraryButtonState();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v42 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v57 = v20;
  v27 = v59;
  sub_1E5BF7514();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v50;
  v29 = v51;
  v42 = v22;
  v59 = v25;
  v30 = v21;
  v31 = v54;
  v32 = v55;
  v64 = 0;
  v33 = *(v52 + 8);
  sub_1E5BF7364();
  (*(v49 + 32))(v59, v56, v32);
  v63 = 1;
  sub_1E5BBDC78(&qword_1ED03E600);
  v34 = v28;
  sub_1E5BF7364();
  v35 = v30;
  (*(v29 + 32))(&v59[v30[9]], v34, v31);
  v62 = 2;
  sub_1E5B6968C(&qword_1ED03E608);
  v36 = v47;
  v56 = 0;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v36, &v59[v30[10]], &qword_1ED03E238, &unk_1E5BF8A10);
  v61 = 3;
  v37 = v46;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v37, &v59[v30[11]], &qword_1ED03E238, &unk_1E5BF8A10);
  v60 = 4;
  sub_1E5B696FC(&qword_1ED03E610);
  v38 = v45;
  sub_1E5BF7364();
  (*(v53 + 8))(v57, v58);
  v39 = v59;
  sub_1E5B5F8D4(v38, &v59[v35[12]], &qword_1ED03E260, &qword_1E5BF9190);
  v40 = v42;
  (*(v42 + 16))(v43, v39, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v40 + 8))(v39, v35);
}

uint64_t sub_1E5BE3DD8(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  DynamicLibraryButtonState.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

void sub_1E5BE3E44(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1E5BF64B4();
    if (v3 <= 0x3F)
    {
      sub_1E5B6A458();
      if (v4 <= 0x3F)
      {
        sub_1E5B6A4B0();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5BE3EFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v42 = sub_1E5BF64B4();
  v8 = *(v42 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1E5BF6464() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  if (((v12 + 1) & ~v12) + v13 <= 0x28)
  {
    v14 = 40;
  }

  else
  {
    v14 = ((v12 + 1) & ~v12) + v13;
  }

  if (v14 >= 4)
  {
    v15 = 252;
  }

  else
  {
    v15 = 252 - (1u >> (8 * v14));
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v12 + 6) & ~v12) + v13;
  if (v17 <= 0x28)
  {
    v17 = 40;
  }

  v18 = 252 - (1u >> (8 * v17));
  if (v17 >= 4)
  {
    v18 = 252;
  }

  v19 = *(v8 + 80);
  if (v18 > v16)
  {
    v16 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 64) + v19;
  v21 = v12 | 7;
  v22 = *(v8 + 64) + (v12 | 7);
  v23 = v14 + (v12 | 7) + 1;
  if (a2 <= v16)
  {
    goto LABEL_43;
  }

  v24 = v17 + ((v23 + ((v23 + ((v22 + (v20 & ~v19)) & ~v21)) & ~v21)) & ~v21) + 1;
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_22;
  }

  v28 = ((a2 - v16 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_43;
      }

LABEL_22:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_43;
      }

LABEL_30:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v17 + ((v23 + ((v23 + ((v22 + (v20 & ~v19)) & ~v21)) & ~v21)) & ~v21) == -1)
      {
        v31 = 0;
      }

      else
      {
        if (v24 <= 3)
        {
          v30 = v17 + ((v23 + ((v23 + ((v22 + (v20 & ~v19)) & ~v21)) & ~v21)) & ~v21) + 1;
        }

        else
        {
          v30 = 4;
        }

        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v31 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v31 = *a1;
          }
        }

        else if (v30 == 1)
        {
          v31 = *a1;
        }

        else
        {
          v31 = *a1;
        }
      }

      return v16 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_30;
    }
  }

LABEL_43:
  if (v7 == v16)
  {
    v32 = *(v6 + 48);
    v33 = a1;
    v34 = v7;
    v35 = v5;

    return v32(v33, v34, v35);
  }

  v33 = ((a1 + v20) & ~v19);
  if (v9 == v16)
  {
    v32 = *(v8 + 48);
    v34 = v9;
    v35 = v42;

    return v32(v33, v34, v35);
  }

  v36 = ~v21;
  v37 = (v33 + v22) & ~v21;
  if (v15 == v16)
  {
    v38 = *(v37 + v14);
    v39 = 256 - v38;
    v40 = v15 > (v38 ^ 0xFFu);
  }

  else
  {
    v41 = *(((v23 + ((v23 + v37) & v36)) & v36) + v17);
    v39 = 256 - v41;
    v40 = v18 > (v41 ^ 0xFFu);
  }

  if (v40)
  {
    return v39;
  }

  else
  {
    return 0;
  }
}

void sub_1E5BE42CC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v48 = *(a4 + 16);
  v7 = *(v48 - 8);
  v47 = v7;
  v8 = *(v7 + 84);
  v46 = sub_1E5BF64B4();
  v9 = *(v46 - 8);
  v49 = v9;
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_1E5BF6464() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v15 = ((v13 + 1) & ~v13) + v14;
  if (v15 <= 0x28)
  {
    v15 = 40;
  }

  v16 = 252 - (1u >> (8 * v15));
  if (v15 >= 4)
  {
    v16 = 252;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = ((v13 + 6) & ~v13) + v14;
  if (v18 <= 0x28)
  {
    v18 = 40;
  }

  v19 = 252 - (1u >> (8 * v18));
  if (v18 >= 4)
  {
    v19 = 252;
  }

  if (v19 <= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v9 + 80);
  v22 = *(v7 + 64) + v21;
  v23 = v13 | 7;
  v24 = *(v9 + 64) + (v13 | 7);
  v25 = (v24 + (v22 & ~v21)) & ~(v13 | 7);
  v26 = v15 + (v13 | 7) + 1;
  v27 = v18 + 1;
  v28 = ((v26 + ((v26 + v25) & ~v23)) & ~v23) + v18 + 1;
  if (a3 <= v20)
  {
    v30 = 0;
    v29 = a1;
  }

  else
  {
    v29 = a1;
    if (v28 <= 3)
    {
      v33 = ((a3 - v20 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
      if (HIWORD(v33))
      {
        v30 = 4;
      }

      else
      {
        if (v33 < 0x100)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        if (v33 >= 2)
        {
          v30 = v34;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  if (v20 < a2)
  {
    v31 = ~v20 + a2;
    if (v28 < 4)
    {
      v32 = (v31 >> (8 * v28)) + 1;
      if (v28)
      {
        v35 = v31 & ~(-1 << (8 * v28));
        bzero(v29, v28);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *v29 = v35;
            if (v30 > 1)
            {
LABEL_62:
              if (v30 == 2)
              {
                *&v29[v28] = v32;
              }

              else
              {
                *&v29[v28] = v32;
              }

              return;
            }
          }

          else
          {
            *v29 = v31;
            if (v30 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *v29 = v35;
        v29[2] = BYTE2(v35);
      }

      if (v30 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(v29, v28);
      *v29 = v31;
      v32 = 1;
      if (v30 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v30)
    {
      v29[v28] = v32;
    }

    return;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&v29[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *&v29[v28] = 0;
  }

  else if (v30)
  {
    v29[v28] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v8 == v20)
  {
    v36 = v48;
    v37 = *(v47 + 56);
    v38 = v29;
    v39 = a2;
    v40 = v8;
LABEL_49:

    v37(v38, v39, v40, v36);
    return;
  }

  v38 = (&v29[v22] & ~v21);
  if (v10 == v20)
  {
    v37 = *(v49 + 56);
    v39 = a2;
    v40 = v10;
    v36 = v46;
    goto LABEL_49;
  }

  v41 = ~v23;
  v42 = &v38[v24] & ~v23;
  if (v16 == v20)
  {
    *(v42 + v15) = -a2;
  }

  else
  {
    v43 = (v26 + ((v26 + v42) & v41)) & v41;
    if (v19 >= a2)
    {
      *(v43 + v18) = -a2;
    }

    else
    {
      v44 = ~v19 + a2;
      if (v27 < 4)
      {
        if (v18 != -1)
        {
          v45 = v44 & ~(-1 << (8 * v27));
          bzero(((v26 + ((v26 + v42) & v41)) & v41), v27);
          if (v27 == 3)
          {
            *v43 = v45;
            *(v43 + 2) = BYTE2(v45);
          }

          else if (v27 == 2)
          {
            *v43 = v45;
          }

          else
          {
            *v43 = v44;
          }
        }
      }

      else
      {
        bzero(((v26 + ((v26 + v42) & v41)) & v41), v18 + 1);
        *v43 = v44;
      }
    }
  }
}

__n128 DynamicLibraryButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5BF6484();
  v4 = (a2 + *(type metadata accessor for DynamicLibraryButtonFeature() + 36));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v6;
  return result;
}

uint64_t DynamicLibraryButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v81 = a3;
  v82 = v7;
  v73 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v74 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040B60, &unk_1E5C05BC0);
  v83 = *(v80 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v11 = v52 - v10;
  v12 = *(a5 + 16);
  v75 = *(v12 - 8);
  v13 = v75;
  v79 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v55 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v52 - v18;
  v76 = *(v13 + 16);
  v76(v52 - v18, a2, v12, v17);
  v66 = v13 + 16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
  v62 = v61[12];
  v20 = v61[16];
  v63 = v61[20];
  v57 = &v11[v61[24]];
  v77 = *(a5 + 24);
  v72 = *(v77 + 24);
  v21 = v19;
  v54 = v19;
  sub_1E5BF72B4();
  v86 = 0;
  sub_1E5B6C48C(v85, v84);
  v71 = sub_1E5B6C4E8();
  sub_1E5BF7254();
  sub_1E5B6C53C(v85);
  v69 = *MEMORY[0x1E6999B50];
  v22 = v69;
  v68 = sub_1E5BF6E24();
  v23 = *(v68 - 8);
  v67 = *(v23 + 104);
  v70 = v23 + 104;
  v67(&v11[v20], v22, v68);
  v24 = v82;
  v25 = *(v82 + 16);
  v64 = v82 + 16;
  v65 = v25;
  v26 = v74;
  v25(v74, v78, a5);
  v27 = v55;
  v28 = v12;
  (v76)(v55, v21, v12);
  v29 = *(v24 + 80);
  v30 = v24;
  v31 = (v29 + 32) & ~v29;
  v32 = v75;
  v33 = *(v75 + 80);
  v59 = v31;
  v34 = (v73 + v31 + v33) & ~v33;
  v73 = v29 | v33;
  v56 = v34;
  v35 = swift_allocObject();
  v36 = v77;
  *(v35 + 16) = v28;
  *(v35 + 24) = v36;
  v37 = *(v30 + 32);
  v82 = v30 + 32;
  v60 = v37;
  v37(v35 + v31, v26, a5);
  v58 = *(v32 + 32);
  v58(v35 + v34, v27, v28);
  v38 = v57;
  *v57 = &unk_1E5C05BD8;
  *(v38 + 1) = v35;
  sub_1E5B6C8B8();
  sub_1E5B6C8BC(v63 + v11);
  LODWORD(v62) = *MEMORY[0x1E6999AD8];
  v39 = *(v83 + 104);
  v83 += 104;
  v63 = v39;
  v39(v11);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040B68, &qword_1E5C05BE0);
  sub_1E5BF7034();
  v52[1] = v61[12];
  v40 = v61[16];
  v53 = v61[20];
  v41 = &v11[v61[24]];
  v42 = v54;
  v43 = v28;
  sub_1E5BF72B4();
  v86 = 5;
  sub_1E5B6C48C(v85, v84);
  sub_1E5BF7254();
  sub_1E5B6C53C(v85);
  v67(&v11[v40], v69, v68);
  v44 = v74;
  v45 = a5;
  v65(v74, v78, a5);
  v46 = v27;
  v47 = v42;
  (v76)(v27, v42, v43);
  v48 = v56;
  v49 = swift_allocObject();
  v50 = v77;
  *(v49 + 16) = v43;
  *(v49 + 24) = v50;
  v60(v49 + v59, v44, v45);
  v58(v49 + v48, v46, v43);
  *v41 = &unk_1E5C05BF0;
  *(v41 + 1) = v49;
  sub_1E5B6C8B8();
  sub_1E5B6C8BC(&v11[v53]);
  (v63)(v11, v62, v80);
  sub_1E5BF7034();
  return (*(v75 + 8))(v47, v43);
}

uint64_t sub_1E5BE4F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  sub_1E5BF7084();
  v5[6] = sub_1E5BF7074();
  v7 = sub_1E5BF7054();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5BE4FEC, v7, v6);
}

uint64_t sub_1E5BE4FEC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = (v3 + *(type metadata accessor for DynamicLibraryButtonFeature() + 36));
  v5 = v4[1];
  v10 = (*v4 + **v4);
  v6 = (*v4)[1];
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1E5BE50F4;
  v8 = v0[3];

  return v10(v8);
}

uint64_t sub_1E5BE50F4()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E5B71A1C, v4, v3);
}

uint64_t sub_1E5BE5214(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(type metadata accessor for DynamicLibraryButtonFeature() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B6E314;

  return sub_1E5BE4F50(a1, v1 + v7, v1 + v8, v4, v5);
}

uint64_t sub_1E5BE535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  sub_1E5BF7084();
  v5[6] = sub_1E5BF7074();
  v7 = sub_1E5BF7054();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5BE53F8, v7, v6);
}

uint64_t sub_1E5BE53F8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v3 + *(type metadata accessor for DynamicLibraryButtonFeature() + 36);
  v5 = *(v4 + 24);
  v10 = (*(v4 + 16) + **(v4 + 16));
  v6 = *(*(v4 + 16) + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1E5B6C734;
  v8 = v0[3];

  return v10(v8);
}

uint64_t objectdestroyTm_8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for DynamicLibraryButtonFeature() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = *(v2 - 8);
  v6 = (v4 + *(*v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v4;
  v9 = sub_1E5BF6494();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = v8 + v3[11];
  v11 = *(v10 + 8);

  v12 = *(v10 + 24);

  (*(v5 + 8))(v0 + v6, v2);

  return swift_deallocObject();
}

uint64_t sub_1E5BE5674(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(type metadata accessor for DynamicLibraryButtonFeature() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B6D9A0;

  return sub_1E5BE535C(a1, v1 + v7, v1 + v8, v4, v5);
}

unint64_t sub_1E5BE57D0()
{
  result = qword_1ED040B70;
  if (!qword_1ED040B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040B70);
  }

  return result;
}

unint64_t sub_1E5BE5828()
{
  result = qword_1ED040B78;
  if (!qword_1ED040B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040B78);
  }

  return result;
}

uint64_t sub_1E5BE5898(uint64_t a1)
{
  result = sub_1E5BF6494();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    result = type metadata accessor for DynamicLibraryButtonEnvironment();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E5BE5974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v75 = a4;
  v58 = a3;
  v73 = a5;
  v74 = a1;
  v6 = sub_1E5BF64B4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5BF6F94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E740, &qword_1E5BF9100);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v55 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E738, &unk_1E5BFE1C0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v72 = (&v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v55 - v28;
  v30 = sub_1E5BF6F74();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  sub_1E5BF6F64();
  sub_1E5BF6F54();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  v33 = sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  v34 = v58;
  v63 = v33;
  v64 = v32;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  sub_1E5B5F8D4(v22, v19, &qword_1ED03E740, &qword_1E5BF9100);
  v35 = *(v24 + 48);
  v69 = v23;
  v65 = v24 + 48;
  v62 = v35;
  if (v35(v19, 1, v23) == 1)
  {
    v36 = type metadata accessor for FutureWorkoutConfirmation(0);
    (*(*(v36 - 8) + 56))(v29, 1, 1, v36);
  }

  else
  {
    sub_1E5B5F8D4(v19, v29, &qword_1ED03E738, &unk_1E5BFE1C0);
  }

  v37 = type metadata accessor for FutureWorkoutConfirmation(0);
  v55 = *(v37 - 8);
  v38 = (*(v55 + 48))(v29, 1, v37);
  v66 = v37;
  if (v38 == 1)
  {
    sub_1E5B5F804(v29, &qword_1ED03E738, &unk_1E5BFE1C0);
  }

  else
  {
    sub_1E5BB10B0();
    sub_1E5BE76D8(v29, type metadata accessor for FutureWorkoutConfirmation);
  }

  sub_1E5BF6F44();

  sub_1E5BF6F54();
  sub_1E5BF6F84();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v39 = qword_1EE2CD210;
  v40 = v75;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v67 = sub_1E5BF69D4();
  v68 = v41;
  v61 = v42;
  v60 = v43;
  sub_1E5BF6614();
  v44 = swift_allocObject();
  *(v44 + 16) = a2;
  *(v44 + 24) = v34;
  *(v44 + 32) = v40 & 1;
  sub_1E5B5F5EC();
  sub_1E5BF6D34();
  v59 = v76;
  v57 = v77;
  v56 = v78;
  sub_1E5BF6614();
  swift_getKeyPath();
  v45 = v70;
  sub_1E5BF6E34();

  v46 = v45;
  v47 = v71;
  sub_1E5B5F8D4(v46, v71, &qword_1ED03E740, &qword_1E5BF9100);
  if (v62(v47, 1, v69) == 1)
  {
    v48 = v72;
    v49 = (*(v55 + 56))(v72, 1, 1, v66);
  }

  else
  {
    v48 = v72;
    v49 = sub_1E5B5F8D4(v47, v72, &qword_1ED03E738, &unk_1E5BFE1C0);
  }

  v72 = &v55;
  MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040B80, &unk_1E5C05DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F148, &unk_1E5BFB4F0);
  sub_1E5B5FC8C(&qword_1EE2C6308, &qword_1ED040B80, &unk_1E5C05DC0);
  sub_1E5B5FC8C(&qword_1EE2C6298, &qword_1ED03F148, &unk_1E5BFB4F0);
  v51 = v60;
  v52 = v67;
  v53 = v61;
  sub_1E5BF6AE4();

  sub_1E5B7AD08(v52, v53, v51 & 1);

  return sub_1E5B5F804(v48, &qword_1ED03E738, &unk_1E5BFE1C0);
}

uint64_t sub_1E5BE62B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, _BYTE *a4@<X8>)
{
  v51 = a3;
  v52 = a2;
  v50 = a1;
  v55 = a4;
  v4 = sub_1E5BF6494();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  v7 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E738, &unk_1E5BFE1C0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v46 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E740, &qword_1E5BF9100);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v46 - v28;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v19 + 48))(v29, 1, v18);
  if (result != 1)
  {
    sub_1E5B5F8D4(v29, v25, &qword_1ED03E738, &unk_1E5BFE1C0);
    sub_1E5B5F864(v25, v22, &qword_1ED03E738, &unk_1E5BFE1C0);
    v32 = type metadata accessor for FutureWorkoutConfirmation(0);
    v33 = (*(*(v32 - 8) + 48))(v22, 1, v32);
    v46 = v25;
    if (v33 == 1)
    {
      sub_1E5B5F804(v22, &qword_1ED03E738, &unk_1E5BFE1C0);
      v34 = 1;
      v35 = v53;
      v36 = v54;
    }

    else
    {
      v35 = v53;
      v36 = v54;
      (*(v54 + 16))(v53, v22, v4);
      sub_1E5BE76D8(v22, type metadata accessor for FutureWorkoutConfirmation);
      v34 = 0;
    }

    v37 = *(v36 + 56);
    v37(v35, v34, 1, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
    sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v37(v15, 0, 1, v4);
    v38 = *(v49 + 48);
    sub_1E5B5F864(v35, v9, &qword_1ED03E5E8, &unk_1E5BF9600);
    sub_1E5B5F864(v15, &v9[v38], &qword_1ED03E5E8, &unk_1E5BF9600);
    v39 = *(v36 + 48);
    if (v39(v9, 1, v4) == 1)
    {
      sub_1E5B5F804(v15, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v35, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v46, &qword_1ED03E738, &unk_1E5BFE1C0);
      if (v39(&v9[v38], 1, v4) == 1)
      {
        result = sub_1E5B5F804(v9, &qword_1ED03E5E8, &unk_1E5BF9600);
        v40 = 1;
LABEL_13:
        v31 = v40 & 1;
        goto LABEL_14;
      }
    }

    else
    {
      v41 = v48;
      sub_1E5B5F864(v9, v48, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v39(&v9[v38], 1, v4) != 1)
      {
        v42 = v54;
        v43 = &v9[v38];
        v44 = v47;
        (*(v54 + 32))(v47, v43, v4);
        sub_1E5B7AE4C();
        v40 = sub_1E5BF6F14();
        v45 = *(v42 + 8);
        v45(v44, v4);
        sub_1E5B5F804(v15, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v35, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v46, &qword_1ED03E738, &unk_1E5BFE1C0);
        v45(v41, v4);
        result = sub_1E5B5F804(v9, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_13;
      }

      sub_1E5B5F804(v15, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v35, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v46, &qword_1ED03E738, &unk_1E5BFE1C0);
      (*(v54 + 8))(v41, v4);
    }

    result = sub_1E5B5F804(v9, &qword_1ED03E790, &qword_1E5BF9150);
    v40 = 0;
    goto LABEL_13;
  }

  v31 = 0;
LABEL_14:
  *v55 = v31;
  return result;
}

uint64_t sub_1E5BE69CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v53 = a1;
  v59 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v49 - v10;
  v11 = type metadata accessor for FutureWorkoutConfirmation(0);
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = v13;
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5BF64B4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = sub_1E5BF6F94();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  v57 = *(v18 - 8);
  v19 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v55 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v54 = &v49 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v60 = &v49 - v26;
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v27 = qword_1EE2CD210;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  v28 = a4 & 1;
  sub_1E5BF6614();
  swift_getKeyPath();
  v29 = a3;
  sub_1E5BF6E34();

  v61 = sub_1E5BF6FD4();
  v62 = v30;
  v31 = v52;
  sub_1E5BE759C(v53, v52);
  v32 = (*(v50 + 80) + 33) & ~*(v50 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = v29;
  *(v33 + 32) = a4 & 1;
  sub_1E5BE7600(v31, v33 + v32);
  sub_1E5B5F5EC();
  sub_1E5B81070();
  sub_1E5BF6CA4();
  sub_1E5BF6F24();
  v34 = qword_1EE2CD210;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v61 = sub_1E5BF6FD4();
  v62 = v35;
  v36 = v58;
  sub_1E5BF65D4();
  v37 = sub_1E5BF65E4();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  v38 = swift_allocObject();
  *(v38 + 16) = a2;
  *(v38 + 24) = v29;
  *(v38 + 32) = v28;
  sub_1E5B5F5EC();
  v39 = v54;
  sub_1E5BF6C94();
  v40 = v57;
  v41 = *(v57 + 16);
  v42 = v55;
  v43 = v60;
  v41(v55, v60, v18);
  v44 = v56;
  v41(v56, v39, v18);
  v45 = v59;
  v41(v59, v42, v18);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F150, &qword_1E5C05DD0);
  v41(&v45[*(v46 + 48)], v44, v18);
  v47 = *(v40 + 8);
  v47(v39, v18);
  v47(v43, v18);
  v47(v44, v18);
  return (v47)(v42, v18);
}

uint64_t sub_1E5BE7048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  started = type metadata accessor for StartWorkoutButtonAction();
  v6 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  v9 = type metadata accessor for FutureWorkoutConfirmation(0);
  v10 = *(a4 + *(v9 + 20));
  *v8 = *(a4 + *(v9 + 24));
  v8[1] = v10;
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5BE76D8(v8, type metadata accessor for StartWorkoutButtonAction);
}

uint64_t sub_1E5BE71A4()
{
  started = type metadata accessor for StartWorkoutButtonAction();
  v1 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5BE76D8(v3, type metadata accessor for StartWorkoutButtonAction);
}

uint64_t sub_1E5BE72D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E5BF6F74();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5BF6F64();
  sub_1E5BF6F54();
  sub_1E5BB13AC();
  sub_1E5BF6F44();

  sub_1E5BF6F54();
  sub_1E5BF6F84();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_1E5BE7590@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5BE72D4(a1);
}

uint64_t sub_1E5BE759C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FutureWorkoutConfirmation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BE7600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FutureWorkoutConfirmation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BE7664()
{
  v1 = *(type metadata accessor for FutureWorkoutConfirmation(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  return sub_1E5BE7048(v2, v3, v4, v5);
}

uint64_t sub_1E5BE76CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1E5BE71A4();
}

uint64_t sub_1E5BE76D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AccountButtonEnvironment.makeAccountChangedStream.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AccountButtonEnvironment.makeUserContactChangedStream.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AccountButtonEnvironment.fetchUserContact.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AccountButtonEnvironment.showUserProfile.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AccountButtonEnvironment.init(makeAccountChangedStream:makeUserContactChangedStream:fetchUserContact:showUserProfile:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t SharingButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  type metadata accessor for SharingButtonFeature();
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6604();
  *a5 = result;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13 & 1;
  return result;
}

uint64_t sub_1E5BE790C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6BE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E5BE794C(uint64_t a1)
{
  v3 = sub_1E5BF66D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15[-v11];
  LOBYTE(v11) = *(v1 + 16);
  v13 = *v1;
  v16 = *(a1 + 16);
  v17 = v13;
  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5BF6C84();
  (*(v4 + 104))(v7, *MEMORY[0x1E697E6E8], v3);
  sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
  sub_1E5BF6A74();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1E5BE7BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v11 = sub_1E5BF64B4();
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a4 - 8);
  v15 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v36 = a2;
  LOBYTE(v37) = a3 & 1;
  v19 = type metadata accessor for SharingButton();
  sub_1E5BE16C8(v19);
  v30 = a4;
  v31 = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v32 = a1;
  v33 = a2;
  v34 = a3 & 1;
  v20 = qword_1EE2CD210;
  v21 = sub_1E5BE16C8(v19);
  MEMORY[0x1EEE9AC00](v21);
  *(&v26 - 2) = a4;
  *(&v26 - 1) = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  v22 = (*(a5 + 32))(v20, v14, a4, a5);
  v24 = v23;

  (*(v27 + 8))(v14, v28);
  (*(v26 + 8))(v18, a4);
  v37 = v22;
  v38 = v24;
  sub_1E5BF6C24();
}

uint64_t SharingButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_1E5BE7FB4(v4, v5, v6, v7, v8, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040B88, &qword_1E5C05E60) + 36));
  *v10 = sub_1E5BE8B14;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;

  return sub_1E5B5F5EC();
}

uint64_t sub_1E5BE7FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v101 = a6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v81 = *(v90 - 8);
  v11 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v80 = &v78 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BE8, &qword_1E5C05F90);
  v13 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v78 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BF0, &qword_1E5C05F98);
  v83 = *(v89 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v82 = &v78 - v16;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A50, &unk_1E5C06070);
  v17 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v78 - v18;
  v19 = type metadata accessor for SharingDetail();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v79 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BE0, &qword_1E5C05F88);
  v94 = *(v96 - 8);
  v22 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v87 = &v78 - v23;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BD0, &qword_1E5C05F80);
  v24 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v95 = &v78 - v25;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BF8, &qword_1E5C05FA0);
  v26 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v28 = &v78 - v27;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BC0, &qword_1E5C05F78);
  v29 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v31 = &v78 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v78 - v34;
  v36 = a1;
  v104 = a1;
  v105 = a2;
  v97 = a2;
  v91 = a3;
  v37 = a3 & 1;
  v106 = a3 & 1;
  v38 = type metadata accessor for SharingButton();
  sub_1E5BE16C8(v38);
  v92 = a4;
  v93 = a5;
  v102 = a4;
  v103 = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      if ((*v35 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v40 = *v35;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
      v42 = sub_1E5BF6464();
      (*(*(v42 - 8) + 8))(&v35[v41], v42);
      if (v40 != 1)
      {
LABEL_5:
        v43 = 1;
        v45 = v95;
        v44 = v96;
LABEL_18:
        (*(v94 + 56))(v45, v43, 1, v44);
        sub_1E5B5F864(v45, v28, &qword_1ED040BD0, &qword_1E5C05F80);
        swift_storeEnumTagMultiPayload();
        sub_1E5BE8D00();
        sub_1E5BE8E28();
        sub_1E5BF6864();
        v57 = v45;
        v58 = &qword_1ED040BD0;
        v59 = &qword_1E5C05F80;
        return sub_1E5B5F804(v57, v58, v59);
      }

LABEL_7:
      v104 = v36;
      v105 = v97;
      v46 = v91 & 1;
      v106 = v91 & 1;
      v47 = sub_1E5BE16C8(v38);
      MEMORY[0x1EEE9AC00](v47);
      v48 = v93;
      *(&v78 - 2) = v92;
      *(&v78 - 1) = v48;
      swift_getKeyPath();
      v49 = v85;
      sub_1E5BF6E34();

      v50 = swift_getEnumCaseMultiPayload();
      if (v50 <= 2)
      {
        if (!v50)
        {
          v52 = v79;
          sub_1E5BE29EC(v49, v79);
          goto LABEL_14;
        }

        if (v50 == 1)
        {
          v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED040A58, &qword_1E5C05940) + 48);
          v52 = v79;
          sub_1E5BE29EC(v49, v79);
          v53 = sub_1E5BF6464();
          (*(*(v53 - 8) + 8))(v49 + v51, v53);
LABEL_14:
          v60 = swift_allocObject();
          v61 = v93;
          *(v60 + 16) = v92;
          *(v60 + 24) = v61;
          v62 = v97;
          *(v60 + 32) = v36;
          *(v60 + 40) = v62;
          *(v60 + 48) = v91 & 1;
          MEMORY[0x1EEE9AC00](v60);
          *(&v78 - 6) = v64;
          *(&v78 - 5) = v63;
          *(&v78 - 4) = v36;
          *(&v78 - 3) = v65;
          *(&v78 - 16) = v66;
          *(&v78 - 1) = v52;
          sub_1E5B5F5EC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
          v67 = v52;
          sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
          v68 = v80;
          sub_1E5BF6C84();
          v69 = v81;
          v70 = v90;
          (*(v81 + 16))(v88, v68, v90);
          swift_storeEnumTagMultiPayload();
          v71 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
          v104 = v70;
          v105 = v71;
          swift_getOpaqueTypeConformance2();
          v72 = v87;
          sub_1E5BF6864();
          (*(v69 + 8))(v68, v70);
          sub_1E5BE2A5C(v67);
LABEL_17:
          v45 = v95;
          sub_1E5B5BAB8(v72, v95);
          v43 = 0;
          v44 = v96;
          goto LABEL_18;
        }

        sub_1E5B5F804(v49, &qword_1ED040A50, &unk_1E5C06070);
      }

      v104 = v36;
      v105 = v97;
      v106 = v46;
      v73 = v82;
      sub_1E5BE794C(v38);
      v74 = v83;
      v75 = v89;
      (*(v83 + 16))(v88, v73, v89);
      swift_storeEnumTagMultiPayload();
      v76 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
      v104 = v90;
      v105 = v76;
      swift_getOpaqueTypeConformance2();
      v72 = v87;
      sub_1E5BF6864();
      (*(v74 + 8))(v73, v75);
      goto LABEL_17;
    }

    sub_1E5B5F804(v35, &qword_1ED03E238, &unk_1E5BF8A10);
  }

  v104 = v36;
  v105 = v97;
  v106 = v37;
  sub_1E5BE794C(v38);
  KeyPath = swift_getKeyPath();
  v55 = swift_allocObject();
  *(v55 + 16) = 1;
  v56 = &v31[*(v99 + 36)];
  *v56 = KeyPath;
  v56[1] = sub_1E5B5F78C;
  v56[2] = v55;
  sub_1E5B5F864(v31, v28, &qword_1ED040BC0, &qword_1E5C05F78);
  swift_storeEnumTagMultiPayload();
  sub_1E5BE8D00();
  sub_1E5BE8E28();
  sub_1E5BF6864();
  v57 = v31;
  v58 = &qword_1ED040BC0;
  v59 = &qword_1E5C05F78;
  return sub_1E5B5F804(v57, v58, v59);
}

uint64_t sub_1E5BE8AB0()
{
  v0 = type metadata accessor for SharingButton();
  sub_1E5BE16C8(v0);
  sub_1E5BF6E44();
}

unint64_t sub_1E5BE8B64()
{
  result = qword_1ED040B90;
  if (!qword_1ED040B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040B88, &qword_1E5C05E60);
    sub_1E5BE8BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040B90);
  }

  return result;
}

unint64_t sub_1E5BE8BF0()
{
  result = qword_1ED040B98;
  if (!qword_1ED040B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040BA0, &qword_1E5C05F68);
    sub_1E5BE8C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040B98);
  }

  return result;
}

unint64_t sub_1E5BE8C74()
{
  result = qword_1ED040BA8;
  if (!qword_1ED040BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040BB0, &qword_1E5C05F70);
    sub_1E5BE8D00();
    sub_1E5BE8E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040BA8);
  }

  return result;
}

unint64_t sub_1E5BE8D00()
{
  result = qword_1ED040BB8;
  if (!qword_1ED040BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040BC0, &qword_1E5C05F78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1ED03E2A0, &qword_1ED03E2A8, &qword_1E5BF7CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040BB8);
  }

  return result;
}

unint64_t sub_1E5BE8E28()
{
  result = qword_1ED040BC8;
  if (!qword_1ED040BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040BD0, &qword_1E5C05F80);
    sub_1E5BE8EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040BC8);
  }

  return result;
}

unint64_t sub_1E5BE8EAC()
{
  result = qword_1ED040BD8;
  if (!qword_1ED040BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040BE0, &qword_1E5C05F88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040BD8);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1E5BE2AB8();

  return swift_deallocObject();
}

uint64_t sub_1E5BE8FE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return sub_1E5BE8AB0();
}

uint64_t sub_1E5BE9010()
{
  v1 = *(v0 + 56);
  v3 = *v1;
  v4 = v1[1];
  return sub_1E5BF6C24();
}

uint64_t SharingDetail.init(localizedTitle:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for SharingDetail() + 20);
  v7 = sub_1E5BF6384();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static SharingDetail.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1E5BF7444() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for SharingDetail() + 20);

  return sub_1E5BF6374();
}

uint64_t sub_1E5BE919C()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 0x657A696C61636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E5BE91DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BE92C0(uint64_t a1)
{
  v2 = sub_1E5BE94F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BE92FC(uint64_t a1)
{
  v2 = sub_1E5BE94F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingDetail.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040C00, &qword_1E5C06060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BE94F0();
  sub_1E5BF7524();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1E5BF73E4();
  if (!v2)
  {
    v13 = *(type metadata accessor for SharingDetail() + 20);
    v15[14] = 1;
    sub_1E5BF6384();
    sub_1E5BEB6D0(&qword_1ED03ECB8, MEMORY[0x1E6968FB0]);
    sub_1E5BF7424();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E5BE94F0()
{
  result = qword_1ED040C08;
  if (!qword_1ED040C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040C08);
  }

  return result;
}

uint64_t SharingDetail.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5BF6FE4();
  v3 = *(type metadata accessor for SharingDetail() + 20);
  sub_1E5BF6384();
  sub_1E5BEB6D0(&qword_1ED03ECC0, MEMORY[0x1E6968FB0]);
  return sub_1E5BF6EF4();
}

uint64_t SharingDetail.hashValue.getter()
{
  sub_1E5BF74B4();
  v1 = *v0;
  v2 = v0[1];
  sub_1E5BF6FE4();
  v3 = *(type metadata accessor for SharingDetail() + 20);
  sub_1E5BF6384();
  sub_1E5BEB6D0(&qword_1ED03ECC0, MEMORY[0x1E6968FB0]);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t SharingDetail.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1E5BF6384();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040C10, &qword_1E5C06068);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SharingDetail();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BE94F0();
  sub_1E5BF7514();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = sub_1E5BF7324();
  v13[1] = v17;
  v25 = 1;
  sub_1E5BEB6D0(&qword_1ED03ECD0, MEMORY[0x1E6968FB0]);
  sub_1E5BF7364();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_1E5BE9BAC(v13, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5BE2A5C(v13);
}

uint64_t sub_1E5BE99D4(uint64_t a1)
{
  sub_1E5BF74B4();
  v3 = *v1;
  v4 = v1[1];
  sub_1E5BF6FE4();
  v5 = *(a1 + 20);
  sub_1E5BF6384();
  sub_1E5BEB6D0(&qword_1ED03ECC0, MEMORY[0x1E6968FB0]);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5BE9A7C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_1E5BF6FE4();
  v6 = *(a2 + 20);
  sub_1E5BF6384();
  sub_1E5BEB6D0(&qword_1ED03ECC0, MEMORY[0x1E6968FB0]);
  return sub_1E5BF6EF4();
}

uint64_t sub_1E5BE9B08(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  v4 = *v2;
  v5 = v2[1];
  sub_1E5BF6FE4();
  v6 = *(a2 + 20);
  sub_1E5BF6384();
  sub_1E5BEB6D0(&qword_1ED03ECC0, MEMORY[0x1E6968FB0]);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5BE9BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingDetail();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BE9C10(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E5BF7444() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);

  return sub_1E5BF6374();
}

uint64_t (*SharingButtonState.shareLinkPicker.modify(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t (*SharingButtonState.loadState.modify(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t SharingButtonState.init(identifier:locale:presentationContextKey:shareLinkPicker:isEntitled:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  v14 = type metadata accessor for SharingButtonState();
  v15 = v14[9];
  v16 = sub_1E5BF64B4();
  (*(*(v16 - 8) + 32))(a8 + v15, a2, v16);
  v17 = v14[10];
  v18 = sub_1E5BF6494();
  (*(*(v18 - 8) + 32))(a8 + v17, a3, v18);
  sub_1E5B5F8D4(a4, a8 + v14[12], &qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5B5F8D4(a5, a8 + v14[11], &qword_1ED03E238, &unk_1E5BF8A10);
  return sub_1E5B5F8D4(a6, a8 + v14[13], &qword_1ED040A50, &unk_1E5C06070);
}

uint64_t sub_1E5BE9F6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5C077D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C7469746E457369 && a2 == 0xEA00000000006465 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E694C6572616873 && a2 == 0xEF72656B6369506BLL || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5BF7444();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E5BEA18C(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6C7469746E457369;
  v3 = 0x6E694C6572616873;
  if (a1 != 4)
  {
    v3 = 0x7461745364616F6CLL;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x656C61636F6CLL;
  if (a1 != 1)
  {
    v4 = 0xD000000000000016;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5BEA25C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5BEA18C(*v1);
}

uint64_t sub_1E5BEA268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5BE9F6C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5BEA298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BEA2EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SharingButtonState.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v22[0] = a2;
  v22[1] = v3;
  type metadata accessor for SharingButtonState.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1E5BF7434();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF7524();
  v28 = 0;
  v11 = *(v4 + 16);
  v12 = v9;
  v13 = v22[3];
  sub_1E5BF7424();
  if (v13)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v15 = v6;
  v16 = v22[0];
  v17 = *(v22[0] + 36);
  v27 = 1;
  sub_1E5BF64B4();
  sub_1E5BEB6D0(&qword_1ED03E5C8, MEMORY[0x1E6969770]);
  sub_1E5BF7424();
  v18 = v16[10];
  v26 = 2;
  sub_1E5BF6494();
  sub_1E5BEB6D0(&qword_1EE2C7AF0, MEMORY[0x1E69695A8]);
  sub_1E5BF7424();
  v19 = v16[11];
  v25 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5B6968C(&qword_1ED03E5D0);
  sub_1E5BF7424();
  v20 = v16[12];
  v24 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5B69774(&qword_1ED03E5E0);
  sub_1E5BF7424();
  v21 = v16[13];
  v23 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A50, &unk_1E5C06070);
  sub_1E5BEB03C(&qword_1ED040C18);
  sub_1E5BF7424();
  return (*(v15 + 8))(v12, v5);
}

uint64_t SharingButtonState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A50, &unk_1E5C06070);
  v7 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v42 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v9 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v42 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  v11 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v42 - v12;
  v56 = sub_1E5BF6494();
  v51 = *(v56 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1E5BF64B4();
  v52 = *(v59 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v54 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a2 - 8);
  v17 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharingButtonState.CodingKeys();
  swift_getWitnessTable();
  v63 = sub_1E5BF7384();
  v57 = *(v63 - 8);
  v20 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v22 = &v42 - v21;
  v60 = a2;
  v58 = a3;
  v23 = type metadata accessor for SharingButtonState();
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v42 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v62 = v22;
  v29 = v64;
  sub_1E5BF7514();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v54;
  v31 = v55;
  v43 = v24;
  v64 = v27;
  v32 = v59;
  v33 = v56;
  v70 = 0;
  v34 = *(v58 + 8);
  v35 = v60;
  sub_1E5BF7364();
  (*(v53 + 32))(v64, v61, v35);
  v69 = 1;
  sub_1E5BEB6D0(&qword_1ED03E600, MEMORY[0x1E6969770]);
  sub_1E5BF7364();
  (*(v52 + 32))(&v64[v23[9]], v30, v32);
  v68 = 2;
  sub_1E5BEB6D0(&qword_1EE2C7AE0, MEMORY[0x1E69695A8]);
  v61 = 0;
  sub_1E5BF7364();
  (*(v51 + 32))(&v64[v23[10]], v31, v33);
  v67 = 3;
  sub_1E5B6968C(&qword_1ED03E608);
  v36 = v49;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v36, &v64[v23[11]], &qword_1ED03E238, &unk_1E5BF8A10);
  v66 = 4;
  sub_1E5B69774(qword_1ED03E618);
  v37 = v47;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v37, &v64[v23[12]], &qword_1ED03E5C0, &unk_1E5BF8A20);
  v65 = 5;
  sub_1E5BEB03C(&qword_1ED040C30);
  v38 = v45;
  sub_1E5BF7364();
  (*(v57 + 8))(v62, v63);
  v39 = v64;
  sub_1E5B5F8D4(v38, &v64[v23[13]], &qword_1ED040A50, &unk_1E5C06070);
  v40 = v43;
  (*(v43 + 16))(v44, v39, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v40 + 8))(v39, v23);
}

uint64_t sub_1E5BEB03C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A50, &unk_1E5C06070);
    sub_1E5BEB6D0(&qword_1ED040C20, type metadata accessor for SharingDetail);
    sub_1E5BEB6D0(&qword_1ED040C28, type metadata accessor for SharingDetail);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SharingButtonState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) + 8);
  if ((sub_1E5BF6F14() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for SharingButtonState();
  if ((MEMORY[0x1E6936BF0](a1 + v7[9], a2 + v7[9]) & 1) == 0)
  {
    return 0;
  }

  v8 = v7[10];
  if ((sub_1E5BF6474() & 1) == 0)
  {
    return 0;
  }

  v9 = v7[11];
  if ((sub_1E5BF6DE4() & 1) == 0 || (sub_1E5B65C60(a1 + v7[12], a2 + v7[12]) & 1) == 0)
  {
    return 0;
  }

  v10 = v7[13];
  type metadata accessor for SharingDetail();
  sub_1E5BEB6D0(qword_1EE2C77D8, type metadata accessor for SharingDetail);

  return sub_1E5BF6DE4();
}

uint64_t SharingButtonState.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1E5BF6494();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v30 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v30 - v17;
  v19 = *(a2 + 16);
  v20 = *(*(a2 + 24) + 24);
  sub_1E5BF6EF4();
  v21 = *(a2 + 36);
  sub_1E5BF64B4();
  sub_1E5BEB6D0(&qword_1ED03E5F0, MEMORY[0x1E6969770]);
  sub_1E5BF6EF4();
  v22 = *(a2 + 40);
  sub_1E5BEB6D0(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  v23 = *(a2 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BF6DF4();
  sub_1E5B5F864(v3 + *(a2 + 48), v18, &qword_1ED03E5C0, &unk_1E5BF8A20);
  if ((*(v9 + 48))(v18, 1, v8) == 1)
  {
    MEMORY[0x1E6937C10](0);
  }

  else
  {
    v24 = v18;
    v25 = v32;
    sub_1E5B5F8D4(v24, v32, &qword_1ED03E5E8, &unk_1E5BF9600);
    MEMORY[0x1E6937C10](1);
    sub_1E5B5F864(v25, v12, &qword_1ED03E5E8, &unk_1E5BF9600);
    v26 = v33;
    if ((*(v33 + 48))(v12, 1, v5) == 1)
    {
      sub_1E5BF74D4();
    }

    else
    {
      v27 = v31;
      (*(v26 + 32))(v31, v12, v5);
      sub_1E5BF74D4();
      sub_1E5BF6EF4();
      (*(v26 + 8))(v27, v5);
    }

    sub_1E5B5F804(v25, &qword_1ED03E5E8, &unk_1E5BF9600);
  }

  v28 = *(a2 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A50, &unk_1E5C06070);
  sub_1E5BEB6D0(qword_1ED040C38, type metadata accessor for SharingDetail);
  return sub_1E5BF6DF4();
}

uint64_t sub_1E5BEB6D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SharingButtonState.hashValue.getter(uint64_t a1)
{
  sub_1E5BF74B4();
  SharingButtonState.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BEB768(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  SharingButtonState.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

void sub_1E5BEB844(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1E5BF64B4();
    if (v3 <= 0x3F)
    {
      sub_1E5BF6494();
      if (v4 <= 0x3F)
      {
        sub_1E5B6A458();
        if (v5 <= 0x3F)
        {
          sub_1E5B6A50C();
          if (v6 <= 0x3F)
          {
            sub_1E5BEC5C0();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E5BEB92C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v59 = *(*(a3 + 16) - 8);
  v3 = *(v59 + 84);
  v58 = *(sub_1E5BF64B4() - 8);
  v54 = v3;
  v53 = *(v58 + 84);
  if (v53 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(v58 + 84);
  }

  v52 = sub_1E5BF6494();
  v56 = *(v52 - 8);
  v5 = *(v56 + 84);
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(v56 + 84);
  }

  v7 = *(sub_1E5BF6464() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  if (((v8 + 1) & ~v8) + v9 <= 0x28)
  {
    v10 = 40;
  }

  else
  {
    v10 = ((v8 + 1) & ~v8) + v9;
  }

  v11 = 252 - (1u >> (8 * v10));
  if (v10 >= 4)
  {
    v11 = 252;
  }

  v51 = v11;
  if (v11 <= v6)
  {
    v11 = v6;
  }

  v12 = v5 - 1;
  if (!v5)
  {
    v12 = 0;
  }

  v13 = v12 - 1;
  v49 = v13;
  if (v5 < 2)
  {
    v13 = 0;
  }

  v50 = v13;
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(sub_1E5BF6384() - 8);
  v16 = *(v15 + 80);
  result = a2;
  v18 = ((v16 + 16) & ~v16) + *(v15 + 64);
  if (((v18 + v8) & ~v8) + v9 > v18)
  {
    v18 = ((v18 + v8) & ~v8) + v9;
  }

  if (v18 <= 0x28)
  {
    v19 = 40;
  }

  else
  {
    v19 = v18;
  }

  if (v19 >= 4)
  {
    v20 = 252;
  }

  else
  {
    v20 = 252 - (1u >> (8 * v19));
  }

  if (v20 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v58 + 80);
  v23 = *(v58 + 64);
  v24 = *(v56 + 80);
  v25 = *(v56 + 64);
  if (v5)
  {
    v26 = v5 < 2;
  }

  else
  {
    v26 = 2;
  }

  if (!a2)
  {
    return result;
  }

  v27 = *(v59 + 64) + v22;
  v28 = v8 | 7;
  v29 = v25 + (v8 | 7);
  v30 = v10 + v24 + 1;
  v31 = v8 | 7 | v16;
  v32 = a1;
  if (a2 > v21)
  {
    v33 = v19 + ((v26 + v31 + v25 + ((v30 + ((v29 + ((v23 + v24 + (v27 & ~v22)) & ~v24)) & ~v28)) & ~v24)) & ~v31) + 1;
    v34 = 8 * v33;
    if (v33 > 3)
    {
      goto LABEL_38;
    }

    v36 = ((a2 - v21 + ~(-1 << v34)) >> v34) + 1;
    if (HIWORD(v36))
    {
      v35 = *(a1 + v33);
      if (v35)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v36 <= 0xFF)
      {
        if (v36 < 2)
        {
          goto LABEL_58;
        }

LABEL_38:
        v35 = *(a1 + v33);
        if (!*(a1 + v33))
        {
          goto LABEL_58;
        }

LABEL_45:
        v37 = (v35 - 1) << v34;
        if (v33 > 3)
        {
          v37 = 0;
        }

        if (v33)
        {
          if (v33 <= 3)
          {
            v38 = v33;
          }

          else
          {
            v38 = 4;
          }

          if (v38 > 2)
          {
            if (v38 == 3)
            {
              v39 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v39 = *a1;
            }
          }

          else if (v38 == 1)
          {
            v39 = *a1;
          }

          else
          {
            v39 = *a1;
          }
        }

        else
        {
          v39 = 0;
        }

        return v21 + (v39 | v37) + 1;
      }

      v35 = *(a1 + v33);
      if (*(a1 + v33))
      {
        goto LABEL_45;
      }
    }
  }

LABEL_58:
  if (v54 == v21)
  {
    v40 = *(v59 + 48);

    return v40(v32);
  }

  v32 = ((a1 + v27) & ~v22);
  if (v53 == v21)
  {
    v40 = *(v58 + 48);
    goto LABEL_66;
  }

  v41 = ~v24;
  v32 = ((v32 + v23 + v24) & ~v24);
  if (v5 == v21)
  {
    v40 = *(v56 + 48);
LABEL_66:

    return v40(v32);
  }

  v42 = (v32 + v29) & ~v28;
  if (v51 == v21)
  {
    v43 = *(v42 + v10);
    v44 = 256 - v43;
    v45 = v51 > (v43 ^ 0xFFu);
    goto LABEL_82;
  }

  v46 = (v30 + v42) & v41;
  if (v50 != v21)
  {
    v48 = *(((v31 + (v5 < 2) + v25 + (v5 == 0) + v46) & ~v31) + v19);
    v44 = 256 - v48;
    v45 = v20 > (v48 ^ 0xFFu);
LABEL_82:
    if (v45)
    {
      return v44;
    }

    else
    {
      return 0;
    }
  }

  result = 0;
  if (v5 >= 2 && v49)
  {
    v47 = (*(v56 + 48))(v46, v5, v52);
    if (v47 >= 3)
    {
      return v47 - 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1E5BEBEB0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v62 = *(*(a4 + 16) - 8);
  v4 = *(v62 + 84);
  v61 = *(sub_1E5BF64B4() - 8);
  v59 = v4;
  v58 = *(v61 + 84);
  if (v58 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(v61 + 84);
  }

  v60 = *(sub_1E5BF6494() - 8);
  v6 = *(v60 + 84);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v60 + 84);
  }

  v8 = *(sub_1E5BF6464() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  if (((v9 + 1) & ~v9) + v10 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((v9 + 1) & ~v9) + v10;
  }

  v12 = 252 - (1u >> (8 * v11));
  if (v11 >= 4)
  {
    v12 = 252;
  }

  v57 = v12;
  if (v12 <= v7)
  {
    v12 = v7;
  }

  v13 = v6 - 1;
  if (!v6)
  {
    v13 = 0;
  }

  v55 = v13;
  v14 = v13 - 1;
  v15 = v6 < 2;
  if (v6 < 2)
  {
    v14 = 0;
  }

  v56 = v14;
  if (v14 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = v6;
  v18 = 0;
  v19 = *(sub_1E5BF6384() - 8);
  v20 = *(v19 + 80);
  v21 = ((v20 + 16) & ~v20) + *(v19 + 64);
  if (((v21 + v9) & ~v9) + v10 > v21)
  {
    v21 = ((v21 + v9) & ~v9) + v10;
  }

  if (v21 <= 0x28)
  {
    v21 = 40;
  }

  v22 = 252 - (1u >> (8 * v21));
  if (v21 >= 4)
  {
    v22 = 252;
  }

  if (v22 <= v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v61 + 80);
  v25 = *(v62 + 64) + v24;
  v26 = *(v61 + 64);
  v27 = *(v60 + 80);
  v28 = *(v60 + 64);
  v29 = v28 + (v9 | 7);
  v30 = v11 + v27 + 1;
  v31 = v9 | 7 | v20;
  if (v17)
  {
    v32 = v15;
  }

  else
  {
    v32 = v15 + 1;
  }

  v33 = v21 + 1;
  v34 = ((v32 + v31 + v28 + ((v30 + ((v29 + ((v26 + v27 + (v25 & ~v24)) & ~v27)) & ~(v9 | 7))) & ~v27)) & ~v31) + v21 + 1;
  if (a3 > v23)
  {
    v18 = 1;
    if (v34 <= 3)
    {
      v35 = ((a3 - v23 + ~(-1 << (8 * v34))) >> (8 * v34)) + 1;
      v36 = HIWORD(v35);
      if (v35 < 0x100)
      {
        v37 = 1;
      }

      else
      {
        v37 = 2;
      }

      if (v35 >= 2)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      if (v36)
      {
        v18 = 4;
      }

      else
      {
        v18 = v38;
      }
    }
  }

  if (v23 < a2)
  {
    v39 = ~v23 + a2;
    if (v34 < 4)
    {
      v40 = (v39 >> (8 * v34)) + 1;
      if (v34)
      {
        v42 = v18;
        v43 = v39 & ~(-1 << (8 * v34));
        bzero(a1, v34);
        if (v34 == 3)
        {
          *a1 = v43;
          a1[2] = BYTE2(v43);
        }

        else if (v34 == 2)
        {
          *a1 = v43;
        }

        else
        {
          *a1 = v39;
        }

        v18 = v42;
      }
    }

    else
    {
      bzero(a1, v34);
      *a1 = v39;
      v40 = 1;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        *&a1[v34] = v40;
      }

      else
      {
        *&a1[v34] = v40;
      }
    }

    else if (v18)
    {
      a1[v34] = v40;
    }

    return;
  }

  v41 = a1;
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v34] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_58;
    }

    *&a1[v34] = 0;
  }

  else if (v18)
  {
    a1[v34] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_58;
  }

  if (!a2)
  {
    return;
  }

LABEL_58:
  if (v59 == v23)
  {
    v44 = *(v62 + 56);
    v45 = a2;
    goto LABEL_68;
  }

  v41 = (&a1[v25] & ~v24);
  if (v58 == v23)
  {
    v44 = *(v61 + 56);
    v45 = a2;

    goto LABEL_63;
  }

  v46 = ~v27;
  v41 = (&v41[v26 + v27] & ~v27);
  if (v17 == v23)
  {
    v44 = *(v60 + 56);
    v45 = a2;
LABEL_68:

LABEL_63:
    v44(v41, v45);
    return;
  }

  v47 = &v41[v29] & ~(v9 | 7);
  if (v57 == v23)
  {
    *(v47 + v11) = -a2;
    return;
  }

  v48 = ((v30 + v47) & v46);
  if (v56 == v23)
  {
    if (v17)
    {
      if (a2 + 1 <= v55)
      {
        if (a2 == -1 || v17 == 1)
        {
          return;
        }

        v44 = *(v60 + 56);
        v45 = a2 + 2;
        v41 = ((v30 + v47) & v46);
        goto LABEL_68;
      }

      if (v28 <= 3)
      {
        v49 = ~(-1 << (8 * v28));
      }

      else
      {
        v49 = -1;
      }

      if (!v28)
      {
        return;
      }

      v50 = v49 & (a2 - v55);
      if (v28 <= 3)
      {
        v51 = v28;
      }

      else
      {
        v51 = 4;
      }

      bzero(((v30 + v47) & v46), v28);
      if (v51 <= 2)
      {
        if (v51 != 1)
        {
          goto LABEL_109;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v52 = (v28 + 2);
      if (v52 <= 3)
      {
        v53 = ~(-1 << (8 * v52));
      }

      else
      {
        v53 = -1;
      }

      if (!v52)
      {
        return;
      }

      v50 = v53 & (a2 - 1);
      if (v52 <= 3)
      {
        v51 = v52;
      }

      else
      {
        v51 = 4;
      }

      bzero(((v30 + v47) & v46), v52);
      if (v51 <= 2)
      {
        if (v51 != 1)
        {
LABEL_109:
          *v48 = v50;
          return;
        }

LABEL_119:
        *v48 = v50;
        return;
      }
    }

    if (v51 == 3)
    {
      *v48 = v50;
      v48[2] = BYTE2(v50);
    }

    else
    {
      *v48 = v50;
    }

    return;
  }

  v48 = (&v48[v31 + v15 + v28 + (v17 == 0)] & ~v31);
  if (v22 >= a2)
  {
    v48[v21] = -a2;
    return;
  }

  v50 = ~v22 + a2;
  if (v33 >= 4)
  {
    bzero(v48, v33);
    *v48 = v50;
    return;
  }

  if (v21 != -1)
  {
    v54 = v50 & ~(-1 << (8 * v33));
    bzero(v48, v33);
    if (v33 == 3)
    {
      *v48 = v54;
      v48[2] = BYTE2(v54);
      return;
    }

    if (v33 == 2)
    {
      *v48 = v54;
      return;
    }

    goto LABEL_119;
  }
}

void sub_1E5BEC5C0()
{
  if (!qword_1EE2C6288)
  {
    type metadata accessor for SharingDetail();
    sub_1E5BEB6D0(qword_1EE2C77D8, type metadata accessor for SharingDetail);
    v0 = sub_1E5BF6E04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C6288);
    }
  }
}

unint64_t sub_1E5BEC668()
{
  result = qword_1ED040CC0;
  if (!qword_1ED040CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040CC0);
  }

  return result;
}

unint64_t sub_1E5BEC714()
{
  result = qword_1ED040CC8;
  if (!qword_1ED040CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040CC8);
  }

  return result;
}

unint64_t sub_1E5BEC76C()
{
  result = qword_1ED040CD0;
  if (!qword_1ED040CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040CD0);
  }

  return result;
}

uint64_t static LabelStyle<>.expandable<A>(_:axis:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, v9);
  (*(v7 + 32))(a4, v11, a3);
  result = type metadata accessor for ExpandableLabelStyle();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t ExpandableLabelStyle.init(_:axis:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for ExpandableLabelStyle();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_1E5BEC954@<X0>(uint64_t a1@<X8>)
{
  sub_1E5BF6734();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CD8, &qword_1E5C06490);
  *(a1 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_1E5BEC998(uint64_t a1)
{
  v2 = 0x7FF0000000000000;
  if (*(v1 + *(a1 + 36)) != 2)
  {
    v3 = sub_1E5BF6934();
    if (v3 != sub_1E5BF6934())
    {
      return 0;
    }
  }

  return v2;
}

uint64_t ExpandableLabelStyle.makeBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_1E5BF6894();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CE0, &qword_1E5C06498);
  v45 = *(v47 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v37[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CE8, &qword_1E5C064A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v37[-v14];
  v15 = *(a2 + 16);
  v16 = sub_1E5BECF14();
  v17 = *(a2 + 24);
  *&v53 = v12;
  *(&v53 + 1) = v15;
  v43 = v15;
  v42 = v16;
  *&v54 = v16;
  *(&v54 + 1) = v17;
  v41 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  v19 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v38 = &v37[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v21);
  v39 = &v37[-v23];
  (*(v5 + 16))(v8, v48, v4, v22);
  v40 = v11;
  sub_1E5BF6C34();
  sub_1E5BEC998(a2);
  v48 = v2;
  sub_1E5BEC998(a2);
  sub_1E5BF6D84();
  sub_1E5BF6704();
  v24 = v44;
  (*(v45 + 32))(v44, v40, v47);
  v25 = (v24 + *(v12 + 36));
  v26 = v58;
  v25[4] = v57;
  v25[5] = v26;
  v25[6] = v59;
  v27 = v54;
  *v25 = v53;
  v25[1] = v27;
  v28 = v56;
  v25[2] = v55;
  v25[3] = v28;
  v29 = v38;
  v30 = v43;
  v31 = v42;
  v32 = v41;
  sub_1E5BF6A34();
  sub_1E5BED004(v24);
  v49 = v12;
  v50 = v30;
  v51 = v31;
  v52 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v39;
  sub_1E5B64D48(v29, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v35 = *(v46 + 8);
  v35(v29, OpaqueTypeMetadata2);
  sub_1E5B64D48(v34, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v35)(v34, OpaqueTypeMetadata2);
}

unint64_t sub_1E5BECF14()
{
  result = qword_1EE2C6388;
  if (!qword_1EE2C6388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040CE8, &qword_1E5C064A0);
    sub_1E5BECFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6388);
  }

  return result;
}

unint64_t sub_1E5BECFA0()
{
  result = qword_1EE2C62D8;
  if (!qword_1EE2C62D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040CE0, &qword_1E5C06498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C62D8);
  }

  return result;
}

uint64_t sub_1E5BED004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CE8, &qword_1E5C064A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E5BED0B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1E5BED4D4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E5BED13C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      v16 = v15 >= 2;
      v17 = v15 - 2;
      if (!v16)
      {
        v17 = -1;
      }

      if (v17 + 1 >= 2)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_1E5BED2AC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

void sub_1E5BED4D4()
{
  if (!qword_1EE2C62E0)
  {
    v0 = sub_1E5BF71F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C62E0);
    }
  }
}

uint64_t ViewStackButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E5B62F34;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t ViewStackButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_1E5BF66D4();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BF0, &qword_1E5C05F98);
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v39 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CF0, &qword_1E5C06518);
  v11 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v13 = &v39 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CF8, &qword_1E5C06520);
  v14 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v39 - v19);
  v22 = *v1;
  v21 = *(v1 + 8);
  v23 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFB0, &qword_1E5BFAE48);
  sub_1E5B5FC8C(&qword_1ED03EFB8, &qword_1ED03EFB0, &qword_1E5BFAE48);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v25 = *v20;
      if (*v20 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v25 = *v20;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFD0, &qword_1E5BFAE80) + 48);
      v27 = sub_1E5BF6464();
      (*(*(v27 - 8) + 8))(v20 + v26, v27);
      if (v25 < 1)
      {
LABEL_5:
        v28 = 1;
        v30 = v46;
        v29 = v47;
LABEL_8:
        (*(v30 + 56))(v13, v28, 1, v29);
        sub_1E5B5BD40(v13, v16);
        swift_storeEnumTagMultiPayload();
        sub_1E5BEDBDC();
        sub_1E5BF6864();
        return sub_1E5B5BDB0(v13);
      }

LABEL_7:
      v31 = swift_allocObject();
      *(v31 + 16) = v22;
      *(v31 + 24) = v21;
      *(v31 + 32) = v23;
      MEMORY[0x1EEE9AC00](v31);
      *(&v39 - 4) = v25;
      *(&v39 - 3) = v22;
      *(&v39 - 2) = v21;
      *(&v39 - 8) = v23;
      sub_1E5B5F5EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
      sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
      v32 = v40;
      sub_1E5BF6C84();
      v34 = v43;
      v33 = v44;
      v35 = v45;
      (*(v44 + 104))(v43, *MEMORY[0x1E697E6E8], v45);
      sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
      v36 = v39;
      v37 = v42;
      sub_1E5BF6A74();
      (*(v33 + 8))(v34, v35);
      (*(v41 + 8))(v32, v37);
      v30 = v46;
      v29 = v47;
      (*(v46 + 32))(v13, v36, v47);
      v28 = 0;
      goto LABEL_8;
    }

    sub_1E5BEDE20(v20);
  }

  swift_storeEnumTagMultiPayload();
  sub_1E5BEDBDC();
  return sub_1E5BF6864();
}

unint64_t sub_1E5BEDBDC()
{
  result = qword_1ED040D00;
  if (!qword_1ED040D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040CF0, &qword_1E5C06518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D00);
  }

  return result;
}

uint64_t sub_1E5BEDCD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFB0, &qword_1E5BFAE48);
  sub_1E5B5FC8C(&qword_1ED03EFB8, &qword_1ED03EFB0, &qword_1E5BFAE48);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

uint64_t sub_1E5BEDD8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1E5BEDCD0();
}

uint64_t sub_1E5BEDD98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_1E5BF6C24();
}

uint64_t sub_1E5BEDE20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5BEDEA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E5BF6F74();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5BF6F64();
  sub_1E5BF6F54();
  sub_1E5BF6F34();
  sub_1E5BF6F54();
  sub_1E5BF6F84();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFB0, &qword_1E5BFAE48);
  sub_1E5B5FC8C(&qword_1ED03EFB8, &qword_1ED03EFB0, &qword_1E5BFAE48);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_1E5BEE130@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6C04();
  *a1 = result;
  return result;
}

unint64_t sub_1E5BEE174()
{
  result = qword_1ED040D08;
  if (!qword_1ED040D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040D10, &qword_1E5C06628);
    sub_1E5BEDBDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D08);
  }

  return result;
}

uint64_t sub_1E5BEE200@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_1E5BEDEA4(a1);
}

uint64_t SampleContentModalPresentation.init(store:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SampleContentModalPresentation.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D18, &qword_1E5C06650);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D20, &qword_1E5C06658) + 36);
  *v9 = sub_1E5BD8968;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D28, &qword_1E5C06660) + 36);
  *v11 = sub_1E5BD8968;
  *(v11 + 8) = v10;
  *(v11 + 16) = 0;
  return swift_retain_n();
}

uint64_t sub_1E5BEE344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D18, &qword_1E5C06650);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D20, &qword_1E5C06658) + 36);
  *v9 = sub_1E5BD8FF8;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D28, &qword_1E5C06660) + 36);
  *v11 = sub_1E5BD8FF8;
  *(v11 + 8) = v10;
  *(v11 + 16) = 0;
  return swift_retain_n();
}

uint64_t View.sampleContentModalPresentation(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;

  MEMORY[0x1E6937280](v7, a3, &type metadata for SampleContentModalPresentation, a4);
}

unint64_t sub_1E5BEE504()
{
  result = qword_1ED040D30;
  if (!qword_1ED040D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040D28, &qword_1E5C06660);
    sub_1E5BEE590();
    sub_1E5BEE6D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D30);
  }

  return result;
}

unint64_t sub_1E5BEE590()
{
  result = qword_1ED040D38;
  if (!qword_1ED040D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040D20, &qword_1E5C06658);
    sub_1E5BEE61C();
    sub_1E5BEE680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D38);
  }

  return result;
}

unint64_t sub_1E5BEE61C()
{
  result = qword_1ED040D40;
  if (!qword_1ED040D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040D18, &qword_1E5C06650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D40);
  }

  return result;
}

unint64_t sub_1E5BEE680()
{
  result = qword_1ED040D48;
  if (!qword_1ED040D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D48);
  }

  return result;
}

unint64_t sub_1E5BEE6D4()
{
  result = qword_1ED040D50;
  if (!qword_1ED040D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D50);
  }

  return result;
}

unint64_t sub_1E5BEE728()
{
  result = qword_1ED040D58;
  if (!qword_1ED040D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D58);
  }

  return result;
}

uint64_t sub_1E5BEE794(uint64_t a1)
{
  v2 = sub_1E5BEED1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BEE7D0(uint64_t a1)
{
  v2 = sub_1E5BEED1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BEE80C()
{
  if (*v0)
  {
    result = 0x726174617661;
  }

  else
  {
    result = 0x6C6F686563616C70;
  }

  *v0;
  return result;
}

uint64_t sub_1E5BEE84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BEE928(uint64_t a1)
{
  v2 = sub_1E5BEECC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BEE964(uint64_t a1)
{
  v2 = sub_1E5BEECC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BEE9A0(uint64_t a1)
{
  v2 = sub_1E5BEED70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BEE9DC(uint64_t a1)
{
  v2 = sub_1E5BEED70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountButtonStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D60, &qword_1E5C06700);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D68, &qword_1E5C06708);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D70, &qword_1E5C06710);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BEECC8();
  sub_1E5BF7524();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E5BEED1C();
    v18 = v22;
    sub_1E5BF7394();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E5BEED70();
    sub_1E5BF7394();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1E5BEECC8()
{
  result = qword_1ED040D78;
  if (!qword_1ED040D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D78);
  }

  return result;
}

unint64_t sub_1E5BEED1C()
{
  result = qword_1ED040D80;
  if (!qword_1ED040D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D80);
  }

  return result;
}

unint64_t sub_1E5BEED70()
{
  result = qword_1ED040D88;
  if (!qword_1ED040D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D88);
  }

  return result;
}

uint64_t AccountButtonStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D90, &qword_1E5C06718);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D98, &qword_1E5C06720);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040DA0, &unk_1E5C06728);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BEECC8();
  v16 = v36;
  sub_1E5BF7514();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1E5BF7374();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E5B7FB0C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E5BF7284();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
      *v26 = &type metadata for AccountButtonStyle;
      sub_1E5BF72D4();
      sub_1E5BF7274();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1E5BEED1C();
        sub_1E5BF72C4();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E5BEED70();
        sub_1E5BF72C4();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t AccountButtonStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

unint64_t sub_1E5BEF328()
{
  result = qword_1ED040DA8;
  if (!qword_1ED040DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DA8);
  }

  return result;
}

unint64_t sub_1E5BEF3C0()
{
  result = qword_1ED040DB0;
  if (!qword_1ED040DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DB0);
  }

  return result;
}

unint64_t sub_1E5BEF418()
{
  result = qword_1ED040DB8;
  if (!qword_1ED040DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DB8);
  }

  return result;
}

unint64_t sub_1E5BEF470()
{
  result = qword_1ED040DC0;
  if (!qword_1ED040DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DC0);
  }

  return result;
}

unint64_t sub_1E5BEF4C8()
{
  result = qword_1ED040DC8;
  if (!qword_1ED040DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DC8);
  }

  return result;
}

unint64_t sub_1E5BEF520()
{
  result = qword_1ED040DD0;
  if (!qword_1ED040DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DD0);
  }

  return result;
}

unint64_t sub_1E5BEF578()
{
  result = qword_1ED040DD8;
  if (!qword_1ED040DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DD8);
  }

  return result;
}

unint64_t sub_1E5BEF5D0()
{
  result = qword_1ED040DE0;
  if (!qword_1ED040DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DE0);
  }

  return result;
}

BOOL sub_1E5BEF624(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v3);
  v5 = sub_1E5BF7504();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t StackButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E5B62F34;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1E5BEF750(uint64_t a1, char a2, char a3)
{
  if ((a2 & 1) == 0 && a3 != 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
    sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8);
    sub_1E5BF6614();
    sub_1E5BF6E44();
  }

  return result;
}

uint64_t sub_1E5BEF834@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v41) = a5;
  v40 = a1;
  v42 = a6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F00, &qword_1E5C06CF8);
  v9 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v33 - v10;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F08, &qword_1E5C06D00);
  v11 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v33 - v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040EF8, &qword_1E5C06CC0);
  v13 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v33 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040EE8, &qword_1E5C06CB8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v33 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F10, &qword_1E5C06D08);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v33 - v25;
  v43 = a3;
  v44 = a4;
  v45 = v41 & 1;
  if (a2)
  {
    sub_1E5BF6C24();
    (*(v23 + 16))(v21, v26, v22);
    swift_storeEnumTagMultiPayload();
    sub_1E5BF2B98();
    sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
    sub_1E5BF6864();
    return (*(v23 + 8))(v26, v22);
  }

  else
  {
    v41 = v18;
    v28 = (v23 + 16);
    if (v40 == 52)
    {
      sub_1E5BF6C24();
      (*v28)(v34, v26, v22);
      swift_storeEnumTagMultiPayload();
      sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
      v32 = v35;
      sub_1E5BF6864();
      sub_1E5B5F864(v32, v38, &qword_1ED040EF8, &qword_1E5C06CC0);
      swift_storeEnumTagMultiPayload();
      sub_1E5BF2BC8();
      v31 = v39;
      sub_1E5BF6864();
      sub_1E5B5F804(v32, &qword_1ED040EF8, &qword_1E5C06CC0);
      v29 = v21;
    }

    else
    {
      v29 = v21;
      if (v40 == 37)
      {
        sub_1E5BF6C24();
        (*v28)(v34, v26, v22);
        swift_storeEnumTagMultiPayload();
        sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
        v30 = v35;
        sub_1E5BF6864();
        sub_1E5B5F864(v30, v38, &qword_1ED040EF8, &qword_1E5C06CC0);
        swift_storeEnumTagMultiPayload();
        sub_1E5BF2BC8();
        v31 = v39;
        sub_1E5BF6864();
        sub_1E5B5F804(v30, &qword_1ED040EF8, &qword_1E5C06CC0);
      }

      else
      {
        sub_1E5BF6C24();
        (*v28)(v38, v26, v22);
        swift_storeEnumTagMultiPayload();
        sub_1E5BF2BC8();
        sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
        v31 = v39;
        sub_1E5BF6864();
      }
    }

    (*(v23 + 8))(v26, v22);
    sub_1E5B5F864(v31, v29, &qword_1ED040EE8, &qword_1E5C06CB8);
    swift_storeEnumTagMultiPayload();
    sub_1E5BF2B98();
    sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
    sub_1E5BF6864();
    return sub_1E5B5F804(v31, &qword_1ED040EE8, &qword_1E5C06CB8);
  }
}

uint64_t sub_1E5BF002C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1E5BF0220@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1E5BF0414()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

uint64_t sub_1E5BF04E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1E5BF06D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6C04();
  *a1 = result;
  return result;
}

uint64_t sub_1E5BF0718@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t StackButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_1E5BF09C8(v3, v4, v5, a1);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040DE8, &qword_1E5C06AB0) + 36));
  *v7 = sub_1E5BF2314;
  v7[1] = v6;
  v7[2] = 0;
  v7[3] = 0;

  return sub_1E5B5F5EC();
}

uint64_t sub_1E5BF09C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v156 = a4;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E90, &qword_1E5C06BE0);
  v125 = *(v130 - 8);
  v7 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v124 = &v117 - v8;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040EA8, &qword_1E5C06BF0);
  v9 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v117 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v121 = &v117 - v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v123 = *(v127 - 8);
  v14 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v122 = &v117 - v15;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E80, &qword_1E5C06BD8);
  v16 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v129 = &v117 - v17;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040EB0, &qword_1E5C06BF8);
  v18 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v117 - v19;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E70, &qword_1E5C06BD0);
  v136 = *(v137 - 8);
  v20 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v134 = &v117 - v21;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E60, &qword_1E5C06BC8);
  v22 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v138 = &v117 - v23;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040EB8, &qword_1E5C06C00);
  v24 = *(*(v142 - 8) + 64);
  MEMORY[0x1EEE9AC00](v142);
  v145 = &v117 - v25;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E30, &qword_1E5C06BB0);
  v140 = *(v147 - 8);
  v26 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v139 = &v117 - v27;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v28 = *(*(v143 - 8) + 64);
  MEMORY[0x1EEE9AC00](v143);
  v30 = &v117 - v29;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E50, &qword_1E5C06BC0);
  v148 = *(v150 - 8);
  v31 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v144 = &v117 - v32;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E40, &qword_1E5C06BB8);
  v33 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v149 = &v117 - v34;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040EC0, &qword_1E5C06C08);
  v35 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v154 = &v117 - v36;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E20, &qword_1E5C06BA8);
  v37 = *(*(v153 - 8) + 64);
  MEMORY[0x1EEE9AC00](v153);
  v39 = &v117 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v131 = &v117 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v117 - v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8);
  v141 = a3;
  v46 = a3 & 1;
  v151 = a1;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      if ((*v45 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v48 = *v45;
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
      v50 = sub_1E5BF6464();
      (*(*(v50 - 8) + 8))(&v45[v49], v50);
      if (v48 != 1)
      {
LABEL_5:
        v51 = 1;
        v52 = v154;
        v39 = v149;
        v53 = v150;
LABEL_32:
        (*(v148 + 56))(v39, v51, 1, v53);
        v68 = &qword_1ED040E40;
        v69 = &qword_1E5C06BB8;
        sub_1E5B5F864(v39, v52, &qword_1ED040E40, &qword_1E5C06BB8);
        swift_storeEnumTagMultiPayload();
        sub_1E5BF259C();
        sub_1E5BF2680();
        goto LABEL_33;
      }

LABEL_7:
      v54 = v151;
      sub_1E5BF6614();
      swift_getKeyPath();
      sub_1E5BF6E34();

      v55 = swift_getEnumCaseMultiPayload();
      if (v55 <= 2)
      {
        if (!v55)
        {
          v70 = *(v30 + 1);
          v118 = *v30;
          v120 = v70;
          v71 = *(v30 + 3);
          v117 = *(v30 + 2);
          v143 = v71;
          v119 = *(v30 + 4);
          v58 = v30[40];
LABEL_14:
          sub_1E5BF6614();
          swift_getKeyPath();
          sub_1E5BF6E34();

          v72 = sub_1E5BEF624(v58, v157);

          if (!v72)
          {

            v76 = 1;
            v52 = v154;
            v77 = v138;
LABEL_30:
            (*(v136 + 56))(v77, v76, 1, v137);
            sub_1E5B5F864(v77, v145, &qword_1ED040E60, &qword_1E5C06BC8);
            swift_storeEnumTagMultiPayload();
            sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0);
            sub_1E5BF2730();
            v83 = v144;
            sub_1E5BF6864();
            sub_1E5B5F804(v77, &qword_1ED040E60, &qword_1E5C06BC8);
            goto LABEL_31;
          }

          sub_1E5BF6614();
          swift_getKeyPath();
          v73 = v131;
          sub_1E5BF6E34();

          v74 = swift_getEnumCaseMultiPayload();
          if (v74 > 1)
          {
            if (v74 == 2)
            {

              sub_1E5B5F804(v73, &qword_1ED03E238, &unk_1E5BF8A10);
              v75 = v134;
            }

            else
            {
              v75 = v134;
            }

            v94 = swift_allocObject();
            *(v94 + 16) = 0;
            *(v94 + 24) = 1025;
            v95 = v151;
            *(v94 + 32) = v151;
            *(v94 + 40) = a2;
            *(v94 + 48) = v141 & 1;
            MEMORY[0x1EEE9AC00](v95);
            *(&v117 - 6) = 0;
            *(&v117 - 40) = 1;
            *(&v117 - 4) = v96;
            *(&v117 - 3) = v97;
            LOBYTE(v116) = v98;
            sub_1E5B5F5EC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040ED0, &qword_1E5C06CB0);
            sub_1E5BF2AE8(&qword_1ED040ED8, &qword_1ED040ED0, &qword_1E5C06CB0, sub_1E5BF2B98);
            v99 = v139;
            sub_1E5BF6C84();
            v100 = v140;
            v101 = v147;
            (*(v140 + 16))(v133, v99, v147);
            swift_storeEnumTagMultiPayload();
            sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0);
            sub_1E5BF2890();
            sub_1E5BF6864();
            (*(v100 + 8))(v99, v101);
            goto LABEL_29;
          }

          if (v74)
          {
            v102 = *v73;
            v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
            v104 = sub_1E5BF6464();
            (*(*(v104 - 8) + 8))(&v73[v103], v104);
            v85 = v58;
            if (v102 != 1)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v84 = *v73;
            v85 = v58;
            if ((v84 & 1) == 0)
            {
LABEL_23:
              v86 = v119;
              v157 = v119;
              swift_getKeyPath();
              v87 = swift_allocObject();
              *(v87 + 16) = v151;
              *(v87 + 24) = a2;
              *(v87 + 32) = v141 & 1;
              v88 = v120;
              *(v87 + 40) = v118;
              *(v87 + 48) = v88;
              v89 = v143;
              *(v87 + 56) = v117;
              *(v87 + 64) = v89;
              *(v87 + 72) = v86;
              *(v87 + 80) = v85;
              sub_1E5B5F5EC();

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FB98, &qword_1E5BFFC50);
              sub_1E5B5FC8C(&qword_1ED040EC8, &qword_1ED03FB98, &qword_1E5BFFC50);
              v116 = sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0);
              v90 = v124;
              sub_1E5BF6D44();
              v91 = v125;
              v92 = v130;
              (*(v125 + 16))(v128, v90, v130);
              swift_storeEnumTagMultiPayload();
              sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
              sub_1E5BF2948();
              v93 = v129;
              sub_1E5BF6864();
              (*(v91 + 8))(v90, v92);
LABEL_28:
              sub_1E5B5F864(v93, v133, &qword_1ED040E80, &qword_1E5C06BD8);
              swift_storeEnumTagMultiPayload();
              sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0);
              sub_1E5BF2890();
              v75 = v134;
              sub_1E5BF6864();
              sub_1E5B5F804(v93, &qword_1ED040E80, &qword_1E5C06BD8);
LABEL_29:
              v52 = v154;
              v77 = v138;
              sub_1E5B5F8D4(v75, v138, &qword_1ED040E70, &qword_1E5C06BD0);
              v76 = 0;
              goto LABEL_30;
            }
          }

          v105 = v121;
          sub_1E5BF65C4();
          v106 = sub_1E5BF65E4();
          (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
          v107 = swift_allocObject();
          v108 = v151;
          *(v107 + 16) = v151;
          *(v107 + 24) = a2;
          *(v107 + 32) = v141 & 1;
          *(v107 + 33) = v85;
          MEMORY[0x1EEE9AC00](v108);
          *(&v117 - 4) = v109;
          *(&v117 - 3) = a2;
          LOBYTE(v116) = v110;
          sub_1E5B5F5EC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
          sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
          v111 = v122;
          sub_1E5BF6C74();
          v112 = v123;
          v113 = v127;
          (*(v123 + 16))(v128, v111, v127);
          swift_storeEnumTagMultiPayload();
          sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
          sub_1E5BF2948();
          v93 = v129;
          sub_1E5BF6864();
          (*(v112 + 8))(v111, v113);
          goto LABEL_28;
        }

        if (v55 == 1)
        {
          v56 = *(v30 + 1);
          v118 = *v30;
          v120 = v56;
          v57 = *(v30 + 3);
          v117 = *(v30 + 2);
          v143 = v57;
          v119 = *(v30 + 4);
          v58 = v30[40];
          v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
          v60 = sub_1E5BF6464();
          (*(*(v60 - 8) + 8))(&v30[v59], v60);
          goto LABEL_14;
        }

        sub_1E5B5F804(v30, &qword_1ED03E950, &unk_1E5BF95F0);
      }

      v78 = swift_allocObject();
      *(v78 + 16) = 0;
      *(v78 + 24) = 1025;
      *(v78 + 32) = v54;
      *(v78 + 40) = a2;
      *(v78 + 48) = v141 & 1;
      MEMORY[0x1EEE9AC00](v78);
      *(&v117 - 6) = 0;
      *(&v117 - 40) = 1;
      *(&v117 - 4) = v54;
      *(&v117 - 3) = a2;
      LOBYTE(v116) = v79;
      sub_1E5B5F5EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040ED0, &qword_1E5C06CB0);
      sub_1E5BF2AE8(&qword_1ED040ED8, &qword_1ED040ED0, &qword_1E5C06CB0, sub_1E5BF2B98);
      v80 = v139;
      sub_1E5BF6C84();
      v81 = v140;
      v82 = v147;
      (*(v140 + 16))(v145, v80, v147);
      swift_storeEnumTagMultiPayload();
      sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0);
      sub_1E5BF2730();
      v83 = v144;
      sub_1E5BF6864();
      (*(v81 + 8))(v80, v82);
      v52 = v154;
LABEL_31:
      v114 = v83;
      v39 = v149;
      sub_1E5B5F8D4(v114, v149, &qword_1ED040E50, &qword_1E5C06BC0);
      v51 = 0;
      v53 = v150;
      goto LABEL_32;
    }

    sub_1E5B5F804(v45, &qword_1ED03E238, &unk_1E5BF8A10);
  }

  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 24) = 1025;
  v62 = v151;
  *(v61 + 32) = v151;
  *(v61 + 40) = a2;
  *(v61 + 48) = v46;
  MEMORY[0x1EEE9AC00](v62);
  *(&v117 - 6) = 0;
  *(&v117 - 40) = 1;
  *(&v117 - 4) = v63;
  *(&v117 - 3) = a2;
  LOBYTE(v116) = v46;
  sub_1E5B5F5EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040ED0, &qword_1E5C06CB0);
  sub_1E5BF2AE8(&qword_1ED040ED8, &qword_1ED040ED0, &qword_1E5C06CB0, sub_1E5BF2B98);
  sub_1E5BF6C84();
  KeyPath = swift_getKeyPath();
  v65 = swift_allocObject();
  *(v65 + 16) = 1;
  v66 = v154;
  v67 = &v39[*(v153 + 36)];
  *v67 = KeyPath;
  v67[1] = sub_1E5BF2CE4;
  v67[2] = v65;
  v68 = &qword_1ED040E20;
  v69 = &qword_1E5C06BA8;
  sub_1E5B5F864(v39, v66, &qword_1ED040E20, &qword_1E5C06BA8);
  swift_storeEnumTagMultiPayload();
  sub_1E5BF259C();
  sub_1E5BF2680();
LABEL_33:
  sub_1E5BF6864();
  return sub_1E5B5F804(v39, v68, v69);
}

uint64_t sub_1E5BF212C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(a5 + 40);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = 0;
  *(v10 + 25) = v9;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4 & 1;
  sub_1E5B5F5EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040ED0, &qword_1E5C06CB0);
  sub_1E5BF2AE8(&qword_1ED040ED8, &qword_1ED040ED0, &qword_1E5C06CB0, sub_1E5BF2B98);
  return sub_1E5BF6C84();
}

uint64_t sub_1E5BF2254()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

uint64_t sub_1E5BF2314()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1E5BF2254();
}

uint64_t sub_1E5BF233C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_1E5BF09C8(v3, v4, v5, a1);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040DE8, &qword_1E5C06AB0) + 36));
  *v7 = sub_1E5BF2D5C;
  v7[1] = v6;
  v7[2] = 0;
  v7[3] = 0;

  return sub_1E5B5F5EC();
}

unint64_t sub_1E5BF2400()
{
  result = qword_1ED040DF0;
  if (!qword_1ED040DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040DE8, &qword_1E5C06AB0);
    sub_1E5BF248C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DF0);
  }

  return result;
}

unint64_t sub_1E5BF248C()
{
  result = qword_1ED040DF8;
  if (!qword_1ED040DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E00, &qword_1E5C06B98);
    sub_1E5BF2510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DF8);
  }

  return result;
}

unint64_t sub_1E5BF2510()
{
  result = qword_1ED040E08;
  if (!qword_1ED040E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E10, &qword_1E5C06BA0);
    sub_1E5BF259C();
    sub_1E5BF2680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040E08);
  }

  return result;
}

unint64_t sub_1E5BF259C()
{
  result = qword_1ED040E18;
  if (!qword_1ED040E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E20, &qword_1E5C06BA8);
    sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0);
    sub_1E5B5FC8C(&qword_1ED03E2A0, &qword_1ED03E2A8, &qword_1E5BF7CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040E18);
  }

  return result;
}

unint64_t sub_1E5BF2680()
{
  result = qword_1ED040E38;
  if (!qword_1ED040E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E40, &qword_1E5C06BB8);
    sub_1E5BF27E0(&qword_1ED040E48, &qword_1ED040E50, &qword_1E5C06BC0, sub_1E5BF2730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040E38);
  }

  return result;
}

unint64_t sub_1E5BF2730()
{
  result = qword_1ED040E58;
  if (!qword_1ED040E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E60, &qword_1E5C06BC8);
    sub_1E5BF27E0(&qword_1ED040E68, &qword_1ED040E70, &qword_1E5C06BD0, sub_1E5BF2890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040E58);
  }

  return result;
}

uint64_t sub_1E5BF27E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5BF2890()
{
  result = qword_1ED040E78;
  if (!qword_1ED040E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E80, &qword_1E5C06BD8);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    sub_1E5BF2948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040E78);
  }

  return result;
}

unint64_t sub_1E5BF2948()
{
  result = qword_1ED040E88;
  if (!qword_1ED040E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E90, &qword_1E5C06BE0);
    sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040E88);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1E5B5C0A8();

  return swift_deallocObject();
}

uint64_t sub_1E5BF2A50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  return sub_1E5BF0414();
}

uint64_t sub_1E5BF2A60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return sub_1E5BF6C24();
}

uint64_t sub_1E5BF2AE8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5BF2BC8()
{
  result = qword_1ED040EF0;
  if (!qword_1ED040EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040EF8, &qword_1E5C06CC0);
    sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040EF0);
  }

  return result;
}

uint64_t sub_1E5BF2C78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5BF67C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5BF2CFC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5BF0718(a1);
}

uint64_t sub_1E5BF2D08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5BF0220(a1);
}

uint64_t sub_1E5BF2D14@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5BF002C(a1);
}

uint64_t sub_1E5BF2D20@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5BF04E4(a1);
}

uint64_t sub_1E5BF2D2C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  return sub_1E5BEF750(*(v0 + 16), *(v0 + 24), *(v0 + 25));
}

uint64_t sub_1E5BF2D7C()
{
  if (*v0)
  {
    result = 0x656D7269666E6F63;
  }

  else
  {
    result = 0x4F6D7269666E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1E5BF2DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4F6D7269666E6F63 && a2 == 0xEF6563697665446ELL;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BF2EB4(uint64_t a1)
{
  v2 = sub_1E5BF3348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BF2EF0(uint64_t a1)
{
  v2 = sub_1E5BF3348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BF2F2C(uint64_t a1)
{
  v2 = sub_1E5BF33F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BF2F68(uint64_t a1)
{
  v2 = sub_1E5BF33F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BF2FA4(uint64_t a1)
{
  v2 = sub_1E5BF339C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BF2FE0(uint64_t a1)
{
  v2 = sub_1E5BF339C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreatePlanHandoffAlertIconState.hashValue.getter(char a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1 & 1);
  return sub_1E5BF7504();
}

uint64_t CreatePlanHandoffAlertIconState.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F18, &qword_1E5C06D30);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F20, &qword_1E5C06D38);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F28, &qword_1E5C06D40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF3348();
  sub_1E5BF7524();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1E5BF339C();
    sub_1E5BF7394();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1E5BF33F0();
    sub_1E5BF7394();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_1E5BF3348()
{
  result = qword_1ED040F30;
  if (!qword_1ED040F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F30);
  }

  return result;
}

unint64_t sub_1E5BF339C()
{
  result = qword_1ED040F38;
  if (!qword_1ED040F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F38);
  }

  return result;
}

unint64_t sub_1E5BF33F0()
{
  result = qword_1ED040F40;
  if (!qword_1ED040F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F40);
  }

  return result;
}

uint64_t sub_1E5BF3460@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5BF34AC(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1E5BF34AC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F88, &qword_1E5C070C0);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F90, &qword_1E5C070C8);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F98, &qword_1E5C070D0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF3348();
  v15 = v32;
  sub_1E5BF7514();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_1E5BF7374();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_1E5B7FB0C();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_1E5BF7284();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v24 = &type metadata for CreatePlanHandoffAlertIconState;
    sub_1E5BF72D4();
    sub_1E5BF7274();
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
    sub_1E5BF339C();
    sub_1E5BF72C4();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1E5BF33F0();
    sub_1E5BF72C4();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_1E5BF396C()
{
  result = qword_1ED040F48;
  if (!qword_1ED040F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F48);
  }

  return result;
}

unint64_t sub_1E5BF3A04()
{
  result = qword_1ED040F50;
  if (!qword_1ED040F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F50);
  }

  return result;
}

unint64_t sub_1E5BF3A5C()
{
  result = qword_1ED040F58;
  if (!qword_1ED040F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F58);
  }

  return result;
}

unint64_t sub_1E5BF3AB4()
{
  result = qword_1ED040F60;
  if (!qword_1ED040F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F60);
  }

  return result;
}

unint64_t sub_1E5BF3B0C()
{
  result = qword_1ED040F68;
  if (!qword_1ED040F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F68);
  }

  return result;
}

unint64_t sub_1E5BF3B64()
{
  result = qword_1ED040F70;
  if (!qword_1ED040F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F70);
  }

  return result;
}

unint64_t sub_1E5BF3BBC()
{
  result = qword_1ED040F78;
  if (!qword_1ED040F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F78);
  }

  return result;
}

unint64_t sub_1E5BF3C14()
{
  result = qword_1ED040F80;
  if (!qword_1ED040F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F80);
  }

  return result;
}

uint64_t ActionContext.identifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a1 + 16);
  if (EnumCaseMultiPayload != 1)
  {
    return (*(*(v10 - 8) + 32))(a2, v7, *(a1 + 16));
  }

  v11 = *(a1 + 24);
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v10 - 8) + 32))(a2, v7, v10);
  return (*(*(v11 - 8) + 8))(&v7[v12], v11);
}

uint64_t static ActionContext.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a1;
  v70 = a2;
  v68 = *(a4 - 8);
  v5 = v68[8];
  MEMORY[0x1EEE9AC00](a1);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v59 - v8;
  v71 = *(v9 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v60 = v15;
  v61 = &v59 - v14;
  v72 = v16;
  v73 = v17;
  v65 = v17;
  v74 = v18;
  v75 = v19;
  v63 = v20;
  v76 = v20;
  v77 = v21;
  v78 = v22;
  v79 = v15;
  v23 = type metadata accessor for ActionContext();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v59 - v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = *(TupleTypeMetadata2 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v36 = &v59 - v35;
  v38 = &v59 + *(v37 + 48) - v35;
  v64 = v24;
  v39 = *(v24 + 16);
  v39(&v59 - v35, v69, v23, v34);
  (v39)(v38, v70, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v39)(v27, v36, v23);
    v40 = v65;
    v41 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = v71;
      (*(v71 + 32))(v66, v38, a3);
      v43 = v68[4];
      v43(v67, &v27[v41], v40);
      v44 = &v38[v41];
      v45 = v62;
      v43(v62, v44, v40);
      v46 = v66;
      v47 = *(v63 + 8);
      v48 = sub_1E5BF6F14();
      v49 = *(v42 + 8);
      v49(v27, a3);
      if (v48)
      {
        v50 = *(v60 + 8);
        v51 = sub_1E5BF6F14();
        v52 = v68[1];
        v52(v45, v40);
        v52(v67, v40);
        v49(v66, a3);
      }

      else
      {
        v57 = v68[1];
        v57(v45, v40);
        v57(v67, v40);
        v49(v46, a3);
        v51 = 0;
      }

      goto LABEL_11;
    }

    (v68[1])(&v27[v41], v40);
  }

  else
  {
    (v39)(v30, v36, v23);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v53 = v71;
      v54 = v61;
      (*(v71 + 32))(v61, v38, a3);
      v55 = *(v63 + 8);
      v51 = sub_1E5BF6F14();
      v56 = *(v53 + 8);
      v56(v54, a3);
      v56(v30, a3);
LABEL_11:
      v32 = v64;
      goto LABEL_12;
    }

    v27 = v30;
  }

  (*(v71 + 8))(v27, a3);
  v51 = 0;
  v23 = TupleTypeMetadata2;
LABEL_12:
  (*(v32 + 8))(v36, v23);
  return v51 & 1;
}

uint64_t sub_1E5BF43B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E5BF7444();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E5BF44FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BF4550(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5BF45A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  v13 = a3[9];
  result = sub_1E5BC595C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1E5BF45F0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  result = sub_1E5B600CC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E5BF4630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BF4684(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5BF4724(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  return sub_1E5BC58E4(*v1);
}

uint64_t sub_1E5BF47A4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void, void, void, void, void))
{
  sub_1E5BF74B4();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9]);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BF4850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  v13 = a3[9];
  result = sub_1E5BF43B4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5BF4898@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BF48DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BF4930(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ActionContext.encode(to:)(void *a1, void *a2)
{
  v65 = a1;
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[9];
  v73 = a2[8];
  v74 = v5;
  v75 = v4;
  v76 = v3;
  v77 = v5;
  v78 = v6;
  v10 = v5;
  v83 = v6;
  v79 = v7;
  v80 = v8;
  v81 = v73;
  v82 = v9;
  v69 = v9;
  v61 = type metadata accessor for ActionContext.StateCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1E5BF7434();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v52 - v13;
  v59 = *(v3 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v4;
  v76 = v3;
  v77 = v10;
  v78 = v6;
  v79 = v7;
  v80 = v8;
  v17 = v73;
  v81 = v73;
  v82 = v9;
  v18 = type metadata accessor for ActionContext.IdentifierCodingKeys();
  v19 = swift_getWitnessTable();
  v56 = v18;
  v54 = v19;
  v58 = sub_1E5BF7434();
  v57 = *(v58 - 8);
  v20 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v52 - v21;
  v66 = *(v4 - 8);
  v22 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v68 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v53 = &v52 - v26;
  v27 = *(a2 - 1);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v4;
  v76 = v3;
  v71 = v3;
  v77 = v74;
  v78 = v83;
  v79 = v7;
  v80 = v8;
  v81 = v17;
  v82 = v69;
  type metadata accessor for ActionContext.CodingKeys();
  swift_getWitnessTable();
  v74 = sub_1E5BF7434();
  v69 = *(v74 - 8);
  v32 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v34 = &v52 - v33;
  v35 = v65[4];
  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  sub_1E5BF7524();
  (*(v27 + 16))(v31, v67, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = v71;
    v37 = *(swift_getTupleTypeMetadata2() + 48);
    v38 = v66;
    (*(v66 + 32))(v68, v31, v4);
    v39 = v59;
    v40 = &v31[v37];
    v41 = v62;
    (*(v59 + 32))(v62, v40, v36);
    LOBYTE(v75) = 1;
    sub_1E5BF7394();
    LOBYTE(v75) = 0;
    v42 = v64;
    v43 = v70;
    sub_1E5BF7424();
    v44 = v38;
    if (v43)
    {
      (*(v63 + 8))(v72, v42);
      (*(v39 + 8))(v41, v71);
    }

    else
    {
      LOBYTE(v75) = 1;
      v51 = v71;
      sub_1E5BF7424();
      (*(v63 + 8))(v72, v42);
      (*(v39 + 8))(v41, v51);
    }

    (*(v44 + 8))(v68, v4);
    return (*(v69 + 8))(v34, v74);
  }

  else
  {
    v45 = v66;
    v46 = v53;
    (*(v66 + 32))(v53, v31, v4);
    LOBYTE(v75) = 0;
    v47 = v55;
    v48 = v74;
    sub_1E5BF7394();
    v49 = v58;
    sub_1E5BF7424();
    (*(v57 + 8))(v47, v49);
    (*(v45 + 8))(v46, v4);
    return (*(v69 + 8))(v34, v48);
  }
}

uint64_t ActionContext.hash(into:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v2, a2, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v11 + 32))(v15, v21, v10);
    (*(v5 + 32))(v8, &v21[v23], v4);
    MEMORY[0x1E6937C10](1);
    v24 = a2[6];
    sub_1E5BF6EF4();
    v25 = a2[9];
    sub_1E5BF6EF4();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v11 + 32))(v15, v21, v10);
    MEMORY[0x1E6937C10](0);
    v26 = a2[6];
    sub_1E5BF6EF4();
  }

  return (*(v11 + 8))(v15, v10);
}

uint64_t ActionContext.hashValue.getter(void *a1)
{
  sub_1E5BF74B4();
  ActionContext.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t ActionContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v97 = a1;
  v80 = a9;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = a5;
  v93 = a6;
  v94 = a7;
  v95 = a8;
  v96 = a10;
  v77 = type metadata accessor for ActionContext.StateCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v72 = sub_1E5BF7384();
  v71 = *(v72 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v84 = &v65 - v18;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = a5;
  v86 = a5;
  v93 = a6;
  v94 = a7;
  v95 = a8;
  v96 = a10;
  v19 = type metadata accessor for ActionContext.IdentifierCodingKeys();
  v20 = swift_getWitnessTable();
  v76 = v19;
  v75 = v20;
  v70 = sub_1E5BF7384();
  v69 = *(v70 - 8);
  v21 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v82 = &v65 - v22;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = a5;
  v93 = a6;
  v94 = a7;
  v23 = a6;
  v95 = a8;
  v96 = a10;
  type metadata accessor for ActionContext.CodingKeys();
  v87 = swift_getWitnessTable();
  v83 = sub_1E5BF7384();
  v85 = *(v83 - 8);
  v24 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v26 = &v65 - v25;
  v73 = a2;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  v67 = a3;
  v74 = a4;
  *&v92 = a4;
  *(&v92 + 1) = v86;
  v93 = v23;
  v94 = a7;
  v68 = a7;
  v95 = a8;
  v96 = a10;
  v27 = v97;
  v81 = type metadata accessor for ActionContext();
  v79 = *(v81 - 8);
  v28 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v30 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v65 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v65 - v35;
  v37 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v86 = v26;
  v38 = v88;
  sub_1E5BF7514();
  if (v38)
  {
    v39 = v27;
  }

  else
  {
    v87 = v33;
    v88 = v30;
    v40 = v82;
    v66 = v36;
    v42 = v83;
    v41 = v84;
    v43 = v86;
    *&v89 = sub_1E5BF7374();
    sub_1E5BF7044();
    swift_getWitnessTable();
    *&v91 = sub_1E5BF7224();
    *(&v91 + 1) = v44;
    *&v92 = v45;
    *(&v92 + 1) = v46;
    sub_1E5BF7214();
    swift_getWitnessTable();
    sub_1E5BF7164();
    v47 = v89;
    if (v89 == 2 || (v65 = v91, v89 = v91, v90 = v92, (sub_1E5BF7174() & 1) == 0))
    {
      v50 = sub_1E5BF7284();
      swift_allocError();
      v51 = v43;
      v53 = v52;
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
      *v53 = v81;
      sub_1E5BF72D4();
      sub_1E5BF7274();
      (*(*(v50 - 8) + 104))(v53, *MEMORY[0x1E69E6AF8], v50);
      swift_willThrow();
      (*(v85 + 8))(v51, v42);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v47)
      {
        LOBYTE(v89) = 1;
        sub_1E5BF72C4();
        v48 = v80;
        LOBYTE(v89) = 0;
        v49 = v72;
        sub_1E5BF7364();
        v59 = *(swift_getTupleTypeMetadata2() + 48);
        LOBYTE(v89) = 1;
        sub_1E5BF7364();
        (*(v71 + 8))(v41, v49);
        (*(v85 + 8))(v43, v42);
        swift_unknownObjectRelease();
        v60 = v88;
        v61 = v81;
        swift_storeEnumTagMultiPayload();
        v62 = v79;
      }

      else
      {
        LOBYTE(v89) = 0;
        v56 = v40;
        sub_1E5BF72C4();
        v48 = v80;
        v62 = v79;
        v60 = v87;
        v57 = v70;
        sub_1E5BF7364();
        v58 = v85;
        (*(v69 + 8))(v56, v57);
        (*(v58 + 8))(v43, v42);
        swift_unknownObjectRelease();
        v61 = v81;
        swift_storeEnumTagMultiPayload();
      }

      v63 = *(v62 + 32);
      v64 = v66;
      v63(v66, v60, v61);
      v63(v48, v64, v61);
    }

    v39 = v97;
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_1E5BF5E24(uint64_t a1, void *a2)
{
  sub_1E5BF74B4();
  ActionContext.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BF5E84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[4];
  v4 = a3[5];
  v5 = a3[6];
  v6 = a3[7];
  v8 = a3[8];
  v9 = a3[9];
  return static ActionContext.== infix(_:_:)(a1, a2, a3[2], a3[3]) & 1;
}

uint64_t sub_1E5BF5EC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (((v3 + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64) <= v3)
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v4 = ((v3 + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1E5BF6024(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = ((v5 + *(*(*(a4 + 24) - 8) + 80)) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64);
  if (v6 <= v5)
  {
    v6 = *(*(*(a4 + 16) - 8) + 64);
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_39:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_24;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}