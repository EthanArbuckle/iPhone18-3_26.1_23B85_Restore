uint64_t sub_24B093B50@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9918);
  MEMORY[0x28223BE20](v82);
  v75 = &v66 - v2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9920);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v81 = &v66 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7898);
  MEMORY[0x28223BE20](v68);
  v77 = &v66 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9928);
  v69 = *(v70 - 1);
  MEMORY[0x28223BE20](v70);
  v79 = &v66 - v5;
  v6 = type metadata accessor for DetailsAppView(0);
  v7 = *(v6 + 20);
  v83 = v1;
  v8 = *(v1 + v7);
  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  if (v8 >= 2)
  {

    v10 = v8;
  }

  v72 = v8;
  v11 = v83;
  v12 = *(v83 + *(v6 + 36));
  *&v85 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850);
  sub_24B2D4CC4();
  v13 = v90;
  sub_24B09470C(&v90);
  v80 = v90;
  v14 = v91;
  v15 = WORD4(v91);
  v16 = BYTE10(v91);
  v17 = sub_24B2D5064();
  *&v85 = v10;
  v95 = v16;
  BYTE8(v85) = v12;
  v86 = v13;
  v87 = v80;
  *&v88 = v14;
  WORD4(v88) = v15;
  BYTE10(v88) = v16;
  *&v89 = v17;
  *(&v89 + 1) = v18;
  v19 = *(v6 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_24B09A708(v11, &v66 - v21, type metadata accessor for DetailsAppView);
  v22 = *(v19 + 80);
  v23 = ~v22;
  v24 = (v22 + 16) & ~v22;
  v78 = v20;
  *&v80 = v22;
  v25 = swift_allocObject();
  v71 = v24;
  sub_24B098F60(&v66 - v21, v25 + v24, type metadata accessor for DetailsAppView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9930);
  sub_24B098FE0();
  sub_24B2D4704();

  v93 = v88;
  v94 = v89;
  v91 = v86;
  v92 = v87;
  v90 = v85;
  sub_24AFF8258(&v90, &qword_27EFC9930);
  v26 = sub_24B2D3DF4();
  sub_24B2D5694();
  sub_24B2D5684();
  v27 = MEMORY[0x277D85700];
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = v77;
  v29 = v77 + *(v68 + 36);
  v30 = v83;
  sub_24B094D54(v29);
  v31 = v28;

  v32 = sub_24B2D3424();
  v33 = MEMORY[0x24C23AB40]((2 * v32));
  v34 = sub_24B2D3814();
  v35 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9968) + 36);
  *v35 = v34;
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  *(v35 + 17) = v33;
  *(v35 + 24) = v26;
  v36 = (*(v69 + 32))(v31, v79, v70);
  v79 = &v66;
  MEMORY[0x28223BE20](v36);
  sub_24B09A708(v30, &v66 - v21, type metadata accessor for DetailsAppView);
  v37 = sub_24B2D5684();
  v38 = (v80 + 32) & v23;
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v39 + 24) = v27;
  sub_24B098F60(&v66 - v21, v39 + v38, type metadata accessor for DetailsAppView);
  v40 = sub_24B2D56D4();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = &v66 - v43;
  sub_24B2D56A4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v69 = sub_24B2D3714();
    v70 = &v66;
    v68 = *(v69 - 8);
    MEMORY[0x28223BE20](v69);
    v67 = &v66 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    sub_24B2D5C34();

    *&v85 = 0xD00000000000002ELL;
    *(&v85 + 1) = 0x800000024B2D9D30;
    v84 = 119;
    v46 = sub_24B2D5FA4();
    MEMORY[0x24C23BC10](v46);

    MEMORY[0x28223BE20](v47);
    (*(v41 + 16))(&v66 - v43, &v66 - v43, v40);
    v48 = v67;
    sub_24B2D3704();
    (*(v41 + 8))(v44, v40);
    v49 = v81;
    sub_24B0391CC(v77, v81, &qword_27EFC7898);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC78A0);
    v51 = (*(v68 + 32))(v49 + *(v50 + 36), v48, v69);
  }

  else
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC78A8);
    v53 = v81;
    v54 = (v81 + *(v52 + 36));
    v55 = sub_24B2D35A4();
    (*(v41 + 32))(&v54[*(v55 + 20)], &v66 - v43, v40);
    *v54 = &unk_24B2E32D0;
    *(v54 + 1) = v39;
    v51 = sub_24B0391CC(v31, v53, &qword_27EFC7898);
  }

  v79 = &v66;
  v56 = v78;
  MEMORY[0x28223BE20](v51);
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  v58 = v83;
  sub_24B09A708(v83, &v66 - v57, type metadata accessor for DetailsAppView);
  v59 = v71;
  v60 = swift_allocObject();
  sub_24B098F60(&v66 - v57, v60 + v59, type metadata accessor for DetailsAppView);
  v61 = v75;
  v62 = (*(v73 + 32))(v75, v81, v74);
  v63 = (v61 + *(v82 + 36));
  *v63 = 0;
  v63[1] = 0;
  v63[2] = sub_24B099760;
  v63[3] = v60;
  LOBYTE(v85) = v72 > 1;
  MEMORY[0x28223BE20](v62);
  sub_24B09A708(v58, &v66 - v57, type metadata accessor for DetailsAppView);
  v64 = swift_allocObject();
  sub_24B098F60(&v66 - v57, v64 + v59, type metadata accessor for DetailsAppView);
  sub_24B09986C();
  sub_24B2D49B4();

  return sub_24AFF8258(v61, &qword_27EFC9918);
}

uint64_t sub_24B09470C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DetailsAppView(0);
  v4 = (v1 + v3[5]);
  if (*v4 == 1)
  {
    v9 = v1 + v3[10];
    LOBYTE(v23) = *v9;
    v24 = *(v9 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
    sub_24B2D4CD4();
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    if (v22 != 1)
    {
      v19 = sub_24B2D5374();
      v20 = [v11 localizedStringForKey:v19 value:0 table:0];

      sub_24B2D5394();
      type metadata accessor for DetailsAppView.State(0);
      sub_24B09AF18();

      sub_24B2D3ED4();
      goto LABEL_10;
    }

    v12 = sub_24B2D5374();
    v13 = [v11 localizedStringForKey:v12 value:0 table:0];

    sub_24B2D5394();
    type metadata accessor for DetailsAppView.State(0);
    goto LABEL_6;
  }

  if (!*v4)
  {
    type metadata accessor for FindMyUICore();
    v5 = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v7 = sub_24B2D5374();
    v8 = [v6 localizedStringForKey:v7 value:0 table:0];

    sub_24B2D5394();
    type metadata accessor for DetailsAppView.State(0);
LABEL_6:
    sub_24B09AF18();

    sub_24B2D3ED4();
    goto LABEL_10;
  }

  v14 = v1 + v3[11];
  LOBYTE(v23) = *v14;
  v24 = *(v14 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CD4();
  if (v22 != 1)
  {
    goto LABEL_11;
  }

  type metadata accessor for FindMyUICore();
  v15 = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_24B2D5374();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  sub_24B2D5394();
  type metadata accessor for DetailsAppView.State(0);
  sub_24B09AF18();

  sub_24B2D3ED4();
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9AF8);
  sub_24B09AE6C();
  sub_24B2D3ED4();
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9AE0);
  sub_24B09AE9C(&qword_27EFC9AE8, &qword_27EFC9AE0, &unk_24B2E34B0, sub_24B09AE6C);
  result = sub_24B2D3ED4();
  *a1 = v23;
  *(a1 + 8) = v24;
  *(a1 + 16) = v25;
  *(a1 + 24) = v26;
  *(a1 + 26) = v27;
  return result;
}

uint64_t sub_24B094CA0(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for DetailsAppView(0);
  (*(a1 + *(v2 + 32)))();
}

uint64_t sub_24B094D54@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9988);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9990);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9998);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC99A0);
  MEMORY[0x28223BE20](v51);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC99A8);
  MEMORY[0x28223BE20](v17);
  if (*v1)
  {
    v46 = &v45 - v20;
    v47 = v18;
    v49 = a1;
    v50 = v19;
    v48 = v3;
    *v8 = sub_24B2D3CD4();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC99B0);
    sub_24B0963BC(v1, &v8[*(v23 + 44)]);
    v24 = &v1[*(type metadata accessor for DetailsAppView(0) + 44)];
    v25 = *v24;
    v26 = *(v24 + 1);
    v53 = v25;
    v54 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
    sub_24B2D4CD4();
    if (v52)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = 1.0;
    }

    sub_24B0391CC(v8, v11, &qword_27EFC9988);
    *&v11[*(v9 + 36)] = v27;
    type metadata accessor for DetailsAppView.Style(0);
    v28 = sub_24B2D42F4();
    sub_24B2D32F4();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_24B0391CC(v11, v14, &qword_27EFC9990);
    v37 = &v14[*(v12 + 36)];
    *v37 = v28;
    *(v37 + 1) = v30;
    *(v37 + 2) = v32;
    *(v37 + 3) = v34;
    *(v37 + 4) = v36;
    v37[40] = 0;
    v38 = &v16[*(v51 + 36)];
    sub_24B2D4FD4();
    v39 = sub_24B2D42F4();
    v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC99B8) + 36)] = v39;
    sub_24B0391CC(v14, v16, &qword_27EFC9998);
    v40 = *MEMORY[0x277CDF998];
    v41 = sub_24B2D3764();
    (*(*(v41 - 8) + 104))(v5, v40, v41);
    sub_24B09AD3C(&qword_27EFC8AE8, MEMORY[0x277CDFA28]);
    result = sub_24B2D52A4();
    if (result)
    {
      sub_24B09A504();
      sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
      v42 = v46;
      sub_24B2D4774();
      sub_24AFF8258(v5, &qword_27EFC8AD0);
      sub_24AFF8258(v16, &qword_27EFC99A0);
      v43 = v49;
      v44 = v47;
      (*(v50 + 32))(v49, v42, v47);
      return (*(v50 + 56))(v43, 0, 1, v44);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v21 = *(v19 + 56);

    return v21(a1, 1, 1);
  }

  return result;
}

uint64_t sub_24B095310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v4 = sub_24B2D5D64();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_24B2D5694();
  v3[8] = sub_24B2D5684();
  v6 = sub_24B2D5604();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x2822009F8](sub_24B095404, v6, v5);
}

uint64_t sub_24B095404()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_24B0954D0;

  return sub_24B09A030(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24B0954D0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = sub_24B095720;
  }

  else
  {
    v8 = sub_24B095668;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B095668()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for DetailsAppView(0) + 40));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CE4();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24B095720()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B095794()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DetailsAppView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CE4();
}

uint64_t sub_24B095874(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v23 = a3;
  v5 = type metadata accessor for DetailsAppView(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = *a1;
  v11 = *a2;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v10 || !v11)
  {
  }

  else
  {
    v12 = v23;
    v13 = v23 + *(v5 + 44);
    v14 = *v13;
    v15 = *(v13 + 8);
    v25 = v14;
    v26 = v15;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
    sub_24B2D4CE4();
    v16 = sub_24B2D56D4();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    sub_24B09A708(v12, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsAppView);
    v17 = sub_24B2D5684();
    v18 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = MEMORY[0x277D85700];
    sub_24B098F60(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for DetailsAppView);
    sub_24B00A9A4(0, 0, v9, &unk_24B2E32E0, v19);
  }
}

uint64_t sub_24B095B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_24B2D5D64();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_24B2D5694();
  v4[6] = sub_24B2D5684();
  v7 = sub_24B2D5604();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_24B095C64, v7, v6);
}

uint64_t sub_24B095C64()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_24B095D30;

  return sub_24B09A030(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24B095D30()
{
  v2 = *v1;
  v2[10] = v0;

  v3 = v2[5];
  v4 = v2[4];
  v5 = v2[3];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[7];
    v7 = v2[8];
    v8 = sub_24B095F98;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[7];
    v7 = v2[8];
    v8 = sub_24B095EC8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_24B095EC8()
{
  v1 = *(v0 + 16);

  *(swift_task_alloc() + 16) = v1;
  sub_24B2D50E4();
  sub_24B2D35C4();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B095F98()
{
  v1 = *(v0 + 16);

  *(swift_task_alloc() + 16) = v1;
  sub_24B2D50E4();
  sub_24B2D35C4();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B096068()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DetailsAppView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CE4();
}

double sub_24B096154@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  v8 = sub_24B2D42E4();
  sub_24B2D32F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_24B2D3DF4();
  if (qword_27EFC7608 != -1)
  {
    swift_once();
  }

  sub_24B2D3904();
  *&v23[55] = v27;
  *&v23[71] = v28;
  *&v23[87] = v29;
  *&v23[103] = v30;
  *&v23[7] = v24;
  *&v23[23] = v25;
  *&v23[39] = v26;
  v17 = sub_24B2D5064();
  v19 = v18;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = sub_24B2D3804();
  v21 = sub_24B2D42F4();

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  *(a4 + 48) = v8;
  *(a4 + 56) = v10;
  *(a4 + 64) = v12;
  *(a4 + 72) = v14;
  *(a4 + 80) = v16;
  *(a4 + 88) = 0;
  *(a4 + 153) = *&v23[64];
  *(a4 + 169) = *&v23[80];
  *(a4 + 185) = *&v23[96];
  *(a4 + 89) = *v23;
  *(a4 + 105) = *&v23[16];
  result = *&v23[32];
  *(a4 + 121) = *&v23[32];
  *(a4 + 137) = *&v23[48];
  *(a4 + 200) = *(&v30 + 1);
  *(a4 + 208) = v20;
  *(a4 + 216) = v21;
  *(a4 + 224) = v17;
  *(a4 + 232) = v19;
  return result;
}

uint64_t sub_24B0963BC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A70);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v65 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v59 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC99E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v59 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC99F0);
  MEMORY[0x28223BE20](v61);
  v62 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC99F8);
  v70 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v64 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A00);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v66 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A08);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A10);
  v25 = MEMORY[0x28223BE20](v24);
  v69 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v59 - v28;
  MEMORY[0x28223BE20](v27);
  v71 = &v59 - v30;
  sub_24B2D5694();
  v67 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v23 = sub_24B2D3E04();
  *(v23 + 1) = 0;
  v31 = 1;
  v23[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A18);
  sub_24B096BA8(a1, &v23[*(v32 + 44)]);
  sub_24B2D5074();
  sub_24B2D3904();
  sub_24B0391CC(v23, v29, &qword_27EFC9A08);
  v33 = &v29[*(v24 + 36)];
  v34 = v77;
  *(v33 + 4) = v76;
  *(v33 + 5) = v34;
  *(v33 + 6) = v78;
  v35 = v73;
  *v33 = v72;
  *(v33 + 1) = v35;
  v36 = v75;
  *(v33 + 2) = v74;
  *(v33 + 3) = v36;
  sub_24B0391CC(v29, v71, &qword_27EFC9A10);
  if ((*a1 & 0xE) != 0)
  {
    sub_24B0979E0(a1, v10);
    v37 = &a1[*(type metadata accessor for DetailsAppView(0) + 20)];
    v38 = *(type metadata accessor for DetailsAppView.State(0) + 20);
    sub_24B008890(&v37[v38], v7, &qword_27EFC8A70);
    v39 = type metadata accessor for SessionLocation.Description(0);
    v40 = *(*(v39 - 8) + 48);
    v60 = v20;
    v41 = v12;
    if (v40(v7, 1, v39) == 1)
    {
      v42 = 0.0;
    }

    else
    {
      v42 = 1.0;
    }

    sub_24AFF8258(v7, &qword_27EFC8A70);
    v43 = v62;
    sub_24B0391CC(v10, v62, &qword_27EFC99E8);
    *(v43 + *(v61 + 36)) = v42;
    v44 = &v37[v38];
    v45 = v65;
    sub_24B008890(v44, v65, &qword_27EFC8A70);
    v46 = v40(v45, 1, v39) == 1;
    sub_24AFF8258(v45, &qword_27EFC8A70);
    KeyPath = swift_getKeyPath();
    v48 = swift_allocObject();
    *(v48 + 16) = v46;
    v12 = v41;
    v20 = v60;
    v49 = v64;
    sub_24B0391CC(v43, v64, &qword_27EFC99F0);
    v50 = (v49 + *(v12 + 36));
    *v50 = KeyPath;
    v50[1] = sub_24B09A700;
    v50[2] = v48;
    v51 = v49;
    v52 = v63;
    sub_24B0391CC(v51, v63, &qword_27EFC99F8);
    sub_24B0391CC(v52, v20, &qword_27EFC99F8);
    v31 = 0;
  }

  (*(v70 + 56))(v20, v31, 1, v12);
  v53 = v71;
  v54 = v69;
  sub_24B008890(v71, v69, &qword_27EFC9A10);
  v55 = v66;
  sub_24B008890(v20, v66, &qword_27EFC9A00);
  v56 = v68;
  sub_24B008890(v54, v68, &qword_27EFC9A10);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A20);
  sub_24B008890(v55, v56 + *(v57 + 48), &qword_27EFC9A00);
  sub_24AFF8258(v20, &qword_27EFC9A00);
  sub_24AFF8258(v53, &qword_27EFC9A10);
  sub_24AFF8258(v55, &qword_27EFC9A00);
  sub_24AFF8258(v54, &qword_27EFC9A10);
}

uint64_t sub_24B096BA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A88);
  v3 = MEMORY[0x28223BE20](v52);
  v54 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v6 = &v47[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47[-v8];
  sub_24B2D5694();
  v53 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v50 = type metadata accessor for DetailsAppView(0);
  v10 = a1 + *(v50 + 20);
  v11 = type metadata accessor for DetailsAppView.State(0);
  sub_24B008890(v10 + *(v11 + 20), v9, &qword_27EFC8A70);
  v12 = type metadata accessor for SessionLocation.Description(0);
  v13 = (*(*(v12 - 8) + 48))(v9, 1, v12);
  v51 = a1;
  if (v13 == 1)
  {
    sub_24AFF8258(v9, &qword_27EFC8A70);
    v14 = 0xE100000000000000;
    v15 = 32;
  }

  else
  {
    v15 = *v9;
    v14 = v9[1];

    sub_24B09AE0C(v9, type metadata accessor for SessionLocation.Description);
  }

  v55 = v15;
  v56 = v14;
  sub_24AFFE0A4();
  v16 = sub_24B2D4604();
  v18 = v17;
  v20 = v19;
  LODWORD(v55) = sub_24B2D3FB4();
  v21 = sub_24B2D4594();
  v23 = v22;
  v25 = v24;
  sub_24B083C34(v16, v18, v20 & 1);

  v26 = v51;
  v27 = v51 + *(v50 + 28);
  v28 = sub_24B2D45C4();
  v30 = v29;
  v48 = v31;
  v50 = v32;
  sub_24B083C34(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  *v6 = sub_24B2D3CD4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A90);
  sub_24B097064(v26, &v6[*(v34 + 44)]);
  LODWORD(v26) = sub_24B2D3FD4();
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A98) + 36)] = v26;
  v35 = v6;
  v36 = *(v27 + 8);
  v37 = swift_getKeyPath();
  v38 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9AA0) + 36));
  *v38 = v37;
  v38[1] = v36;
  v39 = swift_getKeyPath();
  v40 = v35 + *(v52 + 36);
  *v40 = v39;
  *(v40 + 8) = 1;
  *(v40 + 16) = 0;
  v41 = v54;
  sub_24B008890(v35, v54, &qword_27EFC9A88);
  v42 = v49;
  v43 = v50;
  *v49 = v28;
  v42[1] = v30;
  v44 = v48 & 1;
  *(v42 + 16) = v48 & 1;
  v42[3] = v43;
  v42[4] = KeyPath;
  v42[5] = 2;
  *(v42 + 48) = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9AA8);
  sub_24B008890(v41, v42 + *(v45 + 48), &qword_27EFC9A88);

  sub_24B083C44(v28, v30, v44);

  sub_24AFF8258(v35, &qword_27EFC9A88);
  sub_24AFF8258(v41, &qword_27EFC9A88);
  sub_24B083C34(v28, v30, v44);
}

uint64_t sub_24B097064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v74 = a2;
  v62 = sub_24B2D24A4();
  v61 = *(v62 - 1);
  MEMORY[0x28223BE20](v62);
  v60 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for RelativeDateText();
  MEMORY[0x28223BE20](v70);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_24B2D13C4();
  v5 = *(v63 - 8);
  v6 = MEMORY[0x28223BE20](v63);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v60 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9AB0);
  MEMORY[0x28223BE20](v67);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A70);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8800);
  MEMORY[0x28223BE20](v18);
  v20 = (&v60 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9AB8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v73 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v71 = &v60 - v24;
  sub_24B2D5694();
  v72 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = v69 + *(type metadata accessor for DetailsAppView(0) + 20);
  v68 = *(type metadata accessor for DetailsAppView.State(0) + 20);
  v69 = v25;
  sub_24B008890(v25 + v68, v17, &qword_27EFC8A70);
  v26 = type metadata accessor for SessionLocation.Description(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v65 = v27 + 48;
  v66 = v28;
  if (v28(v17, 1, v26) == 1)
  {
    sub_24AFF8258(v17, &qword_27EFC8A70);
    sub_24B2D3D74();
    v29 = sub_24B2D45E4();
    v31 = v29;
    v32 = v30;
    v75 = v29;
    v76 = v30;
    v34 = v33 & 1;
    v77 = v33 & 1;
    v78 = v35;
    v79 = 0;
  }

  else
  {
    sub_24B008890(&v17[*(v26 + 20)], v20, &qword_27EFC8800);
    sub_24B09AE0C(v17, type metadata accessor for SessionLocation.Description);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v64;
      v37 = v63;
      (*(v5 + 32))(v64, v20, v63);
      (*(v5 + 16))(v8, v36, v37);
      v38 = v70;
      sub_24B2D2254();
      v39 = v60;
      sub_24B2D2494();
      sub_24B2D1364();
      (*(v61 + 8))(v39, v62);
      v62 = *(v5 + 8);
      v62(v8, v37);
      v4[v38[5]] = 0;
      v4[v38[7]] = 0;
      v40 = &v4[v38[8]];
      *v40 = 0;
      *(v40 + 1) = 0;
      sub_24B09A708(v4, v11, type metadata accessor for RelativeDateText);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9AC0);
      sub_24B09ACC0();
      sub_24B09AD3C(&qword_27EFC9AD0, type metadata accessor for RelativeDateText);
      v41 = v71;
      sub_24B2D3ED4();
      sub_24B09AE0C(v4, type metadata accessor for RelativeDateText);
      v62(v64, v37);
      goto LABEL_9;
    }

    v42 = v20[1];
    *&v80 = *v20;
    *(&v80 + 1) = v42;
    sub_24AFFE0A4();
    v29 = sub_24B2D4604();
    v31 = v29;
    v32 = v30;
    v34 = v43 & 1;
    v75 = v29;
    v76 = v30;
    v77 = v43 & 1;
    v78 = v44;
    v79 = 1;
  }

  sub_24B083C44(v29, v30, v34);

  sub_24B2D3ED4();
  v45 = v82;
  v46 = v81;
  *v11 = v80;
  *(v11 + 1) = v46;
  v11[32] = v45;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9AC0);
  sub_24B09ACC0();
  sub_24B09AD3C(&qword_27EFC9AD0, type metadata accessor for RelativeDateText);
  v41 = v71;
  sub_24B2D3ED4();
  sub_24B083C34(v31, v32, v34);

LABEL_9:
  sub_24B008890(v69 + v68, v15, &qword_27EFC8A70);
  if (v66(v15, 1, v26) == 1)
  {
    sub_24AFF8258(v15, &qword_27EFC8A70);
    v47 = 0;
LABEL_13:
    v51 = 0;
    v55 = 0;
    v53 = 0;
    goto LABEL_14;
  }

  v48 = &v15[*(v26 + 24)];
  v49 = *v48;
  v47 = *(v48 + 1);

  sub_24B09AE0C(v15, type metadata accessor for SessionLocation.Description);
  if (!v47)
  {
    goto LABEL_13;
  }

  *&v80 = v49;
  *(&v80 + 1) = v47;
  sub_24AFFE0A4();
  v47 = sub_24B2D4604();
  v51 = v50;
  v53 = v52;
  v55 = v54 & 1;
  sub_24B083C44(v47, v50, v54 & 1);

LABEL_14:
  v56 = v73;
  sub_24B008890(v41, v73, &qword_27EFC9AB8);
  v57 = v74;
  sub_24B008890(v56, v74, &qword_27EFC9AB8);
  v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9AD8) + 48));
  sub_24B09AD84(v47, v51, v55, v53);
  sub_24B09ADC8(v47, v51, v55, v53);
  *v58 = v47;
  v58[1] = v51;
  v58[2] = v55;
  v58[3] = v53;
  sub_24AFF8258(v41, &qword_27EFC9AB8);
  sub_24B09ADC8(v47, v51, v55, v53);
  sub_24AFF8258(v56, &qword_27EFC9AB8);
}

uint64_t sub_24B0979E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A28);
  MEMORY[0x28223BE20](v53);
  v4 = &v43 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A30);
  MEMORY[0x28223BE20](v50);
  v52 = &v43 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A38);
  MEMORY[0x28223BE20](v44);
  v7 = &v43 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A40);
  MEMORY[0x28223BE20](v51);
  v46 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A48);
  v47 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v45 = &v43 - v10;
  v11 = type metadata accessor for DirectionsState();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Action = type metadata accessor for LocateAction();
  MEMORY[0x28223BE20](Action - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A50);
  MEMORY[0x28223BE20](v18 - 8);
  v49 = &v43 - v19;
  sub_24B2D5694();
  v48 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = a1 + *(type metadata accessor for DetailsAppView(0) + 20);
  v21 = type metadata accessor for DetailsAppView.State(0);
  sub_24B09A708(v20 + *(v21 + 44), v17, type metadata accessor for LocateAction);
  v22 = (*(v12 + 48))(v17, 2, v11);
  if (v22)
  {
    v23 = v49;
    if (v22 == 1)
    {
      sub_24B09870C(v4);
      *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A58) + 36)] = 0;
      KeyPath = swift_getKeyPath();
      v25 = swift_allocObject();
      *(v25 + 16) = 1;
      v26 = v52;
      v27 = &v4[*(v53 + 36)];
      *v27 = KeyPath;
      v27[1] = sub_24B09B21C;
      v27[2] = v25;
      sub_24B008890(v4, v26, &qword_27EFC9A28);
      swift_storeEnumTagMultiPayload();
      sub_24B09A770();
      sub_24B09A8B4();
      sub_24B2D3ED4();
      sub_24AFF8258(v4, &qword_27EFC9A28);
    }

    else
    {
      v35 = v45;
      sub_24B09870C(v45);
      v36 = v47;
      (*(v47 + 16))(v7, v35, v9);
      swift_storeEnumTagMultiPayload();
      v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94D8);
      v38 = type metadata accessor for CustomButtonStyle(255);
      v39 = sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
      v40 = sub_24B09AD3C(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
      v55 = v37;
      v56 = v38;
      v57 = v39;
      v58 = v40;
      swift_getOpaqueTypeConformance2();
      v41 = v46;
      sub_24B2D3ED4();
      sub_24B008890(v41, v52, &qword_27EFC9A40);
      swift_storeEnumTagMultiPayload();
      sub_24B09A770();
      sub_24B09A8B4();
      sub_24B2D3ED4();
      sub_24AFF8258(v41, &qword_27EFC9A40);
      (*(v36 + 8))(v35, v9);
    }
  }

  else
  {
    sub_24B098F60(v17, v14, type metadata accessor for DirectionsState);
    v28 = v45;
    sub_24B098270(v14, v45);
    v29 = v47;
    (*(v47 + 16))(v7, v28, v9);
    swift_storeEnumTagMultiPayload();
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94D8);
    v31 = type metadata accessor for CustomButtonStyle(255);
    v32 = sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
    v33 = sub_24B09AD3C(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
    v55 = v30;
    v56 = v31;
    v57 = v32;
    v58 = v33;
    swift_getOpaqueTypeConformance2();
    v34 = v46;
    sub_24B2D3ED4();
    sub_24B008890(v34, v52, &qword_27EFC9A40);
    swift_storeEnumTagMultiPayload();
    sub_24B09A770();
    sub_24B09A8B4();
    v23 = v49;
    sub_24B2D3ED4();
    sub_24AFF8258(v34, &qword_27EFC9A40);
    (*(v29 + 8))(v28, v9);
    sub_24B09AE0C(v14, type metadata accessor for DirectionsState);
  }

  sub_24B0391CC(v23, v54, &qword_27EFC9A50);
}

uint64_t sub_24B098270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a1;
  v34 = a2;
  v33 = type metadata accessor for CustomButtonStyle(0);
  MEMORY[0x28223BE20](v33);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DirectionsState();
  v31[0] = *(v6 - 8);
  v7 = *(v31[0] + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for DetailsAppView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94D8);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  v16 = sub_24B2D32E4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_24B09A708(v3, v12, type metadata accessor for DetailsAppView);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_24B098F60(v12, v18 + v17, type metadata accessor for DetailsAppView);
  sub_24B09A708(v32, v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DirectionsState);
  v19 = (*(v31[0] + 80) + 16) & ~*(v31[0] + 80);
  v20 = swift_allocObject();
  sub_24B098F60(v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for DirectionsState);
  v21 = &v15[v13[12]];
  v35 = 0;
  sub_24B2D4CC4();
  v22 = v37;
  *v21 = v36;
  *(v21 + 1) = v22;
  v23 = &v15[v13[13]];
  v35 = 0;
  sub_24B2D4CC4();
  v24 = v37;
  *v23 = v36;
  *(v23 + 1) = v24;
  v25 = &v15[v13[9]];
  *v25 = &unk_24B2E33F0;
  *(v25 + 1) = v18;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_24B09AB84;
  *(v26 + 24) = v20;
  v27 = &v15[v13[10]];
  *v27 = sub_24B088C54;
  v27[1] = v26;
  v15[v13[11]] = 1;
  v28 = *(v9 + 36);
  v29 = type metadata accessor for DetailsAppView.Style(0);
  sub_24B09A708(v31[1] + *(v29 + 24) + v28, v5, type metadata accessor for CustomControlStyle);
  sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
  sub_24B09AD3C(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
  sub_24B2D46D4();
  sub_24B09AE0C(v5, type metadata accessor for CustomButtonStyle);
  return sub_24AFF8258(v15, &qword_27EFC94D8);
}

uint64_t sub_24B09870C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for CustomButtonStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetailsAppView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94D8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = sub_24B2D32E4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_24B09A708(v1, v9, type metadata accessor for DetailsAppView);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_24B098F60(v9, v15 + v14, type metadata accessor for DetailsAppView);
  v16 = &v12[v10[12]];
  v26 = 0;
  sub_24B2D4CC4();
  v17 = v28;
  *v16 = v27;
  *(v16 + 1) = v17;
  v18 = &v12[v10[13]];
  v26 = 0;
  sub_24B2D4CC4();
  v19 = v28;
  *v18 = v27;
  *(v18 + 1) = v19;
  v20 = &v12[v10[9]];
  *v20 = &unk_24B2E3400;
  *(v20 + 1) = v15;
  v21 = &v12[v10[10]];
  *v21 = sub_24B0F7150;
  v21[1] = 0;
  v12[v10[11]] = 1;
  v22 = *(v6 + 36);
  v23 = type metadata accessor for DetailsAppView.Style(0);
  sub_24B09A708(v1 + *(v23 + 28) + v22, v4, type metadata accessor for CustomControlStyle);
  sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
  sub_24B09AD3C(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
  sub_24B2D46D4();
  sub_24B09AE0C(v4, type metadata accessor for CustomButtonStyle);
  return sub_24AFF8258(v12, &qword_27EFC94D8);
}

uint64_t sub_24B098AA0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_24B2D5694();
  *(v1 + 24) = sub_24B2D5684();
  v3 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B098B38, v3, v2);
}

uint64_t sub_24B098B38()
{
  v1 = *(v0 + 16);

  v2 = v1 + *(type metadata accessor for DetailsAppView(0) + 24);
  (*(v2 + 32))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24B098BB4()
{
  sub_24B00BB00();
  sub_24AFFE0A4();
  return sub_24B2D4C54();
}

uint64_t sub_24B098C4C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_24B2D5694();
  *(v1 + 24) = sub_24B2D5684();
  v3 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B098CE4, v3, v2);
}

uint64_t sub_24B098CE4()
{
  v1 = *(v0 + 16);

  v2 = v1 + *(type metadata accessor for DetailsAppView(0) + 24);
  (*(v2 + 64))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24B098D60@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24B2D45E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_24B098EB8@<X0>(uint64_t *a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D4BE4();

  *a1 = v2;
  return result;
}

uint64_t sub_24B098F60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B098FE0()
{
  result = qword_27EFC9938;
  if (!qword_27EFC9938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9930);
    sub_24B09906C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9938);
  }

  return result;
}

unint64_t sub_24B09906C()
{
  result = qword_27EFC9940;
  if (!qword_27EFC9940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9948);
    sub_24B099124();
    sub_24B039184(&qword_27EFC9958, &qword_27EFC9960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9940);
  }

  return result;
}

unint64_t sub_24B099124()
{
  result = qword_27EFC9950;
  if (!qword_27EFC9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9950);
  }

  return result;
}

uint64_t sub_24B099178()
{
  v2 = *(type metadata accessor for DetailsAppView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFDE44;

  return sub_24B095310(v4, v5, v0 + v3);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for DetailsAppView(0);
  v30 = *(*(v1 - 8) + 64);
  v31 = *(*(v1 - 8) + 80);
  v32 = v0;
  v29 = (v31 + 16) & ~v31;
  v2 = v0 + v29;
  v3 = (v0 + v29 + *(v1 + 20));
  if (*v3 >= 2uLL)
  {
  }

  v4 = type metadata accessor for DetailsAppView.State(0);
  v5 = &v3[v4[5]];
  v6 = type metadata accessor for SessionLocation.Description(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = &v5[*(v6 + 20)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8800);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = sub_24B2D13C4();
      (*(*(v8 - 8) + 8))(v7, v8);
    }

    else
    {
    }
  }

  v9 = v4[6];
  v10 = sub_24B2D24A4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v3[v9], 1, v10))
  {
    (*(v11 + 8))(&v3[v9], v10);
  }

  v12 = &v3[v4[11]];
  v13 = type metadata accessor for DirectionsState();
  if (!(*(*(v13 - 8) + 48))(v12, 2, v13))
  {
    (*(v11 + 8))(&v12[*(v13 + 24)], v10);
  }

  v14 = v2 + *(v1 + 28);

  v15 = type metadata accessor for DetailsAppView.Style(0);
  v16 = v14 + *(v15 + 24);
  __swift_destroy_boxed_opaque_existential_0(v16);

  v17 = type metadata accessor for CustomControlStyle(0);
  v18 = v17[6];
  v19 = sub_24B2D50F4();
  v20 = *(*(v19 - 8) + 8);
  v20(v16 + v18, v19);
  v21 = v16 + v17[7];
  if (*(v21 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  v22 = v17[8];
  type metadata accessor for CustomControlStyle.BackgroundSize(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_24B2D3364();
    (*(*(v23 - 8) + 8))(v16 + v22, v23);
  }

  v24 = v14 + *(v15 + 28);
  __swift_destroy_boxed_opaque_existential_0(v24);

  v20(v24 + v17[6], v19);
  v25 = v24 + v17[7];
  if (*(v25 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  v26 = v17[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_24B2D3364();
    (*(*(v27 - 8) + 8))(v24 + v26, v27);
  }

  return MEMORY[0x2821FE8E8](v32, v29 + v30, v31 | 7);
}

uint64_t sub_24B099778(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DetailsAppView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24B0997EC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for DetailsAppView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24B095874(a1, a2, v6);
}

unint64_t sub_24B09986C()
{
  result = qword_27EFC9970;
  if (!qword_27EFC9970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC7898);
    sub_24B099934();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9970);
  }

  return result;
}

unint64_t sub_24B099934()
{
  result = qword_27EFC9978;
  if (!qword_27EFC9978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC7898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9930);
    sub_24B098FE0();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC9980, &qword_27EFC9968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9978);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = type metadata accessor for DetailsAppView(0);
  v31 = *(*(v1 - 8) + 80);
  v29 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v32 = v0;
  v30 = (v31 + 32) & ~v31;
  v2 = v0 + v30;
  v3 = (v0 + v30 + *(v1 + 20));
  if (*v3 >= 2uLL)
  {
  }

  v4 = type metadata accessor for DetailsAppView.State(0);
  v5 = &v3[v4[5]];
  v6 = type metadata accessor for SessionLocation.Description(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = &v5[*(v6 + 20)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8800);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = sub_24B2D13C4();
      (*(*(v8 - 8) + 8))(v7, v8);
    }

    else
    {
    }
  }

  v9 = v4[6];
  v10 = sub_24B2D24A4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v3[v9], 1, v10))
  {
    (*(v11 + 8))(&v3[v9], v10);
  }

  v12 = &v3[v4[11]];
  v13 = type metadata accessor for DirectionsState();
  if (!(*(*(v13 - 8) + 48))(v12, 2, v13))
  {
    (*(v11 + 8))(&v12[*(v13 + 24)], v10);
  }

  v14 = v2 + *(v1 + 28);

  v15 = type metadata accessor for DetailsAppView.Style(0);
  v16 = v14 + *(v15 + 24);
  __swift_destroy_boxed_opaque_existential_0(v16);

  v17 = type metadata accessor for CustomControlStyle(0);
  v18 = v17[6];
  v19 = sub_24B2D50F4();
  v20 = *(*(v19 - 8) + 8);
  v20(v16 + v18, v19);
  v21 = v16 + v17[7];
  if (*(v21 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  v22 = v17[8];
  type metadata accessor for CustomControlStyle.BackgroundSize(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_24B2D3364();
    (*(*(v23 - 8) + 8))(v16 + v22, v23);
  }

  v24 = v14 + *(v15 + 28);
  __swift_destroy_boxed_opaque_existential_0(v24);

  v20(v24 + v17[6], v19);
  v25 = v24 + v17[7];
  if (*(v25 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  v26 = v17[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_24B2D3364();
    (*(*(v27 - 8) + 8))(v24 + v26, v27);
  }

  return MEMORY[0x2821FE8E8](v32, v30 + v29, v31 | 7);
}

uint64_t sub_24B099F40(uint64_t a1)
{
  v4 = *(type metadata accessor for DetailsAppView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B095B70(a1, v6, v7, v1 + v5);
}

uint64_t sub_24B09A030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24B2D5D54();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24B09A130, 0, 0);
}

uint64_t sub_24B09A130()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_24B2D5D64();
  v5 = sub_24B09AD3C(&qword_27EFC8640, MEMORY[0x277D85928]);
  sub_24B2D6064();
  sub_24B09AD3C(&qword_27EFC8648, MEMORY[0x277D858F8]);
  sub_24B2D5D74();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24B09A2C0;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_24B09A2C0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B09A47C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24B09A47C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24B09A504()
{
  result = qword_27EFC99C0;
  if (!qword_27EFC99C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC99A0);
    sub_24B09A5BC();
    sub_24B039184(&qword_27EFC99E0, &qword_27EFC99B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC99C0);
  }

  return result;
}

unint64_t sub_24B09A5BC()
{
  result = qword_27EFC99C8;
  if (!qword_27EFC99C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9998);
    sub_24B09A648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC99C8);
  }

  return result;
}

unint64_t sub_24B09A648()
{
  result = qword_27EFC99D0;
  if (!qword_27EFC99D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9990);
    sub_24B039184(&qword_27EFC99D8, &qword_27EFC9988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC99D0);
  }

  return result;
}

uint64_t sub_24B09A708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B09A770()
{
  result = qword_27EFC9A60;
  if (!qword_27EFC9A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9A40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94D8);
    type metadata accessor for CustomButtonStyle(255);
    sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
    sub_24B09AD3C(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9A60);
  }

  return result;
}

unint64_t sub_24B09A8B4()
{
  result = qword_27EFC9A68;
  if (!qword_27EFC9A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9A28);
    sub_24B09A96C();
    sub_24B039184(&qword_27EFC9A78, &qword_27EFC9A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9A68);
  }

  return result;
}

unint64_t sub_24B09A96C()
{
  result = qword_27EFC9A70;
  if (!qword_27EFC9A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94D8);
    type metadata accessor for CustomButtonStyle(255);
    sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
    sub_24B09AD3C(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9A70);
  }

  return result;
}

uint64_t sub_24B09AAB8()
{
  v2 = *(type metadata accessor for DetailsAppView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFDE44;

  return sub_24B098AA0(v0 + v3);
}

uint64_t sub_24B09AB84()
{
  type metadata accessor for DirectionsState();

  return sub_24B098BB4();
}

uint64_t sub_24B09ABF4()
{
  v2 = *(type metadata accessor for DetailsAppView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFD370;

  return sub_24B098C4C(v0 + v3);
}

unint64_t sub_24B09ACC0()
{
  result = qword_27EFC9AC8;
  if (!qword_27EFC9AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9AC8);
  }

  return result;
}

uint64_t sub_24B09AD3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B09AD84(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24B083C44(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24B09ADC8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24B083C34(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24B09AE0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B09AE9C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B09AF18()
{
  result = qword_27EFC9B00;
  if (!qword_27EFC9B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9B00);
  }

  return result;
}

unint64_t sub_24B09AF6C()
{
  result = qword_27EFC9B08;
  if (!qword_27EFC9B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9B10);
    sub_24B09AFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9B08);
  }

  return result;
}

unint64_t sub_24B09AFF8()
{
  result = qword_27EFC9B18;
  if (!qword_27EFC9B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9B20);
    sub_24B09B0B0();
    sub_24B039184(&qword_27EFC9B50, &qword_27EFC9B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9B18);
  }

  return result;
}

unint64_t sub_24B09B0B0()
{
  result = qword_27EFC9B28;
  if (!qword_27EFC9B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9B30);
    sub_24B09B13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9B28);
  }

  return result;
}

unint64_t sub_24B09B13C()
{
  result = qword_27EFC9B38;
  if (!qword_27EFC9B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9B40);
    sub_24B09B1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9B38);
  }

  return result;
}

unint64_t sub_24B09B1C8()
{
  result = qword_27EFC9B48;
  if (!qword_27EFC9B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9B48);
  }

  return result;
}

void sub_24B09B268()
{
  type metadata accessor for DetailsAppView.State(319);
  if (v0 <= 0x3F)
  {
    sub_24B0A3CEC(319, &qword_27EFC9B78, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24B09B334(uint64_t *a1, unsigned int a2)
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

uint64_t sub_24B09B384(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24B09B3D8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B09B400@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0);
  MEMORY[0x28223BE20](v41);
  v4 = &v41 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D20);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D28);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D30);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D38);
  MEMORY[0x28223BE20](v42);
  v15 = &v41 - v14;
  sub_24B09B9F4(v2, v7);
  sub_24B0A4274();
  sub_24B076874();
  sub_24B2D46C4();
  sub_24AFF8258(v7, &qword_27EFC9D20);
  KeyPath = swift_getKeyPath();
  v17 = &v10[*(v8 + 36)];
  *v17 = KeyPath;
  *(v17 + 1) = 1;
  v17[16] = 0;
  v18 = *MEMORY[0x277CDFA10];
  v19 = sub_24B2D3764();
  (*(*(v19 - 8) + 104))(v4, v18, v19);
  sub_24B0A3584(&qword_27EFC8AE8, MEMORY[0x277CDFA28]);
  result = sub_24B2D52A4();
  if (result)
  {
    sub_24B0A4C40();
    sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
    sub_24B2D4774();
    sub_24AFF8258(v4, &qword_27EFC8AD0);
    sub_24AFF8258(v10, &qword_27EFC9D28);
    v21 = sub_24B2D50E4();
    v22 = type metadata accessor for FullScreenLocationDetailViewActionsModule(0);
    v23 = v22[5];
    v24 = &v13[*(v11 + 36)];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9E50);
    sub_24B0A351C(&v2[v23], v24 + *(v25 + 36), type metadata accessor for LocateAction);
    *v24 = v21;
    v26 = sub_24B2D50E4();
    v27 = v2[v22[6]];
    sub_24B008890(v13, v15, &qword_27EFC9D30);
    v28 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9E58) + 36)];
    *v28 = v26;
    v28[8] = v27;
    sub_24AFF8258(v13, &qword_27EFC9D30);
    v29 = sub_24B2D50E4();
    v30 = v2[v22[7]];
    v31 = &v15[*(v42 + 36)];
    *v31 = v29;
    v31[8] = v30;
    sub_24B2D3D74();
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    v34 = sub_24B2D45E4();
    v36 = v35;
    LOBYTE(ObjCClassFromMetadata) = v37;
    v38 = &v2[v22[9]];
    v39 = *v38;
    v40 = *(v38 + 1);
    v44 = v39;
    v45 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
    sub_24B2D4CF4();
    sub_24B0A4D50();
    sub_24B2D4904();

    sub_24B083C34(v34, v36, ObjCClassFromMetadata & 1);

    return sub_24AFF8258(v15, &qword_27EFC9D38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B09B9F4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9DF0);
  MEMORY[0x28223BE20](v15);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9EA0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D60);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1 == 1)
  {
    sub_24B09BCF8(v10);
    sub_24B008890(v10, v7, &qword_27EFC9D60);
    swift_storeEnumTagMultiPayload();
    sub_24B0A4384();
    sub_24B0A4960();
    sub_24B2D3ED4();
    sub_24AFF8258(v10, &qword_27EFC9D60);
  }

  else
  {
    sub_24B09C730(v4);
    sub_24B008890(v4, v7, &qword_27EFC9DF0);
    swift_storeEnumTagMultiPayload();
    sub_24B0A4384();
    sub_24B0A4960();
    sub_24B2D3ED4();
    sub_24AFF8258(v4, &qword_27EFC9DF0);
  }

  sub_24AFDA724(v13, v16);
}

uint64_t sub_24B09BCF8@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9EA8);
  MEMORY[0x28223BE20](v60);
  v61 = (&v57 - v2);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9DB0);
  MEMORY[0x28223BE20](v73);
  v62 = &v57 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9EB0);
  v63 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v57 - v4;
  v5 = type metadata accessor for DirectionsState();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9EB8);
  MEMORY[0x28223BE20](v70);
  v69 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9EC0);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D70);
  MEMORY[0x28223BE20](v67);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9EC8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9ED0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - v19;
  v21 = type metadata accessor for FullScreenLocationDetailViewActionsModule(0);
  v22 = *(v21 + 20);
  v23 = *(v1 + *(v21 + 24));
  v24 = *(v18 + 56);
  *v20 = v23;
  v68 = v24;
  sub_24B0A351C(v1 + v22, &v20[v24], type metadata accessor for LocateAction);
  if (v23 == 1)
  {
    sub_24B09CFF8(v16);
    (*(v14 + 16))(v10, v16, v13);
    swift_storeEnumTagMultiPayload();
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D78);
    v26 = sub_24B0A4510();
    v76 = v25;
    v77 = v26;
    swift_getOpaqueTypeConformance2();
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D98);
    v28 = sub_24B0A45F4();
    v76 = v27;
    v77 = v28;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();
    sub_24B008890(v12, v69, &qword_27EFC9D70);
    swift_storeEnumTagMultiPayload();
    sub_24B0A4410();
    sub_24B0A46D8();
    sub_24B2D3ED4();
    sub_24AFF8258(v12, &qword_27EFC9D70);
    (*(v14 + 8))(v16, v13);
    return sub_24B0A5014(&v20[v68], type metadata accessor for LocateAction);
  }

  else
  {
    v57 = v13;
    v58 = v12;
    v30 = v69;
    v31 = v71;
    v32 = v68;
    v33 = (*(v65 + 48))(&v20[v68], 2, v66);
    if (v33)
    {
      if (v33 == 1)
      {
        sub_24B2D5064();
        sub_24B2D3494();
        v34 = v77;
        v35 = v78;
        v36 = v79;
        v37 = v61;
        *v61 = v76;
        *(v37 + 8) = v34;
        v37[2] = v35;
        *(v37 + 24) = v36;
        *(v37 + 2) = v80;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9DC0);
        v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D98);
        v39 = sub_24B0A45F4();
        v74 = v38;
        v75 = v39;
        swift_getOpaqueTypeConformance2();
        sub_24B0A47A0();
        v40 = v62;
        sub_24B2D3ED4();
        sub_24B008890(v40, v30, &qword_27EFC9DB0);
        swift_storeEnumTagMultiPayload();
        sub_24B0A4410();
        sub_24B0A46D8();
        sub_24B2D3ED4();
        return sub_24AFF8258(v40, &qword_27EFC9DB0);
      }

      else
      {
        v52 = v64;
        sub_24B09D928(v64);
        v53 = v63;
        (*(v63 + 16))(v61, v52, v31);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9DC0);
        v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D98);
        v55 = sub_24B0A45F4();
        v76 = v54;
        v77 = v55;
        swift_getOpaqueTypeConformance2();
        sub_24B0A47A0();
        v56 = v62;
        sub_24B2D3ED4();
        sub_24B008890(v56, v30, &qword_27EFC9DB0);
        swift_storeEnumTagMultiPayload();
        sub_24B0A4410();
        sub_24B0A46D8();
        sub_24B2D3ED4();
        sub_24AFF8258(v56, &qword_27EFC9DB0);
        return (*(v53 + 8))(v52, v31);
      }
    }

    else
    {
      v41 = &v20[v32];
      v42 = v59;
      sub_24B0A34B4(v41, v59, type metadata accessor for DirectionsState);
      v43 = v64;
      sub_24B09D410(v42, v64);
      v44 = v63;
      v45 = v10;
      v46 = v31;
      (*(v63 + 16))(v45, v43, v31);
      swift_storeEnumTagMultiPayload();
      v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D78);
      v48 = sub_24B0A4510();
      v76 = v47;
      v77 = v48;
      swift_getOpaqueTypeConformance2();
      v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D98);
      v50 = sub_24B0A45F4();
      v76 = v49;
      v77 = v50;
      swift_getOpaqueTypeConformance2();
      v51 = v58;
      sub_24B2D3ED4();
      sub_24B008890(v51, v30, &qword_27EFC9D70);
      swift_storeEnumTagMultiPayload();
      sub_24B0A4410();
      sub_24B0A46D8();
      sub_24B2D3ED4();
      sub_24AFF8258(v51, &qword_27EFC9D70);
      (*(v44 + 8))(v64, v46);
      return sub_24B0A5014(v59, type metadata accessor for DirectionsState);
    }
  }
}

uint64_t sub_24B09C730@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9E30);
  MEMORY[0x28223BE20](v55);
  v4 = &v47 - v3;
  v5 = sub_24B2D4A54();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FullScreenLocationDetailViewActionsModule(0);
  v8 = v7 - 8;
  v47 = *(v7 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9E10);
  MEMORY[0x28223BE20](v48);
  v11 = &v47 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9ED8);
  MEMORY[0x28223BE20](v53);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9EE0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9E00);
  MEMORY[0x28223BE20](v52);
  v18 = &v47 - v17;
  if (!*(v2 + *(v8 + 36)))
  {
    sub_24B2D5064();
    sub_24B2D3494();
    v32 = v58;
    v33 = v59;
    v34 = v60;
    *v16 = v57;
    v16[8] = v32;
    *(v16 + 2) = v33;
    v16[24] = v34;
    *(v16 + 2) = v61;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9DC0);
    sub_24B0A47A0();
    sub_24B0A4A78();
    sub_24B2D3ED4();
    v35 = &qword_27EFC9E00;
    sub_24B008890(v18, v13, &qword_27EFC9E00);
    swift_storeEnumTagMultiPayload();
    sub_24B0A49EC();
    sub_24B0A4B5C();
    sub_24B2D3ED4();
    v30 = v18;
LABEL_6:
    v31 = v35;
    return sub_24AFF8258(v30, v31);
  }

  if (*(v2 + *(v8 + 36)) != 1)
  {
    v36 = sub_24B2D32E4();
    (*(*(v36 - 8) + 56))(v4, 1, 1, v36);
    sub_24B0A351C(v2, &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullScreenLocationDetailViewActionsModule);
    v37 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v38 = swift_allocObject();
    sub_24B0A34B4(&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37, type metadata accessor for FullScreenLocationDetailViewActionsModule);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D90);
    v40 = &v4[v39[12]];
    v56 = 0;
    sub_24B2D4CC4();
    v41 = v58;
    *v40 = v57;
    *(v40 + 1) = v41;
    v42 = &v4[v39[13]];
    v56 = 0;
    sub_24B2D4CC4();
    v43 = v58;
    *v42 = v57;
    *(v42 + 1) = v43;
    v44 = &v4[v39[9]];
    *v44 = &unk_24B2E3B28;
    *(v44 + 1) = v38;
    v45 = &v4[v39[10]];
    *v45 = sub_24B0A292C;
    v45[1] = 0;
    v4[v39[11]] = 0;
    (*(v49 + 104))(v51, *MEMORY[0x277CE0EE0], v50);
    *&v4[*(v55 + 36)] = sub_24B2D4B74();
    v35 = &qword_27EFC9E30;
    sub_24B008890(v4, v13, &qword_27EFC9E30);
    swift_storeEnumTagMultiPayload();
    sub_24B0A49EC();
    sub_24B0A4B5C();
    sub_24B2D3ED4();
    v30 = v4;
    goto LABEL_6;
  }

  sub_24B0A351C(v2, &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullScreenLocationDetailViewActionsModule);
  v19 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v20 = swift_allocObject();
  sub_24B0A34B4(&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for FullScreenLocationDetailViewActionsModule);
  v21 = sub_24B2D3D74();
  v23 = v22;
  LOBYTE(v19) = v24;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9E20);
  sub_24B2D3E64();
  *v11 = &unk_24B2E3B38;
  *(v11 + 1) = v20;
  *(v11 + 2) = v21;
  *(v11 + 3) = v23;
  v11[32] = v19 & 1;
  *(v11 + 5) = v26;
  (*(v49 + 104))(v51, *MEMORY[0x277CE0EE0], v50);
  v27 = sub_24B2D4B74();
  KeyPath = swift_getKeyPath();
  v29 = &v11[*(v48 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  sub_24B008890(v11, v16, &qword_27EFC9E10);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9DC0);
  sub_24B0A47A0();
  sub_24B0A4A78();
  sub_24B2D3ED4();
  sub_24B008890(v18, v13, &qword_27EFC9E00);
  swift_storeEnumTagMultiPayload();
  sub_24B0A49EC();
  sub_24B0A4B5C();
  sub_24B2D3ED4();
  sub_24AFF8258(v18, &qword_27EFC9E00);
  v30 = v11;
  v31 = &qword_27EFC9E10;
  return sub_24AFF8258(v30, v31);
}

uint64_t sub_24B09CF68()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_24B09CFF8@<X0>(uint64_t a1@<X8>)
{
  v28[1] = a1;
  v29 = sub_24B2D3694();
  v28[0] = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B2D4A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FullScreenLocationDetailViewActionsModule(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D78);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  v14 = sub_24B2D32E4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_24B0A351C(v1, v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullScreenLocationDetailViewActionsModule);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_24B0A34B4(v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for FullScreenLocationDetailViewActionsModule);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D90);
  v18 = &v13[v17[12]];
  v30 = 0;
  sub_24B2D4CC4();
  v19 = v32;
  *v18 = v31;
  *(v18 + 1) = v19;
  v20 = &v13[v17[13]];
  v30 = 0;
  sub_24B2D4CC4();
  v21 = v32;
  *v20 = v31;
  *(v20 + 1) = v21;
  v22 = &v13[v17[9]];
  *v22 = &unk_24B2E3AB8;
  *(v22 + 1) = v16;
  v23 = &v13[v17[10]];
  *v23 = sub_24B0A2854;
  v23[1] = 0;
  v13[v17[11]] = 1;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
  v24 = sub_24B2D4B74();
  KeyPath = swift_getKeyPath();
  v26 = &v13[*(v11 + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  sub_24B2D3674();
  sub_24B0A4510();
  sub_24B2D4714();
  (*(v28[0] + 8))(v3, v29);
  return sub_24AFF8258(v13, &qword_27EFC9D78);
}

uint64_t sub_24B09D410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v38 = a2;
  v39 = sub_24B2D3694();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D4A54();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DirectionsState();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = type metadata accessor for FullScreenLocationDetailViewActionsModule(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D98);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = sub_24B2D32E4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_24B0A351C(v2, &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullScreenLocationDetailViewActionsModule);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  sub_24B0A34B4(&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for FullScreenLocationDetailViewActionsModule);
  sub_24B0A351C(v34, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DirectionsState);
  v19 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v20 = swift_allocObject();
  sub_24B0A34B4(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for DirectionsState);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94D8);
  v22 = &v15[v21[12]];
  v40 = 0;
  sub_24B2D4CC4();
  v23 = v42;
  *v22 = v41;
  *(v22 + 1) = v23;
  v24 = &v15[v21[13]];
  v40 = 0;
  sub_24B2D4CC4();
  v25 = v42;
  *v24 = v41;
  *(v24 + 1) = v25;
  v26 = &v15[v21[9]];
  *v26 = &unk_24B2E3AF8;
  *(v26 + 1) = v18;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_24B09AB84;
  *(v27 + 24) = v20;
  v28 = &v15[v21[10]];
  *v28 = sub_24B088C54;
  v28[1] = v27;
  v15[v21[11]] = 1;
  (*(v35 + 104))(v7, *MEMORY[0x277CE0EE0], v36);
  v29 = sub_24B2D4B74();
  KeyPath = swift_getKeyPath();
  v31 = &v15[*(v13 + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  sub_24B2D3674();
  sub_24B0A45F4();
  sub_24B2D4714();
  (*(v37 + 8))(v4, v39);
  return sub_24AFF8258(v15, &qword_27EFC9D98);
}

uint64_t sub_24B09D928@<X0>(uint64_t a1@<X8>)
{
  v28[1] = a1;
  v29 = sub_24B2D3694();
  v28[0] = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B2D4A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FullScreenLocationDetailViewActionsModule(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D98);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  v14 = sub_24B2D32E4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_24B0A351C(v1, v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullScreenLocationDetailViewActionsModule);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_24B0A34B4(v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for FullScreenLocationDetailViewActionsModule);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94D8);
  v18 = &v13[v17[12]];
  v30 = 0;
  sub_24B2D4CC4();
  v19 = v32;
  *v18 = v31;
  *(v18 + 1) = v19;
  v20 = &v13[v17[13]];
  v30 = 0;
  sub_24B2D4CC4();
  v21 = v32;
  *v20 = v31;
  *(v20 + 1) = v21;
  v22 = &v13[v17[9]];
  *v22 = &unk_24B2E3B08;
  *(v22 + 1) = v16;
  v23 = &v13[v17[10]];
  *v23 = sub_24B0F71A4;
  v23[1] = 0;
  v13[v17[11]] = 1;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
  v24 = sub_24B2D4B74();
  KeyPath = swift_getKeyPath();
  v26 = &v13[*(v11 + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  sub_24B2D3674();
  sub_24B0A45F4();
  sub_24B2D4714();
  (*(v28[0] + 8))(v3, v29);
  return sub_24AFF8258(v13, &qword_27EFC9D98);
}

uint64_t sub_24B09DD40(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24B2D34F4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_24B2D5694();
  v1[6] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_24B09DE34, v4, v3);
}

uint64_t sub_24B09DE34()
{
  v1 = v0[2];
  v2 = type metadata accessor for FullScreenLocationDetailViewActionsModule(0);
  v0[9] = v2;
  v5 = (*(v1 + *(v2 + 32)) + **(v1 + *(v2 + 32)));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_24B09DF34;

  return v5();
}

uint64_t sub_24B09DF34()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24B09E054, v3, v2);
}

uint64_t sub_24B09E054()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  sub_24B163AA0(v1);
  sub_24B2D34E4();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B09E108(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_24B2D5694();
  *(v1 + 24) = sub_24B2D5684();
  v3 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B09E1A0, v3, v2);
}

uint64_t sub_24B09E1A0()
{
  v1 = *(v0 + 16);

  v2 = v1 + *(type metadata accessor for FullScreenLocationDetailViewActionsModule(0) + 32);
  (*(v2 + 32))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24B09E21C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_24B2D5694();
  *(v1 + 24) = sub_24B2D5684();
  v3 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B09E2B4, v3, v2);
}

uint64_t sub_24B09E2B4()
{
  v1 = *(v0 + 16);

  v2 = v1 + *(type metadata accessor for FullScreenLocationDetailViewActionsModule(0) + 32);
  (*(v2 + 64))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24B09E330@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24B2D45E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_24B09E480@<X0>(uint64_t *a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D4BE4();

  *a1 = v2;
  return result;
}

uint64_t sub_24B09E524(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24B2D34F4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_24B2D5694();
  v2[7] = sub_24B2D5684();
  v5 = sub_24B2D5604();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x2822009F8](sub_24B09E618, v5, v4);
}

uint64_t sub_24B09E618()
{
  v1 = v0[3];
  v2 = type metadata accessor for FullScreenLocationDetailViewActionsModule(0);
  v0[10] = v2;
  v6 = (*(v1 + *(v2 + 32) + 80) + **(v1 + *(v2 + 32) + 80));
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_24B09E724;
  v4 = v0[2];

  return v6(v4, 0);
}

uint64_t sub_24B09E724()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_24B09E844, v3, v2);
}

uint64_t sub_24B09E844()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  sub_24B163AA0(v1);
  sub_24B2D34E4();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B09E8F8(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_24B2D34F4();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_24B2D5694();
  v1[8] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x2822009F8](sub_24B09E9EC, v4, v3);
}

uint64_t sub_24B09E9EC()
{
  sub_24B2D2AE4();
  if (sub_24B2D2A74())
  {
    v1 = *(v0 + 32);

    v2 = (v1 + *(type metadata accessor for FullScreenLocationDetailViewActionsModule(0) + 36));
    v3 = *v2;
    v4 = *(v2 + 1);
    *(v0 + 16) = v3;
    *(v0 + 24) = v4;
    *(v0 + 104) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
    sub_24B2D4CE4();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 32);
    v8 = type metadata accessor for FullScreenLocationDetailViewActionsModule(0);
    *(v0 + 88) = v8;
    v10 = (*(v7 + *(v8 + 32) + 112) + **(v7 + *(v8 + 32) + 112));
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_24B09EB9C;

    return v10();
  }
}

uint64_t sub_24B09EB9C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_24B09ECBC, v3, v2);
}

uint64_t sub_24B09ECBC()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  sub_24B163AA0(v1);
  sub_24B2D34E4();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B09ED74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = type metadata accessor for FullScreenLocationDetailViewStandalone(0);
  sub_24B008890(a2, a9 + v19[6], &qword_27EFC7880);
  *(a9 + 24) = a1;
  v20 = (a9 + v19[7]);
  *v20 = a3;
  v20[1] = a4;
  *(a9 + v19[8]) = a5;
  *(a9 + v19[9]) = a6 & 1;
  v21 = swift_allocObject();
  v21[2] = a7;
  v21[3] = a8;
  v21[4] = a10;
  v21[5] = a11;
  v21[6] = a12;
  v21[7] = a13;

  sub_24AFD5880(a10);
  sub_24AFD5880(a12);

  *a9 = sub_24B0A2FC0;
  *(a9 + 8) = v21;
  *(a9 + 16) = 0;
  return result;
}

uint64_t sub_24B09EF40@<X0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  v6 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D00);
  sub_24B2D4CD4();
  type metadata accessor for EmbeddedPeopleInteractiveMapViewModel();
  sub_24B0A3584(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel);
  sub_24B2D4F64();
  v3 = a1 + *(type metadata accessor for EmbeddedPeopleInteractiveMapView(0) + 20);
  result = sub_24B2D4CC4();
  *v3 = v5;
  *(v3 + 8) = v6;
  return result;
}

char *sub_24B09F02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27EFC75F8 != -1)
  {
    swift_once();
  }

  v12 = qword_27EFE4470;
  type metadata accessor for CompositeAppViewModel();
  swift_allocObject();

  sub_24AFD5880(a3);
  sub_24AFD5880(a5);
  return sub_24B059C44(v12, a1, a2, a3, a4, 0, 0, a5, a6);
}

uint64_t sub_24B09F124@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FullScreenLocationDetailViewStandalone(0);
  v19 = *(v4 - 8);
  v18 = *(v19 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompositeAppViewModel();
  sub_24B0A3584(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel);
  sub_24B2D33A4();
  sub_24B064D40(a1);

  v7 = *(v1 + 24);

  v8 = sub_24B2D33A4();
  v9 = type metadata accessor for FullScreenLocationDetailView(0);
  *&a1[v9[5]] = v7;
  v10 = &a1[v9[6]];
  *v10 = &unk_24B2E2E40;
  *(v10 + 1) = v8;
  *(v10 + 2) = sub_24B09140C;
  *(v10 + 3) = v8;
  *(v10 + 4) = sub_24B091414;
  *(v10 + 5) = v8;
  *(v10 + 6) = sub_24B05EE80;
  *(v10 + 7) = 0;
  *(v10 + 8) = sub_24B09141C;
  *(v10 + 9) = v8;
  *(v10 + 10) = &unk_24B2E3940;
  *(v10 + 11) = v8;
  *(v10 + 12) = &unk_24B2E2E50;
  *(v10 + 13) = v8;
  *(v10 + 14) = &unk_24B2E3950;
  *(v10 + 15) = v8;
  *(v10 + 16) = sub_24B0914FC;
  *(v10 + 17) = v8;
  v11 = v9[7];
  swift_retain_n();
  *&a1[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0);
  swift_storeEnumTagMultiPayload();
  sub_24B0A351C(v2, v6, type metadata accessor for FullScreenLocationDetailViewStandalone);
  v12 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v13 = swift_allocObject();
  sub_24B0A34B4(v6, v13 + v12, type metadata accessor for FullScreenLocationDetailViewStandalone);
  v14 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D10) + 36)];
  *v14 = sub_24B0A4074;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  sub_24B0A351C(v2, v6, type metadata accessor for FullScreenLocationDetailViewStandalone);
  v15 = swift_allocObject();
  sub_24B0A34B4(v6, v15 + v12, type metadata accessor for FullScreenLocationDetailViewStandalone);
  v16 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D18) + 36)];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = sub_24B0A41E8;
  *(v16 + 3) = v15;
  return swift_retain_n();
}

uint64_t sub_24B09F4B0(uint64_t a1)
{
  v2 = type metadata accessor for CompositeAppViewInitialInfo();
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for CompositeAppViewModel();
  sub_24B0A3584(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel);
  sub_24B2D33A4();
  v5 = type metadata accessor for FullScreenLocationDetailViewStandalone(0);
  sub_24B008890(a1 + v5[6], v4, &qword_27EFC7880);
  v6 = (a1 + v5[7]);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(a1 + v5[8]);
  type metadata accessor for CompositeAppViewState(0);
  swift_storeEnumTagMultiPayload();
  v10 = *(a1 + v5[9]);
  v11 = &v4[v2[5]];
  *v11 = v8;
  *(v11 + 1) = v7;
  *&v4[v2[6]] = v9;
  v4[v2[8]] = v10;

  sub_24B0558C4(v4);

  sub_24B0A5014(v4, type metadata accessor for CompositeAppViewInitialInfo);
}

uint64_t sub_24B09F6C0()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for CompositeAppViewModel();
  sub_24B0A3584(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel);
  sub_24B2D33A4();
  sub_24B0555F0();
}

uint64_t sub_24B09F7D4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v33 = sub_24B2D3C94();
  v2 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InteractiveMap();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9B80);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9B88);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = *v1;
  if (*v1 >= 2)
  {
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = v1;
  v16 = *(v1 + *(type metadata accessor for FullScreenLocationDetailView(0) + 20)) == 0;
  v32 = v7;
  InteractiveMap.init(annotations:focusOnUserLocation:)(v14, v16, v7);
  v31 = sub_24B2D3DF4();
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = &v10[*(v8 + 36)];
  *v17 = sub_24B2D3DF4();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9B90);
  sub_24B09FCAC(v1, &v17[*(v18 + 44)]);
  v19 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9B98) + 36)];
  sub_24B2D4FD4();
  v20 = sub_24B2D42F4();

  v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC99B8) + 36)] = v20;
  v21 = sub_24B2D3424();
  v22 = MEMORY[0x24C23AB40]((2 * v21));
  v23 = sub_24B2D3814();
  v24 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9BA0) + 36)];
  *v24 = v23;
  *(v24 + 1) = 0;
  v24[16] = 0;
  v24[17] = v22;
  v25 = v32;
  *(v24 + 3) = v31;
  sub_24B0A34B4(v25, v10, type metadata accessor for InteractiveMap);
  v26 = v33;
  (*(v2 + 104))(v4, *MEMORY[0x277CDDDC0], v33);
  v27 = sub_24B0A2FD0();
  sub_24B2D48A4();
  (*(v2 + 8))(v4, v26);
  v28 = sub_24AFF8258(v10, &qword_27EFC9B80);
  MEMORY[0x28223BE20](v28);
  *(&v31 - 2) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9BC0);
  v37 = v8;
  v38 = v27;
  swift_getOpaqueTypeConformance2();
  sub_24B039184(&qword_27EFC9BC8, &qword_27EFC9BC0);
  v29 = v35;
  sub_24B2D4994();
  return (*(v34 + 8))(v13, v29);
}

uint64_t sub_24B09FCAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9CC0);
  MEMORY[0x28223BE20](v58);
  v4 = &v56 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9CC8);
  v5 = MEMORY[0x28223BE20](v59);
  v65 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  MEMORY[0x28223BE20](v7);
  v63 = &v56 - v10;
  v64 = sub_24B2D4EB4();
  v62 = *(v64 - 8);
  v11 = MEMORY[0x28223BE20](v64);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - v13;
  sub_24B2D5694();
  v61 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D4EA4();
  v15 = type metadata accessor for FullScreenLocationDetailView(0);
  v16 = *(a1 + *(v15 + 20)) != 0;
  v17 = type metadata accessor for DetailsAppView.State(0);
  v57 = v14;
  v18 = v17[11];
  v19 = type metadata accessor for FullScreenLocationDetailViewActionsModule(0);
  sub_24B0A351C(a1 + v18, &v4[v19[5]], type metadata accessor for LocateAction);
  v21 = v17[9];
  v20 = v17[10];
  v22 = (a1 + *(v15 + 24));
  v23 = v22[1];
  v24 = v22[3];
  v70 = v22[2];
  v25 = v70;
  v71 = v24;
  v27 = v22[8];
  v29 = v22[5];
  v28 = v22[6];
  v75 = v22[7];
  v26 = v75;
  v76 = v27;
  v74 = v28;
  v30 = v22[3];
  v31 = v22[5];
  v72 = v22[4];
  v32 = v72;
  v73 = v31;
  v33 = v22[1];
  v69[0] = *v22;
  v34 = v69[0];
  v69[1] = v33;
  LOBYTE(v20) = *(a1 + v20);
  LOBYTE(v21) = *(a1 + v21);
  *v4 = v16;
  v4[v19[6]] = v20;
  v4[v19[7]] = v21;
  v35 = &v4[v19[8]];
  *(v35 + 6) = v28;
  *(v35 + 7) = v26;
  *(v35 + 8) = v22[8];
  *(v35 + 2) = v25;
  *(v35 + 3) = v30;
  *(v35 + 4) = v32;
  *(v35 + 5) = v29;
  *v35 = v34;
  *(v35 + 1) = v23;
  v36 = &v4[v19[9]];
  v68 = 0;
  sub_24B0A3A8C(v69, v67);
  sub_24B2D4CC4();
  v37 = *(&v67[0] + 1);
  *v36 = v67[0];
  *(v36 + 1) = v37;
  v38 = v19[10];
  *&v4[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0);
  swift_storeEnumTagMultiPayload();
  v39 = sub_24B2D4354();
  v40 = &v4[*(v58 + 36)];
  *v40 = v39;
  *(v40 + 8) = 0u;
  *(v40 + 24) = 0u;
  v40[40] = 1;
  sub_24B2D5064();
  sub_24B2D3904();
  sub_24B0391CC(v4, v9, &qword_27EFC9CC0);
  v41 = &v9[*(v59 + 36)];
  v42 = v67[5];
  *(v41 + 4) = v67[4];
  *(v41 + 5) = v42;
  *(v41 + 6) = v67[6];
  v43 = v67[1];
  *v41 = v67[0];
  *(v41 + 1) = v43;
  v44 = v67[3];
  *(v41 + 2) = v67[2];
  *(v41 + 3) = v44;
  v45 = v63;
  sub_24B0391CC(v9, v63, &qword_27EFC9CC8);
  v46 = v62;
  v47 = *(v62 + 16);
  v48 = v60;
  v49 = v57;
  v50 = v64;
  v47(v60, v57, v64);
  v51 = v65;
  sub_24B008890(v45, v65, &qword_27EFC9CC8);
  v52 = v66;
  v47(v66, v48, v50);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9CD0);
  sub_24B008890(v51, &v52[*(v53 + 48)], &qword_27EFC9CC8);
  sub_24AFF8258(v45, &qword_27EFC9CC8);
  v54 = *(v46 + 8);
  v54(v49, v50);
  sub_24AFF8258(v51, &qword_27EFC9CC8);
  v54(v48, v50);
}

uint64_t sub_24B0A022C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9BD0);
  MEMORY[0x28223BE20](v23);
  v22 = &v19 - v3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9BD8);
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = &v19 - v5;
  v7 = sub_24B2D3F54();
  MEMORY[0x28223BE20](v7 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9BE0);
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v10 = &v19 - v9;
  sub_24B2D5694();
  v19 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_24B2D3F24();
  MEMORY[0x28223BE20](v11);
  *(&v19 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9BE8);
  sub_24B0A30C8();
  sub_24B2D33D4();
  v12 = sub_24B2D3F44();
  MEMORY[0x28223BE20](v12);
  *(&v19 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C10);
  sub_24B039184(&qword_27EFC9C18, &qword_27EFC9C10);
  sub_24B2D33D4();
  v13 = v22;
  v14 = *(v23 + 48);
  v15 = v20;
  (*(v8 + 16))(v22, v10, v20);
  v16 = &v13[v14];
  v17 = v21;
  (*(v4 + 16))(v16, v6, v21);
  sub_24B2D3E74();
  (*(v4 + 8))(v6, v17);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_24B0A062C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9318);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9CB8);
  MEMORY[0x28223BE20](v34);
  v38 = &v32 - v7;
  v8 = type metadata accessor for FullScreenLocationDetailView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C00);
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9BE8);
  MEMORY[0x28223BE20](v13 - 8);
  v36 = &v32 - v14;
  sub_24B2D5694();
  v35 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = &type metadata for SolariumFeatureFlag;
  v41 = sub_24B0096D0();
  v15 = sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(v39);
  if (v15)
  {
    v16 = sub_24B2D3D74();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    sub_24B0A351C(v33, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullScreenLocationDetailView);
    v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v24 = swift_allocObject();
    v25 = sub_24B0A34B4(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for FullScreenLocationDetailView);
    v33 = v3;
    MEMORY[0x28223BE20](v25);
    *(&v32 - 6) = v16;
    *(&v32 - 5) = v18;
    *(&v32 - 32) = v20 & 1;
    *(&v32 - 3) = v22;
    *(&v32 - 2) = 0x72616D6B63656863;
    *(&v32 - 1) = 0xE90000000000006BLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9490);
    sub_24B039184(&qword_27EFC9498, &qword_27EFC9490);
    sub_24B2D4D34();

    v26 = v32;
    v27 = v37;
    (*(v32 + 16))(v38, v12, v37);
    swift_storeEnumTagMultiPayload();
    sub_24B039184(&qword_27EFC9BF8, &qword_27EFC9C00);
    sub_24B039184(&qword_27EFC9C08, &qword_27EFC9318);
    v28 = v36;
    sub_24B2D3ED4();
    (*(v26 + 8))(v12, v27);
  }

  else
  {
    sub_24B0A351C(v33, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullScreenLocationDetailView);
    v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v30 = swift_allocObject();
    sub_24B0A34B4(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for FullScreenLocationDetailView);
    sub_24B2D4D34();
    (*(v4 + 16))(v38, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_24B039184(&qword_27EFC9BF8, &qword_27EFC9C00);
    sub_24B039184(&qword_27EFC9C08, &qword_27EFC9318);
    v28 = v36;
    sub_24B2D3ED4();
    (*(v4 + 8))(v6, v3);
  }

  sub_24B0391CC(v28, a2, &qword_27EFC9BE8);
}

uint64_t sub_24B0A0CDC()
{
  v0 = sub_24B2D34F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for FullScreenLocationDetailView(0);
  sub_24B163AA0(v3);
  sub_24B2D34E4();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_24B0A0E30@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24B2D45E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_24B0A0F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_24B2D3DF4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C20);
  sub_24B0A1054(a1, a2 + *(v4 + 44));
}

uint64_t sub_24B0A1054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C28);
  v4 = MEMORY[0x28223BE20](v26);
  v29 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-v6];
  sub_24B2D5694();
  v27 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B0A131C(a1, v30);
  v8 = v30[0];
  v9 = v30[1];
  v10 = v30[2];
  v25 = v30[3];
  v11 = v32;
  v24 = v31;
  v28 = sub_24B2D4484();
  KeyPath = swift_getKeyPath();
  LOBYTE(v30[0]) = v11;
  sub_24B0A17F8(a1, v7);
  v13 = sub_24B2D4394();
  v14 = swift_getKeyPath();
  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C30) + 36)];
  *v15 = v14;
  v15[1] = v13;
  *&v7[*(v26 + 36)] = sub_24B2D3FD4();
  v16 = v30[0];
  v17 = v29;
  sub_24B008890(v7, v29, &qword_27EFC9C28);
  *a2 = v8;
  *(a2 + 8) = v9;
  v18 = v25;
  *(a2 + 16) = v10;
  *(a2 + 24) = v18;
  v19 = v24;
  *(a2 + 32) = v24;
  *(a2 + 34) = v16;
  v20 = v28;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C38);
  sub_24B008890(v17, a2 + *(v21 + 48), &qword_27EFC9C28);
  sub_24B0A31B0(v8, v9, v10, v18, v19, v16 & 1);

  sub_24AFF8258(v7, &qword_27EFC9C28);
  sub_24AFF8258(v29, &qword_27EFC9C28);
  sub_24B0A3294(v8, v9, v10, v18, v19, v16 & 1);
}

double sub_24B0A131C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Friend();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + *(type metadata accessor for FullScreenLocationDetailView(0) + 20));
  if (v8)
  {
    if (*(v8 + 16) == 1)
    {
      sub_24B0A351C(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v7, type metadata accessor for Friend);
      if (v7[1])
      {
        v9 = *v7;
        v10 = v7[1];
      }

      else
      {
        v9 = sub_24B2D16D4();
      }

      *&v39 = v9;
      *(&v39 + 1) = v10;
      sub_24AFFE0A4();

      *&v35 = sub_24B2D4604();
      *(&v35 + 1) = v21;
      *&v36 = v22 & 1;
      *(&v36 + 1) = v23;
      v37 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9AC0);
      sub_24B09ACC0();
      sub_24B2D3ED4();
      sub_24B0A5014(v7, type metadata accessor for Friend);
    }

    else
    {
      v16 = (a1 + *(type metadata accessor for DetailsAppView.State(0) + 32));
      v17 = v16[1];
      if (v17)
      {
        *&v39 = *v16;
        *(&v39 + 1) = v17;
        sub_24AFFE0A4();

        *&v35 = sub_24B2D4604();
        *(&v35 + 1) = v18;
        *&v36 = v19 & 1;
        *(&v36 + 1) = v20;
        LOBYTE(v37) = 0;
      }

      else
      {
        sub_24B2D3D74();
        type metadata accessor for FindMyUICore();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v25 = [objc_opt_self() bundleForClass_];
        *&v35 = sub_24B2D45E4();
        *(&v35 + 1) = v27;
        *&v36 = v26 & 1;
        *(&v36 + 1) = v28;
        LOBYTE(v37) = 1;
      }

      sub_24B2D3ED4();
      v35 = v39;
      v36 = v40;
      LOBYTE(v37) = v41;
      HIBYTE(v37) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9AC0);
      sub_24B09ACC0();
      sub_24B2D3ED4();
    }

    if (HIBYTE(v41))
    {
      v29 = 256;
    }

    else
    {
      v29 = 0;
    }

    v35 = v39;
    v36 = v40;
    v37 = v29 | v41;
    v38 = 1;
  }

  else
  {
    sub_24B2D3D74();
    type metadata accessor for FindMyUICore();
    v11 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    *&v35 = sub_24B2D45E4();
    *(&v35 + 1) = v13;
    *&v36 = v14 & 1;
    *(&v36 + 1) = v15;
    v37 = 0;
    v38 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9CA8);
  sub_24B0A35CC();
  sub_24B2D3ED4();

  result = *&v39;
  v31 = v40;
  v32 = v41;
  v33 = v42;
  *a2 = v39;
  *(a2 + 16) = v31;
  *(a2 + 32) = v32;
  *(a2 + 34) = v33;
  return result;
}

uint64_t sub_24B0A17F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C40);
  MEMORY[0x28223BE20](v33);
  v7 = &v32 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C48);
  MEMORY[0x28223BE20](v34);
  v9 = &v32 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C50);
  MEMORY[0x28223BE20](v36);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C58);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - v16;
  sub_24B2D5694();
  v35 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *(a1 + *(type metadata accessor for FullScreenLocationDetailView(0) + 20));
  if (v18)
  {
    v19 = *(v18 + 16);
    if (v19 == 1)
    {
      sub_24B0A1D98(v9);
      sub_24B008890(v9, v7, &qword_27EFC9C48);
      swift_storeEnumTagMultiPayload();
      sub_24B0A3378();
      sub_24B2D3ED4();
      sub_24AFF8258(v9, &qword_27EFC9C48);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A78);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_24B2DE430;
      v21 = MEMORY[0x277D83C10];
      *(v20 + 56) = MEMORY[0x277D83B88];
      *(v20 + 64) = v21;
      *(v20 + 32) = v19;
      if (qword_27EFC7600 != -1)
      {
        swift_once();
      }

      v22 = sub_24B2D1454();
      v23 = __swift_project_value_buffer(v22, qword_27EFE4478);
      v24 = *(v22 - 8);
      (*(v24 + 16))(v5, v23, v22);
      (*(v24 + 56))(v5, 0, 1, v22);
      v25 = sub_24B2D52D4();
      v27 = v26;

      sub_24AFF8258(v5, &qword_27EFC8A68);
      v38 = v25;
      v39 = v27;
      sub_24AFFE0A4();
      *v7 = sub_24B2D4604();
      *(v7 + 1) = v28;
      v7[16] = v29 & 1;
      *(v7 + 3) = v30;
      swift_storeEnumTagMultiPayload();
      sub_24B0A3378();
      sub_24B2D3ED4();
    }

    sub_24B008890(v11, v14, &qword_27EFC9C50);
    swift_storeEnumTagMultiPayload();
    sub_24B0A3428();
    sub_24B2D3ED4();
    sub_24AFF8258(v11, &qword_27EFC9C50);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24B0A3428();
    sub_24B2D3ED4();
  }

  sub_24B0391CC(v17, v37, &qword_27EFC9C60);
}

uint64_t sub_24B0A1D98@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for SessionLocation.Description(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for DetailsAppView.State(0);
  sub_24B008890(v1 + *(v13 + 20), v8, &qword_27EFC8A70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24AFF8258(v8, &qword_27EFC8A70);
    return (*(v3 + 56))(v18, 1, 1, v2);
  }

  else
  {
    sub_24B0A34B4(v8, v12, type metadata accessor for SessionLocation.Description);
    *v5 = sub_24B2D3CD4();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C88);
    sub_24B0A2058(v12, &v5[*(v15 + 44)]);
    v16 = v18;
    sub_24B0391CC(v5, v18, &qword_27EFC9C78);
    (*(v3 + 56))(v16, 0, 1, v2);
    return sub_24B0A5014(v12, type metadata accessor for SessionLocation.Description);
  }
}

uint64_t sub_24B0A2058@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = sub_24B2D24A4();
  v4 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for RelativeDateText();
  MEMORY[0x28223BE20](v72);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24B2D13C4();
  v8 = *(v61 - 8);
  v9 = MEMORY[0x28223BE20](v61);
  v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v55 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C90);
  MEMORY[0x28223BE20](v67);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8800);
  MEMORY[0x28223BE20](v14);
  v16 = (&v55 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9C98);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v70 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v73 = &v55 - v20;
  sub_24B2D5694();
  v71 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = a1[1];
  v74 = *a1;
  v75 = v21;
  sub_24AFFE0A4();

  v22 = sub_24B2D4604();
  v68 = v23;
  v69 = v24;
  v63 = v25;
  sub_24B2D3D74();
  v26 = sub_24B2D45E4();
  v64 = v27;
  v65 = v26;
  v62 = v28;
  v66 = v29;
  v30 = type metadata accessor for SessionLocation.Description(0);
  sub_24B008890(a1 + *(v30 + 20), v16, &qword_27EFC8800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *(v8 + 32);
    v56 = v22;
    v32 = v60;
    v33 = v16;
    v34 = v61;
    v31(v60, v33, v61);
    v35 = v57;
    (*(v8 + 16))(v57, v32, v34);
    v36 = v72;
    sub_24B2D2254();
    v37 = v58;
    sub_24B2D2494();
    sub_24B2D1364();
    (*(v4 + 8))(v37, v59);
    v38 = *(v8 + 8);
    v38(v35, v34);
    v7[v36[5]] = 0;
    v7[v36[7]] = 0;
    v39 = &v7[v36[8]];
    *v39 = 0;
    *(v39 + 1) = 0;
    sub_24B0A351C(v7, v13, type metadata accessor for RelativeDateText);
    swift_storeEnumTagMultiPayload();
    sub_24B0A3584(&qword_27EFC9AD0, type metadata accessor for RelativeDateText);
    v40 = v73;
    sub_24B2D3ED4();
    sub_24B0A5014(v7, type metadata accessor for RelativeDateText);
    v41 = v32;
    v22 = v56;
    v38(v41, v34);
  }

  else
  {
    v42 = v16[1];
    v74 = *v16;
    v75 = v42;
    *v13 = sub_24B2D4604();
    *(v13 + 1) = v43;
    v13[16] = v44 & 1;
    *(v13 + 3) = v45;
    swift_storeEnumTagMultiPayload();
    sub_24B0A3584(&qword_27EFC9AD0, type metadata accessor for RelativeDateText);
    v40 = v73;
    sub_24B2D3ED4();
  }

  v46 = v63 & 1;
  LOBYTE(v74) = v63 & 1;
  v47 = v70;
  sub_24B008890(v40, v70, &qword_27EFC9C98);
  v48 = v68;
  v49 = v69;
  *a2 = v22;
  *(a2 + 8) = v48;
  *(a2 + 16) = v46;
  v51 = v64;
  v50 = v65;
  *(a2 + 24) = v49;
  *(a2 + 32) = v50;
  *(a2 + 40) = v51;
  v52 = v62 & 1;
  *(a2 + 48) = v62 & 1;
  *(a2 + 56) = v66;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9CA0);
  sub_24B008890(v47, a2 + *(v53 + 64), &qword_27EFC9C98);
  sub_24B083C44(v22, v48, v46);

  sub_24B083C44(v50, v51, v52);

  sub_24AFF8258(v73, &qword_27EFC9C98);
  sub_24AFF8258(v47, &qword_27EFC9C98);
  sub_24B083C34(v50, v51, v52);

  sub_24B083C34(v22, v48, v74);
}

void sub_24B0A2788(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_24B0A27C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x282130010](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24B0A2854@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_24B2D45E4();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_24B0A292C@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_24B2D45E4();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_24B0A2A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = type metadata accessor for Friend();
  v8 = *(v43 - 8);
  v9 = MEMORY[0x28223BE20](v43);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v42 = sub_24B2D1494();
  v14 = *(v42 - 8);
  v15 = MEMORY[0x28223BE20](v42);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  if (a1)
  {

    v20 = *(a1 + 16);
    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      v38 = a2;
      v39 = a3;
      *&v45[0] = MEMORY[0x277D84F90];
      sub_24B007848(0, v20, 0);
      sub_24B2D5694();
      v21 = *&v45[0];
      v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v37 = a1;
      v23 = a1 + v22;
      v24 = *(v8 + 72);
      v40 = v14 + 32;
      v41 = v24;
      do
      {
        sub_24B0A351C(v23, v13, type metadata accessor for Friend);
        sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v25 = *&v13[*(v43 + 28)];
        sub_24B2D14A4();
        sub_24B0A5014(v13, type metadata accessor for Friend);

        *&v45[0] = v21;
        v27 = *(v21 + 16);
        v26 = *(v21 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_24B007848(v26 > 1, v27 + 1, 1);
          v21 = *&v45[0];
        }

        *(v21 + 16) = v27 + 1;
        (*(v14 + 32))(v21 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v27, v19, v42);
        v23 += v41;
        --v20;
      }

      while (v20);
      a2 = v38;
      a3 = v39;
    }

    sub_24B276FD0(v45);
    type metadata accessor for EmbeddedPeopleInteractiveMapViewModel();
    swift_allocObject();
    v44 = sub_24B273E54(0, a2, a3, v21, v45);

    sub_24B2D4CC4();
  }

  else
  {
    v28 = *(a4 + 16);
    if (v28)
    {
      v38 = a2;
      v39 = a3;
      *&v45[0] = MEMORY[0x277D84F90];
      sub_24B007848(0, v28, 0);
      sub_24B2D5694();
      v29 = *&v45[0];
      v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v37 = a4;
      v31 = a4 + v30;
      v32 = *(v8 + 72);
      v40 = v14 + 32;
      v41 = v32;
      do
      {
        sub_24B0A351C(v31, v11, type metadata accessor for Friend);
        sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v33 = *&v11[*(v43 + 28)];
        sub_24B2D14A4();
        sub_24B0A5014(v11, type metadata accessor for Friend);

        *&v45[0] = v29;
        v35 = *(v29 + 16);
        v34 = *(v29 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_24B007848(v34 > 1, v35 + 1, 1);
          v29 = *&v45[0];
        }

        *(v29 + 16) = v35 + 1;
        (*(v14 + 32))(v29 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v35, v17, v42);
        v31 += v41;
        --v28;
      }

      while (v28);

      a2 = v38;
      a3 = v39;
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    sub_24B276FD0(v45);
    type metadata accessor for EmbeddedPeopleInteractiveMapViewModel();
    swift_allocObject();
    v44 = sub_24B273E54(1, a2, a3, v29, v45);

    sub_24B2D4CC4();
  }

  return *&v45[0];
}

unint64_t sub_24B0A2FD0()
{
  result = qword_27EFC9BA8;
  if (!qword_27EFC9BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9B80);
    sub_24B0A3584(&qword_27EFC9BB0, type metadata accessor for InteractiveMap);
    sub_24B039184(&qword_27EFC9BB8, &qword_27EFC9BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9BA8);
  }

  return result;
}

unint64_t sub_24B0A30C8()
{
  result = qword_27EFC9BF0;
  if (!qword_27EFC9BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9BE8);
    sub_24B039184(&qword_27EFC9BF8, &qword_27EFC9C00);
    sub_24B039184(&qword_27EFC9C08, &qword_27EFC9318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9BF0);
  }

  return result;
}

uint64_t sub_24B0A31B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return sub_24B0A3204(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  else
  {
    sub_24B083C44(a1, a2, a3 & 1);
  }
}

uint64_t sub_24B0A3204(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return sub_24B0A3258(a1, a2, a3);
  }

  else
  {
    sub_24B083C44(a1, a2, a3 & 1);
  }
}

uint64_t sub_24B0A3258(uint64_t a1, uint64_t a2, char a3)
{
  sub_24B083C44(a1, a2, a3 & 1);
}

uint64_t sub_24B0A3294(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return sub_24B0A32E8(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  else
  {
    sub_24B083C34(a1, a2, a3 & 1);
  }
}

uint64_t sub_24B0A32E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return sub_24B0A333C(a1, a2, a3);
  }

  else
  {
    sub_24B083C34(a1, a2, a3 & 1);
  }
}

uint64_t sub_24B0A333C(uint64_t a1, uint64_t a2, char a3)
{
  sub_24B083C34(a1, a2, a3 & 1);
}

unint64_t sub_24B0A3378()
{
  result = qword_27EFC9C68;
  if (!qword_27EFC9C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9C48);
    sub_24B039184(&qword_27EFC9C70, &qword_27EFC9C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9C68);
  }

  return result;
}

unint64_t sub_24B0A3428()
{
  result = qword_27EFC9C80;
  if (!qword_27EFC9C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9C50);
    sub_24B0A3378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9C80);
  }

  return result;
}

uint64_t sub_24B0A34B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0A351C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0A3584(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B0A35CC()
{
  result = qword_27EFC9CB0;
  if (!qword_27EFC9CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9CA8);
    sub_24B09ACC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9CB0);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  v1 = type metadata accessor for FullScreenLocationDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  if (*(v0 + v4) >= 2uLL)
  {
  }

  v6 = type metadata accessor for DetailsAppView.State(0);
  v7 = v5 + v6[5];
  v8 = type metadata accessor for SessionLocation.Description(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = v7 + *(v8 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8800);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_24B2D13C4();
      (*(*(v10 - 8) + 8))(v9, v10);
    }

    else
    {
    }
  }

  v11 = v6[6];
  v12 = sub_24B2D24A4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v5 + v6[11];
  v15 = type metadata accessor for DirectionsState();
  if (!(*(*(v15 - 8) + 48))(v14, 2, v15))
  {
    (*(v13 + 8))(v14 + *(v15 + 24), v12);
  }

  v16 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_24B2D34F4();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

void sub_24B0A3B10()
{
  sub_24B0A3C58();
  if (v0 <= 0x3F)
  {
    sub_24B0A3CEC(319, &qword_27EFC78F8, MEMORY[0x277D08BF8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24B0A3F28(319, &qword_27EFC7900, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24B0A3CEC(319, &unk_27EFC7908, type metadata accessor for Friend, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B0A3C58()
{
  if (!qword_27EFC9CE8)
  {
    type metadata accessor for CompositeAppViewModel();
    sub_24B0A3584(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel);
    v0 = sub_24B2D33C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC9CE8);
    }
  }
}

void sub_24B0A3CEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24B0A3D50(uint64_t *a1, int a2)
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

uint64_t sub_24B0A3D98(uint64_t result, int a2, int a3)
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

void sub_24B0A3E0C()
{
  type metadata accessor for LocateAction();
  if (v0 <= 0x3F)
  {
    sub_24B0A3F28(319, &qword_27EFC98D8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_24B0A3CEC(319, &qword_27EFC9B78, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B0A3F28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24B0A3FCC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFD370;

  return sub_24B05F4DC(a1, a2);
}

uint64_t objectdestroy_47Tm()
{
  v1 = type metadata accessor for FullScreenLocationDetailViewStandalone(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_24B090790();

  v5 = *(v1 + 24);
  v6 = sub_24B2D1704();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v4 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_24B0A4200(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FullScreenLocationDetailViewStandalone(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24B0A4274()
{
  result = qword_27EFC9D40;
  if (!qword_27EFC9D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D20);
    sub_24B0A42F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9D40);
  }

  return result;
}

unint64_t sub_24B0A42F8()
{
  result = qword_27EFC9D48;
  if (!qword_27EFC9D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D50);
    sub_24B0A4384();
    sub_24B0A4960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9D48);
  }

  return result;
}

unint64_t sub_24B0A4384()
{
  result = qword_27EFC9D58;
  if (!qword_27EFC9D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D60);
    sub_24B0A4410();
    sub_24B0A46D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9D58);
  }

  return result;
}

unint64_t sub_24B0A4410()
{
  result = qword_27EFC9D68;
  if (!qword_27EFC9D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D78);
    sub_24B0A4510();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D98);
    sub_24B0A45F4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9D68);
  }

  return result;
}

unint64_t sub_24B0A4510()
{
  result = qword_27EFC9D80;
  if (!qword_27EFC9D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D78);
    sub_24B039184(&qword_27EFC9D88, &qword_27EFC9D90);
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9D80);
  }

  return result;
}

unint64_t sub_24B0A45F4()
{
  result = qword_27EFC9DA0;
  if (!qword_27EFC9DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D98);
    sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9DA0);
  }

  return result;
}

unint64_t sub_24B0A46D8()
{
  result = qword_27EFC9DA8;
  if (!qword_27EFC9DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9DB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D98);
    sub_24B0A45F4();
    swift_getOpaqueTypeConformance2();
    sub_24B0A47A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9DA8);
  }

  return result;
}

unint64_t sub_24B0A47A0()
{
  result = qword_27EFC9DB8;
  if (!qword_27EFC9DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9DC0);
    sub_24B0A482C();
    sub_24B0A490C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9DB8);
  }

  return result;
}

unint64_t sub_24B0A482C()
{
  result = qword_27EFC9DC8;
  if (!qword_27EFC9DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9DD0);
    sub_24B0A48B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9DC8);
  }

  return result;
}

unint64_t sub_24B0A48B8()
{
  result = qword_27EFC9DD8;
  if (!qword_27EFC9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9DD8);
  }

  return result;
}

unint64_t sub_24B0A490C()
{
  result = qword_27EFC9DE0;
  if (!qword_27EFC9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9DE0);
  }

  return result;
}

unint64_t sub_24B0A4960()
{
  result = qword_27EFC9DE8;
  if (!qword_27EFC9DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9DF0);
    sub_24B0A49EC();
    sub_24B0A4B5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9DE8);
  }

  return result;
}

unint64_t sub_24B0A49EC()
{
  result = qword_27EFC9DF8;
  if (!qword_27EFC9DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9E00);
    sub_24B0A47A0();
    sub_24B0A4A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9DF8);
  }

  return result;
}

unint64_t sub_24B0A4A78()
{
  result = qword_27EFC9E08;
  if (!qword_27EFC9E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9E10);
    sub_24B039184(&qword_27EFC9E18, &qword_27EFC9E20);
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9E08);
  }

  return result;
}

unint64_t sub_24B0A4B5C()
{
  result = qword_27EFC9E28;
  if (!qword_27EFC9E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9E30);
    sub_24B039184(&qword_27EFC9D88, &qword_27EFC9D90);
    sub_24B039184(&qword_27EFC9E38, &qword_27EFC9E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9E28);
  }

  return result;
}

unint64_t sub_24B0A4C40()
{
  result = qword_27EFC9E48;
  if (!qword_27EFC9E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D20);
    sub_24B0A4274();
    sub_24B076874();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8C30, &unk_27EFC93C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9E48);
  }

  return result;
}

unint64_t sub_24B0A4D50()
{
  result = qword_27EFC9E60;
  if (!qword_27EFC9E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D38);
    sub_24B0A4E08();
    sub_24B039184(&qword_27EFC9E90, &qword_27EFC9E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9E60);
  }

  return result;
}

unint64_t sub_24B0A4E08()
{
  result = qword_27EFC9E68;
  if (!qword_27EFC9E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9E58);
    sub_24B0A4EC0();
    sub_24B039184(&qword_27EFC9E80, &qword_27EFC9E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9E68);
  }

  return result;
}

unint64_t sub_24B0A4EC0()
{
  result = qword_27EFC9E70;
  if (!qword_27EFC9E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8AD0);
    sub_24B0A4C40();
    sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC9E78, &qword_27EFC9E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9E70);
  }

  return result;
}

uint64_t sub_24B0A5014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B0A5074()
{
  v2 = *(type metadata accessor for FullScreenLocationDetailViewActionsModule(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFDE44;

  return sub_24B09DD40(v0 + v3);
}

uint64_t objectdestroy_60Tm()
{
  v1 = type metadata accessor for FullScreenLocationDetailViewActionsModule(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4 + *(v1 + 20);
  v6 = type metadata accessor for DirectionsState();
  if (!(*(*(v6 - 8) + 48))(v5, 2, v6))
  {
    v7 = *(v6 + 24);
    v8 = sub_24B2D24A4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24B2D34F4();
    (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_24B0A5348()
{
  v2 = *(type metadata accessor for FullScreenLocationDetailViewActionsModule(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFDE44;

  return sub_24B09E108(v0 + v3);
}

uint64_t sub_24B0A5414()
{
  v2 = *(type metadata accessor for FullScreenLocationDetailViewActionsModule(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFDE44;

  return sub_24B09E21C(v0 + v3);
}

uint64_t sub_24B0A54E0()
{
  v2 = *(type metadata accessor for FullScreenLocationDetailViewActionsModule(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFDE44;

  return sub_24B09E8F8(v0 + v3);
}

uint64_t sub_24B0A55AC(uint64_t a1)
{
  v4 = *(type metadata accessor for FullScreenLocationDetailViewActionsModule(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AFFDE44;

  return sub_24B09E524(a1, v1 + v5);
}

unint64_t sub_24B0A5684()
{
  result = qword_27EFC9EF0;
  if (!qword_27EFC9EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D18);
    sub_24B0A5710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9EF0);
  }

  return result;
}

unint64_t sub_24B0A5710()
{
  result = qword_27EFC9EF8;
  if (!qword_27EFC9EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D10);
    sub_24B0A3584(&qword_27EFC96C8, type metadata accessor for FullScreenLocationDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9EF8);
  }

  return result;
}

uint64_t sub_24B0A57CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC93D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  if (qword_27EFC75D8 != -1)
  {
    swift_once();
  }

  v7 = sub_24B2D5004();
  v8 = __swift_project_value_buffer(v7, qword_27EFC8158);
  (*(*(v7 - 8) + 16))(&v6[*(v4 + 52)], v8, v7);
  v9 = sub_24B2D3964();
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  *&v6[*(v4 + 56)] = 256;
  sub_24B2D4AC4();
  v10 = sub_24B2D4B44();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC93D8);
  a2[3] = v11;
  a2[4] = sub_24B086D18();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  sub_24B008890(v6, boxed_opaque_existential_0, &qword_27EFC93D0);
  v13 = boxed_opaque_existential_0 + *(v11 + 36);
  *v13 = v10;
  *(v13 + 8) = xmmword_24B2E3B50;
  *(v13 + 3) = 0x4008000000000000;
  return sub_24AFF8258(v6, &qword_27EFC93D0);
}

uint64_t sub_24B0A59C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a1;
  v31 = a2;
  v2 = sub_24B2D4A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9F00);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - v6;
  if (qword_27EFC75D8 != -1)
  {
    swift_once();
  }

  v8 = sub_24B2D5004();
  v9 = __swift_project_value_buffer(v8, qword_27EFC8158);
  (*(*(v8 - 8) + 16))(v7, v9, v8);
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9F08) + 56)] = 256;
  v10 = *MEMORY[0x277CE0EE0];
  v11 = *(v3 + 104);
  v11(v5, v10, v2);
  v12 = sub_24B2D4B74();
  v13 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9F10) + 36)];
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9908) + 36);
  v15 = *MEMORY[0x277CE13B8];
  v16 = sub_24B2D50F4();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = v12;
  LOBYTE(v12) = sub_24B2D42F4();
  *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9F18) + 36)) = v12;
  v11(v5, v10, v2);
  sub_24B2D4B74();
  v17 = sub_24B2D4B44();

  v18 = sub_24B2D42F4();
  v19 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9F20) + 36)];
  *v19 = v17;
  v19[8] = v18;
  v20 = &v7[*(v29 + 36)];
  v21 = sub_24B2D3964();
  (*(*(v21 - 8) + 16))(v20, v30, v21);
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9F28) + 36)] = 256;
  sub_24B2D4AC4();
  v22 = sub_24B2D4B44();

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9F30);
  v24 = v31;
  v31[3] = v23;
  v24[4] = sub_24B0A622C();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  sub_24B008890(v7, boxed_opaque_existential_0, &qword_27EFC9F00);
  v26 = boxed_opaque_existential_0 + *(v23 + 36);
  *v26 = v22;
  *(v26 + 8) = xmmword_24B2E3B50;
  *(v26 + 3) = 0x4008000000000000;
  return sub_24AFF8258(v7, &qword_27EFC9F00);
}

uint64_t sub_24B0A5DF8@<X0>(void *a1@<X8>)
{
  *a1 = 0x402C000000000000;
  v2 = type metadata accessor for QuickSendActionsModule.Style(0);
  v3 = (a1 + v2[5]);
  v4 = a1;
  v23 = a1;
  v5 = sub_24B2D4B04();
  v6 = MEMORY[0x277CE0F60];
  v3[3] = MEMORY[0x277CE0F78];
  v3[4] = v6;
  *v3 = v5;
  sub_24B2D4394();
  sub_24B2D43D4();
  v26 = sub_24B2D4424();

  v7 = type metadata accessor for CustomControlStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9390);
  sub_24B2D1A94();
  v8 = v7[8];
  v9 = *MEMORY[0x277CDF420];
  v24 = *MEMORY[0x277CDF420];
  v10 = sub_24B2D3364();
  v25 = *(*(v10 - 8) + 104);
  v25(v3 + v8, v9, v10);
  type metadata accessor for CustomControlStyle.BackgroundSize(0);
  swift_storeEnumTagMultiPayload();
  v11 = v7[6];
  v12 = *MEMORY[0x277CE13D8];
  v29 = *MEMORY[0x277CE13D8];
  v28 = sub_24B2D50F4();
  v27 = *(*(v28 - 8) + 104);
  v27(v3 + v11, v12, v28);
  v3[5] = v26;
  *(v3 + v7[9]) = 2;
  *(v3 + v7[10]) = 1;
  v13 = v3 + v7[11];
  *v13 = 0x4060800000000000;
  v13[8] = 0;
  v14 = (v4 + v2[6]);
  v15 = sub_24B2D4B04();
  v14[3] = MEMORY[0x277CE0F78];
  v14[4] = MEMORY[0x277CE0F60];
  *v14 = v15;
  sub_24B2D4394();
  sub_24B2D43D4();
  v16 = sub_24B2D4424();

  sub_24B2D1A94();
  v25(v14 + v7[8], v24, v10);
  swift_storeEnumTagMultiPayload();
  v27(v14 + v7[6], v29, v28);
  v14[5] = v16;
  *(v14 + v7[9]) = 2;
  *(v14 + v7[10]) = 1;
  v17 = v14 + v7[11];
  *v17 = 0x4060800000000000;
  v17[8] = 0;
  v18 = (v23 + v2[7]);
  v19 = sub_24B2D4B04();
  v18[3] = MEMORY[0x277CE0F78];
  v18[4] = MEMORY[0x277CE0F60];
  *v18 = v19;
  sub_24B2D4394();
  sub_24B2D43D4();
  v20 = sub_24B2D4424();

  sub_24B2D1A94();
  v25(v18 + v7[8], v24, v10);
  swift_storeEnumTagMultiPayload();
  result = (v27)(v18 + v7[6], v29, v28);
  v18[5] = v20;
  *(v18 + v7[9]) = 2;
  *(v18 + v7[10]) = 1;
  v22 = v18 + v7[11];
  *v22 = 0x4060800000000000;
  v22[8] = 0;
  return result;
}

unint64_t sub_24B0A622C()
{
  result = qword_27EFC9F38;
  if (!qword_27EFC9F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9F30);
    sub_24B0A62B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9F38);
  }

  return result;
}

unint64_t sub_24B0A62B8()
{
  result = qword_27EFC9F40;
  if (!qword_27EFC9F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9F00);
    sub_24B0A6370();
    sub_24B039184(&qword_27EFC9F78, &qword_27EFC9F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9F40);
  }

  return result;
}

unint64_t sub_24B0A6370()
{
  result = qword_27EFC9F48;
  if (!qword_27EFC9F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9F20);
    sub_24B0A6428();
    sub_24B039184(&qword_27EFC9F68, &qword_27EFC9F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9F48);
  }

  return result;
}

unint64_t sub_24B0A6428()
{
  result = qword_27EFC9F50;
  if (!qword_27EFC9F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9F10);
    sub_24B039184(&qword_27EFC9F58, &qword_27EFC9F08);
    sub_24B039184(&qword_27EFC9F60, &qword_27EFC9F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9F50);
  }

  return result;
}

uint64_t sub_24B0A6534()
{
  result = type metadata accessor for CustomControlStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B0A6600()
{
  result = sub_24B07A804();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for QuickSendActionsModule.Style(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B0A66C4@<X0>(uint64_t a1@<X8>)
{
  v110 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9FA0);
  MEMORY[0x28223BE20](v2);
  v107 = &v85 - v3;
  v100 = type metadata accessor for CustomMenuStyle(0);
  MEMORY[0x28223BE20](v100);
  v93 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for QuickSendActionsModule(0);
  v89 = *(v92 - 8);
  v5 = *(v89 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9E20);
  MEMORY[0x28223BE20](v101);
  v90 = &v85 - v6;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9FA8);
  v95 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v85 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9FB0);
  MEMORY[0x28223BE20](v96);
  v97 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9FB8);
  v103 = *(v9 - 8);
  v104 = v9;
  MEMORY[0x28223BE20](v9);
  v98 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9FC0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v105 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9FC8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v102 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v108 = &v85 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9FD0);
  MEMORY[0x28223BE20](v19);
  v21 = &v85 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9FD8);
  MEMORY[0x28223BE20](v22);
  v24 = &v85 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9FE0);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v85 - v30;
  v32 = *v1;
  v111 = v2;
  v109 = v22;
  if (v32 == 1)
  {
    v33 = &v85 - v30;
    v86 = &v85 - v30;
    sub_24B0A7544(v31);
    v34 = *(v26 + 16);
    v34(v29, v33, v25);
    *v24 = 0;
    v24[8] = 1;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA008);
    v34(&v24[*(v35 + 48)], v29, v25);
    v36 = &v24[*(v35 + 64)];
    *v36 = 0;
    v36[8] = 1;
    v37 = *(v26 + 8);
    v37(v29, v25);
    sub_24B008890(v24, v21, &qword_27EFC9FD8);
    swift_storeEnumTagMultiPayload();
    sub_24B039184(&qword_27EFC9FF0, &qword_27EFC9FD8);
    sub_24B039184(&qword_27EFC9FF8, &qword_27EFC9FA0);
    sub_24B2D3ED4();
    sub_24AFF8258(v24, &qword_27EFC9FD8);
    return (v37)(v86, v25);
  }

  else
  {
    v88 = v19;
    v87 = v21;
    v39 = v1[1] == 1;
    v85 = v25;
    if (v39)
    {
      v40 = &v85 - v30;
      sub_24B0A78B4(v31);
      v43 = v26;
      v41 = v108;
      v42 = v40;
      (*(v26 + 32))(v108, v40, v25);
      (*(v26 + 56))(v41, 0, 1, v25);
    }

    else
    {
      v42 = &v85 - v30;
      v43 = v26;
      (*(v26 + 56))(v108, 1, 1, v25);
    }

    if (v1[2] == 1)
    {
      if (v1[3] == 1)
      {
        v44 = v42;
        sub_24B0A7C28(v42);
        v45 = v85;
        (*(v43 + 16))(v97, v42, v85);
        swift_storeEnumTagMultiPayload();
        v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D90);
        v47 = type metadata accessor for CustomButtonStyle(255);
        v48 = sub_24B039184(&qword_27EFC9D88, &qword_27EFC9D90);
        v49 = sub_24B0A8EB0(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
        v112 = v46;
        v113 = v47;
        v114 = v48;
        v115 = v49;
        swift_getOpaqueTypeConformance2();
        v50 = sub_24B039184(&qword_27EFC9E18, &qword_27EFC9E20);
        v51 = sub_24B0A8EB0(&qword_27EFCA000, type metadata accessor for CustomMenuStyle);
        v112 = v101;
        v113 = v100;
        v114 = v50;
        v115 = v51;
        swift_getOpaqueTypeConformance2();
        v52 = v98;
        sub_24B2D3ED4();
        (*(v43 + 8))(v44, v45);
      }

      else
      {
        v56 = v91;
        sub_24B0A8E48(v1, v91, type metadata accessor for QuickSendActionsModule);
        v57 = (*(v89 + 80) + 16) & ~*(v89 + 80);
        v58 = swift_allocObject();
        sub_24B0A895C(v56, v58 + v57);
        v59 = sub_24B2D3D74();
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v66 = v90;
        sub_24B2D3E64();
        *v66 = &unk_24B2E3C88;
        *(v66 + 8) = v58;
        *(v66 + 16) = v59;
        *(v66 + 24) = v61;
        *(v66 + 32) = v63 & 1;
        *(v66 + 40) = v65;
        v67 = &v1[*(v92 + 40)];
        v68 = type metadata accessor for QuickSendActionsModule.Style(0);
        v69 = v93;
        sub_24B0A8E48(&v67[*(v68 + 28)], v93, type metadata accessor for CustomControlStyle);
        v92 = sub_24B039184(&qword_27EFC9E18, &qword_27EFC9E20);
        v70 = sub_24B0A8EB0(&qword_27EFCA000, type metadata accessor for CustomMenuStyle);
        v71 = v94;
        v72 = v100;
        sub_24B2D4A34();
        sub_24B0A8FE8(v69, type metadata accessor for CustomMenuStyle);
        sub_24AFF8258(v66, &qword_27EFC9E20);
        v73 = v95;
        v74 = v99;
        (*(v95 + 16))(v97, v71, v99);
        swift_storeEnumTagMultiPayload();
        v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D90);
        v76 = type metadata accessor for CustomButtonStyle(255);
        v77 = sub_24B039184(&qword_27EFC9D88, &qword_27EFC9D90);
        v78 = sub_24B0A8EB0(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
        v112 = v75;
        v113 = v76;
        v114 = v77;
        v115 = v78;
        swift_getOpaqueTypeConformance2();
        v112 = v101;
        v113 = v72;
        v114 = v92;
        v115 = v70;
        swift_getOpaqueTypeConformance2();
        v52 = v98;
        sub_24B2D3ED4();
        (*(v73 + 8))(v71, v74);
      }

      v79 = v52;
      v55 = v106;
      sub_24AFDABE4(v79, v106);
      v53 = 0;
      v54 = v87;
    }

    else
    {
      v53 = 1;
      v54 = v87;
      v55 = v106;
    }

    (*(v103 + 56))(v55, v53, 1, v104);
    v80 = v108;
    v81 = v102;
    sub_24B008890(v108, v102, &qword_27EFC9FC8);
    v82 = v105;
    sub_24B008890(v55, v105, &qword_27EFC9FC0);
    v83 = v107;
    sub_24B008890(v81, v107, &qword_27EFC9FC8);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9FE8);
    sub_24B008890(v82, v83 + *(v84 + 48), &qword_27EFC9FC0);
    sub_24AFF8258(v82, &qword_27EFC9FC0);
    sub_24AFF8258(v81, &qword_27EFC9FC8);
    sub_24B008890(v83, v54, &qword_27EFC9FA0);
    swift_storeEnumTagMultiPayload();
    sub_24B039184(&qword_27EFC9FF0, &qword_27EFC9FD8);
    sub_24B039184(&qword_27EFC9FF8, &qword_27EFC9FA0);
    sub_24B2D3ED4();
    sub_24AFF8258(v83, &qword_27EFC9FA0);
    sub_24AFF8258(v55, &qword_27EFC9FC0);
    return sub_24AFF8258(v80, &qword_27EFC9FC8);
  }
}

uint64_t sub_24B0A7544@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for CustomButtonStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for QuickSendActionsModule(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D90);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = sub_24B2D32E4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_24B0A8E48(v1, v9, type metadata accessor for QuickSendActionsModule);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_24B0A895C(v9, v15 + v14);
  v16 = &v12[v10[12]];
  v26 = 0;
  sub_24B2D4CC4();
  v17 = v28;
  *v16 = v27;
  *(v16 + 1) = v17;
  v18 = &v12[v10[13]];
  v26 = 0;
  sub_24B2D4CC4();
  v19 = v28;
  *v18 = v27;
  *(v18 + 1) = v19;
  v20 = &v12[v10[9]];
  *v20 = &unk_24B2E3CA8;
  *(v20 + 1) = v15;
  v21 = &v12[v10[10]];
  *v21 = sub_24B0A8FC4;
  v21[1] = 0;
  v12[v10[11]] = 0;
  v22 = *(v6 + 48);
  v23 = type metadata accessor for QuickSendActionsModule.Style(0);
  sub_24B0A8E48(v1 + *(v23 + 24) + v22, v4, type metadata accessor for CustomControlStyle);
  sub_24B039184(&qword_27EFC9D88, &qword_27EFC9D90);
  sub_24B0A8EB0(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
  sub_24B2D46D4();
  sub_24B0A8FE8(v4, type metadata accessor for CustomButtonStyle);
  return sub_24AFF8258(v12, &qword_27EFC9D90);
}

uint64_t sub_24B0A78B4@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for CustomButtonStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for QuickSendActionsModule(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D90);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = sub_24B2D32E4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_24B0A8E48(v1, v9, type metadata accessor for QuickSendActionsModule);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_24B0A895C(v9, v15 + v14);
  v16 = &v12[v10[12]];
  v26 = 0;
  sub_24B2D4CC4();
  v17 = v28;
  *v16 = v27;
  *(v16 + 1) = v17;
  v18 = &v12[v10[13]];
  v26 = 0;
  sub_24B2D4CC4();
  v19 = v28;
  *v18 = v27;
  *(v18 + 1) = v19;
  v20 = &v12[v10[9]];
  *v20 = &unk_24B2E3CB8;
  *(v20 + 1) = v15;
  v21 = &v12[v10[10]];
  *v21 = sub_24B0A9114;
  v21[1] = 0;
  v12[v10[11]] = 1;
  v22 = *(v6 + 48);
  v23 = type metadata accessor for QuickSendActionsModule.Style(0);
  sub_24B0A8E48(v1 + *(v23 + 20) + v22, v4, type metadata accessor for CustomControlStyle);
  sub_24B039184(&qword_27EFC9D88, &qword_27EFC9D90);
  sub_24B0A8EB0(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
  sub_24B2D46D4();
  sub_24B0A8FE8(v4, type metadata accessor for CustomButtonStyle);
  return sub_24AFF8258(v12, &qword_27EFC9D90);
}

uint64_t sub_24B0A7C28@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for CustomButtonStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for QuickSendActionsModule(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D90);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = sub_24B2D32E4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_24B0A8E48(v1, v9, type metadata accessor for QuickSendActionsModule);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_24B0A895C(v9, v15 + v14);
  v16 = &v12[v10[12]];
  v26 = 0;
  sub_24B2D4CC4();
  v17 = v28;
  *v16 = v27;
  *(v16 + 1) = v17;
  v18 = &v12[v10[13]];
  v26 = 0;
  sub_24B2D4CC4();
  v19 = v28;
  *v18 = v27;
  *(v18 + 1) = v19;
  v20 = &v12[v10[9]];
  *v20 = &unk_24B2E3CC8;
  *(v20 + 1) = v15;
  v21 = &v12[v10[10]];
  *v21 = sub_24B0A92CC;
  v21[1] = 0;
  v12[v10[11]] = 1;
  v22 = *(v6 + 48);
  v23 = type metadata accessor for QuickSendActionsModule.Style(0);
  sub_24B0A8E48(v1 + *(v23 + 28) + v22, v4, type metadata accessor for CustomControlStyle);
  sub_24B039184(&qword_27EFC9D88, &qword_27EFC9D90);
  sub_24B0A8EB0(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
  sub_24B2D46D4();
  sub_24B0A8FE8(v4, type metadata accessor for CustomButtonStyle);
  return sub_24AFF8258(v12, &qword_27EFC9D90);
}

uint64_t sub_24B0A7F9C(uint64_t a1)
{
  v1[2] = a1;
  sub_24B2D5694();
  v1[3] = sub_24B2D5684();
  v3 = sub_24B2D5604();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_24B0A8034, v3, v2);
}

uint64_t sub_24B0A8034()
{
  v3 = (*(*(v0 + 16) + 24) + **(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_24B0A8120;

  return v3();
}

uint64_t sub_24B0A8120()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24B040EAC, v3, v2);
}

uint64_t sub_24B0A8240(uint64_t a1)
{
  v1[2] = a1;
  sub_24B2D5694();
  v1[3] = sub_24B2D5684();
  v3 = sub_24B2D5604();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_24B0A82D8, v3, v2);
}

uint64_t sub_24B0A82D8()
{
  v3 = (*(*(v0 + 16) + 104) + **(*(v0 + 16) + 104));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_24B0A83CC;

  return v3(2, 0);
}

uint64_t sub_24B0A83CC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24B02CE40, v3, v2);
}

uint64_t sub_24B0A84EC(uint64_t a1)
{
  v1[2] = a1;
  sub_24B2D5694();
  v1[3] = sub_24B2D5684();
  v3 = sub_24B2D5604();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_24B0A8584, v3, v2);
}

uint64_t sub_24B0A8584()
{
  v1 = *(v0 + 16);
  v2 = (*(v1 + 8))();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v17 = (*(v1 + 120) + **(v1 + 120));
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_24B0A8120;
  v10.n128_f64[0] = v2;
  v11.n128_u64[0] = v4;
  v12.n128_f64[0] = v2;
  v13.n128_u64[0] = v4;
  v14.n128_u64[0] = v6;
  v15.n128_u64[0] = v8;

  return v17(v10, v11, v12, v13, v14, v15);
}

uint64_t sub_24B0A86BC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_24B2D5694();
  v2[4] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_24B0A8754, v4, v3);
}

uint64_t sub_24B0A8754()
{
  v4 = (*(v0[3] + 104) + **(v0[3] + 104));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_24B088010;
  v2 = v0[2];

  return v4(v2, 0);
}

uint64_t sub_24B0A884C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = *(v2 + *(MEMORY[0x28223BE20](a1 - 8) + 48));
  sub_24B0A8E48(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuickSendActionsModule);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  result = sub_24B0A895C(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = sub_24B0A89C0;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_24B0A895C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickSendActionsModule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for QuickSendActionsModule(0) - 8);
  v2 = *(*v1 + 80);
  v22 = *(*v1 + 64);
  v23 = (v2 + 16) & ~v2;

  v3 = v0 + v23 + v1[12];
  v4 = type metadata accessor for QuickSendActionsModule.Style(0);
  v5 = v3 + v4[5];
  __swift_destroy_boxed_opaque_existential_0(v5);

  v6 = type metadata accessor for CustomControlStyle(0);
  v7 = v6[6];
  v8 = sub_24B2D50F4();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v10 = v5 + v6[7];
  if (*(v10 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  v11 = v6[8];
  type metadata accessor for CustomControlStyle.BackgroundSize(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24B2D3364();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  v13 = v3 + v4[6];
  __swift_destroy_boxed_opaque_existential_0(v13);

  v9(v13 + v6[6], v8);
  v14 = v13 + v6[7];
  if (*(v14 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  v15 = v6[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_24B2D3364();
    (*(*(v16 - 8) + 8))(v13 + v15, v16);
  }

  v17 = v3 + v4[7];
  __swift_destroy_boxed_opaque_existential_0(v17);

  v9(v17 + v6[6], v8);
  v18 = v17 + v6[7];
  if (*(v18 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  v19 = v6[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_24B2D3364();
    (*(*(v20 - 8) + 8))(v17 + v19, v20);
  }

  return MEMORY[0x2821FE8E8](v0, v23 + v22, v2 | 7);
}

uint64_t sub_24B0A8D70(uint64_t a1)
{
  v4 = *(type metadata accessor for QuickSendActionsModule(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AFFDE44;

  return sub_24B0A86BC(a1, v1 + v5);
}

uint64_t sub_24B0A8E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0A8EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B0A8EF8()
{
  v2 = *(type metadata accessor for QuickSendActionsModule(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFDE44;

  return sub_24B0A84EC(v0 + v3);
}

uint64_t sub_24B0A8FE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B0A9048()
{
  v2 = *(type metadata accessor for QuickSendActionsModule(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFDE44;

  return sub_24B0A7F9C(v0 + v3);
}

uint64_t sub_24B0A9138@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_24B2D45E4();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_24B0A9200()
{
  v2 = *(type metadata accessor for QuickSendActionsModule(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFD370;

  return sub_24B0A8240(v0 + v3);
}

uint64_t sub_24B0A92CC@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_24B2D45E4();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

unint64_t sub_24B0A93BC()
{
  result = qword_27EFCA020;
  if (!qword_27EFCA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA020);
  }

  return result;
}

uint64_t type metadata accessor for QuickSendAppMapView()
{
  result = qword_27EFCA030;
  if (!qword_27EFCA030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B0A9484()
{
  sub_24B0A9580(319, &qword_27EFCA040, MEMORY[0x277CE42C8], MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_24B0A9580(319, &qword_27EFCA048, type metadata accessor for MKCoordinateRegion, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_24B0A95E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B0A9580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24B0A95E4()
{
  if (!qword_27EFCA050)
  {
    v0 = sub_24B2D4E94();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCA050);
    }
  }
}

uint64_t sub_24B0A9650@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for QuickSendAppMapView();
  v3 = v2 - 8;
  v71 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v80 = v4;
  v75 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D2E84();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v72 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D2E24();
  MEMORY[0x28223BE20](v7);
  v78 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA058);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA060);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v58 = &v53 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA068);
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = &v53 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA070);
  v67 = *(v17 - 8);
  v68 = v17;
  MEMORY[0x28223BE20](v17);
  v65 = &v53 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA078);
  v69 = *(v19 - 8);
  v70 = v19;
  MEMORY[0x28223BE20](v19);
  v79 = &v53 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);
  v61 = v14;
  sub_24B2D4CF4();
  sub_24B2D2D34();
  v21 = sub_24B2D2D44();
  v22 = *(*(v21 - 8) + 56);
  v60 = v11;
  v22(v11, 0, 1, v21);
  v23 = *(v3 + 32);
  v77 = v1;
  v24 = v1 + v23;
  v25 = *v24;
  v26 = *(v24 + 8);
  LODWORD(v24) = *(v24 + 16);
  v27 = v25;
  v81 = v25;
  v82 = v26;
  v28 = v26;
  v29 = v24;
  LOBYTE(v83) = v24;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA080);
  MEMORY[0x24C23B610](v85);
  if (LOBYTE(v85[0]) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0B0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_24B2DEAD0;
    sub_24B2D2E04();
    sub_24B2D2E14();
    v81 = v31;
  }

  else
  {
    v81 = MEMORY[0x277D84F90];
  }

  sub_24B0AABFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9820);
  sub_24B039184(&qword_27EFC9828, &qword_27EFC9820);
  sub_24B2D5B44();
  v57 = v27;
  v81 = v27;
  v82 = v28;
  v56 = v28;
  v55 = v29;
  LOBYTE(v83) = v29;
  v54 = v30;
  MEMORY[0x24C23B610](v85, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA088);
  v32 = sub_24B2D4E84();
  v85[0] = v81;
  v85[1] = v82;
  v86 = v83;
  MEMORY[0x28223BE20](v32);
  v33 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA090);
  sub_24B0AAC5C();
  sub_24B039184(&qword_27EFCA0A0, &qword_27EFCA090);
  v34 = v58;
  sub_24B2D2CB4();
  v35 = sub_24B039184(&qword_27EFCA0A8, &qword_27EFCA060);
  v36 = MEMORY[0x277CE1428];
  v37 = MEMORY[0x277CE1410];
  v38 = v59;
  v39 = v64;
  sub_24B2D4624();
  (*(v62 + 8))(v34, v39);
  v81 = v39;
  v82 = v36;
  v83 = v35;
  v84 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v65;
  v42 = v66;
  sub_24B2D4634();
  (*(v63 + 8))(v38, v42);
  v43 = v72;
  sub_24B2D2E74();
  v44 = v75;
  sub_24B0AACB0(v33, v75);
  v45 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v46 = swift_allocObject();
  sub_24B0AAD14(v44, v46 + v45);
  v81 = v42;
  v82 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v68;
  sub_24B2D4614();

  (*(v73 + 8))(v43, v74);
  (*(v67 + 8))(v41, v48);
  v81 = v57;
  v82 = v56;
  LOBYTE(v83) = v55;
  MEMORY[0x24C23B610](v85, v54);
  sub_24B0AACB0(v77, v44);
  v49 = swift_allocObject();
  sub_24B0AAD14(v44, v49 + v45);
  v81 = v48;
  v82 = v47;
  swift_getOpaqueTypeConformance2();
  sub_24B0A93BC();
  v50 = v70;
  v51 = v79;
  sub_24B2D49B4();

  return (*(v69 + 8))(v51, v50);
}

uint64_t sub_24B0AA140@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0C0);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0C8);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9898);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  sub_24B2D5694();
  v43 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3034();
  v21 = type metadata accessor for QuickSendAppMapView();
  v22 = (a1 + *(v21 + 24));
  v23 = *v22;
  v24 = v22[1];
  LOBYTE(v22) = *(v22 + 16);
  v48 = v23;
  v49 = v24;
  LOBYTE(v50) = v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA080);
  MEMORY[0x24C23B610](&v47, v25);
  v26 = a1;
  v27 = 1;
  if (v47 == 1)
  {
    v28 = (v26 + *(v21 + 20));
    v29 = v28[1];
    v48 = *v28;
    v49 = v29;
    v30 = *(v28 + 2);
    v50 = *(v28 + 1);
    v51 = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0B8);
    MEMORY[0x24C23B610](&v47, v31);
    v32 = v40;
    sub_24B2D3064();
    LOBYTE(v48) = 1;
    sub_24B039184(&qword_27EFCA0E0, &qword_27EFCA0C0);
    sub_24B0AAC5C();
    v33 = v42;
    sub_24B2D2FF4();
    (*(v41 + 8))(v32, v33);
    (*(v45 + 32))(v13, v7, v46);
    v27 = 0;
  }

  (*(v45 + 56))(v13, v27, 1, v46);
  v34 = *(v15 + 16);
  v34(v18, v20, v14);
  sub_24AFDAE40(v13, v11);
  v35 = v44;
  v34(v44, v18, v14);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0D8);
  sub_24AFDAE40(v11, &v35[*(v36 + 48)]);
  sub_24AFDAEB0(v13);
  v37 = *(v15 + 8);
  v37(v20, v14);
  sub_24AFDAEB0(v11);
  v37(v18, v14);
}

uint64_t sub_24B0AA644()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_24B0AA6D8()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D2E64();
  type metadata accessor for QuickSendAppMapView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0B8);
  sub_24B2D4E44();
}

uint64_t sub_24B0AA7EC(unsigned __int8 *a1, char *a2, uint64_t a3)
{
  v6 = sub_24B2D2DE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  v11 = *a2;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v10 && (v11 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);
    sub_24B2D4CD4();
    v13 = sub_24B2D2D64();
    v14 = (*(v7 + 8))(v9, v6);
    if (v13)
    {
      MEMORY[0x28223BE20](v14);
      *&v15[-16] = a3;
      sub_24B2D50E4();
      sub_24B2D35C4();
    }
  }
}

uint64_t sub_24B0AAA18()
{
  v0 = sub_24B2D2DE4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D2DC4();
  sub_24B2D2D54();
  v7 = *(v1 + 8);
  v7(v4, v0);
  (*(v1 + 16))(v4, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);
  sub_24B2D4CE4();
  v7(v6, v0);
}

unint64_t sub_24B0AABFC()
{
  result = qword_27EFC9818;
  if (!qword_27EFC9818)
  {
    sub_24B2D2E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9818);
  }

  return result;
}

unint64_t sub_24B0AAC5C()
{
  result = qword_27EFCA098;
  if (!qword_27EFCA098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA098);
  }

  return result;
}

uint64_t sub_24B0AACB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickSendAppMapView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B0AAD14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickSendAppMapView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B0AAD78()
{
  type metadata accessor for QuickSendAppMapView();

  return sub_24B0AA6D8();
}

uint64_t objectdestroyTm_6()
{
  v1 = *(type metadata accessor for QuickSendAppMapView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_24B2D2DE4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B0AAF1C(unsigned __int8 *a1, char *a2)
{
  v5 = *(type metadata accessor for QuickSendAppMapView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24B0AA7EC(a1, a2, v6);
}

uint64_t sub_24B0AAFB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC93D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  if (qword_27EFC75D8 != -1)
  {
    swift_once();
  }

  v7 = sub_24B2D5004();
  v8 = __swift_project_value_buffer(v7, qword_27EFC8158);
  (*(*(v7 - 8) + 16))(&v6[*(v4 + 52)], v8, v7);
  v9 = sub_24B2D3964();
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  *&v6[*(v4 + 56)] = 256;
  sub_24B2D4AC4();
  v10 = sub_24B2D4B44();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC93D8);
  a2[3] = v11;
  a2[4] = sub_24B086D18();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  sub_24B008890(v6, boxed_opaque_existential_0, &qword_27EFC93D0);
  v13 = boxed_opaque_existential_0 + *(v11 + 36);
  *v13 = v10;
  *(v13 + 8) = xmmword_24B2E27D0;
  *(v13 + 3) = 0x4034000000000000;
  return sub_24AFF8258(v6, &qword_27EFC93D0);
}

uint64_t sub_24B0AB1F8()
{
  result = type metadata accessor for CustomControlStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24B0AB2BC()
{
  type metadata accessor for QuickSendAppView.Style(319);
  if (v0 <= 0x3F)
  {
    sub_24B0AB370();
    if (v1 <= 0x3F)
    {
      sub_24B0AB3C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B0AB370()
{
  if (!qword_27EFCA108)
  {
    type metadata accessor for MKCoordinateRegion(255);
    v0 = sub_24B2D4D04();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCA108);
    }
  }
}

void sub_24B0AB3C8()
{
  if (!qword_27EFCA110)
  {
    v0 = sub_24B2D4D04();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCA110);
    }
  }
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for QuickSendAppViewState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for QuickSendAppViewState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24B0AB4F0@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for QuickSendAppView(0);
  v3 = v2 - 8;
  v63 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v64 = v4;
  v65 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D2DE4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v54 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA118);
  MEMORY[0x28223BE20](v60);
  v13 = &v54 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA120);
  MEMORY[0x28223BE20](v61);
  v62 = &v54 - v14;
  v15 = *(v3 + 36);
  v55 = v1;
  v16 = (v1 + v15);
  v17 = *(v16 + 4);
  v18 = v16[1];
  v71 = *v16;
  v72 = v18;
  v73 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA128);
  sub_24B2D4CF4();
  v58 = v67;
  v57 = v68;
  v59 = v69;
  v56 = v70;
  v19 = (v1 + *(v3 + 40));
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v71) = v20;
  *(&v71 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA130);
  sub_24B2D4CF4();
  v22 = v67;
  v23 = v68;
  v24 = v69;
  sub_24B2D2DC4();
  sub_24B2D2D54();
  v25 = *(v6 + 8);
  v25(v9, v5);
  (*(v6 + 16))(v9, v11, v5);
  sub_24B2D4CC4();
  v25(v11, v5);
  v26 = v55;
  v27 = type metadata accessor for QuickSendAppMapView();
  v28 = &v13[*(v27 + 20)];
  v29 = v57;
  *v28 = v58;
  *(v28 + 1) = v29;
  v30 = v56;
  *(v28 + 1) = v59;
  *(v28 + 2) = v30;
  v31 = &v13[*(v27 + 24)];
  *v31 = v22;
  *(v31 + 1) = v23;
  v31[16] = v24;
  v32 = sub_24B2D5054();
  v34 = v33;
  v35 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA138) + 36)];
  sub_24B0ABAAC(v26, v35);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA140) + 36));
  *v36 = v32;
  v36[1] = v34;
  v37 = sub_24B2D5044();
  v39 = v38;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = &v13[*(v60 + 36)];
  *v40 = sub_24B2D3CB4();
  *(v40 + 1) = 0;
  v40[16] = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA148);
  sub_24B0ABF70(v26, &v40[*(v41 + 44)]);

  v42 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA150) + 36)];
  *v42 = v37;
  v42[1] = v39;
  v43 = sub_24B2D3804();
  v44 = sub_24B2D42F4();
  v45 = sub_24B2D4334();
  sub_24B2D4334();
  if (sub_24B2D4334() != v44)
  {
    v45 = sub_24B2D4334();
  }

  v46 = v62;
  sub_24B0391CC(v13, v62, &qword_27EFCA118);
  v47 = v46 + *(v61 + 36);
  *v47 = v43;
  *(v47 + 8) = v45;
  v48 = v65;
  sub_24B0ADBD8(v26, v65, type metadata accessor for QuickSendAppView);
  v49 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v50 = swift_allocObject();
  sub_24B0AD548(v48, v50 + v49);
  v51 = v66;
  sub_24B0391CC(v46, v66, &qword_27EFCA120);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA158);
  v53 = (v51 + *(result + 36));
  *v53 = 0;
  v53[1] = 0;
  v53[2] = sub_24B0AD5AC;
  v53[3] = v50;
  return result;
}

uint64_t sub_24B0ABAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for QuickSendAppView(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v34[1] = v5;
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA208);
  MEMORY[0x28223BE20](v35);
  v8 = v34 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA210);
  MEMORY[0x28223BE20](v38);
  v37 = v34 - v9;
  sub_24B2D5694();
  v36 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a1 + *(v3 + 32);
  v11 = *v10;
  v12 = *(v10 + 8);
  LOBYTE(v41[0]) = v11;
  *(&v41[0] + 1) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA130);
  sub_24B2D4CD4();
  v13 = v40[0];
  v14 = *(a1 + 1);
  v15 = *(a1 + 2);
  v16 = *(a1 + 3);
  sub_24B0ADBD8(a1, v6, type metadata accessor for QuickSendAppView);
  v17 = *(v4 + 80);
  v18 = v6;
  v19 = (v17 + 16) & ~v17;
  v20 = swift_allocObject();
  sub_24B0AD548(v18, v20 + v19);
  v21 = *(a1 + 88);
  v22 = *(a1 + 120);
  v41[6] = *(a1 + 104);
  v41[7] = v22;
  v41[8] = *(a1 + 136);
  v23 = *(a1 + 24);
  v24 = *(a1 + 56);
  v41[2] = *(a1 + 40);
  v41[3] = v24;
  v41[4] = *(a1 + 72);
  v41[5] = v21;
  v41[0] = *(a1 + 8);
  v41[1] = v23;
  *v8 = v13;
  v8[1] = v14;
  v8[2] = v15;
  v8[3] = v16;
  *(v8 + 1) = sub_24B0ADC40;
  *(v8 + 2) = v20;
  *(v8 + 104) = *(a1 + 88);
  *(v8 + 120) = *(a1 + 104);
  *(v8 + 136) = *(a1 + 120);
  *(v8 + 152) = *(a1 + 136);
  *(v8 + 40) = *(a1 + 24);
  *(v8 + 56) = *(a1 + 40);
  *(v8 + 72) = *(a1 + 56);
  *(v8 + 88) = *(a1 + 72);
  *(v8 + 24) = *(a1 + 8);
  v25 = *(type metadata accessor for QuickSendActionsModule(0) + 40);
  sub_24B0A3A8C(v41, v40);
  sub_24B0A5DF8(&v8[v25]);
  *&v8[*(v35 + 36)] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B2DEAD0;
  v27 = sub_24B2D4314();
  *(inited + 32) = v27;
  v28 = sub_24B2D42E4();
  *(inited + 33) = v28;
  v29 = sub_24B2D4334();
  sub_24B2D4334();
  if (sub_24B2D4334() != v27)
  {
    v29 = sub_24B2D4334();
  }

  sub_24B2D4334();
  if (sub_24B2D4334() != v28)
  {
    v29 = sub_24B2D4334();
  }

  v30 = v37;
  sub_24B0391CC(v8, v37, &qword_27EFCA208);
  v31 = v39;
  v32 = v30 + *(v38 + 36);
  *v32 = v29;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  *(v32 + 40) = 1;
  sub_24B0391CC(v30, v31, &qword_27EFCA210);
}

double sub_24B0ABF00()
{
  type metadata accessor for QuickSendAppView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA128);
  sub_24B2D4CD4();
  return v1;
}

uint64_t sub_24B0ABF70@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a1;
  v48 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA160);
  MEMORY[0x28223BE20](v44);
  v3 = &v39 - v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA168);
  v46 = *(v47 - 8);
  v4 = MEMORY[0x28223BE20](v47);
  v55 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v39 - v6;
  v40 = sub_24B2D37F4();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA170);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA178);
  v41 = *(v42 - 8);
  v13 = MEMORY[0x28223BE20](v42);
  v53 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  sub_24B2D5694();
  v45 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B0AC71C(v12);
  sub_24B2D37D4();
  sub_24B0AD5C4();
  sub_24B0AD7A4();
  v49 = v16;
  sub_24B2D47B4();
  v17 = *(v7 + 8);
  v18 = v40;
  v17(v9, v40);
  sub_24AFF8258(v12, &qword_27EFCA170);
  LOBYTE(v59[0]) = 0;
  sub_24B2D4CC4();
  v50 = v65;
  v52 = v66;
  v51 = sub_24B2D4304();
  LOBYTE(v65) = 0;
  LOBYTE(v59[0]) = 1;
  sub_24B0AC71C(v3);
  *&v3[*(v44 + 36)] = 0;
  sub_24B2D37E4();
  sub_24B0AD7F8();
  v19 = v54;
  sub_24B2D47B4();
  v17(v9, v18);
  sub_24AFF8258(v3, &qword_27EFCA160);
  v20 = v41;
  v21 = *(v41 + 16);
  v22 = v53;
  v23 = v42;
  v21(v53, v49, v42);
  v24 = v46;
  v44 = *(v46 + 16);
  v25 = v47;
  (v44)(v55, v19, v47);
  v26 = v48;
  v21(v48, v22, v23);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA1C0);
  v28 = &v26[v27[12]];
  *v28 = 0;
  v28[8] = 1;
  v29 = &v26[v27[16]];
  v59[0] = sub_24B08402C;
  v59[1] = 0;
  LOBYTE(v60) = 0;
  *(&v60 + 1) = *v58;
  DWORD1(v60) = *&v58[3];
  BYTE8(v60) = v50;
  *(&v60 + 9) = *v57;
  HIDWORD(v60) = *&v57[3];
  *&v61 = v52;
  BYTE8(v61) = v51;
  HIDWORD(v61) = *&v56[3];
  *(&v61 + 9) = *v56;
  v63 = 0u;
  v62 = 0u;
  v64 = 1;
  v30 = v60;
  *v29 = sub_24B08402C;
  *(v29 + 1) = v30;
  v31 = v61;
  v32 = v62;
  v33 = v63;
  v29[80] = 1;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  *(v29 + 2) = v31;
  v34 = &v26[v27[20]];
  *v34 = 0;
  v34[8] = 1;
  v35 = v55;
  (v44)(&v26[v27[24]], v55, v25);
  sub_24B008890(v59, &v65, &qword_27EFCA1C8);
  v36 = *(v24 + 8);
  v36(v54, v25);
  v37 = *(v20 + 8);
  v37(v49, v23);
  v36(v35, v25);
  v65 = sub_24B08402C;
  v66 = 0;
  v67 = 0;
  *v68 = *v58;
  *&v68[3] = *&v58[3];
  v69 = v50;
  *v70 = *v57;
  *&v70[3] = *&v57[3];
  v71 = v52;
  v72 = v51;
  *v73 = *v56;
  *&v73[3] = *&v56[3];
  v74 = 0u;
  v75 = 0u;
  v76 = 1;
  sub_24AFF8258(&v65, &qword_27EFCA1C8);
  v37(v53, v23);
}

uint64_t sub_24B0AC71C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA1D0);
  v3 = MEMORY[0x28223BE20](v66);
  v65 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v62 = &v55 - v5;
  v70 = sub_24B2D3764();
  v74 = *(v70 - 8);
  v6 = MEMORY[0x28223BE20](v70);
  v69 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = &v55 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA190);
  MEMORY[0x28223BE20](v64);
  v63 = &v55 - v9;
  v73 = type metadata accessor for CustomButtonStyle(0);
  MEMORY[0x28223BE20](v73);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for QuickSendAppView.Style(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for QuickSendAppView(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA198);
  v67 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA188);
  v60 = *(v20 - 8);
  v61 = v20;
  MEMORY[0x28223BE20](v20);
  v72 = &v55 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA1D8);
  MEMORY[0x28223BE20](v22);
  if (*v2)
  {
    v26 = *(v24 + 56);
    v27 = v75;

    return v26(v27, 1, 1);
  }

  else
  {
    v29 = v2;
    v57 = &v55 - v25;
    v59 = v24;
    v58 = v23;
    sub_24B0ADBD8(v2, &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuickSendAppView);
    v30 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v31 = swift_allocObject();
    v32 = sub_24B0AD548(&v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
    MEMORY[0x28223BE20](v32);
    *(&v55 - 2) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA1E0);
    sub_24B0ADB20();
    sub_24B2D4D34();
    sub_24B0ADBD8(&v29[*(v15 + 24)], v14, type metadata accessor for QuickSendAppView.Style);
    v33 = *(v12 + 20);
    sub_24B0ADBD8(&v14[v33], v11, type metadata accessor for CustomControlStyle);
    v34 = sub_24B039184(&qword_27EFCA1A0, &qword_27EFCA198);
    v35 = sub_24B0ADF58(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
    v36 = v71;
    sub_24B2D46D4();
    sub_24B086AF8(v11, type metadata accessor for CustomButtonStyle);
    (*(v67 + 8))(v19, v36);
    sub_24B086AF8(&v14[v33], type metadata accessor for CustomControlStyle);
    v37 = *(v74 + 104);
    v38 = v68;
    v39 = v70;
    v37(v68, *MEMORY[0x277CDF9E8], v70);
    v40 = v69;
    v37(v69, *MEMORY[0x277CDF9A8], v39);
    sub_24B0ADF58(&qword_27EFCA200, MEMORY[0x277CDFA28]);
    result = sub_24B2D5294();
    if (result)
    {
      v67 = v35;
      v41 = v70;
      v42 = v74;
      v56 = v34;
      v43 = *(v74 + 32);
      v44 = v62;
      v43(v62, v38, v70);
      v45 = v66;
      v43((v44 + *(v66 + 48)), v40, v41);
      v46 = v65;
      sub_24B008890(v44, v65, &qword_27EFCA1D0);
      v47 = *(v45 + 48);
      v48 = v63;
      v43(v63, v46, v41);
      v49 = *(v42 + 8);
      v49(v46 + v47, v41);
      sub_24B0391CC(v44, v46, &qword_27EFCA1D0);
      v43((v48 + *(v64 + 36)), (v46 + *(v45 + 48)), v41);
      v49(v46, v41);
      v76 = v71;
      v77 = v73;
      v78 = v56;
      v79 = v67;
      swift_getOpaqueTypeConformance2();
      sub_24B039184(&qword_27EFCA1A8, &qword_27EFCA190);
      v50 = v57;
      v51 = v61;
      v52 = v72;
      sub_24B2D4774();
      sub_24AFF8258(v48, &qword_27EFCA190);
      (*(v60 + 8))(v52, v51);
      v53 = v75;
      v54 = v58;
      (*(v59 + 32))(v75, v50, v58);
      return (*(v59 + 56))(v53, 0, 1, v54);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24B0AD0A0()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for QuickSendAppView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA130);
  sub_24B2D4CE4();
}

uint64_t sub_24B0AD17C()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for QuickSendAppView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA130);
  sub_24B2D4CD4();
  sub_24B2D4CE4();
}

uint64_t sub_24B0AD294@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D5064();
  v4 = v3;
  sub_24B0AD3CC(v19);
  v5 = v19[0];
  v6 = v19[1];
  v7 = v19[2];
  v8 = v19[3];
  type metadata accessor for QuickSendAppView(0);
  v9 = sub_24B2D42F4();
  sub_24B2D32F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v11;
  *(a1 + 64) = v13;
  *(a1 + 72) = v15;
  *(a1 + 80) = v17;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_24B0AD3CC@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D4BE4();
  type metadata accessor for QuickSendAppView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA130);
  sub_24B2D4CD4();
  if (v7)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = sub_24B2D4BE4();
  sub_24B2D4CD4();
  if (v7)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t sub_24B0AD548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickSendAppView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B0AD5C4()
{
  result = qword_27EFCA180;
  if (!qword_27EFCA180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA198);
    type metadata accessor for CustomButtonStyle(255);
    sub_24B039184(&qword_27EFCA1A0, &qword_27EFCA198);
    sub_24B0ADF58(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCA1A8, &qword_27EFCA190);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA180);
  }

  return result;
}

unint64_t sub_24B0AD7A4()
{
  result = qword_27EFCA1B0;
  if (!qword_27EFCA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA1B0);
  }

  return result;
}

unint64_t sub_24B0AD7F8()
{
  result = qword_27EFCA1B8;
  if (!qword_27EFCA1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA160);
    sub_24B0AD5C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA1B8);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for QuickSendAppView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 24);
  v6 = v0 + v3 + v5 + *(type metadata accessor for QuickSendAppView.Style(0) + 20);
  __swift_destroy_boxed_opaque_existential_0(v6);

  v7 = type metadata accessor for CustomControlStyle(0);
  v8 = v7[6];
  v9 = sub_24B2D50F4();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = v6 + v7[7];
  if (*(v10 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  v11 = v7[8];
  type metadata accessor for CustomControlStyle.BackgroundSize(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24B2D3364();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B0ADAA4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for QuickSendAppView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24B0ADB20()
{
  result = qword_27EFCA1E8;
  if (!qword_27EFCA1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA1E0);
    sub_24B039184(&qword_27EFCA1F0, &qword_27EFCA1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA1E8);
  }

  return result;
}

uint64_t sub_24B0ADBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_24B0ADC40()
{
  type metadata accessor for QuickSendAppView(0);

  return sub_24B0ABF00();
}

unint64_t sub_24B0ADCA0()
{
  result = qword_27EFCA220;
  if (!qword_27EFCA220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA158);
    sub_24B0ADD2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA220);
  }

  return result;
}

unint64_t sub_24B0ADD2C()
{
  result = qword_27EFCA228;
  if (!qword_27EFCA228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA120);
    sub_24B0ADDB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA228);
  }

  return result;
}

unint64_t sub_24B0ADDB8()
{
  result = qword_27EFCA230;
  if (!qword_27EFCA230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA118);
    sub_24B0ADE70();
    sub_24B039184(&qword_27EFCA250, &qword_27EFCA150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA230);
  }

  return result;
}

unint64_t sub_24B0ADE70()
{
  result = qword_27EFCA238;
  if (!qword_27EFCA238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA138);
    sub_24B0ADF58(&qword_27EFCA240, type metadata accessor for QuickSendAppMapView);
    sub_24B039184(&qword_27EFCA248, &qword_27EFCA140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA238);
  }

  return result;
}

uint64_t sub_24B0ADF58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B0ADFA0@<X0>(_BYTE *a1@<X8>)
{
  v38 = sub_24B2D4A54();
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  v40 = type metadata accessor for RequestReceivedMessageView.Style(0);
  v5 = &a1[*(v40 + 20)];
  v6 = sub_24B2D4B04();
  v7 = MEMORY[0x277CE0F78];
  v8 = MEMORY[0x277CE0F60];
  v5[3] = MEMORY[0x277CE0F78];
  v5[4] = v8;
  v9 = v7;
  v10 = v8;
  *v5 = v6;
  sub_24B2D4394();
  sub_24B2D43D4();
  v33 = sub_24B2D4424();

  v36 = *MEMORY[0x277CE0EE0];
  v11 = *(v2 + 104);
  v37 = v2 + 104;
  v39 = v11;
  v11(v4);
  v12 = sub_24B2D4B74();
  v42 = v9;
  v43 = v10;
  v41 = v12;
  v13 = type metadata accessor for CustomControlStyle(0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D48);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9390);
  sub_24B2D1AA4();
  v14 = v13[8];
  v31 = *MEMORY[0x277CDF420];
  v15 = v31;
  v16 = sub_24B2D3364();
  v17 = *(v16 - 8);
  v30 = *(v17 + 104);
  v32 = v17 + 104;
  v30(v5 + v14, v15, v16);
  v29 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  swift_storeEnumTagMultiPayload();
  v18 = v13[6];
  v19 = *MEMORY[0x277CE13D8];
  v20 = sub_24B2D50F4();
  v21 = *(*(v20 - 8) + 104);
  v21(v5 + v18, v19, v20);
  v5[5] = v33;
  *(v5 + v13[9]) = 2;
  *(v5 + v13[10]) = 0;
  v22 = v5 + v13[11];
  *v22 = 0;
  v22[8] = 1;
  v23 = &a1[*(v40 + 24)];
  v24 = sub_24B2D4B04();
  v23[3] = MEMORY[0x277CE0F78];
  v23[4] = MEMORY[0x277CE0F60];
  *v23 = v24;
  sub_24B2D4394();
  sub_24B2D43D4();
  v25 = sub_24B2D4424();

  v39(v4, v36, v38);
  v26 = sub_24B2D4B74();
  v43 = MEMORY[0x277CE0F60];
  v42 = MEMORY[0x277CE0F78];
  v41 = v26;
  sub_24B2D1AA4();
  v30(v23 + v13[8], v31, v16);
  swift_storeEnumTagMultiPayload();
  result = (v21)(v23 + v13[6], v19, v20);
  v23[5] = v25;
  *(v23 + v13[9]) = 2;
  *(v23 + v13[10]) = 0;
  v28 = v23 + v13[11];
  *v28 = 0;
  v28[8] = 1;
  return result;
}

uint64_t sub_24B0AE3EC()
{
  result = type metadata accessor for CustomControlStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24B0AE4B0()
{
  sub_24B0A3F28(319, &qword_27EFC7900, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for RequestReceivedMessageView.Style(319);
    if (v1 <= 0x3F)
    {
      sub_24B0A3F28(319, &qword_27EFC98D8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24B07A804();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24B0AE5D0()
{
  result = qword_27EFCA278;
  if (!qword_27EFCA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA278);
  }

  return result;
}

uint64_t sub_24B0AE624()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + *(type metadata accessor for RequestReceivedMessageView(0) + 24));
  if (v1 == 3 || v2 || (v3 = v0[1]) == 0)
  {
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_24B2D5374();
    v15 = [v13 localizedStringForKey:v14 value:0 table:0];

    v11 = sub_24B2D5394();
  }

  else
  {
    v4 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A78);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_24B2DE430;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_24B075024();
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;
    type metadata accessor for FindMyUICore();
    v6 = swift_getObjCClassFromMetadata();
    v7 = objc_opt_self();

    v8 = [v7 bundleForClass_];
    v9 = sub_24B2D5374();
    v10 = [v8 localizedStringForKey:v9 value:0 table:0];

    sub_24B2D5394();
    v11 = sub_24B2D53A4();
  }

  return v11;
}

uint64_t sub_24B0AE974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A48);
  v3 = *(v57 - 1);
  MEMORY[0x28223BE20](v57);
  v53 = &v51 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA280);
  MEMORY[0x28223BE20](v69);
  v6 = &v51 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA288);
  MEMORY[0x28223BE20](v68);
  v8 = &v51 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA290);
  MEMORY[0x28223BE20](v59);
  v61 = &v51 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA298);
  MEMORY[0x28223BE20](v67);
  v62 = &v51 - v10;
  v58 = type metadata accessor for CustomMenuStyle(0);
  MEMORY[0x28223BE20](v58);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RequestReceivedMessageView(0);
  v54 = *(v13 - 8);
  v14 = *(v54 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9E20);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9FA8);
  v56 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v51 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA2A0);
  v65 = *(v20 - 8);
  v66 = v20;
  MEMORY[0x28223BE20](v20);
  v64 = &v51 - v21;
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      if (*(a1 + *(v13 + 24)))
      {
        (*(v3 + 56))(v6, 1, 1, v57);
      }

      else
      {
        v46 = v53;
        sub_24B0AF2F0(v53);
        v47 = v46;
        v48 = v57;
        (*(v3 + 32))(v6, v47, v57);
        (*(v3 + 56))(v6, 0, 1, v48);
      }

      v40 = v64;
      v44 = &qword_27EFCA280;
      sub_24B008890(v6, v8, &qword_27EFCA280);
      swift_storeEnumTagMultiPayload();
      sub_24B0AFD2C();
      sub_24B0AFE78();
      sub_24B2D3ED4();
      v45 = v6;
      goto LABEL_10;
    }

LABEL_5:
    swift_storeEnumTagMultiPayload();
    v41 = sub_24B039184(&qword_27EFC9E18, &qword_27EFC9E20);
    v42 = sub_24B0A8EB0(&qword_27EFCA000, type metadata accessor for CustomMenuStyle);
    v70 = v16;
    v71 = v58;
    v72 = v41;
    v73 = v42;
    swift_getOpaqueTypeConformance2();
    v43 = v62;
    sub_24B2D3ED4();
    v44 = &qword_27EFCA298;
    sub_24B008890(v43, v8, &qword_27EFCA298);
    swift_storeEnumTagMultiPayload();
    sub_24B0AFD2C();
    sub_24B0AFE78();
    v40 = v64;
    sub_24B2D3ED4();
    v45 = v43;
LABEL_10:
    sub_24AFF8258(v45, v44);
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_5;
  }

  v52 = a1;
  sub_24B0B0378(a1, &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RequestReceivedMessageView);
  v22 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v23 = swift_allocObject();
  sub_24B0AFC58(v15, v23 + v22);
  v24 = sub_24B2D3D74();
  v26 = v25;
  v28 = v27;
  v57 = v8;
  v30 = v29;
  sub_24B2D3E64();
  *v18 = &unk_24B2E4110;
  *(v18 + 1) = v23;
  *(v18 + 2) = v24;
  *(v18 + 3) = v26;
  v18[32] = v28 & 1;
  *(v18 + 5) = v30;
  v31 = v52 + *(v13 + 24);
  v32 = type metadata accessor for RequestReceivedMessageView.Style(0);
  sub_24B0B0378(v31 + *(v32 + 20), v12, type metadata accessor for CustomControlStyle);
  v33 = sub_24B039184(&qword_27EFC9E18, &qword_27EFC9E20);
  v34 = sub_24B0A8EB0(&qword_27EFCA000, type metadata accessor for CustomMenuStyle);
  v35 = v55;
  v36 = v58;
  sub_24B2D4A34();
  sub_24B0A8FE8(v12, type metadata accessor for CustomMenuStyle);
  sub_24AFF8258(v18, &qword_27EFC9E20);
  v37 = v56;
  v38 = v60;
  (*(v56 + 16))(v61, v35, v60);
  swift_storeEnumTagMultiPayload();
  v70 = v16;
  v71 = v36;
  v72 = v33;
  v73 = v34;
  swift_getOpaqueTypeConformance2();
  v39 = v62;
  sub_24B2D3ED4();
  sub_24B008890(v39, v57, &qword_27EFCA298);
  swift_storeEnumTagMultiPayload();
  sub_24B0AFD2C();
  sub_24B0AFE78();
  v40 = v64;
  sub_24B2D3ED4();
  sub_24AFF8258(v39, &qword_27EFCA298);
  (*(v37 + 8))(v35, v38);
LABEL_11:
  v49 = v63;
  sub_24AFDB5B8(v40, v63);
  return (*(v65 + 56))(v49, 0, 1, v66);
}

uint64_t sub_24B0AF2F0@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for CustomButtonStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RequestReceivedMessageView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94D8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = sub_24B2D32E4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_24B0B0378(v1, v9, type metadata accessor for RequestReceivedMessageView);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_24B0AFC58(v9, v15 + v14);
  v16 = &v12[v10[12]];
  v26 = 0;
  sub_24B2D4CC4();
  v17 = v28;
  *v16 = v27;
  *(v16 + 1) = v17;
  v18 = &v12[v10[13]];
  v26 = 0;
  sub_24B2D4CC4();
  v19 = v28;
  *v18 = v27;
  *(v18 + 1) = v19;
  v20 = &v12[v10[9]];
  *v20 = &unk_24B2E4120;
  *(v20 + 1) = v15;
  v21 = &v12[v10[10]];
  *v21 = sub_24B0F71F8;
  v21[1] = 0;
  v12[v10[11]] = 1;
  v22 = *(v6 + 32);
  v23 = type metadata accessor for RequestReceivedMessageView.Style(0);
  sub_24B0B0378(v1 + *(v23 + 24) + v22, v4, type metadata accessor for CustomControlStyle);
  sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
  sub_24B0A8EB0(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
  sub_24B2D46D4();
  sub_24B0A8FE8(v4, type metadata accessor for CustomButtonStyle);
  return sub_24AFF8258(v12, &qword_27EFC94D8);
}

uint64_t sub_24B0AF664(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_24B2D5694();
  *(v1 + 24) = sub_24B2D5684();
  v3 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B0AF6FC, v3, v2);
}

uint64_t sub_24B0AF6FC()
{
  v1 = *(v0 + 16);

  v2 = v1 + *(type metadata accessor for RequestReceivedMessageView(0) + 28);
  (*(v2 + 48))(0, 0, 3);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24B0AF784@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24B2D45E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_24B0AF8D4@<X0>(uint64_t *a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D4BE4();

  *a1 = v2;
  return result;
}

uint64_t sub_24B0AF978(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_24B2D5694();
  v2[4] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_24B0AFA10, v4, v3);
}

uint64_t sub_24B0AFA10()
{
  v1 = v0[3];
  v2 = (v1 + *(type metadata accessor for RequestReceivedMessageView(0) + 36));
  v6 = (*v2 + **v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_24B088010;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_24B0AFB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = sub_24B0AE624();
  v8 = v7;
  sub_24B0B0378(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RequestReceivedMessageView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  result = sub_24B0AFC58(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = sub_24B0AFCBC;
  *(a2 + 40) = v10;
  *(a2 + 48) = 0;
  *(a2 + 50) = -64;
  return result;
}

uint64_t sub_24B0AFC58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestReceivedMessageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B0AFCBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RequestReceivedMessageView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24B0AE974(v4, a1);
}

unint64_t sub_24B0AFD2C()
{
  result = qword_27EFCA2A8;
  if (!qword_27EFCA2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9E20);
    type metadata accessor for CustomMenuStyle(255);
    sub_24B039184(&qword_27EFC9E18, &qword_27EFC9E20);
    sub_24B0A8EB0(&qword_27EFCA000, type metadata accessor for CustomMenuStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA2A8);
  }

  return result;
}

unint64_t sub_24B0AFE78()
{
  result = qword_27EFCA2B0;
  if (!qword_27EFCA2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA280);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94D8);
    type metadata accessor for CustomButtonStyle(255);
    sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
    sub_24B0A8EB0(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA2B0);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for RequestReceivedMessageView(0);
  v19 = *(*(v1 - 8) + 80);
  v17 = *(*(v1 - 8) + 64);
  v18 = (v19 + 16) & ~v19;
  v20 = v0;

  v2 = v0 + v18 + *(v1 + 24);
  v3 = type metadata accessor for RequestReceivedMessageView.Style(0);
  v4 = v2 + *(v3 + 20);
  __swift_destroy_boxed_opaque_existential_0(v4);

  v5 = type metadata accessor for CustomControlStyle(0);
  v6 = v5[6];
  v7 = sub_24B2D50F4();
  v8 = *(*(v7 - 8) + 8);
  v8(v4 + v6, v7);
  v9 = v4 + v5[7];
  if (*(v9 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v10 = v5[8];
  type metadata accessor for CustomControlStyle.BackgroundSize(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24B2D3364();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v12 = v2 + *(v3 + 24);
  __swift_destroy_boxed_opaque_existential_0(v12);

  v8(v12 + v5[6], v7);
  v13 = v12 + v5[7];
  if (*(v13 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  v14 = v5[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24B2D3364();
    (*(*(v15 - 8) + 8))(v12 + v14, v15);
  }

  return MEMORY[0x2821FE8E8](v20, v18 + v17, v19 | 7);
}

uint64_t sub_24B0B02A0(uint64_t a1)
{
  v4 = *(type metadata accessor for RequestReceivedMessageView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AFFDE44;

  return sub_24B0AF978(a1, v1 + v5);
}

uint64_t sub_24B0B0378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0B03E0()
{
  v2 = *(type metadata accessor for RequestReceivedMessageView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFD370;

  return sub_24B0AF664(v0 + v3);
}

uint64_t sub_24B0B04AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24B0B0508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24B0B058C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8848);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v34 - v11;
  v13 = sub_24B0B079C(a1, a2, a3, a4);
  v15 = v14;
  v34[2] = v13;
  v34[3] = v14;
  v34[0] = 10;
  v34[1] = 0xE100000000000000;
  v16 = sub_24B2D2534();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  sub_24AFFE0A4();
  sub_24B2D5AF4();
  v18 = v17;
  v20 = v19;
  result = sub_24B0B0C08(v12);
  if (v20)
  {
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v24 = sub_24B2D54A4();
    v22 = MEMORY[0x24C23BBC0](v24);
    v23 = v25;

    v26 = sub_24B0BA6B8(v18, v13, v15);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v13 = MEMORY[0x24C23BBC0](v26, v28, v30, v32);
    v15 = v33;
  }

  *a5 = v22;
  *(a5 + 8) = v23;
  *(a5 + 16) = v13;
  *(a5 + 24) = v15;
  *(a5 + 32) = sub_24AFFAA8C;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 50) = -63;
  return result;
}

uint64_t sub_24B0B079C(char a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    if ((a1 & 1) == 0 && a3)
    {
      goto LABEL_9;
    }

LABEL_10:
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_24B2D5374();
    v16 = [v14 localizedStringForKey:v15 value:0 table:0];

    v12 = sub_24B2D5394();
    return v12;
  }

  if ((a1 & 1) != 0 || !a3)
  {
    goto LABEL_10;
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A78);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24B2DE430;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_24B075024();
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  type metadata accessor for FindMyUICore();
  v7 = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  v9 = [v8 bundleForClass_];
  v10 = sub_24B2D5374();
  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  sub_24B2D5394();
  v12 = sub_24B2D53A4();

  return v12;
}

uint64_t sub_24B0B0C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for RequestSentMessageView.Style(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_24B0B0D20()
{
  result = qword_27EFC9668;
  if (!qword_27EFC9668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9668);
  }

  return result;
}

uint64_t sub_24B0B0D84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24B0B0DCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B0B0E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v33 = a4;
  v5 = sub_24B2D2E24();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_24B2D2DE4();
  MEMORY[0x28223BE20](v9 - 8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA2C8);
  MEMORY[0x28223BE20](v31);
  v11 = &v28 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA2D0);
  MEMORY[0x28223BE20](v32);
  v28 = &v28 - v12;
  sub_24B2D2DD4();
  sub_24B2D2D34();
  v13 = sub_24B2D2D44();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  v38 = MEMORY[0x277D84F90];
  sub_24B0B2500(&qword_27EFC9818, MEMORY[0x277CE42D0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9820);
  sub_24B039184(&qword_27EFC9828, &qword_27EFC9820);
  sub_24B2D5B44();
  v15 = v29;
  v14 = v30;
  v34 = a1;
  v35 = v29;
  v36 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA2D8);
  sub_24B039184(&qword_27EFCA2E0, &qword_27EFCA2D8);
  sub_24B2D2C84();
  sub_24B2D42F4();
  sub_24B2D32F4();
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA2E8);
  sub_24B2D4084();
  v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA2F0) + 36)] = 0;
  v11[*(v31 + 36)] = 0;
  sub_24B0B21AC();
  v20 = v28;
  sub_24B2D4634();
  sub_24AFF8258(v11, &qword_27EFCA2C8);
  v21 = sub_24B2D5064();
  v23 = v22;
  v24 = v20 + *(v32 + 36);
  sub_24B0B1D44(a1, v24);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA328) + 36));
  *v25 = v21;
  v25[1] = v23;
  v37 = a1;
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = v15;
  v26[4] = v14;

  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850);
  sub_24B0B23E4();
  sub_24B092A60();
  sub_24B2D49B4();

  return sub_24AFF8258(v20, &qword_27EFCA2D0);
}

uint64_t sub_24B0B136C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA348);
  v36 = *(v39 - 8);
  v3 = MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9898);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  sub_24B2D5694();
  v37 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3034();
  v43 = a1;

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA350);
  sub_24B039184(&qword_27EFC98A8, &qword_27EFC9850);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA358);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA360);
  v33 = v13;
  v16 = v15;
  v17 = sub_24B039184(&qword_27EFCA368, &qword_27EFCA360);
  v41 = v16;
  v42 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v14;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B0B2500(&qword_27EFC98B8, type metadata accessor for Annotation);
  v32 = v6;
  sub_24B2D4EC4();
  v19 = *(v8 + 16);
  v20 = v11;
  v21 = v13;
  v22 = v7;
  v19(v11, v21, v7);
  v23 = v36;
  v35 = *(v36 + 16);
  v24 = v38;
  v25 = v6;
  v26 = v39;
  v35(v38, v25, v39);
  v27 = v40;
  v19(v40, v20, v22);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA370);
  v35(&v27[*(v28 + 48)], v24, v26);
  v29 = *(v23 + 8);
  v29(v32, v26);
  v30 = *(v8 + 8);
  v30(v33, v22);
  v29(v24, v26);
  v30(v20, v22);
}

uint64_t sub_24B0B1810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA358);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  sub_24B2D5694();
  v14[0] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a1 + 24);
  v15 = *(a1 + 16);
  v16 = v11;
  MEMORY[0x28223BE20](v11);
  v14[-2] = a1;

  sub_24B2D5184();
  type metadata accessor for AnnotationView();
  sub_24B0B2500(&qword_27EFCA378, type metadata accessor for AnnotationView);
  sub_24AFFE0A4();
  sub_24B2D3024();
  v12 = sub_24B039184(&qword_27EFCA368, &qword_27EFCA360);
  sub_24B2D2FD4();
  (*(v4 + 8))(v6, v3);
  v15 = v3;
  v16 = v12;
  swift_getOpaqueTypeConformance2();
  sub_24B2D2FE4();
  (*(v8 + 8))(v10, v7);
}

double sub_24B0B1B60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B092CB4(a1, a2);
  v4 = type metadata accessor for AnnotationView();
  v5 = a2 + v4[5];
  *v5 = xmmword_24B2E41F0;
  *(v5 + 16) = xmmword_24B2E4200;
  *(v5 + 32) = xmmword_24B2E4210;
  *(v5 + 48) = 0x3FF8000000000000;
  v6 = a2 + v4[6];
  v7 = [objc_opt_self() systemGray2Color];
  sub_24B2D4B94();
  v8 = sub_24B2D34A4();
  *&v13 = sub_24B2D4B04();
  v9 = sub_24B2D34A4();
  *v6 = v8;
  *(v6 + 8) = 0;
  *(v6 + 16) = v9;
  *(v6 + 24) = 0x4010000000000000;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 32) = 0;
  *(a2 + v4[7]) = 0;
  *(a2 + v4[8]) = 0;
  v10 = a2 + v4[9];
  sub_24B2D4CC4();
  *v10 = v13;
  *(v10 + 8) = *(&v13 + 1);
  v11 = v4[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA380);
  sub_24B2D4CC4();

  result = *&v13;
  *(a2 + v11) = v13;
  return result;
}

uint64_t sub_24B0B1D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9F08);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA340);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 16))
  {
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  else
  {
    sub_24B2D4FE4();
    *&v7[*(v4 + 56)] = 256;
    sub_24B0391CC(v7, v10, &qword_27EFC9F08);
    (*(v5 + 56))(v10, 0, 1, v4);
  }

  sub_24B0391CC(v10, a2, &qword_27EFCA340);
}

uint64_t sub_24B0B1F3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(v2 + 16) && *(v3 + 16))
  {
    v4 = sub_24B2D50C4();
    MEMORY[0x28223BE20](v4);
    sub_24B2D35C4();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888);
    sub_24B2D4CE4();
  }
}

uint64_t sub_24B0B20AC()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888);
  sub_24B2D4CE4();
}

unint64_t sub_24B0B21AC()
{
  result = qword_27EFCA2F8;
  if (!qword_27EFCA2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA2C8);
    sub_24B0B2264();
    sub_24B039184(&qword_27EFC9868, &qword_27EFC9870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA2F8);
  }

  return result;
}

unint64_t sub_24B0B2264()
{
  result = qword_27EFCA300;
  if (!qword_27EFCA300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA2F0);
    sub_24B0B22F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA300);
  }

  return result;
}

unint64_t sub_24B0B22F0()
{
  result = qword_27EFCA308;
  if (!qword_27EFCA308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA2E8);
    sub_24B039184(&qword_27EFCA310, &qword_27EFCA318);
    sub_24B0B2500(&qword_27EFCA320, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA308);
  }

  return result;
}

unint64_t sub_24B0B23E4()
{
  result = qword_27EFCA330;
  if (!qword_27EFCA330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA2D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA2C8);
    sub_24B0B21AC();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCA338, &qword_27EFCA328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA330);
  }

  return result;
}

uint64_t sub_24B0B2500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B0B2614()
{
  result = type metadata accessor for ShareReceivedMessageView.State.Active.Location(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocateAction();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B0B26E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

void sub_24B0B278C()
{
  type metadata accessor for Friend();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ShareReceivedMessageView.State(319);
    if (v1 <= 0x3F)
    {
      sub_24B07A804();
      if (v2 <= 0x3F)
      {
        sub_24B0B2850();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B0B2850()
{
  if (!qword_27EFCA3C8)
  {
    v0 = sub_24B2D4E94();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCA3C8);
    }
  }
}

uint64_t sub_24B0B28A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24B0B28F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24B0B2970@<X0>(uint64_t a1@<X8>)
{
  v125 = a1;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA3E0);
  MEMORY[0x28223BE20](v110);
  v111 = (&v93 - v2);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA3E8);
  MEMORY[0x28223BE20](v124);
  v112 = (&v93 - v3);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA3F0);
  MEMORY[0x28223BE20](v109);
  v97 = (&v93 - v4);
  v103 = type metadata accessor for Annotation();
  v104 = *(v103 - 8);
  v5 = MEMORY[0x28223BE20](v103);
  v96 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v6;
  MEMORY[0x28223BE20](v5);
  v100 = &v93 - v7;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA3F8);
  MEMORY[0x28223BE20](v105);
  v107 = &v93 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA400);
  MEMORY[0x28223BE20](v98);
  v99 = &v93 - v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA408);
  MEMORY[0x28223BE20](v106);
  v101 = &v93 - v10;
  v11 = type metadata accessor for ShareReceivedMessageView.State.Active.Location(0);
  MEMORY[0x28223BE20](v11 - 8);
  v102 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA410);
  MEMORY[0x28223BE20](v116);
  v108 = &v93 - v13;
  v14 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v95 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v117 = &v93 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA418);
  MEMORY[0x28223BE20](v121);
  v123 = &v93 - v19;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA420);
  MEMORY[0x28223BE20](v113);
  v114 = &v93 - v20;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA428);
  MEMORY[0x28223BE20](v122);
  v115 = &v93 - v21;
  v22 = type metadata accessor for ShareReceivedMessageView(0);
  v118 = *(v22 - 8);
  v23 = *(v118 + 64);
  MEMORY[0x28223BE20](v22);
  v119 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA430);
  MEMORY[0x28223BE20](v120);
  v25 = &v93 - v24;
  v26 = type metadata accessor for ShareReceivedMessageView.State(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v1;
  sub_24B0B59A4(v1 + *(v22 + 20), v28, type metadata accessor for ShareReceivedMessageView.State);
  v30 = v15;
  v31 = (*(v15 + 48))(v28, 3, v14);
  if (v31 > 1)
  {
    if (v31 != 2 || (v42 = v1 + *(v22 + 36), v43 = *v42, v44 = *(v42 + 8), LOBYTE(v42) = *(v42 + 16), *&v127 = v43, *(&v127 + 1) = v44, LOBYTE(v128) = v42, v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA3D8), MEMORY[0x24C23B610](&v126, v45), v126 != 1))
    {
      v53 = sub_24B0B53E8();
      v127 = 0uLL;
      *&v128 = v53;
      *(&v128 + 1) = v54;
      *v129 = sub_24AFFAA8C;
      *&v129[8] = 0;
      *&v129[16] = 0;
      v129[18] = 1;
      v55 = v128;
      v56 = v111;
      *v111 = 0uLL;
      *(v56 + 1) = v55;
      *(v56 + 2) = *v129;
      *(v56 + 47) = *&v129[15];
      swift_storeEnumTagMultiPayload();
      sub_24B008890(&v127, &v126, &qword_27EFC9670);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9670);
      sub_24B039184(&qword_27EFCA438, &qword_27EFCA430);
      sub_24B039184(&qword_27EFC9668, &qword_27EFC9670);
      v57 = v112;
      sub_24B2D3ED4();
      sub_24B008890(v57, v123, &qword_27EFCA3E8);
      swift_storeEnumTagMultiPayload();
      sub_24B0B5A0C();
      sub_24B0B5C2C();
      sub_24B2D3ED4();
      sub_24AFF8258(&v127, &qword_27EFC9670);
      v58 = v57;
      v59 = &qword_27EFCA3E8;
      return sub_24AFF8258(v58, v59);
    }

    v46 = v119;
    sub_24B0B59A4(v1, v119, type metadata accessor for ShareReceivedMessageView);
    v47 = (*(v118 + 80) + 16) & ~*(v118 + 80);
    v48 = swift_allocObject();
    sub_24B0B61D0(v46, v48 + v47, type metadata accessor for ShareReceivedMessageView);
    v49 = v120;
    v50 = *(v120 + 60);
    *&v25[v50] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C38);
    swift_storeEnumTagMultiPayload();
    v51 = &v25[*(v49 + 64)];
    *v51 = swift_getKeyPath();
    v51[8] = 0;
    *v25 = sub_24B0B6F48;
    *(v25 + 1) = v48;
    *(v25 + 2) = nullsub_1;
    *(v25 + 3) = 0;
    v25[32] = 0;
    sub_24B008890(v25, v111, &qword_27EFCA430);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9670);
    sub_24B039184(&qword_27EFCA438, &qword_27EFCA430);
    sub_24B039184(&qword_27EFC9668, &qword_27EFC9670);
    v52 = v112;
    sub_24B2D3ED4();
    sub_24B008890(v52, v123, &qword_27EFCA3E8);
    swift_storeEnumTagMultiPayload();
    sub_24B0B5A0C();
    sub_24B0B5C2C();
    sub_24B2D3ED4();
    sub_24AFF8258(v52, &qword_27EFCA3E8);
LABEL_11:
    v58 = v25;
    v59 = &qword_27EFCA430;
    return sub_24AFF8258(v58, v59);
  }

  if (v31)
  {
    v60 = v119;
    sub_24B0B59A4(v1, v119, type metadata accessor for ShareReceivedMessageView);
    v61 = (*(v118 + 80) + 16) & ~*(v118 + 80);
    v62 = swift_allocObject();
    sub_24B0B61D0(v60, v62 + v61, type metadata accessor for ShareReceivedMessageView);
    v63 = v120;
    v64 = *(v120 + 60);
    *&v25[v64] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C38);
    swift_storeEnumTagMultiPayload();
    v65 = &v25[*(v63 + 64)];
    *v65 = swift_getKeyPath();
    v65[8] = 0;
    *v25 = sub_24B0B6F48;
    *(v25 + 1) = v62;
    *(v25 + 2) = nullsub_1;
    *(v25 + 3) = 0;
    v25[32] = 0;
    sub_24B008890(v25, v114, &qword_27EFCA430);
    swift_storeEnumTagMultiPayload();
    sub_24B039184(&qword_27EFCA438, &qword_27EFCA430);
    sub_24B0B5AC4();
    v66 = v115;
    sub_24B2D3ED4();
    sub_24B008890(v66, v123, &qword_27EFCA428);
    swift_storeEnumTagMultiPayload();
    sub_24B0B5A0C();
    sub_24B0B5C2C();
    sub_24B2D3ED4();
    sub_24AFF8258(v66, &qword_27EFCA428);
    goto LABEL_11;
  }

  v32 = v117;
  sub_24B0B61D0(v28, v117, type metadata accessor for ShareReceivedMessageView.State.Active);
  v33 = v102;
  sub_24B0B59A4(v32, v102, type metadata accessor for ShareReceivedMessageView.State.Active.Location);
  v34 = v104;
  v35 = (*(v104 + 48))(v33, 2, v103);
  if (v35)
  {
    v36 = v119;
    if (v35 == 1)
    {
      sub_24B0B59A4(v29, v119, type metadata accessor for ShareReceivedMessageView);
      v37 = (*(v118 + 80) + 16) & ~*(v118 + 80);
      v38 = swift_allocObject();
      sub_24B0B61D0(v36, v38 + v37, type metadata accessor for ShareReceivedMessageView);
      v39 = v120;
      v40 = *(v120 + 60);
      *&v25[v40] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C38);
      swift_storeEnumTagMultiPayload();
      v41 = &v25[*(v39 + 64)];
      *v41 = swift_getKeyPath();
      v41[8] = 0;
      *v25 = sub_24B0B64B0;
    }

    else
    {
      sub_24B0B59A4(v29, v119, type metadata accessor for ShareReceivedMessageView);
      v87 = (*(v118 + 80) + 16) & ~*(v118 + 80);
      v38 = swift_allocObject();
      sub_24B0B61D0(v36, v38 + v87, type metadata accessor for ShareReceivedMessageView);
      v88 = v120;
      v89 = *(v120 + 60);
      *&v25[v89] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C38);
      swift_storeEnumTagMultiPayload();
      v90 = &v25[*(v88 + 64)];
      *v90 = swift_getKeyPath();
      v90[8] = 0;
      *v25 = sub_24B0B6440;
    }

    *(v25 + 1) = v38;
    *(v25 + 2) = nullsub_1;
    *(v25 + 3) = 0;
    v25[32] = 0;
    sub_24B008890(v25, v99, &qword_27EFCA430);
    swift_storeEnumTagMultiPayload();
    sub_24B039184(&qword_27EFCA438, &qword_27EFCA430);
    v91 = v101;
    sub_24B2D3ED4();
    sub_24B008890(v91, v107, &qword_27EFCA408);
    swift_storeEnumTagMultiPayload();
    sub_24B0B5B7C();
    sub_24B039184(&qword_27EFCA458, &qword_27EFCA3F0);
    v85 = v108;
    sub_24B2D3ED4();
    sub_24AFF8258(v91, &qword_27EFCA408);
    sub_24AFF8258(v25, &qword_27EFCA430);
    v86 = v123;
  }

  else
  {
    v112 = type metadata accessor for Annotation;
    sub_24B0B61D0(v33, v100, type metadata accessor for Annotation);
    v111 = type metadata accessor for ShareReceivedMessageView;
    v93 = v29;
    v68 = v119;
    sub_24B0B59A4(v29, v119, type metadata accessor for ShareReceivedMessageView);
    v69 = v95;
    sub_24B0B59A4(v117, v95, type metadata accessor for ShareReceivedMessageView.State.Active);
    v70 = *(v118 + 80);
    v71 = (v70 + 16) & ~v70;
    v72 = (v23 + *(v30 + 80) + v71) & ~*(v30 + 80);
    v73 = v34;
    v74 = swift_allocObject();
    sub_24B0B61D0(v68, v74 + v71, type metadata accessor for ShareReceivedMessageView);
    sub_24B0B61D0(v69, v74 + v72, type metadata accessor for ShareReceivedMessageView.State.Active);
    v75 = v100;
    v76 = v96;
    sub_24B0B59A4(v100, v96, type metadata accessor for Annotation);
    sub_24B0B59A4(v93, v68, v111);
    v77 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v78 = (v94 + v70 + v77) & ~v70;
    v79 = swift_allocObject();
    sub_24B0B61D0(v76, v79 + v77, v112);
    sub_24B0B61D0(v68, v79 + v78, type metadata accessor for ShareReceivedMessageView);
    KeyPath = swift_getKeyPath();
    v81 = v97;
    *v97 = sub_24B0B6238;
    *(v81 + 8) = v74;
    *(v81 + 16) = sub_24B0B630C;
    *(v81 + 24) = v79;
    *(v81 + 32) = 0;
    v82 = v109;
    v83 = *(v109 + 60);
    *(v81 + v83) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C38);
    swift_storeEnumTagMultiPayload();
    v84 = v81 + *(v82 + 64);
    *v84 = KeyPath;
    *(v84 + 8) = 0;
    sub_24B008890(v81, v107, &qword_27EFCA3F0);
    swift_storeEnumTagMultiPayload();
    sub_24B0B5B7C();
    sub_24B039184(&qword_27EFCA458, &qword_27EFCA3F0);
    v85 = v108;
    sub_24B2D3ED4();
    sub_24AFF8258(v81, &qword_27EFCA3F0);
    sub_24B0B63E0(v75, type metadata accessor for Annotation);
    v86 = v123;
  }

  sub_24B008890(v85, v114, &qword_27EFCA410);
  swift_storeEnumTagMultiPayload();
  sub_24B039184(&qword_27EFCA438, &qword_27EFCA430);
  sub_24B0B5AC4();
  v92 = v115;
  sub_24B2D3ED4();
  sub_24B008890(v92, v86, &qword_27EFCA428);
  swift_storeEnumTagMultiPayload();
  sub_24B0B5A0C();
  sub_24B0B5C2C();
  sub_24B2D3ED4();
  sub_24AFF8258(v92, &qword_27EFCA428);
  sub_24AFF8258(v85, &qword_27EFCA410);
  return sub_24B0B63E0(v117, type metadata accessor for ShareReceivedMessageView.State.Active);
}

uint64_t sub_24B0B3F0C(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_24B2D5D64();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_24B2D5694();
  v1[9] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_24B0B4000, v4, v3);
}

uint64_t sub_24B0B4000()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_24B0B40CC;

  return sub_24B09A030(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24B0B40CC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[8];
  v5 = v2[7];
  v6 = v2[6];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_24B0B6F44;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_24B0B4260;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24B0B4260()
{
  v1 = *(v0 + 40);

  v2 = (v1 + *(type metadata accessor for ShareReceivedMessageView(0) + 36));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA3D8);
  sub_24B2D4E44();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24B0B4324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_24B2D5374();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  v8 = sub_24B2D5394();
  v10 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7978);
  v11 = *(type metadata accessor for Friend() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24B2DE430;
  result = sub_24B0B59A4(a1, v13 + v12, type metadata accessor for Friend);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v13;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_24B0B44B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_24B2D3DF4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA480);
  return sub_24B0B4518(a1, a2 + *(v4 + 44));
}

uint64_t sub_24B0B4518@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA488);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ShareReceivedMessageView(0);
  sub_24B2D5064();
  sub_24B2D3904();
  *&v15[55] = v20;
  *&v15[71] = v21;
  *&v15[87] = v22;
  *&v15[103] = v23;
  *&v15[7] = v17;
  *&v15[23] = v18;
  v16 = 1;
  *&v15[39] = v19;
  sub_24B0B47BC(a1, v9);
  sub_24B008890(v9, v7, &qword_27EFCA488);
  v10 = *&v15[80];
  *(a2 + 73) = *&v15[64];
  *(a2 + 89) = v10;
  *(a2 + 105) = *&v15[96];
  v11 = *&v15[16];
  *(a2 + 9) = *v15;
  *(a2 + 25) = v11;
  v12 = *&v15[48];
  *(a2 + 41) = *&v15[32];
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 120) = *&v15[111];
  *(a2 + 57) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA490);
  sub_24B008890(v7, a2 + *(v13 + 48), &qword_27EFCA488);
  sub_24AFF8258(v9, &qword_27EFCA488);
  sub_24AFF8258(v7, &qword_27EFCA488);
}

uint64_t sub_24B0B47BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ShareReceivedMessageView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA498);
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  if (*(v2 + *(v5 + 32)))
  {
    v17 = *(v14 + 56);

    return v17(a2, 1, 1);
  }

  else
  {
    v58 = v2 + *(v5 + 32);
    v59 = v13;
    v61 = v14;
    v19 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
    v60 = a2;
    v20 = v19;
    sub_24B0B59A4(a1 + *(v19 + 20), v16, type metadata accessor for LocateAction);
    v57 = *(a1 + *(v20 + 24));
    sub_24B0B59A4(v2, v11, type metadata accessor for ShareReceivedMessageView);
    v55 = v5;
    v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v56 = swift_allocObject();
    sub_24B0B61D0(v11, v56 + v21, type metadata accessor for ShareReceivedMessageView);
    sub_24B0B59A4(v2, v9, type metadata accessor for ShareReceivedMessageView);
    v22 = swift_allocObject();
    sub_24B0B61D0(v9, v22 + v21, type metadata accessor for ShareReceivedMessageView);
    v23 = (v2 + *(v55 + 24));
    v24 = v23[7];
    v69 = v23[6];
    v70 = v24;
    v71 = v23[8];
    v25 = v23[3];
    v65 = v23[2];
    v66 = v25;
    v26 = v23[5];
    v67 = v23[4];
    v68 = v26;
    v27 = v23[1];
    v63 = *v23;
    v64 = v27;
    v28 = type metadata accessor for ShareReceivedMessageViewActionsModule(0);
    v16[v28[5]] = v57;
    v29 = v28[6];
    sub_24B0A3A8C(&v63, &v62);
    sub_24B0B6F4C(&v16[v29]);
    v30 = &v16[v28[7]];
    v31 = v56;
    *v30 = sub_24B0B6CC0;
    v30[1] = v31;
    v32 = &v16[v28[8]];
    *v32 = sub_24B0B6D30;
    v32[1] = v22;
    v33 = &v16[v28[9]];
    v34 = v70;
    *(v33 + 6) = v69;
    *(v33 + 7) = v34;
    *(v33 + 8) = v71;
    v35 = v66;
    *(v33 + 2) = v65;
    *(v33 + 3) = v35;
    v36 = v68;
    *(v33 + 4) = v67;
    *(v33 + 5) = v36;
    v37 = v64;
    *v33 = v63;
    *(v33 + 1) = v37;
    LOBYTE(v29) = sub_24B2D42E4();
    sub_24B2D32F4();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA4A0) + 36)];
    *v46 = v29;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    LOBYTE(v29) = sub_24B2D4314();
    sub_24B2D32F4();
    v47 = v59;
    v48 = &v16[*(v59 + 36)];
    *v48 = v29;
    *(v48 + 1) = v49;
    *(v48 + 2) = v50;
    *(v48 + 3) = v51;
    *(v48 + 4) = v52;
    v48[40] = 0;
    v53 = v60;
    sub_24B0B6DBC(v16, v60);
    return (*(v61 + 56))(v53, 0, 1, v47);
  }
}

uint64_t sub_24B0B4C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double (**a3)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v6 = type metadata accessor for ShareReceivedMessageView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Annotation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_24B0B59A4(a1, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Annotation);
  sub_24B0B59A4(a2, v9, type metadata accessor for ShareReceivedMessageView);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_24B0B61D0(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for Annotation);
  result = sub_24B0B61D0(v9, v15 + v14, type metadata accessor for ShareReceivedMessageView);
  *a3 = sub_24B0B6B70;
  a3[1] = v15;
  return result;
}

double sub_24B0B4DFC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v21 = a3;
  v22 = a2;
  v4 = type metadata accessor for ShareReceivedMessageView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_24B2D5694();
  v23 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7FA8);
  v7 = *(type metadata accessor for Annotation() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24B2DE430;
  sub_24B0B59A4(a1, v9 + v8, type metadata accessor for Annotation);
  v26 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850);
  sub_24B2D4CC4();
  v10 = *v24;
  *v24 = v9;
  *&v24[8] = v10;
  sub_24B0B59A4(v22, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareReceivedMessageView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_24B0B61D0(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ShareReceivedMessageView);
  sub_24B0B6C6C();
  v13 = v21;
  sub_24B2D4704();

  sub_24B2D4314();
  sub_24B2D3514();
  sub_24B2D32F4();
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA470);
  sub_24B2D4084();
  sub_24B2D3514();
  sub_24B2D3514();
  sub_24B2D5064();
  sub_24B2D3494();

  v18 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA478) + 36));
  v19 = *&v24[16];
  *v18 = *v24;
  v18[1] = v19;
  result = *&v25;
  v18[2] = v25;
  return result;
}

uint64_t sub_24B0B519C(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for ShareReceivedMessageView(0);
  (*(a1 + *(v2 + 28)))();
}

double sub_24B0B5250@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_24B2D5374();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  v8 = sub_24B2D5394();
  v10 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7978);
  v11 = *(type metadata accessor for Friend() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24B2DE430;
  sub_24B0B59A4(a1, v13 + v12, type metadata accessor for Friend);
  *a2 = v8;
  *(a2 + 8) = v10;
  result = 9.08367203e223;
  *(a2 + 16) = xmmword_24B2E4370;
  *(a2 + 32) = v13;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_24B0B53E8()
{
  if (*(v0 + *(type metadata accessor for ShareReceivedMessageView(0) + 32)) == 1 || (v1 = v0[1]) == 0)
  {
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v12 = sub_24B2D5374();
    v13 = [v11 localizedStringForKey:v12 value:0 table:0];

    v9 = sub_24B2D5394();
  }

  else
  {
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A78);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24B2DE430;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 64) = sub_24B075024();
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
    type metadata accessor for FindMyUICore();
    v4 = swift_getObjCClassFromMetadata();
    v5 = objc_opt_self();

    v6 = [v5 bundleForClass_];
    v7 = sub_24B2D5374();
    v8 = [v6 localizedStringForKey:v7 value:0 table:0];

    sub_24B2D5394();
    v9 = sub_24B2D53A4();
  }

  return v9;
}

uint64_t sub_24B0B5674(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for ShareReceivedMessageView(0) + 24) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7978);
  v3 = *(type metadata accessor for Friend() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24B2DE430;
  sub_24B0B59A4(a1, v5 + v4, type metadata accessor for Friend);
  v2(v5, 0, 0);
}

uint64_t sub_24B0B578C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24B0B2970(a2);
  sub_24B0B59A4(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareReceivedMessageView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24B0B61D0(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ShareReceivedMessageView);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA3D0) + 36));
  sub_24B2D35A4();
  result = sub_24B2D56A4();
  *v8 = &unk_24B2E4438;
  v8[1] = v7;
  return result;
}

uint64_t sub_24B0B58D8()
{
  v2 = *(type metadata accessor for ShareReceivedMessageView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFD370;

  return sub_24B0B3F0C(v0 + v3);
}

uint64_t sub_24B0B59A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B0B5A0C()
{
  result = qword_27EFCA440;
  if (!qword_27EFCA440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA428);
    sub_24B039184(&qword_27EFCA438, &qword_27EFCA430);
    sub_24B0B5AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA440);
  }

  return result;
}

unint64_t sub_24B0B5AC4()
{
  result = qword_27EFCA448;
  if (!qword_27EFCA448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA410);
    sub_24B0B5B7C();
    sub_24B039184(&qword_27EFCA458, &qword_27EFCA3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA448);
  }

  return result;
}

unint64_t sub_24B0B5B7C()
{
  result = qword_27EFCA450;
  if (!qword_27EFCA450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA408);
    sub_24B039184(&qword_27EFCA438, &qword_27EFCA430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA450);
  }

  return result;
}

unint64_t sub_24B0B5C2C()
{
  result = qword_27EFCA460;
  if (!qword_27EFCA460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA3E8);
    sub_24B039184(&qword_27EFCA438, &qword_27EFCA430);
    sub_24B039184(&qword_27EFC9668, &qword_27EFC9670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA460);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for ShareReceivedMessageView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = type metadata accessor for Friend();
  v6 = *(v5 + 20);
  v7 = sub_24B2D1704();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v0 + v3 + *(v1 + 20);
  v9 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
  if (!(*(*(v9 - 8) + 48))(v8, 3, v9))
  {
    v28 = v4;
    v10 = type metadata accessor for Annotation();
    if (!(*(*(v10 - 1) + 48))(v8, 2, v10))
    {
      v27 = v0;

      v11 = v10[7];
      v12 = sub_24B2D24A4();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(v8 + v11, 1, v12))
      {
        (*(v13 + 8))(v8 + v11, v12);
      }

      v14 = v8 + v10[9];
      type metadata accessor for PlatterWithIcon.Icon(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v0 = v27;
        if (*(v14 + 8))
        {
        }
      }

      else
      {
        v0 = v27;
        if (EnumCaseMultiPayload == 1)
        {
        }

        else if (!EnumCaseMultiPayload)
        {
          v16 = sub_24B2D1494();
          v17 = *(v16 - 8);
          v26 = v16;
          if (!(*(v17 + 48))(v14, 1))
          {
            (*(v17 + 8))(v14, v26);
          }
        }
      }

      v18 = v10[10];
      v19 = sub_24B2D1BB4();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v8 + v18, 1, v19))
      {
        (*(v20 + 8))(v8 + v18, v19);
      }
    }

    v21 = v8 + *(v9 + 20);
    v22 = type metadata accessor for DirectionsState();
    v4 = v28;
    if (!(*(*(v22 - 8) + 48))(v21, 2, v22))
    {
      v23 = *(v22 + 24);
      v24 = sub_24B2D24A4();
      (*(*(v24 - 8) + 8))(v21 + v23, v24);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B0B61D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0B6238@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareReceivedMessageView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ShareReceivedMessageView.State.Active(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_24B0B44B4(v7, a1);
}