uint64_t _s18FitnessWorkoutPlan0bC21CreationConfigurationV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v27[0] = *a1;
  v27[1] = v2;
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v27[2] = a1[2];
  v27[3] = v3;
  v6 = a2[1];
  v28[0] = *a2;
  v28[1] = v6;
  v7 = a2[3];
  v9 = *a2;
  v8 = a2[1];
  v28[2] = a2[2];
  v28[3] = v7;
  v23 = v5;
  v24 = v4;
  v10 = a1[3];
  v25 = a1[2];
  v26 = v10;
  v12 = *(a1 + 8);
  v11 = *(a1 + 9);
  v14 = *(a2 + 8);
  v13 = *(a2 + 9);
  v19 = v9;
  v20 = v8;
  v15 = a2[3];
  v21 = a2[2];
  v22 = v15;
  sub_1E5931DC4(v27, v30);
  sub_1E5931DC4(v28, v30);
  v16 = static WorkoutPlanFilterOptions.== infix(_:_:)(&v23, &v19);
  v29[0] = v19;
  v29[1] = v20;
  v29[2] = v21;
  v29[3] = v22;
  sub_1E58F011C(v29);
  v30[0] = v23;
  v30[1] = v24;
  v30[2] = v25;
  v30[3] = v26;
  sub_1E58F011C(v30);
  if (v16 & 1) != 0 && (sub_1E595AD48(v12, v14))
  {
    v17 = sub_1E595C8C0(v11, v13);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

unint64_t sub_1E5A12268()
{
  result = qword_1ED000E18;
  if (!qword_1ED000E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E18);
  }

  return result;
}

unint64_t sub_1E5A122C0()
{
  result = qword_1ED000E20;
  if (!qword_1ED000E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E20);
  }

  return result;
}

unint64_t sub_1E5A12318()
{
  result = qword_1ED000E28;
  if (!qword_1ED000E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E28);
  }

  return result;
}

uint64_t sub_1E5A1236C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704F7265746C6966 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696C61646F6DLL && a2 == 0xEA00000000007365 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A470F0 == a2)
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

uint64_t PersonalizedWorkoutPlansState.init(allowWorkoutPlanCreation:candidates:contentMargins:hasActivePlan:locale:placement:sizeClass:subtitle:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1E58F0054(a1, a9, &qword_1ECFFC100, &qword_1E5A2FE90);
  v18 = type metadata accessor for PersonalizedWorkoutPlansState();
  sub_1E58F0054(a2, a9 + v18[5], &qword_1ECFFE260, &qword_1E5A39370);
  v19 = v18[6];
  v20 = sub_1E5A2A2F4();
  (*(*(v20 - 8) + 32))(a9 + v19, a3, v20);
  sub_1E58F0054(a4, a9 + v18[7], &qword_1ECFFC100, &qword_1E5A2FE90);
  v21 = v18[8];
  v22 = sub_1E5A29EB4();
  result = (*(*(v22 - 8) + 32))(a9 + v21, a5, v22);
  *(a9 + v18[9]) = a6;
  *(a9 + v18[10]) = a7;
  v24 = (a9 + v18[11]);
  *v24 = a8;
  v24[1] = a10;
  v25 = (a9 + v18[12]);
  *v25 = a11;
  v25[1] = a12;
  return result;
}

uint64_t type metadata accessor for PersonalizedWorkoutPlansState()
{
  result = qword_1EE2D0940;
  if (!qword_1EE2D0940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PersonalizedWorkoutPlansState.candidates.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PersonalizedWorkoutPlansState() + 20);

  return sub_1E5A12734(a1, v3);
}

uint64_t sub_1E5A12734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PersonalizedWorkoutPlansState.contentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalizedWorkoutPlansState() + 24);
  v4 = sub_1E5A2A2F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PersonalizedWorkoutPlansState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalizedWorkoutPlansState() + 32);
  v4 = sub_1E5A29EB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PersonalizedWorkoutPlansState.subtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for PersonalizedWorkoutPlansState() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PersonalizedWorkoutPlansState.title.getter()
{
  v1 = (v0 + *(type metadata accessor for PersonalizedWorkoutPlansState() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_1E5A129F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74616469646E6163;
    v6 = 0x4D746E65746E6F63;
    if (a1 != 2)
    {
      v6 = 0x7669746341736168;
    }

    if (!a1)
    {
      v5 = 0xD000000000000018;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x73616C43657A6973;
    v2 = 0x656C746974627573;
    if (a1 != 7)
    {
      v2 = 0x656C746974;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656C61636F6CLL;
    if (a1 != 4)
    {
      v3 = 0x6E656D6563616C70;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E5A12B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A14078(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A12B58(uint64_t a1)
{
  v2 = sub_1E5A12FF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A12B94(uint64_t a1)
{
  v2 = sub_1E5A12FF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizedWorkoutPlansState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000E30, &qword_1E5A445C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A12FF0();
  sub_1E5A2C224();
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  sub_1E58FE478(&qword_1ECFFCDE0);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v22 = type metadata accessor for PersonalizedWorkoutPlansState();
    v11 = v22[5];
    v32 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
    sub_1E5A13994(&qword_1ED000E40);
    sub_1E5A2C0B4();
    v12 = v22[6];
    v31 = 2;
    sub_1E5A2A2F4();
    sub_1E5A13F18(&qword_1ECFFD5E0, MEMORY[0x1E699D930]);
    sub_1E5A2C0B4();
    v13 = v22[7];
    v30 = 3;
    sub_1E5A2C0B4();
    v14 = v22[8];
    v29 = 4;
    sub_1E5A29EB4();
    sub_1E5A13F18(&qword_1ECFFCDF0, MEMORY[0x1E6969770]);
    sub_1E5A2C0B4();
    v28 = *(v3 + v22[9]);
    v27 = 5;
    sub_1E5A13044();
    sub_1E5A2C0B4();
    v26 = *(v3 + v22[10]);
    v25 = 6;
    sub_1E58FDD58();
    sub_1E5A2C0B4();
    v15 = (v3 + v22[11]);
    v16 = *v15;
    v17 = v15[1];
    v24 = 7;
    sub_1E5A2C034();
    v18 = (v3 + v22[12]);
    v19 = *v18;
    v20 = v18[1];
    v23 = 8;
    sub_1E5A2C034();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E5A12FF0()
{
  result = qword_1ED000E38;
  if (!qword_1ED000E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E38);
  }

  return result;
}

unint64_t sub_1E5A13044()
{
  result = qword_1ED000E58;
  if (!qword_1ED000E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E58);
  }

  return result;
}

uint64_t PersonalizedWorkoutPlansState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1E5A29EB4();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v49 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5A2A2F4();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v52 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  v9 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v11 = v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v59 = v46 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000E60, &qword_1E5A445C8);
  v55 = *(v58 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v20 = v46 - v19;
  v21 = type metadata accessor for PersonalizedWorkoutPlansState();
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v25 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1E5A12FF0();
  v57 = v20;
  v27 = v60;
  sub_1E5A2C214();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v28 = v55;
  v47 = v15;
  v60 = v24;
  v72 = 0;
  v29 = sub_1E58FE478(&qword_1ECFFCE08);
  sub_1E5A2BFE4();
  v46[1] = v29;
  v30 = v60;
  sub_1E58F0054(v59, v60, &qword_1ECFFC100, &qword_1E5A2FE90);
  v71 = 1;
  sub_1E5A13994(&qword_1ED000E68);
  sub_1E5A2BFE4();
  sub_1E58F0054(v11, v30 + v21[5], &qword_1ECFFE260, &qword_1E5A39370);
  v70 = 2;
  sub_1E5A13F18(&qword_1ECFFD5F0, MEMORY[0x1E699D930]);
  v31 = v30;
  v32 = v52;
  v33 = v54;
  v59 = 0;
  sub_1E5A2BFE4();
  (*(v53 + 32))(v31 + v21[6], v32, v33);
  v69 = 3;
  v34 = v47;
  sub_1E5A2BFE4();
  sub_1E58F0054(v34, v31 + v21[7], &qword_1ECFFC100, &qword_1E5A2FE90);
  v68 = 4;
  sub_1E5A13F18(&qword_1ECFFCE18, MEMORY[0x1E6969770]);
  v35 = v31;
  v36 = v49;
  v37 = v51;
  sub_1E5A2BFE4();
  (*(v50 + 32))(v35 + v21[8], v36, v37);
  v66 = 5;
  sub_1E5A13A68();
  sub_1E5A2BFE4();
  *(v35 + v21[9]) = v67;
  v64 = 6;
  sub_1E58FE530();
  sub_1E5A2BFE4();
  *(v35 + v21[10]) = v65;
  v63 = 7;
  v38 = sub_1E5A2BF64();
  v39 = (v35 + v21[11]);
  *v39 = v38;
  v39[1] = v40;
  v62 = 8;
  v41 = sub_1E5A2BF64();
  v43 = v42;
  (*(v28 + 8))(v57, v58);
  v44 = (v35 + v21[12]);
  *v44 = v41;
  v44[1] = v43;
  sub_1E5A13ABC(v35, v48);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return sub_1E5A13B20(v35);
}

uint64_t sub_1E5A13994(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE260, &qword_1E5A39370);
    sub_1E5A13F18(&qword_1ED000E48, type metadata accessor for PersonalizedWorkoutPlanCandidates);
    sub_1E5A13F18(&qword_1ED000E50, type metadata accessor for PersonalizedWorkoutPlanCandidates);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5A13A68()
{
  result = qword_1ED000E70;
  if (!qword_1ED000E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E70);
  }

  return result;
}

uint64_t sub_1E5A13ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlansState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A13B20(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizedWorkoutPlansState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s18FitnessWorkoutPlan012PersonalizedB10PlansStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E5A2B8F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PersonalizedWorkoutPlansState();
  v5 = v4[5];
  type metadata accessor for PersonalizedWorkoutPlanCandidates();
  sub_1E5A13F18(qword_1EE2D07B8, type metadata accessor for PersonalizedWorkoutPlanCandidates);
  if ((sub_1E5A2B8F4() & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x1E6930EA0](a1 + v4[6], a2 + v4[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];
  if ((sub_1E5A2B8F4() & 1) == 0 || (MEMORY[0x1E6930AC0](a1 + v4[8], a2 + v4[8]) & 1) == 0 || *(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]))
  {
    return 0;
  }

  v7 = v4[11];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11 || (*v8 != *v10 || v9 != v11) && (sub_1E5A2C114() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = v4[12];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (v16 && (*v13 == *v15 && v14 == v16 || (sub_1E5A2C114() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

void sub_1E5A13D9C()
{
  sub_1E58FE834();
  if (v0 <= 0x3F)
  {
    sub_1E5A13E84();
    if (v1 <= 0x3F)
    {
      sub_1E5A2A2F4();
      if (v2 <= 0x3F)
      {
        sub_1E5A29EB4();
        if (v3 <= 0x3F)
        {
          sub_1E593C974();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E5A13E84()
{
  if (!qword_1EE2CFAA0)
  {
    type metadata accessor for PersonalizedWorkoutPlanCandidates();
    sub_1E5A13F18(qword_1EE2D07B8, type metadata accessor for PersonalizedWorkoutPlanCandidates);
    v0 = sub_1E5A2B904();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2CFAA0);
    }
  }
}

uint64_t sub_1E5A13F18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5A13F74()
{
  result = qword_1ED000E78;
  if (!qword_1ED000E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E78);
  }

  return result;
}

unint64_t sub_1E5A13FCC()
{
  result = qword_1ED000E80;
  if (!qword_1ED000E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E80);
  }

  return result;
}

unint64_t sub_1E5A14024()
{
  result = qword_1ED000E88;
  if (!qword_1ED000E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E88);
  }

  return result;
}

uint64_t sub_1E5A14078(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001E5A46500 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7669746341736168 && a2 == 0xED00006E616C5065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073 || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t PreviousPlanDetail.init(placeholderIdentifier:title:subtitle:caption:startDate:workoutPlanLength:weekdays:timePerDay:modalities:templateIdentifier:modalityIdentifiersCount:schedule:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  v30 = *a16;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v21 = type metadata accessor for PreviousPlanDetail();
  v22 = v21[6];
  v23 = sub_1E5A29CF4();
  (*(*(v23 - 8) + 32))(&a9[v22], a5, v23);
  v24 = &a9[v21[7]];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = v21[8];
  v26 = sub_1E5A29E34();
  (*(*(v26 - 8) + 32))(&a9[v25], a8, v26);
  *&a9[v21[9]] = a10;
  *&a9[v21[11]] = a12;
  *&a9[v21[10]] = a11;
  *&a9[v21[12]] = a13;
  v27 = v21[13];
  v28 = sub_1E5A29E74();
  result = (*(*(v28 - 8) + 32))(&a9[v27], a14, v28);
  *&a9[v21[14]] = a15;
  *&a9[v21[15]] = v30;
  return result;
}

uint64_t PreviousPlanDetail.placeholderIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PreviousPlanDetail.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PreviousPlanDetail.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviousPlanDetail() + 24);
  v4 = sub_1E5A29CF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviousPlanDetail.caption.getter()
{
  v1 = (v0 + *(type metadata accessor for PreviousPlanDetail() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PreviousPlanDetail.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviousPlanDetail() + 32);
  v4 = sub_1E5A29E34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviousPlanDetail.weekdays.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreviousPlanDetail() + 40));
}

uint64_t PreviousPlanDetail.timePerDay.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreviousPlanDetail() + 44));
}

uint64_t PreviousPlanDetail.modalities.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreviousPlanDetail() + 48));
}

uint64_t PreviousPlanDetail.templateIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviousPlanDetail() + 52);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviousPlanDetail.schedule.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for PreviousPlanDetail() + 60));
}

uint64_t sub_1E5A1485C()
{
  v0 = sub_1E5A29E74();
  v22 = *(v0 - 8);
  v23 = v0;
  v1 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v18 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E5A29E34();
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E5A29CF4();
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PreviousPlanDetail();
  __swift_allocate_value_buffer(v11, qword_1ED000E90);
  v12 = __swift_project_value_buffer(v11, qword_1ED000E90);
  sub_1E5A29C84();
  sub_1E5A29E24();
  sub_1E5A29E64();
  v13 = MEMORY[0x1E69E7CC0];
  v17 = sub_1E590E29C(MEMORY[0x1E69E7CC0]);
  *v12 = 0xD000000000000016;
  *(v12 + 1) = 0x80000001E5A475F0;
  *(v12 + 2) = 0xD000000000000011;
  *(v12 + 3) = 0x80000001E5A47610;
  (*(v7 + 32))(&v12[v11[6]], v10, v19);
  v14 = &v12[v11[7]];
  *v14 = 0xD000000000000013;
  *(v14 + 1) = 0x80000001E5A47650;
  (*(v20 + 32))(&v12[v11[8]], v6, v21);
  *&v12[v11[9]] = 0;
  *&v12[v11[11]] = v13;
  *&v12[v11[10]] = v13;
  *&v12[v11[12]] = v13;
  result = (*(v22 + 32))(&v12[v11[13]], v18, v23);
  *&v12[v11[14]] = 0;
  *&v12[v11[15]] = v17;
  return result;
}

uint64_t static PreviousPlanDetail.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECFFB4F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PreviousPlanDetail();
  v3 = __swift_project_value_buffer(v2, qword_1ED000E90);

  return sub_1E5A14BD0(v3, a1);
}

uint64_t sub_1E5A14BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviousPlanDetail();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5A14C34(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000018;
    if (a1 != 10)
    {
      v5 = 0x656C756465686373;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0x737961646B656577;
    v8 = 0x44726550656D6974;
    if (a1 != 7)
    {
      v8 = 0x6974696C61646F6DLL;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
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
    v1 = 0x656C746974;
    v2 = 0x6E6F6974706163;
    v3 = 0x7461447472617473;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0x656C746974627573;
    }

    if (!a1)
    {
      v1 = 0xD000000000000015;
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
}

uint64_t sub_1E5A14DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A167BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A14E00(uint64_t a1)
{
  v2 = sub_1E5A153B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A14E3C(uint64_t a1)
{
  v2 = sub_1E5A153B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviousPlanDetail.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000EA8, &qword_1E5A447D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A153B4();
  sub_1E5A2C224();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v26) = 0;
  sub_1E5A2C064();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v26) = 1;
    sub_1E5A2C064();
    v15 = type metadata accessor for PreviousPlanDetail();
    v16 = v15[6];
    LOBYTE(v26) = 2;
    sub_1E5A29CF4();
    sub_1E5A164F4(&qword_1ECFFECB0, MEMORY[0x1E6968848]);
    sub_1E5A2C0B4();
    v17 = (v3 + v15[7]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v26) = 3;
    sub_1E5A2C064();
    v20 = v15[8];
    LOBYTE(v26) = 4;
    sub_1E5A29E34();
    sub_1E5A164F4(&qword_1ECFFCB30, MEMORY[0x1E6969530]);
    sub_1E5A2C0B4();
    v21 = *(v3 + v15[9]);
    LOBYTE(v26) = 5;
    sub_1E5A2C094();
    v26 = *(v3 + v15[10]);
    HIBYTE(v25) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000EB8, &qword_1E5A447D8);
    sub_1E5A15E94(&qword_1ED000EC0, sub_1E5A15408);
    sub_1E5A2C0B4();
    v26 = *(v3 + v15[11]);
    HIBYTE(v25) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
    sub_1E59A4EFC(&qword_1ECFFF5B0);
    sub_1E5A2C0B4();
    v26 = *(v3 + v15[12]);
    HIBYTE(v25) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB988, &qword_1E5A3A470);
    sub_1E58C7B54(&qword_1ECFFB980);
    sub_1E5A2C0B4();
    v22 = v15[13];
    LOBYTE(v26) = 9;
    sub_1E5A29E74();
    sub_1E5A164F4(&qword_1ECFFC7F8, MEMORY[0x1E69695A8]);
    sub_1E5A2C0B4();
    v23 = *(v3 + v15[14]);
    LOBYTE(v26) = 10;
    sub_1E5A2C094();
    v26 = *(v3 + v15[15]);
    HIBYTE(v25) = 11;
    sub_1E58C2B90();

    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E5A153B4()
{
  result = qword_1ED000EB0;
  if (!qword_1ED000EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000EB0);
  }

  return result;
}

unint64_t sub_1E5A15408()
{
  result = qword_1ED000EC8;
  if (!qword_1ED000EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000EC8);
  }

  return result;
}

uint64_t PreviousPlanDetail.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1E5A29E74();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v40 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5A29E34();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A29CF4();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000ED0, &qword_1E5A447E0);
  v47 = *(v49 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v15 = v35 - v14;
  v16 = type metadata accessor for PreviousPlanDetail();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A153B4();
  v48 = v15;
  v21 = v50;
  sub_1E5A2C214();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v46;
  v36 = v9;
  v37 = v16;
  v50 = a1;
  v38 = v19;
  LOBYTE(v52) = 0;
  v23 = sub_1E5A2BF94();
  v24 = v38;
  *v38 = v23;
  *(v24 + 1) = v25;
  LOBYTE(v52) = 1;
  *(v24 + 2) = sub_1E5A2BF94();
  *(v24 + 3) = v26;
  LOBYTE(v52) = 2;
  sub_1E5A164F4(&qword_1ECFFECC8, MEMORY[0x1E6968848]);
  v27 = v36;
  v35[1] = 0;
  sub_1E5A2BFE4();
  v28 = v37;
  (*(v43 + 32))(&v24[v37[6]], v12, v27);
  LOBYTE(v52) = 3;
  v29 = sub_1E5A2BF94();
  v30 = &v24[v28[7]];
  *v30 = v29;
  v30[1] = v31;
  LOBYTE(v52) = 4;
  sub_1E5A164F4(&qword_1ECFFCB80, MEMORY[0x1E6969530]);
  v32 = v42;
  sub_1E5A2BFE4();
  (*(v41 + 32))(&v24[v28[8]], v22, v32);
  LOBYTE(v52) = 5;
  *&v24[v28[9]] = sub_1E5A2BFC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000EB8, &qword_1E5A447D8);
  v51 = 6;
  sub_1E5A15E94(&qword_1ED000ED8, sub_1E5A15F0C);
  sub_1E5A2BFE4();
  *&v24[v28[10]] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
  v51 = 7;
  sub_1E59A4EFC(&qword_1ECFFF5D0);
  sub_1E5A2BFE4();
  *&v24[v28[11]] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB988, &qword_1E5A3A470);
  v51 = 8;
  sub_1E58C7B54(&qword_1ECFFBB48);
  sub_1E5A2BFE4();
  LODWORD(v46) = 1;
  *&v24[v28[12]] = v52;
  LOBYTE(v52) = 9;
  sub_1E5A164F4(&qword_1ECFFC818, MEMORY[0x1E69695A8]);
  sub_1E5A2BFE4();
  (*(v44 + 32))(v38 + v37[13], v40, v45);
  LOBYTE(v52) = 10;
  *(v38 + v37[14]) = sub_1E5A2BFC4();
  v51 = 11;
  sub_1E58C7620();
  sub_1E5A2BFE4();
  (*(v47 + 8))(v48, v49);
  v33 = v38;
  *(v38 + v37[15]) = v52;
  sub_1E5A14BD0(v33, v39);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_1E5A15F60(v33);
}

uint64_t sub_1E5A15E94(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000EB8, &qword_1E5A447D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5A15F0C()
{
  result = qword_1ED000EE0;
  if (!qword_1ED000EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000EE0);
  }

  return result;
}

uint64_t sub_1E5A15F60(uint64_t a1)
{
  v2 = type metadata accessor for PreviousPlanDetail();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PreviousPlanDetail.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_1E5A2BB74();
  v6 = v1[2];
  v7 = v1[3];
  sub_1E5A2BB74();
  v8 = type metadata accessor for PreviousPlanDetail();
  v9 = v8[6];
  sub_1E5A29CF4();
  sub_1E5A164F4(&qword_1ECFFECD0, MEMORY[0x1E6968848]);
  sub_1E5A2BA44();
  v10 = (v2 + v8[7]);
  v11 = *v10;
  v12 = v10[1];
  sub_1E5A2BB74();
  v13 = v8[8];
  sub_1E5A29E34();
  sub_1E5A164F4(&qword_1ECFFCBB8, MEMORY[0x1E6969530]);
  sub_1E5A2BA44();
  MEMORY[0x1E6932DE0](*(v2 + v8[9]));
  v14 = *(v2 + v8[10]);
  MEMORY[0x1E6932DE0](*(v14 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 32);
    do
    {
      v17 = *v16++;
      MEMORY[0x1E6932DE0](v17);
      --v15;
    }

    while (v15);
  }

  v18 = *(v2 + v8[11]);
  MEMORY[0x1E6932DE0](*(v18 + 16));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 32);
    do
    {
      v21 = *v20++;
      MEMORY[0x1E6932DE0](v21);
      --v19;
    }

    while (v19);
  }

  v22 = *(v2 + v8[12]);
  MEMORY[0x1E6932DE0](*(v22 + 16));
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = (v22 + 40);
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;

      sub_1E5A2BB74();

      v24 += 2;
      --v23;
    }

    while (v23);
  }

  v27 = v8[13];
  sub_1E5A29E74();
  sub_1E5A164F4(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  MEMORY[0x1E6932DE0](*(v2 + v8[14]));
  v28 = *(v2 + v8[15]);

  return sub_1E58F9DDC(a1, v28);
}

uint64_t PreviousPlanDetail.hashValue.getter()
{
  sub_1E5A2C1B4();
  PreviousPlanDetail.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E5A16298()
{
  sub_1E5A2C1B4();
  PreviousPlanDetail.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E5A162DC()
{
  sub_1E5A2C1B4();
  PreviousPlanDetail.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan08PreviousC6DetailV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for PreviousPlanDetail();
  v7 = v6[6];
  if ((sub_1E5A29CC4() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[7];
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v9 == *v11 && v10 == v11[1];
  if (!v12 && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v13 = v6[8];
  if ((sub_1E5A29E04() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v6[9]) != *(a2 + v6[9]))
  {
    return 0;
  }

  if ((sub_1E595C8C4(*(a1 + v6[10]), *(a2 + v6[10])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E595C8C0(*(a1 + v6[11]), *(a2 + v6[11])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E595B21C(*(a1 + v6[12]), *(a2 + v6[12])) & 1) == 0)
  {
    return 0;
  }

  v14 = v6[13];
  if ((sub_1E5A29E54() & 1) == 0 || *(a1 + v6[14]) != *(a2 + v6[14]))
  {
    return 0;
  }

  v15 = v6[15];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);

  v18 = sub_1E599C6C0(v16, v17);

  return v18 & 1;
}

uint64_t sub_1E5A164F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PreviousPlanDetail.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviousPlanDetail.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5A166B8()
{
  result = qword_1ED000EF0;
  if (!qword_1ED000EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000EF0);
  }

  return result;
}

unint64_t sub_1E5A16710()
{
  result = qword_1ED000EF8;
  if (!qword_1ED000EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000EF8);
  }

  return result;
}

unint64_t sub_1E5A16768()
{
  result = qword_1ED000F00;
  if (!qword_1ED000F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F00);
  }

  return result;
}

uint64_t sub_1E5A167BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001E5A46A40 == a2;
  if (v3 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A46C50 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737961646B656577 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44726550656D6974 && a2 == 0xEA00000000007961 || (sub_1E5A2C114() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6974696C61646F6DLL && a2 == 0xEA00000000007365 || (sub_1E5A2C114() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A464E0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5A475D0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1E5A16C50()
{
  result = qword_1ED000F08;
  if (!qword_1ED000F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F08);
  }

  return result;
}

unint64_t sub_1E5A16CB4()
{
  result = qword_1ED000F10;
  if (!qword_1ED000F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F10);
  }

  return result;
}

uint64_t PersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v14 = type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  v15 = v14[9];
  v16 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  (*(*(v16 - 8) + 56))(a8 + v15, 1, 1, v16);
  v17 = *a1;
  sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330);

  *a8 = sub_1E5A2A654();
  a8[1] = v18;
  sub_1E5A16E98(a2, a8 + v15);
  *(a8 + v14[10]) = a3;
  v19 = a8 + v14[11];
  sub_1E5A16F08(a4, a5, a6, a7);

  return sub_1E58BAD14(a2, &qword_1ECFFC120, &qword_1E5A2FF10);
}

uint64_t sub_1E5A16E98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A16F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  swift_getFunctionTypeMetadata();
  return sub_1E5A2A034();
}

uint64_t (*sub_1E5A16FD4(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v2 = *(a1 + 44);
  v3 = *(a1 + 16);
  *&v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  *(&v7 + 1) = MEMORY[0x1E69E6530];
  swift_getFunctionTypeMetadata();
  sub_1E5A2A054();
  sub_1E5A2A044();
  v4 = swift_allocObject();
  v5 = *(a1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 32) = v7;
  return sub_1E5A1B630;
}

uint64_t sub_1E5A170A4(uint64_t a1)
{
  v3 = sub_1E5A29EB4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1E5A2BB14();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1E5A2BAF4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29[-v11];
  sub_1E58BABA0(v1 + *(a1 + 36), &v29[-v11], &qword_1ECFFC120, &qword_1E5A2FF10);
  v13 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    sub_1E58BAD14(v12, &qword_1ECFFC120, &qword_1E5A2FF10);
    return 0;
  }

  v15 = *&v12[*(v13 + 28)];

  sub_1E59D207C(v12, type metadata accessor for PersonalizedWorkoutPlanCandidate);

  v17 = sub_1E591BB44(v16);

  v18 = sub_1E591C344(v17);
  if (v19)
  {

    v20 = 0;
  }

  else
  {
    v20 = v18;
    v21 = sub_1E591C3F8(v17);
    v23 = v22;

    if (v23)
    {
      v20 = 0;
    }

    else
    {
      if (v21 < v20)
      {
        __break(1u);
        return result;
      }

      if (v20 != v21)
      {
        sub_1E5A2BAE4();
        sub_1E5A2BAD4();
        v28 = *(v15 + 16);

        v30 = v28;
        sub_1E5A2BAB4();
        sub_1E5A2BAD4();
        v30 = v20;
        sub_1E5A2BAB4();
        sub_1E5A2BAD4();
        v30 = v21;
        goto LABEL_10;
      }
    }
  }

  sub_1E5A2BAE4();
  sub_1E5A2BAD4();
  v24 = *(v15 + 16);

  v30 = v24;
  sub_1E5A2BAB4();
  sub_1E5A2BAD4();
  v30 = v20;
LABEL_10:
  sub_1E5A2BAB4();
  sub_1E5A2BAD4();
  sub_1E5A2BB04();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v25 = qword_1EE2D33E0;
  v26 = *(v1 + 8);
  swift_getKeyPath();

  v27 = v25;
  sub_1E5A2B944();

  return sub_1E5A2BB64();
}

uint64_t PersonalizedWorkoutPlanCandidateView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F18, &qword_1E5A44B48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v36 - v5);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F20, &qword_1E5A44B50);
  v46 = *(v37 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v45 = &v36 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F28, &qword_1E5A44B58);
  v9 = *(a1 + 24);
  v53 = *(a1 + 16);
  v10 = v53;
  v54 = v9;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  swift_getTupleTypeMetadata3();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  v11 = sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v64 = MEMORY[0x1E697EBF8];
  v43 = MEMORY[0x1E697E858];
  v61 = swift_getWitnessTable();
  v62 = MEMORY[0x1E697E5D8];
  v12 = swift_getWitnessTable();
  v53 = v11;
  v54 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = v11;
  v54 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_1E5A2A774();
  v13 = sub_1E5A2A6C4();
  v42 = *(v13 - 8);
  v14 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v36 - v17;
  *v6 = sub_1E5A2B7E4();
  v6[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F30, &qword_1E5A44B60);
  v20 = v44;
  v21 = v10;
  v22 = v9;
  sub_1E5A17B80(v44, v6 + *(v19 + 44));
  v23 = v6 + *(v3 + 36);
  *v23 = 0x3FFC71C71C71C71CLL;
  *(v23 + 4) = 0;
  sub_1E5A2B7A4();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F38, &qword_1E5A44B68);
  v25 = sub_1E5A1872C();
  v35 = sub_1E5A187E4();
  v26 = v45;
  sub_1E5A2B3A4();
  sub_1E58BAD14(v6, &qword_1ED000F18, &qword_1E5A44B48);
  v48 = v21;
  v49 = v22;
  v50 = v20;
  sub_1E5A2B7E4();
  v53 = v3;
  v54 = MEMORY[0x1E6981CD8];
  v55 = v24;
  v56 = v24;
  v57 = v25;
  v58 = MEMORY[0x1E6981CD0];
  v59 = v35;
  v60 = v35;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v36;
  v29 = v37;
  sub_1E5A2B314();
  (*(v46 + 8))(v26, v29);
  v30 = swift_getWitnessTable();
  v51 = v27;
  v52 = v30;
  v31 = swift_getWitnessTable();
  v32 = v38;
  sub_1E58B41DC(v28, v13, v31);
  v33 = *(v42 + 8);
  v33(v28, v13);
  sub_1E58B41DC(v32, v13, v31);
  return (v33)(v32, v13);
}

uint64_t sub_1E5A17B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v59 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F90, &qword_1E5A44C78);
  v2 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v4 = &v46 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F98, &qword_1E5A44C80);
  v5 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v46 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FA0, &qword_1E5A44C88);
  v49 = *(v52 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v46 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FA8, &qword_1E5A44C90);
  v47 = *(v50 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v46 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FB0, &qword_1E5A44C98);
  v12 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FB8, &qword_1E5A44CA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FC0, &unk_1E5A44CA8);
  v18 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v46 - v23;
  v25 = type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  sub_1E58BABA0(v59 + *(v25 + 36), v24, &qword_1ECFFC120, &qword_1E5A2FF10);
  v26 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  if ((*(*(v26 - 8) + 48))(v24, 1, v26) == 1)
  {
    sub_1E58BAD14(v24, &qword_1ECFFC120, &qword_1E5A2FF10);
    sub_1E5A2B8A4();
    sub_1E5A2B894();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1E5A2C930;
    if (qword_1ECFFB4D8 != -1)
    {
      swift_once();
    }

    *(v27 + 32) = sub_1E5A2B744();
    *(v27 + 40) = v28;
    if (qword_1ECFFB4E0 != -1)
    {
      swift_once();
    }

    *(v27 + 48) = sub_1E5A2B744();
    *(v27 + 56) = v29;
    sub_1E5A2B754();
    sub_1E5A2A614();
    *v4 = v62;
    *(v4 + 8) = v63;
    *(v4 + 24) = v64;
    *(v4 + 20) = 256;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FC8, &qword_1E5A44CB8);
    v30 = sub_1E59E70CC();
    v60 = &type metadata for StretchGoalPlanArtworkView;
    v61 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ED000FD0, &qword_1ED000FC8, &qword_1E5A44CB8);
    v31 = v53;
    sub_1E5A2AA74();
    v32 = &qword_1ED000F98;
    v33 = &qword_1E5A44C80;
    sub_1E58BABA0(v31, v56, &qword_1ED000F98, &qword_1E5A44C80);
    swift_storeEnumTagMultiPayload();
    sub_1E5A1B678();
    sub_1E5A1B730();
    sub_1E5A2AA74();
    v34 = v31;
    return sub_1E58BAD14(v34, v32, v33);
  }

  v35 = v24[*(v26 + 44)];
  sub_1E59D207C(v24, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  if (!v35)
  {
    swift_storeEnumTagMultiPayload();
    v40 = sub_1E59E71AC();
    v62 = &type metadata for ConsistentPlanArtworkView;
    *&v63 = v40;
    swift_getOpaqueTypeConformance2();
    sub_1E5A2AA74();
    v32 = &qword_1ED000FC0;
    v33 = &unk_1E5A44CA8;
    sub_1E58BABA0(v20, v56, &qword_1ED000FC0, &unk_1E5A44CA8);
    swift_storeEnumTagMultiPayload();
    sub_1E5A1B678();
    sub_1E5A1B730();
    sub_1E5A2AA74();
    v34 = v20;
    return sub_1E58BAD14(v34, v32, v33);
  }

  if (v35 == 1)
  {
    v36 = sub_1E59E71AC();
    sub_1E5A2B094();
    v37 = v47;
    v38 = v50;
    (*(v47 + 16))(v17, v11, v50);
    swift_storeEnumTagMultiPayload();
    v62 = &type metadata for ConsistentPlanArtworkView;
    *&v63 = v36;
    swift_getOpaqueTypeConformance2();
    sub_1E5A2AA74();
    sub_1E58BABA0(v20, v56, &qword_1ED000FC0, &unk_1E5A44CA8);
    swift_storeEnumTagMultiPayload();
    sub_1E5A1B678();
    sub_1E5A1B730();
    sub_1E5A2AA74();
    sub_1E58BAD14(v20, &qword_1ED000FC0, &unk_1E5A44CA8);
    return (*(v37 + 8))(v11, v38);
  }

  else
  {
    v41 = sub_1E59E70CC();
    v42 = v48;
    sub_1E5A2B094();
    v43 = v49;
    v44 = v52;
    (*(v49 + 16))(v4, v42, v52);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FC8, &qword_1E5A44CB8);
    v62 = &type metadata for StretchGoalPlanArtworkView;
    *&v63 = v41;
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ED000FD0, &qword_1ED000FC8, &qword_1E5A44CB8);
    v45 = v53;
    sub_1E5A2AA74();
    sub_1E58BABA0(v45, v56, &qword_1ED000F98, &qword_1E5A44C80);
    swift_storeEnumTagMultiPayload();
    sub_1E5A1B678();
    sub_1E5A1B730();
    sub_1E5A2AA74();
    sub_1E58BAD14(v45, &qword_1ED000F98, &qword_1E5A44C80);
    return (*(v43 + 8))(v42, v44);
  }
}

uint64_t sub_1E5A18550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5A2A074();
  v5 = v4;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F38, &qword_1E5A44B68) + 36));
  v7 = *(sub_1E5A2A754() + 20);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_1E5A2A9B4();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v5;
  *(v6 + 1) = v5;
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  return sub_1E58BABA0(a1, a2, &qword_1ED000F18, &qword_1E5A44B48);
}

uint64_t sub_1E5A18644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F38, &qword_1E5A44B68) + 36));
  v5 = *(sub_1E5A2A754() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1E5A2A9B4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #8.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  return sub_1E58BABA0(a1, a2, &qword_1ED000F18, &qword_1E5A44B48);
}

unint64_t sub_1E5A1872C()
{
  result = qword_1ED000F40;
  if (!qword_1ED000F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F18, &qword_1E5A44B48);
    sub_1E58CD164(&qword_1ED000F48, &qword_1ED000F50, &unk_1E5A44B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F40);
  }

  return result;
}

unint64_t sub_1E5A187E4()
{
  result = qword_1ED000F58;
  if (!qword_1ED000F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F38, &qword_1E5A44B68);
    sub_1E5A1872C();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F58);
  }

  return result;
}

uint64_t sub_1E5A1889C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a1;
  v49 = a4;
  v6 = sub_1E5A2AC84();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F28, &qword_1E5A44B58);
  v57 = a2;
  v58 = a3;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  swift_getTupleTypeMetadata3();
  v41 = sub_1E5A2B864();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1E5A2B604();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v34 - v11;
  v12 = sub_1E5A2A6C4();
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = sub_1E5A2A6C4();
  v42 = *(v16 - 8);
  v17 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v34 - v18;
  v34 = swift_getWitnessTable();
  v55 = v34;
  v56 = MEMORY[0x1E697EBF8];
  v35 = swift_getWitnessTable();
  v53 = v35;
  v54 = MEMORY[0x1E697E5D8];
  v36 = swift_getWitnessTable();
  v57 = v16;
  v58 = v36;
  v37 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = *(OpaqueTypeMetadata2 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v34 - v25;
  sub_1E5A2AA34();
  v50 = a2;
  v51 = a3;
  v52 = v45;
  v27 = v39;
  sub_1E5A2B5F4();
  sub_1E5A2B7F4();
  sub_1E5A2B2E4();
  (*(v44 + 8))(v27, v9);
  v28 = v38;
  sub_1E5A2B324();
  (*(v43 + 8))(v15, v12);
  v29 = v46;
  sub_1E5A2AC74();
  v30 = v36;
  sub_1E5A2B224();
  (*(v47 + 8))(v29, v48);
  (*(v42 + 8))(v28, v16);
  v57 = v16;
  v58 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E58B41DC(v23, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v32 = *(v20 + 8);
  v32(v23, OpaqueTypeMetadata2);
  sub_1E58B41DC(v26, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v32)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_1E5A18EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v165 = a4;
  v7 = sub_1E5A2BA14();
  v148 = *(v7 - 8);
  v149 = v7;
  v8 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v147 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A2B994();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v145 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A29E74();
  v136 = *(v13 - 8);
  v137 = v13;
  v14 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v135 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v140 = &v135 - v18;
  v19 = sub_1E5A2B9C4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v154 = (&v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v142 = &v135 - v24;
  v178 = a2;
  v179 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v146 = *(OpaqueTypeMetadata2 - 8);
  v26 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v144 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v141 = &v135 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v143 = &v135 - v31;
  v32 = sub_1E5A29EB4();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v151 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E5A2BB14();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v166 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = *(a2 - 8);
  v38 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v153 = &v135 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v139 = &v135 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v138 = (&v135 - v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v150 = &v135 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v135 - v49;
  v51 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v152 = &v135 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = OpaqueTypeMetadata2;
  v55 = sub_1E5A2AA84();
  v162 = *(v55 - 8);
  v163 = v55;
  v56 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v161 = &v135 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v160 = &v135 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F28, &qword_1E5A44B58);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v159 = &v135 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v135 - v64;
  sub_1E5A1A078(a1, &v135 - v64);
  LOBYTE(OpaqueTypeMetadata2) = sub_1E5A2AD94();
  sub_1E5A2A424();
  v155 = v60;
  v66 = *(v60 + 36);
  v67 = v51;
  v157 = v65;
  v158 = a2;
  v68 = &v65[v66];
  *v68 = OpaqueTypeMetadata2;
  *(v68 + 1) = v69;
  *(v68 + 2) = v70;
  *(v68 + 3) = v71;
  *(v68 + 4) = v72;
  v68[40] = 0;
  v167 = a3;
  v73 = type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  v74 = *(v73 + 36);
  sub_1E58BABA0(a1 + v74, v50, &qword_1ECFFC120, &qword_1E5A2FF10);
  if ((*(v52 + 48))(v50, 1, v67) != 1)
  {
    v87 = v152;
    sub_1E593CD50(v50, v152);
    v138 = sub_1E5A16FD4(v73);
    v88 = v150;
    sub_1E59D2018(v87, v150);
    (*(v52 + 56))(v88, 0, 1, v67);
    v89 = *(a1 + *(v73 + 40));
    sub_1E5A2BA84();
    v139 = v67;
    v90 = v87;
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v91 = qword_1EE2D33E0;
    v92 = *(a1 + 8);
    swift_getKeyPath();

    v93 = v91;
    sub_1E5A2B944();

    v94 = sub_1E5A2BB64();
    v95 = v150;
    v138(v150, v89, v94, v96, 0x7261646E656C6163, 0xE800000000000000);

    sub_1E58BAD14(v95, &qword_1ECFFC120, &qword_1E5A2FF10);
    *(v90 + *(v139 + 11));
    sub_1E5A2B9B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E5A3C8E0;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    sub_1E5A2BA84();
    v98 = qword_1EE2D33E0;
    v99 = *(a1 + 8);
    swift_getKeyPath();

    v100 = v98;
    sub_1E5A2B944();

    v101 = sub_1E5A2BB64();
    v102 = MEMORY[0x1E69E6158];
    *(inited + 48) = v101;
    *(inited + 56) = v103;
    *(inited + 72) = v102;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    *(inited + 96) = 0x6E6F74747562;
    *(inited + 104) = 0xE600000000000000;
    *(inited + 120) = v102;
    *(inited + 128) = 0x6973736572706D69;
    v104 = MEMORY[0x1E69E6530];
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = 0;
    *(inited + 168) = v104;
    *(inited + 176) = 0x64496F636572;
    *(inited + 184) = 0xE600000000000000;
    v105 = v90 + *(v139 + 9);
    v106 = v140;
    sub_1E58BABA0(v105, v140, &qword_1ECFFD900, &qword_1E5A39BB0);
    v107 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
    if ((*(*(v107 - 8) + 48))(v106, 1, v107) == 1)
    {
      sub_1E58BAD14(v106, &qword_1ECFFD900, &qword_1E5A39BB0);
      v108 = (inited + 192);
      *(inited + 216) = v102;
      v83 = v158;
    }

    else
    {
      v110 = v135;
      v109 = v136;
      v111 = v137;
      (*(v136 + 16))(v135, v106 + *(v107 + 20), v137);
      sub_1E59D207C(v106, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      v112 = sub_1E5A29E44();
      v114 = v113;
      (*(v109 + 8))(v110, v111);
      v108 = (inited + 192);
      *(inited + 216) = v102;
      v83 = v158;
      if (v114)
      {
        *v108 = v112;
LABEL_12:
        *(inited + 200) = v114;
        sub_1E590DF48(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
        swift_arrayDestroy();
        sub_1E5A2B984();
        v115 = MEMORY[0x1E69E7CC0];
        sub_1E590DF48(MEMORY[0x1E69E7CC0]);
        sub_1E590DF48(v115);
        v116 = v142;
        sub_1E5A2B9D4();
        v117 = sub_1E5A2B9E4();
        (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
        v118 = v147;
        sub_1E5A2B9F4();
        v119 = v141;
        v120 = v167;
        v121 = v153;
        sub_1E5A2B014();
        (*(v148 + 8))(v118, v149);
        sub_1E58BAD14(v116, &qword_1ECFFB550, &qword_1E5A304B0);
        (*(v156 + 8))(v121, v83);
        v178 = v83;
        v179 = v120;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v123 = v143;
        v124 = v164;
        sub_1E58B41DC(v119, v164, OpaqueTypeConformance2);
        v125 = *(v146 + 8);
        v125(v119, v124);
        v126 = v144;
        sub_1E58B41DC(v123, v124, OpaqueTypeConformance2);
        v86 = v160;
        sub_1E595EBC0(v126, v124);
        v125(v126, v124);
        v125(v123, v124);
        sub_1E59D207C(v152, type metadata accessor for PersonalizedWorkoutPlanCandidate);
        goto LABEL_13;
      }
    }

    *v108 = 0;
    v114 = 0xE000000000000000;
    goto LABEL_12;
  }

  sub_1E58BAD14(v50, &qword_1ECFFC120, &qword_1E5A2FF10);
  v154 = sub_1E5A16FD4(v73);
  v75 = *(a1 + *(v73 + 40));
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v76 = qword_1EE2D33E0;
  v77 = *(a1 + 8);
  swift_getKeyPath();

  v78 = v76;
  sub_1E5A2B944();

  v79 = sub_1E5A2BB64();
  v80 = v139;
  v154(a1 + v74, v75, v79, v81, 0x7261646E656C6163, 0xE800000000000000);

  v82 = v138;
  v83 = v158;
  v84 = v167;
  sub_1E58B41DC(v80, v158, v167);
  v85 = *(v156 + 8);
  v85(v80, v83);
  sub_1E58B41DC(v82, v83, v84);
  v178 = v83;
  v179 = v84;
  swift_getOpaqueTypeConformance2();
  v86 = v160;
  sub_1E595ECB8(v80, v164, v83);
  v85(v80, v83);
  v85(v82, v83);
LABEL_13:
  v127 = v157;
  v128 = v159;
  sub_1E58BABA0(v157, v159, &qword_1ED000F28, &qword_1E5A44B58);
  v176 = 0;
  v177 = 1;
  v178 = v128;
  v179 = &v176;
  v130 = v161;
  v129 = v162;
  v131 = v163;
  (*(v162 + 16))(v161, v86, v163);
  v180 = v130;
  v175[0] = v155;
  v175[1] = MEMORY[0x1E6981840];
  v175[2] = v131;
  v172 = sub_1E5A1B4F4();
  v173 = MEMORY[0x1E6981838];
  v170 = v83;
  v132 = v167;
  v171 = v167;
  v168 = swift_getOpaqueTypeConformance2();
  v169 = v132;
  WitnessTable = swift_getWitnessTable();
  sub_1E597DC00(&v178, 3uLL, v175);
  v133 = *(v129 + 8);
  v133(v86, v131);
  sub_1E58BAD14(v127, &qword_1ED000F28, &qword_1E5A44B58);
  v133(v130, v131);
  return sub_1E58BAD14(v128, &qword_1ED000F28, &qword_1E5A44B58);
}

uint64_t sub_1E5A1A078@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v147 = a2;
  v152 = sub_1E5A2AEB4();
  v151 = *(v152 - 8);
  v3 = *(v151 + 8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF680, &unk_1E5A3E010);
  v5 = *(*(v179 - 8) + 64);
  MEMORY[0x1EEE9AC00](v179);
  v178 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v177 = &v142 - v8;
  v9 = sub_1E5A2A684();
  v182 = *(v9 - 8);
  v10 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v181 = (&v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v180 = &v142 - v13;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF688, &unk_1E5A44C60);
  v14 = *(*(v176 - 8) + 64);
  MEMORY[0x1EEE9AC00](v176);
  v175 = &v142 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v160 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v142 - v20;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF690, &qword_1E5A3E020);
  v145 = *(v146 - 8);
  v22 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v143 = &v142 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v142 = &v142 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v165 = &v142 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v173 = &v142 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v174 = &v142 - v33;
  v149 = type metadata accessor for PersonalizedWorkoutPlanCandidateView();
  v34 = *(v149 + 36);
  v172 = a1;
  v158 = v34;
  sub_1E58BABA0(a1 + v34, v21, &qword_1ECFFC120, &qword_1E5A2FF10);
  v35 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v36 = *(v35 - 8);
  v157 = *(v36 + 48);
  v156 = v36 + 48;
  v37 = v157(v21, 1, v35);
  v159 = v35;
  if (v37 == 1)
  {
    sub_1E58BAD14(v21, &qword_1ECFFC120, &qword_1E5A2FF10);
    v38 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    v40 = &v21[*(v35 + 20)];
    v38 = *v40;
    v39 = v40[1];

    sub_1E59D207C(v21, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  }

  v199 = v38;
  v200 = v39;
  v166 = sub_1E58D1C80();
  v41 = sub_1E5A2AFD4();
  v43 = v42;
  v45 = v44;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v46 = sub_1E5A2AFA4();
  v48 = v47;
  v50 = v49;
  v52 = v51;

  sub_1E58B3C9C(v41, v43, v45 & 1);

  v154 = v46;
  v199 = v46;
  v200 = v48;
  v153 = v48;
  v53 = v50 & 1;
  LOBYTE(v201) = v50 & 1;
  v155 = v52;
  v202 = v52;
  v54 = v182;
  v55 = v182 + 104;
  v56 = *(v182 + 104);
  v57 = v180;
  v169 = *MEMORY[0x1E697E6E8];
  v56(v180);
  v58 = v181;
  v168 = *MEMORY[0x1E697E728];
  v171 = v55;
  v170 = v56;
  v56(v181);
  v167 = sub_1E59A8E44();
  if (sub_1E5A2BA64())
  {
    v59 = *(v54 + 32);
    v60 = v177;
    v59(v177, v57, v9);
    v61 = v179;
    v59((v60 + *(v179 + 48)), v58, v9);
    v62 = v178;
    sub_1E58BABA0(v60, v178, &qword_1ECFFF680, &unk_1E5A3E010);
    v63 = *(v61 + 48);
    v64 = v175;
    v59(v175, v62, v9);
    LODWORD(v148) = v53;
    v65 = *(v54 + 8);
    v182 = v54 + 8;
    v65(v62 + v63, v9);
    sub_1E59A8E9C(v60, v62);
    v66 = v64 + *(v176 + 36);
    v67 = v62 + *(v61 + 48);
    v164 = v54 + 32;
    v163 = v59;
    v59(v66, v67, v9);
    v162 = v65;
    v65(v62, v9);
    v161 = sub_1E58CD164(&qword_1ECFFF6A0, &qword_1ECFFF688, &unk_1E5A44C60);
    sub_1E5A2B164();
    sub_1E58BAD14(v64, &qword_1ECFFF688, &unk_1E5A44C60);
    sub_1E58B3C9C(v154, v153, v148);

    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    v155 = v193;
    v154 = v195;
    v153 = v197;
    v148 = v198;
    v192 = 1;
    v191 = v194;
    v190 = v196;
    v68 = v160;
    sub_1E58BABA0(v172 + v158, v160, &qword_1ECFFC120, &qword_1E5A2FF10);
    v69 = v159;
    if (v157(v68, 1, v159) == 1)
    {
      sub_1E58BAD14(v68, &qword_1ECFFC120, &qword_1E5A2FF10);
      v70 = 0;
      v71 = 0xE000000000000000;
    }

    else
    {
      v72 = (v68 + *(v69 + 24));
      v70 = *v72;
      v71 = v72[1];

      sub_1E59D207C(v68, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    }

    v199 = v70;
    v200 = v71;
    v73 = sub_1E5A2AFD4();
    v75 = v74;
    v77 = v76;
    sub_1E5A2AEC4();
    sub_1E5A2AE54();
    sub_1E5A2AEA4();

    v78 = sub_1E5A2AFA4();
    v80 = v79;
    v48 = v81;

    sub_1E58B3C9C(v73, v75, v77 & 1);

    LODWORD(v199) = sub_1E5A2ABA4();
    v82 = sub_1E5A2AF84();
    v84 = v83;
    LOBYTE(v75) = v85;
    v87 = v86;
    sub_1E58B3C9C(v78, v80, v48 & 1);

    v199 = v82;
    v200 = v84;
    v160 = v84;
    v88 = v75 & 1;
    LOBYTE(v201) = v75 & 1;
    v202 = v87;
    v57 = v180;
    v89 = v170;
    (v170)(v180, v169, v9);
    v58 = v181;
    (v89)(v181, v168, v9);
    if (sub_1E5A2BA64())
    {
      v90 = v177;
      v159 = v87;
      v91 = v163;
      v163(v177, v57, v9);
      v92 = v179;
      v91(v90 + *(v179 + 48), v58, v9);
      v93 = v178;
      sub_1E58BABA0(v90, v178, &qword_1ECFFF680, &unk_1E5A3E010);
      v94 = *(v92 + 48);
      v95 = v175;
      v91(v175, v93, v9);
      LODWORD(v158) = v88;
      v96 = v82;
      v97 = v162;
      v162(v93 + v94, v9);
      sub_1E59A8E9C(v90, v93);
      v91(v95 + *(v176 + 36), (v93 + *(v92 + 48)), v9);
      v97(v93, v9);
      sub_1E5A2B164();
      sub_1E58BAD14(v95, &qword_1ECFFF688, &unk_1E5A44C60);
      sub_1E58B3C9C(v96, v160, v158);

      sub_1E5A2B7E4();
      sub_1E5A2A5B4();
      v160 = v199;
      v159 = v201;
      v158 = v203;
      v157 = v204;
      v189 = 1;
      v188 = v200;
      v187 = v202;
      v183 = sub_1E5A170A4(v149);
      v184 = v98;
      v99 = sub_1E5A2AFD4();
      v101 = v100;
      LOBYTE(v96) = v102;
      sub_1E5A2AF04();
      sub_1E5A2AE64();
      sub_1E5A2AEA4();

      v58 = v151;
      v103 = v150;
      v104 = v152;
      (*(v151 + 13))(v150, *MEMORY[0x1E6980EA8], v152);
      sub_1E5A2AEE4();

      v58[1](v103, v104);
      v48 = sub_1E5A2AFA4();
      v57 = v105;
      LOBYTE(v58) = v106;

      sub_1E58B3C9C(v99, v101, v96 & 1);

      if (qword_1ECFFB478 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_14:
  swift_once();
LABEL_10:
  v183 = qword_1ED026498;

  v107 = sub_1E5A2AF84();
  v109 = v108;
  v111 = v110;
  v113 = v112;
  sub_1E58B3C9C(v48, v57, v58 & 1);

  v172 = v107;
  v183 = v107;
  v166 = v109;
  v184 = v109;
  v114 = v111 & 1;
  v185 = v111 & 1;
  v186 = v113;
  v115 = v180;
  v116 = v170;
  (v170)(v180, v169, v9);
  v117 = v181;
  (v116)(v181, v168, v9);
  result = sub_1E5A2BA64();
  if (result)
  {
    v119 = v117;
    v120 = v177;
    v121 = v115;
    v122 = v163;
    v163(v177, v121, v9);
    v123 = v179;
    v122(v120 + *(v179 + 48), v119, v9);
    LODWORD(v181) = v114;
    v124 = v178;
    sub_1E58BABA0(v120, v178, &qword_1ECFFF680, &unk_1E5A3E010);
    v125 = *(v123 + 48);
    v126 = v175;
    v122(v175, v124, v9);
    v127 = v162;
    v162(v124 + v125, v9);
    sub_1E59A8E9C(v120, v124);
    v122(v126 + *(v176 + 36), (v124 + *(v123 + 48)), v9);
    v127(v124, v9);
    v128 = v165;
    sub_1E5A2B164();
    sub_1E58BAD14(v126, &qword_1ECFFF688, &unk_1E5A44C60);
    sub_1E58B3C9C(v172, v166, v181);

    v129 = v145;
    v130 = *(v145 + 16);
    v131 = v142;
    v132 = v146;
    v130(v142, v174, v146);
    LOBYTE(v123) = v192;
    LODWORD(v178) = v191;
    LODWORD(v179) = v190;
    v133 = v143;
    v130(v143, v173, v132);
    LODWORD(v180) = v189;
    LODWORD(v181) = v188;
    LODWORD(v182) = v187;
    v134 = v144;
    v130(v144, v128, v132);
    v135 = v147;
    v130(v147, v131, v132);
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F88, &qword_1E5A44C70);
    v137 = &v135[v136[12]];
    *v137 = 0;
    v137[8] = v123;
    *(v137 + 2) = v155;
    v137[24] = v178;
    *(v137 + 4) = v154;
    v137[40] = v179;
    v138 = v148;
    *(v137 + 6) = v153;
    *(v137 + 7) = v138;
    v130(&v135[v136[16]], v133, v132);
    v139 = &v135[v136[20]];
    *v139 = 0;
    v139[8] = v180;
    *(v139 + 2) = v160;
    v139[24] = v181;
    *(v139 + 4) = v159;
    v139[40] = v182;
    v140 = v157;
    *(v139 + 6) = v158;
    *(v139 + 7) = v140;
    v130(&v135[v136[24]], v134, v132);
    v141 = *(v129 + 8);
    v141(v165, v132);
    v141(v173, v132);
    v141(v174, v132);
    v141(v134, v132);
    v141(v133, v132);
    return (v141)(v131, v132);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E5A1B3F0(uint64_t a1)
{
  sub_1E59E6F68();
  if (v2 <= 0x3F)
  {
    sub_1E593C91C();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_getFunctionTypeMetadata();
      sub_1E5A2A054();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E5A1B4F4()
{
  result = qword_1ED000F60;
  if (!qword_1ED000F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F28, &qword_1E5A44B58);
    sub_1E5A1B580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F60);
  }

  return result;
}

unint64_t sub_1E5A1B580()
{
  result = qword_1ED000F68;
  if (!qword_1ED000F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F70, &qword_1E5A44C40);
    sub_1E58CD164(&qword_1ED000F78, &qword_1ED000F80, &qword_1E5A44C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F68);
  }

  return result;
}

uint64_t sub_1E5A1B630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  v12 = a2;
  v11[0] = a3;
  v11[1] = a4;
  v10[0] = a5;
  v10[1] = a6;
  return v7(a1, &v12, v11, v10);
}

unint64_t sub_1E5A1B678()
{
  result = qword_1ED000FD8;
  if (!qword_1ED000FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000FC0, &unk_1E5A44CA8);
    sub_1E59E71AC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000FD8);
  }

  return result;
}

unint64_t sub_1E5A1B730()
{
  result = qword_1ED000FE0;
  if (!qword_1ED000FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F98, &qword_1E5A44C80);
    sub_1E59E70CC();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ED000FD0, &qword_1ED000FC8, &qword_1E5A44CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000FE0);
  }

  return result;
}

uint64_t sub_1E5A1B814(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  return v5(a1, *a2, *a3, a3[1], *a4, a4[1]);
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.init(cohortIdentifier:recommendationIdentifier:treatments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v8 = *(v7 + 20);
  v9 = sub_1E5A29E74();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t static PersonalizedWorkoutPlanCandidateMetrics.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v5 = *(v4 + 20);
  if ((sub_1E5A29E54() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1E595AC4C(v7, v8);
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.recommendationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics() + 20);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.treatments.getter()
{
  v1 = *(v0 + *(type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics() + 24));
}

unint64_t sub_1E5A1BA24()
{
  v1 = 0x6E656D7461657274;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1E5A1BA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A1C9B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A1BAB0(uint64_t a1)
{
  v2 = sub_1E5A1BD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A1BAEC(uint64_t a1)
{
  v2 = sub_1E5A1BD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FE8, &qword_1E5A44CC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A1BD6C();
  sub_1E5A2C224();
  v11 = *v3;
  v18 = 0;
  sub_1E5A2C094();
  if (!v2)
  {
    v12 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
    v13 = *(v12 + 20);
    v17 = 1;
    sub_1E5A29E74();
    sub_1E5A1C828(&qword_1ECFFC7F8, MEMORY[0x1E69695A8]);
    sub_1E5A2C0B4();
    v16 = *(v3 + *(v12 + 24));
    v15[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FF8, &qword_1E5A44CC8);
    sub_1E5A1C1F0(&qword_1ED001000, sub_1E5A1BDC0);
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E5A1BD6C()
{
  result = qword_1ED000FF0;
  if (!qword_1ED000FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000FF0);
  }

  return result;
}

unint64_t sub_1E5A1BDC0()
{
  result = qword_1ED001008;
  if (!qword_1ED001008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001008);
  }

  return result;
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_1E5A29E74();
  v28 = *(v30 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001010, &qword_1E5A44CD0);
  v29 = *(v31 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v24 - v7;
  v9 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A1BD6C();
  v14 = v32;
  sub_1E5A2C214();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v15 = v9;
  v17 = v29;
  v16 = v30;
  v36 = 0;
  v18 = v31;
  v19 = sub_1E5A2BFC4();
  v26 = v12;
  *v12 = v19;
  v35 = 1;
  sub_1E5A1C828(&qword_1ECFFC818, MEMORY[0x1E69695A8]);
  v20 = v16;
  sub_1E5A2BFE4();
  v24 = v15;
  v21 = *(v28 + 32);
  v22 = v26;
  v25 = *(v15 + 20);
  v21(v26 + v25, v5, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FF8, &qword_1E5A44CC8);
  v34 = 2;
  sub_1E5A1C1F0(&qword_1ED001018, sub_1E5A1C268);
  sub_1E5A2BFE4();
  (*(v17 + 8))(v8, v18);
  *(v22 + *(v24 + 24)) = v33;
  sub_1E5A1C2BC(v22, v27);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_1E5A1C320(v22);
}

uint64_t sub_1E5A1C1F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000FF8, &qword_1E5A44CC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5A1C268()
{
  result = qword_1ED001020;
  if (!qword_1ED001020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001020);
  }

  return result;
}

uint64_t sub_1E5A1C2BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A1C320(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.hash(into:)(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x1E6932DE0](*v1);
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v5 = *(v4 + 20);
  sub_1E5A29E74();
  sub_1E5A1C828(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  v6 = *(v2 + *(v4 + 24));

  return sub_1E5953800(a1, v6);
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.hashValue.getter()
{
  v1 = v0;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v0);
  v2 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v3 = *(v2 + 20);
  sub_1E5A29E74();
  sub_1E5A1C828(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  sub_1E5953800(v5, *(v1 + *(v2 + 24)));
  return sub_1E5A2C204();
}

uint64_t sub_1E5A1C530(uint64_t a1)
{
  v3 = v1;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v1);
  v4 = *(a1 + 20);
  sub_1E5A29E74();
  sub_1E5A1C828(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  sub_1E5953800(v6, *(v3 + *(a1 + 24)));
  return sub_1E5A2C204();
}

uint64_t sub_1E5A1C5EC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  MEMORY[0x1E6932DE0](*v2);
  v6 = *(a2 + 20);
  sub_1E5A29E74();
  sub_1E5A1C828(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  v7 = *(v4 + *(a2 + 24));

  return sub_1E5953800(a1, v7);
}

uint64_t sub_1E5A1C6A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v2);
  v5 = *(a2 + 20);
  sub_1E5A29E74();
  sub_1E5A1C828(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  sub_1E5953800(v7, *(v4 + *(a2 + 24)));
  return sub_1E5A2C204();
}

uint64_t sub_1E5A1C75C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  if ((sub_1E5A29E54() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_1E595AC4C(v8, v9);
}

uint64_t sub_1E5A1C828(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5A1C8AC()
{
  result = qword_1ED001030;
  if (!qword_1ED001030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001030);
  }

  return result;
}

unint64_t sub_1E5A1C904()
{
  result = qword_1ED001038;
  if (!qword_1ED001038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001038);
  }

  return result;
}

unint64_t sub_1E5A1C95C()
{
  result = qword_1ED001040;
  if (!qword_1ED001040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001040);
  }

  return result;
}

uint64_t sub_1E5A1C9B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001E5A47670 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5A47690 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D7461657274 && a2 == 0xEA00000000007374)
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

uint64_t LockupView.init(planDetail:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E5A2A2F4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2A2A4();
  sub_1E5A1CBF8(2, 2, 2, v11, a4, 5.0, 2.0, 20.0, 0.0, 8.0, 28.0);
  v12 = type metadata accessor for LockupView();
  result = sub_1E5957230(a1, a4 + *(v12 + 36));
  v14 = (a4 + *(v12 + 40));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t sub_1E5A1CBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = a8;
  *(a5 + 24) = a9;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  v15 = type metadata accessor for LockupView.Layout();
  v16 = v15[14];
  v17 = sub_1E5A2A2F4();
  result = (*(*(v17 - 8) + 32))(a5 + v16, a4, v17);
  *(a5 + v15[15]) = a10;
  *(a5 + v15[16]) = a11;
  return result;
}

uint64_t LockupView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A2A6C4();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFE0F0, &qword_1E5A39170);
  v41 = sub_1E5A2A6C4();
  v44 = *(v41 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v39 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001048, &qword_1E5A44EF8);
  v16 = sub_1E5A2A6C4();
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v43 = &v39 - v21;
  v22 = v2 + *(a1 + 40);
  v23 = *(v22 + 1);
  (*v22)(v20);
  v24 = *v3;
  v25 = v3[1];
  v26 = *(a1 + 24);
  sub_1E5A2B0A4();
  (*(v6 + 8))(v9, v5);
  v27 = v3[2];
  v54 = v26;
  v55 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v29 = v39;
  sub_1E5A2B114();
  (*(v42 + 8))(v13, v10);
  sub_1E5A2B7C4();
  v47 = v5;
  v48 = v26;
  v49 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001050, &qword_1E5A44F00);
  v30 = sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170);
  v52 = WitnessTable;
  v53 = v30;
  v31 = v41;
  v32 = swift_getWitnessTable();
  sub_1E5A1D3C8();
  v33 = v40;
  sub_1E5A2B314();
  (*(v44 + 8))(v29, v31);
  v34 = sub_1E58CD164(qword_1ED001070, &qword_1ED001048, &qword_1E5A44EF8);
  v50 = v32;
  v51 = v34;
  v35 = swift_getWitnessTable();
  v36 = v43;
  sub_1E58B41DC(v33, v16, v35);
  v37 = *(v45 + 8);
  v37(v33, v16);
  sub_1E58B41DC(v36, v16, v35);
  return (v37)(v36, v16);
}

void *sub_1E5A1D19C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LockupView.Layout();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = sub_1E5A2AA34();
  v26 = 0;
  sub_1E5A1D4C4(a1, v24);
  memcpy(v27, v24, 0x141uLL);
  memcpy(v28, v24, 0x141uLL);
  sub_1E58BABA0(v27, &v23, &qword_1ED001178, &qword_1E5A44FA8);
  sub_1E58BAD14(v28, &qword_1ED001178, &qword_1E5A44FA8);
  memcpy(&v25[7], v27, 0x141uLL);
  v10 = v26;
  (*(v5 + 16))(v8, a1, v4);
  v11 = *(v4 + 56);
  sub_1E5A2A294();
  v13 = v12;
  sub_1E5A2A2D4();
  v15 = v14;
  sub_1E5A2A2C4();
  v17 = v16;
  sub_1E5A2A2E4();
  v19 = v18;
  v20 = sub_1E5A2A2F4();
  (*(*(v20 - 8) + 8))(&v8[v11], v20);
  LOBYTE(a1) = sub_1E5A2ADA4();
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  result = memcpy((a2 + 17), v25, 0x148uLL);
  *(a2 + 352) = a1;
  *(a2 + 360) = v13;
  *(a2 + 368) = v15;
  *(a2 + 376) = v17;
  *(a2 + 384) = v19;
  *(a2 + 392) = 0;
  return result;
}

void *sub_1E5A1D3BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1E5A1D19C(*(v1 + 32), a1);
}

unint64_t sub_1E5A1D3C8()
{
  result = qword_1ED001058;
  if (!qword_1ED001058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001050, &qword_1E5A44F00);
    sub_1E58CD164(&qword_1ED001060, &qword_1ED001068, &qword_1E5A44F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001058);
  }

  return result;
}

id sub_1E5A1D4C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for LockupView() + 36);
  v4 = *(v3 + 3);
  v79 = v3;
  v157 = *(v3 + 2);
  v158 = v4;
  sub_1E58D1C80();

  v5 = sub_1E5A2AFD4();
  v7 = v6;
  v9 = v8;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    sub_1E5A2AF34();
    v11 = sub_1E5A2AFA4();
    v13 = v12;
    v15 = v14;

    sub_1E58B3C9C(v5, v7, v9 & 1);

    sub_1E5A2B444();
    v16 = sub_1E5A2AF74();
    v88 = v17;
    v89 = v16;
    v19 = v18;
    v90 = v20;

    sub_1E58B3C9C(v11, v13, v15 & 1);

    *(&v87 + 1) = a1[4];
    *&v87 = swift_getKeyPath();
    v85 = v19 & 1;
    v176 = v19 & 1;
    v174 = 0;
    v86 = sub_1E5A2ADA4();
    v21 = a1[3];
    sub_1E5A2A424();
    v78 = v22;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v177 = 0;
    v29 = type metadata accessor for PreviousPlanDetail();
    v30 = &v79[*(v29 + 24)];
    v31 = sub_1E5A29C94();
    v33 = v32;
    v35 = v34;
    sub_1E5A2AE14();
    v36 = sub_1E5A2AFA4();
    v76 = v37;
    v77 = v36;
    LOBYTE(v11) = v38;
    v84 = v39;

    sub_1E58B3C9C(v31, v33, v35 & 1);

    v75 = a1[5];
    KeyPath = swift_getKeyPath();
    v83 = sub_1E5A2ADA4();
    sub_1E5A2A424();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v74 = v11 & 1;
    LOBYTE(v157) = v11 & 1;
    LOBYTE(v142[0]) = 0;
    LOBYTE(v125[0]) = 0;
    v48 = &v79[*(v29 + 28)];
    v49 = v48[1];
    v157 = *v48;
    v158 = v49;

    v50 = sub_1E5A2AFD4();
    v52 = v51;
    LOBYTE(v29) = v53;
    sub_1E5A2AED4();
    v54 = sub_1E5A2AFA4();
    v56 = v55;
    v58 = v57;

    sub_1E58B3C9C(v50, v52, v29 & 1);

    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v80 = sub_1E5A2AF74();
    v81 = v59;
    v73 = v60;
    v62 = v61;
    sub_1E58B3C9C(v54, v56, v58 & 1);

    v92 = a1[6];
    v63 = swift_getKeyPath();
    v62 &= 1u;
    LOBYTE(v142[0]) = v62;
    v64 = sub_1E5A2ADA4();
    sub_1E5A2A424();
    *(&v105 + 1) = *v175;
    DWORD1(v105) = *&v175[3];
    BYTE7(v107) = v180;
    *(&v107 + 3) = v179;
    HIDWORD(v107) = *&v178[3];
    *(&v107 + 9) = *v178;
    DWORD1(v112) = *&v103[3];
    *(&v112 + 1) = *v103;
    DWORD1(v114) = *&v102[3];
    *(&v114 + 1) = *v102;
    HIDWORD(v114) = *&v101[3];
    *(&v114 + 9) = *v101;
    DWORD1(v119) = *&v97[3];
    *(&v119 + 1) = *v97;
    *(&v121 + 1) = 256;
    BYTE7(v121) = v100;
    *(&v121 + 3) = v99;
    HIDWORD(v121) = *&v98[3];
    *(&v121 + 9) = *v98;
    *&v122 = v65;
    *(&v122 + 1) = v66;
    *&v123 = v67;
    *(&v123 + 1) = v68;
    v69 = v122;
    v93[103] = 0;
    *&v93[87] = v123;
    *(a2 + 216) = 1;
    *(a2 + 313) = *&v93[96];
    LOBYTE(v157) = 0;
    *&v104 = v89;
    *(&v104 + 1) = v88;
    LOBYTE(v105) = v85;
    *(&v105 + 1) = v90;
    v106 = v87;
    LOWORD(v107) = 0;
    BYTE2(v107) = 1;
    BYTE8(v107) = v86;
    *&v108 = v78;
    *(&v108 + 1) = v24;
    *&v109 = v26;
    *(&v109 + 1) = v28;
    v110 = 0;
    v96[0] = 0;
    v94 = v108;
    v95 = v109;
    *&v111 = v77;
    *(&v111 + 1) = v76;
    LOBYTE(v112) = v74;
    *(&v112 + 1) = v84;
    *&v113 = KeyPath;
    *(&v113 + 1) = v75;
    LOBYTE(v114) = 0;
    BYTE8(v114) = v83;
    *&v115 = v41;
    *(&v115 + 1) = v43;
    *&v116 = v45;
    *(&v116 + 1) = v47;
    v117 = 0;
    v96[104] = 0;
    *&v96[88] = v116;
    *&v96[72] = v115;
    *&v96[56] = v114;
    *&v96[40] = v113;
    *&v96[24] = v112;
    *&v96[8] = v111;
    *&v118 = v80;
    *(&v118 + 1) = v73;
    LOBYTE(v119) = v62;
    *(&v119 + 1) = v81;
    *&v120 = v63;
    *(&v120 + 1) = v92;
    LOBYTE(v121) = 0;
    BYTE8(v121) = v64;
    v124 = 0;
    *&v93[71] = v69;
    *&v93[55] = v121;
    *&v93[39] = v120;
    *&v93[23] = v119;
    *&v93[7] = v118;
    v70 = v104;
    v71 = v105;
    v72 = v107;
    *(a2 + 32) = v87;
    *(a2 + 48) = v72;
    *a2 = v70;
    *(a2 + 16) = v71;
    *(a2 + 96) = *v96;
    *(a2 + 112) = *&v96[16];
    *(a2 + 64) = v94;
    *(a2 + 80) = v95;
    *(a2 + 176) = *&v96[80];
    *(a2 + 192) = *&v96[96];
    *(a2 + 144) = *&v96[48];
    *(a2 + 160) = *&v96[64];
    *(a2 + 128) = *&v96[32];
    *(a2 + 208) = 0;
    *(a2 + 265) = *&v93[48];
    *(a2 + 281) = *&v93[64];
    *(a2 + 297) = *&v93[80];
    *(a2 + 217) = *v93;
    *(a2 + 233) = *&v93[16];
    *(a2 + 249) = *&v93[32];
    v125[0] = v80;
    v125[1] = v73;
    v126 = v62;
    *&v127[3] = *&v97[3];
    *v127 = *v97;
    v128 = v81;
    v129 = v63;
    v130 = v92;
    v131 = 0;
    v132 = 256;
    v134 = v100;
    v133 = v99;
    v135 = v64;
    *&v136[3] = *&v98[3];
    *v136 = *v98;
    v137 = v65;
    v138 = v66;
    v139 = v67;
    v140 = v68;
    v141 = 0;
    sub_1E58BABA0(&v104, &v157, &qword_1ED001180, &qword_1E5A44FE0);
    sub_1E58BABA0(&v111, &v157, &qword_1ED001188, &qword_1E5A44FE8);
    sub_1E58BABA0(&v118, &v157, &qword_1ED001180, &qword_1E5A44FE0);
    sub_1E58BAD14(v125, &qword_1ED001180, &qword_1E5A44FE0);
    v142[0] = v77;
    v142[1] = v76;
    v143 = v74;
    *v144 = *v103;
    *&v144[3] = *&v103[3];
    v145 = v84;
    v146 = KeyPath;
    v147 = v75;
    v148 = 0;
    *v149 = *v102;
    *&v149[3] = *&v102[3];
    v150 = v83;
    *&v151[3] = *&v101[3];
    *v151 = *v101;
    v152 = v41;
    v153 = v43;
    v154 = v45;
    v155 = v47;
    v156 = 0;
    sub_1E58BAD14(v142, &qword_1ED001188, &qword_1E5A44FE8);
    v157 = v89;
    v158 = v88;
    v159 = v85;
    *v160 = *v175;
    *&v160[3] = *&v175[3];
    v161 = v90;
    v162 = v87;
    v163 = 0;
    v164 = 1;
    v165 = v179;
    v166 = v180;
    v167 = v86;
    *&v168[3] = *&v178[3];
    *v168 = *v178;
    v169 = v78;
    v170 = v24;
    v171 = v26;
    v172 = v28;
    v173 = 0;
    return sub_1E58BAD14(&v157, &qword_1ED001180, &qword_1E5A44FE0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E5A1DD1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for LockupView.Layout();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for PreviousPlanDetail();
    if (v5 <= 0x3F)
    {
      result = sub_1E59E700C();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1E5A1DE04()
{
  type metadata accessor for CGSize();
  if (v0 <= 0x3F)
  {
    sub_1E5A2A2F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E5A1DED4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E5A2A8A4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E5A1DF08(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1E5A2A8B4();
}

uint64_t WeeklyScheduleView.init(store:schedule:dateComponentsFormatter:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  result = sub_1E5A2A654();
  *a3 = result;
  a3[1] = v7;
  a3[2] = a2;
  a3[3] = v5;
  return result;
}

uint64_t WeeklyScheduleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  v2 = *(*(v17[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v17[0]);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001190, &qword_1E5A44FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  *v8 = sub_1E5A2AA24();
  *(v8 + 1) = 0x4024000000000000;
  v8[16] = 0;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001198, &qword_1E5A44FF8) + 44);
  v17[4] = v9;
  v17[5] = v10;
  v17[6] = v12;
  v17[7] = v11;
  sub_1E5A1FF84(&v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011A0, &qword_1E5A45000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011A8, &unk_1E5A45008);
  sub_1E5A200B4();
  sub_1E58CD164(&qword_1ED0011C0, &qword_1ED0011A8, &unk_1E5A45008);
  sub_1E5A2B714();
  v14 = *MEMORY[0x1E697E728];
  v15 = sub_1E5A2A684();
  (*(*(v15 - 8) + 104))(v4, v14, v15);
  sub_1E5A23454(&qword_1ECFFBF40, MEMORY[0x1E697E730]);
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E58CD164(&qword_1ED0011C8, &qword_1ED001190, &qword_1E5A44FF0);
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E5A2B164();
    sub_1E58BAD14(v4, &qword_1ECFFCE80, &qword_1E5A35BC0);
    return sub_1E58BAD14(v8, &qword_1ED001190, &qword_1E5A44FF0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5A1E30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_1E5A2AA34();
  *(a5 + 8) = 0x4024000000000000;
  *(a5 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011D0, &qword_1E5A450D8);
  return sub_1E5A1E398(a1, a2, a3, a4, (a5 + *(v10 + 44)));
}

uint64_t sub_1E5A1E398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v118 = a3;
  v127 = a1;
  v128 = a2;
  v126 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011D8, &qword_1E5A450E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v101 - v9;
  v108 = sub_1E5A2ACA4();
  v107 = *(v108 - 8);
  v11 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE930, &qword_1E5A3B268);
  v104 = *(v105 - 8);
  v13 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v101 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE910, &unk_1E5A3B250);
  v15 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v101 - v16;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA18, &qword_1E5A3B3B0);
  v114 = *(v115 - 8);
  v17 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v112 = &v101 - v20;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD740, &unk_1E5A35D60);
  v21 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v111 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v117 = &v101 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011E0, &qword_1E5A450E8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v120 = &v101 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011E8, &unk_1E5A450F0);
  v121 = *(v31 - 8);
  v32 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v119 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v129 = &v101 - v35;
  v36 = sub_1E591B840(a4);
  if (*(v36 + 16))
  {
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
    v38 = sub_1E5A2BF14();
    v36 = v37;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC8];
  }

  v130[0] = v38;
  sub_1E591C604(v36, 1, v130);
  v122 = v31;
  v123 = v28;
  v116 = v10;
  v124 = v7;
  v125 = v6;
  v39 = v130[0];
  v40 = v130[0][2];
  if (v40)
  {
    v101 = a4;
    v41 = sub_1E5A208A0(v40, 0, &qword_1ED001240, &qword_1E5A451C0);
    v42 = sub_1E5A230F8(v130, (v41 + 4), v40, v39);

    sub_1E58D26C0();
    if (v42 != v40)
    {
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      MEMORY[0x1E69331F0](0);

      __break(1u);
      return result;
    }

    a4 = v101;
  }

  else
  {

    v41 = MEMORY[0x1E69E7CC0];
  }

  v130[0] = v41;
  sub_1E5A2091C(v130);
  swift_getKeyPath();
  v43 = swift_allocObject();
  v44 = v128;
  v43[2] = v127;
  v43[3] = v44;
  v45 = v118;
  v43[4] = v118;
  v43[5] = a4;

  v46 = v45;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011F0, &qword_1E5A45120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011F8, &qword_1E5A45128);
  sub_1E58CD164(&qword_1ED001200, &qword_1ED0011F0, &qword_1E5A45120);
  sub_1E58D1B2C();
  sub_1E5A2325C();
  sub_1E5A2B6E4();
  swift_getKeyPath();
  sub_1E5A2B934();

  if (!v130[0])
  {
    goto LABEL_14;
  }

  v47 = sub_1E591B840(v130[0]);
  if (*(v47 + 16))
  {
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
    v49 = sub_1E5A2BF14();
    v47 = v48;
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC8];
  }

  v131 = v49;
  sub_1E591C604(v47, 1, &v131);

  v50 = *(v131 + 16);

  if (v50 < 6)
  {
    v51 = v117;
    sub_1E5A2B6B4();
    v52 = sub_1E5A2ADA4();
    sub_1E5A2A424();
    v53 = v51 + *(v102 + 36);
    *v53 = v52;
    *(v53 + 8) = v54;
    *(v53 + 16) = v55;
    *(v53 + 24) = v56;
    *(v53 + 32) = v57;
    *(v53 + 40) = 0;
    v58 = swift_allocObject();
    v58[2] = v127;
    v59 = v128;
    v58[3] = v128;
    v58[4] = v46;
    v58[5] = a4;
    MEMORY[0x1EEE9AC00](v59);

    v60 = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA28, &unk_1E5A3B3C0);
    v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA30, &unk_1E5A3C420);
    v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
    v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA40, &unk_1E5A3C430);
    v64 = sub_1E596F578();
    v65 = sub_1E596F688();
    v66 = sub_1E596F740();
    v130[0] = v61;
    v130[1] = MEMORY[0x1E6981CD8];
    v130[2] = v62;
    v130[3] = v63;
    v130[4] = v64;
    v130[5] = MEMORY[0x1E6981CD0];
    v130[6] = v65;
    v130[7] = v66;
    swift_getOpaqueTypeConformance2();
    v67 = v103;
    sub_1E5A2B574();
    v68 = v106;
    sub_1E5A2AC94();
    sub_1E58CD164(&qword_1ECFFE938, &qword_1ECFFE930, &qword_1E5A3B268);
    sub_1E5A23454(&qword_1ECFFE940, MEMORY[0x1E697CB70]);
    v69 = v109;
    v70 = v105;
    v71 = v108;
    sub_1E5A2B0B4();
    (*(v107 + 8))(v68, v71);
    (*(v104 + 8))(v67, v70);
    v72 = [objc_opt_self() secondarySystemBackgroundColor];
    v73 = sub_1E5A2B474();
    KeyPath = swift_getKeyPath();
    v130[0] = v73;
    v75 = sub_1E5A2A5C4();
    v76 = (v69 + *(v110 + 36));
    *v76 = KeyPath;
    v76[1] = v75;
    sub_1E5A2B7A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE918, &qword_1E5A451A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE920, &qword_1E5A3B260);
    sub_1E596EA84();
    sub_1E596EBFC();
    sub_1E596ECB4();
    v77 = v112;
    sub_1E5A2B3A4();
    sub_1E58BAD14(v69, &qword_1ECFFE910, &unk_1E5A3B250);
    v78 = v117;
    v79 = v111;
    sub_1E58BABA0(v117, v111, &qword_1ECFFD740, &unk_1E5A35D60);
    v80 = v114;
    v81 = *(v114 + 16);
    v82 = v113;
    v83 = v115;
    v81(v113, v77, v115);
    v84 = v116;
    sub_1E58BABA0(v79, v116, &qword_1ECFFD740, &unk_1E5A35D60);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001230, &qword_1E5A451A8);
    v81((v84 + *(v85 + 48)), v82, v83);
    v86 = *(v80 + 8);
    v86(v77, v83);
    sub_1E58BAD14(v78, &qword_1ECFFD740, &unk_1E5A35D60);
    v86(v82, v83);
    sub_1E58BAD14(v79, &qword_1ECFFD740, &unk_1E5A35D60);
    v87 = v120;
    sub_1E58A93E4(v84, v120);
    v88 = 0;
    v90 = v124;
    v89 = v125;
    v91 = v123;
  }

  else
  {
LABEL_14:
    v88 = 1;
    v90 = v124;
    v89 = v125;
    v91 = v123;
    v87 = v120;
  }

  (*(v90 + 56))(v87, v88, 1, v89);
  v93 = v121;
  v92 = v122;
  v94 = *(v121 + 16);
  v95 = v119;
  v96 = v129;
  v94(v119, v129, v122);
  sub_1E58BABA0(v87, v91, &qword_1ED0011E0, &qword_1E5A450E8);
  v97 = v126;
  v94(v126, v95, v92);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001228, &unk_1E5A45160);
  sub_1E58BABA0(v91, &v97[*(v98 + 48)], &qword_1ED0011E0, &qword_1E5A450E8);
  sub_1E58BAD14(v87, &qword_1ED0011E0, &qword_1E5A450E8);
  v99 = *(v93 + 8);
  v99(v96, v92);
  sub_1E58BAD14(v91, &qword_1ED0011E0, &qword_1E5A450E8);
  return (v99)(v95, v92);
}

uint64_t sub_1E5A1F170@<X0>(char *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v33 = *a1;
  v5 = *(a1 + 1);

  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  v6 = sub_1E5A2A654();
  v8 = v7;
  v9 = sub_1E5A2ADA4();
  sub_1E5A2A424();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_1E5A2B7E4();
  v20 = v19;
  v21 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011F8, &qword_1E5A45128) + 36));
  sub_1E5A2A094();
  v23 = v22;
  v24 = *(sub_1E5A2A754() + 20);
  v25 = *MEMORY[0x1E697F468];
  v26 = sub_1E5A2A9B4();
  (*(*(v26 - 8) + 104))(&v21[v24], v25, v26);
  *v21 = v23;
  *(v21 + 1) = v23;
  v27 = [objc_opt_self() secondarySystemBackgroundColor];
  v28 = sub_1E5A2B474();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  *&v21[*(v29 + 52)] = v28;
  *&v21[*(v29 + 56)] = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF078, &qword_1E5A3C638);
  v31 = &v21[*(result + 36)];
  *v31 = v18;
  v31[1] = v20;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v32;
  *(a3 + 24) = v33;
  *(a3 + 32) = v5;
  *(a3 + 40) = v9;
  *(a3 + 48) = v11;
  *(a3 + 56) = v13;
  *(a3 + 64) = v15;
  *(a3 + 72) = v17;
  *(a3 + 80) = 0;
  return result;
}

uint64_t sub_1E5A1F3A0()
{
  v0 = type metadata accessor for WorkoutPlanCreationAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB900, &qword_1E5A36290);
  v5 = *(v4 + 48);
  v6 = &v3[*(v4 + 64)];
  v7 = type metadata accessor for WorkoutPlanScheduledItem();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v3[v5] = 7;
  *v6 = 0;
  v6[8] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  sub_1E5A2349C(v3, type metadata accessor for WorkoutPlanCreationAction);
  *v3 = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E5A2349C(v3, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5A1F4F4()
{
  v0 = sub_1E5A29EB4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1E5A2BB14();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE2D33E0;
  swift_getKeyPath();
  v5 = v4;
  sub_1E5A2B944();

  v6 = sub_1E5A2AF64();
  v8 = v7;
  v10 = v9;
  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v11 = sub_1E5A2AF84();
  v13 = v12;
  v15 = v14;
  sub_1E58B3C9C(v6, v8, v10 & 1);

  sub_1E5A2AE14();
  sub_1E5A2AE64();
  sub_1E5A2AEA4();

  v16 = sub_1E5A2AFA4();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_1E58B3C9C(v11, v13, v15 & 1);

  v23 = sub_1E5A2ADF4();
  sub_1E5A2A424();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v40 = v20 & 1;
  v39 = 0;
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  *(&v41[6] + 7) = *&v41[21];
  *(&v41[8] + 7) = *&v41[23];
  *(&v41[10] + 7) = *&v41[25];
  *(&v41[12] + 7) = v42;
  *(v41 + 7) = *&v41[15];
  *(&v41[2] + 7) = *&v41[17];
  *(&v41[4] + 7) = *&v41[19];
  *&v33 = v16;
  *(&v33 + 1) = v18;
  LOBYTE(v34) = v20 & 1;
  *(&v34 + 1) = v22;
  LOBYTE(v35) = v23;
  *(&v35 + 1) = v25;
  *&v36 = v27;
  *(&v36 + 1) = v29;
  *v37 = v31;
  v37[8] = 0;
  *&v37[73] = *&v41[8];
  *&v37[89] = *&v41[10];
  *&v37[105] = *&v41[12];
  *&v37[120] = *(&v42 + 1);
  *&v37[9] = *v41;
  *&v37[25] = *&v41[2];
  *&v37[41] = *&v41[4];
  *&v37[57] = *&v41[6];
  sub_1E5A2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA30, &unk_1E5A3C420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  sub_1E596F578();
  sub_1E596F688();
  sub_1E596F740();
  sub_1E5A2B3A4();
  v38[8] = *&v37[64];
  v38[9] = *&v37[80];
  v38[10] = *&v37[96];
  v38[11] = *&v37[112];
  v38[4] = *v37;
  v38[5] = *&v37[16];
  v38[6] = *&v37[32];
  v38[7] = *&v37[48];
  v38[0] = v33;
  v38[1] = v34;
  v38[2] = v35;
  v38[3] = v36;
  return sub_1E58BAD14(v38, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E5A1F99C@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A2B6A4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26[-v9];
  v11 = a1[9];
  v35 = a1[8];
  v36 = v11;
  v12 = a1[11];
  v37 = a1[10];
  v38 = v12;
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[7];
  v33 = a1[6];
  v34 = v14;
  v15 = a1[1];
  v27 = *a1;
  v28 = v15;
  v16 = a1[3];
  v29 = a1[2];
  v30 = v16;
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_1E5A2A9B4();
  (*(*(v18 - 8) + 104))(v10, v17, v18);
  sub_1E59F87B0(v10, v7, MEMORY[0x1E6981998]);
  LODWORD(v17) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0) + 36);
  sub_1E5A23454(&qword_1ECFFEA98, MEMORY[0x1E6981998]);
  sub_1E5A2AD54();
  sub_1E5A2349C(v10, MEMORY[0x1E6981998]);
  v19 = v36;
  a2[8] = v35;
  a2[9] = v19;
  v20 = v38;
  a2[10] = v37;
  a2[11] = v20;
  v21 = v32;
  a2[4] = v31;
  a2[5] = v21;
  v22 = v34;
  a2[6] = v33;
  a2[7] = v22;
  v23 = v28;
  *a2 = v27;
  a2[1] = v23;
  v24 = v30;
  a2[2] = v29;
  a2[3] = v24;
  return sub_1E58BABA0(&v27, v26, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E5A1FBB0@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A2A754();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  v11 = a1[9];
  v42 = a1[8];
  v43 = v11;
  v12 = a1[11];
  v44 = a1[10];
  v45 = v12;
  v13 = a1[5];
  v38 = a1[4];
  v39 = v13;
  v14 = a1[7];
  v40 = a1[6];
  v41 = v14;
  v15 = a1[3];
  v36 = a1[2];
  v37 = v15;
  v16 = a1[1];
  v34 = *a1;
  v35 = v16;
  v18 = *(v17 + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1E5A2A9B4();
  (*(*(v20 - 8) + 104))(&v10[v18], v19, v20);
  __asm { FMOV            V0.2D, #12.0 }

  *v10 = _Q0;
  sub_1E59F87B0(v10, v7, MEMORY[0x1E697EAF0]);
  LODWORD(v19) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430) + 36);
  sub_1E5A23454(&qword_1ECFFEA90, MEMORY[0x1E697EAF0]);
  sub_1E5A2AD54();
  sub_1E5A2349C(v10, MEMORY[0x1E697EAF0]);
  v26 = v43;
  a2[8] = v42;
  a2[9] = v26;
  v27 = v45;
  a2[10] = v44;
  a2[11] = v27;
  v28 = v39;
  a2[4] = v38;
  a2[5] = v28;
  v29 = v41;
  a2[6] = v40;
  a2[7] = v29;
  v30 = v35;
  *a2 = v34;
  a2[1] = v30;
  v31 = v37;
  a2[2] = v36;
  a2[3] = v31;
  return sub_1E58BABA0(&v34, v33, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E5A1FDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE918, &qword_1E5A451A0) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1E5A2A9B4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)) = 256;
  return sub_1E58BABA0(a1, a2, &qword_1ECFFE910, &unk_1E5A3B250);
}

uint64_t sub_1E5A1FE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE920, &qword_1E5A3B260) + 36));
  v5 = *(sub_1E5A2A754() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1E5A2A9B4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  return sub_1E58BABA0(a1, a2, &qword_1ECFFE910, &unk_1E5A3B250);
}

double sub_1E5A1FF84@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A2AA34();
  sub_1E5A20188(v12);
  *&v11[7] = v12[0];
  *&v11[23] = v12[1];
  *&v11[39] = v12[2];
  *&v11[55] = v12[3];
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *(a1 + 33) = *&v11[16];
  *(a1 + 49) = *&v11[32];
  *(a1 + 65) = *&v11[48];
  *(a1 + 17) = *v11;
  *(a1 + 136) = v7;
  *(a1 + 152) = v8;
  *(a1 + 168) = v9;
  *(a1 + 184) = v10;
  result = *&v4;
  *(a1 + 88) = v4;
  *(a1 + 104) = v5;
  *a1 = v2;
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  *(a1 + 80) = *&v11[63];
  *(a1 + 120) = v6;
  return result;
}

unint64_t sub_1E5A200B4()
{
  result = qword_1ED0011B0;
  if (!qword_1ED0011B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0011A0, &qword_1E5A45000);
    sub_1E58CD164(&qword_1ED0011B8, &qword_1ED000718, &qword_1E5A41ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0011B0);
  }

  return result;
}

uint64_t sub_1E5A20188@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A2AEB4();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5A29EB4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1E5A2BB14();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2D33E0;
  swift_getKeyPath();
  v10 = v9;
  sub_1E5A2B944();

  v11 = sub_1E5A2AF64();
  v13 = v12;
  v15 = v14;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v16 = sub_1E5A2AFA4();
  v47 = v17;
  v48 = v16;
  v46 = v18;
  v49 = v19;

  sub_1E58B3C9C(v11, v13, v15 & 1);

  sub_1E5A2BA84();
  v20 = qword_1EE2D33E0;
  swift_getKeyPath();
  v21 = v20;
  sub_1E5A2B944();

  v22 = sub_1E5A2AF64();
  v24 = v23;
  v26 = v25;
  sub_1E5A2AE04();
  v28 = v50;
  v27 = v51;
  v29 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x1E6980EA8], v52);
  sub_1E5A2AEE4();

  (*(v27 + 8))(v28, v29);
  v30 = sub_1E5A2AFA4();
  v32 = v31;
  LOBYTE(v28) = v33;

  sub_1E58B3C9C(v22, v24, v26 & 1);

  v54 = sub_1E5A2ABA4();
  v34 = sub_1E5A2AF84();
  v36 = v35;
  LOBYTE(v24) = v37;
  v39 = v38;
  sub_1E58B3C9C(v30, v32, v28 & 1);

  v40 = v46 & 1;
  v53 = v46 & 1;
  v56 = v46 & 1;
  LOBYTE(v24) = v24 & 1;
  v55 = v24;
  v42 = v47;
  v41 = v48;
  *a1 = v48;
  *(a1 + 8) = v42;
  *(a1 + 16) = v40;
  *(a1 + 24) = v49;
  *(a1 + 32) = v34;
  *(a1 + 40) = v36;
  *(a1 + 48) = v24;
  *(a1 + 56) = v39;
  v43 = v41;
  sub_1E594C9E8(v41, v42, v40);

  sub_1E594C9E8(v34, v36, v24);

  sub_1E58B3C9C(v34, v36, v24);

  sub_1E58B3C9C(v43, v42, v53);
}

void *sub_1E5A20618(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001248, &qword_1E5A451C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1E5A206F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 5);
  return result;
}

void *sub_1E5A20788(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

void *sub_1E5A20810(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC320, &qword_1E5A30830);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_1E5A208A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

uint64_t sub_1E5A2091C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A227D8(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1E5A2C0E4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = (v2 + 4);
      do
      {
        v11 = LOBYTE(v2[2 * v9 + 4]);
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001238, &unk_1E5A451B0);
      v7 = sub_1E5A2BC24();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1E5A20A78(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1E5A20A78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v92 = *v92;
    if (!v92)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1E5A21290(v9);
      v9 = result;
    }

    v84 = v9 + 16;
    v85 = *(v9 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v9[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1E5A21000((*a3 + 16 * *v86), (*a3 + 16 * *v88), (*a3 + 16 * v89), v92);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_112;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_113;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_114;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8);
      v12 = 16 * v10;
      v13 = (*a3 + 16 * v10);
      v16 = *v13;
      v15 = v13 + 32;
      v14 = v16;
      v17 = v10 + 2;
      v18 = v11;
      while (v6 != v17)
      {
        v19 = *v15;
        v15 += 16;
        v20 = (v11 < v14) ^ (v19 >= v18);
        ++v17;
        v18 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v17 - 1;
          if (v11 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 0;
        v22 = 16 * v8;
        v23 = v10;
        do
        {
          if (v23 != v8 + v21 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v28 + v12);
            v25 = v28 + v22;
            v26 = *v24;
            v27 = *(v24 + 1);
            *v24 = *(v25 - 16);
            *(v25 - 16) = v26;
            *(v25 - 8) = v27;
          }

          ++v23;
          --v21;
          v22 -= 16;
          v12 += 16;
        }

        while (v23 < v8 + v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v38 = *(v9 + 2);
    v37 = *(v9 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1E58E6258((v37 > 1), v38 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v39;
    v40 = &v9[16 * v38];
    *(v40 + 4) = v10;
    *(v40 + 5) = v8;
    v41 = *v92;
    if (!*v92)
    {
      goto LABEL_125;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v9 + 4);
          v44 = *(v9 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_103;
          }

          v59 = &v9[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v9[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_110;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v69 = &v9[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_71:
        if (v64)
        {
          goto LABEL_105;
        }

        v72 = &v9[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_108;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_78:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v81 = *&v9[16 * v80 + 32];
        v82 = *&v9[16 * v42 + 40];
        sub_1E5A21000((*a3 + 16 * v81), (*a3 + 16 * *&v9[16 * v42 + 32]), (*a3 + 16 * v82), v41);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1E5A21290(v9);
        }

        if (v80 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v83 = &v9[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        result = sub_1E5A21204(v42);
        v39 = *(v9 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v9[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_101;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_102;
      }

      v54 = &v9[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_104;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v9[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 16 * v8 - 16;
  v31 = v10 - v8;
LABEL_30:
  v32 = *(v29 + 16 * v8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v8;
      v30 += 16;
      --v31;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 3);
    *(v34 + 1) = *v34;
    *v34 = v32;
    *(v34 + 1) = v35;
    v34 -= 16;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1E5A21000(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, char *a4)
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
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
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

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 16);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1E5A21204(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E5A21290(v3);
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

void *sub_1E5A212DC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001248, &qword_1E5A451C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000580, &qword_1E5A451D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E5A21424(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001298, &qword_1E5A45248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E5A21540(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001290, &qword_1E5A45238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

size_t sub_1E5A2165C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC398, &qword_1E5A45240);
  v10 = *(sub_1E5A29E34() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1E5A29E34() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1E5A21834(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001270, &unk_1E5A45210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1E5A21938(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001278, &qword_1E5A45220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001280, &qword_1E5A45228);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E5A21A6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC350, &qword_1E5A30860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E5A21B94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC390, &unk_1E5A308A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E5A21CBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC388, &qword_1E5A30898);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E5A21DC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001268, &qword_1E5A451F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E5A21ED4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC378, &qword_1E5A36450);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1E5A220C4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1E5A221D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001258, &unk_1E5A451E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E5A222F0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_1E5A223DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC320, &qword_1E5A30830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E5A224FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1E5A22820(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + v18);
      v20 = (*(a4 + 56) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      *v11 = v19;
      *(v11 + 8) = v22;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E5A2297C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 40 * (v17 | (v12 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      LODWORD(v18) = *(v18 + 32);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 40;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1E5A22B04(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E5A22C5C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1E5A22DDC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 40 * (v17 | (v12 << 6));
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      v21 = *(v18 + 24);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v19;
      *(v11 + 24) = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 40;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E5A22F44(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v24 = -1 << *(a4 + 32);
    v25 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = a4;
      v17 = *(a4 + 48) + 48 * (v15 | (v10 << 6));
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      v20 = *(v17 + 40);
      v21 = *(v17 + 24);
      *v9 = *v17;
      *(v9 + 8) = v18;
      *(v9 + 16) = v19;
      *(v9 + 24) = v21;
      *(v9 + 40) = v20;
      if (v12 == v25)
      {

        a4 = v16;
        v6 = v24;
        a3 = v25;
        goto LABEL_24;
      }

      v9 += 48;

      result = v12;
      v22 = __OFADD__(v12++, 1);
      a4 = v16;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v23 = v10 + 1;
    }

    else
    {
      v23 = v11;
    }

    v10 = v23 - 1;
    a3 = result;
    v6 = v24;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E5A230F8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E5A23250@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_1E5A1F170(a1, *(v2 + 32), a2);
}

unint64_t sub_1E5A2325C()
{
  result = qword_1ED001208;
  if (!qword_1ED001208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0011F8, &qword_1E5A45128);
    sub_1E5A23314();
    sub_1E58CD164(&qword_1ECFFF230, &qword_1ECFFF078, &qword_1E5A3C638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001208);
  }

  return result;
}

unint64_t sub_1E5A23314()
{
  result = qword_1ED001210;
  if (!qword_1ED001210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001218, &unk_1E5A45130);
    sub_1E5A233A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001210);
  }

  return result;
}

unint64_t sub_1E5A233A0()
{
  result = qword_1ED001220;
  if (!qword_1ED001220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001220);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5A2343C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1E5A1F3A0();
}

uint64_t sub_1E5A23448()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1E5A1F4F4();
}

uint64_t sub_1E5A23454(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5A2349C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall WorkoutPlanSkillLevel.init(identifier:kind:name:)(FitnessWorkoutPlan::WorkoutPlanSkillLevel *__return_ptr retstr, Swift::String identifier, Swift::String_optional kind, Swift::String name)
{
  retstr->identifier = identifier;
  retstr->kind = kind;
  retstr->name = name;
}

uint64_t static WorkoutPlanSkillLevel.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t WorkoutPlanSkillLevel.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WorkoutPlanSkillLevel.kind.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WorkoutPlanSkillLevel.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1E5A235D0()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E5A23620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A24204(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A23648(uint64_t a1)
{
  v2 = sub_1E5A24034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A23684(uint64_t a1)
{
  v2 = sub_1E5A24034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A236C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E5A236F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E5A2373C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E5A23790(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t WorkoutPlanSkillLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0012B0, &qword_1E5A45260);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A24034();
  sub_1E5A2C224();
  v18 = 0;
  v13 = v15[5];
  sub_1E5A2C064();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1E5A2C034();
  v16 = 2;
  sub_1E5A2C064();
  return (*(v4 + 8))(v7, v3);
}

uint64_t WorkoutPlanSkillLevel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0012C0, &qword_1E5A45268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A24034();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1E5A2BF94();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1E5A2BF64();
  v23 = v14;
  v25 = 2;
  v15 = sub_1E5A2BF94();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutPlanSkillLevel.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v4)
  {
    sub_1E5A2BB74();
  }

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanSkillLevel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v4)
  {
    sub_1E5A2BB74();
  }

  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A23D58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v4)
  {
    sub_1E5A2BB74();
  }

  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A23E00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v4)
  {
    sub_1E5A2BB74();
  }

  return sub_1E5A2BB74();
}

uint64_t sub_1E5A23E8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v4)
  {
    sub_1E5A2BB74();
  }

  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC10SkillLevelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v6 && (v2 == v7 && v4 == v6 || (sub_1E5A2C114() & 1) != 0))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:
  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1E5A2C114();
}

unint64_t sub_1E5A24034()
{
  result = qword_1ED0012B8;
  if (!qword_1ED0012B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0012B8);
  }

  return result;
}

unint64_t sub_1E5A24088()
{
  result = qword_1ED0012C8;
  if (!qword_1ED0012C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0012C8);
  }

  return result;
}

unint64_t sub_1E5A24100()
{
  result = qword_1ED0012D0;
  if (!qword_1ED0012D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0012D0);
  }

  return result;
}

unint64_t sub_1E5A24158()
{
  result = qword_1ED0012D8;
  if (!qword_1ED0012D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0012D8);
  }

  return result;
}

unint64_t sub_1E5A241B0()
{
  result = qword_1ED0012E0;
  if (!qword_1ED0012E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0012E0);
  }

  return result;
}

uint64_t sub_1E5A24204(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_1E5A24358@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001310, &unk_1E5A45590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001308, &qword_1E5A45588);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - v12;
  sub_1E5A2AD14();
  sub_1E5A2AE14();
  sub_1E5A2AE64();
  v14 = sub_1E5A2AEA4();

  KeyPath = swift_getKeyPath();
  v16 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001328, &qword_1E5A455A0) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  *&v9[*(v6 + 36)] = qword_1ED026498;
  v17 = *MEMORY[0x1E697E728];
  v18 = sub_1E5A2A684();
  (*(*(v18 - 8) + 104))(v5, v17, v18);
  sub_1E5A25450(&qword_1ECFFBF40, MEMORY[0x1E697E730]);

  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E5A24E94();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E5A2B164();
    sub_1E58BAD14(v5, &qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E58BAD14(v9, &qword_1ED001310, &unk_1E5A45590);
    v20 = sub_1E5A2ADF4();
    v21 = &v13[*(v10 + 36)];
    *v21 = v20;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    v21[40] = 1;
    sub_1E5A2B7E4();
    sub_1E5A2A764();
    sub_1E58A9614(v13, a1);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0012F0, &qword_1E5A45580);
    v22 = (a1 + *(result + 36));
    v23 = v26[5];
    v22[4] = v26[4];
    v22[5] = v23;
    v22[6] = v26[6];
    v24 = v26[1];
    *v22 = v26[0];
    v22[1] = v24;
    v25 = v26[3];
    v22[2] = v26[2];
    v22[3] = v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5A24720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001380, &unk_1E5A455C8) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1E5A2A9B4();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)) = 256;
  sub_1E58A954C(a1, a2);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001340, &qword_1E5A455B0) + 36);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001390, &qword_1E5A455D8);
  v10 = v8 + *(v9 + 40);
  sub_1E5A2A784();
  result = (v7)(v8, v5, v6);
  *(v8 + *(v9 + 36)) = 0;
  return result;
}

__n128 sub_1E5A24850@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0013A8, &unk_1E5A455E0) + 36));
  v5 = sub_1E5A2A754();
  v6 = *(v5 + 20);
  v7 = *MEMORY[0x1E697F468];
  v8 = sub_1E5A2A9B4();
  v9 = *(*(v8 - 8) + 104);
  v9(v4 + v6, v7, v8);
  __asm { FMOV            V0.2D, #12.0 }

  v19 = _Q0;
  *v4 = _Q0;
  *(v4->n128_u16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)) = 256;
  sub_1E58A954C(a1, a2);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001348, &qword_1E5A455B8) + 36));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000408, &qword_1E5A455F0);
  v17 = v15 + *(v16 + 40);
  sub_1E5A2A784();
  v9(v15 + *(v5 + 20), v7, v8);
  result = v19;
  *v15 = v19;
  v15->n128_u8[*(v16 + 36)] = 0;
  return result;
}

uint64_t sub_1E5A249B8(uint64_t a1)
{
  v2 = sub_1E5A2AD34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0012E8, &qword_1E5A45578);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  (*(v3 + 16))(&v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2, v7);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0012F0, &qword_1E5A45580);
  sub_1E5A24CE0();
  sub_1E5A2B574();
  v12 = &v9[*(v5 + 36)];
  sub_1E5A2B794();
  LOBYTE(v2) = sub_1E5A2ADA4();
  v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001338, &qword_1E5A455A8) + 36)] = v2;
  sub_1E5A2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001340, &qword_1E5A455B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001348, &qword_1E5A455B8);
  sub_1E5A25034();
  sub_1E5A25118();
  sub_1E5A25288();
  sub_1E5A2B3A4();
  return sub_1E58A94E4(v9);
}

uint64_t sub_1E5A24C7C()
{
  v1 = *(sub_1E5A2AD34() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1E5A2AD24();
}

unint64_t sub_1E5A24CE0()
{
  result = qword_1ED0012F8;
  if (!qword_1ED0012F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0012F0, &qword_1E5A45580);
    sub_1E5A24D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0012F8);
  }

  return result;
}

unint64_t sub_1E5A24D6C()
{
  result = qword_1ED001300;
  if (!qword_1ED001300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001308, &qword_1E5A45588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001310, &unk_1E5A45590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E5A24E94();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001300);
  }

  return result;
}

unint64_t sub_1E5A24E94()
{
  result = qword_1ED001318;
  if (!qword_1ED001318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001310, &unk_1E5A45590);
    sub_1E5A24F4C();
    sub_1E58CD164(&qword_1ECFFC050, &qword_1ECFFC058, &unk_1E5A2FCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001318);
  }

  return result;
}

unint64_t sub_1E5A24F4C()
{
  result = qword_1ED001320;
  if (!qword_1ED001320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001328, &qword_1E5A455A0);
    sub_1E5A25450(&qword_1ED001330, MEMORY[0x1E697CC80]);
    sub_1E58CD164(&qword_1ECFFEBD8, &qword_1ECFFEBE0, &qword_1E5A3B788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001320);
  }

  return result;
}

unint64_t sub_1E5A25034()
{
  result = qword_1ED001350;
  if (!qword_1ED001350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0012E8, &qword_1E5A45578);
    sub_1E58CD164(&qword_1ED001358, &qword_1ED001360, &qword_1E5A455C0);
    sub_1E58CD164(&qword_1ED001368, &qword_1ED001338, &qword_1E5A455A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001350);
  }

  return result;
}

unint64_t sub_1E5A25118()
{
  result = qword_1ED001370;
  if (!qword_1ED001370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001340, &qword_1E5A455B0);
    sub_1E5A251D0();
    sub_1E58CD164(&qword_1ED001388, &qword_1ED001390, &qword_1E5A455D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001370);
  }

  return result;
}

unint64_t sub_1E5A251D0()
{
  result = qword_1ED001378;
  if (!qword_1ED001378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001380, &unk_1E5A455C8);
    sub_1E5A25034();
    sub_1E58CD164(&qword_1ECFFE960, &qword_1ECFFC788, &qword_1E5A319E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001378);
  }

  return result;
}

unint64_t sub_1E5A25288()
{
  result = qword_1ED001398;
  if (!qword_1ED001398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001348, &qword_1E5A455B8);
    sub_1E5A25340();
    sub_1E58CD164(&qword_1ED000400, &qword_1ED000408, &qword_1E5A455F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001398);
  }

  return result;
}

unint64_t sub_1E5A25340()
{
  result = qword_1ED0013A0;
  if (!qword_1ED0013A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0013A8, &unk_1E5A455E0);
    sub_1E5A25034();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013A0);
  }

  return result;
}

uint64_t sub_1E5A253F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5A2A814();
  *a1 = result;
  return result;
}

uint64_t sub_1E5A25424(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E5A2A824();
}

uint64_t sub_1E5A25450(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5A254A8()
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

uint64_t sub_1E5A254F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4F6D7269666E6F63 && a2 == 0xEF6563697665446ELL;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064)
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

uint64_t sub_1E5A255E0(uint64_t a1)
{
  v2 = sub_1E5A25A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A2561C(uint64_t a1)
{
  v2 = sub_1E5A25A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A25658(uint64_t a1)
{
  v2 = sub_1E5A25B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A25694(uint64_t a1)
{
  v2 = sub_1E5A25B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A256D0(uint64_t a1)
{
  v2 = sub_1E5A25AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A2570C(uint64_t a1)
{
  v2 = sub_1E5A25AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HandoffAlertIconState.hashValue.getter(char a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1 & 1);
  return sub_1E5A2C204();
}

uint64_t HandoffAlertIconState.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0013B0, &qword_1E5A45630);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0013B8, &qword_1E5A45638);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0013C0, &qword_1E5A45640);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A25A74();
  sub_1E5A2C224();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1E5A25AC8();
    sub_1E5A2C024();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1E5A25B1C();
    sub_1E5A2C024();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_1E5A25A74()
{
  result = qword_1ED0013C8;
  if (!qword_1ED0013C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013C8);
  }

  return result;
}

unint64_t sub_1E5A25AC8()
{
  result = qword_1ED0013D0;
  if (!qword_1ED0013D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013D0);
  }

  return result;
}

unint64_t sub_1E5A25B1C()
{
  result = qword_1ED0013D8;
  if (!qword_1ED0013D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013D8);
  }

  return result;
}

uint64_t sub_1E5A25B8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5A25BD8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1E5A25BD8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001420, &qword_1E5A459C0);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001428, &qword_1E5A459C8);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001430, &unk_1E5A459D0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A25A74();
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
    *v24 = &type metadata for HandoffAlertIconState;
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
    sub_1E5A25AC8();
    sub_1E5A2BF44();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1E5A25B1C();
    sub_1E5A2BF44();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_1E5A26098()
{
  result = qword_1ED0013E0;
  if (!qword_1ED0013E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013E0);
  }

  return result;
}

unint64_t sub_1E5A26130()
{
  result = qword_1ED0013E8;
  if (!qword_1ED0013E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013E8);
  }

  return result;
}

unint64_t sub_1E5A26188()
{
  result = qword_1ED0013F0;
  if (!qword_1ED0013F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013F0);
  }

  return result;
}

unint64_t sub_1E5A261E0()
{
  result = qword_1ED0013F8;
  if (!qword_1ED0013F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013F8);
  }

  return result;
}

unint64_t sub_1E5A26238()
{
  result = qword_1ED001400;
  if (!qword_1ED001400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001400);
  }

  return result;
}

unint64_t sub_1E5A26290()
{
  result = qword_1ED001408;
  if (!qword_1ED001408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001408);
  }

  return result;
}

unint64_t sub_1E5A262E8()
{
  result = qword_1ED001410;
  if (!qword_1ED001410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001410);
  }

  return result;
}

unint64_t sub_1E5A26340()
{
  result = qword_1ED001418;
  if (!qword_1ED001418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001418);
  }

  return result;
}

unint64_t sub_1E5A263A8()
{
  result = qword_1ED001438;
  if (!qword_1ED001438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001438);
  }

  return result;
}

uint64_t sub_1E5A263FC(uint64_t a1, uint64_t a2, void (*a3)(void *, void *), uint64_t a4, uint64_t a5)
{
  v21[1] = a2;
  v21[0] = a1;
  v6 = a5 + 56;
  v7 = 1 << *(a5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a5 + 56);
  v10 = (v7 + 63) >> 6;
  v22 = a5;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(v22 + 48) + 24 * (__clz(__rbit64(v9)) | (v13 << 6));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v19[0] = v15;
      v19[1] = v16;
      v20 = v17;
      sub_1E5932970(v15, v16, v17);
      a3(v21, v19);
      if (v5)
      {
        break;
      }

      v9 &= v9 - 1;
      result = sub_1E58BAAC0(v15, v16, v17);
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    sub_1E58BAAC0(v15, v16, v17);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v21[0];
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E5A26570@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  v30 = a2;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(v30 + 48) + 56 * (__clz(__rbit64(v8)) | (v12 << 6)));
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v18 = v13[4];
      v17 = v13[5];
      v19 = v13[6];
      v25 = *v13;
      v26 = v14;
      *&v27 = v15;
      *(&v27 + 1) = v16;
      v28 = v18;
      *&v29 = v17;
      *(&v29 + 1) = v19;

      v20 = a1(&v25);
      if (v4)
      {
      }

      if (v20)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v21 = v26;
    v22 = v28;
    *a3 = v25;
    *(a3 + 8) = v21;
    *(a3 + 16) = v27;
    *(a3 + 32) = v22;
    *(a3 + 40) = v29;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        *(a3 + 48) = 0;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
        return result;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ActivityListItemView.init(store:item:index:weekday:dateComponentsFormatter:showSeparator:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v21 = a5;
  v20 = a4;
  v10 = sub_1E5A2AF24();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v22 = 0x403C000000000000;
  (*(v14 + 104))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6980EE8], v12);
  sub_1E59FE7DC();
  sub_1E5A2A544();
  v15 = type metadata accessor for ActivityListItemView();
  v16 = (a6 + v15[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  *v16 = sub_1E5A2A654();
  v16[1] = v17;
  result = sub_1E5A29674(a1, a6 + v15[7], type metadata accessor for WorkoutPlanScheduledItem);
  *(a6 + v15[8]) = a2;
  *(a6 + v15[9]) = a3;
  *(a6 + v15[6]) = v20;
  *(a6 + v15[10]) = v21;
  return result;
}

uint64_t type metadata accessor for ActivityListItemView()
{
  result = qword_1ED001470;
  if (!qword_1ED001470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1E5A26A48@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + *(type metadata accessor for ActivityListItemView() + 20) + 8);
  swift_getKeyPath();
  sub_1E5A2B934();

  v8 = *(v21 + 16);
  if (v8)
  {
    v9 = 32;
    while (1)
    {
      v16 = *(v21 + v9);
      v11 = *(v21 + v9 + 32);
      v10 = *(v21 + v9 + 48);
      v12 = *(v21 + v9 + 16);
      v20 = *(v21 + v9 + 64);
      v18 = v11;
      v19 = v10;
      v17 = v12;
      if (__PAIR128__(v12, *(&v16 + 1)) == __PAIR128__(a2, a1) || (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v9 += 72;
      if (!--v8)
      {
        goto LABEL_6;
      }
    }

    sub_1E591B3E0(&v16, v15);

    v14 = v19;
    *(a3 + 32) = v18;
    *(a3 + 48) = v14;
    *(a3 + 64) = v20;
    result = v17;
    *a3 = v16;
    *(a3 + 16) = result;
  }

  else
  {
LABEL_6:

    *(a3 + 64) = 0;
    result.n128_u64[0] = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E5A26B6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v89 = *(a2 + 8);
  if (*(a2 + 16) > 1u)
  {
    if (*(a2 + 16) == 2)
    {
      v70 = v3;
      v17 = *(a3 + *(type metadata accessor for ActivityListItemView() + 20) + 8);
      swift_getKeyPath();
      sub_1E5A2B934();

      v85 = v81;
      v86 = v82;
      v87 = v83;
      v88 = v84;

      result = sub_1E58F011C(&v85);
      v18 = 0;
      v19 = 1 << *(*(&v83 + 1) + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(*(&v83 + 1) + 56);
      v22 = (v19 + 63) >> 6;
      while (v21)
      {
        v23 = v89;
LABEL_28:
        v25 = (*(*(&v83 + 1) + 48) + 48 * (__clz(__rbit64(v21)) | (v18 << 6)));
        v27 = *v25;
        v26 = v25[1];
        v28 = v25[3];
        v72 = v25[2];
        v29 = v25[4];
        v30 = v25[5];
        if (*v25 == v70 && v23 == v26)
        {
          v27 = v70;
          goto LABEL_66;
        }

        v21 &= v21 - 1;
        result = sub_1E5A2C114();
        if (result)
        {
          v89 = v26;
LABEL_66:
          v54 = v28;

          v73 = v29;
LABEL_67:
          swift_getKeyPath();
          sub_1E5A2B934();

          v81 = v74;
          v82 = v75;
          v83 = v76;
          v84 = v77;

          v55 = sub_1E58F011C(&v81);
          MEMORY[0x1EEE9AC00](v55);
          sub_1E5A26570(sub_1E5A29B28, *(&v75 + 1), &v78);

          v56 = v78;
          v57 = v79;
          v58 = v80;
          if (!v54)
          {
            sub_1E58C2DCC(v27, v89);
            return sub_1E59DF400(v56, v57);
          }

          if (!v79)
          {
            sub_1E58C2DCC(v27, v89);
          }

          if (*(v80 + 16))
          {
            v69 = sub_1E58EF508(v72, v54);
            v60 = v59;

            if (v60)
            {
              v61 = (*(v58 + 56) + 16 * v69);
              v62 = *v61;
              v63 = v61[1];

              sub_1E59DF400(v56, v57);
              sub_1E58C2DCC(v27, v89);
              v30 = v63;
              goto LABEL_78;
            }
          }

          else
          {
          }

          sub_1E59DF400(v56, v57);
          v64 = v89;
          if (v89)
          {

            v62 = v73;
            sub_1E58C2DCC(v27, v64);
          }

          else
          {
            v62 = 0;
            v30 = 0;
          }

LABEL_78:
          v66 = *a1;
          v65 = a1[1];
          if (v30)
          {
            v67 = v62;
          }

          else
          {
            v67 = 0;
          }

          if (v30)
          {
            v68 = v30;
          }

          else
          {
            v68 = 0xE000000000000000;
          }

          MEMORY[0x1E69327A0](v67, v68);

          MEMORY[0x1E69327A0](0x20A280E220, 0xA500000000000000);

          *a1 = v66;
          a1[1] = v65;
          return result;
        }
      }

      v23 = v89;
      while (1)
      {
        v24 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_87;
        }

        if (v24 >= v22)
        {

          v72 = 0;
          v54 = 0;
          v27 = 0;
          v89 = 0;
          v73 = 0;
          v30 = 0;
          goto LABEL_67;
        }

        v21 = *(*(&v83 + 1) + 56 + 8 * v24);
        ++v18;
        if (v21)
        {
          v18 = v24;
          goto LABEL_28;
        }
      }
    }

    v42 = *(a3 + *(type metadata accessor for ActivityListItemView() + 20) + 8);
    swift_getKeyPath();
    sub_1E5A2B934();

    v85 = v81;
    v86 = v82;
    v87 = v83;
    v88 = v84;

    result = sub_1E58F011C(&v85);
    v43 = 0;
    v44 = 1 << *(v84 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v84 + 56);
    v47 = (v44 + 63) >> 6;
    v48 = v89;
    while (v46)
    {
LABEL_56:
      v50 = (*(v84 + 48) + 40 * (__clz(__rbit64(v46)) | (v43 << 6)));
      v15 = v50[2];
      v14 = v50[3];
      if (*v50 != v3 || v48 != v50[1])
      {
        v46 &= v46 - 1;
        result = sub_1E5A2C114();
        v48 = v89;
        if ((result & 1) == 0)
        {
          continue;
        }
      }

LABEL_61:

      v53 = *a1;
      v52 = a1[1];
      MEMORY[0x1E69327A0](v15, v14);

      MEMORY[0x1E69327A0](0x20A280E220, 0xA500000000000000);

      *a1 = v53;
      a1[1] = v52;
      return result;
    }

    while (1)
    {
      v49 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v49 >= v47)
      {
      }

      v46 = *(v84 + 56 + 8 * v49);
      ++v43;
      if (v46)
      {
        v43 = v49;
        goto LABEL_56;
      }
    }
  }

  else
  {
    if (!*(a2 + 16))
    {
      v4 = *(a3 + *(type metadata accessor for ActivityListItemView() + 20) + 8);
      swift_getKeyPath();
      sub_1E5A2B934();

      v85 = v81;
      v86 = v82;
      v87 = v83;
      v88 = v84;

      result = sub_1E58F011C(&v85);
      v6 = 0;
      v7 = 1 << *(v81 + 32);
      v8 = -1;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      v9 = v8 & *(v81 + 56);
      v10 = (v7 + 63) >> 6;
      v11 = v89;
      while (v9)
      {
LABEL_11:
        v13 = (*(v81 + 48) + ((v6 << 11) | (32 * __clz(__rbit64(v9)))));
        v15 = v13[2];
        v14 = v13[3];
        if (*v13 != v3 || v11 != v13[1])
        {
          v9 &= v9 - 1;
          result = sub_1E5A2C114();
          v11 = v89;
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_61;
      }

      while (1)
      {
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_88;
        }

        if (v12 >= v10)
        {
        }

        v9 = *(v81 + 56 + 8 * v12);
        ++v6;
        if (v9)
        {
          v6 = v12;
          goto LABEL_11;
        }
      }
    }

    v32 = *(a3 + *(type metadata accessor for ActivityListItemView() + 20) + 8);
    swift_getKeyPath();
    sub_1E5A2B934();

    v85 = v81;
    v86 = v82;
    v87 = v83;
    v88 = v84;

    result = sub_1E58F011C(&v85);
    v33 = 0;
    v34 = 1 << *(v82 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v82 + 56);
    v37 = (v34 + 63) >> 6;
    v38 = v89;
    while (v36)
    {
LABEL_42:
      v40 = (*(v82 + 48) + ((v33 << 11) | (32 * __clz(__rbit64(v36)))));
      v15 = v40[2];
      v14 = v40[3];
      if (*v40 != v3 || v38 != v40[1])
      {
        v36 &= v36 - 1;
        result = sub_1E5A2C114();
        v38 = v89;
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_61;
    }

    while (1)
    {
      v39 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v39 >= v37)
      {
      }

      v36 = *(v82 + 56 + 8 * v39);
      ++v33;
      if (v36)
      {
        v33 = v39;
        goto LABEL_42;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

BOOL sub_1E5A274D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = type metadata accessor for WorkoutPlanScheduledItem();
  sub_1E5A26A48(*(a3 + *(v5 + 28)), *(a3 + *(v5 + 28) + 8), v9);
  v6 = v9[0];
  if (v9[0])
  {

    sub_1E58BAD14(v9, &qword_1ECFFD7D8, &qword_1E5A35E50);
    if (*(v6 + 16))
    {
      v7 = *(v6 + 32);

      return v4 == v7;
    }
  }

  return 0;
}

uint64_t ActivityListItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A2AC84();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001440, &qword_1E5A45A70);
  v11 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001448, &qword_1E5A45A78);
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v39 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001450, &qword_1E5A45A80);
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v39 - v19;
  v20 = v1 + *(type metadata accessor for ActivityListItemView() + 28);
  v21 = type metadata accessor for WorkoutPlanScheduledItem();
  v22 = sub_1E5A26A48(*(v20 + *(v21 + 28)), *(v20 + *(v21 + 28) + 8), &v59);
  if (v59)
  {
    v42 = v17;
    v43 = v14;
    v54 = v59;
    v55 = v60;
    v56 = v61;
    v57 = v62;
    v58 = v63;
    *v13 = sub_1E5A2A924();
    *(v13 + 1) = 0x4020000000000000;
    v13[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001458, &unk_1E5A45A88);
    sub_1E5A27B98(&v54, v1, &v13[*(v23 + 44)]);
    sub_1E58BAD14(&v59, &qword_1ECFFD7D8, &qword_1E5A35E50);
    v24 = *MEMORY[0x1E697E728];
    v25 = sub_1E5A2A684();
    (*(*(v25 - 8) + 104))(v10, v24, v25);
    sub_1E5A29A64(&qword_1ECFFBF40, MEMORY[0x1E697E730]);
    result = sub_1E5A2BA74();
    if (result)
    {
      v40 = v3;
      v27 = sub_1E58CD164(&qword_1ED001460, &qword_1ED001440, &qword_1E5A45A70);
      v41 = a1;
      v28 = v27;
      v29 = v48;
      v30 = sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
      v31 = v45;
      v32 = v10;
      v33 = v46;
      sub_1E5A2B164();
      sub_1E58BAD14(v32, &qword_1ECFFCE80, &qword_1E5A35BC0);
      sub_1E58BAD14(v13, &qword_1ED001440, &qword_1E5A45A70);
      sub_1E5A2AC74();
      v50 = v33;
      v51 = v7;
      v52 = v28;
      v53 = v30;
      swift_getOpaqueTypeConformance2();
      v34 = v44;
      v35 = v43;
      sub_1E5A2B224();
      (*(v29 + 8))(v6, v40);
      (*(v47 + 8))(v31, v35);
      v36 = v41;
      v37 = v42;
      (*(v49 + 32))(v41, v34, v42);
      return (*(v49 + 56))(v36, 0, 1, v37);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v38 = *(v49 + 56);

    return v38(a1, 1, 1, v17, v22);
  }

  return result;
}

uint64_t sub_1E5A27B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001498, &qword_1E5A45B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014A0, &qword_1E5A45B48);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v41 - v14;
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);

  sub_1E5A2B4A4();
  v17 = sub_1E5A2AFE4();
  v19 = v18;
  v21 = v20;
  v43 = a1;
  LOBYTE(v53[0]) = *(a1 + 40);
  if (WorkoutPlanCatalogModalityKind.rawValue.getter() == 0x697461746964654DLL && v22 == 0xEA00000000006E6FLL)
  {

LABEL_5:
    if (qword_1ECFFB480 != -1)
    {
      swift_once();
    }

    v24 = &qword_1ED0264A0;
    goto LABEL_11;
  }

  v23 = sub_1E5A2C114();

  if (v23)
  {
    goto LABEL_5;
  }

  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v24 = &qword_1ED026498;
LABEL_11:
  v25 = *v24;

  *&v53[0] = v25;
  v26 = sub_1E5A2AF84();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_1E58B3C9C(v17, v19, v21 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001468, &unk_1E5A45B10);
  v33 = v44;
  sub_1E5A2A554();
  sub_1E5A2A554();
  sub_1E5A2B7D4();
  sub_1E5A2A5B4();
  v54 = v30 & 1;
  *&v48 = v26;
  *(&v48 + 1) = v28;
  LOBYTE(v49) = v30 & 1;
  *(&v49 + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014A8, &qword_1E5A45B50);
  sub_1E5A2998C(&qword_1ED0014B0, &qword_1ED0014A8, &qword_1E5A45B50);
  v34 = v42;
  sub_1E5A2B214();
  v53[3] = v51;
  v53[4] = v52;
  v53[1] = v49;
  v53[2] = v50;
  v53[0] = v48;
  sub_1E58BAD14(v53, &qword_1ED0014A8, &qword_1E5A45B50);
  *v9 = sub_1E5A2AA24();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014B8, &qword_1E5A45B58);
  sub_1E5A280C0(v43, v33, &v9[*(v35 + 44)]);
  v36 = v45;
  sub_1E58BABA0(v34, v45, &qword_1ED0014A0, &qword_1E5A45B48);
  v37 = v46;
  sub_1E58BABA0(v9, v46, &qword_1ED001498, &qword_1E5A45B40);
  v38 = v47;
  sub_1E58BABA0(v36, v47, &qword_1ED0014A0, &qword_1E5A45B48);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014C0, &qword_1E5A45B60);
  sub_1E58BABA0(v37, v38 + *(v39 + 48), &qword_1ED001498, &qword_1E5A45B40);
  sub_1E58BAD14(v9, &qword_1ED001498, &qword_1E5A45B40);
  sub_1E58BAD14(v34, &qword_1ED0014A0, &qword_1E5A45B48);
  sub_1E58BAD14(v37, &qword_1ED001498, &qword_1E5A45B40);
  return sub_1E58BAD14(v36, &qword_1ED0014A0, &qword_1E5A45B48);
}

uint64_t sub_1E5A280C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD740, &unk_1E5A35D60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD668, &qword_1E5A35C00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014C8, &qword_1E5A45B68);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  *v23 = sub_1E5A2A924();
  *(v23 + 1) = 0;
  v24 = 1;
  v23[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014D0, &qword_1E5A45B70);
  sub_1E5A283EC(a1, a2, &v23[*(v25 + 44)]);
  if (*(a2 + *(type metadata accessor for ActivityListItemView() + 40)) == 1)
  {
    sub_1E5A2B6B4();
    v26 = sub_1E5A2ADB4();
    sub_1E5A2A424();
    v27 = &v9[*(v5 + 36)];
    *v27 = v26;
    *(v27 + 1) = v28;
    *(v27 + 2) = v29;
    *(v27 + 3) = v30;
    *(v27 + 4) = v31;
    v27[40] = 0;
    sub_1E591B1B8(v9, v16);
    v24 = 0;
  }

  (*(v6 + 56))(v16, v24, 1, v5);
  sub_1E58BABA0(v23, v20, &qword_1ED0014C8, &qword_1E5A45B68);
  sub_1E58BABA0(v16, v13, &qword_1ECFFD668, &qword_1E5A35C00);
  v32 = v36;
  sub_1E58BABA0(v20, v36, &qword_1ED0014C8, &qword_1E5A45B68);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014D8, &qword_1E5A45B78);
  sub_1E58BABA0(v13, v32 + *(v33 + 48), &qword_1ECFFD668, &qword_1E5A35C00);
  sub_1E58BAD14(v16, &qword_1ECFFD668, &qword_1E5A35C00);
  sub_1E58BAD14(v23, &qword_1ED0014C8, &qword_1E5A45B68);
  sub_1E58BAD14(v13, &qword_1ECFFD668, &qword_1E5A35C00);
  return sub_1E58BAD14(v20, &qword_1ED0014C8, &qword_1E5A45B68);
}

uint64_t sub_1E5A283EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v5 = sub_1E5A2A714();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActivityListItemView();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014E0, &qword_1E5A45B80);
  v51 = *(v48 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v14 = &v45 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014E8, &qword_1E5A45B88);
  v52 = *(v54 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v46 = &v45 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014F0, &qword_1E5A45B90);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v45 - v25;
  v50 = sub_1E5A2AA34();
  LOBYTE(v67) = 1;
  sub_1E5A28A98(v47, a2, v74);
  *&v66[7] = v74[0];
  *&v66[23] = v74[1];
  *&v66[39] = v74[2];
  *&v66[55] = v74[3];
  LODWORD(v47) = v67;
  sub_1E5A299FC(a2, &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityListItemView);
  v26 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v27 = swift_allocObject();
  sub_1E5A29674(&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for ActivityListItemView);
  v57 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014F8, &qword_1E5A45B98);
  sub_1E5A29744();
  sub_1E5A2B574();
  v28 = v9;
  sub_1E5A2A704();
  sub_1E58CD164(&qword_1ED001538, &qword_1ED0014E0, &qword_1E5A45B80);
  sub_1E5A29A64(&qword_1ECFFC220, MEMORY[0x1E697C248]);
  v29 = v46;
  v30 = v48;
  v31 = v55;
  sub_1E5A2B0B4();
  (*(v56 + 8))(v28, v31);
  (*(v51 + 8))(v14, v30);
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  (*(v52 + 32))(v23, v29, v54);
  v32 = &v23[*(v18 + 44)];
  v33 = v72;
  *(v32 + 4) = v71;
  *(v32 + 5) = v33;
  *(v32 + 6) = v73;
  v34 = v68;
  *v32 = v67;
  *(v32 + 1) = v34;
  v35 = v70;
  *(v32 + 2) = v69;
  *(v32 + 3) = v35;
  v36 = v49;
  sub_1E58A9B34(v23, v49);
  v37 = v53;
  sub_1E58BABA0(v36, v53, &qword_1ED0014F0, &qword_1E5A45B90);
  v38 = v50;
  v58[0] = v50;
  v58[1] = 0;
  LOBYTE(v29) = v47;
  v59[0] = v47;
  *&v59[1] = *v66;
  *&v59[17] = *&v66[16];
  *&v59[33] = *&v66[32];
  *&v59[49] = *&v66[48];
  v39 = *&v66[63];
  *&v59[64] = *&v66[63];
  v40 = *v59;
  *a3 = v50;
  *(a3 + 16) = v40;
  v41 = *&v59[16];
  v42 = *&v59[48];
  *(a3 + 48) = *&v59[32];
  *(a3 + 64) = v42;
  *(a3 + 32) = v41;
  *(a3 + 80) = v39;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001540, &unk_1E5A45BC0);
  sub_1E58BABA0(v37, a3 + *(v43 + 64), &qword_1ED0014F0, &qword_1E5A45B90);
  sub_1E58BABA0(v58, v60, &qword_1ED000718, &qword_1E5A41ED0);
  sub_1E58BAD14(v36, &qword_1ED0014F0, &qword_1E5A45B90);
  sub_1E58BAD14(v37, &qword_1ED0014F0, &qword_1E5A45B90);
  v60[0] = v38;
  v60[1] = 0;
  v61 = v29;
  v63 = *&v66[16];
  v64 = *&v66[32];
  *v65 = *&v66[48];
  *&v65[15] = *&v66[63];
  v62 = *v66;
  return sub_1E58BAD14(v60, &qword_1ED000718, &qword_1E5A41ED0);
}

uint64_t sub_1E5A28A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v38 = *(a1 + 48);
  sub_1E58D1C80();

  v6 = sub_1E5A2AFD4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = 0xE000000000000000;
  v38 = 0;
  v39 = 0xE000000000000000;
  v14 = type metadata accessor for ActivityListItemView();
  v15 = (a2 + *(v14 + 28));
  v16 = *v15;
  v17 = *(a2 + *(v14 + 24));
  [v17 setUnitsStyle_];
  [v17 setAllowedUnits_];
  sub_1E5A2BD04();
  v18 = [v17 stringFromTimeInterval_];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1E5A2BB44();
    v13 = v21;
  }

  else
  {
    v20 = 0;
  }

  MEMORY[0x1E69327A0](v20, v13);

  v22 = MEMORY[0x1E69327A0](32, 0xE100000000000000);
  v23 = v15[1];
  MEMORY[0x1EEE9AC00](v22);
  v34[2] = a2;
  v34[3] = v15;
  v25 = sub_1E5A263FC(0, 0xE000000000000000, sub_1E5A29B0C, v34, v24);
  MEMORY[0x1E69327A0](v25);

  v36 = sub_1E5A2ABA4();
  v26 = sub_1E5A2AF84();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v35 = v10 & 1;
  LOBYTE(v36) = v10 & 1;
  v37 = v30 & 1;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v12;
  *(a3 + 32) = v26;
  *(a3 + 40) = v28;
  *(a3 + 48) = v30 & 1;
  *(a3 + 56) = v32;
  sub_1E594C9E8(v6, v8, v10 & 1);

  sub_1E594C9E8(v26, v28, v30 & 1);

  sub_1E58B3C9C(v26, v28, v30 & 1);

  sub_1E58B3C9C(v6, v8, v35);
}

uint64_t sub_1E5A28D0C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationAction();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityListItemView();
  v7 = *(a1 + v6[5] + 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB900, &qword_1E5A36290);
  v9 = *(v8 + 48);
  v10 = &v5[*(v8 + 64)];
  sub_1E5A299FC(a1 + v6[7], v5, type metadata accessor for WorkoutPlanScheduledItem);
  v11 = type metadata accessor for WorkoutPlanScheduledItem();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v5[v9] = *(a1 + v6[9]);
  *v10 = *(a1 + v6[8]);
  v10[8] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  sub_1E5A29AAC(v5, type metadata accessor for WorkoutPlanCreationAction);
  *v5 = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E5A29AAC(v5, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5A28EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = sub_1E5A2B6A4();
  v4 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v41 - v7;
  v8 = sub_1E5A29EB4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1E5A2BB14();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE2D33E0;
  v13 = *(a1 + *(type metadata accessor for ActivityListItemView() + 20) + 8);
  swift_getKeyPath();
  v14 = v12;
  sub_1E5A2B944();

  v15 = sub_1E5A2AF64();
  v17 = v16;
  v19 = v18;
  sub_1E5A2AF04();
  sub_1E5A2AE64();
  sub_1E5A2AEA4();

  v20 = sub_1E5A2AFA4();
  v45 = v21;
  v46 = v20;
  v23 = v22;
  v44 = v24;

  sub_1E58B3C9C(v15, v17, v19 & 1);

  v43 = sub_1E5A2ADA4();
  v25 = v23 & 1;
  v51 = v23 & 1;
  v50 = 0;
  v42 = sub_1E5A2B7E4();
  v27 = v26;
  v28 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001520, &unk_1E5A45BA8) + 36));
  if (qword_1ECFFB488 != -1)
  {
    swift_once();
  }

  v29 = qword_1ED0264A8;
  v30 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001548, &qword_1E5A45BF0) + 36);
  v31 = *MEMORY[0x1E697F468];
  v32 = sub_1E5A2A9B4();
  v33 = *(*(v32 - 8) + 104);
  v33(v30, v31, v32);
  *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)] = 256;
  *v28 = v29;
  v34 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001530, &qword_1E5A45BB8) + 36));
  *v34 = v42;
  v34[1] = v27;
  v35 = v45;
  *a2 = v46;
  *(a2 + 8) = v35;
  *(a2 + 16) = v25;
  *(a2 + 24) = v44;
  *(a2 + 32) = v43;
  *(a2 + 40) = xmmword_1E5A3C080;
  *(a2 + 56) = xmmword_1E5A3C080;
  *(a2 + 72) = 0;
  v36 = qword_1ECFFB478;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = qword_1ED026498;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001510, &qword_1E5A45BA0) + 36)) = v37;
  v38 = v48;
  v33(v48, v31, v32);
  sub_1E5A299FC(v38, v47, MEMORY[0x1E6981998]);
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014F8, &qword_1E5A45B98) + 36);
  sub_1E5A29A64(&qword_1ECFFEA98, MEMORY[0x1E6981998]);

  sub_1E5A2AD54();
  return sub_1E5A29AAC(v38, MEMORY[0x1E6981998]);
}

void sub_1E5A293B8()
{
  sub_1E5A29488();
  if (v0 <= 0x3F)
  {
    sub_1E596EF68();
    if (v1 <= 0x3F)
    {
      sub_1E59581C4();
      if (v2 <= 0x3F)
      {
        type metadata accessor for WorkoutPlanScheduledItem();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E5A29488()
{
  if (!qword_1ED001480)
  {
    sub_1E59FE7DC();
    v0 = sub_1E5A2A564();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED001480);
    }
  }
}

unint64_t sub_1E5A294E4()
{
  result = qword_1ED001488;
  if (!qword_1ED001488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001490, &qword_1E5A45B38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001448, &qword_1E5A45A78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001440, &qword_1E5A45A70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E58CD164(&qword_1ED001460, &qword_1ED001440, &qword_1E5A45A70);
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001488);
  }

  return result;
}

uint64_t sub_1E5A29674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5A296DC()
{
  v1 = *(type metadata accessor for ActivityListItemView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E5A28D0C(v2);
}

unint64_t sub_1E5A29744()
{
  result = qword_1ED001500;
  if (!qword_1ED001500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0014F8, &qword_1E5A45B98);
    sub_1E5A297FC();
    sub_1E58CD164(&qword_1ECFFEA68, &qword_1ECFFEA70, &unk_1E5A3C440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001500);
  }

  return result;
}

unint64_t sub_1E5A297FC()
{
  result = qword_1ED001508;
  if (!qword_1ED001508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001510, &qword_1E5A45BA0);
    sub_1E5A298B4();
    sub_1E58CD164(&qword_1ECFFC050, &qword_1ECFFC058, &unk_1E5A2FCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001508);
  }

  return result;
}

unint64_t sub_1E5A298B4()
{
  result = qword_1ED001518;
  if (!qword_1ED001518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001520, &unk_1E5A45BA8);
    sub_1E5A2998C(&qword_1ECFFEA50, &qword_1ECFFEA58, &unk_1E5A3B3E0);
    sub_1E58CD164(&qword_1ED001528, &qword_1ED001530, &qword_1E5A45BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001518);
  }

  return result;
}

uint64_t sub_1E5A2998C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5A299FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5A29A64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5A29AAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E5A29B98()
{
  result = qword_1ED001550;
  if (!qword_1ED001550)
  {
    sub_1E5A2AC24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001550);
  }

  return result;
}