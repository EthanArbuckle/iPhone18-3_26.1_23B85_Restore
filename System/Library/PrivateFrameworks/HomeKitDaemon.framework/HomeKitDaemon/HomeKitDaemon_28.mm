uint64_t sub_2297E8BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v18;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_22A4DD07C();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881520, &qword_22A584458) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v13 = type metadata accessor for ClimateBulletinBuilder.ValenciaContent(0);
  v8[14] = v13;
  v14 = *(v13 - 8);
  v8[15] = v14;
  v15 = *(v14 + 64) + 15;
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297E8D28, 0, 0);
}

uint64_t sub_2297E8D28()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = sub_2296F7AE8(v0[4]);
  v4 = [v1 name];
  v5 = sub_22A4DD5EC();
  v7 = v6;

  v8 = v1;
  v9 = v2;
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_2297E8E24;
  v11 = v0[13];
  v12 = v0[5];
  v13 = v0[6];

  return sub_2295579D0(v11, v3, v5, v7, v12, v13);
}

uint64_t sub_2297E8E24()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297E8F20, 0, 0);
}

uint64_t sub_2297E8F20()
{
  v51 = v0;
  v1 = v0[14];
  v2 = v0[13];
  if ((*(v0[15] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[12];
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[4];
    v7 = v0[5];
    sub_22953EAE4(v2, &qword_27D881520, &qword_22A584458);
    sub_2296F8604();
    v8 = v7;
    v9 = v5;

    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCEC();

    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    if (v12)
    {
      v48 = v0[10];
      v49 = v0[12];
      v16 = v0[8];
      v17 = v0[4];
      v47 = v0[5];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315650;
      v50[0] = v19;
      v50[1] = 91;
      v50[2] = 0xE100000000000000;
      v20 = [v16 logIdentifier];
      v21 = sub_22A4DD5EC();
      v23 = v22;

      MEMORY[0x22AAD08C0](v21, v23);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v24 = sub_2295A3E30(91, 0xE100000000000000, v50);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      v0[2] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      v25 = sub_22A4DBA6C();
      v27 = sub_2295A3E30(v25, v26, v50);

      *(v18 + 14) = v27;
      *(v18 + 22) = 2080;
      v0[3] = v47;
      sub_229562F68(0, &qword_281401B70, off_278666148);
      v28 = sub_22A4DBA6C();
      v30 = sub_2295A3E30(v28, v29, v50);

      *(v18 + 24) = v30;
      _os_log_impl(&dword_229538000, v10, v11, "%s Failed to build content given valid payload: %s, for accessory: %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v19, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);

      (*(v14 + 8))(v49, v48);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v31 = v0[16];
    v32 = v0[7];
    sub_229562FD0(v2, v31, type metadata accessor for ClimateBulletinBuilder.ValenciaContent);
    v33 = [v32 bulletinBoard];
    v34 = *v31;
    v35 = v31[1];
    v36 = sub_22A4DD5AC();
    v37 = v31[2];
    v38 = v31[3];
    v39 = sub_22A4DD5AC();
    v40 = v31 + *(v1 + 24);
    v41 = sub_22A4DB4EC();
    [v33 insertClimateBulletinForAccessory:v32 title:v36 body:v39 actionURL:v41];

    sub_2297EC884(v31, type metadata accessor for ClimateBulletinBuilder.ValenciaContent);
  }

  v42 = v0[16];
  v43 = v0[12];
  v44 = v0[13];

  v45 = v0[1];

  return v45();
}

uint64_t sub_2297E92EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v18;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v9 = sub_22A4DD07C();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881528, &unk_22A584460) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v13 = type metadata accessor for ClimateBulletinBuilder.AlvaradoContent(0);
  v8[13] = v13;
  v14 = *(v13 - 8);
  v8[14] = v14;
  v15 = *(v14 + 64) + 15;
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297E9450, 0, 0);
}

uint64_t sub_2297E9450()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_2296F7AE8(v0[3]);
  v4 = [v1 name];
  v5 = sub_22A4DD5EC();
  v7 = v6;

  v8 = v1;
  v9 = v2;
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_2297E954C;
  v11 = v0[12];
  v12 = v0[4];
  v13 = v0[5];

  return sub_2295572C4(v11, v3, v5, v7, v12, v13);
}

uint64_t sub_2297E954C()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297E9648, 0, 0);
}

uint64_t sub_2297E9648()
{
  v44 = v0;
  v1 = v0[13];
  v2 = v0[12];
  if ((*(v0[14] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[11];
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[3];
    sub_22953EAE4(v2, &qword_27D881528, &unk_22A584460);
    sub_2296F8604();
    v7 = v5;

    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCEC();

    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[9];
    if (v10)
    {
      v42 = v0[11];
      v14 = v0[7];
      v41 = v0[3];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136315394;
      v43[0] = v16;
      v43[1] = 91;
      v43[2] = 0xE100000000000000;
      v17 = [v14 logIdentifier];
      v18 = sub_22A4DD5EC();
      v20 = v19;

      MEMORY[0x22AAD08C0](v18, v20);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v21 = sub_2295A3E30(91, 0xE100000000000000, v43);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      v0[2] = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      v22 = sub_22A4DBA6C();
      v24 = sub_2295A3E30(v22, v23, v43);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_229538000, v8, v9, "%s Failed to build content given valid payload: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);

      (*(v12 + 8))(v42, v13);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }
  }

  else
  {
    v25 = v0[15];
    v26 = v0[6];
    sub_229562FD0(v2, v25, type metadata accessor for ClimateBulletinBuilder.AlvaradoContent);
    v27 = [v26 bulletinBoard];
    v28 = *v25;
    v29 = v25[1];
    v30 = sub_22A4DD5AC();
    v31 = v25[2];
    v32 = v25[3];
    v33 = sub_22A4DD5AC();
    v34 = v25 + *(v1 + 24);
    v35 = sub_22A4DB4EC();
    [v27 insertClimateBulletinForAccessory:v26 title:v30 body:v33 actionURL:v35];

    sub_2297EC884(v25, type metadata accessor for ClimateBulletinBuilder.AlvaradoContent);
  }

  v36 = v0[15];
  v37 = v0[11];
  v38 = v0[12];

  v39 = v0[1];

  return v39();
}

uint64_t sub_2297E9A28(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v173 = *(v5 - 8);
  v6 = *(v173 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v171 = &v158 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v169 = &v158 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v158 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v158 - v18;
  v20 = sub_22A4DB7DC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v172 = &v158 - v26;
  v170 = a1;
  v27 = [a1 messagePayload];
  if (!v27)
  {
    goto LABEL_12;
  }

  v28 = v27;
  v165 = v15;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v29 = sub_22A4DD49C();

  v30 = [v2 accessory];
  if (!v30)
  {
    goto LABEL_8;
  }

  v167 = v30;
  v168 = v5;
  v31 = sub_22A4DD5EC();
  if (!*(v29 + 16))
  {

    goto LABEL_10;
  }

  v163 = v20;
  v164 = ObjectType;
  v33 = sub_229543DBC(v31, v32);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_10:

LABEL_11:
    v5 = v168;
LABEL_12:
    sub_2296F8604();
    v39 = v2;
    v40 = sub_22A4DD05C();
    v41 = sub_22A4DDCEC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v175 = v43;
      *v42 = 136315138;
      v176 = 91;
      v177 = 0xE100000000000000;
      v44 = [v39 logIdentifier];
      v45 = sub_22A4DD5EC();
      v46 = v5;
      v48 = v47;

      MEMORY[0x22AAD08C0](v45, v48);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v49 = sub_2295A3E30(v176, v177, &v175);

      *(v42 + 4) = v49;
      _os_log_impl(&dword_229538000, v40, v41, "%s Message received for accessory that is not this accessory. Not handling.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x22AAD4E50](v43, -1, -1);
      MEMORY[0x22AAD4E50](v42, -1, -1);

      return (*(v173 + 8))(v9, v46);
    }

    else
    {

      return (*(v173 + 8))(v9, v5);
    }
  }

  sub_2295404B0(*(v29 + 56) + 32 * v33, &v176);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  v162 = v29;
  sub_22A4DB75C();

  v36 = v21;
  v37 = v163;
  v38 = (*(v21 + 48))(v19, 1, v163);
  v5 = v168;
  if (v38 == 1)
  {

    sub_22953EAE4(v19, &unk_27D87D2A0, &unk_22A578BD0);
    goto LABEL_12;
  }

  v51 = v172;
  (*(v21 + 32))(v172, v19, v37);
  v52 = v167;
  v53 = [v167 uuid];
  sub_22A4DB79C();

  LOBYTE(v53) = sub_22A4DB78C();
  v55 = *(v36 + 8);
  v54 = v36 + 8;
  v56 = v25;
  v57 = v55;
  v55(v56, v37);
  if ((v53 & 1) == 0)
  {
    v57(v51, v37);

LABEL_8:

    goto LABEL_12;
  }

  v160 = v57;
  v58 = v165;
  sub_2296F8604();
  v59 = v2;
  v60 = v170;
  v61 = v162;

  v62 = sub_22A4DD05C();
  v63 = sub_22A4DDCCC();

  v64 = os_log_type_enabled(v62, v63);
  v161 = v54;
  v170 = v60;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v175 = v158;
    *v65 = 136315650;
    v176 = 91;
    v177 = 0xE100000000000000;
    v66 = [v59 logIdentifier];
    v67 = sub_22A4DD5EC();
    v159 = v59;
    v68 = v67;
    v70 = v69;

    MEMORY[0x22AAD08C0](v68, v70);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v71 = sub_2295A3E30(v176, v177, &v175);

    *(v65 + 4) = v71;
    *(v65 + 12) = 2080;
    v72 = [v60 shortDescription];
    v73 = sub_22A4DD5EC();
    v75 = v74;

    v76 = sub_2295A3E30(v73, v75, &v175);

    *(v65 + 14) = v76;
    *(v65 + 22) = 2080;
    v77 = sub_22A4DD4AC();
    v79 = sub_2295A3E30(v77, v78, &v175);

    *(v65 + 24) = v79;
    v59 = v159;
    _os_log_impl(&dword_229538000, v62, v63, "%s Received %s with payload=%s", v65, 0x20u);
    v80 = v158;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v80, -1, -1);
    MEMORY[0x22AAD4E50](v65, -1, -1);

    v81 = *(v173 + 8);
    v81(v58, v168);
  }

  else
  {

    v81 = *(v173 + 8);
    v81(v58, v5);
  }

  v82 = v171;
  v83 = sub_22A4DD5EC();
  if (!*(v61 + 16))
  {

LABEL_37:

    goto LABEL_38;
  }

  v85 = sub_229543DBC(v83, v84);
  v87 = v86;

  if ((v87 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_2295404B0(*(v61 + 56) + 32 * v85, &v176);
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v88 = v59;
  v89 = v175;
  v90 = sub_22A4DD5EC();
  if (!*(v61 + 16))
  {

LABEL_49:

    goto LABEL_50;
  }

  v92 = sub_229543DBC(v90, v91);
  v94 = v93;

  if ((v94 & 1) == 0)
  {

    goto LABEL_49;
  }

  sub_2295404B0(*(v61 + 56) + 32 * v92, &v176);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_50:
    v59 = v88;
LABEL_38:
    sub_2296F8604();
    v115 = v59;
    v116 = v170;
    v117 = sub_22A4DD05C();
    v118 = sub_22A4DDCEC();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = v82;
      v121 = swift_slowAlloc();
      v175 = v121;
      *v119 = 136315394;
      v176 = 91;
      v177 = 0xE100000000000000;
      v122 = [v115 logIdentifier];
      v123 = sub_22A4DD5EC();
      v125 = v124;

      MEMORY[0x22AAD08C0](v123, v125);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v126 = sub_2295A3E30(v176, v177, &v175);

      *(v119 + 4) = v126;
      *(v119 + 12) = 2080;
      v127 = [v116 shortDescription];
      v128 = sub_22A4DD5EC();
      v130 = v129;

      v131 = sub_2295A3E30(v128, v130, &v175);

      *(v119 + 14) = v131;
      _os_log_impl(&dword_229538000, v117, v118, "%s %s received for accessory that is not this accessory. Not handling.", v119, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v121, -1, -1);
      MEMORY[0x22AAD4E50](v119, -1, -1);

      v132 = v120;
    }

    else
    {

      v132 = v82;
    }

LABEL_41:
    v81(v132, v168);
    return v160(v172, v163);
  }

  v95 = v175;
  v96 = sub_22A4DD5EC();
  if (!*(v61 + 16))
  {

LABEL_48:

    goto LABEL_49;
  }

  v98 = sub_229543DBC(v96, v97);
  v100 = v99;

  if ((v100 & 1) == 0)
  {

    goto LABEL_48;
  }

  sub_2295404B0(*(v61 + 56) + 32 * v98, &v176);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_50;
  }

  v101 = v175;
  v102 = objc_opt_self();
  v158 = v101;
  v171 = v89;
  v165 = v95;
  v159 = [v102 PathWithAttributeID:v101 endpointID:v89 clusterID:v95 accessory:v167];
  v103 = sub_22A4DD5EC();
  if (!*(v61 + 16))
  {

    goto LABEL_53;
  }

  v105 = sub_229543DBC(v103, v104);
  v107 = v106;

  if ((v107 & 1) == 0)
  {
LABEL_53:
    sub_2296F8604();
    v133 = v88;
    v134 = v170;

    v135 = sub_22A4DD05C();
    v136 = sub_22A4DDCEC();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v175 = v138;
      *v137 = 136315650;
      v176 = 91;
      v177 = 0xE100000000000000;
      v139 = [v133 logIdentifier];
      v140 = sub_22A4DD5EC();
      v142 = v141;

      MEMORY[0x22AAD08C0](v140, v142);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v143 = sub_2295A3E30(v176, v177, &v175);

      *(v137 + 4) = v143;
      *(v137 + 12) = 2080;
      v144 = [v134 shortDescription];
      v145 = sub_22A4DD5EC();
      v147 = v146;

      v148 = sub_2295A3E30(v145, v147, &v175);

      *(v137 + 14) = v148;
      *(v137 + 22) = 2080;
      v149 = sub_22A4DD4AC();
      v151 = v150;

      v152 = sub_2295A3E30(v149, v151, &v175);

      *(v137 + 24) = v152;
      _os_log_impl(&dword_229538000, v135, v136, "%s %s does not contain attribute value. payload=%s", v137, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v138, -1, -1);
      MEMORY[0x22AAD4E50](v137, -1, -1);
    }

    else
    {
    }

    v132 = v169;
    goto LABEL_41;
  }

  v108 = v162;
  sub_2295404B0(*(v162 + 56) + 32 * v105, &v175);
  sub_229543C58(&v175, &v176);
  v109 = sub_22A4DD5EC();
  if (!*(v108 + 16))
  {

    goto LABEL_58;
  }

  v111 = sub_229543DBC(v109, v110);
  v113 = v112;

  if ((v113 & 1) == 0)
  {
LABEL_58:

    goto LABEL_59;
  }

  sub_2295404B0(*(v162 + 56) + 32 * v111, &v175);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_59:
    v114 = 0;
    goto LABEL_60;
  }

  v114 = v174;
LABEL_60:
  v153 = [v167 bulletinBoard];
  __swift_project_boxed_opaque_existential_0(&v176, v178);
  v154 = sub_22A4DE5FC();
  if (v114)
  {
    v155 = sub_22A4DD47C();
  }

  else
  {
    v155 = 0;
  }

  v156 = v167;
  v157 = v159;
  [v153 insertBulletinForMatterAttributeWithAccessory:v167 attributePath:v159 value:v154 fields:v155];

  swift_unknownObjectRelease();
  v160(v172, v163);
  return __swift_destroy_boxed_opaque_existential_0(&v176);
}

void sub_2297EAC58(void *a1, void (*a2)(id), void (*a3)(id), void *a4, uint64_t a5)
{
  v88 = a2;
  v89 = a4;
  v8 = v5;
  swift_getObjectType();
  v90 = sub_22A4DD07C();
  v10 = *(v90 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v90);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v82 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v82 - v18;
  v20 = [v5 accessory];
  if (v20)
  {
    v21 = v20;
    v87 = a5;
    v22 = [v20 home];
    if (v22)
    {
      v23 = v22;
      if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
      {
        if (([v23 hasAnyResident] & 1) == 0)
        {
          sub_2296F8604();
          v61 = v5;
          v62 = a1;
          v63 = sub_22A4DD05C();
          v64 = sub_22A4DDCCC();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v97 = v87;
            *v65 = 136315394;
            aBlock = 91;
            v92 = 0xE100000000000000;
            v66 = [v61 logIdentifier];
            LODWORD(v86) = v64;
            v67 = v66;
            v68 = sub_22A4DD5EC();
            v89 = v61;
            v69 = v68;
            v71 = v70;

            MEMORY[0x22AAD08C0](v69, v71);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v72 = sub_2295A3E30(aBlock, v92, &v97);

            *(v65 + 4) = v72;
            *(v65 + 12) = 2080;
            v73 = [v62 shortDescription];
            v74 = sub_22A4DD5EC();
            v76 = v75;

            v77 = sub_2295A3E30(v74, v76, &v97);

            *(v65 + 14) = v77;
            _os_log_impl(&dword_229538000, v63, v86, "%s No residents in home, handling request locally: %s", v65, 0x16u);
            v78 = v87;
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v78, -1, -1);
            MEMORY[0x22AAD4E50](v65, -1, -1);
          }

          (*(v10 + 8))(v19, v90);
          v88(v62);
          goto LABEL_17;
        }

        v88 = a3;
        sub_2296F8604();
        v24 = v5;
        v25 = a1;
        v26 = sub_22A4DD05C();
        v27 = sub_22A4DDCDC();
        v86 = v25;

        v85 = v27;
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v82 = v28;
          v84 = swift_slowAlloc();
          v97 = v84;
          *v28 = 136315394;
          aBlock = 91;
          v92 = 0xE100000000000000;
          v29 = [v24 logIdentifier];
          v83 = v26;
          v30 = v29;
          v31 = sub_22A4DD5EC();
          v33 = v32;

          MEMORY[0x22AAD08C0](v31, v33);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v34 = sub_2295A3E30(aBlock, v92, &v97);

          v35 = v82;
          *(v82 + 1) = v34;
          *(v35 + 6) = 2080;
          v36 = v35;
          v37 = [v86 shortDescription];
          v38 = sub_22A4DD5EC();
          v40 = v39;

          v41 = sub_2295A3E30(v38, v40, &v97);

          *(v36 + 14) = v41;
          v42 = v83;
          _os_log_impl(&dword_229538000, v83, v85, "%s Resident available in home, routing request to primaryResident: %s", v36, 0x16u);
          v43 = v84;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v43, -1, -1);
          MEMORY[0x22AAD4E50](v36, -1, -1);
        }

        else
        {
        }

        (*(v10 + 8))(v17, v90);
      }

      v79 = swift_allocObject();
      *(v79 + 16) = v8;
      v95 = v89;
      v96 = v79;
      aBlock = MEMORY[0x277D85DD0];
      v92 = 1107296256;
      v93 = sub_229566C20;
      v94 = v87;
      v80 = _Block_copy(&aBlock);
      v81 = v8;

      [v81 routeMessage:a1 localHandler:v80];
      _Block_release(v80);
LABEL_17:

      goto LABEL_18;
    }
  }

  sub_2296F8604();
  v44 = v5;
  v45 = a1;
  v46 = sub_22A4DD05C();
  v47 = sub_22A4DDCEC();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v97 = v49;
    *v48 = 136315394;
    aBlock = 91;
    v92 = 0xE100000000000000;
    v50 = [v44 logIdentifier];
    v51 = sub_22A4DD5EC();
    v53 = v52;

    MEMORY[0x22AAD08C0](v51, v53);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v54 = sub_2295A3E30(aBlock, v92, &v97);

    *(v48 + 4) = v54;
    *(v48 + 12) = 2080;
    v55 = [v45 shortDescription];
    v56 = sub_22A4DD5EC();
    v58 = v57;

    v59 = sub_2295A3E30(v56, v58, &v97);

    *(v48 + 14) = v59;
    _os_log_impl(&dword_229538000, v46, v47, "%s Unable to find accessory or home to handle: %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v49, -1, -1);
    MEMORY[0x22AAD4E50](v48, -1, -1);
  }

  (*(v10 + 8))(v14, v90);
  v60 = [objc_opt_self() hmErrorWithCode_];
  v23 = sub_22A4DB3DC();

  [v45 respondWithError_];
LABEL_18:
}

id sub_2297EB4FC(void *a1, uint64_t a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  swift_unknownObjectRetain();
  v11 = [v10 accessory];
  if (!v11 || (v12 = v11, v13 = [v11 home], v12, !v13))
  {
    swift_unknownObjectRelease();
LABEL_9:
    sub_2296F8604();
    swift_unknownObjectRetain();
    v25 = a1;
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v140 = v29;
      *v28 = 136315394;
      v30 = [v25 shortDescription];
      v31 = sub_22A4DD5EC();
      v138 = v4;
      v33 = v32;

      v34 = sub_2295A3E30(v31, v33, &v140);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      swift_getObjectType();
      v139 = a2;
      swift_unknownObjectRetain();
      v35 = sub_22A4DD64C();
      v37 = sub_2295A3E30(v35, v36, &v140);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_229538000, v26, v27, "Could not find binding for %s, unexpected receiver: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);

      (*(v5 + 8))(v8, v138);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return 0;
  }

  v138 = a1;
  v14 = [objc_opt_self() defaultSecurePolicy];
  v15 = objc_opt_self();
  v16 = [v15 userMessagePolicyWithHome:v13 userPrivilege:4 remoteAccessRequired:0];
  v17 = [v15 userMessagePolicyWithHome:v13 userPrivilege:4 remoteAccessRequired:1];
  v18 = [objc_opt_self() policyWithEntitlements_];
  v137 = v13;
  v19 = [objc_msgSend(v13 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v19)
  {
    v136 = v10;
    v20 = [v138 name];
    v21 = sub_22A4DD5EC();
    v23 = v22;
    if (v21 == sub_22A4DD5EC() && v23 == v24)
    {

LABEL_14:
      v40 = [v138 name];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_22A582080;
      *(v41 + 32) = v14;
      *(v41 + 40) = v16;
      sub_229562F68(0, qword_281401B40, 0x277D0F838);
      v42 = v17;
      v43 = v14;
      v44 = v16;
      v45 = sub_22A4DD81C();

      v46 = HMFCreateMessageBindingWithReceiver();
      swift_unknownObjectRelease();

      return v46;
    }

    v39 = sub_22A4DE60C();

    v10 = v136;
    if (v39)
    {
      goto LABEL_14;
    }
  }

  v47 = [v10 accessory];
  if (!v47)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v48 = v47;
  v49 = v18;
  objc_opt_self();
  v50 = swift_dynamicCastObjCClass();
  v51 = v137;
  if (!v50)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  if (![v50 isNativeMatter] || (v52 = objc_msgSend(objc_msgSend(v51, sel_featuresDataSource), sel_isRVCEnabled), swift_unknownObjectRelease(), !v52))
  {

LABEL_24:
    swift_unknownObjectRelease();
    return 0;
  }

  v134 = v17;
  v135 = v48;
  v133 = v16;
  v53 = [v138 name];
  v54 = sub_22A4DD5EC();
  v56 = v55;
  if (v54 != sub_22A4DD5EC() || v56 != v57)
  {
    v58 = sub_22A4DE60C();

    if (v58)
    {
      goto LABEL_27;
    }

    v67 = [v138 &selRef_networkProtectionMode];
    v68 = *MEMORY[0x277CCEAB0];
    v69 = sub_22A4DD5EC();
    v71 = v70;
    if (v69 == sub_22A4DD5EC() && v71 == v72)
    {

LABEL_33:
      v74 = v14;
      v60 = [v138 &selRef_networkProtectionMode];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_22A5842A0;
      v76 = v133;
      *(v75 + 32) = v74;
      *(v75 + 40) = v76;
      *(v75 + 48) = v49;
      sub_229562F68(0, qword_281401B40, 0x277D0F838);
      v77 = v74;
      v78 = v76;
      v79 = v49;
      v65 = sub_22A4DD81C();

      v66 = HMFCreateMessageBindingWithReceiver();
      swift_unknownObjectRelease();

LABEL_34:
      goto LABEL_35;
    }

    v73 = sub_22A4DE60C();

    if (v73)
    {
      goto LABEL_33;
    }

    v80 = [v138 &selRef_networkProtectionMode];
    v81 = *MEMORY[0x277CCECB0];
    v82 = sub_22A4DD5EC();
    v84 = v83;
    if (v82 == sub_22A4DD5EC() && v84 == v85)
    {

LABEL_41:
      v87 = [v138 &selRef_networkProtectionMode];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_22A5842A0;
      *(v88 + 32) = v14;
      v89 = v134;
      *(v88 + 40) = v134;
      *(v88 + 48) = v49;
      sub_229562F68(0, qword_281401B40, 0x277D0F838);
      v90 = v14;
      v91 = v49;
      v92 = v89;
      v65 = sub_22A4DD81C();

      v66 = HMFCreateMessageBindingWithReceiver();
      swift_unknownObjectRelease();

      goto LABEL_36;
    }

    v86 = sub_22A4DE60C();

    if (v86)
    {
      goto LABEL_41;
    }

    v93 = [v138 &selRef_networkProtectionMode];
    v94 = *MEMORY[0x277CCECA0];
    v95 = sub_22A4DD5EC();
    v97 = v96;
    v98 = sub_22A4DD5EC();
    v136 = v10;
    v132 = v14;
    if (v95 == v98 && v97 == v99)
    {

LABEL_46:
      v60 = [v138 &selRef_networkProtectionMode];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_22A5842A0;
      v102 = v132;
      v103 = v134;
      *(v101 + 32) = v132;
      *(v101 + 40) = v103;
      *(v101 + 48) = v49;
      sub_229562F68(0, qword_281401B40, 0x277D0F838);
      v104 = v102;
      v79 = v49;
      v105 = v103;
      v65 = sub_22A4DD81C();

      v66 = HMFCreateMessageBindingWithReceiver();
      swift_unknownObjectRelease();

LABEL_52:
      goto LABEL_34;
    }

    v100 = sub_22A4DE60C();

    if (v100)
    {
      goto LABEL_46;
    }

    v106 = [v138 &selRef_networkProtectionMode];
    v107 = *MEMORY[0x277CCE7B8];
    v108 = sub_22A4DD5EC();
    v110 = v109;
    if (v108 == sub_22A4DD5EC() && v110 == v111)
    {
      goto LABEL_49;
    }

    v112 = sub_22A4DE60C();

    if (v112)
    {
      goto LABEL_51;
    }

    v106 = [v138 &selRef_networkProtectionMode];
    v116 = *MEMORY[0x277CCE7B0];
    v117 = sub_22A4DD5EC();
    v119 = v118;
    if (v117 == sub_22A4DD5EC() && v119 == v120)
    {
LABEL_49:

LABEL_51:
      v60 = [v138 &selRef_networkProtectionMode];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_22A5842A0;
      v114 = v132;
      v115 = v134;
      *(v113 + 32) = v132;
      *(v113 + 40) = v115;
      *(v113 + 48) = v49;
      sub_229562F68(0, qword_281401B40, 0x277D0F838);
      v104 = v114;
      v79 = v49;
      v105 = v115;
      v65 = sub_22A4DD81C();

      v66 = HMFCreateMessageBindingWithReceiver();
      swift_unknownObjectRelease();

      goto LABEL_52;
    }

    v121 = sub_22A4DE60C();

    if (v121)
    {
      goto LABEL_51;
    }

    v122 = [v138 &selRef_networkProtectionMode];
    v123 = sub_22A4DD5EC();
    v125 = v124;
    if (v123 == sub_22A4DD5EC() && v125 == v126)
    {

LABEL_60:
      v60 = [v138 &selRef_networkProtectionMode];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v128 = swift_allocObject();
      *(v128 + 16) = xmmword_22A582080;
      v129 = v132;
      v130 = v133;
      *(v128 + 32) = v132;
      *(v128 + 40) = v130;
      sub_229562F68(0, qword_281401B40, 0x277D0F838);
      v63 = v129;
      v64 = v130;
      v65 = sub_22A4DD81C();

      v66 = HMFCreateMessageBindingWithReceiver();
      swift_unknownObjectRelease();

      goto LABEL_28;
    }

    v127 = sub_22A4DE60C();

    if (v127)
    {
      goto LABEL_60;
    }

    goto LABEL_24;
  }

LABEL_27:
  v59 = v14;
  v60 = [v138 &selRef_networkProtectionMode];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_22A582080;
  v62 = v133;
  *(v61 + 32) = v59;
  *(v61 + 40) = v62;
  sub_229562F68(0, qword_281401B40, 0x277D0F838);
  v63 = v59;
  v64 = v62;
  v65 = sub_22A4DD81C();

  v66 = HMFCreateMessageBindingWithReceiver();
  swift_unknownObjectRelease();

LABEL_28:
LABEL_35:

LABEL_36:
  return v66;
}

uint64_t sub_2297EC64C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_229569B30;

  return sub_2297E92EC(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2297EC798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_229586D38;

  return sub_2297E8BC4(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_2297EC884(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2297EC974()
{
  sub_2296792B0(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter21MediaExperienceVolume_updateStream);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s21MediaExperienceVolumeCMa()
{
  result = qword_27D881530;
  if (!qword_27D881530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2297ECA2C()
{
  sub_2296791B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2297ECBCC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasMediaRouteIdentifier);
  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_firstImportCompleted) != 1)
  {
    if ((*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasMediaRouteIdentifier) & 1) == 0)
    {
      if ((*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasPairingIdentity) & 1) == 0)
      {
        if ((*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasConnectedEventRouterClient) & 1) == 0)
        {
          v21 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee);
          if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isCloudSignedIn) == 1)
          {
            if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee))
            {
              v3 = 0;
              goto LABEL_17;
            }

            if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady))
            {
              v3 = 0;
              v5 = 1;
              goto LABEL_26;
            }

            v3 = 0;
            goto LABEL_59;
          }

          if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee))
          {
            v3 = 0;
            goto LABEL_19;
          }

          if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady))
          {
            v5 = 0;
            v3 = 0;
            goto LABEL_26;
          }

          v5 = 0;
          v3 = 0;
          goto LABEL_37;
        }

        v3 = 0;
        goto LABEL_14;
      }

      v3 = 0;
      goto LABEL_12;
    }

    v3 = 2;
    goto LABEL_6;
  }

  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasMediaRouteIdentifier))
  {
    v3 = 3;
LABEL_6:
    if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasPairingIdentity) != 1)
    {
LABEL_13:
      if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasConnectedEventRouterClient) != 1)
      {
LABEL_15:
        v4 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee);
        if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isCloudSignedIn) == 1)
        {
          if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee))
          {
LABEL_17:
            v5 = 3;
            goto LABEL_20;
          }

          if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady))
          {
            v5 = 1;
            goto LABEL_26;
          }

LABEL_59:
          v5 = 1;
          if ((*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isOwnerUser) & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_28:
          v5 |= 8uLL;
          goto LABEL_29;
        }

        if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee))
        {
LABEL_19:
          v5 = 2;
LABEL_20:
          if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady) != 1)
          {
LABEL_27:
            if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isOwnerUser) != 1)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }

LABEL_26:
          v5 |= 4uLL;
          goto LABEL_27;
        }

        if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady))
        {
          v5 = 0;
          goto LABEL_26;
        }

        v5 = 0;
LABEL_37:
        if ((*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isOwnerUser) & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

LABEL_14:
      v3 |= 8uLL;
      goto LABEL_15;
    }

LABEL_12:
    v3 |= 4uLL;
    goto LABEL_13;
  }

  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasPairingIdentity))
  {
    v3 = 1;
    goto LABEL_12;
  }

  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasConnectedEventRouterClient))
  {
    v3 = 1;
    goto LABEL_14;
  }

  v20 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee);
  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isCloudSignedIn) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee))
    {
      v3 = 1;
      goto LABEL_17;
    }

    if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady))
    {
      v5 = 1;
      v3 = 1;
      goto LABEL_26;
    }

    v22 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isOwnerUser);
    v5 = 1;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee))
    {
      v3 = 1;
      goto LABEL_19;
    }

    if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady))
    {
      v5 = 0;
      v3 = 1;
      goto LABEL_26;
    }

    v5 = 0;
    v22 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isOwnerUser);
  }

  v3 = 1;
  if (v22)
  {
    goto LABEL_28;
  }

LABEL_29:
  v6 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_sessionIdentifier + 8);
  v7 = MEMORY[0x277D84F98];
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_sessionIdentifier);
    v9 = sub_22A4DD5AC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2295AAFCC(v9, 0xD000000000000016, 0x800000022A596ED0, isUniquelyReferenced_nonNull_native);
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v11, 0xD000000000000011, 0x800000022A5975F0, v12);
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v13, 0xD000000000000016, 0x800000022A597710, v14);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v15, 0xD000000000000014, 0x800000022A597730, v16);
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v17, 0xD000000000000015, 0x800000022A597750, v18);
  return v7;
}

id sub_2297ED198()
{
  v2.receiver = v0;
  v2.super_class = _s10MediaGroupO22PreflightCheckLogEventCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2297ED430(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *MEMORY[0x277CCE8B0];
  if (sub_22A4DD5EC() == a1 && v5 == a2)
  {

    return 1;
  }

  v7 = sub_22A4DE60C();

  if (v7)
  {
    return 1;
  }

  v8 = *MEMORY[0x277CCE870];
  if (sub_22A4DD5EC() == a1 && v9 == a2)
  {

    return 2;
  }

  else
  {
    v11 = sub_22A4DE60C();

    if (v11)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

id sub_2297ED524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, int a7, int a8, double a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14)
{
  v38 = a8;
  v39 = a13;
  v36 = a7;
  v37 = a12;
  v34 = a6;
  v35 = a11;
  HIDWORD(v33) = a10;
  v20 = sub_22A4DB7DC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, a14, v20);
  v25 = _s10MediaGroupO22PreflightCheckLogEventCMa();
  v26 = objc_allocWithZone(v25);
  v27 = &v26[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_eventName];
  *v27 = 0xD00000000000003BLL;
  v27[1] = 0x800000022A5977A0;
  v28 = &v26[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_sessionIdentifier];
  *v28 = a1;
  v28[1] = a2;
  v29 = &v26[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_accessoryCategory];
  *v29 = a3;
  v29[1] = a4;
  *&v26[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_fetchDuration] = a9;
  v26[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_firstImportCompleted] = a5;
  v26[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasMediaRouteIdentifier] = v34;
  v26[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasPairingIdentity] = v36;
  v26[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasConnectedEventRouterClient] = v38;
  v26[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isCloudSignedIn] = BYTE4(v33);
  v26[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee] = v35;
  v26[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady] = v37;
  v26[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isOwnerUser] = v39;
  *&v26[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_coreAnalyticsEventOptions] = 2;

  v30 = sub_22A4DB77C();
  v40.receiver = v26;
  v40.super_class = v25;
  v31 = objc_msgSendSuper2(&v40, sel_initWithHomeUUID_, v30);

  (*(v21 + 8))(v24, v20);
  return v31;
}

uint64_t sub_2297ED7B0(uint64_t a1)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_22A4DE0EC();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v51 = MEMORY[0x277D84F90];
    sub_22958345C(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = sub_22A4DE08C();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_22A4DE04C();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_22962F6AC(v48, v49, v50, a1);
        v21 = v20;
        v22 = [v20 identifier];
        sub_22A4DB79C();

        v23 = v46;
        v51 = v46;
        v25 = *(v46 + 16);
        v24 = *(v46 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_22958345C(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_22A4DE0AC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881608, &qword_22A5845A8);
          v14 = sub_22A4DDB9C();
          sub_22A4DE15C();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_22962F424(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_22962F424(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_22962F424(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void sub_2297EDBBC(void *a1, uint64_t a2)
{
  v178 = a2;
  swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v170 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v170 - v13;
  v15 = [v2 accessory];
  if (!v15)
  {
    sub_2296F8604();
    v38 = a1;
    v39 = v2;
    v40 = sub_22A4DD05C();
    v41 = sub_22A4DDCEC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v176 = v5;
      v44 = v43;
      v45 = swift_slowAlloc();
      *&v180 = v45;
      *v42 = 136315394;
      *&v182 = 91;
      *(&v182 + 1) = 0xE100000000000000;
      v46 = [v39 logIdentifier];
      v47 = sub_22A4DD5EC();
      v177 = v4;
      v49 = v48;

      MEMORY[0x22AAD08C0](v47, v49);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v50 = sub_2295A3E30(v182, *(&v182 + 1), &v180);

      *(v42 + 4) = v50;
      *(v42 + 12) = 2112;
      *(v42 + 14) = v38;
      *v44 = v38;
      v51 = v38;
      _os_log_impl(&dword_229538000, v40, v41, "%s No accessory to handle attribute report: %@", v42, 0x16u);
      sub_22953EAE4(v44, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AAD4E50](v45, -1, -1);
      MEMORY[0x22AAD4E50](v42, -1, -1);

      (*(v176 + 8))(v9, v177);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    return;
  }

  v16 = v15;
  v17 = [v15 home];
  if (v17)
  {
    v18 = v17;
    v176 = v5;
    v177 = v4;
    v175 = v16;
    sub_2296F8604();
    v19 = a1;
    v20 = v2;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCCC();

    v23 = os_log_type_enabled(v21, v22);
    v174 = v20;
    if (v23)
    {
      v172 = v22;
      v173 = v18;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *&v180 = v171;
      *v24 = 136316162;
      *&v182 = 91;
      *(&v182 + 1) = 0xE100000000000000;
      v26 = [v20 logIdentifier];
      v27 = sub_22A4DD5EC();
      v29 = v28;

      MEMORY[0x22AAD08C0](v27, v29);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v30 = sub_2295A3E30(v182, *(&v182 + 1), &v180);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2112;
      v31 = [v19 path];
      v32 = [v31 endpoint];

      *(v24 + 14) = v32;
      *v25 = v32;
      *(v24 + 22) = 2112;
      v33 = [v19 path];
      v34 = [v33 cluster];

      *(v24 + 24) = v34;
      v25[1] = v34;
      *(v24 + 32) = 2112;
      v35 = [v19 path];
      v36 = [v35 attribute];

      *(v24 + 34) = v36;
      v25[2] = v36;
      *(v24 + 42) = 2080;
      v37 = v19;
      if ([v19 value])
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
      }

      else
      {
        v182 = 0u;
        v183 = 0u;
      }

      v59 = v177;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE60, &unk_22A57A960);
      v60 = sub_22A4DD64C();
      v62 = sub_2295A3E30(v60, v61, &v180);

      *(v24 + 44) = v62;
      _os_log_impl(&dword_229538000, v21, v172, "%s Handling Matter attribute report for path=%@/%@/%@ with value=%s", v24, 0x34u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v25, -1, -1);
      v63 = v171;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v63, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);

      (*(v176 + 8))(v14, v59);
      v18 = v173;
      v58 = &selRef_disconnectFromBTLEAccessoryServer_;
    }

    else
    {
      v37 = v19;

      (*(v176 + 8))(v14, v177);
      v58 = 0x1FABA3000;
    }

    v64 = MEMORY[0x277D84F98];
    v184 = MEMORY[0x277D84F98];
    v65 = sub_22A4DD5EC();
    v67 = v66;
    v68 = &selRef_ownerDismissedNaturalLightingOnboarding;
    v69 = v37;
    v70 = [v37 &selRef_parseHMAccessoryFirmwareUpdatePolicyCharacteristics_];
    v71 = [v70 *(v58 + 2768)];

    v72 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    *(&v183 + 1) = v72;
    *&v182 = v71;
    sub_229543C5C(&v182, &v180);
    LOBYTE(v71) = swift_isUniquelyReferenced_nonNull_native();
    v179 = v64;
    v73 = *(&v181 + 1);
    v74 = __swift_mutable_project_boxed_opaque_existential_0(&v180, *(&v181 + 1));
    v75 = *(*(v73 - 8) + 64);
    MEMORY[0x28223BE20](v74);
    v77 = (&v170 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v78 + 16))(v77);
    sub_2297FED80(*v77, v65, v67, v71, &v179);

    __swift_destroy_boxed_opaque_existential_0(&v180);
    v79 = v179;
    v184 = v179;
    v80 = sub_22A4DD5EC();
    v82 = v81;
    v83 = [v69 &selRef_parseHMAccessoryFirmwareUpdatePolicyCharacteristics_];
    v84 = [v83 cluster];

    *(&v183 + 1) = v72;
    *&v182 = v84;
    sub_229543C5C(&v182, &v180);
    LOBYTE(v83) = swift_isUniquelyReferenced_nonNull_native();
    v179 = v79;
    v85 = *(&v181 + 1);
    v86 = __swift_mutable_project_boxed_opaque_existential_0(&v180, *(&v181 + 1));
    v87 = *(*(v85 - 8) + 64);
    MEMORY[0x28223BE20](v86);
    v89 = (&v170 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v90 + 16))(v89);
    sub_2297FED80(*v89, v80, v82, v83, &v179);

    __swift_destroy_boxed_opaque_existential_0(&v180);
    v91 = v179;
    v184 = v179;
    v92 = sub_22A4DD5EC();
    v94 = v93;
    v95 = [v69 &selRef_parseHMAccessoryFirmwareUpdatePolicyCharacteristics_];
    v96 = [v95 attribute];

    *(&v183 + 1) = v72;
    *&v182 = v96;
    sub_229543C5C(&v182, &v180);
    LOBYTE(v72) = swift_isUniquelyReferenced_nonNull_native();
    v179 = v91;
    v97 = *(&v181 + 1);
    v98 = __swift_mutable_project_boxed_opaque_existential_0(&v180, *(&v181 + 1));
    v99 = *(*(v97 - 8) + 64);
    MEMORY[0x28223BE20](v98);
    v101 = (&v170 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v102 + 16))(v101);
    sub_2297FED80(*v101, v92, v94, v72, &v179);

    __swift_destroy_boxed_opaque_existential_0(&v180);
    v103 = v179;
    v184 = v179;
    v104 = sub_22A4DD5EC();
    v106 = v105;
    if ([v69 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v180 = 0u;
      v181 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE60, &unk_22A57A960);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    sub_22A4DBA0C();
    sub_22953EAE4(&v180, &unk_27D87DE60, &unk_22A57A960);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v180 = v103;
    v108 = *(&v183 + 1);
    v109 = __swift_mutable_project_boxed_opaque_existential_0(&v182, *(&v183 + 1));
    v110 = *(*(v108 - 8) + 64);
    MEMORY[0x28223BE20](v109);
    v112 = &v170 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v113 + 16))(v112);
    sub_2297FF768(v112, v104, v106, isUniquelyReferenced_nonNull_native, &v180, v108);

    __swift_destroy_boxed_opaque_existential_0(&v182);
    v184 = v180;
    v114 = sub_22A4DD5EC();
    v116 = v115;
    v117 = *MEMORY[0x277CD50D8];
    v118 = sub_22A4DD5EC();
    v120 = v178;
    if (*(v178 + 16))
    {
      v121 = sub_229543DBC(v118, v119);
      v123 = v122;

      if (v123)
      {
        sub_2295404B0(*(v120 + 56) + 32 * v121, &v182);
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
        if (swift_dynamicCast())
        {
          *(&v183 + 1) = v124;
          *&v182 = v180;
          sub_229543C5C(&v182, &v180);
          v125 = v184;
          v126 = swift_isUniquelyReferenced_nonNull_native();
          v179 = v125;
          v127 = *(&v181 + 1);
          v128 = __swift_mutable_project_boxed_opaque_existential_0(&v180, *(&v181 + 1));
          v129 = *(*(v127 - 8) + 64);
          MEMORY[0x28223BE20](v128);
          v131 = &v170 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v132 + 16))(v131);
          v133 = v131;
          v120 = v178;
          sub_2297FF768(v133, v114, v116, v126, &v179, v124);

          __swift_destroy_boxed_opaque_existential_0(&v180);
          v68 = &selRef_ownerDismissedNaturalLightingOnboarding;
          v184 = v179;
          goto LABEL_26;
        }
      }
    }

    else
    {
    }

    sub_2297FD02C(v114, v116, sub_229543C58, sub_229897D20, &v182);

    sub_22953EAE4(&v182, &unk_27D87FC20, &unk_22A578810);
LABEL_26:
    v134 = *MEMORY[0x277CD5170];
    v135 = sub_22A4DD5EC();
    if (*(v120 + 16))
    {
      v137 = sub_229543DBC(v135, v136);
      v139 = v138;

      if (v139)
      {
        sub_2295404B0(*(v120 + 56) + 32 * v137, &v182);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
        if (swift_dynamicCast())
        {
          v140 = v180;
          v141 = sub_22A4DD5EC();
          v143 = v142;
          if (v140)
          {
            v144 = v141;
            v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
            *(&v183 + 1) = v145;
            *&v182 = v140;
            sub_229543C5C(&v182, &v180);

            v146 = v184;
            v147 = swift_isUniquelyReferenced_nonNull_native();
            v179 = v146;
            v148 = *(&v181 + 1);
            v149 = __swift_mutable_project_boxed_opaque_existential_0(&v180, *(&v181 + 1));
            v150 = *(*(v148 - 8) + 64);
            MEMORY[0x28223BE20](v149);
            v152 = &v170 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v153 + 16))(v152);
            sub_2297FF768(v152, v144, v143, v147, &v179, v145);

            __swift_destroy_boxed_opaque_existential_0(&v180);
            v184 = v179;
            v154 = *MEMORY[0x277CD51A0];
            v155 = sub_22A4DD5EC();
            if (*(v140 + 16))
            {
              v157 = sub_229543DBC(v155, v156);
              v159 = v158;

              v160 = v175;
              v68 = &selRef_ownerDismissedNaturalLightingOnboarding;
              if (v159)
              {
                sub_2295404B0(*(v140 + 56) + 32 * v157, &v182);
              }

              else
              {

                v182 = 0u;
                v183 = 0u;
              }
            }

            else
            {

              v182 = 0u;
              v183 = 0u;
              v160 = v175;
              v68 = &selRef_ownerDismissedNaturalLightingOnboarding;
            }

LABEL_36:
            v162 = [v18 notificationCenter];
            v163 = v184;
            v164 = v160;
            sub_2296F7AE8(v163);
            v165 = sub_22A4DD47C();

            logAndPostNotificationWithNotificationCenter(v162, @"HMDMatterAttributeChangedNotification", v164, v165);

            v166 = [objc_msgSend(objc_opt_self() featuresDataSource)];
            swift_unknownObjectRelease();
            if (v166)
            {
              v167 = [v69 v68[150]];
              v168 = [objc_opt_self() PathWithMTRPath:v167 accessory:v164];

              if ([objc_opt_self() isBulletinSupportedForMatterPath:v168 accessory:v164])
              {
                v169 = [v18 isCurrentDeviceConfirmedPrimaryResident];

                if (v169)
                {
                  sub_2297EF894(v168, v69, &v182);
                }
              }

              else
              {
              }

              sub_22953EAE4(&v182, &unk_27D87FC20, &unk_22A578810);
            }

            else
            {
              sub_22953EAE4(&v182, &unk_27D87FC20, &unk_22A578810);
            }

            return;
          }

LABEL_35:
          sub_2297FD02C(v141, v143, sub_229543C58, sub_229897D20, &v180);

          sub_22953EAE4(&v180, &unk_27D87FC20, &unk_22A578810);
          v182 = 0u;
          v183 = 0u;
          v160 = v175;
          goto LABEL_36;
        }
      }
    }

    else
    {
    }

    v141 = sub_22A4DD5EC();
    v143 = v161;
    goto LABEL_35;
  }

  sub_2296F8604();
  v52 = v16;
  v53 = sub_22A4DD05C();
  v54 = sub_22A4DDCDC();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    *(v55 + 4) = v52;
    *v56 = v16;
    v57 = v52;
    _os_log_impl(&dword_229538000, v53, v54, "Home is nil for accessory=%@, (likely just removed), cannot post HMDMatterAttributeChanged notification", v55, 0xCu);
    sub_22953EAE4(v56, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v56, -1, -1);
    MEMORY[0x22AAD4E50](v55, -1, -1);
  }

  else
  {
    v57 = v53;
    v53 = v52;
  }

  (*(v5 + 8))(v12, v4);
}

uint64_t sub_2297EEF40(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297EF048, 0, 0);
}

uint64_t sub_2297EF048()
{
  v1 = [*(v0 + 112) accessory];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  v3 = [v1 home];
  if (!v3)
  {

LABEL_16:
    v44 = *(v0 + 104);
    v45 = *(v0 + 112);
    v46 = *(v0 + 96);
    v47 = swift_task_alloc();
    *(v47 + 16) = v45;
    *(v47 + 24) = v46;
    v48 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DBCEC();
    sub_22A4DBD1C();

LABEL_18:

    goto LABEL_19;
  }

  v4 = v3;
  v5 = [v2 description];
  v6 = sub_22A4DD5EC();
  v8 = v7;

  v9 = [v4 isCurrentDeviceConfirmedPrimaryResident];
  v10 = *(v0 + 112);
  if ((v9 & 1) == 0)
  {
    v50 = *(v0 + 96);
    v49 = *(v0 + 104);
    v51 = swift_task_alloc();
    v51[2] = v10;
    v51[3] = v6;
    v51[4] = v8;
    v51[5] = v50;
    v52 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DBCEC();
    sub_22A4DBD1C();

    goto LABEL_18;
  }

  if ((sub_2297F01B8() & 1) == 0)
  {

    goto LABEL_19;
  }

  v11 = *(v0 + 96);
  v12 = *MEMORY[0x277CD5140];
  v13 = sub_22A4DD5EC();
  if (!*(v11 + 16))
  {

    goto LABEL_26;
  }

  v15 = *(v0 + 96);
  v16 = sub_229543DBC(v13, v14);
  v18 = v17;

  if ((v18 & 1) == 0 || (v19 = *(v0 + 96), sub_2295404B0(*(v19 + 56) + 32 * v16, v0 + 16), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), sub_229562F68(0, &qword_27D8815E8, 0x277CD5408), (swift_dynamicCast() & 1) == 0))
  {
LABEL_26:
    v57 = *(v0 + 144);
    sub_229562F68(0, &qword_27D8809F0, off_278666248);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v58 = sub_22A4DD05C();
    v59 = sub_22A4DDCEC();
    v60 = os_log_type_enabled(v58, v59);
    v62 = *(v0 + 136);
    v61 = *(v0 + 144);
    v63 = *(v0 + 128);
    if (v60)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_229538000, v58, v59, "Opaque dictionary does not have required keys, not handling event", v64, 2u);
      MEMORY[0x22AAD4E50](v64, -1, -1);
    }

    else
    {
    }

    (*(v62 + 8))(v61, v63);
    goto LABEL_19;
  }

  v20 = *(v0 + 80);
  v21 = *MEMORY[0x277CD50D8];
  v22 = sub_22A4DD5EC();
  if (!*(v11 + 16))
  {

LABEL_25:

    goto LABEL_26;
  }

  v24 = *(v0 + 96);
  v25 = sub_229543DBC(v22, v23);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_2295404B0(*(v19 + 56) + 32 * v25, v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v28 = *(v0 + 88);

  v29 = [objc_opt_self() PathWithMTRPath:v20 accessory:v2];
  v30 = [v29 eventID];
  if (v30)
  {
    v31 = v30;
    v32 = *(v0 + 112);
    if (sub_229768300(v29))
    {
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v34 = v33;
        v35 = *(v0 + 152);
        v36 = *(v0 + 112);
        v65 = *(v0 + 120);
        v66 = v35;
        v37 = *(v0 + 96);
        v38 = sub_22A4DD9DC();
        (*(*(v38 - 8) + 56))(v35, 1, 1, v38);
        v39 = swift_allocObject();
        v39[2] = 0;
        v39[3] = 0;
        v39[4] = v34;
        v39[5] = v29;
        v39[6] = v31;
        v39[7] = v37;
        v39[8] = v36;
        v39[9] = v4;
        v39[10] = v65;
        v40 = v2;
        v41 = v29;
        v42 = v31;

        v43 = v36;
        sub_22957F3C0(0, 0, v66, &unk_22A584590, v39);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_19:
  v54 = *(v0 + 144);
  v53 = *(v0 + 152);

  v55 = *(v0 + 8);

  return v55();
}

id sub_2297EF658(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v19[0] = 0;
  v4 = [objc_opt_self() futureWithPromise_];
  [v1 setRvcCleaningPayload_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v7 = [v1 accessory];
  v8 = [objc_opt_self() PathWithAttributeID:v5 endpointID:a1 clusterID:v6 accessory:v7];

  v9 = [v1 reportFromAttributePathRead:v8 retryTimeout:1.0];
  v10 = v19[0];
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v1;
  v11[4] = v10;
  v11[5] = ObjectType;
  v18[4] = sub_2297FFFDC;
  v18[5] = v11;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_229800B04;
  v18[3] = &block_descriptor_31_0;
  v12 = _Block_copy(v18);
  v13 = v10;
  v14 = a1;
  v15 = v1;

  [v9 getResultWithCompletion_];
  _Block_release(v12);

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_2297EF894(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v92 = a2;
  v93 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DD07C();
  v94 = *(v6 - 8);
  v7 = v94[8];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v83 - v11;
  v13 = sub_22A4DB7DC();
  v95 = *(v13 - 8);
  v96 = v13;
  v14 = *(v95 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v83 - v17;
  v19 = [objc_msgSend(objc_opt_self() featuresDataSource)];
  swift_unknownObjectRelease();
  if (!v19)
  {
    return;
  }

  if (![objc_opt_self() supportsBulletinBoard])
  {
    return;
  }

  v20 = [a1 accessory];
  if (!v20)
  {
    return;
  }

  v91 = v20;
  v21 = [v4 msgDispatcher];
  if (!v21)
  {
    goto LABEL_13;
  }

  v22 = v21;
  v23 = [v91 home];
  if (!v23)
  {

LABEL_13:
    v54 = v91;

    return;
  }

  v24 = v23;
  v90 = v22;
  v25 = [v23 accessoryBulletinNotificationManager];

  if (!v25)
  {

    goto LABEL_13;
  }

  v26 = [v25 devicesToNotifyForMatterPath_];

  sub_229562F68(0, &qword_27D87CEF0, off_278666100);
  sub_2298002FC();
  v27 = sub_22A4DDB6C();

  v28 = [v91 messageTargetUUID];
  sub_22A4DB79C();

  v29 = v27;
  if ((v27 & 0xC000000000000001) != 0)
  {
    if (sub_22A4DE0EC())
    {
LABEL_9:
      sub_2296F8604();
      v30 = v4;
      v31 = a1;

      v32 = sub_22A4DD05C();
      v33 = sub_22A4DDCCC();

      v34 = os_log_type_enabled(v32, v33);
      v89 = v29;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v83 = v35;
        v86 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v87 = v36;
        *v35 = 136315650;
        v98 = v36;
        aBlock = 91;
        v100 = 0xE100000000000000;
        v37 = [v30 logIdentifier];
        v38 = sub_22A4DD5EC();
        v88 = v30;
        v39 = v38;
        v85 = v33;
        v40 = v31;
        v42 = v41;

        v84 = v32;
        MEMORY[0x22AAD08C0](v39, v42);
        v31 = v40;

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v43 = sub_2295A3E30(aBlock, v100, &v98);

        v44 = v83;
        *(v83 + 1) = v43;
        *(v44 + 6) = 2080;
        sub_2297ED7B0(v89);
        v45 = MEMORY[0x22AAD0A20]();
        v47 = v46;

        v48 = sub_2295A3E30(v45, v47, &v98);
        v30 = v88;

        *(v44 + 14) = v48;
        *(v44 + 11) = 2112;
        *(v44 + 3) = v31;
        v49 = v44;
        v50 = v86;
        *v86 = v31;
        v51 = v31;
        v52 = v84;
        _os_log_impl(&dword_229538000, v84, v85, "%s Devices to notify: %s for path=%@", v49, 0x20u);
        sub_22953EAE4(v50, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v50, -1, -1);
        v53 = v87;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v53, -1, -1);
        MEMORY[0x22AAD4E50](v49, -1, -1);
      }

      else
      {
      }

      (v94[1])(v10, v6);
      HMDMatterAccessoryAdapter.payloadForMatterAttributeMessage(with:report:previousValue:)(v31, v92, v93);
      v94 = v70;
      v72 = v95;
      v71 = v96;
      (*(v95 + 16))(v16, v18, v96);
      v73 = v30;
      v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v75 = (v14 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
      v76 = swift_allocObject();
      v77 = v89;
      *(v76 + 16) = v73;
      *(v76 + 24) = v77;
      (*(v72 + 32))(v76 + v74, v16, v71);
      v78 = v90;
      *(v76 + v75) = v90;
      *(v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
      v103 = sub_229800500;
      v104 = v76;
      aBlock = MEMORY[0x277D85DD0];
      v100 = 1107296256;
      v101 = sub_229800B04;
      v102 = &block_descriptor_106_0;
      v79 = _Block_copy(&aBlock);
      v80 = v73;
      v81 = v78;

      v82 = v94;
      [v94 getResultWithCompletion_];

      _Block_release(v79);
      (*(v72 + 8))(v18, v71);
      return;
    }
  }

  else if (*(v27 + 16))
  {
    goto LABEL_9;
  }

  sub_2296F8604();
  v55 = v4;
  v56 = a1;
  v57 = sub_22A4DD05C();
  v58 = sub_22A4DDCCC();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    ObjectType = v60;
    *v59 = 136315394;
    v98 = v60;
    aBlock = 91;
    v100 = 0xE100000000000000;
    v61 = [v55 logIdentifier];
    LODWORD(v92) = v58;
    v62 = v61;
    v63 = sub_22A4DD5EC();
    v65 = v64;

    MEMORY[0x22AAD08C0](v63, v65);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v66 = sub_2295A3E30(aBlock, v100, &v98);

    *(v59 + 4) = v66;
    *(v59 + 12) = 2112;
    *(v59 + 14) = v56;
    v67 = v93;
    *v93 = v56;
    v68 = v56;
    _os_log_impl(&dword_229538000, v57, v92, "%s No devices to notify for path=%@", v59, 0x16u);
    sub_22953EAE4(v67, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v67, -1, -1);
    v69 = ObjectType;
    __swift_destroy_boxed_opaque_existential_0(ObjectType);
    MEMORY[0x22AAD4E50](v69, -1, -1);
    MEMORY[0x22AAD4E50](v59, -1, -1);
  }

  (v94[1])(v12, v6);
  (*(v95 + 8))(v18, v96);
}

uint64_t sub_2297F01B8()
{
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 accessory];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 home];
  if (!v8)
  {
    v9 = v7;
LABEL_8:

    goto LABEL_9;
  }

  v9 = v8;
  if (![v8 isCurrentDeviceConfirmedPrimaryResident])
  {

    goto LABEL_8;
  }

  v10 = [objc_msgSend(v9 featuresDataSource)];
  swift_unknownObjectRelease();

  if (v10)
  {
    return 1;
  }

LABEL_9:
  sub_229562F68(0, &qword_27D8809F0, off_278666248);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCEC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_229538000, v12, v13, "should not handle nil event report", v14, 2u);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return 0;
}

uint64_t sub_2297F03C0(void *a1, void *a2)
{
  sub_22A4DE1FC();
  v4 = [a1 logIdentifier];
  v5 = sub_22A4DD5EC();
  v7 = v6;

  MEMORY[0x22AAD08C0](v5, v7);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);

  MEMORY[0x22AAD08C0](0xD00000000000002CLL, 0x800000022A5978F0);
  v8 = a2;
  v9 = [v8 description];
  v10 = sub_22A4DD5EC();
  v12 = v11;

  MEMORY[0x22AAD08C0](v10, v12);

  sub_22A4DBD3C();
}

uint64_t sub_2297F050C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22A4DE1FC();
  v8 = [a1 logIdentifier];
  v9 = sub_22A4DD5EC();
  v11 = v10;

  MEMORY[0x22AAD08C0](v9, v11);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  MEMORY[0x22AAD08C0](91, 0xE100000000000000);

  MEMORY[0x22AAD08C0](0xD000000000000069, 0x800000022A597810);
  MEMORY[0x22AAD08C0](a2, a3);
  MEMORY[0x22AAD08C0](0x6552746E65766520, 0xED00003D74726F70);
  v12 = a4;
  v13 = [v12 description];
  v14 = sub_22A4DD5EC();
  v16 = v15;

  MEMORY[0x22AAD08C0](v14, v16);

  sub_22A4DBD0C();
}

uint64_t sub_2297F06AC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  sub_22A4DE1FC();
  v10 = [a1 logIdentifier];
  v11 = sub_22A4DD5EC();
  v13 = v12;

  MEMORY[0x22AAD08C0](v11, v13);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  MEMORY[0x22AAD08C0](91, 0xE100000000000000);

  MEMORY[0x22AAD08C0](0xD00000000000002CLL, 0x800000022A5978C0);
  MEMORY[0x22AAD08C0](a2, a3);
  MEMORY[0x22AAD08C0](0x72657473756C6320, 0xEB000000003D4449);
  v14 = [a4 description];
  v15 = sub_22A4DD5EC();
  v17 = v16;

  MEMORY[0x22AAD08C0](v15, v17);

  MEMORY[0x22AAD08C0](0x6552746E65766520, 0xED00003D74726F70);
  v18 = [a5 description];
  v19 = sub_22A4DD5EC();
  v21 = v20;

  MEMORY[0x22AAD08C0](v19, v21);

  sub_22A4DBD0C();
}

uint64_t sub_2297F08AC(void *a1)
{
  sub_22A4DE1FC();
  v2 = [a1 logIdentifier];
  v3 = sub_22A4DD5EC();
  v5 = v4;

  MEMORY[0x22AAD08C0](v3, v5);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  MEMORY[0x22AAD08C0](91, 0xE100000000000000);

  MEMORY[0x22AAD08C0](0xD000000000000030, 0x800000022A597880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v6 = sub_22A4DD4AC();
  MEMORY[0x22AAD08C0](v6);

  sub_22A4DBD3C();
}

uint64_t sub_2297F09FC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22A4DE1FC();
  v6 = [a1 logIdentifier];
  v7 = sub_22A4DD5EC();
  v9 = v8;

  MEMORY[0x22AAD08C0](v7, v9);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  MEMORY[0x22AAD08C0](91, 0xE100000000000000);

  MEMORY[0x22AAD08C0](0xD000000000000069, 0x800000022A597810);
  MEMORY[0x22AAD08C0](a2, a3);
  MEMORY[0x22AAD08C0](0x6552746E65766520, 0xED00003D74726F70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v10 = sub_22A4DD4AC();
  MEMORY[0x22AAD08C0](v10);

  sub_22A4DBD0C();
}

uint64_t sub_2297F0B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[93] = v30;
  v8[92] = v29;
  v8[91] = a8;
  v8[90] = a7;
  v8[89] = a6;
  v8[88] = a5;
  v8[87] = a4;
  v9 = sub_22A4DD07C();
  v8[94] = v9;
  v10 = *(v9 - 8);
  v8[95] = v10;
  v11 = *(v10 + 64) + 15;
  v8[96] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8811F8, &qword_22A5837A0);
  v8[97] = v12;
  v13 = *(v12 - 8);
  v8[98] = v13;
  v14 = *(v13 + 64) + 15;
  v8[99] = swift_task_alloc();
  v15 = sub_22A4DC75C();
  v8[100] = v15;
  v16 = *(v15 - 8);
  v8[101] = v16;
  v17 = *(v16 + 64) + 15;
  v8[102] = swift_task_alloc();
  v18 = sub_22A4DC86C();
  v8[103] = v18;
  v19 = *(v18 - 8);
  v8[104] = v19;
  v20 = *(v19 + 64) + 15;
  v8[105] = swift_task_alloc();
  v8[106] = swift_task_alloc();
  v21 = sub_22A4DCA0C();
  v8[107] = v21;
  v22 = *(v21 - 8);
  v8[108] = v22;
  v23 = *(v22 + 64) + 15;
  v8[109] = swift_task_alloc();
  v24 = sub_22A4DB7DC();
  v8[110] = v24;
  v25 = *(v24 - 8);
  v8[111] = v25;
  v26 = *(v25 + 64) + 15;
  v8[112] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297F0E58, 0, 0);
}

uint64_t sub_2297F0E58()
{
  v107 = v0;
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v104 = *(v0 + 720);
  v105 = *(v0 + 728);
  v102 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = sub_22A4DD5EC();
  v8 = v7;
  v9 = [v5 uuid];
  sub_22A4DB79C();

  v10 = sub_22A4DB76C();
  v12 = v11;
  v98 = *(v2 + 8);
  v98(v1, v3);
  *(v0 + 168) = MEMORY[0x277D837D0];
  *(v0 + 144) = v10;
  *(v0 + 152) = v12;
  sub_229543C5C((v0 + 144), (v0 + 176));
  v13 = MEMORY[0x277D84F98];
  LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
  v106 = v13;
  v14 = *(v0 + 200);
  v15 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 176, v14);
  v16 = *(v14 - 8);
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  (*(v16 + 16))(v18, v15, v14);
  sub_2297FE940(*v18, v18[1], v6, v8, v3, &v106);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  v19 = v106;
  v99 = sub_22A4DD5EC();
  v101 = v4;
  v21 = v20;
  v22 = v4;
  v23 = [v4 endpointID];
  v24 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *(v0 + 208) = v23;
  *(v0 + 904) = v24;
  *(v0 + 232) = v24;
  sub_229543C5C((v0 + 208), (v0 + 240));
  LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
  v106 = v19;
  v25 = *(v0 + 264);
  v26 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 240, v25);
  v27 = *(v25 - 8);
  v28 = *(v27 + 64) + 15;
  v29 = swift_task_alloc();
  (*(v27 + 16))(v29, v26, v25);
  sub_2297FED80(*v29, v99, v21, v23, &v106);

  __swift_destroy_boxed_opaque_existential_0((v0 + 240));

  v30 = v106;
  v100 = sub_22A4DD5EC();
  v32 = v31;
  v33 = [v22 clusterID];
  *(v0 + 296) = v24;
  *(v0 + 272) = v33;
  sub_229543C5C((v0 + 272), (v0 + 304));
  LOBYTE(v29) = swift_isUniquelyReferenced_nonNull_native();
  v106 = v30;
  v34 = *(v0 + 328);
  v35 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 304, v34);
  v36 = *(v34 - 8);
  v37 = *(v36 + 64) + 15;
  v38 = swift_task_alloc();
  (*(v36 + 16))(v38, v35, v34);
  sub_2297FED80(*v38, v100, v32, v29, &v106);

  __swift_destroy_boxed_opaque_existential_0((v0 + 304));

  v39 = v106;
  v40 = sub_22A4DD5EC();
  v42 = v41;
  *(v0 + 360) = v24;
  *(v0 + 336) = v102;
  sub_229543C5C((v0 + 336), (v0 + 368));
  v103 = v102;
  LOBYTE(v24) = swift_isUniquelyReferenced_nonNull_native();
  v106 = v39;
  v43 = *(v0 + 392);
  v44 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 368, v43);
  v45 = *(v43 - 8);
  v46 = *(v45 + 64) + 15;
  v47 = swift_task_alloc();
  (*(v45 + 16))(v47, v44, v43);
  sub_2297FED80(*v47, v40, v42, v24, &v106);

  __swift_destroy_boxed_opaque_existential_0((v0 + 368));

  v48 = v106;
  *(v0 + 688) = v104;
  v49 = *MEMORY[0x277CD5140];
  v50 = sub_22A4DD5EC();
  v52 = v51;

  sub_2297FD02C(v50, v52, sub_229543C58, sub_229897D20, (v0 + 400));

  sub_22953EAE4(v0 + 400, &unk_27D87FC20, &unk_22A578810);
  v53 = sub_22A4DD5EC();
  v55 = v54;
  v56 = *(v0 + 688);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  *(v0 + 912) = v57;
  *(v0 + 456) = v57;
  *(v0 + 432) = v56;
  sub_229543C5C((v0 + 432), (v0 + 464));

  LOBYTE(v45) = swift_isUniquelyReferenced_nonNull_native();
  v106 = v48;
  v58 = *(v0 + 488);
  v59 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 464, v58);
  v60 = *(v58 - 8);
  v61 = *(v60 + 64) + 15;
  v62 = swift_task_alloc();
  (*(v60 + 16))(v62, v59, v58);
  sub_2297FEB50(*v62, v53, v55, v45, &v106, &unk_27D87C370, &qword_22A578090);

  __swift_destroy_boxed_opaque_existential_0((v0 + 464));

  *(v0 + 920) = v106;
  v63 = [v101 clusterID];
  LOBYTE(v55) = sub_229768668(v103, v63);

  if (v55)
  {
    v64 = sub_2296F7AE8(v56);
    *(v0 + 928) = v64;

    v65 = swift_task_alloc();
    *(v0 + 936) = v65;
    *v65 = v0;
    v65[1] = sub_2297F192C;
    v66 = *(v0 + 728);

    return sub_2297689D0(v64);
  }

  v68 = *(v0 + 728);
  v69 = *(v0 + 712);
  v70 = [*(v0 + 704) clusterID];
  LOBYTE(v68) = sub_22976869C(v69, v70);

  if (v68)
  {
    v71 = *(v0 + 816);
    v72 = *(v0 + 808);
    v73 = *(v0 + 800);
    v74 = [*(v0 + 712) unsignedIntValue];
    sub_22A4DC73C();
    v75 = sub_22A4DC74C();
    (*(v72 + 8))(v71, v73);
    if (v74 == v75)
    {
      v76 = *(v0 + 896);
      v77 = *(v0 + 880);
      v78 = *(v0 + 736);
      v79 = [v78 uuid];
      sub_22A4DB79C();

      v80 = objc_allocWithZone(type metadata accessor for CleanEnergyAutomationReducedEnergyLogEvent());
      v81 = sub_22A4DB77C();
      v82 = [v80 initWithHomeUUID_];

      v98(v76, v77);
      v83 = [v78 logEventSubmitter];
      if (!v83)
      {
        __break(1u);
        return MEMORY[0x282200938](v83);
      }

      v84 = v83;

      [v84 submitLogEvent_];
      swift_unknownObjectRelease();
    }

    else
    {
    }

    v93 = *(v0 + 792);
    v94 = *(v0 + 784);
    v95 = *(v0 + 776);
    v96 = *(v0 + 736);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 984;
    *(v0 + 24) = sub_2297F2130;
    swift_continuation_init();
    *(v0 + 136) = v95;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    sub_22A4DD8DC();
    (*(v94 + 32))(boxed_opaque_existential_1, v93, v95);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_229862C18;
    *(v0 + 104) = &block_descriptor_56_0;
    [v96 isEnergyCurrentlyExpensiveWithCompletion_];
    (*(v94 + 8))(boxed_opaque_existential_1, v95);
    v83 = (v0 + 16);

    return MEMORY[0x282200938](v83);
  }

  v85 = *(v0 + 896);
  v86 = *(v0 + 872);
  v87 = *(v0 + 848);
  v88 = *(v0 + 840);
  v89 = *(v0 + 816);
  v90 = *(v0 + 792);
  v91 = *(v0 + 768);

  v92 = *(v0 + 8);

  return v92();
}

uint64_t sub_2297F192C(uint64_t a1)
{
  v2 = *(*v1 + 936);
  v3 = *(*v1 + 928);
  v5 = *v1;
  *(*v1 + 944) = a1;

  return MEMORY[0x2822009F8](sub_2297F1A4C, 0, 0);
}

uint64_t sub_2297F1A4C()
{
  v37 = v0;
  v1 = *(v0 + 944);
  if (v1)
  {
    v2 = *(v0 + 920);
    v3 = *(v0 + 912);
    v4 = sub_22A4DD5EC();
    v6 = v5;
    *(v0 + 648) = v3;
    *(v0 + 624) = v1;
    sub_229543C5C((v0 + 624), (v0 + 656));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v2;
    v8 = *(v0 + 680);
    v9 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 656, v8);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64) + 15;
    v12 = swift_task_alloc();
    (*(v10 + 16))(v12, v9, v8);
    sub_2297FEB50(*v12, v4, v6, isUniquelyReferenced_nonNull_native, &v36, &unk_27D87C370, &qword_22A578090);

    __swift_destroy_boxed_opaque_existential_0((v0 + 656));

    v13 = v36;
  }

  else
  {
    v13 = *(v0 + 920);
  }

  *(v0 + 952) = v13;
  v14 = *(v0 + 872);
  sub_2296F7AE8(*(v0 + 720));
  sub_22A4DC9FC();
  v15 = *(v0 + 872);
  v16 = *(v0 + 848);
  v17 = *(v0 + 840);
  v18 = *(v0 + 832);
  v19 = *(v0 + 824);
  sub_22A4DC9BC();
  (*(v18 + 104))(v17, *MEMORY[0x277D17278], v19);
  sub_2297FFF94(&qword_27D8815F0, MEMORY[0x277D17298]);
  LOBYTE(v15) = sub_22A4DD58C();
  v20 = *(v18 + 8);
  *(v0 + 960) = v20;
  *(v0 + 968) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v17, v19);
  if (v15)
  {
    v21 = swift_task_alloc();
    *(v0 + 976) = v21;
    *v21 = v0;
    v21[1] = sub_2297F1EF4;
    v22 = *(v0 + 728);

    return sub_22976AEB8();
  }

  else
  {
    v20(*(v0 + 848), *(v0 + 824));
    v24 = *(v0 + 872);
    v25 = *(v0 + 864);
    v26 = *(v0 + 856);
    v27 = *(v0 + 728);
    sub_2297F251C(*(v0 + 704), *(v0 + 952));

    (*(v25 + 8))(v24, v26);
    v28 = *(v0 + 896);
    v29 = *(v0 + 872);
    v30 = *(v0 + 848);
    v31 = *(v0 + 840);
    v32 = *(v0 + 816);
    v33 = *(v0 + 792);
    v34 = *(v0 + 768);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_2297F1EF4(char a1)
{
  v2 = *(*v1 + 976);
  v4 = *v1;
  *(*v1 + 985) = a1;

  return MEMORY[0x2822009F8](sub_2297F1FF4, 0, 0);
}

uint64_t sub_2297F1FF4()
{
  v1 = *(v0 + 985);
  v2 = *(v0 + 968);
  (*(v0 + 960))(*(v0 + 848), *(v0 + 824));
  v3 = *(v0 + 952);
  v4 = *(v0 + 872);
  v5 = *(v0 + 864);
  v6 = *(v0 + 856);
  if (v1 == 1)
  {
    v7 = *(v0 + 728);
    sub_2297F251C(*(v0 + 704), *(v0 + 952));

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    (*(v5 + 8))(*(v0 + 872), *(v0 + 856));
  }

  v8 = *(v0 + 896);
  v9 = *(v0 + 872);
  v10 = *(v0 + 848);
  v11 = *(v0 + 840);
  v12 = *(v0 + 816);
  v13 = *(v0 + 792);
  v14 = *(v0 + 768);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2297F2130()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297F2210, 0, 0);
}

uint64_t sub_2297F2210()
{
  v36 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 912);
  v3 = *(v0 + 904);
  v33 = *(v0 + 704);
  v34 = *(v0 + 728);
  v4 = *(v0 + 984);
  v5 = sub_22A4DD5EC();
  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v0 + 520) = v3;
  *(v0 + 496) = v8;
  sub_229543C5C((v0 + 496), (v0 + 528));
  v9 = MEMORY[0x277D84F98];
  LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
  v35 = v9;
  v10 = *(v0 + 552);
  v11 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 528, v10);
  v12 = *(v10 - 8);
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  (*(v12 + 16))(v14, v11, v10);
  sub_2297FED80(*v14, v5, v7, v3, &v35);

  __swift_destroy_boxed_opaque_existential_0((v0 + 528));

  v15 = v35;
  v16 = sub_22A4DD5EC();
  v18 = v17;
  *(v0 + 584) = v2;
  *(v0 + 560) = v15;
  sub_229543C5C((v0 + 560), (v0 + 592));
  LOBYTE(v10) = swift_isUniquelyReferenced_nonNull_native();
  v35 = v1;
  v19 = *(v0 + 616);
  v20 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 592, v19);
  v21 = *(v19 - 8);
  v22 = *(v21 + 64) + 15;
  v23 = swift_task_alloc();
  (*(v21 + 16))(v23, v20, v19);
  sub_2297FEB50(*v23, v16, v18, v10, &v35, &unk_27D87C370, &qword_22A578090);

  __swift_destroy_boxed_opaque_existential_0((v0 + 592));

  sub_2297F251C(v33, v35);

  v24 = *(v0 + 896);
  v25 = *(v0 + 872);
  v26 = *(v0 + 848);
  v27 = *(v0 + 840);
  v28 = *(v0 + 816);
  v29 = *(v0 + 792);
  v30 = *(v0 + 768);

  v31 = *(v0 + 8);

  return v31();
}

void sub_2297F251C(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 accessory];
  if (!v12)
  {
    return;
  }

  v26 = v12;
  v13 = [v12 home];
  if (!v13)
  {
    goto LABEL_11;
  }

  v25 = v13;
  v14 = [v3 msgDispatcher];
  if (!v14)
  {

    v23 = v25;
LABEL_12:

    return;
  }

  v15 = v14;
  v16 = [v25 accessoryBulletinNotificationManager];
  if (!v16)
  {

LABEL_11:
    v23 = v26;
    goto LABEL_12;
  }

  v17 = v16;
  v18 = [v16 devicesToNotifyForMatterPath_];

  sub_229562F68(0, &qword_27D87CEF0, off_278666100);
  sub_2298002FC();
  v19 = sub_22A4DDB6C();

  v20 = [a1 eventID];
  if (v20)
  {

    v21 = [v26 messageTargetUUID];
    sub_22A4DB79C();

    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = sub_22A4DE0EC();
      if (v22)
      {
LABEL_8:
        MEMORY[0x28223BE20](v22);
        *(&v24 - 6) = v11;
        *(&v24 - 5) = a2;
        *(&v24 - 4) = v3;
        *(&v24 - 3) = v15;
        *(&v24 - 2) = ObjectType;
        sub_229839B44(sub_229800364, (&v24 - 8), v19);

LABEL_20:
        (*(v8 + 8))(v11, v7);
        return;
      }
    }

    else
    {
      v22 = *(v19 + 16);
      if (v22)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_20;
  }
}

void HMDMatterAccessoryAdapter.payloadForMatterAttributeMessage(with:report:previousValue:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v444 = a3;
  v443 = a2;
  v457[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v442 = sub_22A4DB7DC();
  v441 = *(v442 - 1);
  v7 = *(v441 + 64);
  MEMORY[0x28223BE20](v442);
  v440 = &v429 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v445 = sub_22A4DD07C();
  v446 = *(v445 - 8);
  v9 = *(v446 + 64);
  v10 = MEMORY[0x28223BE20](v445);
  v12 = &v429 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v439 = &v429 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v433 = &v429 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v432 = (&v429 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v438 = &v429 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v429 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v435 = &v429 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v434 = &v429 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v437 = &v429 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v436 = &v429 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v429 - v32;
  v457[0] = 0;
  v447 = [objc_opt_self() futureWithPromise_];
  v34 = [a1 clusterID];
  v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v36 = [v34 isEqualToNumber_];

  if (!v36)
  {
    sub_2296F8604();
    v43 = v4;
    v44 = a1;
    v45 = sub_22A4DD05C();
    v46 = sub_22A4DDCCC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v455 = v49;
      *v47 = 136315394;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v50 = [v43 logIdentifier];
      v51 = sub_22A4DD5EC();
      v53 = v52;

      MEMORY[0x22AAD08C0](v51, v53);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v54 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v455);

      *(v47 + 4) = v54;
      *(v47 + 12) = 2112;
      v55 = [v44 clusterID];
      *(v47 + 14) = v55;
      *v48 = v55;
      _os_log_impl(&dword_229538000, v45, v46, "%s Cannot build Native Matter cluster attribute message payload: We do not support bulletin for clusterID=%@", v47, 0x16u);
      sub_22953EAE4(v48, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v48, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AAD4E50](v49, -1, -1);
      MEMORY[0x22AAD4E50](v47, -1, -1);
    }

    (*(v446 + 8))(v12, v445);
    v56 = v457[0];
    if (v457[0])
    {
      goto LABEL_10;
    }

    goto LABEL_186;
  }

  v430 = ObjectType;
  v431 = v4;
  v37 = &selRef_applicationProxyForIdentifier_;
  v38 = [a1 attributeID];
  if (!v38)
  {
    __break(1u);
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v39 = v38;
  v40 = a1;
  v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v42 = [v39 isEqualToNumber_];

  if (v42)
  {
    if (*(v444 + 3))
    {
      if ([v443 value])
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
        goto LABEL_30;
      }

LABEL_29:
      v455 = 0u;
      v456 = 0u;
LABEL_30:
      aBlock = v455;
      v450 = v456;
      if (*(&v456 + 1))
      {
        sub_229562F68(0, &qword_281401770, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v89 = v454[0];
        }

        else
        {
          v89 = 0;
        }
      }

      else
      {
        sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
        v89 = 0;
      }

      v454[0] = MEMORY[0x277D84F98];
      v90 = sub_22A4DD5EC();
      v92 = v91;
      v93 = [v40 accessory];
      if (v93)
      {
        v94 = v93;
        v95 = [v93 uuid];

        v96 = v440;
        sub_22A4DB79C();

        v97 = sub_22A4DB76C();
        v99 = v98;
        (*(v441 + 8))(v96, v442);
        *(&v450 + 1) = MEMORY[0x277D837D0];
        *&aBlock = v97;
        *(&aBlock + 1) = v99;
        sub_229543C5C(&aBlock, &v455);
        v100 = v454[0];
        LOBYTE(v99) = swift_isUniquelyReferenced_nonNull_native();
        v453 = v100;
        v101 = *(&v456 + 1);
        v102 = __swift_mutable_project_boxed_opaque_existential_0(&v455, *(&v456 + 1));
        v103 = *(*(v101 - 8) + 64);
        MEMORY[0x28223BE20](v102);
        v105 = (&v429 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v106 + 16))(v105);
        sub_2297FE940(*v105, v105[1], v90, v92, v99, &v453);
        __swift_destroy_boxed_opaque_existential_0(&v455);

        v107 = v453;
        v454[0] = v453;
        v108 = sub_22A4DD5EC();
        v110 = v109;
        v111 = [v40 endpointID];
        v112 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
        *(&v450 + 1) = v112;
        *&aBlock = v111;
        sub_229543C5C(&aBlock, &v455);
        LOBYTE(v111) = swift_isUniquelyReferenced_nonNull_native();
        v453 = v107;
        v113 = *(&v456 + 1);
        v114 = __swift_mutable_project_boxed_opaque_existential_0(&v455, *(&v456 + 1));
        v115 = *(*(v113 - 8) + 64);
        MEMORY[0x28223BE20](v114);
        v117 = (&v429 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v118 + 16))(v117);
        sub_2297FED80(*v117, v108, v110, v111, &v453);
        __swift_destroy_boxed_opaque_existential_0(&v455);

        v119 = v453;
        v454[0] = v453;
        v120 = sub_22A4DD5EC();
        v122 = v121;
        v123 = [v40 clusterID];
        *(&v450 + 1) = v112;
        *&aBlock = v123;
        sub_229543C5C(&aBlock, &v455);
        LOBYTE(v111) = swift_isUniquelyReferenced_nonNull_native();
        v453 = v119;
        v124 = *(&v456 + 1);
        v125 = __swift_mutable_project_boxed_opaque_existential_0(&v455, *(&v456 + 1));
        v126 = *(*(v124 - 8) + 64);
        MEMORY[0x28223BE20](v125);
        v128 = (&v429 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v129 + 16))(v128);
        sub_2297FED80(*v128, v120, v122, v111, &v453);
        __swift_destroy_boxed_opaque_existential_0(&v455);

        v130 = v453;
        v454[0] = v453;
        v131 = sub_22A4DD5EC();
        v133 = v132;
        v134 = [v40 attributeID];
        if (v134)
        {
          *(&v450 + 1) = v112;
          *&aBlock = v134;
          sub_229543C5C(&aBlock, &v455);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v453 = v130;
          v136 = *(&v456 + 1);
          v137 = __swift_mutable_project_boxed_opaque_existential_0(&v455, *(&v456 + 1));
          v138 = *(*(v136 - 8) + 64);
          MEMORY[0x28223BE20](v137);
          v140 = &v429 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v141 + 16))(v140);
          sub_2297FF768(v140, v131, v133, isUniquelyReferenced_nonNull_native, &v453, v112);
          __swift_destroy_boxed_opaque_existential_0(&v455);

          v454[0] = v453;
        }

        else
        {
          sub_2297FD02C(v131, v133, sub_229543C58, sub_229897D20, &aBlock);

          sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
        }

        v142 = sub_22A4DD5EC();
        v144 = v143;
        if ([v443 value])
        {
          sub_22A4DE01C();
          swift_unknownObjectRelease();
        }

        else
        {
          v455 = 0u;
          v456 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE60, &unk_22A57A960);
        v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        sub_22A4DBA0C();
        sub_22953EAE4(&v455, &unk_27D87DE60, &unk_22A57A960);
        sub_229543C5C(&aBlock, &v455);
        v145 = v454[0];
        v146 = swift_isUniquelyReferenced_nonNull_native();
        v453 = v145;
        v147 = *(&v456 + 1);
        v148 = __swift_mutable_project_boxed_opaque_existential_0(&v455, *(&v456 + 1));
        v149 = *(*(v147 - 8) + 64);
        MEMORY[0x28223BE20](v148);
        v151 = &v429 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v152 + 16))(v151);
        sub_2297FF768(v151, v142, v144, v146, &v453, v147);
        __swift_destroy_boxed_opaque_existential_0(&v455);

        v153 = v453;
        v154 = sub_22A4DE74C();
        v155 = v154;
        if (v89)
        {
          v37 = v89;
          v156 = sub_22A4DDEDC();

          if (v156)
          {
            v157 = v444;
            sub_229564F88(v444, &aBlock, &unk_27D87FC20, &unk_22A578810);
            v158 = v431;
            if (*(&v450 + 1))
            {
              if (swift_dynamicCast())
              {
                v159 = v455;
                v160 = sub_22A4DE74C();
                if (v159)
                {
                  v161 = v160;
                  v162 = sub_22A4DDEDC();

                  if (v162)
                  {
                    v163 = v436;
                    sub_2296F8604();
                    sub_229564F88(v157, &aBlock, &unk_27D87FC20, &unk_22A578810);
                    v164 = v158;
                    v165 = sub_22A4DD05C();
                    v166 = sub_22A4DDCCC();

                    if (!os_log_type_enabled(v165, v166))
                    {

                      sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                      (*(v446 + 8))(v163, v445);
                      goto LABEL_151;
                    }

                    v444 = v112;
                    v167 = swift_slowAlloc();
                    v168 = swift_slowAlloc();
                    v169 = swift_slowAlloc();
                    v453 = v169;
                    *v167 = 136315394;
                    *&v455 = 91;
                    *(&v455 + 1) = 0xE100000000000000;
                    v170 = [v164 logIdentifier];
                    v171 = sub_22A4DD5EC();
                    v173 = v172;

                    MEMORY[0x22AAD08C0](v171, v173);

                    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                    v174 = sub_2295A3E30(v455, *(&v455 + 1), &v453);

                    *(v167 + 4) = v174;
                    *(v167 + 12) = 2112;
                    sub_229564F88(&aBlock, &v455, &unk_27D87FC20, &unk_22A578810);
                    if (*(&v456 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v175 = v448;
                        v176 = v448;
                        v177 = v446;
                        v178 = v445;
LABEL_150:
                        *(v167 + 14) = v175;
                        *v168 = v176;
                        sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                        _os_log_impl(&dword_229538000, v165, v166, "%s Cannot build RVC operational state attribute message payload: Value is running but previousValue=%@ we do not support showing bulletin for", v167, 0x16u);
                        sub_22953EAE4(v168, &qword_27D87D7D0, &unk_22A578D90);
                        MEMORY[0x22AAD4E50](v168, -1, -1);
                        __swift_destroy_boxed_opaque_existential_0(v169);
                        MEMORY[0x22AAD4E50](v169, -1, -1);
                        MEMORY[0x22AAD4E50](v167, -1, -1);

                        (*(v177 + 8))(v436, v178);
LABEL_151:
                        if (v457[0])
                        {
                          v313 = v457[0];
                          goto LABEL_131;
                        }

                        goto LABEL_190;
                      }
                    }

                    else
                    {
                      sub_22953EAE4(&v455, &unk_27D87FC20, &unk_22A578810);
                    }

                    v177 = v446;
                    v178 = v445;
                    v175 = 0;
                    v176 = 0;
                    goto LABEL_150;
                  }

                  goto LABEL_77;
                }

LABEL_76:

LABEL_77:
                v232 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                v233 = [v40 endpointID];
                v234 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                v235 = [v158 accessory];
                v192 = [objc_opt_self() PathWithAttributeID:v232 endpointID:v233 clusterID:v234 accessory:v235];

                v193 = [v158 reportFromAttributePathRead:v192 retryTimeout:1.0];
                v236 = v457[0];
                v237 = swift_allocObject();
                v237[2] = v40;
                v237[3] = v158;
                v237[4] = v236;
                v237[5] = v153;
                v237[6] = v430;
                v451 = sub_2297FFF14;
                v452 = v237;
                *&aBlock = MEMORY[0x277D85DD0];
                *(&aBlock + 1) = 1107296256;
                *&v450 = sub_229800B04;
                *(&v450 + 1) = &block_descriptor_24;
                v198 = _Block_copy(&aBlock);
                v238 = v236;
                v239 = v40;
LABEL_78:
                v240 = v158;
                goto LABEL_79;
              }
            }

            else
            {
              sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
            }

            v160 = sub_22A4DE74C();
            goto LABEL_76;
          }

          v180 = sub_22A4DE74C();
          v37 = v37;
          v181 = sub_22A4DDEDC();

          v158 = v431;
          v60 = v444;
          if (v181)
          {
            v442 = v153;
            sub_229564F88(v444, &aBlock, &unk_27D87FC20, &unk_22A578810);
            if (*(&v450 + 1))
            {
              v182 = swift_dynamicCast();
              v183 = v437;
              if (v182)
              {
                v184 = v455;
                v185 = sub_22A4DE74C();
                if (v184)
                {
                  v186 = v185;
                  v187 = sub_22A4DDEDC();

                  if (v187)
                  {
                    v188 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                    v189 = [v40 endpointID];
                    v190 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                    v191 = [v158 accessory];
                    v192 = [objc_opt_self() PathWithAttributeID:v188 endpointID:v189 clusterID:v190 accessory:v191];

                    v193 = [v158 reportFromAttributePathRead:v192 retryTimeout:1.0];
                    v194 = v457[0];
                    v195 = swift_allocObject();
                    v195[2] = v40;
                    v195[3] = v158;
                    v196 = v442;
                    v195[4] = v194;
                    v195[5] = v196;
                    v195[6] = v430;
                    v451 = sub_2297FFED8;
                    v452 = v195;
                    *&aBlock = MEMORY[0x277D85DD0];
                    *(&aBlock + 1) = 1107296256;
                    v197 = &block_descriptor_18;
LABEL_59:
                    *&v450 = sub_229800B04;
                    *(&v450 + 1) = v197;
                    v198 = _Block_copy(&aBlock);
                    v199 = v194;
                    v200 = v158;
                    v201 = v40;
LABEL_79:

                    [v193 getResultWithCompletion_];

                    _Block_release(v198);
                    goto LABEL_11;
                  }

LABEL_100:
                  sub_229564F88(v60, &aBlock, &unk_27D87FC20, &unk_22A578810);
                  if (*(&v450 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      v268 = v455;
                      v269 = sub_22A4DE74C();
                      if (v268)
                      {
                        v270 = v269;
                        v271 = sub_22A4DDEDC();

                        if (v271)
                        {
                          if (!v457[0])
                          {
LABEL_191:
                            __break(1u);
LABEL_192:
                            __break(1u);
LABEL_193:
                            __break(1u);
                            goto LABEL_194;
                          }

                          v272 = v457[0];
                          sub_2296F77EC(v442);

                          v273 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
                          v274 = sub_22A4DD47C();

                          v248 = [v273 initWithDictionary_];

                          [v272 fulfillWithValue_];
                          goto LABEL_106;
                        }

LABEL_110:
                        sub_2296F8604();
                        sub_229564F88(v60, &aBlock, &unk_27D87FC20, &unk_22A578810);
                        v275 = v158;
                        v276 = sub_22A4DD05C();
                        v277 = sub_22A4DDCCC();

                        if (!os_log_type_enabled(v276, v277))
                        {

                          sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                          (*(v446 + 8))(v183, v445);
                          goto LABEL_129;
                        }

                        v444 = v112;
                        v278 = swift_slowAlloc();
                        v279 = swift_slowAlloc();
                        v280 = swift_slowAlloc();
                        v453 = v280;
                        *v278 = 136315394;
                        *&v455 = 91;
                        *(&v455 + 1) = 0xE100000000000000;
                        v281 = [v275 logIdentifier];
                        v282 = sub_22A4DD5EC();
                        v284 = v283;

                        MEMORY[0x22AAD08C0](v282, v284);

                        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                        v285 = sub_2295A3E30(v455, *(&v455 + 1), &v453);

                        *(v278 + 4) = v285;
                        *(v278 + 12) = 2112;
                        sub_229564F88(&aBlock, &v455, &unk_27D87FC20, &unk_22A578810);
                        if (*(&v456 + 1))
                        {
                          if (swift_dynamicCast())
                          {
                            v286 = v448;
                            v287 = v448;
                            v288 = v446;
                            v289 = v445;
LABEL_128:
                            *(v278 + 14) = v286;
                            *v279 = v287;
                            sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                            _os_log_impl(&dword_229538000, v276, v277, "%s Cannot build RVC operational state attribute message payload: Value is paused but previousValue=%@ we do not support showing bulletin for", v278, 0x16u);
                            sub_22953EAE4(v279, &qword_27D87D7D0, &unk_22A578D90);
                            MEMORY[0x22AAD4E50](v279, -1, -1);
                            __swift_destroy_boxed_opaque_existential_0(v280);
                            MEMORY[0x22AAD4E50](v280, -1, -1);
                            MEMORY[0x22AAD4E50](v278, -1, -1);

                            (*(v288 + 8))(v437, v289);
LABEL_129:
                            v312 = v457[0];
                            if (v457[0])
                            {
LABEL_130:
                              v313 = v312;
LABEL_131:

                              [v313 fulfillWithNoValue];

                              goto LABEL_11;
                            }

LABEL_189:
                            __break(1u);
LABEL_190:
                            __break(1u);
                            goto LABEL_191;
                          }
                        }

                        else
                        {
                          sub_22953EAE4(&v455, &unk_27D87FC20, &unk_22A578810);
                        }

                        v288 = v446;
                        v289 = v445;
                        v286 = 0;
                        v287 = 0;
                        goto LABEL_128;
                      }

LABEL_109:

                      goto LABEL_110;
                    }
                  }

                  else
                  {
                    sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                  }

                  v269 = sub_22A4DE74C();
                  goto LABEL_109;
                }

LABEL_99:

                goto LABEL_100;
              }

LABEL_98:
              v185 = sub_22A4DE74C();
              goto LABEL_99;
            }

LABEL_97:
            sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
            v183 = v437;
            goto LABEL_98;
          }

          v211 = sub_22A4DE74C();
          v37 = v37;
          v212 = sub_22A4DDEDC();

          if (v212)
          {
            sub_229564F88(v60, &aBlock, &unk_27D87FC20, &unk_22A578810);
            v442 = v153;
            if (*(&v450 + 1))
            {
              if (swift_dynamicCast())
              {
                v213 = v455;
                v214 = sub_22A4DE74C();
                if (v213)
                {
                  v215 = v214;
                  v216 = sub_22A4DDEDC();

                  if (v216)
                  {
                    v217 = v434;
                    sub_2296F8604();
                    sub_229564F88(v444, &aBlock, &unk_27D87FC20, &unk_22A578810);
                    v218 = v158;
                    v219 = sub_22A4DD05C();
                    v220 = sub_22A4DDCCC();

                    if (os_log_type_enabled(v219, v220))
                    {
                      v444 = v112;
                      v217 = swift_slowAlloc();
                      v221 = swift_slowAlloc();
                      v222 = swift_slowAlloc();
                      v453 = v222;
                      *v217 = 136315394;
                      *&v455 = 91;
                      *(&v455 + 1) = 0xE100000000000000;
                      v223 = [v218 logIdentifier];
                      v224 = sub_22A4DD5EC();
                      v226 = v225;

                      MEMORY[0x22AAD08C0](v224, v226);

                      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                      v227 = sub_2295A3E30(v455, *(&v455 + 1), &v453);

                      *(v217 + 4) = v227;
                      *(v217 + 12) = 2112;
                      sub_229564F88(&aBlock, &v455, &unk_27D87FC20, &unk_22A578810);
                      if (*(&v456 + 1))
                      {
                        if (swift_dynamicCast())
                        {
                          v228 = v448;
                          v229 = v448;
                          v230 = v446;
                          v231 = v445;
LABEL_173:
                          *(v217 + 14) = v228;
                          *v221 = v229;
                          sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                          _os_log_impl(&dword_229538000, v219, v220, "%s Cannot build RVC operational state attribute message payload: Value is error but previousValue=%@ we do not support showing bulletin for", v217, 0x16u);
                          sub_22953EAE4(v221, &qword_27D87D7D0, &unk_22A578D90);
                          MEMORY[0x22AAD4E50](v221, -1, -1);
                          __swift_destroy_boxed_opaque_existential_0(v222);
                          MEMORY[0x22AAD4E50](v222, -1, -1);
                          MEMORY[0x22AAD4E50](v217, -1, -1);

                          (*(v230 + 8))(v434, v231);
                          goto LABEL_174;
                        }
                      }

                      else
                      {
                        sub_22953EAE4(&v455, &unk_27D87FC20, &unk_22A578810);
                      }

                      v230 = v446;
                      v231 = v445;
                      v228 = 0;
                      v229 = 0;
                      goto LABEL_173;
                    }

LABEL_158:

                    sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                    (*(v446 + 8))(v217, v445);
LABEL_174:
                    v312 = v457[0];
                    if (v457[0])
                    {
                      goto LABEL_130;
                    }

                    __break(1u);
                    goto LABEL_176;
                  }

LABEL_125:
                  v304 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                  v305 = [v40 endpointID];
                  v306 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                  v307 = [v158 accessory];
                  v192 = [objc_opt_self() PathWithAttributeID:v304 endpointID:v305 clusterID:v306 accessory:v307];

                  v193 = [v158 reportFromAttributePathRead:v192 retryTimeout:1.0];
                  v308 = v457[0];
                  sub_229564F88(v444, &v455, &unk_27D87FC20, &unk_22A578810);
                  v309 = swift_allocObject();
                  v310 = v456;
                  *(v309 + 40) = v455;
                  *(v309 + 16) = v158;
                  *(v309 + 24) = v308;
                  *(v309 + 32) = v442;
                  *(v309 + 56) = v310;
                  *(v309 + 72) = v430;
                  v451 = sub_2297FFEC4;
                  v452 = v309;
                  *&aBlock = MEMORY[0x277D85DD0];
                  *(&aBlock + 1) = 1107296256;
                  *&v450 = sub_229800B04;
                  *(&v450 + 1) = &block_descriptor_12;
                  v198 = _Block_copy(&aBlock);
                  v311 = v308;
                  goto LABEL_78;
                }

LABEL_124:

                goto LABEL_125;
              }
            }

            else
            {
              sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
            }

            v214 = sub_22A4DE74C();
            goto LABEL_124;
          }

          v241 = sub_22A4DE74C();
          v242 = v37;
          v243 = sub_22A4DDEDC();

          if (v243)
          {
            v244 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
            v245 = [v40 endpointID];
            v246 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
            v247 = [v158 accessory];
            v248 = [objc_opt_self() PathWithAttributeID:v244 endpointID:v245 clusterID:v246 accessory:v247];

            v37 = [v158 reportFromAttributePathRead:v248 retryTimeout:1.0];
            v249 = v457[0];
            v250 = swift_allocObject();
            v250[2] = v40;
            v250[3] = v158;
            v250[4] = v249;
            v250[5] = v153;
            v250[6] = v430;
            v451 = sub_2297FFE88;
            v452 = v250;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v450 = sub_229800B04;
            *(&v450 + 1) = &block_descriptor_6_1;
            v251 = _Block_copy(&aBlock);
            v252 = v249;
            v253 = v158;
            v254 = v40;

            [v37 getResultWithCompletion_];

            _Block_release(v251);
LABEL_106:

            goto LABEL_11;
          }

          v217 = sub_22A4DE74C();
          v37 = v242;
          v290 = sub_22A4DDEDC();

          if ((v290 & 1) == 0)
          {
            v217 = sub_22A4DE74C();
            v291 = v37;
            v292 = sub_22A4DDEDC();

            if ((v292 & 1) == 0)
            {

              goto LABEL_11;
            }
          }

          v442 = v153;
          sub_229564F88(v60, &aBlock, &unk_27D87FC20, &unk_22A578810);
          if (*(&v450 + 1))
          {
            v293 = swift_dynamicCast();
            v294 = v435;
            if (v293)
            {
              v295 = v455;
              v296 = sub_22A4DE74C();
              if (v295)
              {
                v217 = v296;
                v297 = sub_22A4DDEDC();

                if (v297)
                {
                  v298 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                  v299 = [v40 endpointID];
                  v300 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                  v301 = [v158 accessory];
                  v192 = [objc_opt_self() PathWithAttributeID:v298 endpointID:v299 clusterID:v300 accessory:v301];

                  v193 = [v158 reportFromAttributePathRead:v192 retryTimeout:1.0];
                  v194 = v457[0];
                  v302 = swift_allocObject();
                  v302[2] = v40;
                  v302[3] = v158;
                  v303 = v442;
                  v302[4] = v194;
                  v302[5] = v303;
                  v302[6] = v430;
                  v451 = sub_2297FFE4C;
                  v452 = v302;
                  *&aBlock = MEMORY[0x277D85DD0];
                  *(&aBlock + 1) = 1107296256;
                  v197 = &block_descriptor_41;
                  goto LABEL_59;
                }

LABEL_142:
                sub_2296F8604();
                sub_229564F88(v60, &aBlock, &unk_27D87FC20, &unk_22A578810);
                v314 = v158;
                v219 = sub_22A4DD05C();
                v315 = sub_22A4DDCCC();

                if (!os_log_type_enabled(v219, v315))
                {

                  sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                  (*(v446 + 8))(v294, v445);
LABEL_156:
                  v312 = v457[0];
                  if (v457[0])
                  {
                    goto LABEL_130;
                  }

                  __break(1u);
                  goto LABEL_158;
                }

                v444 = v112;
                v217 = swift_slowAlloc();
                v316 = swift_slowAlloc();
                v317 = swift_slowAlloc();
                v453 = v317;
                *v217 = 136315394;
                *&v455 = 91;
                *(&v455 + 1) = 0xE100000000000000;
                v318 = [v314 logIdentifier];
                v319 = sub_22A4DD5EC();
                v321 = v320;

                MEMORY[0x22AAD08C0](v319, v321);

                MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                v322 = sub_2295A3E30(v455, *(&v455 + 1), &v453);

                *(v217 + 4) = v322;
                *(v217 + 12) = 2112;
                sub_229564F88(&aBlock, &v455, &unk_27D87FC20, &unk_22A578810);
                if (*(&v456 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v323 = v448;
                    v324 = v448;
                    v325 = v446;
                    v326 = v445;
LABEL_155:
                    *(v217 + 14) = v323;
                    *v316 = v324;
                    sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                    _os_log_impl(&dword_229538000, v219, v315, "%s Cannot build RVC operational state attribute message payload: Value is charging or docked but previousValue=%@ we do not support showing bulletin for", v217, 0x16u);
                    sub_22953EAE4(v316, &qword_27D87D7D0, &unk_22A578D90);
                    MEMORY[0x22AAD4E50](v316, -1, -1);
                    __swift_destroy_boxed_opaque_existential_0(v317);
                    MEMORY[0x22AAD4E50](v317, -1, -1);
                    MEMORY[0x22AAD4E50](v217, -1, -1);

                    (*(v325 + 8))(v435, v326);
                    goto LABEL_156;
                  }
                }

                else
                {
                  sub_22953EAE4(&v455, &unk_27D87FC20, &unk_22A578810);
                }

                v325 = v446;
                v326 = v445;
                v323 = 0;
                v324 = 0;
                goto LABEL_155;
              }

LABEL_141:

              goto LABEL_142;
            }
          }

          else
          {
            sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
            v294 = v435;
          }

          v296 = sub_22A4DE74C();
          goto LABEL_141;
        }

        v179 = sub_22A4DE74C();

LABEL_11:
        v57 = *MEMORY[0x277D85DE8];
        return;
      }

LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

LABEL_25:
    sub_2296F8604();
    v80 = v431;
    v81 = sub_22A4DD05C();
    v82 = sub_22A4DDCCC();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v455 = v84;
      *v83 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v85 = [v80 logIdentifier];
      v86 = sub_22A4DD5EC();
      v40 = v87;

      MEMORY[0x22AAD08C0](v86, v40);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v88 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v455);

      *(v83 + 4) = v88;
      _os_log_impl(&dword_229538000, v81, v82, "%s Cannot build matter attribute message payload for operational state: previous value is nil", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x22AAD4E50](v84, -1, -1);
      MEMORY[0x22AAD4E50](v83, -1, -1);
    }

    (*(v446 + 8))(v33, v445);
    v56 = v457[0];
    if (!v457[0])
    {
      __break(1u);
      goto LABEL_29;
    }

LABEL_10:
    [v56 fulfillWithNoValue];
    goto LABEL_11;
  }

  v58 = [a1 attributeID];
  if (!v58)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  v59 = v58;
  v60 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v61 = [v59 isEqualToNumber_];

  if (!v61)
  {
    v68 = v439;
    sub_2296F8604();
    v69 = v431;
    v70 = a1;
    v71 = sub_22A4DD05C();
    v72 = sub_22A4DDCCC();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v455 = v40;
      *v73 = 136315394;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v75 = [v69 logIdentifier];
      v76 = sub_22A4DD5EC();
      v33 = v77;

      MEMORY[0x22AAD08C0](v76, v33);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v78 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v455);

      *(v73 + 4) = v78;
      *(v73 + 12) = 2112;
      v79 = [v70 attributeID];
      *(v73 + 14) = v79;
      *v74 = v79;
      _os_log_impl(&dword_229538000, v71, v72, "%s Cannot build RVC cluster attribute message payload: We do not support bulletin for attributeID=%@", v73, 0x16u);
      sub_22953EAE4(v74, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v74, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v73, -1, -1);
    }

    (*(v446 + 8))(v68, v445);
    v56 = v457[0];
    if (v457[0])
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (!*(v444 + 3))
  {
    sub_2296F8604();
    v202 = v431;
    v203 = sub_22A4DD05C();
    v60 = sub_22A4DDCCC();

    if (os_log_type_enabled(v203, v60))
    {
      v204 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      *&v455 = v205;
      *v204 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v206 = [v202 logIdentifier];
      v207 = sub_22A4DD5EC();
      v209 = v208;

      MEMORY[0x22AAD08C0](v207, v209);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v210 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v455);

      *(v204 + 4) = v210;
      _os_log_impl(&dword_229538000, v203, v60, "%s Cannot build matter attribute message payload for operational error: previous value is nil", v204, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v205);
      MEMORY[0x22AAD4E50](v205, -1, -1);
      MEMORY[0x22AAD4E50](v204, -1, -1);
    }

    (*(v446 + 8))(v23, v445);
    v56 = v457[0];
    if (v457[0])
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_64;
  }

  sub_229564F88(v444, v454, &unk_27D87FC20, &unk_22A578810);
  if (!v454[3])
  {
LABEL_64:
    sub_22953EAE4(v454, &unk_27D87FC20, &unk_22A578810);
    goto LABEL_89;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DED0, &qword_22A57A940);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_89:
    v455 = 0u;
    v456 = 0u;
LABEL_90:
    sub_22953EAE4(&v455, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_91;
  }

  if (!v453[2])
  {

    goto LABEL_89;
  }

  v62 = v453[4];

  v63 = *MEMORY[0x277CD50D8];
  v64 = sub_22A4DD5EC();
  if (*(v62 + 16) && (v66 = sub_229543DBC(v64, v65), (v67 & 1) != 0))
  {
    sub_2295404B0(*(v62 + 56) + 32 * v66, &v455);
  }

  else
  {
    v455 = 0u;
    v456 = 0u;
  }

  if (!*(&v456 + 1))
  {
    goto LABEL_90;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_91:
    aBlock = 0u;
    v450 = 0u;
LABEL_92:
    sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_93;
  }

  v255 = v454[0];
  v256 = *MEMORY[0x277CD51A0];
  v257 = sub_22A4DD5EC();
  if (v255[2] && (v259 = sub_229543DBC(v257, v258), (v260 & 1) != 0))
  {
    sub_2295404B0(v255[7] + 32 * v259, &aBlock);
  }

  else
  {
    aBlock = 0u;
    v450 = 0u;
  }

  if (!*(&v450 + 1))
  {
    goto LABEL_92;
  }

  if ((swift_dynamicCast() & 1) == 0 || !v455)
  {
LABEL_93:
    v158 = v438;
    sub_2296F8604();
    v112 = v431;
    v261 = sub_22A4DD05C();
    v262 = sub_22A4DDCCC();

    if (os_log_type_enabled(v261, v262))
    {
      v60 = swift_slowAlloc();
      v263 = swift_slowAlloc();
      *&v455 = v263;
      *v60 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v264 = [v112 logIdentifier];
      v265 = sub_22A4DD5EC();
      v267 = v266;

      MEMORY[0x22AAD08C0](v265, v267);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v112 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v455);

      *(v60 + 1) = v112;
      _os_log_impl(&dword_229538000, v261, v262, "%s Cannot build RVC operational error attribute message payload: previousValue=nil (error), or previousValue=0 (we handle this case with operational state attribute change)", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v263);
      MEMORY[0x22AAD4E50](v263, -1, -1);
      MEMORY[0x22AAD4E50](v60, -1, -1);
    }

    (*(v446 + 8))(v158, v445);
    v56 = v457[0];
    if (!v457[0])
    {
      __break(1u);
      goto LABEL_97;
    }

    goto LABEL_10;
  }

  if ([v443 value])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v455 = 0u;
    v456 = 0u;
  }

  aBlock = v455;
  v450 = v456;
  if (!*(&v456 + 1))
  {
    sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
LABEL_167:
    v344 = v433;
    sub_2296F8604();
    v345 = v431;
    v346 = sub_22A4DD05C();
    v347 = sub_22A4DDCEC();

    if (os_log_type_enabled(v346, v347))
    {
      v348 = swift_slowAlloc();
      v349 = swift_slowAlloc();
      *&v455 = v349;
      *v348 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v350 = [v345 logIdentifier];
      v351 = sub_22A4DD5EC();
      v353 = v352;

      MEMORY[0x22AAD08C0](v351, v353);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v354 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v455);

      *(v348 + 4) = v354;
      _os_log_impl(&dword_229538000, v346, v347, "%s report.value is not a MTRRVCOperationalStateClusterErrorStateStruct", v348, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v349);
      MEMORY[0x22AAD4E50](v349, -1, -1);
      MEMORY[0x22AAD4E50](v348, -1, -1);
    }

    (*(v446 + 8))(v344, v445);
    v355 = v457[0];
    if (v457[0])
    {
      type metadata accessor for HMError(0);
      *&v455 = 3;
      v356 = v355;
      sub_22956AD8C(MEMORY[0x277D84F90]);
      sub_2297FFF94(&qword_27D87D7C0, type metadata accessor for HMError);
      sub_22A4DB3CC();
      v357 = aBlock;
      v358 = sub_22A4DB3DC();

      [v356 rejectWithError_];
      goto LABEL_11;
    }

    goto LABEL_192;
  }

  sub_229562F68(0, &qword_27D8815A8, 0x277CD54A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_167;
  }

  v327 = v454[0];
  v328 = [v454[0] errorStateID];
  v329 = [v328 integerValue];

  if (v329 < 64 || (v330 = [v327 errorStateID], v331 = objc_msgSend(v330, sel_integerValue), v330, v331 >= 72))
  {
    v37 = v432;
    sub_2296F8604();
    v332 = v327;
    v333 = v431;
    v219 = v332;
    v217 = sub_22A4DD05C();
    v334 = sub_22A4DDCCC();

    if (os_log_type_enabled(v217, v334))
    {
      v335 = swift_slowAlloc();
      v336 = swift_slowAlloc();
      *&v455 = v336;
      *v335 = 136315394;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v337 = [v333 logIdentifier];
      v338 = sub_22A4DD5EC();
      v340 = v339;

      MEMORY[0x22AAD08C0](v338, v340);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v341 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v455);

      *(v335 + 4) = v341;
      *(v335 + 12) = 2048;
      v342 = [v219 &selRef___handleRemovedRemoteAccount_ + 2];
      v343 = [v342 integerValue];

      *(v335 + 14) = v343;
      _os_log_impl(&dword_229538000, v217, v334, "%s Cannot build RVC operational error attribute message payload: value=%ld which we do not support for bulletin", v335, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v336);
      MEMORY[0x22AAD4E50](v336, -1, -1);
      MEMORY[0x22AAD4E50](v335, -1, -1);

      goto LABEL_177;
    }

LABEL_176:

LABEL_177:
    (*(v446 + 8))(v37, v445);
    if (v457[0])
    {
      v359 = v457[0];
      [v359 fulfillWithNoValue];

      goto LABEL_11;
    }

    goto LABEL_193;
  }

  v454[0] = MEMORY[0x277D84F98];
  v360 = sub_22A4DD5EC();
  v362 = v361;
  v363 = [a1 accessory];
  if (!v363)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  v364 = v363;
  v365 = [v363 uuid];

  v366 = v440;
  sub_22A4DB79C();

  v367 = sub_22A4DB76C();
  v369 = v368;
  (*(v441 + 8))(v366, v442);
  *(&v450 + 1) = MEMORY[0x277D837D0];
  *&aBlock = v367;
  *(&aBlock + 1) = v369;
  sub_229543C5C(&aBlock, &v455);
  v370 = v454[0];
  LOBYTE(v369) = swift_isUniquelyReferenced_nonNull_native();
  v453 = v370;
  v371 = *(&v456 + 1);
  v372 = __swift_mutable_project_boxed_opaque_existential_0(&v455, *(&v456 + 1));
  v373 = *(*(v371 - 8) + 64);
  MEMORY[0x28223BE20](v372);
  v375 = (&v429 - ((v374 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v376 + 16))(v375);
  sub_2297FE940(*v375, v375[1], v360, v362, v369, &v453);
  __swift_destroy_boxed_opaque_existential_0(&v455);

  v377 = v453;
  v454[0] = v453;
  v378 = sub_22A4DD5EC();
  v380 = v379;
  v381 = [a1 endpointID];
  v382 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *(&v450 + 1) = v382;
  *&aBlock = v381;
  sub_229543C5C(&aBlock, &v455);
  LOBYTE(v381) = swift_isUniquelyReferenced_nonNull_native();
  v453 = v377;
  v383 = *(&v456 + 1);
  v384 = __swift_mutable_project_boxed_opaque_existential_0(&v455, *(&v456 + 1));
  v385 = *(*(v383 - 8) + 64);
  MEMORY[0x28223BE20](v384);
  v387 = (&v429 - ((v386 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v388 + 16))(v387);
  sub_2297FED80(*v387, v378, v380, v381, &v453);
  __swift_destroy_boxed_opaque_existential_0(&v455);

  v389 = v453;
  v454[0] = v453;
  v390 = sub_22A4DD5EC();
  v392 = v391;
  v393 = [a1 clusterID];
  *(&v450 + 1) = v382;
  *&aBlock = v393;
  sub_229543C5C(&aBlock, &v455);
  LOBYTE(v381) = swift_isUniquelyReferenced_nonNull_native();
  v453 = v389;
  v394 = *(&v456 + 1);
  v395 = __swift_mutable_project_boxed_opaque_existential_0(&v455, *(&v456 + 1));
  v396 = *(*(v394 - 8) + 64);
  MEMORY[0x28223BE20](v395);
  v398 = (&v429 - ((v397 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v399 + 16))(v398);
  sub_2297FED80(*v398, v390, v392, v381, &v453);
  __swift_destroy_boxed_opaque_existential_0(&v455);

  v400 = v453;
  v454[0] = v453;
  v401 = sub_22A4DD5EC();
  v403 = v402;
  v404 = [a1 attributeID];
  if (v404)
  {
    *(&v450 + 1) = v382;
    *&aBlock = v404;
    sub_229543C5C(&aBlock, &v455);
    v405 = swift_isUniquelyReferenced_nonNull_native();
    v453 = v400;
    v406 = *(&v456 + 1);
    v407 = __swift_mutable_project_boxed_opaque_existential_0(&v455, *(&v456 + 1));
    v408 = *(*(v406 - 8) + 64);
    MEMORY[0x28223BE20](v407);
    v410 = &v429 - ((v409 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v411 + 16))(v410);
    sub_2297FF768(v410, v401, v403, v405, &v453, v382);
    __swift_destroy_boxed_opaque_existential_0(&v455);

    v412 = v453;
    v454[0] = v453;
  }

  else
  {
    sub_2297FD02C(v401, v403, sub_229543C58, sub_229897D20, &aBlock);

    sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
    v412 = v454[0];
  }

  v413 = sub_22A4DD5EC();
  v415 = v414;
  v416 = [v327 errorStateID];
  *(&v450 + 1) = v382;
  *&aBlock = v416;
  sub_229543C5C(&aBlock, &v455);
  v417 = swift_isUniquelyReferenced_nonNull_native();
  v453 = v412;
  v418 = *(&v456 + 1);
  v419 = __swift_mutable_project_boxed_opaque_existential_0(&v455, *(&v456 + 1));
  v420 = *(*(v418 - 8) + 64);
  MEMORY[0x28223BE20](v419);
  v422 = (&v429 - ((v421 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v423 + 16))(v422);
  sub_2297FED80(*v422, v413, v415, v417, &v453);
  __swift_destroy_boxed_opaque_existential_0(&v455);

  if (v457[0])
  {
    v424 = v453;
    v425 = v457[0];
    sub_2296F77EC(v424);

    v426 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v427 = sub_22A4DD47C();

    v428 = [v426 initWithDictionary_];

    [v425 fulfillWithValue_];
    goto LABEL_11;
  }

LABEL_195:
  __break(1u);
}

void sub_2297F64D4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_22A4DD07C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v22 = &v49 - v21;
  if (a2)
  {
    v50 = v20;
    sub_2296F8604();
    v23 = a3;
    v24 = a2;
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCEC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v27 = 136315394;
      v51 = 91;
      v52 = 0xE100000000000000;
      v53 = v29;
      v30 = [v23 logIdentifier];
      v31 = sub_22A4DD5EC();
      v49 = v14;
      v33 = v32;

      MEMORY[0x22AAD08C0](v31, v33);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v34 = sub_2295A3E30(v51, v52, &v53);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2112;
      v35 = a2;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v36;
      *v28 = v36;
      _os_log_impl(&dword_229538000, v25, v26, "%s Error getting attribute changed message payload, returning. error=%@", v27, 0x16u);
      sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);

      (*(v50 + 8))(v22, v49);
    }

    else
    {

      (*(v50 + 8))(v22, v14);
    }
  }

  else if (a1)
  {
    MEMORY[0x28223BE20](v19);
    *(&v49 - 6) = a5;
    *(&v49 - 5) = a1;
    *(&v49 - 4) = a3;
    *(&v49 - 3) = a6;
    *(&v49 - 2) = a7;
    sub_229839B44(sub_2298005BC, (&v49 - 8), a4);
  }

  else
  {
    v37 = v20;
    sub_2296F8604();
    v38 = a3;
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCCC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 136315138;
      v51 = 91;
      v52 = 0xE100000000000000;
      v53 = v42;
      v43 = [v38 logIdentifier];
      v49 = v14;
      v44 = v43;
      v45 = sub_22A4DD5EC();
      v47 = v46;

      MEMORY[0x22AAD08C0](v45, v47);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v48 = sub_2295A3E30(v51, v52, &v53);

      *(v41 + 4) = v48;
      _os_log_impl(&dword_229538000, v39, v40, "%s Not sending attribute changed message, nil payload, returning.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x22AAD4E50](v42, -1, -1);
      MEMORY[0x22AAD4E50](v41, -1, -1);

      (*(v37 + 8))(v18, v49);
    }

    else
    {

      (*(v37 + 8))(v18, v14);
    }
  }
}

void sub_2297F6978(void **a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v97 = a5;
  v91 = a6;
  v92 = a4;
  v9 = sub_22A4DB7DC();
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = v94[8];
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v84 - v13;
  v96 = sub_22A4DD07C();
  v93 = *(v96 - 8);
  v15 = *(v93 + 64);
  v16 = MEMORY[0x28223BE20](v96);
  v90 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v84 - v18;
  v20 = *a1;
  v21 = objc_allocWithZone(HMDRemoteDeviceMessageDestination);
  v22 = sub_22A4DB77C();
  v98 = [v21 initWithTarget:v22 device:v20];

  if (a3)
  {
    v99 = 0;
    v23 = @"HMDAccessoryMatterAttributeMessageName";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v24 = a3;
    sub_22A4DD48C();
    if (v99)
    {
      v25 = v14;
      v26 = v98;
      v27 = v98;
      v28 = sub_22A4DD47C();
      v29 = v26;
      v14 = v25;

      goto LABEL_6;
    }
  }

  else
  {
    v24 = 0;
    v30 = @"HMDAccessoryMatterAttributeMessageName";
  }

  v29 = v98;
  v31 = v98;
  v28 = 0;
LABEL_6:
  v32 = [objc_allocWithZone(HMDRemoteMessage) initWithName:@"HMDAccessoryMatterAttributeMessageName" destination:v29 payload:v28];

  if ([v20 isCurrentDevice])
  {
    v95 = v32;
    sub_2296F8604();
    v33 = v24;
    v34 = v24;
    v35 = v92;
    v36 = sub_22A4DD05C();
    v37 = sub_22A4DDCCC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v91 = v33;
      v39 = v38;
      v92 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v101 = v94;
      *v39 = 136315394;
      v99 = 91;
      v100 = 0xE100000000000000;
      v40 = [v35 logIdentifier];
      v41 = sub_22A4DD5EC();
      v42 = v93;
      v43 = v41;
      v97 = v35;
      v45 = v44;

      MEMORY[0x22AAD08C0](v43, v45);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v46 = sub_2295A3E30(v99, v100, &v101);

      *(v39 + 4) = v46;
      v35 = v97;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v34;
      v47 = v92;
      *v92 = v91;
      v48 = v34;
      _os_log_impl(&dword_229538000, v36, v37, "%s Calling handleMatterAttributeMessage (Showing notification on THIS Apple TV) with payload=%@", v39, 0x16u);
      sub_22953EAE4(v47, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v47, -1, -1);
      v49 = v94;
      __swift_destroy_boxed_opaque_existential_0(v94);
      MEMORY[0x22AAD4E50](v49, -1, -1);
      MEMORY[0x22AAD4E50](v39, -1, -1);

      (*(v42 + 8))(v19, v96);
    }

    else
    {

      (*(v93 + 8))(v19, v96);
    }

    v83 = &selRef_handleMatterAttributeMessage_;
    v29 = v98;
    v32 = v95;
  }

  else
  {
    v50 = v90;
    sub_2296F8604();
    (v94[2])(v14, a2, v95);
    v91 = v24;
    v51 = v24;
    v52 = v20;
    v53 = v92;
    v54 = sub_22A4DD05C();
    v55 = sub_22A4DDCCC();
    v92 = v51;

    v88 = v55;
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v101 = v87;
      *v56 = 136315906;
      v99 = 91;
      v100 = 0xE100000000000000;
      v57 = [v53 logIdentifier];
      v85 = v54;
      v58 = v57;
      v59 = sub_22A4DD5EC();
      v61 = v60;

      MEMORY[0x22AAD08C0](v59, v61);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v62 = sub_2295A3E30(v99, v100, &v101);

      *(v56 + 4) = v62;
      *(v56 + 12) = 2080;
      sub_2297FFF94(&qword_281403860, MEMORY[0x277CC95F0]);
      v63 = v95;
      v64 = sub_22A4DE5CC();
      v66 = v65;
      v67 = v14;
      v68 = v94[1];
      v68(v67, v63);
      v69 = sub_2295A3E30(v64, v66, &v101);

      *(v56 + 14) = v69;
      *(v56 + 22) = 2080;
      v70 = [v52 identifier];
      v71 = v89;
      sub_22A4DB79C();

      v72 = sub_22A4DE5CC();
      v74 = v73;
      v68(v71, v63);
      v75 = sub_2295A3E30(v72, v74, &v101);

      *(v56 + 24) = v75;
      *(v56 + 32) = 2112;
      v77 = v91;
      v76 = v92;
      *(v56 + 34) = v92;
      v78 = v86;
      *v86 = v77;
      v79 = v76;
      v80 = v85;
      _os_log_impl(&dword_229538000, v85, v88, "%s Sending bulletin attribute message to target=%s for device=%s with payload=%@", v56, 0x2Au);
      sub_22953EAE4(v78, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v78, -1, -1);
      v81 = v87;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v81, -1, -1);
      v82 = v56;
      v29 = v98;
      MEMORY[0x22AAD4E50](v82, -1, -1);

      (*(v93 + 8))(v90, v96);
    }

    else
    {

      (v94[1])(v14, v95);
      (*(v93 + 8))(v50, v96);
    }

    v83 = &selRef_sendMessage_;
    v35 = v97;
  }

  [v35 *v83];
}

void sub_2297F71C0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_22A4DD07C();
  v58 = *(v15 - 8);
  v59 = v15;
  v16 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v56 - v20;
  if (a1)
  {
    if ([a1 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v65 = 0u;
      v66 = 0u;
    }

    aBlock = v65;
    v61 = v66;
    v57 = a5;
    if (*(&v66 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815F8, &qword_22A5845A0);
      if (swift_dynamicCast())
      {
        v34 = v65;
        v35 = MEMORY[0x277D84F90];
        *&v65 = MEMORY[0x277D84F90];
        if (v34)
        {
          v36 = a3;
          sub_229800018(v34, v36, &v65, &qword_27D881600, 0x277CD54D0);

          v35 = v65;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    }

    v35 = MEMORY[0x277D84F90];
    *&v65 = MEMORY[0x277D84F90];
LABEL_14:
    v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
    *&aBlock = v37;
    MEMORY[0x28223BE20](v37);
    *(&v56 - 2) = &aBlock;
    v38 = sub_22986A7C8(sub_2298003A8, (&v56 - 4), v35);

    if (v38)
    {
      v39 = [a6 endpointID];
      v40 = sub_2297EF658(v39);

      v41 = swift_allocObject();
      v41[2] = a4;
      v41[3] = a7;
      v42 = v57;
      v41[4] = v57;
      v41[5] = a8;
      v62 = sub_2298003C8;
      v63 = v41;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v61 = sub_229800B04;
      *(&v61 + 1) = &block_descriptor_70;
      v43 = _Block_copy(&aBlock);
      v44 = v42;
      v45 = a4;

      [v40 getResultWithCompletion_];
      _Block_release(v43);
    }

    else
    {
      sub_2296F8604();
      v46 = a4;
      v47 = sub_22A4DD05C();
      v48 = sub_22A4DDCCC();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v64 = v50;
        *v49 = 136315138;
        *&aBlock = 91;
        *(&aBlock + 1) = 0xE100000000000000;
        v51 = [v46 logIdentifier];
        v52 = sub_22A4DD5EC();
        v54 = v53;

        MEMORY[0x22AAD08C0](v52, v54);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v55 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v64);

        *(v49 + 4) = v55;
        _os_log_impl(&dword_229538000, v47, v48, "%s RVC is not cleaning (probably mapping). Not showing cleaning started notification", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x22AAD4E50](v50, -1, -1);
        MEMORY[0x22AAD4E50](v49, -1, -1);
      }

      (*(v58 + 8))(v21, v59);
      [v57 fulfillWithNoValue];
    }

    return;
  }

  sub_2296F8604();
  v22 = a4;
  v23 = sub_22A4DD05C();
  v24 = sub_22A4DDCEC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v65 = v26;
    *v25 = 136315138;
    *&aBlock = 91;
    *(&aBlock + 1) = 0xE100000000000000;
    v27 = [v22 logIdentifier];
    v28 = a5;
    v29 = sub_22A4DD5EC();
    v31 = v30;

    v32 = v29;
    a5 = v28;
    MEMORY[0x22AAD08C0](v32, v31);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v33 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v65);

    *(v25 + 4) = v33;
    _os_log_impl(&dword_229538000, v23, v24, "%s Reading supported run modes path returned nil value", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v25, -1, -1);
  }

  (*(v58 + 8))(v19, v59);
  [a5 fulfillWithNoValue];
}

void sub_2297F77FC(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  if (a2)
  {
    sub_2296F8604();
    v18 = a3;
    v19 = a2;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v71 = v11;
      v23 = v22;
      v69 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v70 = v24;
      *v23 = 136315394;
      v73 = v24;
      v74 = 91;
      v75 = 0xE100000000000000;
      v25 = [v18 logIdentifier];
      v26 = sub_22A4DD5EC();
      v72 = v10;
      v27 = v26;
      v68 = v21;
      v28 = a1;
      v29 = a4;
      v30 = a5;
      v32 = v31;

      v67 = v20;
      MEMORY[0x22AAD08C0](v27, v32);
      a5 = v30;
      a4 = v29;
      a1 = v28;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v33 = sub_2295A3E30(v74, v75, &v73);

      *(v23 + 4) = v33;
      *(v23 + 12) = 2112;
      v34 = a2;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v35;
      v36 = v69;
      *v69 = v35;
      v37 = v67;
      _os_log_impl(&dword_229538000, v67, v68, "%s Error getting RvcCleaningPayload. error=%@", v23, 0x16u);
      sub_22953EAE4(v36, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      v38 = v70;
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);

      (v71[1])(v17, v72);
      if (!v28)
      {
        goto LABEL_12;
      }
    }

    else
    {

      (*(v11 + 8))(v17, v10);
      if (!a1)
      {
        goto LABEL_12;
      }
    }
  }

  else if (!a1)
  {
    sub_2296F8604();
    v39 = a3;
    v40 = sub_22A4DD05C();
    v41 = sub_22A4DDCEC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v72 = v10;
      v43 = v42;
      v44 = swift_slowAlloc();
      v71 = v44;
      *v43 = 136315138;
      v73 = v44;
      v74 = 91;
      v75 = 0xE100000000000000;
      v45 = [v39 logIdentifier];
      v46 = sub_22A4DD5EC();
      v47 = v11;
      v49 = v48;

      MEMORY[0x22AAD08C0](v46, v49);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v50 = sub_2295A3E30(v74, v75, &v73);

      *(v43 + 4) = v50;
      _os_log_impl(&dword_229538000, v40, v41, "%s Nil RvcCleaningPayload", v43, 0xCu);
      v51 = v71;
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x22AAD4E50](v51, -1, -1);
      MEMORY[0x22AAD4E50](v43, -1, -1);

      (*(v47 + 8))(v15, v72);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

LABEL_12:

    if (!a5)
    {
      goto LABEL_13;
    }

LABEL_10:
    sub_2296F77EC(a4);

    v63 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v64 = sub_22A4DD47C();

    v65 = [v63 initWithDictionary_];

    [a5 fulfillWithValue_];
    return;
  }

  v52 = sub_22A4DD5EC();
  v54 = v53;
  v73 = a1;
  sub_229562F68(0, &qword_27D880100, 0x277CBEAC0);

  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  sub_22A4DBA0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = a4;
  v57 = v76;
  v58 = __swift_mutable_project_boxed_opaque_existential_0(&v74, v76);
  v59 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v61 = &v66 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v62 + 16))(v61);
  sub_2297FF768(v61, v52, v54, isUniquelyReferenced_nonNull_native, &v73, v57);

  __swift_destroy_boxed_opaque_existential_0(&v74);
  a4 = v73;
  if (a5)
  {
    goto LABEL_10;
  }

LABEL_13:
}

void sub_2297F7E7C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v16 = sub_22A4DD07C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](a1);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19)
  {
    if ([v19 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
    }

    aBlock = v56;
    v53 = v57;
    if (*(&v57 + 1))
    {
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v49 = a9;
        v50 = a10;
        v48 = v56;
        v51 = a5;
        v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v34 = [a3 endpointID];
        v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v36 = [a4 accessory];
        v37 = [objc_opt_self() PathWithAttributeID:v33 endpointID:v34 clusterID:v35 accessory:v36];

        v38 = [a4 reportFromAttributePathRead:v37 retryTimeout:1.0];
        v39 = swift_allocObject();
        v41 = v48;
        v40 = v49;
        v39[2] = v48;
        v39[3] = a4;
        v42 = v51;
        v39[4] = v51;
        v39[5] = a3;
        v39[6] = a6;
        v39[7] = a7;
        v54 = v40;
        v55 = v39;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v53 = sub_229800B04;
        *(&v53 + 1) = v50;
        v43 = _Block_copy(&aBlock);
        v44 = v42;
        v45 = a3;

        v46 = v41;
        v47 = a4;

        [v38 getResultWithCompletion_];
        _Block_release(v43);
      }
    }

    else
    {
      sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    }
  }

  else
  {
    sub_2296F8604();
    v22 = a4;
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v56 = v50;
      *v25 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v26 = [v22 logIdentifier];
      v51 = a5;
      v27 = v26;
      v28 = sub_22A4DD5EC();
      v30 = v29;

      MEMORY[0x22AAD08C0](v28, v30);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v31 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v56);
      a5 = v51;

      *(v25 + 4) = v31;
      _os_log_impl(&dword_229538000, v23, v24, "%s Reading current run mode path returned nil value", v25, 0xCu);
      v32 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    (*(v17 + 8))(v21, v16);
    [a5 fulfillWithNoValue];
  }
}

void sub_2297F8320(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v73 = a5;
  v72 = sub_22A4DD07C();
  v14 = *(v72 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v72);
  v18 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v71 - v19;
  if (!a1)
  {
    sub_2296F8604();
    v21 = a4;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v81 = v25;
      *v24 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v26 = [v21 logIdentifier];
      v27 = sub_22A4DD5EC();
      v29 = v28;

      MEMORY[0x22AAD08C0](v27, v29);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v30 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v81);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_229538000, v22, v23, "%s Reading supported run modes path returned nil value", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    (*(v14 + 8))(v18, v72);
    [v73 fulfillWithNoValue];
    return;
  }

  if ([a1 value])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
  }

  aBlock = v81;
  v77 = v82;
  if (*(&v82 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815F8, &qword_22A5845A0);
    if (swift_dynamicCast())
    {
      v31 = v81;
      v80 = MEMORY[0x277D84F90];
      if (v81)
      {
        v32 = a3;
        sub_229800018(v31, v32, &v80, &qword_27D881600, 0x277CD54D0);

        v33 = v80;
      }

      else
      {
        v33 = MEMORY[0x277D84F90];
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
  }

  v33 = MEMORY[0x277D84F90];
  v80 = MEMORY[0x277D84F90];
LABEL_14:
  v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  *&aBlock = v34;
  MEMORY[0x28223BE20](v34);
  v71[-2] = &aBlock;
  v35 = sub_22986A7C8(sub_229800AAC, &v71[-4], v33);

  if ((v35 & 1) == 0)
  {
    v71[1] = v33;
    sub_2296F8604();
    v54 = a4;
    v55 = sub_22A4DD05C();
    v56 = sub_22A4DDCCC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v81 = v58;
      *v57 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v59 = [v54 logIdentifier];
      v60 = sub_22A4DD5EC();
      v62 = v61;

      MEMORY[0x22AAD08C0](v60, v62);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v63 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v81);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_229538000, v55, v56, "%s RVC is not cleaning (probably mapping). Not showing cleaning paused notification", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x22AAD4E50](v58, -1, -1);
      MEMORY[0x22AAD4E50](v57, -1, -1);
    }

    (*(v14 + 8))(v20, v72);
    [v73 fulfillWithNoValue];
LABEL_22:

    return;
  }

  v36 = [a4 rvcCleaningPayload];
  if (v36)
  {

    v75 = a7;
    v37 = sub_22A4DD5EC();
    v39 = v38;

    v40 = [a4 rvcCleaningPayload];
    if (v40)
    {
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v42 = sub_22A4DD49C();

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      *(&v77 + 1) = v43;
      *&aBlock = v42;
      sub_229543C5C(&aBlock, &v81);
      LOBYTE(v41) = swift_isUniquelyReferenced_nonNull_native();
      v74 = a7;
      v44 = *(&v82 + 1);
      v45 = __swift_mutable_project_boxed_opaque_existential_0(&v81, *(&v82 + 1));
      v46 = *(*(v44 - 8) + 64);
      MEMORY[0x28223BE20](v45);
      v48 = v71 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v48);
      sub_2297FF768(v48, v37, v39, v41, &v74, v43);

      __swift_destroy_boxed_opaque_existential_0(&v81);
      v75 = v74;
      v50 = v73;
      if (v73)
      {
LABEL_18:
        sub_2296F77EC(v75);

        v51 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
        v52 = sub_22A4DD47C();

        v53 = [v51 initWithDictionary_];

        [v50 fulfillWithValue_];

        return;
      }
    }

    else
    {
      sub_2297FD02C(v37, v39, sub_229543C58, sub_229897D20, &aBlock);

      sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
      v50 = v73;
      if (v73)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_22;
  }

  v64 = [a6 endpointID];
  v65 = sub_2297EF658(v64);

  v66 = swift_allocObject();
  v67 = v73;
  v66[2] = a4;
  v66[3] = v67;
  v66[4] = a7;
  v66[5] = a8;
  v78 = sub_22980045C;
  v79 = v66;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v77 = sub_229800B04;
  *(&v77 + 1) = &block_descriptor_83_0;
  v68 = _Block_copy(&aBlock);
  v69 = v67;

  v70 = a4;

  [v65 getResultWithCompletion_];
  _Block_release(v68);
}

void sub_2297F8C24(id *a1, void *a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v8 = *a1;
  v9 = [*a1 mode];
  LODWORD(a2) = [a2 isEqualToNumber_];

  if (a2)
  {
    v10 = [v8 modeTags];
    v11 = sub_22A4DD83C();

    v12 = v11;
    v23 = MEMORY[0x277D84F90];
    v13 = *(v11 + 16);
    if (v13)
    {
      v14 = v12 + 32;
      v15 = MEMORY[0x277D84F90];
      do
      {
        sub_2295404B0(v14, v22);
        sub_2295404B0(v22, v21);
        sub_229562F68(0, a4, a5);
        if (swift_dynamicCast())
        {
          v16 = [v20 value];

          v17 = __swift_destroy_boxed_opaque_existential_0(v22);
          if (v16)
          {
            MEMORY[0x22AAD09E0](v17);
            if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v18 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22A4DD85C();
            }

            sub_22A4DD87C();
            v15 = v23;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v22);
        }

        v14 += 32;
        --v13;
      }

      while (v13);
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }

    v19 = sub_22986A2BC(v15);

    sub_2296F1108(v19);
  }
}

void sub_2297F8E38(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  if (!a2)
  {
    if (a1)
    {
      goto LABEL_9;
    }

    sub_2296F8604();
    v39 = a3;
    v40 = sub_22A4DD05C();
    v41 = sub_22A4DDCCC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v72 = v10;
      v43 = v42;
      v44 = swift_slowAlloc();
      v71 = v44;
      *v43 = 136315138;
      v73 = v44;
      v74 = 91;
      v75 = 0xE100000000000000;
      v45 = [v39 logIdentifier];
      v46 = sub_22A4DD5EC();
      v47 = v11;
      v49 = v48;

      MEMORY[0x22AAD08C0](v46, v49);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v50 = sub_2295A3E30(v74, v75, &v73);

      *(v43 + 4) = v50;
      _os_log_impl(&dword_229538000, v40, v41, "%s Nil RvcCleaningPayload, returning.", v43, 0xCu);
      v51 = v71;
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x22AAD4E50](v51, -1, -1);
      MEMORY[0x22AAD4E50](v43, -1, -1);

      (*(v47 + 8))(v15, v72);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    [a4 fulfillWithNoValue];
LABEL_13:

    if (a4)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_2296F8604();
  v18 = a3;
  v19 = a2;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCEC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v71 = v11;
    v23 = v22;
    v69 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v70 = v24;
    *v23 = 136315394;
    v73 = v24;
    v74 = 91;
    v75 = 0xE100000000000000;
    v25 = [v18 logIdentifier];
    v26 = sub_22A4DD5EC();
    v72 = v10;
    v27 = v26;
    v68 = v21;
    v28 = a1;
    v29 = a5;
    v30 = a4;
    v32 = v31;

    v67 = v20;
    MEMORY[0x22AAD08C0](v27, v32);
    a4 = v30;
    a5 = v29;
    a1 = v28;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v33 = sub_2295A3E30(v74, v75, &v73);

    *(v23 + 4) = v33;
    *(v23 + 12) = 2112;
    v34 = a2;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v35;
    v36 = v69;
    *v69 = v35;
    v37 = v67;
    _os_log_impl(&dword_229538000, v67, v68, "%s Error getting RvcCleaningPayload, returning. error=%@", v23, 0x16u);
    sub_22953EAE4(v36, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v36, -1, -1);
    v38 = v70;
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x22AAD4E50](v38, -1, -1);
    MEMORY[0x22AAD4E50](v23, -1, -1);

    (v71[1])(v17, v72);
  }

  else
  {

    (*(v11 + 8))(v17, v10);
  }

  [a4 fulfillWithNoValue];
  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_9:
  v52 = sub_22A4DD5EC();
  v54 = v53;
  v73 = a1;
  sub_229562F68(0, &qword_27D880100, 0x277CBEAC0);

  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  sub_22A4DBA0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = a5;
  v57 = v76;
  v58 = __swift_mutable_project_boxed_opaque_existential_0(&v74, v76);
  v59 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v61 = &v66 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v62 + 16))(v61);
  sub_2297FF768(v61, v52, v54, isUniquelyReferenced_nonNull_native, &v73, v57);

  __swift_destroy_boxed_opaque_existential_0(&v74);
  a5 = v73;
  if (a4)
  {
LABEL_10:
    sub_2296F77EC(a5);

    v63 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v64 = sub_22A4DD47C();

    v65 = [v63 initWithDictionary_];

    [a4 fulfillWithValue_];
    return;
  }

LABEL_14:
}

void sub_2297F94D4(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_22A4DD07C();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = &v75 - v18;
  if (!a2)
  {
    if (!a1)
    {
      return;
    }

    v79 = v17;
    if ([a1 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
    }

    v83 = v81;
    v84 = v82;
    if (*(&v82 + 1))
    {
      sub_229562F68(0, &qword_27D8815A8, 0x277CD54A8);
      if (swift_dynamicCast())
      {
        v38 = v81;
        v39 = [v81 errorStateID];
        if (v39)
        {
          v40 = v39;
          v79 = sub_22A4DD5EC();
          v42 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22A5761A0;
          *(inited + 32) = sub_22A4DD5EC();
          *(inited + 40) = v44;
          *(inited + 72) = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
          *(inited + 48) = v40;
          *(inited + 80) = sub_22A4DD5EC();
          *(inited + 88) = v45;
          v46 = a4;
          *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FC20, &unk_22A578810);
          v47 = swift_allocObject();
          *(inited + 96) = v47;
          sub_229564F88(a6, v47 + 16, &unk_27D87FC20, &unk_22A578810);

          v48 = v40;
          v49 = sub_22956AC5C(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
          swift_arrayDestroy();
          *(&v84 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
          *&v83 = v49;
          sub_229543C5C(&v83, &v81);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = a5;
          v51 = *(&v82 + 1);
          v52 = __swift_mutable_project_boxed_opaque_existential_0(&v81, *(&v82 + 1));
          v53 = *(*(v51 - 8) + 64);
          MEMORY[0x28223BE20](v52);
          v55 = (&v75 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v56 + 16))(v55);
          sub_2297FEB50(*v55, v79, v42, isUniquelyReferenced_nonNull_native, &v80, &unk_27D87C370, &qword_22A578090);

          __swift_destroy_boxed_opaque_existential_0(&v81);
          if (!v46)
          {

            return;
          }

          sub_2296F77EC(v80);

          v57 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
          v58 = sub_22A4DD47C();

          v59 = [v57 initWithDictionary_];

          [v46 fulfillWithValue_];
          goto LABEL_23;
        }

LABEL_18:
        sub_2296F8604();
        v60 = a3;
        v61 = sub_22A4DD05C();
        v62 = sub_22A4DDCEC();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *&v81 = v77;
          *v63 = 136315138;
          *&v83 = 91;
          *(&v83 + 1) = 0xE100000000000000;
          v64 = [v60 logIdentifier];
          v65 = sub_22A4DD5EC();
          v78 = v12;
          v66 = v65;
          v67 = v38;
          v68 = a4;
          v70 = v69;

          MEMORY[0x22AAD08C0](v66, v70);
          a4 = v68;
          v38 = v67;

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v71 = sub_2295A3E30(v83, *(&v83 + 1), &v81);

          *(v63 + 4) = v71;
          _os_log_impl(&dword_229538000, v61, v62, "%s Reading operational error path returned nil values", v63, 0xCu);
          v72 = v77;
          __swift_destroy_boxed_opaque_existential_0(v77);
          MEMORY[0x22AAD4E50](v72, -1, -1);
          MEMORY[0x22AAD4E50](v63, -1, -1);

          (*(v79 + 8))(v16, v78);
          if (!a4)
          {
            goto LABEL_23;
          }
        }

        else
        {

          (*(v79 + 8))(v16, v12);
          if (!a4)
          {
LABEL_23:

            return;
          }
        }

        type metadata accessor for HMError(0);
        *&v81 = 20;
        sub_22956AD8C(MEMORY[0x277D84F90]);
        sub_2297FFF94(&qword_27D87D7C0, type metadata accessor for HMError);
        sub_22A4DB3CC();
        v73 = v83;
        v74 = sub_22A4DB3DC();

        [a4 rejectWithError_];
        goto LABEL_23;
      }
    }

    else
    {
      sub_22953EAE4(&v83, &unk_27D87DE60, &unk_22A57A960);
    }

    v38 = 0;
    goto LABEL_18;
  }

  v79 = v17;
  sub_2296F8604();
  v20 = a3;
  v21 = a2;
  v22 = sub_22A4DD05C();
  v23 = sub_22A4DDCEC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v77 = a4;
    v26 = v25;
    v76 = swift_slowAlloc();
    *&v81 = v76;
    *v24 = 136315394;
    *&v83 = 91;
    *(&v83 + 1) = 0xE100000000000000;
    v27 = [v20 logIdentifier];
    v28 = sub_22A4DD5EC();
    v78 = v12;
    v29 = v28;
    v31 = v30;

    MEMORY[0x22AAD08C0](v29, v31);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v32 = sub_2295A3E30(v83, *(&v83 + 1), &v81);

    *(v24 + 4) = v32;
    *(v24 + 12) = 2112;
    v33 = a2;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v34;
    *v26 = v34;
    _os_log_impl(&dword_229538000, v22, v23, "%s Error reading operational error path. error=%@", v24, 0x16u);
    sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
    v35 = v26;
    a4 = v77;
    MEMORY[0x22AAD4E50](v35, -1, -1);
    v36 = v76;
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x22AAD4E50](v36, -1, -1);
    MEMORY[0x22AAD4E50](v24, -1, -1);

    (*(v79 + 8))(v19, v78);
    if (!a4)
    {
      return;
    }

LABEL_9:
    v37 = sub_22A4DB3DC();
    [a4 rejectWithError_];

    return;
  }

  (*(v79 + 8))(v19, v12);
  if (a4)
  {
    goto LABEL_9;
  }
}

void sub_2297F9E38(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = sub_22A4DD07C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v51 - v18;
  if (!v17)
  {
    sub_2296F8604();
    v20 = a4;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v56 = v53;
      *v23 = 136315138;
      *&v58[0] = 91;
      *(&v58[0] + 1) = 0xE100000000000000;
      v24 = v12;
      v25 = [v20 logIdentifier];
      v26 = sub_22A4DD5EC();
      v52 = v11;
      v27 = a5;
      v29 = v28;

      MEMORY[0x22AAD08C0](v26, v29);
      a5 = v27;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v30 = sub_2295A3E30(*&v58[0], *(&v58[0] + 1), &v56);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_229538000, v21, v22, "%s Reading supported run modes path returned nil value", v23, 0xCu);
      v31 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);

      (*(v24 + 8))(v16, v52);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }

    [a5 fulfillWithNoValue];
    return;
  }

  if ([v17 value])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58[0] = v56;
  v58[1] = v57;
  v54 = v12;
  if (*(&v57 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815F8, &qword_22A5845A0);
    if (swift_dynamicCast())
    {
      v32 = a5;
      v33 = v56;
      v34 = MEMORY[0x277D84F90];
      *&v56 = MEMORY[0x277D84F90];
      if (v33)
      {
        v35 = a3;
        sub_229800018(v33, v35, &v56, &qword_27D881600, 0x277CD54D0);

        v34 = v56;
      }

      a5 = v32;
      goto LABEL_14;
    }
  }

  else
  {
    sub_22953EAE4(v58, &unk_27D87DE60, &unk_22A57A960);
  }

  v34 = MEMORY[0x277D84F90];
  *&v56 = MEMORY[0x277D84F90];
LABEL_14:
  v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  *&v58[0] = v36;
  MEMORY[0x28223BE20](v36);
  *(&v51 - 2) = v58;
  v37 = sub_22986A7C8(sub_229800AAC, (&v51 - 4), v34);

  if (v37)
  {
    if (a5)
    {
      sub_2296F77EC(a6);
      v38 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
      v39 = sub_22A4DD47C();

      v40 = [v38 initWithDictionary_];

      [a5 fulfillWithValue_];

      return;
    }
  }

  else
  {
    v53 = a5;
    sub_2296F8604();
    v41 = a4;
    v42 = sub_22A4DD05C();
    v43 = sub_22A4DDCCC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55 = v45;
      *v44 = 136315138;
      *&v58[0] = 91;
      *(&v58[0] + 1) = 0xE100000000000000;
      v46 = [v41 logIdentifier];
      v47 = sub_22A4DD5EC();
      v49 = v48;

      MEMORY[0x22AAD08C0](v47, v49);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v50 = sub_2295A3E30(*&v58[0], *(&v58[0] + 1), &v55);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_229538000, v42, v43, "%s RVC is not cleaning (probably mapping). Not showing returning to dock notification", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AAD4E50](v45, -1, -1);
      MEMORY[0x22AAD4E50](v44, -1, -1);
    }

    (*(v54 + 8))(v19, v11);
    [v53 fulfillWithNoValue];
  }
}

void sub_2297FA444(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v16 = sub_22A4DD07C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](a1);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19)
  {
    if ([v19 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    aBlock = v55;
    v52 = v56;
    if (*(&v56 + 1))
    {
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v49 = a9;
        v50 = a10;
        v48 = v55;
        v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v34 = [a3 endpointID];
        v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v36 = a5;
        v37 = [a4 accessory];
        v38 = [objc_opt_self() PathWithAttributeID:v33 endpointID:v34 clusterID:v35 accessory:v37];

        v39 = [a4 reportFromAttributePathRead:v38 retryTimeout:1.0];
        v40 = swift_allocObject();
        v42 = v48;
        v41 = v49;
        v40[2] = v48;
        v40[3] = a4;
        v40[4] = v36;
        v40[5] = a6;
        v40[6] = a7;
        v53 = v41;
        v54 = v40;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v52 = sub_229800B04;
        *(&v52 + 1) = v50;
        v43 = _Block_copy(&aBlock);
        v44 = v36;

        v45 = v42;
        v46 = a4;

        [v39 getResultWithCompletion_];
        _Block_release(v43);
      }
    }

    else
    {
      sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    }
  }

  else
  {
    sub_2296F8604();
    v22 = a4;
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v55 = v50;
      *v25 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v26 = [v22 logIdentifier];
      v27 = sub_22A4DD5EC();
      v28 = a5;
      v30 = v29;

      MEMORY[0x22AAD08C0](v27, v30);
      a5 = v28;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v31 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v55);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_229538000, v23, v24, "%s Reading current run mode path returned nil value", v25, 0xCu);
      v32 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    (*(v17 + 8))(v21, v16);
    [a5 fulfillWithNoValue];
  }
}

id sub_2297FA8DC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v11 = sub_22A4DD07C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v65 - v18;
  if (v17)
  {
    if ([v17 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v72 = 0u;
      v73 = 0u;
    }

    v74 = v72;
    v75 = v73;
    v68 = v12;
    if (*(&v73 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815F8, &qword_22A5845A0);
      if (swift_dynamicCast())
      {
        v32 = a5;
        v33 = v72;
        v34 = MEMORY[0x277D84F90];
        v71 = MEMORY[0x277D84F90];
        if (v72)
        {
          v35 = a3;
          sub_229800018(v33, v35, &v71, &qword_27D881600, 0x277CD54D0);

          v34 = v71;
        }

        a5 = v32;
LABEL_14:
        v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
        *&v74 = v36;
        MEMORY[0x28223BE20](v36);
        *(&v65 - 2) = &v74;
        v37 = sub_22986A7C8(sub_229800AAC, (&v65 - 4), v34);

        if (v37)
        {
          v67 = a5;
          sub_2296F8604();
          v38 = a4;
          v39 = sub_22A4DD05C();
          v40 = sub_22A4DDCCC();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *&v72 = v42;
            *v41 = 136315138;
            *&v74 = 91;
            *(&v74 + 1) = 0xE100000000000000;
            v43 = [v38 logIdentifier];
            v44 = sub_22A4DD5EC();
            v46 = v45;

            MEMORY[0x22AAD08C0](v44, v46);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v47 = sub_2295A3E30(v74, *(&v74 + 1), &v72);

            *(v41 + 4) = v47;
            _os_log_impl(&dword_229538000, v39, v40, "%s RVC is still cleaning. Not showing cleaning complete notification", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v42);
            MEMORY[0x22AAD4E50](v42, -1, -1);
            MEMORY[0x22AAD4E50](v41, -1, -1);
          }

          (*(v68 + 8))(v19, v11);
          [v67 fulfillWithNoValue];
        }

        v70 = a6;
        v48 = sub_22A4DD5EC();
        v50 = v49;

        v51 = [a4 rvcCleaningPayload];
        if (v51)
        {
          v52 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
          v53 = sub_22A4DD49C();

          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
          *(&v75 + 1) = v54;
          *&v74 = v53;
          sub_229543C5C(&v74, &v72);
          LOBYTE(v53) = swift_isUniquelyReferenced_nonNull_native();
          v69 = a6;
          v55 = *(&v73 + 1);
          v56 = __swift_mutable_project_boxed_opaque_existential_0(&v72, *(&v73 + 1));
          v57 = *(*(v55 - 8) + 64);
          MEMORY[0x28223BE20](v56);
          v59 = &v65 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v60 + 16))(v59);
          sub_2297FF768(v59, v48, v50, v53, &v69, v54);

          __swift_destroy_boxed_opaque_existential_0(&v72);
          v70 = v69;
          if (a5)
          {
LABEL_20:
            sub_2296F77EC(v70);

            v61 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
            v62 = sub_22A4DD47C();

            v63 = [v61 initWithDictionary_];

            [a5 fulfillWithValue_];
LABEL_25:
            [a4 setRvcCleaningPayload_];
          }
        }

        else
        {
          sub_2297FD02C(v48, v50, sub_229543C58, sub_229897D20, &v74);

          sub_22953EAE4(&v74, &unk_27D87FC20, &unk_22A578810);
          if (a5)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_22953EAE4(&v74, &unk_27D87DE60, &unk_22A57A960);
    }

    v34 = MEMORY[0x277D84F90];
    v71 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  sub_2296F8604();
  v20 = a4;
  v21 = sub_22A4DD05C();
  v22 = sub_22A4DDCEC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v72 = v67;
    *v23 = 136315138;
    *&v74 = 91;
    *(&v74 + 1) = 0xE100000000000000;
    v24 = v12;
    v25 = [v20 logIdentifier];
    v26 = sub_22A4DD5EC();
    v66 = v11;
    v27 = a5;
    v29 = v28;

    MEMORY[0x22AAD08C0](v26, v29);
    a5 = v27;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v30 = sub_2295A3E30(v74, *(&v74 + 1), &v72);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_229538000, v21, v22, "%s Reading supported run modes path returned nil value", v23, 0xCu);
    v31 = v67;
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x22AAD4E50](v31, -1, -1);
    MEMORY[0x22AAD4E50](v23, -1, -1);

    (*(v24 + 8))(v16, v66);
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  return [a5 fulfillWithNoValue];
}

void sub_2297FB100(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = sub_22A4DD07C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v56 - v18;
  if (v17)
  {
    if ([v17 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    aBlock = v62;
    v59 = v63;
    if (*(&v63 + 1))
    {
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v31 = v62;
        v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v34 = [a4 accessory];
        v35 = [objc_opt_self() PathWithAttributeID:v32 endpointID:a3 clusterID:v33 accessory:v34];

        v36 = [a4 reportFromAttributePathRead:v35 retryTimeout:1.0];
        v37 = swift_allocObject();
        v37[2] = v31;
        v37[3] = a3;
        v37[4] = a4;
        v37[5] = a5;
        v37[6] = a6;
        v60 = sub_2297FFFE8;
        v61 = v37;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v59 = sub_229800B04;
        *(&v59 + 1) = &block_descriptor_37_2;
        v38 = _Block_copy(&aBlock);
        v39 = a5;
        v40 = v31;
        v41 = a3;
        v42 = a4;

        [v36 getResultWithCompletion_];
        _Block_release(v38);

        return;
      }
    }

    else
    {
      sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    }

    sub_2296F8604();
    v43 = a4;
    v44 = sub_22A4DD05C();
    v45 = sub_22A4DDCEC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v62 = v47;
      *v46 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v48 = [v43 logIdentifier];
      v49 = sub_22A4DD5EC();
      v57 = v11;
      v50 = a5;
      v52 = v51;

      MEMORY[0x22AAD08C0](v49, v52);
      a5 = v50;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v53 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v62);

      *(v46 + 4) = v53;
      _os_log_impl(&dword_229538000, v44, v45, "%s No current clean mode", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x22AAD4E50](v47, -1, -1);
      MEMORY[0x22AAD4E50](v46, -1, -1);

      (*(v12 + 8))(v19, v57);
      goto LABEL_16;
    }

    v54 = *(v12 + 8);
    v55 = v19;
LABEL_15:
    v54(v55, v11);
    goto LABEL_16;
  }

  sub_2296F8604();
  v20 = a4;
  v21 = sub_22A4DD05C();
  v22 = sub_22A4DDCEC();

  if (!os_log_type_enabled(v21, v22))
  {

    v54 = *(v12 + 8);
    v55 = v16;
    goto LABEL_15;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  *&v62 = v24;
  *v23 = 136315138;
  *&aBlock = 91;
  *(&aBlock + 1) = 0xE100000000000000;
  v25 = [v20 logIdentifier];
  v26 = sub_22A4DD5EC();
  v57 = v11;
  v27 = a5;
  v29 = v28;

  MEMORY[0x22AAD08C0](v26, v29);
  a5 = v27;

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  v30 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v62);

  *(v23 + 4) = v30;
  _os_log_impl(&dword_229538000, v21, v22, "%s Reading current clean mode path returned nil value", v23, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v24);
  MEMORY[0x22AAD4E50](v24, -1, -1);
  MEMORY[0x22AAD4E50](v23, -1, -1);

  (*(v12 + 8))(v16, v57);
LABEL_16:
  [a5 fulfillWithNoValue];
}

void sub_2297FB704(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v13 = sub_22A4DD07C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v16)
  {
    if ([v16 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    aBlock = v48;
    v45 = v49;
    if (*(&v49 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815B8, &qword_22A584540);
      if (swift_dynamicCast())
      {
        v30 = v48;
        v31 = MEMORY[0x277D84F90];
        *&v48 = MEMORY[0x277D84F90];
        if (v30)
        {
          v32 = a3;
          sub_229800018(v30, v32, &v48, &qword_27D8815C0, 0x277CD54A0);

          v31 = v48;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    }

    v31 = MEMORY[0x277D84F90];
LABEL_14:
    v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v35 = [a5 accessory];
    v36 = [objc_opt_self() PathWithAttributeID:v33 endpointID:a4 clusterID:v34 accessory:v35];

    v37 = [a5 reportFromAttributePathRead:v36 retryTimeout:1.0];
    v38 = swift_allocObject();
    v38[2] = a4;
    v38[3] = a5;
    v38[4] = v31;
    v38[5] = a6;
    v38[6] = a7;
    v46 = sub_229800000;
    v47 = v38;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v45 = sub_229800B04;
    *(&v45 + 1) = &block_descriptor_43_1;
    v39 = _Block_copy(&aBlock);
    v40 = a6;

    v41 = a4;
    v42 = a5;

    [v37 getResultWithCompletion_];
    _Block_release(v39);

    return;
  }

  sub_2296F8604();
  v19 = a5;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCEC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v48 = v43;
    *v22 = 136315138;
    *&aBlock = 91;
    *(&aBlock + 1) = 0xE100000000000000;
    v23 = [v19 logIdentifier];
    v24 = sub_22A4DD5EC();
    v25 = a6;
    v27 = v26;

    MEMORY[0x22AAD08C0](v24, v27);
    a6 = v25;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v28 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v48);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_229538000, v20, v21, "%s Reading supported clean modes path returned nil value", v22, 0xCu);
    v29 = v43;
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x22AAD4E50](v29, -1, -1);
    MEMORY[0x22AAD4E50](v22, -1, -1);
  }

  (*(v14 + 8))(v18, v13);
  [a6 fulfillWithNoValue];
}

void sub_2297FBBCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = sub_22A4DD07C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v16)
  {
    if ([v16 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    aBlock = v46;
    v43 = v47;
    if (*(&v47 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815C8, &unk_22A584548);
      if (swift_dynamicCast())
      {
        v30 = v46;
LABEL_13:
        v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v33 = [a4 accessory];
        v34 = [objc_opt_self() PathWithAttributeID:v31 endpointID:a3 clusterID:v32 accessory:v33];

        v35 = [a4 reportFromAttributePathRead:v34 retryTimeout:1.0];
        v36 = swift_allocObject();
        v36[2] = v30;
        v36[3] = a5;
        v36[4] = a4;
        v36[5] = a6;
        v36[6] = a7;
        v44 = sub_229800120;
        v45 = v36;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v43 = sub_229800B04;
        *(&v43 + 1) = &block_descriptor_49_1;
        v37 = _Block_copy(&aBlock);
        v38 = a6;

        v39 = a4;

        [v35 getResultWithCompletion_];
        _Block_release(v37);

        return;
      }
    }

    else
    {
      sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    }

    v30 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2296F8604();
  v19 = a4;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCEC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v46 = v41;
    *v22 = 136315138;
    *&aBlock = 91;
    *(&aBlock + 1) = 0xE100000000000000;
    v23 = [v19 logIdentifier];
    v24 = sub_22A4DD5EC();
    v25 = a6;
    v27 = v26;

    MEMORY[0x22AAD08C0](v24, v27);
    a6 = v25;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v28 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v46);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_229538000, v20, v21, "%s Reading selected service areas path returned nil value", v22, 0xCu);
    v29 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AAD4E50](v29, -1, -1);
    MEMORY[0x22AAD4E50](v22, -1, -1);
  }

  (*(v14 + 8))(v18, v13);
  [a6 fulfillWithNoValue];
}

void sub_2297FC03C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v61 = a3;
  v10 = *(sub_22A4DD07C() - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12)
  {
    if ([v12 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v64[0] = v62;
    v64[1] = v63;
    if (*(&v63 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815E0, &qword_22A584570);
      if (swift_dynamicCast())
      {
        v59 = a6;
        v28 = v62;
        if (v62 >> 62)
        {
LABEL_41:
          v60 = v28 & 0xFFFFFFFFFFFFFF8;
          v29 = sub_22A4DE0EC();
        }

        else
        {
          v60 = v62 & 0xFFFFFFFFFFFFFF8;
          v29 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v57 = a4;
        v58 = a5;
        if (!v29)
        {
          v31 = MEMORY[0x277D84F90];
          goto LABEL_35;
        }

        v30 = 0;
        v31 = MEMORY[0x277D84F90];
        a4 = v28 & 0xC000000000000001;
        while (1)
        {
          v56 = v31;
          v32 = v30;
          while (1)
          {
            if (a4)
            {
              v33 = MEMORY[0x22AAD13F0](v32, v28);
            }

            else
            {
              if (v32 >= *(v60 + 16))
              {
                goto LABEL_40;
              }

              v33 = *(v28 + 8 * v32 + 32);
            }

            v34 = v33;
            v30 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            v35 = [v33 areaID];
            *&v64[0] = v35;
            MEMORY[0x28223BE20](v35);
            *(&v53 - 2) = v64;
            a5 = sub_2298906AC(sub_229800138, (&v53 - 4), v61);

            if (a5)
            {
              break;
            }

LABEL_16:

            ++v32;
            if (v30 == v29)
            {
              v31 = v56;
              goto LABEL_35;
            }
          }

          v36 = [v34 areaInfo];
          v37 = [v36 locationInfo];
          if (!v37)
          {
            break;
          }

          v38 = v37;
          v39 = [v37 locationName];
          v55 = sub_22A4DD5EC();
          v54 = v40;

          v31 = v56;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = sub_22958A53C(0, *(v31 + 2) + 1, 1, v31);
          }

          a5 = *(v31 + 2);
          v42 = *(v31 + 3);
          if (a5 >= v42 >> 1)
          {
            v31 = sub_22958A53C((v42 > 1), a5 + 1, 1, v31);
          }

          *(v31 + 2) = a5 + 1;
          v43 = &v31[16 * a5];
          v44 = v54;
          *(v43 + 4) = v55;
          *(v43 + 5) = v44;
          if (v30 == v29)
          {
LABEL_35:

            a6 = v59;
            a5 = v58;
            a4 = v57;
            goto LABEL_36;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_22953EAE4(v64, &unk_27D87DE60, &unk_22A57A960);
    }

    v31 = 0;
LABEL_36:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A5761A0;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v46;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815D0, &qword_22A584558);
    *(inited + 48) = a4;
    *(inited + 80) = sub_22A4DD5EC();
    *(inited + 88) = v47;
    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815D8, &unk_22A584560);
    *(inited + 96) = v31;

    v48 = sub_22956AC5C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v49 = sub_22A4DD47C();
    [a5 setRvcCleaningPayload_];

    if (a6)
    {
      sub_2296F77EC(v48);

      v50 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
      v51 = sub_22A4DD47C();

      v52 = [v50 initWithDictionary_];

      [a6 fulfillWithValue_];
    }

    else
    {
    }
  }

  else
  {
    v61 = v13;
    sub_2296F8604();
    v16 = a5;
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v59 = a6;
      v20 = v19;
      v21 = swift_slowAlloc();
      *&v62 = v21;
      *v20 = 136315138;
      *&v64[0] = 91;
      *(&v64[0] + 1) = 0xE100000000000000;
      v22 = [v16 logIdentifier];
      v23 = sub_22A4DD5EC();
      v25 = v24;

      MEMORY[0x22AAD08C0](v23, v25);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v26 = sub_2295A3E30(*&v64[0], *(&v64[0] + 1), &v62);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_229538000, v17, v18, "%s Reading supported service areas path returned nil value", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AAD4E50](v21, -1, -1);
      v27 = v20;
      a6 = v59;
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    (*(v10 + 8))(v15, v61);
    [a6 fulfillWithNoValue];
  }
}

void sub_2297FC78C(void **a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v76 = a5;
  v77 = a4;
  v8 = sub_22A4DB7DC();
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v71 - v12;
  v13 = sub_22A4DD07C();
  v83 = *(v13 - 8);
  v84 = v13;
  v14 = *(v83 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v71 - v17;
  v19 = *a1;
  v20 = objc_allocWithZone(HMDRemoteDeviceMessageDestination);
  v21 = sub_22A4DB77C();
  v22 = [v20 initWithTarget:v21 device:v19];

  v23 = objc_allocWithZone(HMDRemoteMessage);
  v24 = v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v85 = a3;
  v74 = v25;
  v26 = sub_22A4DD47C();
  v27 = [v23 initWithName:@"HMDAccessoryMatterEventMessageName" destination:v24 payload:v26];
  v82 = v24;

  if ([v19 isCurrentDevice])
  {
    v75 = v27;
    sub_2296F8604();
    v28 = v77;

    v29 = sub_22A4DD05C();
    v30 = sub_22A4DDCEC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v88 = v32;
      *v31 = 136315394;
      v86 = 91;
      v87 = 0xE100000000000000;
      v33 = [v28 logIdentifier];
      v34 = sub_22A4DD5EC();
      v36 = v35;

      MEMORY[0x22AAD08C0](v34, v36);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v37 = sub_2295A3E30(v86, v87, &v88);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      v38 = sub_22A4DD4AC();
      v40 = sub_2295A3E30(v38, v39, &v88);

      *(v31 + 14) = v40;
      _os_log_impl(&dword_229538000, v29, v30, "%s Calling handleMatterEventMessage (Showing notification on THIS Apple TV) with payload=%s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);
    }

    (*(v83 + 8))(v18, v84);
    v41 = &selRef_handleMatterEventMessage_;
    v27 = v75;
  }

  else
  {
    sub_2296F8604();
    (*(v79 + 16))(v78, a2, v80);
    v42 = v77;

    v43 = v19;
    v44 = sub_22A4DD05C();
    v45 = sub_22A4DDCCC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v88 = v77;
      *v46 = 136315906;
      v86 = 91;
      v87 = 0xE100000000000000;
      v47 = [v42 logIdentifier];
      v75 = v27;
      v48 = v47;
      v49 = sub_22A4DD5EC();
      v72 = v45;
      v51 = v50;

      v71 = v44;
      MEMORY[0x22AAD08C0](v49, v51);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v52 = sub_2295A3E30(v86, v87, &v88);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2080;
      sub_2297FFF94(&qword_281403860, MEMORY[0x277CC95F0]);
      v53 = v78;
      v54 = v80;
      v55 = sub_22A4DE5CC();
      v57 = v56;
      v58 = *(v79 + 8);
      v58(v53, v54);
      v59 = sub_2295A3E30(v55, v57, &v88);

      *(v46 + 14) = v59;
      *(v46 + 22) = 2080;
      v60 = [v43 identifier];
      v61 = v73;
      sub_22A4DB79C();

      v62 = sub_22A4DE5CC();
      v64 = v63;
      v58(v61, v54);
      v65 = sub_2295A3E30(v62, v64, &v88);

      *(v46 + 24) = v65;
      *(v46 + 32) = 2080;
      v66 = sub_22A4DD4AC();
      v68 = sub_2295A3E30(v66, v67, &v88);
      v27 = v75;

      *(v46 + 34) = v68;
      v69 = v71;
      _os_log_impl(&dword_229538000, v71, v72, "%s Sending bulletin event to target=%s for device=%s with payload=%s", v46, 0x2Au);
      v70 = v77;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v70, -1, -1);
      MEMORY[0x22AAD4E50](v46, -1, -1);
    }

    else
    {

      (*(v79 + 8))(v78, v80);
    }

    (*(v83 + 8))(v81, v84);
    v41 = &selRef_sendMessage_;
    v28 = v76;
  }

  [v28 *v41];
}

double sub_2297FCF28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_229543DBC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_229897CF8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_229557188((*(v12 + 56) + 40 * v9), a3);
    sub_2297FD878(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_2297FD02C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v8 = v5;
  v10 = *v5;
  v11 = sub_229543DBC(a1, a2);
  if (v12)
  {
    v13 = v11;
    v14 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v8;
    v19 = *v8;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v16 = v19;
    }

    v17 = *(*(v16 + 48) + 16 * v13 + 8);

    a3(*(v16 + 56) + 32 * v13, a5);
    sub_2297FDA34(v13, v16);
    *v8 = v16;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t sub_2297FD170@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_2296DBEC0(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = sub_22A4DB7DC();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = a2(0);
    v31 = *(v24 - 8);
    sub_2295AEF98(v23 + *(v31 + 72) * v22, a6, a3);
    sub_2297FDDAC(v22, v19, a4);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = a2(0);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

uint64_t sub_2297FD330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_229543DBC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_229898834();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_22A4DBB4C();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_2297FE74C(v9, v12, MEMORY[0x277D0EFA8]);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_22A4DBB4C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2297FD4B4(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_2296DBF94(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_2297FE434(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_229898EB8();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_22A4DE37C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_22A4DE0EC();
  v8 = sub_22975DE14(v4, v7);

  v9 = sub_2296DBF94(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_2297FE434(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_2297FD658(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void))
{
  v5 = v3;
  v6 = *v3;
  v7 = a2();
  if ((v8 & 1) == 0)
  {
    return 2;
  }

  v9 = v7;
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v5;
  v15 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v12 = v15;
  }

  v13 = *(*(v12 + 56) + v9);
  sub_2297FE5C0(v9, v12);
  *v5 = v12;
  return v13;
}

uint64_t sub_2297FD6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_229543DBC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22989A5C8();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for HomePassData(0);
    v22 = *(v15 - 8);
    sub_2295AEF98(v14 + *(v22 + 72) * v9, a3, type metadata accessor for HomePassData);
    sub_2297FE74C(v9, v12, type metadata accessor for HomePassData);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for HomePassData(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2297FD878(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22A4DE05C() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_22A4DE77C();

      sub_22A4DD6BC();
      v15 = sub_22A4DE7BC();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2297FDA34(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22A4DE05C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_22A4DE77C();

      sub_22A4DD6BC();
      v14 = sub_22A4DE7BC();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2297FDBE4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22A4DE05C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22A4DE77C();

      sub_22A4DD6BC();
      v13 = sub_22A4DE7BC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2297FDDAC(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_22A4DE05C();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_2297FFF94(&qword_281403880, MEMORY[0x277CC95F0]);
      v25 = sub_22A4DD4EC();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2297FE114(int64_t a1, uint64_t a2)
{
  v43 = sub_22A4DB7DC();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_22A4DE05C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_2297FFF94(&qword_281403880, MEMORY[0x277CC95F0]);
      v26 = sub_22A4DD4EC();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

void sub_2297FE434(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22A4DE05C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_22A4DDECC();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_2297FE5C0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22A4DE05C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_22A4DDECC();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + v3);
          v20 = (v18 + v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_2297FE74C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22A4DE05C() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_22A4DE77C();

      sub_22A4DD6BC();
      v15 = sub_22A4DE7BC();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_2297FE940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837D0];
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v11 = *a6;
  v13 = sub_229543DBC(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_229543C5C(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_229543DBC(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_2297FFBEC(v13, a3, a4, *v28, v28[1], v19, v10);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_2297FEB50(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v35 = v14;
  *&v34 = a1;
  v15 = *a5;
  v17 = sub_229543DBC(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return sub_229543C5C(&v34, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v20, a4 & 1);
  v26 = *a5;
  v27 = sub_229543DBC(a2, a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = __swift_mutable_project_boxed_opaque_existential_0(&v34, v14);
  v30 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (&v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  sub_2297FFAC0(v17, a2, a3, *v32, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(&v34);
}

_OWORD *sub_2297FED80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v31 = v10;
  *&v30 = a1;
  v11 = *a5;
  v13 = sub_229543DBC(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_229543C5C(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_229543DBC(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_2297FF988(v13, a2, a3, *v28, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_2297FEF7C(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_229543DBC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_229543C5C(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_229543DBC(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v24, MEMORY[0x277D839B0]);
  sub_2297FFA3C(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

_OWORD *sub_2297FF0D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v25 = a1;
  v26 = MEMORY[0x277D83B88];
  v9 = *a5;
  v11 = sub_229543DBC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_229543C5C(&v25, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_229543DBC(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = MEMORY[0x277D83B88];
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v25, MEMORY[0x277D83B88]);
  sub_2297FFC68(v11, a2, a3, *v24, v17, v23);

  return __swift_destroy_boxed_opaque_existential_0(&v25);
}

_OWORD *sub_2297FF248(uint64_t a1, uint64_t a2, char a3, void *a4, double a5)
{
  *&v24 = a5;
  v25 = MEMORY[0x277D839F8];
  v9 = *a4;
  v11 = sub_229543DBC(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_229543C5C(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v14, a3 & 1);
  v20 = *a4;
  v21 = sub_229543DBC(a1, a2);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v24, MEMORY[0x277D839F8]);
  sub_2297FFB68(v11, a1, a2, v17, *v23);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

_OWORD *sub_2297FF398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277CC9318];
  v31 = MEMORY[0x277CC9318];
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v11 = *a6;
  v13 = sub_229543DBC(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_229543C5C(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_229543DBC(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_2297FFBEC(v13, a3, a4, *v28, v28[1], v19, v10);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_2297FF580(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v29 = a1;
  v9 = MEMORY[0x277D83E88];
  v30 = MEMORY[0x277D83E88];
  v10 = *a5;
  v12 = sub_229543DBC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *a5;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v19);
      return sub_229543C5C(&v29, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v15, a4 & 1);
  v21 = *a5;
  v22 = sub_229543DBC(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *a5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v29, v9);
  v25 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  sub_2297FFC68(v12, a2, a3, *v27, v18, v9);

  return __swift_destroy_boxed_opaque_existential_0(&v29);
}

_OWORD *sub_2297FF768(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v34 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v13 = *a5;
  v15 = sub_229543DBC(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
      return sub_229543C5C(&v33, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v18, a4 & 1);
  v24 = *a5;
  v25 = sub_229543DBC(a2, a3);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v27 = v34;
  v28 = __swift_mutable_project_boxed_opaque_existential_0(&v33, v34);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31);
  sub_2297FFCE4(v15, a2, a3, v31, v21, a6);

  return __swift_destroy_boxed_opaque_existential_0(&v33);
}

_OWORD *sub_2297FF988(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_229543C5C(&v15, (a5[7] + 32 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_2297FFA3C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_229543C5C(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_2297FFAC0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  *&v17 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a5[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_229543C5C(&v17, (a5[7] + 32 * a1));
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_2297FFB68(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v11[0] = a5;
  v12 = MEMORY[0x277D839F8];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_229543C5C(v11, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_2297FFBEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v14 = a7;
  *&v13 = a4;
  *(&v13 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a6[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  result = sub_229543C5C(&v13, (a6[7] + 32 * a1));
  v10 = a6[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v12;
  }

  return result;
}

_OWORD *sub_2297FFC68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = a6;
  *&v12 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a5[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_229543C5C(&v12, (a5[7] + 32 * a1));
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

_OWORD *sub_2297FFCE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_229543C5C(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

BOOL sub_2297FFDB8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    v6 = v2;
    v7 = v3;
    v8 = sub_22A4DDEDC();

    return v8 & 1;
  }

  return result;
}

uint64_t sub_2297FFF94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_229800018(unint64_t a1, void *a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v9 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AAD13F0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v16 = v10;
      sub_2297F8C24(&v16, a2, a3, a4, a5);

      if (!v5)
      {
        ++v9;
        if (v12 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_229800138(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  return sub_22A4DDEDC() & 1;
}

uint64_t sub_2298001DC(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_229569B30;

  return sub_2297F0B94(a1, v14, v4, v5, v6, v7, v8, v10);
}

unint64_t sub_2298002FC()
{
  result = qword_27D8819E0;
  if (!qword_27D8819E0)
  {
    sub_229562F68(255, &qword_27D87CEF0, off_278666100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8819E0);
  }

  return result;
}

uint64_t objectdestroy_60Tm()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}