uint64_t sub_1E58F7160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB620, &qword_1E5A2CDC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static NSBundle.workoutPlans.getter()
{
  type metadata accessor for WorkoutPlansBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t sub_1E58F7268()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4164694477656976;
  }
}

uint64_t sub_1E58F72DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E58F7A84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58F7304(uint64_t a1)
{
  v2 = sub_1E58F78D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F7340(uint64_t a1)
{
  v2 = sub_1E58F78D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F737C(uint64_t a1)
{
  v2 = sub_1E58F797C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F73B8(uint64_t a1)
{
  v2 = sub_1E58F797C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F73F4(uint64_t a1)
{
  v2 = sub_1E58F7928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F7430(uint64_t a1)
{
  v2 = sub_1E58F7928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F746C(uint64_t a1)
{
  v2 = sub_1E58F79D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F74A8(uint64_t a1)
{
  v2 = sub_1E58F79D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreateWorkoutPlanButtonAction.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

uint64_t CreateWorkoutPlanButtonAction.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCA70, &qword_1E5A32C80);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCA78, &qword_1E5A32C88);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCA80, &qword_1E5A32C90);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCA88, &qword_1E5A32C98);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F78D4();
  sub_1E5A2C224();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1E58F797C();
      sub_1E5A2C024();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1E58F7928();
      v21 = v27;
      sub_1E5A2C024();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1E58F79D0();
    sub_1E5A2C024();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

unint64_t sub_1E58F78D4()
{
  result = qword_1ECFFCA90;
  if (!qword_1ECFFCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA90);
  }

  return result;
}

unint64_t sub_1E58F7928()
{
  result = qword_1ECFFCA98;
  if (!qword_1ECFFCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA98);
  }

  return result;
}

unint64_t sub_1E58F797C()
{
  result = qword_1ECFFCAA0;
  if (!qword_1ECFFCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAA0);
  }

  return result;
}

unint64_t sub_1E58F79D0()
{
  result = qword_1ECFFCAA8;
  if (!qword_1ECFFCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAA8);
  }

  return result;
}

uint64_t sub_1E58F7A3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E58F7BB4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E58F7A84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4164694477656976 && a2 == 0xED00007261657070;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5A464C0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5A46410 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E58F7BB4(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB00, &qword_1E5A330E8);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB08, &qword_1E5A330F0);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB10, &qword_1E5A330F8);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB18, &unk_1E5A33100);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E58F78D4();
  v18 = v39;
  sub_1E5A2C214();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1E5A2C004();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1E58BC5A8();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1E58F797C();
          sub_1E5A2BF44();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_1E58F7928();
        v29 = v15;
        sub_1E5A2BF44();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1E58F79D0();
        v29 = v15;
        sub_1E5A2BF44();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1E5A2BE84();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v27 = &type metadata for CreateWorkoutPlanButtonAction;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

unint64_t sub_1E58F8128()
{
  result = qword_1ECFFCAB0;
  if (!qword_1ECFFCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAB0);
  }

  return result;
}

unint64_t sub_1E58F81D0()
{
  result = qword_1ECFFCAB8;
  if (!qword_1ECFFCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAB8);
  }

  return result;
}

unint64_t sub_1E58F8228()
{
  result = qword_1ECFFCAC0;
  if (!qword_1ECFFCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAC0);
  }

  return result;
}

unint64_t sub_1E58F8280()
{
  result = qword_1ECFFCAC8;
  if (!qword_1ECFFCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAC8);
  }

  return result;
}

unint64_t sub_1E58F82D8()
{
  result = qword_1ECFFCAD0;
  if (!qword_1ECFFCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAD0);
  }

  return result;
}

unint64_t sub_1E58F8330()
{
  result = qword_1ECFFCAD8;
  if (!qword_1ECFFCAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAD8);
  }

  return result;
}

unint64_t sub_1E58F8388()
{
  result = qword_1ECFFCAE0;
  if (!qword_1ECFFCAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAE0);
  }

  return result;
}

unint64_t sub_1E58F83E0()
{
  result = qword_1ECFFCAE8;
  if (!qword_1ECFFCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAE8);
  }

  return result;
}

unint64_t sub_1E58F8438()
{
  result = qword_1ECFFCAF0;
  if (!qword_1ECFFCAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAF0);
  }

  return result;
}

unint64_t sub_1E58F8490()
{
  result = qword_1ECFFCAF8;
  if (!qword_1ECFFCAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAF8);
  }

  return result;
}

uint64_t WorkoutPlan.dateCreated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A29E34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutPlan.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlan() + 20);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WorkoutPlan()
{
  result = qword_1ECFFCBC8;
  if (!qword_1ECFFCBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutPlan.items.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlan() + 24));
}

__n128 WorkoutPlan.startDate.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WorkoutPlan() + 28));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  return result;
}

uint64_t WorkoutPlan.templateIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlan() + 36);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutPlan.init(dateCreated:identifier:items:startDate:state:templateIdentifier:variation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v21 = *a4;
  v13 = *(a4 + 2);
  v14 = sub_1E5A29E34();
  (*(*(v14 - 8) + 32))(a8, a1, v14);
  v15 = type metadata accessor for WorkoutPlan();
  v16 = v15[5];
  v17 = sub_1E5A29E74();
  v18 = *(*(v17 - 8) + 32);
  v18(a8 + v16, a2, v17);
  *(a8 + v15[6]) = a3;
  v19 = a8 + v15[7];
  *v19 = v21;
  *(v19 + 16) = v13;
  *(a8 + v15[8]) = a5;
  result = (v18)(a8 + v15[9], a6, v17);
  *(a8 + v15[10]) = a7;
  return result;
}

unint64_t sub_1E58F8890()
{
  v1 = *v0;
  v2 = 0x6165724365746164;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0x6F69746169726176;
  }

  v4 = 0x7461447472617473;
  if (v1 != 3)
  {
    v4 = 0x6574617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x736D657469;
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

uint64_t sub_1E58F897C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E58FA9C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58F89A4(uint64_t a1)
{
  v2 = sub_1E58F8D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F89E0(uint64_t a1)
{
  v2 = sub_1E58F8D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlan.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB20, &qword_1E5A33110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F8D90();
  sub_1E5A2C224();
  LOBYTE(v17) = 0;
  sub_1E5A29E34();
  sub_1E58FA6AC(&qword_1ECFFCB30, MEMORY[0x1E6969530]);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v11 = type metadata accessor for WorkoutPlan();
    v12 = v11[5];
    LOBYTE(v17) = 1;
    sub_1E5A29E74();
    sub_1E58FA6AC(&qword_1ECFFC7F8, MEMORY[0x1E69695A8]);
    sub_1E5A2C0B4();
    *&v17 = *(v3 + v11[6]);
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB38, &qword_1E5A33118);
    sub_1E58F8DE4();
    sub_1E5A2C0B4();
    v13 = (v3 + v11[7]);
    v14 = *(v13 + 2);
    v17 = *v13;
    v18 = v14;
    v19 = 3;
    sub_1E58C2AE8();
    sub_1E5A2C0B4();
    LOBYTE(v17) = *(v3 + v11[8]);
    v19 = 4;
    sub_1E58F8F48();
    sub_1E5A2C0B4();
    v15 = v11[9];
    LOBYTE(v17) = 5;
    sub_1E5A2C0B4();
    LOBYTE(v17) = *(v3 + v11[10]);
    v19 = 6;
    sub_1E58F8F9C();
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E58F8D90()
{
  result = qword_1ECFFCB28;
  if (!qword_1ECFFCB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB28);
  }

  return result;
}

unint64_t sub_1E58F8DE4()
{
  result = qword_1ECFFCB40;
  if (!qword_1ECFFCB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCB38, &qword_1E5A33118);
    sub_1E58F8EA0();
    sub_1E58F97CC(&qword_1ECFFCB50, sub_1E58F8EF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB40);
  }

  return result;
}

unint64_t sub_1E58F8EA0()
{
  result = qword_1ECFFCB48;
  if (!qword_1ECFFCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB48);
  }

  return result;
}

unint64_t sub_1E58F8EF4()
{
  result = qword_1ECFFCB60;
  if (!qword_1ECFFCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB60);
  }

  return result;
}

unint64_t sub_1E58F8F48()
{
  result = qword_1ECFFCB68;
  if (!qword_1ECFFCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB68);
  }

  return result;
}

unint64_t sub_1E58F8F9C()
{
  result = qword_1ECFFCB70;
  if (!qword_1ECFFCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB70);
  }

  return result;
}

uint64_t WorkoutPlan.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_1E5A29E74();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - v7;
  v9 = sub_1E5A29E34();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB78, &qword_1E5A33128);
  v47 = *(v50 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v14 = &v38 - v13;
  v15 = type metadata accessor for WorkoutPlan();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F8D90();
  v49 = v14;
  v20 = v51;
  sub_1E5A2C214();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = v15;
  v21 = v18;
  v22 = v44;
  v23 = v45;
  v24 = v46;
  LOBYTE(v52) = 0;
  sub_1E58FA6AC(&qword_1ECFFCB80, MEMORY[0x1E6969530]);
  sub_1E5A2BFE4();
  v25 = v9;
  v26 = *(v22 + 32);
  v27 = v21;
  v28 = v48;
  v48 = v25;
  v26(v21, v28);
  LOBYTE(v52) = 1;
  v29 = v8;
  v30 = v24;
  v31 = sub_1E58FA6AC(&qword_1ECFFC818, MEMORY[0x1E69695A8]);
  sub_1E5A2BFE4();
  v40 = v31;
  v32 = v29;
  v33 = *(v23 + 32);
  v33(v27 + v51[5], v32, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB38, &qword_1E5A33118);
  v54 = 2;
  sub_1E58F96BC();
  v41 = 0;
  sub_1E5A2BFE4();
  v39 = v33;
  v34 = v51;
  *(v27 + v51[6]) = v52;
  v54 = 3;
  sub_1E58C75CC();
  sub_1E5A2BFE4();
  v35 = v53;
  v36 = v27 + v34[7];
  *v36 = v52;
  *(v36 + 16) = v35;
  v54 = 4;
  sub_1E58F9898();
  sub_1E5A2BFE4();
  *(v27 + v34[8]) = v52;
  LOBYTE(v52) = 5;
  sub_1E5A2BFE4();
  v39(v27 + v34[9], v43, v30);
  v54 = 6;
  sub_1E58F98EC();
  sub_1E5A2BFE4();
  (*(v47 + 8))(v49, v50);
  *(v27 + v34[10]) = v52;
  sub_1E58FAC24(v27, v42, type metadata accessor for WorkoutPlan);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E58FAC8C(v27, type metadata accessor for WorkoutPlan);
}

unint64_t sub_1E58F96BC()
{
  result = qword_1ECFFCB88;
  if (!qword_1ECFFCB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCB38, &qword_1E5A33118);
    sub_1E58F9778();
    sub_1E58F97CC(&qword_1ECFFCB98, sub_1E58F9844);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB88);
  }

  return result;
}

unint64_t sub_1E58F9778()
{
  result = qword_1ECFFCB90;
  if (!qword_1ECFFCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB90);
  }

  return result;
}

uint64_t sub_1E58F97CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCB58, &qword_1E5A33120);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E58F9844()
{
  result = qword_1ECFFCBA0;
  if (!qword_1ECFFCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBA0);
  }

  return result;
}

unint64_t sub_1E58F9898()
{
  result = qword_1ECFFCBA8;
  if (!qword_1ECFFCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBA8);
  }

  return result;
}

unint64_t sub_1E58F98EC()
{
  result = qword_1ECFFCBB0;
  if (!qword_1ECFFCBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBB0);
  }

  return result;
}

uint64_t WorkoutPlan.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_1E5A29E34();
  sub_1E58FA6AC(&qword_1ECFFCBB8, MEMORY[0x1E6969530]);
  sub_1E5A2BA44();
  v4 = type metadata accessor for WorkoutPlan();
  v5 = v4[5];
  sub_1E5A29E74();
  sub_1E58FA6AC(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  sub_1E58FA21C(a1, *(v2 + v4[6]));
  v6 = (v2 + v4[7]);
  v7 = v6[1];
  v8 = v6[2];
  MEMORY[0x1E6932DE0](*v6);
  MEMORY[0x1E6932DE0](v7);
  MEMORY[0x1E6932DE0](v8);
  MEMORY[0x1E6932DE0](*(v2 + v4[8]));
  v9 = v2 + v4[9];
  sub_1E5A2BA44();
  return MEMORY[0x1E6932DE0](*(v2 + v4[10]));
}

uint64_t WorkoutPlan.hashValue.getter()
{
  v1 = v0;
  sub_1E5A2C1B4();
  sub_1E5A29E34();
  sub_1E58FA6AC(&qword_1ECFFCBB8, MEMORY[0x1E6969530]);
  sub_1E5A2BA44();
  v2 = type metadata accessor for WorkoutPlan();
  v3 = v2[5];
  sub_1E5A29E74();
  sub_1E58FA6AC(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  sub_1E58FA21C(v9, *(v1 + v2[6]));
  v4 = (v1 + v2[7]);
  v5 = v4[1];
  v6 = v4[2];
  MEMORY[0x1E6932DE0](*v4);
  MEMORY[0x1E6932DE0](v5);
  MEMORY[0x1E6932DE0](v6);
  MEMORY[0x1E6932DE0](*(v1 + v2[8]));
  v7 = v1 + v2[9];
  sub_1E5A2BA44();
  MEMORY[0x1E6932DE0](*(v1 + v2[10]));
  return sub_1E5A2C204();
}

uint64_t sub_1E58F9C60(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1E5A2C1B4();
  sub_1E5A29E34();
  sub_1E58FA6AC(&qword_1ECFFCBB8, MEMORY[0x1E6969530]);
  sub_1E5A2BA44();
  v5 = a2[5];
  sub_1E5A29E74();
  sub_1E58FA6AC(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  sub_1E58FA21C(v11, *(v4 + a2[6]));
  v6 = (v4 + a2[7]);
  v7 = v6[1];
  v8 = v6[2];
  MEMORY[0x1E6932DE0](*v6);
  MEMORY[0x1E6932DE0](v7);
  MEMORY[0x1E6932DE0](v8);
  MEMORY[0x1E6932DE0](*(v4 + a2[8]));
  v9 = v4 + a2[9];
  sub_1E5A2BA44();
  MEMORY[0x1E6932DE0](*(v4 + a2[10]));
  return sub_1E5A2C204();
}

uint64_t sub_1E58F9DDC(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v3 = type metadata accessor for WorkoutPlanScheduledItem();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;
  v40 = a2;

  v13 = 0;
  v14 = 0;
  v37 = v11;
  v38 = v7;
  while (v10)
  {
LABEL_10:
    v42 = v10;
    v16 = __clz(__rbit64(v10)) | (v14 << 6);
    v17 = (*(v40 + 48) + 32 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = *(*(v40 + 56) + 8 * v16);

    if (!v23)
    {
LABEL_15:

      return MEMORY[0x1E6932DE0](v13);
    }

    v41 = v13;
    v24 = *(v39 + 48);
    v44[2] = *(v39 + 32);
    v44[3] = v24;
    v45 = *(v39 + 64);
    v25 = *(v39 + 16);
    v44[0] = *v39;
    v44[1] = v25;
    v26 = v23;
    MEMORY[0x1E6932DE0](v19);
    MEMORY[0x1E6932DE0](v18);
    MEMORY[0x1E6932DE0](v20);
    MEMORY[0x1E6932DE0](v21);
    MEMORY[0x1E6932DE0](*(v26 + 16));
    v43 = v26;
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = *(v36 + 24);
      v29 = (v6 + *(v36 + 28));
      v30 = v43 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
      v31 = *(v35 + 72);
      do
      {
        sub_1E58FAC24(v30, v6, type metadata accessor for WorkoutPlanScheduledItem);
        MEMORY[0x1E6932DE0](*v6);
        sub_1E58B87B8(v44, v6[1]);
        sub_1E5A29E74();
        sub_1E58FA6AC(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
        sub_1E5A2BA44();
        v32 = *v29;
        v33 = v29[1];
        sub_1E5A2BB74();
        sub_1E58FAC8C(v6, type metadata accessor for WorkoutPlanScheduledItem);
        v30 += v31;
        --v27;
      }

      while (v27);
    }

    v10 = (v42 - 1) & v42;

    result = sub_1E5A2C204();
    v13 = result ^ v41;
    v11 = v37;
    v7 = v38;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      goto LABEL_15;
    }

    v10 = *(v7 + 8 * v15);
    ++v14;
    if (v10)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58FA0B0(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    sub_1E5A2BB74();

    sub_1E5A2BB74();

    result = sub_1E5A2C204();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1E6932DE0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58FA21C(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_10:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a2 + 48) + 32 * v11);
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    v17 = *(*(a2 + 56) + 8 * v11);

    if (!v17)
    {
LABEL_15:

      return MEMORY[0x1E6932DE0](v8);
    }

    v26 = a1[2];
    v27 = a1[3];
    v28 = *(a1 + 8);
    v24 = *a1;
    v25 = a1[1];
    MEMORY[0x1E6932DE0](v14);
    MEMORY[0x1E6932DE0](v13);
    MEMORY[0x1E6932DE0](v16);
    MEMORY[0x1E6932DE0](v15);
    MEMORY[0x1E6932DE0](*(v17 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        MEMORY[0x1E6932DE0](0);

        sub_1E5A2BB74();

        v19 += 2;
        --v18;
      }

      while (v18);
    }

    v5 &= v5 - 1;

    result = sub_1E5A2C204();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_15;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58FA3DC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v23 = 0;
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = (*(a2 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = (*(a2 + 56) + 32 * v10);
      v16 = *v14;
      v15 = v14[1];
      v17 = v14[2];
      v18 = v14[3];

      if (!v12)
      {
        break;
      }

      v5 &= v5 - 1;
      v19 = *(a1 + 48);
      v24[2] = *(a1 + 32);
      v24[3] = v19;
      v25 = *(a1 + 64);
      v20 = *(a1 + 16);
      v24[0] = *a1;
      v24[1] = v20;
      sub_1E5A2BB74();

      sub_1E5A2BB74();
      sub_1E58B93C8(v24, v17);
      sub_1E58B93C8(v24, v18);

      result = sub_1E5A2C204();
      v23 ^= result;
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1E6932DE0](v23);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL _s18FitnessWorkoutPlan0bC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E5A29E04() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WorkoutPlan();
  v5 = v4[5];
  if ((sub_1E5A29E54() & 1) == 0 || (sub_1E599D054(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = (a2 + v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v7 == v11 && v8 == v12;
  v15 = v14 && v9 == v13;
  if (v15 && *(a1 + v4[8]) == *(a2 + v4[8]) && (v16 = v4[9], (sub_1E5A29E54() & 1) != 0))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E58FA6AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E58FA71C()
{
  sub_1E5A29E34();
  if (v0 <= 0x3F)
  {
    sub_1E5A29E74();
    if (v1 <= 0x3F)
    {
      sub_1E58FA7E0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E58FA7E0()
{
  if (!qword_1ECFFCBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCB58, &qword_1E5A33120);
    sub_1E58FA858();
    v0 = sub_1E5A2BA24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECFFCBD8);
    }
  }
}

unint64_t sub_1E58FA858()
{
  result = qword_1ECFFCBE0;
  if (!qword_1ECFFCBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBE0);
  }

  return result;
}

unint64_t sub_1E58FA8C0()
{
  result = qword_1ECFFCBE8;
  if (!qword_1ECFFCBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBE8);
  }

  return result;
}

unint64_t sub_1E58FA918()
{
  result = qword_1ECFFCBF0;
  if (!qword_1ECFFCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBF0);
  }

  return result;
}

unint64_t sub_1E58FA970()
{
  result = qword_1ECFFCBF8;
  if (!qword_1ECFFCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBF8);
  }

  return result;
}

uint64_t sub_1E58FA9C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6165724365746164 && a2 == 0xEB00000000646574;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A464E0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E58FAC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E58FAC8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E58FACFC(uint64_t a1)
{
  v2 = sub_1E58FBE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FAD38(uint64_t a1)
{
  v2 = sub_1E58FBE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FAD74(uint64_t a1)
{
  v2 = sub_1E58FBB24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FADB0(uint64_t a1)
{
  v2 = sub_1E58FBB24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FADEC(uint64_t a1)
{
  v2 = sub_1E58FBDC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FAE28(uint64_t a1)
{
  v2 = sub_1E58FBDC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FAE64(uint64_t a1)
{
  v2 = sub_1E58FBD70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FAEA0(uint64_t a1)
{
  v2 = sub_1E58FBD70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FAEDC(uint64_t a1)
{
  v2 = sub_1E58FBD1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FAF18(uint64_t a1)
{
  v2 = sub_1E58FBD1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FAF54(uint64_t a1)
{
  v2 = sub_1E58FBCC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FAF90(uint64_t a1)
{
  v2 = sub_1E58FBCC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FAFCC(uint64_t a1)
{
  v2 = sub_1E58FBC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FB008(uint64_t a1)
{
  v2 = sub_1E58FBC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FB044(uint64_t a1)
{
  v2 = sub_1E58FBC20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FB080(uint64_t a1)
{
  v2 = sub_1E58FBC20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FB0BC(uint64_t a1)
{
  v2 = sub_1E58FBBCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FB0F8(uint64_t a1)
{
  v2 = sub_1E58FBBCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58FB134(uint64_t a1)
{
  v2 = sub_1E58FBB78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FB170(uint64_t a1)
{
  v2 = sub_1E58FBB78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanFilterKind.encode(to:)(void *a1, int a2)
{
  LODWORD(v79) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC00, &qword_1E5A33360);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC08, &qword_1E5A33368);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC10, &qword_1E5A33370);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v55 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC18, &qword_1E5A33378);
  v62 = *(v63 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v55 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC20, &qword_1E5A33380);
  v59 = *(v60 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v55 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC28, &qword_1E5A33388);
  v78 = *(v57 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v77 = &v55 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC30, &qword_1E5A33390);
  v76 = *(v56 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v75 = &v55 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC38, &qword_1E5A33398);
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC40, &qword_1E5A333A0);
  v73 = *(v24 - 8);
  v25 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v55 - v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCC48, &qword_1E5A333A8);
  v28 = *(v81 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v31 = &v55 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58FBB24();
  v80 = v31;
  sub_1E5A2C224();
  v33 = (v28 + 8);
  v34 = v79;
  if (v79 <= 3u)
  {
    v72 = v24;
    v79 = v33;
    v41 = v73;
    v40 = v74;
    v42 = v75;
    v43 = v76;
    v44 = v77;
    v45 = v78;
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v84 = 2;
        sub_1E58FBD70();
        v49 = v42;
        v51 = v80;
        v50 = v81;
        sub_1E5A2C024();
        (*(v43 + 8))(v49, v56);
      }

      else
      {
        v85 = 3;
        sub_1E58FBD1C();
        v53 = v44;
        v51 = v80;
        v50 = v81;
        sub_1E5A2C024();
        (*(v45 + 8))(v53, v57);
      }
    }

    else
    {
      if (!v34)
      {
        v82 = 0;
        sub_1E58FBE18();
        v46 = v80;
        v47 = v81;
        sub_1E5A2C024();
        (*(v41 + 8))(v27, v72);
        return (*v79)(v46, v47);
      }

      v83 = 1;
      sub_1E58FBDC4();
      v51 = v80;
      v50 = v81;
      sub_1E5A2C024();
      (*(v40 + 8))(v23, v20);
    }

    return (*v79)(v51, v50);
  }

  else
  {
    if (v79 <= 5u)
    {
      if (v79 == 4)
      {
        v86 = 4;
        sub_1E58FBCC8();
        v52 = v58;
        v36 = v80;
        v37 = v81;
        sub_1E5A2C024();
        (*(v59 + 8))(v52, v60);
      }

      else
      {
        v87 = 5;
        sub_1E58FBC74();
        v54 = v61;
        v36 = v80;
        v37 = v81;
        sub_1E5A2C024();
        (*(v62 + 8))(v54, v63);
      }
    }

    else
    {
      if (v79 == 6)
      {
        v88 = 6;
        sub_1E58FBC20();
        v35 = v64;
        v36 = v80;
        v37 = v81;
        sub_1E5A2C024();
        v39 = v65;
        v38 = v66;
      }

      else if (v79 == 7)
      {
        v89 = 7;
        sub_1E58FBBCC();
        v35 = v67;
        v36 = v80;
        v37 = v81;
        sub_1E5A2C024();
        v39 = v68;
        v38 = v69;
      }

      else
      {
        v90 = 8;
        sub_1E58FBB78();
        v35 = v70;
        v36 = v80;
        v37 = v81;
        sub_1E5A2C024();
        v39 = v71;
        v38 = v72;
      }

      (*(v39 + 8))(v35, v38);
    }

    return (*v33)(v36, v37);
  }
}

unint64_t sub_1E58FBB24()
{
  result = qword_1ECFFCC50;
  if (!qword_1ECFFCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC50);
  }

  return result;
}

unint64_t sub_1E58FBB78()
{
  result = qword_1ECFFCC58;
  if (!qword_1ECFFCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC58);
  }

  return result;
}

unint64_t sub_1E58FBBCC()
{
  result = qword_1ECFFCC60;
  if (!qword_1ECFFCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC60);
  }

  return result;
}

unint64_t sub_1E58FBC20()
{
  result = qword_1ECFFCC68;
  if (!qword_1ECFFCC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC68);
  }

  return result;
}

unint64_t sub_1E58FBC74()
{
  result = qword_1ECFFCC70;
  if (!qword_1ECFFCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC70);
  }

  return result;
}

unint64_t sub_1E58FBCC8()
{
  result = qword_1ECFFCC78;
  if (!qword_1ECFFCC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC78);
  }

  return result;
}

unint64_t sub_1E58FBD1C()
{
  result = qword_1ECFFCC80;
  if (!qword_1ECFFCC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC80);
  }

  return result;
}

unint64_t sub_1E58FBD70()
{
  result = qword_1ECFFCC88;
  if (!qword_1ECFFCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC88);
  }

  return result;
}

unint64_t sub_1E58FBDC4()
{
  result = qword_1ECFFCC90;
  if (!qword_1ECFFCC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC90);
  }

  return result;
}

unint64_t sub_1E58FBE18()
{
  result = qword_1ECFFCC98;
  if (!qword_1ECFFCC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCC98);
  }

  return result;
}

char *sub_1E58FBE84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E58FBF3C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t WorkoutPlanFilterKind.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

char *sub_1E58FBF3C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD60, &qword_1E5A33CD0);
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v82 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD68, &qword_1E5A33CD8);
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD70, &qword_1E5A33CE0);
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD78, &qword_1E5A33CE8);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v59 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD80, &qword_1E5A33CF0);
  v70 = *(v69 - 8);
  v14 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v84 = &v59 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD88, &qword_1E5A33CF8);
  v67 = *(v68 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v83 = &v59 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD90, &qword_1E5A33D00);
  v65 = *(v66 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v79 = &v59 - v19;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCD98, &qword_1E5A33D08);
  v63 = *(v64 - 8);
  v20 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCDA0, &qword_1E5A33D10);
  v62 = *(v23 - 8);
  v24 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v59 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCDA8, &qword_1E5A33D18);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v59 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1E58FBB24();
  v34 = v87;
  sub_1E5A2C214();
  if (!v34)
  {
    v60 = v26;
    v59 = v23;
    v35 = v22;
    v36 = v83;
    v37 = v84;
    v38 = v85;
    v87 = v28;
    v61 = v31;
    v39 = sub_1E5A2C004();
    v40 = (2 * *(v39 + 16)) | 1;
    v88 = v39;
    v89 = v39 + 32;
    v90 = 0;
    v91 = v40;
    v41 = sub_1E58BC5AC();
    if (v41 != 9 && v90 == v91 >> 1)
    {
      v31 = v41;
      if (v41 <= 3u)
      {
        v42 = v61;
        if (v41 > 1u)
        {
          if (v41 == 2)
          {
            v92 = 2;
            sub_1E58FBD70();
            v57 = v79;
            sub_1E5A2BF44();
            (*(v65 + 8))(v57, v66);
          }

          else
          {
            v92 = 3;
            sub_1E58FBD1C();
            sub_1E5A2BF44();
            (*(v67 + 8))(v36, v68);
          }

          (*(v87 + 8))(v42, v27);
          goto LABEL_29;
        }

        v43 = v87;
        if (v41)
        {
          v92 = 1;
          sub_1E58FBDC4();
          sub_1E5A2BF44();
          v54 = *(v63 + 8);
          v55 = v35;
          v56 = &v93;
        }

        else
        {
          v92 = 0;
          sub_1E58FBE18();
          v53 = v60;
          sub_1E5A2BF44();
          v54 = *(v62 + 8);
          v55 = v53;
          v56 = &v91;
        }
      }

      else
      {
        v42 = v61;
        if (v41 > 5u)
        {
          v43 = v87;
          if (v41 == 6)
          {
            v92 = 6;
            sub_1E58FBC20();
            v44 = v80;
            sub_1E5A2BF44();
            v46 = v73;
            v45 = v74;
          }

          else
          {
            if (v41 != 7)
            {
              v92 = 8;
              sub_1E58FBB78();
              v58 = v82;
              sub_1E5A2BF44();
              (*(v77 + 8))(v58, v78);
LABEL_28:
              (*(v43 + 8))(v42, v27);
LABEL_29:
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1(v86);
              return v31;
            }

            v92 = 7;
            sub_1E58FBBCC();
            v44 = v81;
            sub_1E5A2BF44();
            v46 = v75;
            v45 = v76;
          }

          goto LABEL_26;
        }

        v43 = v87;
        if (v41 != 4)
        {
          v92 = 5;
          sub_1E58FBC74();
          v44 = v38;
          sub_1E5A2BF44();
          v46 = v71;
          v45 = v72;
LABEL_26:
          v54 = *(v46 + 8);
          v55 = v44;
          goto LABEL_27;
        }

        v92 = 4;
        sub_1E58FBCC8();
        sub_1E5A2BF44();
        v54 = *(v70 + 8);
        v55 = v37;
        v56 = &v94;
      }

      v45 = *(v56 - 32);
LABEL_27:
      v54(v55, v45);
      goto LABEL_28;
    }

    v47 = sub_1E5A2BE84();
    v31 = swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v49 = &type metadata for WorkoutPlanFilterKind;
    v51 = v61;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    (*(v87 + 8))(v51, v27);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v86);
  return v31;
}

unint64_t sub_1E58FCA04()
{
  result = qword_1ECFFCCA0;
  if (!qword_1ECFFCCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCCA8, &qword_1E5A333D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCA0);
  }

  return result;
}

unint64_t sub_1E58FCA68()
{
  result = qword_1ECFFCCB0;
  if (!qword_1ECFFCCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCB0);
  }

  return result;
}

unint64_t sub_1E58FCB70()
{
  result = qword_1ECFFCCB8;
  if (!qword_1ECFFCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCB8);
  }

  return result;
}

unint64_t sub_1E58FCBC8()
{
  result = qword_1ECFFCCC0;
  if (!qword_1ECFFCCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCC0);
  }

  return result;
}

unint64_t sub_1E58FCC20()
{
  result = qword_1ECFFCCC8;
  if (!qword_1ECFFCCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCC8);
  }

  return result;
}

unint64_t sub_1E58FCC78()
{
  result = qword_1ECFFCCD0;
  if (!qword_1ECFFCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCD0);
  }

  return result;
}

unint64_t sub_1E58FCCD0()
{
  result = qword_1ECFFCCD8;
  if (!qword_1ECFFCCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCD8);
  }

  return result;
}

unint64_t sub_1E58FCD28()
{
  result = qword_1ECFFCCE0;
  if (!qword_1ECFFCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCE0);
  }

  return result;
}

unint64_t sub_1E58FCD80()
{
  result = qword_1ECFFCCE8;
  if (!qword_1ECFFCCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCE8);
  }

  return result;
}

unint64_t sub_1E58FCDD8()
{
  result = qword_1ECFFCCF0;
  if (!qword_1ECFFCCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCF0);
  }

  return result;
}

unint64_t sub_1E58FCE30()
{
  result = qword_1ECFFCCF8;
  if (!qword_1ECFFCCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCCF8);
  }

  return result;
}

unint64_t sub_1E58FCE88()
{
  result = qword_1ECFFCD00;
  if (!qword_1ECFFCD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD00);
  }

  return result;
}

unint64_t sub_1E58FCEE0()
{
  result = qword_1ECFFCD08;
  if (!qword_1ECFFCD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD08);
  }

  return result;
}

unint64_t sub_1E58FCF38()
{
  result = qword_1ECFFCD10;
  if (!qword_1ECFFCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD10);
  }

  return result;
}

unint64_t sub_1E58FCF90()
{
  result = qword_1ECFFCD18;
  if (!qword_1ECFFCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD18);
  }

  return result;
}

unint64_t sub_1E58FCFE8()
{
  result = qword_1ECFFCD20;
  if (!qword_1ECFFCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD20);
  }

  return result;
}

unint64_t sub_1E58FD040()
{
  result = qword_1ECFFCD28;
  if (!qword_1ECFFCD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD28);
  }

  return result;
}

unint64_t sub_1E58FD098()
{
  result = qword_1ECFFCD30;
  if (!qword_1ECFFCD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD30);
  }

  return result;
}

unint64_t sub_1E58FD0F0()
{
  result = qword_1ECFFCD38;
  if (!qword_1ECFFCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD38);
  }

  return result;
}

unint64_t sub_1E58FD148()
{
  result = qword_1ECFFCD40;
  if (!qword_1ECFFCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD40);
  }

  return result;
}

unint64_t sub_1E58FD1A0()
{
  result = qword_1ECFFCD48;
  if (!qword_1ECFFCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD48);
  }

  return result;
}

unint64_t sub_1E58FD1F8()
{
  result = qword_1ECFFCD50;
  if (!qword_1ECFFCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD50);
  }

  return result;
}

unint64_t sub_1E58FD250()
{
  result = qword_1ECFFCD58;
  if (!qword_1ECFFCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCD58);
  }

  return result;
}

FitnessWorkoutPlan::ScheduleReviewPage_optional __swiftcall ScheduleReviewPage.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t *sub_1E58FD2CC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1E58FD300()
{
  result = qword_1ECFFCDB0;
  if (!qword_1ECFFCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCDB0);
  }

  return result;
}

unint64_t sub_1E58FD358()
{
  result = qword_1ECFFCDB8;
  if (!qword_1ECFFCDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCDC0, &qword_1E5A3C5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCDB8);
  }

  return result;
}

unint64_t sub_1E58FD488()
{
  result = qword_1ECFFCDC8;
  if (!qword_1ECFFCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCDC8);
  }

  return result;
}

uint64_t PreviousPlanLockupEnvironment.init(fetchDetailForIdentifier:repeatPlan:makeWorkoutPlansUpdatedStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t WorkoutPlansState.init(allowWorkoutPlanCreation:allowWorkoutPlanManagement:hasActiveWorkoutPlan:layout:locale:sizeClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_1E58D5C24(a1, a7);
  v13 = type metadata accessor for WorkoutPlansState();
  sub_1E58D5C24(a2, a7 + v13[5]);
  sub_1E58D5C24(a3, a7 + v13[6]);
  sub_1E58FD628(a4, a7 + v13[7]);
  v14 = v13[8];
  v15 = sub_1E5A29EB4();
  result = (*(*(v15 - 8) + 32))(a7 + v14, a5, v15);
  *(a7 + v13[9]) = a6;
  return result;
}

uint64_t type metadata accessor for WorkoutPlansState()
{
  result = qword_1ECFFCE28;
  if (!qword_1ECFFCE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E58FD628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlansLayout();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58FD698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutPlansState.allowWorkoutPlanManagement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutPlansState() + 20);

  return sub_1E58FD698(v3, a1);
}

uint64_t WorkoutPlansState.hasActiveWorkoutPlan.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutPlansState() + 24);

  return sub_1E58FD698(v3, a1);
}

uint64_t WorkoutPlansState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlansState() + 32);
  v4 = sub_1E5A29EB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_1E58FD87C()
{
  v1 = *v0;
  v2 = 0x74756F79616CLL;
  v3 = 0x656C61636F6CLL;
  if (v1 != 4)
  {
    v3 = 0x73616C43657A6973;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ALL;
  if (v1 != 1)
  {
    v4 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E58FD940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E58FE9A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58FD968(uint64_t a1)
{
  v2 = sub_1E58FDD04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58FD9A4(uint64_t a1)
{
  v2 = sub_1E58FDD04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlansState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCDD0, &qword_1E5A33F08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58FDD04();
  sub_1E5A2C224();
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  sub_1E58FE478(&qword_1ECFFCDE0);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v11 = type metadata accessor for WorkoutPlansState();
    v12 = v11[5];
    v23 = 1;
    sub_1E5A2C0B4();
    v13 = v11[6];
    v22 = 2;
    sub_1E5A2C0B4();
    v14 = v11[7];
    v21 = 3;
    type metadata accessor for WorkoutPlansLayout();
    sub_1E58FE4E8(&qword_1ECFFCDE8, type metadata accessor for WorkoutPlansLayout);
    sub_1E5A2C0B4();
    v15 = v11[8];
    v20 = 4;
    sub_1E5A29EB4();
    sub_1E58FE4E8(&qword_1ECFFCDF0, MEMORY[0x1E6969770]);
    sub_1E5A2C0B4();
    v19 = *(v3 + v11[9]);
    v18 = 5;
    sub_1E58FDD58();
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E58FDD04()
{
  result = qword_1ECFFCDD8;
  if (!qword_1ECFFCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCDD8);
  }

  return result;
}

unint64_t sub_1E58FDD58()
{
  result = qword_1ECFFCDF8;
  if (!qword_1ECFFCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCDF8);
  }

  return result;
}

uint64_t WorkoutPlansState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1E5A29EB4();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for WorkoutPlansLayout();
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  v8 = *(*(v46 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v46);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE00, &qword_1E5A33F10);
  v18 = *(v17 - 8);
  v44 = v17;
  v45 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  v22 = type metadata accessor for WorkoutPlansState();
  v23 = *(*(v22 - 1) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1E58FDD04();
  v47 = v21;
  v28 = v48;
  sub_1E5A2C214();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v29 = v11;
  v56 = 0;
  sub_1E58FE478(&qword_1ECFFCE08);
  v30 = v44;
  sub_1E5A2BFE4();
  v31 = v16;
  v32 = v25;
  sub_1E58D5C24(v31, v25);
  v55 = 1;
  sub_1E5A2BFE4();
  sub_1E58D5C24(v14, &v25[v22[5]]);
  v54 = 2;
  sub_1E5A2BFE4();
  sub_1E58D5C24(v29, &v25[v22[6]]);
  v53 = 3;
  sub_1E58FE4E8(&qword_1ECFFCE10, type metadata accessor for WorkoutPlansLayout);
  v33 = v40;
  sub_1E5A2BFE4();
  v34 = v45;
  v48 = 0;
  sub_1E58FD628(v33, v32 + v22[7]);
  v52 = 4;
  sub_1E58FE4E8(&qword_1ECFFCE18, MEMORY[0x1E6969770]);
  v35 = v39;
  v36 = v43;
  sub_1E5A2BFE4();
  (*(v42 + 32))(v32 + v22[8], v35, v36);
  v50 = 5;
  sub_1E58FE530();
  sub_1E5A2BFE4();
  (*(v34 + 8))(v47, v30);
  *(v32 + v22[9]) = v51;
  sub_1E58FE584(v32, v38, type metadata accessor for WorkoutPlansState);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_1E58FE5EC(v32, type metadata accessor for WorkoutPlansState);
}

uint64_t sub_1E58FE478(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC100, &qword_1E5A2FE90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E58FE4E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E58FE530()
{
  result = qword_1ECFFCE20;
  if (!qword_1ECFFCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCE20);
  }

  return result;
}

uint64_t sub_1E58FE584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E58FE5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s18FitnessWorkoutPlan0B10PlansStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1E5A2B8F4() & 1) != 0 && (v4 = type metadata accessor for WorkoutPlansState(), v5 = v4[5], (sub_1E5A2B8F4()) && (v6 = v4[6], (sub_1E5A2B8F4()) && (MEMORY[0x1E6930EA0](a1 + v4[7], a2 + v4[7]) & 1) != 0 && (MEMORY[0x1E6930AC0](a1 + v4[8], a2 + v4[8]))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

void sub_1E58FE788()
{
  sub_1E58FE834();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WorkoutPlansLayout();
    if (v1 <= 0x3F)
    {
      sub_1E5A29EB4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E58FE834()
{
  if (!qword_1ECFFCE38)
  {
    v0 = sub_1E5A2B904();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECFFCE38);
    }
  }
}

unint64_t sub_1E58FE8A0()
{
  result = qword_1ECFFCE40;
  if (!qword_1ECFFCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCE40);
  }

  return result;
}

unint64_t sub_1E58FE8F8()
{
  result = qword_1ECFFCE48;
  if (!qword_1ECFFCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCE48);
  }

  return result;
}

unint64_t sub_1E58FE950()
{
  result = qword_1ECFFCE50;
  if (!qword_1ECFFCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCE50);
  }

  return result;
}

uint64_t sub_1E58FE9A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001E5A46500 == a2;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E5A46520 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5A46540 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E58FEBD8(uint64_t (*a1)(uint64_t))
{
  v72 = a1;
  v1 = sub_1E5A2A004();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v56 - v7;
  v9 = sub_1E5A29EC4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A29FE4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - v20;
  v22 = v10[13];
  v65 = *MEMORY[0x1E6969868];
  v63 = v22;
  v64 = v10 + 13;
  v22(v13);
  sub_1E5A29ED4();
  v23 = v10[1];
  v57 = v13;
  v68 = v10 + 1;
  v69 = v9;
  v62 = v23;
  v23(v13, v9);
  sub_1E5A29F04();
  sub_1E5A29E94();
  v24 = sub_1E5A29EB4();
  v25 = *(v24 - 8);
  v60 = *(v25 + 56);
  v61 = v24;
  v59 = v25 + 56;
  v60(v8, 0, 1);
  v70 = v8;
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  v71 = v4;
  sub_1E5A29FB4();
  v26 = sub_1E5A29F64();
  v27 = *(v15 + 8);
  v66 = v15 + 8;
  v67 = v14;
  v58 = v27;
  v27(v21, v14);
  v28 = *(v26 + 16);

  v29 = sub_1E590E188(MEMORY[0x1E69E7CC0]);
  if (!v28)
  {
    return v29;
  }

  v30 = 0;
  while (1)
  {
    if (v30 > 6)
    {
      goto LABEL_4;
    }

    v33 = v57;
    v34 = v69;
    v63(v57, v65, v69);
    sub_1E5A29ED4();
    v62(v33, v34);
    sub_1E5A29F04();
    v35 = v70;
    sub_1E5A29E94();
    (v60)(v35, 0, 1, v61);
    sub_1E5A29FA4();
    sub_1E5A29FF4();
    v36 = sub_1E5A29FB4();
    v37 = v72(v36);
    v58(v19, v67);
    v38 = v30 + 2;
    if ((v30 + 2) == 8)
    {
      v38 = 1;
    }

    if (*(v37 + 16) < v38)
    {
      break;
    }

    v39 = (v37 + 16 + 16 * v38);
    v40 = *v39;
    v41 = v39[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v29;
    v44 = sub_1E58EF8CC(v30);
    v45 = v29[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      goto LABEL_22;
    }

    v48 = v43;
    if (v29[3] >= v47)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v73;
        if (v43)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1E5900924();
        v29 = v73;
        if (v48)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1E59011C0(v47, isUniquelyReferenced_nonNull_native);
      v49 = sub_1E58EF8CC(v30);
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_24;
      }

      v44 = v49;
      v29 = v73;
      if (v48)
      {
LABEL_3:
        v31 = (v29[7] + 16 * v44);
        v32 = v31[1];
        *v31 = v40;
        v31[1] = v41;

        goto LABEL_4;
      }
    }

    v29[(v44 >> 6) + 8] |= 1 << v44;
    *(v29[6] + v44) = v30;
    v51 = (v29[7] + 16 * v44);
    *v51 = v40;
    v51[1] = v41;
    v52 = v29[2];
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
      goto LABEL_23;
    }

    v29[2] = v54;
LABEL_4:
    if (v28 == ++v30)
    {
      return v29;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1E5A2C134();
  __break(1u);
  return result;
}

Swift::Int __swiftcall Calendar.normalizedWeekdayIndex(_:)(Swift::Int a1)
{
  v2 = *(sub_1E5A29F34() + 16);

  v3 = sub_1E5A29EF4();
  v4 = __OFSUB__(a1, v3);
  result = a1 - v3;
  if (v4)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  v6 = -result;
  if (__OFSUB__(0, result))
  {
    goto LABEL_7;
  }

  result += v2;
  if (__OFSUB__(v2, v6))
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t Calendar.endOfDay(_:)@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_1E5A29FC4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE58, &qword_1E5A340E8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = sub_1E5A29E34();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v36 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  sub_1E5A29EE4();
  v20 = *MEMORY[0x1E6969A48];
  v34 = v3[13];
  v34(v6, v20, v2);
  v38 = v1;
  sub_1E5A29F94();
  v21 = v3[1];
  v35 = v3 + 1;
  v21(v6, v2);
  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    (*(v14 + 8))(v19, v13);
  }

  else
  {
    v23 = *(v14 + 32);
    v32 = v14 + 32;
    v33 = v22;
    v24 = v36;
    v31 = v23;
    v23(v36, v12, v13);
    v34(v6, *MEMORY[0x1E6969A98], v2);
    v25 = v37;
    sub_1E5A29F94();
    v21(v6, v2);
    v26 = *(v14 + 8);
    v26(v24, v13);
    v26(v19, v13);
    if (v33(v25, 1, v13) != 1)
    {
      v27 = v39;
      v31(v39, v25, v13);
      v28 = 0;
      return (*(v14 + 56))(v27, v28, 1, v13);
    }

    v12 = v25;
  }

  v27 = v39;
  sub_1E58FF53C(v12);
  v28 = 1;
  return (*(v14 + 56))(v27, v28, 1, v13);
}

uint64_t sub_1E58FF53C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE58, &qword_1E5A340E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Calendar.availableDays(for:schedule:)(uint64_t a1, uint64_t *a2)
{
  v29[1] = a1;
  v3 = sub_1E5A29E34();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5A2A004();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v29 - v11;
  v13 = sub_1E5A29EC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E5A29FE4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a2;
  (*(v14 + 104))(v17, *MEMORY[0x1E6969868], v13);
  sub_1E5A29ED4();
  (*(v14 + 8))(v17, v13);
  sub_1E5A29F04();
  sub_1E5A29E94();
  v24 = sub_1E5A29EB4();
  (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  sub_1E5A29EE4();
  v38 = v22;
  v39 = v6;
  v25 = sub_1E58FFAA4(sub_1E58FFA88, v37, 0, 7);
  v35 = v22;
  v36 = v23;
  v26 = sub_1E5900358(sub_1E58FFF88, v34, v25);
  v33 = v22;
  v27 = sub_1E58FFFA8(sub_1E59007A8, v32, v26);

  (*(v30 + 8))(v6, v31);
  (*(v19 + 8))(v22, v18);
  return v27;
}

uint64_t sub_1E58FF960(uint64_t *a1)
{
  v2 = sub_1E5A29FC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  (*(v3 + 104))(v6, *MEMORY[0x1E6969A48], v2);
  sub_1E5A29F94();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E58FFA88(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1E58FF960(a1);
}

uint64_t sub_1E58FFAA4(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE58, &qword_1E5A340E8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_1E5A29E34();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v33 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v28 = &v27 - v16;
  v29 = v17;
  v18 = (v17 + 48);
  v32 = (v17 + 32);
  v19 = MEMORY[0x1E69E7CC0];
  v30 = a1;
  v31 = a4;
  while (1)
  {
    v35 = a3;
    a1(&v35);
    if (v4)
    {
      break;
    }

    if ((*v18)(v11, 1, v12) == 1)
    {
      result = sub_1E58FF53C(v11);
    }

    else
    {
      v21 = v18;
      v22 = *v32;
      v23 = v28;
      (*v32)(v28, v11, v12);
      v22(v33, v23, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1E58E6CA4(0, v19[2] + 1, 1, v19);
      }

      v25 = v19[2];
      v24 = v19[3];
      if (v25 >= v24 >> 1)
      {
        v19 = sub_1E58E6CA4(v24 > 1, v25 + 1, 1, v19);
      }

      v19[2] = v25 + 1;
      result = (v22)(v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, v33, v12);
      a1 = v30;
      a4 = v31;
      v18 = v21;
    }

    if (a4 == a3)
    {
      return v19;
    }

    if (__OFADD__(a3++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return v19;
}

uint64_t sub_1E58FFD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E5A29FC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x1E6969AB0], v5);
  v10 = sub_1E5A29FD4();
  (*(v6 + 8))(v9, v5);
  v11 = *(sub_1E5A29F34() + 16);

  v12 = sub_1E5A29EF4();
  v13 = __OFSUB__(v10, v12);
  v14 = v10 - v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v14 < 0)
  {
    v15 = -v14;
    if (!__OFSUB__(0, v14))
    {
      v14 += v11;
      if (!__OFSUB__(v11, v15))
      {
        goto LABEL_5;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_5:
  if (!a3)
  {
    return 0;
  }

  v16 = sub_1E591B840(a3);
  if (*(v16 + 16))
  {
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
    v18 = sub_1E5A2BF14();
    v16 = v17;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC8];
  }

  v27 = v18;
  sub_1E591C604(v16, 1, &v27);
  if (!v3)
  {
    v20 = sub_1E590011C(v27);

    v21 = *(v20 + 16);
    v22 = 32;
    do
    {
      v23 = v21-- != 0;
      v19 = v23;
      if (!v23)
      {
        break;
      }

      v24 = *(v20 + v22);
      v22 += 8;
    }

    while (v24 != v14);

    return v19;
  }

LABEL_23:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1E58FFFA8(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1E590DE28(0, v4, 0);
  v5 = v20;
  v8 = *(sub_1E5A29E34() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v18, v9);
    if (v3)
    {
      break;
    }

    v11 = v18;
    v12 = v19;
    v20 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v18;
      sub_1E590DE28((v13 > 1), v14 + 1, 1);
      v11 = v17;
      v5 = v20;
    }

    *(v5 + 16) = v14 + 1;
    v15 = v5 + 24 * v14;
    *(v15 + 32) = v11;
    *(v15 + 48) = v12;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E590011C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1E590DE68(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1E5A2BDE4();
  v7 = v24;
  v8 = 0;
  v9 = *(a1 + 36);
  v25 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(a1 + 48) + result);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = result;
      sub_1E590DE68((v14 > 1), v15 + 1, 1);
      v7 = v24;
      v9 = v25;
      result = v23;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v13;
    v10 = 1 << *(a1 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v16 = *(v4 + 8 * v11);
    if ((v16 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v10 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v11 << 6;
      v19 = v11 + 1;
      v20 = (a1 + 72 + 8 * v11);
      while (v19 < (v10 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1E5901D04(result, v25, 0);
          v7 = v24;
          v9 = v25;
          v10 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1E5901D04(result, v25, 0);
      v7 = v24;
      v9 = v25;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v7)
    {
      return v2;
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
  return result;
}

uint64_t sub_1E5900358(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_1E5A29E34();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x1E69E7CC0];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E590DE48(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1E590DE48(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_1E5900628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1E5A29FE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A29E34();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1);
  (*(v7 + 16))(v10, a2, v6);
  return CalendarDay.init(date:in:)(v14, v10, a3);
}

void *sub_1E59007C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
  v2 = *v0;
  v3 = sub_1E5A2BEF4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1E5900924()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE60, &qword_1E5A340F0);
  v2 = *v0;
  v3 = sub_1E5A2BEF4();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_1E5900A8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE68, &qword_1E5A340F8);
  v2 = *v0;
  v3 = sub_1E5A2BEF4();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = (*(v4 + 48) + 32 * v17);
        v21 = v18[1];
        *v20 = *v18;
        v20[1] = v21;
        *(*(v4 + 56) + 8 * v17) = v19;
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

void *sub_1E5900BF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE70, &qword_1E5A34100);
  v2 = *v0;
  v3 = sub_1E5A2BEF4();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;
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

void *sub_1E5900D90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE78, &qword_1E5A34108);
  v2 = *v0;
  v3 = sub_1E5A2BEF4();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_1E58BD154(&v32, &v31);
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

uint64_t sub_1E5900F30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
  v33 = a2;
  result = sub_1E5A2BF04();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v21);
      result = sub_1E5A2C204();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E59011C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE60, &qword_1E5A340F0);
  v35 = a2;
  result = sub_1E5A2BF04();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v22 = *(*(v5 + 48) + v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = v23[1];
      v36 = *v23;
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v22);
      result = sub_1E5A2C204();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v36;
      v17[1] = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E5901460(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE68, &qword_1E5A340F8);
  result = sub_1E5A2BF04();
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
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v36 = v23[1];
      v37 = *v23;
      v24 = *(v22 + 8 * v21);
      if ((a2 & 1) == 0)
      {
        v25 = *(v22 + 8 * v21);
      }

      v26 = *(v8 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v37);
      MEMORY[0x1E6932DE0](*(&v37 + 1));
      MEMORY[0x1E6932DE0](v36);
      MEMORY[0x1E6932DE0](*(&v36 + 1));
      result = sub_1E5A2C204();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v37;
      v17[1] = v36;
      *(*(v8 + 56) + 8 * v16) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E5901728(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE70, &qword_1E5A34100);
  v40 = a2;
  result = sub_1E5A2BF04();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 32 * v22);
      v26 = v25[1];
      v42 = *v25;
      v43 = *v23;
      v28 = v25[2];
      v27 = v25[3];
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1E5A2C1B4();
      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v43;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 32 * v16);
      v13 = v41;
      *v18 = v42;
      v18[1] = v26;
      v18[2] = v28;
      v18[3] = v27;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E5901A08(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE78, &qword_1E5A34108);
  v40 = a2;
  result = sub_1E5A2BF04();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + (v22 << 6));
      if (v40)
      {
        v41 = *v26;
        v42 = v26[1];
        v43 = v26[2];
        v44 = v26[3];
      }

      else
      {
        v27 = *v26;
        v28 = v26[1];
        v29 = v26[3];
        v46 = v26[2];
        v47 = v29;
        v45[0] = v27;
        v45[1] = v28;
        v43 = v46;
        v44 = v29;
        v41 = v27;
        v42 = v28;

        sub_1E58BD154(v45, v48);
      }

      v30 = *(v8 + 40);
      sub_1E5A2C1B4();
      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + (v16 << 6));
      *v18 = v41;
      v18[1] = v42;
      v18[2] = v43;
      v18[3] = v44;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1E5901D04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t BodyFocusSelectionView.init(store:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  result = sub_1E5A2A654();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5901DA0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for EditItem();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = *(v1 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v18 = *&v14[*(v8 + 40)];

  sub_1E58F00BC(v14, type metadata accessor for EditItem);
  if (v18)
  {
    if (*(v18 + 16))
    {
      v19 = *(v18 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](0);
      sub_1E5A2BB74();
      v20 = sub_1E5A2C204();
      v21 = -1 << *(v18 + 32);
      v22 = v20 & ~v21;
      if ((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        v24 = *(v18 + 48);
        while (1)
        {
          v25 = v24 + 24 * v22;
          if (!*(v25 + 16))
          {
            v26 = *v25 == v15 && *(v25 + 8) == v16;
            if (v26 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }
          }

          v22 = (v22 + 1) & v23;
          if (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

LABEL_25:

        return 1;
      }
    }

LABEL_26:

    return 0;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  sub_1E58EFFE4(v12, v6);
  sub_1E58F00BC(v12, type metadata accessor for EditItem);
  v27 = type metadata accessor for WorkoutPlanScheduledItem();
  if ((*(*(v27 - 8) + 48))(v6, 1, v27) != 1)
  {
    v28 = *(v6 + 1);

    sub_1E58F00BC(v6, type metadata accessor for WorkoutPlanScheduledItem);
    if (*(v28 + 16))
    {
      v29 = *(v28 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](0);
      sub_1E5A2BB74();
      v30 = sub_1E5A2C204();
      v31 = -1 << *(v28 + 32);
      v32 = v30 & ~v31;
      if ((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        v34 = *(v28 + 48);
        while (1)
        {
          v35 = v34 + 24 * v32;
          if (!*(v35 + 16))
          {
            v36 = *v35 == v15 && *(v35 + 8) == v16;
            if (v36 || (sub_1E5A2C114() & 1) != 0)
            {
              goto LABEL_25;
            }
          }

          v32 = (v32 + 1) & v33;
          if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }
    }

    goto LABEL_26;
  }

  sub_1E58BAD14(v6, &qword_1ECFFB790, &qword_1E5A2D620);
  return 0;
}

uint64_t sub_1E5902174(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v48 - v5;
  v6 = type metadata accessor for EditItem();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - v14;
  v16 = *a1;
  v17 = a1[1];
  v18 = *(v1 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v19 = &v15[*(v6 + 36)];
  v21 = *v19;
  v20 = v19[1];

  sub_1E58F00BC(v15, type metadata accessor for EditItem);
  if (!v20)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v22 = v49;
  if (!*(v49 + 16))
  {

    goto LABEL_7;
  }

  v23 = sub_1E58EF508(v21, v20);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v26 = *(*(v22 + 56) + (v23 << 6));

  v27 = sub_1E59E8F3C(v16, v17, v26);

  if ((v27 & 1) == 0)
  {
    return 1;
  }

LABEL_8:
  swift_getKeyPath();

  sub_1E5A2B934();

  v29 = *&v13[*(v6 + 32)];

  result = sub_1E58F00BC(v13, type metadata accessor for EditItem);
  if (!v29)
  {
    swift_getKeyPath();

    sub_1E5A2B934();

    v31 = v48;
    sub_1E58EFFE4(v10, v48);
    sub_1E58F00BC(v10, type metadata accessor for EditItem);
    v32 = type metadata accessor for WorkoutPlanScheduledItem();
    if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
    {
      sub_1E58BAD14(v31, &qword_1ECFFB790, &qword_1E5A2D620);
      return 0;
    }

    v29 = *(v31 + 8);

    result = sub_1E58F00BC(v31, type metadata accessor for WorkoutPlanScheduledItem);
  }

  v33 = 0;
  v34 = v29 + 56;
  v35 = 1 << *(v29 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v29 + 56);
  do
  {
    if (!v37)
    {
      while (1)
      {
        v38 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
          return result;
        }

        if (v38 >= ((v35 + 63) >> 6))
        {
          break;
        }

        v37 = *(v34 + 8 * v38);
        ++v33;
        if (v37)
        {
          v33 = v38;
          goto LABEL_21;
        }
      }

      v28 = 0;
      if (!*(v29 + 16))
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

    v38 = v33;
LABEL_21:
    v39 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
  }

  while (*(*(v29 + 48) + 24 * (v39 | (v38 << 6)) + 16));
  v28 = 1;
  if (!*(v29 + 16))
  {
    goto LABEL_35;
  }

LABEL_25:
  v40 = *(v29 + 40);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](0);
  sub_1E5A2BB74();
  v41 = sub_1E5A2C204();
  v42 = -1 << *(v29 + 32);
  v43 = v41 & ~v42;
  if (((*(v34 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
  {
LABEL_35:

    return v28;
  }

  v44 = ~v42;
  v45 = *(v29 + 48);
  while (1)
  {
    v46 = v45 + 24 * v43;
    if (!*(v46 + 16))
    {
      v47 = *v46 == v16 && *(v46 + 8) == v17;
      if (v47 || (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }
    }

    v43 = (v43 + 1) & v44;
    if (((*(v34 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  return 0;
}

uint64_t sub_1E5902690(uint64_t a1)
{
  v3 = *(v1 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v10[0] = v9[0];
  v10[1] = v9[1];
  v10[2] = v9[2];
  v10[3] = v9[3];

  sub_1E58F011C(v10);

  v4 = sub_1E5905490(*&v9[0], a1);

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_1E5A206BC(v4[2], 0);
  v7 = sub_1E5A234FC(v9, v6 + 4, v5, v4);

  sub_1E58D26C0();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:
    v6 = MEMORY[0x1E69E7CC0];
  }

  *&v9[0] = v6;
  sub_1E590478C(v9);

  return *&v9[0];
}

uint64_t sub_1E59027F8(uint64_t a1)
{
  v2 = sub_1E5A2B764();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1E5A2B774();
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = ceil(*(a1 + 16) * 0.5);
  if (v12 == INFINITY)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v12 < 9.22337204e18)
  {
    v13 = v12;
    *v6 = xmmword_1E5A317E0;
    (*(v3 + 104))(v6, *MEMORY[0x1E697D748], v2);
    sub_1E5A2B784();
    return sub_1E59E9100(v11, v13);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1E59029A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *v2;
  v9 = v2[1];
  v17 = *v2;
  v18 = v9;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  if (sub_1E5902174(&v13))
  {
    result = sub_1E5A2ABA4();
    v11 = MEMORY[0x1E697FE70];
    *(a2 + 24) = MEMORY[0x1E697FE80];
    *(a2 + 32) = v11;
    *a2 = result;
  }

  else
  {
    v17 = v8;
    v18 = v9;
    v13 = v4;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    if (sub_1E5901DA0(&v13))
    {
      result = sub_1E5A2B404();
    }

    else
    {
      result = sub_1E5A2B424();
    }

    v12 = MEMORY[0x1E6981568];
    *(a2 + 24) = MEMORY[0x1E69815C0];
    *(a2 + 32) = v12;
    *a2 = result;
  }

  return result;
}

uint64_t BodyFocusSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  v2 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE88, &qword_1E5A34110);
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v41 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE90, &qword_1E5A34118);
  v8 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v46 = v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE98, &qword_1E5A34120);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v42 = v41 - v13;
  v14 = type metadata accessor for EditItem();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  v19 = v1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v21 = &v18[*(v15 + 44)];
  v23 = *v21;
  v22 = v21[1];

  sub_1E58F00BC(v18, type metadata accessor for EditItem);
  if (!v22)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v24 = v51[0];
  if (!*(v51[0] + 16))
  {

    goto LABEL_7;
  }

  v25 = sub_1E58EF508(v23, v22);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_7:

LABEL_8:
    v40 = 1;
    v39 = v48;
    return (*(v11 + 56))(v39, v40, 1, v10);
  }

  v28 = *(*(v24 + 56) + (v25 << 6));

  v41[3] = v41;
  MEMORY[0x1EEE9AC00](v29);
  v41[2] = &v41[-6];
  v41[-4] = v20;
  v41[-3] = v19;
  v41[-2] = v28;
  sub_1E59040A4(v51);
  v41[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC670, &unk_1E5A37DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCEA0, &unk_1E5A34170);
  sub_1E58EF58C();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCEA8, &unk_1E5A34180);
  v31 = sub_1E58CD164(&qword_1ECFFCEB0, &qword_1ECFFCEA8, &unk_1E5A34180);
  v49 = v30;
  v50 = v31;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B714();

  sub_1E5A2ADF4();
  sub_1E59042D8();
  v32 = v46;
  sub_1E5A2B134();
  (*(v44 + 8))(v7, v4);
  v51[0] = sub_1E5A2B414();
  *(v32 + *(v45 + 36)) = sub_1E5A2B634();
  v33 = *MEMORY[0x1E697E728];
  v34 = sub_1E5A2A684();
  v35 = v47;
  (*(*(v34 - 8) + 104))(v47, v33, v34);
  sub_1E5904640(&qword_1ECFFBF40, MEMORY[0x1E697E730]);
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E59043E8();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
    v37 = v42;
    sub_1E5A2B164();
    sub_1E58BAD14(v35, &qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E58BAD14(v32, &qword_1ECFFCE90, &qword_1E5A34118);
    v38 = v48;
    (*(v11 + 32))(v48, v37, v10);
    v39 = v38;
    v40 = 0;
    return (*(v11 + 56))(v39, v40, 1, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5903138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = sub_1E5A2AAC4();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCEA8, &unk_1E5A34180);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  sub_1E5A2AD64();
  v18 = a1;
  v19 = a2;
  v20 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCEE0, &qword_1E5A34250);
  sub_1E58CD164(&qword_1ECFFCEE8, &qword_1ECFFCEE0, &qword_1E5A34250);
  sub_1E5A2A4C4();
  sub_1E5A2AAB4();
  LOBYTE(a2) = sub_1E5A2AD64();
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != a2)
  {
    sub_1E5A2AD74();
  }

  sub_1E58CD164(&qword_1ECFFCEB0, &qword_1ECFFCEA8, &unk_1E5A34180);
  sub_1E5A2B234();
  (*(v6 + 8))(v9, v17);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1E59033C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E5A2AB24();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1E5902690(a3);
  sub_1E59027F8(v6);

  sub_1E5A2A934();
  sub_1E5904640(&qword_1EE2CFAF0, MEMORY[0x1E697FCB0]);
  sub_1E5A2C264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCEF0, &qword_1E5A34258);
  sub_1E5904688();
  return sub_1E5A2B824();
}

uint64_t sub_1E5903550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E5902690(a3);
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCF00, &qword_1E5A34298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC718, &unk_1E5A342A0);
  sub_1E58CD164(qword_1ECFFCF08, &qword_1ECFFCF00, &qword_1E5A34298);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6E8, &unk_1E5A34260);
  sub_1E58EFC30();
  sub_1E58EFCE8();
  swift_getOpaqueTypeConformance2();
  return sub_1E5A2B6E4();
}

uint64_t sub_1E59036D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC6E8, &unk_1E5A34260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v11;
  v15[5] = v12;
  v15[6] = v13;
  v15[7] = v14;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = v11;
  v17[7] = v12;
  v17[8] = v13;
  v17[9] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC728, &unk_1E5A31980);
  sub_1E58EFDB8();
  sub_1E5A2B574();
  v18[4] = a2;
  v18[5] = a3;
  v18[0] = v11;
  v18[1] = v12;
  v18[2] = v13;
  v18[3] = v14;
  v10[*(v7 + 36)] = (sub_1E5902174(v18) & 1) == 0;
  sub_1E58EFC30();
  sub_1E58EFCE8();
  sub_1E5A2B0C4();
  return sub_1E58BAD14(v10, &qword_1ECFFC6E8, &unk_1E5A34260);
}

uint64_t sub_1E5903898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for WorkoutPlanCreationAction();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15[8] = 1;
  *v13 = 7;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = 0;
  v13[32] = 1;
  *(v13 + 5) = a3;
  *(v13 + 6) = a4;
  *(v13 + 7) = a5;
  *(v13 + 8) = a6;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0u;
  *(v13 + 168) = 0u;
  *(v13 + 46) = 0;
  swift_storeEnumTagMultiPayload();

  sub_1E5A2B954();
  return sub_1E58F00BC(v13, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E59039B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = a5;
  v9 = a4;
  v67 = a4;
  v10 = a3;
  v66 = a3;
  v65 = a2;
  v64 = a1;
  v72 = a7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC778, &unk_1E5A319D0);
  v70 = *(v71 - 8);
  v13 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v60 = v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC750, &unk_1E5A31990);
  v16 = *(v15 - 8);
  v68 = v15 - 8;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v73 = v59 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC740, &unk_1E5A342B0);
  v20 = *(v19 - 8);
  v69 = v19 - 8;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v63 = v59 - v22;
  v78 = a1;
  v79 = a2;
  v74 = v10;
  v75 = v9;
  v76 = a5;
  v77 = a6;
  sub_1E59029A0(&v74, &v80);
  v59[2] = v82;
  v59[1] = __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
  v74 = a5;
  v75 = a6;
  v61 = a6;
  sub_1E58D1C80();

  v23 = sub_1E5A2AFD4();
  v25 = v24;
  v27 = v26;
  sub_1E5A2AED4();
  sub_1E5A2AE24();

  v28 = sub_1E5A2AFA4();
  v30 = v29;
  LOBYTE(v9) = v31;

  sub_1E58B3C9C(v23, v25, v27 & 1);

  v32 = sub_1E5A2AF84();
  v34 = v33;
  LOBYTE(v10) = v35;
  v37 = v36;
  sub_1E58B3C9C(v28, v30, v9 & 1);

  v74 = v32;
  v75 = v34;
  LOBYTE(v76) = v10 & 1;
  v77 = v37;
  sub_1E5A2AD64();
  sub_1E5A2B7E4();
  v38 = v60;
  sub_1E5A2B274();
  sub_1E58B3C9C(v32, v34, v10 & 1);

  __swift_destroy_boxed_opaque_existential_1(&v80);
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  v39 = v73;
  (*(v70 + 32))(v73, v38, v71);
  v40 = (v39 + *(v68 + 44));
  v41 = v85;
  v40[4] = v84;
  v40[5] = v41;
  v40[6] = v86;
  v42 = v81;
  *v40 = v80;
  v40[1] = v42;
  v43 = v83;
  v40[2] = v82;
  v40[3] = v43;
  v71 = sub_1E5A2B7E4();
  v45 = v44;
  v46 = v63;
  v47 = &v63[*(v69 + 44)];
  sub_1E5903FA0(v64, v65, v66, v67, v62, v61, &v74);
  v48 = v74;
  LOBYTE(v34) = v75;
  v49 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC780, &unk_1E5A342F0) + 36)];
  v50 = *MEMORY[0x1E697F468];
  v51 = sub_1E5A2A9B4();
  v52 = *(*(v51 - 8) + 104);
  v52(v49, v50, v51);
  *&v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)] = 256;
  *v47 = v48;
  v47[8] = v34;
  v53 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC760, &qword_1E5A342C0) + 36)];
  *v53 = v71;
  v53[1] = v45;
  v54 = v46;
  sub_1E58F0054(v73, v46, &qword_1ECFFC750, &unk_1E5A31990);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC728, &unk_1E5A31980);
  v56 = v72;
  v57 = v72 + *(v55 + 36);
  v52(v57, v50, v51);
  *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC770, &unk_1E5A319A0) + 36)) = 0;
  return sub_1E58F0054(v54, v56, &qword_1ECFFC740, &unk_1E5A342B0);
}

uint64_t sub_1E5903FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = a1;
  v15 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (sub_1E5901DA0(&v10))
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED026498;
    LOBYTE(v15) = 0;
  }

  else
  {
    if (qword_1ECFFB488 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED0264A8;
    LOBYTE(v15) = 1;
  }

  result = sub_1E5A2AA74();
  v9 = v11;
  *a7 = v10;
  *(a7 + 8) = v9;
  return result;
}

uint64_t sub_1E59040A4@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_1E59042D8()
{
  result = qword_1ECFFCEB8;
  if (!qword_1ECFFCEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE88, &qword_1E5A34110);
    sub_1E58EF58C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCEA8, &unk_1E5A34180);
    sub_1E58CD164(&qword_1ECFFCEB0, &qword_1ECFFCEA8, &unk_1E5A34180);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCEB8);
  }

  return result;
}

unint64_t sub_1E59043E8()
{
  result = qword_1ECFFCEC0;
  if (!qword_1ECFFCEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE90, &qword_1E5A34118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE88, &qword_1E5A34110);
    sub_1E59042D8();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFC6B8, &qword_1ECFFC6C0, &qword_1E5A31900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCEC0);
  }

  return result;
}

unint64_t sub_1E5904508()
{
  result = qword_1ECFFCED0;
  if (!qword_1ECFFCED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCED8, &qword_1E5A34228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE90, &qword_1E5A34118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E59043E8();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCED0);
  }

  return result;
}

uint64_t sub_1E5904640(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5904688()
{
  result = qword_1ECFFCEF8;
  if (!qword_1ECFFCEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCEF0, &qword_1E5A34258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6E8, &unk_1E5A34260);
    sub_1E58EFC30();
    sub_1E58EFCE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCEF8);
  }

  return result;
}

uint64_t sub_1E590478C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A22690(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E59047F8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E59047F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E5A2C0E4();
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
        v5 = sub_1E5A2BC24();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E59049C0(v7, v8, a1, v4);
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
    return sub_1E59048F0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E59048F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 32 * v4;
    result = *(v9 + 16);
    v10 = *(v9 + 24);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 16) && v10 == *(v12 + 24);
      if (v13 || (result = sub_1E5A2C114(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 40);
      result = *(v12 + 48);
      v10 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = result;
      *(v12 + 24) = v10;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E59049C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v8 = *v96;
    if (!*v96)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1E5A21290(v7);
      v7 = result;
    }

    v87 = v7 + 16;
    v88 = *(v7 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = &v7[16 * v88];
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1E5904F9C((*a3 + 32 * *v89), (*a3 + 32 * *v91), (*a3 + 32 * v92), v8);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_129;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_130;
        }

        *v89 = v90;
        *(v89 + 1) = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_131;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3 + 32 * v6;
      result = *(v9 + 16);
      v10 = *a3 + 32 * v8;
      if (result == *(v10 + 16) && *(v9 + 24) == *(v10 + 24))
      {
        v12 = 0;
      }

      else
      {
        result = sub_1E5A2C114();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = (v10 + 88);
        do
        {
          result = *(v13 - 1);
          if (result == *(v13 - 5) && *v13 == *(v13 - 4))
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1E5A2C114();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          v13 += 4;
          ++v6;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v15 = 32 * v6 - 16;
          v16 = (32 * v8) | 0x18;
          v17 = v6;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v19 = (v25 + v16);
              v20 = (v25 + v15);
              v21 = *(v19 - 3);
              v22 = *(v19 - 1);
              v23 = *v19;
              v24 = *v20;
              *(v19 - 3) = *(v20 - 1);
              *(v19 - 1) = v24;
              *(v20 - 1) = v21;
              *v20 = v22;
              *(v20 + 1) = v23;
            }

            ++v18;
            v15 -= 32;
            v16 += 32;
          }

          while (v18 < v17);
        }
      }
    }

    v26 = a3[1];
    if (v6 < v26)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v26)
        {
          v27 = a3[1];
        }

        else
        {
          v27 = (v8 + a4);
        }

        if (v27 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v27)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v42 = *(v7 + 2);
    v41 = *(v7 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1E58E6258((v41 > 1), v42 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v43;
    v44 = &v7[16 * v42];
    *(v44 + 4) = v8;
    *(v44 + 5) = v6;
    v45 = *v96;
    if (!*v96)
    {
      goto LABEL_142;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v7 + 4);
          v48 = *(v7 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_74:
          if (v50)
          {
            goto LABEL_120;
          }

          v63 = &v7[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_123;
          }

          v69 = &v7[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_127;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v73 = &v7[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_88:
        if (v68)
        {
          goto LABEL_122;
        }

        v76 = &v7[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v84 = *&v7[16 * v8 + 32];
        v85 = *&v7[16 * v46 + 40];
        sub_1E5904F9C((*a3 + 32 * v84), (*a3 + 32 * *&v7[16 * v46 + 32]), (*a3 + 32 * v85), v45);
        if (v4)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1E5A21290(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v86 = &v7[16 * v8];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_1E5A21204(v46);
        v43 = *(v7 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v7[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_118;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_119;
      }

      v58 = &v7[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_121;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_124;
      }

      if (v62 >= v54)
      {
        v80 = &v7[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_128;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v6 - 32;
  v94 = v8;
  v30 = (v8 - v6);
LABEL_43:
  v31 = v28 + 32 * v6;
  v32 = *(v31 + 16);
  v33 = *(v31 + 24);
  v34 = v30;
  v35 = v29;
  while (1)
  {
    v36 = v32 == *(v35 + 16) && v33 == *(v35 + 24);
    if (v36 || (result = sub_1E5A2C114(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v29 += 32;
      --v30;
      if (v6 != v27)
      {
        goto LABEL_43;
      }

      v6 = v27;
      v8 = v94;
      goto LABEL_54;
    }

    if (!v28)
    {
      break;
    }

    v37 = *(v35 + 32);
    v38 = *(v35 + 40);
    v32 = *(v35 + 48);
    v33 = *(v35 + 56);
    v39 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v39;
    *v35 = v37;
    *(v35 + 8) = v38;
    *(v35 + 16) = v32;
    *(v35 + 24) = v33;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1E5904F9C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (!v17 && (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v5 -= 32;
    do
    {
      v18 = *(v14 - 2) == *(v6 - 2) && *(v14 - 1) == *(v6 - 1);
      if (!v18 && (sub_1E5A2C114() & 1) != 0)
      {
        v21 = v6 - 32;
        if (v5 + 32 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      v19 = v14 - 32;
      if (v5 + 32 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

void *sub_1E59051C4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1E5905260(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1E5905260(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = result;
  v29 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v31 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v28 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 32 * v28);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[3];
      v18 = *(a4 + 40);
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      v19 = sub_1E5A2C204();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      if ((*(v31 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(a4 + 48) + 16 * v21);
          v24 = *v23 == v15 && v23[1] == v16;
          if (v24 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v31 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v27 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_26:

          return sub_1E59E07AC(v27, a2, v29, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E5905490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v38[1] = v3;
    v38[2] = v38;
    v39 = v8;
    MEMORY[0x1EEE9AC00](v10);
    v40 = v38 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v9);
    v43 = 0;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v45 = a2 + 56;
    v41 = v5;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v11 << 6);
      if (*(a2 + 16))
      {
        v20 = *(v5 + 48);
        v42 = v19;
        v21 = (v20 + 32 * v19);
        v3 = *v21;
        v22 = v21[1];
        v23 = v21[3];
        v24 = *(a2 + 40);
        sub_1E5A2C1B4();

        v44 = v23;

        sub_1E5A2BB74();
        v25 = sub_1E5A2C204();
        v26 = a2;
        v27 = -1 << *(a2 + 32);
        v9 = v25 & ~v27;
        if ((*(v45 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v28 = ~v27;
          while (1)
          {
            v29 = (*(v26 + 48) + 16 * v9);
            v30 = *v29 == v3 && v29[1] == v22;
            if (v30 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }

            v9 = (v9 + 1) & v28;
            if (((*(v45 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          *&v40[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
          v31 = __OFADD__(v43++, 1);
          a2 = v26;
          v5 = v41;
          if (v31)
          {
            __break(1u);
LABEL_27:
            v32 = sub_1E59E07AC(v40, v39, v43, v5);

            v33 = *MEMORY[0x1E69E9840];
            return v32;
          }
        }

        else
        {
LABEL_6:

          a2 = v26;
          v5 = v41;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_27;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();

  v36 = sub_1E59051C4(v35, v8, v5, a2);

  MEMORY[0x1E6933430](v35, -1, -1);

  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t sub_1E5905818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6961466863746566 && a2 == 0xEB0000000064656CLL;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6365536863746566 && a2 == 0xEC0000006E6F6974 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657070416D657469 && a2 == 0xEC00000064657261 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707061546D657469 && a2 == 0xEA00000000006465 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001E5A46560 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E5905AB8(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

unint64_t sub_1E5905B00(unsigned __int8 a1)
{
  v1 = 0x6961466863746566;
  v2 = 0xD000000000000025;
  if (a1 != 5)
  {
    v2 = 0x4164694477656976;
  }

  v3 = 0x707061546D657469;
  if (a1 != 3)
  {
    v3 = 0x646564616F6CLL;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6365536863746566;
  if (a1 != 1)
  {
    v4 = 0x657070416D657469;
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

uint64_t sub_1E5905C04(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5A2C114();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5905C78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6564496D657469 && a2 == 0xEE00726569666974)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5A2C114();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5905CF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5A2C114();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_1E5905D68(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v8 = *(a3 + 56);
  v12 = *(a3 + 96);
  v13 = *(a3 + 104);
  v10 = *(a3 + 64);
  v11 = *(a3 + 80);
  return sub_1E5905A80(*a1, *a2);
}

uint64_t sub_1E5905DB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = *(a1 + 104);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  return sub_1E5905AB8(*v1);
}

uint64_t sub_1E5905DFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v12 = *(a2 + 96);
  v13 = *(a2 + 104);
  v10 = *(a2 + 64);
  v11 = *(a2 + 80);
  return sub_1E5905A90(a1, *v2);
}

uint64_t sub_1E5905E3C(uint64_t a1, uint64_t a2)
{
  sub_1E5A2C1B4();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v13 = *(a2 + 96);
  v14 = *(a2 + 104);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  sub_1E5905A90(v15, *v2);
  return sub_1E5A2C204();
}

unint64_t sub_1E5905E9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = *(a1 + 104);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  return sub_1E5905B00(*v1);
}

uint64_t sub_1E5905EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  v10 = *(a3 + 56);
  v14 = *(a3 + 96);
  v15 = *(a3 + 104);
  v12 = *(a3 + 64);
  v13 = *(a3 + 80);
  result = sub_1E5905818(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5905F34@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  v12 = *(a1 + 80);
  result = sub_1E59092B8();
  *a2 = result;
  return result;
}

uint64_t sub_1E5905F88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5905FDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5906060(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E59060B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5906108(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E590615C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E59061DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5906230(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E59062C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5906314(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5906380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9], a3[10], a3[11], a3[12], a3[13]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_1E59063DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5906430(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5906484(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E59064D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E590652C@<X0>(void *a1@<X2>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13]);

  *a3 = v4 & 1;
  return result;
}

uint64_t sub_1E59065A4@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5906604(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5906658(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ArchivedWorkoutPlansAction.encode(to:)(void *a1, void *a2)
{
  v166 = a2;
  v163 = a1;
  v3 = a2[2];
  v2 = a2[3];
  v5 = a2[4];
  v4 = a2[5];
  v7 = a2[6];
  v6 = a2[7];
  v8 = a2[9];
  v172 = a2[8];
  v9 = a2[11];
  v171 = a2[10];
  v168 = v9;
  v10 = a2[13];
  v167 = a2[12];
  v177 = v3;
  v178 = v2;
  v11 = v3;
  v195 = v3;
  v12 = v2;
  v179 = v5;
  v180 = v4;
  v13 = v5;
  v14 = v4;
  v181 = v7;
  v182 = v6;
  v174 = v7;
  v175 = v6;
  v183 = v172;
  v184 = v8;
  v176 = v8;
  v185 = v171;
  v186 = v9;
  v187 = v167;
  v188 = v10;
  v15 = v10;
  v147 = type metadata accessor for ArchivedWorkoutPlansAction.ViewDidAppearCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v145 = sub_1E5A2C0D4();
  v144 = *(v145 - 8);
  v16 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v120 - v17;
  v177 = v11;
  v178 = v12;
  v18 = v12;
  v170 = v12;
  v179 = v13;
  v180 = v14;
  v173 = v14;
  v181 = v7;
  v182 = v6;
  v19 = v172;
  v183 = v172;
  v184 = v8;
  v20 = v171;
  v21 = v168;
  v185 = v171;
  v186 = v168;
  v22 = v167;
  v187 = v167;
  v188 = v15;
  v23 = type metadata accessor for ArchivedWorkoutPlansAction.NavigateToArchivedWorkoutPlansGalleryCodingKeys();
  v24 = swift_getWitnessTable();
  v142 = v23;
  v140 = v24;
  v141 = sub_1E5A2C0D4();
  v139 = *(v141 - 8);
  v25 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v138 = &v120 - v26;
  v177 = v195;
  v178 = v18;
  v179 = v13;
  v180 = v14;
  v169 = v13;
  v181 = v174;
  v182 = v175;
  v27 = v19;
  v183 = v19;
  v184 = v176;
  v185 = v20;
  v186 = v21;
  v187 = v22;
  v188 = v15;
  v28 = v15;
  v29 = type metadata accessor for ArchivedWorkoutPlansAction.LoadedCodingKeys();
  v30 = swift_getWitnessTable();
  v159 = v29;
  v158 = v30;
  v137 = sub_1E5A2C0D4();
  v136 = *(v137 - 8);
  v31 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v157 = &v120 - v32;
  v33 = sub_1E5A2A374();
  v34 = sub_1E5A2A314();
  v35 = sub_1E5A2A384();
  v36 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v37 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v38 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  v177 = v33;
  v178 = v195;
  v39 = v170;
  v179 = v34;
  v180 = v170;
  v181 = v13;
  v182 = v173;
  v40 = v174;
  v41 = v175;
  v183 = v35;
  v184 = v174;
  v185 = v36;
  v186 = v175;
  v187 = v37;
  v188 = v27;
  v42 = v27;
  v43 = v176;
  v44 = v171;
  v189 = v176;
  v190 = v171;
  v45 = v168;
  v46 = v167;
  v191 = v168;
  v192 = v167;
  v193 = v38;
  v194 = v28;
  v162 = v28;
  v134 = sub_1E5A2A244();
  v161 = sub_1E5A2BD84();
  v160 = *(v161 - 8);
  v47 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v156 = &v120 - v48;
  v177 = v195;
  v178 = v39;
  v179 = v169;
  v180 = v173;
  v181 = v40;
  v182 = v41;
  v183 = v42;
  v184 = v43;
  v185 = v44;
  v186 = v45;
  v49 = v45;
  v50 = v46;
  v187 = v46;
  v188 = v28;
  v51 = type metadata accessor for ArchivedWorkoutPlansAction.ItemTappedCodingKeys();
  v52 = swift_getWitnessTable();
  v155 = v51;
  v133 = v52;
  v132 = sub_1E5A2C0D4();
  v135 = *(v132 - 8);
  v53 = *(v135 + 64);
  v54 = MEMORY[0x1EEE9AC00](v132);
  v154 = &v120 - v55;
  v56 = v39;
  v153 = *(v39 - 8);
  v57 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v152 = &v120 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v195;
  v177 = v195;
  v178 = v39;
  v60 = v169;
  v179 = v169;
  v180 = v173;
  v61 = v174;
  v62 = v175;
  v181 = v174;
  v182 = v175;
  v63 = v176;
  v183 = v172;
  v184 = v176;
  v185 = v44;
  v186 = v49;
  v64 = v162;
  v187 = v50;
  v188 = v162;
  v65 = type metadata accessor for ArchivedWorkoutPlansAction.ItemAppearedCodingKeys();
  v66 = swift_getWitnessTable();
  v151 = v65;
  v150 = v66;
  v149 = sub_1E5A2C0D4();
  v131 = *(v149 - 8);
  v67 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v120 - v68;
  v177 = v59;
  v178 = v56;
  v69 = v173;
  v179 = v60;
  v180 = v173;
  v181 = v61;
  v182 = v62;
  v70 = v172;
  v183 = v172;
  v184 = v63;
  v71 = v171;
  v72 = v168;
  v185 = v171;
  v186 = v168;
  v73 = v167;
  v187 = v167;
  v188 = v64;
  SectionCodingKeys = type metadata accessor for ArchivedWorkoutPlansAction.FetchSectionCodingKeys();
  v75 = swift_getWitnessTable();
  v130 = SectionCodingKeys;
  v128 = v75;
  v129 = sub_1E5A2C0D4();
  v127 = *(v129 - 8);
  v76 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v126 = &v120 - v77;
  v177 = v195;
  v178 = v170;
  v179 = v60;
  v180 = v69;
  v78 = v174;
  v79 = v175;
  v181 = v174;
  v182 = v175;
  v183 = v70;
  v80 = v176;
  v184 = v176;
  v185 = v71;
  v186 = v72;
  v187 = v73;
  v188 = v64;
  FailedCodingKeys = type metadata accessor for ArchivedWorkoutPlansAction.FetchFailedCodingKeys();
  v82 = swift_getWitnessTable();
  v125 = FailedCodingKeys;
  v123 = v82;
  v124 = sub_1E5A2C0D4();
  v122 = *(v124 - 8);
  v83 = *(v122 + 64);
  v84 = MEMORY[0x1EEE9AC00](v124);
  v121 = &v120 - v85;
  v86 = *(v166 - 1);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v89 = (&v120 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = v195;
  v178 = v170;
  v179 = v169;
  v180 = v69;
  v181 = v78;
  v182 = v79;
  v183 = v172;
  v184 = v80;
  v185 = v171;
  v186 = v72;
  v187 = v73;
  v188 = v64;
  type metadata accessor for ArchivedWorkoutPlansAction.CodingKeys();
  swift_getWitnessTable();
  v175 = sub_1E5A2C0D4();
  v195 = *(v175 - 8);
  v90 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v92 = &v120 - v91;
  v93 = v163[4];
  __swift_project_boxed_opaque_existential_1(v163, v163[3]);
  v174 = v92;
  sub_1E5A2C224();
  (*(v86 + 16))(v89, v164, v166);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v98 = v149;
    v99 = v152;
    v100 = v154;
    v101 = v157;
    v102 = v170;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v103 = v153;
        (*(v153 + 32))(v152, v89, v170);
        LOBYTE(v177) = 3;
        v105 = v174;
        v104 = v175;
        sub_1E5A2C024();
        v106 = v132;
        v107 = v165;
        sub_1E5A2C0B4();
        if (!v107)
        {
          (*(v135 + 8))(v100, v106);
          (*(v103 + 8))(v99, v102);
          return (*(v195 + 8))(v105, v104);
        }

        (*(v135 + 8))(v100, v106);
        (*(v103 + 8))(v99, v102);
        v108 = v104;
      }

      else
      {
        v113 = v156;
        (*(v160 + 32))(v156, v89, v161);
        LOBYTE(v177) = 4;
        v108 = v175;
        v105 = v174;
        sub_1E5A2C024();
        swift_getWitnessTable();
        v114 = v137;
        sub_1E5A2C054();
        (*(v136 + 8))(v101, v114);
        (*(v160 + 8))(v113, v161);
      }
    }

    else
    {
      v111 = *v89;
      LOBYTE(v177) = 2;
      v112 = v148;
      v105 = v174;
      v108 = v175;
      sub_1E5A2C024();
      sub_1E5A2C094();
      (*(v131 + 8))(v112, v98);
    }

    v115 = *(v195 + 8);
    v116 = v105;
    return v115(v116, v108);
  }

  if (EnumCaseMultiPayload > 4)
  {
    v109 = v174;
    v108 = v175;
    if (EnumCaseMultiPayload == 5)
    {
      LOBYTE(v177) = 5;
      v110 = v138;
      sub_1E5A2C024();
      (*(v139 + 8))(v110, v141);
    }

    else
    {
      LOBYTE(v177) = 6;
      v119 = v143;
      sub_1E5A2C024();
      (*(v144 + 8))(v119, v145);
    }

    v115 = *(v195 + 8);
    v116 = v109;
    return v115(v116, v108);
  }

  v95 = v174;
  v96 = v175;
  if (EnumCaseMultiPayload == 3)
  {
    LOBYTE(v177) = 0;
    v97 = v121;
    sub_1E5A2C024();
    (*(v122 + 8))(v97, v124);
  }

  else
  {
    LOBYTE(v177) = 1;
    v117 = v126;
    sub_1E5A2C024();
    (*(v127 + 8))(v117, v129);
  }

  return (*(v195 + 8))(v95, v96);
}

uint64_t ArchivedWorkoutPlansAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v201 = a5;
  v197 = a1;
  v189 = a9;
  v226 = a14;
  v204 = a13;
  v207 = a12;
  *&v208 = a2;
  *(&v208 + 1) = a3;
  v205 = a3;
  *&v209 = a4;
  *(&v209 + 1) = a5;
  v210 = a6;
  v211 = a7;
  v212 = a8;
  v213 = a10;
  v206 = a8;
  v214 = a11;
  v215 = a12;
  v200 = a11;
  v216 = a13;
  v217 = a14;
  v186 = type metadata accessor for ArchivedWorkoutPlansAction.ViewDidAppearCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v165 = sub_1E5A2C014();
  v164 = *(v165 - 8);
  v20 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v184 = &v149 - v21;
  *&v208 = a2;
  *(&v208 + 1) = a3;
  v22 = a4;
  *&v209 = a4;
  *(&v209 + 1) = v201;
  v210 = a6;
  v211 = a7;
  v23 = a7;
  v203 = a7;
  v212 = a8;
  v213 = a10;
  v199 = a10;
  v214 = a11;
  v215 = a12;
  v216 = a13;
  v217 = a14;
  v24 = type metadata accessor for ArchivedWorkoutPlansAction.NavigateToArchivedWorkoutPlansGalleryCodingKeys();
  v25 = swift_getWitnessTable();
  v183 = v24;
  v182 = v25;
  v163 = sub_1E5A2C014();
  v162 = *(v163 - 8);
  v26 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v181 = &v149 - v27;
  v198 = a2;
  *&v208 = a2;
  v28 = v205;
  *(&v208 + 1) = v205;
  v29 = v201;
  *&v209 = v22;
  *(&v209 + 1) = v201;
  v202 = a6;
  v210 = a6;
  v211 = v23;
  v30 = v206;
  v212 = v206;
  v213 = a10;
  v31 = v200;
  v32 = v207;
  v214 = v200;
  v215 = v207;
  v216 = v204;
  v217 = v226;
  v33 = type metadata accessor for ArchivedWorkoutPlansAction.LoadedCodingKeys();
  v34 = swift_getWitnessTable();
  v180 = v33;
  v179 = v34;
  v167 = sub_1E5A2C014();
  v166 = *(v167 - 8);
  v35 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v187 = &v149 - v36;
  *&v208 = a2;
  *(&v208 + 1) = v28;
  *&v209 = v22;
  *(&v209 + 1) = v29;
  v37 = v203;
  v210 = a6;
  v211 = v203;
  v38 = v199;
  v212 = v30;
  v213 = v199;
  v214 = v31;
  v215 = v32;
  v39 = v204;
  v40 = v226;
  v216 = v204;
  v217 = v226;
  v41 = type metadata accessor for ArchivedWorkoutPlansAction.ItemTappedCodingKeys();
  v42 = swift_getWitnessTable();
  v177 = v41;
  v176 = v42;
  v161 = sub_1E5A2C014();
  v160 = *(v161 - 8);
  v43 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v178 = &v149 - v44;
  v45 = v198;
  *&v208 = v198;
  v46 = v205;
  *(&v208 + 1) = v205;
  *&v209 = v22;
  *(&v209 + 1) = v29;
  v210 = v202;
  v211 = v37;
  v47 = v37;
  v212 = v206;
  v213 = v38;
  v48 = v200;
  v214 = v200;
  v215 = v207;
  v216 = v39;
  v217 = v40;
  v49 = v40;
  v50 = type metadata accessor for ArchivedWorkoutPlansAction.ItemAppearedCodingKeys();
  v51 = swift_getWitnessTable();
  v175 = v50;
  v174 = v51;
  v158 = sub_1E5A2C014();
  v159 = *(v158 - 8);
  v52 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v193 = &v149 - v53;
  *&v208 = v45;
  *(&v208 + 1) = v46;
  *&v209 = v22;
  *(&v209 + 1) = v29;
  v54 = v202;
  v210 = v202;
  v211 = v47;
  v55 = v206;
  v56 = v199;
  v212 = v206;
  v213 = v199;
  v57 = v207;
  v214 = v48;
  v215 = v207;
  v58 = v204;
  v216 = v204;
  v217 = v49;
  SectionCodingKeys = type metadata accessor for ArchivedWorkoutPlansAction.FetchSectionCodingKeys();
  v60 = swift_getWitnessTable();
  v173 = SectionCodingKeys;
  v172 = v60;
  v157 = sub_1E5A2C014();
  v156 = *(v157 - 8);
  v61 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v171 = &v149 - v62;
  v63 = v198;
  *&v208 = v198;
  v64 = v205;
  *(&v208 + 1) = v205;
  *&v209 = v22;
  *(&v209 + 1) = v29;
  v210 = v54;
  v211 = v203;
  v65 = v55;
  v212 = v55;
  v213 = v56;
  v66 = v200;
  v214 = v200;
  v215 = v57;
  v216 = v58;
  v217 = v226;
  FailedCodingKeys = type metadata accessor for ArchivedWorkoutPlansAction.FetchFailedCodingKeys();
  v68 = swift_getWitnessTable();
  v169 = FailedCodingKeys;
  v170 = v68;
  v155 = sub_1E5A2C014();
  v154 = *(v155 - 8);
  v69 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v191 = &v149 - v70;
  *&v208 = v63;
  *(&v208 + 1) = v64;
  *&v209 = v22;
  *(&v209 + 1) = v29;
  v71 = v202;
  v72 = v203;
  v210 = v202;
  v211 = v203;
  v73 = v199;
  v212 = v65;
  v213 = v199;
  v214 = v66;
  v215 = v57;
  v74 = v226;
  v216 = v58;
  v217 = v226;
  type metadata accessor for ArchivedWorkoutPlansAction.CodingKeys();
  v195 = swift_getWitnessTable();
  v194 = sub_1E5A2C014();
  v190 = *(v194 - 8);
  v75 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v77 = &v149 - v76;
  *&v208 = v198;
  *(&v208 + 1) = v205;
  v168 = v22;
  *&v209 = v22;
  *(&v209 + 1) = v201;
  v210 = v71;
  v211 = v72;
  v212 = v206;
  v213 = v73;
  v214 = v66;
  v215 = v207;
  v216 = v58;
  v217 = v74;
  v78 = type metadata accessor for ArchivedWorkoutPlansAction();
  v188 = *(v78 - 8);
  v79 = *(v188 + 64);
  v80 = MEMORY[0x1EEE9AC00](v78);
  v82 = &v149 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x1EEE9AC00](v80);
  v85 = &v149 - v84;
  v86 = MEMORY[0x1EEE9AC00](v83);
  v88 = (&v149 - v87);
  MEMORY[0x1EEE9AC00](v86);
  v90 = &v149 - v89;
  v91 = v197[4];
  __swift_project_boxed_opaque_existential_1(v197, v197[3]);
  v192 = v77;
  v92 = v196;
  sub_1E5A2C214();
  if (v92)
  {
    goto LABEL_11;
  }

  v150 = v88;
  v151 = v85;
  v93 = v191;
  v152 = v82;
  v94 = v193;
  v153 = v90;
  v95 = v205;
  v196 = v78;
  v96 = v206;
  v195 = 0;
  v97 = v192;
  *&v208 = sub_1E5A2C004();
  sub_1E5A2BC44();
  swift_getWitnessTable();
  *&v224 = sub_1E5A2BDC4();
  *(&v224 + 1) = v98;
  *&v225 = v99;
  *(&v225 + 1) = v100;
  sub_1E5A2BDB4();
  swift_getWitnessTable();
  sub_1E5A2BD34();
  v101 = v208;
  if (v208 == 7 || (v149 = v224, v208 = v224, v209 = v225, (sub_1E5A2BD54() & 1) == 0))
  {
    v110 = v97;
    v111 = sub_1E5A2BE84();
    swift_allocError();
    v113 = v112;
    v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v113 = v196;
    v115 = v194;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v111 - 8) + 104))(v113, *MEMORY[0x1E69E6AF8], v111);
    swift_willThrow();
    (*(v190 + 8))(v110, v115);
  }

  else
  {
    if (v101 > 2)
    {
      v102 = v194;
      if (v101 <= 4)
      {
        v103 = v153;
        if (v101 == 3)
        {
          LOBYTE(v208) = 3;
          v104 = v178;
          v105 = v195;
          sub_1E5A2BF44();
          if (!v105)
          {
            v106 = v97;
            v107 = v151;
            v108 = v161;
            sub_1E5A2BFE4();
            v109 = v190;
            (*(v160 + 8))(v104, v108);
            (*(v109 + 8))(v106, v102);
            swift_unknownObjectRelease();
            v148 = v196;
LABEL_36:
            swift_storeEnumTagMultiPayload();
            v119 = v188;
            (*(v188 + 32))(v103, v107, v148);
            goto LABEL_37;
          }
        }

        else
        {
          LOBYTE(v208) = 4;
          v131 = v195;
          sub_1E5A2BF44();
          if (!v131)
          {
            v132 = v97;
            v133 = sub_1E5A2A374();
            v134 = sub_1E5A2A314();
            v135 = sub_1E5A2A384();
            v195 = 0;
            v136 = v135;
            v137 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
            v138 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
            v139 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
            *&v208 = v133;
            *(&v208 + 1) = v198;
            *&v209 = v134;
            *(&v209 + 1) = v95;
            v210 = v168;
            v211 = v201;
            v212 = v136;
            v213 = v202;
            v140 = v187;
            v214 = v137;
            v215 = v203;
            v216 = v138;
            v217 = v96;
            v218 = v199;
            v219 = v200;
            v220 = v207;
            v221 = v204;
            v222 = v139;
            v223 = v226;
            sub_1E5A2A244();
            swift_getWitnessTable();
            v107 = v152;
            v141 = v167;
            v142 = v195;
            sub_1E5A2BF84();
            if (!v142)
            {
              (*(v166 + 8))(v140, v141);
              (*(v190 + 8))(v132, v194);
              swift_unknownObjectRelease();
              v148 = v196;
              goto LABEL_36;
            }

            (*(v166 + 8))(v140, v141);
            (*(v190 + 8))(v132, v194);
            goto LABEL_10;
          }
        }

        goto LABEL_29;
      }

      v103 = v153;
      if (v101 == 5)
      {
        LOBYTE(v208) = 5;
        v123 = v181;
        v124 = v195;
        sub_1E5A2BF44();
        v122 = v189;
        if (!v124)
        {
          (*(v162 + 8))(v123, v163);
          (*(v190 + 8))(v97, v102);
          swift_unknownObjectRelease();
          v148 = v196;
LABEL_33:
          swift_storeEnumTagMultiPayload();
          v145 = v197;
          v119 = v188;
LABEL_38:
          (*(v119 + 32))(v122, v103, v148);
          v116 = v145;
          return __swift_destroy_boxed_opaque_existential_1(v116);
        }
      }

      else
      {
        LOBYTE(v208) = 6;
        v143 = v184;
        v144 = v195;
        sub_1E5A2BF44();
        v122 = v189;
        if (!v144)
        {
          (*(v164 + 8))(v143, v165);
          (*(v190 + 8))(v97, v102);
          swift_unknownObjectRelease();
          v148 = v196;
          goto LABEL_33;
        }
      }

LABEL_29:
      (*(v190 + 8))(v97, v102);
      goto LABEL_10;
    }

    v118 = v194;
    if (!v101)
    {
      LOBYTE(v208) = 0;
      v125 = v97;
      v126 = v195;
      sub_1E5A2BF44();
      v127 = v190;
      v119 = v188;
      if (!v126)
      {
        (*(v154 + 8))(v93, v155);
        (*(v127 + 8))(v125, v118);
        swift_unknownObjectRelease();
        v103 = v153;
        v148 = v196;
        swift_storeEnumTagMultiPayload();
LABEL_37:
        v145 = v197;
        v122 = v189;
        goto LABEL_38;
      }

      (*(v190 + 8))(v125, v118);
      goto LABEL_10;
    }

    v119 = v188;
    if (v101 == 1)
    {
      LOBYTE(v208) = 1;
      v120 = v171;
      v121 = v195;
      sub_1E5A2BF44();
      v122 = v189;
      if (!v121)
      {
        (*(v156 + 8))(v120, v157);
        (*(v190 + 8))(v97, v118);
        swift_unknownObjectRelease();
        v103 = v153;
        v148 = v196;
        swift_storeEnumTagMultiPayload();
LABEL_34:
        v145 = v197;
        goto LABEL_38;
      }
    }

    else
    {
      LOBYTE(v208) = 2;
      v128 = v94;
      v129 = v195;
      sub_1E5A2BF44();
      v122 = v189;
      if (!v129)
      {
        v130 = v158;
        v146 = sub_1E5A2BFC4();
        (*(v159 + 8))(v128, v130);
        (*(v190 + 8))(v97, v118);
        swift_unknownObjectRelease();
        v147 = v150;
        *v150 = v146;
        v148 = v196;
        swift_storeEnumTagMultiPayload();
        v103 = v153;
        (*(v119 + 32))(v153, v147, v148);
        goto LABEL_34;
      }
    }

    (*(v190 + 8))(v97, v118);
  }

LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v116 = v197;
  return __swift_destroy_boxed_opaque_existential_1(v116);
}

uint64_t sub_1E5908E88(uint64_t a1)
{
  result = sub_1E5909058();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      sub_1E5A2A374();
      v6 = *(a1 + 16);
      sub_1E5A2A314();
      sub_1E5A2A384();
      v7 = *(a1 + 48);
      sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
      v8 = *(a1 + 56);
      sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
      v9 = *(a1 + 96);
      sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
      v11 = *(a1 + 32);
      v12 = *(a1 + 64);
      v13 = *(a1 + 80);
      v14 = *(a1 + 104);
      sub_1E5A2A244();
      result = sub_1E5A2BD84();
      if (v10 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E5909058()
{
  result = qword_1ECFFCF90[0];
  if (!qword_1ECFFCF90[0])
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], qword_1ECFFCF90);
  }

  return result;
}

uint64_t WorkoutPlanCreationFilter.init(exclusions:inclusions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1E59092DC()
{
  if (*v0)
  {
    return 0x6F6973756C636E69;
  }

  else
  {
    return 0x6F6973756C637865;
  }
}

uint64_t sub_1E5909308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6973756C637865 && a2 == 0xEA0000000000736ELL;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6973756C636E69 && a2 == 0xEA0000000000736ELL)
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

uint64_t sub_1E59093EC(uint64_t a1)
{
  v2 = sub_1E5909654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5909428(uint64_t a1)
{
  v2 = sub_1E5909654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationFilter.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD398, &qword_1E5A34BD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5909654();

  sub_1E5A2C224();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD3A8, &qword_1E5A34BD8);
  sub_1E590994C(&qword_1ECFFD3B0, sub_1E59096A8);
  sub_1E5A2C0B4();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1E5A2C0B4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E5909654()
{
  result = qword_1ECFFD3A0;
  if (!qword_1ECFFD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3A0);
  }

  return result;
}

unint64_t sub_1E59096A8()
{
  result = qword_1ECFFD3B8;
  if (!qword_1ECFFD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3B8);
  }

  return result;
}

uint64_t WorkoutPlanCreationFilter.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD3C0, &qword_1E5A34BE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5909654();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD3A8, &qword_1E5A34BD8);
  v16 = 0;
  sub_1E590994C(&qword_1ECFFD3C8, sub_1E59099C4);
  sub_1E5A2BFE4();
  v11 = v17;
  v16 = 1;
  sub_1E5A2BFE4();
  (*(v6 + 8))(v9, v5);
  v12 = v17;
  v13 = v15;
  *v15 = v11;
  v13[1] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E590994C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD3A8, &qword_1E5A34BD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E59099C4()
{
  result = qword_1ECFFD3D0;
  if (!qword_1ECFFD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3D0);
  }

  return result;
}

uint64_t static WorkoutPlanCreationFilter.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1E58B6628(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1E58B6628(v2, v3);
}

uint64_t WorkoutPlanCreationFilter.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1E58B9A00(a1, v3);

  return sub_1E58B9A00(a1, v4);
}

uint64_t WorkoutPlanCreationFilter.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5A2C1B4();
  sub_1E58B9A00(v4, v1);
  sub_1E58B9A00(v4, v2);
  return sub_1E5A2C204();
}

uint64_t sub_1E5909B38()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5A2C1B4();
  sub_1E58B9A00(v4, v1);
  sub_1E58B9A00(v4, v2);
  return sub_1E5A2C204();
}

uint64_t sub_1E5909B8C(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1E58B9A00(a1, v3);

  return sub_1E58B9A00(a1, v4);
}

uint64_t sub_1E5909BCC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5A2C1B4();
  sub_1E58B9A00(v4, v1);
  sub_1E58B9A00(v4, v2);
  return sub_1E5A2C204();
}

uint64_t sub_1E5909C1C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1E58B6628(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1E58B6628(v2, v3);
}

unint64_t sub_1E5909C7C()
{
  result = qword_1ECFFD3D8;
  if (!qword_1ECFFD3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3D8);
  }

  return result;
}

uint64_t sub_1E5909CD0(uint64_t *a1, int a2)
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

uint64_t sub_1E5909D18(uint64_t result, int a2, int a3)
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

unint64_t sub_1E5909D78()
{
  result = qword_1ECFFD3E0;
  if (!qword_1ECFFD3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3E0);
  }

  return result;
}

unint64_t sub_1E5909DD0()
{
  result = qword_1ECFFD3E8;
  if (!qword_1ECFFD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3E8);
  }

  return result;
}

unint64_t sub_1E5909E28()
{
  result = qword_1ECFFD3F0;
  if (!qword_1ECFFD3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD3F0);
  }

  return result;
}

uint64_t sub_1E5909E8C()
{
  v1 = 0x756F59726F66;
  if (*v0 != 1)
  {
    v1 = 0x736E616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726F6C707865;
  }
}

uint64_t sub_1E5909EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E590A688(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5909F08(uint64_t a1)
{
  v2 = sub_1E590A4D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5909F44(uint64_t a1)
{
  v2 = sub_1E590A4D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5909F80(uint64_t a1)
{
  v2 = sub_1E590A5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5909FBC(uint64_t a1)
{
  v2 = sub_1E590A5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5909FF8(uint64_t a1)
{
  v2 = sub_1E590A580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590A034(uint64_t a1)
{
  v2 = sub_1E590A580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E590A070(uint64_t a1)
{
  v2 = sub_1E590A52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590A0AC(uint64_t a1)
{
  v2 = sub_1E590A52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreateWorkoutPlanButtonPlacement.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

uint64_t CreateWorkoutPlanButtonPlacement.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD3F8, &qword_1E5A34E10);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD400, &qword_1E5A34E18);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD408, &qword_1E5A34E20);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD410, &qword_1E5A34E28);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E590A4D8();
  sub_1E5A2C224();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1E590A580();
      sub_1E5A2C024();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1E590A52C();
      v21 = v27;
      sub_1E5A2C024();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1E590A5D4();
    sub_1E5A2C024();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

unint64_t sub_1E590A4D8()
{
  result = qword_1EE2D0318;
  if (!qword_1EE2D0318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0318);
  }

  return result;
}

unint64_t sub_1E590A52C()
{
  result = qword_1ECFFD418;
  if (!qword_1ECFFD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD418);
  }

  return result;
}

unint64_t sub_1E590A580()
{
  result = qword_1EE2D0300;
  if (!qword_1EE2D0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0300);
  }

  return result;
}

unint64_t sub_1E590A5D4()
{
  result = qword_1ECFFD420;
  if (!qword_1ECFFD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD420);
  }

  return result;
}

uint64_t sub_1E590A640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E590A798(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E590A688(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6C707865 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F59726F66 && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E616C70 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E590A798(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD448, &qword_1E5A35250);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD450, &qword_1E5A35258);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD458, &qword_1E5A35260);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD460, &qword_1E5A35268);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E590A4D8();
  v18 = v39;
  sub_1E5A2C214();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1E5A2C004();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1E58BC5A8();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1E590A580();
          sub_1E5A2BF44();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_1E590A52C();
        v29 = v15;
        sub_1E5A2BF44();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1E590A5D4();
        v29 = v15;
        sub_1E5A2BF44();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1E5A2BE84();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v27 = &type metadata for CreateWorkoutPlanButtonPlacement;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

unint64_t sub_1E590AD0C()
{
  result = qword_1ECFFD428;
  if (!qword_1ECFFD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD428);
  }

  return result;
}

unint64_t sub_1E590ADB4()
{
  result = qword_1ECFFD430;
  if (!qword_1ECFFD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD430);
  }

  return result;
}

unint64_t sub_1E590AE0C()
{
  result = qword_1EE2D02E0;
  if (!qword_1EE2D02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D02E0);
  }

  return result;
}

unint64_t sub_1E590AE64()
{
  result = qword_1EE2D02E8;
  if (!qword_1EE2D02E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D02E8);
  }

  return result;
}

unint64_t sub_1E590AEBC()
{
  result = qword_1EE2D02F0;
  if (!qword_1EE2D02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D02F0);
  }

  return result;
}

unint64_t sub_1E590AF14()
{
  result = qword_1EE2D02F8;
  if (!qword_1EE2D02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D02F8);
  }

  return result;
}

unint64_t sub_1E590AF6C()
{
  result = qword_1ECFFD438;
  if (!qword_1ECFFD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD438);
  }

  return result;
}

unint64_t sub_1E590AFC4()
{
  result = qword_1ECFFD440;
  if (!qword_1ECFFD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD440);
  }

  return result;
}

unint64_t sub_1E590B01C()
{
  result = qword_1EE2D0308;
  if (!qword_1EE2D0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0308);
  }

  return result;
}

unint64_t sub_1E590B074()
{
  result = qword_1EE2D0310;
  if (!qword_1EE2D0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0310);
  }

  return result;
}

void *sub_1E590B0C8()
{
  v1 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v30 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = *(v0 + *(type metadata accessor for PersonalizedWorkoutPlanCandidates() + 20));
  v19 = *(v18 + 16);
  if (!v19)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v20 = v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v21 = *(v11 + 72);
  v30 = v2;
  v22 = (v2 + 48);
  v23 = MEMORY[0x1E69E7CC0];
  v31 = v1;
  do
  {
    sub_1E590B588(v20, v17);
    sub_1E590B648(v17, v14, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    if ((*v22)(v14, 1, v1) == 1)
    {
      sub_1E590B5EC(v14);
    }

    else
    {
      v24 = v33;
      sub_1E590B648(v14, v33, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      v25 = v24;
      v26 = v32;
      sub_1E590B648(v25, v32, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      sub_1E590B648(v26, v9, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1E58E6CCC(0, v23[2] + 1, 1, v23);
      }

      v28 = v23[2];
      v27 = v23[3];
      if (v28 >= v27 >> 1)
      {
        v23 = sub_1E58E6CCC(v27 > 1, v28 + 1, 1, v23);
      }

      v23[2] = v28 + 1;
      sub_1E590B648(v9, v23 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      v1 = v31;
    }

    v20 += v21;
    --v19;
  }

  while (v19);
  return v23;
}

Swift::Bool __swiftcall PersonalizedWorkoutPlanCandidates.hasPersonalizedPlanCandidates()()
{
  v1 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = type metadata accessor for PersonalizedWorkoutPlanCandidates();
  v10 = 0;
  v11 = *(v0 + *(v9 + 20));
  v12 = *(v11 + 16);
  while (1)
  {
    v13 = v10;
    if (v12 == v10)
    {
LABEL_5:
      LOBYTE(v9) = v12 != v13;
      return v9;
    }

    if (v10 >= *(v11 + 16))
    {
      break;
    }

    sub_1E590B588(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v10++, v8);
    sub_1E590B588(v8, v6);
    v14 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
    v15 = (*(*(v14 - 8) + 48))(v6, 1, v14);
    sub_1E590B5EC(v6);
    LOBYTE(v9) = sub_1E590B5EC(v8);
    if (v15 == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return v9;
}

uint64_t sub_1E590B588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E590B5EC(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E590B648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E590B6B0()
{
  v1 = *v0;
  v2 = 0x726F576863746566;
  v3 = 0xD000000000000017;
  v4 = 0xD000000000000021;
  if (v1 != 3)
  {
    v4 = 0x4164694477656976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646564616F6CLL;
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

uint64_t sub_1E590B760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E590D698(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E590B794(uint64_t a1)
{
  v2 = sub_1E590C17C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590B7D0(uint64_t a1)
{
  v2 = sub_1E590C17C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E590B80C(uint64_t a1)
{
  v2 = sub_1E590C3EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590B848(uint64_t a1)
{
  v2 = sub_1E590C3EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E590B884(uint64_t a1)
{
  v2 = sub_1E590C330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590B8C0(uint64_t a1)
{
  v2 = sub_1E590C330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E590B8FC(uint64_t a1)
{
  v2 = sub_1E590C288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590B938(uint64_t a1)
{
  v2 = sub_1E590C288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E590B974(uint64_t a1)
{
  v2 = sub_1E590C2DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590B9B0(uint64_t a1)
{
  v2 = sub_1E590C2DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E590B9EC(uint64_t a1)
{
  v2 = sub_1E590C234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590BA28(uint64_t a1)
{
  v2 = sub_1E590C234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActiveWorkoutPlanWorkoutAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD468, &qword_1E5A35270);
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD470, &qword_1E5A35278);
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD478, &qword_1E5A35280);
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD480, &unk_1E5A35288);
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD488, &qword_1E5A35298);
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction();
  v24 = *(*(active - 8) + 64);
  MEMORY[0x1EEE9AC00](active);
  v26 = (&v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD490, &qword_1E5A352A0);
  v66 = *(v27 - 8);
  v67 = v27;
  v28 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v51 - v29;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E590C17C();
  sub_1E5A2C224();
  sub_1E590C1D0(v65, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v37 = v18;
    v38 = v14;
    v40 = v61;
    v39 = v62;
    v41 = v60;
    v43 = v63;
    v42 = v64;
    if (EnumCaseMultiPayload)
    {
      v48 = *v26;
      v49 = v26[1];
      v70 = 2;
      sub_1E590C2DC();
      v50 = v67;
      sub_1E5A2C024();
      sub_1E5A2C064();

      (*(v43 + 8))(v39, v42);
      return (*(v66 + 8))(v30, v50);
    }

    else
    {
      v44 = v37;
      sub_1E58E66FC(v26, v37);
      v69 = 1;
      sub_1E590C330();
      v45 = v67;
      sub_1E5A2C024();
      type metadata accessor for ActiveWorkoutPlanWorkout();
      sub_1E590CE9C(&qword_1ECFFD4C0);
      sub_1E5A2C054();
      (*(v41 + 8))(v38, v40);
      sub_1E590C384(v44);
      return (*(v66 + 8))(v30, v45);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v68 = 0;
    sub_1E590C3EC();
    v47 = v67;
    sub_1E5A2C024();
    (*(v52 + 8))(v22, v53);
    return (*(v66 + 8))(v30, v47);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v71 = 3;
      sub_1E590C288();
      v33 = v54;
      v34 = v67;
      sub_1E5A2C024();
      v36 = v55;
      v35 = v56;
    }

    else
    {
      v72 = 4;
      sub_1E590C234();
      v33 = v57;
      v34 = v67;
      sub_1E5A2C024();
      v36 = v58;
      v35 = v59;
    }

    (*(v36 + 8))(v33, v35);
    return (*(v66 + 8))(v30, v34);
  }
}

uint64_t type metadata accessor for ActiveWorkoutPlanWorkoutAction()
{
  result = qword_1ECFFD508;
  if (!qword_1ECFFD508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E590C17C()
{
  result = qword_1ECFFD498;
  if (!qword_1ECFFD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD498);
  }

  return result;
}

uint64_t sub_1E590C1D0(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction();
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

unint64_t sub_1E590C234()
{
  result = qword_1ECFFD4A0;
  if (!qword_1ECFFD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD4A0);
  }

  return result;
}

unint64_t sub_1E590C288()
{
  result = qword_1ECFFD4A8;
  if (!qword_1ECFFD4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD4A8);
  }

  return result;
}

unint64_t sub_1E590C2DC()
{
  result = qword_1ECFFD4B0;
  if (!qword_1ECFFD4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD4B0);
  }

  return result;
}

unint64_t sub_1E590C330()
{
  result = qword_1ECFFD4B8;
  if (!qword_1ECFFD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD4B8);
  }

  return result;
}

uint64_t sub_1E590C384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E590C3EC()
{
  result = qword_1ECFFD4C8;
  if (!qword_1ECFFD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD4C8);
  }

  return result;
}

uint64_t ActiveWorkoutPlanWorkoutAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD4D0, &qword_1E5A352A8);
  v76 = *(v78 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v65 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD4D8, &qword_1E5A352B0);
  v75 = *(v77 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD4E0, &qword_1E5A352B8);
  v8 = *(v7 - 8);
  v73 = v7;
  v74 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD4E8, &qword_1E5A352C0);
  v12 = *(v11 - 8);
  v71 = v11;
  v72 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v65 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD4F0, &qword_1E5A352C8);
  v69 = *(v70 - 8);
  v15 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v17 = &v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD4F8, &unk_1E5A352D0);
  v81 = *(v18 - 8);
  v82 = v18;
  v19 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v65 - v20;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction();
  v23 = *(*(active - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](active);
  v26 = (&v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v65 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v65 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1E590C17C();
  v34 = v87;
  sub_1E5A2C214();
  if (v34)
  {
    goto LABEL_10;
  }

  v66 = v26;
  v35 = v17;
  v67 = v29;
  v36 = v83;
  v37 = v84;
  v68 = v31;
  v87 = active;
  v38 = v85;
  v39 = v82;
  v40 = sub_1E5A2C004();
  v41 = (2 * *(v40 + 16)) | 1;
  v88 = v40;
  v89 = v40 + 32;
  v90 = 0;
  v91 = v41;
  v42 = sub_1E58BC5BC();
  if (v42 == 5 || v90 != v91 >> 1)
  {
    v47 = sub_1E5A2BE84();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v49 = v87;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    (*(v81 + 8))(v21, v39);
    swift_unknownObjectRelease();
LABEL_10:
    v51 = v86;
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  if (v42 <= 1u)
  {
    if (v42)
    {
      v92 = 1;
      sub_1E590C330();
      v56 = v36;
      sub_1E5A2BF44();
      v57 = v81;
      type metadata accessor for ActiveWorkoutPlanWorkout();
      sub_1E590CE9C(&qword_1ECFFD500);
      v58 = v71;
      sub_1E5A2BF84();
      (*(v72 + 8))(v56, v58);
      (*(v57 + 8))(v21, v39);
      swift_unknownObjectRelease();
      v59 = v67;
      swift_storeEnumTagMultiPayload();
      v46 = v68;
      sub_1E590CE38(v59, v68);
    }

    else
    {
      v92 = 0;
      sub_1E590C3EC();
      sub_1E5A2BF44();
      v53 = v81;
      (*(v69 + 8))(v35, v70);
      (*(v53 + 8))(v21, v39);
      swift_unknownObjectRelease();
      v46 = v68;
      swift_storeEnumTagMultiPayload();
    }

    v60 = v86;
    v43 = v38;
  }

  else
  {
    if (v42 == 2)
    {
      v92 = 2;
      sub_1E590C2DC();
      sub_1E5A2BF44();
      v43 = v38;
      v54 = v73;
      v61 = sub_1E5A2BF94();
      v63 = v62;
      (*(v74 + 8))(v37, v54);
      (*(v81 + 8))(v21, v39);
      swift_unknownObjectRelease();
      v64 = v66;
      *v66 = v61;
      *(v64 + 8) = v63;
      swift_storeEnumTagMultiPayload();
      v46 = v68;
      sub_1E590CE38(v64, v68);
    }

    else
    {
      v43 = v38;
      if (v42 == 3)
      {
        v92 = 3;
        sub_1E590C288();
        v44 = v80;
        sub_1E5A2BF44();
        v45 = v81;
        (*(v75 + 8))(v44, v77);
      }

      else
      {
        v92 = 4;
        sub_1E590C234();
        v55 = v79;
        sub_1E5A2BF44();
        v45 = v81;
        (*(v76 + 8))(v55, v78);
      }

      (*(v45 + 8))(v21, v39);
      swift_unknownObjectRelease();
      v46 = v68;
      swift_storeEnumTagMultiPayload();
    }

    v60 = v86;
  }

  sub_1E590CE38(v46, v43);
  v51 = v60;
  return __swift_destroy_boxed_opaque_existential_1(v51);
}