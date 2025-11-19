uint64_t sub_1E58E19E0(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  v33 = a8;
  v26[0] = a7;
  v32 = a6;
  v29 = a4;
  v27 = a3;
  v34 = a1;
  v35 = a18;
  v30 = a12;
  v28 = a11;
  v31 = a16;
  v26[1] = a14;
  v36 = a2;
  v37 = &type metadata for WorkoutPlanItemContext;
  v38 = a5;
  v39 = a7;
  v40 = a9;
  v41 = a10;
  v42 = sub_1E58B1C48();
  v43 = sub_1E58B1C9C();
  v44 = sub_1E58B1CF0();
  v45 = a13;
  v46 = a15;
  v47 = a17;
  v19 = type metadata accessor for ArchivedWorkoutPlansAction();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v26 - v22;
  v37 = v27;
  v38 = v29;
  v39 = a5;
  v40 = v32;
  v41 = v26[0];
  v42 = v33;
  v43 = a9;
  v44 = a10;
  v45 = a11;
  v46 = a12;
  v47 = a13;
  v48 = a14;
  v49 = a15;
  v50 = a16;
  v51 = a17;
  v24 = type metadata accessor for ArchivedWorkoutPlansView();
  sub_1E58D7758(v24);
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_1E58E1C74(uint64_t a1)
{
  v2 = sub_1E5A2A684();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E5A2A7C4();
}

unint64_t sub_1E58E1D54()
{
  result = qword_1ECFFC200;
  if (!qword_1ECFFC200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC1F8, &qword_1E5A303F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC208, &qword_1E5A30408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC210, &qword_1E5A30410);
    sub_1E5A2A714();
    sub_1E58CD164(&qword_1ECFFC218, &qword_1ECFFC210, &qword_1E5A30410);
    sub_1E58E2134(&qword_1ECFFC220, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC200);
  }

  return result;
}

uint64_t sub_1E58E1EF4(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  return swift_getOpaqueTypeConformance2();
}

void sub_1E58E1F58(uint64_t a1)
{
  sub_1E58CBB84();
  if (v2 <= 0x3F)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    v9 = *(a1 + 72);
    v13 = *(a1 + 104);
    v14 = *(a1 + 120);
    v15 = *(a1 + 136);
    type metadata accessor for ArchivedWorkoutPlansFeature();
    swift_getWitnessTable();
    sub_1E5A2B974();
    swift_getWitnessTable();
    sub_1E5A2A504();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 24);
      swift_getFunctionTypeMetadata1();
      sub_1E5A2A054();
      if (v5 <= 0x3F)
      {
        v6 = *(a1 + 32);
        swift_getFunctionTypeMetadata2();
        sub_1E5A2A054();
        if (v7 <= 0x3F)
        {
          sub_1E5A29E74();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E58E2134(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E58E21CC(int a1)
{
  v18 = v1[3];
  v19 = v1[2];
  v16 = v1[5];
  v17 = v1[4];
  v14 = v1[7];
  v15 = v1[6];
  v2 = v1[9];
  v13 = v1[8];
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[15];
  v9 = v1[16];
  v10 = v1[17];
  v11 = *(type metadata accessor for ArchivedWorkoutPlansView() - 8);
  return sub_1E58E19E0(v1 + ((*(v11 + 80) + 144) & ~*(v11 + 80)), v19, v18, v17, v16, v15, v14, v13, v2, v4, v3, v5, v6, v7, v8, v9, v10, a1);
}

uint64_t sub_1E58E22EC(uint64_t (*a1)(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void))
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 104);
  return a1(*(v1 + 144), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136));
}

unint64_t sub_1E58E2344()
{
  result = qword_1ECFFC240;
  if (!qword_1ECFFC240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC238, &qword_1E5A30540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC248, &qword_1E5A30548);
    sub_1E58CD164(&qword_1ECFFC250, &qword_1ECFFC248, &qword_1E5A30548);
    sub_1E58E2454();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC240);
  }

  return result;
}

unint64_t sub_1E58E2454()
{
  result = qword_1ECFFC258;
  if (!qword_1ECFFC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC258);
  }

  return result;
}

unint64_t sub_1E58E24F8()
{
  result = qword_1ECFFC270;
  if (!qword_1ECFFC270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC268, &qword_1E5A30558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC278, &qword_1E5A30560);
    sub_1E58E25EC();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFC290, &qword_1ECFFC298, &qword_1E5A30568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC270);
  }

  return result;
}

unint64_t sub_1E58E25EC()
{
  result = qword_1ECFFC280;
  if (!qword_1ECFFC280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC278, &qword_1E5A30560);
    sub_1E58E2678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC280);
  }

  return result;
}

unint64_t sub_1E58E2678()
{
  result = qword_1ECFFC288;
  if (!qword_1ECFFC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC288);
  }

  return result;
}

uint64_t sub_1E58E2768(uint64_t a1)
{
  v19 = v1[2];
  v17 = v1[4];
  v18 = v1[3];
  v15 = v1[6];
  v16 = v1[5];
  v2 = v1[9];
  v13 = v1[8];
  v14 = v1[7];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[15];
  v9 = v1[16];
  v10 = v1[17];
  v11 = *(type metadata accessor for ArchivedWorkoutPlansView() - 8);
  return sub_1E58DDF4C(a1, v1 + ((*(v11 + 80) + 144) & ~*(v11 + 80)), v19, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E58E2868(uint64_t *a1)
{
  v19 = v1[2];
  v17 = v1[4];
  v18 = v1[3];
  v15 = v1[6];
  v16 = v1[5];
  v2 = v1[9];
  v13 = v1[8];
  v14 = v1[7];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[15];
  v9 = v1[16];
  v10 = v1[17];
  v11 = *(type metadata accessor for ArchivedWorkoutPlansView() - 8);
  return sub_1E58DE158(a1, v1 + ((*(v11 + 80) + 144) & ~*(v11 + 80)), v19, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_5Tm()
{
  v19 = *(v0 + 16);
  v20 = *(v0 + 24);
  v21 = *(v0 + 64);
  v18 = *(v0 + 72);
  v22 = *(v0 + 88);
  v23 = *(v0 + 104);
  v24 = *(v0 + 120);
  v25 = *(v0 + 136);
  v1 = type metadata accessor for ArchivedWorkoutPlansView();
  v2 = (*(*(v1 - 1) + 80) + 144) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E5A2A684();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = &v4[v1[37]];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = v7[16];
  sub_1E58B369C();
  v11 = v1[38];
  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5A2A054();
  (*(*(v12 - 8) + 8))(&v4[v11], v12);
  v13 = v1[39];
  swift_getFunctionTypeMetadata2();
  v14 = sub_1E5A2A054();
  (*(*(v14 - 8) + 8))(&v4[v13], v14);
  v15 = v1[40];
  v16 = sub_1E5A29E74();
  (*(*(v16 - 8) + 8))(&v4[v15], v16);
  return swift_deallocObject();
}

uint64_t sub_1E58E2BD4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  v6 = a2;
  return v3(a1, &v6);
}

uint64_t sub_1E58E2C0C(uint64_t a1, void *a2)
{
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  return v3(a1, *a2);
}

__n128 ActiveWorkoutPlanWorkoutFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t ActiveWorkoutPlanWorkoutFeature.environment.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1E58E2CA8(v8, &v7);
}

uint64_t ActiveWorkoutPlanWorkoutFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, unint64_t a2, void **a3, uint64_t a4)
{
  v150 = a3;
  v149 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v134[-v9];
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A8, &qword_1E5A30648);
  v152 = *(v151 - 8);
  v11 = *(v152 + 64);
  v12 = MEMORY[0x1EEE9AC00](v151);
  v147 = &v134[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v148 = &v134[-v15];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v134[-v17];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v134[-v20];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v134[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v134[-v25];
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction();
  v28 = *(*(active - 8) + 64);
  MEMORY[0x1EEE9AC00](active);
  v30 = &v134[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = v4[3];
  v156 = v4[2];
  v157 = v31;
  v158 = v4[4];
  v32 = v4[1];
  v154 = *v4;
  v155 = v32;
  sub_1E58E779C(a4, v30, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v116 = *v30;
      v117 = v30[1];
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v119 = v118[12];
      v120 = v118[16];
      v121 = v118[20];
      v122 = &v24[v118[24]];
      v153[0] = 1;
      sub_1E58E3D14();
      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v123 = *MEMORY[0x1E6999B50];
      v124 = sub_1E5A2B924();
      (*(*(v124 - 8) + 104))(&v24[v120], v123, v124);
      v125 = *MEMORY[0x1E6999B48];
      v126 = sub_1E5A2B914();
      (*(*(v126 - 8) + 104))(&v24[v121], v125, v126);
      v127 = swift_allocObject();
      v128 = v157;
      *(v127 + 48) = v156;
      *(v127 + 64) = v128;
      *(v127 + 80) = v158;
      v129 = v155;
      *(v127 + 16) = v154;
      *(v127 + 32) = v129;
      *(v127 + 96) = v116;
      *(v127 + 104) = v117;
      *v122 = &unk_1E5A30698;
      v122[1] = v127;
      v130 = v152;
      v131 = v151;
      (*(v152 + 104))(v24, *MEMORY[0x1E6999AD8], v151);
      v48 = v150;
      v49 = *v150;
      sub_1E58E64E8(&v154, v153);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1E58E757C(0, v49[2] + 1, 1, v49, &qword_1ECFFC3B0, &unk_1E5A308C0, &qword_1ECFFC2A8, &qword_1E5A30648);
      }

      v133 = v49[2];
      v132 = v49[3];
      if (v133 >= v132 >> 1)
      {
        v49 = sub_1E58E757C(v132 > 1, v133 + 1, 1, v49, &qword_1ECFFC3B0, &unk_1E5A308C0, &qword_1ECFFC2A8, &qword_1E5A30648);
      }

      v49[2] = v133 + 1;
      result = (*(v130 + 32))(v49 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v133, v24, v131);
      goto LABEL_34;
    }

    sub_1E58E66FC(v30, v10);
    sub_1E58E676C(v10, a1);
    v53 = type metadata accessor for ActiveWorkoutPlanWorkout();
    if ((*(*(v53 - 8) + 48))(v10, 1, v53) == 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = 3;
    }

    sub_1E58BAD14(v10, &qword_1ECFFC2A0, &qword_1E5A30640);
    result = type metadata accessor for ActiveWorkoutPlanWorkoutState();
    *(v149 + *(result + 24)) = v54;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v56 = v55[12];
      v57 = v55[16];
      v58 = v55[20];
      v59 = &v26[v55[24]];
      v153[0] = 0;
      sub_1E58E3D14();
      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v60 = *MEMORY[0x1E6999B60];
      v61 = sub_1E5A2B924();
      (*(*(v61 - 8) + 104))(&v26[v57], v60, v61);
      v62 = *MEMORY[0x1E6999B48];
      v63 = sub_1E5A2B914();
      (*(*(v63 - 8) + 104))(&v26[v58], v62, v63);
      v64 = swift_allocObject();
      v65 = v157;
      v64[3] = v156;
      v64[4] = v65;
      v64[5] = v158;
      v66 = v155;
      v64[1] = v154;
      v64[2] = v66;
      *v59 = &unk_1E5A306A8;
      v59[1] = v64;
      v67 = v152;
      v68 = v151;
      (*(v152 + 104))(v26, *MEMORY[0x1E6999AD8], v151);
      v48 = v150;
      v49 = *v150;
      sub_1E58E64E8(&v154, v153);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1E58E757C(0, v49[2] + 1, 1, v49, &qword_1ECFFC3B0, &unk_1E5A308C0, &qword_1ECFFC2A8, &qword_1E5A30648);
      }

      v70 = v49[2];
      v69 = v49[3];
      if (v70 >= v69 >> 1)
      {
        v49 = sub_1E58E757C(v69 > 1, v70 + 1, 1, v49, &qword_1ECFFC3B0, &unk_1E5A308C0, &qword_1ECFFC2A8, &qword_1E5A30648);
      }

      v49[2] = v70 + 1;
      result = (*(v67 + 32))(v49 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v70, v26, v68);
      goto LABEL_34;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v35 = v34[12];
      v36 = v34[16];
      v37 = v34[20];
      v38 = &v21[v34[24]];
      v153[0] = 2;
      sub_1E58E3D14();
      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v39 = *MEMORY[0x1E6999B50];
      v40 = sub_1E5A2B924();
      (*(*(v40 - 8) + 104))(&v21[v36], v39, v40);
      v41 = *MEMORY[0x1E6999B48];
      v42 = sub_1E5A2B914();
      (*(*(v42 - 8) + 104))(&v21[v37], v41, v42);
      v43 = swift_allocObject();
      v44 = v157;
      v43[3] = v156;
      v43[4] = v44;
      v43[5] = v158;
      v45 = v155;
      v43[1] = v154;
      v43[2] = v45;
      *v38 = &unk_1E5A30688;
      v38[1] = v43;
      v46 = v152;
      v47 = v151;
      (*(v152 + 104))(v21, *MEMORY[0x1E6999AD8], v151);
      v48 = v150;
      v49 = *v150;
      sub_1E58E64E8(&v154, v153);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1E58E757C(0, v49[2] + 1, 1, v49, &qword_1ECFFC3B0, &unk_1E5A308C0, &qword_1ECFFC2A8, &qword_1E5A30648);
      }

      v51 = v49[2];
      v50 = v49[3];
      if (v51 >= v50 >> 1)
      {
        v49 = sub_1E58E757C(v50 > 1, v51 + 1, 1, v49, &qword_1ECFFC3B0, &unk_1E5A308C0, &qword_1ECFFC2A8, &qword_1E5A30648);
      }

      v49[2] = v51 + 1;
      result = (*(v46 + 32))(v49 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v51, v21, v47);
LABEL_34:
      *v48 = v49;
      return result;
    }

    result = type metadata accessor for ActiveWorkoutPlanWorkoutState();
    v71 = *(result + 24);
    if (*(v149 + v71) == 1)
    {
      *(v149 + v71) = 2;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v73 = v72[12];
      v74 = v72[16];
      v75 = v72[20];
      v76 = &v18[v72[24]];
      v153[0] = 5;
      v149 = sub_1E58E3D14();
      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v77 = *MEMORY[0x1E6999B60];
      v78 = sub_1E5A2B924();
      v79 = *(v78 - 8);
      v80 = *(v79 + 104);
      v146 = v77;
      v144 = v78;
      v143 = v80;
      v142 = v79 + 104;
      v80(&v18[v74], v77);
      v81 = *MEMORY[0x1E6999B40];
      v82 = sub_1E5A2B914();
      v83 = *(v82 - 8);
      v84 = *(v83 + 104);
      v141 = v81;
      v140 = v84;
      v139 = v83 + 104;
      v84(&v18[v75], v81, v82);
      *v76 = &unk_1E5A30658;
      v76[1] = 0;
      v85 = *MEMORY[0x1E6999AD8];
      v86 = *MEMORY[0x1E6999AD8];
      v145 = *(v152 + 104);
      v145(v18, v86, v151);
      v87 = *v150;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_1E58E757C(0, *(v87 + 2) + 1, 1, v87, &qword_1ECFFC3B0, &unk_1E5A308C0, &qword_1ECFFC2A8, &qword_1E5A30648);
      }

      v89 = *(v87 + 2);
      v88 = *(v87 + 3);
      v135 = v85;
      if (v89 >= v88 >> 1)
      {
        v87 = sub_1E58E757C(v88 > 1, v89 + 1, 1, v87, &qword_1ECFFC3B0, &unk_1E5A308C0, &qword_1ECFFC2A8, &qword_1E5A30648);
      }

      *(v87 + 2) = v89 + 1;
      v90 = *(v152 + 32);
      v137 = (*(v152 + 80) + 32) & ~*(v152 + 80);
      v136 = *(v152 + 72);
      v91 = v151;
      v152 += 32;
      v138 = v90;
      v90(&v87[v137 + v136 * v89], v18, v151);
      v92 = v72[12];
      v93 = v72[16];
      v94 = v72[20];
      v95 = v148;
      v96 = &v148[v72[24]];
      v153[0] = 3;
      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v143(&v95[v93], v146, v144);
      v140(&v95[v94], v141, v82);
      v97 = swift_allocObject();
      v98 = v157;
      v97[3] = v156;
      v97[4] = v98;
      v97[5] = v158;
      v99 = v155;
      v97[1] = v154;
      v97[2] = v99;
      *v96 = &unk_1E5A30668;
      v96[1] = v97;
      v100 = v95;
      v101 = v135;
      v145(v100, v135, v91);
      sub_1E58E64E8(&v154, v153);
      v103 = *(v87 + 2);
      v102 = *(v87 + 3);
      if (v103 >= v102 >> 1)
      {
        v87 = sub_1E58E757C(v102 > 1, v103 + 1, 1, v87, &qword_1ECFFC3B0, &unk_1E5A308C0, &qword_1ECFFC2A8, &qword_1E5A30648);
      }

      v104 = v147;
      *(v87 + 2) = v103 + 1;
      v105 = v151;
      v138(&v87[v137 + v103 * v136], v148, v151);
      v106 = v72[12];
      v107 = v72[16];
      v108 = v72[20];
      v109 = &v104[v72[24]];
      v153[0] = 4;
      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v143(&v104[v107], v146, v144);
      v140(&v104[v108], v141, v82);
      v110 = swift_allocObject();
      v111 = v157;
      v110[3] = v156;
      v110[4] = v111;
      v110[5] = v158;
      v112 = v155;
      v110[1] = v154;
      v110[2] = v112;
      *v109 = &unk_1E5A30678;
      v109[1] = v110;
      v145(v104, v101, v105);
      sub_1E58E64E8(&v154, v153);
      v114 = *(v87 + 2);
      v113 = *(v87 + 3);
      if (v114 >= v113 >> 1)
      {
        v87 = sub_1E58E757C(v113 > 1, v114 + 1, 1, v87, &qword_1ECFFC3B0, &unk_1E5A308C0, &qword_1ECFFC2A8, &qword_1E5A30648);
      }

      v115 = v150;
      *(v87 + 2) = v114 + 1;
      result = (v138)(&v87[v137 + v114 * v136], v104, v105);
      *v115 = v87;
    }
  }

  return result;
}

unint64_t sub_1E58E3D14()
{
  result = qword_1ECFFC2B8;
  if (!qword_1ECFFC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC2B8);
  }

  return result;
}

uint64_t sub_1E58E3D68(uint64_t a1, int **a2)
{
  v2[2] = a1;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction();
  v2[3] = active;
  v5 = *(*(active - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v6 = type metadata accessor for ActiveWorkoutPlanWorkout();
  v2[5] = v6;
  v7 = *(v6 - 8);
  v2[6] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v2[7] = v9;
  v2[8] = sub_1E5A2BC84();
  v2[9] = sub_1E5A2BC74();
  v10 = a2[1];
  v14 = (*a2 + **a2);
  v11 = (*a2)[1];
  v12 = swift_task_alloc();
  v2[10] = v12;
  *v12 = v2;
  v12[1] = sub_1E58E3F10;

  return v14(v9);
}

uint64_t sub_1E58E3F10()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v11 = *v1;
  v3[11] = v2;

  v8 = sub_1E5A2BC54();
  v3[12] = v8;
  v3[13] = v7;
  if (v2)
  {
    v9 = sub_1E58E4374;
  }

  else
  {
    v9 = sub_1E58E4070;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E58E4070()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_1E58E779C(v0[7], v2, type metadata accessor for ActiveWorkoutPlanWorkout);
  (*(v1 + 56))(v2, 0, 1, v3);
  swift_storeEnumTagMultiPayload();
  v5 = *(MEMORY[0x1E6999AF0] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC3A0, &qword_1E5A308B0);
  *v6 = v0;
  v6[1] = sub_1E58E4184;
  v8 = v0[4];
  v9 = v0[2];

  return MEMORY[0x1EEE01A40](v8, v7);
}

uint64_t sub_1E58E4184()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_1E58E7804(v3, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E58E42DC, v5, v4);
}

uint64_t sub_1E58E42DC()
{
  v1 = v0[9];
  v2 = v0[7];

  sub_1E58E7804(v2, type metadata accessor for ActiveWorkoutPlanWorkout);
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E58E4374()
{
  if (qword_1ECFFB470 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1E5A2A3D4();
  __swift_project_value_buffer(v2, qword_1ED026480);
  v3 = v1;
  v4 = sub_1E5A2A3B4();
  v5 = sub_1E5A2BD64();
  MEMORY[0x1E69331F0](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E5897000, v4, v5, "Failed to fetch active workout plan workout: %@", v7, 0xCu);
    sub_1E58BAD14(v8, &qword_1ECFFC3A8, &qword_1E5A308B8);
    MEMORY[0x1E6933430](v8, -1, -1);
    MEMORY[0x1E6933430](v7, -1, -1);
  }

  v11 = v0[5];
  v12 = v0[6];
  v14 = v0[3];
  v13 = v0[4];

  (*(v12 + 56))(v13, 1, 1, v11);
  swift_storeEnumTagMultiPayload();
  v15 = *(MEMORY[0x1E6999AF0] + 4);
  v16 = swift_task_alloc();
  v0[15] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC3A0, &qword_1E5A308B0);
  *v16 = v0;
  v16[1] = sub_1E58E4594;
  v18 = v0[4];
  v19 = v0[2];

  return MEMORY[0x1EEE01A40](v18, v17);
}

uint64_t sub_1E58E4594()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_1E58E7804(v3, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E58E46EC, v5, v4);
}

uint64_t sub_1E58E46EC()
{
  v1 = v0[11];
  v2 = v0[9];

  MEMORY[0x1E69331F0](v1);
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E58E4770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E5A2BC84();
  v4[3] = sub_1E5A2BC74();
  v8 = *(a2 + 72);
  v12 = (*(a2 + 64) + **(a2 + 64));
  v9 = *(*(a2 + 64) + 4);
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_1E58E4890;

  return v12(a3, a4);
}

uint64_t sub_1E58E4890()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1E5A2BC54();
  if (v2)
  {
    v8 = sub_1E58E4A50;
  }

  else
  {
    v8 = sub_1E58E49EC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E58E49EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E58E4A50()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1E58E4AB4(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E5A2BC84();
  v2[3] = sub_1E5A2BC74();
  v4 = *(a2 + 56);
  v8 = (*(a2 + 48) + **(a2 + 48));
  v5 = *(*(a2 + 48) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1E58E4BBC;

  return v8();
}

uint64_t sub_1E58E4BBC()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1E5A2BC54();
  if (v2)
  {
    v8 = sub_1E58E7918;
  }

  else
  {
    v8 = sub_1E58E791C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E58E4D18(uint64_t a1)
{
  v1[2] = a1;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction();
  v1[3] = active;
  v3 = *(*(active - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_1E5A2BC84();
  v1[5] = sub_1E5A2BC74();
  v5 = sub_1E5A2BC54();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E58E4DE0, v5, v4);
}

uint64_t sub_1E58E4DE0()
{
  v2 = v0[3];
  v1 = v0[4];
  swift_storeEnumTagMultiPayload();
  v3 = *(MEMORY[0x1E6999AF0] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC3A0, &qword_1E5A308B0);
  *v4 = v0;
  v4[1] = sub_1E58E4EA0;
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x1EEE01A40](v6, v5);
}

uint64_t sub_1E58E4EA0()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_1E58E7804(v3, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E58E4FF8, v5, v4);
}

uint64_t sub_1E58E4FF8()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E58E5064(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction();
  v2[13] = active;
  v5 = *(*(active - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_1E5A2BC84();
  v2[16] = sub_1E5A2BC74();
  v6 = *(a2 + 24);
  v10 = (*(a2 + 16) + **(a2 + 16));
  v7 = *(*(a2 + 16) + 4);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_1E58E51A8;

  return v10(v2 + 7);
}

uint64_t sub_1E58E51A8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v8 = *v0;

  v6 = sub_1E5A2BC54();
  *(v1 + 144) = v6;
  *(v1 + 152) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E58E52EC, v6, v5);
}

uint64_t sub_1E58E52EC()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[15];
  v7 = sub_1E5A2BC74();
  v0[20] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_1E58E54C4;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v7, v11);
}

uint64_t sub_1E58E54C4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[20];

    v6 = v2[18];
    v7 = v2[19];

    return MEMORY[0x1EEE6DFA0](sub_1E58E55D8, v6, v7);
  }

  return result;
}

uint64_t sub_1E58E55D8()
{
  if (*(v0 + 184) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    swift_storeEnumTagMultiPayload();
    v7 = *(MEMORY[0x1E6999AF0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC3A0, &qword_1E5A308B0);
    *v8 = v0;
    v8[1] = sub_1E58E56F4;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return MEMORY[0x1EEE01A40](v10, v9);
  }
}

uint64_t sub_1E58E56F4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 112);
  v7 = *v0;

  sub_1E58E7804(v3, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E58E584C, v5, v4);
}

uint64_t sub_1E58E584C()
{
  v1 = v0[15];
  v2 = sub_1E5A2BC74();
  v0[20] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1E58E54C4;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v2, v6);
}

uint64_t sub_1E58E5928(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction();
  v2[13] = active;
  v5 = *(*(active - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_1E5A2BC84();
  v2[16] = sub_1E5A2BC74();
  v6 = *(a2 + 24);
  v10 = (*(a2 + 16) + **(a2 + 16));
  v7 = *(*(a2 + 16) + 4);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_1E58E5A6C;

  return v10(v2 + 7);
}

uint64_t sub_1E58E5A6C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v8 = *v0;

  v6 = sub_1E5A2BC54();
  *(v1 + 144) = v6;
  *(v1 + 152) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E58E5BB0, v6, v5);
}

uint64_t sub_1E58E5BB0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[15];
  v7 = sub_1E5A2BC74();
  v0[20] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_1E58E5D88;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v7, v11);
}

uint64_t sub_1E58E5D88()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[20];

    v6 = v2[18];
    v7 = v2[19];

    return MEMORY[0x1EEE6DFA0](sub_1E58E5E9C, v6, v7);
  }

  return result;
}

uint64_t sub_1E58E5E9C()
{
  if (*(v0 + 184) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    swift_storeEnumTagMultiPayload();
    v7 = *(MEMORY[0x1E6999AF0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC3A0, &qword_1E5A308B0);
    *v8 = v0;
    v8[1] = sub_1E58E5FB8;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return MEMORY[0x1EEE01A40](v10, v9);
  }
}

uint64_t sub_1E58E5FB8()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 112);
  v7 = *v0;

  sub_1E58E7804(v3, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E58E6110, v5, v4);
}

uint64_t sub_1E58E6110()
{
  v1 = v0[15];
  v2 = sub_1E5A2BC74();
  v0[20] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1E58E5D88;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v2, v6);
}

uint64_t ActiveWorkoutPlanWorkoutFeature.dispose(localState:sharedState:)(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for ActiveWorkoutPlanWorkoutState();
  *(a2 + *(result + 24)) = 1;
  return result;
}

uint64_t sub_1E58E6224(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for ActiveWorkoutPlanWorkoutState();
  *(a2 + *(result + 24)) = 1;
  return result;
}

char *sub_1E58E6258(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2E8, &qword_1E5A307F8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1E58E635C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFC3B8, &unk_1E5A45200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1E58E6450(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E58E5064(a1, v1 + 16);
}

uint64_t sub_1E58E6520(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E58E5928(a1, v1 + 16);
}

uint64_t sub_1E58E65B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E58E4AB4(a1, v1 + 16);
}

uint64_t sub_1E58E6650(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58CD5C8;

  return sub_1E58E4770(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E58E66FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58E676C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1E58E6834(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E58E3D68(a1, (v1 + 16));
}

uint64_t sub_1E58E69EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E58E6A50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1E58E6A98(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ActiveWorkoutPlanWorkoutFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActiveWorkoutPlanWorkoutFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E58E6C50()
{
  result = qword_1ECFFC2E0;
  if (!qword_1ECFFC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC2E0);
  }

  return result;
}

char *sub_1E58E6CF4(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1E58E6E1C(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1E58E6F44(char *result, int64_t a2, char a3, char *a4)
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

size_t sub_1E58E7078(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1E58E7278(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC368, &qword_1E5A30878);
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

char *sub_1E58E73F0(char *result, int64_t a2, char a3, char *a4)
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

size_t sub_1E58E757C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1E58E779C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E58E7804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t ArchivedWorkoutPlansLocalState.init(limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5A2A374();
  sub_1E5A2A314();
  sub_1E5A2A384();
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  v2 = sub_1E5A2A244();
  (*(*(v2 - 8) + 56))(a2, 1, 1, v2);
  result = type metadata accessor for ArchivedWorkoutPlansLocalState();
  *(a2 + *(result + 116)) = a1;
  return result;
}

uint64_t sub_1E58E7B3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ArchivedWorkoutPlansLocalState.section.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5A2A374();
  v9 = *(a1 + 16);
  sub_1E5A2A314();
  v3 = *(a1 + 40);
  sub_1E5A2A384();
  v4 = *(a1 + 48);
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v5 = *(a1 + 56);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v6 = *(a1 + 96);
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  v12 = *(a1 + 24);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 104);
  sub_1E5A2A244();
  v7 = sub_1E5A2BD84();
  return (*(*(v7 - 8) + 16))(a2, v11, v7);
}

uint64_t ArchivedWorkoutPlansLocalState.section.setter(uint64_t a1, uint64_t a2)
{
  sub_1E5A2A374();
  v9 = *(a2 + 16);
  sub_1E5A2A314();
  v3 = *(a2 + 40);
  sub_1E5A2A384();
  v4 = *(a2 + 48);
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v5 = *(a2 + 56);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v6 = *(a2 + 96);
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  v12 = *(a2 + 24);
  v13 = *(a2 + 64);
  v14 = *(a2 + 80);
  v15 = *(a2 + 104);
  sub_1E5A2A244();
  v7 = sub_1E5A2BD84();
  return (*(*(v7 - 8) + 40))(v11, a1, v7);
}

uint64_t (*ArchivedWorkoutPlansLocalState.limit.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 116);
  return result;
}

uint64_t sub_1E58E7F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6974636573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E58E8048(char a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1 & 1);
  return sub_1E5A2C204();
}

uint64_t sub_1E58E8090(char a1)
{
  if (a1)
  {
    return 0x74696D696CLL;
  }

  else
  {
    return 0x6E6F6974636573;
  }
}

BOOL sub_1E58E80C4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
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
  return sub_1E58E8010(*a1, *a2);
}

uint64_t sub_1E58E8110(uint64_t a1)
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
  return sub_1E58E8048(*v1);
}

uint64_t sub_1E58E815C(uint64_t a1, uint64_t a2)
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
  return sub_1E58E8020(a1, *v2);
}

uint64_t sub_1E58E81A0(uint64_t a1, uint64_t a2)
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
  sub_1E58E8020(v15, *v2);
  return sub_1E5A2C204();
}

uint64_t sub_1E58E8200(uint64_t a1)
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
  return sub_1E58E8090(*v1);
}

uint64_t sub_1E58E824C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
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
  result = sub_1E58E7F48(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E58E829C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
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
  result = sub_1E58E9680();
  *a2 = result;
  return result;
}

uint64_t sub_1E58E82F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E58E8344(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ArchivedWorkoutPlansLocalState.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v28 = *(a2 + 24);
  v5 = *(a2 + 40);
  v27 = *(a2 + 32);
  v26 = v5;
  v6 = *(a2 + 56);
  v29 = *(a2 + 48);
  v30 = v6;
  v7 = *(a2 + 72);
  v35 = *(a2 + 64);
  v34 = v7;
  v8 = *(a2 + 88);
  v33 = *(a2 + 80);
  v32 = v8;
  v31 = *(a2 + 96);
  v36 = *(a2 + 104);
  v40 = v4;
  v41 = v28;
  v42 = v27;
  v43 = v5;
  v44 = v29;
  v45 = v6;
  v46 = v35;
  v47 = v7;
  v48 = v33;
  v49 = v8;
  v50 = v31;
  v51 = v36;
  type metadata accessor for ArchivedWorkoutPlansLocalState.CodingKeys();
  swift_getWitnessTable();
  v9 = sub_1E5A2C0D4();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A2C224();
  v58 = 0;
  v14 = sub_1E5A2A374();
  v15 = sub_1E5A2A314();
  v16 = sub_1E5A2A384();
  v17 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v18 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v19 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  v40 = v14;
  v41 = v4;
  v20 = v38;
  v42 = v15;
  v43 = v28;
  v44 = v27;
  v45 = v26;
  v46 = v16;
  v47 = v29;
  v48 = v17;
  v49 = v30;
  v50 = v18;
  v51 = v35;
  v52 = v34;
  v53 = v33;
  v54 = v32;
  v55 = v31;
  v56 = v19;
  v57 = v36;
  sub_1E5A2A244();
  swift_getWitnessTable();
  v21 = v39;
  sub_1E5A2C054();
  if (v21)
  {
    return (*(v37 + 8))(v12, v9);
  }

  v23 = v37;
  v24 = *(v20 + *(a2 + 116));
  LOBYTE(v40) = 1;
  sub_1E5A2C094();
  return (*(v23 + 8))(v12, v9);
}

uint64_t ArchivedWorkoutPlansLocalState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14)
{
  v59 = a7;
  v60 = a8;
  v58 = a6;
  v50 = a5;
  v47 = a4;
  v61 = a3;
  v80 = a1;
  v42 = a9;
  v52 = a14;
  v51 = a13;
  v57 = a12;
  v49 = a11;
  v46 = a10;
  v62 = sub_1E5A2A374();
  v63 = a2;
  v48 = a2;
  v64 = sub_1E5A2A314();
  v65 = a3;
  v17 = v50;
  v66 = a4;
  v67 = v50;
  v68 = sub_1E5A2A384();
  v69 = v58;
  v70 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v71 = v59;
  v72 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v73 = v60;
  v74 = a10;
  v75 = a11;
  v76 = a12;
  v77 = a13;
  v78 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  v79 = a14;
  v53 = sub_1E5A2A244();
  v55 = sub_1E5A2BD84();
  v54 = *(v55 - 8);
  v18 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v44 = &v41 - v19;
  v62 = a2;
  v63 = v61;
  v20 = v47;
  v64 = v47;
  v65 = v50;
  v66 = v58;
  v67 = v59;
  v68 = v60;
  v69 = a10;
  v70 = a11;
  v71 = a12;
  v72 = a13;
  v73 = a14;
  type metadata accessor for ArchivedWorkoutPlansLocalState.CodingKeys();
  swift_getWitnessTable();
  v45 = sub_1E5A2C014();
  v43 = *(v45 - 8);
  v21 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v23 = &v41 - v22;
  v62 = v48;
  v63 = v61;
  v64 = v20;
  v65 = v17;
  v66 = v58;
  v67 = v59;
  v68 = v60;
  v69 = a10;
  v70 = a11;
  v71 = v57;
  v24 = v53;
  v72 = a13;
  v73 = a14;
  v25 = type metadata accessor for ArchivedWorkoutPlansLocalState();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v41 - v28;
  (*(*(v24 - 8) + 56))(&v41 - v28, 1, 1, v24);
  v30 = v80[4];
  __swift_project_boxed_opaque_existential_1(v80, v80[3]);
  v61 = v23;
  v31 = v56;
  sub_1E5A2C214();
  if (v31)
  {
    v36 = v55;
    v37 = v54;
    __swift_destroy_boxed_opaque_existential_1(v80);
    return (*(v37 + 8))(v29, v36);
  }

  else
  {
    v60 = v26;
    v32 = v25;
    v33 = v43;
    LOBYTE(v62) = 0;
    swift_getWitnessTable();
    v34 = v44;
    v35 = v45;
    sub_1E5A2BF84();
    (*(v54 + 40))(v29, v34, v55);
    LOBYTE(v62) = 1;
    v38 = sub_1E5A2BFC4();
    (*(v33 + 8))(v61, v35);
    *&v29[*(v32 + 116)] = v38;
    v39 = v60;
    (*(v60 + 16))(v42, v29, v32);
    __swift_destroy_boxed_opaque_existential_1(v80);
    return (*(v39 + 8))(v29, v32);
  }
}

BOOL static ArchivedWorkoutPlansLocalState.== infix(_:_:)(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, char *a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14)
{
  v56 = a8;
  v55 = a7;
  v57 = a1;
  v58 = a2;
  v54 = a14;
  v53 = a13;
  v52 = sub_1E5A2A374();
  v51 = sub_1E5A2A314();
  v50 = sub_1E5A2A384();
  v59 = v52;
  v60 = a3;
  v44 = a3;
  v61 = v51;
  v62 = a4;
  v46 = a4;
  v48 = a5;
  v63 = a5;
  v64 = a6;
  v49 = a6;
  v65 = v50;
  v66 = v55;
  v67 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v68 = v56;
  v69 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v70 = a9;
  v42 = a9;
  v43 = a10;
  v71 = a10;
  v72 = a11;
  v45 = a11;
  v47 = a12;
  v73 = a12;
  v74 = a13;
  v75 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  v76 = a14;
  v18 = sub_1E5A2A244();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v41 = &v40 - v21;
  v22 = sub_1E5A2BD84();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v52 = &v40 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  v27 = *(v50 + 64);
  v28 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v30 = &v40 - v29;
  v31 = *(v28 + 48);
  v51 = v23;
  v32 = *(v23 + 16);
  v32(&v40 - v29, v57, v22);
  v32(&v30[v31], v58, v22);
  v33 = *(v19 + 48);
  if (v33(v30, 1, v18) != 1)
  {
    v32(v52, v30, v22);
    if (v33(&v30[v31], 1, v18) != 1)
    {
      v35 = v41;
      (*(v19 + 32))(v41, &v30[v31], v18);
      swift_getWitnessTable();
      v36 = v52;
      v37 = sub_1E5A2BA74();
      v38 = *(v19 + 8);
      v38(v35, v18);
      v38(v36, v18);
      (*(v51 + 8))(v30, v22);
      if (v37)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v19 + 8))(v52, v18);
LABEL_6:
    (*(v50 + 8))(v30, TupleTypeMetadata2);
    return 0;
  }

  if (v33(&v30[v31], 1, v18) != 1)
  {
    goto LABEL_6;
  }

  (*(v51 + 8))(v30, v22);
LABEL_9:
  v59 = v44;
  v60 = v46;
  v61 = v48;
  v62 = v49;
  v63 = v55;
  v64 = v56;
  v65 = v42;
  v66 = v43;
  v67 = v45;
  v68 = v47;
  v69 = v53;
  v70 = v54;
  v39 = type metadata accessor for ArchivedWorkoutPlansLocalState();
  return *(v57 + *(v39 + 116)) == *(v58 + *(v39 + 116));
}

uint64_t sub_1E58E9448(uint64_t a1)
{
  sub_1E5A2A374();
  v8 = *(a1 + 16);
  sub_1E5A2A314();
  v2 = *(a1 + 40);
  sub_1E5A2A384();
  v3 = *(a1 + 48);
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8]);
  v4 = *(a1 + 56);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980]);
  v5 = *(a1 + 96);
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18]);
  v9 = *(a1 + 24);
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v12 = *(a1 + 104);
  sub_1E5A2A244();
  result = sub_1E5A2BD84();
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E58E9688()
{
  v1 = *v0;
  v2 = 0x616D536172747865;
  v3 = 0x6D756964656DLL;
  v4 = 0x656772616CLL;
  if (v1 != 4)
  {
    v4 = 0x72614C6172747865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D73;
  if (v1 != 1)
  {
    v5 = 0x72616C75676572;
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

uint64_t sub_1E58E973C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E58EA3D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58E9770(uint64_t a1)
{
  v2 = sub_1E58EA11C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E97AC(uint64_t a1)
{
  v2 = sub_1E58EA11C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58E97E8(uint64_t a1)
{
  v2 = sub_1E58EA170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E9824(uint64_t a1)
{
  v2 = sub_1E58EA170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58E9860(uint64_t a1)
{
  v2 = sub_1E58EA314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E989C(uint64_t a1)
{
  v2 = sub_1E58EA314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58E98D8(uint64_t a1)
{
  v2 = sub_1E58EA1C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E9914(uint64_t a1)
{
  v2 = sub_1E58EA1C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58E9950(uint64_t a1)
{
  v2 = sub_1E58EA218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E998C(uint64_t a1)
{
  v2 = sub_1E58EA218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58E99C8(uint64_t a1)
{
  v2 = sub_1E58EA26C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E9A04(uint64_t a1)
{
  v2 = sub_1E58EA26C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58E9A40(uint64_t a1)
{
  v2 = sub_1E58EA2C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E9A7C(uint64_t a1)
{
  v2 = sub_1E58EA2C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanSizeClass.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

uint64_t WorkoutPlanSizeClass.encode(to:)(void *a1, int a2)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4C0, &qword_1E5A30AC0);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4C8, &qword_1E5A30AC8);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4D0, &qword_1E5A30AD0);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4D8, &qword_1E5A30AD8);
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4E0, &qword_1E5A30AE0);
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4E8, &qword_1E5A30AE8);
  v37 = *(v20 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v36 - v22;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4F0, &qword_1E5A30AF0);
  v24 = *(v51 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v27 = &v36 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58EA11C();
  sub_1E5A2C224();
  v29 = (v24 + 8);
  if (v52 > 2u)
  {
    if (v52 == 3)
    {
      v56 = 3;
      sub_1E58EA218();
      v32 = v42;
      v33 = v51;
      sub_1E5A2C024();
      v35 = v43;
      v34 = v44;
    }

    else if (v52 == 4)
    {
      v57 = 4;
      sub_1E58EA1C4();
      v32 = v45;
      v33 = v51;
      sub_1E5A2C024();
      v35 = v46;
      v34 = v47;
    }

    else
    {
      v58 = 5;
      sub_1E58EA170();
      v32 = v48;
      v33 = v51;
      sub_1E5A2C024();
      v35 = v49;
      v34 = v50;
    }

    (*(v35 + 8))(v32, v34);
  }

  else if (v52)
  {
    if (v52 == 1)
    {
      v54 = 1;
      sub_1E58EA2C0();
      v30 = v51;
      sub_1E5A2C024();
      (*(v38 + 8))(v19, v39);
      return (*v29)(v27, v30);
    }

    v55 = 2;
    sub_1E58EA26C();
    v33 = v51;
    sub_1E5A2C024();
    (*(v40 + 8))(v15, v41);
  }

  else
  {
    v53 = 0;
    sub_1E58EA314();
    v33 = v51;
    sub_1E5A2C024();
    (*(v37 + 8))(v23, v20);
  }

  return (*v29)(v27, v33);
}

unint64_t sub_1E58EA11C()
{
  result = qword_1ECFFC4F8;
  if (!qword_1ECFFC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC4F8);
  }

  return result;
}

unint64_t sub_1E58EA170()
{
  result = qword_1ECFFC500;
  if (!qword_1ECFFC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC500);
  }

  return result;
}

unint64_t sub_1E58EA1C4()
{
  result = qword_1ECFFC508;
  if (!qword_1ECFFC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC508);
  }

  return result;
}

unint64_t sub_1E58EA218()
{
  result = qword_1ECFFC510;
  if (!qword_1ECFFC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC510);
  }

  return result;
}

unint64_t sub_1E58EA26C()
{
  result = qword_1ECFFC518;
  if (!qword_1ECFFC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC518);
  }

  return result;
}

unint64_t sub_1E58EA2C0()
{
  result = qword_1ECFFC520;
  if (!qword_1ECFFC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC520);
  }

  return result;
}

unint64_t sub_1E58EA314()
{
  result = qword_1ECFFC528;
  if (!qword_1ECFFC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC528);
  }

  return result;
}

uint64_t sub_1E58EA380@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E58EA5D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E58EA3D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5A2C114();

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

uint64_t sub_1E58EA5D8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5B0, &qword_1E5A31140);
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5B8, &qword_1E5A31148);
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v48 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5C0, &qword_1E5A31150);
  v56 = *(v53 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v63 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5C8, &qword_1E5A31158);
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5D0, &qword_1E5A31160);
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5D8, &qword_1E5A31168);
  v50 = *(v18 - 8);
  v19 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5E0, &unk_1E5A31170);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v48 - v25;
  v28 = a1[3];
  v27 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1E58EA11C();
  v29 = v65;
  sub_1E5A2C214();
  if (!v29)
  {
    v30 = v21;
    v48 = v18;
    v49 = v17;
    v31 = v62;
    v32 = v63;
    v33 = v64;
    v65 = v23;
    v34 = sub_1E5A2C004();
    v35 = (2 * *(v34 + 16)) | 1;
    v67 = v34;
    v68 = v34 + 32;
    v69 = 0;
    v70 = v35;
    v36 = sub_1E58BBF34();
    v37 = v26;
    if (v36 != 6 && v69 == v70 >> 1)
    {
      v23 = v36;
      if (v36 > 2u)
      {
        if (v36 != 3)
        {
          v46 = v65;
          if (v36 == 4)
          {
            v71 = 4;
            sub_1E58EA1C4();
            sub_1E5A2BF44();
            (*(v58 + 8))(v33, v57);
          }

          else
          {
            v71 = 5;
            sub_1E58EA170();
            v47 = v61;
            sub_1E5A2BF44();
            (*(v59 + 8))(v47, v60);
          }

          (*(v46 + 8))(v37, v22);
          goto LABEL_21;
        }

        v71 = 3;
        sub_1E58EA218();
        sub_1E5A2BF44();
        v38 = v65;
        (*(v56 + 8))(v32, v53);
      }

      else if (v36)
      {
        if (v36 == 1)
        {
          v71 = 1;
          sub_1E58EA2C0();
          v31 = v49;
          sub_1E5A2BF44();
          v38 = v65;
          v40 = v51;
          v39 = v52;
        }

        else
        {
          v71 = 2;
          sub_1E58EA26C();
          sub_1E5A2BF44();
          v38 = v65;
          v40 = v54;
          v39 = v55;
        }

        (*(v40 + 8))(v31, v39);
      }

      else
      {
        v71 = 0;
        sub_1E58EA314();
        sub_1E5A2BF44();
        (*(v50 + 8))(v30, v48);
        v38 = v65;
      }

      (*(v38 + 8))(v26, v22);
LABEL_21:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v66);
      return v23;
    }

    v41 = sub_1E5A2BE84();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v43 = &type metadata for WorkoutPlanSizeClass;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    (*(v65 + 8))(v26, v22);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v66);
  return v23;
}

unint64_t sub_1E58EADC4()
{
  result = qword_1ECFFC530;
  if (!qword_1ECFFC530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC530);
  }

  return result;
}

unint64_t sub_1E58EAE9C()
{
  result = qword_1ECFFC538;
  if (!qword_1ECFFC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC538);
  }

  return result;
}

unint64_t sub_1E58EAEF4()
{
  result = qword_1ECFFC540;
  if (!qword_1ECFFC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC540);
  }

  return result;
}

unint64_t sub_1E58EAF4C()
{
  result = qword_1ECFFC548;
  if (!qword_1ECFFC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC548);
  }

  return result;
}

unint64_t sub_1E58EAFA4()
{
  result = qword_1ECFFC550;
  if (!qword_1ECFFC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC550);
  }

  return result;
}

unint64_t sub_1E58EAFFC()
{
  result = qword_1ECFFC558;
  if (!qword_1ECFFC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC558);
  }

  return result;
}

unint64_t sub_1E58EB054()
{
  result = qword_1ECFFC560;
  if (!qword_1ECFFC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC560);
  }

  return result;
}

unint64_t sub_1E58EB0AC()
{
  result = qword_1ECFFC568;
  if (!qword_1ECFFC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC568);
  }

  return result;
}

unint64_t sub_1E58EB104()
{
  result = qword_1ECFFC570;
  if (!qword_1ECFFC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC570);
  }

  return result;
}

unint64_t sub_1E58EB15C()
{
  result = qword_1ECFFC578;
  if (!qword_1ECFFC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC578);
  }

  return result;
}

unint64_t sub_1E58EB1B4()
{
  result = qword_1ECFFC580;
  if (!qword_1ECFFC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC580);
  }

  return result;
}

unint64_t sub_1E58EB20C()
{
  result = qword_1ECFFC588;
  if (!qword_1ECFFC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC588);
  }

  return result;
}

unint64_t sub_1E58EB264()
{
  result = qword_1ECFFC590;
  if (!qword_1ECFFC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC590);
  }

  return result;
}

unint64_t sub_1E58EB2BC()
{
  result = qword_1ECFFC598;
  if (!qword_1ECFFC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC598);
  }

  return result;
}

unint64_t sub_1E58EB314()
{
  result = qword_1ECFFC5A0;
  if (!qword_1ECFFC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC5A0);
  }

  return result;
}

unint64_t sub_1E58EB36C()
{
  result = qword_1ECFFC5A8;
  if (!qword_1ECFFC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC5A8);
  }

  return result;
}

uint64_t PlanCompletionEnvironment.makeSessionSummaryDismissedStream.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PlanCompletionEnvironment.makeSignificantTimeChangeStream.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PlanCompletionEnvironment.presentPlanCompletionIfNeeded.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PlanCompletionEnvironment.init(makeSessionSummaryDismissedStream:makeSignificantTimeChangeStream:presentPlanCompletionIfNeeded:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E58EB47C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E58EB4C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PersonalizedWorkoutPlanCandidateTreatment.areaIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PersonalizedWorkoutPlanCandidateTreatment.treatmentIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void __swiftcall PersonalizedWorkoutPlanCandidateTreatment.init(areaIdentifier:bucket:treatmentIdentifier:)(FitnessWorkoutPlan::PersonalizedWorkoutPlanCandidateTreatment *__return_ptr retstr, Swift::String areaIdentifier, Swift::Int bucket, Swift::String treatmentIdentifier)
{
  retstr->areaIdentifier = areaIdentifier;
  retstr->bucket = bucket;
  retstr->treatmentIdentifier = treatmentIdentifier;
}

uint64_t sub_1E58EB598()
{
  v1 = 0x74656B637562;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65644961657261;
  }
}

uint64_t sub_1E58EB600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E58EC124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58EB628(uint64_t a1)
{
  v2 = sub_1E58EB864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58EB664(uint64_t a1)
{
  v2 = sub_1E58EB864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizedWorkoutPlanCandidateTreatment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5E8, &qword_1E5A311E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v14[0] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58EB864();
  sub_1E5A2C224();
  v17 = 0;
  v12 = v14[3];
  sub_1E5A2C064();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = 1;
  sub_1E5A2C094();
  v15 = 2;
  sub_1E5A2C064();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E58EB864()
{
  result = qword_1ECFFC5F0;
  if (!qword_1ECFFC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC5F0);
  }

  return result;
}

uint64_t PersonalizedWorkoutPlanCandidateTreatment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5F8, &qword_1E5A311E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58EB864();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v11 = sub_1E5A2BF94();
  v13 = v12;
  v14 = v11;
  v24 = 1;
  v22 = sub_1E5A2BFC4();
  v23 = 2;
  v15 = sub_1E5A2BF94();
  v18 = v17;
  v19 = *(v6 + 8);
  v21 = v15;
  v19(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  v20 = v21;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static PersonalizedWorkoutPlanCandidateTreatment.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1E5A2C114();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1E5A2C114();
}

uint64_t PersonalizedWorkoutPlanCandidateTreatment.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](v3);

  return sub_1E5A2BB74();
}

uint64_t PersonalizedWorkoutPlanCandidateTreatment.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](v3);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E58EBCCC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](v3);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E58EBD4C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](v3);

  return sub_1E5A2BB74();
}

uint64_t sub_1E58EBDB4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](v3);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

unint64_t sub_1E58EBE34()
{
  result = qword_1ECFFC600;
  if (!qword_1ECFFC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC600);
  }

  return result;
}

uint64_t sub_1E58EBE88(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1E5A2C114();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1E5A2C114();
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

uint64_t sub_1E58EBF6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E58EBFB4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1E58EC020()
{
  result = qword_1ECFFC608;
  if (!qword_1ECFFC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC608);
  }

  return result;
}

unint64_t sub_1E58EC078()
{
  result = qword_1ECFFC610;
  if (!qword_1ECFFC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC610);
  }

  return result;
}

unint64_t sub_1E58EC0D0()
{
  result = qword_1ECFFC618;
  if (!qword_1ECFFC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC618);
  }

  return result;
}

uint64_t sub_1E58EC124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961657261 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74656B637562 && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5A46430 == a2)
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

unint64_t sub_1E58EC260()
{
  if (*v0)
  {
    result = 0x6570704177656976;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E58EC2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x80000001E5A46450 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E5A2C114();

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

uint64_t sub_1E58EC394(uint64_t a1)
{
  v2 = sub_1E58EC820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58EC3D0(uint64_t a1)
{
  v2 = sub_1E58EC820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58EC40C(uint64_t a1)
{
  v2 = sub_1E58EC8C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58EC448(uint64_t a1)
{
  v2 = sub_1E58EC8C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58EC484(uint64_t a1)
{
  v2 = sub_1E58EC874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58EC4C0(uint64_t a1)
{
  v2 = sub_1E58EC874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlanCompletionAction.hashValue.getter()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  return sub_1E5A2C204();
}

uint64_t PlanCompletionAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC620, &qword_1E5A31420);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC628, &qword_1E5A31428);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC630, &qword_1E5A31430);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58EC820();
  sub_1E5A2C224();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E58EC874();
    v18 = v22;
    sub_1E5A2C024();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E58EC8C8();
    sub_1E5A2C024();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1E58EC820()
{
  result = qword_1EE2CFD38;
  if (!qword_1EE2CFD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD38);
  }

  return result;
}

unint64_t sub_1E58EC874()
{
  result = qword_1EE2CFD20;
  if (!qword_1EE2CFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD20);
  }

  return result;
}

unint64_t sub_1E58EC8C8()
{
  result = qword_1EE2CFD50;
  if (!qword_1EE2CFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD50);
  }

  return result;
}

uint64_t PlanCompletionAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC638, &qword_1E5A31438);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC640, &qword_1E5A31440);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC648, &unk_1E5A31448);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58EC820();
  v16 = v36;
  sub_1E5A2C214();
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
    v20 = sub_1E5A2C004();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E58BC5B4();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E5A2BE84();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
      *v26 = &type metadata for PlanCompletionAction;
      sub_1E5A2BF54();
      sub_1E5A2BE74();
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
        sub_1E58EC874();
        sub_1E5A2BF44();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E58EC8C8();
        sub_1E5A2BF44();
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

unint64_t sub_1E58ECDDC()
{
  result = qword_1ECFFC650;
  if (!qword_1ECFFC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC650);
  }

  return result;
}

unint64_t sub_1E58ECEA4()
{
  result = qword_1ECFFC658;
  if (!qword_1ECFFC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC658);
  }

  return result;
}

unint64_t sub_1E58ECEFC()
{
  result = qword_1EE2CFD40;
  if (!qword_1EE2CFD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD40);
  }

  return result;
}

unint64_t sub_1E58ECF54()
{
  result = qword_1EE2CFD48;
  if (!qword_1EE2CFD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD48);
  }

  return result;
}

unint64_t sub_1E58ECFAC()
{
  result = qword_1EE2CFD10;
  if (!qword_1EE2CFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD10);
  }

  return result;
}

unint64_t sub_1E58ED004()
{
  result = qword_1EE2CFD18;
  if (!qword_1EE2CFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD18);
  }

  return result;
}

unint64_t sub_1E58ED05C()
{
  result = qword_1EE2CFD28;
  if (!qword_1EE2CFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD28);
  }

  return result;
}

unint64_t sub_1E58ED0B4()
{
  result = qword_1EE2CFD30;
  if (!qword_1EE2CFD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD30);
  }

  return result;
}

uint64_t ThemeSelectionView.init(store:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  result = sub_1E5A2A654();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E58ED198(uint64_t *a1)
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
      MEMORY[0x1E6932DE0](3);
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
          if (*(v25 + 16) >= 3u)
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
      MEMORY[0x1E6932DE0](3);
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
          if (*(v35 + 16) >= 3u)
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

  sub_1E58C3420(v6);
  return 0;
}

uint64_t sub_1E58ED564(uint64_t *a1)
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
        sub_1E58C3420(v31);
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
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      v38 = v33;
LABEL_21:
      v39 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
    }

    while (*(*(v29 + 48) + 24 * (v39 | (v38 << 6)) + 16) != 3);
    v28 = 1;
    if (!*(v29 + 16))
    {
      goto LABEL_36;
    }

LABEL_25:
    v40 = *(v29 + 40);
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](3);
    sub_1E5A2BB74();
    v41 = sub_1E5A2C204();
    v42 = -1 << *(v29 + 32);
    v43 = v41 & ~v42;
    if (((*(v34 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
    {
LABEL_36:

      return v28;
    }

    v44 = ~v42;
    v45 = *(v29 + 48);
    while (1)
    {
      v46 = v45 + 24 * v43;
      if (*(v46 + 16) >= 3u)
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
        goto LABEL_36;
      }
    }

    return 0;
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

  v26 = *(*(v22 + 56) + (v23 << 6) + 48);

  v27 = sub_1E59E8F3C(v16, v17, v26);

  if (v27)
  {
    goto LABEL_8;
  }

  return 1;
}

uint64_t sub_1E58EDA74(uint64_t a1)
{
  v3 = *(v1 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v11[0] = v9[0];
  v11[1] = v9[1];
  v11[2] = v9[2];
  v11[3] = v10;

  sub_1E58F011C(v11);

  v4 = sub_1E58F0D98(v10, a1);

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_1E5A206A8(v4[2], 0);
  v7 = sub_1E5A2297C(v9, (v6 + 4), v5, v4);

  sub_1E58D26C0();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:
    v6 = MEMORY[0x1E69E7CC0];
  }

  *&v9[0] = v6;
  sub_1E58F0170(v9);

  return *&v9[0];
}

uint64_t sub_1E58EDBDC(uint64_t a1)
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
  v12 = ceil(*(a1 + 16) / 3.0);
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

uint64_t sub_1E58EDD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *v2;
  v10 = v2[1];
  v19 = *v2;
  v20 = v10;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  if (sub_1E58ED564(&v14))
  {
    result = sub_1E5A2ABA4();
    v12 = MEMORY[0x1E697FE70];
    *(a2 + 24) = MEMORY[0x1E697FE80];
    *(a2 + 32) = v12;
    *a2 = result;
  }

  else
  {
    v19 = v9;
    v20 = v10;
    v14 = v4;
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    if (sub_1E58ED198(&v14))
    {
      result = sub_1E5A2B404();
    }

    else
    {
      result = sub_1E5A2B424();
    }

    v13 = MEMORY[0x1E6981568];
    *(a2 + 24) = MEMORY[0x1E69815C0];
    *(a2 + 32) = v13;
    *a2 = result;
  }

  return result;
}

uint64_t ThemeSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC660, &qword_1E5A317F8);
  v34 = *(v35 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v4 = v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC668, &qword_1E5A31800);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v33 - v8;
  v10 = type metadata accessor for EditItem();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v15 = v1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v17 = &v14[*(v11 + 44)];
  v19 = *v17;
  v18 = v17[1];

  sub_1E58F00BC(v14, type metadata accessor for EditItem);
  if (!v18)
  {
    goto LABEL_7;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v20 = v39[0];
  if (!*(v39[0] + 16))
  {

    goto LABEL_6;
  }

  v21 = sub_1E58EF508(v19, v18);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_6:

LABEL_7:
    v31 = 1;
    v30 = v36;
    return (*(v6 + 56))(v30, v31, 1, v5);
  }

  v24 = *(*(v20 + 56) + (v21 << 6) + 48);

  v33[3] = v33;
  MEMORY[0x1EEE9AC00](v25);
  v33[-4] = v16;
  v33[-3] = v15;
  v33[-2] = v24;
  sub_1E58EF238(v39);
  v33[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC670, &unk_1E5A37DC0);
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC678, &unk_1E5A31850);
  sub_1E58EF58C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC688, &qword_1E5A31860);
  v27 = sub_1E58CD164(&qword_1ECFFC690, &qword_1ECFFC688, &qword_1E5A31860);
  v37 = v26;
  v38 = v27;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B714();

  sub_1E5A2ADF4();
  sub_1E58EF618();
  v28 = v35;
  sub_1E5A2B134();
  (*(v34 + 8))(v4, v28);
  v39[0] = sub_1E5A2B414();
  *&v9[*(v5 + 36)] = sub_1E5A2B634();
  v29 = v36;
  sub_1E58F0054(v9, v36, &qword_1ECFFC668, &qword_1E5A31800);
  v30 = v29;
  v31 = 0;
  return (*(v6 + 56))(v30, v31, 1, v5);
}

uint64_t sub_1E58EE324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = sub_1E5A2AAC4();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC688, &qword_1E5A31860);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  sub_1E5A2AD64();
  v18 = a1;
  v19 = a2;
  v20 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC6C8, &qword_1E5A31928);
  sub_1E58CD164(&qword_1ECFFC6D0, &qword_1ECFFC6C8, &qword_1E5A31928);
  sub_1E5A2A4C4();
  sub_1E5A2AAB4();
  LOBYTE(a2) = sub_1E5A2AD64();
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != a2)
  {
    sub_1E5A2AD74();
  }

  sub_1E58CD164(&qword_1ECFFC690, &qword_1ECFFC688, &qword_1E5A31860);
  sub_1E5A2B234();
  (*(v6 + 8))(v9, v17);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1E58EE5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E5A2AB24();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1E58EDA74(a3);
  sub_1E58EDBDC(v6);

  sub_1E5A2A934();
  sub_1E58EFAFC();
  sub_1E5A2C264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC6D8, &unk_1E5A31930);
  sub_1E58EFB54();
  return sub_1E5A2B824();
}

uint64_t sub_1E58EE70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E58EDA74(a3);
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC710, &unk_1E5A31970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC718, &unk_1E5A342A0);
  sub_1E58CD164(&qword_1ECFFC720, &qword_1ECFFC710, &unk_1E5A31970);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6E8, &unk_1E5A34260);
  sub_1E58EFC30();
  sub_1E58EFCE8();
  swift_getOpaqueTypeConformance2();
  return sub_1E5A2B6E4();
}

uint64_t sub_1E58EE894(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC6E8, &unk_1E5A34260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-v8];
  v10 = a1[1];
  v22 = *a1;
  v23 = v10;
  v24 = *(a1 + 8);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v12;
  *(v11 + 64) = *(a1 + 8);
  v15 = a2;
  v16 = a3;
  v17 = &v22;

  sub_1E58EFD5C(&v22, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC728, &unk_1E5A31980);
  sub_1E58EFDB8();
  sub_1E5A2B574();
  v18 = a2;
  v19 = a3;
  v20[0] = v22;
  v20[1] = v23;
  v21 = v24;
  v9[*(v6 + 36)] = (sub_1E58ED564(v20) & 1) == 0;
  sub_1E58EFC30();
  sub_1E58EFCE8();
  sub_1E5A2B0C4();
  return sub_1E589C034(v9);
}

uint64_t sub_1E58EEA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(a3 + 32);
  v7 = type metadata accessor for WorkoutPlanCreationAction();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v13[40] = 1;
  *v10 = 7;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = 0;
  v10[32] = 1;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 152) = v12;
  *(v10 + 21) = v4;
  *(v10 + 22) = v5;
  *(v10 + 46) = v6;
  swift_storeEnumTagMultiPayload();
  sub_1E58EFD5C(a3, v13);
  sub_1E5A2B954();
  return sub_1E58F00BC(v10, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E58EEB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v61 = a2;
  v60 = a1;
  v66 = a4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC778, &unk_1E5A319D0);
  v64 = *(v65 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v57 = v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC750, &unk_1E5A31990);
  v10 = *(v9 - 8);
  v62 = v9 - 8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC740, &unk_1E5A342B0);
  v14 = *(v13 - 8);
  v63 = v13 - 8;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v59 = v56 - v16;
  v71 = a1;
  v72 = v5;
  v17 = *(a3 + 16);
  v68 = *a3;
  v69 = v17;
  v70 = *(a3 + 32);
  sub_1E58EDD84(&v68, &v73);
  v56[2] = v75;
  v56[1] = __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
  v58 = a3;
  v18 = *(a3 + 24);
  *&v68 = *(a3 + 16);
  *(&v68 + 1) = v18;
  sub_1E58D1C80();

  v19 = sub_1E5A2AFD4();
  v21 = v20;
  v23 = v22;
  sub_1E5A2AED4();
  sub_1E5A2AE24();

  v24 = sub_1E5A2AFA4();
  v26 = v25;
  LOBYTE(v5) = v27;

  sub_1E58B3C9C(v19, v21, v23 & 1);

  v28 = sub_1E5A2AF84();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1E58B3C9C(v24, v26, v5 & 1);

  *&v68 = v28;
  *(&v68 + 1) = v30;
  LOBYTE(v69) = v32 & 1;
  *(&v69 + 1) = v34;
  sub_1E5A2AD64();
  sub_1E5A2B7E4();
  v35 = v57;
  sub_1E5A2B274();
  sub_1E58B3C9C(v28, v30, v32 & 1);

  __swift_destroy_boxed_opaque_existential_1(&v73);
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  v36 = v67;
  (*(v64 + 32))(v67, v35, v65);
  v37 = (v36 + *(v62 + 44));
  v38 = v78;
  v37[4] = v77;
  v37[5] = v38;
  v37[6] = v79;
  v39 = v74;
  *v37 = v73;
  v37[1] = v39;
  v40 = v76;
  v37[2] = v75;
  v37[3] = v40;
  v65 = sub_1E5A2B7E4();
  v42 = v41;
  v43 = v59;
  v44 = &v59[*(v63 + 44)];
  sub_1E58EF12C(v60, v61, v58, &v68);
  v45 = v68;
  LOBYTE(v28) = BYTE8(v68);
  v46 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC780, &unk_1E5A342F0) + 36)];
  v47 = *MEMORY[0x1E697F468];
  v48 = sub_1E5A2A9B4();
  v49 = *(*(v48 - 8) + 104);
  v49(v46, v47, v48);
  *&v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)] = 256;
  *v44 = v45;
  v44[8] = v28;
  v50 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC760, &qword_1E5A342C0) + 36)];
  *v50 = v65;
  v50[1] = v42;
  v51 = v43;
  sub_1E58F0054(v67, v43, &qword_1ECFFC750, &unk_1E5A31990);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC728, &unk_1E5A31980);
  v53 = v66;
  v54 = v66 + *(v52 + 36);
  v49(v54, v47, v48);
  *(v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC770, &unk_1E5A319A0) + 36)) = 0;
  return sub_1E58F0054(v51, v53, &qword_1ECFFC740, &unk_1E5A342B0);
}

uint64_t sub_1E58EF12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v11 = a2;
  v5 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v5;
  v9 = *(a3 + 32);
  if (sub_1E58ED198(v8))
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED026498;
    LOBYTE(v11) = 0;
  }

  else
  {
    if (qword_1ECFFB488 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED0264A8;
    LOBYTE(v11) = 1;
  }

  result = sub_1E5A2AA74();
  v7 = BYTE8(v8[0]);
  *a4 = *&v8[0];
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_1E58EF238@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_1E58EF458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  MEMORY[0x1E6932DE0](a2);
  MEMORY[0x1E6932DE0](a3);
  MEMORY[0x1E6932DE0](a4);
  v10 = sub_1E5A2C204();

  return sub_1E58EF938(a1, a2, a3, a4, v10);
}

unint64_t sub_1E58EF508(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  v6 = sub_1E5A2C204();

  return sub_1E58EF9BC(a1, a2, v6);
}

unint64_t sub_1E58EF58C()
{
  result = qword_1ECFFC680;
  if (!qword_1ECFFC680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC670, &unk_1E5A37DC0);
    sub_1E58B1D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC680);
  }

  return result;
}

unint64_t sub_1E58EF618()
{
  result = qword_1ECFFC698;
  if (!qword_1ECFFC698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC660, &qword_1E5A317F8);
    sub_1E58EF58C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC688, &qword_1E5A31860);
    sub_1E58CD164(&qword_1ECFFC690, &qword_1ECFFC688, &qword_1E5A31860);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC698);
  }

  return result;
}

unint64_t sub_1E58EF754()
{
  result = qword_1ECFFC6A0;
  if (!qword_1ECFFC6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6A8, &qword_1E5A318F8);
    sub_1E58EF7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC6A0);
  }

  return result;
}

unint64_t sub_1E58EF7D8()
{
  result = qword_1ECFFC6B0;
  if (!qword_1ECFFC6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC668, &qword_1E5A31800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC660, &qword_1E5A317F8);
    sub_1E58EF618();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFC6B8, &qword_1ECFFC6C0, &qword_1E5A31900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC6B0);
  }

  return result;
}

unint64_t sub_1E58EF8CC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  v4 = sub_1E5A2C204();

  return sub_1E58EFA74(a1, v4);
}

unint64_t sub_1E58EF938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    do
    {
      v10 = (*(v5 + 48) + 32 * result);
      v11 = *v10;
      v12 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      if (v11 == a1 && v12 == a2 && v14 == a3 && v13 == a4)
      {
        break;
      }

      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E58EF9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E5A2C114())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E58EFA74(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E58EFAFC()
{
  result = qword_1EE2CFAF0;
  if (!qword_1EE2CFAF0)
  {
    sub_1E5A2AB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFAF0);
  }

  return result;
}

unint64_t sub_1E58EFB54()
{
  result = qword_1ECFFC6E0;
  if (!qword_1ECFFC6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6D8, &unk_1E5A31930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6E8, &unk_1E5A34260);
    sub_1E58EFC30();
    sub_1E58EFCE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC6E0);
  }

  return result;
}

unint64_t sub_1E58EFC30()
{
  result = qword_1ECFFC6F0;
  if (!qword_1ECFFC6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6E8, &unk_1E5A34260);
    sub_1E58CD164(&qword_1ECFFC6F8, &qword_1ECFFC700, &qword_1E5A31940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC6F0);
  }

  return result;
}

unint64_t sub_1E58EFCE8()
{
  result = qword_1ECFFC708;
  if (!qword_1ECFFC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC708);
  }

  return result;
}

unint64_t sub_1E58EFDB8()
{
  result = qword_1ECFFC730;
  if (!qword_1ECFFC730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC728, &unk_1E5A31980);
    sub_1E58EFE70();
    sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC730);
  }

  return result;
}

unint64_t sub_1E58EFE70()
{
  result = qword_1ECFFC738;
  if (!qword_1ECFFC738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC740, &unk_1E5A342B0);
    sub_1E58EFF28();
    sub_1E58CD164(&qword_1ECFFC758, &qword_1ECFFC760, &qword_1E5A342C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC738);
  }

  return result;
}

unint64_t sub_1E58EFF28()
{
  result = qword_1ECFFC748;
  if (!qword_1ECFFC748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC750, &unk_1E5A31990);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC748);
  }

  return result;
}

uint64_t sub_1E58EFFE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58F0054(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E58F00BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E58F0170(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A2267C(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1E5A2C0E4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 12);
          if (v13 >= *(v12 + 2))
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 4);
          v17 = *(v12 + 5);
          v18 = *(v12 - 8);
          *(v12 + 1) = *(v12 - 24);
          *(v12 + 2) = v18;
          *(v12 + 6) = *(v12 + 1);
          *(v12 - 3) = v14;
          *(v12 - 2) = v15;
          *(v12 - 1) = v16;
          *v12 = v17;
          *(v12 + 2) = v13;
          v12 -= 40;
        }

        while (!__CFADD__(v11++, 1));
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

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1E58F02CC(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1E58F02CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v97 = *v96;
    if (!*v96)
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

    v88 = (v7 + 16);
    v89 = *(v7 + 16);
    if (v89 >= 2)
    {
      while (*a3)
      {
        v90 = (v7 + 16 * v89);
        v91 = *v90;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_1E58F089C((*a3 + 40 * *v90), (*a3 + 40 * *v92), *a3 + 40 * v93, v97);
        if (v4)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_114;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_115;
        }

        *v90 = v91;
        v90[1] = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_116;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        if (v89 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v95 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6 + 32);
      v10 = *a3 + 40 * v8;
      v11 = *(v10 + 32);
      v12 = v8 + 2;
      v13 = (v10 + 72);
      while (v5 != v12)
      {
        v14 = *v13;
        v15 = v13[10];
        v13 += 10;
        ++v12;
        if (v9 < v11 == v15 >= v14)
        {
          v6 = v12 - 1;
          if (v9 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v11)
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
        v16 = 40 * v6 - 16;
        v17 = 40 * v8 + 32;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v28 + v17);
            v21 = *(v28 + v17 - 32);
            v22 = (v28 + v16);
            v23 = *(v20 - 2);
            v24 = *(v20 - 1);
            v25 = *v20;
            v26 = v22[1];
            v27 = *(v22 - 1);
            *(v20 - 2) = *(v22 - 3);
            *(v20 - 1) = v27;
            *v20 = v26;
            *(v22 - 3) = v21;
            *(v22 - 1) = v23;
            *v22 = v24;
            *(v22 + 2) = v25;
          }

          ++v19;
          v16 -= 40;
          v17 += 40;
        }

        while (v19 < v18);
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

    v41 = *(v7 + 16);
    v40 = *(v7 + 24);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_1E58E6258((v40 > 1), v41 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v42;
    v43 = v7 + 32;
    v44 = (v7 + 32 + 16 * v41);
    *v44 = v8;
    v44[1] = v6;
    v97 = *v96;
    if (!*v96)
    {
      goto LABEL_127;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v7 + 32);
          v47 = *(v7 + 40);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_57:
          if (v49)
          {
            goto LABEL_104;
          }

          v62 = (v7 + 16 * v42);
          v64 = *v62;
          v63 = v62[1];
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_106;
          }

          v68 = (v43 + 16 * v45);
          v70 = *v68;
          v69 = v68[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_111;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v42 < 2)
        {
          goto LABEL_112;
        }

        v72 = (v7 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_72:
        if (v67)
        {
          goto LABEL_108;
        }

        v75 = (v43 + 16 * v45);
        v77 = *v75;
        v76 = v75[1];
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_110;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v45 - 1 >= v42)
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

        v83 = (v43 + 16 * (v45 - 1));
        v84 = *v83;
        v85 = (v43 + 16 * v45);
        v86 = v85[1];
        sub_1E58F089C((*a3 + 40 * *v83), (*a3 + 40 * *v85), *a3 + 40 * v86, v97);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_99;
        }

        if (v45 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *(v7 + 16);
        if (v45 >= v87)
        {
          goto LABEL_101;
        }

        v42 = v87 - 1;
        result = memmove((v43 + 16 * v45), v85 + 2, 16 * (v87 - 1 - v45));
        *(v7 + 16) = v87 - 1;
        if (v87 <= 2)
        {
          goto LABEL_3;
        }
      }

      v50 = v43 + 16 * v42;
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_102;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_103;
      }

      v57 = (v7 + 16 * v42);
      v59 = *v57;
      v58 = v57[1];
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_105;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_107;
      }

      if (v61 >= v53)
      {
        v79 = (v43 + 16 * v45);
        v81 = *v79;
        v80 = v79[1];
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v95;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 40 * v6 - 40;
  v31 = v8 - v6;
LABEL_30:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = *(v33 + 72);
    if (v34 >= *(v33 + 32))
    {
LABEL_29:
      ++v6;
      v30 += 40;
      --v31;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v33 + 40);
    v36 = *(v33 + 16);
    *(v33 + 40) = *v33;
    v37 = *(v33 + 56);
    v38 = *(v33 + 64);
    *(v33 + 56) = v36;
    *(v33 + 72) = *(v33 + 32);
    *v33 = v35;
    *(v33 + 16) = v37;
    *(v33 + 24) = v38;
    *(v33 + 32) = v34;
    v33 -= 40;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_1E58F089C(char *__dst, char *__src, unint64_t a3, char *a4)
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
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
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

      if (*(v6 + 8) < *(v4 + 8))
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 40;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 40;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 40 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v19 = (v5 + 40);
      if (*(v13 - 2) < *(v6 - 2))
      {
        v23 = v6 - 40;
        if (v19 != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v24;
          *(v5 + 16) = v25;
        }

        if (v13 <= v4 || (v6 -= 40, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v20 = v13 - 40;
      if (v19 != v13)
      {
        v21 = *v20;
        v22 = *(v13 - 24);
        *(v5 + 32) = *(v13 - 1);
        *v5 = v21;
        *(v5 + 16) = v22;
      }

      v5 -= 40;
      v13 -= 40;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v26 = 40 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26);
  }

  return 1;
}

void *sub_1E58F0AC8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1E58F0B64(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1E58F0B64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v14 = (*(a3 + 48) + 40 * v28);
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

          return sub_1E59E0514(v27, a2, v29, a3);
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

void *sub_1E58F0D98(uint64_t a1, uint64_t a2)
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
        v21 = (v20 + 40 * v19);
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
            v32 = sub_1E59E0514(v40, v39, v43, v5);

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

  v36 = sub_1E58F0AC8(v35, v8, v5, a2);

  MEMORY[0x1E6933430](v35, -1, -1);

  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t sub_1E58F117C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5A2C114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E58F1200(uint64_t a1)
{
  v2 = sub_1E58F13C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F123C(uint64_t a1)
{
  v2 = sub_1E58F13C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlanCompletionState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC790, &qword_1E5A31A10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F13C4();
  sub_1E5A2C224();
  v12 = v8;
  sub_1E58F1418();
  sub_1E5A2C0B4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E58F13C4()
{
  result = qword_1ECFFC798;
  if (!qword_1ECFFC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC798);
  }

  return result;
}

unint64_t sub_1E58F1418()
{
  result = qword_1ECFFC7A0;
  if (!qword_1ECFFC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7A0);
  }

  return result;
}

uint64_t PlanCompletionState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC7A8, &qword_1E5A31A18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F13C4();
  sub_1E5A2C214();
  if (!v2)
  {
    sub_1E58F15D8();
    sub_1E5A2BFE4();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E58F15D8()
{
  result = qword_1ECFFC7B0;
  if (!qword_1ECFFC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7B0);
  }

  return result;
}

unint64_t sub_1E58F1688()
{
  result = qword_1ECFFC7B8;
  if (!qword_1ECFFC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7B8);
  }

  return result;
}

unint64_t sub_1E58F16E0()
{
  result = qword_1ECFFC7C0;
  if (!qword_1ECFFC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7C0);
  }

  return result;
}

unint64_t sub_1E58F1738()
{
  result = qword_1ECFFC7C8;
  if (!qword_1ECFFC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7C8);
  }

  return result;
}

uint64_t WorkoutPlanScheduledItem.filterProperties.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t type metadata accessor for WorkoutPlanScheduledItem()
{
  result = qword_1ECFFC830;
  if (!qword_1ECFFC830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutPlanScheduledItem.identifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutPlanScheduledItem() + 24);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WorkoutPlanScheduledItem.modalityIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutPlanScheduledItem() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WorkoutPlanScheduledItem.modalityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WorkoutPlanScheduledItem() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WorkoutPlanScheduledItem.init(identifier:modalityIdentifier:duration:filterProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for WorkoutPlanScheduledItem();
  v13 = *(v12 + 24);
  v14 = sub_1E5A29E74();
  result = (*(*(v14 - 8) + 32))(&a6[v13], a1, v14);
  v16 = &a6[*(v12 + 28)];
  *v16 = a2;
  *(v16 + 1) = a3;
  *a6 = a4;
  *(a6 + 1) = a5;
  return result;
}

unint64_t sub_1E58F1A9C()
{
  v1 = 0x6E6F697461727564;
  v2 = 0x696669746E656469;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1E58F1B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E58F2F5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58F1B5C(uint64_t a1)
{
  v2 = sub_1E58F1F34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F1B98(uint64_t a1)
{
  v2 = sub_1E58F1F34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s18FitnessWorkoutPlan0bC13ScheduledItemV10identifier10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlanScheduledItem() + 24);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E58F1C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1E5A29E74();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t WorkoutPlanScheduledItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC7D0, &unk_1E5A31BF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F1F34();
  sub_1E5A2C224();
  v11 = *v3;
  v20 = 0;
  sub_1E5A2C094();
  if (!v2)
  {
    v19 = v3[1];
    v18[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC7E0, &qword_1E5A42810);
    sub_1E58F2438(&qword_1ECFFC7E8, sub_1E58F1F88);
    sub_1E5A2C0B4();
    v12 = type metadata accessor for WorkoutPlanScheduledItem();
    v13 = *(v12 + 24);
    v18[14] = 2;
    sub_1E5A29E74();
    sub_1E58F2B48(&qword_1ECFFC7F8, MEMORY[0x1E69695A8]);
    sub_1E5A2C0B4();
    v14 = (v3 + *(v12 + 28));
    v15 = *v14;
    v16 = v14[1];
    v18[13] = 3;
    sub_1E5A2C064();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E58F1F34()
{
  result = qword_1ECFFC7D8;
  if (!qword_1ECFFC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7D8);
  }

  return result;
}

unint64_t sub_1E58F1F88()
{
  result = qword_1ECFFC7F0;
  if (!qword_1ECFFC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7F0);
  }

  return result;
}

uint64_t WorkoutPlanScheduledItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v31 = sub_1E5A29E74();
  v29 = *(v31 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC800, &qword_1E5A31C00);
  v30 = *(v32 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v25 - v7;
  v9 = type metadata accessor for WorkoutPlanScheduledItem();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F1F34();
  v14 = v33;
  sub_1E5A2C214();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v5;
  v33 = a1;
  v17 = v30;
  v16 = v31;
  v38 = 0;
  *v12 = sub_1E5A2BFC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC7E0, &qword_1E5A42810);
  v37 = 1;
  sub_1E58F2438(&qword_1ECFFC808, sub_1E58F24B0);
  sub_1E5A2BFE4();
  v12[1] = v34;
  v36 = 2;
  sub_1E58F2B48(&qword_1ECFFC818, MEMORY[0x1E69695A8]);
  sub_1E5A2BFE4();
  v27 = v9;
  (*(v29 + 32))(v12 + *(v9 + 24), v15, v16);
  v35 = 3;
  v18 = v32;
  v19 = sub_1E5A2BF94();
  v26 = v20;
  v21 = v19;
  (*(v17 + 8))(v8, v18);
  v22 = v26;
  v23 = (v12 + *(v27 + 28));
  *v23 = v21;
  v23[1] = v22;
  sub_1E58F2504(v12, v28);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1E58F2568(v12);
}

uint64_t sub_1E58F2438(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC7E0, &qword_1E5A42810);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E58F24B0()
{
  result = qword_1ECFFC810;
  if (!qword_1ECFFC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC810);
  }

  return result;
}

uint64_t sub_1E58F2504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduledItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58F2568(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanScheduledItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutPlanScheduledItem.hash(into:)(__int128 *a1)
{
  v2 = v1;
  MEMORY[0x1E6932DE0](*v1);
  sub_1E58B87B8(a1, v1[1]);
  v4 = type metadata accessor for WorkoutPlanScheduledItem();
  v5 = *(v4 + 24);
  sub_1E5A29E74();
  sub_1E58F2B48(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  v6 = (v2 + *(v4 + 28));
  v7 = *v6;
  v8 = v6[1];

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanScheduledItem.hashValue.getter()
{
  v1 = v0;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v0);
  sub_1E58B87B8(v8, v0[1]);
  v2 = type metadata accessor for WorkoutPlanScheduledItem();
  v3 = *(v2 + 24);
  sub_1E5A29E74();
  sub_1E58F2B48(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  v4 = (v1 + *(v2 + 28));
  v5 = *v4;
  v6 = v4[1];
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E58F279C(uint64_t a1)
{
  v3 = v1;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v1);
  sub_1E58B87B8(v9, v1[1]);
  v4 = *(a1 + 24);
  sub_1E5A29E74();
  sub_1E58F2B48(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  v5 = (v3 + *(a1 + 28));
  v6 = *v5;
  v7 = v5[1];
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E58F2868(__int128 *a1, uint64_t a2)
{
  v4 = v2;
  MEMORY[0x1E6932DE0](*v2);
  sub_1E58B87B8(a1, v2[1]);
  v6 = *(a2 + 24);
  sub_1E5A29E74();
  sub_1E58F2B48(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  v7 = (v4 + *(a2 + 28));
  v8 = *v7;
  v9 = v7[1];

  return sub_1E5A2BB74();
}

uint64_t sub_1E58F2930(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v2);
  sub_1E58B87B8(v10, v2[1]);
  v5 = *(a2 + 24);
  sub_1E5A29E74();
  sub_1E58F2B48(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  v6 = (v4 + *(a2 + 28));
  v7 = *v6;
  v8 = v6[1];
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC13ScheduledItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((sub_1E58B4B48(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WorkoutPlanScheduledItem();
  v5 = *(v4 + 24);
  if ((sub_1E5A29E54() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 28);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1E5A2C114();
}

uint64_t sub_1E58F2B48(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E58F2BB8()
{
  sub_1E58F2C54();
  if (v0 <= 0x3F)
  {
    sub_1E5A29E74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E58F2C54()
{
  if (!qword_1ECFFC840)
  {
    sub_1E58F2CB0();
    v0 = sub_1E5A2BD24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECFFC840);
    }
  }
}

unint64_t sub_1E58F2CB0()
{
  result = qword_1ECFFC848;
  if (!qword_1ECFFC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC848);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutPlanScheduledItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutPlanScheduledItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E58F2E58()
{
  result = qword_1ECFFC850;
  if (!qword_1ECFFC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC850);
  }

  return result;
}

unint64_t sub_1E58F2EB0()
{
  result = qword_1ECFFC858;
  if (!qword_1ECFFC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC858);
  }

  return result;
}

unint64_t sub_1E58F2F08()
{
  result = qword_1ECFFC860;
  if (!qword_1ECFFC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC860);
  }

  return result;
}

uint64_t sub_1E58F2F5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5A46470 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A45E20 == a2)
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

uint64_t WorkoutPlanCreationFilterItem.identifier.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 40);
  if ((v4 - 2) < 6 || v4 == 0)
  {
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 8);
    sub_1E58BACE0(v2, v1, v3, v6, v7, v4);
    return v2;
  }

  else if (v4 == 1)
  {
    v10 = *(v0 + 16);
  }

  else
  {
    v11 = *v0;
    v12 = 0x7053747369747261;
    v13 = 0x576D6172676F7270;
    if (v11 != 6)
    {
      v13 = 0x6967736B6E616874;
    }

    v14 = 0x7261655977656ELL;
    if (v11 != 4)
    {
      v14 = 0x6564697270;
    }

    if (*v0 <= 5u)
    {
      v13 = v14;
    }

    v15 = 0x796164696C6F68;
    if (v11 != 2)
    {
      v15 = 0x77654E72616E756CLL;
    }

    if (*v0)
    {
      v12 = 0x6565776F6C6C6168;
    }

    if (*v0 > 1u)
    {
      v12 = v15;
    }

    if (*v0 <= 3u)
    {
      return v12;
    }

    else
    {
      return v13;
    }
  }

  return v1;
}

uint64_t sub_1E58F3278(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x75636F4679646F62;
    v6 = 0x6E656D7069757165;
    if (a1 != 2)
    {
      v6 = 0x7974696C61646F6DLL;
    }

    if (a1)
    {
      v5 = 0x6E6F697461727564;
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
    v1 = 0x656D656874;
    v2 = 0x72656E69617274;
    if (a1 != 7)
    {
      v2 = 0x7469617274;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E6547636973756DLL;
    if (a1 != 4)
    {
      v3 = 0x76654C6C6C696B73;
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

uint64_t sub_1E58F33AC(uint64_t a1)
{
  v2 = sub_1E58F4754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F33E8(uint64_t a1)
{
  v2 = sub_1E58F4754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F342C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E58F6E78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58F3460(uint64_t a1)
{
  v2 = sub_1E58F43B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F349C(uint64_t a1)
{
  v2 = sub_1E58F43B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F34D8(uint64_t a1)
{
  v2 = sub_1E58F46AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F3514(uint64_t a1)
{
  v2 = sub_1E58F46AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F3550(uint64_t a1)
{
  v2 = sub_1E58F4658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F358C(uint64_t a1)
{
  v2 = sub_1E58F4658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F35C8(uint64_t a1)
{
  v2 = sub_1E58F4604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F3604(uint64_t a1)
{
  v2 = sub_1E58F4604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F3640(uint64_t a1)
{
  v2 = sub_1E58F45B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F367C(uint64_t a1)
{
  v2 = sub_1E58F45B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F36B8(uint64_t a1)
{
  v2 = sub_1E58F455C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F36F4(uint64_t a1)
{
  v2 = sub_1E58F455C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F3730(uint64_t a1)
{
  v2 = sub_1E58F4508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F376C(uint64_t a1)
{
  v2 = sub_1E58F4508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F37A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5A2C114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E58F3838(uint64_t a1)
{
  v2 = sub_1E58F44B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F3874(uint64_t a1)
{
  v2 = sub_1E58F44B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F38B0(uint64_t a1)
{
  v2 = sub_1E58F440C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F38EC(uint64_t a1)
{
  v2 = sub_1E58F440C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationFilterItem.encode(to:)(void *a1)
{
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC868, &qword_1E5A31E50);
  v53 = *(v68 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v48 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC870, &qword_1E5A31E58);
  v52 = *(v66 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v48 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC878, &qword_1E5A31E60);
  v51 = *(v64 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v48 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC880, &qword_1E5A31E68);
  v50 = *(v62 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v48 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC888, &qword_1E5A31E70);
  v49 = *(v60 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v48 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC890, &qword_1E5A31E78);
  v57 = *(v72 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v48 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC898, &qword_1E5A31E80);
  v55 = *(v70 - 8);
  v15 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v48 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC8A0, &qword_1E5A31E88);
  v58 = *(v56 - 8);
  v17 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC8A8, &qword_1E5A31E90);
  v54 = *(v20 - 8);
  v21 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - v22;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC8B0, &qword_1E5A31E98);
  v74 = *(v77 - 8);
  v24 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v26 = &v48 - v25;
  v27 = v1[1];
  v76 = *v1;
  v73 = v27;
  v28 = v1[2];
  v29 = v1[3];
  v30 = v1[4];
  v31 = *(v1 + 40);
  v32 = a1;
  v34 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(v32, v34);
  sub_1E58F43B8();
  v75 = v26;
  sub_1E5A2C224();
  if (v31 <= 3)
  {
    v41 = v69;
    v40 = v70;
    v42 = v71;
    v43 = v72;
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        LOBYTE(v78) = 2;
        sub_1E58F4658();
        v44 = v77;
        v45 = v75;
        sub_1E5A2C024();
        sub_1E5A2C064();
        (*(v55 + 8))(v41, v40);
        return (*(v74 + 8))(v45, v44);
      }

      LOBYTE(v78) = 3;
      sub_1E58F4604();
      v37 = v77;
      v35 = v75;
      sub_1E5A2C024();
      sub_1E5A2C064();
      (*(v57 + 8))(v42, v43);
    }

    else if (v31)
    {
      LOBYTE(v78) = 1;
      sub_1E58F46AC();
      v37 = v77;
      v35 = v75;
      sub_1E5A2C024();
      v78 = v76;
      v79 = v73;
      v80 = v28;
      v81 = v29;
      v82 = v30;
      sub_1E58F4700();
      v47 = v56;
      sub_1E5A2C0B4();
      (*(v58 + 8))(v19, v47);
    }

    else
    {
      LOBYTE(v78) = 0;
      sub_1E58F4754();
      v37 = v77;
      v35 = v75;
      sub_1E5A2C024();
      sub_1E5A2C064();
      (*(v54 + 8))(v23, v20);
    }
  }

  else
  {
    if (v31 <= 5)
    {
      v35 = v75;
      if (v31 == 4)
      {
        LOBYTE(v78) = 4;
        sub_1E58F45B0();
        v36 = v59;
        v37 = v77;
        sub_1E5A2C024();
        v38 = v60;
        sub_1E5A2C064();
        v39 = &v81;
      }

      else
      {
        LOBYTE(v78) = 5;
        sub_1E58F455C();
        v36 = v61;
        v37 = v77;
        sub_1E5A2C024();
        v38 = v62;
        sub_1E5A2C064();
        v39 = &v82;
      }
    }

    else
    {
      v35 = v75;
      if (v31 == 6)
      {
        LOBYTE(v78) = 6;
        sub_1E58F4508();
        v36 = v63;
        v37 = v77;
        sub_1E5A2C024();
        v38 = v64;
        sub_1E5A2C064();
        v39 = &v83;
      }

      else if (v31 == 7)
      {
        LOBYTE(v78) = 7;
        sub_1E58F44B4();
        v36 = v65;
        v37 = v77;
        sub_1E5A2C024();
        v38 = v66;
        sub_1E5A2C064();
        v39 = &v84;
      }

      else
      {
        LOBYTE(v78) = 8;
        sub_1E58F440C();
        v36 = v67;
        v37 = v77;
        sub_1E5A2C024();
        LOBYTE(v78) = v76;
        sub_1E58F4460();
        v38 = v68;
        sub_1E5A2C0B4();
        v39 = &v85;
      }
    }

    (*(*(v39 - 32) + 8))(v36, v38);
  }

  return (*(v74 + 8))(v35, v37);
}

unint64_t sub_1E58F43B8()
{
  result = qword_1ECFFC8B8;
  if (!qword_1ECFFC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8B8);
  }

  return result;
}

unint64_t sub_1E58F440C()
{
  result = qword_1ECFFC8C0;
  if (!qword_1ECFFC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8C0);
  }

  return result;
}

unint64_t sub_1E58F4460()
{
  result = qword_1ECFFC8C8;
  if (!qword_1ECFFC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8C8);
  }

  return result;
}

unint64_t sub_1E58F44B4()
{
  result = qword_1ECFFC8D0;
  if (!qword_1ECFFC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8D0);
  }

  return result;
}

unint64_t sub_1E58F4508()
{
  result = qword_1ECFFC8D8;
  if (!qword_1ECFFC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8D8);
  }

  return result;
}

unint64_t sub_1E58F455C()
{
  result = qword_1ECFFC8E0;
  if (!qword_1ECFFC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8E0);
  }

  return result;
}

unint64_t sub_1E58F45B0()
{
  result = qword_1ECFFC8E8;
  if (!qword_1ECFFC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8E8);
  }

  return result;
}

unint64_t sub_1E58F4604()
{
  result = qword_1ECFFC8F0;
  if (!qword_1ECFFC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8F0);
  }

  return result;
}

unint64_t sub_1E58F4658()
{
  result = qword_1ECFFC8F8;
  if (!qword_1ECFFC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8F8);
  }

  return result;
}

unint64_t sub_1E58F46AC()
{
  result = qword_1ECFFC900;
  if (!qword_1ECFFC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC900);
  }

  return result;
}

unint64_t sub_1E58F4700()
{
  result = qword_1ECFFC908;
  if (!qword_1ECFFC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC908);
  }

  return result;
}

unint64_t sub_1E58F4754()
{
  result = qword_1ECFFC910;
  if (!qword_1ECFFC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC910);
  }

  return result;
}

uint64_t WorkoutPlanCreationFilterItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC918, &qword_1E5A31EA0);
  v4 = *(v3 - 8);
  v129 = v3;
  v130 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v133 = &v109[-v6];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC920, &qword_1E5A31EA8);
  v128 = *(v127 - 8);
  v7 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v132 = &v109[-v8];
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC928, &qword_1E5A31EB0);
  v126 = *(v125 - 8);
  v9 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v137 = &v109[-v10];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC930, &qword_1E5A31EB8);
  v124 = *(v123 - 8);
  v11 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v136 = &v109[-v12];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC938, &qword_1E5A31EC0);
  v121 = *(v122 - 8);
  v13 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v135 = &v109[-v14];
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC940, &qword_1E5A31EC8);
  v119 = *(v120 - 8);
  v15 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v131 = &v109[-v16];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC948, &qword_1E5A31ED0);
  v117 = *(v118 - 8);
  v17 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v134 = &v109[-v18];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC950, &qword_1E5A31ED8);
  v115 = *(v116 - 8);
  v19 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v21 = &v109[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC958, &qword_1E5A31EE0);
  v114 = *(v22 - 8);
  v23 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v109[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC960, &unk_1E5A31EE8);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v109[-v29];
  v32 = a1[3];
  v31 = a1[4];
  v139 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1E58F43B8();
  v33 = v148;
  sub_1E5A2C214();
  v148 = v33;
  if (v33)
  {
    goto LABEL_13;
  }

  v34 = v25;
  v111 = v22;
  v112 = v21;
  v35 = v134;
  v36 = v135;
  v38 = v136;
  v37 = v137;
  v113 = v27;
  v39 = v138;
  v40 = sub_1E5A2C004();
  v41 = (2 * *(v40 + 16)) | 1;
  v144 = v40;
  v145 = v40 + 32;
  v146 = 0;
  v147 = v41;
  v42 = sub_1E58BC5AC();
  if (v42 == 9 || v146 != v147 >> 1)
  {
    v51 = sub_1E5A2BE84();
    v52 = v30;
    v53 = swift_allocError();
    v54 = v26;
    v56 = v55;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v56 = &type metadata for WorkoutPlanCreationFilterItem;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v51 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v51);
    v148 = v53;
    swift_willThrow();
    (*(v113 + 8))(v52, v54);
    goto LABEL_12;
  }

  v110 = v42;
  if (v42 <= 3u)
  {
    if (v42 > 1u)
    {
      if (v42 == 2)
      {
        LOBYTE(v140) = 2;
        sub_1E58F4658();
        v69 = v148;
        sub_1E5A2BF44();
        v148 = v69;
        if (!v69)
        {
          v70 = v118;
          v71 = sub_1E5A2BF94();
          v148 = 0;
          v96 = v71;
          v98 = v97;
          (*(v117 + 8))(v35, v70);
          (*(v113 + 8))(v30, v26);
          swift_unknownObjectRelease();
          v99 = v98;
LABEL_50:
          v100 = v96;
          v101 = 0;
          v102 = 0uLL;
          v58 = v139;
          v85 = v39;
          goto LABEL_51;
        }
      }

      else
      {
        LOBYTE(v140) = 3;
        sub_1E58F4604();
        v72 = v131;
        v84 = v148;
        sub_1E5A2BF44();
        v148 = v84;
        if (!v84)
        {
          v74 = v120;
          v75 = sub_1E5A2BF94();
          v148 = 0;
          v77 = &v148;
          goto LABEL_25;
        }
      }
    }

    else if (v42)
    {
      LOBYTE(v140) = 1;
      sub_1E58F46AC();
      v81 = v112;
      v82 = v148;
      sub_1E5A2BF44();
      v83 = v26;
      v148 = v82;
      if (!v82)
      {
        v85 = v39;
        v43 = v30;
        v44 = v83;
        sub_1E58F56BC();
        v91 = v116;
        v92 = v148;
        sub_1E5A2BFE4();
        v93 = v113;
        v148 = v92;
        if (!v92)
        {
          (*(v115 + 8))(v81, v91);
          (*(v93 + 8))(v43, v44);
          swift_unknownObjectRelease();
          v100 = v140;
          v99 = v141;
          v101 = v142;
          v102 = v143;
LABEL_48:
          v58 = v139;
LABEL_51:
          *v85 = v100;
          *(v85 + 8) = v99;
          *(v85 + 16) = v101;
          *(v85 + 24) = v102;
          *(v85 + 40) = v110;
          return __swift_destroy_boxed_opaque_existential_1(v58);
        }

        (*(v115 + 8))(v81, v91);
        goto LABEL_42;
      }
    }

    else
    {
      LOBYTE(v140) = 0;
      sub_1E58F4754();
      v60 = v34;
      v61 = v148;
      sub_1E5A2BF44();
      v148 = v61;
      if (!v61)
      {
        v62 = v111;
        v63 = sub_1E5A2BF94();
        v148 = 0;
        v104 = v63;
        v64 = v60;
        v65 = v30;
        v66 = v26;
        v68 = v67;
        (*(v114 + 8))(v64, v62);
        (*(v113 + 8))(v65, v66);
LABEL_45:
        swift_unknownObjectRelease();
        v99 = v68;
        v85 = v39;
        v100 = v104;
        v101 = 0;
LABEL_47:
        v102 = 0uLL;
        goto LABEL_48;
      }
    }

LABEL_29:
    (*(v113 + 8))(v30, v26);
    goto LABEL_12;
  }

  if (v42 <= 5u)
  {
    if (v42 == 4)
    {
      LOBYTE(v140) = 4;
      sub_1E58F45B0();
      v72 = v36;
      v73 = v148;
      sub_1E5A2BF44();
      v148 = v73;
      if (!v73)
      {
        v74 = v122;
        v75 = sub_1E5A2BF94();
        v148 = 0;
        v77 = &v149;
LABEL_25:
        v78 = *(*(v77 - 32) + 8);
        v96 = v75;
        v79 = v72;
LABEL_49:
        v106 = v30;
        v107 = v26;
        v108 = v76;
        v78(v79, v74);
        (*(v113 + 8))(v106, v107);
        swift_unknownObjectRelease();
        v99 = v108;
        goto LABEL_50;
      }
    }

    else
    {
      LOBYTE(v140) = 5;
      sub_1E58F455C();
      v88 = v148;
      sub_1E5A2BF44();
      v148 = v88;
      if (!v88)
      {
        v74 = v123;
        v89 = sub_1E5A2BF94();
        v148 = 0;
        v78 = *(v124 + 8);
        v96 = v89;
        v79 = v38;
        goto LABEL_49;
      }
    }

    goto LABEL_29;
  }

  v43 = v30;
  v44 = v26;
  if (v42 == 6)
  {
    LOBYTE(v140) = 6;
    sub_1E58F4508();
    v46 = v43;
    v80 = v148;
    sub_1E5A2BF44();
    v148 = v80;
    if (!v80)
    {
      v48 = v125;
      v90 = sub_1E5A2BF94();
      v148 = 0;
      v103 = *(v126 + 8);
      v104 = v90;
      v105 = v37;
      goto LABEL_44;
    }

    goto LABEL_27;
  }

  if (v42 != 7)
  {
    v85 = v39;
    LOBYTE(v140) = 8;
    sub_1E58F440C();
    v86 = v133;
    v87 = v148;
    sub_1E5A2BF44();
    v148 = v87;
    if (v87)
    {
      (*(v113 + 8))(v43, v44);
      goto LABEL_12;
    }

    sub_1E58F5668();
    v94 = v129;
    v95 = v148;
    sub_1E5A2BFE4();
    v93 = v113;
    v148 = v95;
    if (!v95)
    {
      (*(v130 + 8))(v86, v94);
      (*(v93 + 8))(v43, v44);
      swift_unknownObjectRelease();
      v99 = 0;
      v101 = 0;
      v100 = v140;
      goto LABEL_47;
    }

    (*(v130 + 8))(v86, v94);
LABEL_42:
    (*(v93 + 8))(v43, v44);
    goto LABEL_12;
  }

  LOBYTE(v140) = 7;
  sub_1E58F44B4();
  v45 = v132;
  v46 = v43;
  v47 = v148;
  sub_1E5A2BF44();
  v148 = v47;
  if (!v47)
  {
    v48 = v127;
    v49 = sub_1E5A2BF94();
    v148 = 0;
    v103 = *(v128 + 8);
    v104 = v49;
    v105 = v45;
LABEL_44:
    v68 = v50;
    v103(v105, v48);
    (*(v113 + 8))(v43, v44);
    goto LABEL_45;
  }

LABEL_27:
  (*(v113 + 8))(v46, v44);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v58 = v139;
  return __swift_destroy_boxed_opaque_existential_1(v58);
}

unint64_t sub_1E58F5668()
{
  result = qword_1ECFFC968;
  if (!qword_1ECFFC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC968);
  }

  return result;
}

unint64_t sub_1E58F56BC()
{
  result = qword_1ECFFC970;
  if (!qword_1ECFFC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC970);
  }

  return result;
}

uint64_t WorkoutPlanCreationFilterItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 40);
  if (v3 <= 3)
  {
    if (*(v0 + 40) > 1u)
    {
      if (v3 == 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      if (*(v0 + 40))
      {
        v6 = v0[3];
        v5 = v0[4];
        v7 = v0[2];
        MEMORY[0x1E6932DE0](1);
        return WorkoutPlanDuration.hash(into:)();
      }

      v4 = 0;
    }

    goto LABEL_20;
  }

  if (*(v0 + 40) <= 5u)
  {
    if (v3 == 4)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }

LABEL_20:
    MEMORY[0x1E6932DE0](v4);

    return sub_1E5A2BB74();
  }

  if (v3 == 6)
  {
    v4 = 6;
    goto LABEL_20;
  }

  if (v3 == 7)
  {
    v4 = 7;
    goto LABEL_20;
  }

  MEMORY[0x1E6932DE0](8);
  sub_1E5A2BB74();
}

uint64_t WorkoutPlanCreationFilterItem.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  sub_1E5A2C1B4();
  WorkoutPlanCreationFilterItem.hash(into:)();
  return sub_1E5A2C204();
}

uint64_t sub_1E58F5A2C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  sub_1E5A2C1B4();
  WorkoutPlanCreationFilterItem.hash(into:)();
  return sub_1E5A2C204();
}

uint64_t sub_1E58F5A8C()
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationFilterItem.hash(into:)();
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC18CreationFilterItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v39[0] = *a1;
  v39[1] = v2;
  v39[2] = v4;
  v39[3] = v5;
  v39[4] = v6;
  v40 = v7;
  v41 = v9;
  v42 = v8;
  v43 = v11;
  v44 = v10;
  v45 = v12;
  v46 = v13;
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v13 == 2)
        {
          v22 = v6;
          if (v3 == v9 && v2 == v8)
          {
            sub_1E58BACE0(v3, v2, v11, v10, v12, 2u);
            v15 = v3;
            v16 = v2;
            v17 = v4;
            v18 = v5;
            v19 = v22;
            v20 = 2;
            goto LABEL_42;
          }

          v36 = sub_1E5A2C114();
          sub_1E58BACE0(v9, v8, v11, v10, v12, 2u);
          v29 = v3;
          v30 = v2;
          v31 = v4;
          v32 = v5;
          v33 = v22;
          v34 = 2;
          goto LABEL_54;
        }
      }

      else if (v13 == 3)
      {
        v26 = v6;
        if (v3 == v9 && v2 == v8)
        {
          sub_1E58BACE0(v3, v2, v11, v10, v12, 3u);
          v15 = v3;
          v16 = v2;
          v17 = v4;
          v18 = v5;
          v19 = v26;
          v20 = 3;
          goto LABEL_42;
        }

        v36 = sub_1E5A2C114();
        sub_1E58BACE0(v9, v8, v11, v10, v12, 3u);
        v29 = v3;
        v30 = v2;
        v31 = v4;
        v32 = v5;
        v33 = v26;
        v34 = 3;
        goto LABEL_54;
      }
    }

    else
    {
      if (!v7)
      {
        if (!v13)
        {
          v21 = v6;
          if (v3 == v9 && v2 == v8)
          {
            sub_1E58BACE0(v3, v2, v11, v10, v12, 0);
            v15 = v3;
            v16 = v2;
            v17 = v4;
            v18 = v5;
            v19 = v21;
            v20 = 0;
            goto LABEL_42;
          }

          v36 = sub_1E5A2C114();
          sub_1E58BACE0(v9, v8, v11, v10, v12, 0);
          v29 = v3;
          v30 = v2;
          v31 = v4;
          v32 = v5;
          v33 = v21;
          v34 = 0;
LABEL_54:
          sub_1E58BACE0(v29, v30, v31, v32, v33, v34);
          sub_1E58F7160(v39);
          return v36 & 1;
        }

        goto LABEL_43;
      }

      if (v13 == 1)
      {
        v38[0] = v3;
        v38[1] = v2;
        v38[2] = v4;
        v38[3] = v5;
        v38[4] = v6;
        v37[0] = v9;
        v37[1] = v8;
        v37[2] = v11;
        v37[3] = v10;
        v37[4] = v12;
        v35 = v6;
        v25 = _s18FitnessWorkoutPlan0bC8DurationV2eeoiySbAC_ACtFZ_0(v38, v37);
        sub_1E58BACE0(v9, v8, v11, v10, v12, 1u);
        sub_1E58BACE0(v3, v2, v4, v5, v35, 1u);
        goto LABEL_37;
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  if (v7 <= 5)
  {
    if (v7 == 4)
    {
      if (v13 == 4)
      {
        v23 = v6;
        if (v3 == v9 && v2 == v8)
        {
          sub_1E58BACE0(v3, v2, v11, v10, v12, 4u);
          v15 = v3;
          v16 = v2;
          v17 = v4;
          v18 = v5;
          v19 = v23;
          v20 = 4;
          goto LABEL_42;
        }

        v36 = sub_1E5A2C114();
        sub_1E58BACE0(v9, v8, v11, v10, v12, 4u);
        v29 = v3;
        v30 = v2;
        v31 = v4;
        v32 = v5;
        v33 = v23;
        v34 = 4;
        goto LABEL_54;
      }
    }

    else if (v13 == 5)
    {
      v27 = v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_1E58BACE0(v3, v2, v11, v10, v12, 5u);
        v15 = v3;
        v16 = v2;
        v17 = v4;
        v18 = v5;
        v19 = v27;
        v20 = 5;
        goto LABEL_42;
      }

      v36 = sub_1E5A2C114();
      sub_1E58BACE0(v9, v8, v11, v10, v12, 5u);
      v29 = v3;
      v30 = v2;
      v31 = v4;
      v32 = v5;
      v33 = v27;
      v34 = 5;
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  if (v7 == 6)
  {
    if (v13 == 6)
    {
      v24 = v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_1E58BACE0(v3, v2, v11, v10, v12, 6u);
        v15 = v3;
        v16 = v2;
        v17 = v4;
        v18 = v5;
        v19 = v24;
        v20 = 6;
        goto LABEL_42;
      }

      v36 = sub_1E5A2C114();
      sub_1E58BACE0(v9, v8, v11, v10, v12, 6u);
      v29 = v3;
      v30 = v2;
      v31 = v4;
      v32 = v5;
      v33 = v24;
      v34 = 6;
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  if (v7 == 7)
  {
    if (v13 == 7)
    {
      v14 = v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_1E58BACE0(v3, v2, v11, v10, v12, 7u);
        v15 = v3;
        v16 = v2;
        v17 = v4;
        v18 = v5;
        v19 = v14;
        v20 = 7;
LABEL_42:
        sub_1E58BACE0(v15, v16, v17, v18, v19, v20);
        sub_1E58F7160(v39);
        v25 = 1;
        return v25 & 1;
      }

      v36 = sub_1E5A2C114();
      sub_1E58BACE0(v9, v8, v11, v10, v12, 7u);
      v29 = v3;
      v30 = v2;
      v31 = v4;
      v32 = v5;
      v33 = v14;
      v34 = 7;
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  if (v13 != 8)
  {
LABEL_44:
    sub_1E58BACE0(v9, v8, v11, v10, v12, v13);
    sub_1E58F7160(v39);
    v25 = 0;
    return v25 & 1;
  }

  v25 = sub_1E59E1534(v3, v9);
LABEL_37:
  sub_1E58F7160(v39);
  return v25 & 1;
}

unint64_t sub_1E58F6114()
{
  result = qword_1ECFFC978;
  if (!qword_1ECFFC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC978);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E58F6188(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 41))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 40);
  if (v3 >= 9)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E58F61C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E58F6210(uint64_t result, unsigned int a2)
{
  if (a2 > 8)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 9;
    LOBYTE(a2) = 9;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutPlanCreationFilterItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanCreationFilterItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E58F642C()
{
  result = qword_1ECFFC980;
  if (!qword_1ECFFC980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC980);
  }

  return result;
}

unint64_t sub_1E58F6484()
{
  result = qword_1ECFFC988;
  if (!qword_1ECFFC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC988);
  }

  return result;
}

unint64_t sub_1E58F64DC()
{
  result = qword_1ECFFC990;
  if (!qword_1ECFFC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC990);
  }

  return result;
}

unint64_t sub_1E58F6534()
{
  result = qword_1ECFFC998;
  if (!qword_1ECFFC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC998);
  }

  return result;
}

unint64_t sub_1E58F658C()
{
  result = qword_1ECFFC9A0;
  if (!qword_1ECFFC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9A0);
  }

  return result;
}

unint64_t sub_1E58F65E4()
{
  result = qword_1ECFFC9A8;
  if (!qword_1ECFFC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9A8);
  }

  return result;
}

unint64_t sub_1E58F663C()
{
  result = qword_1ECFFC9B0;
  if (!qword_1ECFFC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9B0);
  }

  return result;
}

unint64_t sub_1E58F6694()
{
  result = qword_1ECFFC9B8;
  if (!qword_1ECFFC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9B8);
  }

  return result;
}

unint64_t sub_1E58F66EC()
{
  result = qword_1ECFFC9C0;
  if (!qword_1ECFFC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9C0);
  }

  return result;
}

unint64_t sub_1E58F6744()
{
  result = qword_1ECFFC9C8;
  if (!qword_1ECFFC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9C8);
  }

  return result;
}

unint64_t sub_1E58F679C()
{
  result = qword_1ECFFC9D0;
  if (!qword_1ECFFC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9D0);
  }

  return result;
}

unint64_t sub_1E58F67F4()
{
  result = qword_1ECFFC9D8;
  if (!qword_1ECFFC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9D8);
  }

  return result;
}

unint64_t sub_1E58F684C()
{
  result = qword_1ECFFC9E0;
  if (!qword_1ECFFC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9E0);
  }

  return result;
}

unint64_t sub_1E58F68A4()
{
  result = qword_1ECFFC9E8;
  if (!qword_1ECFFC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9E8);
  }

  return result;
}

unint64_t sub_1E58F68FC()
{
  result = qword_1ECFFC9F0;
  if (!qword_1ECFFC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9F0);
  }

  return result;
}

unint64_t sub_1E58F6954()
{
  result = qword_1ECFFC9F8;
  if (!qword_1ECFFC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9F8);
  }

  return result;
}

unint64_t sub_1E58F69AC()
{
  result = qword_1ECFFCA00;
  if (!qword_1ECFFCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA00);
  }

  return result;
}

unint64_t sub_1E58F6A04()
{
  result = qword_1ECFFCA08;
  if (!qword_1ECFFCA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA08);
  }

  return result;
}

unint64_t sub_1E58F6A5C()
{
  result = qword_1ECFFCA10;
  if (!qword_1ECFFCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA10);
  }

  return result;
}

unint64_t sub_1E58F6AB4()
{
  result = qword_1ECFFCA18;
  if (!qword_1ECFFCA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA18);
  }

  return result;
}

unint64_t sub_1E58F6B0C()
{
  result = qword_1ECFFCA20;
  if (!qword_1ECFFCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA20);
  }

  return result;
}

unint64_t sub_1E58F6B64()
{
  result = qword_1ECFFCA28;
  if (!qword_1ECFFCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA28);
  }

  return result;
}

unint64_t sub_1E58F6BBC()
{
  result = qword_1ECFFCA30;
  if (!qword_1ECFFCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA30);
  }

  return result;
}

unint64_t sub_1E58F6C14()
{
  result = qword_1ECFFCA38;
  if (!qword_1ECFFCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA38);
  }

  return result;
}

unint64_t sub_1E58F6C6C()
{
  result = qword_1ECFFCA40;
  if (!qword_1ECFFCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA40);
  }

  return result;
}

unint64_t sub_1E58F6CC4()
{
  result = qword_1ECFFCA48;
  if (!qword_1ECFFCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA48);
  }

  return result;
}

unint64_t sub_1E58F6D1C()
{
  result = qword_1ECFFCA50;
  if (!qword_1ECFFCA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA50);
  }

  return result;
}

unint64_t sub_1E58F6D74()
{
  result = qword_1ECFFCA58;
  if (!qword_1ECFFCA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA58);
  }

  return result;
}

unint64_t sub_1E58F6DCC()
{
  result = qword_1ECFFCA60;
  if (!qword_1ECFFCA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA60);
  }

  return result;
}

unint64_t sub_1E58F6E24()
{
  result = qword_1ECFFCA68;
  if (!qword_1ECFFCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA68);
  }

  return result;
}

uint64_t sub_1E58F6E78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75636F4679646F62 && a2 == 0xE900000000000073;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6547636973756DLL && a2 == 0xEA00000000006572 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEA00000000006C65 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72656E69617274 && a2 == 0xE700000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7469617274 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}