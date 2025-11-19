uint64_t sub_2544F78C0()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544F796C;

  return sub_2544F7AA8();
}

uint64_t sub_2544F796C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_25454BDB4();

  return MEMORY[0x2822009F8](sub_25450810C, v5, v4);
}

uint64_t sub_2544F7AA8()
{
  v1[12] = v0;
  v2 = sub_254549AB4();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  sub_25454BE14();
  v1[16] = sub_25454BE04();
  v6 = sub_25454BDB4();
  v1[17] = v6;
  v1[18] = v5;

  return MEMORY[0x2822009F8](sub_2544F7B9C, v6, v5);
}

uint64_t sub_2544F7B9C()
{
  v1 = v0[15];
  v2 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  v3 = *(MEMORY[0x277D15DD8] + 4);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_2544F7C54;
  v5 = v0[15];

  return MEMORY[0x28216FBD8]();
}

uint64_t sub_2544F7C54(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = a2;
  v5 = v3[19];
  v6 = v3[15];
  v7 = v3[14];
  v8 = v3[13];
  v12 = *v2;
  v4[20] = a2;

  (*(v7 + 8))(v6, v8);
  v9 = v3[18];
  v10 = v3[17];

  return MEMORY[0x2822009F8](sub_2544F7DE0, v10, v9);
}

uint64_t sub_2544F7DE0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);

  if (v1)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 48);
    sub_2544AE2B0(0, &qword_27F5FC418, 0x277CD5528);
    v9 = sub_2544FC16C();
    v10 = [v9 manualEntryCode];
    if (v10)
    {
      v11 = *(v0 + 96);
      v12 = v10;
      v13 = sub_25454BC84();
      v15 = v14;

      v16 = type metadata accessor for AccessoryDetailsView(0);
      v17 = (v11 + *(v16 + 68));
      v18 = *v17;
      v19 = *(v17 + 2);
      *(v0 + 16) = v18;
      *(v0 + 32) = v19;
      *(v0 + 64) = v13;
      *(v0 + 72) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC410, &qword_25454FF90);
      sub_25454B7B4();
      v20 = v11 + *(v16 + 52);
      v21 = *(v20 + 8);
      *(v0 + 80) = *v20;
      *(v0 + 88) = v21;
      *(v0 + 168) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
      sub_25454B7B4();

      goto LABEL_15;
    }

    if (qword_27F5FACE0 != -1)
    {
      swift_once();
    }

    v22 = sub_25454A2E4();
    __swift_project_value_buffer(v22, qword_27F5FD410);
    v6 = sub_25454A2C4();
    v23 = sub_25454BF74();
    if (os_log_type_enabled(v6, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2544A5000, v6, v23, "payload.manualEntryCode is nil", v24, 2u);
      MEMORY[0x259C0FDF0](v24, -1, -1);
    }
  }

  else
  {
    if (qword_27F5FACE0 != -1)
    {
      swift_once();
    }

    v5 = sub_25454A2E4();
    __swift_project_value_buffer(v5, qword_27F5FD410);
    v6 = sub_25454A2C4();
    v7 = sub_25454BF74();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2544A5000, v6, v7, "turnOnPairingMode did not return a payload string", v8, 2u);
      MEMORY[0x259C0FDF0](v8, -1, -1);
    }
  }

LABEL_15:
  v25 = *(v0 + 120);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2544F8220@<X0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v2 = sub_25454B274();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_2544F8310@<X0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2544F83C0(a1);
}

uint64_t sub_2544F83C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for AccessoryDetailsView(0);
  v4 = v3 - 8;
  v62 = *(v3 - 8);
  v61 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25454B5E4();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v67 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = v57 - v10;
  v11 = sub_25454A0A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_254549AB4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v71 = sub_25454BCF4();
  *(&v71 + 1) = v21;
  v57[1] = sub_2544AECF0();
  v22 = sub_25454B274();
  v65 = v23;
  v66 = v22;
  v63 = v24;
  v64 = v25;
  v58 = "PairingModeItem_Alert_Title";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB990, "ܡ");
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25454D8E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v17 + 8))(v20, v16);
  v27 = sub_25454A074();
  v29 = v28;
  (*(v12 + 8))(v15, v11);
  v30 = MEMORY[0x277D837D0];
  *(v26 + 56) = MEMORY[0x277D837D0];
  v31 = sub_25450649C();
  *(v26 + 64) = v31;
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v32 = v2 + *(v4 + 76);
  v33 = *v32;
  v34 = *(v32 + 16);
  v71 = v33;
  v72 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC410, &qword_25454FF90);
  sub_25454B7A4();
  v35 = v69;
  v36 = v70;
  *(v26 + 96) = v30;
  *(v26 + 104) = v31;
  *(v26 + 72) = v35;
  *(v26 + 80) = v36;
  v37 = sub_25454BD04();
  v39 = v38;

  *&v71 = v37;
  *(&v71 + 1) = v39;
  v40 = sub_25454B274();
  v57[3] = v41;
  v58 = v40;
  v57[2] = v42;
  *&v71 = sub_25454BCF4();
  *(&v71 + 1) = v43;
  v44 = sub_25454B274();
  v46 = v45;
  LOBYTE(v37) = v47;
  v48 = v59;
  sub_254505BFC(v2, v59, type metadata accessor for AccessoryDetailsView);
  v49 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v50 = swift_allocObject();
  sub_254507518(v48, v50 + v49, type metadata accessor for AccessoryDetailsView);
  sub_25454B5D4();
  sub_2544C9C64(v44, v46, v37 & 1);

  *&v71 = sub_25454BCF4();
  *(&v71 + 1) = v51;
  v52 = sub_25454B274();
  v54 = v53;
  LOBYTE(v44) = v55;
  sub_25454B5C4();
  sub_2544C9C64(v52, v54, v44 & 1);

  return sub_25454B5B4();
}

uint64_t sub_2544F8940(uint64_t a1)
{
  v2 = sub_25454A0A4();
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_254549AB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v22[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = type metadata accessor for AccessoryDetailsView(0);
  v12 = *(v11 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v13 = v27;
  v14 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v7 + 8))(v10, v6);
  v15 = sub_25454A074();
  v17 = v16;
  (*(v23 + 8))(v5, v24);
  (*(v14 + 216))(v15, v17, v13, v14);

  __swift_destroy_boxed_opaque_existential_0(v26);
  v18 = (a1 + *(v11 + 56));
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v26[0]) = v19;
  v26[1] = v20;
  v25 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
}

uint64_t sub_2544F8C04@<X0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v2 = sub_25454B274();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_2544F8CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v80 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC400, &qword_25454FF80);
  v2 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v70 = &v64 - v3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC430, &qword_25454FFE8);
  v4 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v78 = &v64 - v5;
  v6 = type metadata accessor for AccessoryDetailsView(0);
  v7 = *(v6 - 8);
  v71 = v6;
  v72 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC428, &qword_25454FFB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC28, &unk_25454F660);
  v77 = *(v13 - 8);
  v14 = *(v77 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v68 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v67 = &v64 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v69 = &v64 - v20;
  MEMORY[0x28223BE20](v19);
  v81 = &v64 - v21;
  v22 = sub_254549AB4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFE0, &unk_254550CD0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v64 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3E8, &qword_25454FF78);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v75 = &v64 - v33;
  sub_25454BE14();
  v74 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v34 = v73;
  sub_25454B7A4();
  sub_254549984();
  (*(v23 + 8))(v26, v22);
  v35 = sub_254549D94();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v30, 1, v35) == 1)
  {
    sub_2544AE150(v30, &qword_27F5FBFE0, &unk_254550CD0);
LABEL_8:
    sub_25454A354();
    v58 = sub_25454A384();
    (*(*(v58 - 8) + 56))(v12, 0, 1, v58);
    sub_254505BFC(v34, &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
    v59 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v60 = swift_allocObject();
    sub_254507518(&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v60 + v59, type metadata accessor for AccessoryDetailsView);
    v61 = v81;
    sub_25454B7E4();
    v62 = v77;
    (*(v77 + 16))(v78, v61, v13);
    swift_storeEnumTagMultiPayload();
    sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660);
    sub_2544AE1F0(&qword_27F5FC3F8, &qword_27F5FC400, &qword_25454FF80);
    v57 = v75;
    sub_25454AD44();
    (*(v62 + 8))(v61, v13);
    goto LABEL_9;
  }

  v37 = sub_254549D84();
  (*(v36 + 8))(v30, v35);
  if ((v37 & 1) == 0)
  {
    goto LABEL_8;
  }

  v38 = *(v71 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v39 = v83;
  v40 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  LOBYTE(v39) = (*(v40 + 280))(v39, v40);
  __swift_destroy_boxed_opaque_existential_0(v82);
  if ((v39 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_25454A354();
  v41 = sub_25454A384();
  v42 = *(v41 - 8);
  v66 = *(v42 + 56);
  v71 = v42 + 56;
  v66(v12, 0, 1, v41);
  v65 = type metadata accessor for AccessoryDetailsView;
  sub_254505BFC(v34, &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v43 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v44 = swift_allocObject();
  v72 = type metadata accessor for AccessoryDetailsView;
  v45 = sub_254507518(&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43, type metadata accessor for AccessoryDetailsView);
  MEMORY[0x28223BE20](v45);
  *(&v64 - 2) = v34;
  sub_25454B7E4();
  sub_25454A354();
  v66(v12, 0, 1, v41);
  sub_254505BFC(v34, &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v65);
  v46 = swift_allocObject();
  v47 = sub_254507518(&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v43, v72);
  MEMORY[0x28223BE20](v47);
  *(&v64 - 2) = v34;
  v48 = v69;
  sub_25454B7E4();
  v49 = v77;
  v50 = *(v77 + 16);
  v51 = v67;
  v52 = v81;
  v50(v67, v81, v13);
  v53 = v68;
  v50(v68, v48, v13);
  v54 = v70;
  v50(v70, v51, v13);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC438, &qword_25454FFF0);
  v50((v54 + *(v55 + 48)), v53, v13);
  v56 = *(v49 + 8);
  v56(v53, v13);
  v56(v51, v13);
  sub_2544AE240(v54, v78, &qword_27F5FC400, &qword_25454FF80);
  swift_storeEnumTagMultiPayload();
  sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660);
  sub_2544AE1F0(&qword_27F5FC3F8, &qword_27F5FC400, &qword_25454FF80);
  v57 = v75;
  sub_25454AD44();
  sub_2544AE150(v54, &qword_27F5FC400, &qword_25454FF80);
  v56(v48, v13);
  v56(v52, v13);
LABEL_9:
  sub_2544B14E8(v57, v80, &qword_27F5FC3E8, &qword_25454FF78);
}

uint64_t sub_2544F9824()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544F796C;

  return sub_2544F98D4(0);
}

uint64_t sub_2544F98D4(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 160) = a1;
  v3 = sub_254549AB4();
  *(v2 + 64) = v3;
  v4 = *(v3 - 8);
  *(v2 + 72) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  sub_25454BE14();
  *(v2 + 96) = sub_25454BE04();
  v7 = sub_25454BDB4();
  *(v2 + 104) = v7;
  *(v2 + 112) = v6;

  return MEMORY[0x2822009F8](sub_2544F99D8, v7, v6);
}

uint64_t sub_2544F99D8()
{
  v1 = *(v0 + 56);
  v2 = type metadata accessor for AccessoryDetailsView(0);
  *(v0 + 120) = v2;
  v3 = v1 + *(v2 + 24);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);

    v4(v6);
    sub_254502A24(v4);
  }

  else
  {
    v7 = *(v2 + 28);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
    }
  }

  v10 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v11 = *(v0 + 56);
  if (v10 == 1)
  {
    v12 = *(v0 + 88);
    sub_25454B7A4();
    v13 = *(MEMORY[0x277D15DC8] + 4);
    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = sub_2544F9B84;
    v15 = *(v0 + 88);

    return MEMORY[0x28216FB80]();
  }

  else
  {
    v16 = *(v0 + 80);
    sub_25454B7A4();
    v17 = *(MEMORY[0x277D15DD0] + 4);
    v18 = swift_task_alloc();
    *(v0 + 144) = v18;
    *v18 = v0;
    v18[1] = sub_2544F9DF8;
    v19 = *(v0 + 80);

    return MEMORY[0x28216FB88]();
  }
}

uint64_t sub_2544F9B84()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 136) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 112);
  v9 = *(v2 + 104);
  if (v0)
  {
    v10 = sub_2544F9F90;
  }

  else
  {
    v10 = sub_2544F9D1C;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2544F9D1C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[7];

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v6 + 208))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v8 = v0[10];
  v7 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2544F9DF8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 152) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 112);
  v9 = *(v2 + 104);
  if (v0)
  {
    v10 = sub_2544FA1E8;
  }

  else
  {
    v10 = sub_2545080F4;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2544F9F90()
{
  v17 = v0;
  v1 = v0[17];
  v2 = v0[12];

  if (qword_27F5FACE0 != -1)
  {
    swift_once();
  }

  v3 = sub_25454A2E4();
  __swift_project_value_buffer(v3, qword_27F5FD410);
  v4 = v1;
  v5 = sub_25454A2C4();
  v6 = sub_25454BF74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315650;
    *(v7 + 4) = sub_254502AAC(0xD000000000000022, 0x80000002545555B0, &v16);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_254502AAC(0xD000000000000023, 0x8000000254555F90, &v16);
    *(v7 + 22) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    _os_log_impl(&dword_2544A5000, v5, v6, "%s - %s: error %@.", v7, 0x20u);
    sub_2544AE150(v8, &qword_27F5FC420, &qword_25454FFB0);
    MEMORY[0x259C0FDF0](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v9, -1, -1);
    MEMORY[0x259C0FDF0](v7, -1, -1);
  }

  else
  {
  }

  v13 = v0[10];
  v12 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2544FA1E8()
{
  v17 = v0;
  v1 = v0[19];
  v2 = v0[12];

  if (qword_27F5FACE0 != -1)
  {
    swift_once();
  }

  v3 = sub_25454A2E4();
  __swift_project_value_buffer(v3, qword_27F5FD410);
  v4 = v1;
  v5 = sub_25454A2C4();
  v6 = sub_25454BF74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315650;
    *(v7 + 4) = sub_254502AAC(0xD000000000000022, 0x80000002545555B0, &v16);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_254502AAC(0xD000000000000023, 0x8000000254555F90, &v16);
    *(v7 + 22) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    _os_log_impl(&dword_2544A5000, v5, v6, "%s - %s: error %@.", v7, 0x20u);
    sub_2544AE150(v8, &qword_27F5FC420, &qword_25454FFB0);
    MEMORY[0x259C0FDF0](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v9, -1, -1);
    MEMORY[0x259C0FDF0](v7, -1, -1);
  }

  else
  {
  }

  v13 = v0[10];
  v12 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2544FA448(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for AccessoryDetailsView(0) + 60));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
}

uint64_t sub_2544FA528@<X0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(type metadata accessor for AccessoryDetailsView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v4 + 232))(v3, v4);
  sub_2544AECF0();
  v5 = sub_25454B274();
  v7 = v6;
  LOBYTE(v4) = v8;
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_0(v12);

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_2544FA668(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for AccessoryDetailsView(0) + 64));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
}

uint64_t sub_2544FA748@<X0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(type metadata accessor for AccessoryDetailsView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v4 + 240))(v3, v4);
  sub_2544AECF0();
  v5 = sub_25454B274();
  v7 = v6;
  LOBYTE(v4) = v8;
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_0(v12);

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_2544FA888()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544AAF90;

  return sub_2544F98D4(0);
}

uint64_t sub_2544FA940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v16[2] = a2;
  v16[3] = a3;
  v16[1] = a4;
  v5 = type metadata accessor for AccessoryDetailsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC428, &qword_25454FFB8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v16 - v10;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454A354();
  v12 = sub_25454A384();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_254505BFC(a1, v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_254507518(v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for AccessoryDetailsView);
  sub_25454B7E4();
}

uint64_t sub_2544FAB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = a3;
  v19 = a4;
  v18[1] = a2;
  v5 = type metadata accessor for AccessoryDetailsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v18 - v10;
  sub_25454BE14();
  sub_25454BE04();
  v12 = MEMORY[0x277D85700];
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = sub_25454BE44();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_254505BFC(a1, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v14 = sub_25454BE04();
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v12;
  sub_254507518(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AccessoryDetailsView);
  sub_2544B5138(0, 0, v11, v19, v16);
}

uint64_t sub_2544FADCC()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544F796C;

  return sub_2544F98D4(1);
}

uint64_t sub_2544FAE84@<X0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v2 = sub_25454B274();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_2544FAF80(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryDetailsView(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + v2[6]))
  {
    if ((*(a1 + v2[8]) & 1) == 0)
    {
      v10 = v2[7];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        [Strong setNavigationBarHidden:1 animated:0];
      }
    }
  }

  v13 = sub_25454BE44();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_254505BFC(a1, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v14 = sub_25454BE04();
  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = MEMORY[0x277D85700];
  sub_254507518(v5, v16 + v15, type metadata accessor for AccessoryDetailsView);
  sub_2544B5138(0, 0, v9, &unk_25454FB10, v16);
}

uint64_t sub_2544FB224()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544F796C;

  return sub_2544FB2D0();
}

uint64_t sub_2544FB2D0()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA88, &unk_25454FB20) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_254549854();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB018, &qword_25454EE70) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = sub_254549AB4();
  v1[8] = v7;
  v8 = *(v7 - 8);
  v1[9] = v8;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v10 = sub_254549394();
  v1[12] = v10;
  v11 = *(v10 - 8);
  v1[13] = v11;
  v12 = *(v11 + 64) + 15;
  v1[14] = swift_task_alloc();
  sub_25454BE14();
  v1[15] = sub_25454BE04();
  v14 = sub_25454BDB4();
  v1[16] = v14;
  v1[17] = v13;

  return MEMORY[0x2822009F8](sub_2544FB4F8, v14, v13);
}

uint64_t sub_2544FB4F8()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549A74();
  v8 = *(v5 + 8);
  v8(v3, v4);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v9 = v0[15];
    v10 = v0[7];

    v11 = &qword_27F5FB018;
    v12 = &qword_25454EE70;
    v13 = v10;
LABEL_5:
    sub_2544AE150(v13, v11, v12);
    v22 = v0[14];
    v23 = v0[10];
    v24 = v0[11];
    v26 = v0[6];
    v25 = v0[7];
    v27 = v0[3];

    v28 = v0[1];

    return v28();
  }

  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[4];
  v17 = v0[5];
  v18 = v0[2];
  v19 = v0[3];
  (*(v0[13] + 32))(v0[14], v0[7], v0[12]);
  sub_25454B7A4();
  sub_254549974();
  v8(v14, v15);
  if ((*(v17 + 48))(v19, 1, v16) == 1)
  {
    v20 = v0[15];
    v21 = v0[3];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v11 = &qword_27F5FBA88;
    v12 = &unk_25454FB20;
    v13 = v21;
    goto LABEL_5;
  }

  (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  sub_254549594();
  v0[18] = sub_254549584();
  v30 = *(MEMORY[0x277D15158] + 4);
  v31 = swift_task_alloc();
  v0[19] = v31;
  *v31 = v0;
  v31[1] = sub_2544FB7B4;
  v32 = v0[14];
  v33 = v0[6];

  return MEMORY[0x28216E530](v33, v32);
}

uint64_t sub_2544FB7B4()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_2544FB8F4, v5, v4);
}

uint64_t sub_2544FB8F4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = v0[14];
  v9 = v0[10];
  v10 = v0[11];
  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[3];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2544FB9DC()
{
  v0 = sub_254549AB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549A64();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_2544FBB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = sub_254549AB4();
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  sub_25454BE14();
  v6[22] = sub_25454BE04();
  v11 = sub_25454BDB4();
  v6[23] = v11;
  v6[24] = v10;

  return MEMORY[0x2822009F8](sub_2544FBC44, v11, v10);
}

uint64_t sub_2544FBC44()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = type metadata accessor for AccessoryDetailsView(0);
  *(v0 + 200) = v3;
  v4 = (v2 + *(v3 + 36));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 48) = *v4;
  *(v0 + 56) = v6;

  *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  *(v0 + 241) = (*(v0 + 240) & 1) == 0;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  sub_25454B7B4();

  if (v1)
  {
    v7 = *(v0 + 168);
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);
    *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
    sub_25454B7A4();
    *(v0 + 224) = sub_254549A94();
    v10 = *(MEMORY[0x277D16BF8] + 4);
    v11 = swift_task_alloc();
    *(v0 + 232) = v11;
    *v11 = v0;
    v11[1] = sub_2544FBE90;
    v12 = *(v0 + 120);

    return MEMORY[0x282170B78](v12, v8);
  }

  else
  {
    v13 = *(v0 + 176);

    v14 = *(v0 + 208);
    v16 = *(v0 + 160);
    v15 = *(v0 + 168);
    v17 = *(v0 + 152);
    v18 = (*(v0 + 112) + *(*(v0 + 200) + 40));
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v0 + 80) = *v18;
    *(v0 + 88) = v20;

    sub_25454B7A4();
    *(v0 + 96) = v19;
    v21 = *(v0 + 242);
    *(v0 + 104) = v20;
    *(v0 + 243) = (v21 & 1) == 0;
    sub_25454B7B4();

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_2544FBE90()
{
  v1 = *v0;
  v2 = *v0 + 16;
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 224);
  v8 = *v0;

  v4(v2, 0);
  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_2544FBFE4, v6, v5);
}

uint64_t sub_2544FBFE4()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v8 = *(v0 + 112);

  v9 = *(v7 + 16);
  v9(v4, v3, v6);
  v9(v5, v4, v6);
  sub_25454B7B4();
  v10 = *(v7 + 8);
  v10(v4, v6);
  v10(v3, v6);
  v11 = *(v0 + 208);
  v13 = *(v0 + 160);
  v12 = *(v0 + 168);
  v14 = *(v0 + 152);
  v15 = *(v0 + 112) + *(*(v0 + 200) + 40);
  LOBYTE(v7) = *v15;
  v16 = *(v15 + 8);
  *(v0 + 80) = *v15;
  *(v0 + 88) = v16;

  sub_25454B7A4();
  v17 = *(v0 + 242);
  *(v0 + 96) = v7;
  *(v0 + 104) = v16;
  *(v0 + 243) = (v17 & 1) == 0;
  sub_25454B7B4();

  v18 = *(v0 + 8);

  return v18();
}

id sub_2544FC16C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_25454BC74();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() setupPayloadWithOnboardingPayload:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_254549134();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_2544FC244(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() generalPasteboard];
  v3 = (a1 + *(type metadata accessor for AccessoryDetailsView(0) + 68));
  v5 = *v3;
  v6 = *(v3 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC410, &qword_25454FF90);
  sub_25454B7A4();
  v4 = sub_25454BC74();

  [v2 setString_];
}

uint64_t sub_2544FC370@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_254549074();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v36 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = sub_254549774();
  v35 = v6;
  v7 = *MEMORY[0x277CBE768];
  sub_2544AECF0();
  v8 = sub_25454C064();
  if (v9 && (v34 = v8, v35 = v9, v10 = *MEMORY[0x277CBE758], sub_25454C064(), v12 = v11, , v12))
  {
    v13 = sub_25454BCC4();
    v15 = v14;

    v34 = v13;
    v35 = v15;
    sub_25454BCF4();
    v16 = sub_25454BCC4();
    v27 = a1;
    v18 = v17;

    v32 = v16;
    v33 = v18;
    v30 = 0;
    v31 = 0xE000000000000000;
    v19 = sub_25454C084();
    v21 = v20;

    a1 = v27;

    v34 = v19;
    v35 = v21;
    sub_254549064();
    v22 = sub_25454C074();
    v24 = v23;
    (*(v28 + 8))(v5, v29);
  }

  else
  {

    v22 = 0;
    v24 = 0xE000000000000000;
  }

  *a1 = v22;
  a1[1] = v24;
  return result;
}

uint64_t sub_2544FC650@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_254549394();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_2544FC6B8(void *a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 setNavigationBarHidden:0 animated:0];
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC370, &qword_25454FEF8));

  v3 = sub_25454AC64();
  [a1 pushViewController:v3 animated:1];
}

void sub_2544FC7C0(void *a1, uint64_t a2)
{
  v4 = sub_25454A1C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 setNavigationBarHidden:0 animated:0];
  (*(v5 + 16))(v8, a2, v4);
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC358, &qword_25454FEE0));
  v10 = sub_25454AC64();
  [a1 pushViewController:v10 animated:1];
}

double sub_2544FC954@<D0>(char a1@<W2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_25454AB14();
  v20 = 1;
  sub_2544FCB00(a1 & 1, a2, &v13);
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v21 = v13;
  v22 = v14;
  v27[2] = v15;
  v27[3] = v16;
  v27[4] = v17;
  v27[5] = v18;
  v27[0] = v13;
  v27[1] = v14;
  sub_2544AE240(&v21, v12, &qword_27F5FC350, &qword_25454FED8);
  sub_2544AE150(v27, &qword_27F5FC350, &qword_25454FED8);

  *&v19[87] = v26;
  *&v19[71] = v25;
  *&v19[55] = v24;
  *&v19[39] = v23;
  *&v19[23] = v22;
  *&v19[7] = v21;
  v7 = *&v19[32];
  *(a3 + 65) = *&v19[48];
  v8 = *&v19[80];
  *(a3 + 81) = *&v19[64];
  *(a3 + 97) = v8;
  result = *v19;
  v10 = *&v19[16];
  *(a3 + 17) = *v19;
  *(a3 + 33) = v10;
  v11 = v20;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v11;
  *(a3 + 112) = *&v19[95];
  *(a3 + 49) = v7;
  return result;
}

uint64_t sub_2544FCB00@<X0>(char a1@<W2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2544AECF0();

  v6 = sub_25454B274();
  v8 = v7;
  v10 = v9;
  if (a1)
  {
    sub_25454B644();
  }

  else
  {
    sub_25454B6A4();
  }

  v11 = sub_25454B1E4();
  v37 = v12;
  v38 = v11;
  v14 = v13;
  v36 = v15;
  sub_2544C9C64(v6, v8, v10 & 1);

  if (a2)
  {

    v16 = sub_25454B274();
    v18 = v17;
    v20 = v19;
    v21 = sub_25454B1E4();
    v35 = v14;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_2544C9C64(v16, v18, v20 & 1);

    v28 = v25 & 1;
    a2 = v21;
    v29 = v23;
    v30 = v23;
    v14 = v35;
    sub_2544A8F00(v21, v30, v28);
    v31 = v27;
  }

  else
  {
    v29 = 0;
    v28 = 0;
    v31 = 0;
  }

  v32 = sub_25454B704();
  v33 = sub_25454B644();
  sub_2544A8F00(v38, v37, v14 & 1);

  sub_2544C9BDC(a2, v29, v28, v31);

  sub_2544C9C20(a2, v29, v28, v31);
  *a3 = v38;
  *(a3 + 8) = v37;
  *(a3 + 16) = v14 & 1;
  *(a3 + 24) = v36;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = a2;
  *(a3 + 56) = v29;
  *(a3 + 64) = v28;
  *(a3 + 72) = v31;
  *(a3 + 80) = v32;
  *(a3 + 88) = v33;

  sub_2544C9C20(a2, v29, v28, v31);
  sub_2544C9C64(v38, v37, v14 & 1);
}

__n128 sub_2544FCE2C@<Q0>(uint64_t a1@<X1>, char a2@<W4>, _OWORD *a3@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    sub_25454AB14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_2544AECF0();

    v5 = sub_25454B274();
    v7 = v6;
    v9 = v8;
    if (a2)
    {
      sub_25454B644();
    }

    else
    {
      sub_25454B6A4();
    }

    v26 = sub_25454B1E4();
    v24 = v10;
    v23 = v11;
    sub_2544C9C64(v5, v7, v9 & 1);

    v12 = sub_25454B274();
    v14 = v13;
    v16 = v15;
    v17 = sub_25454B1E4();
    v19 = v18;
    v21 = v20;
    sub_2544C9C64(v12, v14, v16 & 1);

    sub_2544A8F00(v26, v24, v23 & 1);

    sub_2544A8F00(v17, v19, v21 & 1);

    sub_2544C9C64(v17, v19, v21 & 1);

    sub_2544C9C64(v26, v24, v23 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC318, &qword_25454FEC0);
    sub_2544AE1F0(&qword_27F5FC310, &qword_27F5FC318, &qword_25454FEC0);
    sub_25454AD44();

    v33 = v31;
    *v34 = *v32;
  }

  else
  {
    sub_2544AECF0();

    sub_25454B274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC318, &qword_25454FEC0);
    sub_2544AE1F0(&qword_27F5FC310, &qword_27F5FC318, &qword_25454FEC0);
    sub_25454AD44();

    v33 = v31;
    *v34 = *v32;
  }

  *&v34[9] = *&v32[9];
  a3[4] = v33;
  a3[5] = *v34;
  *(a3 + 89) = *&v32[9];
  *a3 = v27;
  a3[1] = v28;
  result = v30;
  a3[2] = v29;
  a3[3] = v30;
  return result;
}

uint64_t sub_2544FD2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v79 = a2;
  v2 = sub_254549744();
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20](v2);
  v71 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25454A0A4();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = *(v83 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v76 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB370, &qword_254551530);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v67 - v12;
  v14 = sub_254549AB4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v74 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v67 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF08, &qword_25454FB40);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v78 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v81 = &v67 - v25;
  sub_25454BE14();
  v77 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  v26 = sub_2544FDB64(v20, v111);
  v27 = *(v15 + 8);
  v80 = v14;
  v27(v20, v14, v26);
  v69 = v27;
  v70 = v15 + 8;
  v117 = v111[4];
  v118 = v111[5];
  v119[0] = v112[0];
  *(v119 + 10) = *(v112 + 10);
  v113 = v111[0];
  v114 = v111[1];
  v115 = v111[2];
  v116 = v111[3];
  sub_25454BA54();
  sub_25454A784();
  v28 = sub_25454B044();
  (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
  v29 = sub_25454B0A4();
  sub_2544AE150(v13, &qword_27F5FB370, &qword_254551530);
  KeyPath = swift_getKeyPath();
  v99 = v119[6];
  v100 = v119[7];
  v101 = v119[8];
  v95 = v119[2];
  v96 = v119[3];
  v97 = v119[4];
  v98 = v119[5];
  v91 = v117;
  v92 = v118;
  v93 = v119[0];
  v94 = v119[1];
  v87 = v113;
  v88 = v114;
  v89 = v115;
  v90 = v116;
  *&v102 = KeyPath;
  *(&v102 + 1) = v29;
  sub_25454B7A4();
  v31 = v75;
  sub_254549AA4();
  (v27)(v20, v80);
  v32 = v71;
  sub_254549F44();
  v33 = *(v83 + 8);
  v83 += 8;
  v68 = v33;
  v33(v31, v84);
  v34 = sub_254549714();
  v36 = v35;
  (*(v72 + 8))(v32, v73);
  v104 = v34;
  v105 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF10, &qword_25454FB78);
  sub_254504B88();
  sub_2544AECF0();
  sub_25454B424();

  v103[12] = v99;
  v103[13] = v100;
  v103[14] = v101;
  v103[15] = v102;
  v103[8] = v95;
  v103[9] = v96;
  v103[10] = v97;
  v103[11] = v98;
  v103[4] = v91;
  v103[5] = v92;
  v103[6] = v93;
  v103[7] = v94;
  v103[0] = v87;
  v103[1] = v88;
  v103[2] = v89;
  v103[3] = v90;
  sub_2544AE150(v103, &qword_27F5FBF10, &qword_25454FB78);
  sub_25454B7A4();
  sub_254549AA4();
  v37 = v80;
  v38 = v69;
  v69(v20, v80);
  v39 = sub_254549F84();
  v72 = v40;
  v73 = v39;
  v41 = v31;
  v42 = v68;
  v68(v41, v84);
  v43 = v74;
  sub_25454B7A4();
  v44 = v76;
  sub_254549AA4();
  v38(v43, v37);
  v45 = sub_254549FB4();
  v47 = v46;
  v42(v44, v84);
  v48 = sub_25454AFF4();
  LOBYTE(v43) = sub_25454AF44();
  sub_25454A394();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  LOBYTE(v87) = 0;
  v57 = v81;
  v58 = v78;
  sub_2544AE240(v81, v78, &qword_27F5FBF08, &qword_25454FB40);
  v59 = v79;
  sub_2544AE240(v58, v79, &qword_27F5FBF08, &qword_25454FB40);
  v60 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF90, &qword_25454FBC8) + 48));
  v105 = 0;
  v104 = 0;
  v61 = v72;
  v62 = v73;
  *&v106 = v73;
  *(&v106 + 1) = v72;
  *&v107 = v45;
  *(&v107 + 1) = v47;
  *&v108 = v48;
  BYTE8(v108) = 0;
  HIDWORD(v108) = *&v86[3];
  *(&v108 + 9) = *v86;
  LOBYTE(v109) = v43;
  *(&v109 + 1) = *v85;
  DWORD1(v109) = *&v85[3];
  *(&v109 + 1) = v50;
  *&v110[0] = v52;
  *(&v110[0] + 1) = v54;
  *&v110[1] = v56;
  BYTE8(v110[1]) = 0;
  v63 = v106;
  *v60 = 0u;
  v60[1] = v63;
  v64 = v108;
  v60[2] = v107;
  v60[3] = v64;
  v65 = v110[0];
  v60[4] = v109;
  v60[5] = v65;
  *(v60 + 89) = *(v110 + 9);
  sub_2544AE240(&v104, &v87, &qword_27F5FBF98, &unk_25454FBD0);
  sub_2544AE150(v57, &qword_27F5FBF08, &qword_25454FB40);
  v87 = 0uLL;
  *&v88 = v62;
  *(&v88 + 1) = v61;
  *&v89 = v45;
  *(&v89 + 1) = v47;
  *&v90 = v48;
  BYTE8(v90) = 0;
  *(&v90 + 9) = *v86;
  HIDWORD(v90) = *&v86[3];
  LOBYTE(v91) = v43;
  *(&v91 + 1) = *v85;
  DWORD1(v91) = *&v85[3];
  *(&v91 + 1) = v50;
  *&v92 = v52;
  *(&v92 + 1) = v54;
  *&v93 = v56;
  BYTE8(v93) = 0;
  sub_2544AE150(&v87, &qword_27F5FBF98, &unk_25454FBD0);
  sub_2544AE150(v58, &qword_27F5FBF08, &qword_25454FB40);
}

__n128 sub_2544FDB64@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v99 = a2;
  v3 = sub_254549744();
  v95 = *(v3 - 8);
  v96 = v3;
  v4 = *(v95 + 64);
  MEMORY[0x28223BE20](v3);
  v94 = (&v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v91 - v8;
  v10 = sub_25454A0A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v92 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v91 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v93 = &v91 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v91 - v20;
  v22 = sub_254549F04();
  v23 = *(v22 - 8);
  v24 = *(v23 + 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a1;
  sub_254549AA4();
  sub_25454A064();
  v27 = v23;
  v28 = *(v11 + 8);
  v97 = v10;
  v28(v21, v10);
  if ((v27[6])(v9, 1, v22) == 1)
  {
    sub_2544AE150(v9, &qword_27F5FBCA8, &unk_254550680);
    sub_254549AA4();
    v29 = v94;
    sub_254549F44();
    v30 = v97;
    v28(v17, v97);
    sub_254549734();
    (*(v95 + 8))(v29, v96);
    v96 = sub_25454B704();
    v31 = v92;
    sub_254549AA4();
    v32 = sub_254549F94();
    v28(v31, v30);
    if (v32 == 2 || (v32 & 1) == 0)
    {
      v33 = sub_25454B644();
    }

    else
    {
      sub_254549AA4();
      v33 = sub_254549FD4();
      v28(v17, v30);
    }

    KeyPath = swift_getKeyPath();
    v50 = sub_25454AF24();
    sub_25454A394();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v115 = 0;
    v59 = sub_25454AF44();
    sub_25454A394();
    v116 = 0;
    *&v108 = v96;
    *(&v108 + 1) = KeyPath;
    *&v109 = v33;
    BYTE8(v109) = v50;
    v110.n128_u64[0] = v52;
    v110.n128_u64[1] = v54;
    *&v111 = v56;
    *(&v111 + 1) = v58;
    LOBYTE(v112) = 0;
    BYTE8(v112) = v59;
    *&v113 = v60;
    *(&v113 + 1) = v61;
    *&v114[0] = v62;
    *(&v114[0] + 1) = v63;
    LOBYTE(v114[1]) = 0;
    sub_254505040(&v108);
    v105 = v112;
    v106 = v113;
    v107[0] = v114[0];
    *(v107 + 10) = *(v114 + 10);
    v101 = v108;
    v102 = v109;
    v103 = v110;
    v104 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF48, &qword_25454FB90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF68, &qword_25454FBA0);
    sub_254504D58();
    sub_254504E68();
    sub_25454AD44();
  }

  else
  {
    v94 = v27;
    v95 = v22;
    v27[4](v26, v9, v22);
    v96 = v26;
    *&v117 = sub_254549EC4();
    *(&v117 + 1) = v34;
    sub_2544AECF0();
    v35 = sub_25454B274();
    v37 = v36;
    v39 = v38;
    sub_25454B054();
    v40 = sub_25454B194();
    v42 = v41;
    v43 = v28;
    v45 = v44;
    v92 = v46;
    sub_2544C9C64(v35, v37, v39 & 1);

    v47 = v93;
    sub_254549AA4();
    v48 = sub_254549F94();
    v43(v47, v97);
    if (v48 == 2 || (v48 & 1) == 0)
    {
      sub_25454B644();
    }

    else
    {
      sub_254549EF4();
    }

    v64 = sub_25454B1D4();
    v66 = v65;
    v68 = v67;
    v70 = v69;

    sub_2544C9C64(v40, v42, v45 & 1);

    v71 = sub_25454AF44();
    sub_25454A394();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v68 & 1;
    v115 = v68 & 1;
    v100 = 0;
    v81 = sub_25454AF64();
    sub_25454A394();
    v116 = 0;
    *&v108 = v64;
    *(&v108 + 1) = v66;
    LOBYTE(v109) = v80;
    *(&v109 + 1) = v70;
    v110.n128_u8[0] = v71;
    v110.n128_u64[1] = v73;
    *&v111 = v75;
    *(&v111 + 1) = v77;
    *&v112 = v79;
    BYTE8(v112) = 0;
    LOBYTE(v113) = v81;
    *(&v113 + 1) = v82;
    *&v114[0] = v83;
    *(&v114[0] + 1) = v84;
    *&v114[1] = v85;
    BYTE8(v114[1]) = 0;
    sub_25450504C(&v108);
    v121 = v112;
    v122 = v113;
    v123[0] = v114[0];
    *(v123 + 10) = *(v114 + 10);
    v117 = v108;
    v118 = v109;
    v119 = v110;
    v120 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF48, &qword_25454FB90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF68, &qword_25454FBA0);
    sub_254504D58();
    sub_254504E68();
    sub_25454AD44();
    v94[1](v96, v95);
    v121 = v105;
    v122 = v106;
    v123[0] = v107[0];
    *(v123 + 10) = *(v107 + 10);
    v117 = v101;
    v118 = v102;
    v119 = v103;
    v120 = v104;
  }

  v86 = v122;
  v87 = v99;
  v99[4] = v121;
  v87[5] = v86;
  v87[6] = v123[0];
  *(v87 + 106) = *(v123 + 10);
  v88 = v118;
  *v87 = v117;
  v87[1] = v88;
  result = v119;
  v90 = v120;
  v87[2] = v119;
  v87[3] = v90;
  return result;
}

uint64_t sub_2544FE2F4@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC378, &qword_25454FF00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v72 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC380, &qword_25454FF08);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v90 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v72 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v88 = &v72 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v87 = &v72 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v72 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v93 = &v72 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v92 = &v72 - v21;
  MEMORY[0x28223BE20](v20);
  v91 = &v72 - v22;
  sub_25454BE14();
  v81 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_254549D44();
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    *v5 = sub_25454AB14();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A0, &qword_25454FF28);
    sub_2544FEAF8(v25, v26, &v5[*(v27 + 44)]);

    v28 = v91;
    sub_2544B14E8(v5, v91, &qword_27F5FC378, &qword_25454FF00);
    v29 = *(v2 + 56);
    v29(v28, 0, 1, v1);
  }

  else
  {
    v29 = *(v2 + 56);
    v29(v91, 1, 1, v1);
  }

  v30 = sub_254549D54();
  v32 = 1;
  if (v31)
  {
    v33 = v30;
    v34 = v31;
    *v5 = sub_25454AB14();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A0, &qword_25454FF28);
    sub_2544FEEF8(v33, v34, &v5[*(v35 + 44)]);

    v36 = v92;
    sub_2544B14E8(v5, v92, &qword_27F5FC378, &qword_25454FF00);
    v32 = 0;
  }

  else
  {
    v36 = v92;
  }

  v37 = 1;
  v29(v36, v32, 1, v1);
  v38 = sub_254549D74();
  if (v39)
  {
    v40 = v38;
    v41 = v39;
    *v5 = sub_25454AB14();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A0, &qword_25454FF28);
    sub_2544FF2F8(v40, v41, &v5[*(v42 + 44)]);

    v43 = v93;
    sub_2544B14E8(v5, v93, &qword_27F5FC378, &qword_25454FF00);
    v37 = 0;
  }

  else
  {
    v43 = v93;
  }

  v44 = 1;
  v29(v43, v37, 1, v1);
  v45 = sub_254549D64();
  if (v46)
  {
    v47 = v45;
    v48 = v46;
    *v5 = sub_25454AB14();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A0, &qword_25454FF28);
    sub_2544FF6F8(v47, v48, &v5[*(v49 + 44)]);

    v50 = v86;
    sub_2544B14E8(v5, v86, &qword_27F5FC378, &qword_25454FF00);
    v44 = 0;
  }

  else
  {
    v50 = v86;
  }

  v29(v50, v44, 1, v1);
  if (sub_254549D84())
  {
    v82 = 0;
    v83 = 0;
    v78 = 0;
    v79 = 0;
    v76 = 0;
    v77 = 0;
    v84 = 0;
    v85 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    v51 = 0;
  }

  else
  {
    v82 = sub_25454AB14();
    v115 = 1;
    sub_2544FFAF8(&v110);
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v94 = v110;
    v95 = v111;
    v103 = v112;
    v104 = v113;
    v105 = v114;
    v101 = v110;
    v102 = v111;
    sub_2544AE240(&v94, &v109, &qword_27F5FC388, &qword_25454FF10);
    sub_2544AE150(&v101, &qword_27F5FC388, &qword_25454FF10);
    v78 = *(&v94 + 1);
    v79 = v94;
    v76 = v96;
    v77 = v95;
    v75 = *(&v96 + 1);
    v84 = *(&v97 + 1);
    v85 = *(&v95 + 1);
    v73 = *(&v98 + 1);
    v83 = v98;
    v74 = v97;
    v51 = v115;
  }

  v52 = v92;
  v72 = v51;
  v53 = v87;
  sub_2544AE240(v91, v87, &qword_27F5FC380, &qword_25454FF08);
  v54 = v88;
  sub_2544AE240(v52, v88, &qword_27F5FC380, &qword_25454FF08);
  v55 = v89;
  sub_2544AE240(v93, v89, &qword_27F5FC380, &qword_25454FF08);
  v56 = v50;
  v57 = v90;
  sub_2544AE240(v56, v90, &qword_27F5FC380, &qword_25454FF08);
  v58 = v80;
  sub_2544AE240(v53, v80, &qword_27F5FC380, &qword_25454FF08);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC390, &qword_25454FF18);
  sub_2544AE240(v54, v58 + v59[12], &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE240(v55, v58 + v59[16], &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE240(v57, v58 + v59[20], &qword_27F5FC380, &qword_25454FF08);
  v60 = v58 + v59[24];
  v94 = v82;
  v62 = v78;
  v61 = v79;
  *&v95 = v51;
  *(&v95 + 1) = v79;
  v64 = v76;
  v63 = v77;
  *&v96 = v78;
  *(&v96 + 1) = v77;
  *&v97 = v85;
  *(&v97 + 1) = v76;
  v65 = v74;
  v66 = v75;
  *&v98 = v75;
  *(&v98 + 1) = v74;
  *&v99 = v84;
  *(&v99 + 1) = v83;
  v67 = v73;
  v100 = v73;
  v68 = v99;
  *(v60 + 64) = v98;
  *(v60 + 80) = v68;
  *(v60 + 96) = v67;
  v69 = v95;
  *v60 = v94;
  *(v60 + 16) = v69;
  v70 = v97;
  *(v60 + 32) = v96;
  *(v60 + 48) = v70;
  sub_2544AE240(&v94, &v101, &qword_27F5FC398, &qword_25454FF20);
  sub_2544AE150(v86, &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE150(v93, &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE150(v92, &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE150(v91, &qword_27F5FC380, &qword_25454FF08);
  v101 = v82;
  *&v102 = v72;
  *(&v102 + 1) = v61;
  *&v103 = v62;
  *(&v103 + 1) = v63;
  *&v104 = v85;
  *(&v104 + 1) = v64;
  *&v105 = v66;
  *(&v105 + 1) = v65;
  v106 = v84;
  v107 = v83;
  v108 = v67;
  sub_2544AE150(&v101, &qword_27F5FC398, &qword_25454FF20);
  sub_2544AE150(v90, &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE150(v89, &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE150(v88, &qword_27F5FC380, &qword_25454FF08);
  sub_2544AE150(v87, &qword_27F5FC380, &qword_25454FF08);
}

uint64_t sub_2544FEAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25454AE74();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A8, &qword_25454FF30);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v54 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  sub_25454BE14();
  v53 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v57 = sub_25454BCF4();
  v58 = v15;
  sub_2544AECF0();
  v16 = sub_25454B274();
  v46 = v17;
  v47 = v16;
  v48 = v18;
  v49 = v19;
  v57 = a1;
  v58 = a2;

  v20 = sub_25454B274();
  v22 = v21;
  v24 = v23;
  LODWORD(v57) = sub_25454AE44();
  v25 = sub_25454B1E4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_2544C9C64(v20, v22, v24 & 1);

  v57 = v25;
  v58 = v27;
  v32 = v29 & 1;
  v59 = v29 & 1;
  v60 = v31;
  v33 = v50;
  sub_25454AE64();
  v45 = v14;
  v34 = v52;
  sub_25454B344();
  (*(v51 + 8))(v33, v34);
  sub_2544C9C64(v25, v27, v32);

  v36 = v54;
  v35 = v55;
  v37 = *(v55 + 16);
  v38 = v56;
  v37(v54, v14, v56);
  v39 = v46;
  v40 = v47;
  *a3 = v47;
  *(a3 + 8) = v39;
  LOBYTE(v20) = v48 & 1;
  *(a3 + 16) = v48 & 1;
  *(a3 + 24) = v49;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3B0, &qword_25454FF38);
  v37((a3 + *(v41 + 64)), v36, v38);
  sub_2544A8F00(v40, v39, v20);
  v42 = *(v35 + 8);

  v42(v45, v38);
  v42(v36, v38);
  sub_2544C9C64(v40, v39, v20);
}

uint64_t sub_2544FEEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25454AE74();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A8, &qword_25454FF30);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v54 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  sub_25454BE14();
  v53 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v57 = sub_25454BCF4();
  v58 = v15;
  sub_2544AECF0();
  v16 = sub_25454B274();
  v46 = v17;
  v47 = v16;
  v48 = v18;
  v49 = v19;
  v57 = a1;
  v58 = a2;

  v20 = sub_25454B274();
  v22 = v21;
  v24 = v23;
  LODWORD(v57) = sub_25454AE44();
  v25 = sub_25454B1E4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_2544C9C64(v20, v22, v24 & 1);

  v57 = v25;
  v58 = v27;
  v32 = v29 & 1;
  v59 = v29 & 1;
  v60 = v31;
  v33 = v50;
  sub_25454AE64();
  v45 = v14;
  v34 = v52;
  sub_25454B344();
  (*(v51 + 8))(v33, v34);
  sub_2544C9C64(v25, v27, v32);

  v36 = v54;
  v35 = v55;
  v37 = *(v55 + 16);
  v38 = v56;
  v37(v54, v14, v56);
  v39 = v46;
  v40 = v47;
  *a3 = v47;
  *(a3 + 8) = v39;
  LOBYTE(v20) = v48 & 1;
  *(a3 + 16) = v48 & 1;
  *(a3 + 24) = v49;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3B0, &qword_25454FF38);
  v37((a3 + *(v41 + 64)), v36, v38);
  sub_2544A8F00(v40, v39, v20);
  v42 = *(v35 + 8);

  v42(v45, v38);
  v42(v36, v38);
  sub_2544C9C64(v40, v39, v20);
}

uint64_t sub_2544FF2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25454AE74();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A8, &qword_25454FF30);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v54 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  sub_25454BE14();
  v53 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v57 = sub_25454BCF4();
  v58 = v15;
  sub_2544AECF0();
  v16 = sub_25454B274();
  v46 = v17;
  v47 = v16;
  v48 = v18;
  v49 = v19;
  v57 = a1;
  v58 = a2;

  v20 = sub_25454B274();
  v22 = v21;
  v24 = v23;
  LODWORD(v57) = sub_25454AE44();
  v25 = sub_25454B1E4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_2544C9C64(v20, v22, v24 & 1);

  v57 = v25;
  v58 = v27;
  v32 = v29 & 1;
  v59 = v29 & 1;
  v60 = v31;
  v33 = v50;
  sub_25454AE64();
  v45 = v14;
  v34 = v52;
  sub_25454B344();
  (*(v51 + 8))(v33, v34);
  sub_2544C9C64(v25, v27, v32);

  v36 = v54;
  v35 = v55;
  v37 = *(v55 + 16);
  v38 = v56;
  v37(v54, v14, v56);
  v39 = v46;
  v40 = v47;
  *a3 = v47;
  *(a3 + 8) = v39;
  LOBYTE(v20) = v48 & 1;
  *(a3 + 16) = v48 & 1;
  *(a3 + 24) = v49;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3B0, &qword_25454FF38);
  v37((a3 + *(v41 + 64)), v36, v38);
  sub_2544A8F00(v40, v39, v20);
  v42 = *(v35 + 8);

  v42(v45, v38);
  v42(v36, v38);
  sub_2544C9C64(v40, v39, v20);
}

uint64_t sub_2544FF6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25454AE74();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3A8, &qword_25454FF30);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v54 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  sub_25454BE14();
  v53 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v57 = sub_25454BCF4();
  v58 = v15;
  sub_2544AECF0();
  v16 = sub_25454B274();
  v46 = v17;
  v47 = v16;
  v48 = v18;
  v49 = v19;
  v57 = a1;
  v58 = a2;

  v20 = sub_25454B274();
  v22 = v21;
  v24 = v23;
  LODWORD(v57) = sub_25454AE44();
  v25 = sub_25454B1E4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_2544C9C64(v20, v22, v24 & 1);

  v57 = v25;
  v58 = v27;
  v32 = v29 & 1;
  v59 = v29 & 1;
  v60 = v31;
  v33 = v50;
  sub_25454AE64();
  v45 = v14;
  v34 = v52;
  sub_25454B344();
  (*(v51 + 8))(v33, v34);
  sub_2544C9C64(v25, v27, v32);

  v36 = v54;
  v35 = v55;
  v37 = *(v55 + 16);
  v38 = v56;
  v37(v54, v14, v56);
  v39 = v46;
  v40 = v47;
  *a3 = v47;
  *(a3 + 8) = v39;
  LOBYTE(v20) = v48 & 1;
  *(a3 + 16) = v48 & 1;
  *(a3 + 24) = v49;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3B0, &qword_25454FF38);
  v37((a3 + *(v41 + 64)), v36, v38);
  sub_2544A8F00(v40, v39, v20);
  v42 = *(v35 + 8);

  v42(v45, v38);
  v42(v36, v38);
  sub_2544C9C64(v40, v39, v20);
}

uint64_t sub_2544FFAF8@<X0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254549D34();
  sub_25454BCF4();
  sub_25454BCF4();
  sub_2544AECF0();
  v20 = sub_25454B274();
  v21 = v2;
  v4 = v3;
  v19 = v5;
  v6 = sub_25454B274();
  v8 = v7;
  v10 = v9;
  sub_25454AE44();
  v11 = sub_25454B1E4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2544C9C64(v6, v8, v10 & 1);

  *a1 = v20;
  *(a1 + 8) = v4;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13;
  *(a1 + 64) = v15 & 1;
  *(a1 + 72) = v17;
  sub_2544A8F00(v20, v4, v19 & 1);

  sub_2544A8F00(v11, v13, v15 & 1);

  sub_2544C9C64(v11, v13, v15 & 1);

  sub_2544C9C64(v20, v4, v19 & 1);
}

uint64_t sub_2544FFD54(uint64_t a1)
{
  v3 = sub_25454AD84();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEA8, &qword_25454FAC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  sub_25454AD64();
  v13 = *(a1 + 16);
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEF0, &qword_25454FB00);
  sub_2544AE1F0(&qword_27F5FBEF8, &qword_27F5FBEF0, &qword_25454FB00);
  sub_25454A494();
  v10 = sub_2544AE1F0(&qword_27F5FBEB0, &qword_27F5FBEA8, &qword_25454FAC8);
  MEMORY[0x259C0DED0](v9, v5, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2544FFF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15[1] = a4;
  v7 = type metadata accessor for AccessoryDetailsView.ToolbarModifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_25454B7F4();
}

uint64_t sub_254500120(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (*a1)
  {
    v3 = *(a1 + 8);
    (*a1)(isCurrentExecutor);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    [v4 setNavigationBarHidden:0 animated:0];
  }
}

uint64_t sub_2545001E8@<X0>(uint64_t *a1@<X8>)
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

uint64_t sub_254500294(uint64_t a1)
{
  v3 = sub_25454AD84();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEC0, &qword_25454FAD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  sub_25454AD74();
  v13 = *(a1 + 16);
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC38, &qword_25454F670);
  sub_2544AE1F0(&qword_27F5FBC30, &qword_27F5FBC38, &qword_25454F670);
  sub_25454A494();
  v10 = sub_2544AE1F0(&qword_27F5FBEC8, &qword_27F5FBEC0, &qword_25454FAD8);
  MEMORY[0x259C0DED0](v9, v5, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_254500488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a1;
  v18[1] = a4;
  v6 = type metadata accessor for AccessoryDetailsView.ToolbarModifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = sub_25454A384();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454A364();
  (*(v7 + 16))(v10, v18[0], v6);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v7 + 32))(v16 + v15, v10, v6);
  MEMORY[0x259C0E900](v14, sub_25450488C, v16);
}

uint64_t sub_254500684(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (*a1)
  {
    v3 = *(a1 + 8);
    (*a1)(isCurrentExecutor);
  }
}

uint64_t sub_254500730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a1;
  v55 = a3;
  swift_getWitnessTable();
  v4 = sub_25454AE24();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE78, &qword_25454FAA8);
  v45 = v4;
  WitnessTable = swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE80, &qword_25454FAB0);
  sub_2545044BC();
  v72 = v4;
  v73 = v5;
  v44 = v5;
  v74 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = WitnessTable;
  v7 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v51 = &v41 - v9;
  v46 = *(a2 + 16);
  sub_25454A714();
  v10 = sub_25454A714();
  v50 = *(a2 + 24);
  v70 = v50;
  v71 = MEMORY[0x277CDF918];
  v68 = swift_getWitnessTable();
  v69 = MEMORY[0x277CDFC48];
  v11 = swift_getWitnessTable();
  v72 = v10;
  v73 = v11;
  v12 = swift_getOpaqueTypeMetadata2();
  v72 = v10;
  v73 = v11;
  v13 = swift_getOpaqueTypeConformance2();
  v72 = v12;
  v73 = v13;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_25454BAF4();
  swift_getWitnessTable();
  sub_25454B834();
  sub_25454A714();
  v14 = sub_25454C054();
  v72 = v45;
  v73 = v5;
  v74 = WitnessTable;
  OpaqueTypeConformance2 = v7;
  v15 = swift_getOpaqueTypeConformance2();
  v42 = v15;
  v66 = swift_getWitnessTable();
  v67 = MEMORY[0x277CDF918];
  v65 = swift_getWitnessTable();
  v41 = v14;
  v16 = swift_getWitnessTable();
  v72 = OpaqueTypeMetadata2;
  v73 = v14;
  v74 = v15;
  OpaqueTypeConformance2 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v47 = *(v17 - 8);
  v18 = *(v47 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  v48 = v21;
  v22 = sub_25454A714();
  v49 = *(v22 - 8);
  v23 = *(v49 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v41 - v27;
  v29 = v46;
  v30 = v50;
  v60 = v46;
  v61 = v50;
  v31 = v52;
  v62 = v52;
  swift_checkMetadataState();
  v32 = v51;
  sub_25454B554();
  v57 = v29;
  v58 = v30;
  v59 = v31;
  sub_25454AC14();
  v33 = swift_checkMetadataState();
  v54 = v16;
  v34 = v42;
  v35 = OpaqueTypeMetadata2;
  sub_25454B534();
  (*(v53 + 8))(v32, v35);
  if (*(v31 + 24))
  {
    sub_25454AF54();
  }

  else
  {
    sub_25454AF24();
  }

  sub_25454A734();
  v72 = v35;
  v73 = v33;
  v74 = v34;
  OpaqueTypeConformance2 = v54;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v48;
  sub_25454B394();
  (*(v47 + 8))(v20, v37);
  v63 = v36;
  v64 = MEMORY[0x277CE0880];
  v38 = swift_getWitnessTable();
  sub_2544DAD5C(v26, v22, v38);
  v39 = *(v49 + 8);
  v39(v26, v22);
  sub_2544DAD5C(v28, v22, v38);
  return (v39)(v28, v22);
}

uint64_t sub_254500EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a2;
  v69 = a3;
  v80 = a4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBED8, &qword_25454FAE8);
  v75 = *(v79 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v79);
  v74 = &v64 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEE0, &qword_25454FAF0);
  v67 = *(v73 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v73);
  v9 = &v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEA0, &qword_25454FAC0);
  v66 = *(v10 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEE8, &qword_25454FAF8);
  v65 = *(v71 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v71);
  v16 = &v64 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBEB8, &qword_25454FAD0);
  v64 = *(v70 - 8);
  v17 = *(v64 + 64);
  MEMORY[0x28223BE20](v70);
  v19 = &v64 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBE90, &qword_25454FAB8);
  v20 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v72 = &v64 - v21;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBE80, &qword_25454FAB0);
  v22 = *(*(v78 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v78);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v64 - v26;
  sub_25454BE14();
  v77 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1 && (*(a1 + 16) & 1) == 0)
  {
    v34 = *(a1 + 24);
    v35 = type metadata accessor for AccessoryDetailsView.ToolbarModifier();
    if (v34)
    {
      sub_2544FFD54(v35);
      v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEA8, &qword_25454FAC8);
      v37 = sub_2544AE1F0(&qword_27F5FBEB0, &qword_27F5FBEA8, &qword_25454FAC8);
      v81 = v36;
      v82 = v37;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x259C0DED0](v13, v10, OpaqueTypeConformance2);
      v81 = v10;
      v82 = OpaqueTypeConformance2;
      v69 = swift_getOpaqueTypeConformance2();
      v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEC0, &qword_25454FAD8);
      v40 = sub_2544AE1F0(&qword_27F5FBEC8, &qword_27F5FBEC0, &qword_25454FAD8);
      v81 = v39;
      v82 = v40;
      v41 = swift_getOpaqueTypeConformance2();
      v81 = v70;
      v82 = v41;
      v42 = swift_getOpaqueTypeConformance2();
      v44 = v72;
      v43 = v73;
      MEMORY[0x259C0DEE0](v9, v73, v71, v69, v42);
      (*(v67 + 8))(v9, v43);
      (*(v66 + 8))(v13, v10);
    }

    else
    {
      sub_254500294(v35);
      v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEC0, &qword_25454FAD8);
      v68 = MEMORY[0x277CDD7A8];
      v46 = sub_2544AE1F0(&qword_27F5FBEC8, &qword_27F5FBEC0, &qword_25454FAD8);
      v81 = v45;
      v82 = v46;
      v69 = swift_getOpaqueTypeConformance2();
      v47 = v70;
      MEMORY[0x259C0DED0](v19, v70, v69);
      v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEA8, &qword_25454FAC8);
      v49 = sub_2544AE1F0(&qword_27F5FBEB0, &qword_27F5FBEA8, &qword_25454FAC8);
      v81 = v48;
      v82 = v49;
      v50 = swift_getOpaqueTypeConformance2();
      v81 = v10;
      v82 = v50;
      v51 = swift_getOpaqueTypeConformance2();
      v81 = v47;
      v82 = v69;
      v52 = swift_getOpaqueTypeConformance2();
      v53 = v72;
      v54 = v71;
      MEMORY[0x259C0DEF0](v16, v73, v71, v51, v52);
      (*(v65 + 8))(v16, v54);
      v55 = v19;
      v44 = v53;
      (*(v64 + 8))(v55, v47);
    }

    v56 = sub_25450457C();
    v57 = v74;
    v58 = v76;
    MEMORY[0x259C0DED0](v44, v76, v56);
    v59 = v75;
    v60 = v79;
    (*(v75 + 16))(v25, v57, v79);
    (*(v59 + 56))(v25, 0, 1, v60);
    v81 = v58;
    v82 = v56;
    v61 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C0DF00](v25, v60, v61);
    sub_2544AE150(v25, &qword_27F5FBE80, &qword_25454FAB0);
    (*(v59 + 8))(v57, v60);
    v31 = &qword_27F5FBE90;
    v32 = &qword_25454FAB8;
    v33 = v44;
  }

  else
  {
    v28 = v79;
    (*(v75 + 56))(v25, 1, 1, v79);
    v29 = sub_25450457C();
    v81 = v76;
    v82 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C0DF00](v25, v28, v30);
    v31 = &qword_27F5FBE80;
    v32 = &qword_25454FAB0;
    v33 = v25;
  }

  sub_2544AE150(v33, v31, v32);
  v62 = sub_2545044BC();
  MEMORY[0x259C0DED0](v27, v78, v62);
  sub_2544AE150(v27, &qword_27F5FBE80, &qword_25454FAB0);
}

uint64_t sub_25450176C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v43 = a2;
  sub_25454A714();
  sub_25454A714();
  v6 = MEMORY[0x277CDF918];
  v44 = a3;
  v60 = a3;
  v61 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v59 = MEMORY[0x277CDFC48];
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v40 = sub_25454BAF4();
  v38[1] = swift_getWitnessTable();
  v7 = sub_25454B834();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v38 - v9;
  v12 = v11;
  v13 = sub_25454A714();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v39 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v41 = v38 - v18;
  v19 = sub_25454C054();
  v45 = *(v19 - 8);
  v20 = *(v45 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v48 = v38 - v24;
  sub_25454BE14();
  v46 = sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 24))
  {
    (*(v14 + 56))(v23, 1, 1, v13);
    v49 = swift_getWitnessTable();
    v50 = v6;
    swift_getWitnessTable();
  }

  else
  {
    MEMORY[0x28223BE20](isCurrentExecutor);
    v26 = v44;
    v38[-4] = v43;
    v38[-3] = v26;
    v38[-2] = a1;
    sub_25454AB14();
    v27 = v10;
    sub_25454B824();
    sub_25454AF34();
    v28 = swift_getWitnessTable();
    v29 = v39;
    sub_25454B544();
    (*(v42 + 8))(v27, v12);
    v54 = v28;
    v55 = v6;
    v30 = swift_getWitnessTable();
    v31 = v41;
    sub_2544DAD5C(v29, v13, v30);
    v32 = *(v14 + 8);
    v32(v29, v13);
    sub_2544DAD5C(v31, v13, v30);
    v32(v31, v13);
    v6 = MEMORY[0x277CDF918];
    (*(v14 + 32))(v23, v29, v13);
    (*(v14 + 56))(v23, 0, 1, v13);
  }

  v33 = v45;
  v34 = v48;
  (*(v45 + 16))(v48, v23, v19);
  v35 = *(v33 + 8);
  v35(v23, v19);
  v52 = swift_getWitnessTable();
  v53 = v6;
  v51 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  sub_2544DAD5C(v34, v19, v36);
  v35(v34, v19);
}

uint64_t sub_254501E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a1;
  v63 = a4;
  v6 = sub_25454AC04();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = &WitnessTable - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a2;
  v9 = sub_25454A714();
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = &WitnessTable - v11;
  v12 = sub_25454A714();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v54 = &WitnessTable - v14;
  v59 = a3;
  v73 = a3;
  v74 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v71 = WitnessTable;
  v72 = MEMORY[0x277CDFC48];
  v15 = swift_getWitnessTable();
  v69 = v12;
  v70 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = *(OpaqueTypeMetadata2 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v47 = &WitnessTable - v18;
  v69 = v12;
  v70 = v15;
  v46 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = OpaqueTypeMetadata2;
  v70 = OpaqueTypeConformance2;
  v45 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeMetadata2();
  v48 = *(v20 - 8);
  v21 = *(v48 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v53 = &WitnessTable - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &WitnessTable - v25;
  MEMORY[0x28223BE20](v24);
  v50 = &WitnessTable - v27;
  sub_25454BE14();
  v49 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBED0, &qword_25454FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25454D8D0;
  v29 = sub_25454AF24();
  *(inited + 32) = v29;
  v30 = sub_25454AF44();
  *(inited + 33) = v30;
  v31 = sub_25454AF64();
  *(inited + 34) = v31;
  sub_25454AF54();
  sub_25454AF54();
  if (sub_25454AF54() != v29)
  {
    sub_25454AF54();
  }

  sub_25454AF54();
  if (sub_25454AF54() != v30)
  {
    sub_25454AF54();
  }

  sub_25454AF54();
  if (sub_25454AF54() != v31)
  {
    sub_25454AF54();
  }

  v32 = v57 + *(type metadata accessor for AccessoryDetailsView.ToolbarModifier() + 44);
  v33 = v52;
  sub_25454B544();
  v34 = v54;
  sub_25454B594();
  (*(v55 + 8))(v33, v9);
  sub_25454AEE4();
  sub_25454BA64();
  v35 = v47;
  sub_25454B4B4();
  (*(v56 + 8))(v34, v12);
  v36 = v60;
  sub_25454ABF4();
  v37 = v45;
  sub_25454B334();
  (*(v61 + 8))(v36, v62);
  (*(v51 + 8))(v35, OpaqueTypeMetadata2);
  v69 = OpaqueTypeMetadata2;
  v70 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v50;
  sub_2544DAD5C(v26, v20, v38);
  v40 = v48;
  v41 = *(v48 + 8);
  v41(v26, v20);
  v42 = v53;
  (*(v40 + 16))(v53, v39, v20);
  v67 = 0;
  v68 = 1;
  v69 = v42;
  v70 = &v67;
  v66[0] = v20;
  v66[1] = MEMORY[0x277CE1180];
  v64 = v38;
  v65 = MEMORY[0x277CE1170];
  sub_2544E307C(&v69, 2uLL, v66);
  v41(v39, v20);
  v41(v42, v20);
}

void *sub_2545025C8()
{
  v1 = v0[3];

  sub_2544AE150((v0 + 4), &qword_27F5FBCC8, &qword_25454F720);
  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[13];

  v5 = v0[14];

  v6 = v0[15];

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v7 = v0[21];

  v8 = v0[22];

  v9 = v0[24];

  v10 = v0[25];

  v11 = v0[26];

  v12 = v0[28];

  v13 = v0[30];

  v14 = v0[32];

  v15 = v0[34];

  v16 = v0[36];

  v17 = v0[38];

  v18 = v0[40];

  v19 = v0[46];

  return v0;
}

uint64_t sub_254502698()
{
  sub_2545025C8();

  return swift_deallocClassInstance();
}

uint64_t sub_25450281C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 224);

  return v1;
}

uint64_t sub_254502850()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 240);

  return v1;
}

uint64_t sub_254502884()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 256);

  return v1;
}

uint64_t sub_2545028B8()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 272);

  return v1;
}

uint64_t sub_2545028EC()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 288);

  return v1;
}

uint64_t sub_254502920()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 304);

  return v1;
}

uint64_t sub_254502954()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 320);

  return v1;
}

uint64_t sub_2545029B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2545029C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254502A24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_254502A34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_254502A6C()
{
  v1 = [*(v0 + 16) popViewControllerAnimated_];
}

uint64_t sub_254502AAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_254502B78(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2544AE59C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_254502B78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_254502C84(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25454C194();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_254502C84(uint64_t a1, unint64_t a2)
{
  v4 = sub_254502CD0(a1, a2);
  sub_254502E00(&unk_28666D8F0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_254502CD0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_254502EEC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25454C194();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25454BD54();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_254502EEC(v10, 0);
        result = sub_25454C144();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_254502E00(uint64_t result)
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

  result = sub_254502F60(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

void *sub_254502EEC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC618, &unk_2545503A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_254502F60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC618, &unk_2545503A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_254503060()
{
  result = qword_27F5FBD00;
  if (!qword_27F5FBD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBCF8, &qword_25454F750);
    sub_254503118();
    sub_2544AE1F0(&qword_27F5FBD38, &qword_27F5FBD40, &qword_25454F770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBD00);
  }

  return result;
}

unint64_t sub_254503118()
{
  result = qword_27F5FBD08;
  if (!qword_27F5FBD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBD10, &qword_25454F758);
    sub_2544AE1F0(&qword_27F5FBD18, &qword_27F5FBD20, &unk_25454F760);
    sub_2544AE1F0(&qword_27F5FBD28, &qword_27F5FBD30, &unk_254550C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBD08);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = type metadata accessor for AccessoryDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_254549AB4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28));

  v8 = (v0 + v3 + v1[5]);
  __swift_destroy_boxed_opaque_existential_0(v8);
  v9 = v8[5];

  v10 = (v0 + v3 + v1[6]);
  if (*v10)
  {
    v11 = v10[1];
  }

  MEMORY[0x259C0FEC0](v5 + v1[7]);
  v12 = *(v5 + v1[9] + 8);

  v13 = *(v5 + v1[10] + 8);

  v14 = *(v5 + v1[11] + 8);

  v15 = *(v5 + v1[12] + 8);

  v16 = *(v5 + v1[13] + 8);

  v17 = *(v5 + v1[14] + 8);

  v18 = *(v5 + v1[15] + 8);

  v19 = *(v5 + v1[16] + 8);

  v20 = v5 + v1[17];
  v21 = *(v20 + 8);

  v22 = *(v20 + 16);

  v23 = (v5 + v1[18]);
  __swift_destroy_boxed_opaque_existential_0(v23);
  v24 = v23[5];

  v25 = v5 + v1[19];
  if (*(v25 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v5 + v1[19]));
  }

  v26 = *(v25 + 40);

  v27 = (v5 + v1[20]);
  v28 = *v27;

  v29 = v27[1];

  v30 = (v5 + v1[21]);
  v31 = *v30;

  v32 = v30[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_254503470(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_254503514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2545035F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_2545036BC()
{
  sub_25450391C();
  if (v0 <= 0x3F)
  {
    sub_2545039C0(319, &qword_27F5FBD70, &qword_27F5FBCE0, &qword_25454F738, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2545039C0(319, &qword_27F5FBD78, &qword_27F5FBD80, &qword_25454F7F8, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_254503974(319, &qword_27F5FAE28);
        if (v3 <= 0x3F)
        {
          sub_254503974(319, &qword_27F5FBD88);
          if (v4 <= 0x3F)
          {
            sub_2545039C0(319, &qword_27F5FBD90, &qword_27F5FBCE8, &qword_25454F740, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_2545039C0(319, &qword_27F5FBD98, &qword_27F5FBCC8, &qword_25454F720, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_254503974(319, &qword_27F5FBDA0);
                if (v7 <= 0x3F)
                {
                  sub_2545039C0(319, &qword_27F5FBDA8, &qword_27F5FBCD0, &qword_25454F728, MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
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
  }
}

void sub_25450391C()
{
  if (!qword_27F5FBD68)
  {
    sub_254549AB4();
    v0 = sub_25454B7D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FBD68);
    }
  }
}

void sub_254503974(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25454B7D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2545039C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_254503AC0()
{
  result = qword_27F5FBDB0;
  if (!qword_27F5FBDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBD50, &qword_25454F780);
    sub_254503B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBDB0);
  }

  return result;
}

unint64_t sub_254503B4C()
{
  result = qword_27F5FBDB8;
  if (!qword_27F5FBDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBD48, &qword_25454F778);
    sub_2544AE1F0(&qword_27F5FBDC0, qword_27F5FBDC8, &qword_25454F9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBDB8);
  }

  return result;
}

void sub_254503C04(uint64_t a1)
{
  sub_2545039C0(319, &qword_27F5FBD78, &qword_27F5FBD80, &qword_25454F7F8, MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    sub_2545040F0();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_254503CD8(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
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
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 32) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      if ((v15 + 1) >= 2)
      {
        return v15;
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

void sub_254503E70(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 32) & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

void sub_2545040F0()
{
  if (!qword_27F5FBE50)
  {
    sub_2544AE2B0(255, &qword_27F5FBE58, 0x277D757A0);
    v0 = sub_25454C054();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FBE50);
    }
  }
}

uint64_t sub_25450416C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254549394();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_254504240(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_254549394();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25450431C()
{
  result = sub_254549394();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2545043D8(uint64_t a1)
{
  result = sub_254504430(&qword_27F5FBE70, type metadata accessor for PreviewSuggestedAutomationsViewCoordinator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254504430(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2545044BC()
{
  result = qword_27F5FBE88;
  if (!qword_27F5FBE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE80, &qword_25454FAB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE90, &qword_25454FAB8);
    sub_25450457C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBE88);
  }

  return result;
}

unint64_t sub_25450457C()
{
  result = qword_27F5FBE98;
  if (!qword_27F5FBE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE90, &qword_25454FAB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEA0, &qword_25454FAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEA8, &qword_25454FAC8);
    sub_2544AE1F0(&qword_27F5FBEB0, &qword_27F5FBEA8, &qword_25454FAC8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEB8, &qword_25454FAD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBEC0, &qword_25454FAD8);
    sub_2544AE1F0(&qword_27F5FBEC8, &qword_27F5FBEC0, &qword_25454FAD8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBE98);
  }

  return result;
}

uint64_t objectdestroy_142Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for AccessoryDetailsView.ToolbarModifier();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = v0 + v5;
  if (*(v0 + v5))
  {
    v8 = *(v7 + 8);
  }

  (*(*(v2 - 8) + 8))(v7 + *(v3 + 44), v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_2545048A4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for AccessoryDetailsView.ToolbarModifier() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_254504940()
{
  v2 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2544AE660;

  return sub_2544FB224();
}

uint64_t sub_254504A34(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_2544E4124(a1, v4, v5);
}

uint64_t sub_254504AD4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_254504B88()
{
  result = qword_27F5FBF18;
  if (!qword_27F5FBF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF10, &qword_25454FB78);
    sub_254504C40();
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF18);
  }

  return result;
}

unint64_t sub_254504C40()
{
  result = qword_27F5FBF20;
  if (!qword_27F5FBF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF28, &qword_25454FB80);
    sub_254504CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF20);
  }

  return result;
}

unint64_t sub_254504CCC()
{
  result = qword_27F5FBF30;
  if (!qword_27F5FBF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF38, &qword_25454FB88);
    sub_254504D58();
    sub_254504E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF30);
  }

  return result;
}

unint64_t sub_254504D58()
{
  result = qword_27F5FBF40;
  if (!qword_27F5FBF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF48, &qword_25454FB90);
    sub_254504DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF40);
  }

  return result;
}

unint64_t sub_254504DE4()
{
  result = qword_27F5FBF50;
  if (!qword_27F5FBF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF58, &qword_25454FB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF50);
  }

  return result;
}

unint64_t sub_254504E68()
{
  result = qword_27F5FBF60;
  if (!qword_27F5FBF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF68, &qword_25454FBA0);
    sub_254504EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF60);
  }

  return result;
}

unint64_t sub_254504EF4()
{
  result = qword_27F5FBF70;
  if (!qword_27F5FBF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF78, &qword_25454FBA8);
    sub_254504F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF70);
  }

  return result;
}

unint64_t sub_254504F80()
{
  result = qword_27F5FBF80;
  if (!qword_27F5FBF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBF88, &unk_25454FBB0);
    sub_2544AE1F0(&qword_27F5FB5E8, &qword_27F5FB5F0, &qword_25454E670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBF80);
  }

  return result;
}

unint64_t sub_254505074()
{
  result = qword_27F5FC0A8;
  if (!qword_27F5FC0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC0B0, &qword_25454FD08);
    sub_25450512C();
    sub_2544AE1F0(&qword_27F5FC148, &qword_27F5FC150, &qword_25454FD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC0A8);
  }

  return result;
}

unint64_t sub_25450512C()
{
  result = qword_27F5FC0B8;
  if (!qword_27F5FC0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC0C0, &qword_25454FD10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC0C8, &qword_25454FD18);
    sub_254505220();
    swift_getOpaqueTypeConformance2();
    sub_2544AE1F0(&qword_27F5FC138, &qword_27F5FC140, &unk_2545540A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC0B8);
  }

  return result;
}

unint64_t sub_254505220()
{
  result = qword_27F5FC0D0;
  if (!qword_27F5FC0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC0C8, &qword_25454FD18);
    sub_2545052D8();
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC0D0);
  }

  return result;
}

unint64_t sub_2545052D8()
{
  result = qword_27F5FC0D8;
  if (!qword_27F5FC0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC0E0, &qword_25454FD20);
    sub_254505390();
    sub_2544AE1F0(&qword_27F5FC128, &qword_27F5FC130, &unk_25454FD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC0D8);
  }

  return result;
}

unint64_t sub_254505390()
{
  result = qword_27F5FC0E8;
  if (!qword_27F5FC0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC0F0, &qword_25454FD28);
    sub_25450541C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC0E8);
  }

  return result;
}

unint64_t sub_25450541C()
{
  result = qword_27F5FC0F8;
  if (!qword_27F5FC0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC100, &qword_25454FD30);
    sub_2545054D4();
    sub_2544AE1F0(&qword_27F5FB790, &qword_27F5FB798, &qword_25454EB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC0F8);
  }

  return result;
}

unint64_t sub_2545054D4()
{
  result = qword_27F5FC108;
  if (!qword_27F5FC108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC110, &qword_25454FD38);
    sub_2544AE1F0(&qword_27F5FC118, &qword_27F5FC120, &unk_25454FD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC108);
  }

  return result;
}

unint64_t sub_25450558C()
{
  result = qword_27F5FC158;
  if (!qword_27F5FC158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC098, &qword_25454FD00);
    sub_254505618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC158);
  }

  return result;
}

unint64_t sub_254505618()
{
  result = qword_27F5FC160;
  if (!qword_27F5FC160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC168, &qword_25454FD68);
    sub_2544AE1F0(&qword_27F5FC170, &qword_27F5FC178, &qword_25454FD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC160);
  }

  return result;
}

unint64_t sub_2545056D8()
{
  result = qword_27F5FC188;
  if (!qword_27F5FC188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC180, &qword_25454FD78);
    sub_2544AE1F0(&qword_27F5FC190, &qword_27F5FC198, &qword_25454FD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC188);
  }

  return result;
}

unint64_t sub_254505794()
{
  result = qword_27F5FC1B8;
  if (!qword_27F5FC1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC1A8, &qword_25454FD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC1B8);
  }

  return result;
}

uint64_t sub_254505818(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_254505894()
{
  result = qword_27F5FC1D0;
  if (!qword_27F5FC1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC1D8, &qword_25454FDA0);
    sub_254505964();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC200, &qword_25454FDC0);
    sub_254505A48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC1D0);
  }

  return result;
}

unint64_t sub_254505964()
{
  result = qword_27F5FC1E0;
  if (!qword_27F5FC1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC1E8, &qword_25454FDA8);
    sub_2544AE1F0(&qword_27F5FC1F0, &qword_27F5FC1F8, &unk_25454FDB0);
    sub_2544AE1F0(&qword_27F5FB5F8, &qword_27F5FB600, &qword_25454E678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC1E0);
  }

  return result;
}

unint64_t sub_254505A48()
{
  result = qword_27F5FC208;
  if (!qword_27F5FC208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC200, &qword_25454FDC0);
    sub_2544AE1F0(&qword_27F5FC210, &qword_27F5FC218, &qword_25454FDC8);
    sub_2544AE1F0(&qword_27F5FB5F8, &qword_27F5FB600, &qword_25454E678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC208);
  }

  return result;
}

unint64_t sub_254505B34()
{
  result = qword_27F5FC228;
  if (!qword_27F5FC228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC220, &qword_25454FDD0);
    sub_2544AE1F0(&qword_27F5FC230, &qword_27F5FC238, &qword_25454FDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC228);
  }

  return result;
}

uint64_t sub_254505BFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_254505C64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_254505CCC(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t objectdestroy_148Tm()
{
  v1 = type metadata accessor for AccessoryDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = sub_254549AB4();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28));

  v9 = (v0 + v3 + v1[5]);
  __swift_destroy_boxed_opaque_existential_0(v9);
  v10 = v9[5];

  v11 = (v0 + v3 + v1[6]);
  if (*v11)
  {
    v12 = v11[1];
  }

  MEMORY[0x259C0FEC0](v6 + v1[7]);
  v13 = *(v6 + v1[9] + 8);

  v14 = *(v6 + v1[10] + 8);

  v15 = *(v6 + v1[11] + 8);

  v16 = *(v6 + v1[12] + 8);

  v17 = *(v6 + v1[13] + 8);

  v18 = *(v6 + v1[14] + 8);

  v19 = *(v6 + v1[15] + 8);

  v20 = *(v6 + v1[16] + 8);

  v21 = v6 + v1[17];
  v22 = *(v21 + 8);

  v23 = *(v21 + 16);

  v24 = (v6 + v1[18]);
  __swift_destroy_boxed_opaque_existential_0(v24);
  v25 = v24[5];

  v26 = v6 + v1[19];
  if (*(v26 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v6 + v1[19]));
  }

  v27 = *(v26 + 40);

  v28 = (v6 + v1[20]);
  v29 = *v28;

  v30 = v28[1];

  v31 = (v6 + v1[21]);
  v32 = *v31;

  v33 = v31[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25450600C(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2544AE660;

  return sub_2544ED260(a1, v6, v7, v1 + v5);
}

unint64_t sub_254506100()
{
  result = qword_27F5FC308;
  if (!qword_27F5FC308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC300, &qword_25454FEB8);
    sub_2544AE1F0(&qword_27F5FC310, &qword_27F5FC318, &qword_25454FEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC308);
  }

  return result;
}

unint64_t sub_2545061B8()
{
  result = qword_27F5FC328;
  if (!qword_27F5FC328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC2D0, &qword_25454FE88);
    sub_2544AE1F0(&qword_27F5FC330, &qword_27F5FC338, &qword_25454FEC8);
    sub_2544AE1F0(&qword_27F5FB5F8, &qword_27F5FB600, &qword_25454E678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC328);
  }

  return result;
}

uint64_t objectdestroy_182Tm()
{
  v1 = sub_25454A1C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_25450636C()
{
  v1 = *(sub_25454A1C4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_2544FC7C0(v2, v3);
}

uint64_t sub_2545063D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5A0, &qword_254550288);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2544AE240(a1, &v6 - v4, &qword_27F5FC5A0, &qword_254550288);
  return sub_25454A9E4();
}

unint64_t sub_25450649C()
{
  result = qword_27F5FC3E0;
  if (!qword_27F5FC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC3E0);
  }

  return result;
}

unint64_t sub_2545064F8()
{
  result = qword_27F5FC3F0;
  if (!qword_27F5FC3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC3E8, &qword_25454FF78);
    sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660);
    sub_2544AE1F0(&qword_27F5FC3F8, &qword_27F5FC400, &qword_25454FF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC3F0);
  }

  return result;
}

uint64_t sub_2545066C0()
{
  v2 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2544AE660;

  return sub_2544F78C0();
}

uint64_t sub_2545067D4()
{
  v2 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2544AE660;

  return sub_2544FADCC();
}

uint64_t sub_2545068E8()
{
  v2 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2544AE660;

  return sub_2544FA888();
}

uint64_t sub_254506A3C()
{
  v2 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2544AE660;

  return sub_2544F9824();
}

uint64_t sub_254506B44()
{
  v1 = type metadata accessor for AccessoryDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_254549AB4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28));

  v8 = (v0 + v3 + v1[5]);
  __swift_destroy_boxed_opaque_existential_0(v8);
  v9 = v8[5];

  v10 = (v0 + v3 + v1[6]);
  if (*v10)
  {
    v11 = v10[1];
  }

  MEMORY[0x259C0FEC0](v5 + v1[7]);
  v12 = *(v5 + v1[9] + 8);

  v13 = *(v5 + v1[10] + 8);

  v14 = *(v5 + v1[11] + 8);

  v15 = *(v5 + v1[12] + 8);

  v16 = *(v5 + v1[13] + 8);

  v17 = *(v5 + v1[14] + 8);

  v18 = *(v5 + v1[15] + 8);

  v19 = *(v5 + v1[16] + 8);

  v20 = v5 + v1[17];
  v21 = *(v20 + 8);

  v22 = *(v20 + 16);

  v23 = (v5 + v1[18]);
  __swift_destroy_boxed_opaque_existential_0(v23);
  v24 = v23[5];

  v25 = v5 + v1[19];
  if (*(v25 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v5 + v1[19]));
  }

  v26 = *(v25 + 40);

  v27 = (v5 + v1[20]);
  v28 = *v27;

  v29 = v27[1];

  v30 = (v5 + v1[21]);
  v31 = *v30;

  v32 = v30[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_254506D88()
{
  v1 = *(*(type metadata accessor for AccessoryDetailsView(0) - 8) + 80);
  v2 = *(v0 + 16);

  return sub_2544EF7DC(v2);
}

uint64_t sub_254506E5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454A044();
  *a1 = result & 1;
  return result;
}

uint64_t sub_254506EBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254549F64();
  *a1 = result & 1;
  return result;
}

double sub_254506F1C@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  *&result = sub_2544FCE2C(*(v1 + 24), *(v1 + 48), a1).n128_u64[0];
  return result;
}

uint64_t objectdestroy_208Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_254506F70@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  return sub_2544FC954(*(v1 + 32), *(v1 + 48), a1);
}

uint64_t sub_254506F84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454A084();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254507008(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2544F1358(a1, v4);
}

uint64_t sub_254507078()
{
  v1 = type metadata accessor for AccessoryDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = sub_254549AB4();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28));

  v9 = (v0 + v3 + v1[5]);
  __swift_destroy_boxed_opaque_existential_0(v9);
  v10 = v9[5];

  v11 = (v0 + v3 + v1[6]);
  if (*v11)
  {
    v12 = v11[1];
  }

  MEMORY[0x259C0FEC0](v6 + v1[7]);
  v13 = *(v6 + v1[9] + 8);

  v14 = *(v6 + v1[10] + 8);

  v15 = *(v6 + v1[11] + 8);

  v16 = *(v6 + v1[12] + 8);

  v17 = *(v6 + v1[13] + 8);

  v18 = *(v6 + v1[14] + 8);

  v19 = *(v6 + v1[15] + 8);

  v20 = *(v6 + v1[16] + 8);

  v21 = v6 + v1[17];
  v22 = *(v21 + 8);

  v23 = *(v21 + 16);

  v24 = (v6 + v1[18]);
  __swift_destroy_boxed_opaque_existential_0(v24);
  v25 = v24[5];

  v26 = v6 + v1[19];
  if (*(v26 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v6 + v1[19]));
  }

  v27 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v26 + 40);

  v29 = (v6 + v1[20]);
  v30 = *v29;

  v31 = v29[1];

  v32 = (v6 + v1[21]);
  v33 = *v32;

  v34 = v32[1];

  v35 = *(v0 + v27 + 8);

  return MEMORY[0x2821FE8E8](v0, v27 + 16, v2 | 7);
}

uint64_t sub_2545072DC(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2544AE3EC;

  return sub_2544FBB34(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_25450740C(uint64_t a1, uint64_t a2, char a3)
{
  sub_2544A8F00(a1, a2, a3 & 1);
}

uint64_t sub_254507448(uint64_t a1, uint64_t a2, char a3)
{
  sub_2544C9C64(a1, a2, a3 & 1);
}

uint64_t sub_2545074C0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25454C334() & 1;
  }
}

uint64_t sub_254507518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_254507588(uint64_t a1)
{
  *(a1 + 320) = 0;
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2545075E4@<X0>(void *a1@<X8>)
{
  result = sub_25454A854();
  *a1 = v3;
  return result;
}

uint64_t objectdestroy_154Tm()
{
  v1 = type metadata accessor for AccessoryDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_254549AB4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28));

  v8 = (v0 + v3 + v1[5]);
  __swift_destroy_boxed_opaque_existential_0(v8);
  v9 = v8[5];

  v10 = (v0 + v3 + v1[6]);
  if (*v10)
  {
    v11 = v10[1];
  }

  MEMORY[0x259C0FEC0](v5 + v1[7]);
  v12 = *(v5 + v1[9] + 8);

  v13 = *(v5 + v1[10] + 8);

  v14 = *(v5 + v1[11] + 8);

  v15 = *(v5 + v1[12] + 8);

  v16 = *(v5 + v1[13] + 8);

  v17 = *(v5 + v1[14] + 8);

  v18 = *(v5 + v1[15] + 8);

  v19 = *(v5 + v1[16] + 8);

  v20 = v5 + v1[17];
  v21 = *(v20 + 8);

  v22 = *(v20 + 16);

  v23 = (v5 + v1[18]);
  __swift_destroy_boxed_opaque_existential_0(v23);
  v24 = v23[5];

  v25 = v5 + v1[19];
  if (*(v25 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v5 + v1[19]));
  }

  v26 = *(v25 + 40);

  v27 = (v5 + v1[20]);
  v28 = *v27;

  v29 = v27[1];

  v30 = (v5 + v1[21]);
  v31 = *v30;

  v32 = v30[1];

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_254507888()
{
  v1 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_2544E9324(v2, v3);
}

uint64_t sub_25450792C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2545079B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454A074();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t keypath_set_347Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t sub_254507A3C(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2544EA5DC(a1, v4);
}

uint64_t sub_254507AB0(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessoryDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2544AE660;

  return sub_2544EAA40(a1, v6, v7, v1 + v5);
}

uint64_t sub_254507BA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_254507BD8@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2544E9DF8(*(v1 + 32), a1);
}

uint64_t sub_254507BE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254507C1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2544E9E94();
}

uint64_t sub_254507C88(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for AccessoryDetailsView.ToolbarModifier();
  swift_getWitnessTable();
  sub_25454AE24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE78, &qword_25454FAA8);
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBE80, &qword_25454FAB0);
  sub_2545044BC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_25454A714();
  sub_25454A714();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_25454BAF4();
  swift_getWitnessTable();
  sub_25454B834();
  sub_25454A714();
  sub_25454C054();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25454A714();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t AutoRelockTimePickerView.init(accessoryDetails:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AutoRelockTimePickerView();
  v5 = a2 + *(v4 + 20);
  sub_25454B794();
  *v5 = v9;
  *(v5 + 8) = v10;
  v6 = a2 + *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC240, &qword_25454FDE0);
  sub_25454B794();
  *v6 = v9;
  *(v6 + 8) = v10;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28)) = 0;
  v7 = sub_254549AB4();
  return (*(*(v7 - 8) + 32))(a2, a1, v7);
}

uint64_t type metadata accessor for AutoRelockTimePickerView()
{
  result = qword_27F5FC660;
  if (!qword_27F5FC660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25450828C()
{
  v1 = *v0;
  sub_25454C3E4();
  v2 = dword_2545505EC[v1];
  sub_25454C414();
  return sub_25454C434();
}

uint64_t sub_254508314()
{
  v1 = *v0;
  sub_25454C3E4();
  v2 = dword_2545505EC[v1];
  sub_25454C414();
  return sub_25454C434();
}

uint64_t sub_254508360@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25450B1C0(*a1);
  *a2 = result;
  return result;
}

uint64_t AutoRelockTimePickerView.body.getter()
{
  v1 = sub_254549AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_2545499E4();
  (*(v2 + 8))(v5, v1);
  shouldShowAutoRelockTime = AutoRelockTimePickerView._shouldShowAutoRelockTimePicker()();
  v21[16] = shouldShowAutoRelockTime;
  v22 = v0;
  v23 = v9;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (shouldShowAutoRelockTime)
  {
    v24 = sub_25454BCF4();
    v25 = v11;
    sub_2544AECF0();
    v12 = sub_25454B274();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = v16 & 1;
  }

  else
  {

    v12 = 0;
    v14 = 0;
    v19 = 0;
    v18 = 0;
  }

  v24 = v12;
  v25 = v14;
  v26 = v19;
  v27 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC628, &unk_2545503B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1A8, &qword_25454FD90);
  sub_25450A774();
  sub_254505794();
  sub_25454B9B4();
  return sub_25450A95C(v9);
}

Swift::Bool __swiftcall AutoRelockTimePickerView._shouldShowAutoRelockTimePicker()()
{
  v0 = sub_254549AB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_254549EA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_2545499E4();
  (*(v1 + 8))(v4, v0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_25450A95C(v8);
    if (qword_27F5FACE0 != -1)
    {
      swift_once();
    }

    v14 = sub_25454A2E4();
    __swift_project_value_buffer(v14, qword_27F5FD410);
    v15 = sub_25454A2C4();
    v16 = sub_25454BF94();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_254502AAC(0xD000000000000026, 0x8000000254556230, &v22);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_254502AAC(0xD000000000000021, 0x8000000254556290, &v22);
      _os_log_impl(&dword_2544A5000, v15, v16, "%s - %s: doorLockCluster is nil, so returning false.", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v18, -1, -1);
      MEMORY[0x259C0FDF0](v17, -1, -1);
    }

    v19 = 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v19 = AutoRelockTimePickerView._shouldShowAutoRelockTimePicker(doorLockCluster:)();
    (*(v10 + 8))(v13, v9);
  }

  return v19 & 1;
}

uint64_t sub_2545089F0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v56 = a2;
  LODWORD(v55) = a1;
  v5 = type metadata accessor for AutoRelockTimePickerView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = v8;
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v11 = *(v10 - 8);
  v57 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = v46 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC638, &qword_2545503C8);
  v13 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v15 = v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6A8, &qword_254550580);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v52 = v46 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC628, &unk_2545503B8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v59 = v46 - v22;
  sub_25454BE14();
  v58 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v55)
  {
    v65 = sub_25454BCF4();
    v66 = v23;
    v24 = *(v5 + 20);
    v47 = v6;
    v25 = v56;
    v26 = (v56 + v24);
    v49 = *v26;
    v48 = *(v26 + 1);
    v63 = v49;
    v64 = v48;
    v46[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6B0, &qword_254550588);
    sub_25454B7C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6B8, &unk_254550590);
    sub_25450B124();
    sub_25450B2C4();
    sub_2544AECF0();
    v27 = v15;
    sub_25454B8A4();
    v28 = v51;
    sub_25450B388(v60, v51);
    sub_25450B3F8(v25, v9);
    v29 = *(v11 + 80);
    v55 = a4;
    v30 = (v29 + 16) & ~v29;
    v50 = v16;
    v31 = *(v47 + 80);
    v47 = v17;
    v46[0] = v27;
    v32 = (v57 + v31 + v30) & ~v31;
    v33 = v53;
    v34 = swift_allocObject();
    sub_25450B660(v28, v34 + v30);
    sub_25450B6D0(v9, v34 + v32);
    v35 = &v27[*(v54 + 36)];
    *v35 = sub_25450B734;
    v35[1] = v34;
    v35[2] = 0;
    v35[3] = 0;
    LOBYTE(v61) = v49;
    v62 = v48;
    sub_25454B7A4();
    sub_25450B3F8(v56, v9);
    sub_25450B388(v60, v28);
    v36 = (v31 + 16) & ~v31;
    v37 = (v33 + v29 + v36) & ~v29;
    v38 = swift_allocObject();
    sub_25450B6D0(v9, v38 + v36);
    v39 = v38 + v37;
    a4 = v55;
    sub_25450B660(v28, v39);
    sub_25450A850();
    sub_25450A908();
    v40 = v52;
    v41 = v46[0];
    sub_25454B574();

    sub_25450BAE0(v41);
    v42 = v47;
    v43 = v59;
    v44 = v50;
    (*(v47 + 32))(v59, v40, v50);
    (*(v42 + 56))(v43, 0, 1, v44);
  }

  else
  {
    v43 = v59;
    (*(v17 + 56))(v59, 1, 1, v16);
  }

  sub_25450B254(v43, a4);
}

uint64_t sub_254508FEC()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6A0, qword_2545504A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6D8, &qword_2545505E0);
  sub_2544AE1F0(&qword_27F5FC6E0, &qword_27F5FC6A0, qword_2545504A0);
  sub_25450B124();
  swift_getOpaqueTypeConformance2();
  sub_25454B974();
}

uint64_t sub_254509190@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6D8, &qword_2545505E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v9 = *a1;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_25454BCF4();
  v12 = v11;

  v17[0] = v10;
  v17[1] = v12;
  sub_2544AECF0();
  *v8 = sub_25454B274();
  *(v8 + 1) = v13;
  v8[16] = v14 & 1;
  *(v8 + 3) = v15;
  v8[32] = v9;
  v8[33] = 1;
  (*(v5 + 32))(a2, v8, v4);
}

void sub_2545093F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoRelockTimePickerView();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v44[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44[-v13];
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25450B388(a1, v14);
  v15 = sub_254549EA4();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_25450A95C(v14);
LABEL_13:
    if (qword_27F5FACE0 != -1)
    {
      swift_once();
    }

    v35 = sub_25454A2E4();
    __swift_project_value_buffer(v35, qword_27F5FD410);
    sub_25450B3F8(a2, v8);
    v36 = sub_25454A2C4();
    v37 = sub_25454BF94();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_254502AAC(0xD000000000000026, 0x8000000254556230, &v48);
      *(v38 + 12) = 1024;
      v40 = &v8[*(v4 + 20)];
      v41 = *v40;
      v42 = *(v40 + 1);
      v46 = v41;
      v47 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6B0, &qword_254550588);
      sub_25454B7A4();
      v43 = dword_2545505EC[v45];
      sub_25450BEA8(v8);
      *(v38 + 14) = v43;
      _os_log_impl(&dword_2544A5000, v36, v37, "%s : Appearing without updating auto relock time. AutoRelockTime is currently %u", v38, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x259C0FDF0](v39, -1, -1);
      MEMORY[0x259C0FDF0](v38, -1, -1);
    }

    else
    {
      sub_25450BEA8(v8);
    }

    return;
  }

  v17 = sub_254549DF4();
  (*(v16 + 8))(v14, v15);
  if ((v17 & 0x100000000) != 0)
  {
    goto LABEL_13;
  }

  v18 = sub_25450B1C0(v17);
  if (v18 == 8)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  v20 = a2 + *(v4 + 20);
  v22 = *(v20 + 8);
  v46 = *v20;
  v21 = v46;
  v47 = v22;
  LOBYTE(v48) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6B0, &qword_254550588);
  sub_25454B7B4();
  v46 = v21;
  v47 = v22;
  sub_25454B7A4();
  v23 = a2 + *(v4 + 24);
  v24 = *v23;
  v25 = *(v23 + 8);
  v46 = v24;
  v47 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6C8, &qword_2545505B0);
  sub_25454B7B4();
  if (qword_27F5FACE0 != -1)
  {
    swift_once();
  }

  v26 = sub_25454A2E4();
  __swift_project_value_buffer(v26, qword_27F5FD410);
  sub_25450B3F8(a2, v10);
  v27 = sub_25454A2C4();
  v28 = sub_25454BF94();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48 = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_254502AAC(0xD000000000000026, 0x8000000254556230, &v48);
    *(v29 + 12) = 1024;
    v31 = &v10[*(v4 + 20)];
    v32 = *v31;
    v33 = *(v31 + 1);
    v46 = v32;
    v47 = v33;
    sub_25454B7A4();
    v34 = dword_2545505EC[v45];
    sub_25450BEA8(v10);
    *(v29 + 14) = v34;
    *(v29 + 18) = 1024;
    *(v29 + 20) = v17;
    _os_log_impl(&dword_2544A5000, v27, v28, "%s : On Appear setting value to %u from Matter %u", v29, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x259C0FDF0](v30, -1, -1);
    MEMORY[0x259C0FDF0](v29, -1, -1);
  }

  else
  {
    sub_25450BEA8(v10);
  }
}

uint64_t sub_2545099A0(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for AutoRelockTimePickerView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = sub_25454BE44();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_25450B3F8(v20, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25450B388(v22, v5);
  v14 = sub_25454BE04();
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = (v8 + *(v21 + 80) + v15) & ~*(v21 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = MEMORY[0x277D85700];
  sub_25450B6D0(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15);
  sub_25450B660(v5, v17 + v16);
  sub_2544B5138(0, 0, v12, &unk_2545505A8, v17);
}

uint64_t sub_254509C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for AutoRelockTimePickerView();
  v5[19] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  sub_25454BE14();
  v5[22] = sub_25454BE04();
  v10 = sub_25454BDB4();
  v5[23] = v10;
  v5[24] = v9;

  return MEMORY[0x2822009F8](sub_254509D90, v10, v9);
}

uint64_t sub_254509D90()
{
  v59 = v0;
  if (qword_27F5FACE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 128);
  v4 = sub_25454A2E4();
  __swift_project_value_buffer(v4, qword_27F5FD410);
  sub_25450B3F8(v3, v1);
  sub_25450B3F8(v3, v2);
  v5 = sub_25454A2C4();
  v6 = sub_25454BF94();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 168);
  if (v7)
  {
    v9 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v58 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_254502AAC(0xD000000000000026, 0x8000000254556230, &v58);
    *(v10 + 12) = 1024;
    v12 = (v8 + *(v9 + 20));
    v13 = *v12;
    v14 = *(v12 + 1);
    *(v0 + 96) = v13;
    *(v0 + 104) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6B0, &qword_254550588);
    sub_25454B7A4();
    v15 = dword_2545505EC[*(v0 + 233)];
    v16 = *(v0 + 160);
    v17 = *(v0 + 152);
    sub_25450BEA8(*(v0 + 168));
    *(v10 + 14) = v15;
    *(v10 + 18) = 2080;
    v18 = (v16 + *(v17 + 24));
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v0 + 112) = v19;
    *(v0 + 120) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6C8, &qword_2545505B0);
    sub_25454B7A4();
    v21 = *(v0 + 234);
    if (v21 <= 3)
    {
      if (*(v0 + 234) > 1u)
      {
        v22 = 0;
        if (v21 == 2)
        {
          v21 = 60;
        }

        else
        {
          v21 = 120;
        }
      }

      else
      {
        v22 = 0;
        if (*(v0 + 234))
        {
          v21 = 30;
        }
      }
    }

    else if (*(v0 + 234) <= 5u)
    {
      v22 = 0;
      if (v21 == 4)
      {
        v21 = 300;
      }

      else
      {
        v21 = 600;
      }
    }

    else if (v21 == 6)
    {
      v22 = 0;
      v21 = 900;
    }

    else if (v21 == 7)
    {
      v22 = 0;
      v21 = 1800;
    }

    else
    {
      v21 = 0;
      v22 = 1;
    }

    v24 = *(v0 + 160);
    *(v0 + 224) = v21;
    *(v0 + 228) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6D0, &unk_2545505B8);
    v25 = sub_25454BCD4();
    v27 = v26;
    sub_25450BEA8(v24);
    v28 = sub_254502AAC(v25, v27, &v58);

    *(v10 + 20) = v28;
    _os_log_impl(&dword_2544A5000, v5, v6, "%s : Changing auto relock time to %u from %s", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v11, -1, -1);
    MEMORY[0x259C0FDF0](v10, -1, -1);
  }

  else
  {
    v23 = *(v0 + 160);
    sub_25450BEA8(*(v0 + 168));

    sub_25450BEA8(v23);
  }

  v29 = *(v0 + 152);
  v30 = *(v0 + 128);
  v31 = (v30 + *(v29 + 24));
  v32 = *v31;
  v33 = *(v31 + 1);
  *(v0 + 16) = *v31;
  *(v0 + 24) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6C8, &qword_2545505B0);
  sub_25454B7A4();
  v34 = *(v0 + 229);
  v35 = (v30 + *(v29 + 20));
  v36 = *v35;
  v37 = *(v35 + 1);
  *(v0 + 32) = *v35;
  *(v0 + 40) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6B0, &qword_254550588);
  sub_25454B7A4();
  if (v34 <= 3)
  {
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v34 = 60;
      }

      else
      {
        v34 = 120;
      }
    }

    else if (v34)
    {
      v34 = 30;
    }
  }

  else if (v34 <= 5)
  {
    if (v34 == 4)
    {
      v34 = 300;
    }

    else
    {
      v34 = 600;
    }
  }

  else if (v34 == 6)
  {
    v34 = 900;
  }

  else
  {
    if (v34 != 7)
    {
      goto LABEL_41;
    }

    v34 = 1800;
  }

  if (v34 == dword_2545505EC[*(v0 + 230)])
  {
    v38 = *(v0 + 176);

    v39 = sub_25454A2C4();
    v40 = sub_25454BF94();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_254502AAC(0xD000000000000026, 0x8000000254556230, &v58);
      _os_log_impl(&dword_2544A5000, v39, v40, "%s : Not updating matter because the value has not changed.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x259C0FDF0](v42, -1, -1);
      MEMORY[0x259C0FDF0](v41, -1, -1);
    }

    goto LABEL_43;
  }

LABEL_41:
  v44 = *(v0 + 136);
  v43 = *(v0 + 144);
  *(v0 + 48) = v36;
  *(v0 + 56) = v37;
  sub_25454B7A4();
  *(v0 + 64) = v32;
  *(v0 + 72) = v33;
  sub_25454B7B4();
  sub_25450B388(v44, v43);
  v45 = sub_254549EA4();
  *(v0 + 200) = v45;
  v46 = *(v45 - 8);
  *(v0 + 208) = v46;
  if ((*(v46 + 48))(v43, 1, v45) == 1)
  {
    v47 = *(v0 + 176);
    v48 = *(v0 + 144);

    sub_25450A95C(v48);
LABEL_43:
    v50 = *(v0 + 160);
    v49 = *(v0 + 168);
    v51 = *(v0 + 144);

    v52 = *(v0 + 8);

    return v52();
  }

  *(v0 + 80) = v36;
  *(v0 + 88) = v37;
  sub_25454B7A4();
  v54 = dword_2545505EC[*(v0 + 232)];
  v55 = *(MEMORY[0x277D166B8] + 4);
  v56 = swift_task_alloc();
  *(v0 + 216) = v56;
  *v56 = v0;
  v56[1] = sub_25450A458;
  v57 = *(v0 + 144);

  return MEMORY[0x282170610](v54);
}

uint64_t sub_25450A458()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 144);
  v9 = *v0;

  (*(v3 + 8))(v5, v4);
  v6 = *(v1 + 192);
  v7 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25450A5DC, v7, v6);
}

uint64_t sub_25450A5DC()
{
  v1 = v0[22];

  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25450A658@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    sub_25454BCF4();
    sub_2544AECF0();
    v4 = sub_25454B274();
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v12 = v8 & 1;
  }

  else
  {

    v4 = 0;
    v6 = 0;
    v12 = 0;
    v10 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v12;
  a2[3] = v10;
  return result;
}

unint64_t sub_25450A774()
{
  result = qword_27F5FC630;
  if (!qword_27F5FC630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC628, &unk_2545503B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC638, &qword_2545503C8);
    sub_25450A850();
    sub_25450A908();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC630);
  }

  return result;
}

unint64_t sub_25450A850()
{
  result = qword_27F5FC640;
  if (!qword_27F5FC640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC638, &qword_2545503C8);
    sub_2544AE1F0(&qword_27F5FC648, &qword_27F5FC650, &qword_2545503D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC640);
  }

  return result;
}

unint64_t sub_25450A908()
{
  result = qword_27F5FC658;
  if (!qword_27F5FC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC658);
  }

  return result;
}

uint64_t sub_25450A95C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AutoRelockTimePickerView._shouldShowAutoRelockTimePicker(doorLockCluster:)()
{
  v0 = sub_254549E84();
  if (qword_27F5FACE0 != -1)
  {
    swift_once();
  }

  v1 = sub_25454A2E4();
  __swift_project_value_buffer(v1, qword_27F5FD410);
  v2 = sub_25454A2C4();
  v3 = sub_25454BF94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_254502AAC(0xD000000000000026, 0x8000000254556230, &v7);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_254502AAC(0xD000000000000031, 0x80000002545562C0, &v7);
    *(v4 + 22) = 1024;
    *(v4 + 24) = v0 & 1;
    _os_log_impl(&dword_2544A5000, v2, v3, "%s - %s: Returning %{BOOL}d.", v4, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v5, -1, -1);
    MEMORY[0x259C0FDF0](v4, -1, -1);
  }

  return v0 & 1;
}

uint64_t sub_25450AB64()
{
  v1 = sub_254549AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11[-v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_2545499E4();
  (*(v2 + 8))(v5, v1);
  shouldShowAutoRelockTime = AutoRelockTimePickerView._shouldShowAutoRelockTimePicker()();
  v13 = v0;
  v14 = v9;
  sub_25450A658(shouldShowAutoRelockTime, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC628, &unk_2545503B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1A8, &qword_25454FD90);
  sub_25450A774();
  sub_254505794();
  sub_25454B9B4();
  return sub_25450A95C(v9);
}

uint64_t sub_25450AD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25450AE5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_25450AF24()
{
  sub_25450391C();
  if (v0 <= 0x3F)
  {
    sub_25450AFC0();
    if (v1 <= 0x3F)
    {
      sub_25450B010();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25450AFC0()
{
  if (!qword_27F5FC670)
  {
    v0 = sub_25454B7D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FC670);
    }
  }
}

void sub_25450B010()
{
  if (!qword_27F5FC678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC240, &qword_25454FDE0);
    v0 = sub_25454B7D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FC678);
    }
  }
}

unint64_t sub_25450B078()
{
  result = qword_27F5FC680;
  if (!qword_27F5FC680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC688, &qword_254550450);
    sub_25450A774();
    sub_254505794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC680);
  }

  return result;
}

unint64_t sub_25450B124()
{
  result = qword_27F5FC690;
  if (!qword_27F5FC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC690);
  }

  return result;
}

uint64_t sub_25450B1C0(uint64_t result)
{
  if (result > 299)
  {
    if (result > 899)
    {
      if (result == 900)
      {
        return 6;
      }

      if (result == 1800)
      {
        return 7;
      }
    }

    else
    {
      if (result == 300)
      {
        return 4;
      }

      if (result == 600)
      {
        return 5;
      }
    }
  }

  else if (result > 59)
  {
    if (result == 60)
    {
      return 2;
    }

    if (result == 120)
    {
      return 3;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result == 30)
    {
      return 1;
    }
  }

  return 8;
}

uint64_t sub_25450B254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC628, &unk_2545503B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25450B2C4()
{
  result = qword_27F5FC6C0;
  if (!qword_27F5FC6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC6B8, &unk_254550590);
    sub_25450B124();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC6C0);
  }

  return result;
}

uint64_t sub_25450B388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25450B3F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoRelockTimePickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25450B45C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for AutoRelockTimePickerView();
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = sub_254549EA4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v10 = (v3 + v4 + v6) & ~v6;
  v11 = sub_254549AB4();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(v0 + v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28));

  v13 = *(v0 + v10 + *(v5 + 20) + 8);

  v14 = *(v0 + v10 + *(v5 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + v7, v2 | v6 | 7);
}

uint64_t sub_25450B660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25450B6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoRelockTimePickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25450B734()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AutoRelockTimePickerView() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_2545093F0(v0 + v2, v5);
}

uint64_t sub_25450B80C()
{
  v1 = (type metadata accessor for AutoRelockTimePickerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v0 + v3;
  v10 = sub_254549AB4();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28));

  v12 = *(v9 + v1[7] + 8);

  v13 = *(v9 + v1[8] + 8);

  v14 = sub_254549EA4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v7, 1, v14))
  {
    (*(v15 + 8))(v0 + v7, v14);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_25450BA08()
{
  v1 = *(type metadata accessor for AutoRelockTimePickerView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2545099A0(v0 + v2, v5);
}

uint64_t sub_25450BAE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC638, &qword_2545503C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25450BB48()
{
  v1 = (type metadata accessor for AutoRelockTimePickerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = v0 + v3;
  v11 = sub_254549AB4();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28));

  v13 = *(v10 + v1[7] + 8);

  v14 = *(v10 + v1[8] + 8);

  v15 = sub_254549EA4();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v7, 1, v15))
  {
    (*(v16 + 8))(v0 + v7, v15);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_25450BD4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AutoRelockTimePickerView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2544AE3EC;

  return sub_254509C84(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_25450BEA8(uint64_t a1)
{
  v2 = type metadata accessor for AutoRelockTimePickerView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double SelectableIconView.body.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_25454BA54();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6E8, &qword_254550610);
  sub_25450BFBC(v1, a1 + *(v4 + 44));
  v5 = *(v1 + *(type metadata accessor for SelectableIconView() + 40));
  sub_25454BA54();
  sub_25454A544();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6F0, &qword_254550618) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_25450BFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a1;
  v119 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC738, &qword_2545506B0);
  v2 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v118 = (&v101 - v3);
  v109 = sub_254549D24();
  v107 = *(v109 - 8);
  v4 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  v108 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_254549744();
  v105 = *(v110 - 8);
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v110);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC740, &qword_2545506B8);
  v9 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v106 = (&v101 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v101 - v13;
  v15 = sub_254549F04();
  v120 = *(v15 - 8);
  v121 = v15;
  v16 = *(v120 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC748, &qword_2545506C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v115 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v101 - v23;
  v24 = sub_25454A744();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC750, &qword_2545506C8);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v113 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v101 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v101 - v35;
  sub_25454BE14();
  v112 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = type metadata accessor for SelectableIconView();
  v38 = v122;
  v39 = *(v122 + v37[9]);
  v40 = *(v24 + 20);
  v41 = *MEMORY[0x277CE0118];
  v42 = sub_25454ABA4();
  (*(*(v42 - 8) + 104))(&v27[v40], v41, v42);
  *v27 = v39;
  *(v27 + 1) = v39;
  v43 = sub_25454B684();
  v44 = *(v38 + 8);
  v45 = *(v38 + 16);
  *&v124 = *v38;
  *(&v124 + 1) = v44;
  LOBYTE(v125) = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB580, &unk_2545506D0);
  MEMORY[0x259C0EA00](v123, v46);
  sub_25454A484();
  sub_25450D24C(v27, v34);
  v47 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC758, &unk_254550900) + 36)];
  v48 = v125;
  *v47 = v124;
  *(v47 + 1) = v48;
  *(v47 + 4) = v126;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC760, &unk_2545506E0);
  *&v34[*(v49 + 52)] = v43;
  *&v34[*(v49 + 56)] = 256;
  v50 = sub_25454BA54();
  v52 = v51;
  sub_25450D2B0(v27);
  v53 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC768, &qword_254550910) + 36)];
  *v53 = v50;
  v53[1] = v52;
  v111 = v36;
  sub_25450D30C(v34, v36);
  sub_2544AE240(v38 + v37[6], v14, &qword_27F5FBCA8, &unk_254550680);
  v55 = v120;
  v54 = v121;
  if ((*(v120 + 48))(v14, 1, v121) == 1)
  {
    sub_2544AE150(v14, &qword_27F5FBCA8, &unk_254550680);
    v121 = v37[5];
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC610, &qword_254550368);
    v56 = v122;
    MEMORY[0x259C0EA00]();
    sub_254549734();
    v105 = *(v105 + 8);
    (v105)(v8, v110);
    v57 = sub_25454B704();
    v58 = *(v56 + v37[7]);
    KeyPath = swift_getKeyPath();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC770, &unk_254550720);
    v60 = v106;
    v61 = (v106 + *(v59 + 36));
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3A0, &qword_2545509C0);
    v63 = *(v62 + 28);

    sub_25454AC34();
    v64 = sub_25454AC44();
    v65 = *(v64 - 8);
    v103 = *(v65 + 56);
    v104 = v65 + 56;
    v103(v61 + v63, 0, 1, v64);
    *v61 = swift_getKeyPath();
    v66 = KeyPath;
    *v60 = v57;
    v60[1] = v66;
    v60[2] = v58;
    v67 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC778, &qword_254550760) + 36));
    v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC780, &qword_254550768) + 28);
    v69 = *MEMORY[0x277CE1048];
    v70 = sub_25454B754();
    (*(*(v70 - 8) + 104))(v67 + v68, v69, v70);
    *v67 = swift_getKeyPath();
    v71 = (v60 + *(v116 + 36));
    v72 = *(v62 + 28);
    MEMORY[0x259C0EA00](v120);
    v73 = v108;
    sub_254549724();
    (v105)(v8, v110);
    sub_254549D14();
    (*(v107 + 8))(v73, v109);
    v103(v71 + v72, 0, 1, v64);
    *v71 = swift_getKeyPath();
    sub_2544AE240(v60, v118, &qword_27F5FC740, &qword_2545506B8);
    swift_storeEnumTagMultiPayload();
    sub_25450D478(&qword_27F5FC788, &qword_27F5FC740, &qword_2545506B8, sub_25450D394);
    v74 = v114;
    sub_25454AD44();
    sub_2544AE150(v60, &qword_27F5FC740, &qword_2545506B8);
  }

  else
  {
    (*(v55 + 32))(v18, v14, v54);
    v123[0] = sub_254549EC4();
    v123[1] = v75;
    sub_2544AECF0();
    v76 = sub_25454B274();
    v78 = v77;
    v80 = v79;
    sub_25454B054();
    v81 = sub_25454B194();
    v83 = v82;
    v85 = v84;
    sub_2544C9C64(v76, v78, v80 & 1);

    if (*(v122 + v37[8]) == 1)
    {
      sub_254549EF4();
    }

    else
    {
      sub_25454B644();
    }

    v86 = v18;
    v87 = sub_25454B1D4();
    v89 = v88;
    v91 = v90;
    v93 = v92;

    sub_2544C9C64(v81, v83, v85 & 1);

    v94 = v118;
    *v118 = v87;
    v94[1] = v89;
    *(v94 + 16) = v91 & 1;
    v94[3] = v93;
    swift_storeEnumTagMultiPayload();
    sub_25450D478(&qword_27F5FC788, &qword_27F5FC740, &qword_2545506B8, sub_25450D394);
    v74 = v114;
    sub_25454AD44();
    (*(v120 + 8))(v86, v121);
  }

  v95 = v111;
  v96 = v113;
  sub_2544AE240(v111, v113, &qword_27F5FC750, &qword_2545506C8);
  v97 = v115;
  sub_2544AE240(v74, v115, &qword_27F5FC748, &qword_2545506C0);
  v98 = v119;
  sub_2544AE240(v96, v119, &qword_27F5FC750, &qword_2545506C8);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7B0, &unk_2545507A0);
  sub_2544AE240(v97, v98 + *(v99 + 48), &qword_27F5FC748, &qword_2545506C0);
  sub_2544AE150(v74, &qword_27F5FC748, &qword_2545506C0);
  sub_2544AE150(v95, &qword_27F5FC750, &qword_2545506C8);
  sub_2544AE150(v97, &qword_27F5FC748, &qword_2545506C0);
  sub_2544AE150(v96, &qword_27F5FC750, &qword_2545506C8);
}

uint64_t type metadata accessor for SelectableIconView()
{
  result = qword_27F5FC6F8;
  if (!qword_27F5FC6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_25450CC64@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_25454BA54();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6E8, &qword_254550610);
  sub_25450BFBC(v2, a2 + *(v6 + 44));
  v7 = *(v2 + *(a1 + 40));
  sub_25454BA54();
  sub_25454A544();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC6F0, &qword_254550618) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_25450CD30(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC610, &qword_254550368);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25450CE80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC610, &qword_254550368);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_25450CFBC()
{
  sub_25450D0DC();
  if (v0 <= 0x3F)
  {
    sub_25450D12C(319, &qword_27F5FC710, MEMORY[0x277D15460], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_25450D12C(319, &qword_27F5FC718, MEMORY[0x277D169F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25450D0DC()
{
  if (!qword_27F5FC708)
  {
    v0 = sub_25454B964();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FC708);
    }
  }
}

void sub_25450D12C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25450D194()
{
  result = qword_27F5FC720;
  if (!qword_27F5FC720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC6F0, &qword_254550618);
    sub_2544AE1F0(&qword_27F5FC728, &qword_27F5FC730, &qword_2545506A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC720);
  }

  return result;
}

uint64_t sub_25450D24C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25454A744();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25450D2B0(uint64_t a1)
{
  v2 = sub_25454A744();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25450D30C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC750, &qword_2545506C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25450D394()
{
  result = qword_27F5FC790;
  if (!qword_27F5FC790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC778, &qword_254550760);
    sub_25450D478(&qword_27F5FC798, &qword_27F5FC770, &unk_254550720, sub_254504F80);
    sub_2544AE1F0(&qword_27F5FC7A8, &qword_27F5FC780, &qword_254550768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC790);
  }

  return result;
}

uint64_t sub_25450D478(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2544AE1F0(&qword_27F5FC7A0, &qword_27F5FB3A0, &qword_2545509C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SoftwareUpdateStatusView.body.getter@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v4 = *(updated - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](updated - 8);
  *a1 = sub_25454AC24();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7B8, &unk_2545507B0);
  sub_25450D6B8(v1, a1 + *(v6 + 44));
  sub_254515C8C(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoftwareUpdateStatusView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_254515F20(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for SoftwareUpdateStatusView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7D0, &qword_2545507D0);
  v10 = (a1 + *(result + 36));
  *v10 = sub_25450EDB4;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t sub_25450D6B8@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8B0, &qword_254550A10);
  v80 = *(v81 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v73 = (&v72 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8B8, &qword_254550A18);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v82 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v72 - v9;
  v75 = sub_25454A0F4();
  v74 = *(v75 - 8);
  v10 = *(v74 + 64);
  v11 = MEMORY[0x28223BE20](v75);
  v72 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8C0, &qword_254550A20);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v79 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = (&v72 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8C8, &qword_254550A28);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v72 - v22;
  v24 = sub_254549AB4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8D0, &qword_254550A30);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v78 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v72 - v34;
  MEMORY[0x28223BE20](v33);
  v84 = &v72 - v36;
  sub_25454BE14();
  v77 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  *v23 = sub_25454AB14();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8D8, &qword_254550A38);
  sub_25450EDCC(v28, a1, &v23[*(v37 + 44)]);
  sub_25454BA54();
  sub_25454A784();
  sub_2544B14E8(v23, v35, &qword_27F5FC8C8, &qword_254550A28);
  v38 = &v35[*(v29 + 36)];
  v39 = v94;
  *(v38 + 4) = v93;
  *(v38 + 5) = v39;
  *(v38 + 6) = v95;
  v40 = v90;
  *v38 = v89;
  *(v38 + 1) = v40;
  v41 = v92;
  *(v38 + 2) = v91;
  *(v38 + 3) = v41;
  (*(v25 + 8))(v28, v24);
  sub_2544B14E8(v35, v84, &qword_27F5FC8D0, &qword_254550A30);
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v43 = *(updated + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);
  sub_25454B7A4();
  v44 = sub_25454A0C4();
  v46 = v45;
  v47 = *(v74 + 8);
  v48 = v75;
  v47(v14, v75);
  v49 = sub_25454BA54();
  v50 = v85;
  *v85 = v49;
  v50[1] = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8E0, &qword_254550A40);
  sub_2545120A4(v44, v46, a1, v50 + *(v52 + 44));

  v53 = a1 + *(updated + 20);
  v54 = *v53;
  v55 = *(v53 + 1);
  v87 = v54;
  v88 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  if ((v86 & 1) != 0 || (v56 = v72, sub_25454B7A4(), sub_25454A0C4(), v58 = v57, v47(v56, v48), !v58))
  {
    v61 = sub_25454AC24();
    v62 = v73;
    *v73 = v61;
    *(v62 + 8) = 0x4038000000000000;
    *(v62 + 16) = 0;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8E8, &qword_254550A48);
    sub_25450DF5C(a1, (v62 + *(v63 + 44)));
    v60 = v76;
    sub_2544B14E8(v62, v76, &qword_27F5FC8B0, &qword_254550A10);
    v59 = 0;
  }

  else
  {

    v59 = 1;
    v60 = v76;
  }

  (*(v80 + 56))(v60, v59, 1, v81);
  v64 = v84;
  v65 = v78;
  sub_2544AE240(v84, v78, &qword_27F5FC8D0, &qword_254550A30);
  v66 = v85;
  v67 = v79;
  sub_2544AE240(v85, v79, &qword_27F5FC8C0, &qword_254550A20);
  v68 = v82;
  sub_2544AE240(v60, v82, &qword_27F5FC8B8, &qword_254550A18);
  v69 = v83;
  sub_2544AE240(v65, v83, &qword_27F5FC8D0, &qword_254550A30);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8F0, &qword_254550A50);
  sub_2544AE240(v67, v69 + *(v70 + 48), &qword_27F5FC8C0, &qword_254550A20);
  sub_2544AE240(v68, v69 + *(v70 + 64), &qword_27F5FC8B8, &qword_254550A18);
  sub_2544AE150(v60, &qword_27F5FC8B8, &qword_254550A18);
  sub_2544AE150(v66, &qword_27F5FC8C0, &qword_254550A20);
  sub_2544AE150(v64, &qword_27F5FC8D0, &qword_254550A30);
  sub_2544AE150(v68, &qword_27F5FC8B8, &qword_254550A18);
  sub_2544AE150(v67, &qword_27F5FC8C0, &qword_254550A20);
  sub_2544AE150(v65, &qword_27F5FC8D0, &qword_254550A30);
}

uint64_t sub_25450DF5C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_254549AB4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v74 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v73 = v67 - v10;
  MEMORY[0x28223BE20](v9);
  v72 = v67 - v11;
  updated = type metadata accessor for SoftwareUpdateAccessoryCell(0);
  v13 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  v77 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8F8, &qword_254550A58);
  v15 = *(*(v75 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v75);
  v78 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v76 = v67 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v67 - v20;
  sub_25454BE14();
  v79 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = sub_25450E600();
  if (v23)
  {
    *&v99 = v22;
    *(&v99 + 1) = v23;
    sub_2544AECF0();
    v24 = sub_25454B274();
    v26 = v25;
    v28 = v27;
    v68 = v5;
    sub_25454B104();
    v70 = v21;
    v29 = sub_25454B224();
    v69 = v4;
    v30 = v29;
    v71 = a2;
    v32 = v31;
    v34 = v33;
    v67[1] = a1;

    sub_2544C9C64(v24, v26, v28 & 1);

    sub_25454B644();
    v35 = sub_25454B1D4();
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v42 = v30;
    v4 = v69;
    v43 = v32;
    a2 = v71;
    sub_2544C9C64(v42, v43, v34 & 1);

    sub_25454BA64();
    sub_25454A784();
    v44 = v39 & 1;
    v21 = v70;
    LOBYTE(v89[0]) = v44;
    *&v90 = v35;
    *(&v90 + 1) = v37;
    LOBYTE(v91) = v44;
    *(&v91 + 1) = v41;
    v5 = v68;
    nullsub_1(&v90);
    v105 = v96;
    v106 = v97;
    v107 = v98;
    v101 = v92;
    v102 = v93;
    v103 = v94;
    v104 = v95;
    v99 = v90;
    v100 = v91;
  }

  else
  {
    sub_254515F04(&v99);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v45 = v72;
  sub_25454B7A4();
  v46 = v5[2];
  v47 = v73;
  v46(v73, v45, v4);
  v46(v74, v47, v4);
  v48 = v77;
  sub_25454B794();
  v49 = v5[1];
  v49(v47, v4);
  v49(v45, v4);
  sub_25454BA64();
  sub_25454A784();
  v50 = v48;
  v51 = v76;
  sub_254515F20(v50, v76, type metadata accessor for SoftwareUpdateAccessoryCell);
  v52 = (v51 + *(v75 + 36));
  v53 = v113;
  v52[4] = v112;
  v52[5] = v53;
  v52[6] = v114;
  v54 = v109;
  *v52 = v108;
  v52[1] = v54;
  v55 = v111;
  v52[2] = v110;
  v52[3] = v55;
  sub_2544B14E8(v51, v21, &qword_27F5FC8F8, &qword_254550A58);
  v86 = v105;
  v87 = v106;
  v88 = v107;
  v82 = v101;
  v83 = v102;
  v84 = v103;
  v85 = v104;
  v80 = v99;
  v81 = v100;
  v56 = v78;
  sub_2544AE240(v21, v78, &qword_27F5FC8F8, &qword_254550A58);
  v57 = v87;
  v89[6] = v86;
  v89[7] = v87;
  v58 = v88;
  v89[8] = v88;
  v59 = v82;
  v60 = v83;
  v89[2] = v82;
  v89[3] = v83;
  v62 = v84;
  v61 = v85;
  v89[4] = v84;
  v89[5] = v85;
  v64 = v80;
  v63 = v81;
  v89[0] = v80;
  v89[1] = v81;
  a2[6] = v86;
  a2[7] = v57;
  a2[8] = v58;
  a2[2] = v59;
  a2[3] = v60;
  a2[4] = v62;
  a2[5] = v61;
  *a2 = v64;
  a2[1] = v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC900, &qword_254550A60);
  sub_2544AE240(v56, a2 + *(v65 + 48), &qword_27F5FC8F8, &qword_254550A58);
  sub_2544AE240(v89, &v90, &qword_27F5FC908, &unk_254550A68);
  sub_2544AE150(v21, &qword_27F5FC8F8, &qword_254550A58);
  sub_2544AE150(v56, &qword_27F5FC8F8, &qword_254550A58);
  v96 = v86;
  v97 = v87;
  v98 = v88;
  v92 = v82;
  v93 = v83;
  v94 = v84;
  v95 = v85;
  v90 = v80;
  v91 = v81;
  sub_2544AE150(&v90, &qword_27F5FC908, &unk_254550A68);
}

uint64_t sub_25450E600()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7A8, &unk_25454EB70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v51 - v2;
  v4 = sub_25454A0F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v51 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v51 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v16 = *(type metadata accessor for SoftwareUpdateStatusView(0) + 24);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);
  v54 = v16;
  v55 = v17;
  sub_25454B7A4();
  v18 = sub_25454A0D4();
  v20 = v19;
  v21 = *(v5 + 8);
  v21(v15, v4);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB990, "ܡ");
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_25454D8F0;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_25450649C();
    *(v22 + 32) = v18;
    *(v22 + 40) = v20;
    v53 = sub_25454BD04();
    v20 = v23;
  }

  else
  {
    v53 = 0;
  }

  sub_25454B7A4();
  sub_25454A0B4();
  v24 = v13;
  v25 = v4;
  v26 = v21;
  v21(v24, v4);
  v27 = sub_254549354();
  v28 = (*(*(v27 - 8) + 48))(v3, 1, v27);
  sub_2544AE150(v3, &qword_27F5FB7A8, &unk_25454EB70);
  if (v28 == 1)
  {
    if (v20)
    {
      v29 = sub_254511480();
      if (v30)
      {
        if (v53 == v29 && v20 == v30)
        {

          goto LABEL_24;
        }

        v46 = sub_25454C334();

        if (v46)
        {
LABEL_24:
          v47 = v51;
          sub_25454B7A4();
          v48 = sub_25454A0E4();
          v50 = v49;
          v21(v47, v25);
          if (v50)
          {
            return v48;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
      }
    }

    return 0;
  }

  v31 = v58;
  v57 = v53;
  v58[0] = v20;
  v32 = v52;
  sub_25454B7A4();
  v33 = sub_25454A0E4();
  v35 = v34;
  v26(v32, v25);
  v36 = 0;
  v58[1] = v33;
  v58[2] = v35;
  v37 = MEMORY[0x277D84F90];
  v51 = v58;
LABEL_11:
  v38 = &v31[2 * v36];
  while (++v36 != 3)
  {
    v40 = *(v38 - 1);
    v39 = *v38;
    sub_25454BE14();

    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v38 += 2;

    if (v39)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2544D3ACC(0, *(v37 + 2) + 1, 1, v37);
      }

      v31 = v51;
      v42 = *(v37 + 2);
      v41 = *(v37 + 3);
      if (v42 >= v41 >> 1)
      {
        v37 = sub_2544D3ACC((v41 > 1), v42 + 1, 1, v37);
      }

      *(v37 + 2) = v42 + 1;
      v43 = &v37[16 * v42];
      *(v43 + 4) = v40;
      *(v43 + 5) = v39;
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC910, &qword_254550A78);
  swift_arrayDestroy();
  v56 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC918, &unk_254550A80);
  sub_2544AE1F0(&qword_27F5FC920, &qword_27F5FC918, &unk_254550A80);
  v44 = sub_25454BC04();

  return v44;
}

uint64_t sub_25450EBD8(uint64_t a1)
{
  v2 = sub_25454A0F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v8 = *(updated + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);
  sub_25454B7A4();
  v9 = sub_25454A0C4();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
LABEL_7:
    v13 = (a1 + *(updated + 20));
    v14 = *v13;
    v15 = *(v13 + 1);
    v17[16] = v14;
    v18 = v15;
    v17[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7B4();
  }
}

uint64_t sub_25450EDCC@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v280 = a2;
  v290 = a3;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9F0, &qword_254550B78);
  v4 = *(*(v234 - 8) + 64);
  MEMORY[0x28223BE20](v234);
  v235 = &v221 - v5;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9F8, &qword_254550B80);
  v6 = *(*(v289 - 8) + 64);
  MEMORY[0x28223BE20](v289);
  v236 = &v221 - v7;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA00, &qword_254550B88);
  v8 = *(*(v223 - 8) + 64);
  MEMORY[0x28223BE20](v223);
  v226 = &v221 - v9;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA08, &qword_254550B90);
  v10 = *(*(v224 - 8) + 64);
  MEMORY[0x28223BE20](v224);
  v227 = &v221 - v11;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA10, &qword_254550B98);
  v12 = *(*(v225 - 8) + 64);
  MEMORY[0x28223BE20](v225);
  v228 = &v221 - v13;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA18, &qword_254550BA0);
  v14 = *(*(v232 - 8) + 64);
  MEMORY[0x28223BE20](v232);
  v229 = &v221 - v15;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA20, &qword_254550BA8);
  v231 = *(v233 - 8);
  v16 = *(v231 + 64);
  MEMORY[0x28223BE20](v233);
  v230 = &v221 - v17;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3C0, &qword_254550BB0);
  v257 = *(v263 - 8);
  v18 = *(v257 + 64);
  MEMORY[0x28223BE20](v263);
  v256 = &v221 - v19;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA28, &qword_254550BB8);
  v20 = *(*(v286 - 8) + 64);
  MEMORY[0x28223BE20](v286);
  v288 = &v221 - v21;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA30, &qword_254550BC0);
  v22 = *(*(v260 - 8) + 64);
  MEMORY[0x28223BE20](v260);
  v261 = &v221 - v23;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA38, &qword_254550BC8);
  v24 = *(*(v287 - 8) + 64);
  MEMORY[0x28223BE20](v287);
  v262 = &v221 - v25;
  v281 = sub_25454ADA4();
  v255 = *(v281 - 8);
  v26 = *(v255 + 64);
  MEMORY[0x28223BE20](v281);
  v254 = &v221 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_254549AB4();
  v242 = *(v28 - 8);
  v243 = v28;
  v29 = *(v242 + 64);
  MEMORY[0x28223BE20](v28);
  v240 = v30;
  v241 = &v221 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v237 = *(updated - 8);
  v31 = *(v237 + 64);
  MEMORY[0x28223BE20](updated);
  v238 = v32;
  v239 = &v221 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA40, &qword_254550BD0);
  v252 = *(v33 - 8);
  v253 = v33;
  v34 = *(v252 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v221 = &v221 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v244 = &v221 - v37;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA48, &qword_254550BD8);
  v38 = *(*(v251 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v251);
  v222 = &v221 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v246 = &v221 - v41;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA50, &qword_254550BE0);
  v42 = *(*(v245 - 8) + 64);
  MEMORY[0x28223BE20](v245);
  v247 = &v221 - v43;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA58, &qword_254550BE8);
  v44 = *(*(v258 - 8) + 64);
  MEMORY[0x28223BE20](v258);
  v248 = &v221 - v45;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA60, &qword_254550BF0);
  v250 = *(v259 - 8);
  v46 = *(v250 + 64);
  MEMORY[0x28223BE20](v259);
  v249 = &v221 - v47;
  v48 = sub_254549DC4();
  v278 = *(v48 - 8);
  v279 = v48;
  v49 = *(v278 + 64);
  MEMORY[0x28223BE20](v48);
  v276 = &v221 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA68, &qword_254550BF8);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v51 - 8);
  v285 = &v221 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v284 = &v221 - v55;
  v274 = sub_25454A744();
  v56 = *(*(v274 - 8) + 64);
  MEMORY[0x28223BE20](v274);
  v275 = &v221 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_254549D24();
  v272 = *(v58 - 8);
  v273 = v58;
  v59 = *(v272 + 64);
  MEMORY[0x28223BE20](v58);
  v271 = &v221 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = sub_25454B714();
  v268 = *(v292 - 8);
  v61 = *(v268 + 64);
  MEMORY[0x28223BE20](v292);
  v63 = &v221 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_254549744();
  v294 = *(v291 - 8);
  v64 = *(v294 + 64);
  MEMORY[0x28223BE20](v291);
  v66 = &v221 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_25454A0A4();
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  v71 = &v221 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA70, &qword_254550C00);
  v72 = *(*(v270 - 8) + 64);
  v73 = MEMORY[0x28223BE20](v270);
  v283 = &v221 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v293 = &v221 - v75;
  sub_25454BE14();
  v282 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254549AA4();
  sub_254549F44();
  v265 = *(v68 + 8);
  v265(v71, v67);
  sub_254549734();
  v76 = *(v294 + 8);
  v294 += 8;
  v267 = v76;
  v76(v66, v291);
  sub_25454B704();
  v77 = v268;
  v78 = v292;
  (*(v268 + 104))(v63, *MEMORY[0x277CE0FE0], v292);
  v269 = sub_25454B764();

  (*(v77 + 8))(v63, v78);
  sub_25454BA54();
  sub_25454A544();
  LOBYTE(v295) = 1;
  *&v309[6] = *&v316[13];
  *&v309[22] = *&v316[15];
  *&v309[38] = *&v316[17];
  LODWORD(v268) = sub_25454AF14();
  sub_25454A394();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  LOBYTE(v297) = 0;
  sub_254549AA4();
  v266 = sub_254549FD4();
  v87 = v265;
  v265(v71, v67);
  KeyPath = swift_getKeyPath();
  v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCA78, &qword_254550C08) + 36);
  v292 = a1;
  v89 = v293;
  v90 = (v293 + v88);
  v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3A0, &qword_2545509C0) + 28);
  sub_254549AA4();
  sub_254549F44();
  v87(v71, v67);
  v92 = v271;
  sub_254549724();
  v267(v66, v291);
  sub_254549D14();
  (*(v272 + 8))(v92, v273);
  v93 = sub_25454AC44();
  (*(*(v93 - 8) + 56))(v90 + v91, 0, 1, v93);
  *v90 = swift_getKeyPath();
  *v89 = v269;
  *(v89 + 8) = 0;
  *(v89 + 16) = 1;
  *(v89 + 18) = *v309;
  *(v89 + 34) = *&v309[16];
  *(v89 + 50) = *&v309[32];
  *(v89 + 64) = *&v309[46];
  *(v89 + 72) = v268;
  *(v89 + 80) = v80;
  *(v89 + 88) = v82;
  *(v89 + 96) = v84;
  *(v89 + 104) = v86;
  *(v89 + 112) = 0;
  v94 = v266;
  *(v89 + 120) = KeyPath;
  *(v89 + 128) = v94;
  v95 = *(v274 + 20);
  v96 = *MEMORY[0x277CE0118];
  v97 = sub_25454ABA4();
  v98 = *(v97 - 8);
  v99 = *(v98 + 104);
  v100 = v275;
  v274 = v98 + 104;
  v99(&v275[v95], v96, v97);
  __asm { FMOV            V0.2D, #10.0 }

  *v100 = _Q0;
  v106 = sub_25454B644();
  sub_25454A484();
  v107 = v89 + *(v270 + 36);
  v108 = v292;
  sub_254515C8C(v100, v107, MEMORY[0x277CDFC08]);
  v109 = v107 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC758, &unk_254550900) + 36);
  v110 = *&v316[21];
  *v109 = *&v316[19];
  *(v109 + 16) = v110;
  *(v109 + 32) = v316[23];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC760, &unk_2545506E0);
  *(v107 + *(v111 + 52)) = v106;
  *(v107 + *(v111 + 56)) = 256;
  v112 = sub_25454BA54();
  v114 = v113;
  sub_25450D2B0(v100);
  v115 = (v107 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC768, &qword_254550910) + 36));
  *v115 = v112;
  v115[1] = v114;
  v116 = sub_25454BA54();
  v118 = v117;
  v119 = (v107 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC860, &qword_254550918) + 36));
  *v119 = v116;
  v119[1] = v118;
  v294 = sub_25454AC24();
  v308 = 0;
  v120 = v280;
  sub_254510E18(v280, &v297);
  v312 = *&v298[16];
  v313 = *&v298[32];
  v314 = *&v298[48];
  v315 = *&v298[64];
  v310 = v297;
  v311 = *v298;
  *&v316[4] = *&v298[16];
  *&v316[6] = *&v298[32];
  *&v316[10] = *&v298[64];
  *&v316[8] = *&v298[48];
  *v316 = v297;
  *&v316[2] = *v298;
  sub_2544AE240(&v310, &v295, &qword_27F5FCA80, &unk_254550C10);
  sub_2544AE150(v316, &qword_27F5FCA80, &unk_254550C10);
  *&v307[39] = v312;
  *&v307[55] = v313;
  *&v307[71] = v314;
  *&v307[87] = v315;
  *&v307[7] = v310;
  *&v307[23] = v311;
  LODWORD(v291) = v308;
  sub_25454BA64();
  sub_25454A784();
  v121 = *(updated + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8);
  v122 = v276;
  sub_25454B7A4();
  v123 = v278;
  v124 = v279;
  v125 = (*(v278 + 88))(v122, v279);
  if (v125 != *MEMORY[0x277D16608])
  {
    if (v125 == *MEMORY[0x277D16628])
    {
      goto LABEL_7;
    }

    if (v125 == *MEMORY[0x277D16618])
    {
      goto LABEL_5;
    }

    if (v125 == *MEMORY[0x277D165F8])
    {
LABEL_7:
      v133 = v239;
      sub_254515C8C(v120, v239, type metadata accessor for SoftwareUpdateStatusView);
      v280 = v99;
      v135 = v242;
      v134 = v243;
      v136 = *(v242 + 16);
      LODWORD(v279) = v96;
      v137 = v241;
      v136(v241, v108, v243);
      v138 = (*(v237 + 80) + 16) & ~*(v237 + 80);
      v139 = (v238 + *(v135 + 80) + v138) & ~*(v135 + 80);
      v140 = swift_allocObject();
      sub_254515F20(v133, v140 + v138, type metadata accessor for SoftwareUpdateStatusView);
      (*(v135 + 32))(v140 + v139, v137, v134);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB00, &qword_254550C48);
      v141 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCB08, &qword_254550C50);
      v142 = sub_254516DB8();
      *&v297 = v141;
      *(&v297 + 1) = v142;
      swift_getOpaqueTypeConformance2();
      v143 = v244;
      sub_25454B7F4();
      sub_25454BA54();
      sub_25454A784();
      v144 = v246;
      (*(v252 + 32))(v246, v143, v253);
      v145 = &v144[*(v251 + 36)];
      v146 = v322;
      *(v145 + 4) = v321;
      *(v145 + 5) = v146;
      *(v145 + 6) = v323;
      v147 = v318;
      *v145 = v317;
      *(v145 + 1) = v147;
      v148 = v320;
      *(v145 + 2) = v319;
      *(v145 + 3) = v148;
      v149 = [objc_opt_self() tertiarySystemFillColor];
      v150 = sub_25454B5F4();
      LOBYTE(v138) = sub_25454AF14();
      v151 = v144;
      v152 = v247;
      sub_2544B14E8(v151, v247, &qword_27F5FCA48, &qword_254550BD8);
      v153 = v152 + *(v245 + 36);
      *v153 = v150;
      *(v153 + 8) = v138;
      v154 = v258;
      v155 = v248;
      v156 = &v248[*(v258 + 36)];
      v280(v156, v279, v97);
      *&v156[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCAC0, &qword_254550C30) + 36)] = 256;
      sub_2544B14E8(v152, v155, &qword_27F5FCA50, &qword_254550BE0);
      v157 = v254;
      sub_25454AD94();
      v158 = sub_254516B60();
      v159 = sub_254516300();
      v160 = v249;
      v161 = v281;
      sub_25454B304();
      (*(v255 + 8))(v157, v161);
      sub_2544AE150(v155, &qword_27F5FCA58, &qword_254550BE8);
      v162 = v250;
      v163 = v259;
      (*(v250 + 16))(v261, v160, v259);
      swift_storeEnumTagMultiPayload();
      *&v297 = v154;
      *(&v297 + 1) = v161;
      *v298 = v158;
      *&v298[8] = v159;
      swift_getOpaqueTypeConformance2();
      sub_2544AE1F0(&qword_27F5FCAE0, &qword_27F5FB3C0, &qword_254550BB0);
      v164 = v262;
      sub_25454AD44();
      v165 = &qword_27F5FCA38;
      v166 = &qword_254550BC8;
      sub_2544AE240(v164, v288, &qword_27F5FCA38, &qword_254550BC8);
    }

    else
    {
      if (v125 != *MEMORY[0x277D16640])
      {
        swift_storeEnumTagMultiPayload();
        v217 = v123;
        v218 = sub_2545166B4();
        v219 = sub_254516300();
        *&v297 = v232;
        *(&v297 + 1) = v281;
        *v298 = v218;
        *&v298[8] = v219;
        swift_getOpaqueTypeConformance2();
        v220 = v236;
        sub_25454AD44();
        sub_2544AE240(v220, v288, &qword_27F5FC9F8, &qword_254550B80);
        swift_storeEnumTagMultiPayload();
        sub_254516A4C();
        sub_254516CD0();
        v132 = v284;
        sub_25454AD44();
        sub_2544AE150(v220, &qword_27F5FC9F8, &qword_254550B80);
        (*(v217 + 8))(v122, v124);
        goto LABEL_9;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB00, &qword_254550C48);
      v187 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCB08, &qword_254550C50);
      v188 = sub_254516DB8();
      *&v297 = v187;
      *(&v297 + 1) = v188;
      swift_getOpaqueTypeConformance2();
      v189 = v221;
      sub_25454B7F4();
      sub_25454BA54();
      sub_25454A784();
      v190 = v222;
      (*(v252 + 32))(v222, v189, v253);
      v191 = (v190 + *(v251 + 36));
      v192 = v322;
      v191[4] = v321;
      v191[5] = v192;
      v191[6] = v323;
      v193 = v318;
      *v191 = v317;
      v191[1] = v193;
      v194 = v320;
      v191[2] = v319;
      v191[3] = v194;
      v195 = swift_getKeyPath();
      v196 = swift_allocObject();
      *(v196 + 16) = 1;
      v197 = v226;
      sub_2544B14E8(v190, v226, &qword_27F5FCA48, &qword_254550BD8);
      v198 = (v197 + *(v223 + 36));
      *v198 = v195;
      v198[1] = sub_2544C8E8C;
      v198[2] = v196;
      v199 = [objc_opt_self() tertiarySystemFillColor];
      v200 = sub_25454B5F4();
      LOBYTE(v196) = sub_25454AF14();
      v201 = v197;
      v202 = v227;
      sub_2544B14E8(v201, v227, &qword_27F5FCA00, &qword_254550B88);
      v203 = v202 + *(v224 + 36);
      *v203 = v200;
      *(v203 + 8) = v196;
      v204 = sub_25454B644();
      v205 = swift_getKeyPath();
      v206 = v202;
      v207 = v228;
      sub_2544B14E8(v206, v228, &qword_27F5FCA08, &qword_254550B90);
      v208 = (v207 + *(v225 + 36));
      *v208 = v205;
      v208[1] = v204;
      v209 = v99;
      v210 = v232;
      v211 = v229;
      v212 = &v229[*(v232 + 36)];
      v209(v212, v96, v97);
      *&v212[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCAC0, &qword_254550C30) + 36)] = 256;
      sub_2544B14E8(v207, v211, &qword_27F5FCA10, &qword_254550B98);
      v213 = v254;
      sub_25454AD94();
      v214 = sub_2545166B4();
      v215 = sub_254516300();
      v160 = v230;
      v216 = v281;
      sub_25454B304();
      (*(v255 + 8))(v213, v216);
      sub_2544AE150(v211, &qword_27F5FCA18, &qword_254550BA0);
      v162 = v231;
      v163 = v233;
      (*(v231 + 16))(v235, v160, v233);
      swift_storeEnumTagMultiPayload();
      *&v297 = v210;
      *(&v297 + 1) = v216;
      *v298 = v214;
      *&v298[8] = v215;
      swift_getOpaqueTypeConformance2();
      v164 = v236;
      sub_25454AD44();
      v165 = &qword_27F5FC9F8;
      v166 = &qword_254550B80;
      sub_2544AE240(v164, v288, &qword_27F5FC9F8, &qword_254550B80);
    }

    swift_storeEnumTagMultiPayload();
    sub_254516A4C();
    sub_254516CD0();
    v132 = v284;
    sub_25454AD44();
    sub_2544AE150(v164, v165, v166);
    (*(v162 + 8))(v160, v163);
    goto LABEL_9;
  }

  (*(v123 + 8))(v122, v124);
LABEL_5:
  v126 = v256;
  sub_25454A4C4();
  v127 = v257;
  v128 = v263;
  (*(v257 + 16))(v261, v126, v263);
  swift_storeEnumTagMultiPayload();
  v129 = sub_254516B60();
  v130 = sub_254516300();
  *&v297 = v258;
  *(&v297 + 1) = v281;
  *v298 = v129;
  *&v298[8] = v130;
  swift_getOpaqueTypeConformance2();
  sub_2544AE1F0(&qword_27F5FCAE0, &qword_27F5FB3C0, &qword_254550BB0);
  v131 = v262;
  sub_25454AD44();
  sub_2544AE240(v131, v288, &qword_27F5FCA38, &qword_254550BC8);
  swift_storeEnumTagMultiPayload();
  sub_254516A4C();
  sub_254516CD0();
  v132 = v284;
  sub_25454AD44();
  sub_2544AE150(v131, &qword_27F5FCA38, &qword_254550BC8);
  (*(v127 + 8))(v126, v128);
LABEL_9:
  v167 = v293;
  v168 = v283;
  sub_2544AE240(v293, v283, &qword_27F5FCA70, &qword_254550C00);
  v169 = v285;
  sub_2544AE240(v132, v285, &qword_27F5FCA68, &qword_254550BF8);
  v170 = v290;
  sub_2544AE240(v168, v290, &qword_27F5FCA70, &qword_254550C00);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCAF0, &qword_254550C38);
  v172 = v170 + *(v171 + 48);
  v173 = v294;
  *&v295 = v294;
  *(&v295 + 1) = 0x4000000000000000;
  v174 = v291;
  v296[0] = v291;
  *&v296[49] = *&v307[48];
  *&v296[65] = *&v307[64];
  *&v296[81] = *&v307[80];
  *&v296[96] = *&v307[95];
  *&v296[17] = *&v307[16];
  *&v296[33] = *&v307[32];
  *&v296[1] = *v307;
  *&v296[136] = v302;
  *&v296[120] = v301;
  *&v296[104] = v300;
  *&v296[200] = v306;
  *&v296[184] = v305;
  *&v296[168] = v304;
  *&v296[152] = v303;
  v175 = *v296;
  *v172 = v295;
  *(v172 + 16) = v175;
  v176 = *&v296[16];
  v177 = *&v296[32];
  v178 = *&v296[64];
  *(v172 + 64) = *&v296[48];
  *(v172 + 80) = v178;
  *(v172 + 32) = v176;
  *(v172 + 48) = v177;
  v179 = *&v296[80];
  v180 = *&v296[96];
  v181 = *&v296[128];
  *(v172 + 128) = *&v296[112];
  *(v172 + 144) = v181;
  *(v172 + 96) = v179;
  *(v172 + 112) = v180;
  v182 = *&v296[144];
  v183 = *&v296[160];
  v184 = *&v296[176];
  v185 = *&v296[192];
  *(v172 + 224) = *&v296[208];
  *(v172 + 192) = v184;
  *(v172 + 208) = v185;
  *(v172 + 160) = v182;
  *(v172 + 176) = v183;
  sub_2544AE240(v169, v170 + *(v171 + 64), &qword_27F5FCA68, &qword_254550BF8);
  sub_2544AE240(&v295, &v297, &qword_27F5FCAF8, &qword_254550C40);
  sub_2544AE150(v132, &qword_27F5FCA68, &qword_254550BF8);
  sub_2544AE150(v167, &qword_27F5FCA70, &qword_254550C00);
  sub_2544AE150(v169, &qword_27F5FCA68, &qword_254550BF8);
  *&v298[49] = *&v307[48];
  *&v298[65] = *&v307[64];
  *v299 = *&v307[80];
  *&v298[1] = *v307;
  *&v298[17] = *&v307[16];
  *&v298[33] = *&v307[32];
  *&v299[71] = v303;
  *&v299[87] = v304;
  *&v299[103] = v305;
  *&v299[119] = v306;
  *&v299[23] = v300;
  *&v299[39] = v301;
  *&v297 = v173;
  *(&v297 + 1) = 0x4000000000000000;
  v298[0] = v174;
  *&v299[15] = *&v307[95];
  *&v299[55] = v302;
  sub_2544AE150(&v297, &qword_27F5FCAF8, &qword_254550C40);
  sub_2544AE150(v168, &qword_27F5FCA70, &qword_254550C00);
}

uint64_t sub_254510E18@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v90 = a1;
  v87 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFE0, &unk_254550CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v85 - v4;
  v6 = sub_2545497F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25454A0A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v92 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254549AA4();
  sub_25454A004();
  (*(v12 + 8))(v15, v11);
  v16 = sub_2545497E4();
  v18 = v17;
  (*(v7 + 8))(v10, v6);
  v97 = v16;
  v98 = v18;
  sub_2544AECF0();
  v19 = sub_25454B274();
  v21 = v20;
  v23 = v22;
  sub_25454AFF4();
  v91 = sub_25454B224();
  v94 = v24;
  v95 = v25;
  v89 = v26;

  sub_2544C9C64(v19, v21, v23 & 1);

  sub_254549984();
  v27 = sub_254549D94();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v5, 1, v27) == 1)
  {
    sub_2544AE150(v5, &qword_27F5FBFE0, &unk_254550CD0);
  }

  else
  {
    v29 = sub_254549D44();
    v31 = v30;
    (*(v28 + 8))(v5, v27);
    if (v31)
    {
      v97 = v29;
      v98 = v31;
      v32 = sub_25454B274();
      v34 = v33;
      v36 = v35;
      sub_25454B104();
      v37 = sub_25454B224();
      v39 = v38;
      v41 = v40;
      v43 = v42;

      sub_2544C9C64(v32, v34, v36 & 1);

      v44 = v41 & 1;
      v45 = v37;
      v88 = v39;
      v85 = v44;
      sub_2544A8F00(v37, v39, v44);
      v86 = v43;

      goto LABEL_8;
    }
  }

  v45 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
LABEL_8:
  v46 = sub_254511480();
  v93 = v45;
  if (v47)
  {
    v97 = v46;
    v98 = v47;
    v48 = sub_25454B274();
    v50 = v49;
    v52 = v51;
    sub_25454B124();
    v53 = sub_25454B224();
    v55 = v54;
    v57 = v56;

    sub_2544C9C64(v48, v50, v52 & 1);

    sub_25454B644();
    v58 = sub_25454B1D4();
    v60 = v59;
    v62 = v61;
    v64 = v63;

    v65 = v55;
    v45 = v93;
    sub_2544C9C64(v53, v65, v57 & 1);

    v66 = v62 & 1;
    v67 = v58;
    v68 = v60;
    v69 = v62 & 1;
    sub_2544A8F00(v58, v60, v66);
    v70 = v64;
  }

  else
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
  }

  v71 = v89 & 1;
  LOBYTE(v97) = v89 & 1;
  v96 = v89 & 1;
  v72 = v91;
  v73 = v94;
  sub_2544A8F00(v91, v94, v89 & 1);

  sub_2544A8F00(v72, v73, v71);

  v74 = v45;
  v75 = v45;
  v76 = v88;
  v77 = v85;
  v78 = v86;
  sub_2544C9BDC(v75, v88, v85, v86);
  sub_2544C9BDC(v67, v68, v69, v70);
  sub_2544C9C20(v74, v76, v77, v78);
  sub_2544C9C20(v67, v68, v69, v70);
  v79 = v94;
  sub_2544C9C64(v72, v94, v71);
  v80 = v95;

  v81 = v96;
  v82 = v87;
  *v87 = v72;
  v82[1] = v79;
  *(v82 + 16) = v81;
  v82[3] = v80;
  v83 = v93;
  v82[4] = v93;
  v82[5] = v76;
  v82[6] = v77;
  v82[7] = v78;
  v82[8] = v67;
  v82[9] = v68;
  v82[10] = v69;
  v82[11] = v70;
  sub_2544C9C20(v67, v68, v69, v70);
  sub_2544C9C20(v83, v76, v77, v78);
  sub_2544C9C64(v72, v79, v97);
}

uint64_t sub_254511480()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7A8, &unk_25454EB70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v36 - v3;
  v5 = sub_25454A0F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v36[0] = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = v36 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v36 - v12;
  v14 = sub_254549354();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v20 = *(updated + 24);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);
  v39 = v0;
  v36[1] = v21;
  v36[2] = v20;
  sub_25454B7A4();
  sub_25454A0B4();
  v22 = *(v6 + 8);
  v38 = v5;
  v22(v13, v5);
  if ((*(v15 + 48))(v4, 1, v14) == 1)
  {
    sub_2544AE150(v4, &qword_27F5FB7A8, &unk_25454EB70);
    v23 = v37;
    sub_25454B7A4();
    v24 = sub_25454A0D4();
    v26 = v25;
    v27 = v23;
    v28 = v38;
    v22(v27, v38);
    if (v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB990, "ܡ");
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_25454D8F0;
      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 64) = sub_25450649C();
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v30 = sub_25454BD04();
    }

    else
    {
      v34 = v36[0];
      sub_25454B7A4();
      v30 = sub_25454A0E4();
      v22(v34, v28);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v4, v14);
    v31 = *(v39 + *(updated + 32));
    v32 = sub_254549314();
    v33 = [v31 stringFromDate_];

    v30 = sub_25454BC84();
    (*(v15 + 8))(v18, v14);
  }

  return v30;
}

uint64_t sub_254511878()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_254511908()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_25454BCF4();
  v2 = v1;
  v3 = sub_25454AF14();
  sub_25454A394();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_25454B104();
  KeyPath = swift_getKeyPath();
  *&v15 = v0;
  *(&v15 + 1) = v2;
  LOBYTE(v16) = 0;
  *(&v16 + 1) = MEMORY[0x277D84F90];
  LOBYTE(v17) = v3;
  *(&v17 + 1) = v5;
  *&v18 = v7;
  *(&v18 + 1) = v9;
  *&v19 = v11;
  BYTE8(v19) = 0;
  *&v20 = KeyPath;
  *(&v20 + 1) = v12;
  sub_25454B054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB08, &qword_254550C50);
  sub_254516DB8();
  sub_25454B2D4();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v21[5] = v20;
  v21[0] = v15;
  v21[1] = v16;
  sub_2544AE150(v21, &qword_27F5FCB08, &qword_254550C50);
}

uint64_t sub_254511AB4(uint64_t a1, uint64_t a2)
{
  v24[2] = a1;
  v25 = a2;
  v27 = sub_254549AB4();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  v8 = sub_254549DC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - v14;
  sub_25454BE14();
  v24[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 104))(v15, *MEMORY[0x277D16618], v8);
  v16 = *(type metadata accessor for SoftwareUpdateStatusView(0) + 28);
  (*(v9 + 16))(v13, v15, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8);
  sub_25454B7B4();
  (*(v9 + 8))(v15, v8);
  v17 = sub_25454BE44();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = v26;
  v19 = v27;
  (*(v2 + 16))(v26, v25, v27);
  v20 = sub_25454BE04();
  v21 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = MEMORY[0x277D85700];
  (*(v2 + 32))(v22 + v21, v18, v19);
  sub_2544B5138(0, 0, v7, &unk_254550CC8, v22);
}

uint64_t sub_254511E48()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = *(MEMORY[0x277D15DE0] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_2544AAF90;

  return MEMORY[0x28216FBE8]();
}

uint64_t sub_254511EF8()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_25454BCF4();
  v2 = v1;
  v3 = sub_25454AF14();
  sub_25454A394();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_25454B104();
  KeyPath = swift_getKeyPath();
  *&v15 = v0;
  *(&v15 + 1) = v2;
  LOBYTE(v16) = 0;
  *(&v16 + 1) = MEMORY[0x277D84F90];
  LOBYTE(v17) = v3;
  *(&v17 + 1) = v5;
  *&v18 = v7;
  *(&v18 + 1) = v9;
  *&v19 = v11;
  BYTE8(v19) = 0;
  *&v20 = KeyPath;
  *(&v20 + 1) = v12;
  sub_25454B054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB08, &qword_254550C50);
  sub_254516DB8();
  sub_25454B2D4();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v21[5] = v20;
  v21[0] = v15;
  v21[1] = v16;
  sub_2544AE150(v21, &qword_27F5FCB08, &qword_254550C50);
}

uint64_t sub_2545120A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v43 = a4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC928, &qword_254550A90);
  v6 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v38 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC930, &qword_254550A98);
  v9 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v11 = &v38 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC938, &qword_254550AA0);
  v12 = *(v42 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v42);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC940, &qword_254550AA8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v38 - v18;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    updated = type metadata accessor for SoftwareUpdateStatusView(0);
    v22 = v39;
    v23 = v39 + *(updated + 20);
    v24 = *v23;
    v25 = *(v23 + 8);
    LOBYTE(v44) = v24;
    *(&v44 + 1) = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7A4();
    if (v51)
    {
      *&v44 = a1;
      *(&v44 + 1) = a2;
      sub_2544AECF0();
      v26 = sub_25454B274();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      sub_25454BA64();
      sub_25454A784();
      v51 = v30 & 1;
      *v8 = v26;
      *(v8 + 1) = v28;
      v8[16] = v30 & 1;
      *(v8 + 3) = v32;
      v33 = v49;
      *(v8 + 6) = v48;
      *(v8 + 7) = v33;
      *(v8 + 8) = v50;
      v34 = v45;
      *(v8 + 2) = v44;
      *(v8 + 3) = v34;
      v35 = v47;
      *(v8 + 4) = v46;
      *(v8 + 5) = v35;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC580, &qword_2545501D0);
      sub_2544AE1F0(&qword_27F5FC950, &qword_27F5FC930, &qword_254550A98);
      sub_254516E90(&qword_27F5FC958, &qword_27F5FC580, &qword_2545501D0);
      sub_25454AD44();
    }

    else
    {
      *v11 = sub_25454AB14();
      *(v11 + 1) = 0;
      v11[16] = 1;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC948, &unk_254550AB0);
      sub_254512604(a1, a2, v22, &v11[*(v36 + 44)]);

      sub_2544AE240(v11, v8, &qword_27F5FC930, &qword_254550A98);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC580, &qword_2545501D0);
      sub_2544AE1F0(&qword_27F5FC950, &qword_27F5FC930, &qword_254550A98);
      sub_254516E90(&qword_27F5FC958, &qword_27F5FC580, &qword_2545501D0);
      sub_25454AD44();
      sub_2544AE150(v11, &qword_27F5FC930, &qword_254550A98);
    }

    sub_2544B14E8(v15, v19, &qword_27F5FC938, &qword_254550AA0);
    (*(v12 + 56))(v19, 0, 1, v42);
  }

  else
  {
LABEL_9:
    (*(v12 + 56))(v19, 1, 1, v42);
  }

  sub_2544B14E8(v19, v43, &qword_27F5FC940, &qword_254550AA8);
}

uint64_t sub_254512604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v83 = a4;
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v68 = *(updated - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v69 = v8;
  v70 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC960, &qword_254550AC0);
  v9 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v11 = &v67 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC968, &qword_254550AC8);
  v12 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v77 = &v67 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC970, &qword_254550AD0);
  v14 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v81 = &v67 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC978, &qword_254550AD8);
  v16 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v80 = &v67 - v17;
  v18 = sub_25454BE14();
  v79 = sub_25454BE04();
  v84 = v18;
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v72 = a1;
  *&v103 = a1;
  *(&v103 + 1) = a2;
  sub_2544AECF0();
  v74 = a2;

  v19 = sub_25454B274();
  v21 = v20;
  *&v103 = v19;
  *(&v103 + 1) = v20;
  v23 = v22 & 1;
  LOBYTE(v104) = v22 & 1;
  *(&v104 + 1) = v24;
  v75 = v11;
  sub_25454B5A4();
  sub_2544C9C64(v19, v21, v23);

  v25 = sub_25454BA44();
  v27 = v26;
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = sub_25454AC14();
  LOBYTE(v85[0]) = 0;
  sub_254512E94(&v103);
  v95 = *&v105[96];
  v96 = *&v105[112];
  v97 = *&v105[128];
  v98 = *&v105[144];
  v91 = *&v105[32];
  v92 = *&v105[48];
  v93 = *&v105[64];
  v94 = *&v105[80];
  v87 = v103;
  v88 = v104;
  v89 = *v105;
  v90 = *&v105[16];
  v99[8] = *&v105[96];
  v99[9] = *&v105[112];
  v99[10] = *&v105[128];
  v99[11] = *&v105[144];
  v99[4] = *&v105[32];
  v99[5] = *&v105[48];
  v99[6] = *&v105[64];
  v99[7] = *&v105[80];
  v99[0] = v103;
  v99[1] = v104;
  v99[2] = *v105;
  v99[3] = *&v105[16];
  sub_2544AE240(&v87, &v100, &qword_27F5FC980, &qword_254550AE0);
  sub_2544AE150(v99, &qword_27F5FC980, &qword_254550AE0);

  *&v86[135] = v95;
  *&v86[151] = v96;
  *&v86[167] = v97;
  *&v86[183] = v98;
  *&v86[71] = v91;
  *&v86[87] = v92;
  *&v86[103] = v93;
  *&v86[119] = v94;
  *&v86[7] = v87;
  *&v86[23] = v88;
  *&v86[39] = v89;
  *&v86[55] = v90;
  *&v102[145] = *&v86[144];
  *&v102[161] = *&v86[160];
  *&v102[177] = *&v86[176];
  *&v102[81] = *&v86[80];
  *&v102[97] = *&v86[96];
  *&v102[113] = *&v86[112];
  *&v102[129] = *&v86[128];
  *&v102[17] = *&v86[16];
  *&v102[33] = *&v86[32];
  *&v102[49] = *&v86[48];
  *&v102[65] = *&v86[64];
  v29 = v85[0];
  *&v100 = v25;
  *(&v100 + 1) = v27;
  v101 = v28;
  v102[0] = v85[0];
  *&v102[192] = *(&v98 + 1);
  *&v102[1] = *v86;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC988, &qword_254550AE8);
  v31 = v75;
  v32 = &v75[*(v30 + 36)];
  v33 = *&v102[176];
  *(v32 + 12) = *&v102[160];
  *(v32 + 13) = v33;
  v34 = *&v102[112];
  *(v32 + 8) = *&v102[96];
  *(v32 + 9) = v34;
  v35 = *&v102[144];
  *(v32 + 10) = *&v102[128];
  *(v32 + 11) = v35;
  v36 = *&v102[48];
  *(v32 + 4) = *&v102[32];
  *(v32 + 5) = v36;
  v37 = *&v102[80];
  *(v32 + 6) = *&v102[64];
  *(v32 + 7) = v37;
  v38 = v101;
  *v32 = v100;
  *(v32 + 1) = v38;
  v39 = *&v102[16];
  *(v32 + 2) = *v102;
  *(v32 + 3) = v39;
  *&v105[145] = *&v86[144];
  *&v105[161] = *&v86[160];
  v106[0] = *&v86[176];
  *&v105[81] = *&v86[80];
  *&v105[97] = *&v86[96];
  *&v105[113] = *&v86[112];
  *&v105[129] = *&v86[128];
  v40 = *v86;
  *&v105[17] = *&v86[16];
  *&v105[33] = *&v86[32];
  *&v105[49] = *&v86[48];
  *&v105[65] = *&v86[64];
  *(v32 + 28) = *&v102[192];
  *&v103 = v25;
  *(&v103 + 1) = v27;
  v104 = v28;
  v105[0] = v29;
  *(v106 + 15) = *&v86[191];
  *&v105[1] = v40;
  sub_2544AE240(&v100, v85, &qword_27F5FC990, &qword_254550AF0);
  sub_2544AE150(&v103, &qword_27F5FC990, &qword_254550AF0);
  v41 = v82;
  v42 = v70;
  sub_254515C8C(v82, v70, type metadata accessor for SoftwareUpdateStatusView);
  v43 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v44 = (v69 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  sub_254515F20(v42, v45 + v43, type metadata accessor for SoftwareUpdateStatusView);
  v46 = (v45 + v44);
  v47 = v74;
  *v46 = v72;
  v46[1] = v47;

  v48 = sub_25454BA54();
  v49 = (v31 + *(v71 + 36));
  *v49 = sub_254516178;
  v49[1] = v45;
  v49[2] = v48;
  v49[3] = v50;
  sub_25454BA64();
  sub_25454A784();
  v51 = v77;
  sub_2544B14E8(v31, v77, &qword_27F5FC960, &qword_254550AC0);
  v52 = (v51 + *(v73 + 36));
  v53 = v85[5];
  v52[4] = v85[4];
  v52[5] = v53;
  v52[6] = v85[6];
  v54 = v85[1];
  *v52 = v85[0];
  v52[1] = v54;
  v55 = v85[3];
  v52[2] = v85[2];
  v52[3] = v55;
  KeyPath = swift_getKeyPath();
  v57 = v81;
  sub_2544B14E8(v51, v81, &qword_27F5FC968, &qword_254550AC8);
  v58 = v57 + *(v76 + 36);
  *v58 = KeyPath;
  *(v58 + 8) = 0;
  v59 = sub_25454BA44();
  v61 = v60;
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v62 = v80;
  v63 = &v80[*(v78 + 36)];
  *v63 = sub_25454AB14();
  *(v63 + 1) = 0;
  v63[16] = 1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC998, &qword_254550B28);
  sub_25451384C(v41, &v63[*(v64 + 44)]);

  v65 = &v63[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9A0, &qword_254550B30) + 36)];
  *v65 = v59;
  v65[1] = v61;
  sub_2544B14E8(v57, v62, &qword_27F5FC970, &qword_254550AD0);
  sub_2544B14E8(v62, v83, &qword_27F5FC978, &qword_254550AD8);
}

uint64_t sub_254512E94@<X0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25454B654();
  v3 = sub_25454AB14();
  v20[0] = 0;
  sub_254513160(&v35);
  v28 = *&v36[80];
  v29 = *&v36[96];
  v30 = *&v36[112];
  v31 = *&v36[128];
  v24 = *&v36[16];
  v25 = *&v36[32];
  v26 = *&v36[48];
  v27 = *&v36[64];
  v22 = v35;
  v23 = *v36;
  v32[6] = *&v36[80];
  v32[7] = *&v36[96];
  v32[8] = *&v36[112];
  v32[9] = *&v36[128];
  v32[2] = *&v36[16];
  v32[3] = *&v36[32];
  v32[4] = *&v36[48];
  v32[5] = *&v36[64];
  v32[0] = v35;
  v32[1] = *v36;
  sub_2544AE240(&v22, &v33, &qword_27F5FC9D0, &qword_254550B58);
  sub_2544AE150(v32, &qword_27F5FC9D0, &qword_254550B58);
  *&v21[55] = v25;
  *&v21[39] = v24;
  *&v21[103] = v28;
  *&v21[119] = v29;
  *&v21[135] = v30;
  *&v21[151] = v31;
  *&v21[71] = v26;
  *&v21[87] = v27;
  *&v21[7] = v22;
  *&v21[23] = v23;
  v33 = v3;
  v34[0] = 0;
  v4 = *&v21[96];
  *&v34[113] = *&v21[112];
  v5 = *&v21[112];
  *&v34[129] = *&v21[128];
  v6 = *&v21[128];
  *&v34[145] = *&v21[144];
  v7 = *&v21[32];
  *&v34[49] = *&v21[48];
  v8 = *&v21[48];
  *&v34[65] = *&v21[64];
  v9 = *&v21[64];
  *&v34[81] = *&v21[80];
  v10 = *&v21[80];
  *&v34[97] = *&v21[96];
  v11 = *&v21[16];
  *&v34[1] = *v21;
  v12 = *v21;
  *&v34[17] = *&v21[16];
  *&v34[33] = *&v21[32];
  v13 = *&v34[128];
  *(a1 + 136) = *&v34[112];
  *(a1 + 152) = v13;
  *(a1 + 168) = *&v34[144];
  v14 = *&v34[64];
  *(a1 + 72) = *&v34[48];
  *(a1 + 88) = v14;
  v15 = *&v34[96];
  *(a1 + 104) = *&v34[80];
  *(a1 + 120) = v15;
  v16 = *v34;
  *(a1 + 8) = v33;
  *(a1 + 24) = v16;
  v17 = *&v34[32];
  *(a1 + 40) = *&v34[16];
  *(a1 + 56) = v17;
  *&v36[113] = v5;
  *&v36[129] = v6;
  *v37 = *&v21[144];
  *&v36[49] = v8;
  *&v36[65] = v9;
  *&v36[81] = v10;
  *&v36[97] = v4;
  *&v36[1] = v12;
  *&v36[17] = v11;
  *&v34[160] = *&v21[159];
  v18 = *&v21[159];
  *a1 = v2;
  *(a1 + 184) = v18;
  v35 = v3;
  v36[0] = 0;
  *&v37[15] = *&v21[159];
  *&v36[33] = v7;

  sub_2544AE240(&v33, v20, &qword_27F5FC9D8, &qword_254550B60);
  sub_2544AE150(&v35, &qword_27F5FC9D8, &qword_254550B60);
}

uint64_t sub_254513160@<X0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25454B654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9E0, &qword_254550B68);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25454D8E0;
  *(v3 + 32) = sub_25454B654();
  *(v3 + 40) = sub_25454B664();
  sub_25454BB54();
  sub_25454BB64();
  MEMORY[0x259C0EAC0](v3);
  sub_25454A664();
  v4 = v27;
  v6 = v28;
  v5 = v29;
  sub_25454BA54();
  sub_25454A544();
  *&v17[6] = v30;
  *&v17[22] = v31;
  *&v17[38] = v32;
  v7 = sub_25454B664();
  sub_25454BA54();
  sub_25454A544();
  v8 = v33;
  v9 = v35;
  v18 = v27;
  v19 = v28;
  *v20 = v29;
  *&v20[8] = 256;
  *&v20[10] = *v17;
  *&v20[26] = *&v17[16];
  *&v20[42] = *&v17[32];
  *&v20[56] = *(&v32 + 1);
  v16 = v34;
  v15 = v36;
  *a1 = v2;
  v10 = v18;
  *(a1 + 24) = v19;
  *(a1 + 8) = v10;
  v11 = *v20;
  v12 = *&v20[16];
  v13 = *&v20[32];
  *(a1 + 88) = *&v20[48];
  *(a1 + 72) = v13;
  *(a1 + 56) = v12;
  *(a1 + 40) = v11;
  *(a1 + 104) = v7;
  *(a1 + 112) = v8;
  *(a1 + 120) = v16;
  *(a1 + 128) = v9;
  *(a1 + 136) = v15;
  *(a1 + 144) = v37;

  sub_2544AE240(&v18, v21, &qword_27F5FC9E8, &qword_254550B70);
  v21[0] = v4;
  v21[1] = v6;
  v22 = v5;
  v23 = 256;
  v24 = *v17;
  v25 = *&v17[16];
  *v26 = *&v17[32];
  *&v26[14] = *&v17[46];
  sub_2544AE150(v21, &qword_27F5FC9E8, &qword_254550B70);
}

uint64_t sub_254513424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v27 = a3;
  v28 = a4;
  v25 = a2;
  v26 = a1;
  v6 = sub_25454A5B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v23 = *(updated - 8);
  v11 = *(v23 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v24 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = sub_25454B664();
  sub_254515C8C(v25, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoftwareUpdateStatusView);
  (*(v7 + 16))(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v6);
  v13 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v6;
  v16 = (*(v7 + 80) + v14 + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_254515F20(v12, v17 + v13, type metadata accessor for SoftwareUpdateStatusView);
  v18 = (v17 + v14);
  v19 = v28;
  *v18 = v27;
  v18[1] = v19;
  (*(v7 + 32))(v17 + v16, v9, v15);

  *a5 = v22;
  a5[1] = sub_2545165D4;
  a5[2] = v17;
  a5[3] = 0;
  a5[4] = 0;
  return result;
}

uint64_t sub_2545136C4(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25454BC74();
  sub_25454A594();
  [v2 boundingRectWithSize:1 options:0 attributes:0 context:?];
  v4 = v3;

  sub_25454A594();
  if (v4 >= v5)
  {
  }

  else
  {
    v6 = (a1 + *(type metadata accessor for SoftwareUpdateStatusView(0) + 20));
    v8 = *v6;
    v9 = *(v6 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7B4();
  }
}

uint64_t sub_25451384C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a1;
  v36 = a2;
  v2 = sub_25454ADA4();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v30 = *(updated - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9A8, &qword_254550B38);
  v8 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9B0, &unk_254550B40);
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  sub_25454BE14();
  v32 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254515C8C(v31, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoftwareUpdateStatusView);
  v19 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v20 = swift_allocObject();
  sub_254515F20(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for SoftwareUpdateStatusView);
  sub_25454B7F4();
  sub_25454BA54();
  sub_25454A544();
  v21 = &v10[*(v33 + 36)];
  v22 = v38;
  *v21 = v37;
  *(v21 + 1) = v22;
  *(v21 + 2) = v39;
  sub_25454AD94();
  sub_254516248();
  sub_254516300();
  v23 = v35;
  sub_25454B304();
  (*(v34 + 8))(v5, v23);
  sub_2544AE150(v10, &qword_27F5FC9A8, &qword_254550B38);
  v24 = v12[2];
  v24(v16, v18, v11);
  v25 = v36;
  *v36 = 0;
  *(v25 + 8) = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9C8, &qword_254550B50);
  v24(v25 + *(v26 + 48), v16, v11);
  v27 = v12[1];
  v27(v18, v11);
  v27(v16, v11);
}