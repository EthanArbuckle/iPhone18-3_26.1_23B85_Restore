uint64_t ShowDeviceResultIntent.init(userSpecificity:destination:successDeviceIDs:failedDeviceIDs:failedDeviceIDsToIgnore:attributeType:oldDeviceResults:newDeviceResults:secondaryAccessoryControlDestination:sourceStateSnapshot:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unsigned __int8 *a10, uint64_t a11)
{
  v96 = a8;
  v95 = a7;
  v94 = a5;
  v93 = a4;
  v92 = a3;
  v91 = a1;
  v116 = a9;
  v97 = a11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9B8, &unk_2528D3400);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v102 = &v83 - v15;
  v115 = sub_2528BE950();
  v117 = *(v115 - 8);
  v16 = *(v117 + 64);
  MEMORY[0x28223BE20](v115);
  v111 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v83 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v83 - v27;
  v29 = sub_2528BEC40();
  v108 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *a2;
  v89 = *a6;
  v90 = *a10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA50, &unk_2528D44A0);
  sub_2528BEC20();
  v34 = *(v30 + 56);
  v109 = v30 + 56;
  v112 = v34;
  v34(v28, 1, 1, v29);
  v118 = 0;
  v35 = sub_2528BE630();
  v114 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v38 = v36 + 56;
  v37(v24, 1, 1, v35);
  v37(v22, 1, 1, v35);
  v113 = *MEMORY[0x277CBA308];
  v110 = *(v117 + 104);
  v117 += 104;
  v39 = v115;
  v110(v111);
  sub_25286BB08();
  v40 = v22;
  v87 = sub_2528BE7D0();
  *v116 = v87;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE780, &qword_2528CD970);
  sub_2528BEC20();
  v41 = v108;
  v112(v28, 1, 1, v108);
  LOBYTE(v118) = 4;
  v103 = v24;
  v42 = v24;
  v43 = v114;
  v106 = v38;
  v107 = v37;
  v37(v42, 1, 1, v114);
  v105 = v40;
  v37(v40, 1, 1, v43);
  v44 = v111;
  (v110)(v111, v113, v39);
  sub_2527233F0();
  v45 = v28;
  v86 = sub_2528BE7D0();
  v46 = v116;
  v116[1] = v86;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA60, &qword_2528D44B0);
  sub_2528BEC20();
  v47 = v112;
  v112(v28, 1, 1, v41);
  v118 = 0;
  v100 = sub_2528C0940();
  v48 = *(v100 - 8);
  v99 = *(v48 + 56);
  v101 = v48 + 56;
  v49 = v102;
  v99(v102, 1, 1, v100);
  v50 = v107;
  v107(v103, 1, 1, v114);
  (v110)(v44, v113, v115);
  v98 = v33;
  v85 = sub_2528BE800();
  v46[2] = v85;
  sub_2528BEC20();
  v51 = v108;
  v47(v45, 1, 1, v108);
  v118 = 0;
  v99(v49, 1, 1, v100);
  v52 = v103;
  v50(v103, 1, 1, v114);
  v53 = v110;
  v54 = v111;
  v55 = v113;
  (v110)(v111, v113, v115);
  v84 = sub_2528BE800();
  v116[3] = v84;
  sub_2528BEC20();
  v112(v45, 1, 1, v51);
  v118 = 0;
  v99(v102, 1, 1, v100);
  v107(v52, 1, 1, v114);
  v56 = v54;
  v57 = v115;
  v53(v56, v55, v115);
  v58 = v52;
  v104 = sub_2528BE800();
  v59 = v116;
  v116[4] = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA68, &qword_2528D44B8);
  sub_2528BEC20();
  v112(v45, 1, 1, v108);
  LOBYTE(v118) = 63;
  v60 = v52;
  v61 = v114;
  v62 = v107;
  v107(v60, 1, 1, v114);
  v62(v105, 1, 1, v61);
  v63 = v57;
  v64 = v110;
  (v110)(v111, v113, v63);
  sub_25272E944();
  v83 = v45;
  v65 = v58;
  v102 = sub_2528BE7D0();
  v59[5] = v102;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA70, &qword_2528D44C0);
  sub_2528BEC20();
  v66 = v108;
  v67 = v112;
  v112(v45, 1, 1, v108);
  v118 = 0;
  v68 = v114;
  v69 = v107;
  v107(v65, 1, 1, v114);
  v69(v105, 1, 1, v68);
  v70 = v113;
  (v64)(v111, v113, v115);
  v99 = sub_25280D0D0();
  v71 = v83;
  v72 = v103;
  v101 = sub_2528BE7F0();
  v116[6] = v101;
  sub_2528BEC20();
  v73 = v71;
  v67(v71, 1, 1, v66);
  v118 = 0;
  v74 = v114;
  v75 = v107;
  v107(v72, 1, 1, v114);
  v76 = v105;
  v75(v105, 1, 1, v74);
  v77 = v111;
  (v110)(v111, v70, v115);
  v100 = sub_2528BE7F0();
  v116[7] = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF358, &unk_2528D2D60);
  sub_2528BEC20();
  v112(v73, 1, 1, v108);
  LOBYTE(v118) = 2;
  v75(v72, 1, 1, v74);
  v75(v76, 1, 1, v74);
  (v110)(v77, v113, v115);
  sub_252816A44();
  v78 = sub_2528BE7D0();
  v79 = v116;
  v116[8] = v78;
  v80 = *(type metadata accessor for ShowDeviceResultIntent() + 52);
  v81 = sub_2528BF400();
  (*(*(v81 - 8) + 56))(v79 + v80, 1, 1, v81);
  v118 = v91;
  sub_2528BE7A0();
  LOBYTE(v118) = v88;
  sub_2528BE7A0();
  v118 = v92;
  sub_2528BE7A0();
  v118 = v93;
  sub_2528BE7A0();
  v118 = v94;
  sub_2528BE7A0();
  LOBYTE(v118) = v89;
  sub_2528BE7A0();
  v118 = v95;
  sub_2528BE7A0();
  v118 = v96;
  sub_2528BE7A0();
  LOBYTE(v118) = v90;
  sub_2528BE7A0();
  return sub_25286BBA8(v97, v79 + v80);
}

uint64_t ShowDeviceResultIntent.perform()(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = sub_2528BF400();
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v2[23] = *(v7 + 64);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  v2[28] = v10;
  v2[29] = *(v10 + 64);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v11 = sub_2528BE8B0();
  v2[32] = v11;
  v12 = *(v11 - 8);
  v2[33] = v12;
  v13 = *(v12 + 64) + 15;
  v2[34] = swift_task_alloc();
  v14 = type metadata accessor for ShowDeviceResultIntent();
  v2[35] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252857514, 0, 0);
}

uint64_t sub_252857514()
{
  v67 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  v6 = *(v0 + 136);
  v7 = sub_2528C08B0();
  *(v0 + 344) = __swift_project_value_buffer(v7, qword_27F5025C8);
  sub_25286F980(v6, v2, type metadata accessor for ShowDeviceResultIntent);
  sub_25286F980(v6, v1, type metadata accessor for ShowDeviceResultIntent);
  sub_25286F980(v6, v3, type metadata accessor for ShowDeviceResultIntent);
  sub_25286F980(v6, v4, type metadata accessor for ShowDeviceResultIntent);
  sub_25286F980(v6, v5, type metadata accessor for ShowDeviceResultIntent);
  v8 = sub_2528C0890();
  v9 = sub_2528C0D10();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 328);
  v12 = *(v0 + 336);
  v13 = *(v0 + 312);
  v14 = *(v0 + 320);
  v15 = *(v0 + 304);
  if (v10)
  {
    v61 = *(v0 + 312);
    v16 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v66 = v65;
    *v16 = 136316162;
    log = v8;
    v17 = *(v12 + 16);
    sub_2528BE790();
    v63 = v9;
    *(v0 + 72) = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA78, &qword_2528D44E0);
    v62 = v15;
    v18 = sub_2528C0DB0();
    v20 = v19;
    sub_25286FA3C(v12, type metadata accessor for ShowDeviceResultIntent);

    v21 = sub_2527389AC(v18, v20, &v66);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = *(v11 + 24);
    sub_2528BE790();
    *(v0 + 88) = *(v0 + 80);
    v23 = sub_2528C0DB0();
    v25 = v24;
    sub_25286FA3C(v11, type metadata accessor for ShowDeviceResultIntent);

    v26 = sub_2527389AC(v23, v25, &v66);

    *(v16 + 14) = v26;
    *(v16 + 22) = 2080;
    v27 = *(v14 + 32);
    sub_2528BE790();
    *(v0 + 104) = *(v0 + 96);
    v28 = sub_2528C0DB0();
    v30 = v29;
    sub_25286FA3C(v14, type metadata accessor for ShowDeviceResultIntent);

    v31 = sub_2527389AC(v28, v30, &v66);

    *(v16 + 24) = v31;
    *(v16 + 32) = 2080;
    v32 = *v61;
    sub_2528BE790();
    *(v0 + 120) = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA80, &qword_2528D44E8);
    v33 = sub_2528C0DB0();
    v35 = v34;
    sub_25286FA3C(v61, type metadata accessor for ShowDeviceResultIntent);

    v36 = sub_2527389AC(v33, v35, &v66);

    *(v16 + 34) = v36;
    *(v16 + 42) = 2080;
    v37 = *(v62 + 64);
    sub_2528BE790();
    v38 = *(v0 + 401);
    v39 = 0x80000002528E51C0;
    v40 = 6449010;
    if (v38)
    {
      v40 = 0xD000000000000010;
    }

    else
    {
      v39 = 0xE300000000000000;
    }

    if (v38 == 2)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40;
    }

    if (v38 == 2)
    {
      v42 = 0xE000000000000000;
    }

    else
    {
      v42 = v39;
    }

    sub_25286FA3C(*(v0 + 304), type metadata accessor for ShowDeviceResultIntent);
    v43 = sub_2527389AC(v41, v42, &v66);

    *(v16 + 44) = v43;
    _os_log_impl(&dword_252711000, log, v63, "Show Device Result Intent perform() called - successDeviceIDs: %s failedDeviceIDs: %s failedDeviceIDsToIgnore: %s userSpecificity: %s secondaryAccessoryControlDestination: %s", v16, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v65, -1, -1);
    MEMORY[0x2530A8D80](v16, -1, -1);
  }

  else
  {

    sub_25286FA3C(v15, type metadata accessor for ShowDeviceResultIntent);
    sub_25286FA3C(v13, type metadata accessor for ShowDeviceResultIntent);
    sub_25286FA3C(v14, type metadata accessor for ShowDeviceResultIntent);
    sub_25286FA3C(v11, type metadata accessor for ShowDeviceResultIntent);
    sub_25286FA3C(v12, type metadata accessor for ShowDeviceResultIntent);
  }

  v44 = *(v0 + 272);
  v45 = *(v0 + 280);
  v46 = *(v0 + 256);
  v47 = *(v0 + 264);
  v48 = *(v0 + 248);
  v49 = *(v0 + 208);
  v50 = *(v0 + 216);
  v51 = *(v0 + 136);
  v52 = v51[1];
  sub_2528BE790();
  *(v0 + 402) = *(v0 + 400);
  v53 = v51[2];
  sub_2528BE790();
  *(v0 + 352) = *(v0 + 16);
  v54 = v51[3];
  sub_2528BE790();
  *(v0 + 360) = *(v0 + 24);
  sub_25286FE38(&qword_27F4FCDF0, type metadata accessor for ShowDeviceResultIntent);
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v47 + 8))(v44, v46);
  v55 = type metadata accessor for HomeEntity(0);
  (*(*(v55 - 8) + 56))(v50, 1, 1, v55);
  v56 = sub_2528C05D0();
  (*(*(v56 - 8) + 56))(v49, 1, 1, v56);
  v57 = swift_task_alloc();
  *(v0 + 368) = v57;
  *v57 = v0;
  v57[1] = sub_252857B50;
  v58 = *(v0 + 208);
  v59 = *(v0 + 216);

  return sub_25277ECE4(v59, 0, 0, v58);
}

uint64_t sub_252857B50(uint64_t a1)
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 376) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_252857CAC, 0, 0);
}

uint64_t sub_252857CAC()
{
  v1 = v0[9].i64[1];
  sub_2527D38F8(v0[23].i64[1], v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[22].i64[0];
    v4 = v0[10].i64[1];
    v5 = v0[11].i64[0];
    v7 = v0[9].i64[1];
    v6 = v0[10].i64[0];
    if (v0[22].i64[1])
    {
      v8 = v0[22].i64[1];
    }

    sub_2527213D8(v7, &qword_27F4FCDA8, &unk_2528C5CB0);
    (*(v5 + 56))(v6, 1, 1, v4);
    goto LABEL_7;
  }

  v9 = v0[10].i64[1];
  v10 = v0[11].i64[0];
  v12 = v0[9].i64[1];
  v11 = v0[10].i64[0];
  v13 = *(v2 + 48);
  v14 = *(v10 + 16);
  v14(v11, v12 + v13, v9);
  sub_25286FA3C(v12 + v13, type metadata accessor for HomeEntity.SnapshotPair);
  (*(v10 + 56))(v11, 0, 1, v9);
  v15 = sub_2528BECF0();
  (*(*(v15 - 8) + 8))(v12, v15);
  v16 = (*(v10 + 48))(v11, 1, v9);
  v63 = v0[22];
  if (v16 == 1)
  {

LABEL_7:
    v17 = v0[21].i64[1];
    sub_2527213D8(v0[10].i64[0], &qword_27F4FCD98, &qword_2528C6200);
    v18 = sub_2528C0890();
    v19 = sub_2528C0CF0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_252711000, v18, v19, "No snapshot found for current home", v20, 2u);
      MEMORY[0x2530A8D80](v20, -1, -1);
    }

    v21 = v0[15].i64[1];

    sub_2527D66B0();
    swift_allocError();
    swift_willThrow();
    sub_2527213D8(v21, &qword_27F4FCE00, &qword_2528C5D20);
    v23 = v0[20].i64[1];
    v22 = v0[21].i64[0];
    v25 = v0[19].i64[1];
    v24 = v0[20].i64[0];
    v27 = v0[18].i64[1];
    v26 = v0[19].i64[0];
    v28 = v0[18].i64[0];
    v29 = v0[17].i64[0];
    v31 = v0[15].i64[0];
    v30 = v0[15].i64[1];
    v51 = v0[13].i64[1];
    v53 = v0[13].i64[0];
    v55 = v0[12].i64[1];
    v57 = v0[12].i64[0];
    v58 = v0[10].i64[0];
    v60 = v0[9].i64[1];
    v61 = v0[9].i64[0];

    v32 = v0->i64[1];

    return v32();
  }

  v62 = v0[25].i8[2];
  v34 = v0[15].i64[1];
  v50 = v0[14].i64[0];
  v52 = v0[14].i64[1];
  v35 = v0[12].i64[0];
  v36 = v0[12].i64[1];
  v37 = v0[11].i64[0];
  v48 = v0[15].i64[0];
  v49 = v0[11].i64[1];
  v38 = v0[10].i64[1];
  v47 = v14;
  v39 = v0[9].i64[0];
  v59 = v34;
  v56 = vceqzq_s64(v0[22]);
  v54 = *(v37 + 32);
  v54(v36, v0[10].i64[0], v38);
  v40 = sub_2528C0C40();
  (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  v47(v35, v36, v38);
  sub_25272006C(v34, v48, &qword_27F4FCE00, &qword_2528C5D20);
  v41 = (*(v37 + 80) + 65) & ~*(v37 + 80);
  v42 = (v49 + *(v50 + 80) + v41) & ~*(v50 + 80);
  v43 = swift_allocObject();
  v43[1].i64[0] = 0;
  v43[1].i64[1] = 0;
  v44 = MEMORY[0x277D84F90];
  v43[2].i64[0] = MEMORY[0x277D84F90];
  v43[2].i8[8] = 0;
  v43[3] = vbslq_s8(v56, vdupq_n_s64(v44), v63);
  v43[4].i8[0] = v62;
  v54(v43->i64 + v41, v35, v38);
  sub_25274AA0C(v48, v43->i64 + v42, &qword_27F4FCE00, &qword_2528C5D20);
  sub_2527D3E74(0, 0, v39, &unk_2528CD990, v43);

  (*(v37 + 8))(v36, v38);
  sub_2527213D8(v59, &qword_27F4FCE00, &qword_2528C5D20);
  v45 = swift_task_alloc();
  v0[24].i64[0] = v45;
  *v45 = v0;
  v45[1] = sub_2528582D4;
  v46 = v0[8].i64[1];

  return sub_252858878();
}

uint64_t sub_2528582D4(uint64_t a1)
{
  v2 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = a1;

  return MEMORY[0x2822009F8](sub_2528583D4, 0, 0);
}

uint64_t sub_2528583D4()
{
  v61 = v0;
  v1 = *(v0[49] + 16);

  if (v1)
  {
    v3 = v0[41];
    v2 = v0[42];
    v5 = v0[39];
    v4 = v0[40];
    v6 = v0[37];
    v7 = v0[38];
    v8 = v0[36];
    v9 = v0[34];
    v10 = v0[31];
    v43 = v0[30];
    v45 = v0[27];
    v47 = v0[26];
    v49 = v0[25];
    v51 = v0[24];
    v53 = v0[20];
    v55 = v0[19];
    v58 = v0[18];
    v11 = v0[16];
    sub_2528BE670();

    v12 = v0[1];
  }

  else
  {
    v13 = v0[43];
    v14 = v0[36];
    v15 = v0[17];
    sub_25286F980(v15, v0[37], type metadata accessor for ShowDeviceResultIntent);
    sub_25286F980(v15, v14, type metadata accessor for ShowDeviceResultIntent);
    v16 = sub_2528C0890();
    v17 = sub_2528C0CF0();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[36];
    v20 = v0[37];
    if (v18)
    {
      v21 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60[0] = v59;
      *v21 = 136315394;
      v56 = v17;
      v22 = *(v20 + 16);
      sub_2528BE790();
      v0[5] = v0[4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA78, &qword_2528D44E0);
      v23 = sub_2528C0DB0();
      v25 = v24;
      sub_25286FA3C(v20, type metadata accessor for ShowDeviceResultIntent);

      v26 = sub_2527389AC(v23, v25, v60);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = *(v19 + 24);
      sub_2528BE790();
      v0[7] = v0[6];
      v28 = sub_2528C0DB0();
      v30 = v29;
      sub_25286FA3C(v19, type metadata accessor for ShowDeviceResultIntent);

      v31 = sub_2527389AC(v28, v30, v60);

      *(v21 + 14) = v31;
      _os_log_impl(&dword_252711000, v16, v56, "Provided UUIDs did not match any devices in home. SuccessDeviceIDS: %s | failedDeviceIDs: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v59, -1, -1);
      MEMORY[0x2530A8D80](v21, -1, -1);
    }

    else
    {

      sub_25286FA3C(v19, type metadata accessor for ShowDeviceResultIntent);
      sub_25286FA3C(v20, type metadata accessor for ShowDeviceResultIntent);
    }

    type metadata accessor for HomeAppIntentError();
    sub_25286FE38(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v33 = v0[41];
    v32 = v0[42];
    v35 = v0[39];
    v34 = v0[40];
    v37 = v0[37];
    v36 = v0[38];
    v38 = v0[36];
    v39 = v0[34];
    v40 = v0[30];
    v41 = v0[31];
    v44 = v0[27];
    v46 = v0[26];
    v48 = v0[25];
    v50 = v0[24];
    v52 = v0[20];
    v54 = v0[19];
    v57 = v0[18];

    v12 = v0[1];
  }

  return v12();
}

uint64_t sub_252858878()
{
  v1[4] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = sub_2528BECF0();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v1[10] = v8;
  v9 = swift_task_alloc();
  v1[11] = v9;
  *v9 = v1;
  v9[1] = sub_252858A18;

  return sub_252863570(v8);
}

uint64_t sub_252858A18()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_252858B14, 0, 0);
}

uint64_t sub_252858B14()
{
  sub_2528BEEB0();
  v0[12] = MEMORY[0x2530A6500]();
  v0[13] = sub_2528BEEE0();
  v0[14] = sub_2528BEED0();
  v0[15] = sub_25286FE38(&qword_27F4FF398, MEMORY[0x277D153D0]);
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_252858BF4, v2, v1);
}

uint64_t sub_252858BF4()
{
  v1 = v0[14];
  v2 = v0[12];

  v0[16] = sub_2528BEE90();

  return MEMORY[0x2822009F8](sub_252858C70, 0, 0);
}

uint64_t sub_252858C70()
{
  v1 = v0[15];
  v2 = v0[13];
  v0[17] = sub_2528BEED0();
  v4 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_252858D04, v4, v3);
}

uint64_t sub_252858D04()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[9];

  sub_2528BEE50();

  return MEMORY[0x2822009F8](sub_252858D80, 0, 0);
}

uint64_t sub_252858D80()
{
  v53 = v0;
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  sub_2528BE790();
  if (*(v0 + 16))
  {
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v1 + 8);
  sub_2528BE790();
  v5 = *(v0 + 144);
  v49 = v0;
  if (v5 <= 1)
  {
    if (*(v0 + 144))
    {
      goto LABEL_19;
    }
  }

  else if (v5 != 2 && v5 != 3)
  {
    goto LABEL_20;
  }

  v6 = sub_2528C1060();

  if (v6)
  {
    goto LABEL_20;
  }

  v7 = *(*(v0 + 32) + 24);
  sub_2528BE790();
  v8 = *(v0 + 24);
  if (!v8)
  {
    goto LABEL_20;
  }

  if (!*(v8 + 16))
  {
    v17 = *(v0 + 24);
LABEL_19:

    goto LABEL_20;
  }

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v9 = sub_2528C08B0();
  __swift_project_value_buffer(v9, qword_27F5025C8);

  v10 = sub_2528C0890();
  v11 = sub_2528C0D10();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v52[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, v52);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2527389AC(0xD000000000000017, 0x80000002528E6710, v52);
    *(v12 + 22) = 2080;
    v14 = MEMORY[0x2530A81A0](v8, MEMORY[0x277D837D0]);
    v16 = sub_2527389AC(v14, v15, v52);

    *(v12 + 24) = v16;
    _os_log_impl(&dword_252711000, v10, v11, "%s-%s Found failed device IDs - adding to display %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v13, -1, -1);
    MEMORY[0x2530A8D80](v12, -1, -1);
  }

  sub_2527377CC(v8);
LABEL_20:
  v51 = *(v3 + 16);
  if (v51)
  {
    v18 = 0;
    v19 = *(v0 + 56);
    v20 = (v19 + 48);
    v48 = v19;
    v50 = (v19 + 32);
    v21 = (v3 + 40);
    v22 = MEMORY[0x277D84F90];
    while (v18 < *(v3 + 16))
    {
      v24 = *(v0 + 40);
      v23 = *(v0 + 48);
      v26 = *(v21 - 1);
      v25 = *v21;

      sub_2528BECA0();

      if ((*v20)(v24, 1, v23) == 1)
      {
        sub_2527213D8(*(v0 + 40), &qword_27F4FC628, &qword_2528C4750);
      }

      else
      {
        v27 = *v50;
        (*v50)(*(v0 + 64), *(v0 + 40), *(v0 + 48));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_252737E4C(0, *(v22 + 2) + 1, 1, v22);
        }

        v29 = *(v22 + 2);
        v28 = *(v22 + 3);
        if (v29 >= v28 >> 1)
        {
          v22 = sub_252737E4C(v28 > 1, v29 + 1, 1, v22);
        }

        v0 = v49;
        v30 = *(v49 + 64);
        v31 = *(v49 + 48);
        *(v22 + 2) = v29 + 1;
        v27(&v22[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v29], v30, v31);
      }

      ++v18;
      v21 += 2;
      if (v51 == v18)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_35;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_32:

  if (*(v22 + 2))
  {
    v33 = *(v0 + 72);
    v32 = *(v0 + 80);
    v34 = swift_task_alloc();
    *(v34 + 16) = v32;
    v35 = sub_2527A5FA8(sub_25286FCF0, v34, v22);

    v36 = sub_252865220(v32, v33, v22);

    v52[0] = v35;
    sub_252735F6C(v36);
    sub_2527213D8(v33, &qword_27F4FCDB8, &unk_2528C5CC0);
    v37 = v52[0];
    goto LABEL_38;
  }

  if (qword_27F4FBB40 != -1)
  {
    goto LABEL_42;
  }

LABEL_35:
  v38 = sub_2528C08B0();
  __swift_project_value_buffer(v38, qword_27F5025C8);
  v39 = sub_2528C0890();
  v40 = sub_2528C0CF0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v52[0] = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, v52);
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_2527389AC(0xD000000000000017, 0x80000002528E6710, v52);
    _os_log_impl(&dword_252711000, v39, v40, "%s-%s No device IDs found", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v42, -1, -1);
    MEMORY[0x2530A8D80](v41, -1, -1);
  }

  sub_2527213D8(*(v0 + 72), &qword_27F4FCDB8, &unk_2528C5CC0);
  v37 = MEMORY[0x277D84F90];
LABEL_38:
  v43 = *(v0 + 72);
  v44 = *(v0 + 64);
  v45 = *(v0 + 40);
  sub_2527213D8(*(v0 + 80), &qword_27F4FCD98, &qword_2528C6200);

  v46 = *(v0 + 8);

  return v46(v37);
}

void sub_252859458(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v68 = a2;
  v6 = sub_252807840(sub_25286FDA0, v67, a1);
  sub_25285AB14(a1, v70);
  v7 = v70[0];
  if (LOBYTE(v70[0]) != 4)
  {
    goto LABEL_50;
  }

  if (v6)
  {
    if (qword_27F4FBB40 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_4;
  }

  v65 = a2;
  v66 = a3;
  v12 = a1[2];
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_24:
    v25 = *(v13 + 2);
    if (v25)
    {
      v70[0] = MEMORY[0x277D84F90];
      sub_25282F064(0, v25, 0);
      v26 = v70[0];
      v27 = (v13 + 40);
      do
      {
        v28 = *(v27 - 1);
        v29 = *v27;
        sub_2528BEA50();
        sub_2528BEA50();
        sub_2528BE6B0();

        v30 = v69;
        v70[0] = v26;
        v32 = *(v26 + 16);
        v31 = *(v26 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_25282F064((v31 > 1), v32 + 1, 1);
          v26 = v70[0];
        }

        *(v26 + 16) = v32 + 1;
        *(v26 + v32 + 32) = v30;
        v27 += 2;
        --v25;
      }

      while (v25);
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    v33 = sub_252743F64(v26);

    if (*(v33 + 16) == 1 && (sub_2527D387C(v33, v70), LOBYTE(v70[0]) <= 0x3Fu) && ((1 << SLOBYTE(v70[0])) & 0x80900808) != 0)
    {
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v34 = sub_2528C08B0();
      __swift_project_value_buffer(v34, qword_27F5025C8);

      v35 = sub_2528C0890();
      v36 = sub_2528C0D10();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v70[0] = v38;
        *v37 = 136315138;
        sub_25274A51C();
        v39 = sub_2528C0C80();
        v41 = v40;

        v42 = sub_2527389AC(v39, v41, v70);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_252711000, v35, v36, "Found attribute that prefers answer sheet: %s - Showing Answer Sheet", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        MEMORY[0x2530A8D80](v38, -1, -1);
        MEMORY[0x2530A8D80](v37, -1, -1);
      }

      else
      {
      }

      v7 = 0;
      a3 = v66;
    }

    else
    {
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v43 = sub_2528C08B0();
      __swift_project_value_buffer(v43, qword_27F5025C8);

      v44 = sub_2528C0890();
      v45 = sub_2528C0D10();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v70[0] = v47;
        *v46 = 136315138;
        v48 = sub_252852F2C(v33);

        v49 = MEMORY[0x2530A81A0](v48, MEMORY[0x277D837D0]);
        v51 = v50;

        v52 = sub_2527389AC(v49, v51, v70);

        *(v46 + 4) = v52;
        _os_log_impl(&dword_252711000, v44, v45, "Found Attribute Kinds from Read Results: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
        MEMORY[0x2530A8D80](v47, -1, -1);
        MEMORY[0x2530A8D80](v46, -1, -1);
      }

      else
      {
      }

      MEMORY[0x28223BE20](v53);
      v64[2] = v65;
      v54 = sub_2528070FC(sub_25286FDC0, v64, a1);
      v55 = sub_252743D54(v54);

      v56 = sub_2528C0890();
      v57 = sub_2528C0D10();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v70[0] = v59;
        *v58 = 134218242;
        *(v58 + 4) = *(v55 + 16);
        *(v58 + 12) = 2080;
        sub_2528BECF0();
        sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
        v60 = sub_2528C0C80();
        v62 = sub_2527389AC(v60, v61, v70);

        *(v58 + 14) = v62;
        _os_log_impl(&dword_252711000, v56, v57, "showIntentDestinationFromRead - Found %ld deviceIDs: %s", v58, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        MEMORY[0x2530A8D80](v59, -1, -1);
        MEMORY[0x2530A8D80](v58, -1, -1);
      }

      a3 = v66;
      v63 = *(v55 + 16);

      if (v63 == 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = 3;
      }
    }

    goto LABEL_50;
  }

  v14 = a1 + 5;
  while (1)
  {
    v16 = *(v14 - 1);
    v15 = *v14;
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BE6B0();

    v17 = v70[0];
    v18 = *(v70[0] + 16);
    a3 = *(v13 + 2);
    v19 = &a3[v18];
    if (__OFADD__(a3, v18))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= *(v13 + 3) >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (a3 <= v19)
      {
        v21 = &a3[v18];
      }

      else
      {
        v21 = a3;
      }

      v13 = sub_252737C04(isUniquelyReferenced_nonNull_native, v21, 1, v13);
      if (*(v17 + 16))
      {
LABEL_20:
        if ((*(v13 + 3) >> 1) - *(v13 + 2) < v18)
        {
          goto LABEL_53;
        }

        swift_arrayInitWithCopy();

        if (v18)
        {
          v22 = *(v13 + 2);
          v23 = __OFADD__(v22, v18);
          v24 = v22 + v18;
          if (v23)
          {
            goto LABEL_54;
          }

          *(v13 + 2) = v24;
        }

        goto LABEL_10;
      }
    }

    if (v18)
    {
      goto LABEL_52;
    }

LABEL_10:
    v14 += 2;
    if (!--v12)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  swift_once();
LABEL_4:
  v8 = sub_2528C08B0();
  __swift_project_value_buffer(v8, qword_27F5025C8);
  v9 = sub_2528C0890();
  v10 = sub_2528C0D10();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_252711000, v9, v10, "All Devices are Read Only - Showing Answer Sheet", v11, 2u);
    MEMORY[0x2530A8D80](v11, -1, -1);
  }

  v7 = 0;
LABEL_50:
  *a3 = v7;
}

uint64_t sub_252859C3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v54 = a2;
  v55 = a3;
  v57 = a4;
  v5 = type metadata accessor for DeviceEntity();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v54 - v10;
  v12 = a1[2];
  v58 = a1;
  v13 = a1 + 5;
  v61 = v12;
  v14 = v12 + 1;
  do
  {
    if (!--v14)
    {
      goto LABEL_32;
    }

    v15 = v13 + 2;
    v17 = *(v13 - 1);
    v16 = *v13;
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BE6B0();
    v18 = *(v11 + 2);
    sub_2528BE6B0();
    sub_25286FA3C(v11, type metadata accessor for DeviceEntity);
    v66 = v62[0];
    v65 = 2;
    LOBYTE(v18) = _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v66, &v65);

    v13 = v15;
  }

  while ((v18 & 1) != 0);
  v19 = v58[4];
  v20 = v58[5];
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE6B0();

  v60 = v62[0];
  v59 = *(v62[0] + 16);
  if (!v59)
  {
LABEL_15:

    v37 = v58;
    result = sub_25285B298(v58, v62);
    v38 = v62[0];
    if (LOBYTE(v62[0]) == 4)
    {
      v39 = v37 + 5;
      v40 = MEMORY[0x277D84F90];
      v41 = v56;
      do
      {
        v43 = *(v39 - 1);
        v42 = *v39;
        sub_2528BEA50();
        sub_2528BEA50();
        sub_2528BE6B0();
        v44 = *(v41 + 16);
        sub_2528BE6B0();

        sub_25286FA3C(v41, type metadata accessor for DeviceEntity);
        v45 = LOWORD(v62[0]) >> 14;
        v46 = HIBYTE(LOWORD(v62[0])) & 0x3F;
        if (v45 != 1)
        {
          LOBYTE(v46) = v62[0];
        }

        if (v45)
        {
          v47 = v46;
        }

        else
        {
          v47 = v62[0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_252737D2C(0, *(v40 + 2) + 1, 1, v40);
        }

        v49 = *(v40 + 2);
        v48 = *(v40 + 3);
        if (v49 >= v48 >> 1)
        {
          v40 = sub_252737D2C((v48 > 1), v49 + 1, 1, v40);
        }

        *(v40 + 2) = v49 + 1;
        v40[v49 + 32] = v47;
        v39 += 2;
        --v61;
      }

      while (v61);
      v50 = sub_252743F98(v40);

      v51 = *(v50 + 16);

      if (v51 > 1)
      {
LABEL_32:
        v38 = 2;
      }

      else
      {
        v52 = v58;
        result = sub_25285B670(v58, v62);
        v38 = v62[0];
        if (LOBYTE(v62[0]) == 4)
        {
          MEMORY[0x28223BE20](result);
          v53 = v55;
          *(&v54 - 2) = v54;
          *(&v54 - 1) = v53;
          result = sub_252807840(sub_25286FED4, (&v54 - 4), v52);
          if (result)
          {
            v38 = 2;
          }

          else
          {
            v38 = 1;
          }
        }
      }
    }

    *v57 = v38;
    return result;
  }

  v21 = 0;
  v22 = (v60 + 40);
  while (v21 < *(v60 + 16))
  {
    v29 = *(v22 - 1);
    v30 = *v22;
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BE6B0();
    v31 = v62[0];
    v32 = v62[1];
    v33 = v62[2];
    v34 = v62[3];
    v35 = v63;
    v36 = v64;
    if (v64)
    {

      v23 = v31;
      v24 = v32;
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v36;
LABEL_7:
      result = sub_25276925C(v23, v24, v25, v26, v27, v28);
      goto LABEL_8;
    }

    if ((v63 & 0xFE) != 0x58)
    {

      v23 = v31;
      v24 = v32;
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = 0;
      goto LABEL_7;
    }

    if ((v31 & 1) == 0)
    {

      goto LABEL_32;
    }

LABEL_8:
    ++v21;
    v22 += 2;
    if (v59 == v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25285A09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v31 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = *(a1 + 8);
  sub_2528BE6B0();
  v13 = v33;
  v14 = *(v33 + 16);
  if (v14)
  {
    v28 = a2;
    v29 = v4;
    v30 = a4;
    v33 = MEMORY[0x277D84F90];
    sub_25282F064(0, v14, 0);
    v15 = v33;
    v16 = (v13 + 40);
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();

      v19 = v32;
      v33 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_25282F064((v20 > 1), v21 + 1, 1);
        v15 = v33;
      }

      *(v15 + 16) = v21 + 1;
      *(v15 + v21 + 32) = v19;
      v16 += 2;
      --v14;
    }

    while (v14);

    a4 = v30;
    a2 = v28;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v22 = sub_2528BF400();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v11, a2, v22);
  v24 = (*(v23 + 56))(v11, 0, 1, v22);
  MEMORY[0x28223BE20](v24);
  *(&v27 - 2) = v15;
  *(&v27 - 1) = v11;
  v25 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, (&v27 - 4), v31);

  result = sub_2527213D8(v11, &qword_27F4FCD98, &qword_2528C6200);
  *a4 = v25;
  return result;
}

uint64_t sub_25285A33C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_25277B234(13, a1);
  if (result)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = (a1 + 32);
      do
      {
        v7 = *v6++;
        if (AttributeKind.rawValue.getter() == 0x7265776F70 && v8 == 0xE500000000000000)
        {
          goto LABEL_4;
        }

        v10 = sub_2528C1060();

        if (v10)
        {
          goto LABEL_5;
        }

        if (AttributeKind.rawValue.getter() == 0x726F6C6F63 && v11 == 0xE500000000000000)
        {
LABEL_4:
        }

        else
        {
          v12 = sub_2528C1060();

          if ((v12 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

LABEL_5:
        --v5;
      }

      while (v5);
    }

    v13 = 0;
  }

  else
  {
LABEL_14:
    v13 = 2;
  }

  *a2 = v13;
  return result;
}

uint64_t sub_25285A464(uint64_t *a1)
{
  v2 = sub_2528BFD50();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2528BFDB0();
  v61 = *(v68 - 8);
  v5 = *(v61 + 64);
  v6 = MEMORY[0x28223BE20](v68);
  v67 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v53 - v8;
  v70 = sub_2528C01F0();
  v69 = *(v70 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v65 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528C0620();
  v12 = *(v11 - 8);
  v62 = v11;
  v63 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v64 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2528BECF0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DeviceEntity();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2528BF9D0();
  v24 = *(v59 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v59);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v58 = &v53 - v29;
  v30 = *a1;
  v31 = sub_2528BF370();
  sub_2528BE6B0();
  sub_252819FA8(v19);
  sub_25286FA3C(v23, type metadata accessor for DeviceEntity);
  if (*(v31 + 16) && (v32 = sub_252785C40(v19), (v33 & 1) != 0))
  {
    v34 = *(v31 + 56) + v24[9] * v32;
    v35 = v24[2];
    v36 = v24;
    v37 = v59;
    v35(v28, v34, v59);
    (*(v16 + 8))(v19, v15);

    v54 = v36;
    (v36[4])(v58, v28, v37);
    v38 = v64;
    sub_2528BF8A0();
    v39 = sub_2528C05F0();
    result = (*(v63 + 8))(v38, v62);
    v41 = 0;
    v63 = *(v39 + 16);
    v64 = v39;
    v61 += 8;
    v62 = v69 + 16;
    v60 = v69 + 8;
    v42 = v61;
    while (1)
    {
      if (v63 == v41)
      {

        v51 = v55;
        v52 = v58;
        sub_2528BF640();
        v50 = sub_2528BFD40();
        (*(v56 + 8))(v51, v57);
        (v54[1])(v52, v59);
        return v50 & 1;
      }

      if (v41 >= *(v64 + 2))
      {
        break;
      }

      v43 = v69;
      v44 = v65;
      (*(v69 + 16))(v65, &v64[((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v41++], v70);
      v45 = v66;
      sub_2528C0190();
      v46 = v67;
      sub_2528BFDA0();
      sub_25286FE38(&qword_27F4FFC88, MEMORY[0x277D16090]);
      v47 = v68;
      v48 = sub_2528C0DD0();
      v49 = *v42;
      (*v42)(v46, v47);
      v49(v45, v47);
      result = (*(v43 + 8))(v44, v70);
      if (v48)
      {
        (v54[1])(v58, v59);

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
LABEL_9:
    v50 = 0;
    return v50 & 1;
  }

  return result;
}

void sub_25285AB14(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for DeviceEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1[2] != 1)
  {
    goto LABEL_15;
  }

  v8 = a1[4];
  v9 = a1[5];
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE6B0();

  v10 = *(v7 + 2);
  sub_2528BE6B0();
  sub_25286FA3C(v7, type metadata accessor for DeviceEntity);
  v11 = v22;
  v12 = v22 >> 14;
  v13 = HIBYTE(v22) & 0x3F;
  if (v12 != 1)
  {
    LOBYTE(v13) = v22;
  }

  if (v12)
  {
    v11 = v13;
  }

  v21[13] = v11;
  if (DeviceType.SingleDeviceType.rawValue.getter() != 0x74736F6D72656874 || v14 != 0xEA00000000007461)
  {
    v15 = sub_2528C1060();

    if (v15)
    {
      goto LABEL_10;
    }

LABEL_15:
    v20 = 4;
    goto LABEL_16;
  }

LABEL_10:
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v16 = sub_2528C08B0();
  __swift_project_value_buffer(v16, qword_27F5025C8);
  v17 = sub_2528C0890();
  v18 = sub_2528C0D10();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_252711000, v17, v18, "Single Thermostat always prefers accessory controls - Showing Accessory Controls", v19, 2u);
    MEMORY[0x2530A8D80](v19, -1, -1);
  }

  v20 = 1;
LABEL_16:
  *a2 = v20;
}

uint64_t sub_25285AD40@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v55 = a3;
  v4 = sub_2528BECF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeviceEntity();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v54 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  MEMORY[0x28223BE20](v18);
  v52 = &v45 - v21;
  v49 = *a1;
  sub_2528BE6B0();
  v22 = *(v13 + 7);

  sub_25286FA3C(v13, type metadata accessor for DeviceEntity);
  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 56);
  v26 = (v23 + 63) >> 6;
  v27 = (v5 + 48);
  v47 = v5;
  v51 = (v5 + 32);

  v29 = 0;
  v56 = MEMORY[0x277D84F90];
  while (1)
  {
    v30 = v29;
    if (!v25)
    {
      break;
    }

LABEL_8:
    v31 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v32 = (*(v22 + 48) + ((v29 << 10) | (16 * v31)));
    v33 = *v32;
    v34 = v32[1];

    sub_2528BECA0();

    if ((*v27)(v20, 1, v4) == 1)
    {
      result = sub_2527213D8(v20, &qword_27F4FC628, &qword_2528C4750);
    }

    else
    {
      v46 = *v51;
      v46(v48, v20, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_252737E4C(0, v56[2] + 1, 1, v56);
      }

      v36 = v56[2];
      v35 = v56[3];
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v45 = v36 + 1;
        v39 = sub_252737E4C(v35 > 1, v36 + 1, 1, v56);
        v37 = v45;
        v56 = v39;
      }

      v38 = v56;
      v56[2] = v37;
      result = v46(v38 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v36, v48, v4);
    }
  }

  while (1)
  {
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return result;
    }

    if (v29 >= v26)
    {
      break;
    }

    v25 = *(v22 + 56 + 8 * v29);
    ++v30;
    if (v25)
    {
      goto LABEL_8;
    }
  }

  MEMORY[0x28223BE20](v40);
  v41 = v52;
  *(&v45 - 2) = v53;
  sub_2527A6CF4(sub_25286FDE0, v56, v41);

  v42 = v54;
  sub_25272006C(v41, v54, &qword_27F4FC628, &qword_2528C4750);
  v43 = *v27;
  if ((*v27)(v42, 1, v4) == 1)
  {
    v44 = v50;
    sub_2528BE6B0();
    sub_252819FA8(v55);
    sub_25286FA3C(v44, type metadata accessor for DeviceEntity);
    sub_2527213D8(v41, &qword_27F4FC628, &qword_2528C4750);
    result = (v43)(v42, 1, v4);
    if (result != 1)
    {
      return sub_2527213D8(v42, &qword_27F4FC628, &qword_2528C4750);
    }
  }

  else
  {
    sub_2527213D8(v41, &qword_27F4FC628, &qword_2528C4750);
    return (*v51)(v55, v42, v4);
  }

  return result;
}

uint64_t sub_25285B298@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for DeviceEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v38 - v10;
  v12 = a1[2];
  if (v12 < 2)
  {
    if (v12)
    {
      v21 = a1[4];
      v22 = a1[5];
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();

      v23 = *(v8 + 2);
      sub_2528BE6B0();
      result = sub_25286FA3C(v8, type metadata accessor for DeviceEntity);
      v24 = v44 >> 14;
      v25 = BYTE1(v44) & 0x3F;
      if (v24 != 1)
      {
        v25 = v44;
      }

      if (!v24)
      {
        v25 = v44;
      }

      if (v25 != 33)
      {
        LOBYTE(v44) = v25;
        LOBYTE(v43) = 25;
        v26 = DeviceType.SingleDeviceType.rawValue.getter();
        v28 = v27;
        if (v26 == DeviceType.SingleDeviceType.rawValue.getter() && v28 == v29)
        {

LABEL_34:
          v31 = 1;
          goto LABEL_36;
        }

        v37 = sub_2528C1060();

        if (v37)
        {
          goto LABEL_34;
        }
      }
    }

LABEL_35:
    v31 = 4;
    goto LABEL_36;
  }

  v38 = a1;
  v39 = a2;
  v13 = 0;
  v14 = a1 + 4;
  v15 = MEMORY[0x277D84F90];
  do
  {
    v16 = v13;
    while (1)
    {
      if (v16 >= v12)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        __break(1u);
        return result;
      }

      v13 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_38;
      }

      v40 = *&v14[2 * v16];
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();
      v17 = *(v11 + 2);
      sub_2528BE6B0();
      sub_25286FA3C(v11, type metadata accessor for DeviceEntity);
      v42 = v43;
      v41 = 25;
      if (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v42, &v41))
      {
        break;
      }

      ++v16;
      if (v13 == v12)
      {
        v30 = *(v15 + 16);
        goto LABEL_24;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v44 = v15;
    if ((result & 1) == 0)
    {
      result = sub_25282F094(0, *(v15 + 16) + 1, 1);
      v15 = v44;
    }

    v18 = v40;
    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    v30 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      result = sub_25282F094((v19 > 1), v20 + 1, 1);
      v18 = v40;
      v15 = v44;
    }

    *(v15 + 16) = v30;
    *(v15 + 16 * v20 + 32) = v18;
  }

  while (v13 != v12);
LABEL_24:

  if (v30 <= 1)
  {
    a2 = v39;
    v32 = v38 + 5;
    while (1)
    {
      v34 = *(v32 - 1);
      v33 = *v32;
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();
      v35 = *(v11 + 2);
      sub_2528BE6B0();

      result = sub_25286FA3C(v11, type metadata accessor for DeviceEntity);
      v36 = v44 >> 14;
      if (v36)
      {
        if (v36 != 1 || (v44 & 0x3FFF) != 0x1E19)
        {
          goto LABEL_35;
        }
      }

      else if (v44 != 25)
      {
        goto LABEL_35;
      }

      v32 += 2;
      if (!--v12)
      {
        goto LABEL_34;
      }
    }
  }

  v31 = 2;
  a2 = v39;
LABEL_36:
  *a2 = v31;
  return result;
}

uint64_t sub_25285B670@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for DeviceEntity();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  if (v30)
  {
    v29 = a2;
    v9 = 0;
    v31 = a1 + 32;
    while (1)
    {
      v10 = (v31 + 16 * v9);
      v11 = *v10;
      v12 = v10[1];
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();
      v13 = *(v8 + 2);
      sub_2528BE6B0();
      sub_25286FA3C(v8, type metadata accessor for DeviceEntity);
      LOBYTE(v14) = v32;
      if (v32 >> 14 == 1)
      {
        v14 = BYTE1(v32) & 0x3F;
      }

      LOBYTE(v32) = v14;
      if (DeviceType.SingleDeviceType.rawValue.getter() == 0x6C7562746867696CLL && v15 == 0xE900000000000062)
      {
      }

      else
      {
        v16 = sub_2528C1060();

        if ((v16 & 1) == 0)
        {

LABEL_18:
          v28 = 4;
          goto LABEL_19;
        }
      }

      result = sub_2528BE6B0();
      v17 = v32;
      v18 = *(v32 + 16);
      if (v18)
      {
        v19 = 0;
        v20 = (v32 + 40);
        while (v19 < *(v17 + 16))
        {
          v22 = *(v20 - 1);
          v21 = *v20;
          sub_2528BEA50();
          sub_2528BEA50();
          sub_2528BE6B0();

          result = v32;
          if (v37)
          {
            result = sub_25276925C(v32, v33, v34, v35, v36, v37);
          }

          else if ((v36 & 0xFE) != 0x58)
          {
            v23 = v32;
            v24 = v33;
            v25 = v34;
            v26 = v35;
            v27 = v36;

            result = sub_25276925C(v23, v24, v25, v26, v27, 0);
            goto LABEL_18;
          }

          ++v19;
          v20 += 2;
          if (v18 == v19)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        return result;
      }

LABEL_3:
      ++v9;

      if (v9 == v30)
      {
        v28 = 2;
LABEL_19:
        a2 = v29;
        goto LABEL_21;
      }
    }
  }

  v28 = 2;
LABEL_21:
  *a2 = v28;
  return result;
}

uint64_t sub_25285B930(uint64_t *a1, uint64_t a2, void (*a3)(char *, unint64_t, uint64_t))
{
  v105 = a3;
  v109 = sub_2528BFDB0();
  v86 = *(v109 - 8);
  v4 = *(v86 + 64);
  v5 = MEMORY[0x28223BE20](v109);
  v108 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v107 = &v86 - v7;
  v112 = sub_2528C01F0();
  v110 = *(v112 - 8);
  v8 = *(v110 + 64);
  MEMORY[0x28223BE20](v112);
  v106 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2528C0620();
  v88 = *(v89 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2528BFD50();
  v91 = *(v92 - 8);
  v12 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v101 = &v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v104 = &v86 - v19;
  v20 = sub_2528BFB20();
  v102 = *(v20 - 8);
  v103 = v20;
  v21 = *(v102 + 64);
  MEMORY[0x28223BE20](v20);
  v93 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7A8, &unk_2528C4860);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v97 = &v86 - v25;
  v26 = sub_2528BF240();
  v95 = *(v26 - 8);
  v96 = v26;
  v27 = *(v95 + 64);
  MEMORY[0x28223BE20](v26);
  v94 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_2528BECF0();
  v29 = *(v111 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v111);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v86 - v34;
  v36 = type metadata accessor for DeviceEntity();
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = &v86 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v86 - v41;
  v43 = sub_2528BF9D0();
  v99 = *(v43 - 8);
  v100 = v43;
  v44 = *(v99 + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v86 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v98 = &v86 - v48;
  v49 = *a1;
  v50 = sub_2528BF370();
  sub_2528BE6B0();
  sub_252819FA8(v35);
  sub_25286FA3C(v42, type metadata accessor for DeviceEntity);
  if (!*(v50 + 16) || (v51 = sub_252785C40(v35), (v52 & 1) == 0))
  {

    v78 = *(v29 + 8);
    v78(v35, v111);
    v79 = v101;
    sub_25272006C(v105, v101, &qword_27F4FCDB8, &unk_2528C5CC0);
    v80 = sub_2528C00D0();
    v81 = *(v80 - 8);
    if ((*(v81 + 48))(v79, 1, v80) == 1)
    {
      sub_2527213D8(v79, &qword_27F4FCDB8, &unk_2528C5CC0);
      v82 = v104;
      (*(v102 + 56))(v104, 1, 1, v103);
    }

    else
    {
      sub_2528BE6B0();
      sub_252819FA8(v33);
      sub_25286FA3C(v40, type metadata accessor for DeviceEntity);
      v82 = v104;
      sub_2528C0080();
      v78(v33, v111);
      (*(v81 + 8))(v79, v80);
      v84 = v102;
      v83 = v103;
      if ((*(v102 + 48))(v82, 1, v103) != 1)
      {
        v85 = v93;
        (*(v84 + 32))(v93, v82, v83);
        v77 = sub_2528BFAA0();
        (*(v84 + 8))(v85, v83);
        return v77 & 1;
      }
    }

    sub_2527213D8(v82, &qword_27F4FCEF0, &unk_2528C6AB0);
    v77 = 0;
    return v77 & 1;
  }

  v54 = v99;
  v53 = v100;
  (*(v99 + 16))(v47, *(v50 + 56) + *(v99 + 72) * v51, v100);
  (*(v29 + 8))(v35, v111);

  v55 = v98;
  (*(v54 + 32))(v98, v47, v53);
  v56 = v94;
  sub_2528BF460();
  v57 = v97;
  sub_2528BF1F0();
  (*(v95 + 8))(v56, v96);
  v58 = sub_2528BFDE0();
  LODWORD(v56) = (*(*(v58 - 8) + 48))(v57, 1, v58);
  sub_2527213D8(v57, &qword_27F4FC7A8, &unk_2528C4860);
  if (v56 == 1 || (v59 = v90, sub_2528BF640(), v60 = sub_2528BFD40(), (*(v91 + 8))(v59, v92), (v60 & 1) == 0))
  {
    (*(v54 + 8))(v55, v53);
    v77 = 0;
    return v77 & 1;
  }

  v61 = v87;
  sub_2528BF8A0();
  v62 = sub_2528C05F0();
  (*(v88 + 8))(v61, v89);
  v63 = *(v62 + 16);
  if (!v63)
  {

    v77 = 0;
LABEL_17:
    (*(v54 + 8))(v55, v53);
    return v77 & 1;
  }

  v64 = 0;
  v105 = *(v110 + 16);
  v65 = v62 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
  v66 = *(v110 + 72);
  v101 = v62;
  v102 = v66;
  v110 += 16;
  v103 = (v110 - 8);
  v104 = (v86 + 8);
  v67 = v106;
  while (1)
  {
    v111 = v64;
    v105(v67, v65, v112);
    v68 = v107;
    sub_2528C0190();
    v69 = v108;
    sub_2528BFDA0();
    sub_25286FE38(&qword_27F4FFC88, MEMORY[0x277D16090]);
    v70 = v109;
    v71 = sub_2528C0DD0();
    v72 = *v104;
    (*v104)(v69, v70);
    v73 = v68;
    v74 = v111;
    v72(v73, v70);
    result = (*v103)(v67, v112);
    v76 = __OFADD__(v74, v71 & 1);
    v64 = v74 + (v71 & 1);
    if (v76)
    {
      break;
    }

    v65 += v102;
    if (!--v63)
    {

      v77 = v64 == 1;
      v54 = v99;
      v53 = v100;
      v55 = v98;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25285C4A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v26 - v14;
  v16 = a5(v13);
  if (*(v16 + 16) && (v17 = sub_252785C40(a1), (v18 & 1) != 0))
  {
    v19 = v17;
    v20 = *(v16 + 56);
    v21 = a6(0);
    v22 = *(v21 - 8);
    (*(v22 + 16))(v15, v20 + *(v22 + 72) * v19, v21);

    v23 = 1;
    (*(v22 + 56))(v15, 0, 1, v21);
  }

  else
  {

    v24 = a6(0);
    (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
    v23 = 0;
  }

  sub_2527213D8(v15, a3, a4);
  return v23;
}

uint64_t sub_25285C68C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2528BFFE0();
  v6[2] = a2;
  v4 = sub_25281A6A8(sub_25286FC60, v6, v3);

  return v4 & 1;
}

uint64_t sub_25285C748(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25271F3AC;

  return ShowDeviceResultIntent.perform()(a1);
}

uint64_t sub_25285C7E4(uint64_t a1)
{
  v2 = sub_25286FE38(&qword_27F4FCDF0, type metadata accessor for ShowDeviceResultIntent);

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t SourceIntentType.hashValue.getter()
{
  v1 = *v0;
  sub_2528C1130();
  MEMORY[0x2530A87A0](v1);
  return sub_2528C1180();
}

uint64_t sub_25285C8DC()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FFA10);
  __swift_project_value_buffer(v0, qword_27F4FFA10);
  return sub_2528BE9D0();
}

uint64_t sub_25285C978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC40, &unk_2528D4CE0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2C0, &qword_2528C7DC0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = sub_252790FDC(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FFA28 = v7;
  return result;
}

HomeAppIntents::SecondaryAccessoryControlDestination_optional __swiftcall SecondaryAccessoryControlDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25285CB5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 6449010;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0x80000002528E51C0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 6449010;
  }

  if (*a2)
  {
    v7 = 0x80000002528E51C0;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2528C1060();
  }

  return v9 & 1;
}

uint64_t sub_25285CC00()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_25285CC80()
{
  *v0;
  sub_2528C0A40();
}

uint64_t sub_25285CCEC()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_25285CD68@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2528C0F30();

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

void sub_25285CDC8(unint64_t *a1@<X8>)
{
  v2 = 0x80000002528E51C0;
  v3 = 6449010;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25285CE3C(uint64_t a1)
{
  v2 = sub_252816A44();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_25285CEAC(uint64_t a1)
{
  v2 = sub_25286EC90();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_25285CF08()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FFA30);
  __swift_project_value_buffer(v0, qword_27F4FFA30);
  return sub_2528BE9D0();
}

uint64_t sub_25285CFA4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_25285D048()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC38, &unk_2528D4CD0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2B0, &qword_2528C7DB0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17F0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v11 = sub_2527911C4(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FFA48 = v11;
  return result;
}

HomeAppIntents::UserSpecificity_optional __swiftcall UserSpecificity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UserSpecificity.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x614E656369766564;
  v3 = 1701670760;
  v4 = 1836019570;
  if (v1 != 4)
  {
    v4 = 1701736314;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7954656369766564;
  if (v1 != 1)
  {
    v5 = 0x70756F7267;
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

uint64_t sub_25285D39C()
{
  *v0;
  *v0;
  *v0;
  sub_2528C0A40();
}

void sub_25285D488(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x614E656369766564;
  v4 = 1701670760;
  v5 = 1836019570;
  if (v2 != 4)
  {
    v5 = 1701736314;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xEA00000000006570;
  v7 = 0x7954656369766564;
  if (v2 != 1)
  {
    v7 = 0x70756F7267;
    v6 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = v7;
  }

  else
  {
    v6 = 0xEA0000000000656DLL;
  }

  if (*v1 <= 2u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (*v1 <= 2u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t sub_25285D568@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_25285D610(uint64_t a1)
{
  v2 = sub_25286BB08();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_25285D680(uint64_t a1)
{
  v2 = sub_25286F100();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t ShowDeviceResultIntent.getDeviceTitle(from:)(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v3 = sub_2528C00D0();
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = *(v89 + 64);
  MEMORY[0x28223BE20](v3);
  v91 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2528BF400();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v6);
  v93 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v84 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v84 - v17;
  v19 = sub_2528BECF0();
  v101 = *(v19 - 8);
  v20 = *(v101 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v97 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v98 = &v84 - v24;
  MEMORY[0x28223BE20](v23);
  v99 = &v84 - v25;
  v26 = *v1;
  sub_2528BE790();
  if (!v102)
  {
    return 0;
  }

  v85 = v102;
  v27 = v2[2];
  sub_2528BE790();
  v28 = v102;
  v92 = v2;
  v96 = v13;
  if (v102)
  {
    v95 = *(v102 + 16);
    if (v95)
    {
      v29 = 0;
      v30 = (v101 + 48);
      v31 = (v101 + 32);
      v32 = (v102 + 40);
      v100 = MEMORY[0x277D84F90];
      v94 = v102;
      while (v29 < *(v28 + 16))
      {
        v33 = *(v32 - 1);
        v13 = *v32;

        sub_2528BECA0();

        if ((*v30)(v18, 1, v19) == 1)
        {
          sub_2527213D8(v18, &qword_27F4FC628, &qword_2528C4750);
        }

        else
        {
          v34 = *v31;
          (*v31)(v99, v18, v19);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_252737E4C(0, v100[2] + 1, 1, v100);
          }

          v36 = v100[2];
          v35 = v100[3];
          v13 = (v36 + 1);
          if (v36 >= v35 >> 1)
          {
            v100 = sub_252737E4C(v35 > 1, v36 + 1, 1, v100);
          }

          v37 = v100;
          v38 = v101;
          v100[2] = v13;
          v34(v37 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36, v99, v19);
          v28 = v94;
        }

        ++v29;
        v32 += 2;
        if (v95 == v29)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_70;
    }

    v100 = MEMORY[0x277D84F90];
LABEL_17:

    v2 = v92;
  }

  else
  {
    v100 = MEMORY[0x277D84F90];
  }

  v39 = v2[3];
  sub_2528BE790();
  v40 = v102;
  if (!v102)
  {
    v99 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v41 = *(v102 + 16);
  if (!v41)
  {
    v99 = MEMORY[0x277D84F90];
LABEL_32:

    v2 = v92;
LABEL_33:
    v52 = v2[4];
    sub_2528BE790();
    v53 = v102;
    if (v102)
    {
      v98 = *(v102 + 16);
      if (v98)
      {
        v54 = 0;
        v55 = (v101 + 48);
        v56 = (v101 + 32);
        v57 = (v102 + 40);
        v58 = MEMORY[0x277D84F90];
        while (v54 < *(v53 + 16))
        {
          v59 = *(v57 - 1);
          v13 = *v57;

          v60 = v96;
          sub_2528BECA0();

          if ((*v55)(v60, 1, v19) == 1)
          {
            sub_2527213D8(v60, &qword_27F4FC628, &qword_2528C4750);
          }

          else
          {
            v61 = *v56;
            (*v56)(v97, v60, v19);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = sub_252737E4C(0, *(v58 + 2) + 1, 1, v58);
            }

            v63 = *(v58 + 2);
            v62 = *(v58 + 3);
            v13 = (v63 + 1);
            if (v63 >= v62 >> 1)
            {
              v58 = sub_252737E4C(v62 > 1, v63 + 1, 1, v58);
            }

            *(v58 + 2) = v13;
            v61(&v58[((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v63], v97, v19);
          }

          ++v54;
          v57 += 2;
          if (v98 == v54)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_71;
      }

      v58 = MEMORY[0x277D84F90];
LABEL_47:

      v2 = v92;
    }

    else
    {
      v58 = MEMORY[0x277D84F90];
    }

    v64 = sub_252743D54(v99);

    v65 = sub_252743D54(v58);

    if (*(v65 + 16) <= *(v64 + 16) >> 3)
    {
      v102 = v64;
      sub_252865B58(v65);

      v66 = v102;
    }

    else
    {
      v66 = sub_2528678F0(v65, v64);
    }

    v67 = v91;
    v68 = *(v66 + 16);
    if (v68)
    {
      v69 = sub_252865A5C(*(v66 + 16), 0, &qword_27F4FC828, &qword_2528C48D8, MEMORY[0x277CC95F0]);
      v70 = sub_252868D18(&v102, (v69 + ((*(v101 + 80) + 32) & ~*(v101 + 80))), v68, v66, MEMORY[0x277CC95F0]);
      sub_25271A648();
      if (v70 == v68)
      {
        goto LABEL_55;
      }

      __break(1u);
    }

    v69 = MEMORY[0x277D84F90];
LABEL_55:
    sub_2528BEE70();
    sub_2528BEE80();
    v71 = v2[1];
    sub_2528BE790();
    if (v102 == 4)
    {
      v72 = 0;
    }

    else
    {
      v72 = sub_252852964(v102, 3u);
    }

    v73 = v93;
    v19 = _s14HomeAppIntents22ShowDeviceResultIntentV23getUserSpecificityTitle4from07successE5UUIDs06failedeN013stateSnapshot06matterQ019includeDotSeparatorSSSgSayAA0iJ0OG_Say10Foundation4UUIDVGAR0A9DataModel05StateQ0VAS06MatterzQ0VSbtFZ_0(v85, v100, v69, v93, v67, v72 & 1);
    v13 = v74;

    (*(v89 + 8))(v67, v90);
    (*(v87 + 8))(v73, v88);
    if (qword_27F4FBB40 == -1)
    {
      goto LABEL_59;
    }

    goto LABEL_72;
  }

  v42 = 0;
  v43 = (v101 + 48);
  v44 = (v101 + 32);
  v45 = (v102 + 40);
  v99 = MEMORY[0x277D84F90];
  v95 = v102;
  while (v42 < *(v40 + 16))
  {
    v46 = *(v45 - 1);
    v13 = *v45;

    sub_2528BECA0();

    if ((*v43)(v16, 1, v19) == 1)
    {
      sub_2527213D8(v16, &qword_27F4FC628, &qword_2528C4750);
    }

    else
    {
      v47 = *v44;
      (*v44)(v98, v16, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = sub_252737E4C(0, *(v99 + 2) + 1, 1, v99);
      }

      v49 = *(v99 + 2);
      v48 = *(v99 + 3);
      v13 = (v49 + 1);
      if (v49 >= v48 >> 1)
      {
        v99 = sub_252737E4C(v48 > 1, v49 + 1, 1, v99);
      }

      v50 = v98;
      v51 = v99;
      *(v99 + 2) = v13;
      v47(&v51[((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v49], v50, v19);
      v40 = v95;
    }

    ++v42;
    v45 += 2;
    if (v41 == v42)
    {
      goto LABEL_32;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  swift_once();
LABEL_59:
  v75 = sub_2528C08B0();
  __swift_project_value_buffer(v75, qword_27F5025C8);

  v76 = sub_2528C0890();
  v77 = sub_2528C0D10();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v102 = v79;
    *v78 = 136315138;
    if (v13)
    {
      v80 = v19;
    }

    else
    {
      v80 = 7104878;
    }

    if (v13)
    {
      v81 = v13;
    }

    else
    {
      v81 = 0xE300000000000000;
    }

    v82 = sub_2527389AC(v80, v81, &v102);

    *(v78 + 4) = v82;
    _os_log_impl(&dword_252711000, v76, v77, "Attempting to set intentDeepLinkManager.deviceResultTitle as %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    MEMORY[0x2530A8D80](v79, -1, -1);
    MEMORY[0x2530A8D80](v78, -1, -1);
  }

  return v19;
}

uint64_t ShowDeviceResultIntent.deepLinkURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3A0, &unk_2528D2DC0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25285E234, 0, 0);
}

uint64_t sub_25285E234()
{
  v28 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v27 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, &v27);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_2527389AC(0x6B6E694C70656564, 0xEB000000004C5255, &v27);
    _os_log_impl(&dword_252711000, v2, v3, "%s-%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  v6 = *(*(v0 + 24) + 8);
  sub_2528BE790();
  v7 = *(v0 + 96);
  if (v7 <= 1)
  {
    if (*(v0 + 96))
    {
      v25 = swift_task_alloc();
      *(v0 + 56) = v25;
      *v25 = v0;
      v25[1] = sub_25285E87C;
      v26 = *(v0 + 24);
      v23 = *(v0 + 32);
LABEL_22:

      return sub_25285EDC4(v23);
    }

    v12 = swift_task_alloc();
    *(v0 + 40) = v12;
    *v12 = v0;
    v12[1] = sub_25285E6A0;
    v13 = *(v0 + 24);

    return sub_2528603F8();
  }

  else
  {
    if (v7 != 2)
    {
      if (v7 == 3)
      {
        v8 = swift_task_alloc();
        *(v0 + 72) = v8;
        *v8 = v0;
        v8[1] = sub_25285E990;
        v10 = *(v0 + 24);
        v9 = *(v0 + 32);

        return sub_25286079C();
      }

      v19 = sub_2528C0890();
      v20 = sub_2528C0CF0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_252711000, v19, v20, "No destination found from ShowDeviceResultIntent - navigating by Deep Link", v21, 2u);
        MEMORY[0x2530A8D80](v21, -1, -1);
      }

      v22 = swift_task_alloc();
      *(v0 + 88) = v22;
      *v22 = v0;
      v22[1] = sub_25285EAA4;
      v23 = *(v0 + 16);
      v24 = *(v0 + 24);
      goto LABEL_22;
    }

    v14 = *(v0 + 32);
    v15 = *(v0 + 16);
    v16 = sub_2528BEC50();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    sub_25274AA0C(v14, v15, &qword_27F4FF3A0, &unk_2528D2DC0);
    v17 = *(v0 + 32);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_25285E6A0()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_25285EC98;
  }

  else
  {
    v3 = sub_25285E7B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25285E7B4()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_2528BEC50();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_25274AA0C(v1, v2, &qword_27F4FF3A0, &unk_2528D2DC0);
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25285E87C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_25285ECFC;
  }

  else
  {
    v3 = sub_25286FF5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25285E990()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_25285ED60;
  }

  else
  {
    v3 = sub_25286FF5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25285EAA4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 32);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25285EBF0, 0, 0);
  }
}

uint64_t sub_25285EBF0()
{
  v1 = v0[2];
  v2 = sub_2528BEC50();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25285EC98()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25285ECFC()
{
  v1 = v0[8];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25285ED60()
{
  v1 = v0[10];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25285EDC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2528C0050();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_2528C0180();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_2528BF400();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3A0, &unk_2528D2DC0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25285EFC4, 0, 0);
}

uint64_t sub_25285EFC4()
{
  v15 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[17] = __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, &v14);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_2527389AC(0xD00000000000001BLL, 0x80000002528E6630, &v14);
    _os_log_impl(&dword_252711000, v2, v3, "%s-%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  v6 = v0[16];
  v7 = sub_2528BEC50();
  v0[18] = v7;
  v8 = *(v7 - 8);
  v0[19] = v8;
  v10 = v8 + 56;
  v9 = *(v8 + 56);
  v0[20] = v9;
  v0[21] = v10 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v6, 1, 1, v7);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_25285F234;
  v12 = v0[3];

  return sub_252858878();
}

uint64_t sub_25285F234(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_25285F334, 0, 0);
}

uint64_t sub_25285F334()
{
  if (*(v0[23] + 16))
  {
    sub_2528BEEB0();
    v0[24] = MEMORY[0x2530A6500]();
    v0[25] = sub_2528BEEE0();
    v0[26] = sub_2528BEED0();
    v0[27] = sub_25286FE38(&qword_27F4FF398, MEMORY[0x277D153D0]);
    v2 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_25285F678, v2, v1);
  }

  else
  {

    v3 = v0[18];
    v4 = v0[19];
    v5 = v0[14];
    sub_25272006C(v0[16], v5, &qword_27F4FF3A0, &unk_2528D2DC0);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      v6 = v0[17];
      sub_2527213D8(v0[14], &qword_27F4FF3A0, &unk_2528D2DC0);
      v7 = sub_2528C0890();
      v8 = sub_2528C0CF0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_252711000, v7, v8, "No deep link generated", v9, 2u);
        MEMORY[0x2530A8D80](v9, -1, -1);
      }

      sub_25286F9E8();
      swift_allocError();
      *v10 = 0;
      swift_willThrow();
      v11 = v0[15];
      v13 = v0[13];
      v12 = v0[14];
      v15 = v0[9];
      v14 = v0[10];
      v16 = v0[6];
      sub_2527213D8(v0[16], &qword_27F4FF3A0, &unk_2528D2DC0);

      v17 = v0[1];
    }

    else
    {
      v18 = v0[18];
      v19 = v0[19];
      v20 = v0[15];
      v22 = v0[13];
      v21 = v0[14];
      v24 = v0[9];
      v23 = v0[10];
      v27 = v0[6];
      v25 = v0[2];
      sub_2527213D8(v0[16], &qword_27F4FF3A0, &unk_2528D2DC0);
      (*(v19 + 32))(v25, v21, v18);

      v17 = v0[1];
    }

    return v17();
  }
}

uint64_t sub_25285F678()
{
  v1 = v0[26];
  v2 = v0[24];

  v0[28] = sub_2528BEE90();

  return MEMORY[0x2822009F8](sub_25285F6F4, 0, 0);
}

uint64_t sub_25285F6F4()
{
  v1 = v0[27];
  v2 = v0[25];
  v0[29] = sub_2528BEED0();
  v4 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25285F788, v4, v3);
}

uint64_t sub_25285F788()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[10];

  sub_2528BEE40();

  return MEMORY[0x2822009F8](sub_25285F804, 0, 0);
}

uint64_t sub_25285F804()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[23];

    sub_2527213D8(v3, &qword_27F4FCD98, &qword_2528C6200);
    v5 = v0[18];
    v6 = v0[19];
    v7 = v0[14];
    sub_25272006C(v0[16], v7, &qword_27F4FF3A0, &unk_2528D2DC0);
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      v8 = v0[17];
      sub_2527213D8(v0[14], &qword_27F4FF3A0, &unk_2528D2DC0);
      v9 = sub_2528C0890();
      v10 = sub_2528C0CF0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_252711000, v9, v10, "No deep link generated", v11, 2u);
        MEMORY[0x2530A8D80](v11, -1, -1);
      }

      sub_25286F9E8();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
      v13 = v0[15];
      v15 = v0[13];
      v14 = v0[14];
      v17 = v0[9];
      v16 = v0[10];
      v18 = v0[6];
      sub_2527213D8(v0[16], &qword_27F4FF3A0, &unk_2528D2DC0);

      v19 = v0[1];
    }

    else
    {
      v24 = v0[18];
      v25 = v0[19];
      v26 = v0[15];
      v28 = v0[13];
      v27 = v0[14];
      v30 = v0[9];
      v29 = v0[10];
      v32 = v0[6];
      v31 = v0[2];
      sub_2527213D8(v0[16], &qword_27F4FF3A0, &unk_2528D2DC0);
      (*(v25 + 32))(v31, v27, v24);

      v19 = v0[1];
    }

    return v19();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    v20 = swift_task_alloc();
    v0[30] = v20;
    *v20 = v0;
    v20[1] = sub_25285FB5C;
    v21 = v0[13];
    v22 = v0[3];

    return sub_25286099C(v21);
  }
}

uint64_t sub_25285FB5C()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_252860224;
  }

  else
  {
    v3 = sub_25285FC70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25285FC70()
{
  *(v0 + 256) = *(v0 + 248);
  v1 = *(*(v0 + 24) + 64);
  sub_2528BE790();
  *(v0 + 289) = *(v0 + 288);
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  *v2 = v0;
  v2[1] = sub_25285FD40;
  v3 = *(v0 + 184);
  v4 = *(v0 + 104);

  return sub_25283980C(v3, (v0 + 289), v4);
}

uint64_t sub_25285FD40(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v5 = *(*v2 + 184);
  v7 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;

  return MEMORY[0x2822009F8](sub_25285FE60, 0, 0);
}

uint64_t sub_25285FE60()
{
  v2 = v0[34];
  v1 = v0[35];
  v43 = v0[32];
  v3 = v0[15];
  v4 = v0[9];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  (*(v6 + 104))(v5, *MEMORY[0x277D164F8], v7);
  sub_2528C0040();
  (*(v6 + 8))(v5, v7);
  sub_2528C0170();
  sub_2528C0160();
  if (v43)
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[11];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v9 + 8))(v8, v10);
LABEL_7:
    v27 = v0[15];
    v29 = v0[13];
    v28 = v0[14];
    v31 = v0[9];
    v30 = v0[10];
    v32 = v0[6];
    sub_2527213D8(v0[16], &qword_27F4FF3A0, &unk_2528D2DC0);

    v33 = v0[1];
    goto LABEL_8;
  }

  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[11];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v17 + 8))(v16, v18);
  sub_2527213D8(v14, &qword_27F4FF3A0, &unk_2528D2DC0);
  v12(v15, 0, 1, v13);
  sub_25274AA0C(v15, v14, &qword_27F4FF3A0, &unk_2528D2DC0);
  v19 = v0[18];
  v20 = v0[19];
  v21 = v0[14];
  sub_25272006C(v0[16], v21, &qword_27F4FF3A0, &unk_2528D2DC0);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    v22 = v0[17];
    sub_2527213D8(v0[14], &qword_27F4FF3A0, &unk_2528D2DC0);
    v23 = sub_2528C0890();
    v24 = sub_2528C0CF0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_252711000, v23, v24, "No deep link generated", v25, 2u);
      MEMORY[0x2530A8D80](v25, -1, -1);
    }

    sub_25286F9E8();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  v35 = v0[18];
  v36 = v0[19];
  v37 = v0[15];
  v39 = v0[13];
  v38 = v0[14];
  v41 = v0[9];
  v40 = v0[10];
  v44 = v0[6];
  v42 = v0[2];
  sub_2527213D8(v0[16], &qword_27F4FF3A0, &unk_2528D2DC0);
  (*(v36 + 32))(v42, v38, v35);

  v33 = v0[1];
LABEL_8:

  return v33();
}

uint64_t sub_252860224()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 136);
  v3 = v1;
  v4 = sub_2528C0890();
  v5 = sub_2528C0CF0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 248);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_252711000, v4, v5, "Error preparing device results for Accessory Controls Animation: %@", v8, 0xCu);
    sub_2527213D8(v9, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v9, -1, -1);
    MEMORY[0x2530A8D80](v8, -1, -1);
  }

  else
  {
  }

  *(v0 + 256) = 0;
  v12 = *(*(v0 + 24) + 64);
  sub_2528BE790();
  *(v0 + 289) = *(v0 + 288);
  v13 = swift_task_alloc();
  *(v0 + 264) = v13;
  *v13 = v0;
  v13[1] = sub_25285FD40;
  v14 = *(v0 + 184);
  v15 = *(v0 + 104);

  return sub_25283980C(v14, (v0 + 289), v15);
}

uint64_t sub_252860418()
{
  v10 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, &v9);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_2527389AC(0xD000000000000011, 0x80000002528E65F0, &v9);
    _os_log_impl(&dword_252711000, v2, v3, "%s-%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_252860604;
  v7 = *(v0 + 16);

  return sub_252858878();
}

uint64_t sub_252860604()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25286070C, 0, 0);
}

uint64_t sub_25286070C()
{
  sub_25286F9E8();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2528607B8()
{
  v10 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, v9);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_2527389AC(0xD000000000000011, 0x80000002528E6610, v9);
    _os_log_impl(&dword_252711000, v2, v3, "%s-%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  sub_25286F9E8();
  swift_allocError();
  *v6 = 1;
  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25286099C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_2528BF9D0();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v7 = *(*(type metadata accessor for DeviceEntity() - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = sub_2528BECF0();
  v2[13] = v8;
  v9 = *(v8 - 8);
  v2[14] = v9;
  v10 = *(v9 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252860B40, 0, 0);
}

uint64_t sub_252860B40()
{
  v1 = *(v0[5] + 48);
  sub_2528BE790();
  v2 = v0[2];
  v0[17] = v2;
  if (v2)
  {
    if (v2[2])
    {
      v4 = v0[15];
      v3 = v0[16];
      v5 = v0[13];
      v6 = v0[14];
      v7 = v0[12];
      v8 = v0[5];
      v9 = v2[4];
      v10 = v2[5];
      sub_2528BEA50();
      sub_2528BEA50();
      sub_2528BE6B0();

      sub_252819FA8(v4);
      sub_25286FA3C(v7, type metadata accessor for DeviceEntity);
      (*(v6 + 32))(v3, v4, v5);
      v11 = *(v8 + 56);
      sub_2528BE790();
      v12 = v0[3];
      v0[18] = v12;
      if (v12)
      {
        if (v2[2] == 1 && *(v12 + 16) == 1)
        {
          v13 = swift_task_alloc();
          v0[19] = v13;
          *v13 = v0;
          v13[1] = sub_252860D9C;
          v14 = v0[16];
          v15 = v0[4];
          v16 = v0[5];

          return sub_25286150C(v14, v15);
        }

        (*(v0[14] + 8))(v0[16], v0[13]);
      }

      else
      {
        (*(v0[14] + 8))(v0[16], v0[13]);
      }
    }
  }

  v19 = v0[15];
  v18 = v0[16];
  v21 = v0[11];
  v20 = v0[12];
  v22 = v0[10];
  v24 = v0[6];
  v23 = v0[7];

  v25 = v0[1];

  return v25();
}

uint64_t sub_252860D9C(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_252860E9C, 0, 0);
}

uint64_t sub_252860E9C()
{
  v1 = *(v0 + 160);
  if (!v1)
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 144);
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));

LABEL_7:
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);
    v20 = *(v0 + 48);
    v19 = *(v0 + 56);

    v21 = *(v0 + 8);

    return v21();
  }

  v2 = *(v0 + 40);
  sub_2528618CC(*(v0 + 136), *(v0 + 160), *(v0 + 32), *(v0 + 56));
  v5 = *(v0 + 136);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);

  v9 = *(v7 + 48);
  v10 = v9(v8, 1, v6);
  v11 = *(v0 + 144);
  if (v10 == 1)
  {
    v12 = *(v0 + 56);
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));

    v13 = v12;
LABEL_6:
    sub_2527213D8(v13, &qword_27F4FD670, &qword_2528D3570);
    goto LABEL_7;
  }

  v23 = *(v0 + 48);
  v25 = *(v0 + 32);
  v24 = *(v0 + 40);
  v26 = *(*(v0 + 72) + 32);
  v26(*(v0 + 88), *(v0 + 56), *(v0 + 64));
  sub_2528618CC(v11, v1, v25, v23);
  v27 = *(v0 + 144);
  v28 = v26;
  v29 = *(v0 + 64);
  v30 = *(v0 + 48);

  if (v9(v30, 1, v29) == 1)
  {
    v31 = *(v0 + 128);
    v32 = *(v0 + 104);
    v33 = *(v0 + 112);
    v34 = *(v0 + 88);
    v35 = *(v0 + 64);
    v36 = *(v0 + 72);
    v37 = *(v0 + 48);

    (*(v36 + 8))(v34, v35);
    (*(v33 + 8))(v31, v32);
    v13 = v37;
    goto LABEL_6;
  }

  v28(*(v0 + 80), *(v0 + 48), *(v0 + 64));
  *(v0 + 168) = sub_2528BEDC0();
  *(v0 + 176) = sub_2528C0C20();
  *(v0 + 184) = sub_2528C0C10();
  v39 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_252861274, v39, v38);
}

uint64_t sub_252861274()
{
  v1 = v0[23];
  v2 = v0[21];

  v0[24] = sub_2528BEDB0();

  return MEMORY[0x2822009F8](sub_2528612E8, 0, 0);
}

uint64_t sub_2528612E8()
{
  v1 = *(v0 + 176);
  *(v0 + 200) = sub_2528C0C10();
  v3 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_252861374, v3, v2);
}

uint64_t sub_252861374()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[10];
  v3 = v0[11];

  sub_2528BEDA0();

  return MEMORY[0x2822009F8](sub_2528613F8, 0, 0);
}

uint64_t sub_2528613F8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);

  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v4, v6);
  (*(v3 + 8))(v1, v2);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = *(v0 + 80);
  v15 = *(v0 + 48);
  v14 = *(v0 + 56);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_25286150C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2528BF9D0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2528615D8, 0, 0);
}

uint64_t sub_2528615D8()
{
  v1 = v0[3];
  v2 = sub_2528BF370();
  if (*(v2 + 16) && (v3 = sub_252785C40(v0[2]), (v4 & 1) != 0))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[4];
    v8 = v0[5];
    (*(v8 + 16))(v6, *(v2 + 56) + *(v8 + 72) * v3, v7);

    (*(v8 + 32))(v5, v6, v7);
    v9 = *(MEMORY[0x277D15AB0] + 4);
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_252861744;
    v11 = v0[7];

    return MEMORY[0x28216F568]();
  }

  else
  {

    v13 = v0[6];
    v12 = v0[7];

    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_252861744(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_252861844, 0, 0);
}

uint64_t sub_252861844()
{
  (*(v0[5] + 8))(v0[7], v0[4]);
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_2528618CC@<X0>(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v253 = a3;
  v246 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC00, &qword_2528D4C70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v202 = &v192 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC08, &qword_2528D4C78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v201 = &v192 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC10, &unk_2528D4C80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v200 = &v192 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6B0, &qword_2528C8928);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v199 = &v192 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF940, &qword_2528D4200);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v207 = &v192 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF948, &qword_2528D4208);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v206 = &v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v218 = &v192 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC18, &unk_2528D4C90);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v217 = &v192 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBD8, &qword_2528C58F8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v216 = &v192 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v215 = &v192 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC20, &qword_2528D4CA0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v214 = &v192 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v198 = &v192 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v211 = &v192 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v205 = &v192 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v213 = &v192 - v46;
  MEMORY[0x28223BE20](v45);
  v212 = &v192 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC28, &qword_2528D4CA8);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v203 = &v192 - v50;
  v51 = sub_2528BF300();
  v196 = *(v51 - 8);
  v52 = *(v196 + 64);
  MEMORY[0x28223BE20](v51);
  v197 = (&v192 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v210 = sub_2528C0620();
  v209 = *(v210 - 8);
  v54 = *(v209 + 64);
  MEMORY[0x28223BE20](v210);
  v204 = &v192 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_2528BF350();
  v237 = *(v249 - 8);
  v56 = *(v237 + 64);
  v57 = MEMORY[0x28223BE20](v249);
  v248 = &v192 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v236 = &v192 - v59;
  v238 = sub_2528BFDE0();
  v242 = *(v238 - 8);
  v60 = *(v242 + 64);
  v61 = MEMORY[0x28223BE20](v238);
  v250 = &v192 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v240 = &v192 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC30, &unk_2528D4CB0);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x28223BE20](v64 - 8);
  v252 = &v192 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v247 = &v192 - v68;
  v226 = sub_2528BECF0();
  v225 = *(v226 - 8);
  v69 = *(v225 + 64);
  MEMORY[0x28223BE20](v226);
  v71 = &v192 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DeviceEntity();
  v73 = *(*(v72 - 8) + 64);
  v74 = MEMORY[0x28223BE20](v72 - 8);
  v221 = &v192 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v77 = &v192 - v76;
  v78 = sub_2528BF9D0();
  v79 = *(*(v78 - 8) + 64);
  v80 = MEMORY[0x28223BE20](v78);
  v82 = &v192 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v85 = (&v192 - v84);
  if (!a1[2])
  {
    return (*(v83 + 56))(a4, 1, 1, v78);
  }

  v220 = v83;
  v193 = v51;
  v208 = a4;
  v87 = a1[4];
  v86 = a1[5];
  sub_2528BEA50();
  v219 = v86;
  sub_2528BEA50();
  v88 = sub_2528BF370();
  v227 = v87;
  sub_2528BE6B0();
  sub_252819FA8(v71);
  sub_25286FA3C(v77, type metadata accessor for DeviceEntity);
  if (*(v88 + 16) && (v89 = sub_252785C40(v71), (v90 & 1) != 0))
  {
    v91 = v220;
    (*(v220 + 16))(v82, *(v88 + 56) + *(v220 + 72) * v89, v78);
    (*(v225 + 8))(v71, v226);

    v92 = v85;
    (*(v91 + 32))(v85, v82, v78);
    v253 = sub_2527913AC(MEMORY[0x277D84F90]);
    sub_2528BE6B0();
    v93 = v259;
    v94 = *(v259 + 16);
    v192 = v78;
    v194 = v85;
    if (v94)
    {
      v95 = 0;
      v224 = v259 + 32;
      v239 = v242 + 16;
      v251 = (v242 + 32);
      v243 = (v237 + 32);
      v244 = (v242 + 8);
      v234 = v237 + 40;
      v223 = v259;
      v222 = v94;
      while (1)
      {
        if (v95 >= *(v93 + 16))
        {
LABEL_51:
          __break(1u);
LABEL_52:
          sub_25286FA9C();
          result = sub_2528C10A0();
          __break(1u);
          return result;
        }

        v231 = v95;
        v97 = (v224 + 16 * v95);
        v99 = *v97;
        v98 = v97[1];
        sub_2528BEA50();
        sub_2528BEA50();
        v232 = v98;
        sub_2528BE6B0();
        v101 = *(&v259 + 1);
        v100 = v259;
        v102 = v260;
        v103 = v261;
        LOBYTE(v104) = v262;
        v105 = v263;
        v264 = v262;
        v230 = v261;
        v229 = v260;
        v228 = v259;
        if (!v263)
        {
          break;
        }

        v93 = v223;
        v96 = v222;
LABEL_7:
        v95 = v231 + 1;

        sub_25276925C(v228, *(&v228 + 1), v229, v230, v264, v105);
        if (v95 == v96)
        {
          goto LABEL_46;
        }
      }

      v195 = v99;
      v255 = v259;
      v256 = v260;
      v257 = v261;
      v258 = v262;
      sub_252760C18(v259, *(&v259 + 1), v260, v261, v262);
      v106 = v221;
      sub_2528BE6B0();
      v107 = *(v106 + 16);
      sub_2528BE6B0();
      sub_25286FA3C(v106, type metadata accessor for DeviceEntity);
      v265 = v254[0];
      v108 = v233;
      v109 = sub_2527E7218(&v265, v92);
      if (!v108)
      {
        v110 = v109;
        v233 = 0;
        sub_25276925C(v100, v101, v102, v103, v104, 0);
        v103 = 0;
        v241 = v110;
        v101 = v110 + 64;
        v111 = 1 << *(v110 + 32);
        if (v111 < 64)
        {
          v112 = ~(-1 << v111);
        }

        else
        {
          v112 = -1;
        }

        v113 = v112 & *(v110 + 64);
        v235 = (v111 + 63) >> 6;
        v104 = v252;
        v102 = v238;
        v245 = v110 + 64;
        v92 = &unk_2528D4CC0;
        while (v113)
        {
          v114 = v92;
          v115 = v103;
LABEL_27:
          v118 = __clz(__rbit64(v113));
          v113 &= v113 - 1;
          v119 = v118 | (v115 << 6);
          v120 = v241;
          v121 = v242;
          v122 = v240;
          (*(v242 + 16))(v240, *(v241 + 48) + *(v242 + 72) * v119, v102);
          sub_25272BF98(*(v120 + 56) + 32 * v119, &v255);
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4B0, v114);
          v92 = v114;
          v124 = *(v123 + 48);
          v125 = *(v121 + 32);
          v104 = v252;
          v126 = v122;
          v127 = v102;
          v125(v252, v126, v102);
          sub_25272C298(&v255, (v104 + v124));
          (*(*(v123 - 8) + 56))(v104, 0, 1, v123);
LABEL_28:
          v128 = v247;
          sub_25274AA0C(v104, v247, &qword_27F4FFC30, &unk_2528D4CB0);
          v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4B0, v92);
          if ((*(*(v129 - 8) + 48))(v128, 1, v129) == 1)
          {

            v105 = 0;
            v92 = v194;
            v93 = v223;
            v96 = v222;
            goto LABEL_7;
          }

          v130 = *(v129 + 48);
          v100 = v250;
          v102 = v127;
          (*v251)(v250, v128, v127);
          sub_25272C298((v128 + v130), &v255);
          v131 = sub_2528C0D80();
          if (v131)
          {
            v132 = v131;
            v133 = v257;
            v134 = __swift_project_boxed_opaque_existential_0(&v255, v257);
            v254[3] = v133;
            boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v254);
            (*(*(v133 - 8) + 16))(boxed_opaque_existential_0Tm, v134, v133);
            v136 = v236;
            sub_2528BF340();
            v137 = *v243;
            (*v243)(v248, v136, v249);
            v138 = v253;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v254[0] = v138;
            v141 = sub_252786E74(v132);
            v142 = *(v138 + 16);
            v143 = (v140 & 1) == 0;
            v144 = v142 + v143;
            if (__OFADD__(v142, v143))
            {
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v145 = v140;
            if (*(v138 + 24) >= v144)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_2527E2AE8();
              }

              v148 = v238;
            }

            else
            {
              sub_2527E05A4(v144, isUniquelyReferenced_nonNull_native);
              v146 = sub_252786E74(v132);
              if ((v145 & 1) != (v147 & 1))
              {
                goto LABEL_52;
              }

              v141 = v146;
              v148 = v238;
            }

            v253 = v254[0];
            if (v145)
            {
              (*(v237 + 40))(*(v254[0] + 56) + *(v237 + 72) * v141, v248, v249);

              v102 = v148;
              (*v244)(v250, v148);
            }

            else
            {
              *(v254[0] + 8 * (v141 >> 6) + 64) |= 1 << v141;
              *(*(v253 + 48) + 8 * v141) = v132;
              v137((*(v253 + 56) + *(v237 + 72) * v141), v248, v249);
              v102 = v148;
              (*v244)(v250, v148);
              v149 = *(v253 + 16);
              v150 = __OFADD__(v149, 1);
              v151 = v149 + 1;
              if (v150)
              {
                goto LABEL_50;
              }

              *(v253 + 16) = v151;
            }

            v104 = v252;
            v101 = v245;
            v92 = &unk_2528D4CC0;
          }

          else
          {
            (*v244)(v100, v127);
            v104 = v252;
            v101 = v245;
          }

          __swift_destroy_boxed_opaque_existential_0Tm(&v255);
        }

        if (v235 <= v103 + 1)
        {
          v116 = v103 + 1;
        }

        else
        {
          v116 = v235;
        }

        v117 = v116 - 1;
        while (1)
        {
          v115 = v103 + 1;
          if (__OFADD__(v103, 1))
          {
            break;
          }

          if (v115 >= v235)
          {
            v127 = v102;
            v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4B0, v92);
            (*(*(v152 - 8) + 56))(v104, 1, 1, v152);
            v113 = 0;
            v103 = v117;
            goto LABEL_28;
          }

          v113 = *(v101 + 8 * v115);
          ++v103;
          if (v113)
          {
            v114 = v92;
            v103 = v115;
            goto LABEL_27;
          }
        }

        __break(1u);
      }

      sub_25276925C(v100, v101, v102, v103, v104, 0);
      (*(v220 + 8))(v92, v192);

      return sub_25276925C(v100, v101, v102, v103, v104, 0);
    }

    else
    {
LABEL_46:

      v154 = v197;
      *v197 = v253;
      v155 = *MEMORY[0x277D15A00];
      v156 = sub_2528BF360();
      (*(*(v156 - 8) + 104))(v154, v155, v156);
      (*(v196 + 104))(v154, *MEMORY[0x277D159E8], v193);
      v157 = v203;
      sub_2528BF8A0();
      v158 = *(v209 + 56);
      v252 = (v209 + 56);
      v253 = v158;
      v158(v157, 0, 1, v210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
      v159 = sub_2528BF3E0();
      v160 = *(v159 - 8);
      v161 = *(v160 + 72);
      v162 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v163 = swift_allocObject();
      *(v163 + 16) = xmmword_2528C17E0;
      v164 = v163 + v162;
      v165 = *(v160 + 104);
      v165(v164, *MEMORY[0x277D15A30], v159);
      v165(v164 + v161, *MEMORY[0x277D15A38], v159);
      sub_252744570(v163);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v166 = v246;
      v167 = v204;
      sub_2528C0600();
      v168 = *(v225 + 56);
      v169 = v226;
      v168(v212, 1, 1, v226);
      v168(v213, 1, 1, v169);
      v170 = sub_2528C0200();
      (*(*(v170 - 8) + 56))(v214, 1, 1, v170);
      v171 = sub_2528BEC90();
      v172 = *(*(v171 - 8) + 56);
      v172(v215, 1, 1, v171);
      v172(v216, 1, 1, v171);
      v173 = sub_2528BFC00();
      (*(*(v173 - 8) + 56))(v217, 1, 1, v173);
      v174 = sub_2528BF240();
      v175 = *(*(v174 - 8) + 56);
      v175(v218, 1, 1, v174);
      v176 = sub_2528BFA80();
      (*(*(v176 - 8) + 56))(v207, 1, 1, v176);
      v168(v205, 1, 1, v169);
      v168(v211, 1, 1, v169);
      v175(v206, 1, 1, v174);
      v177 = v210;
      (*(v209 + 16))(v157, v167, v210);
      (v253)(v157, 0, 1, v177);
      v178 = sub_2528BFD50();
      v179 = v199;
      (*(*(v178 - 8) + 56))(v199, 1, 1, v178);
      v180 = sub_2528C0210();
      v181 = v200;
      (*(*(v180 - 8) + 56))(v200, 1, 1, v180);
      v182 = sub_2528BEDF0();
      v183 = v201;
      (*(*(v182 - 8) + 56))(v201, 1, 1, v182);
      v184 = v198;
      v168(v198, 1, 1, v169);
      v185 = sub_2528BF880();
      v186 = v202;
      (*(*(v185 - 8) + 56))(v202, 1, 1, v185);
      v187 = v206;
      v188 = v205;
      v189 = v207;
      sub_2528BF570();

      sub_2527213D8(v186, &qword_27F4FFC00, &qword_2528D4C70);
      sub_2527213D8(v184, &qword_27F4FC628, &qword_2528C4750);
      sub_2527213D8(v183, &qword_27F4FFC08, &qword_2528D4C78);
      sub_2527213D8(v181, &qword_27F4FFC10, &unk_2528D4C80);
      sub_2527213D8(v179, &qword_27F4FD6B0, &qword_2528C8928);
      sub_2527213D8(v203, &qword_27F4FFC28, &qword_2528D4CA8);
      sub_2527213D8(v187, &qword_27F4FF948, &qword_2528D4208);
      sub_2527213D8(v211, &qword_27F4FC628, &qword_2528C4750);
      sub_2527213D8(v188, &qword_27F4FC628, &qword_2528C4750);
      sub_2527213D8(v189, &qword_27F4FF940, &qword_2528D4200);
      sub_2527213D8(v218, &qword_27F4FF948, &qword_2528D4208);
      sub_2527213D8(v217, &qword_27F4FFC18, &unk_2528D4C90);
      sub_2527213D8(v216, &qword_27F4FCBD8, &qword_2528C58F8);
      sub_2527213D8(v215, &qword_27F4FCBD8, &qword_2528C58F8);
      sub_2527213D8(v214, &qword_27F4FFC20, &qword_2528D4CA0);
      sub_2527213D8(v213, &qword_27F4FC628, &qword_2528C4750);
      sub_2527213D8(v212, &qword_27F4FC628, &qword_2528C4750);
      (*(v209 + 8))(v204, v210);
      v190 = v220;
      v191 = v192;
      (*(v220 + 8))(v194, v192);
      return (*(v190 + 56))(v208, 0, 1, v191);
    }
  }

  else
  {

    (*(v225 + 8))(v71, v226);
    return (*(v220 + 56))(v208, 1, 1, v78);
  }
}

uint64_t sub_252863570(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB0, &qword_2528D2DB0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = sub_2528BF400();
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252863754, 0, 0);
}

uint64_t sub_252863754()
{
  v32 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[3];
  v5 = type metadata accessor for ShowDeviceResultIntent();
  sub_25272006C(v4 + *(v5 + 52), v3, &qword_27F4FCD98, &qword_2528C6200);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[7];
    v7 = v0[6];
    sub_2527213D8(v0[8], &qword_27F4FCD98, &qword_2528C6200);
    v8 = type metadata accessor for HomeEntity(0);
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = sub_2528C05D0();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_252863B3C;
    v11 = v0[6];
    v12 = v0[7];

    return sub_25277ECE4(v12, 0, 0, v11);
  }

  else
  {
    v14 = *(v0[10] + 32);
    v14(v0[12], v0[8], v0[9]);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v15 = sub_2528C08B0();
    __swift_project_value_buffer(v15, qword_27F5025C8);
    v16 = sub_2528C0890();
    v17 = sub_2528C0D10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, &v31);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2527389AC(0x616E536574617473, 0xED0000746F687370, &v31);
      _os_log_impl(&dword_252711000, v16, v17, "%s-%s Using source state snapshot", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v19, -1, -1);
      MEMORY[0x2530A8D80](v18, -1, -1);
    }

    v20 = v0[9];
    v21 = v0[10];
    v22 = v0[2];
    v14(v22, v0[12], v20);
    (*(v21 + 56))(v22, 0, 1, v20);
    v24 = v0[11];
    v23 = v0[12];
    v26 = v0[7];
    v25 = v0[8];
    v28 = v0[5];
    v27 = v0[6];
    v29 = v0[4];

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_252863B3C(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 112) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_252863C98, 0, 0);
}

uint64_t sub_252863C98()
{
  v43 = v0;
  v1 = v0[4];
  sub_2527D38F8(v0[14], v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[5];
    sub_2527213D8(v0[4], &qword_27F4FCDA8, &unk_2528C5CB0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
LABEL_4:
    sub_2527213D8(v0[5], &qword_27F4FCDB0, &qword_2528D2DB0);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v15 = sub_2528C08B0();
    __swift_project_value_buffer(v15, qword_27F5025C8);
    v16 = sub_2528C0890();
    v17 = sub_2528C0D10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v42 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, &v42);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2527389AC(0x616E536574617473, 0xED0000746F687370, &v42);
      _os_log_impl(&dword_252711000, v16, v17, "%s-%s Using currentStateSnapshot", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v19, -1, -1);
      MEMORY[0x2530A8D80](v18, -1, -1);
    }

    sub_2528BEEB0();
    v0[15] = MEMORY[0x2530A6500]();
    v0[16] = sub_2528BEEE0();
    v0[17] = sub_2528BEED0();
    v0[18] = sub_25286FE38(&qword_27F4FF398, MEMORY[0x277D153D0]);
    v21 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_252864350, v21, v20);
  }

  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v8 + *(v2 + 48);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
  v11 = *(v10 + 48);
  (*(v6 + 16))(v7, v9, v5);
  v12 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v9 + *(v12 + 20), v7 + v11, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_25286FA3C(v9, type metadata accessor for HomeEntity.SnapshotPair);
  v13 = *(v10 - 8);
  (*(v13 + 56))(v7, 0, 1, v10);
  v14 = sub_2528BECF0();
  (*(*(v14 - 8) + 8))(v8, v14);
  if ((*(v13 + 48))(v7, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  v22 = v0[5];
  v23 = *(v10 + 48);
  v24 = *(v0[10] + 32);
  v24(v0[11], v22, v0[9]);
  sub_2527213D8(v22 + v23, &qword_27F4FCDB8, &unk_2528C5CC0);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v25 = sub_2528C08B0();
  __swift_project_value_buffer(v25, qword_27F5025C8);
  v26 = sub_2528C0890();
  v27 = sub_2528C0D10();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, &v42);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_2527389AC(0x616E536574617473, 0xED0000746F687370, &v42);
    _os_log_impl(&dword_252711000, v26, v27, "%s-%s Using gathered snapshot", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v29, -1, -1);
    MEMORY[0x2530A8D80](v28, -1, -1);
  }

  v30 = v0[10];
  v31 = v0[9];
  v32 = v0[2];
  v24(v32, v0[11], v31);
  (*(v30 + 56))(v32, 0, 1, v31);
  v34 = v0[11];
  v33 = v0[12];
  v36 = v0[7];
  v35 = v0[8];
  v38 = v0[5];
  v37 = v0[6];
  v39 = v0[4];

  v40 = v0[1];

  return v40();
}

uint64_t sub_252864350()
{
  v1 = v0[17];
  v2 = v0[15];

  v0[19] = sub_2528BEE90();

  return MEMORY[0x2822009F8](sub_2528643CC, 0, 0);
}

uint64_t sub_2528643CC()
{
  v1 = v0[18];
  v2 = v0[16];
  v0[20] = sub_2528BEED0();
  v4 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_252864460, v4, v3);
}

uint64_t sub_252864460()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[2];

  sub_2528BEE40();

  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[7];
  v6 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

uint64_t sub_252864528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2528BF3B0();
  if (*(v4 + 16) && (v5 = sub_252785C40(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = sub_2528C0020();
    v10 = *(v9 - 8);
    (*(v10 + 16))(a2, v8 + *(v10 + 72) * v7, v9);

    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  else
  {

    v12 = sub_2528C0020();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_252864688(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528BECF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v16 = a2 + 56;
  v17 = 1 << *(a2 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a2 + 56);
  v41 = v5 + 32;
  v42 = (v17 + 63) >> 6;
  v45 = a1 + 56;
  v46 = v5 + 16;
  v47 = (v5 + 8);

  v21 = 0;
  v36 = a2 + 56;
  v37 = v14;
  v40 = a2;
  v38 = v5;
  v22 = v42;
  if (v19)
  {
    while (1)
    {
      v23 = v21;
LABEL_11:
      v24 = *(v5 + 72);
      v25 = *(a2 + 48) + v24 * (__clz(__rbit64(v19)) | (v23 << 6));
      v43 = *(v5 + 16);
      v44 = v24;
      v43(v14, v25, v4);
      (*(v5 + 32))(v12, v14, v4);
      v26 = *(a1 + 16);
      v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v27 = v12;
      if (!v26)
      {
        break;
      }

      v28 = *(a1 + 40);
      sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
      v29 = sub_2528C0900();
      v30 = -1 << *(a1 + 32);
      v31 = v29 & ~v30;
      if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        break;
      }

      v32 = a1;
      v19 &= v19 - 1;
      v33 = ~v30;
      while (1)
      {
        v43(v9, *(v32 + 48) + v31 * v44, v4);
        sub_25286FE38(&qword_27F4FC680, MEMORY[0x277CC95F0]);
        v34 = sub_2528C0930();
        v35 = *v47;
        (*v47)(v9, v4);
        if (v34)
        {
          break;
        }

        v31 = (v31 + 1) & v33;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          v35(v27, v4);
          goto LABEL_19;
        }
      }

      v12 = v27;
      result = (v35)(v27, v4);
      v21 = v23;
      a2 = v40;
      a1 = v32;
      v14 = v37;
      v5 = v38;
      v16 = v36;
      v22 = v42;
      if (!v19)
      {
        goto LABEL_8;
      }
    }

    (*v47)(v27, v4);
LABEL_19:
    v15 = 0;
LABEL_21:

    return v15;
  }

LABEL_8:
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
      v15 = 1;
      goto LABEL_21;
    }

    v19 = *(v16 + 8 * v23);
    ++v21;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252864A58@<X0>(uint64_t a1@<X0>, void (*a2)(char *, unint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v92 = a2;
  v91 = a1;
  v93 = a3;
  v3 = sub_2528BFF90();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = v81[8];
  v5 = MEMORY[0x28223BE20](v3);
  v80 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v78 = &v76 - v8;
  MEMORY[0x28223BE20](v7);
  v79 = &v76 - v9;
  v10 = sub_2528C0130();
  v86 = *(v10 - 8);
  v87 = v10;
  v11 = v86[8];
  v12 = MEMORY[0x28223BE20](v10);
  v85 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v83 = &v76 - v15;
  MEMORY[0x28223BE20](v14);
  v84 = &v76 - v16;
  v17 = sub_2528BF9D0();
  v89 = *(v17 - 8);
  v18 = v89[8];
  v19 = MEMORY[0x28223BE20](v17);
  v88 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v76 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v76 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v76 - v28;
  v30 = sub_2528BF400();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v90 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v76 - v35;
  sub_25272006C(v92, v29, &qword_27F4FCD98, &qword_2528C6200);
  if ((*(v31 + 48))(v29, 1, v30) != 1)
  {
    (*(v31 + 32))(v36, v29, v30);
    v40 = sub_2528BF370();
    v41 = v91;
    if (*(v40 + 16) && (v42 = sub_252785C40(v91), (v43 & 1) != 0))
    {
      v44 = v89;
      v45 = *(v40 + 56) + v89[9] * v42;
      v46 = v17;
      v77 = v17;
      v47 = v89[2];
      v47(v23, v45, v46);

      v48 = v23;
      v49 = v77;
      (v44[4])(v25, v48, v77);
      v50 = v88;
      v47(v88, v25, v49);
      v51 = v90;
      (*(v31 + 16))(v90, v36, v30);
      DeviceEntity.init(staticService:snapshot:)(v50, v51, v93);
      (v44[1])(v25, v49);
    }

    else
    {

      v52 = sub_2528BF3D0();
      if (*(v52 + 16))
      {
        v53 = sub_252785C40(v41);
        if (v54)
        {
          v56 = v86;
          v55 = v87;
          v57 = *(v52 + 56) + v86[9] * v53;
          v92 = v86[2];
          v58 = v83;
          v92(v83, v57, v87);

          v59 = v84;
          (v56[4])(v84, v58, v55);
          v60 = v85;
          v92(v85, v59, v55);
          v61 = v90;
          (*(v31 + 16))(v90, v36, v30);
          v62 = v93;
          DeviceEntity.init(staticCameraProfile:snapshot:)(v60, v61, v93);
          (v56[1])(v59, v55);
          (*(v31 + 8))(v36, v30);
          v63 = type metadata accessor for DeviceEntity();
          return (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
        }
      }

      v65 = sub_2528BF3A0();
      v66 = v93;
      if (!*(v65 + 16) || (v67 = sub_252785C40(v41), (v68 & 1) == 0))
      {

        (*(v31 + 8))(v36, v30);
        v37 = type metadata accessor for DeviceEntity();
        v38 = *(*(v37 - 8) + 56);
        v39 = v66;
        return v38(v39, 1, 1, v37);
      }

      v70 = v81;
      v69 = v82;
      v71 = *(v65 + 56) + v81[9] * v67;
      v92 = v81[2];
      v72 = v78;
      v92(v78, v71, v82);

      v73 = v79;
      (v70[4])(v79, v72, v69);
      v74 = v80;
      v92(v80, v73, v69);
      v75 = v90;
      (*(v31 + 16))(v90, v36, v30);
      DeviceEntity.init(staticMediaProfile:snapshot:)(v74, v75, v93);
      (v70[1])(v73, v69);
    }

    return (*(v31 + 8))(v36, v30);
  }

  sub_2527213D8(v29, &qword_27F4FCD98, &qword_2528C6200);
  v37 = type metadata accessor for DeviceEntity();
  v38 = *(*(v37 - 8) + 56);
  v39 = v93;
  return v38(v39, 1, 1, v37);
}

uint64_t sub_252865220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_2528C00D0();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - v14;
  v16 = sub_2528BF400();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25272006C(a1, v15, &qword_27F4FCD98, &qword_2528C6200);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2527213D8(v15, &qword_27F4FCD98, &qword_2528C6200);
    return MEMORY[0x277D84F90];
  }

  (*(v17 + 32))(v20, v15, v16);
  sub_25272006C(v26, v7, &qword_27F4FCDB8, &unk_2528C5CC0);
  v21 = v27;
  if ((*(v27 + 48))(v7, 1, v8) == 1)
  {
    sub_2527213D8(v7, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v17 + 8))(v20, v16);
    return MEMORY[0x277D84F90];
  }

  (*(v21 + 32))(v11, v7, v8);
  v23 = sub_2528C0070();
  MEMORY[0x28223BE20](v23);
  *(&v25 - 4) = v25;
  *(&v25 - 3) = v11;
  *(&v25 - 2) = v20;
  v24 = sub_252853528(sub_25286FD0C, (&v25 - 6), v23);

  (*(v21 + 8))(v11, v8);
  (*(v17 + 8))(v20, v16);
  return v24;
}

uint64_t sub_2528655B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v32 = a1;
  v33 = a4;
  v4 = sub_2528BF400();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2528BFF00();
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v27);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - v14;
  v16 = sub_2528BFB20();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v23 = &v26 - v22;
  sub_2528C0080();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2527213D8(v15, &qword_27F4FCEF0, &unk_2528C6AB0);
    v24 = type metadata accessor for DeviceEntity();
    return (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    (*(v17 + 16))(v21, v23, v16);
    (*(v8 + 16))(v11, v30, v27);
    (*(v28 + 16))(v7, v31, v29);
    DeviceEntity.init(staticEndpoint:staticMatterDevice:snapshot:)(v21, v11, v7, v33);
    return (*(v17 + 8))(v23, v16);
  }
}

void *sub_252865914(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC780, &unk_2528D4C50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_252865988(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_252865A5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252865B58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_2528BECF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_2527213D8(v6, &qword_27F4FC628, &qword_2528C4750))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_252865D74(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_252865D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_2528C0900();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_25286FE38(&qword_27F4FC680, MEMORY[0x277CC95F0]);
      v22 = sub_2528C0930();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_252740300();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_252866348(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

unint64_t sub_25286601C@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  result = sub_2528C1180();
  v7 = -1 << *(v4 + 32);
  v8 = result & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = a1;
    while (1)
    {
      v11 = *(*(v4 + 48) + v8);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v13 = 0xE400000000000000;
          v12 = 1701670760;
        }

        else
        {
          if (v11 == 4)
          {
            v12 = 1836019570;
          }

          else
          {
            v12 = 1701736314;
          }

          v13 = 0xE400000000000000;
        }
      }

      else if (*(*(v4 + 48) + v8))
      {
        if (v11 == 1)
        {
          v12 = 0x7954656369766564;
        }

        else
        {
          v12 = 0x70756F7267;
        }

        if (v11 == 1)
        {
          v13 = 0xEA00000000006570;
        }

        else
        {
          v13 = 0xE500000000000000;
        }
      }

      else
      {
        v12 = 0x614E656369766564;
        v13 = 0xEA0000000000656DLL;
      }

      v14 = 1836019570;
      if (v10 != 4)
      {
        v14 = 1701736314;
      }

      if (v10 == 3)
      {
        v14 = 1701670760;
      }

      v15 = 0xEA00000000006570;
      v16 = 0x7954656369766564;
      if (v10 != 1)
      {
        v16 = 0x70756F7267;
        v15 = 0xE500000000000000;
      }

      if (!v10)
      {
        v16 = 0x614E656369766564;
        v15 = 0xEA0000000000656DLL;
      }

      v17 = v10 <= 2 ? v16 : v14;
      v18 = v10 <= 2 ? v15 : 0xE400000000000000;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = sub_2528C1060();

      if (v19)
      {
        goto LABEL_38;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_38:
    v20 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v23;
    v25 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_252740BBC();
      v22 = v25;
    }

    *a2 = *(*(v22 + 48) + v8);
    result = sub_252866650(v8);
    *v23 = v25;
  }

  else
  {
LABEL_36:
    *a2 = 6;
  }

  return result;
}

uint64_t sub_252866348(int64_t a1)
{
  v3 = sub_2528BECF0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;
    sub_2528BEA50();
    v15 = sub_2528C0E10();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
        v27 = sub_2528C0900();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_252866650(unint64_t result)
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
    sub_2528BEA50();
    v9 = sub_2528C0E10();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_2528C1130();
        sub_2528C0A40();

        v13 = sub_2528C1180() & v7;
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

uint64_t sub_2528668B4(uint64_t a1)
{
  v2 = sub_2528C0020();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25286FE38(&qword_27F4FFC70, MEMORY[0x277D164A0]);
  result = MEMORY[0x2530A82F0](v10, v2, v11);
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 16;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v9, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      sub_252866AC8(v7, v9);
      result = (*(v3 + 8))(v7, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252866AC8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528C0020();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25286FE38(&qword_27F4FFC70, MEMORY[0x277D164A0]);
  v36 = a2;
  v13 = sub_2528C0900();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25286FE38(&qword_27F4FFC78, MEMORY[0x277D164A0]);
      v23 = sub_2528C0930();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_252866DA8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_252866DA8(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_2528C0020();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v12 <= v11)
  {
    v13 = v11 + 1;
    if (a3)
    {
      sub_252867594(v13);
    }

    else
    {
      sub_252867278(v13);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_25286FE38(&qword_27F4FFC70, MEMORY[0x277D164A0]);
    v16 = sub_2528C0900();
    v17 = v14 + 56;
    v33 = v14;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v22 = *(v7 + 16);
      v21 = v7 + 16;
      v20 = v22;
      v23 = *(v21 + 56);
      do
      {
        v20(v10, *(v33 + 48) + v23 * a2, v6);
        sub_25286FE38(&qword_27F4FFC78, MEMORY[0x277D164A0]);
        v24 = sub_2528C0930();
        (*(v21 - 8))(v10, v6);
        if (v24)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_252867040();
  }

  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

void *sub_252867040()
{
  v1 = v0;
  v2 = sub_2528C0020();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC80, &unk_2528D4D08);
  v7 = *v0;
  v8 = sub_2528C0E30();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

uint64_t sub_252867278(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2528C0020();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC80, &unk_2528D4D08);
  v10 = sub_2528C0E40();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25286FE38(&qword_27F4FFC70, MEMORY[0x277D164A0]);
      result = sub_2528C0900();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_252867594(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2528C0020();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC80, &unk_2528D4D08);
  result = sub_2528C0E40();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25286FE38(&qword_27F4FFC70, MEMORY[0x277D164A0]);
      result = sub_2528C0900();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2528678F0(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v69 - v10);
  v12 = sub_2528BECF0();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v69 - v17);
  MEMORY[0x28223BE20](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_2527213D8(v32, &qword_27F4FC628, &qword_2528C4750);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
    v35 = sub_2528C0900();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_25286FE38(&qword_27F4FC680, MEMORY[0x277CC95F0]);
    v39 = sub_2528C0930();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x28223BE20](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_2527213D8(v26, &qword_27F4FC628, &qword_2528C4750);
        a2 = sub_2528308F4(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_2528C0900();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_2528C0930();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_2528C0930();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;
    sub_2528BEA50();
    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_252868354(v68, v69, v84, v26, &v93);

  MEMORY[0x2530A8D80](v68, -1, -1);
LABEL_52:
  sub_25271A648();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_252868354(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_2528BECF0();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_2527213D8(v12, &qword_27F4FC628, &qword_2528C4750);
          v48 = v64;
          sub_2528BEA50();
          return sub_2528308F4(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
        v38 = sub_2528C0900();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_25286FE38(&qword_27F4FC680, MEMORY[0x277CC95F0]);
        v46 = sub_2528C0930();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

void *sub_252868828(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_252868980(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_252868A7C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DeviceEntity();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = *(v33 + 72);
      sub_25286F980(v26 + v27 * (v25 | (v20 << 6)), v12, type metadata accessor for DeviceEntity);
      sub_25279F090(v12, v15);
      sub_25279F090(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_252868D18(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_252868FC0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_252869014@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_2528BECF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t _s14HomeAppIntents22ShowDeviceResultIntentV019getSuccessAndFailedE3IDs4fromShySSG07successeL0_AF06failedeL0tSayAA0eF0VG_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v147 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v146 = &v131 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v145 = &v131 - v9;
  MEMORY[0x28223BE20](v8);
  v144 = &v131 - v10;
  v11 = type metadata accessor for DeviceEntity();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v153 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v131 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v152 = &v131 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v131 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v151 = &v131 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v131 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v150 = &v131 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v131 - v30;
  v158 = sub_2528BECF0();
  v32 = *(*(v158 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v158);
  v143 = &v131 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v142 = &v131 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v141 = &v131 - v38;
  MEMORY[0x28223BE20](v37);
  v140 = &v131 - v41;
  v133 = *(a1 + 16);
  if (!v133)
  {
    v159 = MEMORY[0x277D84F90];
    v165 = MEMORY[0x277D84F90];
LABEL_50:
    v129 = sub_252743FCC(v159);

    sub_252743FCC(v165);

    return v129;
  }

  v136 = v31;
  v137 = v27;
  v138 = v22;
  v139 = v17;
  v131 = v11;
  v42 = 0;
  v132 = a1 + 32;
  v157 = (v39 + 48);
  v156 = (v39 + 32);
  v155 = (v39 + 8);
  v43 = 0x27F4FB000uLL;
  *&v40 = 136315138;
  v135 = v40;
  *&v40 = 136315394;
  v154 = v40;
  v159 = MEMORY[0x277D84F90];
  v165 = MEMORY[0x277D84F90];
  while (1)
  {
    v134 = v42;
    v44 = (v132 + 16 * v42);
    v46 = *v44;
    v45 = v44[1];
    sub_2528BEA50();
    sub_2528BEA50();
    v164 = v45;
    sub_2528BE6B0();
    v47 = v173;
    v163 = *(v173 + 16);
    if (v163)
    {
      break;
    }

LABEL_3:
    v42 = v134 + 1;

    if (v42 == v133)
    {
      goto LABEL_50;
    }
  }

  v48 = 0;
  v49 = (v173 + 40);
  v160 = v46;
  v162 = v173;
  while (1)
  {
    if (v48 >= *(v47 + 16))
    {
      __break(1u);
LABEL_52:
      sub_2527213D8(v45, &qword_27F4FC628, &qword_2528C4750);
      v171 = 0;
      v172 = 0xE000000000000000;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
      sub_2528C0ED0();
      MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
      goto LABEL_54;
    }

    v51 = *v49;
    v167 = *(v49 - 1);
    sub_2528BEA50();
    sub_2528BEA50();
    v166 = v51;
    sub_2528BE6B0();
    v52 = v173;
    if (v178 > 1u)
    {
      break;
    }

    if (v178)
    {
      if (*(v43 + 2880) != -1)
      {
        swift_once();
      }

      v85 = sub_2528C08B0();
      __swift_project_value_buffer(v85, qword_27F5025C8);
      sub_2528BEA50();
      sub_2528BEA50();
      v86 = sub_2528C0890();
      v87 = sub_2528C0D10();

      if (os_log_type_enabled(v86, v87))
      {
        v148 = v87;
        v149 = v86;
        v161 = v52;
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v170 = v90;
        *v88 = v154;
        v91 = v136;
        sub_2528BE6B0();
        v92 = *(v91 + 8);
        sub_2528BE6B0();
        v93 = v144;
        sub_2528BECA0();
        v45 = v93;

        v94 = v93;
        v95 = v158;
        if ((*v157)(v94, 1, v158) == 1)
        {
          goto LABEL_52;
        }

        v96 = v140;
        (*v156)(v140, v45, v95);
        sub_25286FA3C(v91, type metadata accessor for DeviceEntity);
        sub_25286FE38(&qword_27F4FD070, MEMORY[0x277CC95F0]);
        v97 = sub_2528C1040();
        v99 = v98;
        (*v155)(v96, v95);
        v100 = sub_2527389AC(v97, v99, &v170);

        *(v88 + 4) = v100;
        *(v88 + 12) = 2112;
        sub_25286FE80();
        swift_allocError();
        *v101 = v161;
        v102 = _swift_stdlib_bridgeErrorToNSError();
        *(v88 + 14) = v102;
        *v89 = v102;
        v103 = v149;
        _os_log_impl(&dword_252711000, v149, v148, "Adding device %s to failed list due to error: %@", v88, 0x16u);
        sub_2527213D8(v89, &qword_27F4FC230, &qword_2528C3928);
        MEMORY[0x2530A8D80](v89, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v90);
        MEMORY[0x2530A8D80](v90, -1, -1);
        MEMORY[0x2530A8D80](v88, -1, -1);

        v43 = 0x27F4FB000;
      }

      else
      {
      }

      v125 = &v179;
LABEL_41:
      v126 = *(v125 - 32);
LABEL_44:
      sub_2528BE6B0();
      v127 = *(v126 + 8);
      sub_2528BE6B0();
      v120 = v171;
      v121 = v172;
      sub_25286FA3C(v126, type metadata accessor for DeviceEntity);
      v45 = v165;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_252737D40(0, *(v45 + 2) + 1, 1, v45);
      }

      v123 = *(v45 + 2);
      v128 = *(v45 + 3);
      v124 = v123 + 1;
      if (v123 >= v128 >> 1)
      {
        v45 = sub_252737D40((v128 > 1), v123 + 1, 1, v45);
      }

      v165 = v45;
      goto LABEL_6;
    }

    sub_25276925C(v173, v174, v175, v176, v177, 0);
    if (*(v43 + 2880) != -1)
    {
      swift_once();
    }

    v53 = sub_2528C08B0();
    __swift_project_value_buffer(v53, qword_27F5025C8);
    sub_2528BEA50();
    sub_2528BEA50();
    v54 = sub_2528C0890();
    v55 = sub_2528C0D10();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v170 = v57;
      *v56 = v135;
      v58 = v139;
      sub_2528BE6B0();
      v59 = *(v58 + 8);
      sub_2528BE6B0();
      v60 = v147;
      sub_2528BECA0();
      v45 = v60;

      v61 = v60;
      v62 = v158;
      if ((*v157)(v61, 1, v158) == 1)
      {
        goto LABEL_52;
      }

      sub_25286FA3C(v58, type metadata accessor for DeviceEntity);
      v63 = v143;
      (*v156)(v143, v45, v62);
      sub_25286FE38(&qword_27F4FD070, MEMORY[0x277CC95F0]);
      v64 = sub_2528C1040();
      v66 = v65;
      (*v155)(v63, v62);
      v67 = sub_2527389AC(v64, v66, &v170);

      *(v56 + 4) = v67;
      _os_log_impl(&dword_252711000, v54, v55, "Adding device %s to success list", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      MEMORY[0x2530A8D80](v57, -1, -1);
      MEMORY[0x2530A8D80](v56, -1, -1);

      v43 = 0x27F4FB000;
    }

    else
    {
    }

    v118 = v153;
    sub_2528BE6B0();
    v119 = *(v118 + 8);
    sub_2528BE6B0();
    v120 = v171;
    v121 = v172;
    sub_25286FA3C(v118, type metadata accessor for DeviceEntity);
    v45 = v159;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_252737D40(0, *(v45 + 2) + 1, 1, v45);
    }

    v123 = *(v45 + 2);
    v122 = *(v45 + 3);
    v124 = v123 + 1;
    if (v123 >= v122 >> 1)
    {
      v45 = sub_252737D40((v122 > 1), v123 + 1, 1, v45);
    }

    v159 = v45;
LABEL_6:
    ++v48;

    *(v45 + 2) = v124;
    v50 = &v45[16 * v123];
    *(v50 + 4) = v120;
    *(v50 + 5) = v121;
    v49 += 2;
    v47 = v162;
    if (v163 == v48)
    {
      goto LABEL_3;
    }
  }

  if (v178 == 2)
  {
    if (*(v43 + 2880) != -1)
    {
      swift_once();
    }

    v68 = sub_2528C08B0();
    __swift_project_value_buffer(v68, qword_27F5025C8);
    sub_2528BEA50();
    sub_2528BEA50();
    v69 = sub_2528C0890();
    v70 = sub_2528C0D10();

    if (os_log_type_enabled(v69, v70))
    {
      v148 = v70;
      v149 = v69;
      v161 = v52;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v170 = v73;
      *v71 = v154;
      v74 = v137;
      sub_2528BE6B0();
      v75 = *(v74 + 8);
      sub_2528BE6B0();
      v45 = v145;
      sub_2528BECA0();

      v76 = v158;
      if ((*v157)(v45, 1, v158) == 1)
      {
        goto LABEL_52;
      }

      v77 = v141;
      (*v156)(v141, v45, v76);
      sub_25286FA3C(v74, type metadata accessor for DeviceEntity);
      sub_25286FE38(&qword_27F4FD070, MEMORY[0x277CC95F0]);
      v78 = sub_2528C1040();
      v80 = v79;
      (*v155)(v77, v76);
      v81 = sub_2527389AC(v78, v80, &v170);

      *(v71 + 4) = v81;
      *(v71 + 12) = 2112;
      sub_25272C1A8();
      swift_allocError();
      *v82 = v161;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 14) = v83;
      *v72 = v83;
      v84 = v149;
      _os_log_impl(&dword_252711000, v149, v148, "Adding device %s to failed list due to device error: %@", v71, 0x16u);
      sub_2527213D8(v72, &qword_27F4FC230, &qword_2528C3928);
      MEMORY[0x2530A8D80](v72, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      MEMORY[0x2530A8D80](v73, -1, -1);
      MEMORY[0x2530A8D80](v71, -1, -1);

      v43 = 0x27F4FB000;
    }

    else
    {
    }

    v125 = &v180;
    goto LABEL_41;
  }

  if (*(v43 + 2880) != -1)
  {
    swift_once();
  }

  v104 = sub_2528C08B0();
  __swift_project_value_buffer(v104, qword_27F5025C8);
  sub_2528BEA50();
  sub_2528BEA50();
  v105 = sub_2528C0890();
  v106 = sub_2528C0D10();

  if (!os_log_type_enabled(v105, v106))
  {

    goto LABEL_43;
  }

  LODWORD(v149) = v106;
  v161 = v52;
  v107 = swift_slowAlloc();
  v108 = swift_slowAlloc();
  v170 = v108;
  *v107 = v154;
  v109 = v138;
  sub_2528BE6B0();
  v110 = *(v109 + 8);
  sub_2528BE6B0();
  v111 = v146;
  sub_2528BECA0();

  v112 = v158;
  if ((*v157)(v111, 1, v158) != 1)
  {
    v113 = v142;
    (*v156)(v142, v111, v112);
    sub_25286FA3C(v109, type metadata accessor for DeviceEntity);
    sub_25286FE38(&qword_27F4FD070, MEMORY[0x277CC95F0]);
    v114 = sub_2528C1040();
    v116 = v115;
    (*v155)(v113, v112);
    v117 = sub_2527389AC(v114, v116, &v170);

    *(v107 + 4) = v117;
    *(v107 + 12) = 2048;
    *(v107 + 14) = v161;
    _os_log_impl(&dword_252711000, v105, v149, "Adding device %s to failed list due to homekit error code: %ld", v107, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v108);
    MEMORY[0x2530A8D80](v108, -1, -1);
    MEMORY[0x2530A8D80](v107, -1, -1);

    v43 = 0x27F4FB000;
LABEL_43:
    v126 = v152;
    goto LABEL_44;
  }

  sub_2527213D8(v111, &qword_27F4FC628, &qword_2528C4750);
  v171 = 0;
  v172 = 0xE000000000000000;
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
LABEL_54:
  sub_2528BE6B0();
  MEMORY[0x2530A80B0](v168, v169);

  MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
  result = sub_2528C0EE0();
  __break(1u);
  return result;
}

uint64_t sub_25286A47C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25286A4D0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6C8, &unk_2528D3C60);
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_2528C0020();
  v2[15] = v5;
  v6 = *(v5 - 8);
  v2[16] = v6;
  v7 = *(v6 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v9 = sub_2528BECF0();
  v2[22] = v9;
  v10 = *(v9 - 8);
  v2[23] = v10;
  v11 = *(v10 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v12 = type metadata accessor for DeviceEntity();
  v2[31] = v12;
  v13 = *(v12 - 8);
  v2[32] = v13;
  v14 = *(v13 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25286A758, 0, 0);
}

uint64_t sub_25286A758()
{
  v222 = v0;
  v1 = v0;
  v2 = v0[8];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1[32];
    v205 = v1[33];
    v5 = v1[23];
    v219 = MEMORY[0x277D84F90];
    sub_25282EFDC(0, v3, 0);
    v218 = (v5 + 48);
    v195 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v198 = (v5 + 32);
    v208 = *(v4 + 72);
    v192 = v3;
    v6 = v3;
    v7 = v195;
    do
    {
      v9 = v1[21];
      v8 = v1[22];
      sub_25286F980(v7, v1[33], type metadata accessor for DeviceEntity);
      v10 = *(v205 + 8);
      sub_2528BE6B0();
      v11 = v1[2];
      v12 = v1[3];
      sub_2528BECA0();

      v213 = *v218;
      if ((*v218)(v9, 1, v8) == 1)
      {
        v23 = v1[33];
        v24 = v1[31];
        sub_2527213D8(v1[21], &qword_27F4FC628, &qword_2528C4750);
        v221[0] = 0;
        v221[1] = 0xE000000000000000;
        sub_2528C0E70();
        v1[4] = 0;
        v1[5] = 0xE000000000000000;
        MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
        sub_2528C0ED0();
        MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
        sub_2528BE6B0();
        MEMORY[0x2530A80B0](v1[6], v1[7]);

        MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
        v25 = v1[4];
        v26 = v1[5];
        return sub_2528C0EE0();
      }

      v13 = v1[33];
      v14 = *v198;
      (*v198)(v1[30], v1[21], v1[22]);
      sub_25286FA3C(v13, type metadata accessor for DeviceEntity);
      v16 = *(v219 + 16);
      v15 = *(v219 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25282EFDC(v15 > 1, v16 + 1, 1);
      }

      v17 = v1[30];
      v18 = v1[22];
      *(v219 + 16) = v16 + 1;
      v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v20 = *(v5 + 72);
      v14(v219 + v19 + v20 * v16, v17, v18);
      v7 += v208;
      --v6;
    }

    while (v6);
    v183 = v20;
    v185 = v19;
    v187 = v14;
    v189 = v1[34];
    v28 = sub_252743D54(v219);

    v220 = v28;
    v221[0] = MEMORY[0x277D84F90];
    while (2)
    {
      sub_25286F980(v195 + v6 * v208, v1[34], type metadata accessor for DeviceEntity);
      v201 = v6 + 1;
      v30 = *(v189 + 56);
      v31 = -1 << *(v30 + 32);
      if (-v31 < 64)
      {
        v32 = ~(-1 << -v31);
      }

      else
      {
        v32 = -1;
      }

      v33 = v32 & *(v30 + 56);
      v34 = (63 - v31) >> 6;
      v35 = *(v189 + 56);
      result = swift_bridgeObjectRetain_n();
      v36 = 0;
      v206 = MEMORY[0x277D84F90];
LABEL_15:
      v37 = v36;
      if (!v33)
      {
        goto LABEL_17;
      }

      do
      {
        v36 = v37;
LABEL_20:
        v38 = v1[22];
        v39 = v1[20];
        v40 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v41 = (*(v30 + 48) + ((v36 << 10) | (16 * v40)));
        v42 = v1;
        v43 = *v41;
        v44 = v41[1];

        sub_2528BECA0();

        if (v213(v39, 1, v38) != 1)
        {
          v187(v42[29], v42[20], v42[22]);
          v1 = v42;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v206 = sub_252737E4C(0, v206[2] + 1, 1, v206);
          }

          v46 = v206[2];
          v45 = v206[3];
          if (v46 >= v45 >> 1)
          {
            v206 = sub_252737E4C(v45 > 1, v46 + 1, 1, v206);
          }

          v47 = v42[29];
          v48 = v42[22];
          v206[2] = v46 + 1;
          result = (v187)(v206 + v185 + v46 * v183, v47, v48);
          goto LABEL_15;
        }

        result = sub_2527213D8(v42[20], &qword_27F4FC628, &qword_2528C4750);
        v37 = v36;
        v1 = v42;
      }

      while (v33);
      while (1)
      {
LABEL_17:
        v36 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
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
          goto LABEL_85;
        }

        if (v36 >= v34)
        {
          break;
        }

        v33 = *(v30 + 56 + 8 * v36);
        ++v37;
        if (v33)
        {
          goto LABEL_20;
        }
      }

      v29 = v1[34];

      sub_25286FA3C(v29, type metadata accessor for DeviceEntity);

      sub_252737028(v206);
      v6 = v201;
      if (v201 != v192)
      {
        continue;
      }

      break;
    }

    v21 = v221[0];
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
    v22 = sub_252743D54(MEMORY[0x277D84F90]);

    v220 = v22;
  }

  v49 = v1[9];
  v50 = swift_task_alloc();
  *(v50 + 16) = v49;
  v51 = sub_2527A4FA4(sub_25286FD84, v50, v21);

  v168 = *(v51 + 2);
  if (v168)
  {
    v52 = 0;
    v53 = v1[16];
    v166 = &v51[(*(v53 + 80) + 32) & ~*(v53 + 80)];
    v167 = v53;
    v175 = v1[10];
    v169 = (v53 + 8);
    v178 = v1;
    v179 = v1[23];
    v165 = v51;
    v174 = (v179 + 8);
    while (v52 < *(v51 + 2))
    {
      v54 = v1[28];
      v171 = v52;
      v172 = *(v167 + 16);
      v172(v1[19], &v166[*(v167 + 72) * v52], v1[15]);
      sub_2528BFFF0();
      if (*(v220 + 16) && (v55 = v1[28], v56 = v1[22], v57 = *(v220 + 40), sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0]), v58 = sub_2528C0900(), v59 = -1 << *(v220 + 32), v60 = v58 & ~v59, ((*(v220 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) != 0))
      {
        v61 = ~v59;
        v62 = *(v179 + 72);
        v63 = *(v179 + 16);
        while (1)
        {
          v64 = v1[27];
          v65 = v1[22];
          v63(v64, *(v220 + 48) + v60 * v62, v65);
          sub_25286FE38(&qword_27F4FC680, MEMORY[0x277CC95F0]);
          v66 = sub_2528C0930();
          v67 = *v174;
          (*v174)(v64, v65);
          if (v66)
          {
            break;
          }

          v60 = (v60 + 1) & v61;
          if (((*(v220 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v144 = v1[19];
        v145 = v1[15];
        v67(v1[28], v1[22]);
        result = (*v169)(v144, v145);
      }

      else
      {
LABEL_39:
        v68 = *v174;
        (*v174)(v1[28], v1[22]);
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v69 = v1[18];
        v70 = v1[19];
        v71 = v1[15];
        v72 = sub_2528C08B0();
        __swift_project_value_buffer(v72, qword_27F5025C8);
        v172(v69, v70, v71);
        v73 = sub_2528C0890();
        v74 = sub_2528C0D10();
        v170 = v68;
        if (os_log_type_enabled(v73, v74))
        {
          v75 = v1[27];
          v76 = v1[22];
          v77 = v1[18];
          v214 = v1[15];
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v221[0] = v79;
          *v78 = 136315650;
          *(v78 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, v221);
          *(v78 + 12) = 2080;
          *(v78 + 14) = sub_2527389AC(0xD000000000000034, 0x80000002528E6750, v221);
          *(v78 + 22) = 2080;
          sub_2528BFFF0();
          v80 = sub_2528BECB0();
          v82 = v81;
          v68(v75, v76);
          v83 = *v169;
          (*v169)(v77, v214);
          v84 = sub_2527389AC(v80, v82, v221);
          v1 = v178;

          *(v78 + 24) = v84;
          _os_log_impl(&dword_252711000, v73, v74, "%s-%s Found potential Service Group to display %s", v78, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v79, -1, -1);
          MEMORY[0x2530A8D80](v78, -1, -1);
        }

        else
        {
          v85 = v1[18];
          v86 = v1[15];

          v83 = *v169;
          (*v169)(v85, v86);
        }

        v87 = v1[19];
        v88 = sub_2528BFFE0();
        v89 = *(v88 + 16);
        v90 = v179;
        v180 = v83;
        if (v89)
        {
          v221[0] = MEMORY[0x277D84F90];
          sub_25282EFDC(0, v89, 0);
          v91 = -1 << *(v88 + 32);
          v209 = v88 + 64;
          v215 = v221[0];
          result = sub_2528C0E00();
          v92 = result;
          v93 = 0;
          v173 = v88 + 72;
          v176 = v89;
          v177 = v88;
          while ((v92 & 0x8000000000000000) == 0 && v92 < 1 << *(v88 + 32))
          {
            if ((*(v209 + 8 * (v92 >> 6)) & (1 << v92)) == 0)
            {
              goto LABEL_81;
            }

            v184 = 1 << v92;
            v186 = v92 >> 6;
            v181 = v93;
            v182 = *(v88 + 36);
            v196 = *(v175 + 48);
            v199 = v1[25];
            v94 = v1[22];
            v95 = v1[13];
            v96 = v1[14];
            v98 = v1 + 11;
            v97 = v1[11];
            v202 = *(v90 + 72);
            v188 = v98[1];
            v190 = *(v90 + 16);
            v190(v96, *(v88 + 48) + v202 * v92, v94);
            v99 = *(v88 + 56);
            v100 = sub_2528BF9D0();
            v101 = *(v100 - 8);
            (*(v101 + 16))(v96 + v196, v99 + *(v101 + 72) * v92, v100);
            v193 = v92;
            v102 = *(v90 + 32);
            v102(v95, v96, v94);
            v103 = *(v101 + 32);
            v103(v95 + *(v175 + 48), v96 + v196, v100);
            sub_25272006C(v95, v188, &qword_27F4FD6C8, &unk_2528D3C60);
            v104 = *(v175 + 48);
            v102(v97, v188, v94);
            v105 = v97 + v104;
            v106 = v188 + v104;
            v107 = v215;
            v103(v105, v106, v100);
            v190(v199, v97, v94);
            sub_2527213D8(v97, &qword_27F4FD6C8, &unk_2528D3C60);
            sub_2527213D8(v95, &qword_27F4FD6C8, &unk_2528D3C60);
            v221[0] = v215;
            v109 = *(v215 + 16);
            v108 = *(v215 + 24);
            if (v109 >= v108 >> 1)
            {
              sub_25282EFDC(v108 > 1, v109 + 1, 1);
              v107 = v221[0];
            }

            v1 = v178;
            v90 = v179;
            v110 = v178[25];
            v111 = v178[22];
            *(v107 + 16) = v109 + 1;
            v215 = v107;
            v102(v107 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + v109 * v202, v110, v111);
            v88 = v177;
            v92 = 1 << *(v177 + 32);
            result = v193;
            if (v193 >= v92)
            {
              goto LABEL_82;
            }

            v112 = *(v209 + 8 * v186);
            if ((v112 & v184) == 0)
            {
              goto LABEL_83;
            }

            if (v182 != *(v177 + 36))
            {
              goto LABEL_84;
            }

            v113 = v112 & (-2 << (v193 & 0x3F));
            if (v113)
            {
              v92 = __clz(__rbit64(v113)) | v193 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v114 = v186 << 6;
              v115 = (v173 + 8 * v186);
              v116 = v186 + 1;
              while (v116 < (v92 + 63) >> 6)
              {
                v118 = *v115++;
                v117 = v118;
                v114 += 64;
                ++v116;
                if (v118)
                {
                  result = sub_25271A63C(v193, v182, 0);
                  v92 = __clz(__rbit64(v117)) + v114;
                  goto LABEL_62;
                }
              }

              result = sub_25271A63C(v193, v182, 0);
LABEL_62:
              v88 = v177;
            }

            v83 = v180;
            v93 = v181 + 1;
            if (v181 + 1 == v176)
            {

              v119 = v107;
              goto LABEL_65;
            }
          }

          goto LABEL_80;
        }

        v119 = MEMORY[0x277D84F90];
LABEL_65:
        v120 = v1[22];
        v121 = *(v119 + 16);
        sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
        v122 = MEMORY[0x2530A82F0](v121, v120);
        v221[0] = v122;
        v123 = *(v119 + 16);
        if (v123)
        {
          v124 = v119 + ((*(v179 + 80) + 32) & ~*(v179 + 80));
          v210 = *(v179 + 72);
          v203 = *(v179 + 16);
          do
          {
            v126 = v1[26];
            v125 = v1[27];
            v127 = v1[22];
            v203(v126, v124, v127);
            sub_252739234(v125, v126);
            v170(v125, v127);
            v124 += v210;
            --v123;
          }

          while (v123);

          v128 = v221[0];
          v83 = v180;
        }

        else
        {
          v128 = v122;
        }

        v129 = sub_252864688(v220, v128);
        v130 = v1[19];
        if (v129)
        {
          v172(v1[17], v1[19], v1[15]);

          v131 = sub_2528C0890();
          v132 = sub_2528C0D10();

          if (os_log_type_enabled(v131, v132))
          {
            v133 = v1[27];
            v134 = v1[22];
            v135 = v1[17];
            v211 = v1[15];
            v136 = swift_slowAlloc();
            v216 = swift_slowAlloc();
            v221[0] = v216;
            *v136 = 136315906;
            *(v136 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, v221);
            *(v136 + 12) = 2080;
            *(v136 + 14) = sub_2527389AC(0xD000000000000034, 0x80000002528E6750, v221);
            *(v136 + 22) = 2080;
            sub_2528BFFF0();
            v137 = sub_2528BECB0();
            v139 = v138;
            v170(v133, v134);
            v180(v135, v211);
            v140 = sub_2527389AC(v137, v139, v221);
            v1 = v178;

            *(v136 + 24) = v140;
            *(v136 + 32) = 2080;
            v141 = sub_2528C0C80();
            v143 = sub_2527389AC(v141, v142, v221);

            *(v136 + 34) = v143;
            _os_log_impl(&dword_252711000, v131, v132, "%s-%s All services from Service Group: %s found, adding this id and removing %s", v136, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x2530A8D80](v216, -1, -1);
            MEMORY[0x2530A8D80](v136, -1, -1);
          }

          else
          {
            v146 = v1[17];
            v147 = v1[15];

            v180(v146, v147);
          }

          v148 = v1[27];
          v149 = v1[24];
          v150 = v1[22];
          v151 = v1[19];
          v152 = v1[15];
          sub_2528BFFF0();
          sub_252739234(v148, v149);
          v170(v148, v150);
          sub_252865B58(v128);

          result = (v180)(v151, v152);
        }

        else
        {
          v83(v1[19], v1[15]);
        }
      }

      v51 = v165;
      v52 = v171 + 1;
      if (v171 + 1 == v168)
      {
        goto LABEL_76;
      }
    }

LABEL_85:
    __break(1u);
  }

  else
  {
LABEL_76:

    v154 = v1[33];
    v153 = v1[34];
    v156 = v1[29];
    v155 = v1[30];
    v157 = v1;
    v158 = v1[28];
    v159 = v157[26];
    v160 = v157[27];
    v162 = v157[24];
    v161 = v157[25];
    v163 = v157[21];
    v191 = v157[20];
    v194 = v157[19];
    v197 = v157[18];
    v200 = v157[17];
    v204 = v157[14];
    v207 = v157[13];
    v212 = v157[12];
    v217 = v157[11];

    v164 = v157[1];

    return v164(v220);
  }

  return result;
}

unint64_t sub_25286BB08()
{
  result = qword_27F4FFA58;
  if (!qword_27F4FFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFA58);
  }

  return result;
}

uint64_t type metadata accessor for ShowDeviceResultIntent()
{
  result = qword_27F4FFB68;
  if (!qword_27F4FFB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25286BBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s14HomeAppIntents22ShowDeviceResultIntentV22composedLocalizedTitle11titleTokens6device19includeDotSeparatorSSSDyAA15UserSpecificityOSSG_SSSgSbtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BED10();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_2528C09C0();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);

  v54 = sub_25272EBFC(v12);
  if (a3)
  {

    sub_25286601C(0, &v53);
    sub_25286601C(1u, &v53);
    v13 = v54;
    v14 = sub_25274A5C4(&unk_286495D10);
    v15 = sub_25284EB10(v13, v14);

    if (v15 & 1) != 0 && *(a1 + 16) && (v16 = sub_252786CBC(4u), (v17) || (v18 = sub_25274A5C4(&unk_286495D38), v19 = sub_25284EB10(v13, v18), , (v19) && *(a1 + 16) && (v16 = sub_252786CBC(5u), (v20))
    {
      v21 = (*(a1 + 56) + 16 * v16);
      v23 = *v21;
      v22 = v21[1];

      sub_2528C0950();
      sub_2528BED00();
      sub_2528C0A00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC60, &qword_2528D4CF8);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_2528C17E0;
      v25 = MEMORY[0x277D837D0];
      *(v24 + 56) = MEMORY[0x277D837D0];
      v26 = sub_25286FB3C();
      *(v24 + 32) = v23;
      *(v24 + 40) = v22;
      *(v24 + 96) = v25;
      *(v24 + 104) = v26;
      *(v24 + 64) = v26;
      *(v24 + 72) = a2;
      *(v24 + 80) = a3;
LABEL_9:
      v27 = sub_2528C09E0();

      goto LABEL_22;
    }

    v28 = sub_25274A5C4(&unk_286495D60);
    v29 = sub_25284EB10(v13, v28);

    if (v29)
    {
      if (*(a1 + 16))
      {
        v30 = sub_252786CBC(4u);
        if (v31)
        {
          if (*(a1 + 16))
          {
            v32 = (*(a1 + 56) + 16 * v30);
            v34 = *v32;
            v33 = v32[1];

            v35 = sub_252786CBC(5u);
            if (v36)
            {
              v37 = (*(a1 + 56) + 16 * v35);
              v39 = *v37;
              v38 = v37[1];

              sub_2528C0950();
              sub_2528BED00();
              sub_2528C0A00();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC60, &qword_2528D4CF8);
              v40 = swift_allocObject();
              *(v40 + 16) = xmmword_2528C17D0;
              v41 = MEMORY[0x277D837D0];
              *(v40 + 56) = MEMORY[0x277D837D0];
              v42 = sub_25286FB3C();
              *(v40 + 32) = v39;
              *(v40 + 40) = v38;
              *(v40 + 96) = v41;
              *(v40 + 104) = v42;
              *(v40 + 64) = v42;
              *(v40 + 72) = v34;
              *(v40 + 80) = v33;
              *(v40 + 136) = v41;
              *(v40 + 144) = v42;
              *(v40 + 112) = a2;
              *(v40 + 120) = a3;
              goto LABEL_9;
            }
          }
        }
      }
    }
  }

  v43 = qword_27F4FBB40;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = sub_2528C08B0();
  __swift_project_value_buffer(v44, qword_27F5025C8);

  v45 = sub_2528C0890();
  v46 = sub_2528C0D10();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = v48;
    *v47 = 136315138;
    sub_25274A948();
    v49 = sub_2528C08F0();
    v51 = sub_2527389AC(v49, v50, &v53);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_252711000, v45, v46, "Generated title tokens: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x2530A8D80](v48, -1, -1);
    MEMORY[0x2530A8D80](v47, -1, -1);
  }

  v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC48, &qword_2528D4CF0);
  sub_25272275C(&qword_27F4FFC50, &qword_27F4FFC48, &qword_2528D4CF0);
  sub_25286FAE8();
  v27 = sub_2528C0AC0();
LABEL_22:

  return v27;
}

uint64_t _s14HomeAppIntents22ShowDeviceResultIntentV23getUserSpecificityTitle4from07successE5UUIDs06failedeN013stateSnapshot06matterQ019includeDotSeparatorSSSgSayAA0iJ0OG_Say10Foundation4UUIDVGAR0A9DataModel05StateQ0VAS06MatterzQ0VSbtFZ_0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v334 = a6;
  v373 = a1;
  v332 = sub_2528BF070();
  v340 = *(v332 - 8);
  v9 = *(v340 + 64);
  MEMORY[0x28223BE20](v332);
  v331 = &v302 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = sub_2528BF030();
  v348 = *(v330 - 8);
  v11 = *(v348 + 64);
  MEMORY[0x28223BE20](v330);
  v329 = &v302 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2528BED10();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v313 = &v302 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2528C09C0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v312 = &v302 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = sub_2528BEE30();
  v366 = *(v354 - 8);
  v19 = *(v366 + 64);
  MEMORY[0x28223BE20](v354);
  v353 = &v302 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD660, &qword_2528D4D00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v322 = &v302 - v23;
  v321 = sub_2528BF9D0();
  v24 = *(v321 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v321);
  v320 = &v302 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v319 = &v302 - v28;
  v364 = sub_2528C0020();
  v29 = *(v364 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v364);
  v314 = &v302 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v326 = &v302 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v302 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v347 = &v302 - v40;
  MEMORY[0x28223BE20](v39);
  v369 = &v302 - v41;
  v374 = sub_2528BECF0();
  v42 = *(v374 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v374);
  v338 = &v302 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v344 = &v302 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v343 = &v302 - v49;
  MEMORY[0x28223BE20](v48);
  v371 = &v302 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF948, &qword_2528D4208);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v352 = &v302 - v53;
  v357 = sub_2528BF240();
  v54 = *(v357 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v357);
  v345 = &v302 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = a2;

  sub_252737028(v57);
  v58 = v380;
  v59 = a4;
  v378 = a4;
  v60 = sub_2527A62F8(sub_25286FB90, v377, v380);
  v376 = a5;
  v362 = v58;
  v61 = sub_2527A62F8(sub_25286FBBC, v375, v58);
  v363 = 0;
  v380 = v60;
  v336 = v60;

  v335 = v61;
  sub_2527378C0(v62);
  v63 = v380;
  v64 = sub_252790EE4(MEMORY[0x277D84F90]);
  v367 = v64;
  v66 = *(v373 + 16);
  v365 = v63;
  v370 = v66;
  if (!v66)
  {
LABEL_161:

    v293 = v367;
    v294 = v367[2];

    if (v294)
    {
      v295 = sub_252786CBC(1u);
      if (v296 & 1) != 0 || *(v293 + 16) && (v295 = sub_252786CBC(0), (v297))
      {
        v298 = (*(v293 + 56) + 16 * v295);
        v299 = *v298;
        v294 = v298[1];
      }

      else
      {
        v299 = 0;
        v294 = 0;
      }
    }

    else
    {
      v299 = 0;
    }

    v300 = _s14HomeAppIntents22ShowDeviceResultIntentV22composedLocalizedTitle11titleTokens6device19includeDotSeparatorSSSDyAA15UserSpecificityOSSG_SSSgSbtFZ_0(v293, v299, v294);
    swift_bridgeObjectRelease_n();
LABEL_169:

    return v300;
  }

  v368 = v373 + 32;
  v359 = v63 + 4;
  v372 = v42 + 16;
  v349 = (v42 + 56);
  v358 = (v42 + 48);
  v356 = (v42 + 32);
  v305 = v348 + 16;
  v318 = v340 + 16;
  v317 = v340 + 8;
  v304 = (v348 + 8);
  v373 = v42 + 8;
  v351 = (v366 + 8);
  v310 = v29 + 16;
  v315 = (v29 + 8);
  v308 = v24 + 16;
  v307 = v24 + 32;
  v306 = (v29 + 48);
  v303 = (v29 + 32);
  v309 = (v24 + 8);
  v333 = v54 + 16;
  v350 = (v54 + 56);
  v342 = (v54 + 48);
  v328 = (v54 + 32);
  v327 = (v54 + 8);
  *&v65 = 134217984;
  v316 = v65;
  *&v65 = 136315138;
  v355 = v65;
  v337 = v59;
  v361 = v24;
  v67 = v364;
  v311 = v29;
  v346 = v38;
  v68 = v369;
  v341 = v42;
  v69 = 0;
  v360 = v54;
  v70 = v59;
  while (1)
  {
    v73 = *(v368 + v69);
    if (v73 > 2)
    {
      break;
    }

    if (*(v368 + v69))
    {
      v366 = v69;
      if (v73 == 1)
      {
        if (v365[2])
        {
          sub_25276E828(v359, &v380);
          __swift_project_boxed_opaque_existential_0(&v380, v381);
          v74 = sub_2528BFB30();
          if (*(v74 + 16))
          {
            v75 = v352;
            v76 = v357;
            (*(v54 + 16))(v352, v74 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v357);
            v77 = 0;
          }

          else
          {
            v77 = 1;
            v75 = v352;
            v76 = v357;
          }

          (*v350)(v75, v77, 1, v76);
          __swift_destroy_boxed_opaque_existential_0Tm(&v380);
          if ((*v342)(v75, 1, v76) != 1)
          {
            (*v328)(v345, v75, v357);
            v226 = v70;
            if (v365[2] == 1)
            {
              v227 = sub_2528BF200();
            }

            else
            {
              v227 = sub_2528BF210();
            }

            v254 = v227;
            v255 = v228;
            v256 = v367;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v380 = v256;
            v258 = sub_252786CBC(1u);
            v260 = v256[2];
            v261 = (v259 & 1) == 0;
            v109 = __OFADD__(v260, v261);
            v262 = v260 + v261;
            if (v109)
            {
              goto LABEL_175;
            }

            v263 = v259;
            if (v256[3] >= v262)
            {
              v68 = v369;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v292 = v258;
                sub_2527E2980();
                v68 = v369;
                v258 = v292;
              }

              v24 = v361;
            }

            else
            {
              sub_2527E0264(v262, isUniquelyReferenced_nonNull_native);
              v258 = sub_252786CBC(1u);
              if ((v263 & 1) != (v264 & 1))
              {
                goto LABEL_180;
              }

              v24 = v361;
              v68 = v369;
            }

            v70 = v226;
            v265 = v380;
            v367 = v380;
            if (v263)
            {
              v266 = (v380[7] + 16 * v258);
              v267 = v266[1];
              *v266 = v254;
              v266[1] = v255;

              v64 = (*v327)(v345, v357);
            }

            else
            {
              v380[(v258 >> 6) + 8] |= 1 << v258;
              *(v265[6] + v258) = 1;
              v268 = (v265[7] + 16 * v258);
              *v268 = v254;
              v268[1] = v255;
              v64 = (*v327)(v345, v357);
              v269 = v265[2];
              v109 = __OFADD__(v269, 1);
              v270 = v269 + 1;
              if (v109)
              {
                goto LABEL_179;
              }

              v265[2] = v270;
            }

            v67 = v364;
            goto LABEL_154;
          }
        }

        else
        {
          v75 = v352;
          (*v350)(v352, 1, 1, v357);
        }

        sub_2527213D8(v75, &qword_27F4FF948, &qword_2528D4208);
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v205 = sub_2528C08B0();
        __swift_project_value_buffer(v205, qword_27F5025C8);
        v206 = v362;

        v169 = sub_2528C0890();
        v207 = sub_2528C0CF0();

        if (os_log_type_enabled(v169, v207))
        {
          LODWORD(i) = v207;
          v208 = v70;
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          v211 = v210;
          v380 = v210;
          *v209 = v355;
          v212 = *(v206 + 16);
          if (v212)
          {
            v323 = v210;
            v324 = v209;
            v325 = v169;
            v379 = MEMORY[0x277D84F90];
            sub_25282EFBC(0, v212, 0);
            v213 = v379;
            v214 = v206 + ((*(v341 + 80) + 32) & ~*(v341 + 80));
            v215 = *(v341 + 72);
            v216 = *(v341 + 16);
            v217 = v374;
            do
            {
              v218 = v371;
              v216(v371, v214, v217);
              v219 = sub_2528BECB0();
              v217 = v374;
              v220 = v219;
              v222 = v221;
              (*v373)(v218, v374);
              v379 = v213;
              v224 = *(v213 + 16);
              v223 = *(v213 + 24);
              if (v224 >= v223 >> 1)
              {
                sub_25282EFBC((v223 > 1), v224 + 1, 1);
                v217 = v374;
                v213 = v379;
              }

              *(v213 + 16) = v224 + 1;
              v225 = v213 + 16 * v224;
              *(v225 + 32) = v220;
              *(v225 + 40) = v222;
              v214 += v215;
              --v212;
            }

            while (v212);
            v70 = v337;
            v67 = v364;
            v54 = v360;
            v169 = v325;
            v209 = v324;
            v211 = v323;
          }

          else
          {
            v213 = MEMORY[0x277D84F90];
            v70 = v208;
          }

          v276 = MEMORY[0x2530A81A0](v213, MEMORY[0x277D837D0]);
          v278 = v277;

          v279 = sub_2527389AC(v276, v278, &v380);

          *(v209 + 4) = v279;
          _os_log_impl(&dword_252711000, v169, i, "Unable to find serviceKind for devices: %s", v209, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v211);
          MEMORY[0x2530A8D80](v211, -1, -1);
          MEMORY[0x2530A8D80](v209, -1, -1);

          v24 = v361;
          v38 = v346;
          goto LABEL_153;
        }

        goto LABEL_107;
      }

      MEMORY[0x28223BE20](v64);
      *(&v302 - 2) = v70;
      v113 = v363;
      sub_2527A6CF4(sub_25286FF60, v362, v68);
      v363 = v113;
      v114 = *v358;
      v115 = v374;
      v116 = (*v358)(v68, 1, v374);
      if (v116 == 1)
      {
        v117 = sub_2527213D8(v68, &qword_27F4FC628, &qword_2528C4750);
      }

      else
      {
        v124 = v343;
        (*v356)(v343, v68, v115);
        v125 = sub_2528BF3B0();
        if (*(v125 + 16))
        {
          v126 = sub_252785C40(v124);
          if (v127)
          {
            v128 = v124;
            v129 = v311;
            v130 = v326;
            (*(v311 + 16))(v326, *(v125 + 56) + *(v311 + 72) * v126, v67);

            v131 = sub_2528C0000();
            v133 = v132;
            v134 = v367;
            v135 = swift_isUniquelyReferenced_nonNull_native();
            v380 = v134;
            sub_25278C4B8(v131, v133, 2u, v135);
            v367 = v380;
            v136 = v130;
            v38 = v346;
            (*(v129 + 8))(v136, v67);
            v137 = v128;
            v54 = v360;
            v64 = (*v373)(v137, v374);
LABEL_153:
            v68 = v369;
LABEL_154:
            v69 = v366;
            goto LABEL_5;
          }
        }

        v115 = v374;
        v117 = (*v373)(v124, v374);
      }

      MEMORY[0x28223BE20](v117);
      *(&v302 - 2) = v70;
      v150 = v347;
      v151 = v363;
      sub_2527A6CF4(sub_25286FBE8, v362, v347);
      v363 = v151;
      if (v114(v150, 1, v115) == 1)
      {
        sub_2527213D8(v150, &qword_27F4FC628, &qword_2528C4750);
LABEL_71:
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v167 = sub_2528C08B0();
        __swift_project_value_buffer(v167, qword_27F5025C8);
        v168 = v362;

        v169 = sub_2528C0890();
        v170 = sub_2528C0CF0();

        if (os_log_type_enabled(v169, v170))
        {
          v171 = v70;
          v172 = swift_slowAlloc();
          i = swift_slowAlloc();
          v380 = i;
          *v172 = v355;
          v173 = *(v168 + 16);
          if (v173)
          {
            v323 = v172;
            LODWORD(v324) = v170;
            v325 = v169;
            v379 = MEMORY[0x277D84F90];
            sub_25282EFBC(0, v173, 0);
            v174 = v379;
            v175 = v168 + ((*(v341 + 80) + 32) & ~*(v341 + 80));
            v176 = *(v341 + 72);
            v177 = *(v341 + 16);
            v178 = v374;
            do
            {
              v179 = v371;
              v177(v371, v175, v178);
              v180 = sub_2528BECB0();
              v178 = v374;
              v181 = v180;
              v183 = v182;
              (*v373)(v179, v374);
              v379 = v174;
              v185 = *(v174 + 16);
              v184 = *(v174 + 24);
              if (v185 >= v184 >> 1)
              {
                sub_25282EFBC((v184 > 1), v185 + 1, 1);
                v178 = v374;
                v174 = v379;
              }

              *(v174 + 16) = v185 + 1;
              v186 = v174 + 16 * v185;
              *(v186 + 32) = v181;
              *(v186 + 40) = v183;
              v175 += v176;
              --v173;
            }

            while (v173);
            v70 = v337;
            v38 = v346;
            v54 = v360;
            v169 = v325;
            LOBYTE(v170) = v324;
            v172 = v323;
          }

          else
          {
            v174 = MEMORY[0x277D84F90];
            v70 = v171;
          }

          v271 = MEMORY[0x2530A81A0](v174, MEMORY[0x277D837D0]);
          v273 = v272;

          v274 = sub_2527389AC(v271, v273, &v380);

          *(v172 + 4) = v274;
          _os_log_impl(&dword_252711000, v169, v170, "Received user specificity for group, but unable to find a static service group with any of the given IDs: %s", v172, 0xCu);
          v275 = i;
          __swift_destroy_boxed_opaque_existential_0Tm(i);
          MEMORY[0x2530A8D80](v275, -1, -1);
          MEMORY[0x2530A8D80](v172, -1, -1);

          v24 = v361;
          v67 = v364;
          goto LABEL_153;
        }

LABEL_107:

        goto LABEL_153;
      }

      v152 = v344;
      (*v356)(v344, v150, v115);
      v153 = sub_2528BF370();
      if (!*(v153 + 16) || (v154 = sub_252785C40(v152), (v155 & 1) == 0))
      {

        (*v373)(v152, v374);
        goto LABEL_71;
      }

      v156 = v320;
      v157 = v321;
      (*(v24 + 16))(v320, *(v153 + 56) + *(v24 + 72) * v154, v321);

      v158 = v319;
      (*(v24 + 32))(v319, v156, v157);
      v159 = sub_2528BF3B0();
      v160 = sub_2528668B4(v159);
      MEMORY[0x28223BE20](v160);
      *(&v302 - 2) = v158;
      v161 = v322;
      v162 = v363;
      sub_2527A6EF4(sub_25286FC40, v160, v322);
      v363 = v162;

      v163 = v161;
      v67 = v364;
      if ((*v306)(v163, 1, v364) == 1)
      {
        (*v373)(v344, v374);
        sub_2527213D8(v163, &qword_27F4FD660, &qword_2528D4D00);
        (*v309)(v158, v157);
        v54 = v360;
        goto LABEL_71;
      }

      v280 = v314;
      (*v303)(v314, v163, v67);
      v281 = sub_2528C0000();
      v283 = v282;
      v284 = v367;
      v285 = swift_isUniquelyReferenced_nonNull_native();
      v380 = v284;
      sub_25278C4B8(v281, v283, 2u, v285);
      v367 = v380;
      (*v315)(v280, v67);
      (*v373)(v344, v374);
      v64 = (*v309)(v158, v157);
      v68 = v369;
      v69 = v366;
      goto LABEL_4;
    }

    v87 = v38;
    v88 = v365;
    if (v365[2] >= 2)
    {
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v89 = sub_2528C08B0();
      __swift_project_value_buffer(v89, qword_27F5025C8);

      v90 = sub_2528C0890();
      v91 = sub_2528C0CF0();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = v316;
        *(v92 + 4) = v88[2];

        _os_log_impl(&dword_252711000, v90, v91, "Found more than one tile: %ld belonging to the Notice, but the userSpecificity requires displaying deviceName, showing the first tile's name", v92, 0xCu);
        MEMORY[0x2530A8D80](v92, -1, -1);
      }

      else
      {
      }

      v68 = v369;
    }

    if (v88[2])
    {
      v187 = v70;
      sub_25276E828(v359, &v380);
      __swift_project_boxed_opaque_existential_0(&v380, v381);
      v188 = sub_2528BFB40();
      v190 = v189;
      __swift_destroy_boxed_opaque_existential_0Tm(&v380);
      v191 = v367;
      v192 = swift_isUniquelyReferenced_nonNull_native();
      v380 = v191;
      v64 = sub_252786CBC(0);
      v194 = v191[2];
      v195 = (v193 & 1) == 0;
      v109 = __OFADD__(v194, v195);
      v196 = v194 + v195;
      if (v109)
      {
        goto LABEL_173;
      }

      v197 = v193;
      if (v191[3] >= v196)
      {
        v68 = v369;
        if ((v192 & 1) == 0)
        {
          v291 = v64;
          sub_2527E2980();
          v68 = v369;
          v64 = v291;
        }

        v24 = v361;
      }

      else
      {
        sub_2527E0264(v196, v192);
        v64 = sub_252786CBC(0);
        if ((v197 & 1) != (v198 & 1))
        {
          goto LABEL_180;
        }

        v24 = v361;
        v68 = v369;
      }

      v70 = v187;
      v199 = v380;
      v38 = v87;
      v367 = v380;
      if (v197)
      {
        v200 = (v380[7] + 16 * v64);
        v201 = v200[1];
        *v200 = v188;
        v200[1] = v190;
      }

      else
      {
        v380[(v64 >> 6) + 8] |= 1 << v64;
        *(v199[6] + v64) = 0;
        v202 = (v199[7] + 16 * v64);
        *v202 = v188;
        v202[1] = v190;
        v203 = v199[2];
        v109 = __OFADD__(v203, 1);
        v204 = v203 + 1;
        if (v109)
        {
          goto LABEL_176;
        }

        v199[2] = v204;
      }

      v67 = v364;
    }

    else
    {
      v24 = v361;
      v67 = v364;
    }

LABEL_5:
    if (++v69 == v370)
    {
      goto LABEL_161;
    }
  }

  if (v73 != 3)
  {
    if (v73 != 4)
    {
      if (!v365[2])
      {
        (*v349)(v38, 1, 1, v374);
LABEL_116:
        v64 = sub_2527213D8(v38, &qword_27F4FC628, &qword_2528C4750);
        goto LABEL_5;
      }

      v366 = v69;
      sub_25276E828(v359, &v380);
      __swift_project_boxed_opaque_existential_0(&v380, v381);
      v118 = sub_2528BFB50();
      v119 = 0;
      v120 = 0;
      v121 = 1 << *(v118 + 32);
      v122 = v348;
      while (1)
      {
        v123 = *(v118 + 8 * v120 + 56);
        if (v123)
        {
          break;
        }

        ++v120;
        v119 -= 64;
        if ((v121 + 63) >> 6 == v120)
        {
          goto LABEL_69;
        }
      }

      v164 = __clz(__rbit64(v123));
      if (v164 - v121 == v119)
      {
LABEL_69:
        v165 = 1;
        v166 = v374;
        goto LABEL_114;
      }

      v166 = v374;
      if (-v119 < 0)
      {
        goto LABEL_177;
      }

      v229 = v164 - v119;
      if (v229 >= v121)
      {
        goto LABEL_177;
      }

      if (((*(v118 + 56 + 8 * (v120 & 0x3FFFFFFFFFFFFFFLL)) >> v164) & 1) == 0)
      {
        goto LABEL_178;
      }

      (*(v341 + 16))(v38, *(v118 + 48) + *(v341 + 72) * v229, v374);
      v165 = 0;
LABEL_114:

      (*v349)(v38, v165, 1, v166);
      __swift_destroy_boxed_opaque_existential_0Tm(&v380);
      if ((*v358)(v38, 1, v166) == 1)
      {
        v68 = v369;
        v69 = v366;
        goto LABEL_116;
      }

      v230 = v338;
      (*v356)(v338, v38, v166);
      v231 = sub_2528BF320();
      if (!*(v231 + 16) || (v232 = sub_252785C40(v230), (v233 & 1) == 0))
      {

        v64 = (*v373)(v230, v374);
        goto LABEL_153;
      }

      (*(v122 + 16))(v329, *(v231 + 56) + *(v122 + 72) * v232, v330);

      v234 = sub_2528BEFD0();
      if (v234)
      {
        v235 = v234;
        v236 = v234 + 56;
        v237 = 1 << *(v234 + 32);
        if (v237 < 64)
        {
          v238 = ~(-1 << v237);
        }

        else
        {
          v238 = -1;
        }

        v239 = v238 & *(v234 + 56);
        v240 = (v237 + 63) >> 6;

        v242 = 0;
        v243 = MEMORY[0x277D84F90];
        for (i = v241; v239; v235 = i)
        {
LABEL_129:
          v245 = v340;
          v246 = v331;
          v247 = v332;
          (*(v340 + 16))(v331, v235[6] + *(v340 + 72) * (__clz(__rbit64(v239)) | (v242 << 6)), v332);
          v248 = sub_2528BF050();
          v250 = v249;
          (*(v245 + 8))(v246, v247);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v243 = sub_252737D40(0, *(v243 + 2) + 1, 1, v243);
          }

          v252 = *(v243 + 2);
          v251 = *(v243 + 3);
          if (v252 >= v251 >> 1)
          {
            v243 = sub_252737D40((v251 > 1), v252 + 1, 1, v243);
          }

          v239 &= v239 - 1;
          *(v243 + 2) = v252 + 1;
          v253 = &v243[16 * v252];
          *(v253 + 4) = v248;
          *(v253 + 5) = v250;
        }

        v24 = v361;
        while (1)
        {
          v244 = v242 + 1;
          if (__OFADD__(v242, 1))
          {
            __break(1u);
            goto LABEL_172;
          }

          if (v244 >= v240)
          {
            break;
          }

          v239 = *(v236 + 8 * v244);
          ++v242;
          if (v239)
          {
            v242 = v244;
            goto LABEL_129;
          }
        }

        if (*(v243 + 2))
        {
          v286 = *(v243 + 4);
          v287 = *(v243 + 5);

          v288 = v367;
          v289 = swift_isUniquelyReferenced_nonNull_native();
          v380 = v288;
          sub_25278C4B8(v286, v287, 5u, v289);
          v367 = v380;
          (*v304)(v329, v330);
          v64 = (*v373)(v338, v374);
          v67 = v364;
          v70 = v337;
          v38 = v346;
          v68 = v369;
          v54 = v360;
          goto LABEL_154;
        }

        v67 = v364;
        v70 = v337;
        v38 = v346;
        v68 = v369;
        v54 = v360;
      }

      else
      {
        v68 = v369;
      }

      (*v304)(v329, v330);
      v64 = (*v373)(v338, v374);
      goto LABEL_154;
    }

    v78 = v365[2];
    if (v78)
    {
      v79 = v359;
      v80 = MEMORY[0x277D84F90];
      do
      {
        sub_25276E828(v79, &v380);
        __swift_project_boxed_opaque_existential_0(&v380, v381);
        v82 = sub_2528BFB60();
        v84 = v83;
        __swift_destroy_boxed_opaque_existential_0Tm(&v380);
        if (v84)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_252737D40(0, *(v80 + 2) + 1, 1, v80);
          }

          v86 = *(v80 + 2);
          v85 = *(v80 + 3);
          if (v86 >= v85 >> 1)
          {
            v80 = sub_252737D40((v85 > 1), v86 + 1, 1, v80);
          }

          *(v80 + 2) = v86 + 1;
          v81 = &v80[16 * v86];
          *(v81 + 4) = v82;
          *(v81 + 5) = v84;
        }

        v79 += 40;
        --v78;
      }

      while (v78);
    }

    else
    {
      v80 = MEMORY[0x277D84F90];
    }

    v142 = sub_252743FCC(v80);

    if (*(v142 + 16) > 1uLL)
    {

      sub_2528C0950();
      sub_2528BED00();
      v300 = sub_2528C0A00();
      goto LABEL_169;
    }

    v143 = -1 << *(v142 + 32);
    v144 = sub_2528C0E00();
    if (v144 == 1 << *(v142 + 32))
    {
    }

    else
    {
      v145 = sub_25286A47C(v144, *(v142 + 36), 0, v142);
      v147 = v146;

      v148 = v367;
      v149 = swift_isUniquelyReferenced_nonNull_native();
      v380 = v148;
      v64 = sub_25278C4B8(v145, v147, 4u, v149);
      v367 = v380;
    }

    v24 = v361;
    v67 = v364;
    v68 = v369;
    v54 = v360;
    goto LABEL_5;
  }

  v93 = v353;
  sub_2528BF2F0();
  v94 = sub_2528BEE20();
  v96 = v95;
  (*v351)(v93, v354);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v97 = sub_2528C08B0();
  __swift_project_value_buffer(v97, qword_27F5025C8);

  v98 = sub_2528C0890();
  v99 = sub_2528C0D10();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = v70;
    v102 = swift_slowAlloc();
    v380 = v102;
    *v100 = v355;
    *(v100 + 4) = sub_2527389AC(v94, v96, &v380);
    _os_log_impl(&dword_252711000, v98, v99, "Found Home Name in user specificity: %s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v102);
    v103 = v102;
    v70 = v101;
    v24 = v361;
    MEMORY[0x2530A8D80](v103, -1, -1);
    MEMORY[0x2530A8D80](v100, -1, -1);
  }

  v104 = v367;
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v380 = v104;
  v64 = sub_252786CBC(3u);
  v107 = v104[2];
  v108 = (v106 & 1) == 0;
  v109 = __OFADD__(v107, v108);
  v110 = v107 + v108;
  if (!v109)
  {
    v111 = v106;
    if (v104[3] >= v110)
    {
      v68 = v369;
      if ((v105 & 1) == 0)
      {
        v290 = v64;
        sub_2527E2980();
        v68 = v369;
        v64 = v290;
      }

      v67 = v364;
    }

    else
    {
      sub_2527E0264(v110, v105);
      v64 = sub_252786CBC(3u);
      if ((v111 & 1) != (v112 & 1))
      {
        goto LABEL_180;
      }

      v67 = v364;
      v68 = v369;
    }

    v138 = v380;
    v367 = v380;
    if (v111)
    {
      v71 = (v380[7] + 16 * v64);
      v72 = v71[1];
      *v71 = v94;
      v71[1] = v96;
    }

    else
    {
      v380[(v64 >> 6) + 8] |= 1 << v64;
      *(v138[6] + v64) = 3;
      v139 = (v138[7] + 16 * v64);
      *v139 = v94;
      v139[1] = v96;
      v140 = v138[2];
      v109 = __OFADD__(v140, 1);
      v141 = v140 + 1;
      if (v109)
      {
        goto LABEL_174;
      }

      v138[2] = v141;
    }

LABEL_4:
    v54 = v360;
    goto LABEL_5;
  }

LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}