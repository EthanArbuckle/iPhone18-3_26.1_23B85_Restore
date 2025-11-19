uint64_t sub_2524F24C0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 169);
  v3 = *(v0 + 32);

  v4 = (v3 + *(v1 + 60));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 168) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  sub_2526924F0();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2524F25A0()
{
  v29 = v0;
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[4];

  sub_2524F5D04(v3, v2);
  v4 = v1;
  v5 = sub_252690580();
  v6 = sub_252692F10();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  v9 = v0[13];
  if (v7)
  {
    v10 = v0[11];
    v11 = v0[10];
    v23 = v0[9];
    v12 = v0[7];
    v13 = v0[8];
    v24 = v0[6];
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v14 = 136315906;
    *(v14 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, &v28);
    v25 = v6;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2525BDA90(0xD000000000000011, 0x80000002526B0C10, &v28);
    *(v14 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    sub_2526924E0();
    sub_25268F1E0();
    (*(v11 + 8))(v10, v23);
    v15 = sub_25268FED0();
    v17 = v16;
    (*(v12 + 8))(v13, v24);
    sub_2524F87CC(v9, type metadata accessor for ThermostatPresetsDetailView);
    v18 = sub_2525BDA90(v15, v17, &v28);

    *(v14 + 24) = v18;
    *(v14 + 32) = 2112;
    v19 = v8;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 34) = v20;
    *v26 = v20;
    sub_252372288(v26, &qword_27F4DB950);
    MEMORY[0x2530A5A40](v26, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v27, -1, -1);
    MEMORY[0x2530A5A40](v14, -1, -1);
  }

  else
  {

    sub_2524F87CC(v9, type metadata accessor for ThermostatPresetsDetailView);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_2524F28E4(char a1, char a2, double a3)
{
  v6 = sub_25268F290();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_25268F2C0();
  sub_252692F50();
  v12 = v11;

  v13 = -v12;
  if (a2)
  {
    v13 = v12;
  }

  v14 = v13 + a3;
  (*(v7 + 104))(v9, *MEMORY[0x277D16048], v6);
  v15 = MEMORY[0x2530A0E10](v9, v14);
  (*(v7 + 8))(v9, v6);
  if (a1)
  {
    return *&v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2524F2A3C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  LODWORD(v148) = a4;
  v146 = a1;
  v147 = a3;
  v6 = sub_25268FEF0();
  v136 = *(v6 - 8);
  v137 = v6;
  MEMORY[0x28223BE20](v6);
  v135 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for ThermostatPresetsDetailView();
  MEMORY[0x28223BE20](v143);
  v141 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v140 = &v129 - v10;
  MEMORY[0x28223BE20](v11);
  v138 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v134 = &v129 - v14;
  MEMORY[0x28223BE20](v15);
  v133 = &v129 - v16;
  v142 = sub_25268F260();
  v144 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v139 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2526902B0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v129 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v129 - v26;
  v28 = sub_252690490();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v4;
  sub_2524DD6E0(v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_252372288(v27, &qword_27F4DB250);
    return 0;
  }

  v132 = v29;
  (*(v29 + 32))(v31, v27, v28);
  sub_2526902C0();
  (*(v19 + 104))(v21, *MEMORY[0x277D16D58], v18);
  sub_2524F831C(&qword_27F4E01A8, MEMORY[0x277D16D60]);
  sub_252692D40();
  sub_252692D40();
  v32 = *(v19 + 8);
  v32(v21, v18);
  v32(v24, v18);
  v33 = v149;
  v34 = v151[0];
  v131 = a2;
  v35 = v148;
  v37 = v146;
  v36 = v147;
  if ((sub_2526903E0() & 1) == 0)
  {
    if (qword_27F4DABD8 != -1)
    {
      swift_once();
    }

    v46 = sub_2526905A0();
    __swift_project_value_buffer(v46, qword_27F4E4B30);
    v47 = v145;
    v48 = v138;
    sub_2524F5D04(v145, v138);
    v49 = v140;
    sub_2524F5D04(v47, v140);
    v50 = v141;
    sub_2524F5D04(v47, v141);
    v51 = sub_252690580();
    v52 = sub_252692EF0();
    if (os_log_type_enabled(v51, v52))
    {
      LODWORD(v134) = v52;
      v145 = v51;
      v130 = v31;
      v53 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v149 = v133;
      *v53 = 136316162;
      *(v53 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, &v149);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_2525BDA90(0xD000000000000031, 0x80000002526B0950, &v149);
      *(v53 + 22) = 2080;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
      v55 = v139;
      v129 = v54;
      sub_2526924E0();
      v56 = v135;
      sub_25268F1E0();
      v57 = v48;
      v59 = v144 + 8;
      v58 = *(v144 + 8);
      v58(v55, v142);
      v60 = sub_25268FED0();
      v62 = v61;
      (*(v136 + 8))(v56, v137);
      sub_2524F87CC(v57, type metadata accessor for ThermostatPresetsDetailView);
      v63 = sub_2525BDA90(v60, v62, &v149);

      *(v53 + 24) = v63;
      *(v53 + 32) = 2080;
      v144 = v59;
      if (v131)
      {
        v64 = v140;
        sub_2526924E0();
        v65 = sub_25268F210();
        v66 = v55;
        v58(v55, v142);
      }

      else
      {
        v66 = v55;
        v65 = sub_252692E60();
        v64 = v140;
      }

      v72 = v58;
      v151[0] = v65;
      v73 = sub_252693370();
      v75 = v74;
      sub_2524F87CC(v64, type metadata accessor for ThermostatPresetsDetailView);
      v76 = sub_2525BDA90(v73, v75, &v149);

      *(v53 + 34) = v76;
      *(v53 + 42) = 2080;
      v77 = v141;
      v78 = v130;
      if (v148)
      {
        sub_2526924E0();
        v79 = sub_25268F1F0();
        v72(v66, v142);
      }

      else
      {
        v79 = sub_252692E60();
      }

      v151[0] = v79;
      v80 = sub_252693370();
      v82 = v81;
      sub_2524F87CC(v77, type metadata accessor for ThermostatPresetsDetailView);
      v83 = sub_2525BDA90(v80, v82, &v149);

      *(v53 + 44) = v83;
      v84 = v145;
      _os_log_impl(&dword_252309000, v145, v134, "%s - %s: [Preset: %s] - Setpoint values (heating setpoint: %s, cooling setpoint: %s not within limits", v53, 0x34u);
      v85 = v133;
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v85, -1, -1);
      MEMORY[0x2530A5A40](v53, -1, -1);

      (*(v132 + 8))(v78, v28);
    }

    else
    {

      sub_2524F87CC(v50, type metadata accessor for ThermostatPresetsDetailView);
      sub_2524F87CC(v49, type metadata accessor for ThermostatPresetsDetailView);
      sub_2524F87CC(v48, type metadata accessor for ThermostatPresetsDetailView);
      (*(v132 + 8))(v31, v28);
    }

    return 0;
  }

  v130 = v31;
  if (v33 == v34)
  {
    v38 = v36;
    v39 = v35;
    v40 = v37;
    if (v39)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
      v41 = v139;
      sub_2526924E0();
      v141 = sub_25268F1F0();
      v42 = *(v144 + 8);
      v42(v41, v142);
      v43 = v131;
      if (v131)
      {
        v37 = v40;
        v44 = 0;
        v45 = 0;
LABEL_29:
        v107 = 1;
        goto LABEL_31;
      }

      v37 = v40;
      v45 = sub_252692E60();
      v67 = v141;
    }

    else
    {
      v43 = v131;
      if ((v131 & 1) == 0)
      {
        v141 = 0;
        v45 = 0;
        v44 = 1;
        goto LABEL_29;
      }

      v67 = sub_252692E60();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
      v68 = v139;
      sub_2526924E0();
      v69 = sub_25268F210();
      v43 = v131;
      v70 = v69;
      v42 = *(v144 + 8);
      v71 = v68;
      v45 = v70;
      v42(v71, v142);
    }

    v141 = v67;
    if (v67 < v45)
    {
      v87 = v139;
      v148 = v28;
      if (qword_27F4DABD8 != -1)
      {
        swift_once();
      }

      v88 = sub_2526905A0();
      __swift_project_value_buffer(v88, qword_27F4E4B30);
      v89 = v133;
      sub_2524F5D04(v145, v133);
      v90 = sub_252690580();
      v91 = sub_252692EF0();
      if (!os_log_type_enabled(v90, v91))
      {

        sub_2524F87CC(v89, type metadata accessor for ThermostatPresetsDetailView);
        goto LABEL_40;
      }

      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v149 = v93;
      *v92 = 136316162;
      *(v92 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, &v149);
      *(v92 + 12) = 2080;
      *(v92 + 14) = sub_2525BDA90(0xD000000000000031, 0x80000002526B0950, &v149);
      *(v92 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
      v94 = v87;
      sub_2526924E0();
      v95 = v135;
      sub_25268F1E0();
      v42(v94, v142);
      v96 = sub_25268FED0();
      v98 = v97;
      (*(v136 + 8))(v95, v137);
      sub_2524F87CC(v89, type metadata accessor for ThermostatPresetsDetailView);
      v99 = sub_2525BDA90(v96, v98, &v149);

      *(v92 + 24) = v99;
      *(v92 + 32) = 2080;
      v151[0] = v45;
      v100 = sub_252693370();
      v102 = sub_2525BDA90(v100, v101, &v149);

      *(v92 + 34) = v102;
      *(v92 + 42) = 2080;
      v151[0] = v141;
      v103 = sub_252693370();
      v105 = sub_2525BDA90(v103, v104, &v149);

      *(v92 + 44) = v105;
      _os_log_impl(&dword_252309000, v90, v91, "%s - %s: [Preset: %s] - Setpoint values (heating setpoint: %s > cooling setpoint: %s, not valid for auto mode", v92, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v93, -1, -1);
      v106 = v92;
LABEL_37:
      MEMORY[0x2530A5A40](v106, -1, -1);

LABEL_40:
      (*(v132 + 8))(v130, v148);
      return 0;
    }

    v44 = 0;
    v107 = 0;
LABEL_31:
    if (sub_2524F4D24(v37, v43 & 1, v38, v39 & 1))
    {
      goto LABEL_32;
    }

    v108 = v139;
    if (qword_27F4DABD8 != -1)
    {
      swift_once();
    }

    v109 = sub_2526905A0();
    __swift_project_value_buffer(v109, qword_27F4E4B30);
    v110 = v134;
    sub_2524F5D04(v145, v134);
    v90 = sub_252690580();
    v111 = sub_252692EF0();
    if (!os_log_type_enabled(v90, v111))
    {

      sub_2524F87CC(v110, type metadata accessor for ThermostatPresetsDetailView);
      (*(v132 + 8))(v130, v28);
      return 0;
    }

    v112 = swift_slowAlloc();
    LODWORD(v147) = v107;
    v113 = v110;
    v114 = v112;
    v115 = swift_slowAlloc();
    v148 = v28;
    v116 = v115;
    v151[0] = v115;
    *v114 = 136316162;
    *(v114 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, v151);
    *(v114 + 12) = 2080;
    *(v114 + 14) = sub_2525BDA90(0xD000000000000031, 0x80000002526B0950, v151);
    *(v114 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    v117 = v108;
    sub_2526924E0();
    v118 = v135;
    sub_25268F1E0();
    (*(v144 + 8))(v117, v142);
    v119 = sub_25268FED0();
    v121 = v120;
    (*(v136 + 8))(v118, v137);
    sub_2524F87CC(v113, type metadata accessor for ThermostatPresetsDetailView);
    v122 = sub_2525BDA90(v119, v121, v151);

    *(v114 + 24) = v122;
    *(v114 + 32) = 2080;
    v149 = v45;
    v150 = v147;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E01B0);
    v123 = sub_252692C00();
    v125 = sub_2525BDA90(v123, v124, v151);

    *(v114 + 34) = v125;
    *(v114 + 42) = 2080;
    v149 = v141;
    v150 = v44;
    v126 = sub_252692C00();
    v128 = sub_2525BDA90(v126, v127, v151);

    *(v114 + 44) = v128;
    _os_log_impl(&dword_252309000, v90, v111, "%s - %s: [Preset: %s] - Setpoint values (heating setpoint: %s, cooling setpoint: %s not within deadband limit", v114, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v116, -1, -1);
    v106 = v114;
    goto LABEL_37;
  }

LABEL_32:
  (*(v132 + 8))(v130, v28);
  return 1;
}

uint64_t sub_2524F3AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_25268FEF0();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v8 = sub_25268F260();
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = type metadata accessor for ThermostatPresetsDetailView();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  sub_252692E00();
  v6[30] = sub_252692DF0();
  v10 = sub_252692DE0();
  v6[31] = v10;
  v6[32] = v9;

  return MEMORY[0x2822009F8](sub_2524F3C7C, v10, v9);
}

uint64_t sub_2524F3C7C()
{
  v40 = v0;
  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = *(v0 + 144);
  v3 = sub_2526905A0();
  *(v0 + 264) = __swift_project_value_buffer(v3, qword_27F4E4B30);
  sub_2524F5D04(v2, v1);

  v4 = sub_252690580();
  v5 = sub_252692F10();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 232);
  if (v6)
  {
    v38 = v5;
    v8 = *(v0 + 208);
    v9 = *(v0 + 200);
    v34 = *(v0 + 192);
    v10 = *(v0 + 176);
    v11 = *(v0 + 184);
    v35 = *(v0 + 168);
    v36 = *(v0 + 160);
    v12 = *(v0 + 152);
    v13 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v13 = 136316162;
    *(v13 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, &v39);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2525BDA90(0xD00000000000002DLL, 0x80000002526B0920, &v39);
    *(v13 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    sub_2526924E0();
    sub_25268F1E0();
    (*(v9 + 8))(v8, v34);
    v14 = sub_25268FED0();
    v16 = v15;
    (*(v10 + 8))(v11, v35);
    sub_2524F87CC(v7, type metadata accessor for ThermostatPresetsDetailView);
    v17 = sub_2525BDA90(v14, v16, &v39);

    *(v13 + 24) = v17;
    *(v13 + 32) = 2080;
    swift_beginAccess();
    v18 = *(v12 + 24);
    *(v0 + 112) = *(v12 + 16);
    *(v0 + 120) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBBE8);
    v19 = sub_252692C00();
    v21 = sub_2525BDA90(v19, v20, &v39);

    *(v13 + 34) = v21;
    *(v13 + 42) = 2080;
    swift_beginAccess();
    v22 = *(v36 + 24);
    *(v0 + 128) = *(v36 + 16);
    *(v0 + 136) = v22;
    v23 = sub_252692C00();
    v25 = sub_2525BDA90(v23, v24, &v39);

    *(v13 + 44) = v25;
    _os_log_impl(&dword_252309000, v4, v38, "%s - %s: [Preset: %s] - Updating preset setpoint to heatingSetpoint: %s, coolingSetpoint: %s", v13, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v37, -1, -1);
    MEMORY[0x2530A5A40](v13, -1, -1);
  }

  else
  {

    sub_2524F87CC(v7, type metadata accessor for ThermostatPresetsDetailView);
  }

  v26 = *(v0 + 152);
  v27 = *(v0 + 160);
  swift_beginAccess();
  v28 = *(v26 + 16);
  v29 = *(v26 + 24);
  swift_beginAccess();
  v30 = *(v27 + 16);
  v31 = *(v27 + 24);
  v32 = swift_task_alloc();
  *(v0 + 272) = v32;
  *v32 = v0;
  v32[1] = sub_2524F40CC;

  return sub_2524F45DC(v28, v29, v30, v31);
}

uint64_t sub_2524F40CC()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_2524F4298;
  }

  else
  {
    v5 = sub_2524F4208;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2524F4208()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2524F4298()
{
  v29 = v0;
  v1 = v0[35];
  v2 = v0[28];
  v3 = v0[18];

  sub_2524F5D04(v3, v2);
  v4 = v1;
  v5 = sub_252690580();
  v6 = sub_252692EF0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[35];
  v9 = v0[28];
  if (v7)
  {
    v10 = v0[26];
    v11 = v0[25];
    v23 = v0[24];
    v12 = v0[22];
    v13 = v0[23];
    v24 = v0[21];
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v14 = 136315906;
    *(v14 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, &v28);
    v25 = v6;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2525BDA90(0xD00000000000002DLL, 0x80000002526B0920, &v28);
    *(v14 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    sub_2526924E0();
    sub_25268F1E0();
    (*(v11 + 8))(v10, v23);
    v15 = sub_25268FED0();
    v17 = v16;
    (*(v12 + 8))(v13, v24);
    sub_2524F87CC(v9, type metadata accessor for ThermostatPresetsDetailView);
    v18 = sub_2525BDA90(v15, v17, &v28);

    *(v14 + 24) = v18;
    *(v14 + 32) = 2112;
    v19 = v8;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 34) = v20;
    *v26 = v20;
    _os_log_impl(&dword_252309000, v5, v25, "%s - %s: [Preset: %s] - Encountered error: %@, while updating preset setpoints", v14, 0x2Au);
    sub_252372288(v26, &qword_27F4DB950);
    MEMORY[0x2530A5A40](v26, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v27, -1, -1);
    MEMORY[0x2530A5A40](v14, -1, -1);
  }

  else
  {

    sub_2524F87CC(v9, type metadata accessor for ThermostatPresetsDetailView);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_2524F45DC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 137) = a4;
  *(v5 + 136) = a2;
  *(v5 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E01A0);
  *(v5 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  *(v5 + 48) = swift_task_alloc();
  v6 = sub_25268F260();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  sub_252692E00();
  *(v5 + 80) = sub_252692DF0();
  v8 = sub_252692DE0();
  *(v5 + 88) = v8;
  *(v5 + 96) = v7;

  return MEMORY[0x2822009F8](sub_2524F474C, v8, v7);
}

uint64_t sub_2524F474C()
{
  if ((*(v0 + 137) & 1) == 0)
  {
    sub_252692E60();
    type metadata accessor for ThermostatPresetsDetailView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    sub_2526924E0();
    sub_25268F200();
    sub_2526924F0();
  }

  if ((*(v0 + 136) & 1) == 0)
  {
    sub_252692E60();
    type metadata accessor for ThermostatPresetsDetailView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    sub_2526924E0();
    sub_25268F220();
    sub_2526924F0();
  }

  v1 = *(v0 + 32);
  v2 = *(v1 + *(type metadata accessor for ThermostatPresetsDetailView() + 68));
  if (v2)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    sub_2526924E0();
    v2(v3);
    sub_25247CDCC(v2);
    (*(v5 + 8))(v3, v4);
LABEL_9:

    v10 = *(v0 + 8);

    return v10();
  }

  v6 = *(v0 + 48);
  sub_2524DD6E0(v6);
  v7 = sub_252690490();
  *(v0 + 104) = v7;
  v8 = *(v7 - 8);
  *(v0 + 112) = v8;
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v9 = *(v0 + 48);

    sub_252372288(v9, &qword_27F4DB250);
    goto LABEL_9;
  }

  v12 = *(v0 + 56);
  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  (*(v13 + 56))(v14, 0, 1, v12);
  v15 = swift_task_alloc();
  *(v0 + 120) = v15;
  *v15 = v0;
  v15[1] = sub_2524F4A98;
  v16 = *(v0 + 40);

  return MEMORY[0x282170E90](v16);
}

uint64_t sub_2524F4A98()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 128) = v0;

  sub_252372288(v3, &qword_27F4E01A0);
  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_2524F4C78;
  }

  else
  {
    (*(v2[14] + 8))(v2[6], v2[13]);
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_2524F4BF8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2524F4BF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2524F4C78()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[6];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2524F4D24(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v20 = a2;
  v21 = a4;
  v22 = a1;
  v23 = a3;
  v4 = sub_25268F260();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_252690200();
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_252690490();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2524DD6E0(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_252372288(v12, &qword_27F4DB250);
    v17 = 0;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_252690220();
    if (v20)
    {
      type metadata accessor for ThermostatPresetsDetailView();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
      sub_2526924E0();
      sub_25268F240();
      (*(v24 + 8))(v6, v4);
    }

    if (v21)
    {
      type metadata accessor for ThermostatPresetsDetailView();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
      sub_2526924E0();
      sub_25268F230();
      (*(v24 + 8))(v6, v4);
    }

    v17 = sub_2526901F0();
    (*(v7 + 8))(v9, v25);
    (*(v14 + 8))(v16, v13);
  }

  return v17 & 1;
}

uint64_t sub_2524F50C0(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF48);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF58);
  v11 = *(*(v10 - 8) + 16);
  if (a2)
  {
    v11(v9, a1, v10);
    sub_25237153C(v9, v6, &qword_27F4DFF50);
    swift_storeEnumTagMultiPayload();
    sub_2524F5BE8();
    sub_252400FC8(&qword_27F4DFF68, &qword_27F4DFF58);
    sub_252691470();
    return sub_252372288(v9, &qword_27F4DFF50);
  }

  else
  {
    v11(v6, a1, v10);
    swift_storeEnumTagMultiPayload();
    sub_2524F5BE8();
    sub_252400FC8(&qword_27F4DFF68, &qword_27F4DFF58);
    return sub_252691470();
  }
}

unint64_t sub_2524F5350()
{
  result = qword_27F4DFEB0;
  if (!qword_27F4DFEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFEA8);
    sub_2524F53DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFEB0);
  }

  return result;
}

unint64_t sub_2524F53DC()
{
  result = qword_27F4DFEB8;
  if (!qword_27F4DFEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFEC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFED8);
    sub_252400FC8(&qword_27F4DFEE0, &qword_27F4DFED8);
    sub_252404480();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFEE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFEF0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDE80);
    sub_252400FC8(&qword_27F4DDE98, &qword_27F4DDE80);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFEB8);
  }

  return result;
}

void sub_2524F56CC()
{
  sub_2524F59B8(319, &qword_27F4DEFD8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2524F59B8(319, &qword_27F4DFF18, MEMORY[0x277D15458], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_25268DF30();
      if (v2 <= 0x3F)
      {
        sub_2524F59B8(319, &qword_27F4DFC08, MEMORY[0x277D16E18], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_25268E350();
          if (v4 <= 0x3F)
          {
            sub_2524DA358(319, &qword_27F4DFB00, &qword_27F4DFA28, &unk_2526A1F70, MEMORY[0x277CDF338]);
            if (v5 <= 0x3F)
            {
              sub_2524F59B8(319, &qword_27F4DFF20, MEMORY[0x277D15FB0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_2524F59B8(319, &qword_27F4DFF28, MEMORY[0x277D16658], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_2524F5A1C();
                  if (v8 <= 0x3F)
                  {
                    sub_2524DA358(319, &qword_27F4DFB08, &qword_27F4DFA30, &unk_2526A6A70, MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      sub_2526904A0();
                      if (v10 <= 0x3F)
                      {
                        sub_2524DA358(319, &qword_27F4DDD98, &qword_27F4DB010, &unk_25269E300, MEMORY[0x277D83D88]);
                        if (v11 <= 0x3F)
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
    }
  }
}

void sub_2524F59B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2524F5A1C()
{
  if (!qword_27F4DE678)
  {
    v0 = sub_252692510();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DE678);
    }
  }
}

unint64_t sub_2524F5A6C()
{
  result = qword_27F4DFF30;
  if (!qword_27F4DFF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFF38);
    sub_252400FC8(&qword_27F4DFF40, &qword_27F4DFEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFF30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HiddenViewModifier(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_2524F5BE8()
{
  result = qword_27F4DFF60;
  if (!qword_27F4DFF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFF50);
    sub_252400FC8(&qword_27F4DFF68, &qword_27F4DFF58);
    sub_2524F5CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFF60);
  }

  return result;
}

unint64_t sub_2524F5CA0()
{
  result = qword_27F4DFF70;
  if (!qword_27F4DFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFF70);
  }

  return result;
}

uint64_t sub_2524F5D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatPresetsDetailView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2524F5D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatPresetsDetailView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2524F5DCC()
{
  v1 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_252690490();

  return sub_2524E43EC(v0 + v2);
}

uint64_t sub_2524F5EB0(uint64_t a1)
{
  v4 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_252401074;

  return sub_2524E4B40(a1, v6, v7, v1 + v5);
}

uint64_t sub_2524F5FA0(uint64_t a1)
{
  v4 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_252401074;

  return sub_2524E47C0(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_17Tm()
{
  v1 = type metadata accessor for ThermostatPresetsDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2526909E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[7];
  v8 = sub_252690490();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[8];
  v11 = sub_25268E350();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v5 + v1[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v14 = v5 + v1[10];
  v15 = sub_25268F260();
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);

  v16 = v5 + v1[11];
  v17 = sub_25268F9F0();
  (*(*(v17 - 8) + 8))(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF00);

  if (*(v5 + v1[14] + 8))
  {
  }

  v18 = v1[16];
  v19 = sub_2526904A0();
  (*(*(v19 - 8) + 8))(v5 + v18, v19);
  if (*(v5 + v1[17]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2524F6484(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2524F651C()
{
  result = qword_27F4DFFF0;
  if (!qword_27F4DFFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFFE8);
    sub_2524F65A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFFF0);
  }

  return result;
}

unint64_t sub_2524F65A8()
{
  result = qword_27F4DFFF8;
  if (!qword_27F4DFFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0000);
    sub_2524F7E68(&qword_27F4E0008, &qword_27F4E0010, &unk_2526A29A0, sub_2524DBC2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFFF8);
  }

  return result;
}

unint64_t sub_2524F668C()
{
  result = qword_27F4E0048;
  if (!qword_27F4E0048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0058);
    sub_252400FC8(&qword_27F4E0060, &qword_27F4E0058);
    swift_getOpaqueTypeConformance2();
    sub_2524F831C(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0048);
  }

  return result;
}

uint64_t sub_2524F67B8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ThermostatPresetsDetailView();

  return sub_2524E7584(a1);
}

uint64_t objectdestroy_20Tm()
{
  v1 = type metadata accessor for ThermostatPresetsDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2526909E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[7];
  v8 = sub_252690490();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[8];
  v11 = sub_25268E350();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v5 + v1[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v14 = v5 + v1[10];
  v15 = sub_25268F260();
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);

  v16 = v5 + v1[11];
  v17 = sub_25268F9F0();
  (*(*(v17 - 8) + 8))(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF00);

  if (*(v5 + v1[14] + 8))
  {
  }

  v18 = v1[16];
  v19 = sub_2526904A0();
  (*(*(v19 - 8) + 8))(v5 + v18, v19);
  if (*(v5 + v1[17]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2524F6C00(uint64_t a1)
{
  v3 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2524E78E8(a1, v4, v5, v6);
}

unint64_t sub_2524F6C7C()
{
  result = qword_27F4E00D8;
  if (!qword_27F4E00D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E00A8);
    sub_2526900B0();
    sub_2524F831C(&qword_27F4E0090, MEMORY[0x277D16D08]);
    swift_getOpaqueTypeConformance2();
    sub_2524F831C(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E00D8);
  }

  return result;
}

uint64_t sub_2524F6DAC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2526900B0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_25268E200() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2523E233C;

  return sub_2524E805C(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_2524F6F84(uint64_t a1)
{
  v2 = sub_252690DD0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_252690F40();
}

unint64_t sub_2524F704C()
{
  result = qword_27F4E0120;
  if (!qword_27F4E0120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E00F0);
    sub_2524F70D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0120);
  }

  return result;
}

unint64_t sub_2524F70D8()
{
  result = qword_27F4E0128;
  if (!qword_27F4E0128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0118);
    sub_252400FC8(&qword_27F4E0130, &qword_27F4E0138);
    sub_252400FC8(&qword_27F4DD460, &qword_27F4DD468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0128);
  }

  return result;
}

unint64_t sub_2524F71C4()
{
  result = qword_27F4E0178;
  if (!qword_27F4E0178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0150);
    sub_2524F7250();
    sub_2524F739C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0178);
  }

  return result;
}

unint64_t sub_2524F7250()
{
  result = qword_27F4E0180;
  if (!qword_27F4E0180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0148);
    sub_252690D20();
    sub_252400FC8(&qword_27F4E0168, &qword_27F4E0148);
    sub_2524F831C(&qword_27F4DF1B0, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0180);
  }

  return result;
}

unint64_t sub_2524F739C()
{
  result = qword_27F4E0188;
  if (!qword_27F4E0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0188);
  }

  return result;
}

uint64_t objectdestroy_48Tm()
{
  v1 = type metadata accessor for ThermostatPresetsDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2526909E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[7];
  v8 = sub_252690490();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[8];
  v11 = sub_25268E350();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v5 + v1[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v14 = v5 + v1[10];
  v15 = sub_25268F260();
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);

  v16 = v5 + v1[11];
  v17 = sub_25268F9F0();
  (*(*(v17 - 8) + 8))(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF00);

  if (*(v5 + v1[14] + 8))
  {
  }

  v18 = v1[16];
  v19 = sub_2526904A0();
  (*(*(v19 - 8) + 8))(v5 + v18, v19);
  if (*(v5 + v1[17]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_2524F77CC(int a1)
{
  v3 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v4 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64);
  return sub_2524E5710(*(v1 + v4), a1, *(v1 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2524F7860(uint64_t a1)
{
  v4 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_252401074;

  return sub_2524F3AEC(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_2524F79BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0218);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25237153C(a1, &v5 - v3, &qword_27F4E0218);
  return sub_252691070();
}

unint64_t sub_2524F7A64()
{
  result = qword_27F4E01E0;
  if (!qword_27F4E01E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E01D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E01E0);
  }

  return result;
}

unint64_t sub_2524F7AE8()
{
  result = qword_27F4E01F8;
  if (!qword_27F4E01F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E01B8);
    sub_2524F7BA0();
    sub_252400FC8(&qword_27F4DC310, &qword_27F4DC318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E01F8);
  }

  return result;
}

unint64_t sub_2524F7BA0()
{
  result = qword_27F4E0200;
  if (!qword_27F4E0200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E01E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E01D8);
    sub_2524F7A64();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4E0208, &qword_27F4E01F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0200);
  }

  return result;
}

unint64_t sub_2524F7CC4()
{
  result = qword_27F4E0278;
  if (!qword_27F4E0278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0280);
    sub_2524F831C(&qword_27F4E0288, _s17SleepScheduleViewVMa);
    sub_2524F831C(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0278);
  }

  return result;
}

unint64_t sub_2524F7DB0()
{
  result = qword_27F4E0290;
  if (!qword_27F4E0290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0250);
    sub_2524F7E68(&qword_27F4E0298, &qword_27F4E0258, &unk_2526A2C60, sub_2524F7EE4);
    sub_2524F7F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0290);
  }

  return result;
}

uint64_t sub_2524F7E68(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_2524F7EE4()
{
  result = qword_27F4E02A0;
  if (!qword_27F4E02A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E02A8);
    sub_2524F8268(&qword_27F4E02B0, &qword_27F4E02B8, &unk_2526A2C80, sub_2524DB2CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E02A0);
  }

  return result;
}

unint64_t sub_2524F7F94()
{
  result = qword_27F4E02C0;
  if (!qword_27F4E02C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0238);
    sub_252400FC8(&qword_27F4E02C8, &qword_27F4E02D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E02C0);
  }

  return result;
}

unint64_t sub_2524F8044()
{
  result = qword_27F4E02D8;
  if (!qword_27F4E02D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0228);
    sub_2524F7E68(&qword_27F4E0260, &qword_27F4E0230, &unk_2526A2C38, sub_2524F7C94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E02D8);
  }

  return result;
}

unint64_t sub_2524F8118()
{
  result = qword_27F4E0328;
  if (!qword_27F4E0328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0300);
    sub_2524DBC2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0328);
  }

  return result;
}

unint64_t sub_2524F81B8()
{
  result = qword_27F4E0338;
  if (!qword_27F4E0338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0330);
    sub_252400FC8(&qword_27F4DFC68, &qword_27F4DFC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0338);
  }

  return result;
}

uint64_t sub_2524F8268(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t sub_2524F831C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2524F8370@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_252690490();

  return sub_2524F19F0(v1 + v4, a1);
}

uint64_t sub_2524F8448(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_252690490() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2524F1BC8(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_2524F8520(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_252690490() - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2523E233C;

  return sub_2524F1E78(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t objectdestroyTm_17(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_2524F8740(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_2524F87CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2524F882C@<X0>(_BYTE *a1@<X8>)
{
  sub_252690490();
  type metadata accessor for ThermostatPresetsDetailView();
  return sub_2524F0244(a1);
}

uint64_t sub_2524F892C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_252690490() - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_25268E200() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_252401074;

  return sub_2524EFAFC(a1, v13, v14, v1 + v6, v15, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_108Tm()
{
  v1 = sub_252690490();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ThermostatPresetsDetailView();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v24 = *(*(v6 - 1) + 64);
  swift_unknownObjectRelease();
  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v25 = v8;
  v10 = v0 + v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2526909E0();
    (*(*(v11 - 8) + 8))(v0 + v8, v11);
  }

  else
  {
  }

  v12 = v6[7];
  if (!(*(v2 + 48))(v10 + v12, 1, v1))
  {
    v9(v10 + v12, v1);
  }

  v13 = v6[8];
  v14 = sub_25268E350();
  (*(*(v14 - 8) + 8))(v10 + v13, v14);
  v15 = v10 + v6[9];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v16 - 8) + 8))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v17 = v10 + v6[10];
  v18 = sub_25268F260();
  (*(*(v18 - 8) + 8))(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);

  v19 = v10 + v6[11];
  v20 = sub_25268F9F0();
  (*(*(v20 - 8) + 8))(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF00);

  if (*(v10 + v6[14] + 8))
  {
  }

  v21 = v6[16];
  v22 = sub_2526904A0();
  (*(*(v22 - 8) + 8))(v10 + v21, v22);
  if (*(v10 + v6[17]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v25 + v24, v3 | v7 | 7);
}

uint64_t objectdestroy_94Tm()
{
  v1 = type metadata accessor for ThermostatPresetsDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v23 = *(*(v1 - 1) + 64);
  v4 = sub_252690490();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2526909E0();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = v1[7];
  if (!(*(v5 + 48))(v8 + v10, 1, v4))
  {
    (*(v5 + 8))(v8 + v10, v4);
  }

  v11 = v1[8];
  v12 = sub_25268E350();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  v13 = v8 + v1[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v15 = v8 + v1[10];
  v16 = sub_25268F260();
  (*(*(v16 - 8) + 8))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);

  v17 = v8 + v1[11];
  v18 = sub_25268F9F0();
  (*(*(v18 - 8) + 8))(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF00);

  if (*(v8 + v1[14] + 8))
  {
  }

  v19 = v1[16];
  v20 = sub_2526904A0();
  (*(*(v20 - 8) + 8))(v8 + v19, v20);
  if (*(v8 + v1[17]))
  {
  }

  v21 = (v3 + v23 + v6) & ~v6;
  (*(v5 + 8))(v0 + v21, v4);

  return MEMORY[0x2821FE8E8](v0, v21 + v7, v2 | v6 | 7);
}

uint64_t sub_2524F9380(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *, uint64_t, uint64_t))
{
  v9 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_252690490() - 8);
  return sub_2524F035C(a1, *(v4 + 16), *(v4 + 24), v4 + v10, v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), a2, a3, a4);
}

uint64_t objectdestroy_114Tm()
{
  v1 = type metadata accessor for ThermostatPresetsDetailView();
  v2 = *(*(v1 - 1) + 80);
  v28 = *(*(v1 - 1) + 64);
  v3 = sub_252690490();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v25 = *(v4 + 64);
  v27 = sub_25268E200();
  v6 = *(v27 - 8);
  v7 = *(v6 + 80);
  v26 = *(v6 + 64);
  swift_unknownObjectRelease();
  v8 = v0 + ((v2 + 32) & ~v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2526909E0();
    (*(*(v9 - 8) + 8))(v0 + ((v2 + 32) & ~v2), v9);
  }

  else
  {
  }

  v10 = v1[7];
  if (!(*(v4 + 48))(v8 + v10, 1, v3))
  {
    (*(v4 + 8))(v8 + v10, v3);
  }

  v11 = v1[8];
  v12 = sub_25268E350();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  v13 = v8 + v1[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v15 = v8 + v1[10];
  v16 = sub_25268F260();
  (*(*(v16 - 8) + 8))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);

  v17 = v8 + v1[11];
  v18 = sub_25268F9F0();
  (*(*(v18 - 8) + 8))(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF00);

  if (*(v8 + v1[14] + 8))
  {
  }

  v19 = v1[16];
  v20 = sub_2526904A0();
  (*(*(v20 - 8) + 8))(v8 + v19, v20);
  if (*(v8 + v1[17]))
  {
  }

  v21 = v2 | v5 | v7;
  v22 = (v28 + ((v2 + 32) & ~v2) + v5 + 1) & ~v5;
  v23 = (v22 + v25 + v7) & ~v7;
  (*(v4 + 8))(v0 + v22, v3);
  (*(v6 + 8))(v0 + v23, v27);

  return MEMORY[0x2821FE8E8](v0, v23 + v26, v21 | 7);
}

uint64_t sub_2524F9938(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ThermostatPresetsDetailView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_252690490() - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_25268E200() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_252401074;

  return sub_2524F0B08(a1, v13, v14, v1 + v6, v15, v1 + v9, v1 + v12);
}

unint64_t sub_2524F9AF8()
{
  result = qword_27F4E0378;
  if (!qword_27F4E0378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0380);
    sub_2524F5BE8();
    sub_252400FC8(&qword_27F4DFF68, &qword_27F4DFF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0378);
  }

  return result;
}

uint64_t sub_2524F9BB8()
{
  v0 = sub_252692BA0();
  CTFontCreateWithNameAndOptions(v0, 60.0, 0, 0x20000uLL);

  result = sub_252691BE0();
  qword_27F4FB440 = result;
  return result;
}

uint64_t sub_2524F9C20()
{
  v0 = sub_25268DA10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  sub_25268E330();
  v4 = sub_25268DF10();
  if (*(v4 + 16) && (v5 = sub_252367880(v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = *(v1 + 8);

    v8(v3, v0);

    return v7;
  }

  else
  {

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

uint64_t sub_2524F9D60@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25268DA10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268DF30();
  v6 = sub_25268DF20();
  sub_25268E340();
  sub_25268E330();
  v7 = sub_25268DEF0();

  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  return result;
}

uint64_t ThermostatPresetsDetailView.HomePresenceView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0388);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  v11 = sub_25268DE60();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  if (!v21)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_7;
  }

  v20 = v7;
  sub_25268DED0();

  sub_25268DEB0();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_7:
    sub_252372288(v10, &qword_27F4DFF90);
    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  (*(v12 + 32))(v14, v10, v11);
  if (sub_2524F9C20())
  {
    v15 = sub_25268DBF0();

    if (v15)
    {
      v19[1] = v19;
      MEMORY[0x28223BE20](v16);
      v19[-4] = v2;
      v19[-3] = v14;
      v19[-2] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0390);
      sub_2524FAA88();
      v17 = v20;
      sub_252691C10();

      (*(v5 + 32))(a1, v17, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return (*(v12 + 8))(v14, v11);
    }
  }

  (*(v12 + 8))(v14, v11);
  return (*(v5 + 56))(a1, 1, 1, v4);
}

uint64_t type metadata accessor for ThermostatPresetsDetailView.HomePresenceView()
{
  result = qword_27F4E0428;
  if (!qword_27F4E0428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2524FA27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a2;
  v63 = a4;
  v67 = sub_25268DE60();
  v65 = *(v67 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  v9 = *(v8 - 8);
  v59 = v8 - 8;
  v62 = v9;
  v61 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_252690800();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268D7D0();
  MEMORY[0x28223BE20](v12 - 8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  MEMORY[0x28223BE20](v52);
  MEMORY[0x28223BE20](v13);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E03A8);
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v15 = &v51 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E03A0);
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v70 = &v51 - v16;
  v68 = a1;
  v71 = a1;
  v72 = a2;
  v73 = a3;
  v76 = sub_252692C40();
  v77 = v17;
  v78 = 0;
  v79 = MEMORY[0x277D84F90];
  sub_252692070();

  sub_2524FDC40();
  v18 = sub_252691D40();
  v20 = v19;
  v76 = v18;
  v77 = v19;
  v22 = v21 & 1;
  v78 = v21 & 1;
  v79 = v23;
  sub_252692070();
  sub_2524228D8(v18, v20, v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E03C0);
  sub_252474348();
  sub_2524FAC6C();
  sub_252692800();
  v24 = v55;
  v25 = v54;
  v26 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x277CDF350], v56);
  v27 = sub_2524FABDC();
  v28 = v51;
  sub_252691F60();
  (*(v24 + 8))(v25, v26);
  v29 = v28;
  (*(v53 + 8))(v15, v28);
  v30 = sub_25268DDE0();
  v31 = v68;
  v32 = v68 + *(v59 + 32);
  v33 = *v32;
  v34 = *(v32 + 8);
  LOBYTE(v32) = *(v32 + 16);
  v75 = v30;
  v76 = v33;
  v77 = v34;
  v78 = v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300);
  MEMORY[0x2530A4210](&v74, v35);
  v36 = v60;
  sub_252501998(v31, v60);
  v37 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v38 = v37 + v61;
  v39 = swift_allocObject();
  sub_2525019FC(v36, v39 + v37);
  type metadata accessor for HMAdaptiveTemperatureDriver(0);
  v76 = v29;
  v77 = v27;
  swift_getOpaqueTypeConformance2();
  sub_2525044F8(&qword_27F4DACD0, type metadata accessor for HMAdaptiveTemperatureDriver);
  v40 = v63;
  v41 = v57;
  v42 = v70;
  sub_2526921D0();

  (*(v58 + 8))(v42, v41);
  sub_252501998(v68, v36);
  v44 = v64;
  v43 = v65;
  v45 = v67;
  (*(v65 + 16))(v64, v69, v67);
  v46 = v43;
  v47 = (v38 + *(v43 + 80)) & ~*(v43 + 80);
  v48 = swift_allocObject();
  sub_2525019FC(v36, v48 + v37);
  (*(v46 + 32))(v48 + v47, v44, v45);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0390);
  v50 = (v40 + *(result + 36));
  *v50 = sub_252501AE0;
  v50[1] = v48;
  v50[2] = 0;
  v50[3] = 0;
  return result;
}

unint64_t sub_2524FAA88()
{
  result = qword_27F4E0398;
  if (!qword_27F4E0398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E03A0);
    type metadata accessor for HMAdaptiveTemperatureDriver(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E03A8);
    sub_2524FABDC();
    swift_getOpaqueTypeConformance2();
    sub_2525044F8(&qword_27F4DACD0, type metadata accessor for HMAdaptiveTemperatureDriver);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0398);
  }

  return result;
}

unint64_t sub_2524FABDC()
{
  result = qword_27F4E03B0;
  if (!qword_27F4E03B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E03A8);
    sub_252474348();
    sub_2524FAC6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E03B0);
  }

  return result;
}

unint64_t sub_2524FAC6C()
{
  result = qword_27F4E03B8;
  if (!qword_27F4E03B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E03C0);
    sub_2524FACF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E03B8);
  }

  return result;
}

unint64_t sub_2524FACF0()
{
  result = qword_27F4E03C8;
  if (!qword_27F4E03C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E03D0);
    sub_2524FAD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E03C8);
  }

  return result;
}

unint64_t sub_2524FAD7C()
{
  result = qword_27F4E03D8;
  if (!qword_27F4E03D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E03E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DAC10);
    type metadata accessor for HMAdaptiveTemperatureDriver(255);
    sub_2524FAEC0();
    sub_2525044F8(&qword_27F4E0410, type metadata accessor for HMAdaptiveTemperatureDriver);
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4E0418, &qword_27F4E0420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E03D8);
  }

  return result;
}

unint64_t sub_2524FAEC0()
{
  result = qword_27F4E03E8;
  if (!qword_27F4E03E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DAC10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E03F0);
    sub_252690D20();
    sub_2524FB008();
    sub_2525044F8(&qword_27F4DF1B0, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_2525044F8(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E03E8);
  }

  return result;
}

unint64_t sub_2524FB008()
{
  result = qword_27F4E03F8;
  if (!qword_27F4E03F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E03F0);
    sub_252400FC8(&qword_27F4E0400, &qword_27F4E0408);
    sub_252400FC8(&qword_27F4DD2A8, &qword_27F4DD2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E03F8);
  }

  return result;
}

uint64_t sub_2524FB0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[2] = a4;
  v7 = sub_25268DE60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v17[3] = sub_25268DE50();
  v17[1] = swift_getKeyPath();
  sub_252501998(a1, v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v8 + 80) + v13) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_2525019FC(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  (*(v8 + 32))(v15 + v14, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E04E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E03D0);
  sub_252400FC8(&qword_27F4E04E8, &qword_27F4E04E0);
  sub_2525044F8(&qword_27F4E0410, type metadata accessor for HMAdaptiveTemperatureDriver);
  sub_2524FACF0();
  return sub_252692790();
}

uint64_t sub_2524FB3C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v108 = a4;
  v118 = a3;
  v124 = a5;
  v125 = a2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0420);
  MEMORY[0x28223BE20](v123);
  v116 = &v94 - v6;
  v106 = sub_25268DE60();
  v105 = *(v106 - 8);
  v7 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v103 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E04F0);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E04F8);
  v114 = *(v9 - 8);
  v115 = v9;
  MEMORY[0x28223BE20](v9);
  v109 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v113 = &v94 - v12;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0500);
  MEMORY[0x28223BE20](v127);
  v128 = &v94 - v13;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0508);
  MEMORY[0x28223BE20](v120);
  v121 = &v94 - v14;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E03E0);
  MEMORY[0x28223BE20](v126);
  v122 = &v94 - v15;
  v107 = sub_252690D20();
  v99 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v98 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  v117 = *(v17 - 8);
  v18 = *(v117 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E03F0);
  MEMORY[0x28223BE20](v101);
  v21 = &v94 - v20;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0510);
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = &v94 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518);
  v95 = *(v23 - 8);
  v24 = *(v95 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v94 - v27;
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC10);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v97 = &v94 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0520);
  MEMORY[0x28223BE20](v30);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  if (*a1 == 2)
  {
    v94 = v17;
    v64 = v125;
    v65 = (v125 + *(v17 + 28));
    v66 = *v65;
    v67 = *(v65 + 1);
    v133 = v66;
    v134 = v67;
    v96 = v34;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
    sub_252692500();
    v104 = v129;
    v102 = v130;
    LODWORD(v101) = v131;
    v68 = v105;
    v69 = v103;
    v70 = v106;
    (*(v105 + 16))(v103, v118, v106);
    sub_252501998(v64, &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v71 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v72 = (v7 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = (*(v117 + 80) + v72 + 8) & ~*(v117 + 80);
    v74 = swift_allocObject();
    (*(v68 + 32))(v74 + v71, v69, v70);
    *(v74 + v72) = v108;
    v75 = sub_2525019FC(&v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v74 + v73);
    MEMORY[0x28223BE20](v75);
    v76 = v125;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0528);
    type metadata accessor for HMAdaptiveTemperatureDriver(255);
    v78 = v77;
    v79 = sub_2524FAEC0();
    v80 = sub_2525044F8(&qword_27F4E0410, type metadata accessor for HMAdaptiveTemperatureDriver);
    v129 = OpaqueTypeConformance2;
    v130 = v78;
    v131 = v79;
    v132 = v80;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_252501E54();
    v81 = v110;
    sub_252690B70();
    v82 = v76 + *(v94 + 32);
    v83 = *v82;
    v84 = *(v82 + 8);
    v133 = v83;
    v134 = v84;
    sub_252692500();
    sub_252400FC8(&qword_27F4E0578, &qword_27F4E04F0);
    sub_252502214();
    v85 = v113;
    v86 = v112;
    sub_252692030();

    (*(v111 + 8))(v81, v86);
    v88 = v114;
    v87 = v115;
    v89 = *(v114 + 16);
    v90 = v109;
    v89(v109, v85, v115);
    v91 = v116;
    v89(v116, v90, v87);
    v92 = *(v88 + 8);
    v92(v90, v87);
    sub_25237153C(v91, v121, &qword_27F4E0420);
    swift_storeEnumTagMultiPayload();
    sub_252400FC8(&qword_27F4E0418, &qword_27F4E0420);
    v93 = v122;
    sub_252691470();
    sub_25237153C(v93, v128, &qword_27F4E03E0);
    swift_storeEnumTagMultiPayload();
    sub_2524FAD7C();
    sub_252691470();
    sub_252372288(v93, &qword_27F4E03E0);
    sub_252372288(v91, &qword_27F4E0420);
    return (v92)(v85, v87);
  }

  else if (*a1 == 1)
  {
    v96 = v34;
    v115 = v36;
    v116 = &v94 - v35;
    v37 = sub_25268DDC0();
    (*(*(v37 - 8) + 56))(v28, 1, 1, v37);
    v118 = sub_25268DDE0();
    sub_252501998(v125, &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_25237153C(v28, v25, &qword_27F4E0518);
    v38 = (*(v117 + 80) + 16) & ~*(v117 + 80);
    v39 = (v18 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v95 + 80) + v39 + 8) & ~*(v95 + 80);
    v41 = swift_allocObject();
    sub_2525019FC(v19, v41 + v38);
    *(v41 + v39) = 1;
    v42 = sub_2523714D4(v25, v41 + v40, &qword_27F4E0518);
    MEMORY[0x28223BE20](v42);
    v43 = 0x657463656C65532ELL;
    if (v118 != 1)
    {
      v43 = 0;
    }

    v125 = v43;
    if (v118 == 1)
    {
      v44 = 0xE900000000000064;
    }

    else
    {
      v44 = 0xE000000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0588);
    sub_252502278();
    sub_252692550();
    v45 = v101;
    v21[*(v101 + 36)] = 0;
    v46 = v98;
    sub_252690D10();
    v118 = sub_2524FB008();
    v47 = sub_2525044F8(&qword_27F4DF1B0, MEMORY[0x277CDDB18]);
    v48 = v100;
    v49 = v107;
    sub_252691DC0();
    (*(v99 + 8))(v46, v49);
    sub_252372288(v21, &qword_27F4E03F0);
    v129 = 0;
    v130 = 0xE000000000000000;
    sub_252693210();
    MEMORY[0x2530A4800](0xD000000000000041, 0x80000002526B0ED0);
    v50 = sub_2524FF018(v28, 1);
    MEMORY[0x2530A4800](v50);

    MEMORY[0x2530A4800](v125, v44);

    v129 = v45;
    v130 = v49;
    v131 = v118;
    v132 = v47;
    swift_getOpaqueTypeConformance2();
    v51 = v97;
    v52 = v104;
    sub_252692070();

    (*(v102 + 8))(v48, v52);
    sub_252372288(v28, &qword_27F4E0518);
    sub_2523714D4(v51, v32, &qword_27F4DAC10);
    v53 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC18) + 36)];
    *v53 = 1;
    v53[8] = 1;
    v54 = v115;
    v55 = v116;
    v56 = v96;
    (*(v115 + 32))(v116, v32, v96);
    v57 = v54;
    (*(v54 + 16))(v121, v55, v56);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for HMAdaptiveTemperatureDriver(255);
    v59 = v58;
    v60 = sub_2524FAEC0();
    v61 = sub_2525044F8(&qword_27F4E0410, type metadata accessor for HMAdaptiveTemperatureDriver);
    v129 = OpaqueTypeConformance2;
    v130 = v59;
    v131 = v60;
    v132 = v61;
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4E0418, &qword_27F4E0420);
    v62 = v122;
    sub_252691470();
    sub_25237153C(v62, v128, &qword_27F4E03E0);
    swift_storeEnumTagMultiPayload();
    sub_2524FAD7C();
    sub_252691470();
    sub_252372288(v62, &qword_27F4E03E0);
    return (*(v57 + 8))(v55, v56);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_2524FAD7C();
    return sub_252691470();
  }
}

uint64_t sub_2524FC574@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a2;
  v5 = type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0540);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_25268DDC0();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  sub_25268DDD0();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_252372288(v11, &qword_27F4E0518);
    v19 = 1;
    v21 = v39;
    v20 = v40;
  }

  else
  {
    v34 = a3;
    v32 = *(v13 + 32);
    v32(v18, v11, v12);
    v41[0] = a1;

    sub_25250235C(v41);
    v41[4] = v41[0];
    KeyPath = swift_getKeyPath();
    v22 = v37;
    sub_252501998(v36, v37);
    (*(v13 + 16))(v15, v18, v12);
    v23 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v24 = (v6 + *(v13 + 80) + v23) & ~*(v13 + 80);
    v25 = swift_allocObject();
    sub_2525019FC(v22, v25 + v23);
    v32((v25 + v24), v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E05B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E05C0);
    sub_252400FC8(&qword_27F4E05C8, &qword_27F4E05B8);
    v26 = sub_2525044F8(&qword_27F4E0570, MEMORY[0x277D15118]);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DAC30);
    v28 = sub_252501FE8();
    v41[0] = v27;
    v41[1] = v12;
    v41[2] = v28;
    v41[3] = v26;
    swift_getOpaqueTypeConformance2();
    v29 = v38;
    sub_252692790();
    (*(v13 + 8))(v18, v12);
    v21 = v39;
    v20 = v40;
    a3 = v34;
    (*(v39 + 32))(v34, v29, v40);
    v19 = 0;
  }

  return (*(v21 + 56))(a3, v19, 1, v20);
}

uint64_t sub_2524FCA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_25268DDC0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(v8, a2, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  sub_2524FCC6C(a1, v8, v11);
  sub_252372288(v8, &qword_27F4E0518);
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC20) + 36);
  v14(v15, a1, v12);
  *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC28) + 36)) = 1;
  return sub_2523714D4(v11, a3, &qword_27F4DAC30);
}

uint64_t sub_2524FCC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a1;
  v72 = a2;
  v69 = a3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E05D0) - 8;
  MEMORY[0x28223BE20](v65);
  v59 = &v53 - v3;
  v73 = sub_252690D20();
  v61 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v60 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518);
  v66 = *(v5 - 8);
  v6 = *(v66 + 8);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v53 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = sub_25268DDC0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v70 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v62 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0550);
  MEMORY[0x28223BE20](v74);
  v55 = &v53 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E05D8);
  v67 = *(v19 - 8);
  v68 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v53 - v20;
  sub_252501998(v64, &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v13 + 16);
  v57 = v13 + 16;
  v58 = v22;
  v22(&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v71, v12);
  v23 = v72;
  sub_25237153C(v72, v11, &qword_27F4E0518);
  v24 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v25 = *(v13 + 80);
  v56 = v13;
  v26 = (v17 + v25 + v24) & ~v25;
  v27 = (v14 + v66[80] + v26) & ~v66[80];
  v28 = swift_allocObject();
  v29 = v28 + v24;
  v30 = v74;
  sub_2525019FC(v62, v29);
  v53 = *(v13 + 32);
  v53(v28 + v26, v70, v12);
  v31 = v11;
  v32 = v59;
  sub_2523714D4(v31, v28 + v27, &qword_27F4E0518);
  v33 = v71;
  v75 = v23;
  v76 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E05E0);
  sub_252504188();
  v34 = v55;
  v35 = v73;
  sub_252692550();
  *(v34 + *(v30 + 36)) = 0;
  v36 = v60;
  sub_252690D10();
  v37 = sub_252502130();
  v38 = sub_2525044F8(&qword_27F4DF1B0, MEMORY[0x277CDDB18]);
  v66 = v21;
  v64 = v37;
  v62 = v38;
  sub_252691DC0();
  (*(v61 + 8))(v36, v35);
  sub_252372288(v34, &qword_27F4E0550);
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_252693210();
  MEMORY[0x2530A4800](0xD00000000000003DLL, 0x80000002526B0FF0);
  v39 = sub_25268DDB0();
  MEMORY[0x2530A4800](v39);

  v40 = v63;
  v58(v63, v33, v12);
  v41 = v56;
  (*(v56 + 56))(v40, 0, 1, v12);
  v42 = *(v65 + 56);
  sub_25237153C(v72, v32, &qword_27F4E0518);
  sub_25237153C(v40, v32 + v42, &qword_27F4E0518);
  v43 = *(v41 + 48);
  if (v43(v32, 1, v12) == 1)
  {
    sub_252372288(v40, &qword_27F4E0518);
    if (v43(v32 + v42, 1, v12) == 1)
    {
      sub_252372288(v32, &qword_27F4E0518);
LABEL_9:
      v46 = 0xE900000000000064;
      v45 = 0x657463656C65532ELL;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v44 = v54;
  sub_25237153C(v32, v54, &qword_27F4E0518);
  if (v43(v32 + v42, 1, v12) == 1)
  {
    sub_252372288(v40, &qword_27F4E0518);
    (*(v41 + 8))(v44, v12);
LABEL_6:
    sub_252372288(v32, &qword_27F4E05D0);
    goto LABEL_7;
  }

  v47 = v70;
  v53(v70, (v32 + v42), v12);
  sub_2525044F8(&qword_27F4E0600, MEMORY[0x277D15118]);
  v48 = sub_252692B70();
  v49 = *(v41 + 8);
  v49(v47, v12);
  sub_252372288(v40, &qword_27F4E0518);
  v49(v44, v12);
  sub_252372288(v32, &qword_27F4E0518);
  if (v48)
  {
    goto LABEL_9;
  }

LABEL_7:
  v45 = 0;
  v46 = 0xE000000000000000;
LABEL_10:
  MEMORY[0x2530A4800](v45, v46);

  v77 = v74;
  v78 = v73;
  v79 = v64;
  v80 = v62;
  swift_getOpaqueTypeConformance2();
  v50 = v68;
  v51 = v66;
  sub_252692070();

  return (*(v67 + 8))(v51, v50);
}

uint64_t sub_2524FD5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v58 = a2;
  v4 = sub_252690D20();
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x28223BE20](v4);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E03F0);
  MEMORY[0x28223BE20](v50);
  v48 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0510);
  v12 = *(v11 - 8);
  v55 = v11;
  v56 = v12;
  MEMORY[0x28223BE20](v11);
  v49 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC10);
  MEMORY[0x28223BE20](v21 - 8);
  v51 = &v45 - v22;
  sub_25268DDD0();
  v46 = sub_25268DDE0();
  sub_252501998(a1, v9);
  sub_25237153C(v20, v17, &qword_27F4E0518);
  v23 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v15 + 80) + v24 + 8) & ~*(v15 + 80);
  v26 = swift_allocObject();
  sub_2525019FC(v9, v26 + v23);
  v27 = v58;
  *(v26 + v24) = v58;
  sub_2523714D4(v17, v26 + v25, &qword_27F4E0518);
  v59 = v46 == v27;
  v60 = v27;
  v61 = v20;
  v28 = v20;
  v29 = 0x657463656C65532ELL;
  if (v46 != v27)
  {
    v29 = 0;
  }

  v47 = v29;
  if (v46 == v27)
  {
    v30 = 0xE900000000000064;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0588);
  sub_252502278();
  v31 = v48;
  sub_252692550();
  v32 = v50;
  *(v31 + *(v50 + 36)) = 0;
  v33 = v52;
  sub_252690D10();
  v34 = sub_2524FB008();
  v35 = sub_2525044F8(&qword_27F4DF1B0, MEMORY[0x277CDDB18]);
  v36 = v49;
  v37 = v53;
  sub_252691DC0();
  (*(v54 + 8))(v33, v37);
  sub_252372288(v31, &qword_27F4E03F0);
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_252693210();
  MEMORY[0x2530A4800](0xD000000000000041, 0x80000002526B0ED0);
  v38 = v58;
  v39 = sub_2524FF018(v28, v58);
  MEMORY[0x2530A4800](v39);

  MEMORY[0x2530A4800](v47, v30);

  v62 = v32;
  v63 = v37;
  v64 = v34;
  v65 = v35;
  swift_getOpaqueTypeConformance2();
  v40 = v51;
  v41 = v55;
  sub_252692070();

  (*(v56 + 8))(v36, v41);
  sub_252372288(v28, &qword_27F4E0518);
  v42 = v57;
  sub_2523714D4(v40, v57, &qword_27F4DAC10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC18);
  v44 = v42 + *(result + 36);
  *v44 = v38;
  *(v44 + 8) = 1;
  return result;
}

uint64_t sub_2524FDC40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E04C0);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - v5;
  v7 = sub_25268D7D0();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25268D810();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v40 = sub_25268D880();
  v14 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_252692C40();
  v38 = v17;
  v18 = [objc_opt_self() hf_privacyKBArticleURL];
  sub_25268D870();

  v19 = type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  if (v43)
  {
    v36 = v9;
    sub_25268DED0();

    sub_25268DEB0();

    v20 = sub_25268DE60();
    if ((*(*(v20 - 8) + 48))(v13, 1, v20))
    {
      sub_252372288(v13, &qword_27F4DFF90);
      v9 = v36;
    }

    else
    {
      v21 = sub_25268DDE0();
      sub_252372288(v13, &qword_27F4DFF90);
      v9 = v36;
      if (v21 == 2)
      {
        v43 = sub_252692C40();
        v44 = v22;
        goto LABEL_10;
      }
    }
  }

  v23 = sub_252692C40();
  v25 = v24;
  v26 = (v1 + *(v19 + 40));
  if (v26[1])
  {
    v28 = v26[2];
    v27 = v26[3];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_252694E90;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_2523AB7A4();
    *(v29 + 32) = v28;
    *(v29 + 40) = v27;

    v30 = sub_252692C60();
    v25 = v31;
  }

  else
  {
    v30 = v23;
  }

  v43 = v30;
  v44 = v25;
LABEL_10:
  MEMORY[0x2530A4800](32, 0xE100000000000000);
  sub_25268D800();
  sub_25268D7E0();
  sub_25268D800();
  sub_25268D7E0();
  v32 = v40;
  (*(v14 + 16))(v6, v16, v40);
  (*(v14 + 56))(v6, 0, 1, v32);
  sub_25237153C(v6, v39, &qword_27F4E04C0);
  sub_252501BAC();
  sub_25268D7F0();
  sub_252372288(v6, &qword_27F4E04C0);
  v43 = sub_252692340();
  sub_252501C00();
  sub_25268D7F0();
  sub_2525044F8(&qword_27F4E04D8, MEMORY[0x277CC8C40]);
  v33 = v42;
  sub_25268D7C0();
  (*(v41 + 8))(v9, v33);
  return (*(v14 + 8))(v16, v32);
}

void *sub_2524FE278(void *result, void *a2)
{
  if (*result != *a2)
  {
    type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300);
    sub_2526926B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
    return sub_2526924F0();
  }

  return result;
}

uint64_t sub_2524FE350()
{
  sub_25268DDE0();
  type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300);
  return sub_2526926B0();
}

uint64_t sub_2524FE3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v27 = type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v27);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_252692E30();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v28 = a1;
  sub_252501998(a1, v11);
  sub_25237153C(a3, v8, &qword_27F4E0518);
  sub_252692E00();
  v16 = sub_252692DF0();
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v6 + 80) + v18 + 8) & ~*(v6 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v16;
  *(v20 + 24) = v21;
  sub_2525019FC(v11, v20 + v17);
  v22 = v29;
  *(v20 + v18) = v29;
  sub_2523714D4(v8, v20 + v19, &qword_27F4E0518);
  sub_252573ED4(0, 0, v14, &unk_2526A3090, v20);

  if (v22 == 1)
  {
    v24 = v28 + *(v27 + 28);
    v25 = *v24;
    v26 = *(v24 + 8);
    v31 = v25;
    v32 = v26;
    v30 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
    return sub_2526924F0();
  }

  return result;
}

uint64_t sub_2524FE6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518);
  v6[7] = swift_task_alloc();
  sub_252692E00();
  v6[8] = sub_252692DF0();
  v8 = sub_252692DE0();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x2822009F8](sub_2524FE7A8, v8, v7);
}

uint64_t sub_2524FE7A8()
{
  type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  v1 = *(v0 + 16);
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = sub_25268DDC0();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_2524FE918;
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);

    return MEMORY[0x28216E4E8](v7, v5, v6);
  }

  else
  {

    **(v0 + 24) = *(v0 + 88) == 0;

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2524FE918()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  sub_252372288(v2, &qword_27F4E0518);
  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_2524FEA88, v4, v3);
}

uint64_t sub_2524FEA88()
{

  **(v0 + 24) = *(v0 + 88) == 0;

  v1 = *(v0 + 8);

  return v1();
}

double sub_2524FEB04@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2526911D0();
  v24 = 1;
  sub_2524FEC84(a1, a2, a3, &v15);
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v33[0] = v15;
  v33[1] = v16;
  v33[2] = v17;
  v33[3] = v18;
  v33[4] = v19;
  v33[5] = v20;
  v33[6] = v21;
  v34 = v22;
  sub_25237153C(&v25, &v14, &qword_27F4E05A8);
  sub_252372288(v33, &qword_27F4E05A8);
  *(&v23[4] + 7) = v29;
  *(&v23[5] + 7) = v30;
  *(&v23[6] + 7) = v31;
  *(&v23[7] + 7) = v32;
  *(v23 + 7) = v25;
  *(&v23[1] + 7) = v26;
  *(&v23[2] + 7) = v27;
  *(&v23[3] + 7) = v28;
  v9 = v23[5];
  *(a4 + 81) = v23[4];
  *(a4 + 97) = v9;
  *(a4 + 113) = v23[6];
  *(a4 + 128) = *(&v23[6] + 15);
  v10 = v23[1];
  *(a4 + 17) = v23[0];
  *(a4 + 33) = v10;
  result = *&v23[2];
  v12 = v23[3];
  *(a4 + 49) = v23[2];
  v13 = v24;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v13;
  *(a4 + 65) = v12;
  *(a4 + 144) = 0;
  return result;
}

uint64_t sub_2524FEC84@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a2;
  v26 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_2526923E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2526923D0();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  sub_252692420();

  (*(v9 + 8))(v11, v8);
  sub_252691310();
  v12 = sub_252691340();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = sub_252692400();
  v25 = v13;

  sub_252372288(v7, &qword_27F4DBD48);
  sub_252691AF0();
  sub_252691B40();
  v14 = sub_252691B90();

  KeyPath = swift_getKeyPath();
  v16 = sub_252692340();
  sub_252692920();
  sub_2526909C0();
  LOBYTE(v8) = (v26 & 1) == 0;
  v17 = sub_2524FF018(v27, v28);
  v19 = v18;
  *&v33 = v13;
  *(&v33 + 1) = KeyPath;
  *&v34 = v14;
  *(&v34 + 1) = v16;
  v35 = v30;
  v36 = v31;
  v37 = v32;
  v38 = v8;
  LOBYTE(v44) = v8;
  v42 = v31;
  v43 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v30;
  v29 = 0;
  v20 = v34;
  *a4 = v33;
  *(a4 + 16) = v20;
  v21 = v41;
  v22 = v43;
  v23 = v44;
  *(a4 + 48) = v42;
  *(a4 + 64) = v22;
  *(a4 + 32) = v21;
  *(a4 + 80) = v23;
  *(a4 + 88) = v17;
  *(a4 + 96) = v18;
  *(a4 + 104) = 0;
  *(a4 + 112) = MEMORY[0x277D84F90];
  sub_25237153C(&v33, v45, &qword_27F4E05B0);
  sub_25235EABC(v17, v19, 0);

  sub_2524228D8(v17, v19, 0);

  v45[0] = v25;
  v45[1] = KeyPath;
  v45[2] = v14;
  v45[3] = v16;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v49 = v8;
  return sub_252372288(v45, &qword_27F4E05B0);
}

uint64_t sub_2524FF018(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_25268DDC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 2)
  {
    sub_25237153C(a1, v6, &qword_27F4E0518);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_252372288(v6, &qword_27F4E0518);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_252694E90;
      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = sub_2523AB7A4();
      *(v11 + 32) = 0;
      *(v11 + 40) = 0xE000000000000000;
      v12 = sub_252692C60();
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_252694E90;
      v15 = sub_25268DDB0();
      v17 = v16;
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = sub_2523AB7A4();
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      v12 = sub_252692C60();

      (*(v8 + 8))(v10, v7);
    }

    return v12;
  }

  else if (a2 == 1)
  {

    return sub_252692C40();
  }

  else
  {
    v18[2] = 0;
    v18[3] = 0xE000000000000000;
    sub_252693210();
    MEMORY[0x2530A4800](0xD000000000000012, 0x80000002526B0F70);
    v18[1] = a2;
    type metadata accessor for HMAdaptiveTemperatureDriver(0);
    sub_252693250();
    MEMORY[0x2530A4800](46, 0xE100000000000000);
    result = sub_252693260();
    __break(1u);
  }

  return result;
}

uint64_t sub_2524FF3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518);
  v29 = *(v4 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v25 = &v25 - v5;
  v7 = sub_25268DDC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = sub_252692E30();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_252501998(a1, v13);
  (*(v8 + 16))(v10, v27, v7);
  sub_25237153C(v28, v6, &qword_27F4E0518);
  sub_252692E00();
  v18 = sub_252692DF0();
  v19 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v20 = (v12 + *(v8 + 80) + v19) & ~*(v8 + 80);
  v21 = (v9 + *(v29 + 80) + v20) & ~*(v29 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v18;
  *(v22 + 24) = v23;
  sub_2525019FC(v13, v22 + v19);
  (*(v8 + 32))(v22 + v20, v10, v7);
  sub_2523714D4(v25, v22 + v21, &qword_27F4E0518);
  sub_252573ED4(0, 0, v16, &unk_2526A3180, v22);
}

uint64_t sub_2524FF734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518);
  v6[7] = swift_task_alloc();
  sub_252692E00();
  v6[8] = sub_252692DF0();
  v8 = sub_252692DE0();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x2822009F8](sub_2524FF808, v8, v7);
}

uint64_t sub_2524FF808()
{
  type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  v1 = *(v0 + 16);
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 40);
    v4 = sub_25268DDC0();
    v5 = *(v4 - 8);
    (*(v5 + 16))(v2, v3, v4);
    (*(v5 + 56))(v2, 0, 1, v4);
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_2524FF9DC;
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);

    return MEMORY[0x28216E4E8](2, v7, v8);
  }

  else
  {

    **(v0 + 24) = *(v0 + 88) == 0;

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_2524FF9DC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  sub_252372288(v2, &qword_27F4E0518);
  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_252504540, v4, v3);
}

uint64_t sub_2524FFB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_2526911D0();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0608);
  sub_2524FFBD0(a1, a2, a3 + *(v6 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E05E0);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2524FFBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v71 = a2;
  v62 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0610);
  MEMORY[0x28223BE20](v67);
  v69 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = (&v57 - v5);
  v6 = sub_25268DDC0();
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v57 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E05D0) - 8;
  MEMORY[0x28223BE20](v61);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v57 - v13;
  v14 = sub_2526923E0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0618);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - v20;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0620);
  MEMORY[0x28223BE20](v64);
  v66 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v63 = &v57 - v24;
  MEMORY[0x28223BE20](v25);
  v65 = &v57 - v26;
  sub_2526923D0();
  (*(v15 + 104))(v17, *MEMORY[0x277CE0FE0], v14);
  v27 = sub_252692420();

  (*(v15 + 8))(v17, v14);
  sub_252691AF0();
  sub_252691B40();
  v28 = sub_252691B90();

  KeyPath = swift_getKeyPath();
  v30 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0628) + 36)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0630) + 28);
  sub_252691310();
  v32 = sub_252691340();
  (*(*(v32 - 8) + 56))(v30 + v31, 0, 1, v32);
  *v30 = swift_getKeyPath();
  *v21 = v27;
  *(v21 + 1) = 0;
  *(v21 + 8) = 1;
  *(v21 + 3) = KeyPath;
  *(v21 + 4) = v28;
  v34 = v59;
  v33 = v60;
  v35 = sub_252692340();
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0638) + 36)] = v35;
  sub_252692920();
  sub_2526909C0();
  v36 = &v21[*(v19 + 44)];
  v37 = v73;
  *v36 = v72;
  *(v36 + 1) = v37;
  *(v36 + 2) = v74;
  (*(v33 + 16))(v34, v71, v6);
  (*(v33 + 56))(v34, 0, 1, v6);
  v38 = *(v61 + 56);
  sub_25237153C(v62, v9, &qword_27F4E0518);
  sub_25237153C(v34, &v9[v38], &qword_27F4E0518);
  v39 = *(v33 + 48);
  if (v39(v9, 1, v6) != 1)
  {
    v41 = v58;
    sub_25237153C(v9, v58, &qword_27F4E0518);
    if (v39(&v9[v38], 1, v6) != 1)
    {
      v42 = v57;
      (*(v33 + 32))(v57, &v9[v38], v6);
      sub_2525044F8(&qword_27F4E0600, MEMORY[0x277D15118]);
      v43 = sub_252692B70();
      v44 = *(v33 + 8);
      v44(v42, v6);
      sub_252372288(v34, &qword_27F4E0518);
      v44(v41, v6);
      sub_252372288(v9, &qword_27F4E0518);
      v40 = v43 ^ 1;
      goto LABEL_8;
    }

    sub_252372288(v34, &qword_27F4E0518);
    (*(v33 + 8))(v41, v6);
    goto LABEL_6;
  }

  sub_252372288(v34, &qword_27F4E0518);
  if (v39(&v9[v38], 1, v6) != 1)
  {
LABEL_6:
    sub_252372288(v9, &qword_27F4E05D0);
    v40 = 1;
    goto LABEL_8;
  }

  sub_252372288(v9, &qword_27F4E0518);
  v40 = 0;
LABEL_8:
  v45 = v63;
  sub_2523714D4(v21, v63, &qword_27F4E0618);
  v46 = v65;
  *(v45 + *(v64 + 36)) = v40 & 1;
  sub_2523714D4(v45, v46, &qword_27F4E0620);
  v47 = sub_2526911D0();
  v48 = v68;
  *v68 = v47;
  *(v48 + 8) = 0;
  *(v48 + 16) = 1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0640);
  sub_2525004DC(v71, v48 + *(v49 + 44));
  v50 = sub_2526912D0();
  v51 = v66;
  v52 = (v48 + *(v67 + 36));
  *v52 = v50;
  v52[1] = sub_25241A688;
  v52[2] = 0;
  sub_25237153C(v46, v51, &qword_27F4E0620);
  v53 = v69;
  sub_25237153C(v48, v69, &qword_27F4E0610);
  v54 = v70;
  sub_25237153C(v51, v70, &qword_27F4E0620);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0648);
  sub_25237153C(v53, v54 + *(v55 + 48), &qword_27F4E0610);
  sub_252372288(v48, &qword_27F4E0610);
  sub_252372288(v46, &qword_27F4E0620);
  sub_252372288(v53, &qword_27F4E0610);
  return sub_252372288(v51, &qword_27F4E0620);
}

uint64_t sub_2525004DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a1;
  v3 = sub_2526923E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0650);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  sub_2526923D0();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v14 = sub_252692420();

  (*(v4 + 8))(v6, v3);
  v15 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0658) + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0630) + 28);
  sub_252691310();
  v17 = sub_252691340();
  (*(*(v17 - 8) + 56))(v15 + v16, 0, 1, v17);
  *v15 = swift_getKeyPath();
  *v13 = v14;
  *(v13 + 1) = 0;
  *(v13 + 8) = 1;
  v18 = [objc_opt_self() systemGray3Color];
  v19 = sub_252692240();
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0660) + 36)] = v19;
  sub_252692920();
  sub_2526909C0();
  v20 = &v13[*(v8 + 44)];
  v21 = v29;
  *v20 = v28;
  *(v20 + 1) = v21;
  *(v20 + 2) = v30;
  v22 = sub_25268DDB0();
  v24 = v23;
  sub_25237153C(v13, v10, &qword_27F4E0650);
  sub_25237153C(v10, a2, &qword_27F4E0650);
  v25 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0668) + 48);
  *v25 = v22;
  *(v25 + 8) = v24;
  *(v25 + 16) = 0;
  *(v25 + 24) = MEMORY[0x277D84F90];
  sub_25235EABC(v22, v24, 0);

  sub_252372288(v13, &qword_27F4E0650);
  sub_2524228D8(v22, v24, 0);

  return sub_252372288(v10, &qword_27F4E0650);
}

void sub_2525008C4()
{
  sub_25268DF30();
  if (v0 <= 0x3F)
  {
    sub_252500A14();
    if (v1 <= 0x3F)
    {
      sub_252500A78(319, &qword_27F4E0438, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_252500A78(319, &qword_27F4DE678, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_25268E350();
          if (v4 <= 0x3F)
          {
            sub_252500A78(319, &qword_27F4DFC10, &type metadata for LocationDevice, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_252500A14()
{
  if (!qword_27F4DFB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA28);
    v0 = sub_2526907F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DFB00);
    }
  }
}

void sub_252500A78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_252500AC8()
{
  result = qword_27F4E0440;
  if (!qword_27F4E0440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0448);
    sub_252400FC8(&qword_27F4E0450, &qword_27F4E0388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0440);
  }

  return result;
}

uint64_t sub_252500BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v61 = a3;
  v71 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0458);
  v9 = *(v8 - 8);
  v68 = v8;
  v69 = v9;
  MEMORY[0x28223BE20](v8);
  v56 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0460);
  MEMORY[0x28223BE20](v11 - 8);
  v70 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = &v56 - v14;
  v15 = sub_252690D20();
  v16 = *(v15 - 8);
  v62 = v15;
  v63 = v16;
  MEMORY[0x28223BE20](v15);
  v59 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_252691960();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0468);
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v56 - v21;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0470);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v56 - v25;
  (*(v19 + 16))(&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18, v24);
  v27 = (*(v19 + 80) + 33) & ~*(v19 + 80);
  v28 = swift_allocObject();
  v29 = v61;
  *(v28 + 16) = a2;
  *(v28 + 24) = v29;
  *(v28 + 32) = a4;
  (*(v19 + 32))(v28 + v27, &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v72 = a1;
  v73 = a2;
  v74 = v29;
  v75 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0478);
  sub_25250183C();
  v30 = v57;
  sub_252692550();
  v31 = v59;
  sub_252690D10();
  sub_252400FC8(&qword_27F4E0498, &qword_27F4E0468);
  sub_2525044F8(&qword_27F4DF1B0, MEMORY[0x277CDDB18]);
  v32 = v26;
  v33 = v58;
  v34 = v62;
  sub_252691DC0();
  (*(v63 + 8))(v31, v34);
  (*(v60 + 8))(v30, v33);
  if (sub_252691920())
  {
    v35 = v56;
    sub_252691950();
    v36 = sub_252691A50();
    sub_252690760();
    v38 = v67;
    v37 = v68;
    v39 = v35 + *(v68 + 36);
    *v39 = v36;
    *(v39 + 8) = v40;
    *(v39 + 16) = v41;
    *(v39 + 24) = v42;
    *(v39 + 32) = v43;
    *(v39 + 40) = 0;
    sub_2523714D4(v35, v38, &qword_27F4E0458);
    v44 = 0;
    v45 = v37;
  }

  else
  {
    v44 = 1;
    v38 = v67;
    v45 = v68;
  }

  (*(v69 + 56))(v38, v44, 1, v45);
  v46 = v64;
  v47 = v65;
  v48 = *(v64 + 16);
  v49 = v32;
  v50 = v66;
  v48(v65, v32, v66);
  v51 = v70;
  sub_25237153C(v38, v70, &qword_27F4E0460);
  v52 = v71;
  v48(v71, v47, v50);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E04A0);
  sub_25237153C(v51, &v52[*(v53 + 48)], &qword_27F4E0460);
  sub_252372288(v38, &qword_27F4E0460);
  v54 = *(v46 + 8);
  v54(v49, v50);
  sub_252372288(v51, &qword_27F4E0460);
  return (v54)(v47, v50);
}

void *sub_252501264(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300);
  result = MEMORY[0x2530A4210](&v5, v3);
  if (v5 == 1)
  {
    MEMORY[0x28223BE20](result);
    sub_2526929A0();
    sub_252690A80();
  }

  return result;
}

uint64_t sub_252501330@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  *a4 = sub_2526911D0();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E04A8);
  sub_2525013CC(a1, a2, a3, (a4 + *(v8 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0478);
  *(a4 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2525013CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, char *a4@<X8>)
{
  v38 = a1;
  v39 = a2;
  v40 = a4;
  v5 = sub_2526923E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252691930();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v35 = &v33 - v14;
  sub_252691940();
  sub_2526923D0();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  v37 = sub_252692420();

  (*(v6 + 8))(v8, v5);
  sub_252692920();
  sub_2526909C0();
  LOBYTE(v46) = 1;
  *&v42[3] = *&v42[27];
  *&v42[11] = *&v42[35];
  *&v42[19] = *&v42[43];
  v34 = sub_252692250();
  v46 = v38;
  v47 = v39;
  LOBYTE(v48) = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300);
  MEMORY[0x2530A4210](v43, v16);
  LOBYTE(v6) = (v43[0] & 1) == 0;
  v17 = *(v10 + 16);
  v36 = v12;
  v18 = v15;
  v19 = v9;
  v17(v12, v18, v9);
  v41 = 1;
  v20 = v40;
  v17(v40, v12, v9);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E04B0);
  v22 = &v20[*(v21 + 48)];
  v23 = v41;
  *v22 = 0;
  v22[8] = v23;
  v24 = &v20[*(v21 + 64)];
  v25 = v37;
  v43[0] = v37;
  v43[1] = 0;
  LOWORD(v44[0]) = 1;
  *(v44 + 2) = *v42;
  *(&v44[2] + 2) = *&v42[16];
  *(&v44[1] + 2) = *&v42[8];
  v26 = v34;
  *&v44[3] = *&v42[23];
  *(&v44[3] + 1) = v34;
  v45 = v6;
  v27 = v44[0];
  *v24 = v37;
  *(v24 + 1) = v27;
  v28 = v44[1];
  v29 = v44[2];
  v30 = v44[3];
  v24[80] = v6;
  *(v24 + 3) = v29;
  *(v24 + 4) = v30;
  *(v24 + 2) = v28;
  sub_25237153C(v43, &v46, &qword_27F4E04B8);
  v31 = *(v10 + 8);
  v31(v35, v19);
  v46 = v25;
  v47 = 0;
  v48 = 1;
  v49 = *v42;
  v50 = *&v42[8];
  *v51 = *&v42[16];
  *&v51[14] = *&v42[23];
  v52 = v26;
  v53 = v6;
  sub_252372288(&v46, &qword_27F4E04B8);
  return (v31)(v36, v19);
}

void *sub_2525017C4()
{
  sub_252691960();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return sub_252501264(v1, v2, v3);
}

unint64_t sub_25250183C()
{
  result = qword_27F4E0480;
  if (!qword_27F4E0480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0478);
    sub_252400FC8(&qword_27F4E0488, &qword_27F4E0490);
    sub_252400FC8(&qword_27F4DD2A8, &qword_27F4DD2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0480);
  }

  return result;
}

uint64_t sub_252501920()
{
  v0 = sub_252691910();
  *v1 = !*v1;
  return v0(&v3, 0);
}

uint64_t sub_252501998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2525019FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_252501A60(void *a1, void *a2)
{
  type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();

  return sub_2524FE278(a1, a2);
}

uint64_t sub_252501AE0()
{
  type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  sub_25268DE60();

  return sub_2524FE350();
}

unint64_t sub_252501BAC()
{
  result = qword_27F4E04C8;
  if (!qword_27F4E04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E04C8);
  }

  return result;
}

unint64_t sub_252501C00()
{
  result = qword_27F4E04D0;
  if (!qword_27F4E04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E04D0);
  }

  return result;
}

uint64_t sub_252501C54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_25268DE60() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2524FB3C0(a1, v2 + v6, v2 + v9, v10, a2);
}

uint64_t sub_252501D64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_25268DE60() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v6 = *(v1 + v4);
  v7 = v1 + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80));

  return sub_2524FC574(v6, v7, a1);
}

unint64_t sub_252501E54()
{
  result = qword_27F4E0530;
  if (!qword_27F4E0530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0528);
    sub_252501ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0530);
  }

  return result;
}

unint64_t sub_252501ED8()
{
  result = qword_27F4E0538;
  if (!qword_27F4E0538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DAC30);
    sub_25268DDC0();
    sub_252501FE8();
    sub_2525044F8(&qword_27F4E0570, MEMORY[0x277D15118]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0538);
  }

  return result;
}

unint64_t sub_252501FE8()
{
  result = qword_27F4E0548;
  if (!qword_27F4E0548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DAC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0550);
    sub_252690D20();
    sub_252502130();
    sub_2525044F8(&qword_27F4DF1B0, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_2525044F8(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0548);
  }

  return result;
}

unint64_t sub_252502130()
{
  result = qword_27F4E0558;
  if (!qword_27F4E0558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0550);
    sub_252400FC8(&qword_27F4E0560, &qword_27F4E0568);
    sub_252400FC8(&qword_27F4DD2A8, &qword_27F4DD2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0558);
  }

  return result;
}

unint64_t sub_252502214()
{
  result = qword_27F4E0580;
  if (!qword_27F4E0580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0580);
  }

  return result;
}

unint64_t sub_252502278()
{
  result = qword_27F4E0590;
  if (!qword_27F4E0590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0588);
    sub_252400FC8(&qword_27F4E0598, &qword_27F4E05A0);
    sub_252400FC8(&qword_27F4DD2A8, &qword_27F4DD2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0590);
  }

  return result;
}

void sub_25250235C(void **a1)
{
  v2 = *(sub_25268DDC0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25262430C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_252502404(v5);
  *a1 = v3;
}

void sub_252502404(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_252693360();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25268DDC0();
        v6 = sub_252692DC0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25268DDC0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2525027F4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_252502530(0, v2, 1, a1);
  }
}

void sub_252502530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25268DDC0();
  MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v31 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_2525044F8(&qword_27F4E0670, MEMORY[0x277D15118]);
      v26 = sub_252692B50();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2525027F4(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_25268DDC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v119 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_252624154(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_25250321C(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_252624154(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_2526240C8(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_2525044F8(&qword_27F4E0670, MEMORY[0x277D15118]);
      LODWORD(v133) = sub_252692B50();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_252692B50() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_252368690(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_252368690((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_25250321C(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_252624154(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_2526240C8(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_2525044F8(&qword_27F4E0670, MEMORY[0x277D15118]);
    v109 = sub_252692B50();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_25250321C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_25268DDC0();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_2525044F8(&qword_27F4E0670, MEMORY[0x277D15118]);
          LOBYTE(v34) = sub_252692B50();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_2525044F8(&qword_27F4E0670, MEMORY[0x277D15118]);
        LOBYTE(v21) = sub_252692B50();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_252594C20(&v54, &v53, &v52);
}

uint64_t sub_252503810(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2523E233C;

  return sub_2524FE6D4(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t objectdestroy_25Tm()
{
  v1 = (type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = v0 + v3;

  v10 = v0 + v3 + v1[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v12 = v1[11];
  v13 = sub_25268E350();
  (*(*(v13 - 8) + 8))(v9 + v12, v13);
  if (*(v9 + v1[12] + 8))
  {
  }

  v14 = sub_25268DDC0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v7, 1, v14))
  {
    (*(v15 + 8))(v0 + v7, v14);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_252503C34()
{
  v1 = *(type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_2524FE3D0(v0 + v2, v5, v6);
}

uint64_t objectdestroy_16Tm(uint64_t (*a1)(void))
{
  v3 = (type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v16 = *(*v3 + 64);
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);

  v10 = v1 + v5 + v3[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v12 = v3[11];
  v13 = sub_25268E350();
  (*(*(v13 - 8) + 8))(v1 + v5 + v12, v13);
  if (*(v1 + v5 + v3[12] + 8))
  {
  }

  v14 = (v5 + v16 + v8) & ~v8;
  (*(v7 + 8))(v1 + v14, v6);

  return MEMORY[0x2821FE8E8](v1, v14 + v9, v4 | v8 | 7);
}

uint64_t sub_252503F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_25268DDC0() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2524FCA78(a1, v9, a2);
}

uint64_t sub_25250404C()
{
  v1 = *(type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_25268DDC0() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518) - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_2524FF3C4(v0 + v2, v0 + v5, v8);
}

unint64_t sub_252504188()
{
  result = qword_27F4E05E8;
  if (!qword_27F4E05E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E05E0);
    sub_252400FC8(&qword_27F4E05F0, &qword_27F4E05F8);
    sub_252400FC8(&qword_27F4DD2A8, &qword_27F4DD2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E05E8);
  }

  return result;
}

uint64_t sub_252504290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD48);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25237153C(a1, &v5 - v3, &qword_27F4DBD48);
  return sub_252690FA0();
}

uint64_t sub_252504338(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_25268DDC0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_252401074;

  return sub_2524FF734(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_2525044F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252504594()
{
  sub_25268E350();
  if (v0 <= 0x3F)
  {
    sub_252500A14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_252504634@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25268DA10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268DF30();
  v6 = sub_25268DF20();
  sub_25268E340();
  sub_25268E330();
  v7 = sub_25268DEF0();

  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  return result;
}

uint64_t sub_252504748@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0698);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  v5 = sub_25268DC10();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s17SleepScheduleViewVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  v9 = v16[0];
  if (v16[0])
  {
    sub_25268DED0();
    sub_25268DE90();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      sub_252372288(v4, &qword_27F4E0698);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v10 = *(sub_25268DC00() + 16);

      if (v10)
      {
        MEMORY[0x28223BE20](v11);
        v16[-2] = v8;
        v16[-1] = v9;
        v16[0] = sub_252692C40();
        v16[1] = v12;
        v17 = 0;
        v18 = MEMORY[0x277D84F90];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E06A8);
        sub_25250517C();
        sub_2526927F0();

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E06A0);
        (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
        return (*(v6 + 8))(v8, v5);
      }

      (*(v6 + 8))(v8, v5);
    }
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E06A0);
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

uint64_t sub_252504AAC()
{
  sub_25268DC00();
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E06C0);
  _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);
  sub_252400FC8(&qword_27F4E06C8, &qword_27F4E06C0);
  sub_252505258(&qword_27F4E06D0, MEMORY[0x277D150F8]);
  sub_252505258(&qword_27F4E06B8, _s17SleepScheduleViewV18ScheduleEditorViewVMa);
  return sub_252692790();
}

uint64_t sub_252504C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_25268DD00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25268DA10();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268DED0();
  sub_25268DE80();

  (*(v7 + 16))(v9, a1, v6);
  _s23ScheduleEditorViewModelCMa();
  swift_allocObject();

  v13 = sub_25250E1E4(v12, v9, sub_2525052A0, a2);

  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E06D8);
  swift_storeEnumTagMultiPayload();
  v14 = _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);
  v15 = *(v14 + 20);
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAB0);
  swift_storeEnumTagMultiPayload();
  v16 = (a3 + *(v14 + 24));
  v19[1] = v13;
  result = sub_2526924D0();
  v18 = v19[3];
  *v16 = v19[2];
  v16[1] = v18;
  return result;
}

uint64_t sub_252504E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v5 = sub_25268DD00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = sub_252692E30();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = *(v6 + 16);
  v16(v11, a1, v5);
  v16(v8, v26, v5);
  sub_252692E00();

  v17 = sub_252692DF0();
  v18 = *(v6 + 80);
  v19 = (v18 + 40) & ~v18;
  v20 = (v7 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 2) = v17;
  *(v21 + 3) = v22;
  *(v21 + 4) = a3;
  v23 = *(v6 + 32);
  v23(&v21[v19], v11, v5);
  v23(&v21[v20], v8, v5);
  sub_2525738C0(0, 0, v14, &unk_2526A32B0, v21);
}

uint64_t sub_2525050A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_252692E00();
  v6[3] = sub_252692DF0();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_25245E280;

  return MEMORY[0x28216E3D0](a5, a6);
}

unint64_t sub_25250517C()
{
  result = qword_27F4E06B0;
  if (!qword_27F4E06B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E06A8);
    sub_252505258(&qword_27F4E06B8, _s17SleepScheduleViewV18ScheduleEditorViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E06B0);
  }

  return result;
}

uint64_t sub_252505258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2525052A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v16 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0720);
  sub_252400FC8(&qword_27F4E0728, &qword_27F4E0720);
  sub_252691C10();
  sub_252509358(v1, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], _s17SleepScheduleViewV18ScheduleEditorViewVMa);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2525092F0(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, _s17SleepScheduleViewV18ScheduleEditorViewVMa);
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0730) + 36));
  *v9 = 0;
  v9[1] = 0;
  v9[2] = sub_2525085A8;
  v9[3] = v8;
  v10 = [objc_opt_self() defaultCenter];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0738);
  sub_252692FE0();

  sub_252509358(v2, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], _s17SleepScheduleViewV18ScheduleEditorViewVMa);
  v12 = swift_allocObject();
  result = sub_2525092F0(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v7, _s17SleepScheduleViewV18ScheduleEditorViewVMa);
  v14 = (a1 + *(v11 + 56));
  *v14 = sub_2525087AC;
  v14[1] = v12;
  return result;
}

uint64_t sub_252505518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);
  v4 = v3 - 8;
  v69 = *(v3 - 8);
  v68 = *(v69 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = &v61[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0748);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v61[-v7];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0750);
  MEMORY[0x28223BE20](v73);
  v71 = &v61[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0758);
  MEMORY[0x28223BE20](v9 - 8);
  v74 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v72 = &v61[-v12];
  v13 = sub_252690B80();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v61[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v61[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0760);
  MEMORY[0x28223BE20](v20 - 8);
  v70 = &v61[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v24 = &v61[-v23];
  *v24 = sub_2526911D0();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0768) + 44)];
  *&v77 = sub_252692C40();
  *(&v77 + 1) = v26;
  sub_252404480();
  v64 = sub_252691D50();
  v63 = v27;
  v62 = v28;
  v65 = v29;
  sub_25268A58C(v19);
  (*(v14 + 104))(v16, *MEMORY[0x277CDF988], v13);
  sub_252505258(&qword_27F4DFD08, MEMORY[0x277CDFA28]);
  v30 = sub_252692B50();
  v31 = *(v14 + 8);
  v31(v16, v13);
  v31(v19, v13);
  v32 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0770) + 36)];
  *v32 = (v30 & 1) == 0;
  v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0778) + 36)];
  *v33 = sub_2526911D0();
  *(v33 + 1) = 0x4010000000000000;
  v33[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0780);
  sub_252505E88(a1, &v33[*(v34 + 44)]);
  v35 = (a1 + *(v4 + 32));
  v36 = a1;
  v38 = *v35;
  v37 = v35[1];
  *&v77 = v38;
  *(&v77 + 1) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0740);
  sub_2526924E0();
  v39 = v76;
  swift_getKeyPath();
  *&v77 = v39;
  sub_252505258(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  v40 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__identifier;
  swift_beginAccess();
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0790) + 52);
  v42 = sub_25268DA10();
  (*(*(v42 - 8) + 16))(&v33[v41], v39 + v40, v42);

  v43 = v63;
  *v25 = v64;
  *(v25 + 1) = v43;
  v25[16] = v62 & 1;
  *(v25 + 3) = v65;
  v44 = sub_2526911D0();
  v45 = v66;
  *v66 = v44;
  v45[1] = 0;
  *(v45 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0798);
  *&v77 = sub_25268DCA0();
  swift_getKeyPath();
  v46 = v67;
  sub_252509358(v36, v67, _s17SleepScheduleViewV18ScheduleEditorViewVMa);
  v47 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v48 = swift_allocObject();
  sub_2525092F0(v46, v48 + v47, _s17SleepScheduleViewV18ScheduleEditorViewVMa);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E07A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E07A8);
  sub_252400FC8(&qword_27F4E07B0, &qword_27F4E07A0);
  sub_252505258(&qword_27F4E07B8, MEMORY[0x277D150E0]);
  sub_25250889C();
  sub_252692790();
  sub_252692920();
  sub_252690D70();
  v49 = v45;
  v50 = v71;
  sub_2523714D4(v49, v71, &qword_27F4E0748);
  v51 = &v50[*(v73 + 36)];
  v52 = v82;
  v51[4] = v81;
  v51[5] = v52;
  v51[6] = v83;
  v53 = v78;
  *v51 = v77;
  v51[1] = v53;
  v54 = v80;
  v51[2] = v79;
  v51[3] = v54;
  sub_252508C6C();
  v55 = v72;
  sub_252692070();
  sub_252372288(v50, &qword_27F4E0750);
  v56 = v70;
  sub_25237153C(v24, v70, &qword_27F4E0760);
  v57 = v74;
  sub_25237153C(v55, v74, &qword_27F4E0758);
  v58 = v75;
  sub_25237153C(v56, v75, &qword_27F4E0760);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0838);
  sub_25237153C(v57, v58 + *(v59 + 48), &qword_27F4E0758);
  sub_252372288(v55, &qword_27F4E0758);
  sub_252372288(v24, &qword_27F4E0760);
  sub_252372288(v57, &qword_27F4E0758);
  return sub_252372288(v56, &qword_27F4E0760);
}

uint64_t sub_252505E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v75 = sub_2526914A0();
  v3 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0850);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0858);
  v77 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = v49 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0860);
  v78 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v71 = v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0868);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = v49 - v11;
  MEMORY[0x28223BE20](v12);
  v67 = v49 - v13;
  MEMORY[0x28223BE20](v14);
  v76 = v49 - v15;
  v58 = sub_252691240();
  OpaqueTypeConformance2 = v16;
  LODWORD(v52) = v17;
  v56 = v18;
  v19 = (a1 + *(_s17SleepScheduleViewV18ScheduleEditorViewVMa(0) + 24));
  v20 = *v19;
  v64 = v19[1];
  v65 = v20;
  v82 = v20;
  v83 = v64;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0740);
  sub_252692500();
  v21 = v79;
  v22 = v80;
  v23 = v81;
  swift_getKeyPath();
  v79 = v21;
  v80 = v22;
  v81 = v23;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0870);
  sub_2526926C0();

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0878);
  v60 = *(v3 + 72);
  v24 = swift_allocObject();
  v59 = xmmword_252694E90;
  *(v24 + 16) = xmmword_252694E90;
  sub_252691490();
  v82 = v24;
  v54 = sub_252505258(&qword_27F4E0880, MEMORY[0x277CDDFC8]);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0888);
  v55 = sub_252400FC8(&qword_27F4E0890, &qword_27F4E0888);
  sub_252693190();
  v25 = v72;
  sub_252690750();
  v26 = sub_252400FC8(&qword_27F4E0898, &qword_27F4E0858);
  v27 = v71;
  v28 = v73;
  sub_252691E40();
  v29 = *(v77 + 8);
  v77 += 8;
  v58 = v29;
  v29(v25, v28);
  v79 = v28;
  v80 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v66;
  sub_252692070();
  v31 = *(v78 + 8);
  v78 += 8;
  v56 = v31;
  v31(v27, v30);
  v52 = sub_252691240();
  v51 = v32;
  v49[1] = v33;
  v50 = v34;
  v82 = v65;
  v83 = v64;
  sub_252692500();
  v36 = v79;
  v35 = v80;
  v37 = v81;
  swift_getKeyPath();
  v79 = v36;
  v80 = v35;
  v81 = v37;
  sub_2526926C0();

  v38 = swift_allocObject();
  *(v38 + 16) = v59;
  sub_252691490();
  v82 = v38;
  sub_252693190();
  v39 = v72;
  sub_252690750();
  v40 = v71;
  v41 = v73;
  sub_252691E40();
  v58(v39, v41);
  v42 = v67;
  sub_252692070();
  v56(v40, v30);
  v43 = v76;
  v44 = v68;
  sub_25237153C(v76, v68, &qword_27F4E0868);
  v45 = v69;
  sub_25237153C(v42, v69, &qword_27F4E0868);
  v46 = v70;
  sub_25237153C(v44, v70, &qword_27F4E0868);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E08A0);
  sub_25237153C(v45, v46 + *(v47 + 48), &qword_27F4E0868);
  sub_252372288(v42, &qword_27F4E0868);
  sub_252372288(v43, &qword_27F4E0868);
  sub_252372288(v45, &qword_27F4E0868);
  return sub_252372288(v44, &qword_27F4E0868);
}

__n128 sub_25250672C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E07D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  sub_252506868(a1, v11 - v5);
  sub_252692920();
  sub_252690D70();
  sub_2523714D4(v6, a2, &qword_27F4E07D0);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E07A8) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_252506868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v41 = a2;
  v39 = sub_252690D20();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E07E8);
  MEMORY[0x28223BE20](v35);
  v6 = &v34 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E07E0);
  MEMORY[0x28223BE20](v37);
  v8 = &v34 - v7;
  v9 = sub_252506EB0(a1);
  v11 = v10;
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  v38 = v13 & 1;
  *(v14 + 32) = v13 & 1;
  v42 = v9;
  v43 = v11;
  v44 = v13 & 1;
  v45 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0840);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFE08);
  v16 = sub_252400FC8(&qword_27F4DFE00, &qword_27F4DFE08);
  v17 = sub_252508D40();
  *&v52 = v15;
  *(&v52 + 1) = &type metadata for ScheduleDayToggleStyle;
  *&v53 = v16;
  *(&v53 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  sub_252692550();
  sub_252692920();
  sub_2526909C0();
  v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0800) + 36)];
  v19 = v53;
  *v18 = v52;
  *(v18 + 1) = v19;
  *(v18 + 2) = v54;
  v20 = &v6[*(v35 + 36)];
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_252691260();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0820) + 36)] = 0;
  sub_252690D10();
  sub_252508AFC();
  sub_252505258(&qword_27F4DF1B0, MEMORY[0x277CDDB18]);
  v23 = v39;
  sub_252691DC0();
  (*(v40 + 8))(v4, v23);
  sub_252372288(v6, &qword_27F4E07E8);
  LOBYTE(v4) = sub_252691A80();
  sub_252690760();
  v24 = &v8[*(v37 + 36)];
  *v24 = v4;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_252693210();
  v50 = v47;
  v51 = v48;
  MEMORY[0x2530A4800](0xD000000000000036, 0x80000002526B10F0);
  v29 = sub_25268DC80();
  MEMORY[0x2530A4800](v29);

  v47 = v9;
  v48 = v11;
  v49 = v38;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300);
  MEMORY[0x2530A4210](&v46, v30);
  if (v46)
  {
    v31 = 0x657463656C65532ELL;
  }

  else
  {
    v31 = 0;
  }

  if (v46)
  {
    v32 = 0xE900000000000064;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  MEMORY[0x2530A4800](v31, v32);

  sub_2525089E4();
  sub_252692070();

  return sub_252372288(v8, &qword_27F4E07E0);
}

uint64_t sub_252506DD0()
{
  _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0740);
  sub_2526924E0();
  sub_25250CFFC();
}

uint64_t sub_252506E40()
{
  _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0740);
  sub_2526924E0();
  sub_25250CFFC();
}

uint64_t sub_252506EB0(uint64_t a1)
{
  v33 = a1;
  v3 = sub_25268DCB0();
  v31 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = v5;
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = _s17SleepScheduleViewV18ScheduleEditorViewVMa;
  sub_252509358(v1, v10, _s17SleepScheduleViewV18ScheduleEditorViewVMa);
  v32 = *(v4 + 16);
  v32(v6, a1, v3);
  sub_252692E00();
  v11 = sub_252692DF0();
  v12 = *(v8 + 80);
  v13 = *(v4 + 80);
  v14 = (v12 + 32) & ~v12;
  v15 = (v9 + v13 + v14) & ~v13;
  v27 = v14;
  v28 = v12 | v13;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v11;
  *(v16 + 24) = v17;
  v18 = v30;
  sub_2525092F0(v10, v16 + v14, v30);
  v19 = *(v4 + 32);
  v26 = v4 + 32;
  v20 = v31;
  v19(v16 + v15, v6, v31);
  v21 = v19;
  sub_252509358(v34, v10, v18);
  v22 = v20;
  v32(v6, v33, v20);
  v23 = sub_252692DF0();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = MEMORY[0x277D85700];
  sub_2525092F0(v10, v24 + v27, v18);
  v21(v24 + v15, v6, v22);
  sub_2526926E0();
  return v35;
}

uint64_t sub_2525071AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300);
  MEMORY[0x2530A4210](&v1);
  return sub_2526926B0();
}

uint64_t sub_252507240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  v11 = a4;

  sub_252692600();
  sub_252400FC8(&qword_27F4DFE00, &qword_27F4DFE08);
  sub_252508D40();
  sub_252691E10();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2525073D8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  sub_25268DC90();
  v5 = sub_252691B00();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_252691B50();
  sub_252372288(v4, &qword_27F4DBD40);
  sub_252691B20();
  sub_252691B90();

  v6 = sub_252691D00();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_252507548(uint64_t a1)
{
  v2 = sub_252690810();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_252690E30();
}

uint64_t sub_252507614()
{
  result = sub_252692340();
  qword_27F4FB448 = result;
  return result;
}

uint64_t sub_252507634()
{
  result = sub_252692330();
  qword_27F4FB450 = result;
  return result;
}

uint64_t sub_252507654()
{
  result = sub_252692340();
  qword_27F4FB458 = result;
  return result;
}

uint64_t sub_252507674@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_25268DCB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(_s17SleepScheduleViewV18ScheduleEditorViewVMa(0) + 24));
  v10 = *v8;
  v9 = v8[1];
  v16 = v10;
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0740);
  sub_2526924E0();
  v11 = v15[1];
  v12 = sub_25268DC70();
  swift_getKeyPath();
  v16 = v11;
  sub_252505258(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  v13 = *(v11 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__days);
  sub_25250B4E8(v12, v7);

  LOBYTE(v12) = sub_2525F8490(v7, v13);

  result = (*(v5 + 8))(v7, v4);
  *a2 = v12 & 1;
  return result;
}

uint64_t sub_252507848(unsigned __int8 *a1)
{
  v1 = *a1;
  _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0740);
  sub_2526924E0();
  v2 = sub_25268DC70();
  if (v1 == 1)
  {
    sub_25250CD10(v2);
  }

  else
  {
    sub_25250C944(v2);
  }
}

uint64_t sub_252507918@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v43[1] = a1;
  v48 = a3;
  v4 = sub_252691700();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E08D0);
  MEMORY[0x28223BE20](v45);
  v8 = v43 - v7;
  v9 = sub_252692760();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E08D8);
  MEMORY[0x28223BE20](v12);
  v14 = v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E08E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E08E8);
  MEMORY[0x28223BE20](v18);
  v20 = v43 - v19;
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_252691260();
  (*(*(v22 - 8) + 104))(v11, v21, v22);
  v44 = a2;
  if (a2)
  {
    if (qword_27F4DAAA0 != -1)
    {
      swift_once();
    }

    v23 = qword_27F4FB448;
  }

  else
  {
    v23 = sub_252692310();
  }

  sub_2525092F0(v11, v14, MEMORY[0x277CE1260]);
  *&v14[*(v12 + 52)] = v23;
  *&v14[*(v12 + 56)] = 256;
  if (qword_27F4DAAB0 != -1)
  {
    swift_once();
  }

  v24 = qword_27F4FB458;
  sub_2526908F0();
  sub_252509358(v14, v17, MEMORY[0x277CE1260]);
  v25 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E08F0) + 36)];
  v26 = v50;
  *v25 = v49;
  *(v25 + 1) = v26;
  *(v25 + 4) = v51;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E08F8);
  *&v17[*(v27 + 52)] = v24;
  *&v17[*(v27 + 56)] = 256;
  v28 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0900) + 36)];
  sub_2525093C0(v14, v28);

  v29 = sub_252692920();
  v31 = v30;
  sub_252372288(v14, &qword_27F4E08D8);
  v32 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0908) + 36));
  *v32 = v29;
  v32[1] = v31;
  sub_252692920();
  sub_2526909C0();
  sub_2523714D4(v17, v20, &qword_27F4E08E0);
  v33 = &v20[*(v18 + 36)];
  v34 = v53;
  *v33 = v52;
  *(v33 + 1) = v34;
  *(v33 + 2) = v54;
  v35 = sub_252692920();
  v37 = v36;
  sub_252691710();
  if (v44)
  {
    if (qword_27F4DAAA8 != -1)
    {
      swift_once();
    }

    v24 = qword_27F4FB450;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0910);
  v39 = v48;
  v40 = v48 + *(v38 + 36);
  (*(v46 + 32))(v8, v6, v47);
  *&v8[*(v45 + 36)] = v24;
  sub_2523714D4(v8, v40, &qword_27F4E08D0);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0918) + 36));
  *v41 = v35;
  v41[1] = v37;
  return sub_2523714D4(v20, v39, &qword_27F4E08E8);
}

uint64_t sub_252507EDC(uint64_t a1)
{
  v2 = sub_252691780();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E08B0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  (*(v3 + 16))(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2, v7);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  v14 = a1;
  sub_252691760();
  sub_252505258(&qword_27F4E08B8, MEMORY[0x277CDE2B0]);
  sub_252692550();
  v15 = sub_252691750() & 1;
  sub_252400FC8(&qword_27F4E08C0, &qword_27F4E08B0);
  sub_252509270();
  sub_252691DD0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_252508184(uint64_t a1)
{
  v4 = *(sub_25268DD00() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2523E233C;

  return sub_2525050A8(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

void sub_2525082D8()
{
  sub_252508404(319, &qword_27F4E06F8, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_252508404(319, &qword_27F4DFB30, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_252508404(319, &qword_27F4E0700, _s23ScheduleEditorViewModelCMa, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252508404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_252508468()
{
  result = qword_27F4E0708;
  if (!qword_27F4E0708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0710);
    sub_2525084EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0708);
  }

  return result;
}

unint64_t sub_2525084EC()
{
  result = qword_27F4E0718;
  if (!qword_27F4E0718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E06A0);
    sub_25250517C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0718);
  }

  return result;
}

uint64_t sub_2525085A8()
{
  _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);

  return sub_252506DD0();
}

uint64_t objectdestroy_21Tm()
{
  v1 = _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E06D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_252690810();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_252690B80();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2525087AC()
{
  _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);

  return sub_252506E40();
}

double sub_25250881C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);

  *&result = sub_25250672C(a1, a2).n128_u64[0];
  return result;
}

unint64_t sub_25250889C()
{
  result = qword_27F4E07C0;
  if (!qword_27F4E07C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E07A8);
    sub_252508928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E07C0);
  }

  return result;
}

unint64_t sub_252508928()
{
  result = qword_27F4E07C8;
  if (!qword_27F4E07C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E07D0);
    sub_2525089E4();
    sub_252505258(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E07C8);
  }

  return result;
}

unint64_t sub_2525089E4()
{
  result = qword_27F4E07D8;
  if (!qword_27F4E07D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E07E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E07E8);
    sub_252690D20();
    sub_252508AFC();
    sub_252505258(&qword_27F4DF1B0, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E07D8);
  }

  return result;
}

unint64_t sub_252508AFC()
{
  result = qword_27F4E07F0;
  if (!qword_27F4E07F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E07E8);
    sub_252508BB4();
    sub_252400FC8(&qword_27F4E0818, &qword_27F4E0820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E07F0);
  }

  return result;
}

unint64_t sub_252508BB4()
{
  result = qword_27F4E07F8;
  if (!qword_27F4E07F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0800);
    sub_252400FC8(&qword_27F4E0808, &qword_27F4E0810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E07F8);
  }

  return result;
}

unint64_t sub_252508C6C()
{
  result = qword_27F4E0828;
  if (!qword_27F4E0828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0750);
    sub_252400FC8(&qword_27F4E0830, &qword_27F4E0748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0828);
  }

  return result;
}

unint64_t sub_252508D40()
{
  result = qword_27F4E0848;
  if (!qword_27F4E0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0848);
  }

  return result;
}

uint64_t sub_252508D9C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(_s17SleepScheduleViewV18ScheduleEditorViewVMa(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_25268DCB0();

  return sub_252507674(v1 + v4, a1);
}

uint64_t objectdestroy_41Tm()
{
  v1 = _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_25268DCB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v14 = *(v6 + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E06D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_252690810();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  else
  {
  }

  v9 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_252690B80();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;

  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v14, v11 | 7);
}

uint64_t sub_2525090B4(unsigned __int8 *a1)
{
  _s17SleepScheduleViewV18ScheduleEditorViewVMa(0);
  sub_25268DCB0();

  return sub_252507848(a1);
}

uint64_t sub_2525091B8()
{
  sub_252691780();
  v0 = sub_252691740();
  *v1 = !*v1;
  return v0(&v3, 0);
}

unint64_t sub_252509270()
{
  result = qword_27F4E08C8;
  if (!qword_27F4E08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E08C8);
  }

  return result;
}

uint64_t sub_2525092F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252509358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525093C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E08D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_252509430()
{
  result = qword_27F4E0920;
  if (!qword_27F4E0920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0910);
    sub_2525094E8();
    sub_252400FC8(&qword_27F4E0938, &qword_27F4E0918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0920);
  }

  return result;
}

unint64_t sub_2525094E8()
{
  result = qword_27F4E0928;
  if (!qword_27F4E0928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E08E8);
    sub_252400FC8(&qword_27F4E0930, &qword_27F4E08E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0928);
  }

  return result;
}

uint64_t sub_25250961C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  v8 = *a2;
  swift_beginAccess();
  v9 = a3(0);
  return (*(*(v9 - 8) + 16))(a4, v7 + v8, v9);
}

uint64_t sub_2525097C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25268DA10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__identifier;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_25250EA84(&qword_27F4DAF90, MEMORY[0x277CC95F0]);
  v14[0] = a1;
  LOBYTE(a1) = sub_252692B70();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
    sub_25268DB20();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_252509A90@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v10 = v3;
  sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v10 + v7, v8);
}

uint64_t sub_252509B90(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25268DD00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__rule;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_25250EA84(&qword_27F4E09A0, MEMORY[0x277D150F8]);
  v14[0] = a1;
  LOBYTE(a1) = sub_252692B70();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
    sub_25268DB20();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_252509E30()
{
  swift_getKeyPath();
  sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  v1 = *(v0 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__updateScheduleAction);

  return v1;
}

uint64_t sub_252509EEC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  v5 = *(v3 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__updateScheduleAction);
  v4 = *(v3 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__updateScheduleAction + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_25250E8D4;
  a2[1] = v6;
}

uint64_t sub_252509FD0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);

  sub_25268DB20();
}

uint64_t sub_25250A114(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25268D740();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__startTime;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_25250EA84(&qword_27F4E09A8, MEMORY[0x277CC8990]);
  v14[0] = a1;
  LOBYTE(a1) = sub_252692B70();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
    sub_25268DB20();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_25250A3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_25250A4B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25268D740();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__endTime;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_25250EA84(&qword_27F4E09A8, MEMORY[0x277CC8990]);
  v14[0] = a1;
  LOBYTE(a1) = sub_252692B70();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
    sub_25268DB20();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_25250A750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  v8 = a4(0);
  (*(*(v8 - 8) + 24))(a1 + v7, a2, v8);
  return swift_endAccess();
}

uint64_t sub_25250A8C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v25 = a5;
  v23 = a4;
  v7 = v5;
  v9 = sub_25268D990();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v24 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v15 = *a2;
  swift_beginAccess();
  v16 = *(v10 + 16);
  v16(v14, v7 + v15, v9);
  sub_25250EA84(&qword_27F4DBC68, MEMORY[0x277CC9578]);
  v27 = a1;
  LOBYTE(a1) = sub_252692B70();
  v26 = *(v10 + 8);
  v26(v14, v9);
  if (a1)
  {
    v16(v14, v27, v9);
    swift_beginAccess();
    (*(v10 + 24))(v7 + v15, v14, v9);
    swift_endAccess();
    swift_getKeyPath();
    v28 = v7;
    sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
    sub_25268DB30();

    v17 = v24;
    v16(v24, v7 + v15, v9);
    v25(v17);
    v18 = v17;
    v19 = v26;
    v26(v18, v9);
    v19(v14, v9);
    return (v19)(v27, v9);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v22 = v27;
    *(&v23 - 2) = v7;
    *(&v23 - 1) = v22;
    v28 = v7;
    sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
    sub_25268DB20();

    return (v26)(v27, v9);
  }
}

uint64_t sub_25250AC4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(char *))
{
  v18[1] = a4;
  v19 = a5;
  v8 = sub_25268D990();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  v18[0] = *(v9 + 16);
  (v18[0])(v18 - v13, a2, v8);
  v15 = *a3;
  swift_beginAccess();
  (*(v9 + 24))(a1 + v15, v14, v8);
  swift_endAccess();
  swift_getKeyPath();
  v20 = a1;
  sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  (v18[0])(v12, a1 + v15, v8);
  v19(v12);
  v16 = *(v9 + 8);
  v16(v12, v8);
  return (v16)(v14, v8);
}

uint64_t sub_25250AE68()
{
  swift_getKeyPath();
  sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  return *(v0 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__daysOfWeek);
}

uint64_t sub_25250AF10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  *a2 = *(v3 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__daysOfWeek);
  return result;
}

uint64_t sub_25250AFC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__daysOfWeek;
  v4 = *(v1 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__daysOfWeek);
  KeyPath = swift_getKeyPath();
  if (v4 == a1)
  {
    sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
    sub_25268DB30();

    v6 = MEMORY[0x25309F7D0](*(v1 + v3));
    return sub_25250B38C(v6);
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
    sub_25268DB20();
  }
}

uint64_t sub_25250B140(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__daysOfWeek;
  *(a1 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__daysOfWeek) = a2;
  swift_getKeyPath();
  sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  v4 = MEMORY[0x25309F7D0](*(a1 + v3));
  return sub_25250B38C(v4);
}

uint64_t sub_25250B200()
{
  swift_getKeyPath();
  sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();
}

uint64_t sub_25250B2AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  *a2 = *(v3 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__days);
}

uint64_t sub_25250B38C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__days;

  v5 = sub_2523E898C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
    sub_25268DB20();
  }
}

uint64_t sub_25250B4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25268DCB0();
  v5 = *(*(v4 - 8) + 104);
  if (a1 > 15)
  {
    if (a1 == 16)
    {
      v6 = MEMORY[0x277D150D0];
      goto LABEL_15;
    }

    if (a1 != 32)
    {
      if (a1 == 64)
      {
        v6 = MEMORY[0x277D150C8];
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v6 = MEMORY[0x277D150A8];
  }

  else
  {
    if (a1 == 2)
    {
      v6 = MEMORY[0x277D150B0];
      goto LABEL_15;
    }

    if (a1 != 4)
    {
      if (a1 == 8)
      {
        v6 = MEMORY[0x277D150D8];
        goto LABEL_15;
      }

LABEL_12:
      v6 = MEMORY[0x277D150B8];
      goto LABEL_15;
    }

    v6 = MEMORY[0x277D150C0];
  }

LABEL_15:
  v7 = *v6;

  return v5(a2, v7, v4);
}

void sub_25250B5DC(uint64_t a1)
{
  v2 = v1;
  v74 = a1;
  v3 = sub_25268DAB0();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268D740();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v70 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v56 - v9;
  v73 = sub_25268DAD0();
  v11 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v56 - v15;
  v17 = sub_25268D990();
  v75 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v71 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268DAA0();
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel___observationRegistrar;
  v77[3] = v2;
  v20 = sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  v61 = v19;
  v60 = v20;
  sub_25268DB30();

  v21 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__endTime;
  swift_beginAccess();
  v68 = *(v6 + 16);
  v69 = v2;
  v22 = v2 + v21;
  v23 = v17;
  v24 = v6 + 16;
  v68(v10, v22, v5);
  sub_25268DA80();
  v25 = *(v6 + 8);
  v63 = v10;
  v26 = v10;
  v27 = v73;
  v72 = v5;
  v67 = v6 + 8;
  v25(v26, v5);
  v28 = v75;
  v29 = *(v11 + 8);
  v30 = v13;
  v62 = v11 + 8;
  v29(v13, v27);
  if ((*(v28 + 48))(v16, 1, v23) == 1)
  {
    sub_25250E7F8(v16);
LABEL_5:
    if (qword_27F4DABD8 != -1)
    {
      swift_once();
    }

    v32 = sub_2526905A0();
    __swift_project_value_buffer(v32, qword_27F4E4B30);
    v33 = sub_252690580();
    v34 = sub_252692EF0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v77[0] = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_2525BDA90(0xD00000000000004CLL, 0x80000002526B1270, v77);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2525BDA90(0xD000000000000016, 0x80000002526B12E0, v77);
      _os_log_impl(&dword_252309000, v33, v34, "%s - %s: Start time and end time can't be same.", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v36, -1, -1);
      MEMORY[0x2530A5A40](v35, -1, -1);
    }

    return;
  }

  v59 = v29;
  v31 = v71;
  (*(v28 + 32))(v71, v16, v23);
  sub_25250EA84(&qword_27F4DBC68, MEMORY[0x277CC9578]);
  if (sub_252692B70())
  {
    (*(v28 + 8))(v31, v23);
    goto LABEL_5;
  }

  v57 = v25;
  v58 = v23;
  swift_getKeyPath();
  v77[0] = v69;
  v37 = v69;
  sub_25268DB30();

  v38 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__startTime;
  swift_beginAccess();
  v56[1] = v24;
  v68(v70, v37 + v38, v72);
  sub_25268DAA0();
  v39 = *MEMORY[0x277CC9980];
  v40 = v65;
  v61 = *(v65 + 104);
  v41 = v64;
  v42 = v66;
  v61(v64, v39, v66);
  sub_25268DAC0();
  v65 = *(v40 + 8);
  (v65)(v41, v42);
  v43 = v59;
  v59(v30, v27);
  v44 = v70;
  sub_25268D710();
  sub_25268DAA0();
  v61(v41, *MEMORY[0x277CC99A0], v42);
  sub_25268DAC0();
  (v65)(v41, v42);
  v43(v30, v27);
  sub_25268D730();
  v45 = v63;
  v46 = v44;
  v68(v63, v44, v72);
  sub_25250A114(v45);
  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v47 = sub_2526905A0();
  __swift_project_value_buffer(v47, qword_27F4E4B30);
  v48 = sub_252690580();
  v49 = sub_252692F10();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v76 = v51;
    *v50 = 136315650;
    *(v50 + 4) = sub_2525BDA90(0xD00000000000004CLL, 0x80000002526B1270, &v76);
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_2525BDA90(0xD000000000000016, 0x80000002526B12E0, &v76);
    *(v50 + 22) = 2080;
    v52 = swift_beginAccess();
    v53 = MEMORY[0x25309F270](v52);
    v55 = sub_2525BDA90(v53, v54, &v76);

    *(v50 + 24) = v55;
    _os_log_impl(&dword_252309000, v48, v49, "%s - %s: Start time set to: %s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v51, -1, -1);
    MEMORY[0x2530A5A40](v50, -1, -1);
  }

  (*(v75 + 8))(v71, v58);
  v57(v46, v72);
}

void sub_25250BF90(uint64_t a1)
{
  v2 = v1;
  v74 = a1;
  v3 = sub_25268DAB0();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268D740();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v70 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v56 - v9;
  v73 = sub_25268DAD0();
  v11 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v56 - v15;
  v17 = sub_25268D990();
  v75 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v71 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268DAA0();
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel___observationRegistrar;
  v77[3] = v2;
  v20 = sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  v61 = v19;
  v60 = v20;
  sub_25268DB30();

  v21 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__startTime;
  swift_beginAccess();
  v68 = *(v6 + 16);
  v69 = v2;
  v22 = v2 + v21;
  v23 = v17;
  v24 = v6 + 16;
  v68(v10, v22, v5);
  sub_25268DA80();
  v25 = *(v6 + 8);
  v63 = v10;
  v26 = v10;
  v27 = v73;
  v72 = v5;
  v67 = v6 + 8;
  v25(v26, v5);
  v28 = v75;
  v29 = *(v11 + 8);
  v30 = v13;
  v62 = v11 + 8;
  v29(v13, v27);
  if ((*(v28 + 48))(v16, 1, v23) == 1)
  {
    sub_25250E7F8(v16);
LABEL_5:
    if (qword_27F4DABD8 != -1)
    {
      swift_once();
    }

    v32 = sub_2526905A0();
    __swift_project_value_buffer(v32, qword_27F4E4B30);
    v33 = sub_252690580();
    v34 = sub_252692EF0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v77[0] = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_2525BDA90(0xD00000000000004CLL, 0x80000002526B1270, v77);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2525BDA90(0xD000000000000014, 0x80000002526B12C0, v77);
      _os_log_impl(&dword_252309000, v33, v34, "%s - %s: Start time and end time can't be same.", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v36, -1, -1);
      MEMORY[0x2530A5A40](v35, -1, -1);
    }

    return;
  }

  v59 = v29;
  v31 = v71;
  (*(v28 + 32))(v71, v16, v23);
  sub_25250EA84(&qword_27F4DBC68, MEMORY[0x277CC9578]);
  if (sub_252692B70())
  {
    (*(v28 + 8))(v31, v23);
    goto LABEL_5;
  }

  v57 = v25;
  v58 = v23;
  swift_getKeyPath();
  v77[0] = v69;
  v37 = v69;
  sub_25268DB30();

  v38 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__endTime;
  swift_beginAccess();
  v56[1] = v24;
  v68(v70, v37 + v38, v72);
  sub_25268DAA0();
  v39 = *MEMORY[0x277CC9980];
  v40 = v65;
  v61 = *(v65 + 104);
  v41 = v64;
  v42 = v66;
  v61(v64, v39, v66);
  sub_25268DAC0();
  v65 = *(v40 + 8);
  (v65)(v41, v42);
  v43 = v59;
  v59(v30, v27);
  v44 = v70;
  sub_25268D710();
  sub_25268DAA0();
  v61(v41, *MEMORY[0x277CC99A0], v42);
  sub_25268DAC0();
  (v65)(v41, v42);
  v43(v30, v27);
  sub_25268D730();
  v45 = v63;
  v46 = v44;
  v68(v63, v44, v72);
  sub_25250A4B0(v45);
  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v47 = sub_2526905A0();
  __swift_project_value_buffer(v47, qword_27F4E4B30);
  v48 = sub_252690580();
  v49 = sub_252692F10();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v76 = v51;
    *v50 = 136315650;
    *(v50 + 4) = sub_2525BDA90(0xD00000000000004CLL, 0x80000002526B1270, &v76);
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_2525BDA90(0xD000000000000014, 0x80000002526B12C0, &v76);
    *(v50 + 22) = 2080;
    v52 = swift_beginAccess();
    v53 = MEMORY[0x25309F270](v52);
    v55 = sub_2525BDA90(v53, v54, &v76);

    *(v50 + 24) = v55;
    _os_log_impl(&dword_252309000, v48, v49, "%s - %s: End time set to: %s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v51, -1, -1);
    MEMORY[0x2530A5A40](v50, -1, -1);
  }

  (*(v75 + 8))(v71, v58);
  v57(v46, v72);
}

void sub_25250C944(uint64_t a1)
{
  swift_getKeyPath();
  sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  swift_getKeyPath();
  sub_25268DB50();

  v3 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__daysOfWeek;
  v4 = *(v1 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__daysOfWeek);
  if ((v4 & a1) != 0)
  {
    *(v1 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__daysOfWeek) = v4 & ~a1;
  }

  swift_getKeyPath();
  v16 = v1;
  sub_25268DB30();

  v5 = MEMORY[0x25309F7D0](*(v1 + v3));
  sub_25250B38C(v5);
  swift_getKeyPath();
  sub_25268DB40();

  swift_getKeyPath();
  sub_25268DB30();

  v16 = v1;
  swift_getKeyPath();
  sub_25268DB50();

  v6 = *(v1 + v3);
  if ((v6 & a1) != 0)
  {
    *(v1 + v3) = v6 & ~a1;
  }

  swift_getKeyPath();
  v16 = v1;
  sub_25268DB30();

  v7 = MEMORY[0x25309F7D0](*(v1 + v3));
  sub_25250B38C(v7);
  v16 = v1;
  swift_getKeyPath();
  sub_25268DB40();

  sub_25250CFFC();
  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v8 = sub_2526905A0();
  __swift_project_value_buffer(v8, qword_27F4E4B30);
  v9 = sub_252690580();
  v10 = sub_252692F10();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_2525BDA90(0xD00000000000004CLL, 0x80000002526B1270, &v16);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2525BDA90(0x676E69766F6D6572, 0xEE00293A79616428, &v16);
    *(v11 + 22) = 2080;
    v13 = sub_252692F40();
    v15 = sub_2525BDA90(v13, v14, &v16);

    *(v11 + 24) = v15;
    _os_log_impl(&dword_252309000, v9, v10, "%s - %s: Removed %s from sleep schedule rule.", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v12, -1, -1);
    MEMORY[0x2530A5A40](v11, -1, -1);
  }
}

void sub_25250CD10(uint64_t a1)
{
  swift_getKeyPath();
  sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  swift_getKeyPath();
  sub_25268DB50();

  v3 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__daysOfWeek;
  v4 = *(v1 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__daysOfWeek);
  if ((a1 & ~v4) != 0)
  {
    *(v1 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__daysOfWeek) = v4 | a1;
  }

  swift_getKeyPath();
  v14 = v1;
  sub_25268DB30();

  v5 = MEMORY[0x25309F7D0](*(v1 + v3));
  sub_25250B38C(v5);
  v14 = v1;
  swift_getKeyPath();
  sub_25268DB40();

  sub_25250CFFC();
  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v6 = sub_2526905A0();
  __swift_project_value_buffer(v6, qword_27F4E4B30);
  v7 = sub_252690580();
  v8 = sub_252692F10();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_2525BDA90(0xD00000000000004CLL, 0x80000002526B1270, &v14);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2525BDA90(0x6428676E69646461, 0xEC000000293A7961, &v14);
    *(v9 + 22) = 2080;
    v11 = sub_252692F40();
    v13 = sub_2525BDA90(v11, v12, &v14);

    *(v9 + 24) = v13;
    _os_log_impl(&dword_252309000, v7, v8, "%s - %s: Added %s to sleep schedule rule.", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v10, -1, -1);
    MEMORY[0x2530A5A40](v9, -1, -1);
  }
}

uint64_t sub_25250CFFC()
{
  v1 = v0;
  v62 = sub_25268D740();
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v65 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v69 = &v56 - v4;
  v64 = sub_25268DD00();
  v70 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v67 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v56 - v7;
  v79 = sub_25268D990();
  v8 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25268DAB0();
  v82 = *(v11 - 8);
  v12 = v82;
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25268DAD0();
  v16 = *(v15 - 8);
  v80 = v15;
  v81 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268DAA0();
  LODWORD(v60) = *MEMORY[0x277CC9980];
  v71 = *(v12 + 104);
  v78 = v12 + 104;
  v19 = v11;
  v57 = v11;
  v71(v14);
  swift_getKeyPath();
  v86 = v1;
  v20 = sub_25250EA84(&qword_27F4E0788, _s23ScheduleEditorViewModelCMa);
  sub_25268DB30();

  v21 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__startDate;
  v58 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__startDate;
  swift_beginAccess();
  v22 = *(v8 + 16);
  v76 = v8 + 16;
  v77 = v22;
  v23 = v10;
  v24 = v10;
  v25 = v79;
  v22(v24, v1 + v21, v79);
  v68 = v23;
  v59 = sub_25268DAC0();
  v26 = *(v8 + 8);
  v74 = v8 + 8;
  v75 = v26;
  v26(v23, v25);
  v27 = *(v82 + 8);
  v82 += 8;
  v73 = v27;
  v27(v14, v19);
  v28 = *(v81 + 8);
  v81 += 8;
  v72 = v28;
  v28(v18, v80);
  swift_getKeyPath();
  v85 = v1;
  sub_25268DB30();

  v85 = v1;
  swift_getKeyPath();
  sub_25268DB50();

  v29 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__startTime;
  swift_beginAccess();
  sub_25268D710();
  swift_endAccess();
  v85 = v1;
  swift_getKeyPath();
  sub_25268DB40();

  sub_25268DAA0();
  LODWORD(v59) = *MEMORY[0x277CC99A0];
  v30 = v14;
  v31 = v57;
  v71(v14);
  swift_getKeyPath();
  v85 = v1;
  sub_25268DB30();

  v32 = v68;
  v33 = v79;
  v77(v68, v1 + v58, v79);
  v58 = sub_25268DAC0();
  v75(v32, v33);
  v34 = v30;
  v73(v30, v31);
  v72(v18, v80);
  swift_getKeyPath();
  v85 = v1;
  sub_25268DB30();

  v85 = v1;
  swift_getKeyPath();
  sub_25268DB50();

  v61 = v29;
  swift_beginAccess();
  sub_25268D730();
  swift_endAccess();
  v85 = v1;
  swift_getKeyPath();
  sub_25268DB40();

  sub_25268DAA0();
  (v71)(v30, v60, v31);
  swift_getKeyPath();
  v85 = v1;
  v35 = v20;
  sub_25268DB30();

  v36 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__endDate;
  v60 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__endDate;
  swift_beginAccess();
  v37 = v68;
  v38 = v79;
  v77(v68, v1 + v36, v79);
  v58 = sub_25268DAC0();
  v75(v37, v38);
  v39 = v31;
  v73(v34, v31);
  v72(v18, v80);
  swift_getKeyPath();
  v84 = v1;
  sub_25268DB30();

  v84 = v1;
  swift_getKeyPath();
  sub_25268DB50();

  v40 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__endTime;
  swift_beginAccess();
  sub_25268D710();
  swift_endAccess();
  v84 = v1;
  swift_getKeyPath();
  sub_25268DB40();

  sub_25268DAA0();
  (v71)(v34, v59, v39);
  swift_getKeyPath();
  v84 = v1;
  sub_25268DB30();

  v41 = v79;
  v77(v37, v1 + v60, v79);
  v78 = sub_25268DAC0();
  v75(v37, v41);
  v73(v34, v39);
  v72(v18, v80);
  swift_getKeyPath();
  v84 = v1;
  sub_25268DB30();

  v84 = v1;
  swift_getKeyPath();
  sub_25268DB50();

  swift_beginAccess();
  sub_25268D730();
  swift_endAccess();
  v84 = v1;
  swift_getKeyPath();
  sub_25268DB40();

  swift_getKeyPath();
  v84 = v1;
  sub_25268DB30();

  v42 = *(v63 + 16);
  v43 = v62;
  v42(v69, v1 + v61, v62);
  swift_getKeyPath();
  v84 = v1;
  sub_25268DB30();

  v44 = v66;
  v42(v65, v1 + v40, v43);
  v45 = v64;
  swift_getKeyPath();
  v84 = v1;
  sub_25268DB30();

  sub_25268DCE0();
  swift_getKeyPath();
  v84 = v1;
  v82 = v35;
  sub_25268DB30();
  v46 = v70;

  v47 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__rule;
  swift_beginAccess();
  v48 = v67;
  v81 = *(v46 + 16);
  (v81)(v67, v1 + v47, v45);
  sub_25250EA84(&qword_27F4E09A0, MEMORY[0x277D150F8]);
  LOBYTE(v36) = sub_252692B70();
  v51 = *(v46 + 8);
  v49 = v46 + 8;
  v50 = v51;
  v51(v48, v45);
  if ((v36 & 1) == 0)
  {
    swift_getKeyPath();
    v70 = v49;
    v83 = v1;
    sub_25268DB30();

    v80 = *(v1 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__updateScheduleAction);
    swift_getKeyPath();
    v83 = v1;

    sub_25268DB30();
    v52 = v66;

    v53 = v1 + v47;
    v54 = v67;
    (v81)(v67, v53, v45);
    v44 = v52;
    v80(v54, v52);

    v50(v54, v45);
  }

  return (v50)(v44, v45);
}

uint64_t sub_25250DDDC()
{
  v1 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__identifier;
  v2 = sub_25268DA10();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__rule;
  v4 = sub_25268DD00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__startTime;
  v6 = sub_25268D740();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__endTime, v6);
  v8 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__startDate;
  v9 = sub_25268D990();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__endDate, v9);

  v11 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel___observationRegistrar;
  v12 = sub_25268DB70();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  return swift_deallocClassInstance();
}

uint64_t _s23ScheduleEditorViewModelCMa()
{
  result = qword_27F4E0990;
  if (!qword_27F4E0990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25250E040()
{
  result = sub_25268DA10();
  if (v1 <= 0x3F)
  {
    result = sub_25268DD00();
    if (v2 <= 0x3F)
    {
      result = sub_25268D740();
      if (v3 <= 0x3F)
      {
        result = sub_25268D990();
        if (v4 <= 0x3F)
        {
          result = sub_25268DB70();
          if (v5 <= 0x3F)
          {
            return swift_updateClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25250E1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v59 = a4;
  v50 = a3;
  v58 = sub_25268DAD0();
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = sub_25268D990();
  v47 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v55 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v48 = &v45 - v18;
  v19 = sub_25268D740();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268DB60();
  v23 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__identifier;
  v24 = sub_25268DA10();
  v53 = *(v24 - 8);
  v54 = v24;
  v25 = *(v53 + 16);
  v57 = a1;
  v25(v5 + v23, a1);
  v26 = OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__rule;
  v27 = sub_25268DD00();
  v51 = *(v27 - 8);
  v52 = v27;
  (*(v51 + 16))(v5 + v26, a2);
  v28 = (v5 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__updateScheduleAction);
  v29 = v59;
  *v28 = v50;
  v28[1] = v29;

  sub_25268DCF0();
  v30 = *(v20 + 32);
  v30(v5 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__startTime, v22, v19);
  sub_25268DCD0();
  v30(v5 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__endTime, v22, v19);
  sub_25268DAA0();
  v59 = a2;
  sub_25268DCF0();
  sub_25268DA80();
  v31 = v47;
  v32 = *(v20 + 8);
  v49 = v20 + 8;
  v50 = v19;
  v46 = v32;
  v32(v22, v19);
  v33 = *(v60 + 8);
  v60 += 8;
  v45 = v33;
  v33(v9, v58);
  v34 = *(v31 + 48);
  if (v34(v14, 1, v15) == 1)
  {
    v35 = v48;
    sub_25268D980();
    v36 = v34(v14, 1, v15);
    v37 = v35;
    if (v36 != 1)
    {
      sub_25250E7F8(v14);
      v37 = v35;
    }
  }

  else
  {
    v38 = v48;
    (*(v31 + 32))(v48, v14, v15);
    v37 = v38;
  }

  v39 = *(v31 + 32);
  v39(v5 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__startDate, v37, v15);
  sub_25268DAA0();
  sub_25268DCD0();
  v40 = v56;
  sub_25268DA80();
  v46(v22, v50);
  v45(v9, v58);
  if (v34(v40, 1, v15) == 1)
  {
    v41 = v55;
    sub_25268D980();
    if (v34(v40, 1, v15) != 1)
    {
      sub_25250E7F8(v40);
    }
  }

  else
  {
    v41 = v55;
    v39(v55, v40, v15);
  }

  v39(v5 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__endDate, v41, v15);
  v42 = v59;
  *(v5 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__daysOfWeek) = sub_25268DC50();
  v43 = sub_25268DCC0();
  (*(v51 + 8))(v42, v52);
  (*(v53 + 8))(v57, v54);
  *(v5 + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__days) = v43;
  return v5;
}

uint64_t sub_25250E7F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25250E888()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__updateScheduleAction);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_25250E8FC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCV22HomeAccessoryControlUI27ThermostatPresetsDetailView23ScheduleEditorViewModel__days) = *(v0 + 24);
}

uint64_t sub_25250EA84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25250EB04@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for RingControlView.KnobsView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = _s9KnobStateOMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v31 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v30 = v29 - v14;
  v15 = *(v2 + *(v4 + 28));
  v16 = v15 + v15;
  sub_25250EF5C(v33, 0.0, 0.0, v16, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8);
  MEMORY[0x2530A4210](v17);
  v18 = sub_2525140D8();
  sub_25250F68C(v9);
  v35[0] = v18;
  v29[1] = swift_getKeyPath();
  sub_25250F8E0(v2, v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_25250F944(v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v21 = v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = v16;
  *(v21 + 24) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEA80);
  sub_252400FC8(&qword_27F4E09D0, &qword_27F4E09C8);
  sub_25250FA5C();
  sub_252400FC8(&qword_27F4E09E0, &qword_27F4DEA80);
  v22 = v30;
  sub_252692790();
  v23 = *(v11 + 16);
  v24 = v31;
  v23(v31, v22, v10);
  memcpy(v34, v33, 0x1C0uLL);
  v34[56] = 0x3FD999999999999ALL;
  v25 = v32;
  memcpy(v32, v34, 0x1C8uLL);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09E8);
  v23(&v25[*(v26 + 48)], v24, v10);
  sub_25237153C(v34, v35, &qword_27F4E09F0);
  v27 = *(v11 + 8);
  v27(v22, v10);
  v27(v24, v10);
  memcpy(v35, v33, 0x1C0uLL);
  v35[56] = 0x3FD999999999999ALL;
  return sub_252372288(v35, &qword_27F4E09F0);
}

uint64_t sub_25250EF5C@<X0>(void *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  type metadata accessor for RingControlView.KnobsView(0);
  sub_252691C80();
  v24 = sub_2526922F0();
  sub_2526908F0();
  v23 = sub_252692920();
  v26 = v9;
  sub_252691C80();
  v10 = sub_2526922F0();
  sub_2526908F0();
  v11 = sub_252692920();
  v13 = v12;
  v80.origin.x = a2;
  v80.origin.y = a3;
  v80.size.width = a4;
  v80.size.height = a5;
  CGRectGetMinX(v80);
  v81.origin.x = a2;
  v81.origin.y = a3;
  v81.size.width = a4;
  v81.size.height = a5;
  CGRectGetMinX(v81);
  v82.origin.x = a2;
  v82.origin.y = a3;
  v82.size.width = a4;
  v82.size.height = a5;
  CGRectGetWidth(v82);
  v83.origin.x = a2;
  v83.origin.y = a3;
  v83.size.width = a4;
  v83.size.height = a5;
  CGRectGetMinY(v83);
  v84.origin.x = a2;
  v84.origin.y = a3;
  v84.size.width = a4;
  v84.size.height = a5;
  CGRectGetHeight(v84);
  v85.origin.x = a2;
  v85.origin.y = a3;
  v85.size.width = a4;
  v85.size.height = a5;
  CGRectGetMaxX(v85);
  v86.origin.x = a2;
  v86.origin.y = a3;
  v86.size.width = a4;
  v86.size.height = a5;
  CGRectGetMinX(v86);
  v87.origin.x = a2;
  v87.origin.y = a3;
  v87.size.width = a4;
  v87.size.height = a5;
  CGRectGetWidth(v87);
  v88.origin.x = a2;
  v88.origin.y = a3;
  v88.size.width = a4;
  v88.size.height = a5;
  CGRectGetMinY(v88);
  v89.origin.x = a2;
  v89.origin.y = a3;
  v89.size.width = a4;
  v89.size.height = a5;
  CGRectGetHeight(v89);
  sub_252691C80();
  v14 = sub_2526922B0();
  sub_2526908F0();
  v15 = sub_252692920();
  v22 = v16;
  v90.origin.x = a2;
  v90.origin.y = a3;
  v90.size.width = a4;
  v90.size.height = a5;
  CGRectGetMinX(v90);
  v91.origin.x = a2;
  v91.origin.y = a3;
  v91.size.width = a4;
  v91.size.height = a5;
  CGRectGetWidth(v91);
  v92.origin.x = a2;
  v92.origin.y = a3;
  v92.size.width = a4;
  v92.size.height = a5;
  CGRectGetMinY(v92);
  v93.origin.x = a2;
  v93.origin.y = a3;
  v93.size.width = a4;
  v93.size.height = a5;
  CGRectGetHeight(v93);
  v94.origin.x = a2;
  v94.origin.y = a3;
  v94.size.width = a4;
  v94.size.height = a5;
  CGRectGetMinY(v94);
  v95.origin.x = a2;
  v95.origin.y = a3;
  v95.size.width = a4;
  v95.size.height = a5;
  CGRectGetMinX(v95);
  v96.origin.x = a2;
  v96.origin.y = a3;
  v96.size.width = a4;
  v96.size.height = a5;
  CGRectGetWidth(v96);
  v97.origin.x = a2;
  v97.origin.y = a3;
  v97.size.width = a4;
  v97.size.height = a5;
  CGRectGetMinY(v97);
  v98.origin.x = a2;
  v98.origin.y = a3;
  v98.size.width = a4;
  v98.size.height = a5;
  CGRectGetHeight(v98);
  v99.origin.x = a2;
  v99.origin.y = a3;
  v99.size.width = a4;
  v99.size.height = a5;
  CGRectGetMaxY(v99);
  sub_252691C80();
  v17 = sub_252692320();
  sub_2526908F0();
  v18 = sub_252692920();
  v20 = v19;
  v48[4] = v47;
  v48[3] = v46;
  v48[2] = v45;
  v48[0] = v43;
  v48[1] = v44;
  *&v49 = v24;
  WORD4(v49) = 256;
  *&v50 = v23;
  *(&v50 + 1) = v26;
  __src[0] = v43;
  __src[1] = v44;
  __src[4] = v47;
  __src[5] = v49;
  __src[2] = v45;
  __src[3] = v46;
  v51[4] = v42;
  v51[3] = v41;
  v51[2] = v40;
  v51[0] = v38;
  v51[1] = v39;
  *&v52 = v10;
  WORD4(v52) = 256;
  *&v53 = v11;
  *(&v53 + 1) = v13;
  __src[8] = v39;
  __src[9] = v40;
  __src[6] = v50;
  __src[7] = v38;
  __src[12] = v52;
  __src[13] = v53;
  __src[10] = v41;
  __src[11] = v42;
  v54[4] = v37;
  v54[3] = v36;
  v54[2] = v35;
  v54[0] = v33;
  v54[1] = v34;
  *&v55 = v14;
  WORD4(v55) = 256;
  *&v56 = v15;
  *(&v56 + 1) = v22;
  __src[14] = v33;
  __src[15] = v34;
  __src[18] = v37;
  __src[19] = v55;
  __src[16] = v35;
  __src[17] = v36;
  v57[4] = v32;
  v57[3] = v31;
  v57[2] = v30;
  v57[0] = v28;
  v57[1] = v29;
  *&v58 = v17;
  WORD4(v58) = 256;
  *&v59 = v18;
  *(&v59 + 1) = v19;
  __src[22] = v29;
  __src[23] = v30;
  __src[20] = v56;
  __src[21] = v28;
  __src[26] = v58;
  __src[27] = v59;
  __src[24] = v31;
  __src[25] = v32;
  memcpy(a1, __src, 0x1C0uLL);
  v60[2] = v30;
  v60[3] = v31;
  v60[4] = v32;
  v60[1] = v29;
  v60[0] = v28;
  v61 = v17;
  v62 = 256;
  v63 = v18;
  v64 = v20;
  sub_25237153C(v48, v75, &qword_27F4DEA80);
  sub_25237153C(v51, v75, &qword_27F4DEA80);
  sub_25237153C(v54, v75, &qword_27F4DEA80);
  sub_25237153C(v57, v75, &qword_27F4DEA80);
  sub_252372288(v60, &qword_27F4DEA80);
  v65[2] = v35;
  v65[3] = v36;
  v65[4] = v37;
  v65[1] = v34;
  v65[0] = v33;
  v66 = v14;
  v67 = 256;
  v68 = v15;
  v69 = v22;
  sub_252372288(v65, &qword_27F4DEA80);
  v70[2] = v40;
  v70[3] = v41;
  v70[4] = v42;
  v70[1] = v39;
  v70[0] = v38;
  v71 = v10;
  v72 = 256;
  v73 = v11;
  v74 = v13;
  sub_252372288(v70, &qword_27F4DEA80);
  v75[2] = v45;
  v75[3] = v46;
  v75[4] = v47;
  v75[1] = v44;
  v75[0] = v43;
  v76 = v24;
  v77 = 256;
  v78 = v23;
  v79 = v26;
  return sub_252372288(v75, &qword_27F4DEA80);
}

uint64_t sub_25250F68C(uint64_t a1)
{
  v2 = _s9KnobStateOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_25250F6E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  CGRectGetMinX(*&a4);
  v31.origin.x = a4;
  v31.origin.y = a5;
  v31.size.width = a6;
  v31.size.height = a7;
  CGRectGetWidth(v31);
  v32.origin.x = a4;
  v32.origin.y = a5;
  v32.size.width = a6;
  v32.size.height = a7;
  CGRectGetMinY(v32);
  v33.origin.x = a4;
  v33.origin.y = a5;
  v33.size.width = a6;
  v33.size.height = a7;
  CGRectGetHeight(v33);
  v14 = *(a2 + *(type metadata accessor for RingControlView.KnobsView(0) + 20) + 8);
  v15 = _s4KnobVMa(0);
  v16 = v15;
  v17 = *(a1 + *(v15 + 20));
  v18 = 1.0;
  if (v17 <= 1.0)
  {
    v18 = *(a1 + *(v15 + 20));
  }

  v19 = v17 > 0.0;
  v20 = 0.0;
  if (v19)
  {
    v20 = v18;
  }

  __sincos_stret(v14 * 57.2957795 * v20 * 0.0174532925);
  sub_252691C80();
  v21 = *(a1 + *(v16 + 24));
  sub_2526908F0();
  LOBYTE(v25) = v30;

  v22 = sub_252692920();
  *(a3 + 32) = v25;
  *(a3 + 48) = v26;
  *(a3 + 64) = v27;
  result = v29;
  *a3 = v28;
  *(a3 + 16) = v29;
  *(a3 + 80) = v21;
  *(a3 + 88) = 256;
  *(a3 + 96) = v22;
  *(a3 + 104) = v24;
  return result;
}

uint64_t sub_25250F8E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingControlView.KnobsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25250F944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingControlView.KnobsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_25250F9A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RingControlView.KnobsView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];

  *&result = sub_25250F6E8(a1, v2 + v6, a2, v8, v9, v10, v11).n128_u64[0];
  return result;
}

unint64_t sub_25250FA5C()
{
  result = qword_27F4E09D8;
  if (!qword_27F4E09D8)
  {
    _s4KnobVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E09D8);
  }

  return result;
}

uint64_t sub_25250FB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v34 = a2;
  v3 = _s4KnobV2IDOMa(0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for RingControlView.KnobsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2526914B0();
  MEMORY[0x28223BE20](v9);
  v10 = sub_252690890();
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA80);
  v15 = *(v14 - 8);
  v32 = v14;
  v33 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  sub_252691670();
  sub_252690860();
  v26 = type metadata accessor for RingControlView.KnobsView;
  sub_252511380(v2, v8, type metadata accessor for RingControlView.KnobsView);
  sub_252511380(v29, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), _s4KnobV2IDOMa);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v18 + v7 + *(v28 + 80)) & ~*(v28 + 80);
  v20 = swift_allocObject();
  sub_2525116B8(v8, v20 + v18, type metadata accessor for RingControlView.KnobsView);
  sub_2525116B8(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, _s4KnobV2IDOMa);
  sub_2524A23F0(&qword_27F4DDAA0, MEMORY[0x277CDD730]);
  sub_2524A23F0(&qword_27F4DDAA8, MEMORY[0x277CDD708]);
  v21 = v30;
  sub_2526927D0();

  (*(v31 + 8))(v13, v21);
  sub_252511380(v27, v8, v26);
  v22 = swift_allocObject();
  sub_2525116B8(v8, v22 + v18, type metadata accessor for RingControlView.KnobsView);
  sub_252400FC8(&qword_27F4DDAB0, &qword_27F4DDA80);
  v23 = v32;
  sub_2526927C0();

  return (*(v33 + 8))(v17, v23);
}

uint64_t sub_25250FFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s9KnobStateOMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  sub_252690880();
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for RingControlView.KnobsView(0);
  v11 = (a2 + *(v10 + 20));
  v12 = atan2(v9 - *v11, v7 - *v11);
  v13 = Angle.positiveDegrees.getter(v12);
  v14 = v11[1] * 57.2957795;
  v15 = v13 / v14;
  if (v15 > 1.0)
  {
    v15 = 1.0;
  }

  if (v15 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v15;
  }

  v17 = (v14 + (360.0 - v14) * 0.5) * 0.0174532925;
  v18 = Angle.positiveDegrees.getter(v12);
  if (Angle.positiveDegrees.getter(v17) >= v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = a2 + *(v10 + 28);
  if ((*(v20 + 72) & 1) == 0)
  {
    v19 = *(v20 + 64) * round(v19 / *(v20 + 64));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300);
  result = sub_2526926B0();
  if (*(v20 + 56))
  {
    goto LABEL_16;
  }

  v22 = round(v19 / *(v20 + 48));
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0A18);
  sub_2526924F0();
LABEL_16:
  v23 = 0.0;
  if (v19 > 0.0)
  {
    v23 = v19;
  }

  if (v23 <= 1.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1.0;
  }

  v25 = *(v20 + 32);
  v26 = *(v20 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8);
  MEMORY[0x2530A4210]();
  sub_25251434C(a3, v25, v26, v24);
  return sub_2526926B0();
}

uint64_t sub_252510298()
{
  type metadata accessor for RingControlView.KnobsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300);
  sub_2526926B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0A18);
  return sub_2526924F0();
}

id sub_252510364()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755F0]) init];
  result = [v0 prepare];
  qword_27F4FB460 = v0;
  return result;
}

uint64_t sub_2525103B0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0A20);
  MEMORY[0x28223BE20](v33);
  v35 = &v30 - v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0A28);
  MEMORY[0x28223BE20](v34);
  v32 = &v30 - v3;
  v4 = _s13TapTargetViewVMa();
  v5 = v4 - 8;
  v30 = *(v4 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0A30);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0A38);
  v10 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v31 = &v30 - v11;
  v12 = _s9KnobStateOMa(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  if (*(v1 + *(v5 + 32)))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8);
    MEMORY[0x2530A4210](v18);
    swift_storeEnumTagMultiPayload();
    v19 = sub_25251678C(v17, v14);
    sub_252511720(v14, _s9KnobStateOMa);
    sub_252511720(v17, _s9KnobStateOMa);
    v20 = 1;
    if ((v19 & 1) == 0)
    {
      v21 = &v9[*(v7 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830);
      sub_252690D80();
      *v21 = 0;
      *v9 = 0;
      v9[8] = 1;
      sub_252511380(v1, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s13TapTargetViewVMa);
      v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
      v23 = swift_allocObject();
      sub_2525116B8(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, _s13TapTargetViewVMa);
      KeyPath = swift_getKeyPath();
      v25 = v32;
      sub_25237153C(v9, v32, &qword_27F4E0A30);
      v26 = v35;
      v27 = v25 + *(v34 + 36);
      *v27 = 1;
      *(v27 + 8) = sub_2525113E8;
      *(v27 + 16) = v23;
      *(v27 + 24) = KeyPath;
      *(v27 + 32) = 0;
      sub_25237153C(v25, v26, &qword_27F4E0A28);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0A40);
      sub_252511460();
      sub_2525115A4();
      v28 = v31;
      sub_252691470();
      sub_252372288(v25, &qword_27F4E0A28);
      sub_252372288(v9, &qword_27F4E0A30);
      sub_252320DAC(v28, v37);
      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
  }

  return (*(v10 + 56))(v37, v20, 1, v36);
}

uint64_t sub_2525108A8(uint64_t a1, double a2, double a3)
{
  result = _s13TapTargetViewVMa();
  v7 = *(a1 + *(result + 24));
  if (v7)
  {
    v8 = (a1 + *(result + 20));
    v9 = *v8 * 0.25;

    v10 = sub_2525109A4(a2, a3, v9);
    if ((v11 & 1) == 0)
    {
      v12 = *&v10;
      v13 = Angle.positiveDegrees.getter(*&v10);
      if (v13 < Angle.positiveDegrees.getter(v8[1]) && sub_252510A98(v12) != 2)
      {
        v7();
      }
    }

    return sub_25247CDCC(v7);
  }

  return result;
}

uint64_t sub_2525109A4(double a1, double a2, double a3)
{
  v7 = _s13TapTargetViewVMa();
  v8 = *(v3 + *(v7 + 20)) + *(v3 + *(v7 + 20));
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = v8;
  v16.size.height = v8;
  MinX = CGRectGetMinX(v16);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = v8;
  v17.size.height = v8;
  v10 = MinX + CGRectGetWidth(v17) * 0.5;
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v8;
  v18.size.height = v8;
  MinY = CGRectGetMinY(v18);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v8;
  v19.size.height = v8;
  Height = CGRectGetHeight(v19);
  result = 0;
  v14 = a1 - v10;
  v15 = a2 - (MinY + Height * 0.5);
  if (sqrt(v14 * v14 + v15 * v15) > a3)
  {
    return atan2(v15, v14);
  }

  return result;
}

uint64_t sub_252510A98(double a1)
{
  v3 = _s9KnobStateOMa(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4KnobVMa(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8);
  MEMORY[0x2530A4210](v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0) + 48);
      sub_2525116B8(v5, v11, _s4KnobVMa);
      sub_2525116B8(&v5[v23], v8, _s4KnobVMa);
      v24 = *(v6 + 20);
      v25 = *&v11[v24];
      v26 = *(v1 + *(_s13TapTargetViewVMa() + 20) + 8);
      if (v25 <= 1.0)
      {
        v27 = v25;
      }

      else
      {
        v27 = 1.0;
      }

      if (v25 <= 0.0)
      {
        v27 = 0.0;
      }

      v28 = v26 * 57.2957795;
      v29 = v27 * (v26 * 57.2957795) * 0.0174532925;
      v30 = *&v8[v24];
      v31 = Angle.positiveDegrees.getter(a1);
      if (v31 >= Angle.positiveDegrees.getter(v29))
      {
        if (v30 <= 1.0)
        {
          v32 = v30;
        }

        else
        {
          v32 = 1.0;
        }

        if (v30 <= 0.0)
        {
          v32 = 0.0;
        }

        v33 = v28 * v32 * 0.0174532925;
        v34 = Angle.positiveDegrees.getter(a1);
        v35 = Angle.positiveDegrees.getter(v33) >= v34;
        sub_252511720(v8, _s4KnobVMa);
        sub_252511720(v11, _s4KnobVMa);
        return (2 * v35);
      }

      else
      {
        sub_252511720(v8, _s4KnobVMa);
        sub_252511720(v11, _s4KnobVMa);
        return 1;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_2525116B8(v5, v14, _s4KnobVMa);
    v17 = *&v14[*(v6 + 20)];
    sub_252511720(v14, _s4KnobVMa);
    v18 = _s13TapTargetViewVMa();
    v19 = 1.0;
    if (v17 <= 1.0)
    {
      v19 = v17;
    }

    if (v17 <= 0.0)
    {
      v19 = 0.0;
    }

    v20 = v19 * (*(v1 + *(v18 + 20) + 8) * 57.2957795) * 0.0174532925;
    v21 = Angle.positiveDegrees.getter(a1);
    return v21 < Angle.positiveDegrees.getter(v20);
  }
}

uint64_t sub_252510E0C@<X0>(char *a1@<X8>)
{
  v2 = sub_2526932D0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_252510E6C(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0x6E656D6572636564;
  }

  else
  {
    v2 = 0x6E656D6572636E69;
  }

  *a1 = v2;
  a1[1] = 0xE900000000000074;
}

uint64_t _s13TapTargetViewVMa()
{
  result = qword_27F4E09F8;
  if (!qword_27F4E09F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252510F10()
{
  sub_252510F9C();
  if (v0 <= 0x3F)
  {
    sub_252475AC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252510F9C()
{
  if (!qword_27F4E0A08)
  {
    _s9KnobStateOMa(255);
    v0 = sub_252692750();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E0A08);
    }
  }
}

uint64_t sub_252511004()
{
  sub_252693460();
  sub_252692C80();

  return sub_2526934C0();
}

uint64_t sub_252511078()
{
  sub_252692C80();
}

uint64_t sub_2525110D0()
{
  sub_252693460();
  sub_252692C80();

  return sub_2526934C0();
}

uint64_t sub_252511140(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6E656D6572636564;
  }

  else
  {
    v2 = 0x6E656D6572636E69;
  }

  if (*a2)
  {
    v3 = 0x6E656D6572636564;
  }

  else
  {
    v3 = 0x6E656D6572636E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2526933B0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_2525111CC()
{
  result = qword_27F4E0A10;
  if (!qword_27F4E0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0A10);
  }

  return result;
}

uint64_t sub_25251123C(uint64_t a1)
{
  v3 = *(type metadata accessor for RingControlView.KnobsView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(_s4KnobV2IDOMa(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_25250FFE0(a1, v1 + v4, v7);
}

uint64_t sub_252511310()
{
  type metadata accessor for RingControlView.KnobsView(0);

  return sub_252510298();
}

uint64_t sub_252511380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525113E8(double a1, double a2)
{
  v5 = *(_s13TapTargetViewVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2525108A8(v6, a1, a2);
}

unint64_t sub_252511460()
{
  result = qword_27F4E0A48;
  if (!qword_27F4E0A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0A28);
    sub_2525114EC();
    sub_25249A86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0A48);
  }

  return result;
}

unint64_t sub_2525114EC()
{
  result = qword_27F4E0A50;
  if (!qword_27F4E0A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0A30);
    sub_252400FC8(&qword_27F4DD828, &qword_27F4DD830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0A50);
  }

  return result;
}

unint64_t sub_2525115A4()
{
  result = qword_27F4E0A58;
  if (!qword_27F4E0A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0A40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0A30);
    sub_2526914B0();
    sub_2525114EC();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0A58);
  }

  return result;
}

uint64_t sub_2525116B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252511720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_252511780()
{
  result = qword_27F4E0A60;
  if (!qword_27F4E0A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0A68);
    sub_252511804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0A60);
  }

  return result;
}

unint64_t sub_252511804()
{
  result = qword_27F4E0A70;
  if (!qword_27F4E0A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0A38);
    sub_252511460();
    sub_2525115A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0A70);
  }

  return result;
}

uint64_t sub_252511890(uint64_t a1, int a2)
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

uint64_t sub_2525118B0(uint64_t result, int a2, int a3)
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

uint64_t sub_2525118F4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x2530A5020](*&v1);
  sub_252692230();
  sub_252692230();
  v2 = v0[3];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x2530A5020](*&v2);
  v3 = v0[4];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x2530A5020](*&v3);
}

uint64_t sub_252511978()
{
  sub_252693460();
  sub_2525118F4();
  return sub_2526934C0();
}

uint64_t sub_2525119BC()
{
  sub_252693460();
  sub_2525118F4();
  return sub_2526934C0();
}

uint64_t sub_2525119F8(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  v5 = a2[3];
  v4 = a2[4];
  if ((sub_252692220() & 1) == 0)
  {
    return 0;
  }

  v6 = sub_252692220() & (v3 == v5);
  if (v2 == v4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_252511A84()
{
  result = qword_27F4E0A78;
  if (!qword_27F4E0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E0A78);
  }

  return result;
}

void sub_252511AD8(uint64_t a1@<X8>)
{
  v3 = _s19CurrentLocationViewVMa(0);
  v4 = v1 + *(v3 + 24);
  if (*(v4 + 8) == 4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0uLL;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  else
  {
    v15 = (v1 + *(v3 + 20));
    v16 = 1.0;
    if (*v4 <= 1.0)
    {
      v16 = *v4;
    }

    v17 = 0.0;
    if (*v4 > 0.0)
    {
      v17 = v16;
    }

    v18 = v17 * (v15[1] * 57.2957795) * 0.0174532925;
    v5 = sub_252511C88();
    sub_252692920();
    sub_2526909C0();
    v6 = sub_252692980();
    v7 = sub_252511C88();
    v19 = *v15;
    v20 = *v15 + v15[3] * -0.5;
    v21 = __sincos_stret(v18);
    v14 = v24;
    v13 = v23;
    v11 = v19 + v21.__cosval * v20;
    v12 = v19 + v21.__sinval * v20;
    v10 = v22;
    v8 = sub_252511C58;
    v9 = 256;
  }

  *a1 = v5;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  *(a1 + 96) = v8;
  *(a1 + 104) = 0;
}

uint64_t sub_252511C88()
{
  v1 = sub_252692270();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s4KnobVMa(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s19CurrentLocationViewVMa(0);
  v10 = v0 + *(v9 + 24);
  if (*(v10 + 8) == 4)
  {

    return sub_252692330();
  }

  else
  {
    v12 = (v0 + *(v9 + 20));
    v14 = *v12;
    v13 = v12[1];
    v15 = v12[3];
    if (*v10 <= 1.0)
    {
      v16 = *v10;
    }

    else
    {
      v16 = 1.0;
    }

    v17 = 0.0;
    if (*v10 > 0.0)
    {
      v17 = v16;
    }

    v18 = v13 * 57.2957795;
    v19 = __sincos_stret(v17 * (v13 * 57.2957795) * 0.0174532925);
    result = sub_2525140D8();
    v20 = result;
    v21 = *(result + 16);
    if (v21)
    {
      v22 = 0;
      v23 = v14 + v15 * -0.5;
      v24 = v12[4] * 0.5;
      v25 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      while (v22 < *(v20 + 16))
      {
        sub_252513468(v25 + *(v6 + 72) * v22, v8, _s4KnobVMa);
        v26 = *(v5 + 20);
        v27 = *&v8[v26];
        if (v27 <= 1.0)
        {
          v28 = *&v8[v26];
        }

        else
        {
          v28 = 1.0;
        }

        v29 = v27 > 0.0;
        v30 = 0.0;
        if (v29)
        {
          v30 = v28;
        }

        v31 = __sincos_stret(v18 * v30 * 0.0174532925);
        if (sqrt((v14 + v23 * v31.__cosval - (v14 + v23 * v19.__cosval)) * (v14 + v23 * v31.__cosval - (v14 + v23 * v19.__cosval)) + (v14 + v23 * v31.__sinval - (v14 + v23 * v19.__sinval)) * (v14 + v23 * v31.__sinval - (v14 + v23 * v19.__sinval))) < v24)
        {

          (*(v2 + 104))(v4, *MEMORY[0x277CE0EE0], v1);
          v32 = sub_2526923A0();
          sub_252512DD0(v8);
          return v32;
        }

        ++v22;
        result = sub_252512DD0(v8);
        if (v21 == v22)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:

      return sub_252692330();
    }
  }

  return result;
}

uint64_t sub_252511FD8(uint64_t a1, unsigned __int8 a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0A80);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = _s4KnobVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - v23;
  v25 = &v9[*(v7 + 56)];
  *v9 = a2;
  sub_252513468(a1, v25, _s9KnobStateOMa);
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      _s9KnobStateOMa(0);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        sub_252513770(v25, v21, _s4KnobVMa);
        v28 = *&v21[*(v10 + 20)];
        sub_252512DD0(v21);
        if (v28 > 0.0)
        {
          result = 0;
          v29 = 1.0;
          if (v28 > 1.0 || a3 <= 0.0)
          {
            return result;
          }

LABEL_55:
          if (a3 <= v29)
          {
            if (v28 >= a3)
            {
              return 0;
            }
          }

          else if (v28 >= v29)
          {
            return 0;
          }

          return *&v28;
        }

LABEL_45:
        if (a3 <= 0.0 || a3 <= 1.0 && a3 <= 0.0)
        {
          return 0;
        }

        return *&v28;
      }

LABEL_28:
      sub_252512FA0(v9);
      return 0;
    }

    _s9KnobStateOMa(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      sub_252513770(v25, v18, _s4KnobVMa);
      v28 = *&v18[*(v10 + 20)];
      sub_252512DD0(v18);
      if (a3 > 0.0)
      {
        if (a3 <= 1.0 && v28 > 0.0)
        {
          if (v28 <= 1.0)
          {
            if (v28 > a3)
            {
              return *&a3;
            }
          }

          else if (a3 < 1.0)
          {
            return *&a3;
          }
        }
      }

      else if (v28 > 0.0 && (v28 > 1.0 || v28 > 0.0))
      {
        return *&a3;
      }

      if (v28 <= 0.0)
      {
        goto LABEL_45;
      }

LABEL_53:
      result = 0;
      if (a3 <= 0.0)
      {
        return result;
      }

      v29 = 1.0;
      if (v28 > 1.0)
      {
        return result;
      }

      goto LABEL_55;
    }

    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_28;
    }

    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0) + 48);
    sub_252513770(v25, v15, _s4KnobVMa);
    sub_252513770(v25 + v31, v12, _s4KnobVMa);
    v32 = *&v15[*(v10 + 20)];
    sub_252512DD0(v15);
    if (a3 > 0.0)
    {
      if (a3 <= 1.0 && v32 > 0.0)
      {
        if (v32 <= 1.0)
        {
          if (v32 <= a3)
          {
            goto LABEL_44;
          }
        }

        else if (a3 >= 1.0)
        {
          goto LABEL_44;
        }

LABEL_62:
        sub_252512DD0(v12);
        return *&a3;
      }
    }

    else if (v32 > 0.0 && (v32 > 1.0 || v32 > 0.0))
    {
      goto LABEL_62;
    }

LABEL_44:
    v28 = *&v12[*(v10 + 20)];
    sub_252512DD0(v12);
    if (v28 <= 0.0)
    {
      goto LABEL_45;
    }

    goto LABEL_53;
  }

  if (!a2)
  {
    goto LABEL_28;
  }

  _s9KnobStateOMa(0);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    goto LABEL_28;
  }

  sub_252513770(v25, v24, _s4KnobVMa);
  v26 = *&v24[*(v10 + 20)];
  sub_252512DD0(v24);
  if (a3 <= 0.0)
  {
    if (v26 > 0.0 && (v26 > 1.0 || v26 > 0.0))
    {
      return *&a3;
    }

    return 0;
  }

  result = 0;
  if (a3 <= 1.0 && v26 > 0.0)
  {
    if (v26 > 1.0)
    {
      if (a3 < 1.0)
      {
        return *&a3;
      }

      return 0;
    }

    if (v26 <= a3)
    {
      return 0;
    }

    return *&a3;
  }

  return result;
}