uint64_t sub_2544C1374(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a3(isCurrentExecutor);
}

uint64_t sub_2544C1428()
{
  v1 = sub_25454A3B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = ((*v0 & 1) == 0) & v0[1];
  if (*v0 & 1) != 0 && (v0[1])
  {
    v7 = *(v0 + 9);
  }

  v8 = ((*v0 & 2) == 0) & v7;
  if ((v6 & 2) != 0 && v7)
  {
    v9 = *(type metadata accessor for MultiFactorVisibility.VisibilityState(0) + 32);
    (*(v2 + 104))(v5, *MEMORY[0x277CDD6B8], v1);
    v8 = sub_25454A3A4();
    (*(v2 + 8))(v5, v1);
  }

  result = ((v6 & 4) == 0) & v8;
  if (v6 & 4) != 0 && (v8)
  {
    return *(v0 + 10);
  }

  return result;
}

uint64_t sub_2544C1578@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25454AA94();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254549B54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_254549394();
  v12 = *(v41 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v41);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = type metadata accessor for RegisteredCameraView(0);
  v20 = v19[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB490, &qword_25454E488);
  sub_25454B7A4();
  v21 = *(v2 + 8);
  sub_254549B84();
  v22 = *(v8 + 16);
  v23 = v2 + v19[6];
  v42 = v11;
  v22(v11, v23, v7);
  v24 = v2 + v19[11];
  v25 = *v24;
  if (*(v24 + 8) == 1)
  {
    v43 = v25 & 1;
  }

  else
  {

    sub_25454BF84();
    v26 = sub_25454AED4();
    v37 = v8;
    v27 = v7;
    v28 = v26;
    sub_25454A1E4();

    v7 = v27;
    v8 = v37;
    v29 = v38;
    sub_25454AA84();
    swift_getAtKeyPath();
    sub_2544C46C0(v25, 0);
    (*(v39 + 8))(v29, v40);
    LOBYTE(v25) = v43;
  }

  v30 = *(v2 + v19[7]);
  v31 = *(v12 + 32);
  v32 = v18;
  v33 = v41;
  v31(a1, v32, v41);
  v34 = _s12RegistrationVMa();
  v31(a1 + v34[5], v16, v33);
  result = (*(v8 + 32))(a1 + v34[6], v42, v7);
  *(a1 + v34[7]) = v25 & 1;
  *(a1 + v34[8]) = v30;
  return result;
}

uint64_t sub_2544C18F0(uint64_t a1)
{
  v2 = sub_25454A2E4();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v2);
  v69 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for CameraViewRegistrar.Action(0);
  v5 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v66 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB548, &qword_25454E568);
  v63 = *(v65 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v53 - v8;
  v9 = _s12RegistrationVMa();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v68 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB550, &unk_25454E570);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D8, &unk_25454ECD0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v61 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v60 = &v53 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v53 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v53 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v53 - v32;
  v67 = a1;
  sub_2544C4654(a1, &v53 - v32, _s12RegistrationVMa);
  v58 = v10[7];
  v59 = v10 + 7;
  v58(v33, 0, 1, v9);
  v34 = *(type metadata accessor for RegisteredCameraView(0) + 36);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB498, &qword_25454E490);
  v57 = v34;
  sub_25454B7A4();
  v35 = *(v16 + 56);
  sub_2544AE240(v33, v19, &qword_27F5FB3D8, &unk_25454ECD0);
  sub_2544AE240(v31, &v19[v35], &qword_27F5FB3D8, &unk_25454ECD0);
  v36 = v10[6];
  if (v36(v19, 1, v9) == 1)
  {
    sub_2544AE150(v31, &qword_27F5FB3D8, &unk_25454ECD0);
    sub_2544AE150(v33, &qword_27F5FB3D8, &unk_25454ECD0);
    if (v36(&v19[v35], 1, v9) == 1)
    {
      return sub_2544AE150(v19, &qword_27F5FB3D8, &unk_25454ECD0);
    }
  }

  else
  {
    sub_2544AE240(v19, v28, &qword_27F5FB3D8, &unk_25454ECD0);
    v54 = v9;
    if (v36(&v19[v35], 1, v9) != 1)
    {
      v51 = v55;
      sub_2544C46CC(&v19[v35], v55, _s12RegistrationVMa);
      v52 = sub_2544D8A98(v28, v51);
      sub_2544C4E00(v51, _s12RegistrationVMa);
      sub_2544AE150(v31, &qword_27F5FB3D8, &unk_25454ECD0);
      sub_2544AE150(v33, &qword_27F5FB3D8, &unk_25454ECD0);
      sub_2544C4E00(v28, _s12RegistrationVMa);
      result = sub_2544AE150(v19, &qword_27F5FB3D8, &unk_25454ECD0);
      v9 = v54;
      if (v52)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_2544AE150(v31, &qword_27F5FB3D8, &unk_25454ECD0);
    sub_2544AE150(v33, &qword_27F5FB3D8, &unk_25454ECD0);
    sub_2544C4E00(v28, _s12RegistrationVMa);
    v9 = v54;
  }

  sub_2544AE150(v19, &qword_27F5FB550, &unk_25454E570);
LABEL_7:
  if (qword_27F5FAC98 != -1)
  {
    swift_once();
  }

  v38 = v67;
  sub_2544C4654(v67, v66, _s12RegistrationVMa);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB558, &qword_25454EBB0);
  v39 = v62;
  sub_25454BE64();
  (*(v63 + 8))(v39, v65);
  v40 = v60;
  sub_2544C4654(v38, v60, _s12RegistrationVMa);
  v58(v40, 0, 1, v9);
  sub_2544AE240(v40, v61, &qword_27F5FB3D8, &unk_25454ECD0);
  sub_25454B7B4();
  sub_2544AE150(v40, &qword_27F5FB3D8, &unk_25454ECD0);
  v41 = v69;
  sub_25454A2B4();
  v42 = v68;
  sub_2544C4654(v38, v68, _s12RegistrationVMa);
  v43 = sub_25454A2C4();
  v44 = sub_25454BF94();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v72[0] = v46;
    *v45 = 136315650;
    *(v45 + 4) = sub_254502AAC(0xD000000000000023, 0x8000000254555120, v72);
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_254502AAC(0x7265747369676572, 0xEF293A6874697728, v72);
    *(v45 + 22) = 2080;
    v47 = sub_2544D7FAC();
    v49 = v48;
    sub_2544C4E00(v42, _s12RegistrationVMa);
    v50 = sub_254502AAC(v47, v49, v72);

    *(v45 + 24) = v50;
    _os_log_impl(&dword_2544A5000, v43, v44, "%s-%s %s", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v46, -1, -1);
    MEMORY[0x259C0FDF0](v45, -1, -1);
  }

  else
  {

    sub_2544C4E00(v42, _s12RegistrationVMa);
  }

  return (*(v70 + 8))(v41, v71);
}

uint64_t MultiFactorVisibility.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a1;
  v41 = a2;
  v40 = sub_25454A3B4();
  v42 = *(v40 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultiFactorVisibility(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3F0, &qword_25454E130);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3F8, &qword_25454E138);
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v43 = &v32 - v16;
  sub_2544C4654(v3, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MultiFactorVisibility);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_2544C46CC(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for MultiFactorVisibility);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB400, &qword_25454E148);
  (*(*(v19 - 8) + 16))(v12, v36, v19);
  v20 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB408, &qword_25454E150) + 36)];
  *v20 = sub_2544C2758;
  v20[1] = v18;
  v20[2] = 0;
  v20[3] = 0;
  v33 = v3;
  v35 = type metadata accessor for MultiFactorVisibility;
  sub_2544C4654(v3, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MultiFactorVisibility);
  v21 = swift_allocObject();
  v34 = type metadata accessor for MultiFactorVisibility;
  sub_2544C46CC(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v17, type metadata accessor for MultiFactorVisibility);
  v22 = &v12[*(v9 + 36)];
  *v22 = 0;
  *(v22 + 1) = 0;
  *(v22 + 2) = sub_2544C2A84;
  *(v22 + 3) = v21;
  sub_2544C4654(v3, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MultiFactorVisibility);
  v23 = swift_allocObject();
  sub_2544C46CC(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v17, type metadata accessor for MultiFactorVisibility);
  v24 = sub_2544C4B84(&qword_27F5FB410, &qword_27F5FB3F0, &qword_25454E130, sub_2544C2D60);
  sub_25454B4D4();

  sub_2544AE150(v12, &qword_27F5FB3F0, &qword_25454E130);
  v25 = v37;
  v26 = v33;
  sub_2544C2E04(v37);
  sub_2544C4654(v26, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
  v27 = swift_allocObject();
  sub_2544C46CC(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v17, v34);
  v44 = v9;
  v45 = v24;
  swift_getOpaqueTypeConformance2();
  sub_2544C3DE0(&qword_27F5FAF00, MEMORY[0x277CDD6C8]);
  v28 = v40;
  v29 = v38;
  v30 = v43;
  sub_25454B574();

  (*(v42 + 8))(v25, v28);
  return (*(v39 + 8))(v30, v29);
}

uint64_t sub_2544C2764(uint64_t *a1, uint64_t a2, char a3)
{
  v18 = type metadata accessor for MultiFactorVisibility.VisibilityState(0);
  v5 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1[4];
  v20 = *(a1 + 24);
  v8 = v20;
  v21 = v9;
  v19 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
  v11 = a1[1];
  v10 = a1[2];
  v12 = *a1;
  v20 = v8;
  v21 = v9;
  sub_25454B7A4();
  v13 = v19;
  v14 = a1[6];
  v20 = *(a1 + 40);
  v21 = v14;
  sub_25454B7A4();
  LOBYTE(v9) = v19;
  v15 = a1[8];
  v20 = *(a1 + 56);
  v21 = v15;
  sub_25454B7A4();
  v16 = v19;
  sub_2544C2E04(&v7[*(v18 + 32)]);
  *v7 = v12;
  v7[8] = v13;
  v7[9] = v9;
  v7[10] = v16;
  v11(v7);
  sub_2544C4E00(v7, type metadata accessor for MultiFactorVisibility.VisibilityState);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for MultiFactorVisibility(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 64);

  v10 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADE0, &qword_25454E140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25454A3B4();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2544C2B04(char a1, uint64_t *a2)
{
  v19 = type metadata accessor for MultiFactorVisibility.VisibilityState(0);
  v4 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v18[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a2[6];
  v21 = *(a2 + 40);
  v7 = v21;
  v22 = v8;
  v20 = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
  v10 = a2[1];
  v9 = a2[2];
  v11 = *a2;
  v12 = a2[4];
  v21 = *(a2 + 24);
  v22 = v12;
  sub_25454B7A4();
  v13 = v20;
  v21 = v7;
  v22 = v8;
  sub_25454B7A4();
  v14 = v20;
  v15 = a2[8];
  v21 = *(a2 + 56);
  v22 = v15;
  sub_25454B7A4();
  v16 = v20;
  sub_2544C2E04(&v6[*(v19 + 32)]);
  *v6 = v11;
  v6[8] = v13;
  v6[9] = v14;
  v6[10] = v16;
  v10(v6);
  sub_2544C4E00(v6, type metadata accessor for MultiFactorVisibility.VisibilityState);
}

uint64_t sub_2544C2CF0(char a1)
{
  v3 = *(type metadata accessor for MultiFactorVisibility(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_2544C2B04(a1, v4);
}

unint64_t sub_2544C2D60()
{
  result = qword_27F5FB418;
  if (!qword_27F5FB418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB408, &qword_25454E150);
    sub_2544C4CDC(&qword_27F5FB420, &qword_27F5FB400, &qword_25454E148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB418);
  }

  return result;
}

uint64_t sub_2544C2E04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25454AA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADE0, &qword_25454E140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MultiFactorVisibility(0);
  sub_2544AE240(v1 + *(v12 + 36), v11, &qword_27F5FADE0, &qword_25454E140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25454A3B4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_25454BF84();
    v16 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2544C300C(uint64_t *a1)
{
  v15 = type metadata accessor for MultiFactorVisibility.VisibilityState(0);
  v2 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1[1];
  v5 = a1[2];
  v7 = *a1;
  v8 = a1[4];
  v17 = *(a1 + 24);
  v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  v9 = v16;
  v10 = a1[6];
  v17 = *(a1 + 40);
  v18 = v10;
  sub_25454B7A4();
  v11 = v16;
  v12 = a1[8];
  v17 = *(a1 + 56);
  v18 = v12;
  sub_25454B7A4();
  v13 = v16;
  sub_2544C2E04(&v4[*(v15 + 32)]);
  *v4 = v7;
  v4[8] = v9;
  v4[9] = v11;
  v4[10] = v13;
  v6(v4);
  sub_2544C4E00(v4, type metadata accessor for MultiFactorVisibility.VisibilityState);
}

uint64_t sub_2544C31D4()
{
  v1 = *(type metadata accessor for MultiFactorVisibility(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2544C300C(v2);
}

uint64_t sub_2544C3274@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_2544C3324(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2544C3354@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2544C3380@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t _s7HomeUI221MultiFactorVisibilityV0E5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10))
  {
    return 0;
  }

  v4 = *(type metadata accessor for MultiFactorVisibility.VisibilityState(0) + 32);

  return sub_25454A3A4();
}

unint64_t sub_2544C3504()
{
  result = qword_27F5FB428;
  if (!qword_27F5FB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB428);
  }

  return result;
}

unint64_t sub_2544C3578()
{
  result = qword_27F5FB430;
  if (!qword_27F5FB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB430);
  }

  return result;
}

unint64_t sub_2544C35D0()
{
  result = qword_27F5FB438;
  if (!qword_27F5FB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB438);
  }

  return result;
}

unint64_t sub_2544C3628()
{
  result = qword_27F5FB440;
  if (!qword_27F5FB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB440);
  }

  return result;
}

unint64_t sub_2544C3680()
{
  result = qword_27F5FB448;
  if (!qword_27F5FB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB448);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2544C3794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAE00, &qword_25454D2F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2544C3864(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAE00, &qword_25454D2F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2544C3914()
{
  sub_2544C3A1C();
  if (v0 <= 0x3F)
  {
    sub_2544C45E8(319, &qword_27F5FAE28, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2544C4584(319, &qword_27F5FAE30, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2544C3A1C()
{
  result = qword_27F5FB460;
  if (!qword_27F5FB460)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F5FB460);
  }

  return result;
}

uint64_t sub_2544C3A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_25454A3B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2544C3B40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = sub_25454A3B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2544C3BE0()
{
  result = sub_25454A3B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiFactorVisibility.Factors(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MultiFactorVisibility.Factors(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_2544C3CD0()
{
  result = qword_27F5FB478;
  if (!qword_27F5FB478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB3E0, &qword_25454E100);
    sub_2544C3D8C();
    sub_2544C3DE0(&qword_27F5FB488, type metadata accessor for RegisteredCameraView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB478);
  }

  return result;
}

unint64_t sub_2544C3D8C()
{
  result = qword_27F5FB480;
  if (!qword_27F5FB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB480);
  }

  return result;
}

uint64_t sub_2544C3DE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2544C3E28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for RegisteredCameraView(255);
  sub_25454A714();
  sub_2544C3DE0(&qword_27F5FB488, type metadata accessor for RegisteredCameraView);
  return swift_getWitnessTable();
}

uint64_t sub_2544C3EC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB3F8, &qword_25454E138);
  sub_25454A3B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB3F0, &qword_25454E130);
  sub_2544C4B84(&qword_27F5FB410, &qword_27F5FB3F0, &qword_25454E130, sub_2544C2D60);
  swift_getOpaqueTypeConformance2();
  sub_2544C3DE0(&qword_27F5FAF00, MEMORY[0x277CDD6C8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2544C400C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_254549B54();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB490, &qword_25454E488);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB498, &qword_25454E490);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4A0, &qword_25454E498);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_2544C41F8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_254549B54();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB490, &qword_25454E488);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB498, &qword_25454E490);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4A0, &qword_25454E498);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_2544C43D0()
{
  sub_254549C04();
  if (v0 <= 0x3F)
  {
    sub_254549B54();
    if (v1 <= 0x3F)
    {
      sub_2544C45E8(319, &qword_27F5FB4B8, &type metadata for CameraViewRegistrar.Location, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2544C4584(319, &qword_27F5FB4C0, MEMORY[0x277CC95F0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2544AD83C(319, &qword_27F5FB4C8, &qword_27F5FB3D8, &unk_25454ECD0);
          if (v4 <= 0x3F)
          {
            sub_2544AD83C(319, &qword_27F5FB4D0, &qword_27F5FB3D0, &unk_25454E0F0);
            if (v5 <= 0x3F)
            {
              sub_2544C45E8(319, &qword_27F5FB4D8, &type metadata for SceneType, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2544C4584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2544C45E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2544C4654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2544C46C0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2544C46CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2544C4734(uint64_t a1)
{
  v2 = *(*(type metadata accessor for RegisteredCameraView(0) - 8) + 80);

  return sub_2544C05FC(a1);
}

uint64_t objectdestroy_44Tm()
{
  v1 = type metadata accessor for RegisteredCameraView(0);
  v22 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v21 = (v22 + 16) & ~v22;
  v23 = v0;
  v2 = v0 + v21;
  v3 = *(v0 + v21 + 8);

  v4 = v1[6];
  v5 = sub_254549B54();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v21 + v4, v5);
  v7 = v0 + v21 + v1[8];
  v8 = sub_254549394();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB490, &qword_25454E488) + 28));

  v11 = v0 + v21 + v1[9];
  v12 = _s12RegistrationVMa();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v9(v11, v8);
    v9(v11 + *(v12 + 20), v8);
    v6(v11 + *(v12 + 24), v5);
  }

  v13 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB498, &qword_25454E490) + 28));

  v14 = v2 + v1[10];
  v15 = type metadata accessor for MultiFactorVisibility.VisibilityState(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = *(v15 + 32);
    v17 = sub_25454A3B4();
    (*(*(v17 - 8) + 8))(v14 + v16, v17);
  }

  v18 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4A0, &qword_25454E498) + 28));

  sub_2544C46C0(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v23, v21 + v20, v22 | 7);
}

uint64_t sub_2544C4B84(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_2544C4C08()
{
  result = qword_27F5FB518;
  if (!qword_27F5FB518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB4F0, &qword_25454E550);
    sub_2544C4CDC(&qword_27F5FB520, &qword_27F5FB4F8, &qword_25454E558);
    sub_2544C3DE0(&qword_27F5FB528, type metadata accessor for MultiFactorVisibility);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB518);
  }

  return result;
}

uint64_t sub_2544C4CDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2544C4D4C()
{
  result = qword_27F5FB538;
  if (!qword_27F5FB538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB3D0, &unk_25454E0F0);
    sub_2544C3DE0(&qword_27F5FB540, type metadata accessor for MultiFactorVisibility.VisibilityState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB538);
  }

  return result;
}

uint64_t sub_2544C4E00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2544C4E68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB4E8, &qword_25454E548);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB3D0, &unk_25454E0F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB4E0, &qword_25454E540);
  sub_254549B54();
  sub_2544C4B84(&qword_27F5FB508, &qword_27F5FB4E0, &qword_25454E540, sub_2544C4B54);
  sub_2544C3DE0(&qword_27F5FB530, MEMORY[0x277D15E70]);
  swift_getOpaqueTypeConformance2();
  sub_2544C4D4C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t NearbyAccessoriesToggle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_25454ABE4();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2545493C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25454BC64();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25454AEB4();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB568, &qword_25454E5C0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB570, &qword_25454E5C8);
  v43 = *(v45 - 8);
  v20 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v22 = &v38 - v21;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB578, &unk_25454E5D0);
  v23 = *(*(v46 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v46);
  v42 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v44 = &v38 - v26;
  v27 = *(v1 + 8);
  v28 = *(v1 + 16);
  v54 = *v1;
  v55 = v27;
  v56 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB580, &unk_2545506D0);
  sub_25454B934();
  sub_25454BA94();
  sub_25454B954();

  sub_25454B8B4();
  sub_25454AE94();
  v29 = sub_2544AE1F0(&qword_27F5FB588, &qword_27F5FB568, &qword_25454E5C0);
  sub_25454B484();
  (*(v39 + 8))(v14, v40);
  (*(v16 + 8))(v19, v15);
  sub_25454BC54();
  sub_2544C56A4();
  if (!sub_25454C024())
  {
    v30 = [objc_opt_self() mainBundle];
  }

  sub_2545493B4();
  v54 = sub_25454BCA4();
  v55 = v31;
  v52 = v15;
  v53 = v29;
  swift_getOpaqueTypeConformance2();
  sub_2544AECF0();
  v32 = v42;
  v33 = v45;
  sub_25454B424();

  (*(v43 + 8))(v22, v33);
  v34 = v48;
  sub_25454ABD4();
  v35 = v44;
  sub_25454A6F4();
  (*(v49 + 8))(v34, v50);
  sub_2544AE150(v32, &qword_27F5FB578, &unk_25454E5D0);
  v36 = *MEMORY[0x277CE6DA0];
  sub_2544C56F0();
  sub_25454B494();
  return sub_2544AE150(v35, &qword_27F5FB578, &unk_25454E5D0);
}

uint64_t sub_2544C55F8@<X0>(uint64_t *a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25454B704();

  *a1 = v2;
  return result;
}

unint64_t sub_2544C56A4()
{
  result = qword_27F5FB590;
  if (!qword_27F5FB590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5FB590);
  }

  return result;
}

unint64_t sub_2544C56F0()
{
  result = qword_27F5FB598;
  if (!qword_27F5FB598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB578, &unk_25454E5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB568, &qword_25454E5C0);
    sub_2544AE1F0(&qword_27F5FB588, &qword_27F5FB568, &qword_25454E5C0);
    swift_getOpaqueTypeConformance2();
    sub_2544C8F08(&qword_27F5FB340, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB598);
  }

  return result;
}

uint64_t sub_2544C581C()
{
  v1 = sub_25454AA94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for TalkButtonToggle() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_25454BF84();
    v9 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_2544C5970@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25454AA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A0, &qword_25454E640);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TalkButtonToggle();
  sub_2544AE240(v1 + *(v12 + 24), v11, &qword_27F5FB5A0, &qword_25454E640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25454B0E4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_25454BF84();
    v16 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t TalkButtonToggle.init(mode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TalkButtonToggle();
  v5 = a2 + *(v4 + 20);
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = *(v4 + 24);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A0, &qword_25454E640);
  swift_storeEnumTagMultiPayload();

  return sub_2544C80C8(a1, a2);
}

uint64_t type metadata accessor for TalkButtonToggle()
{
  result = qword_27F5FB618;
  if (!qword_27F5FB618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TalkButtonToggle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_2545493C4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25454BC64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v25[1] = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5B0, &qword_25454E650);
  v26 = *(v15 - 8);
  v27 = v15;
  v16 = *(v26 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v25 - v17;
  sub_25454B934();
  sub_2544AE240(v14, v12, &qword_27F5FB5A8, &qword_25454E648);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  sub_2544C80C8(v12, v20 + v19);
  sub_2544AE240(v14, v12, &qword_27F5FB5A8, &qword_25454E648);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_2544C80C8(v12, v21 + v19);
  sub_25454B944();
  sub_2544AE150(v14, &qword_27F5FB5A8, &qword_25454E648);
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5B8, &qword_25454E658);
  sub_2544C8348();
  sub_25454B8B4();
  sub_25454BC54();
  sub_2545493B4();
  v31 = sub_25454BCA4();
  v32 = v22;
  sub_2544AE1F0(&qword_27F5FB608, &qword_27F5FB5B0, &qword_25454E650);
  sub_2544AECF0();
  v23 = v27;
  sub_25454B424();

  return (*(v26 + 8))(v18, v23);
}

uint64_t sub_2544C607C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a1;
  v150 = a2;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB678, &qword_25454E808);
  v2 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v149 = (&v106 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1E8, &unk_25454E810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v128 = &v106 - v6;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1F0, &qword_25454DEF8);
  v126 = *(v127 - 8);
  v7 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v125 = &v106 - v8;
  v114 = sub_25454B0E4();
  v113 = *(v114 - 8);
  v9 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v110 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_25454AFD4();
  v111 = *(v112 - 8);
  v11 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for CameraWaveform();
  v13 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v121 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB680, &qword_25454E820);
  v122 = *(v123 - 8);
  v15 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v118 = &v106 - v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5E0, &qword_25454E668);
  v17 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v120 = &v106 - v18;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5D0, &qword_25454E660);
  v19 = *(*(v147 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v147);
  v119 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v124 = &v106 - v22;
  v23 = sub_254549C14();
  v151 = *(v23 - 8);
  v24 = *(v151 + 64);
  MEMORY[0x28223BE20](v23);
  v129 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB688, &qword_25454E828);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v142 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v106 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB690, &qword_25454E830);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v115 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v144 = &v106 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v141 = &v106 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v143 = &v106 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v106 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v106 - v45;
  v47 = sub_254549B54();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v50 = MEMORY[0x28223BE20](v47);
  v137 = &v106 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v53 = &v106 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5B8, &qword_25454E658);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v146 = &v106 - v56;
  v57 = sub_25454BE14();
  v145 = sub_25454BE04();
  v108 = v57;
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  MEMORY[0x259C0EA00]();
  sub_254549B14();
  v58 = *(v48 + 8);
  v138 = v48 + 8;
  v139 = v47;
  v134 = v58;
  v58(v53, v47);
  v59 = v151;
  v60 = *(v151 + 104);
  v132 = *MEMORY[0x277D15EB0];
  v133 = v151 + 104;
  v131 = v60;
  v60(v44);
  v130 = *(v59 + 56);
  v130(v44, 0, 1, v23);
  v140 = v26;
  v61 = *(v26 + 48);
  sub_2544AE240(v46, v31, &qword_27F5FB690, &qword_25454E830);
  sub_2544AE240(v44, &v31[v61], &qword_27F5FB690, &qword_25454E830);
  v62 = v46;
  v63 = *(v59 + 48);
  v64 = v63(v31, 1, v23);
  v136 = v63;
  if (v64 != 1)
  {
    v107 = v62;
    v66 = v143;
    sub_2544AE240(v31, v143, &qword_27F5FB690, &qword_25454E830);
    if (v63(&v31[v61], 1, v23) != 1)
    {
      v74 = v151;
      v75 = v129;
      (*(v151 + 32))(v129, &v31[v61], v23);
      sub_2544C8F08(&qword_27F5FB698, MEMORY[0x277D15EC0]);
      v76 = sub_25454BC44();
      v77 = *(v74 + 8);
      v77(v75, v23);
      sub_2544AE150(v44, &qword_27F5FB690, &qword_25454E830);
      sub_2544AE150(v107, &qword_27F5FB690, &qword_25454E830);
      v77(v143, v23);
      sub_2544AE150(v31, &qword_27F5FB690, &qword_25454E830);
      v65 = v146;
      if (v76)
      {
        goto LABEL_16;
      }

LABEL_9:
      v67 = v137;
      MEMORY[0x259C0EA00](v135);
      v68 = v141;
      sub_254549B14();
      v134(v67, v139);
      v69 = v144;
      v131(v144, v132, v23);
      v130(v69, 0, 1, v23);
      v70 = *(v140 + 48);
      v71 = v142;
      sub_2544AE240(v68, v142, &qword_27F5FB690, &qword_25454E830);
      sub_2544AE240(v69, v71 + v70, &qword_27F5FB690, &qword_25454E830);
      v72 = v136;
      if (v136(v71, 1, v23) == 1)
      {
        sub_2544AE150(v69, &qword_27F5FB690, &qword_25454E830);
        sub_2544AE150(v68, &qword_27F5FB690, &qword_25454E830);
        if (v72(v71 + v70, 1, v23) == 1)
        {
          sub_2544AE150(v71, &qword_27F5FB690, &qword_25454E830);
LABEL_21:
          *v149 = sub_25454B704();
          swift_storeEnumTagMultiPayload();
          sub_2544C83D4();
          sub_25454AD44();
          goto LABEL_23;
        }
      }

      else
      {
        v73 = v115;
        sub_2544AE240(v71, v115, &qword_27F5FB690, &qword_25454E830);
        if (v72(v71 + v70, 1, v23) != 1)
        {
          v87 = v68;
          v88 = v151;
          v89 = v129;
          (*(v151 + 32))(v129, v71 + v70, v23);
          sub_2544C8F08(&qword_27F5FB698, MEMORY[0x277D15EC0]);
          sub_25454BC44();
          v90 = *(v88 + 8);
          v90(v89, v23);
          sub_2544AE150(v144, &qword_27F5FB690, &qword_25454E830);
          sub_2544AE150(v87, &qword_27F5FB690, &qword_25454E830);
          v90(v73, v23);
          sub_2544AE150(v71, &qword_27F5FB690, &qword_25454E830);
          goto LABEL_21;
        }

        sub_2544AE150(v144, &qword_27F5FB690, &qword_25454E830);
        sub_2544AE150(v68, &qword_27F5FB690, &qword_25454E830);
        (*(v151 + 8))(v73, v23);
      }

      sub_2544AE150(v71, &qword_27F5FB688, &qword_25454E828);
      goto LABEL_21;
    }

    sub_2544AE150(v44, &qword_27F5FB690, &qword_25454E830);
    sub_2544AE150(v107, &qword_27F5FB690, &qword_25454E830);
    (*(v151 + 8))(v66, v23);
LABEL_8:
    sub_2544AE150(v31, &qword_27F5FB688, &qword_25454E828);
    v65 = v146;
    goto LABEL_9;
  }

  sub_2544AE150(v44, &qword_27F5FB690, &qword_25454E830);
  sub_2544AE150(v62, &qword_27F5FB690, &qword_25454E830);
  if (v63(&v31[v61], 1, v23) != 1)
  {
    goto LABEL_8;
  }

  sub_2544AE150(v31, &qword_27F5FB690, &qword_25454E830);
  v65 = v146;
LABEL_16:
  v78 = *MEMORY[0x277D15228];
  v79 = sub_254549604();
  v80 = v121;
  (*(*(v79 - 8) + 104))(v121, v78, v79);
  v81 = v116;
  v82 = *(v116 + 20);
  type metadata accessor for WaveformModel();
  sub_25454BAB4();
  v83 = v80 + *(v81 + 24);
  sub_254549C04();
  sub_2544C8F08(&qword_27F5FB148, MEMORY[0x277D15EA8]);
  *v83 = sub_25454A474();
  *(v83 + 8) = v84 & 1;
  if (sub_2544C581C())
  {
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v85 = v110;
    sub_2544C5970(v110);
    v86 = v109;
    sub_25454B164();
    (*(v113 + 8))(v85, v114);
    sub_25454AFC4();
    (*(v111 + 8))(v86, v112);
  }

  sub_2544C8F08(&qword_27F5FB1F8, type metadata accessor for CameraWaveform);
  v91 = v125;
  sub_25454B294();
  v92 = v128;
  sub_254549404();
  v93 = sub_254549414();
  (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
  v94 = v118;
  v95 = v127;
  sub_254549434();
  sub_2544AE150(v92, &qword_27F5FB1E8, &unk_25454E810);
  (*(v126 + 8))(v91, v95);
  sub_2544C8DC0(v80);
  v96 = sub_25454B654();
  KeyPath = swift_getKeyPath();
  v98 = v120;
  (*(v122 + 32))(v120, v94, v123);
  v99 = (v98 + *(v117 + 36));
  *v99 = KeyPath;
  v99[1] = v96;
  v100 = swift_getKeyPath();
  v101 = swift_allocObject();
  *(v101 + 16) = 1;
  v102 = v119;
  sub_2544B14E8(v98, v119, &qword_27F5FB5E0, &qword_25454E668);
  v103 = (v102 + *(v147 + 36));
  *v103 = v100;
  v103[1] = sub_2544C8E8C;
  v103[2] = v101;
  v104 = v124;
  sub_2544B14E8(v102, v124, &qword_27F5FB5D0, &qword_25454E660);
  sub_2544C8E94(v104, v149);
  swift_storeEnumTagMultiPayload();
  sub_2544C83D4();
  sub_25454AD44();
  sub_2544AE150(v104, &qword_27F5FB5D0, &qword_25454E660);
LABEL_23:
  sub_2544B14E8(v65, v150, &qword_27F5FB5B8, &qword_25454E658);
}

uint64_t VolumeToggle.init(isMuted:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t VolumeToggle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = sub_2545493C4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v18 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25454BC64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB568, &qword_25454E5C0);
  v8 = *(v7 - 8);
  v19 = v7;
  v20 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v13 = *(v1 + 8);
  v14 = *(v1 + 16);
  v25 = *v1;
  v12 = v25;
  v26 = v13;
  v27 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB580, &unk_2545506D0);
  sub_25454B934();
  sub_25454BA94();
  sub_25454B954();

  v22 = v12;
  v23 = v13;
  v24 = v14;
  sub_25454B8B4();
  sub_25454BC54();
  sub_2545493B4();
  v25 = sub_25454BCA4();
  v26 = v15;
  sub_2544AE1F0(&qword_27F5FB588, &qword_27F5FB568, &qword_25454E5C0);
  sub_2544AECF0();
  v16 = v19;
  sub_25454B424();

  return (*(v20 + 8))(v11, v16);
}

uint64_t sub_2544C764C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1;
  v13 = a2;
  v14 = a3 & 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB580, &unk_2545506D0);
  MEMORY[0x259C0EA00](&v11, v8);
  v9 = sub_25454B704();

  *a4 = v9;
  return result;
}

uint64_t sub_2544C776C@<X0>(_BYTE *a1@<X8>)
{
  v36 = a1;
  v1 = sub_254549C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB688, &qword_25454E828);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB690, &qword_25454E830);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = sub_254549B54();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  MEMORY[0x259C0EA00](v24);
  sub_254549B14();
  (*(v20 + 8))(v23, v19);
  (*(v2 + 104))(v16, *MEMORY[0x277D15EB0], v1);
  (*(v2 + 56))(v16, 0, 1, v1);
  v25 = *(v6 + 56);
  sub_2544AE240(v18, v9, &qword_27F5FB690, &qword_25454E830);
  sub_2544AE240(v16, &v9[v25], &qword_27F5FB690, &qword_25454E830);
  v26 = *(v2 + 48);
  if (v26(v9, 1, v1) != 1)
  {
    sub_2544AE240(v9, v35, &qword_27F5FB690, &qword_25454E830);
    if (v26(&v9[v25], 1, v1) != 1)
    {
      v29 = &v9[v25];
      v30 = v34;
      (*(v2 + 32))(v34, v29, v1);
      sub_2544C8F08(&qword_27F5FB698, MEMORY[0x277D15EC0]);
      v31 = v35;
      v28 = sub_25454BC44();
      v32 = *(v2 + 8);
      v32(v30, v1);
      sub_2544AE150(v16, &qword_27F5FB690, &qword_25454E830);
      sub_2544AE150(v18, &qword_27F5FB690, &qword_25454E830);
      v32(v31, v1);
      result = sub_2544AE150(v9, &qword_27F5FB690, &qword_25454E830);
      goto LABEL_8;
    }

    sub_2544AE150(v16, &qword_27F5FB690, &qword_25454E830);
    sub_2544AE150(v18, &qword_27F5FB690, &qword_25454E830);
    (*(v2 + 8))(v35, v1);
    goto LABEL_6;
  }

  sub_2544AE150(v16, &qword_27F5FB690, &qword_25454E830);
  sub_2544AE150(v18, &qword_27F5FB690, &qword_25454E830);
  if (v26(&v9[v25], 1, v1) != 1)
  {
LABEL_6:
    result = sub_2544AE150(v9, &qword_27F5FB688, &qword_25454E828);
    v28 = 0;
    goto LABEL_8;
  }

  result = sub_2544AE150(v9, &qword_27F5FB690, &qword_25454E830);
  v28 = 1;
LABEL_8:
  *v36 = v28 & 1;
  return result;
}

uint64_t sub_2544C7C64(unsigned __int8 *a1)
{
  v2 = sub_254549B54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB6A0, &qword_25454ECC0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  v11 = sub_254549C14();
  v12 = *(*(v11 - 8) + 104);
  if (v7 == 1)
  {
    v12(v6, *MEMORY[0x277D15EB0], v11);
    v13 = sub_254549AC4();
    (*(*(v13 - 8) + 56))(&v6[v9], 1, 1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB6C0, &qword_25454E8A8);
    v14 = *(sub_254549B04() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_25454D8F0;
    sub_254549AF4();
    v21 = v17;
  }

  else
  {
    v12(v6, *MEMORY[0x277D15EB8], v11);
    v18 = sub_254549AC4();
    (*(*(v18 - 8) + 56))(&v6[v9], 1, 1, v18);
    sub_254549B04();
    v21 = MEMORY[0x277D84F90];
  }

  sub_2544C8F08(&qword_27F5FB6A8, MEMORY[0x277D15E40]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB6B0, &qword_25454E8A0);
  sub_2544AE1F0(&qword_27F5FB6B8, &qword_27F5FB6B0, &qword_25454E8A0);
  sub_25454C0E4();
  (*(v3 + 104))(v6, *MEMORY[0x277D15E68], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  return sub_25454B914();
}

uint64_t sub_2544C7FD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454A984();
  *a1 = result;
  return result;
}

uint64_t sub_2544C7FFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454A984();
  *a1 = result;
  return result;
}

uint64_t sub_2544C8028(uint64_t *a1)
{
  v1 = *a1;

  return sub_25454A994();
}

uint64_t sub_2544C8054(uint64_t *a1)
{
  v1 = *a1;

  return sub_25454A994();
}

uint64_t sub_2544C80C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544C813C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_2544C776C(a1);
}

uint64_t objectdestroyTm_0()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v1[10];
  v9 = sub_254549B54();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2544C82C0(unsigned __int8 *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_2544C7C64(a1);
}

unint64_t sub_2544C8348()
{
  result = qword_27F5FB5C0;
  if (!qword_27F5FB5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB5B8, &qword_25454E658);
    sub_2544C83D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB5C0);
  }

  return result;
}

unint64_t sub_2544C83D4()
{
  result = qword_27F5FB5C8;
  if (!qword_27F5FB5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB5D0, &qword_25454E660);
    sub_2544C848C();
    sub_2544AE1F0(&qword_27F5FB5F8, &qword_27F5FB600, &qword_25454E678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB5C8);
  }

  return result;
}

unint64_t sub_2544C848C()
{
  result = qword_27F5FB5D8;
  if (!qword_27F5FB5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB5E0, &qword_25454E668);
    type metadata accessor for CameraWaveform();
    sub_2544C8F08(&qword_27F5FB1F8, type metadata accessor for CameraWaveform);
    swift_getOpaqueTypeConformance2();
    sub_2544AE1F0(&qword_27F5FB5E8, &qword_27F5FB5F0, &qword_25454E670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB5D8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2544C863C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB610, &unk_254552D00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2544C8788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A8, &qword_25454E648);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB610, &unk_254552D00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2544C88C4()
{
  sub_2544C8A24(319, &qword_27F5FB628, MEMORY[0x277D15E70], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_2544C89C0();
    if (v1 <= 0x3F)
    {
      sub_2544C8A24(319, &qword_27F5FB640, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2544C89C0()
{
  if (!qword_27F5FB630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB638, &qword_25454E7D8);
    v0 = sub_25454A464();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FB630);
    }
  }
}

void sub_2544C8A24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2544C8A8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2544C8AD8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2544C8B2C()
{
  result = qword_27F5FB648;
  if (!qword_27F5FB648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB650, &qword_25454E7F0);
    sub_2544C56F0();
    sub_2544C8F08(&qword_27F5FB340, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB648);
  }

  return result;
}

unint64_t sub_2544C8BEC()
{
  result = qword_27F5FB658;
  if (!qword_27F5FB658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB660, &qword_25454E7F8);
    sub_2544AE1F0(&qword_27F5FB608, &qword_27F5FB5B0, &qword_25454E650);
    sub_2544C8F08(&qword_27F5FB340, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB658);
  }

  return result;
}

unint64_t sub_2544C8CD8()
{
  result = qword_27F5FB668;
  if (!qword_27F5FB668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB670, &qword_25454E800);
    sub_2544AE1F0(&qword_27F5FB588, &qword_27F5FB568, &qword_25454E5C0);
    sub_2544C8F08(&qword_27F5FB340, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB668);
  }

  return result;
}

uint64_t sub_2544C8DC0(uint64_t a1)
{
  v2 = type metadata accessor for CameraWaveform();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2544C8E1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454AA64();
  *a1 = result;
  return result;
}

uint64_t sub_2544C8E48(uint64_t *a1)
{
  v1 = *a1;

  return sub_25454AA74();
}

uint64_t sub_2544C8E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5D0, &qword_25454E660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544C8F08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CameraErrorView.init(systemImageName:imageOpacity:title:description:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 16) = a9;
  *(a8 + 24) = a7;
  *(a8 + 32) = a3;
  return result;
}

double CameraErrorView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v21[0] = *v1;
  v21[1] = v3;
  v4 = v1[3];
  v21[2] = v1[2];
  v21[3] = v4;
  v5 = sub_25454AC14();
  v20 = 1;
  sub_2544C909C(v21, &v12);
  v26 = v16;
  v27 = v17;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v29[1] = v13;
  v29[2] = v14;
  v28 = v18;
  v29[0] = v12;
  v29[3] = v15;
  v29[4] = v16;
  v29[5] = v17;
  v29[6] = v18;
  sub_2544C98A0(&v22, &v11);
  sub_2544AE150(v29, &qword_27F5FB6C8, &qword_25454E8B0);
  *&v19[55] = v25;
  *&v19[71] = v26;
  *&v19[87] = v27;
  *&v19[103] = v28;
  *&v19[7] = v22;
  *&v19[23] = v23;
  *&v19[39] = v24;
  v6 = *&v19[80];
  *(a1 + 81) = *&v19[64];
  *(a1 + 97) = v6;
  *(a1 + 113) = *&v19[96];
  v7 = *&v19[16];
  *(a1 + 17) = *v19;
  *(a1 + 33) = v7;
  result = *&v19[32];
  v9 = *&v19[48];
  *(a1 + 49) = *&v19[32];
  v10 = v20;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 128) = *&v19[111];
  *(a1 + 65) = v9;
  return result;
}

uint64_t sub_2544C909C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB370, &qword_254551530);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v91 - v5;
  v7 = sub_25454B144();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v97 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1[1])
  {
    v12 = *a1;
    v13 = a1[1];

    v14 = sub_25454B704();
    (*(v8 + 104))(v11, *MEMORY[0x277CE0A50], v7);
    v15 = sub_25454B044();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v16 = sub_25454B0B4();
    sub_2544AE150(v6, &qword_27F5FB370, &qword_254551530);
    (*(v8 + 8))(v11, v7);
    KeyPath = swift_getKeyPath();
    v18 = a1[3];
    v19 = swift_getKeyPath();
    v95 = a1[2];
    v104 = v18;
    swift_retain_n();
    v107 = v14;

    v105 = KeyPath;

    v106 = v16;

    v96 = v19;
  }

  else
  {
    v106 = 0;
    v107 = 0;
    v104 = 0;
    v105 = 0;
    v95 = 0;
    v96 = 0;
  }

  v20 = a1[5];
  v99 = a1;
  v94 = v7;
  v93 = v6;
  v92 = v11;
  if (!v20)
  {
    v102 = 0;
    v103 = 0;
    v100 = 0;
    v101 = 0;
    v46 = a1[7];
    if (v46)
    {
      goto LABEL_8;
    }

LABEL_10:
    v72 = 0;
    v73 = 0;
    v99 = 0;
    v74 = 0;
    goto LABEL_11;
  }

  v108 = a1[4];
  v109 = v20;
  sub_2544AECF0();

  v21 = sub_25454B274();
  v23 = v22;
  v25 = v24;
  (*(v8 + 104))(v11, *MEMORY[0x277CE0AC0], v7);
  v26 = sub_25454B044();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  sub_25454B0B4();
  sub_2544AE150(v6, &qword_27F5FB370, &qword_254551530);
  (*(v8 + 8))(v11, v7);
  v27 = sub_25454B224();
  v29 = v28;
  v31 = v30;

  v32 = v23;
  a1 = v99;
  sub_2544C9C64(v21, v32, v25 & 1);

  sub_25454B084();
  v33 = sub_25454B194();
  v35 = v34;
  v37 = v36;
  sub_2544C9C64(v27, v29, v31 & 1);

  v38 = a1[3];
  v39 = sub_25454B1D4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_2544C9C64(v33, v35, v37 & 1);

  v102 = v41;
  v103 = v39;
  v100 = v43 & 1;
  sub_2544A8F00(v39, v41, v43 & 1);
  v101 = v45;

  v46 = a1[7];
  if (!v46)
  {
    goto LABEL_10;
  }

LABEL_8:
  v108 = a1[6];
  v109 = v46;
  sub_2544AECF0();

  v47 = sub_25454B274();
  v49 = v48;
  v51 = v50;
  v52 = v92;
  v53 = v94;
  (*(v8 + 104))(v92, *MEMORY[0x277CE0AA0], v94);
  v54 = sub_25454B044();
  v55 = v93;
  (*(*(v54 - 8) + 56))(v93, 1, 1, v54);
  sub_25454B0B4();
  sub_2544AE150(v55, &qword_27F5FB370, &qword_254551530);
  (*(v8 + 8))(v52, v53);
  v56 = sub_25454B224();
  v58 = v57;
  v60 = v59;

  sub_2544C9C64(v47, v49, v51 & 1);

  _s7SwiftUI4FontV7HomeUI2E14softMonospaced4size6weightACSd_AC6WeightVtFZfA0__0();
  v61 = sub_25454B194();
  v63 = v62;
  LOBYTE(v47) = v64;
  sub_2544C9C64(v56, v58, v60 & 1);

  v65 = v99[3];
  v66 = sub_25454B1D4();
  v68 = v67;
  LOBYTE(v58) = v69;
  v71 = v70;
  sub_2544C9C64(v61, v63, v47 & 1);

  v72 = v66;
  v73 = v68;
  v99 = (v58 & 1);
  sub_2544A8F00(v66, v68, v58 & 1);
  v74 = v71;

LABEL_11:
  v76 = v95;
  v75 = v96;
  sub_2544C9B6C(v107);
  v78 = v102;
  v77 = v103;
  v79 = v100;
  v80 = v101;
  sub_2544C9BDC(v103, v102, v100, v101);
  v81 = v99;
  sub_2544C9BDC(v72, v73, v99, v74);
  sub_2544C9C20(v77, v78, v79, v80);
  v83 = v106;
  v82 = v107;
  v85 = v104;
  v84 = v105;
  sub_2544C9C74(v107);
  sub_2544C9C20(v72, v73, v81, v74);
  v86 = v98;
  *v98 = v82;
  v86[1] = v84;
  v86[2] = v83;
  v86[3] = v75;
  v86[4] = v85;
  v86[5] = v76;
  v88 = v102;
  v87 = v103;
  v86[6] = v103;
  v86[7] = v88;
  LOBYTE(v82) = v100;
  v89 = v101;
  v86[8] = v100;
  v86[9] = v89;
  v86[10] = v72;
  v86[11] = v73;
  v86[12] = v81;
  v86[13] = v74;
  sub_2544C9C20(v72, v73, v81, v74);
  sub_2544C9C20(v87, v88, v82, v89);
  sub_2544C9C74(v107);
}

uint64_t sub_2544C98A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB6C8, &qword_25454E8B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_2544C992C@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v21[0] = *v1;
  v21[1] = v3;
  v4 = v1[3];
  v21[2] = v1[2];
  v21[3] = v4;
  v5 = sub_25454AC14();
  v20 = 1;
  sub_2544C909C(v21, &v12);
  v26 = v16;
  v27 = v17;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v29[1] = v13;
  v29[2] = v14;
  v28 = v18;
  v29[0] = v12;
  v29[3] = v15;
  v29[4] = v16;
  v29[5] = v17;
  v29[6] = v18;
  sub_2544C98A0(&v22, &v11);
  sub_2544AE150(v29, &qword_27F5FB6C8, &qword_25454E8B0);
  *&v19[55] = v25;
  *&v19[71] = v26;
  *&v19[87] = v27;
  *&v19[103] = v28;
  *&v19[7] = v22;
  *&v19[23] = v23;
  *&v19[39] = v24;
  v6 = *&v19[80];
  *(a1 + 81) = *&v19[64];
  *(a1 + 97) = v6;
  *(a1 + 113) = *&v19[96];
  v7 = *&v19[16];
  *(a1 + 17) = *v19;
  *(a1 + 33) = v7;
  result = *&v19[32];
  v9 = *&v19[48];
  *(a1 + 49) = *&v19[32];
  v10 = v20;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 128) = *&v19[111];
  *(a1 + 65) = v9;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2544C9A5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2544C9AA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2544C9B08()
{
  result = qword_27F5FB6D0;
  if (!qword_27F5FB6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB6D8, &qword_25454E958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB6D0);
  }

  return result;
}

uint64_t sub_2544C9B6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2544C9BDC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2544A8F00(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2544C9C20(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2544C9C64(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2544C9C64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2544C9C74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t CameraEventDescriptor.cameraProfile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_254549D04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CameraEventDescriptor.uniqueIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CameraEventDescriptor() + 20);
  v4 = sub_254549394();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CameraEventDescriptor()
{
  result = qword_27F5FB700;
  if (!qword_27F5FB700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CameraEventDescriptor.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CameraEventDescriptor() + 24);
  v4 = sub_254549354();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CameraEventDescriptor.init(cameraProfile:uniqueIdentifier:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_254549D04();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for CameraEventDescriptor();
  v10 = *(v9 + 20);
  v11 = sub_254549394();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  v12 = *(v9 + 24);
  v13 = sub_254549354();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

unint64_t CameraEventDescriptor.description.getter()
{
  v1 = sub_254549394();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_25454C154();

  v13 = 0xD000000000000013;
  v14 = 0x8000000254555220;
  sub_254549CF4();
  sub_2544CA990(&qword_27F5FB6E0, MEMORY[0x277CC95F0]);
  v6 = sub_25454C304();
  MEMORY[0x259C0EE40](v6);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x259C0EE40](0xD000000000000011, 0x8000000254555240);
  v7 = type metadata accessor for CameraEventDescriptor();
  v8 = v0 + *(v7 + 20);
  v9 = sub_25454C304();
  MEMORY[0x259C0EE40](v9);

  MEMORY[0x259C0EE40](0x203A6574616420, 0xE700000000000000);
  v10 = *(v7 + 24);
  sub_254549354();
  sub_2544CA990(&qword_27F5FAD28, MEMORY[0x277CC9578]);
  v11 = sub_25454C304();
  MEMORY[0x259C0EE40](v11);

  return v13;
}

uint64_t static CameraEventDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x259C0CDE0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CameraEventDescriptor();
  v5 = *(v4 + 20);
  if ((sub_254549374() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);

  return MEMORY[0x28211DA98](a1 + v6, a2 + v6);
}

uint64_t CameraEventDescriptor.hash(into:)()
{
  sub_254549D04();
  sub_2544CA990(&qword_27F5FB6E8, MEMORY[0x277D16548]);
  sub_25454BBF4();
  v0 = type metadata accessor for CameraEventDescriptor();
  v1 = *(v0 + 20);
  sub_254549394();
  sub_2544CA990(&qword_27F5FB028, MEMORY[0x277CC95F0]);
  sub_25454BBF4();
  v2 = *(v0 + 24);
  sub_254549354();
  sub_2544CA990(&qword_27F5FB6F0, MEMORY[0x277CC9578]);
  return sub_25454BBF4();
}

uint64_t CameraEventDescriptor.hashValue.getter()
{
  sub_25454C3E4();
  sub_254549D04();
  sub_2544CA990(&qword_27F5FB6E8, MEMORY[0x277D16548]);
  sub_25454BBF4();
  v0 = type metadata accessor for CameraEventDescriptor();
  v1 = *(v0 + 20);
  sub_254549394();
  sub_2544CA990(&qword_27F5FB028, MEMORY[0x277CC95F0]);
  sub_25454BBF4();
  v2 = *(v0 + 24);
  sub_254549354();
  sub_2544CA990(&qword_27F5FB6F0, MEMORY[0x277CC9578]);
  sub_25454BBF4();
  return sub_25454C434();
}

uint64_t sub_2544CA508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x259C0CDE0]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  if ((sub_254549374() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);

  return MEMORY[0x28211DA98](a1 + v7, a2 + v7);
}

uint64_t sub_2544CA584(uint64_t a1)
{
  sub_25454C3E4();
  sub_254549D04();
  sub_2544CA990(&qword_27F5FB6E8, MEMORY[0x277D16548]);
  sub_25454BBF4();
  v2 = *(a1 + 20);
  sub_254549394();
  sub_2544CA990(&qword_27F5FB028, MEMORY[0x277CC95F0]);
  sub_25454BBF4();
  v3 = *(a1 + 24);
  sub_254549354();
  sub_2544CA990(&qword_27F5FB6F0, MEMORY[0x277CC9578]);
  sub_25454BBF4();
  return sub_25454C434();
}

uint64_t sub_2544CA6CC(uint64_t a1, uint64_t a2)
{
  sub_254549D04();
  sub_2544CA990(&qword_27F5FB6E8, MEMORY[0x277D16548]);
  sub_25454BBF4();
  v3 = *(a2 + 20);
  sub_254549394();
  sub_2544CA990(&qword_27F5FB028, MEMORY[0x277CC95F0]);
  sub_25454BBF4();
  v4 = *(a2 + 24);
  sub_254549354();
  sub_2544CA990(&qword_27F5FB6F0, MEMORY[0x277CC9578]);
  return sub_25454BBF4();
}

uint64_t sub_2544CA804(uint64_t a1, uint64_t a2)
{
  sub_25454C3E4();
  sub_254549D04();
  sub_2544CA990(&qword_27F5FB6E8, MEMORY[0x277D16548]);
  sub_25454BBF4();
  v3 = *(a2 + 20);
  sub_254549394();
  sub_2544CA990(&qword_27F5FB028, MEMORY[0x277CC95F0]);
  sub_25454BBF4();
  v4 = *(a2 + 24);
  sub_254549354();
  sub_2544CA990(&qword_27F5FB6F0, MEMORY[0x277CC9578]);
  sub_25454BBF4();
  return sub_25454C434();
}

uint64_t sub_2544CA990(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2544CA9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254549D04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_254549394();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_254549354();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2544CAB44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_254549D04();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_254549394();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_254549354();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2544CAC90()
{
  result = sub_254549D04();
  if (v1 <= 0x3F)
  {
    result = sub_254549394();
    if (v2 <= 0x3F)
    {
      result = sub_254549354();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t CameraStatusHeader.camera.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CameraStatusHeader.overrideSubtitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CameraStatusHeader.overrideSubtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CameraStatusHeader.init(camera:overrideSubtitle:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for CameraStatusHeader();
  v11 = a5 + *(v10 + 28);
  sub_25454B794();
  *v11 = v13;
  *(v11 + 1) = v14;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return sub_2544CBF98(a4, a5 + *(v10 + 24), type metadata accessor for CameraDetailsViewModel.State.Config);
}

uint64_t type metadata accessor for CameraStatusHeader()
{
  result = qword_27F5FB720;
  if (!qword_27F5FB720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double CameraStatusHeader.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CameraStatusHeader();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2544CB0E4(v1, v20);
  v7 = sub_25454B674();
  sub_25454B654();
  v8 = sub_25454B694();

  v9 = *v1;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB710, &qword_25454EAA0) + 36));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB718, &qword_25454EAA8);
  v12 = v10 + *(v11 + 40);
  sub_254549BB4();
  sub_2544CBD38(v2, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_2544CBF98(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CameraStatusHeader);
  v15 = v10 + *(v11 + 36);
  sub_25454BE24();
  *v10 = &unk_25454EAB8;
  v10[1] = v14;
  v16 = v20[3];
  *(a1 + 32) = v20[2];
  *(a1 + 48) = v16;
  v17 = v20[5];
  *(a1 + 64) = v20[4];
  *(a1 + 80) = v17;
  v18 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v18;
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  result = 4.0;
  *(a1 + 112) = xmmword_25454EA90;
  *(a1 + 128) = 0x3FF0000000000000;
  return result;
}

double sub_2544CB0E4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_2544CB498();
  if (v7)
  {
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = sub_25454AC14();
    LOBYTE(v32[0]) = 1;
    v10 &= 1u;
    v36[0] = v10;
    sub_2544CBA4C(a1, v28);
    *&v36[7] = v28[0];
    *&v36[23] = v28[1];
    *&v36[39] = v28[2];
    *&v36[55] = v29;
    v30 = v11;
    v31[0] = v32[0];
    *&v31[1] = *v36;
    *&v31[17] = *&v36[16];
    *&v31[33] = *&v36[32];
    *&v31[49] = *&v36[48];
    *&v31[64] = *(&v29 + 1);
    *v36 = v11;
    *&v36[16] = *v31;
    *&v36[32] = *&v31[16];
    *&v36[48] = *&v31[32];
    *&v36[64] = *&v31[48];
    *&v36[80] = *(&v29 + 1);
    v35 = 0;
    v36[88] = 0;
    sub_2544CDCAC(&v30, v32);
    sub_2544CDCAC(&v30, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB788, &qword_25454EB58);
    sub_2544AE1F0(&qword_27F5FB780, &qword_27F5FB788, &qword_25454EB58);
    sub_25454AD44();
    sub_2544C9C64(v8, v9, v10);

    sub_2544AE150(&v30, &qword_27F5FB788, &qword_25454EB58);
    sub_2544AE150(&v30, &qword_27F5FB788, &qword_25454EB58);
  }

  else
  {
    v12 = *a1;
    sub_254549BD4();
    sub_2544AECF0();
    v13 = sub_25454B274();
    v15 = v14;
    v17 = v16;
    _s7SwiftUI4FontV7HomeUI2E14softMonospaced4size6weightACSd_AC6WeightVtFZfA0__0();
    v18 = sub_25454B194();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    sub_2544C9C64(v13, v15, v17 & 1);

    v35 = v22 & 1;
    v34 = 1;
    *v36 = v18;
    *&v36[8] = v20;
    v36[16] = v22 & 1;
    *&v36[17] = v28[0];
    *&v36[20] = *(v28 + 3);
    *&v36[24] = v24;
    *&v36[32] = v30;
    *&v36[48] = *v31;
    *&v36[64] = *&v31[16];
    *&v36[80] = *&v31[32];
    v36[88] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB788, &qword_25454EB58);
    sub_2544AE1F0(&qword_27F5FB780, &qword_27F5FB788, &qword_25454EB58);
    sub_25454AD44();
  }

  *&v36[64] = v33[0];
  *&v36[73] = *(v33 + 9);
  *v36 = v32[0];
  *&v36[16] = v32[1];
  v25 = v32[3];
  a2[2] = v32[2];
  a2[3] = v25;
  a2[4] = *&v36[64];
  *(a2 + 73) = *&v36[73];
  result = *v36;
  v27 = *&v36[16];
  *a2 = *v36;
  a2[1] = v27;
  return result;
}

uint64_t sub_2544CB498()
{
  v1 = v0;
  v2 = sub_25454AB74();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v58 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = v0[1];
  v7 = v0[2];
  if (v7)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v11 = v0[1];
    v12 = v0[2];
  }

  else
  {
    v13 = *v0;
    v14 = sub_254549BA4();
    if (v15)
    {
      v12 = v15;
      v11 = v14;
      v9 = 0;
      v10 = MEMORY[0x277D84F90];
    }

    else
    {
      v16 = sub_2544CD114();
      if (!v19)
      {
        v38 = sub_2544CCDC4();
        if (v40)
        {
          return v38;
        }

        goto LABEL_18;
      }

      v20 = v16;
      v21 = v17;
      v22 = v18;
      v56 = 0;
      v57 = v8;
      sub_25454AB64();
      sub_25454AB54();
      sub_25454AB24();
      sub_25454AB54();
      sub_25454AB94();
      v55 = v22;
      sub_2544C56A4();
      v23 = sub_25454C024();
      v54 = v21;
      v24 = v20;
      if (!v23)
      {
        v25 = [objc_opt_self() mainBundle];
      }

      v11 = sub_25454B264();
      v12 = v26;
      v28 = v27;
      v10 = v29;
      sub_2544C9C64(v24, v54, v55 & 1);
      v9 = v28;

      v7 = v56;
      v8 = v57;
    }
  }

  v30 = sub_2544CCDC4();
  if (!v33)
  {
    sub_2544C9C64(v11, v12, v9 & 1);

    v38 = sub_2544CCDC4();
    if (v39)
    {
      return v38;
    }

    if (v7)
    {
LABEL_24:

      return v8;
    }

LABEL_18:
    v41 = *v1;
    v42 = sub_254549BA4();
    if (v43)
    {
      v8 = v42;
    }

    else
    {
      v8 = sub_2544CD114();
      if (v46)
      {
        v47 = v44;
        v48 = v45;
        sub_25454AB64();
        sub_25454AB54();
        v49 = v48;
        v50 = v47;
        sub_25454AB24();
        sub_25454AB54();
        sub_25454AB94();
        sub_2544C56A4();
        if (!sub_25454C024())
        {
          v51 = [objc_opt_self() mainBundle];
        }

        v52 = sub_25454B264();
        sub_2544C9C64(v8, v50, v49 & 1);

        v8 = v52;
      }
    }

    goto LABEL_24;
  }

  v34 = v32;
  v35 = v30;
  v36 = v31;
  sub_25454AB64();
  sub_25454AB54();
  LODWORD(v56) = v9;
  sub_25454AB24();
  sub_25454AB54();
  v57 = v36;
  v58 = v35;
  sub_25454AB24();
  sub_25454AB54();
  sub_25454AB94();
  v55 = v10;
  sub_2544C56A4();
  if (!sub_25454C024())
  {
    v37 = [objc_opt_self() mainBundle];
  }

  v8 = sub_25454B264();
  sub_2544C9C64(v11, v12, v56 & 1);

  sub_2544C9C64(v58, v57, v34 & 1);

  return v8;
}

uint64_t sub_2544CBA4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  sub_254549BD4();
  sub_2544AECF0();
  v5 = sub_25454B274();
  v7 = v6;
  v9 = v8;
  _s7SwiftUI4FontV7HomeUI2E14softMonospaced4size6weightACSd_AC6WeightVtFZfA0__0();
  v10 = sub_25454B194();
  v28 = v11;
  v29 = v10;
  v27 = v12;
  v30 = v13;
  sub_2544C9C64(v5, v7, v9 & 1);

  sub_25454B074();
  v14 = sub_25454B194();
  v16 = v15;
  v18 = v17;
  sub_25454B104();
  v19 = sub_25454B224();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_2544C9C64(v14, v16, v18 & 1);

  *a2 = v29;
  *(a2 + 8) = v28;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v30;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v23 & 1;
  *(a2 + 56) = v25;
  sub_2544A8F00(v29, v28, v27 & 1);

  sub_2544A8F00(v19, v21, v23 & 1);

  sub_2544C9C64(v19, v21, v23 & 1);

  sub_2544C9C64(v29, v28, v27 & 1);
}

uint64_t sub_2544CBC8C()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544AAF90;

  return sub_2544CC0E8();
}

uint64_t sub_2544CBD38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraStatusHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544CBD9C()
{
  v1 = type metadata accessor for CameraStatusHeader();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 8) + 64);
  v4 = *(v0 + v3);

  v5 = *(v0 + v3 + 16);

  v6 = v0 + v3 + *(v1 + 24);
  v7 = type metadata accessor for CameraDetailsViewModel.State.Config();
  v8 = v7[5];
  v9 = sub_2545497D4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = *(v6 + v7[6]);

  v12 = v7[8];
  v13 = sub_254549394();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v15 = *(v6 + v7[9]);

  v16 = *(v0 + v3 + *(v1 + 28) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v18, v2 | 7);
}

uint64_t sub_2544CBF98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2544CC000()
{
  v1 = *(type metadata accessor for CameraStatusHeader() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2544AE3EC;

  return sub_2544CBC8C();
}

uint64_t sub_2544CC0E8()
{
  v1[8] = v0;
  v2 = sub_25454C1B4();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7A8, &unk_25454EB70) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = sub_254549354();
  v1[13] = v6;
  v7 = *(v6 - 8);
  v1[14] = v7;
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  sub_25454BE14();
  v1[17] = sub_25454BE04();
  v10 = sub_25454BDB4();
  v1[18] = v10;
  v1[19] = v9;

  return MEMORY[0x2822009F8](sub_2544CC27C, v10, v9);
}

uint64_t sub_2544CC27C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = **(v0 + 64);
  sub_254549BB4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 96);

    sub_2544AE150(v6, &qword_27F5FB7A8, &unk_25454EB70);
LABEL_8:
    v25 = *(v0 + 120);
    v24 = *(v0 + 128);
    v27 = *(v0 + 88);
    v26 = *(v0 + 96);

    v28 = *(v0 + 8);

    return v28();
  }

  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 64);
  (*(v9 + 32))(*(v0 + 128), *(v0 + 96), v8);
  sub_254549334();
  sub_254549344();
  v12 = v11;
  v13 = *(v9 + 8);
  *(v0 + 160) = v13;
  *(v0 + 168) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v7, v8);
  v14 = v10 + *(type metadata accessor for CameraStatusHeader() + 28);
  LOBYTE(v10) = *v14;
  *(v0 + 203) = *v14;
  v15 = *(v14 + 8);
  *(v0 + 176) = v15;
  *(v0 + 16) = v10;
  *(v0 + 24) = v15;
  *(v0 + 200) = v12 <= 1.0;
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
  *(v0 + 32) = v10;
  *(v0 + 40) = v15;
  sub_25454B7A4();
  if (*(v0 + 201) != 1)
  {
    v23 = *(v0 + 136);
    v13(*(v0 + 128), *(v0 + 104));

    goto LABEL_8;
  }

  v16 = *(v0 + 88);
  v17 = sub_25454C554();
  v19 = v18;
  sub_25454C384();
  v20 = swift_task_alloc();
  *(v0 + 192) = v20;
  *v20 = v0;
  v20[1] = sub_2544CC544;
  v21 = *(v0 + 88);

  return sub_2544CD7F4(v17, v19, 0, 0, 1);
}

uint64_t sub_2544CC544()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 192);
  v5 = *v1;

  v6 = v2[11];
  v7 = v2[10];
  v8 = v2[9];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[18];
    v10 = v3[19];
    v11 = sub_2544CE0D8;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[18];
    v10 = v3[19];
    v11 = sub_2544CC6D8;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_2544CC6D8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 203);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 104);

  *(v0 + 48) = v3;
  *(v0 + 56) = v1;
  *(v0 + 202) = 0;

  sub_25454B7B4();
  v5(v7, v8);

  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2544CC7D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CameraDetailsViewModel.State.Config();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2544CC898(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CameraDetailsViewModel.State.Config();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2544CC93C()
{
  sub_254549C04();
  if (v0 <= 0x3F)
  {
    sub_2544CCA38(319, &qword_27F5FB730, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CameraDetailsViewModel.State.Config();
      if (v2 <= 0x3F)
      {
        sub_2544CCA38(319, &qword_27F5FAE28, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2544CCA38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2544CCA8C()
{
  result = qword_27F5FB738;
  if (!qword_27F5FB738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB710, &qword_25454EAA0);
    sub_2544CCB44();
    sub_2544AE1F0(&qword_27F5FB7A0, &qword_27F5FB718, &qword_25454EAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB738);
  }

  return result;
}

unint64_t sub_2544CCB44()
{
  result = qword_27F5FB740;
  if (!qword_27F5FB740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB748, &qword_25454EB38);
    sub_2544CCBD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB740);
  }

  return result;
}

unint64_t sub_2544CCBD0()
{
  result = qword_27F5FB750;
  if (!qword_27F5FB750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB758, &qword_25454EB40);
    sub_2544CCC88();
    sub_2544AE1F0(&qword_27F5FB790, &qword_27F5FB798, &qword_25454EB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB750);
  }

  return result;
}

unint64_t sub_2544CCC88()
{
  result = qword_27F5FB760;
  if (!qword_27F5FB760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB768, &qword_25454EB48);
    sub_2544CCD0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB760);
  }

  return result;
}

unint64_t sub_2544CCD0C()
{
  result = qword_27F5FB770;
  if (!qword_27F5FB770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB778, &qword_25454EB50);
    sub_2544AE1F0(&qword_27F5FB780, &qword_27F5FB788, &qword_25454EB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB770);
  }

  return result;
}

uint64_t sub_2544CCDC4()
{
  v1 = sub_25454AB74();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_2545493C4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7C0, &qword_2545501E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = v0 + *(type metadata accessor for CameraStatusHeader() + 24);
  v11 = type metadata accessor for CameraDetailsViewModel.State.Config();
  result = 0;
  v13 = v10 + *(v11 + 28);
  if ((*(v13 + 8) & 1) == 0)
  {
    v15[1] = *v13;
    sub_2545493A4();
    sub_2544CDD1C();
    sub_254549114();
    sub_2544AE1F0(&qword_27F5FB7D0, &qword_27F5FB7C0, &qword_2545501E0);
    sub_25454C094();
    (*(v6 + 8))(v9, v5);
    sub_25454AB64();
    sub_25454AB54();
    sub_25454B734();
    sub_25454AB34();

    sub_25454AB54();
    sub_25454AB44();

    sub_25454AB54();
    sub_25454AB94();
    sub_2544C56A4();
    if (!sub_25454C024())
    {
      v14 = [objc_opt_self() mainBundle];
    }

    return sub_25454B264();
  }

  return result;
}

uint64_t sub_2544CD114()
{
  v1 = sub_25454C484();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25454C314();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25454C4A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25454C524();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v51 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_25454C534();
  v15 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v52 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7D8, &qword_25454EB90);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7A8, &unk_25454EB70);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v46 - v21;
  v23 = sub_254549354();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0 + *(type metadata accessor for CameraStatusHeader() + 28);
  v29 = *v28;
  v30 = *(v28 + 1);
  v56 = v29;
  v57 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  if (v55 == 1)
  {
    sub_25454AB84();
    sub_2544C56A4();
    if (!sub_25454C024())
    {
      v31 = [objc_opt_self() mainBundle];
    }

    return sub_25454B264();
  }

  else
  {
    v33 = *v0;
    sub_254549BB4();
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      sub_2544AE150(v22, &qword_27F5FB7A8, &unk_25454EB70);
      return 0;
    }

    else
    {
      v49 = v24;
      (*(v24 + 32))(v27, v22, v23);
      sub_25454A694();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7E0, &qword_25454EB98);
      v34 = *(sub_25454C504() - 8);
      v48 = v4;
      v35 = *(v34 + 72);
      v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v47 = v5;
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_25454D9B0;
      sub_25454C4D4();
      sub_25454C4B4();
      v38 = v50;
      v46[1] = v11;
      sub_25454C4C4();
      sub_25454C4E4();
      sub_25454C4F4();
      sub_2544CDD70(v37);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_25454C514();
      v39 = v54;
      v40 = v47;
      (*(v38 + 104))(v54, *MEMORY[0x277D84660], v47);
      sub_25454C494();
      (*(v38 + 8))(v39, v40);
      sub_25454C474();
      sub_25454C464();
      sub_2544CE090(&qword_27F5FB7E8, MEMORY[0x277CC9FF0]);
      v41 = sub_25454B254();
      v43 = v42;
      LOBYTE(v38) = v44;
      v45 = sub_25454B1F4();
      sub_2544C9C64(v41, v43, v38 & 1);

      (*(v49 + 8))(v27, v23);
      return v45;
    }
  }
}

uint64_t sub_2544CD7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_25454C1A4();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2544CD8F4, 0, 0);
}

uint64_t sub_2544CD8F4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_25454C1B4();
  v7 = sub_2544CE090(&qword_27F5FB7B0, MEMORY[0x277D85928]);
  sub_25454C364();
  sub_2544CE090(&qword_27F5FB7B8, MEMORY[0x277D858F8]);
  sub_25454C1C4();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2544CDA84;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2544CDA84()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2544CDC40, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_2544CDC40()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_2544CDCAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB788, &qword_25454EB58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2544CDD1C()
{
  result = qword_27F5FB7C8;
  if (!qword_27F5FB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB7C8);
  }

  return result;
}

uint64_t sub_2544CDD70(uint64_t a1)
{
  v2 = sub_25454C504();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7F0, &unk_25454EBA0);
    v10 = sub_25454C134();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2544CE090(&qword_27F5FB7F8, MEMORY[0x277CC9FC8]);
      v18 = sub_25454BBE4();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2544CE090(&qword_27F5FB800, MEMORY[0x277CC9FC8]);
          v25 = sub_25454BC44();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2544CE090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2544CE0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_2545311A8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2544DA948(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_2544D4CD4();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_254530B64(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_2544CE1D4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D8, &unk_25454ECD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = _s12RegistrationVMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2544AE150(a1, &qword_27F5FB3D8, &unk_25454ECD0);
    sub_254530954(a2, v8);
    v14 = sub_254549394();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2544AE150(v8, &qword_27F5FB3D8, &unk_25454ECD0);
  }

  else
  {
    sub_2544D76F8(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25453149C(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_254549394();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_2544CE3E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v37 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB868, "ڢ");
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v42);
  v8 = &v37 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB558, &qword_25454EBB0);
  v45 = *(v41 - 8);
  v9 = *(v45 + 64);
  v10 = MEMORY[0x28223BE20](v41);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB870, &qword_25454EC58);
  v39 = *(v14 - 8);
  v40 = v14;
  v15 = *(v39 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  swift_defaultActor_initialize();
  v26 = OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar__registrations;
  v46 = sub_2544D732C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB848, &qword_25454EC38);
  sub_25454A144();
  (*(v22 + 32))(v1 + v26, v25, v21);
  type metadata accessor for CameraViewRegistrar.Action(0);
  v27 = v42;
  (*(v5 + 104))(v8, *MEMORY[0x277D85778], v42);
  v38 = v20;
  v28 = v13;
  sub_25454BE54();
  (*(v5 + 8))(v8, v27);
  v29 = *(v45 + 16);
  v30 = v41;
  v29(v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_actions, v13, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB878, &qword_25454EC60);
  v31 = v39;
  v32 = v40;
  (*(v39 + 16))(v18, v20, v40);
  v29(v43, v28, v30);
  *(v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_batchManager) = sub_254549F14();
  *(v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_deactivatedScenes) = MEMORY[0x277D84FA0];
  v33 = v44;
  sub_25454BE24();
  v34 = sub_25454BE44();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v1;

  sub_2544B5138(0, 0, v33, &unk_25454EC70, v35);

  (*(v45 + 8))(v28, v30);
  (*(v31 + 8))(v38, v32);
  return v1;
}

uint64_t sub_2544CE958()
{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_batchManager);
  v0[4] = swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB878, &qword_25454EC60);
  sub_2544AE1F0(&qword_27F5FB880, &qword_27F5FB878, &qword_25454EC60);
  v2 = sub_25454BDB4();

  return MEMORY[0x2822009F8](sub_2544CEA54, v2, v1);
}

uint64_t sub_2544CEA54()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_254549F24();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2544CEAD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2544CEAF4, 0, 0);
}

uint64_t sub_2544CEAF4()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2544CEBE4;
    v4 = v0[5];

    return sub_2544CF054(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2544CEBE4()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2544CECE0, 0, 0);
}

uint64_t sub_2544CECE0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CameraViewRegistrar.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB558, &qword_25454EBB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_actions;
  (*(v3 + 16))(&v14 - v5, v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_actions, v2);
  sub_25454BE74();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v8((v1 + v7), v2);
  v9 = *(v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_batchManager);

  v10 = *(v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_deactivatedScenes);

  v11 = OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar__registrations;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t CameraViewRegistrar.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB558, &qword_25454EBB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_actions;
  (*(v3 + 16))(&v14 - v5, v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_actions, v2);
  sub_25454BE74();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v8((v1 + v7), v2);
  v9 = *(v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_batchManager);

  v10 = *(v1 + OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_deactivatedScenes);

  v11 = OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar__registrations;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_2544CF054(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_254549B54();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = sub_25454A2E4();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v9 = sub_254549394();
  v2[19] = v9;
  v10 = *(v9 - 8);
  v2[20] = v10;
  v11 = *(v10 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D8, &unk_25454ECD0) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v13 = _s12RegistrationVMa();
  v2[32] = v13;
  v14 = *(v13 - 8);
  v2[33] = v14;
  v15 = *(v14 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v16 = type metadata accessor for CameraViewRegistrar.Action(0);
  v2[40] = v16;
  v17 = *(v16 - 8);
  v2[41] = v17;
  v18 = *(v17 + 64) + 15;
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2544CF364, v1, 0);
}

uint64_t sub_2544CF364()
{
  v130 = v0;
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[41];
    v4 = v0[32];
    v118 = v0[12];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v121 = (v0[20] + 16);
    v124 = (v0[33] + 48);
    v6 = MEMORY[0x277D84F90];
    v126 = v0[20];
    v120 = *(v3 + 72);
    v119 = v4;
    while (1)
    {
      v10 = v0[40];
      sub_2544D78D4(v5, v0[42], type metadata accessor for CameraViewRegistrar.Action);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = v0[42];
      if (EnumCaseMultiPayload == 1)
      {
        v13 = v0[37];
        v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB560, &qword_25454E580) + 48));
        sub_2544D78D4(v12, v13, _s12RegistrationVMa);
        if (v14 != 1)
        {
          v32 = v0[42];
          v33 = v0[35];
          v34 = v0[32];
          v36 = v0[26];
          v35 = v0[27];
          v37 = v0[12];
          sub_2544D7868(v0[37]);
          sub_2544D76F8(v32, v33);
          sub_2544D03AC(v33, v35);
          sub_2544AE240(v35, v36, &qword_27F5FB3D8, &unk_25454ECD0);
          if ((*v124)(v36, 1, v34) == 1)
          {
            v38 = v0[35];
            sub_2544AE150(v0[27], &qword_27F5FB3D8, &unk_25454ECD0);
            sub_2544D7868(v38);
            v4 = v119;
          }

          else
          {
            v56 = v0[34];
            v57 = v0[22];
            v58 = v0[19];
            sub_2544D76F8(v0[26], v56);
            (*v121)(v57, v56 + *(v119 + 20), v58);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_2544D38F0(0, v6[2] + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
            }

            v60 = v6[2];
            v59 = v6[3];
            if (v60 >= v59 >> 1)
            {
              v6 = sub_2544D38F0(v59 > 1, v60 + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
            }

            v61 = v0[35];
            v62 = v0[27];
            v63 = v0[22];
            v64 = v0[19];
            sub_2544D7868(v0[34]);
            sub_2544AE150(v62, &qword_27F5FB3D8, &unk_25454ECD0);
            sub_2544D7868(v61);
            v6[2] = v60 + 1;
            (*(v126 + 32))(v6 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v60, v63, v64);
            v4 = v119;
          }

          goto LABEL_6;
        }

        v15 = v0[32];
        v17 = v0[28];
        v16 = v0[29];
        v18 = v0[12];
        sub_2544D03AC(v0[37], v16);
        sub_2544AE240(v16, v17, &qword_27F5FB3D8, &unk_25454ECD0);
        if ((*v124)(v17, 1, v15) == 1)
        {
          sub_2544AE150(v0[29], &qword_27F5FB3D8, &unk_25454ECD0);
        }

        else
        {
          v19 = v0[36];
          v20 = v0[23];
          v21 = v0[19];
          sub_2544D76F8(v0[28], v19);
          (*v121)(v20, v19 + *(v4 + 20), v21);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2544D38F0(0, v6[2] + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
          }

          v23 = v6[2];
          v22 = v6[3];
          if (v23 >= v22 >> 1)
          {
            v6 = sub_2544D38F0(v22 > 1, v23 + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
          }

          v24 = v0[29];
          v25 = v0[23];
          v26 = v0[19];
          sub_2544D7868(v0[36]);
          sub_2544AE150(v24, &qword_27F5FB3D8, &unk_25454ECD0);
          v6[2] = v23 + 1;
          (*(v126 + 32))(v6 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v23, v25, v26);
        }

        v7 = v0[42];
        v8 = v0[37];
        v9 = *(v8 + *(v4 + 28));
        swift_beginAccess();
        sub_2544D5DA4(&v129, v9);
        swift_endAccess();
        sub_2544D7868(v8);
      }

      else
      {
        v27 = v0[39];
        v28 = v0[31];
        v29 = v0[32];
        v30 = v0[30];
        v31 = v0[12];
        sub_2544D76F8(v0[42], v27);
        sub_2544D03AC(v27, v28);
        sub_2544AE240(v28, v30, &qword_27F5FB3D8, &unk_25454ECD0);
        if ((*v124)(v30, 1, v29) == 1)
        {
          sub_2544AE150(v0[31], &qword_27F5FB3D8, &unk_25454ECD0);
          v4 = v119;
        }

        else
        {
          v39 = v0[38];
          v40 = v0[25];
          v41 = v0[19];
          sub_2544D76F8(v0[30], v39);
          v4 = v119;
          (*v121)(v40, v39 + *(v119 + 20), v41);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2544D38F0(0, v6[2] + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
          }

          v43 = v6[2];
          v42 = v6[3];
          if (v43 >= v42 >> 1)
          {
            v6 = sub_2544D38F0(v42 > 1, v43 + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
          }

          v44 = v0[31];
          v45 = v0[25];
          v46 = v0[19];
          sub_2544D7868(v0[38]);
          sub_2544AE150(v44, &qword_27F5FB3D8, &unk_25454ECD0);
          v6[2] = v43 + 1;
          (*(v126 + 32))(v6 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v43, v45, v46);
        }

        v47 = v0[39];
        v48 = v0[24];
        v49 = v0[19];
        v50 = v0[12];
        sub_2544D08F0(v47);
        (*v121)(v48, v47 + *(v4 + 20), v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2544D38F0(0, v6[2] + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
        }

        v52 = v6[2];
        v51 = v6[3];
        if (v52 >= v51 >> 1)
        {
          v6 = sub_2544D38F0(v51 > 1, v52 + 1, 1, v6, &qword_27F5FB8F0, &qword_25454ECE8, MEMORY[0x277CC95F0]);
        }

        v7 = v0[39];
        v53 = v0[24];
        v54 = v0[19];
        v6[2] = v52 + 1;
        (*(v126 + 32))(v6 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v52, v53, v54);
        v55 = *(v7 + *(v4 + 28));
        swift_beginAccess();
        sub_2544D5BD8(v55, &v129);
        swift_endAccess();
      }

      sub_2544D7868(v7);
LABEL_6:
      v5 += v120;
      if (!--v2)
      {
        goto LABEL_35;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_35:
  v0[43] = v6;
  v65 = sub_2544D793C(MEMORY[0x277D84F90]);
  v66 = v6[2];
  if (v66)
  {
    v67 = v0[20];
    v70 = *(v67 + 16);
    v69 = v67 + 16;
    v68 = v70;
    v71 = v6 + ((*(v69 + 64) + 32) & ~*(v69 + 64));
    v72 = *(v69 + 56);
    v127 = v0[14];
    while (1)
    {
      v73 = v0[12];
      v68(v0[21], v71, v0[19]);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v74 = v0[12];
        swift_task_reportUnexpectedExecutor();
      }

      v75 = v0[21];
      v76 = v0[12];
      sub_2544D1380(v75, v0[15]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v65;
      v78 = sub_2544DA750(v75);
      v81 = v65[2];
      v82 = (v79 & 1) == 0;
      v83 = __OFADD__(v81, v82);
      v84 = v81 + v82;
      if (v83)
      {
        __break(1u);
LABEL_61:
        __break(1u);
        return MEMORY[0x2822009F8](v78, v79, v80);
      }

      v85 = v79;
      if (v65[3] < v84)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_46;
      }

      v94 = v78;
      sub_2544D52C8();
      v78 = v94;
      v65 = v129;
      if (v85)
      {
LABEL_37:
        (*(v127 + 40))(v65[7] + *(v127 + 72) * v78, v0[15], v0[13]);
        goto LABEL_38;
      }

LABEL_47:
      v87 = v0[21];
      v88 = v0[19];
      v89 = v0[15];
      v90 = v0[13];
      v65[(v78 >> 6) + 8] |= 1 << v78;
      v91 = v78;
      v68(v65[6] + v78 * v72, v87, v88);
      v78 = (*(v127 + 32))(v65[7] + *(v127 + 72) * v91, v89, v90);
      v92 = v65[2];
      v83 = __OFADD__(v92, 1);
      v93 = v92 + 1;
      if (v83)
      {
        goto LABEL_61;
      }

      v65[2] = v93;
LABEL_38:
      (*(v69 - 8))(v0[21], v0[19]);
      v71 += v72;
      if (!--v66)
      {
        goto LABEL_51;
      }
    }

    v122 = v0[21];
    sub_2544D459C(v84, isUniquelyReferenced_nonNull_native);
    v65 = v129;
    v78 = sub_2544DA750(v122);
    if ((v85 & 1) != (v86 & 1))
    {
      v116 = v0[19];

      return sub_25454C354();
    }

LABEL_46:
    if (v85)
    {
      goto LABEL_37;
    }

    goto LABEL_47;
  }

LABEL_51:
  v0[44] = v65;
  v95 = v0[18];
  v96 = v0[12];
  sub_25454A2B4();

  v97 = sub_25454A2C4();
  v98 = sub_25454BF94();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = v0[19];
    v123 = v0[17];
    v125 = v0[16];
    v128 = v0[18];
    v100 = v0[12];
    v101 = v0[13];
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v129 = v103;
    *v102 = 136315906;
    *(v102 + 4) = sub_254502AAC(0xD000000000000021, 0x8000000254555370, &v129);
    *(v102 + 12) = 2080;
    *(v102 + 14) = sub_254502AAC(0x5F28656C646E6168, 0xEA0000000000293ALL, &v129);
    *(v102 + 22) = 2080;
    sub_2544D7B5C(&qword_27F5FB028, MEMORY[0x277CC95F0]);
    v104 = sub_25454BBC4();
    v106 = sub_254502AAC(v104, v105, &v129);

    *(v102 + 24) = v106;
    *(v102 + 32) = 2080;
    v107 = OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_deactivatedScenes;
    swift_beginAccess();
    v108 = *(v100 + v107);
    sub_2544D7BA4();

    v109 = sub_25454BEE4();
    v111 = v110;

    v112 = sub_254502AAC(v109, v111, &v129);

    *(v102 + 34) = v112;
    _os_log_impl(&dword_2544A5000, v97, v98, "%s-%s cameras being updated: %s, deactivated scenes: %s", v102, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v103, -1, -1);
    MEMORY[0x259C0FDF0](v102, -1, -1);

    (*(v123 + 8))(v128, v125);
  }

  else
  {
    v114 = v0[17];
    v113 = v0[18];
    v115 = v0[16];

    (*(v114 + 8))(v113, v115);
  }

  v78 = sub_2544D0100;
  v79 = 0;
  v80 = 0;

  return MEMORY[0x2822009F8](v78, v79, v80);
}

uint64_t sub_2544D0100()
{
  sub_25454BE14();
  *(v0 + 360) = sub_25454BE04();
  v2 = sub_25454BDB4();

  return MEMORY[0x2822009F8](sub_2544D0194, v2, v1);
}

uint64_t sub_2544D0194()
{
  v2 = v0[44];
  v1 = v0[45];

  sub_2544D0D6C(v2);
  v3 = v0[44];
  v4 = v0[12];

  return MEMORY[0x2822009F8](sub_2544D0248, v4, 0);
}

uint64_t sub_2544D0248()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[38];
  v4 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[34];
  v7 = v0[35];
  v10 = v0[30];
  v9 = v0[31];
  v13 = v0[29];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[18];
  v23 = v0[15];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2544D03AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D8, &unk_25454ECD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v41 - v5;
  v7 = sub_254549394();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7);
  v51 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25454A2E4();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s12RegistrationVMa();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  swift_beginAccess();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  sub_25454A164();
  v22 = v53[4];
  swift_endAccess();
  if (*(v22 + 16) && (v23 = sub_2544DA750(a1), (v24 & 1) != 0))
  {
    v44 = a1;
    v45 = v6;
    sub_2544D78D4(*(v22 + 56) + v15[9] * v23, v21, _s12RegistrationVMa);

    sub_25454A2B4();
    sub_2544D78D4(v21, v19, _s12RegistrationVMa);
    v25 = sub_25454A2C4();
    v26 = sub_25454BF94();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v42 = v26;
      v28 = v27;
      v43 = swift_slowAlloc();
      v53[0] = v43;
      *v28 = 136315650;
      *(v28 + 4) = sub_254502AAC(0xD000000000000021, 0x8000000254555370, v53);
      v41 = v25;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_254502AAC(0xD000000000000019, 0x80000002545553A0, v53);
      *(v28 + 22) = 2080;
      v29 = sub_2544D7FAC();
      v31 = v30;
      sub_2544D7868(v19);
      v32 = sub_254502AAC(v29, v31, v53);

      *(v28 + 24) = v32;
      v33 = v41;
      _os_log_impl(&dword_2544A5000, v41, v42, "%s-%s unregistering %s", v28, 0x20u);
      v34 = v43;
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v34, -1, -1);
      MEMORY[0x259C0FDF0](v28, -1, -1);
    }

    else
    {

      sub_2544D7868(v19);
    }

    (*(v47 + 8))(v13, v48);
    v36 = v51;
    (*(v49 + 16))(v51, v44, v50);
    v37 = v15[7];
    v38 = v45;
    v37(v45, 1, 1, v14);
    swift_beginAccess();
    v39 = sub_25454A154();
    sub_2544CE1D4(v38, v36);
    v39(v53, 0);
    swift_endAccess();
    v40 = v52;
    sub_2544D76F8(v21, v52);
    return (v37)(v40, 0, 1, v14);
  }

  else
  {

    return (v15[7])(v52, 1, 1, v14);
  }
}

uint64_t sub_2544D08F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D8, &unk_25454ECD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = sub_254549394();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s12RegistrationVMa();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_25454A2E4();
  v15 = *(v38 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v38);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454A2B4();
  sub_2544D78D4(a1, v14, _s12RegistrationVMa);
  v19 = sub_25454A2C4();
  v20 = sub_25454BF94();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v10;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = v1;
    v35 = v23;
    v43[0] = v23;
    *v22 = 136315650;
    *(v22 + 4) = sub_254502AAC(0xD000000000000021, 0x8000000254555370, v43);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_254502AAC(0x5F28747265736E69, 0xEA0000000000293ALL, v43);
    *(v22 + 22) = 2080;
    v24 = sub_2544D7FAC();
    v25 = a1;
    v26 = v6;
    v28 = v27;
    sub_2544D7868(v14);
    v29 = sub_254502AAC(v24, v28, v43);
    v6 = v26;
    a1 = v25;

    *(v22 + 24) = v29;
    _os_log_impl(&dword_2544A5000, v19, v20, "%s-%s registering %s", v22, 0x20u);
    v30 = v35;
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v30, -1, -1);
    v31 = v22;
    v10 = v36;
    MEMORY[0x259C0FDF0](v31, -1, -1);
  }

  else
  {

    sub_2544D7868(v14);
  }

  (*(v15 + 8))(v18, v38);
  (*(v41 + 16))(v10, a1, v42);
  sub_2544D78D4(a1, v6, _s12RegistrationVMa);
  (*(v39 + 56))(v6, 0, 1, v40);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  v32 = sub_25454A154();
  sub_2544CE1D4(v6, v10);
  v32(v43, 0);
  return swift_endAccess();
}

uint64_t sub_2544D0D6C(uint64_t a1)
{
  v57 = a1;
  v1 = sub_254549B54();
  v56 = *(v1 - 8);
  v2 = *(v56 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v63 = v47 - v6;
  v7 = sub_254549394();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB900, &qword_25454ECF8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = v47 - v18;
  sub_25454BE14();
  v47[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = v57 + 64;
  v20 = 1 << *(v57 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v57 + 64);
  v48 = (v20 + 63) >> 6;
  v49 = v55 + 16;
  v62 = (v56 + 16);
  v64 = (v56 + 32);
  v65 = (v55 + 32);
  v58 = (v55 + 8);
  v59 = (v56 + 8);

  v24 = 0;
  v53 = v5;
  v54 = v1;
  v66 = v7;
  v52 = v11;
  v50 = v17;
  v60 = v19;
  while (v22)
  {
    v25 = v24;
LABEL_17:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = v28 | (v25 << 6);
    v30 = v57;
    v31 = v55;
    (*(v55 + 16))(v51, *(v57 + 48) + *(v55 + 72) * v29, v7);
    v32 = v56;
    v33 = v63;
    v34 = v54;
    (*(v56 + 16))(v63, *(v30 + 56) + *(v56 + 72) * v29, v54);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB908, &qword_25454ED00);
    v36 = *(v35 + 48);
    v17 = v50;
    (*(v31 + 32))();
    v37 = &v17[v36];
    v1 = v34;
    (*(v32 + 32))(v37, v33, v34);
    (*(*(v35 - 8) + 56))(v17, 0, 1, v35);
    v11 = v52;
    v5 = v53;
LABEL_18:
    v38 = v61;
    sub_2544B14E8(v17, v61, &qword_27F5FB900, &qword_25454ECF8);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB908, &qword_25454ED00);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
    {
    }

    v40 = *(v39 + 48);
    v41 = v38;
    v42 = v38;
    v7 = v66;
    (*v65)(v11, v41, v66);
    (*v64)(v5, v42 + v40, v1);
    sub_2545495D4();
    v43 = sub_2545495C4();
    v44 = v1;
    v45 = sub_2545495E4();

    if (v45)
    {
      (*v62)(v63, v5, v44);
      sub_254549BC4();
    }

    (*v59)(v5, v44);
    result = (*v58)(v11, v7);
    v1 = v44;
    v19 = v60;
  }

  if (v48 <= v24 + 1)
  {
    v26 = v24 + 1;
  }

  else
  {
    v26 = v48;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v48)
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB908, &qword_25454ED00);
      (*(*(v46 - 8) + 56))(v17, 1, 1, v46);
      v22 = 0;
      v24 = v27;
      goto LABEL_18;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      v24 = v25;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2544D1380@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v181 = sub_254549B54();
  v176 = *(v181 - 8);
  v4 = *(v176 + 64);
  v5 = MEMORY[0x28223BE20](v181);
  v139 = v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v137 = v134 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8A8, &qword_25454ECA8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v142 = v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v135 = v134 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v168 = v134 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v136 = v134 - v17;
  MEMORY[0x28223BE20](v16);
  v138 = v134 - v18;
  v156 = sub_254549AC4();
  v19 = *(v156 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v156);
  v143 = v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v160 = v134 - v23;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB898, &qword_25454EC98);
  v180 = *(v171 - 8);
  v24 = *(v180 + 64);
  v25 = MEMORY[0x28223BE20](v171);
  v155 = v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v154 = v134 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v177 = v134 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v173 = v134 - v32;
  MEMORY[0x28223BE20](v31);
  v167 = v134 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8B0, &unk_25454ECB0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v146 = v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v147 = v134 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v145 = v134 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v153 = v134 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = v134 - v44;
  v46 = sub_254549B04();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v152 = v134 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v52 = v134 - v51;
  v170 = v2;
  v53 = sub_2544D2B84(a1);
  v184 = MEMORY[0x277D84F90];
  sub_2544D7B5C(&qword_27F5FB6A8, MEMORY[0x277D15E40]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB6B0, &qword_25454E8A0);
  v54 = v176;
  sub_2544AE1F0(&qword_27F5FB6B8, &qword_27F5FB6B0, &qword_25454E8A0);
  v157 = v52;
  v159 = v46;
  sub_25454C0E4();
  v55 = *(v19 + 56);
  v158 = v45;
  v151 = v19 + 56;
  v150 = v55;
  v55(v45, 1, 1, v156);
  v56 = v53;
  v57 = *(v53 + 16);
  v169 = v47;
  v166 = v57;
  if (v57)
  {
    v58 = v171;
    v165 = *(v171 + 48);
    v59 = v180;
    v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v134[1] = v56;
    v163 = v56 + v60;
    v164 = OBJC_IVAR____TtC7HomeUI219CameraViewRegistrar_deactivatedScenes;
    swift_beginAccess();
    v61 = 0;
    v179 = (v54 + 32);
    v162 = *(v59 + 72);
    v175 = v54 + 8;
    v149 = (v47 + 8);
    v172 = (v19 + 48);
    v144 = (v19 + 8);
    v141 = (v19 + 16);
    v178 = MEMORY[0x277D84F90];
    v62 = v173;
    v148 = (v19 + 32);
    while (1)
    {
      v180 = v61;
      v65 = v167;
      sub_2544AE240(v163 + v162 * v61, v167, &qword_27F5FB898, &qword_25454EC98);
      v66 = *(v65 + v165);
      v67 = *(v58 + 48);
      v68 = *v179;
      (*v179)(v62, v65, v181);
      *(v62 + v67) = v66;
      v69 = *(v170 + v164);
      if (*(v69 + 16))
      {
        v70 = *(v69 + 40);
        sub_25454C3E4();
        if (v66)
        {
          v71 = 0x697463416576696CLL;
        }

        else
        {
          v71 = 7368801;
        }

        if (v66)
        {
          v72 = 0xEC00000079746976;
        }

        else
        {
          v72 = 0xE300000000000000;
        }

        sub_25454BD14();

        v73 = sub_25454C434();
        v74 = -1 << *(v69 + 32);
        v75 = v73 & ~v74;
        if ((*(v69 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
        {
          v76 = ~v74;
          while (1)
          {
            v77 = *(*(v69 + 48) + v75) ? 0x697463416576696CLL : 7368801;
            v78 = *(*(v69 + 48) + v75) ? 0xEC00000079746976 : 0xE300000000000000;
            if (v77 == v71 && v78 == v72)
            {
              break;
            }

            v80 = sub_25454C334();

            if (v80)
            {
              goto LABEL_38;
            }

            v75 = (v75 + 1) & v76;
            if (((*(v69 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

LABEL_38:
          v63 = v168;

          v62 = v173;
          sub_2544AE150(v173, &qword_27F5FB898, &qword_25454EC98);
          v54 = v176;
          v64 = v169;
          v58 = v171;
          goto LABEL_4;
        }

LABEL_26:

        v54 = v176;
        v62 = v173;
      }

      sub_2544AE240(v62, v177, &qword_27F5FB898, &qword_25454EC98);
      v81 = v178;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_2544D38F0(0, v81[2] + 1, 1, v81, &qword_27F5FB8D8, &qword_25454ECC8, MEMORY[0x277D15E70]);
      }

      v83 = v81[2];
      v82 = v81[3];
      if (v83 >= v82 >> 1)
      {
        v81 = sub_2544D38F0(v82 > 1, v83 + 1, 1, v81, &qword_27F5FB8D8, &qword_25454ECC8, MEMORY[0x277D15E70]);
      }

      v81[2] = v83 + 1;
      v84 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v178 = v81;
      v85 = v81 + v84 + *(v54 + 72) * v83;
      v86 = v181;
      v68(v85, v177, v181);
      v87 = v154;
      sub_2544AE240(v62, v154, &qword_27F5FB898, &qword_25454EC98);
      v88 = v152;
      sub_254549B34();
      v174 = *(v54 + 8);
      v174(v87, v86);
      v89 = MEMORY[0x277D15E40];
      sub_2544D7B5C(&qword_27F5FB8B8, MEMORY[0x277D15E40]);
      v90 = v62;
      v91 = v157;
      v92 = v159;
      sub_25454BD94();
      v93 = *v149;
      (*v149)(v91, v92);
      sub_25454BD94();
      v184 = v182 | v183;
      sub_2544D7B5C(&qword_27F5FB8C0, v89);
      sub_25454C584();
      v93(v88, v92);
      v94 = v155;
      sub_2544AE240(v90, v155, &qword_27F5FB898, &qword_25454EC98);
      v95 = v153;
      sub_254549B24();
      v96 = *v172;
      v97 = v156;
      if ((*v172)(v95, 1, v156) != 1)
      {
        break;
      }

      v62 = v90;
      sub_2544AE150(v90, &qword_27F5FB898, &qword_25454EC98);
      sub_2544AE150(v95, &qword_27F5FB8B0, &unk_25454ECB0);
      v174(v94, v181);
      v63 = v168;
      v64 = v169;
      v54 = v176;
      v58 = v171;
LABEL_4:
      v61 = v180 + 1;
      if (v180 + 1 == v166)
      {
        v110 = v64;

        v111 = v63;
        v112 = v142;
        v113 = v139;
        v114 = v137;
        v115 = v178;
        goto LABEL_47;
      }
    }

    v161 = *v148;
    v161(v160, v95, v97);
    v174(v94, v181);
    v98 = v158;
    v99 = v146;
    sub_2544AE240(v158, v146, &qword_27F5FB8B0, &unk_25454ECB0);
    v100 = v96(v99, 1, v97);
    v101 = v147;
    if (v100 == 1)
    {
      sub_2544AE150(v173, &qword_27F5FB898, &qword_25454EC98);
      sub_2544AE150(v98, &qword_27F5FB8B0, &unk_25454ECB0);
      v102 = 1;
      v54 = v176;
    }

    else
    {
      v103 = v143;
      v161(v143, v99, v97);
      sub_2544D7B5C(&qword_27F5FB8C8, MEMORY[0x277D15E08]);
      v104 = sub_25454BC24();
      sub_2544AE150(v173, &qword_27F5FB898, &qword_25454EC98);
      sub_2544AE150(v98, &qword_27F5FB8B0, &unk_25454ECB0);
      v54 = v176;
      if ((v104 & 1) == 0)
      {
        v101 = v147;
        v105 = v161;
        v161(v147, v103, v97);
        v102 = 0;
        goto LABEL_40;
      }

      (*v144)(v103, v97);
      v101 = v147;
      (*v141)(v147, v160, v97);
      v102 = 0;
    }

    v105 = v161;
LABEL_40:
    v150(v101, v102, 1, v97);
    if (v96(v101, 1, v97) == 1)
    {
      v106 = v101;
      v107 = v145;
      v105(v145, v160, v97);
      v108 = v96(v106, 1, v97);
      v109 = v107;
      v58 = v171;
      if (v108 != 1)
      {
        sub_2544AE150(v106, &qword_27F5FB8B0, &unk_25454ECB0);
      }
    }

    else
    {
      (*v144)(v160, v97);
      v109 = v145;
      v105(v145, v101, v97);
      v58 = v171;
    }

    v150(v109, 0, 1, v97);
    sub_2544B14E8(v109, v158, &qword_27F5FB8B0, &unk_25454ECB0);
    v62 = v173;
    v64 = v169;
    v63 = v168;
    goto LABEL_4;
  }

  v115 = MEMORY[0x277D84F90];
  v113 = v139;
  v114 = v137;
  v111 = v168;
  v110 = v47;
  v112 = v142;
LABEL_47:
  v116 = v136;
  v178 = v115;
  sub_2544D28D4(v115, v136);
  sub_2544B14E8(v116, v111, &qword_27F5FB8A8, &qword_25454ECA8);
  v117 = v54;
  v118 = *(v54 + 48);
  v119 = v181;
  if (v118(v111, 1, v181) == 1)
  {
    sub_2544AE150(v158, &qword_27F5FB8B0, &unk_25454ECB0);
    (*(v110 + 8))(v157, v159);
    v120 = v138;
    (*(v117 + 56))(v138, 1, 1, v119);
  }

  else
  {
    v121 = *(v117 + 32);
    v121(v114, v111, v119);
    (*(v117 + 16))(v113, v114, v119);
    v122 = (*(v117 + 88))(v113, v119);
    if (v122 == *MEMORY[0x277D15E68])
    {
      v123 = v122;
      (*(v117 + 8))(v114, v119);
      (*(v117 + 96))(v113, v119);
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB6A0, &qword_25454ECC0);
      v125 = *(v124 + 48);
      v180 = v125;
      v126 = *(v124 + 64);
      v127 = sub_254549C14();
      v128 = v135;
      (*(*(v127 - 8) + 32))(v135, v113, v127);
      sub_2544B14E8(v158, &v128[v125], &qword_27F5FB8B0, &unk_25454ECB0);
      v129 = v169;
      v130 = v159;
      (*(v169 + 32))(&v128[v126], v157, v159);
      (*(v117 + 104))(v128, v123, v119);
      (*(v117 + 56))(v128, 0, 1, v119);
      (*(v129 + 8))(&v113[v126], v130);
      sub_2544AE150(&v113[v180], &qword_27F5FB8B0, &unk_25454ECB0);
    }

    else
    {
      sub_2544AE150(v158, &qword_27F5FB8B0, &unk_25454ECB0);
      (*(v169 + 8))(v157, v159);
      v131 = v114;
      v128 = v135;
      v121(v135, v131, v119);
      (*(v117 + 56))(v128, 0, 1, v119);
      (*(v117 + 8))(v113, v119);
    }

    v132 = v128;
    v120 = v138;
    sub_2544B14E8(v132, v138, &qword_27F5FB8A8, &qword_25454ECA8);
    v119 = v181;
    v112 = v142;
  }

  sub_2544B14E8(v120, v112, &qword_27F5FB8A8, &qword_25454ECA8);
  if (v118(v112, 1, v119) != 1)
  {
    return (*(v176 + 32))(v140, v112, v119);
  }

  (*(v176 + 104))(v140, *MEMORY[0x277D15E60], v119);
  result = (v118)(v112, 1, v119);
  if (result != 1)
  {
    return sub_2544AE150(v112, &qword_27F5FB8A8, &qword_25454ECA8);
  }

  return result;
}

uint64_t sub_2544D28D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_254549B54();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_2544D7B5C(&qword_27F5FB8D0, MEMORY[0x277D15E70]);
        v21 = sub_25454BC14();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_2544D2B84(char *a1)
{
  v101 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB898, &qword_25454EC98);
  v94 = *(v1 - 8);
  v95 = v1;
  v2 = *(v94 + 64);
  MEMORY[0x28223BE20](v1);
  v93 = &v89 - v3;
  v99 = _s12RegistrationVMa();
  v102 = *(v99 - 8);
  v4 = *(v102 + 64);
  MEMORY[0x28223BE20](v99);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254549394();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v89 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v89 - v14;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  sub_25454A164();
  v16 = v103;
  swift_endAccess();
  v17 = *(v8 + 16);
  v17(v15, v101, v7);
  v101 = v13;
  v17(v13, v15, v7);
  v98 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(v98, v15, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v89 = v8;
  v90 = v7;
  v20 = *(v8 + 32);
  v91 = v19;
  v20(v19 + v18, v15, v7);
  v21 = v16 + 64;
  v22 = -1 << *(v16 + 32);
  result = sub_25454C0F4();
  v24 = result;
  v25 = *(v16 + 36);
  v100 = v16 + 72;
  while (1)
  {
    v27 = 1 << *(v16 + 32);
    if (v24 == v27)
    {
      v39 = v25;
      goto LABEL_20;
    }

    if (v24 < 0 || v24 >= v27)
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v28 = v24 >> 6;
    if ((*(v21 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
    {
      goto LABEL_76;
    }

    sub_2544D78D4(*(v16 + 56) + *(v102 + 72) * v24, v6, _s12RegistrationVMa);
    v29 = *(v99 + 20);
    v30 = sub_254549374();
    result = sub_2544D7868(v6);
    v31 = *(v16 + 32);
    if (v30)
    {
      break;
    }

    v26 = 1 << v31;
    if (v24 >= 1 << v31)
    {
      goto LABEL_77;
    }

    v32 = *(v21 + 8 * v28);
    if ((v32 & (1 << v24)) == 0)
    {
      goto LABEL_78;
    }

    if (v25 != *(v16 + 36))
    {
      goto LABEL_79;
    }

    v33 = v32 & (-2 << (v24 & 0x3F));
    if (v33)
    {
      v26 = __clz(__rbit64(v33)) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = v28 << 6;
      v35 = v28 + 1;
      v36 = (v100 + 8 * v28);
      while (v35 < (v26 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_2544D78C4(v24, v25, 0);
          v26 = __clz(__rbit64(v37)) + v34;
          goto LABEL_3;
        }
      }

      result = sub_2544D78C4(v24, v25, 0);
    }

LABEL_3:
    v24 = v26;
    if (v25 != *(v16 + 36))
    {
      goto LABEL_80;
    }
  }

  v39 = *(v16 + 36);
  v27 = 1 << v31;
LABEL_20:
  v40 = sub_2544D698C(v24, v25, 0, v27, v39, 0, v16, sub_2544D77E4, v91);
  if (!v40)
  {

    v84 = v90;
    v85 = *(v89 + 8);
    v85(v98, v90);
    v85(v101, v84);
    return MEMORY[0x277D84F90];
  }

  v104 = MEMORY[0x277D84F90];
  v92 = v40;
  sub_2544D5798(0, v40 & ~(v40 >> 63), 0);
  v97 = v104;
  v41 = -1 << *(v16 + 32);
  result = sub_25454C0F4();
  v42 = result;
  v43 = *(v16 + 36);
  v100 = v16 + 72;
  while (1)
  {
    v45 = 1 << *(v16 + 32);
    if (v42 == v45)
    {
      break;
    }

    if ((v42 & 0x8000000000000000) != 0 || v42 >= v45)
    {
      goto LABEL_81;
    }

    v46 = v42 >> 6;
    if ((*(v21 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
    {
      goto LABEL_82;
    }

    sub_2544D78D4(*(v16 + 56) + *(v102 + 72) * v42, v6, _s12RegistrationVMa);
    v47 = *(v99 + 20);
    v48 = sub_254549374();
    result = sub_2544D7868(v6);
    if (v48)
    {
      break;
    }

    v44 = 1 << *(v16 + 32);
    if (v42 >= v44)
    {
      goto LABEL_83;
    }

    v49 = *(v21 + 8 * v46);
    if ((v49 & (1 << v42)) == 0)
    {
      goto LABEL_84;
    }

    if (v43 != *(v16 + 36))
    {
      goto LABEL_85;
    }

    v50 = v49 & (-2 << (v42 & 0x3F));
    if (v50)
    {
      v44 = __clz(__rbit64(v50)) | v42 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v51 = v46 << 6;
      v52 = v46 + 1;
      v53 = (v100 + 8 * v46);
      while (v52 < (v44 + 63) >> 6)
      {
        v55 = *v53++;
        v54 = v55;
        v51 += 64;
        ++v52;
        if (v55)
        {
          result = sub_2544D78C4(v42, v43, 0);
          v44 = __clz(__rbit64(v54)) + v51;
          goto LABEL_23;
        }
      }

      result = sub_2544D78C4(v42, v43, 0);
    }

LABEL_23:
    v42 = v44;
    if (v43 != *(v16 + 36))
    {
      goto LABEL_86;
    }
  }

  v56 = v92;
  if (v92 < 0)
  {
LABEL_91:
    __break(1u);
    return result;
  }

  v57 = 0;
  v100 = v16 + 72;
  v58 = v99;
  while (2)
  {
    if (v57 >= v56)
    {
      goto LABEL_87;
    }

    v59 = __OFADD__(v57, 1);
    v60 = v57 + 1;
    if (v59)
    {
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v96 = v60;
    sub_2544D6E54(v42, v43, v16, v6);
    v61 = *(v95 + 48);
    v62 = *(v58 + 24);
    v63 = sub_254549B54();
    v64 = &v6[v62];
    v65 = v58;
    v66 = v93;
    (*(*(v63 - 8) + 16))(v93, v64, v63);
    *(v66 + v61) = v6[*(v65 + 28)];
    sub_2544D7868(v6);
    v67 = v97;
    v104 = v97;
    v69 = *(v97 + 16);
    v68 = *(v97 + 24);
    if (v69 >= v68 >> 1)
    {
      sub_2544D5798(v68 > 1, v69 + 1, 1);
      v67 = v104;
    }

    *(v67 + 16) = v69 + 1;
    v70 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v97 = v67;
    result = sub_2544B14E8(v66, v67 + v70 + *(v94 + 72) * v69, &qword_27F5FB898, &qword_25454EC98);
    if (*(v16 + 36) != v43)
    {
      goto LABEL_89;
    }

    if (v42 == 1 << *(v16 + 32))
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v58 = v99;
    v71 = v101;
    do
    {
      if ((v42 & 0x8000000000000000) != 0 || (v72 = 1 << *(v16 + 32), v42 >= v72))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v73 = v42 >> 6;
      v74 = *(v21 + 8 * (v42 >> 6));
      if (((v74 >> v42) & 1) == 0)
      {
        goto LABEL_70;
      }

      if (*(v16 + 36) != v43)
      {
        goto LABEL_71;
      }

      v75 = v74 & (-2 << (v42 & 0x3F));
      if (v75)
      {
        v42 = __clz(__rbit64(v75)) | v42 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v76 = v73 << 6;
        v77 = v73 + 1;
        v78 = (v100 + 8 * v73);
        while (v77 < (v72 + 63) >> 6)
        {
          v80 = *v78++;
          v79 = v80;
          v76 += 64;
          ++v77;
          if (v80)
          {
            result = sub_2544D78C4(v42, v43, 0);
            v42 = __clz(__rbit64(v79)) + v76;
            goto LABEL_59;
          }
        }

        result = sub_2544D78C4(v42, v43, 0);
        v42 = v72;
LABEL_59:
        v71 = v101;
      }

      if (v43 != *(v16 + 36))
      {
        goto LABEL_72;
      }

      v81 = 1 << *(v16 + 32);
      if (v42 == v81)
      {
        break;
      }

      if ((v42 & 0x8000000000000000) != 0 || v42 >= v81)
      {
        goto LABEL_73;
      }

      if (((*(v21 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
      {
        goto LABEL_74;
      }

      sub_2544D78D4(*(v16 + 56) + *(v102 + 72) * v42, v6, _s12RegistrationVMa);
      v82 = *(v58 + 20);
      v83 = sub_254549374();
      result = sub_2544D7868(v6);
    }

    while ((v83 & 1) == 0);
    v56 = v92;
    v57 = v96;
    if (v96 != v92)
    {
      continue;
    }

    break;
  }

  v86 = *(v89 + 8);
  v87 = v71;
  v88 = v90;
  v86(v98, v90);
  v86(v87, v88);
  return v97;
}

void sub_2544D3590()
{
  sub_2544D369C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2544D3714();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2544D369C()
{
  if (!qword_27F5FB838)
  {
    type metadata accessor for CameraViewRegistrar.Action(255);
    v0 = sub_25454BE84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FB838);
    }
  }
}

void sub_2544D3714()
{
  if (!qword_27F5FB840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB848, &qword_25454EC38);
    v0 = sub_25454A174();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FB840);
    }
  }
}

uint64_t sub_2544D3778()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB820, &qword_25454EBB8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_2544D37A8()
{
  _s12RegistrationVMa();
  if (v0 <= 0x3F)
  {
    sub_2544D381C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2544D381C()
{
  if (!qword_27F5FB860)
  {
    _s12RegistrationVMa();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F5FB860);
    }
  }
}

uint64_t sub_2544D3888()
{
  v0 = type metadata accessor for CameraViewRegistrar(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_2544CE3E0();
  qword_27F604AD8 = v3;
  return result;
}

size_t sub_2544D38F0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

char *sub_2544D3ACC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB930, &qword_25454ED28);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_2544D3BD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB918, &qword_25454ED10);
  v39 = a2;
  result = sub_25454C204();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_25454C3E4();
      sub_25454BD14();
      result = sub_25454C434();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2544D3E7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB920, &qword_25454ED18);
  v38 = a2;
  result = sub_25454C204();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_25454C3E4();
      sub_25454BD14();
      result = sub_25454C434();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2544D4124(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = _s12RegistrationVMa();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254549394();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB890, &qword_25454EC90);
  v48 = a2;
  result = sub_25454C204();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2544D76F8(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2544D78D4(v33 + v32 * v28, v52, _s12RegistrationVMa);
      }

      v34 = *(v16 + 40);
      sub_2544D7B5C(&qword_27F5FB028, MEMORY[0x277CC95F0]);
      result = sub_25454BBE4();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_2544D76F8(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2544D459C(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_254549B54();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254549394();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8F8, &qword_25454ECF0);
  v52 = a2;
  result = sub_25454C204();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_2544D7B5C(&qword_27F5FB028, MEMORY[0x277CC95F0]);
      result = sub_25454BBE4();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2544D4A44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB928, &qword_25454ED20);
  v33 = a2;
  result = sub_25454C204();
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
      sub_25454C3E4();
      MEMORY[0x259C0F4F0](v21);
      result = sub_25454C434();
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

id sub_2544D4CD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB918, &qword_25454ED10);
  v2 = *v0;
  v3 = sub_25454C1F4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_2544D4E40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB920, &qword_25454ED18);
  v2 = *v0;
  v3 = sub_25454C1F4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

char *sub_2544D4FB0()
{
  v1 = v0;
  v2 = _s12RegistrationVMa();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_254549394();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB890, &qword_25454EC90);
  v7 = *v0;
  v8 = sub_25454C1F4();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_2544D78D4(*(v7 + 56) + v28, v37, _s12RegistrationVMa);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_2544D76F8(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_2544D52C8()
{
  v1 = v0;
  v43 = sub_254549B54();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_254549394();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8F8, &qword_25454ECF0);
  v6 = *v0;
  v7 = sub_25454C1F4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_2544D561C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB928, &qword_25454ED20);
  v2 = *v0;
  v3 = sub_25454C1F4();
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

char *sub_2544D5778(char *a1, int64_t a2, char a3)
{
  result = sub_2544D57D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2544D5798(size_t a1, int64_t a2, char a3)
{
  result = sub_2544D58DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2544D57B8(char *a1, int64_t a2, char a3)
{
  result = sub_2544D5ACC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2544D57D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB940, &qword_25454ED38);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_2544D58DC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8A0, &qword_25454ECA0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB898, &qword_25454EC98) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB898, &qword_25454EC98) - 8);
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

char *sub_2544D5ACC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB930, &qword_25454ED28);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_2544D5BD8@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_25454C3E4();
  if (a1)
  {
    v6 = 0x697463416576696CLL;
  }

  else
  {
    v6 = 7368801;
  }

  if (a1)
  {
    v7 = 0xEC00000079746976;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  sub_25454BD14();

  result = sub_25454C434();
  v9 = -1 << *(v4 + 32);
  v10 = result & ~v9;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v4 + 48) + v10) ? 0x697463416576696CLL : 7368801;
      v13 = *(*(v4 + 48) + v10) ? 0xEC00000079746976 : 0xE300000000000000;
      if (v12 == v6 && v13 == v7)
      {
        break;
      }

      v15 = sub_25454C334();

      if (v15)
      {
        goto LABEL_23;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    v16 = *v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v19;
    v21 = *v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2544D6404();
      v18 = v21;
    }

    *a2 = *(*(v18 + 48) + v10);
    result = sub_2544D67A0(v10);
    *v19 = v21;
  }

  else
  {
LABEL_21:
    *a2 = 2;
  }

  return result;
}

uint64_t sub_2544D5DA4(_BYTE *a1, char a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_25454C3E4();
  v20 = a2;
  if (a2)
  {
    v6 = 0x697463416576696CLL;
  }

  else
  {
    v6 = 7368801;
  }

  if (a2)
  {
    v7 = 0xEC00000079746976;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  sub_25454BD14();

  v8 = sub_25454C434();
  v9 = -1 << *(v4 + 32);
  v10 = v8 & ~v9;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v4 + 48) + v10) ? 0x697463416576696CLL : 7368801;
      v13 = *(*(v4 + 48) + v10) ? 0xEC00000079746976 : 0xE300000000000000;
      if (v12 == v6 && v13 == v7)
      {
        break;
      }

      v15 = sub_25454C334();

      if (v15)
      {
        goto LABEL_23;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v18 = *(*(v4 + 48) + v10);
  }

  else
  {
LABEL_21:
    v16 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v18 = v20 & 1;
    sub_2544D61F8(v20 & 1, v10, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    result = 1;
  }

  *a1 = v18;
  return result;
}

uint64_t sub_2544D5F6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8E8, &qword_25454ECE0);
  result = sub_25454C124();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_25454C3E4();
      sub_25454BD14();

      result = sub_25454C434();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2544D61F8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_2544D5F6C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_2544D6404();
      goto LABEL_25;
    }

    sub_2544D6544(v6 + 1);
  }

  v8 = 7368801;
  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_25454C3E4();
  if (v5)
  {
    v8 = 0x697463416576696CLL;
    v11 = 0xEC00000079746976;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  sub_25454BD14();

  result = sub_25454C434();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + a2) ? 0x697463416576696CLL : 7368801;
      v15 = *(*(v9 + 48) + a2) ? 0xEC00000079746976 : 0xE300000000000000;
      if (v14 == v8 && v15 == v11)
      {
        goto LABEL_28;
      }

      v17 = sub_25454C334();

      if (v17)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  result = sub_25454C344();
  __break(1u);
  return result;
}

void *sub_2544D6404()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8E8, &qword_25454ECE0);
  v2 = *v0;
  v3 = sub_25454C114();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_2544D6544(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8E8, &qword_25454ECE0);
  result = sub_25454C124();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_25454C3E4();
      sub_25454BD14();

      result = sub_25454C434();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_2544D67A0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_25454C104();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_25454C3E4();
        sub_25454BD14();

        v13 = sub_25454C434() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + v2);
          v16 = (v14 + v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2544D698C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t (*a8)(void), uint64_t a9)
{
  v12 = a5;
  result = sub_2544D6D3C(a1, a2, a3 & 1, a4, a5, a6 & 1, a7);
  if (a6 & 1) != 0 || (a3)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  if (v12 != a2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a4 >= a1)
  {
    result = a1;
  }

  else
  {
    result = a4;
  }

  if (a4 >= a1)
  {
    v18 = a2;
  }

  else
  {
    v18 = v12;
  }

  if (a4 >= a1)
  {
    v19 = a4;
  }

  else
  {
    v19 = a1;
  }

  if (a4 >= a1)
  {
    v20 = 1;
  }

  else
  {
    v20 = -1;
  }

  if (a4 < a1)
  {
    LODWORD(v12) = a2;
  }

  v23 = result;
  v24 = v18;
  v25 = 0;
  if (a1 != a4)
  {
    v22 = 0;
    while (1)
    {
      v21 = v22 + v20;
      if (__OFADD__(v22, v20))
      {
        break;
      }

      result = sub_2544D6AA4(&v23, a7, a8, a9);
      if (v25)
      {
        goto LABEL_29;
      }

      if (v24 != v12)
      {
        goto LABEL_27;
      }

      v22 += v20;
      if (v23 == v19)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_2544D78C4(result, v18, 0);
  return 0;
}

uint64_t sub_2544D6AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v34 = a4;
  v7 = _s12RegistrationVMa();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    goto LABEL_32;
  }

  v13 = *(a1 + 8);
  if (*(a2 + 36) != v13)
  {
    goto LABEL_30;
  }

  v14 = *a1;
  if (*a1 != 1 << *(a2 + 32))
  {
    v31 = a1;
    v15 = a2 + 64;
    v16 = v13;
    v32 = a2 + 72;
    v33 = v13;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v17 = 1 << *(a2 + 32);
      if (v14 >= v17)
      {
        break;
      }

      v18 = v14 >> 6;
      v19 = *(v15 + 8 * (v14 >> 6));
      if (((v19 >> v14) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a2 + 36) != v13)
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v14 & 0x3F));
      if (v20)
      {
        v14 = __clz(__rbit64(v20)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v8;
        v22 = a3;
        v23 = v18 << 6;
        v24 = v18 + 1;
        v25 = (v32 + 8 * v18);
        while (v24 < (v17 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_2544D78C4(v14, v13, 0);
            v14 = __clz(__rbit64(v26)) + v23;
            goto LABEL_16;
          }
        }

        result = sub_2544D78C4(v14, v13, 0);
        v14 = v17;
LABEL_16:
        a3 = v22;
        v8 = v21;
        v16 = v33;
      }

      if (*(a2 + 36) != v13)
      {
        goto LABEL_27;
      }

      v28 = 1 << *(a2 + 32);
      if (v14 == v28)
      {
        goto LABEL_23;
      }

      if ((v14 & 0x8000000000000000) != 0 || v14 >= v28)
      {
        goto LABEL_28;
      }

      if (((*(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_29;
      }

      sub_2544D78D4(*(a2 + 56) + *(v8 + 72) * v14, v12, _s12RegistrationVMa);
      v29 = a3(v12);
      result = sub_2544D7868(v12);
      v13 = v16;
      if (v29)
      {
LABEL_23:
        v30 = v31;
        *v31 = v14;
        v30[1] = v16;
        *(v30 + 16) = 0;
        return result;
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
LABEL_30:
    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2544D6D3C(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_30;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a5 != a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      if (a5 != a2)
      {
        goto LABEL_26;
      }

      v9 = v7 >> 6;
      v10 = *(a7 + 64 + 8 * (v7 >> 6));
      if ((v10 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 72 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_21;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_21:
      if (v7 == a4)
      {
        return result;
      }

      a2 = a5;
      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return 0;
}

uint64_t sub_2544D6E54@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 56);
    v7 = _s12RegistrationVMa();
    return sub_2544D78D4(v6 + *(*(v7 - 8) + 72) * v4, a4, _s12RegistrationVMa);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_2544D6F04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB920, &qword_25454ED18);
    v3 = sub_25454C214();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2544DA948(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2544D7008(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB918, &qword_25454ED10);
    v3 = sub_25454C214();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2544DA948(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2544D710C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB948, &qword_25454ED40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB950, &qword_25454ED48);
    v8 = sub_25454C214();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2544AE240(v10, v6, &qword_27F5FB948, &qword_25454ED40);
      result = sub_2544DA750(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_254549394();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_2545497D4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2544D732C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB888, &qword_25454EC88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB890, &qword_25454EC90);
    v8 = sub_25454C214();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2544AE240(v10, v6, &qword_27F5FB888, &qword_25454EC88);
      result = sub_2544DA750(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_254549394();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = _s12RegistrationVMa();
      result = sub_2544D76F8(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2544D7534()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2544D7574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2544AE3EC;

  return sub_2544CE938(a1, v4, v5, v6);
}

uint64_t sub_2544D7628()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2544D7660(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2544AE660;

  return sub_2544CEAD4(a1, v1);
}

uint64_t sub_2544D76F8(uint64_t a1, uint64_t a2)
{
  v4 = _s12RegistrationVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544D775C()
{
  v1 = sub_254549394();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2544D77E4(uint64_t a1)
{
  v2 = *(sub_254549394() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = a1 + *(_s12RegistrationVMa() + 20);

  return sub_254549374();
}

uint64_t sub_2544D7868(uint64_t a1)
{
  v2 = _s12RegistrationVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2544D78C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2544D78D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2544D793C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB910, &qword_25454ED08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB8F8, &qword_25454ECF0);
    v8 = sub_25454C214();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2544AE240(v10, v6, &qword_27F5FB910, &qword_25454ED08);
      result = sub_2544DA750(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_254549394();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_254549B54();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2544D7B5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2544D7BA4()
{
  result = qword_27F5FB8E0;
  if (!qword_27F5FB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB8E0);
  }

  return result;
}

void *sub_2544D7BF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB928, &qword_25454ED20);
  v3 = sub_25454C214();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_2544DA9C0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_2544DA9C0(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2544D7D08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x636961736F6DLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x736C6961746564;
    }

    else
    {
      v4 = 0x7075727265746E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1684632167;
    }

    else
    {
      v4 = 0x636961736F6DLL;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x736C6961746564;
  if (a2 != 2)
  {
    v8 = 0x7075727265746E69;
    v7 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    v2 = 1684632167;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25454C334();
  }

  return v11 & 1;
}

uint64_t sub_2544D7E48(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x534F64615069;
    }

    else
    {
      v4 = 5459817;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x534F63616DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x534F726568746FLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1397716596;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x534F64615069;
    }

    else
    {
      v9 = 5459817;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x534F726568746FLL;
    if (a2 != 3)
    {
      v6 = 1397716596;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x534F63616DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_25454C334();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}