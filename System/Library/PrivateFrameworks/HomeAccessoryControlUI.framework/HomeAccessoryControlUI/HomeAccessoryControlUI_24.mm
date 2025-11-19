uint64_t sub_2525B5C0C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCA28);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_252693210();
  v32 = v29;
  v33 = v30;
  MEMORY[0x2530A4800](0x203A444C4F48, 0xE600000000000000);
  v5 = type metadata accessor for AccessoryControl.ThermostatState(0);
  sub_25237153C(v0 + *(v5 + 32), v4, &qword_27F4DCA28);
  v6 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_252372288(v4, &qword_27F4DCA28);
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    v9 = AccessoryControl.ThermostatState.ThermostatHold.id.getter();
    v7 = v10;
    sub_2525C1574(v4, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    v8 = v9;
  }

  MEMORY[0x2530A4800](v8, v7);

  MEMORY[0x2530A4800](0x415F444C4F48202CLL, 0xEF203A4556495443);
  v11 = *(v1 + 34);
  v12 = 0x746573657250;
  if (v11)
  {
    v12 = 0x796772656E45;
  }

  if (v11 == 2)
  {
    v13 = 7104878;
  }

  else
  {
    v13 = v12;
  }

  if (v11 == 2)
  {
    v14 = 0xE300000000000000;
  }

  else
  {
    v14 = 0xE600000000000000;
  }

  MEMORY[0x2530A4800](v13, v14);

  v15 = MEMORY[0x2530A4800](0xD000000000000011, 0x80000002526B1CC0);
  v16 = (v1 + *(v5 + 36));
  v17 = v16[1];
  if (v17 == 7 || (v18 = *(v16 + 16), v29 = *v16, v30 = v17, v31 = v18, v19 = AccessoryControl.ThermostatState.ThermostatActivityState.localizedDescription.getter(v15), !v20))
  {

    v21 = 0xE300000000000000;
    v19 = 7104878;
  }

  else
  {
    v21 = v20;
  }

  MEMORY[0x2530A4800](v19, v21);

  MEMORY[0x2530A4800](0xD000000000000019, 0x80000002526B1CE0);
  v22 = *(v1 + 33);
  v23 = 1702195828;
  if ((v22 & 1) == 0)
  {
    v23 = 0x65736C6166;
  }

  v24 = 0xE500000000000000;
  if (v22)
  {
    v24 = 0xE400000000000000;
  }

  if (v22 == 2)
  {
    v25 = 7104878;
  }

  else
  {
    v25 = v23;
  }

  if (v22 == 2)
  {
    v26 = 0xE300000000000000;
  }

  else
  {
    v26 = v24;
  }

  MEMORY[0x2530A4800](v25, v26);

  return v32;
}

uint64_t StaticThermostatClusterGroup.activeHold.getter@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v1 = sub_2526903A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB338);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB340);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = sub_252690200();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_252690290();
  if ((result & 1) == 0)
  {
    sub_252690220();
    sub_2526901B0();
    (*(v16 + 8))(v18, v15);
    (*(v2 + 104))(v12, *MEMORY[0x277D16D98], v1);
    (*(v2 + 56))(v12, 0, 1, v1);
    v21 = *(v4 + 48);
    sub_25237153C(v14, v6, &qword_27F4DB340);
    sub_25237153C(v12, &v6[v21], &qword_27F4DB340);
    v22 = *(v2 + 48);
    if (v22(v6, 1, v1) == 1)
    {
      sub_252372288(v12, &qword_27F4DB340);
      sub_252372288(v14, &qword_27F4DB340);
      if (v22(&v6[v21], 1, v1) == 1)
      {
        result = sub_252372288(v6, &qword_27F4DB340);
LABEL_11:
        v20 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v23 = v31;
      sub_25237153C(v6, v31, &qword_27F4DB340);
      if (v22(&v6[v21], 1, v1) != 1)
      {
        v24 = &v6[v21];
        v25 = v30;
        (*(v2 + 32))(v30, v24, v1);
        sub_2525C145C(&qword_27F4DB370, MEMORY[0x277D16DA8]);
        v26 = v23;
        v27 = sub_252692B70();
        v28 = *(v2 + 8);
        v28(v25, v1);
        sub_252372288(v12, &qword_27F4DB340);
        sub_252372288(v14, &qword_27F4DB340);
        v28(v26, v1);
        result = sub_252372288(v6, &qword_27F4DB340);
        if (v27)
        {
          goto LABEL_11;
        }

LABEL_9:
        v20 = 2;
        goto LABEL_12;
      }

      sub_252372288(v12, &qword_27F4DB340);
      sub_252372288(v14, &qword_27F4DB340);
      (*(v2 + 8))(v23, v1);
    }

    result = sub_252372288(v6, &qword_27F4DB338);
    goto LABEL_9;
  }

  v20 = 1;
LABEL_12:
  *v32 = v20;
  return result;
}

uint64_t StaticThermostatClusterGroup.autoClimateControlState(source:mode:)(uint64_t a1, unint64_t *a2, void *a3, unsigned __int8 *a4)
{
  v141 = a3;
  v151 = a1;
  v152 = a2;
  v134 = sub_25268DD40();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v129 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3540);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v131 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v132 = &v129 - v10;
  v11 = sub_25268DD80();
  v139 = *(v11 - 8);
  v140 = v11;
  MEMORY[0x28223BE20](v11);
  v136 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  v149 = *(v13 - 8);
  v150 = v13;
  MEMORY[0x28223BE20](v13);
  v138 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3530);
  MEMORY[0x28223BE20](v15 - 8);
  v137 = &v129 - v16;
  v17 = sub_25268DB10();
  v144 = *(v17 - 8);
  v145 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v143 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3538);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v129 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v129 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE70);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v130 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v135 = &v129 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v129 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0698);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v129 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3460);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v129 - v40;
  v146 = sub_25268EAF0();
  v148 = *(v146 - 8);
  v42 = MEMORY[0x28223BE20](v146);
  v44 = &v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v147 = &v129 - v45;
  v46 = *a4;
  v142 = v4;
  if ((sub_252690290() & 1) != 0 && !v46)
  {
    goto LABEL_3;
  }

  v49 = type metadata accessor for HAPControlSolver.Source();
  sub_25237153C(v141 + *(v49 + 84), v41, &qword_27F4E3460);
  v50 = v148;
  v51 = v146;
  if ((*(v148 + 48))(v41, 1, v146) == 1)
  {
    sub_252372288(v41, &qword_27F4E3460);
    v52 = sub_25268DC10();
    (*(*(v52 - 8) + 56))(v38, 1, 1, v52);
    (*(v139 + 56))(v35, 1, 1, v140);
    sub_25268DB00();
    sub_25268DE20();
    v53 = sub_25268DE40();
    (*(*(v53 - 8) + 56))(v28, 0, 1, v53);
    sub_25268EAD0();
    v54 = *(v50 + 32);
  }

  else
  {
    v54 = *(v50 + 32);
    (v54)(v44, v41, v51);
  }

  v55 = v145;
  v56 = v147;
  v54();
  sub_25268EAE0();
  v57 = sub_25268DE40();
  v58 = *(v57 - 8);
  v59 = *(v58 + 48);
  if (v59(v26, 1, v57) == 1)
  {
    sub_252372288(v26, &qword_27F4E3538);
  }

  else
  {
    v60 = sub_25268DDF0();
    (*(v58 + 8))(v26, v57);
    if ((v60 & 1) == 0)
    {
      (*(v148 + 8))(v56, v51);
LABEL_3:
      result = (*(v149 + 56))(v151, 1, 1, v150);
      v48 = v152;
      v152[6] = 0;
      *(v48 + 1) = 0u;
      *(v48 + 2) = 0u;
      *v48 = 0u;
      return result;
    }
  }

  sub_25268EAE0();
  if (v59(v23, 1, v57) == 1)
  {
    sub_252372288(v23, &qword_27F4E3538);
    v61 = v144;
    v62 = v137;
    (*(v144 + 56))(v137, 1, 1, v55);
    v63 = v143;
    sub_25268DB00();
    v64 = (*(v61 + 48))(v62, 1, v55);
    v65 = v138;
    if (v64 != 1)
    {
      sub_252372288(v62, &qword_27F4E3530);
    }
  }

  else
  {
    v66 = v137;
    sub_25268DE00();
    (*(v58 + 8))(v23, v57);
    v67 = v144;
    (*(v144 + 56))(v66, 0, 1, v55);
    v63 = v143;
    (*(v67 + 32))(v143, v66, v55);
    v65 = v138;
  }

  StaticThermostatClusterGroup.currentActivityState(with:)(v56, &v155);
  v68 = v155;
  v69 = v156;
  v70 = v157;
  StaticThermostatClusterGroup.activeHold.getter(&v155);
  v71 = v155;
  v72 = v150;
  StaticThermostatClusterGroup.currentHold(timeZone:)(v63, &v65[v150[5]]);
  *v65 = v71;
  v73 = &v65[v72[6]];
  *v73 = v68;
  *(v73 + 1) = v69;
  v73[16] = v70;
  v65[v72[7]] = 3;
  v74 = &v65[v72[8]];
  *v74 = 0;
  v74[8] = 1;
  v138 = (v69 - 5) < 2;
  v75 = v68;
  v76 = v68;
  v77 = v70;
  sub_25235E298(v76, v69);
  StaticThermostatClusterGroup.activeHold.getter(&v155);
  v78 = 0;
  if (v155 != 2)
  {
    v78 = StaticThermostatClusterGroup.availableThermostatHolds(timeZone:)(v63);
  }

  StaticThermostatClusterGroup.activeHold.getter(&v155);
  v141 = v78;
  v79 = v77;
  if (v155 != 2)
  {
    if (v155)
    {
      v80 = sub_2526933B0();
      swift_bridgeObjectRelease_n();
      if ((v80 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    StaticThermostatClusterGroup.activeHold.getter(&v155);
    if (v155 != 2)
    {
      if (v155)
      {
        v81 = 0xD000000000000012;
      }

      else
      {
        v81 = 0xD000000000000020;
      }

      if (v155)
      {
        v82 = ".topthird.rightthird";
      }

      else
      {
        v82 = "fig:thermostatState:)";
      }

      v137 = (v82 | 0x8000000000000000);
      goto LABEL_38;
    }

LABEL_37:
    v81 = 0;
    v137 = 0;
LABEL_38:
    v87 = v75;
    v88 = v145;
    goto LABEL_39;
  }

LABEL_17:
  StaticThermostatClusterGroup.activeHold.getter(&v155);
  if (v155 == 2)
  {
    goto LABEL_36;
  }

  if (v155)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v83 = sub_2526933B0();
    swift_bridgeObjectRelease_n();
    if ((v83 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v84 = v135;
  sub_25268EAC0();
  v85 = v139;
  v86 = v140;
  if ((*(v139 + 48))(v84, 1, v140) == 1)
  {
    sub_252372288(v84, &qword_27F4DFE70);
LABEL_36:
    if (v69 == 7)
    {
      goto LABEL_37;
    }

    v87 = v75;
    if (v69 <= 2)
    {
      v88 = v145;
      switch(v69)
      {
        case 0:
LABEL_65:
          v137 = 0xEA00000000006C6CLL;
          v81 = 0x69662E6573756F68;
          v108 = v87;
          v109 = v69;
          goto LABEL_87;
        case 1:
          v81 = 0xD000000000000015;
          v120 = 0x80000002526AF110;
LABEL_90:
          v137 = v120;
          goto LABEL_39;
        case 2:
          v137 = 0xEF6C6C69662E7372;
          v81 = 0x6174732E6E6F6F6DLL;
          v108 = v87;
          v109 = 2;
LABEL_87:
          sub_25235E2A8(v108, v109);
          goto LABEL_39;
      }
    }

    else
    {
      v88 = v145;
      if (v69 <= 4)
      {
        if (v69 == 3)
        {
          v137 = 0xEA00000000006C6CLL;
          v81 = 0x69662E6B636F6C63;
          v108 = v87;
          v109 = 3;
          goto LABEL_87;
        }

        goto LABEL_65;
      }

      if (v69 == 5)
      {
        v137 = 0x80000002526B1C80;
        v81 = 0xD000000000000012;
        goto LABEL_39;
      }

      if (v69 == 6)
      {
        v137 = 0x80000002526B1C40;
        v81 = 0xD000000000000034;
        goto LABEL_39;
      }
    }

    v120 = 0x80000002526AF110;
    if (v79)
    {
      v81 = 0x69662E6573756F68;
    }

    else
    {
      v81 = 0xD000000000000015;
    }

    if (v79)
    {
      v120 = 0xEA00000000006C6CLL;
    }

    goto LABEL_90;
  }

  (*(v85 + 32))(v136, v84, v86);
  if (v69 == 7)
  {
    sub_25235E298(v75, 7uLL);
    sub_25235E2A8(v75, 7uLL);
    sub_25235E2A8(0, 5uLL);
    v107 = v132;
    goto LABEL_71;
  }

  v155 = v75;
  v156 = v69;
  v157 = v77;
  v153 = xmmword_252699450;
  v154 = 0;
  sub_25235E298(v75, v69);
  sub_25235E298(v75, v69);
  v110 = sub_252440048(&v155, &v153);
  sub_25235E284(v153, *(&v153 + 1));
  sub_25235E284(v155, v156);
  sub_25235E2A8(v75, v69);
  v107 = v132;
  if (v110)
  {
    if (v69 <= 2)
    {
      v87 = v75;
      v88 = v145;
      switch(v69)
      {
        case 0:
LABEL_108:
          v137 = 0xEA00000000006C6CLL;
          v81 = 0x69662E6573756F68;
          v124 = v87;
          v125 = v69;
          goto LABEL_125;
        case 1:
          v81 = 0xD000000000000015;
          v128 = 0x80000002526AF110;
LABEL_128:
          v137 = v128;
          goto LABEL_129;
        case 2:
          v137 = 0xEF6C6C69662E7372;
          v81 = 0x6174732E6E6F6F6DLL;
          v124 = v87;
          v125 = 2;
LABEL_125:
          sub_25235E2A8(v124, v125);
          goto LABEL_129;
      }
    }

    else
    {
      v87 = v75;
      if (v69 <= 4)
      {
        v88 = v145;
        if (v69 == 3)
        {
          v137 = 0xEA00000000006C6CLL;
          v81 = 0x69662E6B636F6C63;
          v124 = v87;
          v125 = 3;
          goto LABEL_125;
        }

        goto LABEL_108;
      }

      v88 = v145;
      if (v69 == 5)
      {
        v137 = 0x80000002526B1C80;
        v81 = 0xD000000000000012;
        goto LABEL_129;
      }

      if (v69 == 6)
      {
        v137 = 0x80000002526B1C40;
        v81 = 0xD000000000000034;
LABEL_129:
        v113 = v139;
        goto LABEL_130;
      }
    }

    v128 = 0x80000002526AF110;
    if (v79)
    {
      v81 = 0x69662E6573756F68;
    }

    else
    {
      v81 = 0xD000000000000015;
    }

    if (v79)
    {
      v128 = 0xEA00000000006C6CLL;
    }

    goto LABEL_128;
  }

LABEL_71:
  sub_25268DD10();
  v111 = v133;
  v112 = v134;
  if ((*(v133 + 48))(v107, 1, v134) == 1)
  {
    sub_252372288(v107, &qword_27F4E3540);
    if (v69 > 3)
    {
      v113 = v139;
      v86 = v140;
      v79 = v77;
      if (v69 > 5)
      {
        v87 = v75;
        if (v69 == 6)
        {
          v137 = 0x80000002526B1C40;
          v81 = 0xD000000000000034;
          v88 = v145;
        }

        else
        {
          v88 = v145;
          if (v69 != 7)
          {
            goto LABEL_112;
          }

          v81 = 0;
          v137 = 0;
        }
      }

      else
      {
        v87 = v75;
        if (v69 == 4)
        {
LABEL_104:
          v137 = 0xEA00000000006C6CLL;
          v81 = 0x69662E6573756F68;
          v126 = v87;
          v127 = v69;
LABEL_110:
          sub_25235E2A8(v126, v127);
          v88 = v145;
          goto LABEL_130;
        }

        v88 = v145;
        v137 = 0x80000002526B1C80;
        v81 = 0xD000000000000012;
      }
    }

    else
    {
      v113 = v139;
      v86 = v140;
      v79 = v77;
      if (v69 <= 1)
      {
        v87 = v75;
        if (v69)
        {
          v88 = v145;
          if (v69 == 1)
          {
            v81 = 0xD000000000000015;
            v114 = 0x80000002526AF110;
LABEL_117:
            v137 = v114;
            goto LABEL_130;
          }

LABEL_112:
          v114 = 0x80000002526AF110;
          if (v79)
          {
            v81 = 0x69662E6573756F68;
          }

          else
          {
            v81 = 0xD000000000000015;
          }

          if (v79)
          {
            v114 = 0xEA00000000006C6CLL;
          }

          goto LABEL_117;
        }

        goto LABEL_104;
      }

      v87 = v75;
      if (v69 == 2)
      {
        v137 = 0xEF6C6C69662E7372;
        v81 = 0x6174732E6E6F6F6DLL;
        v126 = v75;
        v127 = 2;
        goto LABEL_110;
      }

      v88 = v145;
      v137 = 0xEA00000000006C6CLL;
      v81 = 0x69662E6B636F6C63;
      sub_25235E2A8(v87, 3uLL);
    }
  }

  else
  {
    v117 = sub_25268DD30();
    v118 = v107;
    v81 = v117;
    v137 = v119;
    (*(v111 + 8))(v118, v112);
    v113 = v139;
    v86 = v140;
    v79 = v77;
    v87 = v75;
    v88 = v145;
  }

LABEL_130:
  (*(v113 + 8))(v136, v86);
LABEL_39:
  v89 = v138 << 8;
  StaticThermostatClusterGroup.activeHold.getter(&v155);
  if (v155 == 2)
  {
LABEL_40:
    v90 = v87;
    v91 = v69;
LABEL_50:
    sub_25235E2A8(v90, v91);
LABEL_51:
    v93 = 0;
    v94 = 1;
    v95 = v146;
    goto LABEL_52;
  }

  if (v155)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v92 = sub_2526933B0();
    swift_bridgeObjectRelease_n();
    if ((v92 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  if (v69 == 7)
  {
    sub_25235E2A8(v87, 7uLL);
    v90 = 0;
    v91 = 6;
    goto LABEL_50;
  }

  v155 = v87;
  v156 = v69;
  v157 = v79;
  v153 = xmmword_252699440;
  v154 = 0;
  sub_25235E298(v87, v69);
  v102 = sub_252440048(&v155, &v153);
  sub_25235E284(v153, *(&v153 + 1));
  sub_25235E284(v155, v156);
  sub_25235E2A8(v87, v69);
  if ((v102 & 1) == 0)
  {
    goto LABEL_51;
  }

  v103 = v130;
  sub_25268EAC0();
  v104 = v139;
  v105 = (*(v139 + 48))(v103, 1, v140);
  v95 = v146;
  if (v105 == 1)
  {
    sub_252372288(v103, &qword_27F4DFE70);
    v106 = v131;
    (*(v133 + 56))(v131, 1, 1, v134);
  }

  else
  {
    v106 = v131;
    sub_25268DD10();
    (*(v104 + 8))(v103, v140);
    v115 = v133;
    v116 = v134;
    if ((*(v133 + 48))(v106, 1, v134) != 1)
    {
      v121 = v129;
      (*(v115 + 32))(v129, v106, v116);
      v93 = sub_25268DD20();
      v94 = v122;
      v123 = v121;
      v95 = v146;
      (*(v115 + 8))(v123, v116);
      goto LABEL_52;
    }
  }

  sub_252372288(v106, &qword_27F4E3540);
  v93 = 0;
  v94 = 1;
LABEL_52:
  v96 = sub_252692330();
  v97 = sub_252692300();
  (*(v144 + 8))(v143, v88);
  (*(v148 + 8))(v147, v95);
  LOBYTE(v155) = v94 & 1;
  v98 = v65;
  v99 = v151;
  sub_2525C14A4(v98, v151, type metadata accessor for AccessoryControl.AutoClimateState);
  result = (*(v149 + 56))(v99, 0, 1, v72);
  v100 = v152;
  v101 = v137;
  *v152 = v81;
  v100[1] = v101;
  v100[2] = v96;
  v100[3] = v97;
  v100[4] = v93;
  v100[5] = v89 | v94 & 1;
  v100[6] = v141;
  return result;
}

void *StaticThermostatClusterGroup.autoClimateResumeOptions(with:)(uint64_t a1)
{
  v2 = sub_25268DB10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  StaticThermostatClusterGroup.activeHold.getter(&v12);
  if (v12 == 2)
  {
    return 0;
  }

  if (v12)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v6 = sub_2526933B0();
    swift_bridgeObjectRelease_n();
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_25268DB00();
  v7 = StaticThermostatClusterGroup.availableThermostatHolds(timeZone:)(v5);
  v8 = (*(v3 + 8))(v5, v2);
  if (v7)
  {
    MEMORY[0x28223BE20](v8);
    *&v11[-16] = a1;
    v9 = sub_25236538C(sub_2525C12EC, &v11[-32], v7);

    return v9;
  }

  return 0;
}

uint64_t StaticThermostatClusterGroup.autoClimateCurrentHoldOption()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25268DB10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB300);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-v7];
  StaticThermostatClusterGroup.activeHold.getter(&v15);
  if (v15 == 2)
  {
    goto LABEL_2;
  }

  if (v15)
  {
    v10 = sub_2526933B0();
    swift_bridgeObjectRelease_n();
    if ((v10 & 1) == 0)
    {
LABEL_2:
      v9 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_25268DB00();
  StaticThermostatClusterGroup.currentHold(timeZone:)(v5, v8);
  (*(v3 + 8))(v5, v2);
  v11 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
    sub_252372288(v8, &qword_27F4DB300);
    v9 = 1;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2525C1574(v8, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    v9 = 1;
  }

  else
  {
    sub_2525C14A4(v8, a1, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    v9 = 0;
  }

LABEL_12:
  v12 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  return (*(*(v12 - 8) + 56))(a1, v9, 1, v12);
}

Swift::OpaquePointer_optional __swiftcall StaticThermostatClusterGroup.autoClimateHoldOptions()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB330);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = v33 - v4;
  v6 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v8 = *(v41 - 8);
  v9 = MEMORY[0x28223BE20](v41);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = v33 - v12;
  v13 = sub_25268DB10();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  StaticThermostatClusterGroup.activeHold.getter(&v43);
  if (v43 == 2)
  {
    goto LABEL_20;
  }

  if (v43)
  {
    v18 = sub_2526933B0();
    swift_bridgeObjectRelease_n();
    if ((v18 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_25268DB00();
  v19 = StaticThermostatClusterGroup.availableThermostatHolds(timeZone:)(v16);
  (*(v14 + 8))(v16, v13);
  if (!v19)
  {
LABEL_20:
    v23 = 0;
    goto LABEL_23;
  }

  v20 = v19[2];
  v33[1] = v19;
  if (v20)
  {
    v21 = v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v22 = *(v8 + 72);
    v38 = v3;
    v39 = v22;
    v36 = (v35 + 48);
    v37 = (v35 + 56);
    v23 = MEMORY[0x277D84F90];
    v24 = &qword_27F4DB330;
    v34 = v6;
    do
    {
      v25 = v5;
      v26 = v24;
      v27 = v40;
      sub_2525C150C(v21, v40, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      sub_2525C14A4(v27, v11, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v38;
        (*v37)(v38, 1, 1, v6);
        sub_2525C1574(v11, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      }

      else
      {
        v28 = v38;
        sub_2525C14A4(v11, v38, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        (*v37)(v28, 0, 1, v6);
      }

      v24 = v26;
      v29 = v28;
      v5 = v25;
      sub_2523714D4(v29, v25, v26);
      if ((*v36)(v25, 1, v6) == 1)
      {
        sub_252372288(v25, v26);
      }

      else
      {
        sub_2525C14A4(v25, v42, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_2523687BC(0, v23[2] + 1, 1, v23);
        }

        v31 = v23[2];
        v30 = v23[3];
        if (v31 >= v30 >> 1)
        {
          v23 = sub_2523687BC(v30 > 1, v31 + 1, 1, v23);
        }

        v23[2] = v31 + 1;
        sub_2525C14A4(v42, v23 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        v6 = v34;
        v24 = v26;
      }

      v21 += v39;
      --v20;
    }

    while (v20);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

LABEL_23:
  v32 = v23;
  result.value._rawValue = v32;
  result.is_nil = v17;
  return result;
}

void *StaticThermostatClusterGroup.availableThermostatHolds(timeZone:)(uint64_t a1)
{
  v2 = sub_252690460();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_252690290())
  {
    sub_252690480();
    v6 = sub_2525B8524(a1);
    (*(v3 + 8))(v5, v2);
    if (!v6)
    {
      return 0;
    }

LABEL_7:
    v9 = v6;

    sub_2525BE038(&v9);

    return v9;
  }

  if (sub_252690070())
  {
    result = sub_2525B89A0(a1);
    if (!result)
    {
      return result;
    }

    v6 = result;
    goto LABEL_7;
  }

  return MEMORY[0x277D84F90];
}

size_t sub_2525B8524(uint64_t a1)
{
  v29 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_25268D990();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  if (sub_252690440())
  {
    v27 = a1;
    v28 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF60);
    v16 = *(v2 + 72);
    v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v26 = v17 + v16;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252694E90;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
    v25 = *(*(v18 - 8) + 56);
    v25(v15 + v17, 1, 1, v18);
    swift_storeEnumTagMultiPayload();
    sub_252690450();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_252372288(v10, &qword_27F4DB2D8);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v19 = *(v18 + 48);
      v20 = *(v18 + 64);
      *v7 = sub_252690470();
      (*(v12 + 16))(v7 + v19, v14, v11);
      v21 = sub_25268DB10();
      (*(*(v21 - 8) + 16))(v7 + v20, v27, v21);
      v25(v7, 0, 1, v18);
      v22 = v28;
      sub_2525C150C(v7, v28, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      swift_storeEnumTagMultiPayload();
      v15 = sub_252368668(1uLL, 2, 1, v15);
      sub_2525C1574(v7, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      (*(v12 + 8))(v14, v11);
      *(v15 + 16) = 2;
      sub_2525C14A4(v22, v15 + v26, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    }
  }

  return v15;
}

size_t sub_2525B89A0(uint64_t a1)
{
  v88 = a1;
  v93 = *MEMORY[0x277D85DE8];
  v89 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v86 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v3 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v84 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v82 = &v73 - v7;
  v87 = sub_25268D990();
  v90 = *(v87 - 8);
  v8 = MEMORY[0x28223BE20](v87);
  v80 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = &v73 - v10;
  v11 = sub_2526903A0();
  v92 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v83 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB338);
  MEMORY[0x28223BE20](v13);
  v15 = &v73 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB340);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v91 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v73 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v73 - v22;
  v24 = sub_252690200();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v81 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v85 = &v73 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v73 - v30;
  if ((sub_2526903B0() & 1) == 0)
  {
    return 0;
  }

  v76 = v1;
  v77 = v3;
  sub_252690220();
  sub_2526901B0();
  v33 = *(v25 + 8);
  v32 = v25 + 8;
  v75 = v24;
  v78 = v33;
  v33(v31, v24);
  v34 = v92;
  (*(v92 + 104))(v21, *MEMORY[0x277D16D98], v11);
  (*(v34 + 56))(v21, 0, 1, v11);
  v35 = *(v13 + 48);
  sub_25237153C(v23, v15, &qword_27F4DB340);
  sub_25237153C(v21, &v15[v35], &qword_27F4DB340);
  v36 = *(v34 + 48);
  if (v36(v15, 1, v11) != 1)
  {
    v37 = v91;
    sub_25237153C(v15, v91, &qword_27F4DB340);
    if (v36(&v15[v35], 1, v11) == 1)
    {
      sub_252372288(v21, &qword_27F4DB340);
      sub_252372288(v23, &qword_27F4DB340);
      (*(v34 + 8))(v37, v11);
      goto LABEL_7;
    }

    v74 = v32;
    v39 = v83;
    (*(v34 + 32))(v83, &v15[v35], v11);
    sub_2525C145C(&qword_27F4DB370, MEMORY[0x277D16DA8]);
    v40 = v37;
    v41 = sub_252692B70();
    v42 = *(v34 + 8);
    v42(v39, v11);
    sub_252372288(v21, &qword_27F4DB340);
    sub_252372288(v23, &qword_27F4DB340);
    v42(v40, v11);
    sub_252372288(v15, &qword_27F4DB340);
    if (v41)
    {
      goto LABEL_9;
    }

    return 0;
  }

  v74 = v32;
  sub_252372288(v21, &qword_27F4DB340);
  sub_252372288(v23, &qword_27F4DB340);
  if (v36(&v15[v35], 1, v11) != 1)
  {
LABEL_7:
    sub_252372288(v15, &qword_27F4DB338);
    return 0;
  }

  sub_252372288(v15, &qword_27F4DB340);
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF60);
  v43 = *(v86 + 9);
  v44 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v91 = 2 * v43;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_252694EA0;
  v92 = v44;
  v46 = v45 + v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v48 = *(*(v47 - 8) + 56);
  v48(v46, 2, 3, v47);
  swift_storeEnumTagMultiPayload();
  v86 = v48;
  v48(v46 + v43, 3, 3, v47);
  swift_storeEnumTagMultiPayload();
  v49 = v85;
  sub_252690220();
  v50 = sub_2526901D0();
  LOBYTE(v43) = v51;
  v52 = v49;
  v53 = v75;
  v78(v52, v75);
  v54 = sub_252690470();
  v55 = v77;
  v56 = v87;
  if ((v43 & 1) == 0 && v50 == v54)
  {
    v85 = v45;
    v57 = v81;
    sub_252690220();
    v58 = v82;
    sub_2526901E0();
    v78(v57, v53);
    v59 = v90;
    if ((*(v90 + 48))(v58, 1, v56) != 1)
    {
      v65 = v79;
      (*(v59 + 32))(v79, v58, v56);
      v70 = *(v47 + 48);
      v71 = *(v47 + 64);
      *v55 = sub_252690470();
      (*(v59 + 16))(v55 + v70, v65, v56);
      (*(v59 + 56))(v55 + v70, 0, 1, v56);
      v72 = sub_25268DB10();
      (*(*(v72 - 8) + 16))(v55 + v71, v88, v72);
      v86(v55, 0, 3, v47);
      swift_storeEnumTagMultiPayload();
      v69 = v85;
      goto LABEL_18;
    }

    sub_252372288(v58, &qword_27F4DB2D8);
    v45 = v85;
  }

  v60 = v84;
  sub_2525BD0F8(v84);
  v59 = v90;
  if ((*(v90 + 48))(v60, 1, v56) != 1)
  {
    v65 = v80;
    (*(v59 + 32))(v80, v60, v56);
    v66 = *(v47 + 48);
    v67 = *(v47 + 64);
    *v55 = sub_252690470();
    (*(v59 + 16))(v55 + v66, v65, v56);
    (*(v59 + 56))(v55 + v66, 0, 1, v56);
    v68 = sub_25268DB10();
    (*(*(v68 - 8) + 16))(v55 + v67, v88, v68);
    v86(v55, 0, 3, v47);
    swift_storeEnumTagMultiPayload();
    v69 = v45;
LABEL_18:
    v64 = sub_252368668(1uLL, 3, 1, v69);
    (*(v59 + 8))(v65, v56);
    goto LABEL_19;
  }

  sub_252372288(v60, &qword_27F4DB2D8);
  v61 = *(v47 + 48);
  v62 = *(v47 + 64);
  *v55 = sub_252690470();
  (*(v59 + 56))(v55 + v61, 1, 1, v56);
  v63 = sub_25268DB10();
  (*(*(v63 - 8) + 16))(v55 + v62, v88, v63);
  v86(v55, 0, 3, v47);
  swift_storeEnumTagMultiPayload();
  v64 = sub_252368668(1uLL, 3, 1, v45);
LABEL_19:
  *(v64 + 16) = 3;
  sub_2525C14A4(v55, v64 + v92 + v91, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  return v64;
}

uint64_t StaticThermostatClusterGroup.currentHold(timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v66 - v4;
  v5 = sub_25268D990();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v67 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252690190();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB340);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v66 - v13;
  v15 = sub_252690200();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v68 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v66 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v66 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v66 - v25;
  if ((sub_252690290() & 1) == 0)
  {
    v66 = a2;
    sub_252690220();
    sub_2526901B0();
    v30 = *(v16 + 8);
    v30(v26, v15);
    v31 = sub_2526903A0();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v14, 1, v31) == 1)
    {
LABEL_6:
      v33 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
      (*(*(v33 - 8) + 56))(v66, 1, 1, v33);
      return sub_252372288(v14, &qword_27F4DB340);
    }

    sub_25237153C(v14, v12, &qword_27F4DB340);
    v34 = (*(v32 + 88))(v12, v31);
    if (v34 == *MEMORY[0x277D16DA0])
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      v36 = v66;
      (*(*(v35 - 8) + 56))(v66, 1, 3, v35);
      v37 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      return sub_252372288(v14, &qword_27F4DB340);
    }

    if (v34 != *MEMORY[0x277D16D98])
    {
      (*(v32 + 8))(v12, v31);
      goto LABEL_6;
    }

    if ((sub_252690070() & 1) == 0)
    {
      sub_252690220();
      v38 = sub_2526901D0();
      v40 = v39;
      v30(v24, v15);
      if ((v40 & 1) == 0)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        v56 = *(v55 + 48);
        v57 = *(v55 + 64);
        v58 = v66;
        *v66 = v38;
        (*(v71 + 56))(v58 + v56, 1, 1, v72);
        v59 = sub_25268DB10();
        (*(*(v59 - 8) + 16))(v58 + v57, v70, v59);
        (*(*(v55 - 8) + 56))(v58, 0, 3, v55);
        v60 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v60 - 8) + 56))(v58, 0, 1, v60);
        return sub_252372288(v14, &qword_27F4DB340);
      }
    }

    v41 = v30;
    v42 = v73;
    sub_2526901A0();
    v43 = sub_252690180();
    (*(v74 + 8))(v42, v75);
    v44 = v66;
    if (v43)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      (*(*(v45 - 8) + 56))(v44, 2, 3, v45);
    }

    else
    {
      sub_252690220();
      v46 = sub_2526901D0();
      v48 = v47;
      v41(v21, v15);
      if ((v48 & 1) == 0)
      {
        v49 = v68;
        sub_252690220();
        v50 = v69;
        sub_2526901E0();
        v41(v49, v15);
        v52 = v71;
        v51 = v72;
        if ((*(v71 + 48))(v50, 1, v72) != 1)
        {
          v61 = *(v52 + 32);
          v62 = v67;
          v61(v67, v50, v51);
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
          v64 = *(v63 + 48);
          v75 = *(v63 + 64);
          *v44 = v46;
          v61(v44 + v64, v62, v51);
          (*(v52 + 56))(v44 + v64, 0, 1, v51);
          v65 = sub_25268DB10();
          (*(*(v65 - 8) + 16))(v44 + v75, v70, v65);
          (*(*(v63 - 8) + 56))(v44, 0, 3, v63);
          goto LABEL_19;
        }

        sub_252372288(v50, &qword_27F4DB2D8);
      }

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      (*(*(v53 - 8) + 56))(v44, 3, 3, v53);
    }

LABEL_19:
    v54 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v54 - 8) + 56))(v44, 0, 1, v54);
    return sub_252372288(v14, &qword_27F4DB340);
  }

  v27 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v28 = *(*(v27 - 8) + 56);

  return v28(a2, 1, 1, v27);
}

uint64_t StaticThermostatClusterGroup.currentActivityState(with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v255 = a1;
  v264 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518);
  MEMORY[0x28223BE20](v3 - 8);
  v226 = v213 - v4;
  v227 = sub_25268DDC0();
  v230 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v218 = v213 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3538);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v225 = v213 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v237 = v213 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3548);
  MEMORY[0x28223BE20](v10 - 8);
  v223 = v213 - v11;
  v224 = sub_252690130();
  v229 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v221 = v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_25268FEF0();
  v247 = *(v261 - 8);
  v13 = MEMORY[0x28223BE20](v261);
  v235 = v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v234 = v213 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v217 = v213 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v216 = v213 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v260 = v213 - v22;
  MEMORY[0x28223BE20](v21);
  v259 = v213 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E01A0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v219 = v213 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v220 = v213 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v228 = v213 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v239 = v213 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v245 = v213 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v244 = v213 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v243 = v213 - v38;
  MEMORY[0x28223BE20](v37);
  v249 = v213 - v39;
  v250 = sub_25268F260();
  v263 = *(v250 - 8);
  v40 = MEMORY[0x28223BE20](v250);
  v231 = v213 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v232 = v213 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v233 = v213 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v246 = v213 - v47;
  MEMORY[0x28223BE20](v46);
  v251 = v213 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3550);
  MEMORY[0x28223BE20](v49 - 8);
  v254 = v213 - v50;
  v256 = sub_252690190();
  v258 = *(v256 - 8);
  v51 = MEMORY[0x28223BE20](v256);
  v222 = v213 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v236 = v213 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v238 = v213 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v240 = v213 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v241 = v213 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v242 = v213 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v248 = v213 - v64;
  MEMORY[0x28223BE20](v63);
  v252 = (v213 - v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE70);
  MEMORY[0x28223BE20](v66 - 8);
  v253 = v213 - v67;
  v68 = sub_2526903A0();
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v257 = v213 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB338);
  MEMORY[0x28223BE20](v71);
  v73 = v213 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB340);
  v75 = MEMORY[0x28223BE20](v74 - 8);
  v262 = v213 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x28223BE20](v75);
  v79 = v213 - v78;
  MEMORY[0x28223BE20](v77);
  v81 = v213 - v80;
  v82 = sub_252690200();
  v83 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v85 = v213 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2526903B0();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v215 = v2;
  sub_252690220();
  sub_2526901B0();
  (*(v83 + 8))(v85, v82);
  (*(v69 + 104))(v79, *MEMORY[0x277D16DA0], v68);
  (*(v69 + 56))(v79, 0, 1, v68);
  v87 = *(v71 + 48);
  sub_25237153C(v81, v73, &qword_27F4DB340);
  sub_25237153C(v79, &v73[v87], &qword_27F4DB340);
  v88 = *(v69 + 48);
  if (v88(v73, 1, v68) == 1)
  {
    sub_252372288(v79, &qword_27F4DB340);
    sub_252372288(v81, &qword_27F4DB340);
    if (v88(&v73[v87], 1, v68) == 1)
    {
      sub_252372288(v73, &qword_27F4DB340);
      goto LABEL_12;
    }

LABEL_7:
    v90 = &qword_27F4DB338;
    v91 = v73;
LABEL_8:
    result = sub_252372288(v91, v90);
LABEL_9:
    v92 = 0;
    v93 = 0;
    v94 = 7;
    goto LABEL_10;
  }

  v89 = v262;
  sub_25237153C(v73, v262, &qword_27F4DB340);
  if (v88(&v73[v87], 1, v68) == 1)
  {
    sub_252372288(v79, &qword_27F4DB340);
    sub_252372288(v81, &qword_27F4DB340);
    (*(v69 + 8))(v89, v68);
    goto LABEL_7;
  }

  v96 = &v73[v87];
  v97 = v257;
  (*(v69 + 32))(v257, v96, v68);
  sub_2525C145C(&qword_27F4DB370, MEMORY[0x277D16DA8]);
  v98 = v89;
  v99 = sub_252692B70();
  v100 = *(v69 + 8);
  v100(v97, v68);
  sub_252372288(v79, &qword_27F4DB340);
  sub_252372288(v81, &qword_27F4DB340);
  v100(v98, v68);
  result = sub_252372288(v73, &qword_27F4DB340);
  if ((v99 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  if ((sub_252690290() & 1) == 0)
  {
    v104 = v252;
    sub_2526901A0();
    v105 = v254;
    sub_252690170();
    v107 = v258 + 8;
    v106 = *(v258 + 8);
    v94 = v256;
    v106(v104, v256);
    v108 = sub_2526902D0();
    LODWORD(v104) = (*(*(v108 - 8) + 48))(v105, 1, v108);
    result = sub_252372288(v105, &qword_27F4E3550);
    if (v104 != 1)
    {
      goto LABEL_9;
    }

    v109 = v248;
    sub_2526901A0();
    v110 = v249;
    sub_252690110();
    v106(v109, v94);
    v111 = v263;
    v113 = v263 + 48;
    v112 = *(v263 + 48);
    v114 = v250;
    if (v112(v110, 1, v250) == 1)
    {
      goto LABEL_19;
    }

    v248 = *(v111 + 32);
    (v248)(v251, v110, v114);
    v115 = v242;
    v249 = v112;
    sub_2526901A0();
    v110 = v243;
    sub_252690150();
    v106(v115, v94);
    if ((v249)(v110, 1, v114) == 1)
    {
      (*(v111 + 8))(v251, v114);
LABEL_19:
      v90 = &qword_27F4E01A0;
      v91 = v110;
      goto LABEL_8;
    }

    v213[1] = v113;
    (v248)(v246, v110, v114);
    v117 = v241;
    sub_2526901A0();
    v92 = sub_252690100();
    v106(v117, v94);
    v258 = v107;
    v241 = (v111 + 32);
    v214 = v106;
    if (v92)
    {
      v118 = v233;
      v119 = v114;
      v262 = *(v92 + 16);
      if (v262)
      {
        v120 = 0;
        v257 = (v111 + 16);
        LODWORD(v254) = *MEMORY[0x277D16BA0];
        v121 = (v247 + 8);
        v252 = (v111 + 8);
        v253 = (v247 + 104);
        v122 = v259;
        while (v120 < *(v92 + 16))
        {
          (*(v111 + 16))(v118, v92 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v120, v119);
          sub_25268F1E0();
          v123 = v260;
          v94 = v119;
          v124 = v261;
          (*v253)(v260, v254, v261);
          sub_2525C145C(&qword_27F4E0070, MEMORY[0x277D16BB8]);
          sub_252692D40();
          sub_252692D40();
          v125 = *v121;
          (*v121)(v123, v124);
          v125(v122, v124);
          if (v268 == v265)
          {

            v126 = v244;
            (v248)(v244, v118, v94);
            v111 = v263;
            v243 = *(v263 + 56);
            (v243)(v126, 0, 1, v94);
            v119 = v94;
            goto LABEL_32;
          }

          ++v120;
          (*v252)(v118, v94);
          v111 = v263;
          v119 = v94;
          if (v262 == v120)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
        goto LABEL_120;
      }

LABEL_29:

      v243 = *(v111 + 56);
      (v243)(v244, 1, 1, v119);
LABEL_32:
      v94 = v256;
      v106 = v214;
    }

    else
    {
      v243 = *(v111 + 56);
      (v243)(v244, 1, 1, v114);
      v119 = v114;
    }

    v127 = v240;
    sub_2526901A0();
    v92 = sub_252690100();
    v106(v127, v94);
    if (v92)
    {
      v128 = v232;
      v262 = *(v92 + 16);
      if (v262)
      {
        v129 = 0;
        v257 = (v111 + 16);
        LODWORD(v254) = *MEMORY[0x277D16B98];
        v130 = (v247 + 8);
        v252 = (v111 + 8);
        v253 = (v247 + 104);
        v131 = v259;
        while (v129 < *(v92 + 16))
        {
          (*(v111 + 16))(v128, v92 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v129, v119);
          sub_25268F1E0();
          v132 = v260;
          v94 = v119;
          v133 = v261;
          (*v253)(v260, v254, v261);
          sub_2525C145C(&qword_27F4E0070, MEMORY[0x277D16BB8]);
          sub_252692D40();
          sub_252692D40();
          v134 = *v130;
          (*v130)(v132, v133);
          v134(v131, v133);
          if (v268 == v265)
          {

            v136 = v245;
            (v248)(v245, v128, v94);
            v135 = 0;
            v119 = v94;
            v111 = v263;
            goto LABEL_42;
          }

          ++v129;
          (*v252)(v128, v94);
          v111 = v263;
          v119 = v94;
          if (v262 == v129)
          {
            goto LABEL_39;
          }
        }

LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

LABEL_39:

      v135 = 1;
      v136 = v245;
LABEL_42:
      v94 = v256;
    }

    else
    {
      v135 = 1;
      v136 = v245;
    }

    v137 = 1;
    v242 = (v111 + 56);
    (v243)(v136, v135, 1, v119);
    v138 = v238;
    sub_2526901A0();
    v92 = sub_252690100();
    v214(v138, v94);
    if (v92)
    {
      v139 = v231;
      v262 = *(v92 + 16);
      if (v262)
      {
        v140 = 0;
        v257 = (v111 + 16);
        LODWORD(v254) = *MEMORY[0x277D16BB0];
        v141 = (v247 + 8);
        v252 = (v111 + 8);
        v253 = (v247 + 104);
        v142 = v259;
        v143 = v260;
        while (v140 < *(v92 + 16))
        {
          (*(v111 + 16))(v139, v92 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v140, v119);
          sub_25268F1E0();
          v94 = v119;
          v144 = v261;
          (*v253)(v143, v254, v261);
          sub_2525C145C(&qword_27F4E0070, MEMORY[0x277D16BB8]);
          sub_252692D40();
          sub_252692D40();
          v145 = *v141;
          (*v141)(v143, v144);
          v145(v142, v144);
          if (v268 == v265)
          {

            v146 = v239;
            (v248)(v239, v139, v94);
            v137 = 0;
            v119 = v94;
            goto LABEL_52;
          }

          ++v140;
          (*v252)(v139, v94);
          v111 = v263;
          v119 = v94;
          if (v262 == v140)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_121;
      }

LABEL_49:

      v137 = 1;
      v146 = v239;
LABEL_52:
      v94 = v256;
    }

    else
    {
      v146 = v239;
    }

    (v243)(v146, v137, 1, v119);
    v147 = v236;
    sub_2526901A0();
    v148 = sub_2526900F0();
    v214(v147, v94);
    v149 = v237;
    if (v148)
    {
      goto LABEL_85;
    }

    v150 = v146;
    v151 = v259;
    sub_25268F1E0();
    v152 = v247;
    v154 = v260;
    v153 = v261;
    (*(v247 + 104))(v260, *MEMORY[0x277D16BA0], v261);
    sub_2525C145C(&qword_27F4E0070, MEMORY[0x277D16BB8]);
    sub_252692D40();
    sub_252692D40();
    v155 = *(v152 + 8);
    v155(v154, v153);
    v156 = v151;
    v146 = v150;
    v155(v156, v153);
    if (v268 != v265)
    {
      goto LABEL_85;
    }

    v157 = sub_25268F1D0();
    v159 = v158;
    v160 = v228;
    sub_25237153C(v245, v228, &qword_27F4E01A0);
    if ((v249)(v160, 1, v119) == 1)
    {
      sub_252372288(v160, &qword_27F4E01A0);
      if (v159 >> 60 != 15)
      {
        v161 = 0;
        v162 = 0xF000000000000000;
        goto LABEL_62;
      }
    }

    else
    {
      v161 = sub_25268F1D0();
      v162 = v163;
      (*(v263 + 8))(v160, v119);
      if (v159 >> 60 != 15)
      {
        if (v162 >> 60 != 15)
        {
          sub_2525C1370(v157, v159);
          sub_2525C1370(v161, v162);
          v172 = sub_2525C1184(v157, v159, v161, v162);
          sub_2525C1308(v161, v162);
          sub_2525C1308(v161, v162);
          sub_2525C1308(v157, v159);
          sub_2525C1308(v157, v159);
          v146 = v150;
          if (v172)
          {
            goto LABEL_73;
          }

          goto LABEL_63;
        }

LABEL_62:
        sub_2525C1308(v157, v159);
        sub_2525C1308(v161, v162);
        v146 = v150;
LABEL_63:
        v164 = sub_25268F1D0();
        v166 = v165;
        v167 = v220;
        sub_25237153C(v146, v220, &qword_27F4E01A0);
        if ((v249)(v167, 1, v119) == 1)
        {
          sub_252372288(v167, &qword_27F4E01A0);
          if (v166 >> 60 != 15)
          {
            v168 = 0;
            v169 = 0xF000000000000000;
LABEL_84:
            sub_2525C1308(v164, v166);
            sub_2525C1308(v168, v169);
            goto LABEL_85;
          }
        }

        else
        {
          v168 = sub_25268F1D0();
          v169 = v170;
          (*(v263 + 8))(v167, v119);
          if (v166 >> 60 != 15)
          {
            if (v169 >> 60 == 15)
            {
              goto LABEL_84;
            }

            sub_2525C1370(v164, v166);
            sub_2525C1370(v168, v169);
            v171 = sub_2525C1184(v164, v166, v168, v169);
            sub_2525C1308(v168, v169);
            sub_2525C1308(v168, v169);
            sub_2525C1308(v164, v166);
            sub_2525C1308(v164, v166);
            if ((v171 & 1) == 0)
            {
              goto LABEL_85;
            }

            goto LABEL_73;
          }

          if (v169 >> 60 != 15)
          {
            goto LABEL_84;
          }
        }

        sub_2525C1308(v164, v166);
LABEL_73:
        v173 = v222;
        sub_2526901A0();
        v174 = v223;
        sub_252690160();
        v214(v173, v256);
        v175 = v229;
        v176 = v224;
        if ((*(v229 + 48))(v174, 1, v224) == 1)
        {
          sub_252372288(v174, &qword_27F4E3548);
          goto LABEL_85;
        }

        (*(v175 + 32))(v221, v174, v176);
        v164 = sub_252690120();
        v166 = v177;
        v178 = v219;
        sub_25237153C(v244, v219, &qword_27F4E01A0);
        if ((v249)(v178, 1, v119) == 1)
        {
          sub_252372288(v178, &qword_27F4E01A0);
          v168 = 0;
          v169 = 0xF000000000000000;
          if (v166 >> 60 != 15)
          {
            goto LABEL_83;
          }

          goto LABEL_79;
        }

        v168 = sub_25268F1D0();
        v169 = v179;
        (*(v263 + 8))(v178, v119);
        if (v166 >> 60 == 15)
        {
LABEL_79:
          (*(v229 + 8))(v221, v176);
          if (v169 >> 60 != 15)
          {
            goto LABEL_84;
          }

          sub_2525C1308(v164, v166);
          goto LABEL_81;
        }

        if (v169 >> 60 == 15)
        {
LABEL_83:
          (*(v229 + 8))(v221, v176);
          goto LABEL_84;
        }

        sub_2525C1370(v164, v166);
        sub_2525C1370(v168, v169);
        v206 = v176;
        v207 = sub_2525C1184(v164, v166, v168, v169);
        sub_2525C1308(v168, v169);
        sub_2525C1308(v168, v169);
        sub_2525C1308(v164, v166);
        (*(v229 + 8))(v221, v206);
        sub_2525C1308(v164, v166);
        if (v207)
        {
LABEL_81:
          sub_252372288(v146, &qword_27F4E01A0);
          sub_252372288(v245, &qword_27F4E01A0);
          sub_252372288(v244, &qword_27F4E01A0);
          v180 = *(v263 + 8);
          v180(v246, v119);
          result = (v180)(v251, v119);
          v92 = 0;
          v93 = 0;
          v94 = 4;
          goto LABEL_10;
        }

LABEL_85:
        sub_25268EAE0();
        v181 = sub_25268DE40();
        v182 = *(v181 - 8);
        v183 = *(v182 + 48);
        if (v183(v149, 1, v181) == 1)
        {
          sub_252372288(v149, &qword_27F4E3538);
          v184 = v245;
LABEL_95:
          v193 = v234;
          v194 = v251;
          sub_25268F1E0();
          sub_252372288(v146, &qword_27F4E01A0);
          sub_252372288(v184, &qword_27F4E01A0);
          sub_252372288(v244, &qword_27F4E01A0);
          v195 = *(v263 + 8);
          v195(v246, v119);
          v195(v194, v119);
          v196 = v247;
          v197 = v235;
          v198 = v261;
          (*(v247 + 32))(v235, v193, v261);
          result = (*(v196 + 88))(v197, v198);
          if (result == *MEMORY[0x277D16BA0])
          {
            v92 = 0;
            v94 = 0;
            v93 = 0;
            goto LABEL_10;
          }

          if (result == *MEMORY[0x277D16B98])
          {
            v92 = 0;
            v93 = 0;
            v94 = 1;
            goto LABEL_10;
          }

          if (result == *MEMORY[0x277D16BA8])
          {
            v92 = 0;
            v93 = 0;
            v94 = 2;
            goto LABEL_10;
          }

          if (result == *MEMORY[0x277D16BB0])
          {
            v92 = 0;
            v93 = 0;
            v94 = 3;
            goto LABEL_10;
          }

          result = (*(v247 + 8))(v197, v261);
          goto LABEL_9;
        }

        v185 = sub_25268DDE0();
        v186 = *(v182 + 8);
        v186(v149, v181);
        v184 = v245;
        if (v185 != 2)
        {
          goto LABEL_95;
        }

        v187 = v225;
        sub_25268EAE0();
        if (v183(v187, 1, v181) == 1)
        {
          sub_252372288(v187, &qword_27F4E3538);
          v188 = v227;
LABEL_93:
          v191 = v226;
          (*(v230 + 56))(v226, 1, 1, v188);
LABEL_94:
          sub_252372288(v191, &qword_27F4E0518);
          goto LABEL_95;
        }

        v189 = sub_25268DE10();
        v186(v187, v181);
        v188 = v227;
        if (!v189)
        {
          goto LABEL_93;
        }

        v190 = v230;
        v191 = v226;
        if (*(v189 + 16))
        {
          (*(v230 + 16))(v226, v189 + ((*(v230 + 80) + 32) & ~*(v230 + 80)), v227);
          v192 = 0;
        }

        else
        {
          v192 = 1;
        }

        (*(v190 + 56))(v191, v192, 1, v188);
        if ((*(v190 + 48))(v191, 1, v188) == 1)
        {
          goto LABEL_94;
        }

        (*(v190 + 32))(v218, v191, v188);
        v92 = sub_25268DDB0();
        v94 = v199;
        v200 = v216;
        sub_25268F1E0();
        v201 = v247;
        v202 = v217;
        v203 = v261;
        (*(v247 + 32))(v217, v200, v261);
        v204 = (*(v201 + 88))(v202, v203);
        if (v204 == *MEMORY[0x277D16BA0])
        {
          v205 = 0;
        }

        else if (v204 == *MEMORY[0x277D16B98])
        {
          v205 = 1;
        }

        else
        {
          if (v204 != *MEMORY[0x277D16BA8])
          {
            if (v204 != *MEMORY[0x277D16BB0])
            {
LABEL_122:
              (*(v247 + 8))(v217, v261);
              (*(v230 + 8))(v218, v227);
              sub_252372288(v239, &qword_27F4E01A0);
              sub_252372288(v245, &qword_27F4E01A0);
              sub_252372288(v244, &qword_27F4E01A0);
              v211 = *(v263 + 8);
              v212 = v250;
              v211(v246, v250);
              v211(v251, v212);
              sub_25235E2A8(0, 7uLL);
              v205 = 0;
              v209 = 0;
              goto LABEL_116;
            }

            v205 = 3;
            v188 = v227;
            v208 = v230;
            v119 = v250;
            v184 = v245;
            v146 = v239;
LABEL_115:
            v268 = 0;
            v269 = v205;
            v270 = 0;
            v265 = 0;
            v266 = 0;
            v267 = 0;
            sub_25235E298(0, v205);
            v209 = sub_252440048(&v268, &v265);
            sub_25235E284(v265, v266);
            (*(v208 + 8))(v218, v188);
            sub_252372288(v146, &qword_27F4E01A0);
            sub_252372288(v184, &qword_27F4E01A0);
            sub_252372288(v244, &qword_27F4E01A0);
            v210 = *(v263 + 8);
            v210(v246, v119);
            v210(v251, v119);
            sub_25235E284(v268, v269);
LABEL_116:
            result = sub_25235E2A8(0, v205);
            v93 = v209 & 1;
            goto LABEL_10;
          }

          v205 = 2;
        }

        v208 = v230;
        goto LABEL_115;
      }

      if (v162 >> 60 != 15)
      {
        goto LABEL_62;
      }
    }

    sub_2525C1308(v157, v159);
    v146 = v150;
    goto LABEL_73;
  }

  v101 = v253;
  sub_25268EAC0();
  v102 = sub_25268DD80();
  v103 = *(v102 - 8);
  if ((*(v103 + 48))(v101, 1, v102) == 1)
  {
    result = sub_252372288(v101, &qword_27F4DFE70);
LABEL_22:
    v92 = 0;
    v93 = 0;
    v94 = 5;
    goto LABEL_10;
  }

  v116 = sub_25268DD50();
  result = (*(v103 + 8))(v101, v102);
  if ((v116 & 1) == 0)
  {
    goto LABEL_22;
  }

  v92 = 0;
  v93 = 0;
  v94 = 6;
LABEL_10:
  v95 = v264;
  *v264 = v92;
  v95[1] = v94;
  *(v95 + 16) = v93;
  return result;
}

uint64_t sub_2525BC51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v5 = type metadata accessor for MatterControlSolver.Source(0);
  v77 = *(v5 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for ControlAction(0);
  v7 = MEMORY[0x28223BE20](v81);
  v74 = (v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v80 = (v67 - v9);
  v10 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  MEMORY[0x28223BE20](v10);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v75 = v67 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v67 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v76 = v67 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v67 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v67 - v27;
  sub_2525C150C(a1, v12, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v73 = a3;
    sub_2525C14A4(v12, v28, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    sub_2525C150C(v28, v26, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    v71 = v30 + 48;
    v72 = v31;
    if (v31(v26, 1, v29) == 1)
    {
      sub_2525C150C(v28, v75, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v80 = 0x80000002526B1CA0;
      v32 = v81;
      v33 = *(v81 + 20);
      v34 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      v35 = v74;
      (*(*(v34 - 8) + 56))(v74 + v33, 1, 1, v34);
      v36 = v79;
      sub_2525C150C(v78, v79, type metadata accessor for MatterControlSolver.Source);
      v37 = (*(v77 + 80) + 16) & ~*(v77 + 80);
      v38 = swift_allocObject();
      sub_2525C14A4(v36, v38 + v37, type metadata accessor for MatterControlSolver.Source);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB418);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_252694E90;
      *(v39 + 32) = sub_2525C13D8;
      *(v39 + 40) = v38;
      *v35 = v39;
      v40 = (v35 + *(v32 + 24));
      *v40 = 0xD000000000000013;
      v40[1] = v80;
      sub_2525C14A4(v28, v16, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v41 = 0;
      if (v72(v16, 1, v29) != 1)
      {
        v42 = *(v29 + 48);
        v43 = *(v29 + 64);
        v44 = sub_25268DB10();
        (*(*(v44 - 8) + 8))(&v16[v43], v44);
        v45 = sub_25268D990();
        (*(*(v45 - 8) + 8))(&v16[v42], v45);
        v41 = 1;
      }

      v46 = v73;
      sub_2525C14A4(v75, v73, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v47 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction(0);
      sub_2525C14A4(v35, v46 + *(v47 + 20), type metadata accessor for ControlAction);
      *(v46 + *(v47 + 24)) = v41;
    }

    else
    {
      v50 = *(v29 + 48);
      v51 = *(v29 + 64);
      v52 = sub_25268D990();
      v53 = *(v52 - 8);
      v74 = *(v53 + 8);
      v75 = v52;
      v70 = v53 + 8;
      (v74)(&v26[v50]);
      v54 = sub_25268DB10();
      v55 = *(v54 - 8);
      v68 = *(v55 + 8);
      v69 = v54;
      v67[1] = v55 + 8;
      v68(&v26[v51]);
      sub_2525C150C(v28, v76, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v56 = v81;
      v57 = *(v81 + 20);
      v58 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      v59 = v80;
      (*(*(v58 - 8) + 56))(v80 + v57, 1, 1, v58);
      v60 = v79;
      sub_2525C150C(v78, v79, type metadata accessor for MatterControlSolver.Source);
      v61 = (*(v77 + 80) + 16) & ~*(v77 + 80);
      v62 = swift_allocObject();
      sub_2525C14A4(v60, v62 + v61, type metadata accessor for MatterControlSolver.Source);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB418);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_252694E90;
      *(v63 + 32) = sub_2525C13E0;
      *(v63 + 40) = v62;
      *v59 = v63;
      v64 = (v59 + *(v56 + 24));
      *v64 = 0x6954656D75736572;
      v64[1] = 0xEB0000000064656DLL;
      sub_2525C14A4(v28, v21, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v65 = 0;
      if (v72(v21, 1, v29) != 1)
      {
        v66 = *(v29 + 48);
        (v68)(&v21[*(v29 + 64)], v69);
        (v74)(&v21[v66], v75);
        v65 = 1;
      }

      v46 = v73;
      sub_2525C14A4(v76, v73, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v47 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction(0);
      sub_2525C14A4(v80, v46 + *(v47 + 20), type metadata accessor for ControlAction);
      *(v46 + *(v47 + 24)) = v65;
    }

    return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  }

  else
  {
    sub_2525C1574(v12, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    v48 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction(0);
    return (*(*(v48 - 8) + 56))(a3, 1, 1, v48);
  }
}

uint64_t sub_2525BCE04@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE80);
  v9 = swift_allocObject();
  v21 = xmmword_252694E90;
  *(v9 + 16) = xmmword_252694E90;
  v10 = sub_252690430();
  *(v9 + 56) = v10;
  *(v9 + 64) = sub_2525C145C(&qword_27F4DB318, MEMORY[0x277D16DF8]);
  *__swift_allocate_boxed_opaque_existential_0((v9 + 32)) = a2;
  (*(*(v10 - 8) + 104))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320);
  v11 = sub_25268E710();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v21;
  (*(v12 + 16))(v14 + v13, a1, v11);
  v15 = sub_25240C51C(v14);
  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);
  swift_deallocClassInstance();
  v16 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v8, 1, 1, v16);
  sub_2523F648C(v9, v15, &v22);
  v18 = v22;
  v17(a3, 1, 1, v16);
  v19 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
  *(a3 + v19) = 0;
  sub_252377048(v8, a3, &qword_27F4DB210);

  *(a3 + v19) = v18;
  return result;
}

uint64_t sub_2525BD0F8@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_25268DB10();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x28223BE20](v1);
  v43 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25268D740();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268DAB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25268DAD0();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_25268D990();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v46 = &v37 - v20;
  sub_25268DAA0();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9980], v5);
  sub_25268D980();
  sub_25268DA90();
  v21 = v9;
  v39 = *(v16 + 8);
  v39(v19, v15);
  v22 = v8;
  v23 = v48;
  (*(v6 + 8))(v22, v5);
  v26 = *(v23 + 8);
  v24 = v23 + 8;
  v25 = v26;
  v26(v11, v9);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_252372288(v14, &qword_27F4DB2D8);
    return (*(v16 + 56))(v47, 1, 1, v15);
  }

  v28 = *(v16 + 32);
  v37 = v16 + 8;
  v38 = v28;
  v28(v46, v14, v15);
  sub_25268DAA0();
  v29 = v25;
  v30 = v43;
  sub_25268DB00();
  v31 = v42;
  sub_25268DA70();
  (*(v44 + 8))(v30, v45);
  v45 = v21;
  v48 = v24;
  v29(v11, v21);
  result = sub_25268D720();
  if (v32)
  {
    (*(v40 + 8))(v31, v41);
    v33 = v47;
    v38(v47, v46, v15);
    return (*(v16 + 56))(v33, 0, 1, v15);
  }

  v34 = v15;
  v35 = v46;
  v36 = round(result / 10.0) * 10.0;
  if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v36 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_25268D730();
  sub_25268DAA0();
  sub_25268DA80();
  v29(v11, v45);
  (*(v40 + 8))(v31, v41);
  return (v39)(v35, v34);
}

uint64_t sub_2525BD6D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_25268D6D0();
    if (v10)
    {
      v11 = sub_25268D6F0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_25268D6E0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_25268D6D0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_25268D6F0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_25268D6E0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2525BD900(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2525C10CC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2525C131C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2525BD6D0(v13, a3, a4, &v12);
  v10 = v4;
  sub_2525C131C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_2525BDA90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2525BDB5C(v11, 0, 0, 1, a1, a2);
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
    sub_252371478(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2525BDB5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2525BDC68(a5, a6);
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
    result = sub_252693230();
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

uint64_t sub_2525BDC68(uint64_t a1, unint64_t a2)
{
  v3 = sub_2525BDCB4(a1, a2);
  sub_2525BDDE4(&unk_286483868);
  return v3;
}

uint64_t sub_2525BDCB4(uint64_t a1, unint64_t a2)
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

  v6 = sub_2525BDED0(v5, 0);
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

  result = sub_252693230();
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
        v10 = sub_252692CA0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2525BDED0(v10, 0);
        result = sub_252693200();
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

uint64_t sub_2525BDDE4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2525BDF44(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2525BDED0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3560);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2525BDF44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

uint64_t sub_2525BE038(void **a1)
{
  v2 = *(type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25262426C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2525BE0E0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2525BE0E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_252693360();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
        v6 = sub_252692DC0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2525BEA38(v8, v9, a1, v4);
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
    return sub_2525BE20C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2525BE20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v83 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - v11;
  v13 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - v17;
  v19 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v20 = MEMORY[0x28223BE20](v19);
  v80 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v82 = &v70 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v81 = &v70 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v86 = &v70 - v27;
  result = MEMORY[0x28223BE20](v26);
  v85 = &v70 - v30;
  v72 = a2;
  if (a3 != a2)
  {
    v31 = *a4;
    v32 = *(v29 + 72);
    v33 = *a4 + v32 * (a3 - 1);
    v78 = -v32;
    v79 = v31;
    v34 = a1 - a3;
    v71 = v32;
    v35 = v31 + v32 * a3;
    v77 = v19;
LABEL_5:
    v75 = v33;
    v76 = a3;
    v73 = v35;
    v74 = v34;
    v36 = v33;
    while (1)
    {
      v37 = v85;
      sub_2525C150C(v35, v85, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      sub_2525C150C(v36, v86, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      v38 = v37;
      v39 = v81;
      sub_2525C150C(v38, v81, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2525C14A4(v39, v12, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v40 - 8) + 48))(v12, 1, v40) != 1)
        {
          v44 = *(v40 + 48);
          v45 = *(v40 + 64);
          v46 = sub_25268DB10();
          (*(*(v46 - 8) + 8))(&v12[v45], v46);
          v47 = sub_25268D990();
          (*(*(v47 - 8) + 8))(&v12[v44], v47);
          v84 = 0;
          goto LABEL_16;
        }

        sub_2525C1574(v12, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
        v41 = 1;
      }

      else
      {
        sub_2525C14A4(v39, v18, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        v43 = (*(*(v42 - 8) + 48))(v18, 3, v42);
        if (v43)
        {
          if (v43 == 2)
          {
            v84 = 0;
            goto LABEL_16;
          }

          sub_2525C1574(v18, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
          v41 = 2;
        }

        else
        {
          v48 = *(v42 + 48);
          v49 = *(v42 + 64);
          v50 = sub_25268DB10();
          (*(*(v50 - 8) + 8))(&v18[v49], v50);
          sub_252372288(&v18[v48], &qword_27F4DB2D8);
          v41 = 1;
        }
      }

      v84 = v41;
LABEL_16:
      v52 = v82;
      v51 = v83;
      sub_2525C150C(v86, v82, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2525C14A4(v52, v51, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v53 - 8) + 48))(v51, 1, v53) == 1)
        {
          sub_2525C1574(v51, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
          v54 = 1;
        }

        else
        {
          v57 = v18;
          v58 = v16;
          v59 = v12;
          v60 = *(v53 + 48);
          v61 = *(v53 + 64);
          v62 = sub_25268DB10();
          (*(*(v62 - 8) + 8))(v51 + v61, v62);
          v63 = sub_25268D990();
          v64 = v51 + v60;
          v12 = v59;
          v16 = v58;
          v18 = v57;
          (*(*(v63 - 8) + 8))(v64, v63);
          v54 = 0;
        }
      }

      else
      {
        sub_2525C14A4(v52, v16, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        v56 = (*(*(v55 - 8) + 48))(v16, 3, v55);
        if (v56)
        {
          if (v56 == 2)
          {
            v54 = 0;
          }

          else
          {
            sub_2525C1574(v16, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
            v54 = 2;
          }
        }

        else
        {
          v65 = *(v55 + 48);
          v66 = *(v55 + 64);
          v67 = sub_25268DB10();
          (*(*(v67 - 8) + 8))(&v16[v66], v67);
          sub_252372288(&v16[v65], &qword_27F4DB2D8);
          v54 = 1;
        }
      }

      sub_2525C1574(v86, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      result = sub_2525C1574(v85, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      if (v84 >= v54)
      {
LABEL_4:
        a3 = v76 + 1;
        v33 = v75 + v71;
        v34 = v74 - 1;
        v35 = v73 + v71;
        if (v76 + 1 == v72)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v79)
      {
        __break(1u);
        return result;
      }

      v68 = v80;
      sub_2525C14A4(v35, v80, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2525C14A4(v68, v36, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      v36 += v78;
      v35 += v78;
      if (__CFADD__(v34++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_2525BEA38(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v202 = a1;
  v6 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v198 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v198 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v198 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v198 - v16;
  v18 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v225 = &v198 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v224 = &v198 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v209 = &v198 - v24;
  MEMORY[0x28223BE20](v23);
  v208 = &v198 - v25;
  v230 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v217 = *(v230 - 8);
  v26 = MEMORY[0x28223BE20](v230);
  v206 = &v198 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v227 = &v198 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v198 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v232 = &v198 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v231 = &v198 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v39 = MEMORY[0x28223BE20](v38);
  v212 = &v198 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v222 = &v198 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v219 = &v198 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v199 = &v198 - v46;
  result = MEMORY[0x28223BE20](v45);
  v200 = &v198 - v50;
  v218 = a3;
  v51 = *(a3 + 8);
  if (v51 < 1)
  {
    v53 = MEMORY[0x277D84F90];
LABEL_135:
    a3 = *v202;
    if (!*v202)
    {
      goto LABEL_173;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v17 = v220;
    if (result)
    {
LABEL_137:
      v233 = v53;
      v194 = *(v53 + 2);
      if (v194 >= 2)
      {
        while (*v218)
        {
          v195 = *&v53[16 * v194];
          v196 = *&v53[16 * v194 + 24];
          sub_2525C0040(*v218 + *(v217 + 72) * v195, *v218 + *(v217 + 72) * *&v53[16 * v194 + 16], *v218 + *(v217 + 72) * v196, a3);
          if (v17)
          {
          }

          if (v196 < v195)
          {
            goto LABEL_160;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_252624154(v53);
          }

          if (v194 - 2 >= *(v53 + 2))
          {
            goto LABEL_161;
          }

          v197 = &v53[16 * v194];
          *v197 = v195;
          *(v197 + 1) = v196;
          v233 = v53;
          result = sub_2526240C8(v194 - 1);
          v53 = v233;
          v194 = *(v233 + 2);
          if (v194 <= 1)
          {
          }
        }

        goto LABEL_171;
      }
    }

LABEL_167:
    result = sub_252624154(v53);
    v53 = result;
    goto LABEL_137;
  }

  v211 = v49;
  v228 = v48;
  v52 = 0;
  v53 = MEMORY[0x277D84F90];
  v201 = a4;
  v223 = v9;
  v205 = v15;
  v213 = v17;
  v229 = v33;
LABEL_4:
  v54 = v52;
  v55 = v52 + 1;
  v216 = v53;
  if (v55 >= v51)
  {
    v100 = v55;
    goto LABEL_43;
  }

  v221 = v51;
  v56 = *v218;
  v57 = *(v217 + 72);
  v203 = v54;
  v58 = v56 + v57 * v55;
  v59 = v56;
  v210 = v56;
  sub_2525C150C(v58, v200, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  v60 = v59 + v57 * v54;
  v61 = v199;
  sub_2525C150C(v60, v199, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  v62 = v200;
  v215 = sub_25243C868();
  v214 = sub_25243C868();
  sub_2525C1574(v61, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  result = sub_2525C1574(v62, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  a3 = v203 + 2;
  v226 = v57;
  v63 = v210 + v57 * (v203 + 2);
  do
  {
    if (v221 == a3)
    {
      v100 = v221;
      goto LABEL_29;
    }

    v67 = v219;
    sub_2525C150C(v63, v219, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    sub_2525C150C(v58, v222, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    v68 = v67;
    v69 = v212;
    sub_2525C150C(v68, v212, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2525C14A4(v69, v17, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v70 - 8) + 48))(v17, 1, v70) == 1)
      {
        sub_2525C1574(v17, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
        v71 = 1;
      }

      else
      {
        v76 = *(v70 + 48);
        v77 = *(v70 + 64);
        v78 = sub_25268DB10();
        (*(*(v78 - 8) + 8))(&v17[v77], v78);
        v79 = sub_25268D990();
        (*(*(v79 - 8) + 8))(&v17[v76], v79);
        v71 = 0;
      }
    }

    else
    {
      v72 = v69;
      v73 = v208;
      sub_2525C14A4(v72, v208, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      v75 = (*(*(v74 - 8) + 48))(v73, 3, v74);
      if (v75)
      {
        if (v75 == 2)
        {
          v71 = 0;
        }

        else
        {
          sub_2525C1574(v208, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
          v71 = 2;
        }
      }

      else
      {
        v80 = *(v74 + 48);
        v81 = *(v74 + 64);
        v82 = sub_25268DB10();
        v83 = v208;
        (*(*(v82 - 8) + 8))(v208 + v81, v82);
        sub_252372288(v83 + v80, &qword_27F4DB2D8);
        v71 = 1;
      }
    }

    v84 = v211;
    sub_2525C150C(v222, v211, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v85 = v84;
      v86 = v205;
      sub_2525C14A4(v85, v205, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v87 - 8) + 48))(v86, 1, v87) == 1)
      {
        sub_2525C1574(v86, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
        v64 = 1;
        goto LABEL_7;
      }

      v88 = *(v87 + 48);
      v89 = *(v87 + 64);
      v90 = sub_25268DB10();
      (*(*(v90 - 8) + 8))(v86 + v89, v90);
      v91 = sub_25268D990();
      (*(*(v91 - 8) + 8))(v86 + v88, v91);
LABEL_23:
      v64 = 0;
      goto LABEL_7;
    }

    v92 = v84;
    v93 = v209;
    sub_2525C14A4(v92, v209, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
    v95 = (*(*(v94 - 8) + 48))(v93, 3, v94);
    if (v95)
    {
      if (v95 == 2)
      {
        goto LABEL_23;
      }

      sub_2525C1574(v209, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      v64 = 2;
    }

    else
    {
      v96 = *(v94 + 48);
      v97 = *(v94 + 64);
      v98 = sub_25268DB10();
      v99 = v209;
      (*(*(v98 - 8) + 8))(v209 + v97, v98);
      sub_252372288(v99 + v96, &qword_27F4DB2D8);
      v64 = 1;
    }

LABEL_7:
    v65 = v215 < v214;
    sub_2525C1574(v222, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    result = sub_2525C1574(v219, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    v66 = v71 >= v64;
    ++a3;
    v63 += v226;
    v58 += v226;
    v17 = v213;
    v53 = v216;
    v33 = v229;
  }

  while (((v65 ^ v66) & 1) != 0);
  v100 = a3 - 1;
LABEL_29:
  a4 = v201;
  v54 = v203;
  if (v215 < v214)
  {
    if (v100 < v203)
    {
      goto LABEL_164;
    }

    if (v203 < v100)
    {
      a3 = v226 * (v100 - 1);
      v101 = v100 * v226;
      v221 = v100;
      v102 = v100;
      v103 = v203;
      v104 = v203 * v226;
      do
      {
        if (v103 != --v102)
        {
          v105 = *v218;
          if (!*v218)
          {
            goto LABEL_170;
          }

          sub_2525C14A4(v105 + v104, v206, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
          if (v104 < a3 || v105 + v104 >= (v105 + v101))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v104 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_2525C14A4(v206, v105 + a3, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
        }

        ++v103;
        a3 -= v226;
        v101 -= v226;
        v104 += v226;
      }

      while (v103 < v102);
      a4 = v201;
      v17 = v213;
      v53 = v216;
      v33 = v229;
      v54 = v203;
      v100 = v221;
    }
  }

LABEL_43:
  v106 = v218[1];
  if (v100 >= v106)
  {
    goto LABEL_52;
  }

  if (__OFSUB__(v100, v54))
  {
    goto LABEL_163;
  }

  if (v100 - v54 >= a4)
  {
LABEL_52:
    v108 = v100;
    if (v100 < v54)
    {
      goto LABEL_162;
    }

    goto LABEL_53;
  }

  if (__OFADD__(v54, a4))
  {
    goto LABEL_165;
  }

  if (v54 + a4 >= v106)
  {
    v107 = v218[1];
  }

  else
  {
    v107 = v54 + a4;
  }

  if (v107 < v54)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (v100 == v107)
  {
    goto LABEL_52;
  }

  v156 = *v218;
  v157 = *(v217 + 72);
  v158 = *v218 + v157 * (v100 - 1);
  a3 = -v157;
  v203 = v54;
  v159 = v54 - v100;
  v226 = v156;
  v204 = v157;
  v160 = v156 + v100 * v157;
  v207 = v107;
  while (2)
  {
    v221 = v100;
    v210 = v160;
    v214 = v159;
    v215 = v158;
    v161 = v158;
LABEL_107:
    v162 = v231;
    sub_2525C150C(v160, v231, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    sub_2525C150C(v161, v232, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    sub_2525C150C(v162, v33, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2525C14A4(v33, v12, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v163 - 8) + 48))(v12, 1, v163) == 1)
      {
        sub_2525C1574(v12, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
        v164 = 1;
      }

      else
      {
        v168 = *(v163 + 48);
        v169 = *(v163 + 64);
        v170 = sub_25268DB10();
        (*(*(v170 - 8) + 8))(&v12[v169], v170);
        v171 = sub_25268D990();
        (*(*(v171 - 8) + 8))(&v12[v168], v171);
        v164 = 0;
      }
    }

    else
    {
      v165 = v224;
      sub_2525C14A4(v33, v224, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      v167 = (*(*(v166 - 8) + 48))(v165, 3, v166);
      if (v167)
      {
        if (v167 == 2)
        {
          v164 = 0;
        }

        else
        {
          sub_2525C1574(v224, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
          v164 = 2;
        }
      }

      else
      {
        v172 = *(v166 + 48);
        v173 = *(v166 + 64);
        v174 = sub_25268DB10();
        v175 = v224;
        (*(*(v174 - 8) + 8))(v224 + v173, v174);
        sub_252372288(v175 + v172, &qword_27F4DB2D8);
        v164 = 1;
      }
    }

    v176 = v228;
    sub_2525C150C(v232, v228, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v177 = v12;
      v178 = v223;
      sub_2525C14A4(v176, v223, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v179 - 8) + 48))(v178, 1, v179) == 1)
      {
        sub_2525C1574(v178, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
        v180 = 1;
      }

      else
      {
        v184 = *(v179 + 48);
        v185 = *(v179 + 64);
        v186 = sub_25268DB10();
        (*(*(v186 - 8) + 8))(v178 + v185, v186);
        v187 = sub_25268D990();
        (*(*(v187 - 8) + 8))(v178 + v184, v187);
        v180 = 0;
      }

      v12 = v177;
    }

    else
    {
      v181 = v225;
      sub_2525C14A4(v176, v225, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      v183 = (*(*(v182 - 8) + 48))(v181, 3, v182);
      if (v183)
      {
        if (v183 == 2)
        {
          v180 = 0;
        }

        else
        {
          sub_2525C1574(v225, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
          v180 = 2;
        }
      }

      else
      {
        v188 = *(v182 + 48);
        v189 = *(v182 + 64);
        v190 = sub_25268DB10();
        v191 = v225;
        (*(*(v190 - 8) + 8))(v225 + v189, v190);
        sub_252372288(v191 + v188, &qword_27F4DB2D8);
        v180 = 1;
      }
    }

    sub_2525C1574(v232, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    result = sub_2525C1574(v231, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    if (v164 >= v180)
    {
      v33 = v229;
LABEL_105:
      v100 = v221 + 1;
      v158 = v215 + v204;
      v159 = v214 - 1;
      v160 = v210 + v204;
      v108 = v207;
      if (v221 + 1 != v207)
      {
        continue;
      }

      v17 = v213;
      v53 = v216;
      v54 = v203;
      if (v207 < v203)
      {
        goto LABEL_162;
      }

LABEL_53:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_252368690(0, *(v53 + 2) + 1, 1, v53);
        v53 = result;
      }

      a3 = *(v53 + 2);
      v109 = *(v53 + 3);
      v110 = a3 + 1;
      if (a3 >= v109 >> 1)
      {
        result = sub_252368690((v109 > 1), a3 + 1, 1, v53);
        v53 = result;
      }

      *(v53 + 2) = v110;
      v111 = &v53[16 * a3];
      *(v111 + 4) = v54;
      *(v111 + 5) = v108;
      v112 = *v202;
      if (!*v202)
      {
        goto LABEL_172;
      }

      v207 = v108;
      if (!a3)
      {
LABEL_3:
        v51 = v218[1];
        v52 = v207;
        a4 = v201;
        if (v207 >= v51)
        {
          goto LABEL_135;
        }

        goto LABEL_4;
      }

      v113 = v112;
      while (1)
      {
        v114 = v110 - 1;
        if (v110 >= 4)
        {
          break;
        }

        if (v110 == 3)
        {
          v115 = *(v53 + 4);
          v116 = *(v53 + 5);
          v125 = __OFSUB__(v116, v115);
          v117 = v116 - v115;
          v118 = v125;
LABEL_73:
          if (v118)
          {
            goto LABEL_151;
          }

          v131 = &v53[16 * v110];
          v133 = *v131;
          v132 = *(v131 + 1);
          v134 = __OFSUB__(v132, v133);
          v135 = v132 - v133;
          v136 = v134;
          if (v134)
          {
            goto LABEL_154;
          }

          v137 = &v53[16 * v114 + 32];
          v139 = *v137;
          v138 = *(v137 + 1);
          v125 = __OFSUB__(v138, v139);
          v140 = v138 - v139;
          if (v125)
          {
            goto LABEL_157;
          }

          if (__OFADD__(v135, v140))
          {
            goto LABEL_158;
          }

          if (v135 + v140 >= v117)
          {
            if (v117 < v140)
            {
              v114 = v110 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v141 = &v53[16 * v110];
        v143 = *v141;
        v142 = *(v141 + 1);
        v125 = __OFSUB__(v142, v143);
        v135 = v142 - v143;
        v136 = v125;
LABEL_87:
        if (v136)
        {
          goto LABEL_153;
        }

        v144 = &v53[16 * v114];
        v146 = *(v144 + 4);
        v145 = *(v144 + 5);
        v125 = __OFSUB__(v145, v146);
        v147 = v145 - v146;
        if (v125)
        {
          goto LABEL_156;
        }

        if (v147 < v135)
        {
          goto LABEL_3;
        }

LABEL_94:
        a3 = v114 - 1;
        if (v114 - 1 >= v110)
        {
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        if (!*v218)
        {
          goto LABEL_169;
        }

        v152 = *&v53[16 * a3 + 32];
        v153 = *&v53[16 * v114 + 40];
        v154 = v220;
        sub_2525C0040(*v218 + *(v217 + 72) * v152, *v218 + *(v217 + 72) * *&v53[16 * v114 + 32], *v218 + *(v217 + 72) * v153, v113);
        v220 = v154;
        if (v154)
        {
        }

        if (v153 < v152)
        {
          goto LABEL_147;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_252624154(v53);
        }

        if (a3 >= *(v53 + 2))
        {
          goto LABEL_148;
        }

        v155 = &v53[16 * a3];
        *(v155 + 4) = v152;
        *(v155 + 5) = v153;
        v233 = v53;
        result = sub_2526240C8(v114);
        v53 = v233;
        v110 = *(v233 + 2);
        v33 = v229;
        if (v110 <= 1)
        {
          goto LABEL_3;
        }
      }

      v119 = &v53[16 * v110 + 32];
      v120 = *(v119 - 64);
      v121 = *(v119 - 56);
      v125 = __OFSUB__(v121, v120);
      v122 = v121 - v120;
      if (v125)
      {
        goto LABEL_149;
      }

      v124 = *(v119 - 48);
      v123 = *(v119 - 40);
      v125 = __OFSUB__(v123, v124);
      v117 = v123 - v124;
      v118 = v125;
      if (v125)
      {
        goto LABEL_150;
      }

      v126 = &v53[16 * v110];
      v128 = *v126;
      v127 = *(v126 + 1);
      v125 = __OFSUB__(v127, v128);
      v129 = v127 - v128;
      if (v125)
      {
        goto LABEL_152;
      }

      v125 = __OFADD__(v117, v129);
      v130 = v117 + v129;
      if (v125)
      {
        goto LABEL_155;
      }

      if (v130 >= v122)
      {
        v148 = &v53[16 * v114 + 32];
        v150 = *v148;
        v149 = *(v148 + 1);
        v125 = __OFSUB__(v149, v150);
        v151 = v149 - v150;
        if (v125)
        {
          goto LABEL_159;
        }

        if (v117 < v151)
        {
          v114 = v110 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

    break;
  }

  v33 = v229;
  if (v226)
  {
    v192 = v227;
    sub_2525C14A4(v160, v227, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    swift_arrayInitWithTakeFrontToBack();
    sub_2525C14A4(v192, v161, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    v161 += a3;
    v160 += a3;
    if (__CFADD__(v159++, 1))
    {
      goto LABEL_105;
    }

    goto LABEL_107;
  }

  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
  return result;
}

uint64_t sub_2525C0040(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v127 = &v125 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v125 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v125 - v17;
  v19 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v130 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v129 = &v125 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v134 = &v125 - v25;
  MEMORY[0x28223BE20](v24);
  v133 = &v125 - v26;
  v141 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v27 = MEMORY[0x28223BE20](v141);
  v132 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v131 = &v125 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v139 = &v125 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v138 = &v125 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v136 = &v125 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v137 = &v125 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v140 = &v125 - v40;
  result = MEMORY[0x28223BE20](v39);
  v43 = &v125 - v42;
  v45 = *(v44 + 72);
  if (!v45)
  {
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (a2 - a1 == 0x8000000000000000 && v45 == -1)
  {
    goto LABEL_101;
  }

  v46 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v45 != -1)
  {
    v47 = (a2 - a1) / v45;
    v144 = a1;
    v143 = a4;
    if (v47 < v46 / v45)
    {
      v132 = v16;
      v48 = v47 * v45;
      if (a4 < a1 || a1 + v48 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v139 = a4 + v48;
      v142 = a4 + v48;
      v50 = v48 < 1 || a2 >= a3;
      v51 = v137;
      if (!v50)
      {
        v138 = v45;
        v135 = a3;
        do
        {
          sub_2525C150C(a2, v43, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
          sub_2525C150C(a4, v140, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
          sub_2525C150C(v43, v51, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v52 = a2;
            sub_2525C14A4(v51, v18, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
            v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
            if ((*(*(v53 - 8) + 48))(v18, 1, v53) == 1)
            {
              sub_2525C1574(v18, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
              v54 = 1;
            }

            else
            {
              v59 = *(v53 + 48);
              v60 = *(v53 + 64);
              v61 = sub_25268DB10();
              (*(*(v61 - 8) + 8))(&v18[v60], v61);
              v62 = sub_25268D990();
              (*(*(v62 - 8) + 8))(&v18[v59], v62);
              v54 = 0;
            }
          }

          else
          {
            v55 = v51;
            v56 = v133;
            sub_2525C14A4(v55, v133, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
            v58 = (*(*(v57 - 8) + 48))(v56, 3, v57);
            v52 = a2;
            if (v58)
            {
              if (v58 == 2)
              {
                v54 = 0;
              }

              else
              {
                sub_2525C1574(v133, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
                v54 = 2;
              }
            }

            else
            {
              v63 = *(v57 + 48);
              v64 = *(v57 + 64);
              v65 = sub_25268DB10();
              v66 = v133;
              (*(*(v65 - 8) + 8))(v133 + v64, v65);
              sub_252372288(v66 + v63, &qword_27F4DB2D8);
              v54 = 1;
            }
          }

          v67 = v136;
          sub_2525C150C(v140, v136, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v68 = v18;
            v69 = v132;
            sub_2525C14A4(v67, v132, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
            if ((*(*(v70 - 8) + 48))(v69, 1, v70) == 1)
            {
              sub_2525C1574(v69, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
              v71 = 1;
            }

            else
            {
              v76 = *(v70 + 48);
              v77 = *(v70 + 64);
              v78 = sub_25268DB10();
              (*(*(v78 - 8) + 8))(v69 + v77, v78);
              v79 = sub_25268D990();
              (*(*(v79 - 8) + 8))(v69 + v76, v79);
              v71 = 0;
            }

            v18 = v68;
            v45 = v138;
          }

          else
          {
            v72 = v67;
            v73 = v134;
            sub_2525C14A4(v72, v134, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
            v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
            v75 = (*(*(v74 - 8) + 48))(v73, 3, v74);
            if (v75)
            {
              if (v75 == 2)
              {
                v71 = 0;
              }

              else
              {
                sub_2525C1574(v134, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
                v71 = 2;
              }
            }

            else
            {
              v80 = *(v74 + 48);
              v81 = *(v74 + 64);
              v82 = sub_25268DB10();
              v83 = v134;
              (*(*(v82 - 8) + 8))(&v134[v81], v82);
              v84 = v83 + v80;
              v45 = v138;
              sub_252372288(v84, &qword_27F4DB2D8);
              v71 = 1;
            }
          }

          sub_2525C1574(v140, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
          sub_2525C1574(v43, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
          if (v54 >= v71)
          {
            a2 = v52;
            v85 = v135;
            if (a1 < a4 || a1 >= a4 + v45)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v143 = a4 + v45;
            a4 += v45;
          }

          else
          {
            a2 = v52 + v45;
            v85 = v135;
            if (a1 < v52 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v52)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          a1 += v45;
          v144 = a1;
          v51 = v137;
        }

        while (a4 < v139 && a2 < v85);
      }

      goto LABEL_99;
    }

    v49 = v46 / v45 * v45;
    if (a4 < a2 || a2 + v49 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v86 = a4 + v49;
    if (v49 < 1)
    {
LABEL_98:
      v144 = a2;
      v142 = v86;
LABEL_99:
      sub_252594BC0(&v144, &v143, &v142);
      return 1;
    }

    v87 = -v45;
    v88 = a4 + v49;
    v133 = a4;
    v134 = v11;
    v140 = -v45;
LABEL_58:
    v126 = v86;
    v89 = a2;
    a2 += v87;
    v135 = a2;
    v136 = v89;
    while (1)
    {
      if (v89 <= a1)
      {
        v144 = v89;
        v142 = v126;
        goto LABEL_99;
      }

      v90 = a3;
      v128 = v86;
      v91 = v88 + v87;
      v92 = v138;
      sub_2525C150C(v88 + v87, v138, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      sub_2525C150C(a2, v139, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      v93 = v131;
      sub_2525C150C(v92, v131, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v94 = v127;
        sub_2525C14A4(v93, v127, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v95 - 8) + 48))(v94, 1, v95) == 1)
        {
          sub_2525C1574(v94, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
          v137 = 1;
        }

        else
        {
          v100 = *(v95 + 48);
          v101 = *(v95 + 64);
          v102 = sub_25268DB10();
          (*(*(v102 - 8) + 8))(v94 + v101, v102);
          v103 = sub_25268D990();
          (*(*(v103 - 8) + 8))(v94 + v100, v103);
          v137 = 0;
        }

        a4 = v133;
        goto LABEL_73;
      }

      v96 = v93;
      v97 = v129;
      sub_2525C14A4(v96, v129, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      v99 = (*(*(v98 - 8) + 48))(v97, 3, v98);
      if (v99)
      {
        if (v99 == 2)
        {
          v137 = 0;
          goto LABEL_73;
        }

        sub_2525C1574(v129, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        v108 = 2;
      }

      else
      {
        v104 = *(v98 + 48);
        v105 = *(v98 + 64);
        v106 = sub_25268DB10();
        v107 = v129;
        (*(*(v106 - 8) + 8))(v129 + v105, v106);
        sub_252372288(v107 + v104, &qword_27F4DB2D8);
        v108 = 1;
      }

      v137 = v108;
LABEL_73:
      v109 = v132;
      sub_2525C150C(v139, v132, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2525C14A4(v109, v11, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v110 - 8) + 48))(v11, 1, v110) == 1)
        {
          sub_2525C1574(v11, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
          v111 = 1;
        }

        else
        {
          v116 = *(v110 + 48);
          v117 = *(v110 + 64);
          v118 = sub_25268DB10();
          (*(*(v118 - 8) + 8))(&v11[v117], v118);
          v119 = sub_25268D990();
          (*(*(v119 - 8) + 8))(&v11[v116], v119);
          v111 = 0;
        }

        a2 = v135;
        a4 = v133;
      }

      else
      {
        v112 = v109;
        v113 = v130;
        sub_2525C14A4(v112, v130, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        v115 = (*(*(v114 - 8) + 48))(v113, 3, v114);
        if (v115)
        {
          if (v115 == 2)
          {
            v111 = 0;
          }

          else
          {
            sub_2525C1574(v130, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
            v111 = 2;
          }
        }

        else
        {
          v120 = *(v114 + 48);
          v121 = *(v114 + 64);
          v122 = sub_25268DB10();
          v123 = v130;
          (*(*(v122 - 8) + 8))(v130 + v121, v122);
          sub_252372288(v123 + v120, &qword_27F4DB2D8);
          v111 = 1;
        }

        a2 = v135;
      }

      v124 = v90 + v140;
      sub_2525C1574(v139, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      sub_2525C1574(v138, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      if (v137 < v111)
      {
        a3 = v124;
        if (v90 < v136 || v124 >= v136)
        {
          swift_arrayInitWithTakeFrontToBack();
          v11 = v134;
          v86 = v128;
        }

        else
        {
          v11 = v134;
          v86 = v128;
          if (v90 != v136)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v87 = v140;
        if (v88 <= a4)
        {
          goto LABEL_98;
        }

        goto LABEL_58;
      }

      v86 = v91;
      a3 = v124;
      if (v90 < v88 || v124 >= v88)
      {
        swift_arrayInitWithTakeFrontToBack();
        v11 = v134;
      }

      else
      {
        v11 = v134;
        if (v90 != v88)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v88 = v91;
      v87 = v140;
      v89 = v136;
      if (v91 <= a4)
      {
        a2 = v136;
        goto LABEL_98;
      }
    }
  }

LABEL_102:
  __break(1u);
  return result;
}

uint64_t sub_2525C10CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_25268D6D0();
  v11 = result;
  if (result)
  {
    result = sub_25268D6F0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_25268D6E0();
  sub_2525BD6D0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2525C1184(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2525C1384(a3, a4);
          return sub_2525BD900(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2525C1308(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2525C131C(a1, a2);
  }

  return a1;
}

uint64_t sub_2525C131C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2525C1370(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2525C1384(a1, a2);
  }

  return a1;
}

uint64_t sub_2525C1384(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2525C145C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2525C14A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525C150C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525C1574(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2525C15D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25268DA10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Device.Control.Source(0);
  MEMORY[0x28223BE20](v45);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  sub_2525C55FC(a1, v11);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3578);
  if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
  {
    sub_252372288(v11, &qword_27F4E3570);
    v22 = type metadata accessor for Device.Control(0);
    return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }

  else
  {
    v24 = *(v21 + 48);
    sub_2523714D4(v11, v20, &qword_27F4DB290);
    sub_2525C7678(&v11[v24], v14, type metadata accessor for Device.Control.Kind);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v25 = a1;
    v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_252694E90;
    v28 = *(v5 + 16);
    v44 = v25;
    v28(v27 + v26, v25, v4);
    v29 = sub_25240C1FC(v27);
    swift_setDeallocating();
    (*(v5 + 8))(v27 + v26, v4);
    swift_deallocClassInstance();
    *v8 = v29;
    swift_storeEnumTagMultiPayload();
    sub_25237153C(v20, v17, &qword_27F4DB290);
    v30 = *(v5 + 48);
    v31 = v30(v17, 1, v4);
    v32 = v4;
    v43 = v4;
    if (v31 == 1)
    {
      v33 = v46;
      sub_25268DA00();
      sub_252372288(v20, &qword_27F4DB290);
      if (v30(v17, 1, v32) != 1)
      {
        sub_252372288(v17, &qword_27F4DB290);
      }
    }

    else
    {
      sub_252372288(v20, &qword_27F4DB290);
      v33 = v46;
      (*(v5 + 32))(v46, v17, v32);
    }

    v34 = type metadata accessor for Device.Control(0);
    sub_2525C7678(v14, a2 + v34[5], type metadata accessor for Device.Control.Kind);
    sub_2525C7678(v8, a2 + v34[6], type metadata accessor for Device.Control.Source);
    v35 = type metadata accessor for HAPControlSolver.Source();
    v36 = *(v35 + 56);
    v37 = v43;
    v38 = *(v44 + *(v35 + 52));
    v40 = *(v44 + v36);
    v39 = *(v44 + v36 + 8);
    v41 = (a2 + v34[8]);
    v42 = v34[10];
    *(a2 + v42) = 16;
    (*(v5 + 32))(a2, v33, v37);
    *(a2 + v34[7]) = v38;
    *v41 = v40;
    v41[1] = v39;
    *(a2 + v34[9]) = 1028;
    *(a2 + v42) = 16;
    *(a2 + v34[11]) = 1;
    (*(*(v34 - 1) + 56))(a2, 0, 1, v34);
  }
}

uint64_t sub_2525C1B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_25268F9E0();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3520);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for HAPControlSolver.Source();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v12, &qword_27F4E3520);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v17 = &qword_27F4E3520;
    v18 = v12;
  }

  else
  {
    sub_2525C7678(v12, v16, type metadata accessor for HAPControlSolver.Source);
    sub_25237153C(v25, v6, &qword_27F4DB208);
    v19 = v26;
    if ((*(v26 + 48))(v6, 1, v7) != 1)
    {
      (*(v19 + 32))(v9, v6, v7);
      v21 = v27;
      sub_2525C3604(v16, v9, v27);
      (*(v19 + 8))(v9, v7);
      sub_2525C7618(v16, type metadata accessor for HAPControlSolver.Source);
      v20 = 0;
      goto LABEL_7;
    }

    sub_2525C7618(v16, type metadata accessor for HAPControlSolver.Source);
    v17 = &qword_27F4DB208;
    v18 = v6;
  }

  sub_252372288(v18, v17);
  v20 = 1;
  v21 = v27;
LABEL_7:
  v22 = type metadata accessor for Device.Control(0);
  return (*(*(v22 - 8) + 56))(v21, v20, 1, v22);
}

uint64_t sub_2525C1F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v184 = a4;
  v179 = a3;
  v182 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v9 - 8);
  v180 = v149 - v10;
  v188 = sub_25268F9E0();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v181 = v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for Device.Control.Source(0);
  MEMORY[0x28223BE20](v186);
  v189 = (v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v176 = sub_25268E530();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v193 = v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_25268E2E0();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v170 = v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v169 = v149 - v16;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  MEMORY[0x28223BE20](v168);
  v174 = v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v192 = v149 - v19;
  v167 = type metadata accessor for AccessoryControl.StatusProvider();
  MEMORY[0x28223BE20](v167);
  v190 = v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25268EEA0();
  v197 = *(v21 - 8);
  v198 = v21;
  MEMORY[0x28223BE20](v21);
  v191 = v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  *&v196 = v149 - v24;
  v173 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v173);
  v195 = v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v26 - 8);
  v166 = v149 - v27;
  v160 = sub_252690030();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v29 - 8);
  v164 = v149 - v30;
  v31 = sub_25268DA10();
  v199 = *(v31 - 8);
  v200 = v31;
  MEMORY[0x28223BE20](v31);
  v194 = v149 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_25268F970();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v34 = v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_25268ED70();
  v183 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v156 = (v149 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v39 = (v149 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = v149 - v41;
  v43 = sub_25268F4D0();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = v149 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = *a5;
  v47 = a2;
  sub_25268F9A0();
  v48 = type metadata accessor for HAPControlSolver.Source();
  v201 = a1;
  v202 = v48;
  v149[1] = *(v48 + 76);
  v49 = COERCE_DOUBLE(sub_25268FEA0());
  LOBYTE(a1) = v50;
  v51 = *(v44 + 8);
  v153 = v46;
  v155 = v43;
  v154 = v44 + 8;
  v149[0] = v51;
  v51(v46, v43);
  if (a1)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = v49;
  }

  *v39 = v52;
  v53 = v183;
  v54 = *(v183 + 104);
  v151 = *MEMORY[0x277D15BB8];
  v152 = v183 + 104;
  v150 = v54;
  v54(v39);
  sub_25268F980();
  v55 = sub_25268F960();
  (*(v177 + 8))(v34, v178);
  v56 = *(v53 + 32);
  v57 = v39;
  v58 = v199;
  v59 = v200;
  v157 = v35;
  v56(v42, v57, v35);
  v60 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v42[*(v60 + 20)] = v55 & 1;
  v161 = *(v60 - 8);
  v61 = *(v161 + 56);
  v178 = v42;
  v62 = v42;
  v63 = v164;
  v177 = v60;
  v163 = v161 + 56;
  v162 = v61;
  (v61)(v62, 0, 1);
  sub_25237153C(v184, v63, &qword_27F4DB290);
  v64 = *(v58 + 48);
  if (v64(v63, 1, v59) == 1)
  {
    sub_25268F9B0();
    if (v64(v63, 1, v59) != 1)
    {
      sub_252372288(v63, &qword_27F4DB290);
    }
  }

  else
  {
    (*(v58 + 32))(v194, v63, v59);
  }

  v65 = v166;
  sub_25268F9D0();
  v66 = sub_252690050();
  v67 = *(v66 - 8);
  v68 = (*(v67 + 48))(v65, 1, v66);
  v185 = v47;
  if (v68 == 1)
  {
    sub_252372288(v65, &qword_27F4DB230);
LABEL_13:
    v74 = 0;
    v78 = 1.0;
    v76 = 0x4059000000000000;
    goto LABEL_14;
  }

  if ((*(v67 + 88))(v65, v66) != *MEMORY[0x277D16CD0])
  {
    (*(v67 + 8))(v65, v66);
    goto LABEL_13;
  }

  (*(v67 + 96))(v65, v66);
  v69 = v159;
  v70 = v158;
  v71 = v65;
  v72 = v160;
  (*(v159 + 32))(v158, v71, v160);
  sub_252690000();
  v74 = v73;
  sub_25268FFF0();
  v76 = v75;
  sub_252690020();
  v78 = v77;
  (*(v69 + 8))(v70, v72);
LABEL_14:
  v184 = 0x408F400000000000;
  (*(v197 + 104))(v196, *MEMORY[0x277D15CE0], v198);
  swift_storeEnumTagMultiPayload();
  v79 = v201;
  v80 = v169;
  sub_25268E250();
  v167 = sub_25268E2D0();
  v166 = v81;
  v82 = *(v171 + 8);
  v83 = v172;
  v82(v80, v172);
  v84 = v170;
  sub_25268E250();
  v85 = type metadata accessor for IconDescriptor();
  v86 = v192;
  sub_25268E2C0();
  v82(v84, v83);
  v87 = v166;
  *v86 = v167;
  v86[1] = v87;
  *(v86 + *(v85 + 24)) = 0;
  sub_25268E260();
  v171 = sub_25268E2D0();
  v167 = v88;
  v82(v80, v83);
  sub_25268E260();
  v89 = (v86 + *(v168 + 28));
  sub_25268E2C0();
  v82(v84, v83);
  v90 = v167;
  *v89 = v171;
  v89[1] = v90;
  *(v89 + *(v85 + 24)) = 0;
  LOBYTE(v205[0]) = v165;
  v172 = sub_2523F5EC0(v79, v205);
  v92 = v91;
  v93 = v174;
  sub_25237153C(v86, v174, &qword_27F4DAD88);
  v94 = sub_25268E510();
  (*(v197 + 16))(v191, v196, v198);
  v95 = v175;
  v96 = v176;
  (*(v175 + 104))(v193, *MEMORY[0x277D15720], v176);
  sub_2525C7558();
  sub_252692D40();
  sub_252692D40();
  if (v205[0] != v203 || v205[1] != v204)
  {
    v97 = sub_2526933B0();
    v98 = 0x406F400000000000;
    if (v97)
    {
      v98 = 0x408F400000000000;
    }

    v184 = v98;
  }

  (*(v95 + 8))(v193, v96);

  v99 = v173;
  v100 = v195;
  v101 = v190;
  sub_2525C75B0(v190, v195 + *(v173 + 56), type metadata accessor for AccessoryControl.StatusProvider);
  v102 = sub_252692340();
  sub_252372288(v192, &qword_27F4DAD88);
  sub_2525C7618(v101, type metadata accessor for AccessoryControl.StatusProvider);
  v104 = v197;
  v103 = v198;
  (*(v197 + 8))(v196, v198);
  sub_2523714D4(v93, v100, &qword_27F4DAD88);
  *(v100 + v99[5]) = v92;
  *(v100 + v99[6]) = v172;
  *(v100 + v99[12]) = v94;
  *(v100 + v99[13]) = v102;
  (*(v104 + 32))(v100 + v99[7], v191, v103);
  *(v100 + v99[8]) = v74;
  *(v100 + v99[9]) = v76;
  *(v100 + v99[10]) = v78;
  v105 = v100 + v99[11];
  *v105 = v184;
  *(v105 + 8) = 0;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088);
  v106 = *(v192 + 48);
  v107 = v189;
  sub_25268F9A0();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
  v109 = v199;
  v110 = (*(v199 + 80) + 32) & ~*(v199 + 80);
  v198 = *(v199 + 72);
  v191 = v108;
  v111 = swift_allocObject();
  v196 = xmmword_252694E90;
  *(v111 + 16) = xmmword_252694E90;
  v112 = v200;
  v197 = *(v109 + 16);
  (v197)(v111 + v110, v201, v200);
  v113 = sub_25240C1FC(v111);
  swift_setDeallocating();
  v193 = *(v109 + 8);
  (v193)(v111 + v110, v112);
  swift_deallocClassInstance();
  *(v107 + v106) = v113;
  swift_storeEnumTagMultiPayload();
  v114 = v180;
  sub_25237153C(v179, v180, &qword_27F4DB208);
  v115 = v187;
  v116 = v188;
  if ((*(v187 + 48))(v114, 1, v188) == 1)
  {
    sub_252372288(v114, &qword_27F4DB208);
    v117 = v178;
    v118 = v201;
  }

  else
  {
    (*(v115 + 32))(v181, v114, v116);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3568);
    v190 = swift_allocBox();
    v121 = v120;
    v184 = v120 + *(v119 + 48);
    v180 = *(v192 + 48);
    v122 = v192;
    sub_25268F9A0();
    v123 = swift_allocObject();
    *(v123 + 16) = v196;
    (v197)(v123 + v110, v201, v112);
    v124 = sub_25240C1FC(v123);
    swift_setDeallocating();
    (v193)(v123 + v110, v112);
    swift_deallocClassInstance();
    *(v121 + v180) = v124;
    v125 = v201;
    swift_storeEnumTagMultiPayload();
    v192 = *(v122 + 48);
    v126 = v184;
    sub_25268F9A0();
    v118 = v125;
    v127 = swift_allocObject();
    *(v127 + 16) = v196;
    (v197)(v127 + v110, v118, v112);
    v128 = sub_25240C1FC(v127);
    swift_setDeallocating();
    (v193)(v127 + v110, v112);
    swift_deallocClassInstance();
    v129 = v189;
    sub_2525C7618(v189, type metadata accessor for Device.Control.Source);
    *(v126 + v192) = v128;
    swift_storeEnumTagMultiPayload();
    *v129 = v190;
    swift_storeEnumTagMultiPayload();
    v117 = v178;
    v107 = v129;
    if ((*(v161 + 48))(v178, 1, v177))
    {
      (*(v187 + 8))(v181, v188);
    }

    else
    {
      v130 = v153;
      v131 = v181;
      sub_25268F9A0();
      v132 = sub_25268FE70();
      (v149[0])(v130, v155);
      (*(v187 + 8))(v131, v188);
      v133 = 0.0;
      if (v132)
      {
        v134 = v52;
      }

      else
      {
        v134 = 0.0;
      }

      if (v132 != 2)
      {
        v133 = v134;
      }

      v135 = v156;
      *v156 = v133;
      v136 = v157;
      v150(v135, v151, v157);
      (*(v183 + 40))(v117, v135, v136);
    }
  }

  if ((*(v118 + v202[10]) & 1) == 0)
  {
    sub_252372288(v117, &qword_27F4DB218);
    v162(v117, 1, 1, v177);
  }

  v137 = type metadata accessor for Device.Control(0);
  v138 = v182;
  v139 = v182 + v137[5];
  v140 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8) + 48);
  sub_25237153C(v117, v139, &qword_27F4DB218);
  sub_2525C7678(v195, v139 + v140, type metadata accessor for AccessoryControl.IncrementalConfig);
  type metadata accessor for Device.Control.Kind(0);
  swift_storeEnumTagMultiPayload();
  sub_2525C7678(v107, v138 + v137[6], type metadata accessor for Device.Control.Source);
  v141 = v117;
  v142 = *(v118 + v202[13]);
  v143 = (v118 + v202[14]);
  v145 = *v143;
  v144 = v143[1];
  v146 = (v138 + v137[8]);
  v147 = v137[10];
  *(v138 + v147) = 16;
  (*(v199 + 32))(v138, v194, v200);
  *(v138 + v137[7]) = v142;
  *v146 = v145;
  v146[1] = v144;
  *(v138 + v137[9]) = 1028;
  *(v138 + v147) = 16;
  *(v138 + v137[11]) = 1;

  return sub_252372288(v141, &qword_27F4DB218);
}

uint64_t sub_2525C3604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v67 = type metadata accessor for AccessoryControl.BinaryViewConfig(0) - 8;
  MEMORY[0x28223BE20](v67);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25268E2E0();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  v66 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) - 8);
  MEMORY[0x28223BE20](v66);
  v13 = (&v58 - v12);
  v14 = sub_25268F4D0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a2;
  sub_25268F9A0();
  v69 = type metadata accessor for HAPControlSolver.Source();
  v59 = sub_25268FE70();
  (*(v15 + 8))(v17, v14);
  sub_25268E250();
  v18 = sub_25268E2D0();
  v60 = v19;
  v61 = v18;
  v20 = v63;
  v21 = *(v62 + 8);
  v21(v11, v63);
  sub_25268E250();
  v22 = type metadata accessor for IconDescriptor();
  sub_25268E2C0();
  v21(v8, v20);
  v23 = v60;
  *v13 = v61;
  v13[1] = v23;
  *(v13 + *(v22 + 24)) = 0;
  sub_25268E260();
  v24 = sub_25268E2D0();
  v61 = v25;
  v62 = v24;
  v21(v11, v20);
  sub_25268E260();
  v26 = (v13 + *(v66 + 9));
  sub_25268E2C0();
  v21(v8, v20);
  v27 = v64;
  v28 = v61;
  *v26 = v62;
  v26[1] = v28;
  *(v26 + *(v22 + 24)) = 0;
  v29 = v69;
  v30 = sub_25268E510();
  v66 = v13;
  sub_25237153C(v13, v27, &qword_27F4DAD88);
  v31 = v67;
  type metadata accessor for AccessoryControl.StatusProvider();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ControlTextModifier.Config(0);
  swift_storeEnumTagMultiPayload();
  v32 = v27 + v31[9];
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = -1;
  v33 = v27 + v31[10];
  *v33 = 0u;
  *(v33 + 16) = 0u;
  *(v33 + 32) = -1;
  v34 = v31[14];
  *(v27 + v31[7]) = v30;
  v35 = (v27 + v31[12]);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  sub_252376DA8(*v32, *(v32 + 8), *(v32 + 16), *(v32 + 24), *(v32 + 32));
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = -1;
  sub_252376DA8(*v33, *(v33 + 8), *(v33 + 16), *(v33 + 24), *(v33 + 32));
  *v33 = 0u;
  *(v33 + 16) = 0u;
  *(v33 + 32) = -1;
  *(v27 + v34) = 0;
  *(v27 + v31[11]) = 0;
  v36 = *(v29 + 40);
  v67 = a1;
  if (*(a1 + v36))
  {
    v37 = 0;
    v38 = v59 & 1;
    v39 = 1;
  }

  else
  {

    v38 = 0;
    v39 = 0;
    v37 = 1;
  }

  v40 = v68;
  sub_25268F9B0();
  v41 = type metadata accessor for Device.Control(0);
  v42 = (v40 + v41[5]);
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428) + 48);
  *v42 = v38;
  v42[1] = 0;
  v42[2] = v39;
  v42[3] = 0;
  v42[4] = v37;
  sub_2525C75B0(v27, v42 + v43, type metadata accessor for AccessoryControl.BinaryViewConfig);
  type metadata accessor for Device.Control.Kind(0);
  swift_storeEnumTagMultiPayload();
  v44 = v40 + v41[6];
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088) + 48);
  sub_25268F9A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
  v45 = sub_25268DA10();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_252694E90;
  v49 = v67;
  (*(v46 + 16))(v48 + v47, v67, v45);
  v50 = sub_25240C1FC(v48);
  swift_setDeallocating();
  (*(v46 + 8))(v48 + v47, v45);
  swift_deallocClassInstance();
  sub_252372288(v66, &qword_27F4DAD88);
  *(v44 + v63) = v50;
  type metadata accessor for Device.Control.Source(0);
  swift_storeEnumTagMultiPayload();
  v51 = *(v49 + *(v69 + 52));
  v52 = (v49 + *(v69 + 56));
  v54 = *v52;
  v53 = v52[1];
  v55 = (v40 + v41[8]);
  v56 = v41[10];
  *(v40 + v56) = 16;
  *(v40 + v41[7]) = v51;
  *v55 = v54;
  v55[1] = v53;
  *(v40 + v41[9]) = 1027;
  *(v40 + v56) = 16;
  *(v40 + v41[11]) = 1;

  return sub_2525C7618(v27, type metadata accessor for AccessoryControl.BinaryViewConfig);
}

uint64_t sub_2525C3CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a2;
  v78 = a4;
  v69 = a1;
  v5 = sub_25268E530();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25268E2E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v68 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v76 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) - 8);
  MEMORY[0x28223BE20](v76);
  v82 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v62 - v15);
  v17 = type metadata accessor for AccessoryControl.StatusProvider();
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25268EEA0();
  v66 = v20;
  v80 = *(v20 - 8);
  v21 = v80;
  MEMORY[0x28223BE20](v20);
  v81 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  v79 = &v62 - v24;
  v73 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  v26 = MEMORY[0x28223BE20](v73);
  v70 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v67) = *a3;
  (*(v21 + 104))(v25, *MEMORY[0x277D15CE8], v20, v26);
  v75 = v19;
  swift_storeEnumTagMultiPayload();
  v65 = type metadata accessor for HAPControlSolver.Source();
  v28 = v69;
  sub_25268E250();
  v64 = sub_25268E2D0();
  v63 = v29;
  v30 = *(v8 + 8);
  v30(v12, v7);
  v31 = v28;
  v32 = v68;
  sub_25268E250();
  v33 = type metadata accessor for IconDescriptor();
  sub_25268E2C0();
  v30(v32, v7);
  v34 = v63;
  *v16 = v64;
  v16[1] = v34;
  *(v16 + *(v33 + 24)) = 0;
  sub_25268E260();
  v64 = sub_25268E2D0();
  v63 = v35;
  v30(v12, v7);
  v36 = v71;
  sub_25268E260();
  v37 = (v16 + *(v76 + 9));
  sub_25268E2C0();
  v30(v32, v7);
  v38 = v63;
  *v37 = v64;
  v37[1] = v38;
  v39 = 0x408F400000000000;
  v40 = *(v33 + 24);
  v41 = v72;
  *(v37 + v40) = 0;
  LOBYTE(v85[0]) = v67;
  v42 = sub_2523F5EC0(v31, v85);
  v68 = v43;
  v76 = v16;
  sub_25237153C(v16, v82, &qword_27F4DAD88);
  v67 = sub_25268E510();
  v44 = v66;
  (*(v80 + 16))(v81, v79);
  v45 = v74;
  (*(v36 + 104))(v74, *MEMORY[0x277D15720], v41);
  sub_2525C7558();
  sub_252692D40();
  sub_252692D40();
  if ((v85[0] != v83 || v85[1] != v84) && (sub_2526933B0() & 1) == 0)
  {
    v39 = 0x406F400000000000;
  }

  (*(v36 + 8))(v45, v41);

  v46 = v73;
  v47 = v70;
  v48 = v75;
  sub_2525C75B0(v75, &v70[*(v73 + 56)], type metadata accessor for AccessoryControl.StatusProvider);
  v49 = sub_252692340();
  sub_252372288(v76, &qword_27F4DAD88);
  sub_2525C7618(v48, type metadata accessor for AccessoryControl.StatusProvider);
  v50 = v80;
  (*(v80 + 8))(v79, v44);
  sub_2523714D4(v82, v47, &qword_27F4DAD88);
  v51 = v67;
  *(v47 + v46[5]) = v68;
  *(v47 + v46[6]) = v42;
  *(v47 + v46[12]) = v51;
  *(v47 + v46[13]) = v49;
  (*(v50 + 32))(v47 + v46[7], v81, v44);
  *(v47 + v46[8]) = 0;
  *(v47 + v46[9]) = 0x4059000000000000;
  *(v47 + v46[10]) = 0x3FF0000000000000;
  v52 = v47 + v46[11];
  *v52 = v39;
  *(v52 + 8) = 0;
  v53 = sub_25268DA10();
  v54 = v78;
  (*(*(v53 - 8) + 16))(v78, v77, v53);
  v55 = type metadata accessor for Device.Control(0);
  v56 = v54 + v55[5];
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8) + 48);
  v58 = type metadata accessor for AccessoryControl.IncrementalState(0);
  (*(*(v58 - 8) + 56))(v56, 1, 1, v58);
  sub_2525C7678(v47, v56 + v57, type metadata accessor for AccessoryControl.IncrementalConfig);
  type metadata accessor for Device.Control.Kind(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Device.Control.Source(0);
  result = swift_storeEnumTagMultiPayload();
  v60 = (v54 + v55[8]);
  v61 = v55[10];
  *(v54 + v61) = 16;
  *(v54 + v55[7]) = 0;
  *v60 = 0;
  v60[1] = 0;
  *(v54 + v55[9]) = 1028;
  *(v54 + v61) = 16;
  *(v54 + v55[11]) = 0;
  return result;
}

uint64_t sub_2525C450C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v141 = a4;
  v147 = a3;
  v140 = a6;
  v138 = type metadata accessor for Device.Control.Source(0);
  MEMORY[0x28223BE20](v138);
  v139 = (&v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = sub_25268E530();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  *&v145 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_25268E2E0();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v131 = &v121 - v13;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  MEMORY[0x28223BE20](v130);
  v146 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v144 = (&v121 - v16);
  v129 = type metadata accessor for AccessoryControl.StatusProvider();
  MEMORY[0x28223BE20](v129);
  v142 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25268EEA0();
  v154 = *(v18 - 8);
  v155 = v18;
  MEMORY[0x28223BE20](v18);
  v143 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v153 = &v121 - v21;
  v135 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v135);
  v149 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v23 - 8);
  v128 = &v121 - v24;
  v150 = sub_25268DA10();
  v156 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_25268F970();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v121 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v124 = &v121 - v28;
  v123 = sub_25268ED70();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v30 = (&v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v31 - 8);
  v152 = &v121 - v32;
  v33 = sub_25268F4D0();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = *a5;
  v151 = a2;
  sub_25268F9A0();
  v157 = type metadata accessor for HAPControlSolver.Source();
  v37 = COERCE_DOUBLE(sub_25268FEA0());
  v39 = v38;
  v40 = *(v34 + 8);
  v40(v36, v33);
  if (v39)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v37;
  }

  sub_25268F9A0();
  v158 = a1;
  v42 = sub_25268FEA0();
  v44 = v43;
  v45 = v33;
  v46 = v125;
  v40(v36, v45);
  v47 = v123;
  v48 = *&v42;
  v49 = v126;
  v50 = (v44 & 1) == 0;
  v51 = v122;
  if (!v50)
  {
    v48 = 0.0;
  }

  *v30 = v48;
  v30[1] = v41;
  (*(v51 + 104))(v30, *MEMORY[0x277D15BB0], v47);
  v52 = v124;
  sub_25268F980();
  v53 = sub_25268F960();
  v54 = v46[1];
  v54(v52, v49);
  if (v53)
  {
    v55 = 1;
  }

  else
  {
    v56 = v121;
    sub_25268F980();
    v55 = sub_25268F960();
    v54(v56, v49);
  }

  v57 = v152;
  (*(v51 + 32))(v152, v30, v47);
  v58 = type metadata accessor for AccessoryControl.IncrementalState(0);
  *(v57 + *(v58 + 20)) = v55 & 1;
  v59 = *(v58 - 8);
  v60 = *(v59 + 56);
  v126 = v58;
  v125 = v60;
  v124 = (v59 + 56);
  (v60)(v57, 0, 1);
  v61 = v128;
  sub_25237153C(v141, v128, &qword_27F4DB290);
  v62 = v156;
  v63 = *(v156 + 48);
  v64 = v150;
  if (v63(v61, 1, v150) == 1)
  {
    sub_25268F9B0();
    if (v63(v61, 1, v64) != 1)
    {
      sub_252372288(v61, &qword_27F4DB290);
    }
  }

  else
  {
    (*(v62 + 32))(v148, v61, v64);
  }

  v141 = 0x408F400000000000;
  (*(v154 + 104))(v153, *MEMORY[0x277D15CF0], v155);
  swift_storeEnumTagMultiPayload();
  v65 = v158;
  v66 = v131;
  sub_25268E250();
  v129 = sub_25268E2D0();
  v128 = v67;
  v68 = *(v133 + 8);
  v69 = v134;
  v68(v66, v134);
  v70 = v132;
  sub_25268E250();
  v71 = type metadata accessor for IconDescriptor();
  v72 = v144;
  sub_25268E2C0();
  v68(v70, v69);
  v73 = v128;
  *v72 = v129;
  v72[1] = v73;
  *(v72 + *(v71 + 24)) = 0;
  sub_25268E260();
  v133 = sub_25268E2D0();
  v129 = v74;
  v68(v66, v69);
  sub_25268E260();
  v75 = (v72 + *(v130 + 28));
  sub_25268E2C0();
  v68(v70, v69);
  v76 = v129;
  *v75 = v133;
  v75[1] = v76;
  *(v75 + *(v71 + 24)) = 0;
  LOBYTE(v161[0]) = v127;
  v77 = sub_2523F5EC0(v65, v161);
  v79 = v78;
  sub_25237153C(v72, v146, &qword_27F4DAD88);
  v80 = sub_25268E510();
  (*(v154 + 16))(v143, v153, v155);
  v81 = v136;
  v82 = v137;
  (*(v136 + 104))(v145, *MEMORY[0x277D15720], v137);
  sub_2525C7558();
  sub_252692D40();
  sub_252692D40();
  if (v161[0] != v159 || v161[1] != v160)
  {
    v83 = sub_2526933B0();
    v84 = 0x406F400000000000;
    if (v83)
    {
      v84 = 0x408F400000000000;
    }

    v141 = v84;
  }

  (*(v81 + 8))(v145, v82);

  v85 = v135;
  v86 = v149;
  v87 = v142;
  sub_2525C75B0(v142, v149 + *(v135 + 56), type metadata accessor for AccessoryControl.StatusProvider);
  v88 = sub_252692340();
  sub_252372288(v144, &qword_27F4DAD88);
  sub_2525C7618(v87, type metadata accessor for AccessoryControl.StatusProvider);
  v89 = v154;
  v90 = v155;
  (*(v154 + 8))(v153, v155);
  sub_2523714D4(v146, v86, &qword_27F4DAD88);
  *(v86 + v85[5]) = v79;
  *(v86 + v85[6]) = v77;
  *(v86 + v85[12]) = v80;
  *(v86 + v85[13]) = v88;
  (*(v89 + 32))(v86 + v85[7], v143, v90);
  *(v86 + v85[8]) = 0;
  *(v86 + v85[9]) = 0x4059000000000000;
  *(v86 + v85[10]) = 0x3FF0000000000000;
  v91 = v86 + v85[11];
  *v91 = v141;
  *(v91 + 8) = 0;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3580);
  v93 = swift_allocBox();
  v95 = v94;
  v154 = v94 + *(v92 + 48);
  v155 = v93;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088);
  v153 = *(v96 + 48);
  sub_25268F9A0();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
  v98 = v156;
  v146 = *(v156 + 72);
  v147 = v97;
  v99 = (*(v156 + 80) + 32) & ~*(v156 + 80);
  v100 = swift_allocObject();
  v145 = xmmword_252694E90;
  *(v100 + 16) = xmmword_252694E90;
  v144 = *(v98 + 16);
  v101 = v150;
  (v144)(v100 + v99, v158, v150);
  v102 = sub_25240C1FC(v100);
  swift_setDeallocating();
  v103 = *(v98 + 8);
  v103(v100 + v99, v101);
  swift_deallocClassInstance();
  *&v153[v95] = v102;
  swift_storeEnumTagMultiPayload();
  v153 = *(v96 + 48);
  v104 = v154;
  sub_25268F9A0();
  v105 = swift_allocObject();
  *(v105 + 16) = v145;
  v106 = v158;
  (v144)(v105 + v99, v158, v101);
  v107 = sub_25240C1FC(v105);
  swift_setDeallocating();
  v103(v105 + v99, v101);
  swift_deallocClassInstance();
  *&v153[v104] = v107;
  swift_storeEnumTagMultiPayload();
  v108 = v139;
  *v139 = v155;
  swift_storeEnumTagMultiPayload();
  if ((*(v106 + v157[10]) & 1) == 0)
  {
    v109 = v152;
    sub_252372288(v152, &qword_27F4DB218);
    (v125)(v109, 1, 1, v126);
  }

  v110 = type metadata accessor for Device.Control(0);
  v111 = v140;
  v112 = v140 + v110[5];
  v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8) + 48);
  sub_2523714D4(v152, v112, &qword_27F4DB218);
  sub_2525C7678(v149, v112 + v113, type metadata accessor for AccessoryControl.IncrementalConfig);
  type metadata accessor for Device.Control.Kind(0);
  swift_storeEnumTagMultiPayload();
  sub_2525C7678(v108, v111 + v110[6], type metadata accessor for Device.Control.Source);
  v114 = *(v158 + v157[13]);
  v115 = (v158 + v157[14]);
  v117 = *v115;
  v116 = v115[1];
  v118 = (v111 + v110[8]);
  v119 = v110[10];
  *(v111 + v119) = 16;
  (*(v156 + 32))(v111, v148, v101);
  *(v111 + v110[7]) = v114;
  *v118 = v117;
  v118[1] = v116;
  *(v111 + v110[9]) = 1028;
  *(v111 + v119) = 16;
  *(v111 + v110[11]) = 1;
}

uint64_t sub_2525C55FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v224 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v3 - 8);
  v219 = &v189 - v4;
  v233 = sub_25268ED20();
  v225 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v203 = (&v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v192 = &v189 - v7;
  MEMORY[0x28223BE20](v8);
  v194 = &v189 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v10 - 8);
  v223 = &v189 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v12 - 8);
  v210 = &v189 - v13;
  v198 = sub_25268FFD0();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v196 = &v189 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v202);
  v216 = &v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v201 = &v189 - v17;
  MEMORY[0x28223BE20](v18);
  v193 = &v189 - v19;
  MEMORY[0x28223BE20](v20);
  v195 = &v189 - v21;
  MEMORY[0x28223BE20](v22);
  v204 = (&v189 - v23);
  MEMORY[0x28223BE20](v24);
  v205 = &v189 - v25;
  MEMORY[0x28223BE20](v26);
  v214 = &v189 - v27;
  MEMORY[0x28223BE20](v28);
  v206 = &v189 - v29;
  MEMORY[0x28223BE20](v30);
  v215 = &v189 - v31;
  MEMORY[0x28223BE20](v32);
  v213 = &v189 - v33;
  MEMORY[0x28223BE20](v34);
  v218 = &v189 - v35;
  MEMORY[0x28223BE20](v36);
  v200 = (&v189 - v37);
  MEMORY[0x28223BE20](v38);
  v226 = &v189 - v39;
  MEMORY[0x28223BE20](v40);
  v228 = (&v189 - v41);
  MEMORY[0x28223BE20](v42);
  v229 = (&v189 - v43);
  v44 = sub_25268F4D0();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v189 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v48 - 8);
  v212 = &v189 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v199 = &v189 - v51;
  MEMORY[0x28223BE20](v52);
  v211 = &v189 - v53;
  MEMORY[0x28223BE20](v54);
  v217 = &v189 - v55;
  MEMORY[0x28223BE20](v56);
  v209 = &v189 - v57;
  MEMORY[0x28223BE20](v58);
  v208 = &v189 - v59;
  MEMORY[0x28223BE20](v60);
  v230 = &v189 - v61;
  MEMORY[0x28223BE20](v62);
  v64 = &v189 - v63;
  v66 = MEMORY[0x28223BE20](v65);
  v234 = &v189 - v67;
  v68 = *(v45 + 104);
  v68(v47, *MEMORY[0x277D162D8], v44, v66);
  v232 = type metadata accessor for HAPControlSolver.Source();
  sub_25268FD80();
  v69 = *(v45 + 8);
  v69(v47, v44);
  (v68)(v47, *MEMORY[0x277D160B8], v44);
  v227 = v64;
  sub_25268FD80();
  v69(v47, v44);
  (v68)(v47, *MEMORY[0x277D16168], v44);
  v70 = a1;
  v71 = v230;
  sub_25268FD80();
  v69(v47, v44);
  v72 = v71;
  v73 = sub_25268F9E0();
  v74 = *(v73 - 8);
  v75 = *(v74 + 48);
  v231 = v75(v71, 1, v73);
  v76 = v75(v234, 1, v73) != 1 && v75(v227, 1, v73) != 1;
  v77 = v232[20];
  v220 = sub_25268F160();
  v78 = v229;
  v79 = v226;
  if (!v76 && v231 == 1)
  {
    sub_252372288(v72, &qword_27F4DB208);
    sub_252372288(v234, &qword_27F4DB208);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3578);
    (*(*(v80 - 8) + 56))(v224, 1, 1, v80);
LABEL_93:
    v159 = v227;
    return sub_252372288(v159, &qword_27F4DB208);
  }

  v189 = v77;
  v81 = sub_2525C73D4();
  v221 = *(v225 + 56);
  v222 = v225 + 56;
  v221(v78, 1, 1, v233);
  v82 = *(v70 + v232[18]);
  v246 = 1;
  v245 = 1;
  v190 = v231 != 1;
  v207 = v70;
  v191 = v82;
  if (v231 == 1)
  {

    LODWORD(v210) = 0;
    LODWORD(v208) = 0;
    LODWORD(v198) = 1;
    goto LABEL_15;
  }

  v83 = v208;
  sub_25237153C(v72, v208, &qword_27F4DB208);
  v84 = v75(v83, 1, v73);

  if (v84 == 1)
  {
    sub_252372288(v83, &qword_27F4DB208);
    v85 = sub_252690050();
    v86 = v210;
    (*(*(v85 - 8) + 56))(v210, 1, 1, v85);
LABEL_12:
    sub_252372288(v86, &qword_27F4DB230);
    goto LABEL_13;
  }

  v87 = v83;
  v86 = v210;
  sub_25268F9D0();
  (*(v74 + 8))(v87, v73);
  v88 = sub_252690050();
  v89 = *(v88 - 8);
  if ((*(v89 + 48))(v86, 1, v88) == 1)
  {
    goto LABEL_12;
  }

  if ((*(v89 + 88))(v86, v88) == *MEMORY[0x277D16CC8])
  {
    (*(v89 + 96))(v86, v88);
    v132 = v197;
    v133 = v196;
    v134 = v198;
    (*(v197 + 32))(v196, v86, v198);
    v135 = sub_25268FFA0();
    v136 = 0xFFFFLL;
    if (v135 < 0xFFFF)
    {
      v136 = v135;
    }

    LODWORD(v208) = v136 & ~(v136 >> 63);
    v245 = 0;
    v137 = sub_25268FFB0();
    (*(v132 + 8))(v133, v134);
    LODWORD(v198) = 0;
    v138 = 0xFFFFLL;
    if (v137 < 0xFFFF)
    {
      v138 = v137;
    }

    LODWORD(v210) = v138 & ~(v138 >> 63);
    v246 = 0;
    goto LABEL_14;
  }

  (*(v89 + 8))(v86, v88);
LABEL_13:
  LODWORD(v210) = 0;
  LODWORD(v208) = 0;
  LODWORD(v198) = 1;
LABEL_14:
  v79 = v226;
LABEL_15:
  v90 = v217;
  if (v76)
  {
    v91 = v209;
    sub_25237153C(v234, v209, &qword_27F4DB208);
    if (v75(v91, 1, v73) == 1)
    {
      v92 = v91;
LABEL_20:
      sub_252372288(v92, &qword_27F4DB208);
      v93 = 1;
      v94 = v223;
      goto LABEL_24;
    }

    v94 = v223;
    sub_25268F9B0();
    (*(v74 + 8))(v91, v73);
  }

  else
  {
    sub_25237153C(v72, v217, &qword_27F4DB208);
    if (v75(v90, 1, v73) == 1)
    {
      v92 = v90;
      goto LABEL_20;
    }

    v94 = v223;
    sub_25268F9B0();
    (*(v74 + 8))(v90, v73);
  }

  v93 = 0;
LABEL_24:
  v95 = sub_25268DA10();
  (*(*(v95 - 8) + 56))(v94, v93, 1, v95);
  v96 = v233;
  v97 = v221;
  v221(v228, 1, 1, v233);
  v97(v79, 1, 1, v96);
  LODWORD(v217) = v76;
  if (!v76)
  {
    goto LABEL_29;
  }

  v98 = v211;
  sub_25237153C(v234, v211, &qword_27F4DB208);
  if (v75(v98, 1, v73) == 1)
  {
    v99 = v98;
LABEL_27:
    sub_252372288(v99, &qword_27F4DB208);
    goto LABEL_29;
  }

  v209 = sub_25268F950();
  v101 = v100;
  v102 = *(v74 + 8);
  v102(v98, v73);
  if ((v101 & 1) == 0)
  {
    v139 = v199;
    sub_25237153C(v227, v199, &qword_27F4DB208);
    if (v75(v139, 1, v73) == 1)
    {
      v99 = v139;
      goto LABEL_27;
    }

    v141 = v74;
    v142 = v139;
    v143 = sub_25268F950();
    v145 = v144;
    v146 = v142;
    v74 = v141;
    v102(v146, v73);
    if ((v145 & 1) == 0)
    {
      v147 = v228;
      sub_252372288(v228, &qword_27F4DB2A8);
      *&v148.f64[0] = v209;
      *&v148.f64[1] = v143;
      *v147 = vdivq_f64(v148, xmmword_252695320);
      v149 = v233;
      (*(v225 + 104))(v147, *MEMORY[0x277D15B38], v233);
      v221(v147, 0, 1, v149);
    }
  }

LABEL_29:
  v103 = v225;
  v104 = v220;
  if (v231 != 1)
  {
    v105 = v212;
    sub_25237153C(v230, v212, &qword_27F4DB208);
    if (v75(v105, 1, v73) == 1)
    {
      sub_252372288(v105, &qword_27F4DB208);
    }

    else
    {
      v106 = sub_25268F9C0();
      v108 = v107;
      (*(v74 + 8))(v105, v73);
      if ((v108 & 1) == 0)
      {
        sub_252372288(v79, &qword_27F4DB2A8);
        v109 = 0xFFFFLL;
        if (v106 < 0xFFFF)
        {
          v109 = v106;
        }

        v110 = v200;
        *v200 = v109 & ~(v109 >> 63);
        v111 = v233;
        (*(v103 + 104))(v110, *MEMORY[0x277D15B28], v233);
        v221(v110, 0, 1, v111);
        sub_2523714D4(v110, v79, &qword_27F4DB2A8);
      }
    }
  }

  LODWORD(v212) = v104 & 1;
  v112 = v218;
  sub_25237153C(v79, v218, &qword_27F4DB2A8);
  v113 = *(v103 + 48);
  v114 = v233;
  v115 = v113(v112, 1, v233);
  sub_252372288(v112, &qword_27F4DB2A8);
  v116 = v115 == 1;
  v117 = v219;
  v118 = v229;
  if (v116)
  {
LABEL_40:
    v122 = v215;
    sub_25237153C(v79, v215, &qword_27F4DB2A8);
    v123 = v113(v122, 1, v114);
    sub_252372288(v122, &qword_27F4DB2A8);
    v116 = v123 == 1;
    v114 = v233;
    if (v116)
    {
      v124 = v228;
      v125 = v206;
      sub_25237153C(v228, v206, &qword_27F4DB2A8);
      if (v113(v125, 1, v114) != 1)
      {
        sub_252372288(v118, &qword_27F4DB2A8);
        sub_252372288(v125, &qword_27F4DB2A8);
        sub_25237153C(v124, v118, &qword_27F4DB2A8);
        v79 = v226;
        if ((v104 & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_71;
      }

      sub_252372288(v125, &qword_27F4DB2A8);
      v79 = v226;
    }

    v126 = v214;
    sub_25237153C(v79, v214, &qword_27F4DB2A8);
    v127 = v113(v126, 1, v114);
    sub_252372288(v126, &qword_27F4DB2A8);
    v116 = v127 == 1;
    v114 = v233;
    if (v116)
    {
      goto LABEL_70;
    }

    v128 = v205;
    sub_25237153C(v228, v205, &qword_27F4DB2A8);
    v129 = v113(v128, 1, v114);
    sub_252372288(v128, &qword_27F4DB2A8);
    v116 = v129 == 1;
    v114 = v233;
    if (v116)
    {
      goto LABEL_70;
    }

    v130 = v204;
    sub_25237153C(v79, v204, &qword_27F4DB2A8);
    if (v113(v130, 1, v114) == 1)
    {
      sub_252372288(v118, &qword_27F4DB2A8);
      v131 = v130;
      v104 = v220;
    }

    else
    {
      v140 = v225;
      if ((*(v225 + 88))(v130, v114) != *MEMORY[0x277D15B28])
      {
        sub_252372288(v118, &qword_27F4DB2A8);
        (*(v140 + 8))(v130, v114);
        goto LABEL_67;
      }

      (*(v140 + 96))(v130, v114);
      if (!v198 && v210 >= *v130)
      {
        v169 = v195;
        sub_25237153C(v79, v195, &qword_27F4DB2A8);
        if (v113(v169, 1, v114) == 1)
        {
          sub_252372288(v118, &qword_27F4DB2A8);
          sub_252372288(v169, &qword_27F4DB2A8);
        }

        else
        {
          v170 = *(v225 + 32);
          v171 = v194;
          v170(v194, v169, v114);
          v172 = v193;
          sub_25237153C(v228, v193, &qword_27F4DB2A8);
          if (v113(v172, 1, v114) == 1)
          {
            (*(v225 + 8))(v171, v114);
            v118 = v229;
            sub_252372288(v229, &qword_27F4DB2A8);
            sub_252372288(v172, &qword_27F4DB2A8);
          }

          else
          {
            v173 = v192;
            v170(v192, v172, v114);
            LODWORD(v218) = sub_25248B14C(v173);
            v174 = v173;
            v175 = *(v225 + 8);
            v175(v174, v114);
            v118 = v229;
            sub_252372288(v229, &qword_27F4DB2A8);
            if (v218)
            {
              v170(v118, v194, v114);
              v221(v118, 0, 1, v114);
              v117 = v219;
              if ((v104 & 1) == 0)
              {
                goto LABEL_89;
              }

              goto LABEL_71;
            }

            v175(v194, v114);
            v117 = v219;
          }
        }

        v120 = v228;
        goto LABEL_68;
      }

      v131 = v118;
    }

    sub_252372288(v131, &qword_27F4DB2A8);
LABEL_67:
    v120 = v79;
LABEL_68:
    v121 = v118;
    goto LABEL_69;
  }

  v119 = v213;
  sub_25237153C(v228, v213, &qword_27F4DB2A8);
  if (v113(v119, 1, v114) != 1)
  {
    sub_252372288(v119, &qword_27F4DB2A8);
    goto LABEL_40;
  }

  sub_252372288(v118, &qword_27F4DB2A8);
  sub_252372288(v119, &qword_27F4DB2A8);
  v120 = v79;
  v121 = v118;
LABEL_69:
  sub_25237153C(v120, v121, &qword_27F4DB2A8);
LABEL_70:
  if ((v104 & 1) == 0)
  {
LABEL_89:
    sub_252372288(v79, &qword_27F4DB2A8);
    sub_252372288(v228, &qword_27F4DB2A8);
LABEL_90:
    v176 = v118;
    v177 = v216;
    sub_2523714D4(v176, v216, &qword_27F4DB2A8);
    v221(v117, 1, 1, v114);
    v178 = type metadata accessor for AccessoryControl.ColorState(0);
    v179 = v117 + *(v178 + 20);
    sub_2523F62D8(v177, v117);
    *v179 = v81;
    *(v179 + 8) = 0;
    v180 = *(*(v178 - 8) + 56);
    v180(v117, 0, 1, v178);
    v181 = *(v207 + v232[10]);
    sub_252372288(v230, &qword_27F4DB208);
    sub_252372288(v234, &qword_27F4DB208);
    if ((v181 & 1) == 0)
    {
      sub_252372288(v117, &qword_27F4DB2A0);
      v180(v117, 1, 1, v178);
    }

    v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3578);
    v183 = v224;
    v184 = v224 + *(v182 + 48);
    sub_2523714D4(v223, v224, &qword_27F4DB290);
    v185 = v184 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8) + 48);
    sub_2523714D4(v117, v184, &qword_27F4DB2A0);
    v186 = v246;
    v187 = v245;
    *v185 = v212;
    *(v185 + 1) = v190;
    *(v185 + 2) = v217;
    *(v185 + 4) = v210;
    *(v185 + 6) = v186;
    *(v185 + 8) = v208;
    *(v185 + 10) = v187;
    *(v185 + 11) = v243;
    *(v185 + 15) = v244;
    *(v185 + 16) = v191;
    type metadata accessor for Device.Control.Kind(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v182 - 8) + 56))(v183, 0, 1, v182);
    goto LABEL_93;
  }

LABEL_71:
  if ((sub_25268F150() & 1) == 0)
  {
    goto LABEL_89;
  }

  if (v231 != 1)
  {
    sub_252372288(v79, &qword_27F4DB2A8);
    sub_252372288(v228, &qword_27F4DB2A8);
    v150 = v201;
    sub_2523714D4(v118, v201, &qword_27F4DB2A8);
    if (v113(v150, 1, v114) == 1)
    {
      v151 = v203;
      *v203 = 370;
      v152 = v225;
      (*(v225 + 104))(v151, *MEMORY[0x277D15B28], v114);
      v153 = v151;
      if (v113(v150, 1, v114) != 1)
      {
        sub_252372288(v150, &qword_27F4DB2A8);
      }
    }

    else
    {
      v152 = v225;
      v153 = v203;
      (*(v225 + 32))(v203, v150, v114);
    }

    v164 = swift_allocBox();
    v166 = v165;
    (*(v152 + 32))(v165, v153, v114);
    v167 = v221;
    v221(v166, 0, 1, v114);
    v168 = v229;
    *v229 = v164;
    (*(v152 + 104))(v168, *MEMORY[0x277D15B30], v114);
    v118 = v168;
    v167(v168, 0, 1, v114);
    goto LABEL_90;
  }

  v235[0] = v212;
  v235[1] = v190;
  v235[2] = v217;
  v236 = v210;
  v237 = v246;
  v238 = v208;
  v239 = v245;
  v240 = v243;
  v241 = v244;
  v242 = v191;
  sub_252394280(v235);
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v154 = sub_2526905A0();
  __swift_project_value_buffer(v154, qword_27F4E4B18);
  v155 = sub_252690580();
  v156 = sub_252692EF0();
  v157 = os_log_type_enabled(v155, v156);
  v158 = v223;
  v159 = v227;
  v160 = v228;
  v161 = v230;
  if (v157)
  {
    v162 = swift_slowAlloc();
    *v162 = 0;
    _os_log_impl(&dword_252309000, v155, v156, "Service says natural light is enabled, but doesn't support Color Temperature values. This should not be possible and is not supported", v162, 2u);
    MEMORY[0x2530A5A40](v162, -1, -1);
  }

  sub_252372288(v226, &qword_27F4DB2A8);
  sub_252372288(v160, &qword_27F4DB2A8);
  sub_252372288(v158, &qword_27F4DB290);
  sub_252372288(v229, &qword_27F4DB2A8);
  sub_252372288(v161, &qword_27F4DB208);
  sub_252372288(v234, &qword_27F4DB208);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3578);
  (*(*(v163 - 8) + 56))(v224, 1, 1, v163);
  return sub_252372288(v159, &qword_27F4DB208);
}

double sub_2525C73D4()
{
  v0 = sub_25268F4D0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 104);
  v5(v4, *MEMORY[0x277D160B0], v0, v2);
  type metadata accessor for HAPControlSolver.Source();
  v6 = sub_25268FE70();
  v7 = *(v1 + 8);
  v7(v4, v0);
  (v5)(v4, *MEMORY[0x277D160A8], v0);
  v8 = COERCE_DOUBLE(sub_25268FEA0());
  v10 = v9;
  v7(v4, v0);
  result = 0.0;
  if ((v10 & 1) == 0)
  {
    if ((v6 & 1) == 0)
    {
      return result;
    }

    result = v8;
    return result / 100.0;
  }

  if (v6)
  {
    return result / 100.0;
  }

  return result;
}

unint64_t sub_2525C7558()
{
  result = qword_27F4DADD8;
  if (!qword_27F4DADD8)
  {
    sub_25268E530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DADD8);
  }

  return result;
}

uint64_t sub_2525C75B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525C7618(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2525C7678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_2525C76E0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (sub_2526933B0() & 1) != 0)
  {
    v5 = type metadata accessor for IconDescriptor();
    if ((sub_25268F900() & 1) != 0 && *(a1 + *(v5 + 24)) == *(a2 + *(v5 + 24)))
    {
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);
      v7 = (a1 + v6);
      v8 = (a2 + v6);
      v9 = *v7 == *v8 && v7[1] == v8[1];
      if (v9 || (sub_2526933B0()) && (sub_25268F900() & 1) != 0 && *(v7 + *(v5 + 24)) == *(v8 + *(v5 + 24)))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2525C77D8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = type metadata accessor for Device.Control(0);
  v36 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v42);
  v41 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Device.ControlGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25268E2E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = (&v36 - v15);
  sub_25268E250();
  v17 = sub_25268E2D0();
  v38 = v18;
  v39 = v17;
  v19 = *(v7 + 8);
  v19(v12, v6);
  sub_25268E250();
  v20 = type metadata accessor for IconDescriptor();
  sub_25268E2C0();
  v19(v9, v6);
  v21 = v38;
  *v16 = v39;
  v16[1] = v21;
  *(v16 + *(v20 + 24)) = 0;
  sub_25268E260();
  v22 = sub_25268E2D0();
  v38 = v23;
  v39 = v22;
  v19(v12, v6);
  sub_25268E260();
  v24 = (v16 + *(v14 + 36));
  sub_25268E2C0();
  v25 = v6;
  v26 = v41;
  v19(v9, v25);
  v27 = v40;
  v28 = v38;
  *v24 = v39;
  v24[1] = v28;
  *(v24 + *(v20 + 24)) = 0;
  sub_2525C8370(v43, v27, type metadata accessor for Device.ControlGroup);
  sub_2525C8370(v27, v26, type metadata accessor for Device.ControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v31 = v37;
    sub_2525C8308(v26, v37, type metadata accessor for Device.Control);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8);
    v32 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_252694E90;
    EnumCaseMultiPayload = sub_2525C8308(v31, v30 + v32, type metadata accessor for Device.Control);
  }

  else
  {
    v30 = *v26;
  }

  v33 = v44;
  MEMORY[0x28223BE20](EnumCaseMultiPayload);
  *(&v36 - 2) = v16;
  v34 = sub_2525F80D0(sub_2525C82E8, (&v36 - 4), v30);

  Device.ControlGroup.controls.setter(v34);
  sub_2525C8308(v27, v33, type metadata accessor for Device.ControlGroup);
  return sub_252372288(v16, &qword_27F4DAD88);
}

uint64_t sub_2525C7C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v43 = &v41[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCF78);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v41[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v47 = &v41[-v15];
  MEMORY[0x28223BE20](v16);
  v18 = &v41[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v41[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v41[-v23];
  v46 = type metadata accessor for Device.Control(0);
  v50 = a1;
  sub_25261239C(v24);
  v25 = v11;
  v49 = a2;
  sub_25237153C(a2, v21, &qword_27F4DAD88);
  v44 = *(v6 + 56);
  v45 = v6 + 56;
  v44(v21, 0, 1, v5);
  v26 = *(v9 + 56);
  sub_25237153C(v24, v11, &qword_27F4DADB8);
  sub_25237153C(v21, &v11[v26], &qword_27F4DADB8);
  v27 = *(v6 + 48);
  if (v27(v25, 1, v5) == 1)
  {
    sub_252372288(v21, &qword_27F4DADB8);
    v28 = v25;
    sub_252372288(v24, &qword_27F4DADB8);
    if (v27(v25 + v26, 1, v5) == 1)
    {
LABEL_3:
      sub_252372288(v28, &qword_27F4DADB8);
      return sub_2525C8370(v50, v51, type metadata accessor for Device.Control);
    }

    goto LABEL_6;
  }

  sub_25237153C(v25, v18, &qword_27F4DADB8);
  if (v27(v25 + v26, 1, v5) == 1)
  {
    sub_252372288(v21, &qword_27F4DADB8);
    v28 = v25;
    sub_252372288(v24, &qword_27F4DADB8);
    sub_252372288(v18, &qword_27F4DAD88);
LABEL_6:
    v30 = &qword_27F4DCF78;
    v31 = v28;
    goto LABEL_16;
  }

  v32 = v25;
  v33 = v43;
  sub_252376EF0(v25 + v26, v43);
  v34 = *v18 == *v33 && v18[1] == v33[1];
  if (v34 || (sub_2526933B0()) && (v35 = type metadata accessor for IconDescriptor(), (sub_25268F900()) && *(v18 + *(v35 + 24)) == *(v33 + *(v35 + 24)) && ((v38 = *(v5 + 28), v39 = v18 + v38, v40 = v33 + v38, *(v18 + v38) == *(v33 + v38)) && *(v18 + v38 + 8) == *(v33 + v38 + 8) || (sub_2526933B0()))
  {
    v42 = sub_25268F900();
    sub_252372288(v21, &qword_27F4DADB8);
    v33 = v43;
    sub_252372288(v24, &qword_27F4DADB8);
    if ((v42 & 1) != 0 && v39[*(v35 + 24)] == v40[*(v35 + 24)])
    {
      sub_252372288(v33, &qword_27F4DAD88);
      sub_252372288(v18, &qword_27F4DAD88);
      v28 = v32;
      goto LABEL_3;
    }
  }

  else
  {
    sub_252372288(v21, &qword_27F4DADB8);
    sub_252372288(v24, &qword_27F4DADB8);
  }

  sub_252372288(v33, &qword_27F4DAD88);
  sub_252372288(v18, &qword_27F4DAD88);
  v30 = &qword_27F4DADB8;
  v31 = v32;
LABEL_16:
  sub_252372288(v31, v30);
  sub_2525C8370(v50, v51, type metadata accessor for Device.Control);
  v36 = v47;
  sub_25237153C(v49, v47, &qword_27F4DAD88);
  v44(v36, 0, 1, v5);
  v37 = v48;
  sub_25237153C(v36, v48, &qword_27F4DADB8);
  sub_252612854(v37);
  return sub_252372288(v36, &qword_27F4DADB8);
}

uint64_t sub_2525C8308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525C8370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525C8404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2526931A0();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_2525E50AC(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_2525C84C0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B90);
  sub_252400FC8(&qword_27F4E3150, &qword_27F4E2A48);
  sub_252692700();
  sub_252692710();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD8);
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t sub_2525C8644@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2526931A0();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    sub_2525E515C(v8, *(a1 + 36), a1, a2, a4);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_2525C8718(uint64_t a1)
{
  v2 = sub_25268F520();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v23 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
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
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_252412DC8(v9, v6);
      result = (*(v3 + 8))(v9, v2);
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

uint64_t sub_2525C8928(uint64_t a1)
{
  v2 = sub_25268DA10();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v23 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_2524130A8(v9, v6);
      result = (*(v3 + 8))(v9, v2);
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

void sub_2525C8B38(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = 0;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = v12;
LABEL_9:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_2525EA610(*(a1 + 48) + *(v3 + 72) * (v18 | (v17 << 6)), v11, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_2525EA6FC(v11, v5, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_252412450(v8, v5);
    sub_2525EA764(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return;
    }

    v15 = *(a1 + 56 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_2525C8D24(uint64_t a1)
{
  v2 = sub_25268DA10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
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
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2, v10);
      (*(v3 + 32))(v5, v12, v2);
      sub_2524130A8(v8, v5);
      (*(v3 + 8))(v8, v2);
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

      return;
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
}

uint64_t sub_2525C8F34@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DataModel.ObjectIdentifier();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2525EA610(v1, v5, type metadata accessor for DataModel.ObjectIdentifier);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F60) + 48);
  v7 = sub_25268DA10();
  v8 = *(v7 - 8);
  (*(v8 + 32))(a1, &v5[v6], v7);
  return (*(v8 + 8))(v5, v7);
}

uint64_t DataModel.ObjectIdentifier.hash(into:)()
{
  v1 = sub_25268DA10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for DataModel.ObjectIdentifier();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2525EA610(v0, v10, type metadata accessor for DataModel.ObjectIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F60) + 48);
  v13 = *(v2 + 32);
  v13(v7, v10, v1);
  v13(v4, &v10[v12], v1);
  MEMORY[0x2530A4FE0](EnumCaseMultiPayload);
  sub_2525EA6B4(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  sub_252692B30();
  sub_252692B30();
  v14 = *(v2 + 8);
  v14(v4, v1);
  return (v14)(v7, v1);
}

uint64_t DataModel.ObjectIdentifier.hashValue.getter()
{
  sub_252693460();
  DataModel.ObjectIdentifier.hash(into:)();
  return sub_2526934C0();
}

uint64_t sub_2525C92D4()
{
  sub_252693460();
  DataModel.ObjectIdentifier.hash(into:)();
  return sub_2526934C0();
}

uint64_t sub_2525C9318()
{
  sub_252693460();
  DataModel.ObjectIdentifier.hash(into:)();
  return sub_2526934C0();
}

uint64_t DataModel.objectIdentifier(for:homeID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v208 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F50);
  MEMORY[0x28223BE20](v6 - 8);
  v202 = &v181 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3588);
  MEMORY[0x28223BE20](v8 - 8);
  v203 = &v181 - v9;
  v188 = sub_25268F130();
  v186 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v183 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3590);
  MEMORY[0x28223BE20](v185);
  v187 = &v181 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB500);
  MEMORY[0x28223BE20](v12 - 8);
  v184 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v190 = &v181 - v15;
  MEMORY[0x28223BE20](v16);
  v191 = &v181 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB070);
  MEMORY[0x28223BE20](v18 - 8);
  v192 = &v181 - v19;
  v20 = sub_25268F610();
  v195 = *(v20 - 8);
  v196 = v20;
  MEMORY[0x28223BE20](v20);
  v193 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F58);
  MEMORY[0x28223BE20](v22 - 8);
  v205 = &v181 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3598);
  MEMORY[0x28223BE20](v24 - 8);
  v206 = &v181 - v25;
  v26 = sub_25268E8D0();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v194 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v197 = &v181 - v30;
  MEMORY[0x28223BE20](v31);
  v198 = &v181 - v32;
  MEMORY[0x28223BE20](v33);
  v199 = &v181 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v181 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB948);
  MEMORY[0x28223BE20](v38 - 8);
  v201 = &v181 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v204 = &v181 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v181 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v181 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v181 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF40);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v181 - v52;
  v207 = v3;
  v54 = sub_25268E160();
  if (*(v54 + 16) && (v55 = sub_252367880(a2), (v56 & 1) != 0))
  {
    (*(v27 + 16))(v50, *(v54 + 56) + *(v27 + 72) * v55, v26);

    v57 = *(v27 + 56);
    v58 = v50;
    v59 = 0;
  }

  else
  {

    v57 = *(v27 + 56);
    v58 = v50;
    v59 = 1;
  }

  v211 = v57;
  v57(v58, v59, 1, v26);
  v209 = *(v27 + 48);
  v210 = v27 + 48;
  if (v209(v50, 1, v26))
  {
    sub_252372288(v50, &qword_27F4DB948);
    v60 = sub_25268EBE0();
    (*(*(v60 - 8) + 56))(v53, 1, 1, v60);
  }

  else
  {
    (*(v27 + 16))(v37, v50, v26);
    sub_252372288(v50, &qword_27F4DB948);
    v61 = sub_25268E880();
    (*(v27 + 8))(v37, v26);
    v62 = *(v61 + 16);
    v189 = a3;
    if (v62 && (v63 = sub_252367880(v208), (v64 & 1) != 0))
    {
      v65 = v63;
      v182 = *(v61 + 56);
      v66 = sub_25268EBE0();
      v67 = *(v66 - 8);
      v200 = a2;
      v68 = v67;
      (*(v67 + 16))(v53, v182 + *(v67 + 72) * v65, v66);

      (*(v68 + 56))(v53, 0, 1, v66);
      a2 = v200;
    }

    else
    {

      v66 = sub_25268EBE0();
      (*(*(v66 - 8) + 56))(v53, 1, 1, v66);
    }

    sub_25268EBE0();
    v69 = (*(*(v66 - 8) + 48))(v53, 1, v66);
    a3 = v189;
    if (v69 != 1)
    {
      sub_252372288(v53, &qword_27F4DAF40);
      v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F60) + 48);
      v88 = sub_25268DA10();
      v89 = a2;
      v90 = *(*(v88 - 8) + 16);
      v90(a3, v208, v88);
      v90(a3 + v87, v89, v88);
      v91 = type metadata accessor for DataModel.ObjectIdentifier();
      goto LABEL_83;
    }
  }

  sub_252372288(v53, &qword_27F4DAF40);
  v70 = sub_25268E160();
  if (*(v70 + 16) && (v71 = sub_252367880(a2), (v72 & 1) != 0))
  {
    (*(v27 + 16))(v47, *(v70 + 56) + *(v27 + 72) * v71, v26);
    v73 = 0;
  }

  else
  {
    v73 = 1;
  }

  v211(v47, v73, 1, v26);
  if (v209(v47, 1, v26))
  {
    sub_252372288(v47, &qword_27F4DB948);
    v74 = sub_25268F810();
    v75 = v206;
    (*(*(v74 - 8) + 56))(v206, 1, 1, v74);
    goto LABEL_26;
  }

  v76 = v199;
  (*(v27 + 16))(v199, v47, v26);
  sub_252372288(v47, &qword_27F4DB948);
  v77 = sub_25268E8C0();
  (*(v27 + 8))(v76, v26);
  if (*(v77 + 16))
  {
    v200 = a2;
    v78 = sub_252367880(v208);
    if (v79)
    {
      v80 = v78;
      v189 = a3;
      v81 = *(v77 + 56);
      v82 = sub_25268F810();
      v83 = *(v82 - 8);
      v84 = v83;
      v85 = v81 + *(v83 + 72) * v80;
      a3 = v189;
      v86 = v206;
      (*(v83 + 16))(v206, v85, v82);
      v75 = v86;

      (*(v84 + 56))(v86, 0, 1, v82);
    }

    else
    {

      v82 = sub_25268F810();
      v75 = v206;
      (*(*(v82 - 8) + 56))(v206, 1, 1, v82);
    }

    a2 = v200;
  }

  else
  {

    v82 = sub_25268F810();
    v75 = v206;
    (*(*(v82 - 8) + 56))(v206, 1, 1, v82);
  }

  sub_25268F810();
  if ((*(*(v82 - 8) + 48))(v75, 1, v82) == 1)
  {
LABEL_26:
    sub_252372288(v75, &qword_27F4E3598);
    v92 = sub_25268E160();
    if (*(v92 + 16) && (v93 = sub_252367880(a2), (v94 & 1) != 0))
    {
      (*(v27 + 16))(v44, *(v92 + 56) + *(v27 + 72) * v93, v26);
      v95 = 0;
    }

    else
    {
      v95 = 1;
    }

    v211(v44, v95, 1, v26);
    if (v209(v44, 1, v26))
    {
      sub_252372288(v44, &qword_27F4DB948);
      v96 = sub_25268F0A0();
      v97 = v205;
      (*(*(v96 - 8) + 56))(v205, 1, 1, v96);
      v98 = v204;
      goto LABEL_40;
    }

    v99 = v198;
    (*(v27 + 16))(v198, v44, v26);
    sub_252372288(v44, &qword_27F4DB948);
    v100 = sub_25268E890();
    (*(v27 + 8))(v99, v26);
    v101 = *(v100 + 16);
    v200 = a2;
    if (v101)
    {
      v102 = sub_252367880(v208);
      if (v103)
      {
        v104 = v102;
        v105 = a3;
        v106 = *(v100 + 56);
        v107 = sub_25268F0A0();
        v108 = *(v107 - 8);
        v109 = v108;
        v110 = v106 + *(v108 + 72) * v104;
        a3 = v105;
        v111 = v205;
        (*(v108 + 16))(v205, v110, v107);
        v97 = v111;

        (*(v109 + 56))(v111, 0, 1, v107);
      }

      else
      {

        v107 = sub_25268F0A0();
        v97 = v205;
        (*(*(v107 - 8) + 56))(v205, 1, 1, v107);
      }

      a2 = v200;
    }

    else
    {

      v107 = sub_25268F0A0();
      v97 = v205;
      (*(*(v107 - 8) + 56))(v205, 1, 1, v107);
    }

    v98 = v204;
    sub_25268F0A0();
    if ((*(*(v107 - 8) + 48))(v97, 1, v107) == 1)
    {
LABEL_40:
      sub_252372288(v97, &qword_27F4E2F58);
      v116 = sub_25268E160();
      if (*(v116 + 16) && (v117 = sub_252367880(a2), (v118 & 1) != 0))
      {
        (*(v27 + 16))(v98, *(v116 + 56) + *(v27 + 72) * v117, v26);
        v119 = 0;
      }

      else
      {
        v119 = 1;
      }

      v211(v98, v119, 1, v26);
      if (v209(v98, 1, v26))
      {
        sub_252372288(v98, &qword_27F4DB948);
        v120 = sub_25268F3B0();
        v121 = v203;
        (*(*(v120 - 8) + 56))(v203, 1, 1, v120);
      }

      else
      {
        v122 = v197;
        (*(v27 + 16))(v197, v98, v26);
        sub_252372288(v98, &qword_27F4DB948);
        v123 = sub_25268E8A0();
        (*(v27 + 8))(v122, v26);
        if (*(v123 + 16))
        {
          v200 = a2;
          v124 = sub_252367880(v208);
          if (v125)
          {
            v126 = v124;
            v127 = a3;
            v128 = *(v123 + 56);
            v129 = sub_25268F3B0();
            v130 = *(v129 - 8);
            v131 = v130;
            v132 = v128 + *(v130 + 72) * v126;
            a3 = v127;
            v133 = v203;
            (*(v130 + 16))(v203, v132, v129);
            v121 = v133;

            (*(v131 + 56))(v133, 0, 1, v129);
          }

          else
          {

            v129 = sub_25268F3B0();
            v121 = v203;
            (*(*(v129 - 8) + 56))(v203, 1, 1, v129);
          }

          a2 = v200;
        }

        else
        {

          v129 = sub_25268F3B0();
          v121 = v203;
          (*(*(v129 - 8) + 56))(v203, 1, 1, v129);
        }

        sub_25268F3B0();
        if ((*(*(v129 - 8) + 48))(v121, 1, v129) != 1)
        {
          v156 = &qword_27F4E3588;
          v157 = v121;
LABEL_75:
          sub_252372288(v157, v156);
          v168 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F60) + 48);
          v169 = sub_25268DA10();
          v170 = a2;
          v171 = *(*(v169 - 8) + 16);
          v171(a3, v208, v169);
          v171(a3 + v168, v170, v169);
          v91 = type metadata accessor for DataModel.ObjectIdentifier();
          goto LABEL_83;
        }
      }

      sub_252372288(v121, &qword_27F4E3588);
      v137 = sub_25268E160();
      if (*(v137 + 16))
      {
        v138 = sub_252367880(a2);
        v139 = v201;
        if (v140)
        {
          (*(v27 + 16))(v201, *(v137 + 56) + *(v27 + 72) * v138, v26);
          v141 = 0;
        }

        else
        {
          v141 = 1;
        }
      }

      else
      {
        v141 = 1;
        v139 = v201;
      }

      v211(v139, v141, 1, v26);
      if (v209(v139, 1, v26))
      {
        sub_252372288(v139, &qword_27F4DB948);
        v142 = sub_25268F6F0();
        v143 = v202;
        (*(*(v142 - 8) + 56))(v202, 1, 1, v142);
LABEL_73:
        sub_252372288(v143, &qword_27F4E2F50);
        v166 = type metadata accessor for DataModel.ObjectIdentifier();
        return (*(*(v166 - 8) + 56))(a3, 1, 1, v166);
      }

      v144 = v194;
      (*(v27 + 16))(v194, v139, v26);
      sub_252372288(v139, &qword_27F4DB948);
      v145 = sub_25268E8B0();
      (*(v27 + 8))(v144, v26);
      if (*(v145 + 16))
      {
        v146 = a2;
        v147 = sub_252367880(v208);
        v143 = v202;
        if (v148)
        {
          v149 = v147;
          v150 = a3;
          v151 = *(v145 + 56);
          v152 = sub_25268F6F0();
          v153 = *(v152 - 8);
          v154 = v153;
          v155 = v151 + *(v153 + 72) * v149;
          a3 = v150;
          (*(v153 + 16))(v143, v155, v152);

          (*(v154 + 56))(v143, 0, 1, v152);
        }

        else
        {

          v152 = sub_25268F6F0();
          (*(*(v152 - 8) + 56))(v143, 1, 1, v152);
        }

        a2 = v146;
      }

      else
      {

        v152 = sub_25268F6F0();
        v143 = v202;
        (*(*(v152 - 8) + 56))(v202, 1, 1, v152);
      }

      sub_25268F6F0();
      if ((*(*(v152 - 8) + 48))(v143, 1, v152) == 1)
      {
        goto LABEL_73;
      }

      v156 = &qword_27F4E2F50;
      v157 = v143;
      goto LABEL_75;
    }

    sub_252372288(v97, &qword_27F4E2F58);
    v134 = v192;
    sub_2525CB114(v208, a2, v192);
    v136 = v195;
    v135 = v196;
    if ((*(v195 + 48))(v134, 1, v196) == 1)
    {
      sub_252372288(v134, &qword_27F4DB070);
LABEL_82:
      v178 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F60) + 48);
      v179 = sub_25268DA10();
      v180 = *(*(v179 - 8) + 16);
      v180(a3, v208, v179);
      v180(a3 + v178, v200, v179);
      v91 = type metadata accessor for DataModel.ObjectIdentifier();
      goto LABEL_83;
    }

    v189 = a3;
    (*(v136 + 32))(v193, v134, v135);
    v158 = v191;
    sub_25268F530();
    v159 = v186;
    v160 = v190;
    v161 = v188;
    (*(v186 + 104))(v190, *MEMORY[0x277D15EE0], v188);
    (*(v159 + 56))(v160, 0, 1, v161);
    v162 = *(v185 + 48);
    v163 = v187;
    sub_25237153C(v158, v187, &qword_27F4DB500);
    sub_25237153C(v160, v163 + v162, &qword_27F4DB500);
    v164 = *(v159 + 48);
    if (v164(v163, 1, v161) == 1)
    {
      sub_252372288(v160, &qword_27F4DB500);
      sub_252372288(v158, &qword_27F4DB500);
      v165 = v164(v163 + v162, 1, v161);
      a3 = v189;
      if (v165 == 1)
      {
        sub_252372288(v163, &qword_27F4DB500);
LABEL_81:
        (*(v195 + 8))(v193, v196);
        goto LABEL_82;
      }
    }

    else
    {
      v172 = v184;
      sub_25237153C(v163, v184, &qword_27F4DB500);
      if (v164(v163 + v162, 1, v161) != 1)
      {
        v173 = v163 + v162;
        v174 = v183;
        (*(v159 + 32))(v183, v173, v161);
        sub_2525EA6B4(&qword_27F4E35A0, MEMORY[0x277D15F48]);
        v175 = v172;
        v176 = sub_252692B70();
        v177 = *(v159 + 8);
        v177(v174, v161);
        sub_252372288(v190, &qword_27F4DB500);
        sub_252372288(v191, &qword_27F4DB500);
        v177(v175, v161);
        sub_252372288(v163, &qword_27F4DB500);
        a3 = v189;
        if (v176)
        {
          goto LABEL_81;
        }

LABEL_79:
        sub_252525D94();
        sub_252692F30();
        (*(v195 + 8))(v193, v196);
        goto LABEL_82;
      }

      sub_252372288(v190, &qword_27F4DB500);
      sub_252372288(v191, &qword_27F4DB500);
      (*(v159 + 8))(v172, v161);
      a3 = v189;
    }

    sub_252372288(v163, &qword_27F4E3590);
    goto LABEL_79;
  }

  sub_252372288(v75, &qword_27F4E3598);
  v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F60) + 48);
  v113 = sub_25268DA10();
  v114 = a2;
  v115 = *(*(v113 - 8) + 16);
  v115(a3, v208, v113);
  v115(a3 + v112, v114, v113);
  v91 = type metadata accessor for DataModel.ObjectIdentifier();
LABEL_83:
  swift_storeEnumTagMultiPayload();
  return (*(*(v91 - 8) + 56))(a3, 0, 1, v91);
}

uint64_t sub_2525CB114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v60 = a3;
  v59 = sub_25268F610();
  v4 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_25268F0A0();
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v51 - v9;
  v10 = sub_25268F890();
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v58 = &v51 - v14;
  v15 = sub_25268E8D0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v22 = sub_25268E160();
  if (*(v22 + 16))
  {
    v23 = sub_252367880(a2);
    if (v24)
    {
      (*(v16 + 16))(v18, *(v22 + 56) + *(v16 + 72) * v23, v15);

      (*(v16 + 32))(v21, v18, v15);
      v25 = sub_25268E170();
      if (*(v25 + 16))
      {
        v26 = sub_252367880(a2);
        if (v27)
        {
          v28 = v56;
          v29 = v57;
          (*(v56 + 16))(v12, *(v25 + 56) + *(v56 + 72) * v26, v57);

          v30 = v58;
          (*(v28 + 32))(v58, v12, v29);
          v31 = sub_25268E890();
          if (*(v31 + 16) && (v32 = sub_252367880(v55), (v33 & 1) != 0))
          {
            v34 = v54;
            v35 = v52;
            (*(v54 + 16))(v7, *(v31 + 56) + *(v54 + 72) * v32, v52);

            v36 = v53;
            (*(v34 + 32))();
            v37 = sub_25268EF20();
            if (v38)
            {
              (*(v34 + 8))(v36, v35);
              (*(v28 + 8))(v58, v29);
LABEL_13:
              (*(v16 + 8))(v21, v15);
              goto LABEL_14;
            }

            v43 = v37;
            v30 = v58;
            v44 = sub_25268F870();
            if (*(v44 + 16))
            {
              v45 = sub_252372350(v43);
              if (v46)
              {
                v47 = v28;
                v48 = v30;
                v49 = v59;
                (*(v4 + 16))(v51, *(v44 + 56) + *(v4 + 72) * v45, v59);
                (*(v54 + 8))(v53, v35);
                (*(v47 + 8))(v48, v29);
                (*(v16 + 8))(v21, v15);

                v50 = v60;
                (*(v4 + 32))(v60, v51, v49);
                v41 = v49;
                v40 = v50;
                v39 = 0;
                return (*(v4 + 56))(v40, v39, 1, v41);
              }
            }

            (*(v54 + 8))(v53, v35);
          }

          else
          {
          }

          (*(v28 + 8))(v30, v29);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  v39 = 1;
  v41 = v59;
  v40 = v60;
  return (*(v4 + 56))(v40, v39, 1, v41);
}

uint64_t DataModel.device(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v238 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB070);
  MEMORY[0x28223BE20](v3 - 8);
  v230 = &v196 - v4;
  v234 = sub_25268F610();
  v231 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v211 = &v196 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v210 = &v196 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F50);
  MEMORY[0x28223BE20](v8 - 8);
  v213 = &v196 - v9;
  v215 = sub_25268F6F0();
  v214 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v197 = &v196 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v196 = &v196 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3588);
  MEMORY[0x28223BE20](v13 - 8);
  v236 = &v196 - v14;
  v237 = sub_25268F3B0();
  v240 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v204 = &v196 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v203 = &v196 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F58);
  MEMORY[0x28223BE20](v18 - 8);
  v232 = &v196 - v19;
  v235 = sub_25268F0A0();
  v233 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v201 = &v196 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v200 = &v196 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D60);
  MEMORY[0x28223BE20](v23 - 8);
  v202 = &v196 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3598);
  MEMORY[0x28223BE20](v25 - 8);
  v228 = &v196 - v26;
  v229 = sub_25268F810();
  v241 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v209 = &v196 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v199 = &v196 - v29;
  v30 = sub_25268E8D0();
  v244 = *(v30 - 8);
  v245 = v30;
  MEMORY[0x28223BE20](v30);
  v205 = &v196 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v208 = &v196 - v33;
  MEMORY[0x28223BE20](v34);
  v207 = &v196 - v35;
  MEMORY[0x28223BE20](v36);
  v225 = &v196 - v37;
  MEMORY[0x28223BE20](v38);
  v224 = &v196 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB948);
  MEMORY[0x28223BE20](v40 - 8);
  v212 = &v196 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v220 = &v196 - v43;
  MEMORY[0x28223BE20](v44);
  v219 = &v196 - v45;
  MEMORY[0x28223BE20](v46);
  v239 = &v196 - v47;
  MEMORY[0x28223BE20](v48);
  v218 = &v196 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF40);
  MEMORY[0x28223BE20](v50 - 8);
  v226 = &v196 - v51;
  v223 = sub_25268EBE0();
  v227 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v206 = &v196 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v198 = &v196 - v54;
  v247 = sub_25268DA10();
  v55 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v217 = &v196 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v216 = &v196 - v58;
  MEMORY[0x28223BE20](v59);
  v243 = &v196 - v60;
  MEMORY[0x28223BE20](v61);
  v242 = &v196 - v62;
  MEMORY[0x28223BE20](v63);
  v222 = &v196 - v64;
  MEMORY[0x28223BE20](v65);
  v221 = &v196 - v66;
  MEMORY[0x28223BE20](v67);
  v69 = &v196 - v68;
  MEMORY[0x28223BE20](v70);
  v72 = &v196 - v71;
  MEMORY[0x28223BE20](v73);
  v75 = &v196 - v74;
  MEMORY[0x28223BE20](v76);
  v78 = &v196 - v77;
  v79 = type metadata accessor for DataModel.ObjectIdentifier();
  MEMORY[0x28223BE20](v79);
  v81 = &v196 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2525EA610(a1, v81, type metadata accessor for DataModel.ObjectIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F60) + 48);
  v246 = v55;
  v84 = *(v55 + 32);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v106 = v221;
      v85 = v247;
      v84(v221, v81, v247);
      v96 = v222;
      v84(v222, &v81[v83], v85);
      v107 = sub_25268E160();
      if (*(v107 + 16))
      {
        v108 = sub_252367880(v96);
        v110 = v244;
        v109 = v245;
        v111 = v232;
        v112 = v219;
        if (v113)
        {
          (*(v244 + 16))(v219, *(v107 + 56) + *(v244 + 72) * v108, v245);
          v114 = 0;
        }

        else
        {
          v114 = 1;
        }
      }

      else
      {
        v114 = 1;
        v110 = v244;
        v109 = v245;
        v111 = v232;
        v112 = v219;
      }

      (*(v110 + 56))(v112, v114, 1, v109);
      if ((*(v110 + 48))(v112, 1, v109))
      {
        sub_252372288(v112, &qword_27F4DB948);
        (*(v233 + 56))(v111, 1, 1, v235);
      }

      else
      {
        v134 = v207;
        (*(v110 + 16))(v207, v112, v109);
        sub_252372288(v112, &qword_27F4DB948);
        v135 = sub_25268E890();
        (*(v110 + 8))(v134, v109);
        if (*(v135 + 16))
        {
          v136 = sub_252367880(v106);
          v137 = v235;
          v138 = v233;
          if (v139)
          {
            (*(v233 + 16))(v111, *(v135 + 56) + *(v233 + 72) * v136, v235);
            v140 = 0;
          }

          else
          {
            v140 = 1;
          }
        }

        else
        {
          v140 = 1;
          v137 = v235;
          v138 = v233;
        }

        (*(v138 + 56))(v111, v140, 1, v137);
        if ((*(v138 + 48))(v111, 1, v137) != 1)
        {
          v185 = v200;
          (*(v138 + 32))(v200, v111, v137);
          v186 = v201;
          (*(v138 + 16))(v201, v185, v137);
          Device.init(staticAccessory:)(v186, v238);
          (*(v138 + 8))(v185, v137);
          v131 = *(v246 + 8);
          v131(v96, v85);
          v132 = v106;
          goto LABEL_74;
        }
      }

      sub_252372288(v111, &qword_27F4E2F58);
      sub_2525E6ED4();
      swift_allocError();
      swift_willThrow();
      v120 = v106;
      goto LABEL_84;
    }

    if (EnumCaseMultiPayload != 3)
    {
      v115 = v216;
      v116 = v247;
      v84(v216, v81, v247);
      v96 = v217;
      v84(v217, &v81[v83], v116);
      v117 = v230;
      sub_2525CB114(v115, v96, v230);
      v118 = v231;
      v119 = v234;
      if ((*(v231 + 48))(v117, 1, v234) == 1)
      {
        sub_252372288(v117, &qword_27F4DB070);
        sub_2525E6ED4();
        swift_allocError();
        swift_willThrow();
        v120 = v115;
        v85 = v116;
LABEL_84:
        v190 = *(v246 + 8);
        v190(v96, v85);
        return (v190)(v120, v85);
      }

      v129 = v210;
      (*(v118 + 32))(v210, v117, v119);
      v130 = v211;
      (*(v118 + 16))(v211, v129, v119);
      Device.init(staticMatterDevice:)(v130, v238);
      (*(v118 + 8))(v129, v119);
      v131 = *(v246 + 8);
      v131(v96, v116);
      v132 = v115;
      v133 = v116;
      return (v131)(v132, v133);
    }

    v85 = v247;
    v84(v242, v81, v247);
    v86 = v243;
    v84(v243, &v81[v83], v85);
    v87 = sub_25268E160();
    if (*(v87 + 16))
    {
      v88 = sub_252367880(v86);
      v90 = v244;
      v89 = v245;
      v91 = v220;
      if (v92)
      {
        (*(v244 + 16))(v220, *(v87 + 56) + *(v244 + 72) * v88, v245);
        v93 = 0;
      }

      else
      {
        v93 = 1;
      }
    }

    else
    {
      v93 = 1;
      v90 = v244;
      v89 = v245;
      v91 = v220;
    }

    v245 = *(v90 + 56);
    v245(v91, v93, 1, v89);
    v141 = *(v90 + 48);
    if (v141(v91, 1, v89))
    {
      sub_252372288(v91, &qword_27F4DB948);
      v142 = v236;
      (*(v240 + 56))(v236, 1, 1, v237);
    }

    else
    {
      v143 = v208;
      (*(v90 + 16))(v208, v91, v89);
      sub_252372288(v91, &qword_27F4DB948);
      v144 = sub_25268E8A0();
      (*(v90 + 8))(v143, v89);
      v145 = v240;
      if (*(v144 + 16) && (v146 = sub_252367880(v242), (v147 & 1) != 0))
      {
        (*(v145 + 16))(v236, *(v144 + 56) + *(v145 + 72) * v146, v237);
        v148 = 0;
      }

      else
      {
        v148 = 1;
      }

      v165 = v240;
      v142 = v236;
      v166 = v148;
      v167 = v237;
      (*(v240 + 56))(v236, v166, 1, v237);
      if ((*(v165 + 48))(v142, 1, v167) != 1)
      {
        v181 = v203;
        (*(v165 + 32))(v203, v142, v167);
        v182 = v204;
        (*(v165 + 16))(v204, v181, v167);
        Device.init(staticMediaSystem:)(v182, v238);
        (*(v165 + 8))(v181, v167);
LABEL_66:
        v131 = *(v246 + 8);
        v131(v243, v85);
        v132 = v242;
LABEL_74:
        v133 = v85;
        return (v131)(v132, v133);
      }
    }

    sub_252372288(v142, &qword_27F4E3588);
    v168 = sub_25268E160();
    if (*(v168 + 16))
    {
      v169 = sub_252367880(v243);
      v170 = v212;
      if (v171)
      {
        (*(v90 + 16))(v212, *(v168 + 56) + *(v90 + 72) * v169, v89);
        v172 = 0;
      }

      else
      {
        v172 = 1;
      }
    }

    else
    {
      v172 = 1;
      v170 = v212;
    }

    v245(v170, v172, 1, v89);
    if (v141(v170, 1, v89))
    {
      sub_252372288(v170, &qword_27F4DB948);
      v173 = v213;
      (*(v214 + 56))(v213, 1, 1, v215);
LABEL_63:
      sub_252372288(v173, &qword_27F4E2F50);
      sub_2525E6ED4();
      swift_allocError();
      swift_willThrow();
      v120 = v242;
      v96 = v243;
      goto LABEL_84;
    }

    v174 = v205;
    (*(v90 + 16))(v205, v170, v89);
    sub_252372288(v170, &qword_27F4DB948);
    v175 = sub_25268E8B0();
    (*(v90 + 8))(v174, v89);
    v176 = v215;
    v177 = v214;
    v173 = v213;
    if (*(v175 + 16) && (v178 = sub_252367880(v242), (v179 & 1) != 0))
    {
      (*(v177 + 16))(v173, *(v175 + 56) + *(v177 + 72) * v178, v176);
      v180 = 0;
    }

    else
    {
      v180 = 1;
    }

    (*(v177 + 56))(v173, v180, 1, v176);
    if ((*(v177 + 48))(v173, 1, v176) == 1)
    {
      goto LABEL_63;
    }

    v183 = v196;
    (*(v177 + 32))(v196, v173, v176);
    v184 = v197;
    (*(v177 + 16))(v197, v183, v176);
    Device.init(staticMediaProfile:)(v184, v238);
    (*(v177 + 8))(v183, v176);
    goto LABEL_66;
  }

  v242 = v78;
  v243 = v69;
  v94 = v241;
  if (!EnumCaseMultiPayload)
  {
    v95 = v247;
    v84(v242, v81, v247);
    v96 = v75;
    v97 = v95;
    v84(v75, &v81[v83], v95);
    v98 = sub_25268E160();
    v99 = v244;
    if (*(v98 + 16))
    {
      v100 = sub_252367880(v75);
      v101 = v245;
      v102 = v224;
      v103 = v218;
      if (v104)
      {
        (*(v99 + 16))(v218, *(v98 + 56) + *(v99 + 72) * v100, v245);
        v105 = 0;
      }

      else
      {
        v105 = 1;
      }
    }

    else
    {
      v105 = 1;
      v101 = v245;
      v102 = v224;
      v103 = v218;
    }

    (*(v99 + 56))(v103, v105, 1, v101);
    if ((*(v99 + 48))(v103, 1, v101))
    {
      sub_252372288(v103, &qword_27F4DB948);
      v149 = v226;
      (*(v227 + 56))(v226, 1, 1, v223);
      v120 = v242;
    }

    else
    {
      (*(v99 + 16))(v102, v103, v101);
      sub_252372288(v103, &qword_27F4DB948);
      v150 = sub_25268E880();
      (*(v99 + 8))(v102, v101);
      if (*(v150 + 16))
      {
        v120 = v242;
        v151 = sub_252367880(v242);
        v152 = v223;
        v153 = v227;
        v149 = v226;
        v154 = v206;
        if (v155)
        {
          (*(v227 + 16))(v226, *(v150 + 56) + *(v227 + 72) * v151, v223);
          v156 = 0;
        }

        else
        {
          v156 = 1;
        }
      }

      else
      {
        v156 = 1;
        v152 = v223;
        v153 = v227;
        v149 = v226;
        v120 = v242;
        v154 = v206;
      }

      (*(v153 + 56))(v149, v156, 1, v152);
      if ((*(v153 + 48))(v149, 1, v152) != 1)
      {
        v187 = v198;
        (*(v153 + 32))(v198, v149, v152);
        (*(v153 + 16))(v154, v187, v152);
        Device.init(staticService:)(v154, v238);
        (*(v153 + 8))(v187, v152);
        v131 = *(v246 + 8);
        v131(v96, v97);
        v132 = v120;
        v133 = v97;
        return (v131)(v132, v133);
      }
    }

    sub_252372288(v149, &qword_27F4DAF40);
    sub_2525E6ED4();
    swift_allocError();
    swift_willThrow();
    v85 = v97;
    goto LABEL_84;
  }

  v85 = v247;
  v84(v72, v81, v247);
  v121 = v243;
  v84(v243, &v81[v83], v85);
  v122 = sub_25268E160();
  v123 = v244;
  if (*(v122 + 16))
  {
    v124 = sub_252367880(v121);
    v125 = v245;
    v126 = v225;
    if (v127)
    {
      (*(v123 + 16))(v239, *(v122 + 56) + *(v123 + 72) * v124, v245);
      v128 = 0;
    }

    else
    {
      v128 = 1;
    }

    v120 = v72;
  }

  else
  {
    v128 = 1;
    v125 = v245;
    v120 = v72;
    v126 = v225;
  }

  v157 = v239;
  (*(v123 + 56))(v239, v128, 1, v125);
  if ((*(v123 + 48))(v157, 1, v125))
  {
    sub_252372288(v157, &qword_27F4DB948);
    v158 = v228;
    (*(v94 + 56))(v228, 1, 1, v229);
LABEL_82:
    sub_252372288(v158, &qword_27F4E3598);
    sub_2525E6ED4();
    swift_allocError();
    swift_willThrow();
LABEL_83:
    v96 = v243;
    goto LABEL_84;
  }

  (*(v123 + 16))(v126, v157, v125);
  sub_252372288(v157, &qword_27F4DB948);
  v159 = sub_25268E8C0();
  (*(v123 + 8))(v126, v125);
  if (*(v159 + 16))
  {
    v160 = sub_252367880(v120);
    v158 = v228;
    v161 = v229;
    v162 = v94;
    if (v163)
    {
      (*(v94 + 16))(v228, *(v159 + 56) + *(v94 + 72) * v160, v229);
      v164 = 0;
    }

    else
    {
      v164 = 1;
    }
  }

  else
  {
    v164 = 1;
    v158 = v228;
    v161 = v229;
    v162 = v94;
  }

  v189 = v209;

  (*(v162 + 56))(v158, v164, 1, v161);
  if ((*(v162 + 48))(v158, 1, v161) == 1)
  {
    goto LABEL_82;
  }

  v191 = v199;
  (*(v162 + 32))(v199, v158, v161);
  (*(v162 + 16))(v189, v191, v161);
  v192 = v202;
  Device.init(staticServiceGroup:)(v189, v202);
  v193 = type metadata accessor for Device();
  if ((*(*(v193 - 8) + 48))(v192, 1, v193) == 1)
  {
    sub_252372288(v192, &qword_27F4E0D60);
    sub_2525E6ED4();
    swift_allocError();
    swift_willThrow();
    (*(v162 + 8))(v191, v161);
    goto LABEL_83;
  }

  (*(v162 + 8))(v191, v161);
  v194 = v192;
  v195 = *(v246 + 8);
  v195(v243, v85);
  v195(v120, v85);
  return sub_2525EA6FC(v194, v238, type metadata accessor for Device);
}

uint64_t Device.init(staticService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = sub_25268EBF0();
  v116 = *(v3 - 8);
  v117 = v3;
  MEMORY[0x28223BE20](v3);
  v113 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268EC10();
  v114 = *(v5 - 8);
  v115 = v5;
  MEMORY[0x28223BE20](v5);
  v112 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD90);
  MEMORY[0x28223BE20](v7 - 8);
  v96 = &v92 - v8;
  v95 = sub_25268E530();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E35B0);
  MEMORY[0x28223BE20](v10 - 8);
  v105 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v102 = &v92 - v13;
  v104 = sub_25268E2E0();
  v14 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v111 = (&v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v92 - v17;
  v19 = sub_25268E2F0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v103 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v92 - v23;
  v25 = type metadata accessor for IconDescriptor();
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = (&v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_25268DA10();
  v109 = *(v29 - 8);
  v110 = v29;
  MEMORY[0x28223BE20](v29);
  v108 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268EB50();
  v31 = sub_25268EBA0();
  v106 = v32;
  v107 = v31;
  v33 = a1;
  sub_25268E930();
  sub_25268E2A0();
  v34 = v20 + 8;
  v35 = *(v20 + 8);
  v99 = v34;
  v35(v24, v19);
  v36 = sub_25268E2D0();
  v100 = v37;
  v101 = v36;
  v38 = v14 + 8;
  v39 = *(v14 + 8);
  v98 = v38;
  v40 = v18;
  v41 = v104;
  v39(v40, v104);
  v42 = v103;
  sub_25268E930();
  v43 = v111;
  sub_25268E2A0();
  v35(v42, v19);
  sub_25268E2C0();
  v39(v43, v41);
  v44 = v100;
  *v28 = v101;
  v28[1] = v44;
  v45 = *(v26 + 32);
  v111 = v28;
  *(v28 + v45) = 0;
  v46 = v102;
  sub_25268EB40();
  v47 = sub_25268FC50();
  v48 = *(v47 - 8);
  v49 = *(v48 + 48);
  if (v49(v46, 1, v47) == 1)
  {
    sub_252372288(v46, &qword_27F4E35B0);
    v103 = 0;
    v104 = 0;
  }

  else
  {
    v50 = sub_25268FC30();
    v103 = v51;
    v104 = v50;
    (*(v48 + 8))(v46, v47);
  }

  v52 = sub_25268EBC0();
  v101 = v53;
  v102 = v52;
  v100 = sub_25268EBB0();
  LODWORD(v99) = sub_25268E910();
  LODWORD(v98) = sub_25268EAA0();
  v54 = sub_25268EB60();
  v97 = sub_25268E950();
  v55 = v105;
  sub_25268EB40();
  if (v49(v55, 1, v47) == 1)
  {
    sub_252372288(v55, &qword_27F4E35B0);
    v56 = v96;
    sub_25268E8F0();
    v57 = v94;
    v58 = *(v94 + 48);
    v59 = v95;
    if (v58(v56, 1, v95) == 1)
    {
      v60 = v93;
      sub_25268E970();
      v61 = v60;
      if (v58(v56, 1, v59) != 1)
      {
        sub_252372288(v56, &qword_27F4DAD90);
      }
    }

    else
    {
      v61 = v93;
      (*(v57 + 32))(v93, v56, v59);
    }

    v96 = sub_25268E510();
    (*(v57 + 8))(v61, v59);
  }

  else
  {
    v96 = sub_25268FC40();
    (*(v48 + 8))(v55, v47);
  }

  LODWORD(v95) = v54 & 1;
  v62 = v33;
  LODWORD(v105) = sub_25268E960();
  v63 = *MEMORY[0x277D15AF0];
  v64 = v116;
  v93 = *(v116 + 104);
  v65 = v113;
  v66 = v117;
  (v93)(v113, v63, v117);
  v67 = v112;
  sub_25268EC00();
  v68 = *(v64 + 8);
  v68(v65, v66);
  v116 = sub_25268E9B0();
  v94 = v69;
  v70 = v115;
  v71 = *(v114 + 8);
  v71(v67, v115);
  (v93)(v65, *MEMORY[0x277D15AE0], v66);
  sub_25268EC00();
  v68(v65, v66);
  v117 = sub_25268E9B0();
  v114 = v72;
  v71(v67, v70);
  v73 = sub_25268EB70();
  v75 = v74;
  LOBYTE(v71) = sub_25268EB30();
  LOBYTE(v68) = sub_25268E990();
  v76 = sub_25268EBE0();
  (*(*(v76 - 8) + 8))(v62, v76);
  v77 = type metadata accessor for Device();
  v78 = v118;
  v79 = (v118 + v77[7]);
  v80 = (v118 + v77[8]);
  v81 = v77[12];
  (*(v109 + 32))(v118, v108, v110);
  v82 = (v78 + v77[5]);
  v83 = v106;
  *v82 = v107;
  v82[1] = v83;
  result = sub_2525EA6FC(v111, v78 + v77[6], type metadata accessor for IconDescriptor);
  v85 = v103;
  *v79 = v104;
  v79[1] = v85;
  *(v78 + v77[10]) = v99 & 1;
  *(v78 + v77[11]) = v98 & 1;
  *(v78 + v81) = v95;
  *(v78 + v77[13]) = v97 & 1;
  *(v78 + v77[14]) = v96;
  *(v78 + v77[15]) = v105 & 1;
  v86 = (v78 + v77[16]);
  v87 = v94;
  *v86 = v116;
  v86[1] = v87;
  v88 = (v78 + v77[17]);
  v89 = v114;
  *v88 = v117;
  v88[1] = v89;
  v90 = (v78 + v77[18]);
  *v90 = v73;
  v90[1] = v75;
  v91 = v101;
  *v80 = v102;
  v80[1] = v91;
  *(v78 + v77[9]) = v100;
  *(v78 + v77[19]) = v71 & 1;
  *(v78 + v77[20]) = v68 & 1;
  return result;
}

uint64_t Device.init(staticServiceGroup:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB070);
  MEMORY[0x28223BE20](v3 - 8);
  v107 = &v85 - v4;
  v114 = sub_25268EBF0();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v110 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_25268EC10();
  v113 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v111 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25268E2E0();
  v105 = *(v7 - 8);
  v106 = v7;
  MEMORY[0x28223BE20](v7);
  v104 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v85 - v10;
  v12 = sub_25268E2F0();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12);
  v100 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = &v85 - v15;
  v101 = type metadata accessor for IconDescriptor();
  MEMORY[0x28223BE20](v101);
  v117 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25268DA10();
  v108 = *(v17 - 8);
  v109 = v17;
  MEMORY[0x28223BE20](v17);
  v116 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD90);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v85 - v20;
  v22 = sub_25268E530();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v119 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_25268EBE0();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v85 - v30;
  v32 = sub_25268F810();
  sub_2525EA6B4(&qword_27F4DADF8, MEMORY[0x277D164A0]);
  v33 = sub_25268EE70();
  if (*(v33 + 16))
  {
    v94 = v32;
    (*(v26 + 16))(v28, v33 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v25);

    v96 = v26;
    v34 = *(v26 + 32);
    v97 = v25;
    v34(v31, v28, v25);
    sub_25268E8F0();
    v35 = *(v23 + 48);
    v36 = v35(v21, 1, v22);
    v98 = v23;
    v95 = v31;
    v93 = v22;
    if (v36 == 1)
    {
      sub_25268E970();
      if (v35(v21, 1, v22) != 1)
      {
        sub_252372288(v21, &qword_27F4DAD90);
      }
    }

    else
    {
      (*(v23 + 32))(v119, v21, v22);
    }

    v42 = a1;
    sub_25268F7C0();
    v92 = sub_25268F7E0();
    v91 = v43;
    v44 = v99;
    sub_25268F760();
    sub_25268E2A0();
    v45 = v103;
    v46 = *(v102 + 8);
    v46(v44, v103);
    v102 = sub_25268E2D0();
    v99 = v47;
    v48 = v106;
    v49 = *(v105 + 8);
    v49(v11, v106);
    v50 = v100;
    sub_25268F760();
    v51 = v104;
    sub_25268E2A0();
    v46(v50, v45);
    v52 = v101;
    v53 = v117;
    sub_25268E2C0();
    v49(v51, v48);
    v54 = v99;
    *v53 = v102;
    *(v53 + 8) = v54;
    *(v53 + *(v52 + 24)) = 0;
    v55 = sub_25268F800();
    v105 = v56;
    v106 = v55;
    v104 = sub_25268F7F0();
    LODWORD(v103) = sub_25268F750();
    LODWORD(v102) = sub_25268F7A0();
    LODWORD(v101) = sub_25268F770();
    v100 = sub_25268E510();
    LODWORD(v99) = sub_25268F780();
    v57 = *MEMORY[0x277D15AF0];
    v58 = v112;
    v89 = *(v112 + 104);
    v59 = v110;
    v60 = v114;
    v89(v110, v57, v114);
    v61 = v111;
    sub_25268EC00();
    v88 = *(v58 + 8);
    v88(v59, v60);
    v62 = sub_25268F610();
    v63 = *(v62 - 8);
    v86 = *(v63 + 56);
    v87 = v63 + 56;
    v64 = v107;
    v86(v107, 1, 1, v62);
    v112 = sub_25268F790();
    v90 = v65;
    sub_252372288(v64, &qword_27F4DB070);
    v113 = *(v113 + 8);
    (v113)(v61, v118);
    v89(v59, *MEMORY[0x277D15AE0], v60);
    sub_25268EC00();
    v88(v59, v60);
    v86(v64, 1, 1, v62);
    v114 = sub_25268F790();
    v67 = v66;
    sub_252372288(v64, &qword_27F4DB070);
    (v113)(v61, v118);
    v68 = sub_25268F7D0();
    v70 = v69;
    LOBYTE(v53) = sub_25268F7B0();
    v71 = v119;
    v72 = sub_25268E500();
    (*(*(v94 - 8) + 8))(v42);
    (*(v98 + 8))(v71, v93);
    (*(v96 + 8))(v95, v97);
    v73 = type metadata accessor for Device();
    v74 = v115;
    v75 = (v115 + v73[7]);
    v76 = (v115 + v73[8]);
    v77 = v73[12];
    (*(v108 + 32))(v115, v116, v109);
    v78 = (v74 + v73[5]);
    v79 = v91;
    *v78 = v92;
    v78[1] = v79;
    sub_2525EA6FC(v117, v74 + v73[6], type metadata accessor for IconDescriptor);
    *v75 = 0;
    v75[1] = 0;
    *(v74 + v73[10]) = v103 & 1;
    *(v74 + v73[11]) = v102 & 1;
    *(v74 + v77) = 2;
    *(v74 + v73[13]) = v101 & 1;
    *(v74 + v73[14]) = v100;
    *(v74 + v73[15]) = v99 & 1;
    v80 = (v74 + v73[16]);
    v81 = v90;
    *v80 = v112;
    v80[1] = v81;
    v82 = (v74 + v73[17]);
    *v82 = v114;
    v82[1] = v67;
    v83 = (v74 + v73[18]);
    *v83 = v68;
    v83[1] = v70;
    v84 = v105;
    *v76 = v106;
    v76[1] = v84;
    *(v74 + v73[9]) = v104;
    *(v74 + v73[19]) = v53 & 1;
    *(v74 + v73[20]) = v72 & 1;
    return (*(*(v73 - 1) + 56))(v74, 0, 1, v73);
  }

  else
  {

    (*(*(v32 - 8) + 8))(a1, v32);
    v37 = type metadata accessor for Device();
    v38 = *(*(v37 - 8) + 56);
    v39 = v37;
    v40 = v115;

    return v38(v40, 1, 1, v39);
  }
}

uint64_t Device.init(staticAccessory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = sub_25268EBF0();
  v116 = *(v3 - 8);
  v117 = v3;
  MEMORY[0x28223BE20](v3);
  v113 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268EC10();
  v114 = *(v5 - 8);
  v115 = v5;
  MEMORY[0x28223BE20](v5);
  v112 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_25268E530();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF40);
  MEMORY[0x28223BE20](v8 - 8);
  v104 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E35B0);
  MEMORY[0x28223BE20](v10 - 8);
  v105 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v101 = &v91 - v13;
  v103 = sub_25268E2E0();
  v14 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v111 = (&v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v91 - v17;
  v19 = sub_25268E2F0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v91 - v24;
  v26 = type metadata accessor for IconDescriptor();
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = (&v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_25268DA10();
  v109 = *(v30 - 8);
  v110 = v30;
  MEMORY[0x28223BE20](v30);
  v108 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268F030();
  v32 = sub_25268F050();
  v106 = v33;
  v107 = v32;
  v92 = a1;
  sub_25268EEE0();
  sub_25268E2A0();
  v34 = v20 + 8;
  v35 = *(v20 + 8);
  v99 = v34;
  v35(v25, v19);
  v102 = sub_25268E2D0();
  v100 = v36;
  v37 = *(v14 + 8);
  v38 = v18;
  v39 = v103;
  v37(v38, v103);
  sub_25268EEE0();
  v40 = v111;
  sub_25268E2A0();
  v35(v22, v19);
  sub_25268E2C0();
  v37(v40, v39);
  v41 = v100;
  *v29 = v102;
  v29[1] = v41;
  v42 = *(v27 + 32);
  v43 = v92;
  v111 = v29;
  *(v29 + v42) = 0;
  v44 = v101;
  sub_25268F020();
  v45 = sub_25268FC50();
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  if (v47(v44, 1, v45) == 1)
  {
    sub_252372288(v44, &qword_27F4E35B0);
    v102 = 0xE000000000000000;
    v103 = 0;
  }

  else
  {
    v48 = sub_25268FC30();
    v102 = v49;
    v103 = v48;
    (*(v46 + 8))(v44, v45);
  }

  v50 = sub_25268F080();
  v100 = v51;
  v101 = v50;
  v99 = sub_25268F070();
  v98 = sub_25268EED0();
  v97 = sub_25268EFE0();
  v52 = sub_25268EFF0();
  v96 = sub_25268EEF0();
  v53 = v104;
  sub_25268EEB0();
  v54 = v53;
  v55 = sub_25268EBE0();
  v56 = *(v55 - 8);
  v57 = (*(v56 + 48))(v53, 1, v55);
  v58 = v105;
  if (v57 == 1)
  {
    v59 = &qword_27F4DAF40;
    v60 = v54;
  }

  else
  {
    sub_25268EB40();
    (*(v56 + 8))(v54, v55);
    if (v47(v58, 1, v45) != 1)
    {
      v104 = sub_25268FC40();
      (*(v46 + 8))(v58, v45);
      goto LABEL_10;
    }

    v59 = &qword_27F4E35B0;
    v60 = v58;
  }

  sub_252372288(v60, v59);
  v61 = v93;
  sub_25268EFD0();
  v104 = sub_25268E510();
  (*(v94 + 8))(v61, v95);
LABEL_10:
  LODWORD(v95) = v52 & 1;
  LODWORD(v105) = sub_25268EF00();
  v62 = *MEMORY[0x277D15AF0];
  v63 = v116;
  v93 = *(v116 + 104);
  v64 = v113;
  v65 = v117;
  (v93)(v113, v62, v117);
  v66 = v112;
  sub_25268EC00();
  v67 = *(v63 + 8);
  v67(v64, v65);
  v116 = sub_25268EF30();
  v94 = v68;
  v69 = v115;
  v70 = *(v114 + 8);
  v70(v66, v115);
  (v93)(v64, *MEMORY[0x277D15AE0], v65);
  sub_25268EC00();
  v67(v64, v65);
  v117 = sub_25268EF30();
  v114 = v71;
  v70(v66, v69);
  v72 = sub_25268F040();
  v74 = v73;
  LOBYTE(v70) = sub_25268F010();
  LOBYTE(v67) = sub_25268EF10();
  v75 = sub_25268F0A0();
  (*(*(v75 - 8) + 8))(v43, v75);
  v76 = type metadata accessor for Device();
  v77 = v118;
  v78 = (v118 + v76[7]);
  v79 = (v118 + v76[8]);
  v80 = v76[12];
  (*(v109 + 32))(v118, v108, v110);
  v81 = (v77 + v76[5]);
  v82 = v106;
  *v81 = v107;
  v81[1] = v82;
  result = sub_2525EA6FC(v111, v77 + v76[6], type metadata accessor for IconDescriptor);
  v84 = v102;
  *v78 = v103;
  v78[1] = v84;
  *(v77 + v76[10]) = v98 & 1;
  *(v77 + v76[11]) = v97 & 1;
  *(v77 + v80) = v95;
  *(v77 + v76[13]) = v96 & 1;
  *(v77 + v76[14]) = v104;
  *(v77 + v76[15]) = v105 & 1;
  v85 = (v77 + v76[16]);
  v86 = v94;
  *v85 = v116;
  v85[1] = v86;
  v87 = (v77 + v76[17]);
  v88 = v114;
  *v87 = v117;
  v87[1] = v88;
  v89 = (v77 + v76[18]);
  *v89 = v72;
  v89[1] = v74;
  v90 = v100;
  *v79 = v101;
  v79[1] = v90;
  *(v77 + v76[9]) = v99;
  *(v77 + v76[19]) = v70 & 1;
  *(v77 + v76[20]) = v67 & 1;
  return result;
}

uint64_t Device.init(staticMediaSystem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB070);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v62 - v5;
  v6 = sub_25268EBF0();
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  MEMORY[0x28223BE20](v6);
  v71 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_25268EC10();
  v84 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_25268F280();
  v10 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268F350();
  v13 = sub_25268F370();
  v80 = v14;
  v81 = v13;
  v79 = sub_25268F2F0();
  v16 = v15;
  v17 = type metadata accessor for Device();
  v18 = (a2 + v17[6]);
  v19 = type metadata accessor for IconDescriptor();
  v20 = *(v19 + 20);
  v21 = *MEMORY[0x277D16588];
  v22 = sub_25268F910();
  (*(*(v22 - 8) + 104))(v18 + v20, v21, v22);
  *v18 = v79;
  v18[1] = v16;
  *(v18 + *(v19 + 24)) = 0;
  v23 = sub_25268F390();
  v78 = v24;
  v79 = v23;
  v77 = sub_25268F380();
  v74 = sub_25268F300();
  v25 = v72;
  (*(v10 + 104))(v12, *MEMORY[0x277D15FE0], v72);
  v73 = sub_25268F270();
  (*(v10 + 8))(v12, v25);
  v63 = a1;
  LODWORD(v72) = sub_25268F310();
  v26 = *MEMORY[0x277D15AF0];
  v27 = v82;
  v28 = v83;
  v67 = *(v83 + 104);
  v29 = v71;
  v67(v71, v26, v82);
  v30 = v70;
  sub_25268EC00();
  v31 = *(v28 + 8);
  v83 = v28 + 8;
  v66 = v31;
  v31(v29, v27);
  v32 = sub_25268F610();
  v33 = *(v32 - 8);
  v64 = *(v33 + 56);
  v65 = v33 + 56;
  v34 = v76;
  v64(v76, 1, 1, v32);
  v35 = sub_25268F330();
  v68 = v36;
  v69 = v35;
  sub_252372288(v34, &qword_27F4DB070);
  v37 = *(v84 + 8);
  v84 += 8;
  v62 = v37;
  v38 = v75;
  v37(v30, v75);
  v39 = v82;
  v67(v29, *MEMORY[0x277D15AE0], v82);
  sub_25268EC00();
  v66(v29, v39);
  v64(v34, 1, 1, v32);
  v40 = v30;
  v41 = v63;
  v42 = sub_25268F330();
  v44 = v43;
  sub_252372288(v34, &qword_27F4DB070);
  v62(v40, v38);
  v45 = sub_25268F360();
  v47 = v46;
  v48 = v41;
  LOBYTE(v41) = sub_25268F340();
  v49 = sub_25268F3B0();
  result = (*(*(v49 - 8) + 8))(v48, v49);
  v51 = v17[8];
  v52 = (a2 + v17[7]);
  v53 = v17[12];
  v54 = (a2 + v17[5]);
  v55 = v80;
  *v54 = v81;
  v54[1] = v55;
  *v52 = 0;
  v52[1] = 0;
  *(a2 + v17[10]) = 0;
  *(a2 + v17[11]) = 1;
  *(a2 + v53) = 2;
  v56 = (a2 + v51);
  *(a2 + v17[13]) = v74 & 1;
  *(a2 + v17[14]) = v73;
  *(a2 + v17[15]) = v72 & 1;
  v57 = (a2 + v17[16]);
  v58 = v68;
  *v57 = v69;
  v57[1] = v58;
  v59 = (a2 + v17[17]);
  *v59 = v42;
  v59[1] = v44;
  v60 = (a2 + v17[18]);
  *v60 = v45;
  v60[1] = v47;
  v61 = v78;
  *v56 = v79;
  v56[1] = v61;
  *(a2 + v17[9]) = v77;
  *(a2 + v17[19]) = v41 & 1;
  *(a2 + v17[20]) = 0;
  return result;
}

uint64_t Device.init(staticMediaProfile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB070);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v62 - v5;
  v6 = sub_25268EBF0();
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  MEMORY[0x28223BE20](v6);
  v71 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_25268EC10();
  v84 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_25268F280();
  v10 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268F690();
  v13 = sub_25268F6B0();
  v80 = v14;
  v81 = v13;
  v79 = sub_25268F630();
  v16 = v15;
  v17 = type metadata accessor for Device();
  v18 = (a2 + v17[6]);
  v19 = type metadata accessor for IconDescriptor();
  v20 = *(v19 + 20);
  v21 = *MEMORY[0x277D16588];
  v22 = sub_25268F910();
  (*(*(v22 - 8) + 104))(v18 + v20, v21, v22);
  *v18 = v79;
  v18[1] = v16;
  *(v18 + *(v19 + 24)) = 0;
  v23 = sub_25268F6E0();
  v78 = v24;
  v79 = v23;
  v77 = sub_25268F6C0();
  v74 = sub_25268F640();
  v25 = v72;
  (*(v10 + 104))(v12, *MEMORY[0x277D15FE0], v72);
  v73 = sub_25268F270();
  (*(v10 + 8))(v12, v25);
  v63 = a1;
  LODWORD(v72) = sub_25268F650();
  v26 = *MEMORY[0x277D15AF0];
  v27 = v82;
  v28 = v83;
  v67 = *(v83 + 104);
  v29 = v71;
  v67(v71, v26, v82);
  v30 = v70;
  sub_25268EC00();
  v31 = *(v28 + 8);
  v83 = v28 + 8;
  v66 = v31;
  v31(v29, v27);
  v32 = sub_25268F610();
  v33 = *(v32 - 8);
  v64 = *(v33 + 56);
  v65 = v33 + 56;
  v34 = v76;
  v64(v76, 1, 1, v32);
  v35 = sub_25268F660();
  v68 = v36;
  v69 = v35;
  sub_252372288(v34, &qword_27F4DB070);
  v37 = *(v84 + 8);
  v84 += 8;
  v62 = v37;
  v38 = v75;
  v37(v30, v75);
  v39 = v82;
  v67(v29, *MEMORY[0x277D15AE0], v82);
  sub_25268EC00();
  v66(v29, v39);
  v64(v34, 1, 1, v32);
  v40 = v30;
  v41 = v63;
  v42 = sub_25268F660();
  v44 = v43;
  sub_252372288(v34, &qword_27F4DB070);
  v62(v40, v38);
  v45 = sub_25268F6A0();
  v47 = v46;
  v48 = v41;
  LOBYTE(v41) = sub_25268F680();
  v49 = sub_25268F6F0();
  result = (*(*(v49 - 8) + 8))(v48, v49);
  v51 = v17[8];
  v52 = (a2 + v17[7]);
  v53 = v17[12];
  v54 = (a2 + v17[5]);
  v55 = v80;
  *v54 = v81;
  v54[1] = v55;
  *v52 = 0;
  v52[1] = 0;
  *(a2 + v17[10]) = 0;
  *(a2 + v17[11]) = 1;
  *(a2 + v53) = 2;
  v56 = (a2 + v51);
  *(a2 + v17[13]) = v74 & 1;
  *(a2 + v17[14]) = v73;
  *(a2 + v17[15]) = v72 & 1;
  v57 = (a2 + v17[16]);
  v58 = v68;
  *v57 = v69;
  v57[1] = v58;
  v59 = (a2 + v17[17]);
  *v59 = v42;
  v59[1] = v44;
  v60 = (a2 + v17[18]);
  *v60 = v45;
  v60[1] = v47;
  v61 = v78;
  *v56 = v79;
  v56[1] = v61;
  *(a2 + v17[9]) = v77;
  *(a2 + v17[19]) = v41 & 1;
  *(a2 + v17[20]) = 0;
  return result;
}

uint64_t Device.init(staticMatterDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB070);
  MEMORY[0x28223BE20](v3 - 8);
  v90 = &v63 - v4;
  v5 = sub_25268EBF0();
  v88 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v87 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_25268EC10();
  v89 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v86 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_25268F280();
  v8 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25268E1D0();
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IconDescriptor();
  MEMORY[0x28223BE20](v14);
  v16 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_25268DA10();
  v84 = *(v17 - 8);
  v85 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25268E2F0();
  v81 = *(v20 - 8);
  v82 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268F550();
  v83 = v19;
  sub_25268F5A0();
  v23 = sub_25268F5C0();
  v79 = v24;
  v80 = v23;
  v25 = sub_25268E270();
  v73 = v22;
  if (v26)
  {
    v27 = v25;
    v28 = v26;
  }

  else
  {
    sub_25268E290();
    v27 = sub_25268E1C0();
    v28 = v29;
    (*(v76 + 8))(v13, v77);
  }

  v30 = *(v14 + 20);
  v31 = *MEMORY[0x277D16588];
  v32 = sub_25268F910();
  v33 = *(*(v32 - 8) + 104);
  v74 = v16;
  v33(v16 + v30, v31, v32);
  *v16 = v27;
  v16[1] = v28;
  *(v16 + *(v14 + 24)) = 0;
  v34 = sub_25268F5F0();
  v76 = v35;
  v77 = v34;
  v75 = sub_25268F5E0();
  v72 = sub_25268F540();
  v71 = sub_25268F590();
  v70 = sub_25268F560();
  v36 = v78;
  (*(v8 + 104))(v10, *MEMORY[0x277D15FE0], v78);
  v69 = sub_25268F270();
  (*(v8 + 8))(v10, v36);
  LODWORD(v78) = sub_25268F570();
  v37 = *MEMORY[0x277D15AF0];
  v38 = v88;
  v67 = *(v88 + 104);
  v39 = v87;
  v67(v87, v37, v5);
  v40 = v86;
  sub_25268EC00();
  v66 = *(v38 + 8);
  v66(v39, v5);
  v63 = sub_25268F610();
  v65 = *(v63 - 8);
  v64 = *(v65 + 56);
  v41 = v90;
  v64(v90, 1, 1, v63);
  v88 = sub_25268F580();
  v68 = v42;
  sub_252372288(v41, &qword_27F4DB070);
  v43 = *(v89 + 8);
  v43(v40, v92);
  v67(v39, *MEMORY[0x277D15AE0], v5);
  sub_25268EC00();
  v66(v39, v5);
  v44 = v63;
  v64(v41, 1, 1, v63);
  v89 = sub_25268F580();
  v46 = v45;
  sub_252372288(v41, &qword_27F4DB070);
  v43(v40, v92);
  v47 = sub_25268F5B0();
  v49 = v48;
  (*(v65 + 8))(a1, v44);
  (*(v81 + 8))(v73, v82);
  v50 = type metadata accessor for Device();
  v51 = v91;
  v52 = (v91 + v50[7]);
  v53 = (v91 + v50[8]);
  v54 = v50[12];
  (*(v84 + 32))(v91, v83, v85);
  v55 = (v51 + v50[5]);
  v56 = v79;
  *v55 = v80;
  v55[1] = v56;
  result = sub_2525EA6FC(v74, v51 + v50[6], type metadata accessor for IconDescriptor);
  *v52 = 0;
  v52[1] = 0;
  *(v51 + v50[10]) = v72 & 1;
  *(v51 + v50[11]) = v71 & 1;
  *(v51 + v54) = 2;
  *(v51 + v50[13]) = v70 & 1;
  *(v51 + v50[14]) = v69;
  *(v51 + v50[15]) = v78 & 1;
  v58 = (v51 + v50[16]);
  v59 = v68;
  *v58 = v88;
  v58[1] = v59;
  v60 = (v51 + v50[17]);
  *v60 = v89;
  v60[1] = v46;
  v61 = (v51 + v50[18]);
  *v61 = v47;
  v61[1] = v49;
  v62 = v76;
  *v53 = v77;
  v53[1] = v62;
  *(v51 + v50[9]) = v75;
  *(v51 + v50[19]) = 0;
  *(v51 + v50[20]) = 0;
  return result;
}